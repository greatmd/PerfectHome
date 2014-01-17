# Perl module for Pastel::Attribute.pm
# Author: Malay < curiouser@ccmb.res.in>
# Copyright Malay
# You may distribute this module under the same terms as perl itself

# POD documentation - main docs before the code

=head1 NAME

Pastel::Attribute.pm - Root attribute object of Pastel. For internal use. Don't use it directly.

=head1 SYNOPSIS

  my $stroke_object = Pastel::BasicStroke->new();
  my $att = Pastel::Attribute->new(-type=>STROKE,-object=>$stroke_object);
  my $att1 = Pastel::Attribute->new(STROKE, $stroke_object);

=head1 DESCRIPTION

Pastel::Attribute wraps the key/value pair of a graphics element. It automaticslly returns the required representation (for SVG a string in the form of "key:value"), when a method is called. There are two subclasses of this class: Pastel::ShapeAttribute, and Pastel::TextAttribute.

=head1 CONTACT

Malay <curiouser@ccmb.ap.nic.in>

=cut
# Let the code begin...

package Pastel::Attribute;
our @ISA = qw(Pastel::Root);
use Pastel::Root;
use strict;

=head1 CONSTRUCTOR

=head2 new()

 Usage: $ae = Pastel::Attribute->new( -type=>"TYPE", -object=>$object);
              or,
              Pastel::Attribute->new( "TYPE", $object); 
              
 Returns: A Pastel::Attribute object.

 Arguments: TYPE is a keyword representing the type of the $object. For a Pastel::Shape object, the valid types and the corresponding classes are: 
               STROKE       - Pastel::BasicStroke 
               FILL         - Pastel::Color 
               STROKE-COLOR - Pastel::Color
               TRANSFORM    - Pastel::AffineTransform
=cut

sub _init {
    my ( $self, @args ) = @_;
    my ($type, $object) = $self->_rearrange(['TYPE','OBJECT'], @args);
    if (defined($type) && defined ($object)){ 
    $self->{key}   = $type;
    $self->{value} = $object;
    return $self;
  }
}

=head2 equals()

 Usage: $ae = Pastel::Attribute->new("STROKE",Pastel::BasicStroke->new());
        $ae->equals($ae);
Function: Compares two Pastel::Attribute object
 Returns: Returns true if they are equal or returns undef otherwise
 Arguments: Pastel::Attribute object;

=cut

sub equals {
    my ( $self, $object ) = @_;
    if ( !$object->isa("Pastel::Attribute") ) {
        return 0;
    }
    elsif (!( $self->to_svg() eq $object->to_svg()  ))
    {
        return undef;
    }
    else {
        return 1;
    }
}



sub get_key {
    my $self = shift;
    return $self->{key};
}

=head2 get_type()

 Usage: 
 Function:
 Example:
 Returns: 
 Arguments

=cut

sub get_type{
  return $_[0]->get_key();
}


sub get_value {
    my $self = shift;
    return $self->{value};
}

sub to_svg {
  my $self = shift;
  # check whether the value stored is an object
  if ( $self->get_value() =~ /=HASH/ ){
    #print STDERR "***Iinside***\n";
    return $self->get_value()->to_svg(); # return just the string
  } else {
    return lc( $self->get_key() ).':'.$self->get_value();
  } 
}


1;
