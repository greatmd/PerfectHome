package CommandTerm::Curses;

use strict;
use Curses;
use Term::ReadLine;
use FileHandle;
use POSIX;
# use IO::Pty;
use CommandTerm;

use vars qw(
  @ISA
  %DerivedConfig
  $PROMPT_LENGTH
);

@ISA = qw(CommandTerm);

BEGIN {
  %DerivedConfig = (
    'dataFace'            => 0, # normal
    'statusFace'          => 2, # green
    'errorFace'           => 1, # red
  );

  $PROMPT_LENGTH = 13;
}

sub New {
  my ($class, $name, $cfgfile, $app_config) = @_;
  my $self = {};

  bless $self, $class;

  $self->InitSignalHandlers;

  $self->Init($name, $cfgfile, $app_config, \%DerivedConfig);

  $self->InitReadLine;

  $self->{'ReadFD'}           = '';
  $self->{'WriteFD'}          = '';
  $self->{'ReadCallbacks'}    = {};
  $self->{'WriteCallbacks'}   = {};
  $self->{'GotInterrupt'}     = 0;
#   $self->{'Pty'}              = undef;

#   $self->InitPty;

  my $win                     = new Curses;
  $self->{'Win'}              = $win;
  $self->{'ScrollWin'}        = $win->subwin($LINES-1, $COLS, 0, 0);
  $self->{'PromptWin'}        = $win->subwin(1, $PROMPT_LENGTH+1, $LINES-1, 0);
  $self->{'EntryWin'}         = $win->subwin(1, $LINES-$PROMPT_LENGTH, $LINES-1, $PROMPT_LENGTH);
  $self->{'Scroll'}           = 0;

  return $self;
}

