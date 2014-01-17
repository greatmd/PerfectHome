package Pastel::Geometry::Point;
@ISA = ("Pastel::Mixin::Mixin");
use strict;

sub new 
    {
    my( $class) = shift;
    my $self = {};
    bless $self, ref($class) || $class;
    $self = $self->_init(@_);
    return $self;
    }

sub _init
    {
    my ($self) = shift;
    
    if (@_ == 1){ #If only one parameter left after shifting
         
         if(ref($_[0]) =~ /Point/i){
           $self-> _clone_point($_[0]);
           return $self;
         } 
         else{
         return undef;
         }
    }   
    else {
         my ($x, $y) = $self->_rearrange(["X", "Y"], @_);
         
         $self->{x} = $x ? $x : 0;
         $self->{y} = $y ? $y :0;
         return $self;
    }
}

sub _clone_point {
    my $self = shift;
    $self->{x} = $_[0]->get_x();
    $self->{y} = $_[0]->get_y();
    }
    
sub get_x {
    my $self = shift;
    return $self->{x};
}

sub get_y {
    my $self = shift;
    return $self->{y};
}

sub set_x {
    my $self = shift;
    my ($x) = $self->_rearrange(["X"], @_);
    $self->{x} = $x;
}

sub set_y {
    my $self = shift;
    my ($y) = $self->_rearrange(["Y"], @_);
    $self->{y} = $y;
}
sub move {
    my $self = shift;
    my ($x, $y) = $self->_rearrange(["X", "Y"], @_);
    $self->{x} = $x;
    $self->{y} = $y;
}

sub translate {
    my $self = shift;
    my ($x, $y) = $self->_rearrange(["X", "Y"], @_);
    $self->{x} += $x;
    $self->{y} += $y;
}

sub set_location {
    my $self = shift;
    $self->move(@_);
}

sub equals {
    my $self = shift;
    my $x = $_[0]->get_x();
    my $y = $_[0]->get_y();
    if ( ($self->{x} == $x) && ($self->{y} == $y) ){
       return 1;
    }    
    else {
         return undef;
    }
}

sub to_string {
    my $self = shift;
    my $r = ref($self)."[x=".$self->{x}.",y=".$self->{y}."]";
    return $r;
}


sub distance {
    my ($self, @args) = @_;
=head1    
    if (($_[0] =~ /:point/i) || (ref($_[0]) =~ /:point/i)){
       ($self, @args) = @_;
    }
    else {
         @args = @_;
    }
=cut   
    my $d = undef;
    if (@args == 1){ #Passed a reference
      
       my $x = $args[0]->get_x();
       my $y = $args[0]->get_y();
       $d =_calculate_distance ($self->{x}, $self->{y},
                             $x, $y);
    }
    elsif (@args == 2) {
       $d = _calculate_distance($self->{x}, $self->{y}, @args);
    }
    else {
    
         my ($x1, $y1, $x2, $y2) =  
                         Pastel::Mixin::Mixin::_rearrange("static",["X1","Y1","X2","Y2"],@_);
    
         $d = _calculate_distance($x1, $y1, $x2, $y2);
    
    }
    return $d;
}

sub _calculate_distance {
    my ($x1, $y1, $x2, $y2) = @_;
    return sqrt ( ($x1 - $x2)**2 + ($y1 - $y2)**2 );
}

1;
    
