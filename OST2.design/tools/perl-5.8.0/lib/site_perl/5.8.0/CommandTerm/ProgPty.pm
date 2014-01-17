package CommandTerm::ProgPty;

require 5.004;
use strict;
use Getopt::Long;
use IO::Pty;
use POSIX;

use vars qw(
  @ISA
  $VERSION
  $Verbose
  $PrintFunc
  $AUTOLOAD
);

$VERSION     = '1.00';
$Verbose     = 3;
$PrintFunc   = undef;

sub new {
  my ($class, $progname, @opts) = @_;
  my $this = {};

  bless $this, $class;

  $this->{'read_buf'} = '';
  $this->{'alive'}    = 1;
  $this->{'prompt'}   = 'rivet> ';
  $this->{'response_pending'} = 0;

  if( defined($PrintFunc) ) {
    $this->{'printfunc'} = $PrintFunc;
  } else {
    $| = 1;
    $this->{'printfunc'} = sub { $this->default_print(@_); };
  }

  $this->verbose($Verbose);
  $this->print_status(8, "SETTING VERBOSE LEVEL TO $Verbose\n");

  my $resolved_progname = which($progname);

  unless( $resolved_progname ) {
    $this->print_error(0, "Can't find '$progname', check your path.\n");
    return undef;
  }
  
  my @prog_exec_opts = ($resolved_progname, @opts);

  $this->install_error_handler(\&default_error_handler);
  $this->reset_data_handler;

  $this->{'pty'} = new IO::Pty;
  $this->pty->autoflush(1);

  if( $this->pty->IO::Pty::ttyname ) {
    $this->print_status(8, "OPENED A PTY NAMED '", $this->pty->IO::Pty::ttyname, "'\n");
  } else {
    $this->print_error(0, "Couldn't get a ttyname for IO::Pty. Proceeding anyway\n");
  }

  # Parent
  if( $this->{'pid'} = fork ) {
    $this->{'fileno'} = $this->pty->fileno;
    $this->print_status(8, "FORKED '$prog_exec_opts[0]'\n",
      "  PID    ", $this->pid, "\n",
      "  FILENO ", $this->fileno, "\n");

    # read data until a prompt
    my $response = $this->wait_response;

    return undef unless defined($response);

    # Normal return point
    return $this;

  # Child
  } elsif( defined($this->pid) ) { 
    POSIX::setsid or die;
    my $tty = $this->pty->slave;

    # Below are 6 lines of terminal wizardry turn out to really save the
    # day for this whole module. If you set the terminal correctly, many
    # problems simply disappear and things start working great.  So what do
    # these lines do? Here we go:
    # 
    # 1) The part that says ~(ECHO | ECHOE | ECHOK | ECHONL) turns off all local
    #    echoing. Imagine your sitting at a keyboard and you type the command
    #    "cat -". The cat command reads your keystrokes and echoes them when
    #    you press return.  But notice how you can see what you're typing as
    #    hit the keys. After you hit return, the cat echoes again everything
    #    you just entered and you see what you typed twice. The moral of the
    #    story is that cat relies on the terminal being in "ECHO" mode to allow
    #    the user to see what they're typing as they type it. Now imagine
    #    you're a process writing to the terminal of another process *AND* your
    #    stdin and stdout are tied to the same file handle. If the terminal
    #    were in echo mode, the first thing you'd ever read from the terminal
    #    is the exact thing that you sent to it. By turning off ECHO, we save
    #    ourselves the trouble of removing what we sent from the return data
    #    stream. If you ever looked at the original dc_perl by Steve Golson,
    #    you saw how he went to great effort to remove the first line he got
    #    back.
    #
    # 2) The part that says ~(ICANON) turns off canonical mode processing.
    #    When canonical mode is enabled, the terminal assembles the input
    #    characters into lines and also has a fixed line length. This presents
    #    two problems for Synopsys. The most obvious one is that our line
    #    length is limited by the length of the canonical mode input queue. For
    #    my box (Sun Solaris 2.6) that is 256 characters. The second
    #    reason is a little more esoteric. One of the features of Synopsys
    #    is that it only ties STDOUT back to itself. STDERR is left alone to
    #    allow users to print to it from their Tcl scripts, bypassing
    #    Synopsys. With this setup, if native Synopsys paging were enabled
    #    and activated (a paging command were issued), the terminal would hang.
    #    I don't really have a good explanation of why, but obviously something
    #    in the canonical processing is causing the terminal to hang. Even more
    #    mysterious is the fact that when STDERR is also tied back to
    #    $tty->fileno, the problem goes away, but the user loses the ability to
    #    bypass Synopsys by printing to STDERR. This is not a good trade.
    #   
    #    Well, almost no worries. When you disable canonical mode processing,
    #    the terminal won't deliver data to the reader unless a certain number
    #    of bytes have been received, EVEN if one of those bytes is a newline
    #    (since a newline loses it's meaning in non-canonical mode). Actually,
    #    I'm lying again because non-canonical mode really has 4 modes of
    #    operation and I'm just speaking about two of them. Anyway, on my box
    #    (Solaris 2.6) the default minimum number of bytes to receive before
    #    delivery is 4 (even that's a long story). That's no good. I want
    #    Synosys to read byte if I send a byte. Of course, I can setup the
    #    terminal anyway that I want. So I set the magical VMIN to 1 and the
    #    VTIME to 0 which tells the terminal to deliver a mininum of 1 bytes to
    #    Synopsys every time it tries to read. If nothing is available to read,
    #    the Synopsys will block. I'm assuming that Synopsys was written to
    #    block on a read when nothing is available so that's ok.
    #
    # So life is good. I don't have to re-extract the data I sent. I don't have
    # line length limit.  I can leave STDERR alone and still not care whether
    # the user enables native paging.  Actually, It's still recommended that
    # native paging be disabled because I still see the occasional hiccup that
    # I can't explain.
    my $termios = POSIX::Termios->new;
    $termios->getattr($tty->fileno) or die;
    $termios->setlflag($termios->getlflag & ~(ECHO | ECHOE | ECHOK | ECHONL | ICANON));
    $termios->setcc(VMIN, 1);
    $termios->setcc(VTIME, 0);
    $termios->setattr($tty->fileno, TCSANOW) or die;

    close $this->pty;
    close STDIN;
    close STDOUT; 
    open(STDIN,  "<&" . $tty->fileno) or die "Child Error: Couldn't re-open STDIN:  $!";
    open(STDOUT, ">&" . $tty->fileno) or die "Child Error: Couldn't re-open STDOUT: $!";

    exec(@prog_exec_opts);

  # Error
  } else {
    $this->print_error(0, "FORK FAILED: $!\n");
    return undef;
  }
}

