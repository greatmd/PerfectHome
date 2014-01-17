package Pastel::Color;
@ISA = qw (Pastel::Mixin::Mixin);
use Carp;
use strict;

# Perl module for Pastel::Color
# Cared for by Malay<curiouser@ccmb.ap.nic.in>
# Copyright 2001, Malay Kumar Basu
# You may distribute this module under the same terms as perl itself

=head1 NAME

Pastel::Color

The Pastel::Color class encapsulates colors in the default sRGB color space. At present
sRGB is the only Colorspace implemented.

=head1 Description

Every color has an implicit alpha value of 1.0 or an explicit one provided in the
constructor. The alpha value defines the transparency of a color and can be represented
by a float value in the range 0.0 - 1.0 . An alpha value of 1.0 
means that the color is completely opaque and an alpha value of 0 or 0.0 means that
the color is completely transparent.

The default color space for the Pastel::Color API is sRGB (at present the only colorspace
implemented). For further information on sRGB, see
L<http://www.w3.org/pub/WWW/Graphics/Color/sRGB.html>.

=head1 Synopsis

  use Pastel::Graphics;
  use strict;

  my $color  = Pastel::Color->new (10, 20, 30);
  my $color1 = Pastel::Color->new (-r=>10, -g=>20, -b=>30, -a=>0.5);
  my $color2 = Pastel::Color->new (10, 20, 30, 0.5); # $color now 50% transparent

  my $graphics = Pastel::Graphics->new(-width=>800, -height=>600);
  $graphics->set_paint($color); # All the drawing from now on will be in $color
  ...
  ...

=head1 CONSTRUCTOR

=over 4

=item Pastel::Color->new( $int, $int, $int);

Creates an sRGB color with the specified red, green, blue in the range (0 - 255).
The tranparency is set to 1.0. Fully opaque.

=item Pastel::Color->new( $int, $int, $int, $float_alpha)

Creates an sRGB color with the specified red, green, blue in the range (0 - 255).
Alpha values in the range (0.0 - 1.0). 

=item Pastel::Color->new(-r=>$int, -g=>$int, -b=>$int, -a=>$float);

With Perl style named parameters.
-r = Red, -g = Green , -b = Blue, -a = Alpha

=back

=head1 FIELDS

=over 4

=item _rgb_value

Private.A value calculated from the Red, Green and the Blue integers supplied in the
constructors. Alpha value supplied is not stored in this value because of rounding
problems is Perl.

=item _alpha

Private. Stores the transparency float value.

=back

=cut
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sub new {
    my $class = shift;
    my $self = {};
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
     my ($self, @args) = @_;

     if ( (@args < 3) || (@args > 4) ){
       croak "Too many parameters\n";
       return 0;
     }

     # Get the parameters in order by calling Pastel::Mixin::Mixin::_rearrange()
     my ($r, $g, $b, $a) = $self->_rearrange(["R", "G", "B", "A"], @args);

     # Check for the correct range

     if ( defined($r) ){
	 croak "Illegal value for red channel!!! I prefer B/W !!!\n"
	     if ( ($r < 0) || ($r >  255) );
     }

     if ( defined($g) ){
	 croak "Illegal value for the green channel!!! Trying to be too young!\n"
	     if ( ($g< 0) || ($g > 255) );

     }

     if (defined($b)){
	 croak "Illegal value for the blue channel!!! \n"
	     if ( ($b< 0) || ($b > 255) );
     }

     if (defined($a)){
	 if ( ($a < 0) ||($a > 1.0) ){
	   croak  "Illegal Alpha value in Color.pm";
	 }
	 else {
	     $self->{_alpha} = $a;
	 }

     }
     else {
	 $self->{_alpha} = 1.0;
     }

     $self->{_rgb_value} = ( ($r & 0xFF) << 16 ) |
                       ( ($g & 0xFF) << 8 ) |
		       ( ($b & 0xFF) << 0 );
     return $self;
} # Init
	 
###################################################################

=head1 ACCESSORS

=cut

=head2 get_rgb()

