# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: TTEFormat.pm
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

package Midas::MMU::TTEFormat;
use strict;

use TRELoad 'BitFieldTie';
use Tie::IxHash;

require Exporter;

our @ISA    = qw(Exporter);
our @EXPORT = qw(
		 get_tte_field_hash
		 get_union_tte_field_hash
		 tte_hash_to_tsb_data
		 tte_hash_to_tsb_tag
		 parse_tsb_data
		 is_good_format_for_mmu

		 %TSB_TAG_FORMAT
		 %TSB_DATA_FORMAT
		);

our %TSB_TAG_FORMAT;
our %TSB_DATA_FORMAT;

# BEGIN block, because these need to be defined when other modules
# call get_union_tte_field hash inside a 'use fields' clause.
BEGIN {

  our %TSB_TAG_FORMAT =
    (
     ultra2 =>
     {
      tagtarget =>
      {
       G       => { hi=>63, lo=>63 },
       CONTEXT => { hi=>60, lo=>48 },
       VA      => { hi=>41, lo=> 0, src=>'63:22' },
      },
      tagaccess =>
      {
       VA      => { hi=>63, lo=>13, src=>'63:13' },
       CONTEXT => { hi=>12, lo=> 0 },
      },
     },

     niagara =>
     {
      tagtarget =>
      {
       CONTEXT => { hi=>60, lo=>48 },
       VA      => { hi=>41, lo=> 0, src=>'63:22' },
      },
      tagaccess =>
      {
       VA      => { hi=>63, lo=>13, src=>'63:13' },
       CONTEXT => { hi=>12, lo=> 0 },
      },
     },

     niagara2 =>
     {
      tagtarget =>
      {
       CONTEXT => { hi=>60, lo=>48 },
       VA      => { hi=>41, lo=> 0, src=>'63:22' },
      },
      tagaccess =>
      {
       VA      => { hi=>63, lo=>13, src=>'63:13' },
       CONTEXT => { hi=>12, lo=> 0 },
      },
     },
     X =>
     {
      tagtarget =>
      {
       CONTEXT => { hi=>60, lo=>48 },
       VA      => { hi=>41, lo=> 0, src=>'63:22' },
      },
      tagaccess =>
      {
       VA      => { hi=>63, lo=>13, src=>'63:13' },
       CONTEXT => { hi=>12, lo=> 0 },
      },
     },


    );

  tie my %tsb_data_ultra2_sun4u, 'Tie::IxHash';
  tie my %tsb_data_niagara_sun4u, 'Tie::IxHash';
  tie my %tsb_data_niagara_sun4v, 'Tie::IxHash';
  tie my %tsb_data_niagara2_sun4u, 'Tie::IxHash';
  tie my %tsb_data_niagara2_sun4v, 'Tie::IxHash';
  tie my %tsb_data_X_sun4v, 'Tie::IxHash';

  %tsb_data_ultra2_sun4u =
    (
     V    => { hi=>63, lo=>63, default => 1, descr => "Valid bit, default=1" },
     SIZE => { hi=>62, lo=>61, descr => "Encoded page size"},
     NFO  => { hi=>60, lo=>60, descr => "Non-Faulting Only" },
     IE   => { hi=>59, lo=>59, descr => "Invert Endianness" },
     SOFT2=> { hi=>58, lo=>50, descr => "Software usable"},
     DIAG => { hi=>49, lo=>41, descr => "Diagnostic"},
     PA   => { hi=>40, lo=>13, src=>'40:13', descr => "Physical Address"},
     SOFT => { hi=>12, lo=> 7, descr => "Software usable" },
     L    => { hi=> 6, lo=> 6, descr => "Lock"},
     CP   => { hi=> 5, lo=> 5,
	       descr => "Cacheable in phys. indexed cache"},
     CV   => { hi=> 4, lo=> 4,
	       descr => "Cacheable in virt. indexed cache"},
     E    => { hi=> 3, lo=> 3, descr => "Side-effect"},
     P    => { hi=> 2, lo=> 2, descr => "Priviliged"},
     W    => { hi=> 1, lo=> 1, descr => "Writeable"},
     G    => { hi=> 0, lo=> 0, descr => "Global" },
  );

  %tsb_data_niagara_sun4u =
    (
     V    => { hi=>63, lo=>63, default => 1, descr => "Valid bit, default=1"},
     SZL  => { hi=>62, lo=>61, name=>'SIZE', src=>'1:0',
	       descr => "Low bits of encoded page size" },
     NFO  => { hi=>60, lo=>60, descr => "Non-Faulting Only"},
     IE   => { hi=>59, lo=>59, descr => "Invert Endianness"},
     SOFT2=> { hi=>58, lo=>49, descr => "Software usable"},
     SZH  => { hi=>48, lo=>48, name=>'SIZE', src=>'2',
	       descr => "High bit of encoded page size" },
     DIAG => { hi=>47, lo=>40, descr => "Diagnostic"},
     PA   => { hi=>39, lo=>13, src=>'39:13', descr => "Physical Address"},
     SOFT => { hi=>12, lo=> 8, descr => "Software usable"},
     RSVD0=> { hi=> 7, lo=> 7, descr => "Reserved"},
     L    => { hi=> 6, lo=> 6, descr => "Lock" },
     CP   => { hi=> 5, lo=> 5,
	       descr => "Cacheable in phys. indexed cache"},
     CV   => { hi=> 4, lo=> 4,
	       descr => "Cacheable in virt. indexed cache"},
     E    => { hi=> 3, lo=> 3, descr => "Side-effect"},
     P    => { hi=> 2, lo=> 2, descr => "Priviliged" },
     W    => { hi=> 1, lo=> 1, descr => "Writeable" },
     RSVD1=> { hi=> 0, lo=> 0, aliases=>['G'], descr => "Reserved" },
    );

  %tsb_data_niagara_sun4v =
    (
     V    => { hi=>63, lo=>63, default => 1, descr => "Valid bit, default=1"},
     NFO  => { hi=>62, lo=>62, descr => "Non-Faulting Only" },
     L    => { hi=>61, lo=>61, descr => "Lock" },
     SOFT => { hi=>60, lo=>40, descr => "Software usable"},
     PA   => { hi=>39, lo=>13, src=>'39:13', descr => "Physical Address"},
     IE   => { hi=>12, lo=>12, descr => "Invert Endianness"},
     E    => { hi=>11, lo=>11, descr => "Side-effect"},
     CP   => { hi=>10, lo=>10,
	       descr => "Cacheable in phys. indexed cache"},
     CV   => { hi=> 9, lo=> 9,
	       descr => "Cacheable in virt. indexed cache"},
     P    => { hi=> 8, lo=> 8, descr => "Priviliged" },
     RSVD0=> { hi=> 7, lo=> 7, descr => "Reserved" },
     W    => { hi=> 6, lo=> 6, descr => "Writeable" },
     SW1  => { hi=> 5, lo=> 5, descr => "Software usable" },
     SW0  => { hi=> 4, lo=> 4, descr => "Software usable" },
     RSVD1=> { hi=> 3, lo=> 3, descr => "Reserved" },
     SIZE => { hi=> 2, lo=> 0, descr => "Encoded page size" },
    );

  %tsb_data_niagara2_sun4u =
    (
     V    => { hi=>63, lo=>63, default => 1, descr => "Valid bit, default=1"},
     SZL  => { hi=>62, lo=>61, name=>'SIZE', src=>'1:0', 
	       descr => "Low bits of encoded page size" },
     NFO  => { hi=>60, lo=>60, descr => "Non-Faulting Only"},
     IE   => { hi=>59, lo=>59, descr => "Invert Endianness"},
     SOFT2=> { hi=>58, lo=>49, descr => "Software usable"},
     SZH  => { hi=>48, lo=>48, name=>'SIZE', src=>'2',
	       descr => "High bit of encoded page size" },
     DIAG => { hi=>47, lo=>40, descr => "Diagnostic" },
     PA   => { hi=>39, lo=>13, src=>'39:13', descr => "Physical Address"},
     SOFT => { hi=>12, lo=> 8, descr => "Software usable"},
     EP   => { hi=> 7, lo=> 7, aliases=>['X'],
	       descr => "Executable (also TTE_X)"},
     L    => { hi=> 6, lo=> 6, descr => "Lock" },
     CP   => { hi=> 5, lo=> 5,
	       descr => "Cacheable in phys. indexed cache"},
     CV   => { hi=> 4, lo=> 4,
	       descr => "Cacheable in virt. indexed cache"},
     E    => { hi=> 3, lo=> 3, descr => "Side-effect"},
     P    => { hi=> 2, lo=> 2, descr => "Priviliged" },
     W    => { hi=> 1, lo=> 1, descr => "Writeable" },
     RSVD1=> { hi=> 0, lo=> 0, aliases=>['G'], descr => "Reserved" },
    );

  %tsb_data_niagara2_sun4v =
    (
     V    => { hi=>63, lo=>63, default => 1, descr => "Valid bit, default=1"},
     NFO  => { hi=>62, lo=>62, descr => "Non-Faulting Only" },
     L    => { hi=>61, lo=>61, descr => "Lock"},
     SOFT => { hi=>60, lo=>40, descr => "Software usable"},
     PA   => { hi=>39, lo=>13, src=>'39:13', descr => "Physical Address"},
     IE   => { hi=>12, lo=>12, descr => "Invert Endianness"},
     E    => { hi=>11, lo=>11, descr => "Side-effect"},
     CP   => { hi=>10, lo=>10,
	       descr => "Cacheable in phys. indexed cache"},
     CV   => { hi=> 9, lo=> 9,
	       descr => "Cacheable in virt. indexed cache"},
     P    => { hi=> 8, lo=> 8, descr => "Priviliged"},
     EP   => { hi=> 7, lo=> 7, aliases=>['X'],
	       descr => "Executable (also TTE_X)"},
     W    => { hi=> 6, lo=> 6, descr => "Writeable" },
     SW1  => { hi=> 5, lo=> 5, descr => "Software usable"},
     SW0  => { hi=> 4, lo=> 4, descr => "Software usable"},
     RSVD1=> { hi=> 3, lo=> 3, descr => "Reserved" },
     SIZE => { hi=> 2, lo=> 0, descr => "Encoded page size"},
    );

  %tsb_data_X_sun4v =
    (
     V    => { hi=>63, lo=>63, default => 1, descr => "Valid bit, default=1"},
     NFO  => { hi=>62, lo=>62, descr => "Non-Faulting Only" },
     SW1  => { hi=>61, lo=>47, descr => "Software usable"},
     PA   => { hi=>46, lo=>13, src=>'46:13', descr => "Physical Address"},
     IE   => { hi=>12, lo=>12, descr => "Invert Endianness" },
     E    => { hi=>11, lo=>11, descr => "Side-effect"},
     CP   => { hi=>10, lo=>10,
	       descr => "Cacheable in phys. indexed cache"},
     CV   => { hi=> 9, lo=> 9,
	       descr => "Cacheable in virt. indexed cache"},
     P    => { hi=> 8, lo=> 8, descr => "Priviliged" },
     X    => { hi=> 7, lo=> 7, aliases=>['EP'],
	       descr => "Executable (also TTE_EP)" },
     W    => { hi=> 6, lo=> 6, descr => "Writeable" },
     R    => { hi=> 5, lo=> 5, descr => "Readable" },
     SW0  => { hi=> 4, lo=> 4, descr => "Software usable"},
     RSVD0=> { hi=> 3, lo=> 3, descr => "Reserved"},
     SIZE => { hi=> 2, lo=> 0, descr => "Encoded page size" },
    );

  our %TSB_DATA_FORMAT =
    (

     ultra2 => {
		sun4u => \%tsb_data_ultra2_sun4u,
	       },
     niagara => {
		 sun4u => \%tsb_data_niagara_sun4u,
		 sun4v => \%tsb_data_niagara_sun4v,
		},

     niagara2 => {
		  sun4u => \%tsb_data_niagara2_sun4u,
		  sun4v => \%tsb_data_niagara2_sun4v,
		 },


     X => {
	      sun4v => \%tsb_data_X_sun4v,
	     },

  );
}

