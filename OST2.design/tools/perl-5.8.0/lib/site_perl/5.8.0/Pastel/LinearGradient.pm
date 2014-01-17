package Pastel::LinearGradient;
@ISA = qw(Pastel::GradientI Pastel::Mixin::Mixin);
use Carp;
use strict;

{ 
    my $id = 0;
    sub _id { return $id++ ; }
}

use constant USER_SPACE => "userSpaceOnUse";
use constant BOUNDING_BOX => "objectBoundingBox";
use constant PAD => "pad";
use constant REFLECT => "reflect";
use constant REPEAT => "repeat";
use constant RADIAL => "radial";
use constant LINEAR => "linear";

# Perl module for linear Gradientpaint
# Cared for by Malay<curiouser@ccmb.ap.nic.in>
# Copyright 2001, Malay Kumar Basu
# You may distribute this module under the same terms as perl itself


=head2 NAME

Pastel::LinearGradient

=head2 DESCRIPTION

In SVG there are two different types of GradientPaint that you can use. 
"Linear" and "Circular". Both of these are represented in Pastel by separate 
modules. Pastel::LinearGradient represent a Gradient paint in liear mode. The 
Gradient goes from one color to the next from one point to another on the 
vector from the first point to the second. 

=head2 CONSTRAUCTOR

=head3 Pastel::LinearGradient()

=head3 Pastel::LinearGradient(-color1=>$color1, -color2=>$color2)

=head3 Pastel::LinearGradient(-point1=>$point1, -color1=>$color1, -point2=>$point2, -color2=>$color2)

=head3 Pastel::LinearGradient(-point1=>$point1, -color1=>$color1, -point2=>$point2, -color2=>$color2, -method=>Pastel::LinearGradient::PAD/REFLECT/REPEAT, -units=>Pastel::LinearGradient::USER_SPACE/BOUNDING_BOX)

=head3 Pastel::LinearGradient(-point1=>$point1, -color1=>$color1, -point2=>$point2, -color2=>$color2, -method=>Pastel::LinearGradient::PAD/REFLECT/REPEAT)

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
     my($p1, $c1, $p2, $c2, $m, $u)=$self->_rearrange(["POINT1",
						       "COLOR1",
						       "POINT2",
						       "COLOR2",
						       "METHOD",
						       "UNITS"], @args);

     if ( defined($p1) ){ $self->{p1} = $p1; }
     if ( defined($p2) ){ $self->{p2} = $p2; }
     if ( defined($c1) ){ $self->{c1} = $c1; }
     if ( defined($c2) ){ $self->{c2} = $c2; }
     if ( defined($m) ) { $self->{method} = $m; }
     if (defined ($u) ) { $self->{units} = $u; }
     
     $self->{id} = "LinearGradient". $self->_get_id();
     $self->{stops} = [];

     if( defined($self->{c1}) && defined($self->{c2})){
	 my $stop1 = Pastel::GradientStop->new(0, $c1);
	 my $stop2 = Pastel::GradientStop->new(100, $c2);
	
	 $self->add_stop($stop1);
	 $self->add_stop($stop2);
     }

     
						      
     return $self;
}

sub get_point1 {
    my $self = shift;
    return (defined($self->{p1}))? $self->{p1}: undef;
}

sub get_point2 {
    my $self = shift;
    return (defined($self->{p2}))? $self->{p2}: undef;
}

sub get_spread_method {
    my $self= shift;
    return (defined($self->{method}))? $self->{method}: undef;
}

sub get_units {
    my $self = shift;
    return (defined($self->{units}))? $self->{units}: undef;
}
sub to_svg {
    my $self = shift;

    my $s = '<linearGradient id="'.$self->get_id().'" ';
    if ( defined( $self->{p1} )){
	$s .= 'x1="'.$self->get_point1()->get_x().'" ';
	$s .= 'y1="'.$self->get_point1()->get_y().'" ';
    }

    if (defined($self->{p2})){
	$s.= 'x2="'.$self->get_point2()->get_x().'" ';
	$s.= 'y2="'.$self->get_point2()->get_y().'" ';
    }

    if (defined($self->{method})){
	$s .= 'spreadMethod="'.$self->get_method().'" ';
    }
 
    if (defined($self->{units})){
	$s .= 'gradientUnits="'.$self->get_units().'" ';
    }
    
    $s .= '>';

    if(@{$self->{stops}} > 0){
	for( my $i = 0; $i < @{$self->{stops}}; $i++){
	    $s .= ${$self->{stops}}[$i]->to_svg();
    }
}
  
    $s .= '</linearGradient>';
}

sub get_ref {
    my $self = shift;
    return '#'.$self->get_id();
}

sub _get_id {
    return $_[0]->_id();
}

sub get_id {
    return $_[0]->{id};
}
1;

     
    
