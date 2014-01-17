# $Id: AttributedString.pm,v 1.9 2003/04/29 18:18:06 malay Exp $ Perl
# module for Pastel::Text::AttributedString
# Author: Malay < curiouser@ccmb.res.in >
# Copyright (c) 2003 Malay K Basu
# You may distribute this module under the same terms as perl itself

=head1 NAME

Pastel::Text::AttributedString - For drawing text with attributes.

=head1 SYNOPSIS
  
  $as = Pastel::Text::AttributedString->new(-text=>"Some text");

  # create a font object
  $font = Pastel::Font->new(-family=>"Arial", -style=>"bold", -size=>14);

  # create a hash containing font
  $att{FONT} = $font;
  $att{X}    = 100;
  $att{Y}    = 200;


  $as1 = Pastel:: Text::AttributedString->new(-text=>"Some text",
					      -attributes=> \%att);

  my $g = Pastel::Graphics->new();

  # draw both the string
  $g->draw_string($as, 10, 20);

  # no x and y coordinates. Remember, we created the hash containing
  # coordinates
  $g->draw_string($as1);

  # set some attributes to $as. 
  $as->add_attribute("COLOR", Pastel::Color->red, 0, 3);

  # draw the sting now
  $g->draw_string($as, 200, 300);


=head1 DESCRIPTION

SVG "tspan" elements are supported by this module. Unlike
AttributedString class in Java, you do not pass
AttributedCharacterIterator to the graphics context. But pass the
AttributedString class itself.

The following text attributes are defined and can be used with this module-


  FONT          A Pastel::Font object
  
  FAMILY        A string describing the family name of the font. If the
                FONT attibute is already set then this attribute is ignored.
                Should not be a composite of more than one attributes. e.g.
                "Arial" is a valid attibute value but "Arial-Bold" is not.

  POSTURE       REGULAR or OBLIQUE or ITALIC

  WEIGHT        REGULAR or BOLD. Default REGULAR.

  SIZE          Point size.

  COLOR         Pastel::Color object.

  UNDERLINE     ON

  STRIKETHROUGH ON

  ANCHOR        START or MIDDLE or END

  STROKE_WIDTH  Numeric value denoting stroke-width in pixels

  STROKE_COLOR  Pastel::Color object

  ROTATE        Numeric value indicating the rotation of the glyph


Note that X and Y coordinates are not valid attributes.

Each AttributedString class contains the C<root> attribute, which is
applied to the whole string. The are three ways to put this root
attributes: (1) pass the attributes as hash in the construtor; (2) use
the C<add_attribute()> method with only the first two arguments; (3)
use C<add_attribute()> method with the first index 0 and the last
index equals to the length of the whole string.

In addition to the C<root> element the AttributedString contains
several C<"runs">. Each run is represented by a single C<<tspan>> element.


=head1 CONSTRUCTOR

=head2 Pastel::Text::AttributedString->new(-text=>$string)

Creates and returns an AttributedString object with no attributes defined.

=head2 Pastel::Text::AttributedString->new(-text=>$string, -attributes=>\%att);

Creates and returns an AttributedString object with attributes defined
for the whole string.%att is a hash containing the attributes in key
value pairs.

=cut

package Pastel::Text::AttributedString;

@ISA = qw(Pastel::String Pastel::Mixin::Mixin);

use Carp;
use strict;

#use Pastel::Mixin::Mixin;
#use Pastel::Text;

