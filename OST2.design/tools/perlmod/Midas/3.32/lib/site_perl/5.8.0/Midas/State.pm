# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: State.pm
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
# -*- perl -*-

package Midas::State;
use strict;

use File::Spec;
use Cwd;

use Midas::MMU;
use Midas::Configure;
use Midas::Command;
use Midas::Paths;
use Midas::Globals;
use Midas::Error;

require Exporter;
our @ISA       = qw(Exporter);
our @EXPORT    = qw(init_state);
our @EXPORT_OK = qw();

use fields qw(
	      start_dir
	      build_dir
	      dest_dir

	      diag_root

	      created_build_dir
	      skipping_build

	      mmu
	      tsbs
	      tsblinks

	      apps
	     );

##############################################################################

sub init_state {
  my $diag_root = shift;
  my $start_dir = shift;
  my $dest_dir  = shift;

  $diag_root = $ENV{DV_ROOT} unless defined $diag_root;
  $start_dir = getcwd unless defined $start_dir;
  $dest_dir  = getcwd unless defined $start_dir;

  $diag_root = File::Spec->rel2abs($diag_root, getcwd);
  $start_dir = File::Spec->rel2abs($start_dir, getcwd);
  $dest_dir  = File::Spec->rel2abs($dest_dir,  getcwd);

  my $state = Midas::State->new(start_dir => $start_dir,
				dest_dir  => $dest_dir,
				diag_root => $diag_root,
			       );


  $state->set_build_dir($state->get_build_dir());

  $ENV{DIAG_ROOT} = $diag_root;
  $ENV{START_DIR} = $start_dir;
  $ENV{DEST_DIR}  = $dest_dir;

  return $state;
}

##############################################################################

sub new {
  my $this = shift;
  my %args = @_;

  unless (ref $this) {
    $this = fields::new($this);
  }

  $this->set_defaults();

  foreach my $key (keys %args) {
    $this->{$key} = $args{$key};
  }
  return $this;
}

##############################################################################

sub set_defaults {
  my $this = shift;

  $this->{start_dir}         = '.';
  $this->{build_dir}         = undef;
  $this->{dest_dir}          = '.';
  $this->{diag_root}         = $ENV{DV_ROOT};
  $this->{created_build_dir} = 0;
  $this->{skipping_build}    = 0;
  $this->{mmu}               = undef;
  $this->{apps}              = {};
  $this->{tsbs}           = {};
  $this->{tsblinks}       = {};
}

##############################################################################

sub get_build_dir {
  my $this = shift;
  my @args = @_;

  my $build = $this->{build_dir};
  if(not defined $build) {
    $build = $CONFIG{build_dir};
  }
  my $build_abs = File::Spec->rel2abs($build, $this->{start_dir});

  if(grep /^\-abs$/, @args) {
    return $build_abs;
  }

  return compact_path($build_abs);
}

##############################################################################

sub set_build_dir {
  my $this = shift;
  my $build_dir = shift;

  my $build =  File::Spec->rel2abs($build_dir, $this->{start_dir});
  $this->{build_dir} = $build;
  return $this->{build_dir};
}

##############################################################################

sub get_start_dir {
  my $this = shift;
  my @args = @_;

  my $start_dir = $this->{start_dir};

  if(grep /^\-abs$/, @args) {
    return $start_dir;
  }

  return compact_path $start_dir;
}

##############################################################################

sub get_dest_dir {
  my $this = shift;
  my @args = @_;

  my $dest_dir = $this->{dest_dir};

  if(grep /^\-abs$/, @args) {
    return $dest_dir;
  }

  return compact_path $dest_dir;
}

##############################################################################

sub set_dest_dir {
  my $this = shift;
  my $dest_dir = shift;

  $this->{dest_dir} = File::Spec->rel2abs($dest_dir);
}

##############################################################################

sub get_created_build_dir {
  my $this = shift;

  return $this->{created_build_dir};
}

##############################################################################

sub set_created_build_dir {
  my $this = shift;
  my $val  = shift;

  $val = 1 unless defined $val;
  $this->{created_build_dir} = $val;
  return $this->{created_build_dir};
}

##############################################################################

sub get_diag_root {
  my $this = shift;

  return $this->{diag_root};
}

##############################################################################

sub get_mmu {
  my $this = shift;
  my $type = shift;

  fatal "Tried to get mmu of specified type $type when an mmu already ".
    "exists!\n", M_CODE if defined $type && defined $this->{mmu};

  return $this->{mmu} if defined $this->{mmu};

  my $mmu = create_mmu( defined $type ? $type : $CONFIG{mmu_type} );
  $this->{mmu} = $mmu;
  return $this->{mmu};
}

##############################################################################

sub clear {
  my $this = shift;
  $this->set_defaults();
}

##############################################################################

sub skipping_build {
  my $this = shift;
  my $bool = shift;
  $this->{skipping_build} = $bool if defined $bool;
  return $this->{skipping_build};
}

##############################################################################

sub get_tsb {
  my $this = shift;
  my $name = shift;

  return $this->{tsbs}{$name} if exists $this->{tsbs}{$name};
  return;
}

##############################################################################

sub get_tsblink {
  my $this = shift;
  my $name = shift;

  return $this->{tsblinks}{$name} if exists $this->{tsblinks}{$name};
  return;
}

##############################################################################
1;