##############################################################################

sub get_tte_field_hash {
  my $mmu_type   = shift;
  my $ttefmt = shift;
  my $tsbtagfmt  = shift;

  my %fields;
  foreach my $field (keys %{$TSB_DATA_FORMAT{$mmu_type}{$ttefmt}}) {
    my $descr = $TSB_DATA_FORMAT{$mmu_type}{$ttefmt}{$field};
    my $size = $descr->{hi} - $descr->{lo} + 1;
    my $name = (exists $descr->{name}) ? $descr->{name} : $field;

    my @names = ($name);
    push @names, @{ $descr->{aliases} } if exists $descr->{aliases};

    foreach my $n (@names) {
      my $tte_n = lc('tte_' . $n);

      $fields{$tte_n} = 0 unless exists $fields{$tte_n};
      $fields{$tte_n} += $size;
    }
  }

  foreach my $field (keys %{$TSB_TAG_FORMAT{$mmu_type}{$tsbtagfmt}}) {
    my $descr = $TSB_TAG_FORMAT{$mmu_type}{$tsbtagfmt}{$field};
    my $size = $descr->{hi} - $descr->{lo} + 1;
    my $name = (exists $descr->{name}) ? $descr->{name} : $field;

    my @names = ($name);
    push @names, @{ $descr->{aliases} } if exists $descr->{aliases};

    foreach my $n (@names) {
      my $tte_n = lc('tte_' . $n);

      $fields{$tte_n} = 0 unless exists $fields{$tte_n};
      if($tte_n eq 'tte_g') {
	$fields{$tte_n} = $size;
      } else {
	$fields{$tte_n} += $size;
      }
    }
  }

  delete $fields{tte_va} if exists $fields{tte_va};
  delete $fields{tte_ra} if exists $fields{tte_ra};
  delete $fields{tte_pa} if exists $fields{tte_pa};


  return \%fields;
}

