package CommandTerm::Tk;

use strict;
use Tk;
use Tk::LabEntry;
use Term::ReadLine;
use FileHandle;
use POSIX;
use CommandTerm;

@CommandTerm::Tk::ISA = qw(CommandTerm Tk::Frame);
Tk::Widget->Construct('CommandTermTk');

use vars qw(
  %DerivedConfig
);

BEGIN {
  %DerivedConfig = (
     'width'               => '80',
     'height'              => '24',
     'textFont'            => '-*-courier-medium-r-*-*-12-*-*-*-*-*-*-*',
     'entryFont'           => '-*-courier-medium-r-*-*-12-*-*-*-*-*-*-*',
     'promptFont'          => '-*-courier-bold-r-*-*-12-*-*-*-*-*-*-*',
     'saveTextLines'       => '5000',
     'dataFace'            => 'normal',
     'statusFace'          => 'italic',
     'errorFace'           => 'bold',
  );
}

sub Populate {
  my ($self, $args) = @_;

  my $name        = delete $args->{'-name'};
  my $toplevel    = delete $args->{'-toplevel'};
  my $cfgfile     = delete $args->{'-cfgfile'};
  my $app_config  = delete $args->{'-app_config'};

     $self->InitSignalHandlers;
     $self->Init($name, $cfgfile, $app_config, \%DerivedConfig);
     $self->NoPipes(1);

  my $prompt      = delete $args->{'-prompt'} || $self->GetPrompt;

  my $width                       = $self->{'Config'}{'width'};
  my $height                      = $self->{'Config'}{'height'};
  my $textFont                    = $self->{'Config'}{'textFont'};
  my $entryFont                   = $self->{'Config'}{'entryFont'};
  my $promptFont                  = $self->{'Config'}{'promptFont'};
  my $italicFont                  = '-*-courier-medium-o-*-*-12-*-*-*-*-*-*-*';

     $self->{'TopLevel'}          = $toplevel;
     $self->{'RealWidth'}         = $width;
     $self->{'SaveTextLines'}     = $self->{'Config'}{'saveTextLines'};
     $self->{'DataFace'}          = $self->{'Config'}{'dataFace'};
     $self->{'StatusFace'}        = $self->{'Config'}{'statusFace'};
     $self->{'ErrorFace'}         = $self->{'Config'}{'errorFace'};

     $self->SUPER::Populate($args);

  my $TextFrame = $self->Frame;
  my $Text = $TextFrame->Text( 
                      -relief  => 'sunken',
                      -wrap    => 'word',
                      -state   => 'disabled',
                      -font    => $textFont, 
                      -width   => $width,
                      -height  => $height,
                   );
     $Text->bind( "<Configure>"  => sub { $self->FigureOutWidth } );
     $Text->tagConfigure( $self->DataFace,   -font => $textFont );
     $Text->tagConfigure( $self->StatusFace, -font => $italicFont );
     $Text->tagConfigure( $self->ErrorFace,  -font => $promptFont );

  my $ScrollBar = $self->Scrollbar( -command => [$Text => 'yview']);
     $Text->configure( -yscrollcommand => [$ScrollBar => 'set'] );
  my %nopad = ( -pady => 0, -ipady => 0, -padx => 0, -ipadx => 0 );
     $ScrollBar->pack( %nopad, -side => 'right', -fill => 'y' );
     $Text->pack( %nopad, -side => 'left', -expand => 'both', -fill => 'both' );

  my $EntryFrame = $self->Frame;
  my $Entry = $EntryFrame->Component(
                              LabEntry      => 'labEntry',
                              -label        => $prompt,
                              -labelPack    => [ -side => 'left' ],
                              -relief       => 'sunken',
                              -font         => $entryFont,
                              );
     $Entry->Subwidget('label')->configure( -font => $promptFont );
     $Entry->pack( -fill => 'x' );
     $Entry->bind( '<Delete>'     => 'Backspace' );
     $Entry->bind( '<Return>'     => sub { $self->ProcessEntry; } );
     $Entry->bind( '<Tab>'        => sub { $self->Complete; } );
     $Entry->bind( '<Control-t>'  => sub { $self->TogglePrompt; } );
     $Entry->bind( '<Up>'         => sub { $self->UpHistory; } );
     $Entry->bind( '<Control-p>'  => sub { $self->UpHistory; } );
     $Entry->bind( '<Down>'       => sub { $self->DownHistory; } );
     $Entry->bind( '<Control-n>'  => sub { $self->DownHistory; } );
     $Entry->bind( '<Control-l>'  => sub { $self->clear; } );
     $Entry->bind( '<Control-u>'  => sub { $Entry->delete(0, 'end'); } );
     $Entry->bind( '<Control-c>'  => sub { $self->HandleInterrupt; } );
     $Entry->bind( '<Home>'       => sub { $self->Home; } );
     $Entry->bind( '<End>'        => sub { $self->End; } );
     $Entry->bind( '<Prior>'      => sub { $self->ScrollUp; } );
     $Entry->bind( '<Next>'       => sub { $self->ScrollDown; } );
     $Entry->Subwidget('entry')->bindtags(
                   [$Entry->Subwidget('entry'),
                   ref($Entry->Subwidget('entry')), 'all']
     );

     # Button 2 release events will paste the X selection into the 
     # entry widget no matter where the cursor is over $self
     $self->bind( 'Tk::Entry', '<ButtonRelease-2>', undef);
     $self->bind( 'Tk::Text',  '<ButtonRelease-2>', undef);
     $self->bind( 'all',       '<ButtonRelease-2>' =>
        sub { 
          Tk::catch {
            $Entry->insert($Entry->index('insert'), $self->SelectionGet)
          };
          $Entry->SeeInsert;
        }
     );

     $EntryFrame->pack( -side => 'bottom' , -fill => 'x' );
     $TextFrame->pack( -side => 'top' , -fill => 'both', -expand => 'both' );

     $self->Advertise('Text'  => $Text );
     $self->Advertise('Entry' => $Entry );

     $self->InitReadLine;

     $Entry->Subwidget('entry')->focus;
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
      $self->PrintData( getcwd . "\n" );
    } else {
      $self->PrintError("Couldn't cd to '$dir': $!\n");
    }
  } else {
    if( $self->Which($cmd) ) {
      $self->PrintData( `$cmd @args` );
    } else {
      $self->PrintError("Command not found: '$cmd'\n");
    }
  }
}

