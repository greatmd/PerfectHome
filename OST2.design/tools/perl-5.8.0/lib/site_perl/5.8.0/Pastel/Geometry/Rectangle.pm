package Pastel::Geometry::Rectangle;
@ISA = qw (Pastel::Mixin::Mixin Pastel::Shape);
use strict;

use constant OUT_BOTTOM => 8;
use constant OUT_LEFT => 1;
use constant OUT_RIGHT=> 4;
use constant OUT_TOP => 2;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
    my ($self, @args) =@_;
    my ($x, $y, $width, $height)=
	$self->_rearrange(["X", "Y", "WIDTH", "HEIGHT"], @args);
    $self->{x} = defined($x)     ? $x      : 0;
    $self->{y} = defined($y)     ? $y      : 0;
    $self->{w} = defined($width) ? $width  : 0;
    $self->{h} = defined($height)? $height : 0;

    return $self;
}


sub to_string {
    my $self = shift;
    return ref($self)." Location:[".$self->{x}.",".$self->{y}."] Width:".$self->{w}." Height:".$self->{h};
    }

sub get_x {
    return $_[0]->{x};
}

sub set_x {
    $_[0]->{x} = $_[1];
}

sub get_y {
    return $_[0]->{y};
}

sub set_y {
    $_[0]->{y} = $_[1];
}

sub get_width {
    return $_[0]->{w};
}

sub set_width {
    $_[0]->{w} = $_[1];
}

sub get_height {
    return $_[0]->{h};
}

sub set_height {
    $_[0]->{h} = $_[1];
}

sub _draw {
    my $self = shift;
    my $graphics = shift;
    my $style = $self->get_style($graphics);
my $data = "<rect x=\"".$self->get_x()."\" y=\"".$self->get_y()."\" width=\"".$self->get_width()."\" height=\"".$self->get_height()."\" style=\"".$style."\" \/>";
return $data;
 
}

sub is_empty {
    my $self = shift;
    return ($self->get_width() <= 0) || ($self->get_height() <= 0);
}

sub set_rect {
    my $self = shift;
    my @args = @_;
    #If argument is a Pastel::Geometry::Rectangle
    if ($args[0]->isa("Pastel::Geometry::Rectangle") ){
	    $self->set_x($args[0]->get_x());
	    $self->set_y($args[0]->get_y());
	    $self->set_width($args[0]->get_width());
	    $self->set_height($args[0]->get_height());
	}
    else{
	$self->set_x($args[0]);
	$self->set_y($args[1]);
	$self->set_width($args[2]);
	$self->set_height($args[3]);
    }
}
 
sub _outcode {
    my $self = shift;
    my ($x, $y) = @_;
    my $out = 0;
    
    if($self->get_width() <= 0){
	$out |= $self->OUT_LEFT | $self->OUT_RIGHT;
    }elsif ( $x < $self->{x}){
	$out |= $self->OUT_LEFT;
    }elsif ( $x > ($self->{x} + $self->{w})){
	$out |= $self->OUT_RIGHT;
    }

    if($self->get_height() <=0 ){
	$out |= $self->OUT_TOP | $self->OUT_BOTTOM;
    } elsif ($y < $self->{y}){
	$out |= $self->OUT_TOP;
    } elsif ($y > ( $self->{y} + $self->{h})){
	$out |= $self->OUT_BOTTOM;
    }
  #  print "Inside outcode\n";
#    print $self->OUT_LEFT;
    return $out;
}
    

1;
