package Psh::Strategy::Built_in;

require Psh::Strategy;
require Psh::Options;
require Psh::Support::Builtins;

@Psh::Strategy::Built_in::ISA=('Psh::Strategy');

Psh::Support::Builtins::build_autoload_list();

sub new { Psh::Strategy::new(@_) }

sub consumes {
	return Psh::Strategy::CONSUME_TOKENS;
}

sub runs_before {
	return qw(executable auto_resume auto_cd);
}

sub applies {
	my $fnname= ${$_[2]}[0];

	if( $fnname= Psh::Support::Builtins::is_builtin($fnname)) {
		eval 'use Psh::Builtins::'.ucfirst($fnname);
		if ($@) {
			Psh::Util::print_error_i18n('builtin_failed',$@);
		}
		return $fnname;
	}
	return '';
}

sub execute {
	my $line= ${$_[1]};
	my @words= @{$_[2]};
	my $command= $_[3];
	shift @words;
	my $coderef;

	my $rest= join(' ',@words);

	no strict 'refs';
	$coderef= *{join('','Psh::Builtins::',ucfirst($command),
					 '::bi_',$command)};
	return (1,sub { &{$coderef}($rest,\@words); }, [], 0, undef );
}

1;