sub DESTROY {}

sub AUTOLOAD {
  my ($this, @opts) = @_;
  my $method         = $AUTOLOAD;

  $method =~ s/.*:://;

  return $this->print_error(1, "$method @opts\n");
}

sub default_error_handler {
  my ($this, $error_type) = @_;

  if( $error_type == 1 ) {
    if( $this->verbose < 3 ) {
      $this->print_error(1, "Error with the command '", 
                         $this->current_command, "'\n\n",
                         $this->output_string);
    }
  } elsif( $error_type == -1 ) {
    $this->print_error(0, "Fatal error, exiting.\n");
    exit;
  }
}

sub perl_list2tcl_list {
  my $this = shift;

  return (not defined($_[0]) or @_ < 1) ? '""' : return "[list @_]";
}

sub get_options {
  my ($this, $argv_ref, $config_ref, @opts) = (@_);

  local (@ARGV) = @$argv_ref;
  Getopt::Long::config(@$config_ref) if @$config_ref > 0;
  my $ret = GetOptions(@opts);
  Getopt::Long::config('default');
  @$argv_ref = @ARGV;
  return $ret;
}

sub alive {
  my $this = shift;

  return $this->{'alive'};
}

sub verbose {
  my ($this, $verbose) = @_;

  my $old_verbose = $this->{'verbose'};

  $this->{'verbose'} = $verbose if defined($verbose);

  return $old_verbose;
}

sub print_data {
  my ($this, $verbose, @what) = @_;        
  
  &{ $this->{'printfunc'} }('data', @what) if $this->verbose >= $verbose;
} 
  
sub print_status {
  my ($this, $verbose, @what) = @_;
  
  &{ $this->{'printfunc'} }('status', @what) if $this->verbose >= $verbose;
} 
  
sub print_error {
  my ($this, $verbose, @what) = @_;
  
  &{ $this->{'printfunc'} }('error', @what) if $this->verbose >= $verbose;
} 
  
sub default_print {
  my ($this, $type, @what) = @_;

  print STDOUT @what;
}

sub reset_data_handler {
  my ($this) = @_;

  $this->{'data_handler'} = undef;
}

sub install_print_handler {
  my ($this, $handler) = @_;

  unless( defined($handler) and ref($handler) eq 'CODE' ) {
    $this->print_error(1, "Argument to install_print_handler must be a CODE ref.\n");
    return;
  }

  $this->{'printfunc'} = $handler;
}

