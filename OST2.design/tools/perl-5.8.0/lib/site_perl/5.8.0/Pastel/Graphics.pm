# $Id: Graphics.pm,v 1.13 2003/04/29 18:18:05 malay Exp $
# Perl module for Pastel::Graphics
# Author: Malay < curiouser@ccmb.res.in >
# Copyright (c) 2003 by Malay. All rights reserved.
# You may distribute this module under the same terms as perl itself

=head1 NAME

Pastel::Graphics - Graphics context.

=head1 SYNOPSIS

  use Pastel;

  my $graphics = Pastel::Graphics->new(...);
  $graphics->foo();
  $graphics->bar();

  $graphics->show(); #dump the graphics on STDOUT

     -or-

  my $string = $graphics->get_svg(); # get the graphic as string
  print $string;

=head1 DESCRIPTION

C<Pastel::Graphics> is the main workhorse of Pastel. It is equivalent to
Java Graphics2D class. Each program first has to create once instance
of this class, then call methods on this and lastly dump the whole
instance onto STDOUT or get it as string.

The class provides the graphics context in that it hold all the
necessary informations for drawing any graphics object correctly.

All styles like fonts, color and strokes are set into this class by
calling appropriate methods. Shapes and Strings are drawn by calling
C<draw()> and C<draw_string()> methods. For a tutorial introduction see
Pastel programming manual.

There are certain shortcut methods that are inbuilt into this
module. You can draw shapes without creating additional
objects. Notable among these classes of methods are C<draw_3D_rect()>
and C<draw_round_rect()> which are not availble from the
L<Pastel::Geometry::Rectangle> class.

=cut

package Pastel::Graphics;
@ISA = qw( Pastel::Mixin::Mixin);    # requires _rearrange() function
use strict;
use Carp;

my $_width  = "800";                 #Width of the SVG document
my $_height = "600";                 #Height of the SVG document

my $_dtd =
'<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20001102//EN" "http://www.w3.org/TR/2000/CR-SVG-20001102/DTD/svg-20001102.dtd">';

sub new {
    my $arg   = shift;
    my $class = ref($arg) || $arg;
    my $self  = {};
    bless $self, $class;

    $self->_init(@_);

    return $self;

}

=head1 CONSTRUCTOR

=head2 new()

Creates and returns a new C<Pastel::Graphics> object.

  Usage : $graphics = Pastel::Graphics->new(-width=>$w,
					       -height=>$h,
					       -DTD   =>$dtd );

   Args : $w  - Optional. Width of the SVG document in pixels. If not
                provided default is 800.
          $h  - Optional. Height of the SVG document in pixels. If not
                provided the default is 600.
         $dtd - Optional. DTD used for SVG document. You can pass your
                own DTD.

 Returns: Pastel::Graphics object

=cut

sub _init {

    my ( $self, @args ) = @_;

    my ( $w, $h, $dtd, $cgi ) =
      $self->_rearrange( [ "WIDTH", "HEIGHT", "DTD", "CGI" ], @args );

    $self->{width}  = defined($w)   ? $w   : $_width;
    $self->{height} = defined($h)   ? $h   : $_height;
    $self->{dtd}    = defined($dtd) ? $dtd : $_dtd;
    $self->{CGI}    = defined($cgi) ? $cgi : "true";
    $self->{_temp}   = "";                            # To store SVG elements
    $self->{_defs}   = "";                            # To store DEFS
    $self->{_writer} = $self->_initialize_writer();
    $self->{paint}   = undef;
    $self->{stroke}  = undef;
    $self->{defs}    = {};
}

=head1 METHODS


=head2 set_font()

Set the font for all the graphics object. Any string drawn using
C<draw_string()> after calling this method will be drawn using the
font presently set using this method. Note that
C<Pastel::Text::AttributedString> objects are immune to font
context. To set the font of C<Pastel::Text::AttributedString> you need
to set the font by setting it as attribute of the C<AttributedString>
object.

  Usage   : set_font($font)

  Args    : $font is a  Pastel::Font object. 

  Returns : Nothing. 

=cut