sub new {
    my $class = shift;

    # Fields

    my $self = {
        string          => "",    # to hold the string value
        runcount        => 0,     # Total number of runs
        string_length   => 0,
        run_start_index => [],    # holds the beginning index of each run
        run_end_index   => [],    # holds the end index of each run
        attributes      => [],
        root_attribute  => {},
        valid_keys      => [
            "FONT",   "FAMILY",       "POSTURE",      "WEIGHT",
            "SIZE",   "COLOR",        "UNDERLINE",    "STRIKETHROUGH",
            "ANCHOR", "STROKE_WIDTH", "STROKE_COLOR", "X",
            "Y",      "MULTI_X",      "MULTI_Y",      "ROTATE"
        ]
    };
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
    my ( $self, @args ) = @_;

    if ( @args < 1 || @args > 4 ) {
        croak "***Illegal parameters in Pastel::Text::AttributedString!\n";
    }

    my ( $string, $attributes ) =
      $self->_rearrange( [ "TEXT", "ATTRIBUTES" ], @args );

    if ( defined($string) ) {
        $self->{string}        = $string;
        $self->{string_length} = length $string;

    }
    else {
        croak "Illegal parameter in Pastel::Text::AttributedString!\n";
    }

    if ( defined($attributes) ) {
        my (@attribute);

        #print STDERR "Map supplied", "\n";
        # Loop through the hash
        foreach my $key ( keys %{$attributes} ) {
            if ( $self->_valid_key($key) ) {
                push @attribute, $key, ${$attributes}{$key};
            }
        }

        $self->_add_to_root_attribute(@attribute);
    }

    return $self;
}

=head1 METHODS

=cut

sub add_attribute {
    my $self      = shift;
    my @args      = @_;
    my $max_index = $self->{string_length} - 1;

    #my (@attributes) = $self->_get_attribute( $args[0], $args[1] );

    unless ( $self->_valid_key( $args[0] ) ) {
        croak "Illegal Key in
    Pastel::Text::AttributedString::add_attribute!\n";
    }

    if ( @args < 2 || @args > 4 ) {
        croak "Illegal parameter in
    Pastel:Text:AttributedString::add_attribute!\n";

    }

    if ( @args == 2 ) {

        $self->_add_to_root_attribute( $args[0], $args[1] );

        #print STDERR %{$self->{root_attribute}}, "\n";

    }
    elsif ( scalar(@args) == 4 ) {

        #print STDERR "$args[2], $args[3]","\n";

        if ( $args[2] > $args[3] ) {
            croak "Error in
        Pastel::Text::AttributedString::add_attribute\nBegin Index
        should be lesser than End Index!\n";
        }

        elsif ($args[2] < 0
            || $args[2] > $max_index
            || $args[3] < 0
            || $args[3] > $max_index )
        {
            croak
"Out of range index in Pastel::Text::AttributedSring::add_attribut!\n";

        }

        # check whether the attributes cover the whole string
        elsif ( $args[2] == 0 && $args[3] == $max_index ) {

            #my (@attributes) = $self->_get_attribute($args[0], $args[1]);
            $self->_add_to_root_attribute( $args[0], $args[1] );
            return;

        }

        elsif ( $self->{runcount} == 0 ) {

            #print STDERR "****Runcount 0\n";
            $self->_create_new_run(@args);

        }

        else {

            $self->_break_run(@args);

        }
    }    # parameter 4
}

