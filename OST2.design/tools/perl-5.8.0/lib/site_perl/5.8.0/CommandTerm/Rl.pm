package CommandTerm::Rl;

require 5.004;
use strict;
use Term::ReadLine;
use Term::ANSIColor;
use FileHandle;
use POSIX;
use CommandTerm;

use vars qw(
  @ISA
  %DerivedConfig
  $TABDLY
);

@ISA = qw(CommandTerm);

BEGIN {
  %DerivedConfig = (
     'dataFace'            => 'clear',
     'statusFace'          => 'green',
     'errorFace'           => 'red',
  ); 
  $TABDLY = 0x00001800;
}

sub New {
  my ($class, $name, $cfgfile, $app_config) = @_;
  my $self = {};

  bless $self, $class;

  $self->InitSignalHandlers;

  $self->Init($name, $cfgfile, $app_config, \%DerivedConfig);

  $self->{'Termios'}                    = undef;
  $self->{'OrigTermios'}                = undef;
  $self->{'ReadFD'}                     = '';
  $self->{'WriteFD'}                    = '';
  $self->{'ReadCallbacks'}              = {};
  $self->{'WriteCallbacks'}             = {};
  $self->{'GotInterrupt'}               = 0;

  $self->InitTerminal;
  $self->InitReadLine;

  return $self;
}

sub MainLoop {
  my ($self) = @_;

  my ($fileno, $fd_read, $fd_write);

  while( 1 ) {

    if( $self->GotInterrupt ) {
      $self->HandleInterrupt;
      $self->GotInterrupt(0);
    }

    if( $self->UpdatePrompt ) {
      $self->CloseRedirection;
      $self->fileevent(
               *STDIN, 
               'readable' => sub{ $self->ReadLine->callback_read_char; } 
            );
      $self->ReadLine->CallbackHandlerInstall(
               $self->GetPrompt,
               sub { $self->ProcessLine(@_); }
            );
      $self->UpdatePrompt(0);
    }

    next if select($fd_read = $self->ReadFD, $fd_write = $self->WriteFD, undef, 1.0) < 0;

    foreach $fileno (keys %{ $self->ReadCallbacks }) {
      &{ $self->{'ReadCallbacks'}{$fileno} } if vec($fd_read, $fileno, 1);
    }

    foreach $fileno (keys %{ $self->WriteCallbacks }) {
      &{ $self->{'WriteCallbacks'}{$fileno} } if vec($fd_write, $fileno, 1);
    }

  }
}

sub Print {
  my ($self, $how, @what) = @_;
  my $what = join '', @what;
  
  my $LOGFILE = $self->LogFH;
  my $ReDirFH = $self->ReDirFH;
  
  print $LOGFILE $what if defined($LOGFILE);

  if( $ReDirFH ) {
    print { $ReDirFH } $what;
  } elsif( $ENV{'TERM'} and $ENV{'TERM'} ne 'vt100' ) {
    print colored($what, $how);
  } else {
    print $what;
  }
}   
    
sub Title {
  my ($self, $titlestr) = @_;
  
  print STDOUT "\e]2;$titlestr\cg";
}
  
sub Icon {
  my ($self, $iconstr) = @_;
  
  print STDOUT "\e]1;$iconstr\cg";
}
  
sub clear {
  my ($self) = @_;

  $self->ReadLine->CallbackHandlerInstall('', sub {});
  $self->ReadLine->call_function('clear-screen');
  $self->Attribs->{'erase_empty_line'} = 1;
  $self->ReadLine->stuff_char(ord("\n"));
  $self->ReadLine->callback_read_char;
  $self->Attribs->{'erase_empty_line'} = 0;
}

sub InitSignalHandlers {
  my ($self) = @_;

  $self->SUPER::InitSignalHandlers;
  $SIG{'INT'}  = sub { $self->GotInterrupt(1); };
}

