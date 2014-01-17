# Pastel::Geometry::Ellipse
# Copyright 2001, Malay Kumar Basu curiouser@ccmb.ap.nic.in

package Pastel::Geometry::Ellipse;
@ISA = qw(Pastel::Mixin::Mixin Pastel::Shape);
#use Pastel::Geometry::Shape;
use Carp;
use strict;

sub new {
    my $class = shift;
    #print STDERR "Ellipse called\n@_\n";
    my $self = {};
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
     my ($self, @args) = @_;
     #print STDERR "Ellipse init called\n";
     
     #If no argument supplied, an empty constructor-
     if ( @args < 1){
       $self->{x} = 0;
       $self->{y} = 0;
       $self->{w} = 0;
       $self->{h} = 0;
     } else {
       my ($x, $y, $width, $height)=
	 $self->_rearrange(["X", "Y", "WIDTH", "HEIGHT"], @args);
       $self->{x} = defined($x)     ? $x      : 0;
       $self->{y} = defined($y)     ? $y      : 0;
       $self->{w} = defined($width) ? $width  : 0;
       $self->{h} = defined($height)? $height : 0;
     }
    return $self;
}

sub to_string {
  my ($self) = shift;
  return ref($self)." Location:[".$self->{x}.",".$self->{y}."] Width:".$self->{w}." Height:".$self->{h};
}

sub get_x { return $_[0]->{x}; }
sub get_y { return $_[0]->{y}; }
sub get_width { return $_[0]->{w}; }
sub get_height { return $_[0]->{h}; }

sub get_bounds {
  my $self = shift;
  
  #Create a new Rectangle and return
  my $bb = Pastel::Geometry::Rectangle->new(
					    $self->get_x(),
					    $self->get_y(),
					    $self->get_width(),
					    $self->get_height());
  return $bb;
}

sub isEmpty {
  my $self = shift;
  return if ( $self->get_width() <= 0 || $self->get_height() <= 0 );
}


sub contains {
    my $self = shift;
    
    my ($x, $y, $w, $h) = $self->_rearrange(["X", "Y", "WIDTH", "HEIGHT"], @_);

    if ( defined($x) &&
	 defined($y) &&
	 defined($w) &&
	 defined($h) )
      {
	  return ( $self->_contains($x, $y) &&
		   $self->_contains( $x + $w, $y) &&
		   $self->_contains( $x, $y + $h) &&
		   $self->_contains( $x + $w, $y + $h) );
      }

    elsif ( defined( $x) &&
	 defined( $y) &&
	 !defined($w) &&
	 !defined ( $h) )
      {
	return ( $self->_contains( $x, $y) );
    }

    else {
	croak "Illegal parameter in Pastel::Ellipse::contains()\n";
	}
	 

}


sub _contains {
    my $self = shift;
    my ($x, $y ) =@_;  
    
    my $width = $self->get_width();
    if ($width <= 0){
	return undef;
    }
    my $normalized_x = ($x - $self->get_x() ) / $width - 0.5;

    my $height = $self->get_height();
    if( $height <= 0 ){
	return undef;
    }

    my $normalized_y = ($y - $self->get_y() ) / $height - 0.5;
    return ( $normalized_x * $normalized_x + $normalized_y * $normalized_y) < 0.25;
}

sub intersects {
    my ($self, @args) = @_;
    my ($x, $y, $width, $height) =
      $self->_rearrange( ["X","Y","WIDTH","HEIGHT"],
			 @args);

    if($width <= 0 || $height <= 0){
	return undef;
    }

    my $w = $self->get_width();
    my $h = $self->get_height();
    if( $w <= 0 || $h <= 0){
	return undef;
    }

    my $norm_x1 = ( $x - $self->get_x() ) / $w - 0.5;
    my $norm_x2 = $norm_x1 + $width / $w;

    my $norm_y1 = ( $y - $self->get_y() ) / $h - 0.5;
    my $norm_y2 = $norm_y1 + $height/ $h;

    my ($near_x, $near_y);

    if ( $norm_x1 > 0 ){
	$near_x = $norm_x1;
    } elsif ( $norm_x2 < 0 ){
	$near_x = $norm_x2;
    } else {
	$near_x = 0;
    }

    if( $norm_y1 > 0 ){
	$near_y = $norm_y1;
    } elsif ( $norm_y2 < 0 ) {
	$near_y = $norm_y2;
    } else {
	$near_y = 0;
    }

    return ( $near_x * $near_x + $near_y * $near_y ) < 0.25;
}


sub get_center {
    my $self = shift;
    my $x = $self->get_x() + ($self->get_width() / 2);
    my $y = $self->get_y() + ($self->get_height()/ 2);
    return Pastel::Geometry::Point->new(-x=>$x, -y=>$y);
    
}

sub _draw{
  my ($self,$g) = @_;
  my $style = $self->get_style($g);
  my $s = "<ellipse cx=\"".$self->get_center()->get_x()."\" cy=\"";
  $s   .= $self->get_center()->get_y()."\" rx=\"";
  $s   .= eval($self->get_width()/2) ."\" ry=\"".eval($self->get_height()/2). "\" style=\"$style\" />";
  return $s;
}


1;
