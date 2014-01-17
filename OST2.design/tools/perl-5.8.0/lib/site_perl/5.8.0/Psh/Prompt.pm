package Psh::Prompt;

use strict;
require Psh::OS;
require Psh::Util;
require Psh::Options;

#
# string prompt_string(TEMPLATE)
#
# Construct a prompt string from TEMPLATE.
#

my $default_prompt = '\s% ';
my %color_table=
  (
   bold => '\e[01m',
   faint => '\e[02m',
   standout => '\e[03m',
   underline => '\e[04m',
   blink => '\e[05m',
   reverse => '\e[07m',
   conceal => '\e[08m',
   nobold => '\e[0m',
   noattr => '\e[00m',
   black => '\e[30m',
   red => '\e[31m',
   green => '\e[32m',
   yellow => '\e[33m',
   blue => '\e[34m',
   magenta => '\e[35m',
   cyan => '\e[36m',
   white => '\e[37m',
   default => '\e[39m',
   none => '\e[00m',
   bgblack => '\e[40m',
   bgred => '\e[41m',
   bggreen => '\e[42m',
   bgyellow => '\e[43m',
   bgblue => '\e[44m',
   bgmagenta => '\e[45m',
   bgcyan => '\e[46m',
   bgwhite => '\e[47m',
   bgdefault => '\e[49m',
  );
my %sign_table=
  (
   'iso8859-1' => {
				   332 => '/',
				   304 => '-',
				   300 => "\\",
				   333 => '+',
				   262 => '=',
				   261 => '|',
				   260 => '#',
				  },
   'default'   => {
				   332 => "\332",
				   304 => "\304",
				   300 => "\300",
				   333 => "\333",
				   262 => "\262",
				   261 => "\261",
				   260 => "\260",
				 },
  );


%Psh::Prompt::prompt_vars = (
	'd' => sub {
			my ($wday, $mon, $mday) = (localtime)[6, 4, 3];
			$wday = (Psh::Locale::weekdays())[$wday];
			$mon  = (Psh::Locale::months())[$mon];
			return "$wday $mon $mday";
		},
	'e' => sub { return "\e"} ,
	'E' => sub { return "\e"} ,
	'h' => sub { return $Psh::host; },
	'H' => sub { return $Psh::longhost || $Psh::host; },
	's' => sub {
			my $shell = $Psh::bin;
			$shell =~ s/^.*\///;
			return $shell;
		},
	'S' => sub { return "\0" }, # extends to \
	'n' => sub { return "\n" },
	't' => sub {
			my ($hour, $min, $sec) = (localtime)[2, 1, 0];
			return sprintf("%02d:%02d:%02d", $hour, $min, $sec);
		},
	'u' => sub {
			# Camel, 2e, p. 172: 'getlogin'.
			return getlogin || (getpwuid($>))[0] || "uid$>";
		},
	'w' => sub {
			my $dir = $ENV{PWD};
			my $home = Psh::OS::get_home_dir();
			return $dir unless (length($home) > length($Psh::OS::FILE_SEPARATOR));	# in case the home dir is the root dir
            $dir =~ s/\\/\\\\/g;
			$dir =~ s/^\Q$home\E/\~/ if $home;
			return $dir;
		},
	'W' => sub {
			my $dir = $ENV{PWD};
			$dir =~ s/\\/\\\\/g;
			my ($newdir)= $dir=~ m:/([^/]+)$:;
			return $newdir||$dir||'/';
		},
	'#' => sub { return $Psh::cmd; },
	'!' => sub { return scalar(@Psh::history); },
	'$' => sub { return ($> ? '$' : '#'); },
	'[' => sub { return $Psh::term->ReadLine() eq 'Term::ReadLine::Gnu'?"\001":''},
	']' => sub { return $Psh::term->ReadLine() eq 'Term::ReadLine::Gnu'?"\002":''},
);