sub install_data_handler {
  my ($this, $handler) = @_;

  unless( defined($handler) and ref($handler) eq 'CODE' ) {
    $this->print_error(1, "Argument to install_data_handler must be a CODE ref.\n");
    return;
  }

  $this->{'data_handler'} = $handler;
}

sub install_error_handler {
  my ($this, $handler) = @_;

  unless( defined($handler) and ref($handler) eq 'CODE' ) {
    $this->print_error(1, "Argument to install_error_handler must be a CODE ref.\n");
    return;
  }

  $this->{'error_handler'} = $handler;
}

sub current_command {
  my $this = shift;

  return $this->{'current_command'};
}

sub output_lines {
  my $this = shift;

  return @{ $this->{'output_lines'} };
}

sub output_lastline {
  my $this = shift;

  return $this->{'output_lastline'};
}

sub output_string {
  my $this = shift;

  return $this->{'output_string'};
}

sub run {
  my ($this, $command, $verbose, $update) = @_;

  unless( defined($command) ) {
    $this->print_error(1, "Argument to run ommitted.\n");
    return undef;
  }

  $this->{'current_command'} = $command 
    unless( defined($update) and $update == 0 );

  my $old_verbose = $this->verbose;

  $this->verbose($verbose) 
    if defined($verbose) and ($this->verbose < 4 or $verbose == 0);

  $this->write_data("$command\n");

  my $retval = $this->wait_response($update);

  # It doesn't hurt to restore, even if we didn't change it.
  $this->verbose($old_verbose);

  return $retval;
}

sub _output_lines {
  my $this = shift;

  return split /\n/, $this->{'current_response'};
}

