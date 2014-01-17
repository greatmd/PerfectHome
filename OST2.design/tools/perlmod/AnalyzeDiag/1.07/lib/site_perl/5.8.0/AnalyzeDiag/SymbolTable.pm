# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: SymbolTable.pm
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
package AnalyzeDiag::SymbolTable;

use strict;
use warnings;
use File::Spec;
use IO::File;
use Tie::IxHash;

use AnalyzeDiag::Output;

use fields qw(filename);

###############################################################################

sub create_from_dir {
  my $class = shift;
  my $dir = shift;

  my $symtab = File::Spec->catfile($dir, 'symbol.tbl');
  my $obj;
  if(-e $symtab) {
    $obj = AnalyzeDiag::SymbolTable->new();
    $obj->filename($symtab);
  } else {
    script_die "Cannot find '$symtab'.\n";
  }
  return $obj;
}

###############################################################################

sub new {
  my $this = shift;

  unless (ref $this) {
    $this = fields::new($this);
  }

  return $this;
}

###############################################################################

sub filename {
  my $this = shift;
  my $filename = shift;
  $this->{filename} = $filename if defined $filename;
  return $this->{filename};
}

###############################################################################

sub get_vas_for_labels {
  my $this = shift;
  my $labellist = shift;

  my $fh = IO::File->new($this->filename()) or
    script_die "Can't open '". $this->filename() ."': $!\n";

  tie my %labels, 'Tie::IxHash';
  foreach my $label (@$labellist) {
    $labels{$label} = [];
  }

  while(<$fh>) {
    my ($full_label, $va, $ra, $pa) = split ' ';
    next unless defined $pa;
    foreach my $label (@$labellist) {
      if($label eq $full_label or $full_label =~ /\.$label$/) {
	push @{$labels{$label}}, $va;
      }
    }
  }
  return \%labels;
}

###############################################################################
1;
