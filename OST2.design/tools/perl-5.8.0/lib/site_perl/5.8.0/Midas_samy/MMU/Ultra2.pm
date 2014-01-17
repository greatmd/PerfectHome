# -*- perl -*-

package Midas::MMU::Ultra2;
use strict;

use Midas::Command;
use Midas::Error;
use Midas::Configure;
use Midas::Globals;
use Midas::Segment;

use TRELoad 'BitFieldTie';

use base qw(Midas::MMU);
use fields qw(
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

  $this->{mapattr_type} = 'Midas::MMU::Ultra2::SectionAttrs';

  return $this;
}

##############################################################################

sub set_defaults {
  my $this = shift;

  $this->{vasize} = 64 unless defined $this->{vasize};
  $this->{pasize} = 41 unless defined $this->{pasize};
  $this->{type}   = 'ultra2' unless defined $this->{type};

  $this->SUPER::set_defaults();
}

##############################################################################

sub mmu_cpp_args {
  my $this = shift;
  my $list = ['-DULTRA2'];
  push @$list, '-DALLOW_TSB_COL' if $CONFIG{allow_tsb_conflicts};
  return $list;
}

##############################################################################

##############################################################################
##############################################################################

{
  package Midas::MMU::Ultra2::SectionAttrs;
  use strict;

  use Carp;
  use Midas::Command;
  use Midas::Globals;
  use Midas::Error;
  use Midas::MMU::SunSectionAttrs;
  use Midas::MMU::TTEFormat;
  use BitFieldTie;


  use base qw(Midas::MMU::SunSectionAttrs);
  use fields (qw( ),
	      (
	       # Hard-code MMU type because 'use fields' directive needs
	       # to happen at compile-time
	       keys %{ get_union_tte_field_hash('ultra2') }
	      )
	     );

  #tte_g is same as tte_rsvd1 for sun4u

  our @Settable = qw();

  our %Settable = map { $_ => 1} Midas::MMU::Ultra2::SectionAttrs->settable();
  our %FieldSizes = ();

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
    return (0, 1, 2, 3);
  }

  ############################################################################

  sub get_data_addr_bits {
    my $this = shift;
    return (40, 13);
  }

  ###########################################################################

}

##############################################################################

##############################################################################

1;