sub set_font {
    my ( $self, $arg ) = @_;
    $self->{"font"} = $arg;
    return $self;

    #   my ($self,%arg) = @_;
    #    if(defined ($arg{FAMILY})){$self->{FONT_FAMILY} = $arg{FAMILY};}
    #    if(defined ($arg{SIZE})){$self->{FONT_SIZE} = $arg{SIZE};}
    #    if(defined($arg{COLOR})){$self->{FONT_COLOR} = $arg{COLOR};}
    #    if(defined($arg{WEIGHT})){$self->{FONT_WEIGHT} = $arg{WEIGHT};}
    #    return $self;
}

sub set_fill_color {
    my $self = shift;
    $self->{COLOR} = shift;
    return $self;
}

=head2 set_paint()

Sets the color of the graphics context. Any drawing of shapes or text
will be carried out using the color presently set in the graphics
context. The color can be solid color of Pastel::Color object or a
gradient implementing Pastel::GradientI interface.

 Usage   : set_paint($color)
  
 Args    : $color is a Pastel::Color or Pastel::GradientI object.
  
 Returns : Nothing. 

=cut

sub set_paint {
    my $self = shift;
    $self->{paint} = $_[0];
}

=head2 set_stroke()

If the current graphics context has the stroke object set then all
further drawings will be stroked. The stroke color will be the current
color set using C<set_paint()> method. The swith off the stroking you
need to unset the stroke by calling this method without any argument.

Because stroking is done using the current color set in the graphics
context, to draw an object with both stroke and fill where the
stroke-color and the fill-color are different, you need to fill the
object first and set a different color before you draw the object. To
draw a rectangle with blue border and red fill you might do this:

             $g = Pastel::Graphics->new();
             $g->set_paint(Pastel::Color->red());
             $g->set_stroke( Pastel::BasicStroke->new(-width=>5) );
             my $rect = Pastel::Geometry::Rectangle(
						 -x=>20,-y=>30,
              					 -width=>100,-height=>150
						   );
             $g->fill($rect); # filled with red color
             $g->set_paint(Pastel::Color->blue());
             $g->draw($rect);

  Usage   : set_stroke($stroke) # set the stroke object
            set_stroke()        # unset stroking

  Args    : $stroke is a Pastel::BasicStroke object.
  
  Returns : Nothing. 

=cut

sub set_stroke {
    my $self = shift;
    my $arg  = shift;

    #print STDERR "******STROKE called\n";
    if ( defined($arg) ) {

        #print "Inside CLEAR\n";
        $self->{stroke} = $arg;
    }
    else {
        if ( defined( $self->{stroke} ) ) {
            $self->{stroke} = undef;
            return;
        }
    }

}


=head2 get_font()

Returns the current font object in the graphics context.

 Usage   : get_font();

 Args    : Nothing.

 Returns : Pastel::Font object. 

=cut


sub get_font {
    my $self = shift;
    if ( defined( $self->{font} ) ) {
        return $self->{font};
    }
    else {
        return undef;
    }
}


=head2 get_paint()

Returns the current paint object in the graphics context.

 Usage   : $g->get_paint()
  
 Args    : Nothing.
  
 Returns : Pastel::Color or object implementing Pastel::GradientI interface. 

=cut

sub get_paint {
    my $self = shift;
    if ( !defined( $self->{paint} ) ) {
        $self->{paint} = Pastel::Color->black();
    }
    return $self->{paint};
}

=head2 get_stroke()

Return the current stroke object in the graphics context. 

  Usage   :  get_stroke()

  Args    :  Nothing.

  Returns :  Pastel::BasicStroke object if stroke is set or undef if not set.

=cut

sub get_stroke {
    my $self = shift;
    if ( !defined( $self->{stroke} ) ) {

        #    $self->{stroke} = Pastel::BasicStroke->new(-width=>1);
        #    return $self->{stroke};
        return "";
    }
    else {
        return $self->{stroke};
    }
}

=head2 draw_rect()

Shortcut function to draw a rectangle without creating additional
object. The rectangle is stroked with the current C<BasicStroke>
object. If the C<BasicStroke> is not set then the rectangle is created
using an 1 pixel width line. The color of the line is determined by
the current paint.

  Usage   : draw_rect($x, $y, $width, $height)

  Args    : $x     - X coordinate of the top left corner vertice of rectangle.
            $y     - Y coordinate of the top left corner vertice of rectangle.
            $width - Width of the rectangle.
            $height- Height of the rectangle.

  Returns : Nothing. 

