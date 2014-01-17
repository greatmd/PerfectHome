package Pastel::GradientStop;
@ISA = qw (Pastel::Mixin::Mixin);
use Carp;
use Pastel::Mixin::Mixin;

use strict;

# Perl module for Pastel::Color
# Cared for by Malay<curiouser@ccmb.ap.nic.in>
# Copyright 2001, Malay Kumar Basu
# You may distribute this module under the same terms as perl itself

=head1 NAME

Pastel::GradientStop

Each of these gradient paint classes holds several of GradientStop classes.
The GradientStop classes represents the "stop" element under Linear
or radialGradient element in SVG.

=head1 DESCRIPTION

There are only two fields in Pastel::GradientStop: "offset" and "color".
The values of "offset" can vary from 0 to 100%, basically reflect at what
point along the GradientVector the gradient stops. The "color" is supplied
as Pastel::Color.

=head1 SYNOPSIS

  #Create a Gradient object
  my $linearGradient = Pastel::LinearGradient->new(...);
  my $color1 = Pastel::Color->red();


  #Create the first stop
  my $firstGradientStop = Pastel::GradientStop->new(-offset=>5,
						  -color=>$color1);

  #the same thing
  # my $firstGradientStop = Pastel::GradientStop->new(5, $color1);

  # Add the stop to gradient
  $linearGradient->add_stop($firstGradientStop);

  # Set the gradient to graphics object
  $graphics->set_paint($linearGradient);

=head1 CONSTRUCTOR

=head3 Pastel::GradientStop->new(-offset=>$int, -color=>$color)

$int is integer between 0 and 100, $color is a Pastel::Color object.

=head3 Pastel::GradientStop->new($int, $color)

Orthodox parameter styles.

=cut

sub new {
    my $class = shift;
    my $self = {};
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
     my ($self, @args) = @_;

     if ( (@args < 2) || (@args >4)){
       croak "Parameter problems in Pastel::GradientStop::new\n";
     }

    my ($offset, $color) = $self->_rearrange(["OFFSET","COLOR"],@args);

    if(!defined($offset) || !defined($color) ){
        croak "Parameter problem in Pastel::GradientStop::new\n";
    }

    if( ($offset <0) || ($offset >100)){
        croak "Offset value in Pastel::GradientStop::new is out of range\n";
    }

    if (! $color->isa("Pastel::Color") ){
        croak "Wrong color parameter in Pastel::GradientStop\n";
    }

    $self->{offset} = $offset;
    $self->{color} = $color;

    return $self;
}

sub to_svg {
    my $self = shift;
    my $s = "";
    $s .= "<stop offset=\"". $self->get_offset()."\%\" stop-color=\"".
                 $self->get_color(). "\" stop-opacity=\"". $self->get_opacity(). "\" />";
    return $s;
} 

sub get_offset {
    return $_[0]->{offset};
}

sub get_color {
    return $_[0]->{color}->to_hex();
}

sub get_opacity {
    if ( $_[0]->{color}->get_alpha() ){
	return $_[0]->{color}->get_alpha();
    } else {
	return 1;
	}
}

1;
 





 

