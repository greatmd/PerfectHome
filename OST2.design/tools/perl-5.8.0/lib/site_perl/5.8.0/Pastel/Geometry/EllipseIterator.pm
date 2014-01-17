package Pastel::Geometry::EllipseIterator;
@ISA = qw(Pastel::Geometry::PathIteratorI Pastel::Mixin::Mixin);
use Pastel::Geometry::PathIteratorI;
use Pastel::Mixin::Mixin;
use strict;
use Carp;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
     my ($self, @args) = @_;
     if (@args < 2 ){
	croak "Error: Isufficent argument in Pastel::Geometry::EllipseIterator!\n";
    }
     elsif ( ref($args[0]) ne "Pastel::Geometry::Ellipse"){
	 croak "First argument of the Pastel::Geometry::EllipseIterator::new\n
                has to be a Pastel::Geometry::Ellipse\n";
     }

     elsif ( ref($args[1]) ne "Pastel::Geometry::AffineTransform"){
	 croak "Second argument of Pastel::Geometry::EllipseIterator::new\n
                has to be a Pastel::Geometry::AffineTransform\n";
     }

     else {
	 $self->{x} = $args[0]->get_x();
	 $self->{y} = $args[0]->get_y();
	 $self->{w} = $args[0]->get_width();
	 $self->{h} = $args[0]->get_height();
	 $self->{affine} = $args[1];
	 $self->{index} = 0;

	 if ( $self->{w} < 0 || $self->{h} < 0){
	     $self->{index} = 6;
	 }
     }

     return $self;
}

sub get_winding_rule {
    my ($self, @args)= @_;
    #print "winding rule called\n";
    #print $WIND_NON_ZERO;
    return  $Pastel::Geometry::PathIteratorI::WIND_NON_ZERO;
}

sub is_done {
    my $self = shift;
    return $self->{index} > 5;
}

sub next {
    my $self = shift;
    $self->{index}++;
}


1;

    
    
