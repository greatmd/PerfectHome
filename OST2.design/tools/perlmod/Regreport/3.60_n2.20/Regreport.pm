# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: Regreport.pm
# Copyright (C) 1995-2007 Sun Microsystems, Inc. All Rights Reserved
# 4150 Network Circle, Santa Clara, California 95054, U.S.A.
#
# * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER. 
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# For the avoidance of doubt, and except that if any non-GPL license 
# choice is available it will apply instead, Sun elects to use only 
# the General Public License version 2 (GPLv2) at this time for any 
# software where a choice of GPL license versions is made 
# available with the language indicating that GPLv2 or any later version 
# may be used, or where a choice of which version of the GPL is applied is 
# otherwise unspecified. 
#
# Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara, 
# CA 95054 USA or visit www.sun.com if you need additional information or 
# have any questions. 
# 
# ========== Copyright Header End ============================================
package Regreport;

use strict;
use warnings;
use	IO::Handle;
use Cwd;         	# to get safe current working directory
use Cwd 'chdir';    	# so $ENV{PWD} is set as well

require Exporter;

our @ISA = qw(Exporter);

STDOUT->autoflush(1);
STDERR->autoflush(1);

#-------------------------------------------------------------------------
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Regreport ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
#-------------------------------------------------------------------------

my @funcs = qw(regenerate chk_single_diag wait_regression regress_stat cutitup);
my @vars  = qw($wait_sec $debug $sas_only $cut_name $rsfh $clean_pass
               $fails_only $sim);