##############################################################################

sub get_union_tte_field_hash {
  my $mmu_type = shift;

  my %fields;
  foreach my $ttefmt (keys %{ $TSB_DATA_FORMAT{$mmu_type} }) {
    foreach my $tsbtagfmt (keys %{ $TSB_TAG_FORMAT{$mmu_type} } ) {
      my $fieldHash = get_tte_field_hash($mmu_type, $ttefmt, $tsbtagfmt);
      foreach my $field (keys %$fieldHash) {
	$fields{$field} = 0 unless defined $fields{$field};
	$fields{$field} = ($fields{$field} > $fieldHash->{$field}) ?
	  $fields{$field} : $fieldHash->{$field};
      }
    }
  }

  return \%fields;
}

##############################################################################

sub tte_hash_to_tsb_data {
  my $mmutype = shift;
  my $ttefmt  = shift;
  my $ttehash = shift;
  my $addr    = shift;

  $addr = '0' unless defined $addr;

  my $pa   = BitFieldTie->new(64, $addr);
  my $data = BitFieldTie->new(64, 0);
  my $size = (exists $ttehash->{tte_size}) ?
    BitFieldTie->new(64, $ttehash->{tte_size}) : undef;

  tie my %data, 'BitFieldTie', $data;
  tie my %pa,   'BitFieldTie', $pa;
  tie my %size, 'BitFieldTie', $size;

  foreach my $field (keys %{ $TSB_DATA_FORMAT{$mmutype}{$ttefmt} }) {
    my $descr = $TSB_DATA_FORMAT{$mmutype}{$ttefmt}{$field};
    my $name = (exists $descr->{name}) ? $descr->{name} : $field;

    my @names = ($name);
    push @names, @{ $descr->{aliases} } if exists $descr->{aliases};

    my $def_value = (defined $descr->{default}) ? $descr->{default} : 0;
    my $value;
    my $set_already = 0;
    if($name eq 'PA' or $name eq 'SIZE') {
      my $bits = (exists $descr->{src}) ? $descr->{src} : '31:0';
      if($name eq 'PA') {
	if($bits =~ /^(\d+):(\d+)$/) {
	  my ($hi, $lo) = ($1, $2);
	  my $dist = $hi - $lo + 1;
	  if($dist > 32) {
	    my $mid_hi = $hi-31;
	    my $mid_lo = $mid_hi-1;

	    my $descr_mid_hi = $descr->{hi} - 31;
	    my $descr_mid_lo = $descr_mid_hi - 1;

	    $data{"$descr->{hi}:$descr_mid_hi"} =
	      $pa{"${hi}:$mid_hi"};

	    $data{"${descr_mid_lo}:$descr->{lo}"} =
	      $pa{"${mid_lo}:$lo"};

	    $set_already = 1;
	  } else {
	    $value = $pa{$bits};
	  }
	} else {
	  $value = $pa{$bits};
	}
      } elsif($name eq 'SIZE') {
	$value = $size{$bits};
      }
    } else {
      my $found = 0;
      foreach my $n (@names) {
	my $tte_n = lc('tte_' . $n);
	if(exists $ttehash->{$tte_n}) {
	  $value ||= $ttehash->{$tte_n};
	  $found = 1;
	}
      }
      $value = $def_value unless $found;
    }

    $data{"$descr->{hi}" . ':' . "$descr->{lo}"} = $value
      unless $set_already;

  }
  return $data->stringify();
}

