package Pastel::Geometry::Shape;
use strict;

# Perl interface for the Geometry objects. The function get_bounds()
# Called by all the Geometry objects. Parameters passed are the
# Point coordinates

sub _get_bounds
{
    my ($self, @args) = @_;
    my ($max_x, $max_y, $min_x, $min_y); # Hold the maximum and the minimum coordinates

     $max_x = $args[0];
     $max_y = $args[1];
     $min_x = $args [0];
     $min_y = $args[1];

    for (my $i = 0; $i < @args; $i +=2) { #Pick even number X values
	if ($args[$i] > $max_x) {
	    $max_x = $args[$i];
	}
	elsif ($args[$i] < $min_x){
	    $min_x = $args[$i];
	}

    }

    for (my $i = 1; $i <@args; $i +=2) { #Pick odd number Y values
	if ($args[$i] > $max_y) {
	    $max_y = $args[$i];
	}
	elsif ($args[$i] < $min_y) {
	    $min_y = $args[$i];
	}
    }
    
    my $bb = Pastel::Geometry::Rectangle->new($min_x, $min_y, ($max_x - $min_x), ($max_y - $min_y));
    return $bb;

}

sub set_stroke {
    my $self = shift;
    my $stroke = shift;
    $self->{stroke} = $stroke;
}


1;
