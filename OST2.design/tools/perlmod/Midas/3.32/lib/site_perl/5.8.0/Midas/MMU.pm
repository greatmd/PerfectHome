# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: MMU.pm
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

package Midas::MMU;
use strict;

use Midas::Command;
use Midas::Configure;
use Midas::Error;
use Midas::Globals;
use Midas::Segment;

use Midas::AttrBlock;
use Midas::MMU::TTEFormat;

# Needs to be a require so it happens AFTER 'use fields'.
# This is because of a circularity in the inclusions
require Midas::MMU::Ultra2;
require Midas::MMU::Niagara;
require Midas::MMU::Niagara2;


require Midas::TSB;

require Exporter;

our @ISA = qw(Exporter);
our @EXPORT = qw(create_mmu);

use fields qw(type vasize pasize mapattr_type tsb_type tsblink_type);


##############################################################################

sub create_mmu {
  my $type = shift;
  my %args = @_;

  $type = lc $type;
  my $mmu;
  if($type eq 'niagara') {
    $mmu = Midas::MMU::Niagara->new(%args);
  } elsif($type eq 'niagara2') {
    $mmu = Midas::MMU::Niagara2->new(%args);
  } elsif($type eq 'ultra2' or $type eq 'ultrasparc2') {
    $mmu = Midas::MMU::Ultra2->new(%args);
  } else {
    fatal "No such mmu type \"$type\"\n", M_BADCONFIG;
  }


  $VASIZE = $mmu->{vasize};
  $RASIZE = exists $mmu->{rasize} ? $mmu->{rasize} : $mmu->{pasize};
  $PASIZE = $mmu->{pasize};

  $mmu->init_mmu();


  return $mmu;
}

##############################################################################

sub new {
  my $this = shift;
  my %args = @_;

  unless (ref $this) {
    $this = fields::new($this);
  }


  foreach my $key (keys %args) {
    $this->{$key} = $args{$key};
  }

  $this->{mapattr_type} = 'Midas::MMU::SunSectionAttrs';
  $this->{tsb_type} = 'Midas::TSB';
  $this->{tsblink_type} = 'Midas::TSBLink';

  return $this;
}

##############################################################################

sub init_mmu {
  my $this = shift;

  %MapAttr_Settable = map { $_ => 1 } $this->{mapattr_type}->settable();
  my $fieldhash = get_union_tte_field_hash( $this->{type} );
  foreach my $key (keys %$fieldhash) {
    $MapAttr_Settable{$key} = 1;
  }

  my $fhash_ref = $this->{mapattr_type}->get_field_size_hash();
  foreach my $key (keys %$fieldhash) {
    $fhash_ref->{$key} = $fieldhash->{$key};
  }
  foreach my $field (keys %$fhash_ref) {
    my $width = $fhash_ref->{$field};
    my $range_bf = BitFieldTie->new(64, 1);
    $range_bf->left_shift($width);
    $MapAttr_FieldMax{$field} = $range_bf;
    $MapAttr_FieldWidth{$field} = $width;
  }
}

##############################################################################

sub set_defaults {
  my $this = shift;

  $this->{vasize}   = 64 unless defined $this->{vasize};
  $this->{pasize}   = 64 unless defined $this->{pasize};
  $this->{type}     = 'generic' unless defined $this->{type};

}

##############################################################################

sub create_attrs_object {
  my $this = shift;
  my $type = shift;

  return Midas::AttrBlock::LinkAttrs->new()
    if((lc $type) eq 'link');

  return $this->{mapattr_type}->new(segment => Midas::Segment->new($type),
				    mmutype => $this->{type},
				   )
    if Midas::Segment->is_segment_name($type);

  fatal "Can't create_attrs_object of type $type with abstract superclass ".
    "Midas::MMU\n", M_CODE;
}

##############################################################################

sub create_tsb_object {
  my $this = shift;
  my @args = @_;

  return $this->{tsb_type}->new(@args);
}

##############################################################################

sub create_tsb_object_from_line {
  my $this = shift;
  my $startline = shift;
  my $fh        = shift;
  my $srcfile   = shift;
  my $srcline   = shift;

  $this->{tsb_type}->new_from_line($startline, $fh, $srcfile, $srcline, $this);
}

##############################################################################

sub create_tsb_link_object {
  my $this = shift;
  my @args = @_;

  return $this->{tsblink_type}->new(@args);
}

##############################################################################

sub create_tsb_link_object_from_line {
  my $this = shift;
  my $startline = shift;
  my $fh        = shift;
  my $srcfile   = shift;
  my $srcline   = shift;

  $this->{tsblink_type}->new_from_line($startline, $fh, $srcfile, $srcline,
				       $this);
}

##############################################################################

sub mmu_cpp_args {
  my $this = shift;
  return;
}

##############################################################################

sub parse_section_attrs {
  my $this        = shift;
  my $startline   = shift;
  my $fh          = shift;
  my $srcline     = shift;
  my $srcfile     = shift;

  local ($_);
  $_ = $startline;

  my $attrs;

  my $segstring = join '|', map { "($_)" } Midas::Segment->all_names();


  if(/^\s*attr_($segstring|(link))\s*\{/) {
    my $attr_type = $1;

    $attrs = $this->create_attrs_object($attr_type);
    $attrs->set_defaults();

    $attrs->{type} = $1;
    $attrs->{srcfile} = $srcfile;
    $attrs->{srcline} = $srcline;

    while(<$fh>) {
      $srcline++;
      last if /^\s*\}\s*$/;
      my @attrs = split /,/, $_;
      foreach my $attr (@attrs) {
	$attr =~ s/\s+//g;

	if($attr =~ /(\S+)=(\S+)/) {
	  if($attrs->is_settable($1)) {
	    $attrs->set_attr($1, $2);
	  } else {
	    $attrs->attr_fatal("No such attribute '$1'", M_ILLEGALPARAM);
	  }
	} elsif($attr =~ /(\S+)/) {
	  if($attrs->is_settable($1)) {
	    $attrs->set_attr($1, 1);
	  } else {
	    $attrs->attr_fatal("No such attribute '$1'", M_ILLEGALPARAM);
	  }
	}
      }
    }
  } else {
    fatal "Error parsing section attributes: file=$srcfile line=$srcline:\n$_",
      M_ATTRSYNTAX;
  }

  $attrs->set_end_file_line($srcfile, $srcline);

  return $attrs;
}

##############################################################################
1;
