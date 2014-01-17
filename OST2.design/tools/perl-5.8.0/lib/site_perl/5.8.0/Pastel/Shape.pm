package Pastel::Shape;
use strict;

# Perl interface for the Geometry objects. The function get_bounds()
# Called by all the Geometry objects. Parameters passed are the
# Point coordinates

sub _get_bounds {
    my ( $self, @args ) = @_;
    my ( $max_x, $max_y, $min_x, $min_y ); # Hold the maximum and
                                           # the minimum coordinates

    $max_x = $args[0];
    $max_y = $args[1];
    $min_x = $args[0];
    $min_y = $args[1];

    for ( my $i = 0 ; $i < @args ; $i += 2 ) {    #Pick even number X values
        if ( $args[$i] > $max_x ) {
            $max_x = $args[$i];
        }
        elsif ( $args[$i] < $min_x ) {
            $min_x = $args[$i];
        }

    }

    for ( my $i = 1 ; $i < @args ; $i += 2 ) {    #Pick odd number Y values
        if ( $args[$i] > $max_y ) {
            $max_y = $args[$i];
        }
        elsif ( $args[$i] < $min_y ) {
            $min_y = $args[$i];
        }
    }

    my $bb = Pastel::Geometry::Rectangle->new(
        $min_x, $min_y,
        ( $max_x - $min_x ),
        ( $max_y - $min_y )
    );
    return $bb;

}

sub set_stroke_color {
    my $self = shift;
    $self->{stroke_color} = $_[0];
}

sub get_stroke_color {
    my $self = shift;
    if ( $self->{stroke_color} ) {
        return $self->{stroke_color};
    }
    else {
        return undef;
    }

}

sub set_stroke {
    my $self   = shift;
    my $stroke = shift;
    $self->{stroke} = $stroke;
}

sub get_style {
    my $self     = shift;
    my $graphics = shift;
    my $string   = "";

    # First check whether fill is set
    # "Fill" is set by the fill method of Pastel::Graphics
    if ( defined( $self->{fill} ) ) {
        my $fill = $self->{fill};

        #If fill is a "color" object
        if ( $fill->isa("Pastel::Color") ) {

            # $string .= "fill:".$self->get_fill()->to_hex().';';
            #	    $string .= "fill-opacity:".$self->get_fill()->get_alpha().';';
            $string .= $self->get_fill()->to_svg_fill() . ';';
        }

        #If fill is a Gradient object
        if ( $fill->isa("Pastel::GradientI") ) {
            $string .= "fill:url(" . $self->get_fill()->get_ref() . ");";
            $graphics->add_to_defs($fill);
        }

        #If fill rule is set
        if ( $self->get_fill_rule() ) {
            $string .= "fill-rule:" . $self->get_fill_rule() . ';';
        }
    }
    else {
        $string .= 'fill:none;';
    }

    if ( $graphics->get_stroke() ) {

        my $paint;
	
        if ( $self->get_stroke_color() ) {
            $paint = $self->get_stroke_color();
        }
        else {
            $paint = $graphics->get_paint();
        }
        if ( $paint->isa("Pastel::Color") ) {
            $string .= $paint->to_svg();
        }

        if ( $paint->isa("Pastel::GradientI") ) {
            $string .= "stroke:url(" . $paint->get_ref() . ');';
            $graphics->add_to_defs($paint);
        }

        my $stroke = $graphics->get_stroke();
        $string .= $stroke->to_svg();

    }

    return "$string";
}

sub get_fill {
    return $_[0]->{fill};
}

sub set_fill {
    my $self = shift;
    $self->{fill} = shift;
}

sub set_fill_rule {
    my $self = shift;
    my $rule = shift;
    $self->{fill_rule} = $rule;
}

sub get_fill_rule {
    my $self = shift;
    if ( $self->{fill_rule} ) {
        return $self->{fill_rule};
    }
    else {
        return undef;
    }
}

1;