=cut

sub draw_rect {

    my $self = shift;
    my ( $x, $y, $width, $height ) =
      $self->_rearrange( [ "X", "Y", "WIDTH", "HEIGHT" ], @_ );
    my $color;
    if ( $self->get_paint()->isa("Pastel::Color") ) {
        $color = $self->get_paint()->to_svg_stroke();
    }
    else {
        $color = "stroke:url(" . $self->get_paint()->get_ref() . ');';
        $self->add_to_defs( $self->get_paint() );
    }
    my $stroke =
      $self->get_stroke()
      ? $self->get_stroke()
      : Pastel::BasicStroke->new();

    my $stroke_style = $stroke->to_svg();

    my $half_width = $stroke->get_line_width() / 2;
    $x      = $x + $half_width;
    $y      = $y + $half_width;
    $width  = $width - ( 2 * $half_width );
    $height = $height - ( 2 * $half_width );

    $self->{_temp} .= (
qq(<rect x="$x" y="$y" width="$width" height="$height" style="fill:none; $color$stroke_style" />)
    );

}

=head2 fill_rect()

Shortcut function to draw a filled rectangle without creating
additional objects. The rectangle is filled with the current paint in
the graphics context.

  Usage  : fill_rect($x, $y, $width, $height);

  Args   : $x     - X coordinate of the top left corner of the rectangle.
           $y     - Y coordinate of the top left corner of the rectangle.
           $width - Width of the rectangle in pixels.
           $height- Height of the rectangle in pixels.
    
 Returns  : Nothing

=cut

sub fill_rect {
    my $self = shift;

    # my $color = $self->get_paint()->to_svg_fill();
    my $color;
    if ( $self->get_paint()->isa("Pastel::Color") ) {
        $color = $self->get_paint()->to_svg_fill();
    }
    else {
        $color = "fill:url(" . $self->get_paint()->get_ref() . ')';
        $self->add_to_defs( $self->get_paint() );
    }

    my ( $x, $y, $width, $height ) =
      $self->_rearrange( [ "X", "Y", "WIDTH", "HEIGHT" ], @_ );
    $self->{_temp} .= (
qq(<rect x="$x" y="$y" width="$width" height="$height" style="$color;stroke:none"/>)
    );

}

=head2 draw_round_rect()

Shortcut fuction to draw open rectangle with rounded corners. The
rectangle is stroked with the current stroke if it is set. Otherwise
it is drawn with 1 pixel width line. The color is determined by the
current paint object.

  Usage : draw_round_rect($x, $y, $width, $height,
			 $arc_width, $arc_height);

   Args : $x          - X coordinate of the top left hand corner.
          $y          - Y coordinate of the top left hand corner.
          $width      - Width of the rectangle.
          $height     - Height of the rectangle.
          $arc_width  - Horizontal diameter of the arc at the four corners.
          $arc_height - vertical diameter of the arc at the four corners.

 Returns : Nothing

=cut

sub draw_round_rect {
    my ( $self, @args ) = @_;

    if ( @args < 6 ) {
        croak 'Missing parameter in Pastel::Graphics::draw_round_rect()!\n';
    }

    #my $paint  = $self->get_paint()->to_svg_stroke();
    my $paint;
    if ( $self->get_paint()->isa("Pastel::Color") ) {
        $paint = $self->get_paint()->to_svg_stroke();
    }
    else {
        $paint = "stroke:url(" . $self->get_paint()->get_ref() . ');';
        $self->add_to_defs( $self->get_paint() );
    }

    my $stroke =
      $self->get_stroke()
      ? $self->get_stroke()
      : Pastel::BasicStroke->new();

    my $half_width = $stroke->get_line_width() / 2;

    my $stroke_style = $stroke->to_svg();
    my $x            = $args[0] + $half_width;
    my $y            = $args[1] + $half_width;
    my $width        = $args[2] - ( 2 * $half_width );
    my $height       = $args[3] - ( 2 * $half_width );

    $self->{_temp} .=
qq(<rect x="$x" y="$y" width="$width" height="$height" rx="$args[4]" ry="$args[4]" style="fill:none;$paint$stroke_style" />);

}

=head2 draw_fill_round_rect()

