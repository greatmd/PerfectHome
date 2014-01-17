#!/usr/bin/perl
#######################################################################
# Run Synthesis script
#
# rsyn -help for help
#######################################################################


use warnings;
use strict;
use Cwd;
use Cwd 'chdir';
use Getopt::Long ;

$| = 1;

$SIG{__DIE__} = \&sighandler ;

#######################################################################
# Global variables
#######################################################################

my $prg = $0;
$prg =~ s/.*\/// ;
$prg =~ s/,.*// ;

my $all = 0;
my $syn_q = "jsub -- /bin/sh";
my $blk_list = "";
my $run_scr = "";
my $blk_dir;

my @blocks = ();
my @block_list = ();

$blk_list = $ENV{DV_ROOT};
$blk_list .= "/design/sys/synopsys/block.list";
$run_scr = $ENV{DV_ROOT};
$run_scr .= "/design/sys/synopsys/script/run.scr";


my $count = 0;

open (BLK_IN, "< $blk_list") or die ("DIE. could not open $blk_list");
while (<BLK_IN>) 
{
    my $line = $_ ;
    $line =~ s/\s+$//;
    $count++;
    push @block_list, $line ;
}
print "$prg: Running synthesis for all $count modules\n";
close(BLK_IN);

## For each block under spc.v (listed in block.list)
## Run icc-shell -f run.scr
foreach my $block (@block_list) {
    print "$prg: Running synthesis for $block\n";
    my $cmd = "jsub -- rsyn $block";
    print "$cmd\n";
    system($cmd);
}