##############################################################################

sub tte_hash_to_tsb_tag {
  my $mmutype = shift;
  my $tsbtagfmt = shift;
  my $ttehash = shift;
  my $addr    = shift;
  my $force_ctx_zero = shift;

  $addr = '0' unless defined $addr;
  $force_ctx_zero = 0 unless defined $force_ctx_zero;

  my $va   = BitFieldTie->new(64, $addr);
  my $tag  = BitFieldTie->new(64, 0);

  tie my %tag, 'BitFieldTie', $tag;
  tie my %va,  'BitFieldTie', $va;

  foreach my $field (keys %{ $TSB_TAG_FORMAT{$mmutype}{$tsbtagfmt} }) {
    my $descr = $TSB_TAG_FORMAT{$mmutype}{$tsbtagfmt}{$field};
    my $name = (exists $descr->{name}) ? $descr->{name} : $field;

    my @names = ($name);
    push @names, @{ $descr->{aliases} } if exists $descr->{aliases};

    my $value = (defined $descr->{default}) ? $descr->{default} : 0;
    if( $name eq 'VA') {
      my $bits = (exists $descr->{src}) ? $descr->{src} : '31:0';

      my $hi = $descr->{hi};
      my $lo = $descr->{lo};
      my $dist = ($hi-$lo+1);
      if($dist >= 32) {
	my $cut = $hi-31;
	if($bits =~ /(\d+)\:(\d+)/) {
	  my ($bitsHi, $bitsLo) = ($1, $2);
	  my $bitsCut = $bitsHi-31;
	  $tag{"${hi}:${cut}"} = $va{"${bitsHi}:${bitsCut}"};
	  $cut--; $bitsCut--;
	  $tag{"${cut}:${lo}"} = $va{"${bitsCut}:${bitsLo}"};
	}
      } else {
	$tag{"${hi}:${lo}"} = $va{$bits};
      }


    } else {
      foreach my $n (@names) {
	my $tte_n = lc('tte_' . $n);
	if(exists $ttehash->{$tte_n}) {
	  $value ||= $ttehash->{$tte_n};
	}
	if($tte_n eq 'tte_context' and $force_ctx_zero) {
	  $value = 0;
	}
      }

      $tag{"$descr->{hi}" . ':' . "$descr->{lo}"} = $value;
    }


  }
  return $tag->stringify();
}