sub InitTerminal {
  my ($self) = @_;

  STDOUT->autoflush(1);

  my $Termios     = POSIX::Termios->new;
  my $OrigTermios = POSIX::Termios->new;

  if( not $Termios->getattr(STDIN_FILENO) ) {
    $self->PrintError("Error in getattr for STDIN(", STDIN_FILENO, "): $!\n ");
    $self->PrintError("Weird terminal behavior may occur.\n");
    return;
  }

  $OrigTermios->getattr(STDIN_FILENO);

  $Termios->setlflag(($Termios->getlflag | ISIG) & ~ICANON);
  $Termios->setoflag($Termios->getoflag & ~$TABDLY);
  $Termios->setcc(VTIME, 1);
  $Termios->setcc(VINTR, 3);
  if( not $Termios->setattr(STDIN_FILENO, TCSANOW) ) {
    $self->PrintError("Error in setattr for STDIN(", STDIN_FILENO, "): $!\n ");
    $self->PrintError("Weird terminal behavior may occur.\n");
    $Termios = undef;
  }

  $self->Termios($Termios);
  $self->OrigTermios($OrigTermios);
}

sub InitReadLine {
  my ($self) = @_;

  $self->SUPER::InitReadLine;

  if( $ENV{'TERM'} and $ENV{'TERM'} eq 'vt100' ) {
    # turn off all ornaments if the terminal can't handle it
    $self->ReadLine->ornaments(0);
  } else {
    # else set prompt to bold
    $self->ReadLine->ornaments('md,me,,');
  }
}

sub TogglePrompt {
  my ($self) = @_;

  &{ $self->TogglePromptCallback };

  my $line = $self->Attribs->{'line_buffer'};

  # This bit of magic just erases the current line, prompt included.
  $self->ReadLine->CallbackHandlerInstall('', sub {});
  $self->Attribs->{'erase_empty_line'} = 1;
  $self->ReadLine->stuff_char(ord("\n"));
  $self->ReadLine->callback_read_char;
  $self->Attribs->{'erase_empty_line'} = 0;

  # Install a new prompt and restore the old line
  $self->ReadLine->CallbackHandlerInstall($self->GetPrompt, sub { $self->ProcessLine(@_); });
  $self->ReadLine->insert_text($line);
}

sub HandleInterrupt {
  my ($self) = @_;
  my $ReadLine = $self->ReadLine;
  my $Attribs  = $self->Attribs;

  if( $Attribs and $Attribs->{'end'} != 0 ) {
    $ReadLine->modifying;
    $ReadLine->delete_text;
    $Attribs->{'point'} = $Attribs->{'end'} = 0;
    $ReadLine->redisplay;
  } else {
    &{ $self->HandleInterruptCallback };
  }
}

sub DefaultInterruptCallback {
  my ($self) = @_;

  print STDOUT "\n";
  $self->UpdatePrompt(1);
}

sub fileevent {
  my ($self, $fh, $readwrite, $func) = @_;

  return unless defined($fh) and defined($readwrite);

  my $fileno = fileno($fh);

  if( $readwrite eq 'readable' ) {
    if( defined($func) and ref($func) eq 'CODE' ) {
      vec($self->{'ReadFD'}, $fileno, 1) = 1;
      $self->{'ReadCallbacks'}{$fileno} = $func;
    } else {
      vec($self->{'ReadFD'}, $fileno, 1) = 0;
      delete $self->{'ReadCallbacks'}{$fileno}
    }
  } elsif( $readwrite eq 'writable' ) {
    if( defined($func) and ref($func) eq 'CODE' ) {
      vec($self->{'WriteFD'}, $fileno, 1) = 1;
      $self->{'WriteCallbacks'}{$fileno} = $func;
    } else {
      vec($self->{'WriteFD'}, $fileno, 1) = 0;
      delete $self->{'WriteCallbacks'}{$fileno};
    }
  } else {
    $self->PrintError("Bad mode to fileevent: '$readwrite'\n");
  }
}

sub Shutdown {
  my ($self) = @_;

  $self->OrigTermios->setattr(STDIN_FILENO, TCSANOW) if $self->OrigTermios;
}

sub ProcessLine {
  my ($self, $line) = @_;
  my $ReadLine = $self->ReadLine;
  my $Attribs  = $self->Attribs;

  # User typed Ctrl-D
  unless( defined($line) ) {
    print STDOUT "\n";
    $self->quit;
  }

  $ReadLine->delete_text;
  $Attribs->{'point'} = $Attribs->{'end'} = 0;

  $self->UpdatePrompt(1);
  $self->fileevent(*STDIN, 'readable' => '');
  $ReadLine->callback_handler_remove;

  $self->SUPER::ProcessLine($line);
}

1;
