package Psh::Builtins::Kill;

=item * C<kill [-SIGNAL] [%JOB | PID | JOBNAME] | -l>

Send SIGNAL (which defaults to TERM) to the given process, specified
either as a job (%NN) or as a pid (a number).

=cut

sub bi_kill
{
	if( ! Psh::OS::has_job_control()) {
		Psh::Util::print_error_i18n('no_jobcontrol');
		return (0,undef);
	}

	my @args = split(' ',$_[0]);
	my $sig= 'TERM';
	my (@pids, $job);

	unless (@args) {
		require Psh::Builtins::Help;
		Psh::Builtins::Help::bi_help('kill');
		return (0,undef);
	}


	if (scalar(@args) == 1 &&
		$args[0] eq '-l') {
		require Config;
		Psh::Util::print_out($Config::Config{sig_name}."\n");
		return (0,undef);
	} elsif( substr($args[0],0,1) eq '-') {
		$sig= substr($args[0],1);
		shift @args;
	}

	my $count= 0;
	foreach my $pid (@args) {
		if ($pid =~ m|^%(\d+)$|) {
			my $temp = $1 - 1;

			$job= Psh::Joblist::find_job($temp);
			if( !defined($job)) {
				Psh::Util::print_error_i18n('bi_kill_no_such_job',$pid);
				next;
			}

			$pid = $job->{pid};
		}
		elsif ($pid !~ m/^\d+$/) {
			my ($index,$rpid)= Psh::Joblist::find_last_with_name($pid);
			if( $rpid) {
				$pid=$rpid;
			} else {
				Psh::Util::print_error_i18n('bi_kill_no_such_job',$pid);
				next;
			}
		}

		if ($sig ne 'CONT' and Psh::Joblist::job_exists($pid)
			and !(($job=Psh::Joblist::get_job($pid))->{running})) {
			#Better wake up the process so it can respond to this signal
			$job->continue;
		}

		$sig=0 if $sig eq 'ZERO'; # stupid perl bug

		if (my $num=CORE::kill($sig, $pid) != 1) {
			Psh::Util::print_error_i18n('bi_kill_error_sig',$pid,$sig);
			next;
		} else {
			$count+=$num;
		}

		if ($sig eq 'CONT' and Psh::Joblist::job_exists($pid)) {
			Psh::Joblist::get_job($pid)->{running}=1;
		}
	}
	return ($count!=0,$count);
}

# Completion function for kill
sub cmpl_kill {
	my( $text, $pretext, $starttext) = @_;
	my @tmp= ();

	Psh::Joblist::enumerate();
	while( my $job= Psh::Joblist::each()) {
		push @tmp, $job->{call};
	}

	my @tmp2= split /\s+/, $starttext; # just to remove a deprecated message...
	if( @tmp2<2) {
		require Config;
		push @tmp, map { '-'.$_} split(' ', $Config::Config{sig_name});
	}

	return (1,grep { Psh::Util::starts_with($_,$text) } 
	         @tmp);
}

1;