Draws a filled rectangle with rounded corners. The rectangle is filled
with the current paint object in the graphics context.

  Usage : $g->draw_fill_round_rect($x, $y, $width, $height,
			      $arc_width, $arc_height);

   Args : $x          - X coordinate of the top left hand corner.
          $y          - Y coordinate of the top left hand corner.
          $width      - Width of the rectangle.
          $height     - Height of the rectangle.
          $arc_width  - Horizontal diameter of the arc at the four corners.
          $arc_height - vertical diameter of the arc at the four corners.


  Returns : Nothing

=cut

sub draw_fill_round_rect {
    my ( $self, @args ) = @_;

    if ( @args < 6 ) {
        croak 'Missing parameter in Pastel::Graphics::draw_fillround_rect()!\n';
    }

    # my $paint = $self->get_paint()->to_svg_fill();
    my $paint;
    if ( $self->get_paint()->isa("Pastel::Color") ) {
        $paint = $self->get_paint()->to_svg_fill();
    }
    else {
        $paint = "fill:url(" . $self->get_paint()->get_ref() . ')';
        $self->add_to_defs( $self->get_paint() );
    }

    # my $stroke = $self->get_stroke()->to_svg();

    $self->{_temp} .=
qq(<rect x="$args[0]" y="$args[1]" width="$args[2]" height="$args[3]" rx="$args[4]" ry="$args[4]" style="$paint" />);

}

=head2 draw_3D_rect()

Draws a highlighted 3D effect rectangle. 

  Usage   : $g->draw_3D_rect($x, $y, $width, $height, $raised, $bevel);

  Args    : $x - Top left corner X coordinate  of the rectangle.
            $y - Top left corner Y coordinate  of the rectangle.
            $width - Width of the rectangle.
            $height - Height of the rectangle.
            $raised - Optional. Takes value "true" or "false". Default "true". 
            $bevel  - Optional. Width of the bevel. Default 1.

  Returns : Nothing

=cut

sub draw_3D_rect {
    my ( $self, @args ) = @_;
    if ( @args < 4 ) {
        croak 'Missing parameter in Pastel::Graphics::draw_3D_rect()!\n';
    }
    my $raised;

    if ( $args[4] && ( $args[4] =~ /true/i ) ) {
        $raised = 1;
    }
    else {
        $raised = 0;
    }

    my $bevel = 1;
    if ( $args[5] ) {
        $bevel = $args[5];
    }
    my ( $x, $y, $width, $height ) = (@args);

    # print "***@args\n";
    my $before_color  = $self->get_paint();
    my $current_color = $before_color;

    if ( !$before_color->isa("Pastel::Color") ) {
        $current_color = Pastel::Color->black();
    }

    my $brighter = $current_color->brighter();
    my $darker   = $current_color->darker();

    my $s = "<path d=\"";
    $self->set_paint( $raised ? $brighter : $darker );

    $s .= "M" . $x . " " . $y;
    $s .= "L" . eval( $x + $width ) . " " . $y;
    $s .= "L" . eval( $x + $width - $bevel ) . " " . eval( $y + $bevel );
    $s .= "H" . eval( $x + $bevel );
    $s .= "V" . eval( $y + $height - $bevel );
    $s .= "L" . $x . " " . eval( $y + $height );
    $s .= "z" . "\" ";

    $s .= "style=\"" . $self->get_paint()->to_svg_fill() . "\" />";

    $self->set_paint( $raised ? $darker : $brighter );
    $s .= "<path d=\"";
    $s .= "M" . $x . " " . eval( $y + $height );
    $s .= "L" . eval( $x + $bevel ) . " " . eval( $y + $height - $bevel );
    $s .= "H" . eval( $x + $width - $bevel );
    $s .= "V" . eval( $y + $bevel );
    $s .= "L" . eval( $x + $width ) . " " . $y;
    $s .= "V" . eval( $y + $height );
    $s .= "z" . "\" style=\"" . $self->get_paint()->to_svg_fill() . "\" />";

    $self->_buffer_add($s);

    #    $self->fill_rect($x + $stroke_width, $y + $height - $stroke_width,
    #    $width -$stroke_width, $stroke_width); $self->fill_rect($x +
    #    $width - $stroke_width, $y , $stroke_width, $height);

    $self->set_paint($before_color);

    #    my $color  = $self->get_paint()->to_svg_stroke();
    #    my $width  = $self->get_stroke()->get_line_width();
    #    my $stroke = $self->get_stroke();
    #   $self->set_stroke( Pastel::BasicStroke->new( -width => 1 ) );
    #    if ($raised) {
    #        $self->set_paint( $self->get_paint()->brighter() );
    #        $self->draw_line( $args[0], $args[1], $args[0], $args[1] + $args[3] );
    #        $self->draw_line(
    #            $args[0] + 1,
    #            $args[1], $args[0] + $args[2] - 1,
    #            $args[1]
    #        );
    #        $self->set_paint( $self->get_paint()->darker() );
    #        $self->draw_line(
    #            $args[0] + 1,
    #            $args[1] + $args[3],
    #            $args[0] + $args[2],
    #            $args[1] + $args[3]
    #        );
    #        $self->draw_line(
    #            $args[0] + $args[2],
    #            $args[1],
    #            $args[0] + $args[2],
    #            $args[1] + $args[3] - 1
    #        );
    #    }
    #    else {

    #        # = $color->darker();
    #    }
    #    $self->set_paint($color);
    #    $self->set_stroke($stroke);

}