Returns RGB value of the color. Red channel by bits 16-23, Green by bits 8-15
and Blue by bits 0-7. Transparency value is not stored at bits 24-32, unlike the
Java implementation, to avoid rounding error problems in Perl. To get Transparency
(alpha) value use get_alpha() method.

Usage: $color->get_rgb()

=cut

sub get_rgb { $_[0]->{_rgb_value}; }

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

=head2 get_red()

Return the Red chaneel value in integer in the range 0-255.

Usage: $color->get_red()

=cut

sub get_red { ($_[0]->get_rgb() >> 16) & 0xFF ; }

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

=head2 get_green()

Return the Green chaneel value in integer in the range 0-255.

Usage: $color->get_green()

=cut

sub get_green { ($_[0]->get_rgb() >> 8) & 0xFF ; }

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

=head2 get_blue()

Return the Blue chaneel value in integer in the range 0-255.

Usage: $color->get_blue()

=cut

sub get_blue { ($_[0]->get_rgb() >> 0) & 0xFF ; }

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

=head2 get_alpha()

Return the Alpha (transparency) value in the range 0.0 - 1.0.

Usage: $color->get_alpha()

=cut

sub get_alpha {
    if ( ($_[0]->{_alpha} == 1) ||
	!(defined ($_[0]->{_alpha}))
       )
     {
	 return undef;
     }else {
	 return $_[0]->{_alpha};
	 }
    }

###################################################################

=head1 METHODS

=head2 brighter()

Return a brighter version of the present Color object.

    Usage: my $brighter = $color->brighter();

=cut

sub brighter {
    my $self = shift;
    my $r = $self->get_red();
    my $g = $self->get_green();
    my $b = $self->get_blue();

    my $factor = 0.7; 
    my $check = int (1.0/ (1.0 - $factor) );

    if ( ($r == 0) && ($g == 0) && ($b == 0) ){
	return $self->new($check, $check, $check);
    }

    if ( ($r > 0) && ($r < $check) ){ $r = $check; }
    if ( ($g > 0) && ($g < $check) ){ $g = $check; }
    if ( ($b > 0) && ($b < $check) ){ $b = $check; }

    # Function _min is defined in Pastel::Mixin::Mixin.pm
    # It returns the lower of the two value passed 

    my $newr = $self->_min( int(($r/$factor)), 255);
    my $newg = $self->_min( int(($g/$factor)), 255);
    my $newb = $self->_min( int(($b/$factor)), 255);

    return $self->new( $newr, $newg, $newb );
}


=head2 darker()

Return a darker version of the present color object.

 Usage: my $darker_color = $color->darker();

=cut

sub darker {
    my $self = shift;
    my $r = $self->get_red();
    my $g = $self->get_green();
    my $b = $self->get_blue();

    my $factor = 0.7;
    my $newr = $self->_max( int( $r * $factor), 0 );
    my $newg = $self->_max( int( $g * $factor), 0 );
    my $newb = $self->_max( int( $b * $factor), 0 );

    return $self->new( $newr, $newg, $newb);
}


=head2 black()

Return a color object "black".

 Usage: my $graphics->set_paint( Pastel::Color->black() );

=cut
  
sub black {

    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(0, 0, 0);
    return $self;

}    

=head2 blue()

Return a color object "blue"

 Usage: my $graphics->set_paint ( Pastel::Color->blue());

=cut

sub blue {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(0, 0, 255);
    return $self;

}

=head2 red()

Returns a color object "red".

 Usage: my $graphics->set_paint ( Pastel::Color->red());

=cut

sub red {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(255, 0, 0);
    return $self;

}

=head2 white()

Returns a color object "white".

 Usage: my $graphics->set_paint ( Pastel::Color->white());

=cut

sub white {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(255, 255, 255);
    return $self;

}

=head2 light_gray()

Returns a color object "light_gray".

 Usage: my $graphics->set_paint ( Pastel::Color->light_gray());

=cut

sub light_gray {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(192, 192, 192);
    return $self;

}

=head2 gray()