sub ProcessEntry {
  my ($self) = @_;
  my $Entry    = $self->Subwidget('Entry');
  my $line     = $Entry->get;

  chomp($line);

  $Entry->delete(0, 'end');

  $self->ProcessLine($line);
}

sub ProcessLine {
  my ($self, $line) = @_;
  my $ReadLine = $self->ReadLine;

  $self->CloseRedirection;

  $self->PrintError("> $line\n");

  $self->SUPER::ProcessLine($line);

  $self->Subwidget('Entry')->configure( -label => $self->GetPrompt );

  # Since we're not using ReadLine interactively, set the history position
  # to the end every time through.
  $ReadLine->history_set_pos( scalar($ReadLine->GetHistory()) );
}

sub InitReadLine {
  my ($self) = @_;

  $self->SUPER::InitReadLine;

  my $NULLOUT = FileHandle->new('> /dev/null') or 
         die "Couldn't open '/dev/null': $!\n";

  $self->Attribs->{'outstream'} = $NULLOUT;

  #In Tk mode, don't want any dinging at all, it's alarming. :-)
  $self->ReadLine->parse_and_bind('set bell-style none');
}

sub TogglePrompt {
  my ($self) = @_;

  &{ $self->TogglePromptCallback };
  
  $self->Subwidget('Entry')->configure( -label => $self->GetPrompt );

  Tk->break;
} 
  
sub Complete {
  my ($self) = @_;
  my $ReadLine = $self->ReadLine;
  my $Attribs  = $self->Attribs;
  my $Entry    = $self->Subwidget('Entry');
  my $line     = $Entry->get;

  $Attribs->{'line_buffer'} = $line;
  $Attribs->{'point'}       = $Entry->index('insert');
  $Attribs->{'end'}         = length($Attribs->{'line_buffer'});

  $ReadLine->complete_internal(ord("\t"));

  if( $line ne $Attribs->{'line_buffer'} ) {
    # completion took place
    $Entry->delete(0, 'end');
    $Entry->insert(0, $Attribs->{'line_buffer'});
    $Entry->icursor($Attribs->{'point'});
    $Entry->SeeInsert;
  } else {
    # no completion took place, list possible completions
    $ReadLine->complete_internal(ord('?'));
  }

  Tk->break;
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

  my $width = $self->RealWidth;
  my $num_cols = int($width/($longest+1)) || 1;
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
  $self->PrintStatus($str);
  $self->PrintError(">\n");
}

sub Shutdown { }

