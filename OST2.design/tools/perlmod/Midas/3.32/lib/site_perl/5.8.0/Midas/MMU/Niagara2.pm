# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: Niagara2.pm
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

package Midas::MMU::Niagara2;
use strict;

use Midas::Command;
use Midas::Error;
use Midas::Configure;
use Midas::Globals;
use Midas::Segment;

use TRELoad 'BitFieldTie';

use base qw(Midas::MMU);
use fields qw(
	      rasize
	     );

##############################################################################

sub new {
  my $class = shift;
  my %args  = @_;
  my $this = fields::new($class);
  $this->SUPER::new();

  foreach my $key (keys %args) {
    $this->{$key} = $args{$key};
  }

  $this->set_defaults();

  $this->{mapattr_type} = 'Midas::MMU::Niagara2::SectionAttrs';
  $this->{tsb_type} = 'Midas::MMU::Niagara2::TSB';

  return $this;
}

##############################################################################

sub set_defaults {
  my $this = shift;

  $this->{vasize} = 64 unless defined $this->{vasize};
  $this->{pasize} = 40 unless defined $this->{pasize};
  $this->{rasize} = 40 unless defined $this->{rasize};
  $this->{type}   = 'niagara2' unless defined $this->{type};


  $this->SUPER::set_defaults();
}

##############################################################################

sub mmu_cpp_args {
  my $this = shift;
  my $list = ['-DNIAGARA2'];
  push @$list, '-DALLOW_TSB_COL' if $CONFIG{allow_tsb_conflicts};
  return $list;
}

##############################################################################

##############################################################################
##############################################################################

{
  package Midas::MMU::Niagara2::SectionAttrs;
  use strict;

  use Carp;
  use Midas::Command;
  use Midas::Globals;
  use Midas::Error;
  use Midas::MMU::SunSectionAttrs;
  use Midas::MMU::TTEFormat;
  use BitFieldTie;


  use base qw(Midas::MMU::SunHyperAttrs);
  use fields (qw(),
	      (
	       # Hard-code MMU type because 'use fields' directive needs
	       # to happen at compile-time
	       keys %{ get_union_tte_field_hash('niagara2') }
	      )
	     );

  our @Settable = qw();

  our %Settable = map { $_ => 1} Midas::MMU::Niagara2::SectionAttrs->settable();
  our %FieldSizes =( );

  ############################################################################

  sub new {
    my $this = shift;
    my %args = @_;

    unless (ref $this) {
      $this = fields::new($this);
    }

    $this->{settable} = \%Settable;
    foreach my $key (keys %args) {
      $this->{$key} = $args{$key};
    }

    return $this;
  }

  ############################################################################

  sub set_defaults {
    my $this = shift;

    $this->SUPER::set_defaults();

    foreach my $field (keys %FieldSizes) {
      $this->{$field} = 0 unless defined $this->{$field};
    }
  }

  #############################################################################

  sub settable {
    my $this = shift;
    my @settable = $this->SUPER::settable();
    push @settable, @Settable;
    return @settable;
  }

  #############################################################################

  sub get_field_size_hash {
    my $this = shift;
    my $sizes = $this->SUPER::get_field_size_hash();

    foreach my $field (keys %FieldSizes) {
      $sizes->{$field} = $FieldSizes{$field};
    }

    return $sizes;
  }

  ############################################################################

  sub legal_page_bits {
    my $this = shift;
    return (0, 1, 3, 5);
  }

   ###########################################################################

}

##############################################################################
##############################################################################

{
  package Midas::MMU::Niagara2::TSB;

  use Midas::Globals;
  use Midas::Command;
  use Midas::Error;
  use BitFieldTie;

  use base 'Midas::TSB';
  use fields qw();



  ############################################################################

  sub new {
    my $this = shift;
    my %args = @_;

    unless (ref $this) {
      $this = fields::new($this);
    }

    $this->{touched} = 0;
    $this->{force_ctx_zero} = undef;
    $this->{page_size} = undef;

    foreach my $key (keys %args) {
      $this->{$key} = $args{$key};
    }

    return $this;
  }

  ############################################################################

  sub config_from_register {
    my $this = shift;
    my $mmu  = shift;

    my $config = BitFieldTie->new(64, $this->{config_register});
    my $base = BitFieldTie->new($PASIZE, 0);

    tie my %config, 'BitFieldTie', $config;
    tie my %base, 'BitFieldTie', $base;

    $base{'39:13'} = $config{'39:13'};

    $this->{base} = $base;
    $this->{page_size}      = $config{'6:4'};
    $this->{ttefmt}         = $config{7} ? 'sun4v' : 'sun4u';
    $this->{sizebits}       = $config{'3:0'};
    $this->{is_split} = 0;
    $this->{numentries} = 512 * (1 << $this->{sizebits});

    my $base_lo = 13 + $this->{sizebits};
    if($base_lo > 13) {
      my $overlap = $base->extract($base_lo, 13);

      if($overlap) {
	if($CONFIG{allow_misaligned_tsb_base}) {
	  $base->store($base_lo, 13, 0);
	} else {
	fatal "TSB '$this->{name}' has base $base, which\n".
	  "   is misaligned for size=$this->{sizebits}\n" .
	  "   Illegal unless -allow_misalgined_tsb_base is defined.\n" .
	  "   line=$this->{srcline}, file=$this->{srcfile}\n",
	    M_TSBSYNTAX;
	}
      }

    }
  }

  ############################################################################

}

##############################################################################
##############################################################################

1;