sub to_svg {
    my $self = shift;

    my $s = "<text x=\"" . $self->get_x() . '" y="' . $self->get_y() . '"';

    # we need to split the string to get splices
    my (@string) = split ( //, $self->{string} );

    #my (@root_attr) = $self->_get_root_attributes();
    #print STDERR "to_svg: @root_attr\n";
    # _get_root_attributes() will return undef if there is no root attribute
    if ( $self->_get_root_attributes() ) {

        #if ( $self->_get_root_attributes()) {
        #print STDERR "***to_svg: root attribute present\n";
        my (@root_attr) = $self->_get_root_attributes();
        $s .= " style=\"";
        $s .= $self->_get_attributes_as_style(@root_attr);
        $s .= "\"";
    }
    $s .= '>';

    # do we have any attribute set at all?
    if ( $self->{runcount} > 0 ) {

        # loop through each run and add it as <tspan>
        for ( my $i = 0 ; $i < $self->{runcount} ; $i++ ) {

            if ( $self->_get_run_attributes_as_array($i) ) {
                my (@run_attributes) = $self->_get_run_attributes_as_array($i);
                $s .= "<tspan style=\"";
                $s .= $self->_get_attributes_as_style(@run_attributes);
                $s .= '">';
            }

            #print STDERR "***", ${ $self->{run_start_index} }[$i], ${ $self->{run_end_index}}[$i], "\n";
            #print STDERR "***", @string[1..3], "\n";

            my $text = join "", @string[ ${ $self->{run_start_index} }[$i]
              .. ${ $self->{run_end_index} }[$i] ];

            #  if ( ${ $self->{attributes} }[$i] ) {
            #                $s .= '">';
            #            }
            # convert the xml entities
            $s .= $self->xml($text);

            if ( ${ $self->{attributes} }[$i] ) {
                $s .= '</tspan>';
            }

        }
    }
    else { $s .= $self->{string}; }

    $s .= '</text>';

    #print STDERR "to_svg: $s\n";
    return $s;
}

=head1 PRIVATE METHODS

=head2 _create_new_run($key, $value, $start, $end)

If there is no run present this method actually creates a new run. Should be called when $self->{runcount} = 0.

 Returns  : Nothing.
 Arguments: Same as add_attribute()

=cut

sub _create_new_run {
    my ( $self, @args ) = @_;
    my $max_index = $self->{string_length} - 1;

    my (%attrib) = ( $args[0], $args[1] );

    if ( ( $args[2] > 0 ) && $args[3] < $max_index ) {

        #print STDERR "****Inside range\n";

        #print STDERR "*** Attributes@attributes\n";

        push @{ $self->{run_start_index} }, 0, $args[2], $args[3] + 1;
        push @{ $self->{run_end_index} }, $args[2] - 1, $args[3], $max_index;
        push @{ $self->{attributes} }, "", \%attrib, "";
        $self->{runcount} += 3;

        return;
    }
    elsif ( $args[2] == 0 && $args[3] < $max_index ) {
        push @{ $self->{run_start_index} }, $args[2], $args[3] + 1;
        push @{ $self->{run_end_index} },   $args[3], $max_index;
        push @{ $self->{attributes} }, \%attrib, "";
        $self->{runcount} += 2;
    }
    elsif ( $args[2] > 0 && $args[3] == $max_index ) {

        #print STDERR "***Run extends to the end\n";

        push @{ $self->{run_start_index} }, 0, $args[2];
        push @{ $self->{run_end_index} }, $args[2] - 1, $max_index;
        push @{ $self->{attributes} }, "", \%attrib;
        $self->{runcount} += 2;
    }

}

=head2 _break_run()

Describe your function here

 Returns  : 
 Arguments: 

=cut

sub _break_run {
    my ( $self, @args ) = @_;
    my @new_start;
    my @new_end;
    my @new_attrib;
    my $new_count;
    my $run_start_index = $self->_which_run( $args[2] );
    my (@attributes) = ( $args[0], $args[1] );

    if ( $run_start_index != 0 ) {    # if not in the first run

        # fill up the new array with the data upto this point
        for ( my $i = 0 ; $i < $run_start_index ; $i++ ) {

            push ( @new_start,  $self->_get_run_start($i) );
            push ( @new_end,    $self->_get_run_end($i) );
            push ( @new_attrib, ${ $self->{attributes} }[$i] );

        }

    }

    my $begin_offset = $args[2];

    for ( my $i = $run_start_index ; $i < $self->{runcount} ; $i++ ) {

        my $begin_index = $self->_get_run_start($i);
        my $end_index   = $self->_get_run_end($i);

        if ( $begin_index > $args[3] ) {
            push ( @new_start,  $begin_index );
            push ( @new_end,    $end_index );
            push ( @new_attrib, ${ $self->{attributes} }[$i] );

        }
        elsif ($begin_index == $begin_offset
            && $end_index <= $args[3] )
        {
            push ( @new_start, $begin_index );
            push ( @new_end,   $end_index );
            push ( @new_attrib,
                $self->_get_spliced_attributes( $i, @attributes ) );

            #print STDERR "***Inside\n";

            # update the begin offset to start of the next run
            if ( defined $self->_get_run_start( $i + 1 ) ) {
                $begin_offset = $self->_get_run_start( $i + 1 );

                #print STDERR "Begin offset: $begin_offset\n";

            }

        }
        elsif ($begin_index == $begin_offset
            && $end_index > $args[3] )
        {
            push ( @new_start, $begin_index, $args[3] + 1 );
            push ( @new_end, $args[3], $end_index );
            push ( @new_attrib,
                $self->_get_spliced_attributes( $i, @attributes ) );
            push ( @new_attrib, ${ $self->{attributes} }[$i] );

        }
        elsif ($begin_index < $begin_offset
            && $end_index > $args[3] )
        {
            push ( @new_start, $begin_index, $begin_offset, $args[3] + 1 );
            push ( @new_end, $begin_offset - 1, $args[3], $end_index );
            push ( @new_attrib, ${ $self->{attributes} }[$i] );
            push ( @new_attrib,
                $self->_get_spliced_attributes( $i, @attributes ) );
            push ( @new_attrib, ${ $self->{attributes} }[$i] );

        }
        elsif ($begin_index < $begin_offset
            && $end_index <= $args[3] )
        {
            push ( @new_start, $begin_index, $begin_offset );
            push ( @new_end, $begin_offset - 1, $end_index );
            push ( @new_attrib, ${ $self->{attributes} }[$i] );
            push ( @new_attrib,
                $self->_get_spliced_attributes( $i, @attributes ) );

            if ( defined $self->_get_run_start( $i + 1 ) ) {
                $begin_offset = $self->_get_run_start( $i + 1 );

            }

        }

        #print STDERR "***Runcount: $self->{runcount}","\n";
    }    #for loop

    $self->{run_start_index} = \@new_start;
    $self->{run_end_index}   = \@new_end;
    $self->{attributes}      = \@new_attrib;
    $self->{runcount}        = @new_start;

    #print STDERR "New start: @new_start\n";
    #print STDERR "New end : @new_end\n";
    #print STDERR "@new_attrib\n";

}

#sub _check_attribute {
#    my $self = shift;
#    my @args = @_;

#    if ($args[0] ne "FONT" &&
#        $args[0] ne "FAMILY" &&
#	$args[0] ne "POSTURE" &&
#        $args[0] ne "WEIGHT"  &&
#	$args[0] ne "SIZE" &&
#	$args[0] ne "COLOR" &&
#	$args[0] ne "UNDERLINE" &&
#	$args[0] ne "STRIKETHROUGH" &&
#	$args[0] ne "ANCHOR"  &&
#	$args[0] ne "STROKE_WIDTH" &&
#	$args[0] ne "STROKE_COLOR"
#       ){
#	croak "Illegal parameter in Pastel::AttributedString::_check_attribute!\n";

#    }else {
#	return 1;

#    }
#}

sub _get_attribute {
    my $self = shift;
    my ( $key, $value ) = @_;

    #print STDERR "get_attribute: $key, $value\n";

    my @return_array;

    if ( $key eq "FONT" ) {
        push @return_array, "font-family";
        push @return_array, $value->get_family();

        if ( $value->get_style() eq "bold" ) {

            push @return_array, "font-weight";
            push @return_array, "bold";

        }
        elsif ( $value->get_style() eq "bolditalic" ) {
            push @return_array, "font-weight", "bold", "font-style", "italic";
        }
        elsif ( $value->get_style() eq "italic" ) {
            push @return_array, "font-style", "italic";

        }
	my $fs = $value->get_size()."pt";
        push @return_array, "font-size", $fs;

    }
    elsif ( $key eq "COLOR" ) {
        push @return_array, "fill", $value->to_hex();
        if ( $value->get_alpha() ) {
            push @return_array, "fill-opacity", $value->get_alpha();

        }
    }
    elsif ( $key eq "FAMILY" ) {
        push @return_array, "font-family", $value;
        ##print STDERR "Entered test\n";

    }
    elsif ( $key eq "POSTURE" ) {
        if ( $value eq "ITALIC" ) {
            push @return_array, "font-style", "italic";

        }
        if ( $value eq "OBLIQUE" ) {
            push @return_array, "font-style", "oblique";

        }

    }
    elsif ( $key eq "WEIGHT" ) {
        if ( $value eq "BOLD" ) {
            push @return_array, "font-weight", "bold";

        }
    }
    elsif ( $key eq "SIZE" ) {
        push @return_array, "font-size", $value;

    }
    elsif ( $key eq "UNDERLINE" ) {
        push @return_array, "text-decoration", "underline";

    }
    elsif ( $key eq "STRIKETHROUGH" ) {
        push @return_array, "text-decoration", "line-through";

    }
    elsif ( $key eq "STROKE_COLOR" ) {
        push @return_array, "stroke", $value->to_hex();
        if ( $value->get_alpha() ) {
            push @return_array, "stroke-opacity", $value->get_alpha();

        }
    }
    elsif ( $key eq "STROKE_WIDTH" ) {
        push @return_array, "stroke-width", $value;

    }
    elsif ( $key eq "ANCHOR" ) {
        push @return_array, "text-anchor", lc($value);

    }

    # elsif ( $key eq "X" ) {
    #        push @return_array, "x", $value;
    #    }
    #    elsif ( $key eq "Y" ) {
    #        push @return_array, "y", $value;

    #   }
    #    elsif ( $key eq "MULTI_X" ) {
    #        push @return_array, "x", $value;

    #    }
    #    elsif ( $key eq "MULTI_Y" ) {
    #        push @return_array, "y", $value;

    #    }
    elsif ( $key eq "ROTATE" ) {
        push @return_array, "rotate", $value;

    }

    #   elsif ( $key eq "DX" ) {
    #        push @return_array, "dx", $value;

    #    }
    #    elsif ( $key eq "DY" ) {
    #        push @return_array, "dy", $value;

    #    }
    #    elsif ( $key eq "MULTI_DX" ) {
    #        push @return_array, "dx", $value;

    #    }
    #    elsif ( $key eq "MULTI_DY" ) {
    #        push @return_array, "dy", $value;

    #    }
    #print STDERR "get_attribute:@return_array\n";
    return @return_array;

}

sub _add_to_root_attribute {
    my $self       = shift;
    my @attributes = @_;

    #print STDERR "***@attributes\n";

    #my (%root_attribute) = (%{ $self->{root_attribute} });

    for ( my $i = 0 ; $i < @attributes ; $i += 2 ) {
        ${ $self->{root_attribute} }{ $attributes[$i] } = $attributes[ $i + 1 ];
        ##print STDERR "Inside loop\n";

    }

    #$self->{root_attribute} = \%root_attribute;
    #my (@array) = (%{$self->{root_attribure}});
    #print STDERR "add_to_root:@array\n"; 
}

sub _which_run {
    my $self  = shift;
    my $index = shift;

    for ( my $i = 0 ; $i < $self->{runcount} ; $i++ ) {
        if (   $index >= ${ $self->{run_start_index} }[$i]
            && $index <= ${ $self->{run_end_index} }[$i] )
        {
            return $i;

        }
    }
}

sub _is_inside {
    my $self = shift;
    my ( $run, $index ) = @_;
    if (   $index >= ${ $self->{run_start_index} }[$run]
        && $index <= ${ $self->{run_end_index} }[$run] )
    {
        return 1;

    }
    else {
        return undef;

    }

}

sub _get_run_start {

    my $self  = shift;
    my $index = shift;
    if ( $index < $self->{runcount} ) {

        return ${ $self->{run_start_index} }[$index];
    }
    else {
        return undef;

    }
}

sub _get_run_end {
    my $self  = shift;
    my $index = shift;
    return ${ $self->{run_end_index} }[$index];

}

sub _get_root_attributes {

    my $self = shift;

    if ( %{ $self->{root_attribute} } ) {

        #print STDERR "get_root_attributes:***Root attribute present\n";
        #print STDERR %{$self->{root_attributes}}, "\n";
        #my %attribute_hash = %{$self->{root_attributes}};
        my @array;

        foreach my $key ( keys %{ $self->{root_attribute} } ) {

            #print STDERR "get_root_attributes: inside foreach loop\n";
            #print STDERR "get_root_attributes: $key:".${$self->{root_attribute}}{$key}."\n";
            push @array,
              $self->_get_attribute( $key, ${ $self->{root_attribute} }{$key} );

        }

        #print STDERR "get_root_attributes: @array", "\n";
        return @array;

    }
    else { return undef }

}

sub _get_run_attributes {
    my $self  = shift;
    my $index = shift;
    my @array;

    if ( ${ $self->{attributes} }[$index] ) {

        my %attribute_hash = %{ ${ $self->{attributes} }[$index] };

        foreach my $key ( keys %attribute_hash ) {

            push @array, $self->_get_attribute( $key, $attribute_hash{$key} );

        }

        my (%array) = (@array);
        return \%array;
    }
    else { return undef; }

}

sub _get_run_attributes_as_array {
    my $self  = shift;
    my $index = shift;
    my $att   = $self->_get_run_attributes($index);
    my @a;
    if ($att) {

        foreach my $key ( keys %{$att} ) {
            push @a, $key, ${$att}{$key};

        }
        return @a;

    }
    else {
        return undef;

    }
}

sub _get_spliced_attributes {

    my $self  = shift;
    my $index = shift;
    my (@new_attributes) = @_;
    my (%new_hash);

    #print STDERR "***Inside splice $index\n";
    if ( ${ $self->{attributes} }[$index] ) {

        #print STDERR "***Inside splice $index\n";
        (%new_hash) = ( %{ ${ $self->{attributes} }[$index] } );
    }

    for ( my $i = 0 ; $i < @new_attributes ; $i += 2 ) {
        $new_hash{ $new_attributes[$i] } = $new_attributes[ $i + 1 ];

    }

    return \%new_hash;

    #      foreach my $key (keys %new_hash){
    #	  print STDERR "***Hash key: ".$key.":".$new_hash{$key}."\n"; 
    #      }

}

=head2 _valid_key($string)

Validate the string whether it is a legal C<key> or not. The function
loops through the array in C<valid_keys> attribute and returns true,
if it is present or false it it is not.

 Returns  : 1 if $string is a valid key or return C<undef>.
 Arguments: A string.

=cut

sub _valid_key {
    my ( $self, $string ) = @_;

    my $return = undef;

    foreach my $key ( @{ $self->{valid_keys} } ) {
        if ( $key eq $string ) {
            $return = 1;
            last;

        }
    }

    return $return;
}

=head2 _get_attributes_as_style()

Describe your function here

 Returns  : 
 Arguments: 

=cut

sub _get_attributes_as_style {

    my ( $self, @args ) = @_;
    my $s = "";

    #print STDERR "@args\n";
    for ( my $i = 0 ; $i < @args ; $i += 2 ) {
        $s .= $args[$i] . ':' . $args[ $i + 1 ];
        if ( $i < ( @args - 2 ) ) {
            $s .= ';';

        }
    }

    return $s;

}

=head1 CONTACT

Malay <curiouser@ccmb.res.in>

=cut

1;
