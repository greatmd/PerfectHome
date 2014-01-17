package CommandTerm;

use strict;
use Getopt::Long;
use POSIX;

use vars qw(
  $AUTOLOAD
  $VERSION
  $COMMAND_MODE
  $PERL_MODE
  @Commands
  @Filename_Completers
  %BaseConfig
);

BEGIN {
  $VERSION      = '1.05';

  $COMMAND_MODE = 1;
  $PERL_MODE    = 2;

  @Commands = qw(
    clear
    do
    history
    logfile
    help
    quit
    exit
    setenv
  );

  @Filename_Completers = qw(
    do
    logfile
  );

  %BaseConfig = (
    'dataFace'            => 'data',
    'statusFace'          => 'status',
    'errorFace'           => 'error',
    'historyFile'         => '.commandterm_history',
    'historySaveLength'   => -1,
  );
}

sub Commands {
  return @Commands;
}

sub Filename_Completers {
  return @Filename_Completers;
}

sub Init {
  my ($self, $name, $cfgfile, $app_config, $derived_config) = @_;

  $self->{'Name'}                       = $name || 'commandterm';
  $self->{'Help'}                       = CommandTerm::Help->New;
  $self->{'EvalBuffer'}                 = '';
  $self->{'MLC'}                        = 0;
  $self->{'EMLC'}                       = 0;
  $self->{'InputMode'}                  = 1;
  $self->{'GetPromptCallback'}          = sub { return $self->DefaultGetPrompt; };
  $self->{'TogglePromptCallback'}       = sub { return $self->DefaultTogglePrompt; };
  $self->{'ExecCommandCallback'}        = sub { $self->DefaultCommandExec(@_); };
  $self->{'UpdatePrompt'}               = 1;
  $self->{'HandleInterruptCallback'}    = sub { $self->DefaultInterruptCallback; };
  $self->{'QuitCallback'}               = undef;
  $self->{'ReadLine'}                   = undef;
  $self->{'Attribs'}                    = undef;
  $self->{'ReDirFH'}                    = undef;
  $self->{'NoPipes'}                    = 0;
  $self->{'DefaultPager'}               = undef;
  $self->{'PagerCommands'}              = [];
  $self->{'LogFH'}                      = undef;
  $self->{'LogFileName'}                = '';
  $self->{'EnvVars'}                    = [];
  $self->{'PerlIndex'}                  = 0;
  $self->{'PerlMatches'}                = [];

  $self->{'Config'}            = $self->GetConfig($cfgfile, $app_config, $derived_config);

  $self->{'StatusFace'}        = $self->{'Config'}{'statusFace'};
  $self->{'DataFace'}          = $self->{'Config'}{'dataFace'};
  $self->{'ErrorFace'}         = $self->{'Config'}{'errorFace'};
  $self->{'HistoryFile'}       = $self->{'Config'}{'historyFile'};
  $self->{'HistorySaveLength'} = $self->{'Config'}{'historySaveLength'};
}

sub AUTOLOAD {
  my ($self, $val) = @_;
  my $method = $AUTOLOAD;

  $method =~ s/.*://;

  return undef if $method eq 'DESTROY';

  if( exists($self->{$method}) ) {
    my $old_val = $self->{$method};
    if( scalar(@_) > 1 ) {
      $self->{$method} = $val;
    }
    return $old_val;
  } else {
    print STDERR "Bad method '$method' for class ", ref($self), "\n";
    return undef;
  }
}

sub GetConfig {
  my ($self, $cfgfile, $app_config, $derived_config) = @_;

  my $config = {};

  # Base Class Defaults
  foreach my $key (keys %BaseConfig) {
    $config->{$key} = $BaseConfig{$key};
  }

  # Derived Class Defaults
  if( $derived_config and ref($derived_config) eq 'HASH' ) {
    foreach my $key (keys %$derived_config) {
      $config->{$key} = $derived_config->{$key};
    }
  }

  # Application defaults
  if( $app_config and ref($app_config) eq 'HASH' ) {
    foreach my $key (keys %$app_config) {
        $config->{$key} = $app_config->{$key};
    }
  }

  # User defaults
  if( $cfgfile ) {
    my $fh = FileHandle->new("< $cfgfile");
    if( $fh ) {
      while( <$fh> ) {
        next if /^\s*#/;
        next if /^\s*$/;
        my ($name, $value) = /(\w+)\s*:\s*([^\s].*[^\s])\s*$/;
        $config->{$name} = $value;
      }
      $fh->close;
    }
  }
  
  return $config;
}