our %EXPORT_TAGS = (
	funcs => [ @funcs ],
	vars  => [ @vars ],
        all   => [ @funcs, @vars] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT =  @{ $EXPORT_TAGS{'all'} };

our $VERSION = '3.60_n2.20';

# Preloaded methods go here.

#======================================================
$SIG{INT}= \&cleanup;
#======================================================

our($wait_sec)= 100;			# polling interval (for -regress)
our($debug, $sas_only, $cut_name, $clean_pass, $fails_only,$sim);
our($rsfh) = \*STDOUT;			# the file handler where regress_stat dumps

my $period=100;
my(@errlines);				# error lines being gathered
my(@perf_errors);			# performance error lines being gathered
my ($diagplerr, $tsotoolerr);
my(%stat_details, %stats);		# status hash per diag

my (%group_count);			# # of diags in different groups
my (%group_count_stat);			# 2-D array with  status per group

my $start_time = time;

# The status types:
#------------------
my(%status_short)= ('pass' => 'PASS',
                   'fail' => 'FAIL',
                   'asst' => 'ASST',
                   'diag' => 'DIAG',
                   'lcns' => 'LIC',
                   'maxc' => 'MAXC',
                   'sckt' => 'SOCKT',
                   'timo' => 'TIMEO',
                   'simx' => 'NAS',
                   'perf' => 'PERF',
                   'dream' => 'DREAM',
                   'unkn' => 'UNKN',
                   'unfi' => 'UNFIN',
		   'nomem' => 'NOMEM'
               );

my(%STATUS_NAME)= ('pass' => 'PASS',
                   'fail' => 'FAIL',
                   'asst' => 'Assertion Fired',
                   'diag' => 'Diag Problem',
                   'lcns' => 'License Problem',
                   'maxc' => 'MaxCycles Hit',
                   'sckt' => 'Socket Problem',
                   'timo' => 'Timeout',
                   'simx' => 'Simics Problem',
                   'perf' => 'Performance',
                   'dream' => 'Killed By Dream',
                   'unkn' => 'Unknown',
                   'unfi' => 'UnFinished',
		   'nomem' => 'Out of Memory'
               );

my @status_types = qw(pass fail asst maxc timo diag sckt perf simx dream lcns unkn unfi nomem);

#default error pattern
#---------------------
my($good_trap_va) 	= 422000;
my($hgood_trap_va) 	= 82000;
my($bad_trap_va)  	= 422020;
my($hbad_trap_va)  	= 82020;

#--------------------------------------------------------------
my $w=100;
my($drawline)		= ("=" x $w) . "\n";
my($errline_num) 	= 0;
my($found_wall_sec) 	= 0;
my($found_sim_cyc) 	= 0;
my($wall_sec)		= 0;
my($sim_cyc)		= 0;

my($GUNZIP)	= "gzip -dc";		# gunzip

my($err_lines_per_diag) = 10;		# lines per diag (to report)

my($animate)=  0;			#0: to turn off display of diags

(my($TOOLBIN)= $0)=~ s%/[^/]+$%%;	#same path as this script


my ($grp_pos_in_name) = 1;

my ($log_exists);

my ($outofmemory) = 0;
my ($outofmemory_sig);
my ($dreamback);
my ($dreamjobid);


my @relnames;

#==================================================================
# START of LIB
#==================================================================
sub chk_statuslog {
  my($diag)= @_;

  my(@templist)   = ();
  $found_wall_sec = 0;
  $found_sim_cyc  = 0;
  $wall_sec       = 0;
  $sim_cyc        = 0;
  $errline_num    = 0;

  my($status)   = 'unfi';

#figure out diag directory
#=========================
  if($diag eq '.') {
    chop($diag= `pwd`);
    $diag=~ m%([^/]+)$%;
    $diag= $1;
#  ...  if($diag=~ /\w+:([^:]+:[^:]+):\d+/) { $diag= $1; }
  }elsif(! -d $diag) { die "No such diag directory: $diag\n"; }
  else{ chdir($diag); }

# extract key info from prev generated file
#==========================================
  my($stat_file)= 'status.log';
  my($finished)= 0;
  if(-f $stat_file) {                         #status file already generated
    open(IN, "< $stat_file") || die "Cannot open $stat_file\n";
    $finished= 1;
  }elsif(-f "$stat_file.gz") {                #status file already generated
    open(IN, "$GUNZIP $stat_file.gz |")  || die "Cannot gunzip $stat_file\n";
    $finished= 1;
  }

  if($finished) {
    $status   = 'unkn';
    while(<IN>) {                             #print lines to stdout
      if(/^Rundir/) {                           #extract status, and
          $status= &get_status($_);
      }
      elsif(/^Cycles=(\d+\.?\d*), Seconds=(\d+\.?\d*)/) {
        $sim_cyc = $1;
        $wall_sec = $2;
      }
      push(@templist, $_);
    }
    close(IN);

    if(-r 'sims.log' || -r 'sims.log.gz') 
    {
      if(-r    "sims.log") 	{ open (F, "sims.log");}
      elsif(-r "sims.log.gz")	{ open (F, "$GUNZIP sims.log.gz |");}

      print STDERR " I am doing sims\n" if($debug);
      while(<F>)
      {
        if   (/Chronologic VCS simulator/o && ($sim eq 'vcs')){     		last;}
        elsif (/Cadence Design Systems/ && ($sim eq 'ncv')){     		last;}
        elsif(!$sas_only && /SIMICS STEP/o){ 			last;}
        elsif(/Found diag under.*(verif.*\.s)/) {
            my($tmp) = "Diag: " . "\$DV_ROOT\/" . $1 . "\n";
            $templist[0] =  $tmp;
            }
        elsif(/midas: fatal error|no diag/i){
          $status  = 'diag';
          my($tmp) = "Rundir: " . $diag . ":0" . "\t\t\t Diag Problem\n";
          $templist[0] =  $tmp;
          push(@templist, $_);
	  last;
        }
        elsif(/error.*performance\s+mismatch/i){
          $status  = 'perf';
          my($tmp) = "Rundir: " . $diag . ":0" . "\t\t\t Performance Problem\n";
          $templist[0] =  $tmp;
          push(@templist, $_);
	  last;
        } elsif(/sas socket open timeout/i){
          $status  = 'sckt';
          my($tmp) = "Rundir: " . $diag . ":0" . "\t\t\t Socket Open Timeout: Probably picked a socket already in use\n";
          $templist[0] =  $tmp;
          push(@templist, $_);
        } elsif(/no space left on device/i ){
          $status  = 'dream';
          my($tmp) = "Rundir: " . $diag . ":0" . "\t\t\t Possible Dream, disk or SIG Problem\n";
          $templist[0] =  $tmp;
          push(@templist, $_);
        } elsif(/caught a sig/i ){
	  my($tmp);
	  my($tmp1) = $_;
	  &check_logfile;
	  if($outofmemory) {
	    if(&rerun_diag($diag)) {
	      # since the diag has been restarted, indicate it is unfinished
	      $status = 'unfi';
	      push(@templist, "$diag unfinished\n");
	      push(@templist, "$drawline");
	      last;
	    }else {
	      $status  = 'nomem';
	      $tmp = "Rundir: " . $diag . ":0" . "\t\t\t Ran out of memory\n";
	    }
	  } else {
	    $status  = 'dream';
	    $tmp = "Rundir: " . $diag . ":0" . "\t\t\t Possible Dream, disk or SIG Problem\n";
	  }
	  $templist[0] =  $tmp;
	  push(@templist, $tmp1);
        }elsif   (/-max_error|exit_on_error|stop_on_error|-no-warn-mismatch|vcs_run|ncv_run/){ next;}
        elsif(/regress_date/i){                   push(@templist, $_);}
        elsif(/regress_time/i){                   push(@templist, $_);}
        elsif(/group_name/i){                     push(@templist, $_);}
	    elsif(/running on\s+(\S+)/) {             $dreamback = $1; }
        elsif(/drmjobid\s+(\S+\s+\S+)/) {         $dreamjobid = $1;}
      }
      print "finished simsgrep\n" if($debug);
      close(F);
    }
    push(@templist, $drawline);
  }
  else{
    push(@templist, "$diag unfinished\n");
    push(@templist, "$drawline");
  }
  $stats{$diag} = $status;
  $stat_details{$diag} = [@templist];

  # Clean up passing, if requested
  if ($clean_pass && $status eq 'pass') {
      opendir (DIR, ".");
      my @delfiles = grep(!/$stat_file|^\.+$/, readdir(DIR));
      close DIR;
      print "Delfiles: @delfiles" if ($debug);
      system ("rm -rf @delfiles");
  }
  chdir('..');
  return ($status, $sim_cyc, $wall_sec);
}

#======================================================================

sub chk_single_diag {
    if  (   !(-r 'sims.log') and  !(-r 'sims.log.gz')   ) {
       print "-----> sims.log / sims.log.gz does not exist ! \n";
       exit(0);
    }
  my($diag)= @_;

  my(@templist);
  $found_wall_sec = 0;
  $found_sim_cyc  = 0;
  $wall_sec 	  = 0;
  $sim_cyc     	  = 0;
  $errline_num    = 0;
  @errlines       = ();

  my($status)	= 'unkn';

#figure out diag directory
#=========================
  if($diag eq '.') {
    chop($diag= `pwd`);
    $diag=~ m%([^/]+)$%;
    $diag= $1;
  }elsif(! -d $diag) { die "No such diag directory: $diag\n"; }
  else{ chdir($diag); }

  if($cut_name){
    my @tempnamelist = split ':', $diag;
    if(($tempnamelist[$#tempnamelist] =~ /^\d+$/) && ($#tempnamelist > 0)){
       $#tempnamelist--;
    }
    $diag = join ':', @tempnamelist;
  }

# extract key info from files
#============================

  my($open_sym) = 0;
  if(-e "symbol.tbl"){
    open(SYM, "symbol.tbl")  || die "Cannot open symbol.tbl\n";
    $open_sym = 1;
  } elsif(-e "symbol.tbl.gz"){
    open(SYM, "$GUNZIP symbol.tbl.gz |")  || die "Cannot gunzip symbol.tbl.gz\n";
    $open_sym = 1;
  }

  if($open_sym){
    print"(debug) symol.tbl is open\n";
    while(<SYM>){
      if(/good_trap\s+(\w+)/){
         $good_trap_va = $1;
      }
      elsif(/\.HT0_GoodTrap_0x100\s+0+(\w+)/){
         $hgood_trap_va = $1;
      }
      elsif(/bad_trap\s+(\w+)/){
         $bad_trap_va = $1;
      }
      elsif(/\.HT0_BadTrap_0x101\s+\w+\s+0+(\w+)/){
         $hbad_trap_va = $1;
      }
    }
    #if($debug){
      print "good trap  $good_trap_va  \tbad trap  $bad_trap_va \n";
      print "hgood trap $hgood_trap_va \thbad trap $hbad_trap_va \n";
    #}
  }

  my($something) = 0;
  if(-r 'midas.log' || -r 'midas.log.gz') {
      if(-r    "midas.log")	{ open (F, "midas.log");}
      elsif(-r "midas.log.gz")	{ open (F, "$GUNZIP midas.log.gz |");}
      &midasgrep;
      close(F);
      $something = 1;
  }

  $log_exists = 0;my @data;
  if(!$sas_only) 
  {
      if(-r 'sims.log' || -r 'sims.log.gz')
        {
            if(-r    "sims.log")      { open (F, "sims.log") or die("Unable to open file sims.log"); }
            elsif(-r "sims.log.gz")   { open (F, "$GUNZIP sims.log.gz |") or die("Unable to open file sims.log.gz"); }
    }
    @data=<F>;
    close F;
    my @d = grep { /Vera: Loading main|ERROR|SIGDIE|regreport checking|regreport clock period|Time:.*[p|f]s|CPU Time:|ncsim: CPU Usage/ } @data;
    #my @d = grep { /Vera: Loading main|ERROR|regreport(?! will determine)|SIGDIE|GOOD End|^Time:|[cC][pP][uU] [tT]ime[ ]*[:=]|finish at simulation time [0-9]+|Firing: [0-9]+|Message:|Signature:/ } @data; 
      &sim_grep (\@d );
      $something = 1;
      $log_exists = 1;
  }
  elsif(-r 'dream.log' || -r 'dream.log.gz') {
    if(-r    "dream.log")  	{ open (F, "dream.log");}
    elsif(-r "dream.log.gz")	{ open (F, "$GUNZIP dream.log.gz |");}
    &dreamloggrep;
    close(F);
    $something = 1;
  }elsif($sas_only && (-r 'sims.log' || -r 'sims.log.gz')) {
    if(-r    "sims.log")  	{ open (F, "sims.log");}
    elsif(-r "sims.log.gz")	{ open (F, "$GUNZIP sims.log.gz |");}
#----------------------------------------------------------------------
# this is a little hacky but listen up:
# for the weird situation when I am checking a single diag for sas_only run
# regreport -1 -sas_only
# I open  sims.log but perform the dreamloggrep checks
#----------------------------------------------------------------------
    &dreamloggrep;
    close(F);
    $something = 1;
  }

  if(-r 'sas.log' || -r 'sas.log.gz') {
    if(-r    "sas.log")  	{ open (F, " tail -1000 sas.log |");}
    elsif(-r "sas.log.gz")	{ open (F, "$GUNZIP sas.log.gz |  tail -1000 |");}
    &sasgrep;
    close(F);
    $something = 1;
  }

  if(!$something) {
     printf $rsfh "Rundir: %-40s   %s\n", $diag.":0", $STATUS_NAME{'unkn'};
     return ('unkn', 0, 0);
  }


#analyze failure
#===============
  my($long_stat, $i, $curr_line);

  $long_stat= "$STATUS_NAME{'unkn'} (No Status)";
  $status = 'unkn';
  for($i = 0; $i < $errline_num; $i++)
  {
    $curr_line= $errlines[$i];
    if($curr_line =~ /(\w+-MISMATCH)/) {
      $long_stat= "$STATUS_NAME{'fail'} ($1)";
      $status = 'fail';
      last;
    }elsif($curr_line=~/SIGDIE.*sas socket open timeout/) {
      $long_stat= "$STATUS_NAME{'sckt'} (Socket)";
      $status = 'sckt';
      last;
    }elsif($curr_line=~/ERROR - failing assertion/) {
      $long_stat= "$STATUS_NAME{'asst'} (Monitor)";
      $status = 'asst';
      last;
    }elsif($curr_line =~ /ERROR.*TIMEOUT/o) {
      $long_stat= "$STATUS_NAME{'timo'} (Monitor)";
      $status=    'timo' ;
      last;
    }elsif($curr_line =~ /ERROR:\s+Maximum Simulation Cycles\s+(.*?)\s+Reached/o) {
      $long_stat= "$STATUS_NAME{'maxc'} $1";
      $status = 'timo';
      last;
    }elsif($curr_line=~/ERROR/o) {
      $long_stat= "$STATUS_NAME{'fail'} (Monitor)";
      $status = 'fail';
      last;
    }elsif($curr_line =~ /SAS-MEM: ASSERT ERROR:/s) {
       my($msg)= $'; #'
       $msg=~ s/(.*)\n//;					#$1 is the line after
       $long_stat= "$STATUS_NAME{'fail'} (SAS-MEM:$1)";		# 'ASSERT ERROR:'
       $status = 'fail';
       last;
    }elsif(($curr_line =~ /GOOD End/)||(!$log_exists && ($curr_line =~ /SAS hits GOOD TRAP -> PASS/))){
      if(-r 'tsotool.log' || -r 'tsotool.log.gz') {
        if(-r    "tsotool.log")       { open (F, "tsotool.log");}
        elsif(-r "tsotool.log.gz")    { open (F, "$GUNZIP tsotool.log.gz |");}
        $tsotoolerr = &tsotoolgrep;
        close(F);
      } 

      if(-r 'diag_pl.log' || -r 'diag_pl.log.gz') {
        if(-r    "diag_pl.log")       { open (F, "diag_pl.log");}
        elsif(-r "diag_pl.log.gz")    { open (F, "$GUNZIP diag_pl.log.gz |");}
        $diagplerr = &diagplgrep;
        close(F);
      }

      if($tsotoolerr){
        $long_stat= "$STATUS_NAME{'fail'} tso_analyze failure";
        $status = 'fail';
      } 
      elsif($diagplerr){
        $long_stat= "$STATUS_NAME{'perf'}";
        $status = 'perf';
      }
      else{
        $long_stat= "$STATUS_NAME{'pass'}";
        $status = 'pass';
      }
    }elsif($curr_line =~ /no diag|midas.*error/i) {
      $long_stat= $STATUS_NAME{'diag'};
      $status = 'diag';
      last;
    }elsif($curr_line =~ /Caught a SIG/) {
      &check_logfile (\@data);
      if($outofmemory) {
	$long_stat= "$STATUS_NAME{'nomem'} (Exceed Dream Memory Limit?)";
	$status  = 'nomem';
      } else {
	$long_stat= "$STATUS_NAME{'dream'} (Exceed Dream Time Limit?)";
	$status = 'dream';
      }
      last;
    }elsif($curr_line =~ /(simv|ncsim) run exited with error: (.*)/) {
      $long_stat= "$STATUS_NAME{'unkn'} ($1)";
      $status = 'unkn';
      last;
    }elsif($curr_line =~ /cannot connect|cannot bring up server connection|the command did not complete properly/io) {
      $long_stat= $STATUS_NAME{'sckt'};
      $status = 'sckt';
      last;
    }elsif($curr_line =~ /simics.*shaky/i) {
      $long_stat= "$STATUS_NAME{'simx'}";
      $status = 'simx';
      last;
    }elsif($sas_only && ($curr_line =~ /v:0x$bad_trap_va/i)){
      $long_stat= "$STATUS_NAME{'fail'} SAS-MEM fail in sas_only mode BAD TRAP v:0x$bad_trap_va";
      $status = 'fail';
      last;
    }elsif($sas_only && ($curr_line =~ /v:0x$hbad_trap_va/i)){
      $long_stat= "$STATUS_NAME{'fail'} SAS-MEM fail in sas_only mode HBAD TRAP v:0x$bad_trap_va";
      $status = 'fail';
      last;
    }elsif($sas_only && ($curr_line =~ /v:0x$good_trap_va/i)){
      $long_stat= "$STATUS_NAME{'pass'} SAS-MEM pass in sas_only mode GOOD TRAP v:0x$good_trap_va";
      $status = 'pass';
      last;
    }elsif($sas_only && ($curr_line =~ /v:0x$hgood_trap_va/i)){
      $long_stat= "$STATUS_NAME{'pass'} SAS-MEM pass in sas_only mode HGOOD TRAP v:0x$good_trap_va";
      $status = 'pass';
      last;
    }elsif($curr_line =~ /SAS hits MAX CYCLE -> FAIL/){
      $long_stat= "$STATUS_NAME{'maxc'} SAS hits MAX CYCLE -> FAIL";
      $status = 'maxc';
      last;
    }
  }
  foreach (@data) {
      if (/Found diag under.*(verif.*\.s)/) {
          printf $rsfh "Diag: %-70s\n","\$DV_ROOT\/".$1;last;
      }
  }
  printf $rsfh "Rundir: %-40s   %s\n", $diag.":0", $long_stat;
  my $date=`date`;
  print $rsfh "Time finished: $date";
   for($i = 0; $i <= $#errlines; $i++){
      next if ($errlines[$i] =~ /Vera: Loading main/);
      print $rsfh $errlines[$i];
   }
  if(($status eq 'pass' || $status eq 'fail' || $status eq 'asst')  && $found_sim_cyc && $found_wall_sec) {
    printf $rsfh "Cycles=%.2f, Seconds=%.2f, C/S=%.2f\n", $sim_cyc, $wall_sec, $sim_cyc/$wall_sec;
  }

  if($diagplerr){
    print $rsfh join '', @perf_errors;
  }

  STDOUT->autoflush(1);
  ($status, $sim_cyc, $wall_sec);
}

#================================================================

sub wait_regression {
   my($ofile, $regress_dir) = @_;	#output file, regression directory

   my(@idle_char)= ('|', '/', '-', '\\');
   my $spinner;
   my($iter)= 0;
   my($unfini) = 1;
   my($last_unfini);
   my($idle_time) = 0;
   my($total_time) = 0;
# increased the watchdog timer value from 20000 s to 86400 s (24 hrs)
   my $watchdog=86400;
   my $regress_timeout = $ENV{REGREPORT_TIMEOUT} || $watchdog;

   STDOUT->autoflush(1);
   STDERR->autoflush(1);
   $animate= 0;					#turn diag name printing/erasing
   system("clear");
   # Generate release history if diff_rel_<name>.log exists
   create_rel_hist($regress_dir);
   print STDERR $drawline;
   print STDERR "\t\tSTATUS OF REGRESSION IN OPENSPARC T2\n";
   print STDERR $drawline;

   while($unfini) {
     open(OUTFILE, "> $ofile") or die "cannot open $ofile";
     $rsfh = \*OUTFILE;
     print STDERR "\b" x $w;
     ($unfini) = (regress_stat(1, $regress_dir))[2];
     print STDERR "\b" x $w;
     close(OUTFILE);


     $spinner = $idle_char[$iter&3] x 3;
     if(!$unfini){
       open(OUTFILE, ">> $ofile") or die "cannot open $ofile";
       print STDERR "\n$drawline";
       chomp( my $regname = `basename $regress_dir`);
       print STDERR "Regression $regname has completed\n";
       if ($ofile =~ /^\//) {
          print STDERR "Details are in $ofile\n";
       } else {
          print STDERR "Details are in $ENV{PWD}/$ofile\n";
       }
       print STDERR "Regression Directory is $regress_dir\n";
  if ($total_time<3600) {
       printf STDERR "Total Time Waited : %3d mins %3d secs\n",int($total_time/60),($total_time-(int($total_time/60)*60));
       printf OUTFILE "Total Time Waited : %3d mins %3d secs\n",int($total_time/60),($total_time-(int($total_time/60)*60));
  }
  else {
       printf STDERR "Total Time Waited : %3d hrs %3d mins\n",int($total_time/3600),int(($total_time-(int($total_time/3600)*3600))/60);
       printf OUTFILE "Total Time Waited : %3d hrs %3d mins\n",int($total_time/3600),int(($total_time-(int($total_time/3600)*3600))/60);
  }
       if ($clean_pass &&
           $group_count_stat{ALL}->{'pass'} == $group_count{'ALL'}) {
        printf OUTFILE "Cleaning Run Directories ..\n";
        printf STDERR "Cleaning Run Directories ..\n";
        opendir (DIR, "$regress_dir");
        foreach (grep(!/^\.+$/,readdir DIR)) {
            system ("rm -rf $regress_dir/$_") if (-d "$regress_dir/$_");
        }
        close DIR;
       }
       print STDERR $drawline;
       close OUTFILE;
       return 0;
     }
     else{
  my ($ih,$im,$th,$tm)=(0,0,0,0);
  if ($idle_time<3600) { $im=int($idle_time/60); }
  else { $ih=int($idle_time/3600); $im=int(($idle_time-($ih*3600))/60); }
  if ($total_time<3600) { $tm=int($total_time/60); }
  else { $th=int($total_time/3600); $tm=int(($total_time-($th*3600))/60); }
       if(!$iter) {			#making progress
     printf STDERR "%-12s %6d diags remain; idle: %3d mins, total: %3d mins %-3s",'Just now started',$unfini,$im,$tm,$spinner; }
       elsif ($last_unfini > $unfini){
         $spinner = $idle_char[($iter++)&3] x 3;
         print STDERR "\b" x $w;
         if ($idle_time<3600 && $total_time<3600) {
     printf STDERR "%-12s %6d diags remain; idle: %3d mins, total: %3d mins %-3s",'Steady  progress',$unfini,$im,$tm,$spinner; }
         elsif ($idle_time<3600 && $total_time>3600) {
     printf STDERR "%-12s %6d diags remain; idle: %3d mins, total: %3d hrs %3d mins %-3s",'Steady  progress',$unfini,$im,$th,$tm,$spinner; }
         else { #($idle_time>3600 && $total_time>3600)
     printf STDERR "%-12s %6d diags remain; idle: %3d hrs %3d mins, total: %3d hrs %3d mins %-3s",'Steady  progress',$unfini,$ih,$im,$th,$tm,$spinner; }
         $idle_time = 0;
       }
       else{
         print STDERR "\b" x $w;
         if ($idle_time<3600 && $total_time<3600) {
     printf STDERR "%-12s %6d diags remain; idle: %3d mins, total: %3d mins %-3s",'No      progress',$unfini,$im,$tm,$spinner; }
         elsif ($idle_time<3600 && $total_time>3600) {
     printf STDERR "%-12s %6d diags remain; idle: %3d mins, total: %3d hrs %3d mins %-3s",'No      progress',$unfini,$im,$th,$tm,$spinner; }
         else { #($idle_time>3600 && $total_time>3600)
     printf STDERR "%-12s %6d diags remain; idle: %3d hrs %3d mins, total: %3d hrs %3d mins %-3s",'No      progress',$unfini,$ih,$im,$th,$tm,$spinner; }
       }
       print STDERR "\n";
     }
     if($total_time > $regress_timeout){
        print STDERR "\n$drawline";
        if ($total_time<3600) {
        print STDERR "Well, ",int($total_time/60)," mins ",($total_time-(int($total_time/60)*60)), "secs have passed, and the regression is not over yet!\n"; }
        else {
        print STDERR "Well, ",int($total_time/3600)," hrs ",int(($total_time-(int($total_time/3600)*3600))/60)," mins have passed, and the regression is not over yet!\n"; }
        print STDERR "So, I am quitting now... Please, check the regression manually.\n";
        print STDERR "Run \"%regreport -regenerate\" first, followed by \"%regreport <RUNDIR>\"!\n";
        return ($unfini);
     }
     sleep($wait_sec)	if($unfini);
     $idle_time+= $wait_sec;
     $total_time = (time - $start_time);
     $iter++;
     $last_unfini = $unfini;
   }
   return ($unfini);
}

#===================================================================
sub regenerate {

     my($list);
     $list= `ls -1`;
     my(@dir)= split("\n", $list);
     my($diag);
     my($i) =0;
     foreach $diag (@dir) {
        next if(! -d $diag);
        next if($diag eq 'coverage' );
        next if($diag eq 'tre' );
        $i++;
        print STDERR "$i: regenerating $diag\n";
        next    if(! -d $diag);
        chdir($diag);
        open(OUTFILE, "> status.log") or die "cannot open status.log";
        $rsfh = \*OUTFILE;
        chk_single_diag(".");
        close(OUTFILE);
        chdir('..');
     }
}

#===================================================================
#===================================================================

sub regress_stat {
  my ($dup_summary) = shift(@_);
  my($regress_dir)= shift(@_);
  my($status, $cyc, $sec);

  my ($curr_dir);
  chop($curr_dir= `pwd`);

  if(-d $regress_dir){ chdir($regress_dir);	}
  else		{ print STDERR "Cannot chdir into $regress_dir\n"; }


  chop($regress_dir= `pwd`);

  my($i, $list, $specific_args);				#list: specified diag dir list
  $specific_args = "";
  foreach $i (@_) {
    $specific_args .= "$i* ";
  }
  if($specific_args){	$list= `ls -d1 $specific_args`;}
  else{			$list= `ls -1`;}

  my(@dir)= split("\n", $list);

  my($index)= 0;
  my($group, $diag_name);
  my(%pass_fail_count, %pass_fail_cyc, %pass_fail_sec);

#========================================
# figure out the different groups
#========================================

  my($diag);
  foreach $diag (@dir) {
    next	if(! -d $diag);
    next if($diag eq 'coverage' );
    next if($diag eq 'tre' );
    my @diag_name_parts = split ':',$diag;
    $group_count{$diag_name_parts[$grp_pos_in_name]} = 0 if(scalar(@diag_name_parts) > $grp_pos_in_name);
  }

  $group_count{'ALL'} = 0;
  my(@group_list)= reverse sort keys %group_count;

#========================================
# initialize some variables
#========================================
  foreach my $status (%STATUS_NAME) {
    foreach $group (@group_list) {
      $group_count{$group}= 0;
      $group_count_stat{$group}->{$status}= 0;
      $pass_fail_count{$group}= 0;
      $pass_fail_cyc{$group}= 0;
      $pass_fail_sec{$group}= 0;
    }
  }

#========================================
# walk-thru all diag dir and collect info
#========================================
  foreach $diag (@dir) {
    next if(! -d $diag);
    next if($diag eq 'coverage' );
    next if($diag eq 'tre' );
    my @diag_name_parts = split ':',$diag;
    $group = "";
    if(scalar(@diag_name_parts) > $grp_pos_in_name){
      $group= $diag_name_parts[$grp_pos_in_name];
      if(defined $group_count{$group}){
        ++ $group_count{$group};
      }
      else{
        die "Something is wrong at walk-thru group is $group\n";
      }
    }
    ++ $group_count{'ALL'};

    if($animate) {
       $diag_name= sprintf("%-60s %4d", $diag, ++$index);
       print STDERR "\b" x $w;
       print STDERR $diag_name;				#print processed diag name
       STDERR->autoflush(1);
    }

    print STDERR " I am here\n" if($debug);
    ($status, $cyc, $sec)= &chk_statuslog($diag);
    print STDERR " I am over ($status, $cyc, $sec)\n" if($debug);

    ++ $group_count_stat{$group}->{$status} if ($group);
    ++ $group_count_stat{ALL}->{$status};

### to calcuate cycles per second
#================================
    if($sec!=0 && ($status eq 'pass')) {
      if($group){
        $pass_fail_count{$group} ++;
        $pass_fail_cyc{$group}+= $cyc;
        $pass_fail_sec{$group}+= $sec;
      }
      $pass_fail_count{ALL} ++;
      $pass_fail_cyc{ALL}+= $cyc;
      $pass_fail_sec{ALL}+= $sec;
    }

    if($animate) { print STDERR "\b" x $w; }
  }
  if($animate){ printf STDERR "%-60s %4d", "Total diags:", $group_count{'ALL'}; }

#======================================
# print summary information
#======================================

# Don't print status type if 0 ..

my @active_types = qw(pass fail);
foreach my $type (@status_types) {
    next if (grep(/$type/, @active_types));
    foreach (@group_list) {
        if ($group_count_stat{$_}->{$type} >0) {
            push (@active_types, $type);
            last;
        }
    }
}

my $hide_summary = ! $dup_summary || $group_count_stat{'ALL'}->{unfi};
print STDERR "\b" x 120;

# header
#=======
  print  $rsfh "\nSummary for $regress_dir\n";
  print  STDERR "\nSummary for $regress_dir\n" if (! $hide_summary);
  foreach (@relnames) {
    print  $rsfh "Release : $_\n";
    print  STDERR "Release : $_\n" if (! $hide_summary);
    s/v=/-v /;
    my $hist = join(" ", `hist_obj $_ | tail -2`) ;
    $hist =~ s/\n/ /g;
    print  $rsfh "History :$hist \n";
    print  STDERR "History :$hist \n" if (! $hide_summary);

  }
  print  $rsfh $drawline;
  print  STDERR $drawline if (! $hide_summary);

  printf $rsfh "%20.20s:", 'Group' ;
  printf STDERR "%20.20s:", 'Group'  if (! $hide_summary);
  printf $rsfh "%5s |", "Total";
  printf STDERR "%5s |", "Total" if (! $hide_summary);
  foreach my $type (@active_types) {
     printf $rsfh "%5s |", $status_short{$type};
     printf STDERR "%5s |", $status_short{$type} if (! $hide_summary);
  }
  printf $rsfh "%20s |", "Cycles";
  printf STDERR "%20s |", "Cycles" if (! $hide_summary);
  printf $rsfh "%12s |", "Time";
  printf STDERR "%12s |", "Time" if (! $hide_summary);
  printf $rsfh "%6s |", "C/S";
  printf STDERR "%6s |", "C/S" if (! $hide_summary);
  print  $rsfh "\n", '-' x $w, "\n";
  print  STDERR "\n", '-' x $w, "\n" if (! $hide_summary);


# status counts
#==============
  foreach $group (@group_list) {
    if ($group eq 'ALL') {
        print $rsfh '-' x $w, "\n";
        print STDERR '-' x $w, "\n" if (! $hide_summary);
    }
    printf $rsfh "%20.20s:", $group;
    printf STDERR "%20.20s:", $group if (! $hide_summary);
    printf $rsfh "%5d |", $group_count{$group};
    printf STDERR "%5d |", $group_count{$group} if (! $hide_summary);
    foreach my $type (@active_types) {
        printf $rsfh "%5d |", $group_count_stat{$group}->{$type};
        printf STDERR "%5d |", $group_count_stat{$group}->{$type}
            if (!  $hide_summary);
    }
    printf $rsfh "%20s |", $pass_fail_sec{$group} ?
            sprintf("%20.2f",$pass_fail_cyc{$group}) : 'N/A'  ;
    if (! $hide_summary) {
    printf STDERR "%20s |", $pass_fail_sec{$group} ?
            sprintf("%20.2f",$pass_fail_cyc{$group}) : 'N/A'  ;
    }

    printf $rsfh "%12s |", $pass_fail_sec{$group} ?
        sprintf("%12.2f",$pass_fail_sec{$group}) : 'N/A'  ;
    if (! $hide_summary) {
         printf STDERR "%12s |", $pass_fail_sec{$group} ?
         sprintf("%12.2f",$pass_fail_sec{$group}) : 'N/A'  ;
    }
    printf $rsfh "%6s |", $pass_fail_sec{$group} ?
	    sprintf("%6.2f",$pass_fail_cyc{$group}/$pass_fail_sec{$group}) : 'N/A'  ;
    if (! $hide_summary) {
         printf STDERR "%6s |", $pass_fail_sec{$group} ?
        sprintf("%6.2f",$pass_fail_cyc{$group}/$pass_fail_sec{$group}) : 'N/A'  ;
    }

    print $rsfh "\n";
    print STDERR "\n" if (! $hide_summary);
  }

  print $rsfh '=' x $w, "\n";
  print STDERR '=' x $w, "\n" if (! $hide_summary);
  print $rsfh "\n";
  print STDERR "\n" if (! $hide_summary);

  printf $rsfh "Total Diags  : %20d\n", $group_count{ALL};
  printf $rsfh "Total Passed : %20d\n", $group_count_stat{ALL}->{'pass'};
  printf $rsfh "Total Unknown: %20d\n", $group_count_stat{ALL}->{'unkn'};
  printf $rsfh "Total Unfini : %20d\n", $group_count_stat{ALL}->{'unfi'};
  printf $rsfh "Total Fail   : %20d\n", $group_count_stat{ALL}->{'fail'} +
                                       $group_count_stat{ALL}->{'asst'} +
                                       $group_count_stat{ALL}->{'perf'} +
                                       $group_count_stat{ALL}->{'timo'} +
                                       $group_count_stat{ALL}->{'maxc'} ;
  printf $rsfh "Total Cycles : %20s\n", $pass_fail_sec{ALL} ?
            sprintf("%20.2f", $pass_fail_cyc{ALL}) : 'N/A';
  printf $rsfh "Total Time   : %20s\n", $pass_fail_sec{ALL} ?
            sprintf("%20.2f", $pass_fail_sec{ALL}) : 'N/A';
  printf $rsfh "Average C/S  : %20s\n", $pass_fail_sec{ALL} ?
           sprintf("%20.2f",$pass_fail_cyc{ALL}/$pass_fail_sec{ALL}) : 'N/A';

  if (!$hide_summary) {
      printf STDERR "Total Diags  : %20d\n", $group_count{ALL};
      printf STDERR "Total Passed : %20d\n", $group_count_stat{ALL}->{'pass'};
      printf STDERR "Total Unknown: %20d\n", $group_count_stat{ALL}->{'unkn'};
      printf STDERR "Total Unfini : %20d\n", $group_count_stat{ALL}->{'unfi'};
      printf STDERR "Total Fail   : %20d\n", $group_count_stat{ALL}->{'fail'} +
                                       $group_count_stat{ALL}->{'asst'} +
                                       $group_count_stat{ALL}->{'perf'} +
                                       $group_count_stat{ALL}->{'timo'} +
                                       $group_count_stat{ALL}->{'maxc'} ;
      printf STDERR "Total Cycles : %20s\n", $pass_fail_sec{ALL} ?
                sprintf("%20.2f", $pass_fail_cyc{ALL}) : 'N/A';
      printf STDERR "Total Time   : %20s\n", $pass_fail_sec{ALL} ?
                sprintf("%20.2f", $pass_fail_sec{ALL}) : 'N/A';
      printf STDERR "Average C/S  : %20s\n", $pass_fail_sec{ALL} ?
                sprintf("%20.2f",$pass_fail_cyc{ALL}/$pass_fail_sec{ALL}) : 'N/A';
  }

  print $rsfh '=' x $w, "\n";
  print STDERR '=' x $w, "\n" if (! $hide_summary);
  print $rsfh "\n";
  print STDERR "\n" if (! $hide_summary);




# details
#========
  foreach my $group (@group_list){
    print $rsfh $drawline;
    if($group eq 'ALL'){
      print $rsfh "\n\nDetails for ALL not in other groups\n";
    }
    else{
      print $rsfh "\n\nDetails for $group\n";
    }
    print $rsfh $drawline;
    my ($print_header);
    foreach my $type (@status_types) {
        next if ($fails_only && $type eq "pass");
      $print_header = 0;
      foreach my $diag (sort keys %stats) {
        my @diag_name_parts = split ':',$diag;
        if(($stats{$diag} eq $type)  &&
           (((scalar(@diag_name_parts) >  $grp_pos_in_name)  && ($group eq $diag_name_parts[$grp_pos_in_name])) ||
             ((scalar(@diag_name_parts) <= $grp_pos_in_name) && ($group eq 'ALL')))
          )
        {
          if(!$print_header){
            print $rsfh "$STATUS_NAME{$type}:\n";
            print $rsfh "===================\n";
            $print_header = 1;
          }
	  if(defined($diag) && defined($stat_details{$diag})) {
		print $rsfh "Rundir: $diag\n";
	    print $rsfh join ('',@{$stat_details{$diag}});
	  }else{
	    print $rsfh "\$stat_details{\$diag} is not defined for diag $diag";
	  }
          print $rsfh $drawline;
        }
      }
    }
  }

  # Added ending status here again..

#======================================
# print summary information
#======================================


$hide_summary = ! $dup_summary || $group_count_stat{'ALL'}->{unfi};
print STDERR "\b" x 120;

  print  $rsfh $drawline;
  print  STDERR $drawline if (! $hide_summary);
# header
#=======
  print  $rsfh "\nSummary for $regress_dir\n";
  print  STDERR "\nSummary for $regress_dir\n" if (! $hide_summary);
  foreach (@relnames) {
    print  $rsfh "Release : $_\n";
    print  STDERR "Release : $_\n" if (! $hide_summary);
  }
  print  $rsfh $drawline;
  print  STDERR $drawline if (! $hide_summary);
  printf $rsfh "%20.20s:", 'Group' ;
  printf STDERR "%20.20s:", 'Group'  if (! $hide_summary);
  printf $rsfh "%5s |", "Total";
  printf STDERR "%5s |", "Total" if (! $hide_summary);
  foreach my $type (@active_types) {
     printf $rsfh "%5s |", $status_short{$type};
     printf STDERR "%5s |", $status_short{$type} if (! $hide_summary);
  }
  printf $rsfh "%20s |", "Cycles";
  printf STDERR "%20s |", "Cycles" if (! $hide_summary);
  printf $rsfh "%12s |", "Time";
  printf STDERR "%12s |", "Time" if (! $hide_summary);
  printf $rsfh "%6s |", "C/S";
  printf STDERR "%6s |", "C/S" if (! $hide_summary);
  print  $rsfh "\n", '-' x $w, "\n";
  print  STDERR "\n", '-' x $w, "\n" if (! $hide_summary);


# status counts
#==============
  foreach $group (@group_list) {
    if ($group eq 'ALL') {
        print $rsfh '-' x $w, "\n";
        print STDERR '-' x $w, "\n" if (! $hide_summary);
    }
    printf $rsfh "%20.20s:", $group;
    printf STDERR "%20.20s:", $group if (! $hide_summary);
    printf $rsfh "%5d |", $group_count{$group};
    printf STDERR "%5d |", $group_count{$group} if (! $hide_summary);
    foreach my $type (@active_types) {
        printf $rsfh "%5d |", $group_count_stat{$group}->{$type};
        printf STDERR "%5d |", $group_count_stat{$group}->{$type}
            if (!  $hide_summary);
    }
    printf $rsfh "%20s |", $pass_fail_sec{$group} ?
            sprintf("%20.2f", $pass_fail_cyc{$group}) : 'N/A'  ;
    if (! $hide_summary) {
    printf STDERR "%20s |", $pass_fail_sec{$group} ?
           sprintf("%20.2f", $pass_fail_cyc{$group}) : 'N/A'  ;
    }

    printf $rsfh "%12s |", $pass_fail_sec{$group} ?
        sprintf("%12.2f",$pass_fail_sec{$group}) : 'N/A'  ;
    if (! $hide_summary) {
         printf STDERR "%12s |", $pass_fail_sec{$group} ?
         sprintf("%12.2f",$pass_fail_sec{$group}) : 'N/A'  ;
    }
    printf $rsfh "%6s |", $pass_fail_sec{$group} ?
	    sprintf("%6.2f",$pass_fail_cyc{$group}/$pass_fail_sec{$group}) : 'N/A'  ;
    if (! $hide_summary) {
         printf STDERR "%6s |", $pass_fail_sec{$group} ?
        sprintf("%6.2f",$pass_fail_cyc{$group}/$pass_fail_sec{$group}) : 'N/A'  ;
    }

    print $rsfh "\n";
    print STDERR "\n" if (! $hide_summary);
  }

  print $rsfh '=' x $w, "\n";
  print STDERR '=' x $w, "\n" if (! $hide_summary);
  print $rsfh "\n";
  print STDERR "\n" if (! $hide_summary);

  printf $rsfh "Total Diags  : %20d\n", $group_count{ALL};
  printf $rsfh "Total Passed : %20d\n", $group_count_stat{ALL}->{'pass'};
  printf $rsfh "Total Unknown: %20d\n", $group_count_stat{ALL}->{'unkn'};
  printf $rsfh "Total Unfini : %20d\n", $group_count_stat{ALL}->{'unfi'};
  printf $rsfh "Total Fail   : %20d\n", $group_count_stat{ALL}->{'fail'} +
                                       $group_count_stat{ALL}->{'asst'} +
                                       $group_count_stat{ALL}->{'perf'} +
                                       $group_count_stat{ALL}->{'timo'} +
                                       $group_count_stat{ALL}->{'maxc'} ;
  printf $rsfh "Total Cycles : %20s\n", $pass_fail_sec{ALL} ?
            sprintf("%20.2f", $pass_fail_cyc{ALL}) : 'N/A';
  printf $rsfh "Total Time   : %20s\n", $pass_fail_sec{ALL} ?
            sprintf("%20.2f", $pass_fail_sec{ALL}) : 'N/A';
  printf $rsfh "Average C/S  : %20s\n", $pass_fail_sec{ALL} ?
            sprintf("%20.2f",$pass_fail_cyc{ALL}/$pass_fail_sec{ALL}) : 'N/A';
  if (!$hide_summary) {
      printf STDERR "Total Diags  : %20d\n", $group_count{ALL};
      printf STDERR "Total Passed : %20d\n", $group_count_stat{ALL}->{'pass'};
      printf STDERR "Total Unknown: %20d\n", $group_count_stat{ALL}->{'unkn'};
      printf STDERR "Total Unfini : %20d\n", $group_count_stat{ALL}->{'unfi'};
      printf STDERR "Total Fail   : %20d\n", $group_count_stat{ALL}->{'fail'} +
                                       $group_count_stat{ALL}->{'asst'} +
                                       $group_count_stat{ALL}->{'perf'} +
                                       $group_count_stat{ALL}->{'timo'} +
                                       $group_count_stat{ALL}->{'maxc'} ;
      printf STDERR "Total Cycles : %20s\n", $pass_fail_sec{ALL} ?
                sprintf("%20.2f", $pass_fail_cyc{ALL}) : 'N/A';
      printf STDERR "Total Time   : %20s\n", $pass_fail_sec{ALL} ?
                sprintf("%20.2f", $pass_fail_sec{ALL}) : 'N/A';
      printf STDERR "Average C/S  : %20s\n", $pass_fail_sec{ALL} ?
                sprintf("%20.2f",$pass_fail_cyc{ALL}/$pass_fail_sec{ALL}) : 'N/A';
  }
  print $rsfh "\n";
  print STDERR "\n" if (! $hide_summary);
  print $rsfh '=' x $w, "\n";
  print STDERR '=' x $w, "\n" if (! $hide_summary);
  my $ttime = time() - $start_time;
  my $hrs = int($ttime/3600); 
  my $mins = int(($ttime-($hrs*3600))/60);
  my $secs = $ttime-($hrs*3600)-($mins*60);
  printf $rsfh "Time Waited  : %6d hrs, %2d mins, %2d secs\n",$hrs,$mins,$secs;
  if (! $hide_summary) {
  printf STDERR "Time Waited  : %6d hrs, %2d mins, %2d secs\n",$hrs,$mins,$secs;
  }
  print $rsfh '=' x $w, "\n";
  print STDERR '=' x $w, "\n" if (! $hide_summary);
  print $rsfh "\n";
  print STDERR "\n" if (! $hide_summary);

  chdir ($curr_dir) || die " Something went wrong with changing directories\n";
  return ($group_count{'ALL'}, $group_count_stat{'ALL'}->{'pass'},
          $group_count_stat{'ALL'}->{'unfi'});

}
#====================================================================
sub get_status {
    my($l)= @_;
    my($status)= 'unkn';
    foreach my $st (keys %STATUS_NAME) {
	if($l=~ /$STATUS_NAME{$st}/) {
		$status= $st;
		last;
	}
    }
    $status;
}
#======================================================================

sub cleanup {
   my($int_type) = shift;
   print "\nSomebody sent me a $int_type signal\nQuitting...\n";
   exit 1;
}
#===================================================================
sub sim_grep
{
   my $zin_err=0; my $f=1;
   foreach(@{$_[0]})
   {
    next if (/Sims Build Cmd|Sims Build Args/);
    if (/Vera: Loading main \"cmp._top\"/) { $f=1; }
    elsif (/Vera: Loading main \"fc._top\"/) { $f=1000; }
    elsif (/(\d+):.*regreport clock period:\s*(\d+).*$/) {
         $sim_cyc= $1/($2/$f);
       $found_sim_cyc = 1;
     }
     elsif(/CPU Time:\s+(\d+\.\d+)/ && ($sim eq 'vcs') ) {
       $wall_sec= $1;
       $found_wall_sec = 1;
     }
    elsif (/^Time: \d+ (\w)s/ && ($sim eq 'vcs') ) {
        if ($1 eq 'f') { $sim_cyc/=1000;}
    }
	elsif (/ncsim: CPU Usage \- \d+\.\ds system \+ (\d+\.\d)s user \= \d+\.\ds total \(\d+\.\ds\, \d+\.\d\% cpu\)/ && ($sim eq 'ncv') ) {
	$wall_sec = $1;
	$found_wall_sec = 1;
     } 
     elsif (/0-In ERROR /) {
        $zin_err = 1;
        if ($sim eq 'vcs') {
        $errlines[$errline_num++] = "vcs.log: ". $_; }
        elsif ($sim eq 'ncv') {
        $errlines[$errline_num++] = "ncsim.log: ". $_; }
     } else {
        if ($sim eq 'vcs') {
        $errlines[$errline_num++] = "vcs.log: ". $_; }
        elsif ($sim eq 'ncv') {
        $errlines[$errline_num++] = "ncsim.log: ". $_; }
     }
   }
   print "finished sim_grep errlines = $errline_num\n" if($debug);
}

#===================================================================
sub sasgrep{
  while(<F>){
     if(/ERROR|SIGDIE|unknown command|pass/){
        $errlines[$errline_num++] = $_;}
  }
   print "finished sasgrep errlines = $errline_num\n" if($debug);
}

#===================================================================
sub tsotoolgrep{

  print "doing tsotool grep\n";
  my($tsotool_err) = 1;
  while(<F>){
     if   (/fatal/io){ 		$tsotool_err = 1; last;}
     elsif(/verifying graph invariants.*ok/i){  $tsotool_err = 0;}
  }
  print "finished tsotool grep\n" if($debug);

  return $tsotool_err;
}

#===================================================================
sub diagplgrep{
  print "doing diagpl grep\n" if($debug);
  my($diagpl_err) = 0;
  @perf_errors = ();
  my $print1 = 0;

  while(<F>){

     if($print1){
       $print1 = 0;
       push @perf_errors, ($_);
     }

     if(/fail/i){
       $diagpl_err = 1;
       $print1 = 1;
       push @perf_errors, ($_);
     }
     elsif(/error/i){
        $diagpl_err = 1;
     }
  }
  return $diagpl_err;
}

#===================================================================
sub midasgrep{
  print "doing midas grep\n" if($debug);
  while(<F>){
     if(/\berror\b/io){$errlines[$errline_num++] = $_;}
  }
}
#===================================================================
sub dreamloggrep{
  while(<F>){
     if(/ncv_run|vcs_run|no-warn-mismatch/io){			next;}
     elsif(/no diag/io){				$errlines[$errline_num++] = $_;}
     elsif(/ERROR|SIGDIE/o){				$errlines[$errline_num++] = $_;}
     elsif(/getting shaky|pass|reaching max cycles/io){
							$errlines[$errline_num++] = $_;}

     elsif(/missing terminating|no diag found/io){	$errlines[$errline_num++] = $_;}
     elsif(/Caught a SIG/io){				$errlines[$errline_num++] = $_;}
     elsif($sas_only && /v:0x$good_trap_va/i){
       $errlines[$errline_num++] = $_;
       last;
     }
     elsif($sas_only && /v:0x$hgood_trap_va/i){
       $errlines[$errline_num++] = $_;
       last;
     }
     elsif($sas_only && /v:0x$bad_trap_va/i){
       $errlines[$errline_num++] = $_;
       last;
     }
     elsif($sas_only && /v:0x$hbad_trap_va/i){
       $errlines[$errline_num++] = $_;
       last;
     }
     elsif(/SAS hits MAX CYCLE -> FAIL/){		$errlines[$errline_num++] = $_;}
  }
   print "finished dreamlog errlines = $errline_num\n" if($debug);
}

#=======================================================================
sub create_rel_hist {
    my $regress_dir = shift(@_);

    # Look for diff_rel*.log files
    opendir(REGDIR, $regress_dir);
    my @diffiles = grep(/diff_rel.*\.log/, readdir(REGDIR));
    closedir (REGDIR);
    foreach (@diffiles) {
        next if (-z "$regress_dir/$_");
        chomp(my $fullrelname = `head -1 $regress_dir/$_`);
        my ($suffix) = m/diff_rel(.*)\.log/o;
        # Pick up local release ..
        $fullrelname =~ s/S.*\|\s+(:\/rel\/\S+\s+v=\S+).*/$1/;
        $fullrelname =~ s/\[/@/o; $fullrelname =~ s/local\(|\)|\]//go;
        if (! grep(/$fullrelname/, @relnames)) {push (@relnames, $fullrelname);}
        my ($relname, $ver) = $fullrelname =~ m/@(\w+)\s+v=(\w+:\d+\.\d+)/o;
        if (! -e "$regress_dir/hist_rel$suffix.log") {
            system("hist_obj -limit 5 :/rel/\@$relname > $regress_dir/hist_rel$suffix.log");
        }
    }
}
#=======================================================================
sub cutitup{

  my @initial_list = ();
  if(! -e 'regreport.log'){
    print "Could not cut up regreport.log\n";
    exit 0;
  }
  else{
    print STDERR "cutitup (cut it up) function activated... \n";
    open(F, " regreport.log");
    my $details_on = 0;
    while(<F>){
      if(/Details for ALL not in other groups/){
        next;
      }elsif(/Details for\s(\w+)/){
        print STDERR "creating regreport.$1.log\n";
        if(!$details_on){ $details_on = 1; }
        else{ close(CGF); }
        open(CGF, "> regreport.$1.log") or die " Cannot open regreport.$1.log\n";
        print CGF join ('',@initial_list);
        print CGF $_;
      } elsif(!$details_on){
        push @initial_list, $_;
      }
      elsif($details_on){
        print CGF $_;
      }
    }
    if($details_on){ close(CGF); }
    close(F);
  }
}
#=======================================================================
sub check_logfile 
{
  $outofmemory = 0;
  
   foreach(@{$_[0]})
   {
      if((/License installation error.\s+\$HOME_0IN does not contain a valid license installation./) ||
         (/vera_io_printf malloc failed/) ||
         (/Out of memory/) ||
         (/Fatal: Out of memory/) ||
         (/Fatal!\s+not enough memory\s+\[F0\]/)) { # one way that Axis fails
	$outofmemory = 1;
	$outofmemory_sig = $_;
    last;
      }
    }
    close(L);
  print "finished check_logfile outofmemory = $outofmemory\n" if($debug);

}

#=======================================================================
#=======================================================================

sub rerun_diag {
  my($diag)= @_;
  my($rerun_status) = 0;
  if(-d 'first_run') {
    print STDERR "Not rerunning diag $diag because it has already been rerun once.\n";
  } else {
    # check that the diag didn't exceed the amt of memory it requested
    my($drmhost,$drmjobnum) = split(" ",$dreamjobid);
    my $drmcmd = "drmstat -h $drmhost -c -vvv $drmjobnum";
    open(DRMUSR, "$drmcmd |") || die "Cannot open output of: $drmcmd\n";
    my $freeram  = 0;
    my $virtsize = 1;

    while (<DRMUSR>) {
      if (/freeram\s+(\d+)/) {
	$freeram = $1; # in megabytes
      } elsif (/Virtual Size:\s+(\d+)K/) {
	$virtsize = $1 >> 10;# in kilobytes, convert to megabytes
      }
    }
    close(DRMUSR);

    if( $freeram < $virtsize ) {
      printf STDERR "Not rerunning diag $diag because it used more ram (%d meg) than it requested (%d meg)\n", $freeram, $virtsize;
    } else {

      print STDERR "\nRerunning diag $diag because it ran out of memory.\n";

      # make first_run directory and copy log files into it.
      my $status = &my_system('/bin/mkdir first_run && /bin/cp *.log first_run/ && /bin/rm -f status.log');
      if ($status) {
	print STDERR "ERROR: Problem creating first_run directory or copying/removing log files : status=$status\n";
      }

      # disable the Dream back which has run out of memory, but if it has not been disabled
      $drmcmd = "drmback -q $dreamback";
      open(DRMUSR, "$drmcmd |") || die "Cannot open output of: $drmcmd\n";
      my $drmback_is_disabled  = 0;
      my $lineno = 0;
      while (<DRMUSR>) {
	$lineno++;
	if (($lineno==1) || ($lineno==2)) {
	  next;
	} elsif (/$dreamback/) {
	  $drmback_is_disabled = 1;
	}
      }
      close(DRMUSR);
      if ($drmback_is_disabled == 0 ) {
	$drmcmd = "drmdisable -b $dreamback -c 'drmjobid $dreamjobid died due to lack of memory'";
	$status = &my_system("$drmcmd");
	if ($status) {
	  print STDERR "ERROR: Problem disabling dream back : status=$status\n";
	}
      }

      # re-submit the failed diag
      $status = &my_system('sims -rerun -overwrite -indrm');
      if ($status) {
	print STDERR "ERROR: Problem rerunning job : status=$status\n";
      }

      # send the email
      my $mailto = $ENV{USER};
      $mailto .= " email_address";

      my $subject = "Dream job $dreamjobid died on $dreamback due to lack of memory";

      my $mailfile = "regreport.mail";
      open( RMAIL, ">$mailfile");
      printf RMAIL "$ENV{USER},\n";
      printf RMAIL "Your dream job $dreamjobid running on $dreamback died due to lack of memory,\n";
      printf RMAIL "with signature: $outofmemory_sig\n";
      printf RMAIL "It was using $virtsize meg, less than the requested $freeram meg of memory.\n";
      printf RMAIL "It was running in directory: $ENV{PWD}\n";
      printf RMAIL "When your regression/regreport completes, the dream back will *not*\n";
      printf RMAIL "be automaticly re-enabled. Please re-enable it yourself with\n";
      printf RMAIL "the command: drmback -n $dreamback\n\n";

      printf RMAIL "running: /bin/rsh $dreamback '/bin/tail /var/adm/messages; /usr/dist/exe/top -b -o size'\n";
      open( RSH, "/bin/rsh $dreamback '/bin/tail /var/adm/messages; /usr/dist/exe/top -b -o size' |");
      while (<RSH>) {
	print RMAIL "$_";
      }
      close(RSH);
      close(RMAIL);
      $status = &my_system ("/bin/mailx -s \"$subject\" $mailto < $mailfile ");
      if ($status) {
	print STDERR "ERROR: Problem sending email : status=$status\n";
      }
      my_system("rm $mailfile");

      $rerun_status = 1;
    }
  }
  return $rerun_status;            # Return the status
}

###############################################################################
#
# my_system() - This is a substition function for the built-in Perl
#               system() function call.  It's needed because Perl's system()
#               function masks out SIGINT and SIGQUIT.  What that means is
#               there is no way to stop the Perl script once it gets
#               started because the SIGINT/SIGQUIT are ignored.
#
###############################################################################
sub my_system {
  print STDERR "my_system: cmd = @_\n" if ($debug);
  my $pid;
    if ($pid = fork) {
        waitpid ($pid, 0);
    } else {
        unless (exec @_) {
            print STDERR "ERROR: Unable to execute command $_[0].\n";
            exit 1;
        }
    }

    return ($? >> 8);                           # Return the status
}

#=======================================================================

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Regreport

=head1 SYNOPSIS

use Regreport;

Regreport - looks for *.log files in a directory and reports status.
Performs the above in all the directories of a regression
directory.

=head1 ABSTRACT

This is a general module for Niagara regression status reporting.

=head1 DESCRIPTION

Not updated yet.

regreport processes the command line
arguments and looks for the following:
  <options> [<directory> [<list>]]

<options>:
  -1:       print report for the specified or
	    current-directory diag;
  -regress <file>: in regression mode,
  	    writes summary status for finished
            diags to <directory>/<file> until all diags
	    are finished. NOTE: if some diag does not produce
	    status, regreport will wait forever.

  -ver    print version number and exit.

  -sas_only - vcs/ncverilog will not run, only sas will run.

  -[no]cut_name  - cuts the last number from sss:sss:ssss:ddd formatted name.

  -regenerate - will regenerate the status.log files in the diag directories.

  <directory> [<list>]:
       print report for all diags under <directory>. <list> is
       0 or more of simulation 'group' names, such as 'sparc0', 'cmp', 'cmp1',
       'cmp8', etc. When nothing specified, all groups are included.
-------------------
chk_single_diag is an exported function which takes a directory name as
an argument and expect a vcs/ncverilog simulation run there. It analyzes the results
and reports.
-------------------

=head2 EXPORT

chk_single_diag and others

=head1 SEE ALSO

=head1 AUTHOR


=head1 COPYRIGHT AND LICENSE



=cut