sub _output_lastline {
  my $this = shift;

  my @output_lines = split /\n/, $this->{'current_response'};
  return $output_lines[ $#output_lines ];
}

sub fileno {
  my $this = shift;

  return $this->{'fileno'};
}

sub pid {
  my $this = shift;

  return $this->{'pid'};
}

sub pty {
  my $this = shift;

  return $this->{'pty'};
}

sub write_data {
  my ($this, $data) = @_;

  return unless defined($data) and length($data) > 0;

  $this->print_status(4,  "$data");
  $this->print_status(8,  "WRITING ", length($data), " BYTES TO PTY\n");
  $this->print_status(10, "WRITE DATA: '", _make_readable($data), "'\n");

  print { $this->pty } $data;
}

sub readable {
  my $this = shift;
  my $fd_set;

  vec($fd_set, $this->fileno, 1) = 1;

  return select($fd_set, undef, undef, 0);
}

sub wait_response {
  my ($this, $update) = @_;

  if( $this->{'response_pending'} == 0 ) {

    $this->{'current_response'} = '';
    $this->{'partial_response'} = '';

    my ($fd_set, $global_fd) = ('', '');

    vec($global_fd, $this->fileno, 1) = 1;

    my $done = 0;

    while( not $done ) {

      $this->print_status(8, "BLOCKING ON SELECT\n");

      my $s = select($fd_set = $global_fd, undef, undef, undef);

      $this->print_status(8, "SELECT RETURNS ", defined($s) ? $s : "UNDEFINED", "\n");

      if( $s < 0 ) { 
        $this->print_error(8, "SELECT ERROR: $!\n");
        &{ $this->{'error_handler'} }($this, 0);
        return 0;
      }

      if( vec($fd_set, $this->fileno, 1) ) {
        $done = $this->read_data;
        return undef unless defined($done);
      }
    }
  }

  $this->print_status(10, "RESPONSE: '", _make_readable($this->{'current_response'}), "'\n");

  $update = 1 unless defined($update);

  if( $update ) {
    $this->{'output_string'}   = $this->{'current_response'};
    $this->{'output_lines'}    = [ split /\n/, $this->{'current_response'} ];
    $this->{'output_lastline'} =
       ${ $this->{'output_lines'} }[ $#{ $this->{'output_lines'} } ];
  }

  $this->{'response_pending'} = 0;

  my $retval = ($this->{'current_response'} =~ /^Error: /m) ? 0 : 1;

  &{ $this->{'error_handler'} }($this, 1) if $retval == 0;

  return $retval;
}

sub read_data {
  my $this = shift;

  $this->print_status(8, "BLOCKING ON SYSREAD\n");

  my $nbytes = 
       sysread($this->pty, $this->{'read_buf'}, 2048, length($this->{'read_buf'}));

  $this->print_status(8, "SYSREAD RETURNS: ", defined($nbytes) ? $nbytes : "UNDEFINED", "\n");

  # Error from sysread
  if( not defined($nbytes) ) {
    # check to see if prog is still alive
    my $pid = waitpid($this->pid, WNOHANG);

    # Normal termination.
    if( $pid = $this->pid ) {
      $this->{'alive'} = 0;
      $this->print_status(8, "WAITPID RETURNS. PID: $pid, NORMAL EXIT STATUS.\n");
      return undef;

    # Still alive!
    } elsif( $pid == 0 ) {
      return 0;

    # Yikes! Unexpected error.
    } else {
      $this->print_error(0, "waitpid on pid($this->{'pid'}) returned $pid: $!.\n");
      $this->{'alive'} = 0;
      &{ $this->{'error_handler'} }($this, -1);
      return undef;
    }

  # EOF from sysread
  } elsif( $nbytes == 0 ) {
    $this->print_status(8, "GOT EOF FROM SYSREAD.\n");
    $this->{'alive'} = 0;
    return undef;

  # Data from sysread
  } else {
    $this->print_status(10, "RAW DATA: '", _make_readable($this->{'read_buf'}), "'\n");

    if( defined($this->{'data_handler'}) ) {
      $this->{'partial_response'} .= $this->{'read_buf'};
      $this->{'partial_response'} =~ s/(\r|\e.{0,2})//mg;
      my @partial_lines = split /\n/, $this->{'partial_response'};
      if( $this->{'partial_response'} =~ /\n$/ ) {
        $this->{'partial_response'} = '';
      } else {
        $this->{'partial_response'} = pop @partial_lines;
      }
      &{ $this->{'data_handler'} }($this, @partial_lines);
    }

    my $before;

    # The data read contains a prompt. Process all the prompts. Multiple prompts
    # will be in the data when the user hits Ctrl-C.
    if( $this->{'read_buf'} =~ /^$this->{'prompt'}/m ) {
      while( $this->{'read_buf'} =~ /^$this->{'prompt'}/m ) {
        $this->print_status(8, "MATCHED\n",
              "BEFORE: '", _make_readable($`), "'\n",
              "PROMPT: '", _make_readable($&), "'\n",
              "AFTER:  '", _make_readable($'), "'\n");
        $this->{'read_buf'} = $';
        $before = $`;
        $before =~ s/(\r|\e.{0,2})//mg;
        $this->print_data(3, $before);
        $this->{'current_response'} .= $before;
      }
      $this->{'response_pending'} = 1;
      return 1;

    # The pager string is in the data. If the termios stuff is functioning 
    # properly, I should be able to send a space to advance the pager.
    } elsif( $this->{'read_buf'} =~ /\e\[7m--More--\e\[m/ ) {
      $this->print_status(8, "MATCHED THE PAGER STRING\n",
            "SENDING A SPACE TO ADVANCE THE PAGER.\n",
            "BEFORE: '", _make_readable($`), "'\n",
            "PROMPT: '", _make_readable($&), "'\n",
            "AFTER:  '", _make_readable($'), "'\n");
      $before = $`;
      $before =~ s/(\r|\e.{0,2})//mg;
      $this->print_data(3, $before);
      $this->{'$current_response'} .= $before;
      $this->write_data(' ');
      $this->{'read_buf'} = '';
      return 0;

    # Multiline command detected - this is by no means full proof.
    # People shouldn't be entering mlc, just return so they don't hang.
    } elsif( $this->{'read_buf'} =~ /^(\? )+/ and $this->{'current_response'} eq '' ) {
      $this->print_status(3, "Multiline command detected.\n");
      $this->{'read_buf'} = '';
      return 1;

    # No prompt, just data.
    } else {
      $this->print_status(9, "NOMATCH\n'", _make_readable($this->{'read_buf'}), "'\n");
      $before = $this->{'read_buf'};
      $before =~ s/(\r|\e.{0,2})//mg;
      $this->print_data(3, $before);
      $this->{'current_response'} .= $before;
      $this->{'read_buf'} = '';
      return 0;
    }
  }
}

# 
# Private local subroutines that aren't methods are below. Only used by this
# module.
#

sub _make_readable {
  local $_ = shift;
  return '' unless defined $_;
  s/\\/\\\\/g;
  s/\n/\\n/g;
  s/\r/\\r/g;
  s/\e/\\e/g;
  s/\t/\\t/g;
  s/\0/\\0/g;
  s/\f/\\f/g;
  s/([\000-\037\177])/'^' . chr(ord($1)^64)/eg;
  s/([\200-\377])/sprintf("\\%3o", ord($1))/eg;
  return $_;
}

sub which {
  my $file = shift;
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

1;