##############################################################################

sub parse_tsb_data {
  my $mmutype  = shift;
  my $ttefmt   = shift;
  my $tte_data = shift;

  tie my %parsed, 'Tie::IxHash';

  my $data = BitFieldTie->new(64, $tte_data);
  tie my %data, 'BitFieldTie', $data;

  my $types = $TSB_DATA_FORMAT{$mmutype}{$ttefmt};
  foreach my $field (sort { $types->{$b}{hi} <=> $types->{$a}{hi}}
		     keys %$types)
    {
      my $descr = $types->{$field};
      my $value = $data{"$descr->{hi}" . ':' . "$descr->{lo}"};
      my $name = (exists $descr->{name}) ? $descr->{name} : $field;

      $parsed{$name} = 0 unless defined $parsed{$name};
      if(exists $descr->{src}) {
	my $v = BitFieldTie->new(64, 0);
	tie my %v, 'BitFieldTie', $v;
	$v{$descr->{src}} = $value;
	$value = $v->extract(31,0);
      }
      $parsed{$name} |= $value;

    }

  return \%parsed;
}

##############################################################################

sub is_good_format_for_mmu {
  my $mmutype = shift;
  my $ttefmt  = shift;
  return 1 if exists $TSB_DATA_FORMAT{$mmutype}{$ttefmt};
  return;
}

##############################################################################
1;