package Pastel::String;
use Pastel::Mixin::Mixin;

@ISA = qw( Pastel::Mixin::Mixin);

use strict;

sub new
{
    my $arg = shift;
    my $class = ref($arg) || $arg;
    my $self = {};

    bless $self, $class;
    $self->_init(@_);
   
    return $self;

}

sub _init {
    my ($self, @args) = @_;

    my $string = $args[0];
    my $xml_string = $self->xml($string);
    $self->{xml_string} = $xml_string;
    return $self;
}

sub xml {
    my ($self, $arg) = @_;
    my $xml = "";
    #Split the string data into characters
    my (@characters) = split( //, $arg);

    for( my $i = 0; $i < @characters; $i++){

	if ( $characters[$i] eq '<' ){
	    $xml .= "&lt;";
	}

	elsif ( $characters[$i] eq '>' ){
	    $xml .= "&gt;" ;
	}

	elsif ( $characters[$i] eq "'" ){
	    $xml .= "&apos;" ;
	}
	elsif ( $characters[$i] eq '"' ){
	    $xml .= "&quot;" ;
	}
	elsif( $characters[$i] eq '&' ) {
	    $xml .= "&amp;" ;
	}
	elsif ( $self->get_code($characters[$i]) < 32 ) {
	    $xml .= "&x";
	    $xml .=$self->get_hex( $self->get_code( $characters[$i]));
	    $xml .= ';';
	}
	elsif ( $self->get_code($characters[$i]) > 126 ){
	    $xml .= "&x";
	    $xml .= $self->get_hex( $self->get_code($characters[$i]) );
	    $xml .= ';' ;
        }

	else {
	    $xml .= $characters[$i];
	 }

    }

     return $xml;
}

sub get_code {

    my ($self, $char) = @_;
    return ord($char);
}

sub get_hex {
    my ($self, $code ) = @_;
    return unpack("H2", pack("C", $code) );
}

sub set_font {
    my ( $self, $font ) = @_;
    $self->{font} = $font;
    return $self;
}

sub get_font {
    my $self = shift;
    if ( defined( $self->{font} ) ) {
	return $self->{font};
    }
    else {
	return undef;
    }
}

sub draw {
    my $self = shift;
    my $g = shift;
    my $svg = "";
    
    $svg .= "<text x=\"".$self->get_x()."\" y=\"".$self->get_y()."\" ";
    $svg .= 'style="';
    if ( my $font = $self->get_font() ){
	$svg .= $font->get_svg_string();
    }
    $svg .= " fill:".$g->get_paint->to_hex().';';
    #$svg .= $g->get_paint()->to_svg();
    $svg .= '" ';
    $svg .= ">";
    $svg .= $self->get_xml_string();
    $svg .= "</text>";

    return $svg;
}
	
sub get_xml_string {
    my $self = shift;
    if ( defined ( $self->{xml_string} ) ){
	return $self->{xml_string};
    } else {
	return undef;
    }
}

sub set_x {
    #print STDERR "Set x called \n";
    my ($self, $x) = @_;
    #print STDERR "$x\n";
    if(defined($x)){
	if(ref($x)){
	    $self->{x} = join " ", @{$x};
	}else{
	    #print STDERR "set_x: $x\n";
	    $self->{x} = $x;
	}
    }
}

sub set_y {
    my ($self, $y) = @_;
    #print STDERR "Set y called:$y\n";
    if ($y){
	if( ref($y) ){
	    $self->{y} = join " ", @{$y};
	}else {
    $self->{y} = $y;
    }
    }
}

sub get_x {
    my $self = shift;
    if(defined( $self->{x}) ){
	return $self->{x};
    } else {
	return "";
	}
    }

sub get_y {
    my $self = shift;
    if(defined( $self->{y}) ){
	return $self->{y};
    } else {
	return "";
	}
    }

1;
    
