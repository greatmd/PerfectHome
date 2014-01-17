# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: Analyzer.pm
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
package AnalyzeDiag::Analyzer;

use strict;
use warnings;

use AnalyzeDiag::Output;
use AnalyzeDiag::Logfile;
use AnalyzeDiag::SymbolTable;
use AnalyzeDiag::Measurement;


use fields qw(
	      dir
	      logfile symtab
	      measurements
	      parsed_measurements
	     );

our $Hex_Regex = qr/[\da-f]+/;

###############################################################################

sub new {
  my $this = shift;
  my %args = @_;

  unless (ref $this) {
    $this = fields::new($this);
  }

  $this->{measurements} = [];

  foreach my $key (keys %args) {
    $this->{$key} = $args{$key};
  }

  $this->open_files() if defined $this->{dir};

  return $this;
}

###############################################################################

sub open_files {
  my $this = shift;
  script_die "No directory defined!\n" unless defined $this->{dir};

  $this->{logfile} = AnalyzeDiag::Logfile->create_from_dir($this->{dir});
  $this->{symtab}  = AnalyzeDiag::SymbolTable->create_from_dir($this->{dir});
}

###############################################################################

sub logfile {
  my $this = shift;
  return $this->{logfile};
}

###############################################################################

sub add_measurements {
  my $this = shift;
  my @measurements = @_;

  push @{$this->{measurements}}, @measurements;
}

###############################################################################

sub parse_measurements {
  my $this = shift;

  my %labels;
  foreach my $m (@{$this->{measurements}}) {
    if($m->start() !~ /^ $Hex_Regex $/ox) {
      $labels{$m->start()} = 0;
    }
    if($m->end() !~ /^ $Hex_Regex $/ox) {
      $labels{$m->end()} = 0;
    }
  }

  my $label_hash = $this->{symtab}->get_vas_for_labels( [ keys %labels] );

  foreach my $label (keys %$label_hash) {
    my @vas = @{ $label_hash->{$label} };
    chat "Label $label: @vas\n";
  }

  $this->{parsed_measurements} = {};

  foreach my $m (@{$this->{measurements}}) {
    my $parsed = {};
    $this->{parsed_measurements}{$m->{name}} = $parsed;

    my $start = $m->start();
    my $end   = $m->end();
    my $name  = $m->name();

    if($start =~ /^ $Hex_Regex $/ox) {
      $parsed->{start} = [ $start ];
    } elsif(exists $label_hash->{$start}) {
      $parsed->{start} = $label_hash->{$start};
    } else {
      script_die "Cannot find VA for label '$start' in '$name'\n";
    }

    if($end =~ /^ $Hex_Regex $/ox) {
      $parsed->{end} = [ $end ];
    } elsif(exists $label_hash->{$end}) {
      $parsed->{end} = $label_hash->{$end};
    } else {
      script_die "Cannot find VA for label '$end' in '$name'\n";
    }

    $parsed->{name}  =  $name;
    foreach (@{$parsed->{start}}) {
      s/^0+//;
    }
    foreach (@{$parsed->{end}}) {
      s/^0+//;
    }

  }

#  foreach my $pm (keys %{$this->{parsed_measurements}}) {
#    my $obj = $this->{parsed_measurements}{$pm};
#    my @start = @{ $obj->{start} };
#    my @end   = @{ $obj->{end} };
#    debug "Name=$obj->{name}, start=@start, end=@end\n";
#  }


}

###############################################################################

sub analyze {
  my $this = shift;

  $this->parse_measurements();

  my %results;

  my %pclist; # hash instead of array to remove duplicates
  foreach my $pm (keys %{$this->{parsed_measurements}}) {
    my $obj = $this->{parsed_measurements}{$pm};
    my @list = ( @{ $obj->{start} }, @{ $obj->{end} } );
    foreach my $elem (@list) {
      $pclist{$elem} = 1;
    }
  }
  my @pclist = keys %pclist;
  debug "pclist is @pclist\n";

  my $log = $this->{logfile};
  my $pchash = $log->get_times_for_pcs(\@pclist);

  foreach my $pm (keys %{$this->{parsed_measurements}}) {
    my $obj = $this->{parsed_measurements}{$pm};
    my @start_times;
    foreach my $pc (@{$obj->{start}}) {
      my $times = $pchash->{$pc};
      push @start_times, @$times;
    }
    my @end_times;
    foreach my $pc (@{$obj->{end}}) {
      my $times = $pchash->{$pc};
      push @end_times, @$times;
    }

    my @diff     = $log->subtract_times(\@end_times, \@start_times);
    my @diff_cyc = $log->to_cycles(\@diff);

    debug "NAME=$obj->{name}, start_times=@start_times, end_times=@end_times,".
      " diff=@diff, diff_cyc=@diff_cyc\n";

    $results{$pm} = [ @diff_cyc ];

  }

  return %results;
}

###############################################################################
1;