=head2 draw()

Draws a C<Pastel::Shape> object. The object is stroked using the current
stroke object in the graphics context using the current paint object
in the graphics context. The method works for any object which is a
subclass of C<Pastel::Shape>.

If you subclass Pastel::Shape. The child class must implement
C<get_shape()> method, which should return an instance of the graphics
primitive (classes in C<Pastel::Geometry>).

 Usage   : draw($shape)

 Args    : $shape - an object subclassed from Pastel::Shape. All the
                    classes in Pastel::Geometry are subclass of Pastel::Shape.

 Returns : Nothing

=cut

sub draw {
    my $self = shift;
    my $ob   = shift;
    my $data;
    my $shape = $ob;

    #if (defined ($self->{stroke}) ){
    #print "***********Stroke defined********\n";
    #my $stroke =  $self->{stroke};
    #my $stroked_ob = $stroke->create_stroked_shape($ob);
    #$data = $stroked_$ob->_draw($self);
    #}
    #else{
    if ( $ob->can("get_shape") ) {
        $shape = $ob->get_shape();
    }
    $data = $shape->_draw($self);

    #}

    $self->_buffer_add($data);
}

=head2 draw_string();

Draws the string supplied in the co-ordinates specified. Three types
of strings can be drawn using this method. Native perl strings can be
supplied which will be internally converted into suitable format. The
entities are automatically escaped. You can even pass perl unicode
strings directly into the method.

The methods also accepts C<Pastel::String> objects which are nothing
but an XML formatted container for the perl string.

In both these above cases the font in which the string will drawn is
the current font object in the graphics context. The strings will also
be stroked with the current stroke in the graphics context and it will
drawn in the current paint color. 

The method also accepts C<Pastel::Text::AttributedString> object. In
Java you pass an C<AttributedCharacterIterator> into this method. In
Pastel you pass the C<AttributedString> object
itself. C<AttributedString> object are immune to current graphics
context. If you want to change the stroke or color of the
C<AttributedString> do so in the directly in the object.

A major way in which C<Pastel> differs from C<Java2D> is that the
coordinates can be arrays of numbers each determining the coordinated
of each character in the string. See SVG specification for more
details.

  Usage : draw_string("perl string", $x, $y);
          draw_string("perl string", \@x, \@y);
          draw_string( $string,$x, $y);
          draw_string( $string, \@x, \@y);


  Args : The method takes 3 arguments. The first argument can be an
         object of type Pastel::String or a pure perl string or
         Pastel::Text::AttributedString. The string supplied is converted to
         XML form automatically. All character code above 126 is converted to
         "&xff;" form. "<", ">", "&" and other XML entities are automatically
         created.

         The second argument can be a single numerical value
         indicating the X cordinate of the first character of the
         string or the middle of the total length of the string or the
         last character depending on text anchoring. This argument
         also be a reference to an array indicating the X coordinates
         of successive characters in the string.

         The third argument can be a single numerical or a reference
         to an array of numericals indicating the Y coordinate of the
         baseline of the glyph used for drawing the font.

=cut

