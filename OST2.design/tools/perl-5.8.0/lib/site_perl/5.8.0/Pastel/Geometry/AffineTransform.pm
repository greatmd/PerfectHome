package Pastel::Geometry::AffineTransform;
@ISA = qw(Pastel::Mixin::Mixin );
use Carp;
use strict;

# Perl module for Pastel::Geometry::AffineTransform
# Cared for by Malay<curiouser@ccmb.ap.nic.in>
# Copyright 2001, Malay Kumar Basu
# You may distribute this module under the same terms as perl itself

=head1 NAME

Pastel::Geometry::AffineTranform

This module encapsulates the 2D tranformation matrix of graphics.

=head1 DESCRIPTION

Every elements of the graphics object can be geometrically transformed. 
SVG specification allows - Translation, Scaling, Roatation and Skew. 
Transformation itself is represented by a 3 X 3 matrix. Like in Java 
AffineTranform class we will represent it here like this-

        [ x']   [  m00  m01  m02  ] [ x ]   [ m00x + m01y + m02 ]
	[ y'] = [  m10  m11  m12  ] [ y ] = [ m10x + m11y + m12 ]
	[ 1 ]   [   0    0    1   ] [ 1 ]   [         1         ]

      Where x' and y' are the new coordinates and x and y are the old ones.
      In SVG it is represented as-
      <g transform="matrix(m00,m10,m01,m11,m02,m12)">...</g>

<B>Translation:</B>

        [ x']   [   1    0    tx  ] [ x ] 
	[ y'] = [   0    1    ty  ] [ y ] 
	[ 1 ]   [   0    0    1   ] [ 1 ] 

      Where tx and ty are the distances to translate. It is represented
      in SVG as-
      <g transform="translate(tx, ty)">...</g>

<B>Scaling:</B>     

        [ x']   [   Sx   0    0  ] [ x ] 
	[ y'] = [   0    Sy   0  ] [ y ] 
	[ 1 ]   [   0    0    1  ] [ 1 ]

In SVG-
     <g transform="scale(Sx, Sy)">...</g>
     If Sy is not provided it is assumed to be equals to Sx.

<b>Rotation:</b>
        [ x']   [  cos(a)   -sin(a)    0  ] [ x ] 
	[ y'] = [  sin(a)    cos(a)    0  ] [ y ] 
	[ 1 ]   [   0         0        1  ] [ 1 ]

In SVG-
    
     <g transform="rotate(a, [x, y])">...</g>
     If x and y are provided is like translating to that point then rotating
     and then coming to the original position.

<b>SkewX and Y:</b>
     
     <g transform="skewX(a)">...</g>
     <g transform="skewY(a)">...</g>

=head1 SYNOPSIS

    use Pastel;
    my $g2 = Pastel::Graphics->new(...);
    # Create two tranfoms
    my $transform1 = Pastel::Geometry::AffineTranform->new();
    my $transform2 = Pastel::Geometry::AffineTranform->new();
    
    # Modify Transfom1
    $transform1->set_to_indentity();
    $transform1->rotate(45);
    
    # Modify Transform2
    $transform2->scale(0.5,0.5);
    
    # Join both the transform
    $transform1->concatanate($transform2);
    
    # To concatanate to existing transform in $g2 call transform()
    $g2->transform($transform1);

    # To replace the existing transform
    $g2->set_transform($transform2);

=head1 CONSTRUCTORS 

=over 4

=item Pastel::Geometry::AffineTransform->new()

=item Pastel::Geometry::AffineTransform->new(-transform=>$tx)

$tx is another Pastel::Geometry::AffineTransform object. 

=item Pastel::Geometry::AffineTransform->new(@array)

@array is 4 or 6 elements numbers representing 4 non-tranaslatable entries
or the complete array of 6 specifiable entries of 3 X 3 transformation matrix.

=item Pastel::Geometry::AffineTransform->new(-m00=>$n, -m10=>$n, -m01=>$n, -m11=>$n, -m02=>$n, -m12=>, $n)

Complete transformation matrix. $n = numbers.

=item Pastel::Geometry::AffineTransform->new($n1,$n2,$n3,$n4,$n5,$n6)

=item Pastel::Geometry::AffineTransform->new(-m00=>$n, -m10=>$n, -m01=>$n, -m11=>$n)

=back

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

  if(@args == 0){ # Default empty constructor
    return $self;
  }
    
  if(@args < 4){ # Another Affinetranform object passed??
    
    if( $args[0] =~ /transform/i){ # Check whther a named perl-style? 
      
      if($args[1]->isa("Pastel::Geometry::AffineTransform")){
        $self = $args[1]->clone();
	return $self;
      }else {
         croak("Illegal parameters in construction of 
                        Pastel::Geometry::AffineTransform");
       }
    
     } elsif(ref($args[0]) && 
                   $args[0]->isa("Pastel::Geometry::Transform")){
        $self = $args[0]->clone();
	return $self;
    } else { 
        croak("Illegal parameters in construction of 
                    Pastel::Geometry::AffineTransform");
    }
  }
	
  if(@args >= 4){ # Definitely matrix data passed 	
     my(@m) = $self->_rearrange(["M00","M10","M01","M11","M02","M12"],
                                           @args);
     $self->{m00} = $m[0];
     $self->{m10} = $m[1];
     $self->{m01} = $m[2];
     $self->{m11} = $m[3];
     if(@m > 5){  # Full set of 6 data???
	 $self->{m02} = $m[4];
	 $self->{m12} = $m[5];
     }
  }     
		
}

1;