sub Quit {
  Tk::exit;
}

sub Title {
  my ($self, $titlestr) = @_;

  $self->TopLevel->title($titlestr) if $self->TopLevel;
}

sub Icon {
  my ($self, $iconstr) = @_;

  $self->TopLevel->iconname($iconstr) if $self->TopLevel;
}

sub Print {
  my ($self, $how, @what) = @_;
  my $Text = $self->Subwidget('Text');
  my ($top, $bottom) = $Text->yview;
  my $LogFH = $self->LogFH;
  my $ReDirFH = $self->ReDirFH;

  my $what = join '', @what;
  print $LogFH $what if defined $LogFH;

  if( $ReDirFH ) {
    print $ReDirFH $what;
  } else {

    $Text->configure( -state => 'normal' );
    if( $what =~ /[\b]/ ) {
      foreach my $bsline (split("(\b)", $what)) {
        if( $bsline eq "\b" ) {
          $Text->delete('end -2 chars');
        } else {
          $Text->insert('end', $bsline, $how );
        }
      }
    } else {
     $Text->insert('end', $what, $how );
    }

    my $deletelines = ($Text->index('end') - 2.0) - $self->SaveTextLines;
    $Text->delete( '1.0', $deletelines . ".0" ) if $deletelines > 1;

    $Text->see( 'end' ) if $bottom == 1.0;

    $Text->configure( -state => 'disabled' );

    $self->idletasks;
  }
}

sub UpHistory {
  my ($self) = @_;
  my $Entry = $self->Subwidget('Entry');

  my $line = $self->ReadLine->previous_history;

  if( $line ne '' ) {
    $Entry->delete(0, 'end'); 
    $Entry->insert(0, $line );
  }
}

sub DownHistory {
  my ($self) = @_;
  my $Entry = $self->Subwidget('Entry');

  my $line = $self->ReadLine->next_history;

  $Entry->delete(0, 'end');
  $Entry->insert(0, $line );
} 

sub HandleInterrupt {
  my ($self) = @_;
  my $Entry = $self->Subwidget('Entry');

  if( $Entry->get ne '' ) {
    $Entry->delete(0, 'end');
  } else {
    &{ $self->HandleInterruptCallback };
  }
}

sub DefaultInterruptCallback {
  my ($self) = @_;

  $self->PrintError(">\n");
  $self->UpdatePrompt(1);
}

sub FigureOutWidth {
  my ($self) = @_;
  my ($i, $xleft, $xright, $ytop, $ybot, $line);
  my $Text = $self->Subwidget('Text');

  ($ytop, $ybot) = $Text->yview;
  $line = $Text->index( 'end' ) - 1;
  $Text->configure( -state => 'normal', -wrap => 'none' );
  $Text->see( 'end' );
  $i = 0;
  ($xleft, $xright) = $Text->xview;
  while( $xleft == 0.0 and $xright == 1.0 ) {
    $Text->insert( 'end' => 'O', 'italic' );
    ($xleft, $xright) = $Text->xview;
    $i++;
  }
  $Text->delete( "$line.0", 'end -1 chars' );
  $Text->yview( 'moveto' => $ytop );
  $Text->configure( -state => 'disabled', -wrap => 'word' );
  $self->RealWidth($i--);
}

sub clear {
 my ($self) = @_;
 my $Text = $self->Subwidget('Text');

 $Text->configure( -state => 'normal' );
 $Text->delete( '1.0', 'end' );
 $Text->see( '1.0' );
 $Text->configure( -state => 'disabled' );
}

sub Home {
  my ($self) = @_;
  my $Text = $self->Subwidget('Text');

  $Text->configure( -state => 'normal' );
  $Text->see( '1.0' );
  $Text->configure( -state => 'disabled' );
}

sub End {
  my ($self) = @_;
  my $Text = $self->Subwidget('Text');

  $Text->configure( -state => 'normal' );
  $Text->see( 'end' );
  $Text->configure( -state => 'disabled' );
}

sub ScrollUp {
  my ($self) = @_;
  my $Text = $self->Subwidget('Text');

  $Text->configure( -state => 'normal' );
  $Text->yview( 'scroll' => -1, 'pages');
  $Text->configure( -state => 'disabled' );
}

sub ScrollDown {
  my ($self) = @_;
  my $Text = $self->Subwidget('Text');

  $Text->configure( -state => 'normal' );
  $Text->yview( 'scroll' => 1, 'pages');
  $Text->configure( -state => 'disabled' );
}

1;