sub draw_string {
    my ( $self, @args ) = @_;
    my ( $string, $x, $y ) = $self->_rearrange( [ "TEXT", "X", "Y" ], @args );

    my $data = "";    #Holds the SVG string;

    unless ( ( defined($string) ) && ( defined($x) ) && ( defined($y) ) ) {
        print 'Error: Graphics::drawstring(): Argument missing', "\n";
        return;
    }

    if ( $string->isa("Pastel::Text::AttributedString") ) {

        #print STDERR "AttributedString supplied\n";
        $string->set_x($x);
        $string->set_y($y);
        $data = $string->to_svg();
    }

    # If $string is a string object calls its draw method
    elsif ( ref($string) =~ m/String/ ) {

        $string->set_x($x);
        $string->set_y($y);

        if ( defined( $self->{font} ) ) {    # If the graphics object has a font
                                             # First fontify it
            $string->set_font( $self->get_font() );
            $data = $string->draw($self);

        }
        else {
            $data = $string->draw($self);
        }
    }

    # If $string is a perl string, create a string object, fontify it
    # by passing it to the font object and then call its draw method
    else {
        my $string = Pastel::String->new($string);
        $string->set_x($x);
        $string->set_y($y);

        if ( defined( $self->{font} ) ) {    # If the graphics object has font

            # Set the font object of the String
            my $fontified = $string->set_font( $self->{font} );
            $data = $fontified->draw($self);
        }
        else {    # If the graphics object doesn't have font object set
            $data = $string->draw($self);    # Just call the draw method
        }
    }

    $self->_buffer_add($data);               # Add the data to the print buffer

}

=head2 show()

Dumps the graphics object as SVG on STDOUT.

 Usage   : show()
  
 Args    : Nothing.
  
 Returns : Nothing.

=cut

sub show {
    my $self   = shift;
    my $writer = $self->{_writer};
    $self->_print_header();
    $self->_print_svg_start();

    if ( %{ $self->{defs} } ) {
        $writer->print_svg('<defs>');

        #  for ( my $i = 0 ; $i < @{ $self->{defs} } ; $i++ ) {
        #            $writer->print_svg( ${ $self->{defs} }[$i]->to_svg() );
        #        }
        $writer->print_svg( $self->_get_defs() );
        $writer->print_svg('</defs>');
    }

    $writer->print_svg( $self->{_temp} );
    $self->_print_footer();
}


sub fill {
    my $self = shift;

    my $shape = shift;

    if ( !$shape->isa("Pastel::Shape") ) {
        croak 'Error: Only a shape can be filled by Pastel::Graphics->fill()';
    }

    $shape->set_fill( $self->get_paint() );
}

sub add_to_defs {
    my $self   = shift;
    my $object = shift;

    # ${ $self->{defs} }[ @{ $self->{defs} } ] = $object;
    # to keep only the unique element we just add the object with an id
    my $id = $object->get_id();
    $self->{defs}->{id} = $object;
}

sub _get_defs {
    my $self = shift;
    my $s    = "";
    if ( %{ $self->{defs} } ) {
        foreach my $key ( keys %{ $self->{defs} } ) {
            $s .= $self->{defs}->{$key}->to_svg();
        }
    }
    return $s;
}

sub get_svg {
    my $self = shift;
    my $s    = '<?xml version="1.0" encoding="iso-8859-1"?>';
    $s .= "\n" . $self->{dtd} . "\n";
    $s .= "<svg width=\""
      . $self->{width}
      . "\" height=\""
      . $self->{height} . "\">";
    if ( %{ $self->{defs} } ) {
        $s .= "\n" . '<defs>' . "\n";

        #  for ( my $i = 0 ; $i < @{ $self->{defs} } ; $i++ ) {
        #            $s .= ${ $self->{defs} }[$i]->to_svg();
        #        }
        $s .= $self->_get_defs();
        $s .= "\n" . '</defs>' . "\n";
    }
    $s .= $self->{_temp};
    $s .= "\n" . '</svg>';
    return $s;
}