sub _prompt_helper {
	my $code= shift;
	my $var = $Psh::Prompt::prompt_vars{$code};
	my $sub;

	if (ref $var eq 'CODE') {
		$sub = &$var();
	} elsif($code =~ /^[0-9]+$/) {
		$sub= chr(oct($code));
	} elsif($code =~ /^\:[0-9]+$/) {
		$sub= chr($code);
	} elsif($code =~ /^0x/) {
		$sub= chr(hex($code));
	} else {
		Psh::Util::print_warning_i18n('prompt_unknown_escape',$code,$Psh::bin);
		$sub = ''
	}
	
	{
		local $1;
		if ($sub =~ m/\\([^\\])/) {
			Psh::Util::print_warning_i18n('prompt_expansion_error',$code,
							   $1, $Psh::bin);
			$sub =~ s/\\[^\\]//g;
		}
	}
	return $sub;
}

sub _color_helper {
	my $name= shift;
	my $result= '\[';
	my @tmp= split /\s+/, $name;
	foreach (@tmp) {
		if ($color_table{$_}) {
			$result.=$color_table{$_};
		} else {
			Psh::Util::print_debug_class('o',"Unknown prompt color $_\n");
		}
	}
	$result.='\]';
	return $result;
}

sub prompt_string
{
	my $prompt_templ = shift;
	my $temp;

	#
	# First, get the prompt string from a subroutine or from the default:
	#

	if (ref($prompt_templ) eq 'CODE') { # If it is a subroutine,
		$temp = &$prompt_templ();
	} elsif (ref($prompt_templ)) {      # If it isn't a scalar
		Psh::Util::print_warning_i18n('prompt_wrong_type',$Psh::bin);
		$temp = $default_prompt;
	} else {
		$temp = $prompt_templ;
	}

	#
	# Now, subject it to substitutions:
    #
	# Substitution is in x steps:
	# 1) \\ is substituted by \0 to be able to restore them later on
	# 2) The special construct \$( ... ) or $(...) is interpreted
	# 3) \char and \digits are interpreted
	# 4) \0 is restored to \
	#

	$temp=~ s/\\\\/\0/g; # save double backslash

	# Substitute program execution (for bash compatibility)
	$temp=~ s/\\\$\(/\$\(/g;
	while ($temp =~ m/^(.*)\$\((.+?)\)(.*)$/s) {
		my $sub='';
		my ($save1, $code, $save2) = ($1, $2, $3);
		eval {
			$sub=Psh::OS::backtick($code);
			chomp $sub;
		};
		Psh::Util::print_debug_class('e',"Error: $@") if $@;
		$sub='' if( $@);
		$sub=~ s/\\/\0/g;
		$temp=$save1 . $sub . $save2;
	}

	my $encoding= Psh::Options::get_option('encoding');
	my $my_sign= $sign_table{'default'};
	if ($encoding and exists $sign_table{$encoding}) {
		$my_sign= $sign_table{'iso8859-1'};
	}
	# Color substitution
	$temp=~ s/\\C\{(.+?)\}/&_color_helper($1)/ge;
	# Graphics sign conversion
	$temp=~ s/\\S\{(\d+?)\}/$my_sign->{$1}/g;

	# Standard prompt_var substitution
	$temp=~ s/\\([0-9]x?[0-9a-fA-F]*|[^0-9\\])/&_prompt_helper($1)/ge;

	$temp=~ s/\0/\\/g; # restore former double backslash

	return $temp;
}

sub normal_prompt {
	my $prompt= Psh::Options::get_option('ps1');
	$prompt= $default_prompt unless defined $prompt;
	return $prompt;
}

sub continue_prompt {
	my $prompt= Psh::Options::get_option('ps2');
	$prompt= '> ' unless defined $prompt;
	return $prompt;
}

sub pre_prompt_hook {
	my $tmp= Psh::Options::get_option('prompt_command');
	if ($tmp) {
		if (ref $tmp and ref $tmp eq 'CODE') {
			eval {
				&$tmp;
			};
			if ($@) {
				Psh::handle_message($@,'promp_command');
			}
		} else {
			Psh::evl($tmp);
		}
	}
	change_title();
}

sub change_title {
	my $title= Psh::Options::get_option('window_title');
	return if !$title;
	$title= prompt_string($title);
	Psh::OS::set_window_title($title);
}

1;