sub InitSignalHandlers {
  my ($self) = @_;

  $SIG{'INT'}  = sub { $self->quit; };
  $SIG{'TERM'} = sub { $self->quit; };
  $SIG{'QUIT'} = sub { $self->quit; };
  $SIG{'PIPE'} = 'IGNORE';
}

sub DefaultInterruptCallback {}

sub PrintData {
  my ($self, @what) = @_;

  $self->Print($self->DataFace, @what);
}

sub PrintStatus {
  my ($self, @what) = @_;

  $self->Print($self->StatusFace, @what);
}

sub PrintError {
  my ($self, @what) = @_;

  $self->Print($self->ErrorFace, @what);
}

sub Print {
  my ($self, $how, @what) = @_;
  my $what = join '', @what;

  my $LOGFILE = $self->LogFH;

  print $LOGFILE $what if defined($LOGFILE);

  print "$how: $what";
}

sub DefaultCompleter {
  my ($self, $text, $line, $start, $end) = @_;
  my ($first) = (substr($line, 0, $start) =~ /;?([^;\[]*)$/);
  my $command = ($first =~ /^\s*(\S+)\s+/)[0] || '';
  my $ReadLine = $self->ReadLine;
  my $Attribs  = $self->Attribs;

  return $self->PerlCustomCompleter($text, $line, $start, $end)
           if ($self->InputMode == $PERL_MODE) or
              grep(/1/, map($command =~ /^$_$/, $self->GetPerlSubs));

  my $completer;

  $Attribs->{'completion_append_character'} = ' ';
  $Attribs->{'ignore_some_completions_function'} = undef;

  if( $first =~ /^\s*$/ ) {
    $Attribs->{'completion_word'} = [ ($self->GetPerlSubs, @Commands) ];
    $completer = 'list_completion_function';
  } elsif( $first =~ /\|\s*$/ ) {
  } elsif( $command eq 'setenv' or $command eq 'printenv' ) {
    $Attribs->{'completion_word'} = [ map { s/\$//; $_ } keys %ENV ];
    $completer = 'list_completion_function';
  } elsif( $command eq 'help' ) {
    $Attribs->{'completion_word'} = [ @Commands ];
    $completer = 'list_completion_function';
  } elsif( $text =~ /\// ) {
    $completer = 'filename_completion_function';
    $Attribs->{'ignore_some_completions_function'} = 
      sub { $self->IgnoreSomeCompletions($text, @_); };
  } elsif( $text =~ /^\$/ ) {
    $Attribs->{'completion_append_character'} = '';
    $Attribs->{'completion_word'} = [ @{ $self->EnvVars } ];
    $completer = 'list_completion_function';
  } elsif( $text =~ /^~/ ) {
    $completer = 'username_completion_function';
  } else {
    $completer = 'filename_completion_function';
    $Attribs->{'ignore_some_completions_function'} = 
      sub { $self->IgnoreSomeCompletions($text, @_); };
  }

  return $completer ? $ReadLine->completion_matches($text, $Attribs->{$completer}) : ();
}

sub GlobExpand {
  my ($self, $arg) = @_;

  $arg = $self->TildeExpand($arg);

  return undef unless defined($arg);

  return $self->EnvVarExpand($arg);
}

sub EnvVarExpand {
  my ($self, $arg) = @_;

  while( $arg =~ /\$([^\$\/]+)/ ) {
    if( defined($ENV{$1}) ) {
      $arg =~ s/\$([^\$\/]+)/$ENV{$1}/e;
    } else {
      $self->PrintError("Undefined variable: '$1'\n");
      return undef;
    }
  }
  return $arg;
}

sub TildeExpand {
  my ($self, $arg) = @_;

  if( $arg =~ /^~([^\/]*)(.*)/ ) {
    my $username = $1;
    my $rest = $2;
    if( $username ) {
      my @pwnam = getpwnam($username);
      if( @pwnam > 0 ) {
        $arg = $pwnam[7] . $rest;
      } else {
        $self->PrintError("No user '$username' exists.\n");
        return undef;
      }
    } else {
      $arg = ($ENV{'HOME'} || $ENV{'LOGDIR'}) . $rest;
    }
  }
  return $arg;
}

sub UnEscape {
  my ($self, $arg) = @_;

  return undef unless defined $arg;

  $arg =~ s/\\t/\t/g;
  $arg =~ s/\\n/\n/g;
  $arg =~ s/\\r/\r/g;
  $arg =~ s/\\f/\f/g;
  $arg =~ s/\\a/\a/g;
  $arg =~ s/\\e/\e/g;
  $arg =~ s/\\c(.)/pack('C*', ord(uc($1))^64)/eg;
  $arg =~ s/\\x([\da-fA-F]{1,2})/pack 'C*', hex($1)/eg;
  $arg =~ s/\\([01][0-7]{2})/pack 'C*', oct($1)/eg;
  $arg =~ s/\\0/\0/g;
  $arg =~ s/\\(.)/$1/g;

  return $arg;
}

sub Tokenize {
  my ($self, $command) = @_;

  my @command = ();

  foreach my $arg ($self->ReadLine->history_tokenize($command)) {
    
    $arg = $self->TildeExpand($arg);

    return () unless defined($arg);

    $arg = $self->UnEscape($arg) if $arg =~ /\\/ and $arg !~ /^["']/;

    push @command, $arg;
  }
  return @command;
}

sub DefaultCommandExec {
  my ($self, $command) = @_;

  if( defined($command) ) {
    if( $self->InputMode == $PERL_MODE and $command !~ /^\s*$/ ) {
      $self->EvalPerl($command);
    } else {
      my @command = $self->Tokenize($command);

      if( @command > 0 ) {
        my @redir_command = @command;
        if( $self->InitRedirection(\@redir_command) ) {
          my ($cmd, @args) = @redir_command;
          my $qm = quotemeta($cmd);

          if( grep(/^$qm$/, $self->GetPerlSubs) ) {
            $self->RunPerlSub($cmd, @args);
          } elsif( grep(/^$qm$/, $self->Commands) ) {
            $self->$cmd(@args);
          } else {
            $self->ShellExec(@command);
          }
        }
      }
    }
  }
}

# Setup output redirection, if any. If the command has a '|', '>', or
# '>>' token in it, use that token and the rest of the args as the redirection .
sub InitRedirection {
  my ($self, $command) = @_;
  my @redir_cmd;

  for(my $i=0; $i<=$#$command; $i++) {
    if( $self->NoPipes and $command->[$i] =~ /^\|$/ ) {
      $self->PrintError("pipe redirection not supported in this commandterm :- (.\n");
      return undef;
    } elsif( $command->[$i] =~ /^(\|)|(>>?)$/ ) {
      @redir_cmd = splice @$command, $i;
      last;
    }
  }

  if( @redir_cmd > 0 ) {
    if( @redir_cmd == 1 ) {
      $self->PrintError("syntax error: redirection to nowhere.\n");
      return undef;
    } elsif( $redir_cmd[0] =~ /^>/ and @redir_cmd > 2 ) {
      $self->PrintError("syntax error: too many arguments after redirection .\ n");
      return undef;
    }
  } elsif( grep(/1/, map($command->[0] =~ /^$_$/, @{ $self->PagerCommands })) ) {
    @redir_cmd = ('|', $self->DefaultPager) if $self->DefaultPager;
  }


  if( @redir_cmd ) {
    if( my $fh = FileHandle->new("@redir_cmd") ) {
      $self->ReDirFH($fh);
      $self->ReDirFH->autoflush(1);
      return 1;
    } else {
      $self->PrintError("Error opening '$redir_cmd[1]': $!\n");
      return undef;
    }
  } else {
    return 1;
  }
}

sub CloseRedirection {
  my ($self) = @_;
               
  if( $self->ReDirFH ) {
    $self->ReDirFH->close;
    $self->ReDirFH(undef);
  } 
}

sub SetDefaultPagerCommands {
  my ($self, @pager_commands) = @_;

  $self->{'PagerCommands'} = [ @pager_commands ];

  my $default_pager = undef;

  $default_pager = $self->Which($ENV{'PAGER'}) if exists($ENV{'PAGER'});
  $default_pager = $self->Which('less') unless $default_pager;
  $default_pager = $self->Which('more') unless $default_pager;

  unless( $default_pager ) {
    $self->PrintError("Cannot find a default pager.\n");
    if( exists($ENV{'PAGER'}) ) {
      $self->PrintError("You have the \$PAGER environment variable set to '$ENV{'PAGER'}', ",
         "but it couldn't be found.\n");
    } else {
      $self->PrintError("The \$PAGER environment variable isn't defined.\n");
    }
    $self->PrintError("The programs 'less' and 'more' couldn't be found either.\n");
    $self->PrintError("Use the '|' command to send command output to a pager.\n");
  }

  $self->DefaultPager($default_pager);
}

sub Which {
  my ($self, $file) = @_;
  my @dirs;
  
  if( $file =~ m(^/) ) {
    if( -f $file and -x _ ) {
      return $file;
    } else {
      return undef;
    }
  } elsif( $file =~ m(/) ) {
    @dirs = (POSIX::getcwd);
  } else {
    @dirs = (split ':', $ENV{'PATH'});
  }
    
  foreach my $dir (@dirs) {
    my $path = "$dir/$file";
    return $path if( -f $path and -x _ );
  }
  
  return undef;
} 
 
sub GetPrompt {
  my ($self) = @_;

  return &{ $self->GetPromptCallback } . ($self->MLC ? '? ' : '> ');
}

sub DefaultGetPrompt {
  my ($self) = @_;

  return ($self->InputMode == $COMMAND_MODE ? 'command' : 'perl mode' );
}

sub TogglePrompt {
  my ($self) = @_;

  &{ $self->TogglePromptCallback };
}

sub DefaultTogglePrompt {
  my ($self) = @_;

  my $input_mode = $self->InputMode;

  if( $input_mode == $COMMAND_MODE ) {
    $input_mode = $PERL_MODE;
  } elsif( $input_mode == $PERL_MODE ) {
    $input_mode = $COMMAND_MODE;
  } else {
    $input_mode = $COMMAND_MODE;
  }

  $self->InputMode($input_mode);
}

sub ProcessLine {
  my ($self, $line) = @_;

  if( $line =~ /^\s*\\$/ ) {
    $self->MLC(1);
    $self->EMLC(1);
  } elsif( $self->EMLC and $line !~ /^\s*\.\s*$/ ) {
    $line =~ s/\s*\\$//;
    $self->{'EvalBuffer'} .= "$line ";
  } elsif( $line =~ s/\\$/ / ) {
    $self->{'EvalBuffer'} .= $line;
    $self->MLC(1);
  } else {     
    $line =~ s/^\s*\.\s*$//; 
    $line = $self->EvalBuffer . $line;
    $self->EvalBuffer('');
    $self->EMLC(0);
    $self->MLC(0); 
    $line = $self->DoHistory($line) unless $line =~ /^(quit|exit)\s?/;
    &{ $self->ExecCommandCallback }($line) if defined($line);
  }   
}

sub DoHistory {
  my ($self, $line) = @_;

  my $ReadLine = $self->ReadLine;

  # The history_expand() function from Readline can return 4 values:
  # -1 - There was an error in expansion. Command not added to history.
  #      This is the same behavior as tcsh.
  #  0 - No expansion possible. Just a normal command. Add command to history,
  #      return and execute.
  #  1 - Expansion took place. Assign $command to expansion and proceed.
  #  2 - Expansion took place (eg. :p modifier was used). Display exspansion
  #      but don't execute. Expanded command implicitly added to history by
  #      history_expand().
  my ($res, $str) = $ReadLine->history_expand($line);

  if( $res == -1 ) {
    $self->PrintError("$str\n");
    $line = undef;
  } elsif( $res == 0 ) {
    if( $line !~ /^\s*$/ ) {
      $ReadLine->add_history($line);
      $ReadLine->append_history(1, $self->HistoryFile);
    }
  } elsif( $res == 1 ) {
    $line = $str;
    $ReadLine->add_history($line);
    $ReadLine->append_history(1, $self->HistoryFile);
    $self->PrintStatus("$line\n");
  } elsif( $res == 2 ) {
    $self->PrintStatus("$str\n");
    $ReadLine->append_history(1, $self->HistoryFile);
    $line = undef;
  }

  return $line;
}

sub InitReadLine {
  my ($self) = @_;

  my $ReadLine = new Term::ReadLine $self->Name;
  my $Attribs  = $ReadLine->Attribs;
    
  $self->ReadLine($ReadLine);
  $self->Attribs($Attribs);
    
  # so perl variables can be <TAB> completed
  $Attribs->{'special_prefixes'}                = '$@&%';
  $Attribs->{'attempted_completion_function'}   = sub { $self->DefaultCompleter(@_); };
  $Attribs->{'completion_entry_function'}       = sub {};
  $Attribs->{'directory_completion_hook'}       = sub { $self->ExpandDirectory(@_); };
  $Attribs->{'completion_display_matches_hook'} = sub { $self->MungeCompletions(@_); };

  # Control-T will toggle the prompt
  $ReadLine->add_defun('toggle-prompt', sub { $self->TogglePrompt; }, ord "\ct");

  # inhibit the implicit call to add_history() since we do our own.
  $ReadLine->MinLine(0);

  # unlimited history kept
  $ReadLine->stifle_history(undef);
  my $history_file = $self->GlobExpand($self->HistoryFile);
  unless( $history_file ) {
    $history_file = '/dev/null';
    $self->PrintError( "Bad history file: '", $self->HistoryFile, "'\n" );
  }
  $history_file = getcwd . '/' . $history_file unless $history_file =~ /^\//;
  $self->HistoryFile($history_file);
  $ReadLine->ReadHistory($self->HistoryFile);
  $ReadLine->WriteHistory($self->HistoryFile);
  $ReadLine->history_truncate_file($self->HistoryFile, $self->HistorySaveLength) if
    $self->HistorySaveLength >= 0;
  $ReadLine->history_set_pos( scalar($ReadLine->GetHistory) );

  $ReadLine->parse_and_bind('set visible-stats on');

  # read the user's init file (~/.inputrc) to override default bindings
  $ReadLine->read_init_file;

  foreach my $env (keys %ENV) {
    my $value = $ENV{$env};
    $value =~ s/\n/ /g;
    push @{ $self->{'EnvVars'} }, '$' . $env . (-d $value ? '/' : ' ');
  }
}

sub ExpandDirectory {
  if( $_[1] =~ /\$([^\$\/]+)/ ) {
    if( $ENV{$1} ) {
      $_[1] =~ s/\$([^\$\/]+)/$ENV{$1}/e;
    }
  }
  return 1;
};

sub IgnoreSomeCompletions {
  my ($self, $text, $longest_match, @matchlist) = @_;

  # remove the dot files only when the user hasn't typed a dot.
  my $longest_matchlen =  length($longest_match);
  my @matches = ($longest_match);
  foreach my $match (@matchlist) {
    if( substr($match, $longest_matchlen-1, 2) ne '/.' or $text =~ /\.[^\/]*$/ ) {
      push @matches, $match; 
    }
  }
  return @matches;
}

sub MungeCompletions {
  my ($self, $matchlist_ref, $num_matches, $longest) = @_;

  # Strip leading tildes, dollar signs
  $longest = 0;
  my $match;
  for(my $i=1; $i<=$num_matches; $i++) {
    $match = $matchlist_ref->[$i];
    $match =~ s/^[~\$\s]+//;
    $match =~ s/\s+$//;
    $longest = length($match) if length($match) > $longest;
    $matchlist_ref->[$i] = $match;
  } 

  my $striplen = 0;
  if( $matchlist_ref->[0] =~ /^(.*\/)/ ) {
    $striplen = length($1);
    $longest -= $striplen;
  }

  $self->PrintCompletions($matchlist_ref, $num_matches, $longest, $striplen);
}

sub PrintCompletions {
  my($self, $matches, $num_matches, $longest, $striplen) = @_;
  my $show_matches = 1;

  if( $num_matches >= $self->Attribs->{'completion_query_items'} ) {
    $self->PrintStatus("\nDisplay all $num_matches possibilities? (y or n)");
    for(;;) {
      my $char = chr($self->ReadLine->read_key);
      if( $char eq 'Y' or $char eq 'y' or $char eq ' ' ) {
        last;
      } elsif( $char eq 'N' or $char eq 'n' ) {
        $show_matches = 0;
        $self->PrintData("\n");
        last;
      }
    }
  }

  if( $show_matches ) {
    $self->ReadLine->display_match_list($matches, $num_matches, $longest);
  }
  $self->ReadLine->forced_update_display;
}

sub CompleterCallback {
  my ($self, $func) = @_;
  my $Attribs = $self->Attribs;

  if( defined($func) and ref($func) eq 'CODE' ) {
    $Attribs->{'attempted_completion_function'}    = sub { &{ $func }(@_); };
    $Attribs->{'completion_entry_function'}        = sub {};
  } else {
    $Attribs->{'attempted_completion_function'}    = undef;
    $Attribs->{'completion_entry_function'}        = undef;
  }
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
      system("$cmd @args");
    } else {
      $self->PrintError("$cmd: Command not found.\n");
    }
  }
}

sub GetPerlSubs {
  my ($self) = @_;
  my @retval = ();

  foreach my $sym (keys %sandbox::) {
    local *s = $sandbox::{$sym};
    push @retval, "$sym" if defined &s;
  }

  return @retval;
}

sub RunPerlSub {
  my ($self, $cmd, @args) = @_;

  foreach my $arg (@args) {
    $arg =~ s/(.*)/'$1'/ if $arg =~ /^\w+$/;
    $arg =~ s/$/,/;
  }
  $self->EvalPerl("$cmd(@args);");
}

sub EvalPerl {
  my ($self, $code, $verbose) = @_;

  $verbose = 1 unless defined($verbose);

  package sandbox;

  no strict;
  my $eval = eval $code;
  $self->PrintError( $@ ) if $@;
  use strict;

  $eval = 'undef' unless defined($eval);
  $eval = '(null)' if $eval eq '';
  print "$eval\n" if $verbose;
  return $eval;
}

sub PerlCustomCompleter {
  my ($self, $text, $line, $start, $end) = @_;
  my $ReadLine = $self->ReadLine;
  my $Attribs  = $self->Attribs;

  my $first = substr($line, 0, $start);

  # $foo{key, $foo->{key
  if( $first =~ /\$([\w:]+)\s*(->)?\s*{\s*['"]?$/ ) {
    $Attribs->{'completion_append_character'} = '}';
    return $ReadLine->completion_matches($text, sub { $self->PerlHashCompletion(@_); });

  # $foo[index $foo->[index
  } elsif( $first =~ /\$([\w:]+)\s*(->)?\s*\[\s*['"]?$/ ) {
    $Attribs->{'completion_append_character'} = ']';
    return $ReadLine->completion_matches($text, sub { $self->PerlListCompletion(@_); });

  # symbol completion
  } else {
    $Attribs->{'completion_append_character'} = '';
    return $ReadLine->completion_matches($text, sub { $self->PerlSymbolCompletion(@_); });
  }
}

sub PerlListCompletion {
  my($self, $text, $state) = @_;
  my $Attribs  = $self->Attribs;
  my ($index, @matches);

  if( $state == 0 ) {
    $index = 0;
    my ($var,$arrow) = (substr($Attribs->{line_buffer},
                   0, $Attribs->{point} - length($text))
                =~ /\$([\w:]+)\s*(->)?\s*\[\s*['"]?$/);
    no strict 'refs';
    $var = "sandbox::$var" unless ($var =~ /::/);
    if( $arrow ) {
      my $listref = eval "\$$var";
      @matches = UNIVERSAL::isa($listref, 'ARRAY') ? (0 .. $#$listref) : ();
    } else {
      @matches = (0 .. $#$var);
    }
    use strict 'refs';
    $self->PerlIndex($index);
    @{ $self->{'PerlMatches'} } = @matches;
  } else {
    $index = $self->PerlIndex + 1;
    @matches = @{ $self->PerlMatches };
    $self->PerlIndex($index);
  }

  for (; $index <= $#matches; $index++) {
    $self->PerlIndex($index);
    return $matches[$index] if ($matches[$index] =~ /^\Q$text/);
  }
  return undef;
}

sub PerlHashCompletion {
  my ($self, $text, $state) = @_;
  my $Attribs  = $self->Attribs;
  my ($index, @matches);

  if( $state == 0 ) {
    $index = 0;
    my ($var,$arrow) = (substr($Attribs->{'line_buffer'},
                   0, $Attribs->{'point'} - length($text))
                =~ /\$([\w:]+)\s*(->)?\s*{\s*['"]?$/);
    no strict 'refs';
    $var = "sandbox::$var" unless ($var =~ /::/);
    if( $arrow ) {
      my $hashref = eval "\$$var";
      @matches = UNIVERSAL::isa($hashref, 'HASH') ? keys %$hashref : ();
    } else {
      @matches = keys %$var;
    }
    use strict 'refs';
    $self->PerlIndex($index);
    @{ $self->{'PerlMatches'} } = @matches;
  } else {
    $index = $self->PerlIndex + 1;
    @matches = @{ $self->PerlMatches };
    $self->PerlIndex($index);
  }

  for (; $index <= $#matches; $index++) {
    $self->PerlIndex($index);
    return $matches[$index] if ($matches[$index] =~ /^\Q$text/);
  }
  return undef;
}

sub PerlSymbolCompletion {
  my ($self, $text, $state) = @_;
  my ($index, @matches);

  if( $state == 0 ) {
    @matches = ();
    $index = 0;
    my ($prefix) = ($text =~ /^(\$#|[\@\$%&])/);

    $prefix = '' unless defined $prefix;

    no strict;
    local *s;
    foreach my $var (keys %sandbox::) {
      *s = $sandbox::{$var};
      if( defined(&s) ) {
        push @matches, ($prefix eq '&') ? "\&$var" : "$var";
      }
      if( defined($s) ) {
        push @matches, UNIVERSAL::isa($s, 'HASH')  ? "\$$var->\{" :
                       UNIVERSAL::isa($s, 'ARRAY') ? "\$$var->\[" : "\$$var";
      }
      if( defined(@s) ) {
        push @matches, ($prefix eq '$')  ? "\$$var\[" :
                       ($prefix eq '@')  ? "\@$var"   :
                       ($prefix eq '$#') ? "\$#$var"  : "\@$var";
      }
      if( defined(%s) ) {
        push @matches, ($prefix eq '%' or $prefix eq '') ? "\%$var" : "\$$var\{";
      }
    }
    use strict;
    $self->PerlIndex($index);
    @{ $self->{'PerlMatches'} } = @matches;
  } else {
    $index = $self->PerlIndex + 1;
    @matches = @{ $self->PerlMatches };
    $self->PerlIndex($index);
  }

  for (; $index <= $#matches; $index++) {
    $self->PerlIndex($index);
    return $matches[$index] if ($matches[$index] =~ /^\Q$text/);
  }
  return undef;
}

sub get_options {
  my ($self, $argv_ref, $config_ref, @opts) = @_;

  local (@ARGV) = @$argv_ref;
  Getopt::Long::config(@$config_ref) if @$config_ref > 0;
  my $ret = GetOptions(@opts);
  Getopt::Long::config('default');
  @$argv_ref = @ARGV;
  return $ret;        
}       

# Builtin Commands below here

sub logfile {
  my ($self, $onoff, $logfile) = @_; 
  
  if( not defined $onoff ) {
    if( defined $self->LogFH ) {
      $self->PrintStatus( "Currently logging output to '", $self->LogFileName, "'.\n" );
    } else {
      $self->PrintStatus( "Logging output is off.\n" );
    }
  } elsif( $onoff eq "off" ) {   
    if( defined $self->LogFH ) { 
      $self->PrintStatus( "Closing logfile '", $self->LogFileName, "'.\n" );
      $self->LogFH->close;       
      $self->LogFH(undef);       
      $self->LogFileName(undef);     
    } else {
      $self->PrintStatus( "Logging output is already off.\n" );
    }
  } elsif( $onoff eq "on" and defined $logfile ) {
    if( defined $self->LogFH ) { 
      $self->PrintStatus( "Closing logfile '", $self->LogFileName, "'.\n" );
      $self->LogFH->close;       
      $self->LogFH(undef);
      $self->LogFileName(undef);     
    }
    $self->LogFH(new FileHandle "> $logfile");
    if( not defined $self->LogFH ) {
      $self->PrintError( "Couldn't open '$logfile': $!\n" );
    } else { 
      $self->LogFileName($logfile);
      $self->LogFH->autoflush(1);
      $self->PrintStatus( "Logging output to '", $self->LogFileName, "'.\n" );
    }
  } else {
    $self->PrintError( "Bad args to logfile '$onoff'.\n" );
    $self->PrintStatus( $self->Help->logfile );
  }
  return $self->LogFH;
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
  
  my @history = $self->ReadLine->GetHistory;
  if( $opt_r ) {
    for(my $i=$#history; $i>=0; $i--) {
      $self->PrintData( $opt_h ? '' : "\t" . $i+1 . "\t", "$history[$i]\n" );
      last if $opt_n and ($#history - $i + 1) >= $opt_n;
    }
  } else {
    $opt_n = $#history unless defined($opt_n);
    for(my $i=$#history-$opt_n; $i<=$#history; $i++) {
      $self->PrintData( $opt_h ? '' : "\t" . $i+1 . "\t", "$history[$i]\n" );
    }
  }
}

sub help {
  my ($self, $command) = @_; 
  
  if( $command ) {
    $self->PrintStatus( $self->Help->$command() );
  } else {
    $self->PrintStatus( $self->Help->help );
  }
} 

sub exit {
  my ($self) = @_;

  $self->quit(@_);
}

sub quit {
  my ($self) = @_;

  if( defined($self->QuitCallback) ) {
   &{ $self->QuitCallback };
  } else {
   $self->Shutdown;
   $self->Quit;
  }
}

sub Shutdown {}

sub Quit {
  CORE::exit;
}

sub clear {
  my ($self) = @_;

  $self->PrintError("Derived class '", ref($self), "' defined no 'clear' command.\n");
}

sub do {
  my ($self, $file) = @_;

  unless( $file ) {
    $self->PrintStatus( $self->Help->do );
    return;
  }

  $file = $self->GlobExpand($file);

  return unless $file;

  $self->EvalPerl("do '$file';");
}

sub setenv {
  my ($self, $env, $val) = @_;

  if( defined($env) and defined($val) ) {
    $ENV{$env} = $val;
  } elsif( defined($env) ) {
    $ENV{$env} = '';
  } else {
    foreach (keys %ENV) {
      $self->PrintData("$_=$ENV{$_}\n");
    }
  }
}

package CommandTerm::Help;

use strict;
use vars  qw( $AUTOLOAD );

sub New {
  my $class = shift(@_);
  my $help = {};

  bless  $help, $class;
  return $help;
}

sub AUTOLOAD {
  my $method = $AUTOLOAD;

  $method =~ s/.*://;

  return if $method eq 'DESTROY';

  return "No help available for \'$method\'\n";
}

sub do {
return <<'EOF';
do <file>
  Read the <file> into the perl sandbox package.
EOF
}

sub clear {
return <<'EOF';
clear -- clear the screen
EOF
}

sub logfile {
return <<'EOF';
logfile [on|off [<logfile>]]
  This command enables or disables logging of all output to <logfile>.
  With no arguments, 'logfile' will report the current logging status.
  With the argument 'off', the command will close the current <logfile>,
  if one exists.  With the 'on' argument, the <logfile> will be opened
  to receive all text window output.  The <logfile> will contain ALL
  output. This includes user commands.
EOF
}

sub history {
return <<'EOF';
history [-h] [-r] [<num>]
  Print out the history list. If -h is supplied, don't print out the 
  leading numbers. If -r is supplied print the history list in
  reverse order. If a <num> is supplied, only output <num> commands
  in the history list.
EOF
}

sub setenv {
return <<'EOF';
setenv [<env_var> [<value>]]
  Set the environment variable <env_var> to <value>. If <value> is
  not specified <env_var> is set to the empty string. If neither
  <env_var> nor <value> is specified, the values of all environment
  variables are printed, similar to the shell ``printenv'' command.
EOF
}

sub help {
return <<'EOF';
help command
  Prints out the help message for a given command.

  Type <TAB><TAB> at a blank line for a list of avaiable commands.

  Up/Down arrow cycle through previous/next commands.

  Username and environment variable expansion is supported.
EOF
}

sub exit {
return <<'EOF';
exit
  Exit the application
EOF
}

sub quit {
return <<'EOF';
quit
  Quit the application
EOF
}

1;