sub draw_polyline {
    my @args = @_;
    my $self = $args[0];
    my @x    = @{ $args[1] };
    my @y    = @{ $args[2] };

    my $s = '<polyline style="fill:none; ';
    $s .= $self->get_paint()->to_svg() . " ";
    if ( $self->get_stroke() ) {
        $s .= $self->get_stroke()->to_svg() . "\" ";
    }
    else {
        $s .= Pastel::BasicStroke()->to_svg() . "\" ";
    }
    $s .= 'points="';

    for ( my $i = 0 ; $i < @x ; $i++ ) {
        $s .= $x[$i] . "," . $y[$i];
        if ( $i != ( scalar(@x) - 1 ) ) {
            $s .= " ";
        }
    }

    #  my $s .= '<path style="fill:none; ';
    #  $s .= $self->get_paint()->to_svg();
    #  $s .= " ".$self->get_stroke()->to_svg()."\" ";
    #  $s .= 'd="M'.$x[0].",".$y[0]." ";
    #  for ( my $i=0; $i < @x; $i++){
    #    $s .= "L".$x[$i].",".$y[$i];
    #    if( $i != (scalar(@x) - 1)){
    #      $s .=" ";
    #    }
    #  }

    $s .= '" />';
    $self->{_temp} .= $s . "\n";
}

sub draw_line {
    my ( $self, @args ) = @_;
    if ( @args < 4 ) {
        croak "Missing parameters in Pastel::Graphics::draw_line()!\n";
    }
    my $color  = $self->get_paint()->to_svg_stroke();
    my $stroke = $self->get_stroke()->to_svg();
    $self->{_temp} .=
qq(<line x1="$args[0]" y1="$args[1]" x2="$args[2]" y2="$args[3]" style="fill:none; $color $stroke" />);
}

sub draw_oval {
    my ( $self, @args ) = @_;
    if ( @args < 4 ) {
        croak "Missing parameters in Pastel::Graphics::draw_line()!\n";
    }
    my $color  = $self->get_paint()->to_svg_stroke();
    my $stroke = $self->get_stroke()->to_svg();

    my $cx = $args[0] + ( $args[2] / 2 );
    my $cy = $args[1] + ( $args[3] / 2 );
    my $rx = $args[2] / 2;
    my $ry = $args[3] / 2;
    $self->{_temp} .=
qq(<ellipse cx="$cx" cy="$cy" rx="$rx" ry="$ry" style="fill:none; $color $stroke" />);
}

sub fill_oval {
    my ( $self, @args ) = @_;
    if ( @args < 4 ) {
        croak "Missing parameters in Pastel::Graphics::draw_line()!\n";
    }
    my $color  = $self->get_paint()->to_svg_fill();
    my $stroke = $self->get_stroke()->to_svg();

    my $cx = $args[0] + ( $args[2] / 2 );
    my $cy = $args[1] + ( $args[3] / 2 );
    my $rx = $args[2] / 2;
    my $ry = $args[3] / 2;
    $self->{_temp} .=
qq(<ellipse cx="$cx" cy="$cy" rx="$rx" ry="$ry" style="$color $stroke" />);
}

sub get_height {
    return $_[0]->{height};
}

sub set_height {
    if ( $_[1] ) { $_[0]->{height} = $_[1]; }
}

sub get_width {
    return $_[0]->{width};
}

sub set_width {
    if ( $_[1] ) { $_[0]->{width} = $_[1]; }
}

sub _buffer_add {
    my $self = shift;
    my $s    = shift;
    $self->{_temp} .= $s;
}

sub _initialize_writer {
    my $self   = shift;
    my $writer = Pastel::Tools::Writer->new();
    return $writer;
}

sub _print_header {
    my $self = shift;
    $self->{_writer}->print_svg('<?xml version="1.0" encoding="iso-8859-1"?>');
    $self->{_writer}->print_svg( $self->{dtd} );
}

sub _print_footer {
    my $self = shift;
    $self->{_writer}->print_svg("</svg>");
}

sub _print_svg_start {
    my $self = shift;
    $self->{_writer}->print_svg( "<svg width=\""
          . $self->{width}
          . "\" height=\""
          . $self->{height}
          . "\">" );
}

sub message_err {
    my $self    = shift;
    my $message = shift;
    if ( ( $self->{DEBUG} =~ /^true$/i ) && ( $self->{CGI} ne "true" ) ) {
        my $fh = $self->{ERROR_HANDLE};
        print $fh "ERROR: $message\n";
    }
}

=head1 SEE ALSO


=head1 COPYRIGHTS

Copyright (c) 2003 by Malay <curiouser@ccmb.res.in>. All rights reserved.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut

1;