sub MainLoop {
  my ($self) = @_;

  my ($fileno, $fd_read, $fd_write);

  initscr;

  if( has_colors() ) {
    start_color();
    init_pair(1, COLOR_RED,     COLOR_BLACK);
    init_pair(2, COLOR_GREEN,   COLOR_BLACK);
    init_pair(3, COLOR_YELLOW,  COLOR_BLACK);
    init_pair(4, COLOR_BLUE,    COLOR_BLACK);
    init_pair(5, COLOR_MAGENTA, COLOR_BLACK);
    init_pair(6, COLOR_CYAN,    COLOR_BLACK);
    init_pair(7, COLOR_WHITE,   COLOR_BLACK);
  }

  $self->PromptWin->attron(A_BOLD);

  $self->ScrollWin->scrollok(1);

  $self->fileevent(
           *STDIN,
           'readable' => sub{ $self->ReadLine->callback_read_char; },
        );
  $self->ReadLine->CallbackHandlerInstall(
           ' ' x $PROMPT_LENGTH,
           sub { $self->ProcessLine(@_); }
        );
  $self->UpdatePrompt;
  $self->UpdateEntry;

  while( 1 ) {

    if( $self->GotInterrupt ) {
      $self->HandleInterrupt;
      $self->GotInterrupt(0);
    }

    next if select($fd_read = $self->ReadFD, $fd_write = $self->WriteFD, undef, 1.0) < 0;

    foreach $fileno (keys %{ $self->ReadCallbacks }) {
      &{ $self->{'ReadCallbacks'}{$fileno} } if vec($fd_read, $fileno, 1);
    }

    foreach $fileno (keys %{ $self->WriteCallbacks }) {
      &{ $self->{'WriteCallbacks'}{$fileno} } if vec($fd_write, $fileno, 1);
    }

    doupdate;
  }
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

sub history {
  my ($self, @args) = @_;
  my ($opt_h, $opt_r, $opt_n);
  
  $self->get_options(\@args, ['no_pass_through'], 'h' => \$opt_h, 'r' => \$opt_r) or return;

  $opt_n = shift @args;

  if( $opt_n and $opt_n !~ /^\d+$/ ) {
    $self->PrintError("Argument to history '$opt_n' isn't numeric.\n");
    return;
  }

  my $str = '';
  my @history = $self->ReadLine->GetHistory;
  if( $opt_r ) {
    for(my $i=$#history; $i>=0; $i--) {
      $str .= ($opt_h ? '' : "\t$i\t" . "$history[$i]\n");
      last if $opt_n and ($#history - $i + 1) >= $opt_n;
    }
  } else {
    $opt_n = $#history unless defined($opt_n);
    for(my $i=$#history-$opt_n+1; $i<=$#history; $i++) {
      $str .= ($opt_h ? '' : "\t$i\t" . "$history[$i]\n");
    }
  }
  $self->PrintStatus($str);
}

# sub InitPty {
#   my ($self) = @_;
# 
#      $self->Pty(new IO::Pty);
#   my $tty = $self->Pty->slave;
# 
#   my $termios = POSIX::Termios->new;
#      $termios->getattr($tty->fileno) or die;
#      $termios->setiflag(IGNCR);
#      $termios->setoflag(0);
#      $termios->setlflag(0);
#      for(my $i=0; $i<NCCS; $i++) {
#         $termios->setcc($i, _POSIX_VDISABLE);
#      }
#      $termios->setcc(VMIN, 1);
#      $termios->setcc(VTIME, 0);
#      $termios->setattr($tty->fileno, TCSANOW) or die;
# 
#      close(STDERR);
#      open(STDERR, ">&" . $tty->fileno) or die "Couldn't re-open STDERR: $!";
# 
#      select($tty);
# 
#      $self->fileevent($self->Pty, 'readable' => sub { $self->CaptureOutput });
# }
# 
# sub CaptureOutput {
#   my ($self) = @_;
# 
#   my $Pty = $self->Pty;
#   my $data;
# 
#   unless( POSIX::read($Pty->fileno, $data, 1024) ) {
#     $self->fileevent($Pty, 'readable' => '');
#     $self->Pty->close;
#     $self->Pty(undef);
#     select STDOUT;
#     $self->PrintError("Bad sysread from Pty: $!\n");
#     $self->PrintError("Closing Pty and restoring STDOUT.\n");
#     return;
#   }
# 
#   $self->PrintData($data);
# }

sub ShellExec {
  my ($self, $cmd, @args) = @_;

  if( $cmd eq 'cd' ) {
    my ($dir) = @args;

    $dir = '' unless $dir;
   
    $dir = $self->GlobExpand($dir);

    return unless defined($dir);

    $dir =~ s/^"(.*)"$/$1/;
    $dir =~ s/^'(.*)'$/$1/;

    if( chdir $dir ) {
      $self->PrintData( getcwd );
    } else {
      $self->PrintError("Couldn't cd to '$dir': $!\n");
    }
  } else {
    if( $self->Which($cmd) ) {
      endwin;
#       my $ttyname = $self->Pty->IO::Pty::ttyname;
#       system("$cmd @args 2>&1 > $ttyname");
      system("$cmd @args");
#       $self->PrintStatus( "ttyname: ", $self->Pty->IO::Pty::ttyname, "\n" );
#       $self->PrintStatus( `$cmd @args` );
      $self->UpdateEntry;
    } else {
      $self->PrintError("Command not found: '$cmd'\n");
    }
  }
}

sub UpdateEntry {
  my ($self) = @_;
  my $entry_win = $self->EntryWin;

  $entry_win->erase;
  $entry_win->addstr(0, 0, $self->Attribs->{'line_buffer'});
  $entry_win->move(0, $self->Attribs->{'point'});
  $entry_win->noutrefresh;
}

sub ProcessLine {
  my ($self, $line) = @_;
  my $ReadLine = $self->ReadLine;
  my $Attribs  = $self->Attribs;

  unless( defined($line) ) {
    print STDOUT "\n";
    $self->quit;
  }

  $ReadLine->delete_text;
  $Attribs->{'point'} = $Attribs->{'end'} = 0;
  $self->UpdateEntry;

  $self->PrintStatus("> $line\n");

  $self->SUPER::ProcessLine($line);

  $self->UpdatePrompt;

  # Since we're not using ReadLine interactively, set the history position
  # to the end every time through.
  $ReadLine->history_set_pos( scalar($ReadLine->GetHistory) );

  $self->UpdateEntry;
}

sub UpdatePrompt {
  my ($self) = @_;

  $self->PromptWin->erase;
  $self->PromptWin->addstr(0, 0, $self->GetPrompt);
  $self->PromptWin->noutrefresh;
}

sub InitSignalHandlers {
  my ($self) = @_;

  $self->SUPER::InitSignalHandlers;
  $SIG{'INT'}  = sub { $self->GotInterrupt(1); };
}

sub InitReadLine {
  my ($self) = @_;

  $self->SUPER::InitReadLine;

  my $NULLOUT = FileHandle->new('> /dev/null') or 
         die "Couldn't open '/dev/null': $!\n";

  $self->Attribs->{'outstream'} = $NULLOUT;
  $self->Attribs->{'redisplay_function'} = sub { $self->UpdateEntry(@_); };

  #We don't want any dinging at all, it's alarming. :-)
  $self->ReadLine->parse_and_bind('set bell-style none');
}

sub TogglePrompt {
  my ($self) = @_;

  &{ $self->TogglePromptCallback };
  
  $self->UpdatePrompt;
} 
  
sub HandleInterrupt {
  my ($self) = @_;
  my $ReadLine = $self->ReadLine;
  my $Attribs  = $self->Attribs;

  if( $Attribs and $Attribs->{'end'} != 0 ) {
    $ReadLine->modifying;
    $ReadLine->delete_text;
    $Attribs->{'point'} = $Attribs->{'end'} = 0;
    $self->UpdateEntry;
  } else {
    &{ $self->HandleInterruptCallback };
  }
}

sub PrintCompletions {
  my ($self, $matchlist_ref, $num_matches, $longest, $striplen) = @_;

  my $match;
  my @matches = ();
  my $appended = 0;
  for(my $i=1; $i<=$num_matches; $i++) {
    $match = $matchlist_ref->[$i];
    if( -d $match ) {
      $match .= '/';
      $appended = 1;
    } elsif( -l $match ) {
      $match .= '@';
      $appended = 1;
    } elsif( -x $match ) {
      $match .= '*';
      $appended = 1;
    }
    push @matches, substr $match, $striplen;
  }
  $longest++ if $appended;

  my $num_cols = int($COLS/($longest+1)) || 1;
  my $skip = int($num_matches/$num_cols);
  $skip++ if ($num_matches/$num_cols) != $skip;

  my ($i, $j, $index);
  my $str = '';
  for($i=0; $i<$skip; $i++) {
    for($j=0; $j<$num_cols; $j++) {
      $index = $i + ($j * $skip);
      if( $index < $num_matches ) {
        $str .= sprintf("%-${longest}s ", $matches[$index]);
      }
    }
    $str =~ s/ $/\n/;
  }
  $self->PrintData($str);
  $self->PrintStatus(">\n");
}

sub Shutdown {
  my ($self) = @_;

  $self->PromptWin->erase;
  $self->EntryWin->erase;
  doupdate;
  endwin;
#   if( $self->Pty ) {
#     $self->fileevent($self->Pty, 'readable' => '');
#     $self->Pty->close;
#     $self->Pty(undef);
#   }
}

sub Quit {
  my ($self) = @_;

  exit(0);
}

sub Title {
}

sub Print {
  my ($self, $how, @what) = @_;
  my $LogFH = $self->LogFH;
  my $scroll_win = $self->ScrollWin;
  my $ReDirFH = $self->ReDirFH;

  my $what = join '', @what;
  print $LogFH $what if defined $LogFH;

  if( $ReDirFH ) {
    print $ReDirFH $what;
  } else {
    return if $self->InExecFile and $how ne $self->ErrorFace;

    $scroll_win->attron(COLOR_PAIR($how));

    my @lines = split(/\n/, $what);
    while( @lines ) {
      if( $self->Scroll > $LINES-2 ) {
        $scroll_win->scroll;
        $scroll_win->addstr($LINES-2, 0, shift(@lines));
      } else {
        $scroll_win->addstr($self->{'Scroll'}++, 0, shift(@lines));
      }
    }

    $scroll_win->attroff(COLOR_PAIR($how));
    $scroll_win->noutrefresh;
    $self->UpdateEntry;
  }
}

sub DefaultInterruptCallback {
  my ($self) = @_;

  $self->PrintStatus(">\n");
}

# sub CommandTerm::Curses::clear {
#  my ($self) = @_;
# 
#  $self->ScrollWin->clear;
#  $self->ScrollWin->refresh;
# }

1;