Returns a color object "gray".

 Usage: my $graphics->set_paint ( Pastel::Color->gray());

=cut

sub gray {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(128, 128, 128);
    return $self;

}

=head2 dark_gray()

Returns a color object "dark_gray".

 Usage: my $graphics->set_paint ( Pastel::Color->dark_gray());

=cut

sub dark_gray {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(64, 64, 64);
    return $self;

}


=head2 pink()

Returns a color object "pink".

 Usage: my $graphics->set_paint ( Pastel::Color->pink());

=cut

sub pink {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(255, 175, 175);
    return $self;

}

=head2 orange()

Returns a color object "red".

 Usage: my $graphics->set_paint ( Pastel::Color->orange());

=cut

sub orange {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(255, 200, 0);
    return $self;

}

=head2 yellow()

Returns a color object "yellow".

 Usage: my $graphics->set_paint ( Pastel::Color->yellow());

=cut

sub yellow {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(255, 255, 0);
    return $self;

}

=head2 green()

Returns a color object "green".

 Usage: my $graphics->set_paint ( Pastel::Color->green());

=cut

sub green {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(0, 255, 0);
    return $self;

}

=head2 magenta()

Returns a color object "magenta".

 Usage: my $graphics->set_paint ( Pastel::Color->magenta());

=cut

sub magenta {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(255, 0, 255);
    return $self;

}

=head2 cyan()

Returns a color object "cyan".

 Usage: my $graphics->set_paint ( Pastel::Color->cyan());

=cut

sub cyan {
    my $class = ref( $_[0]) || $_[0];
    my $self = {};
    bless $self, $class;
    $self->_init(0, 255, 255);
    return $self;

}

=head2 equals(Color $color)

Returns true if $color is equivalent to the present color. This method
compares the "red", "green", "blue" and the "alpha" value of the two colors
and return 1 if both are same or returns 0 if they are diffrent.

 Usage: my $color1 = Pastel::Color->new(255, 255, 255);
        my $white = Pastel::Color->white();
        print "They are same" if $color1->equals($white);

=cut

sub equals {
    my $self = shift;
    my $color = shift;

    if ( ($self->get_rgb() == $color->get_rgb()     ) &&
	 ($self->get_alpha() == $color->get_alpha() )
	) {
	      return 1;
	  }

    else {
	return 0;
    }
}


=head2 to_string()

Returns the string representation of the object.

 Usage: $color->to_string();

=cut

sub to_string {
    my $self =shift;
    return ref($self)."[r=".$self->get_red().",g=".$self->get_green().",b=".$self->get_blue()."]";
}

=head1 PRIVATE METHODS

=head2 to_svg()

Return the string Pastel coded form of this object. Called by any object with
style color.

=cut

sub to_svg {
  my $self =shift;
  $self->to_svg_stroke();
}
   
sub to_hex {
    my $self = shift;
     my $red = unpack ("H2", pack("I",$self->get_red()));
    my $green = unpack ("H2", pack("I",$self->get_green()));
    my $blue = unpack ("H2", pack("I",$self->get_blue()));
return "\#".$red.$green.$blue;
}

sub to_svg_fill {
   my $self = shift;
   my $red = unpack ("H2", pack("I",$self->get_red()));
   my $green = unpack ("H2", pack("I",$self->get_green()));
   my $blue = unpack ("H2", pack("I",$self->get_blue()));
   my $s = "fill:\#".$red.$green.$blue;
   if ($self->get_alpha()){
   $s .= ';'. "fill-opacity:". $self->get_alpha();
}
return $s;
}

sub to_svg_stroke {
 my $self = shift;
    my $red = unpack ("H2", pack("I",$self->get_red()));
    my $green = unpack ("H2", pack("I",$self->get_green()));
    my $blue = unpack ("H2", pack("I",$self->get_blue()));
    my $s = "stroke:\#".$red.$green.$blue;
if ($self->get_alpha()){
   $s .= ';'. "stroke-opacity:".$self->get_alpha();
}else {
    $s .= ';';
    }
return $s;
}


1;
