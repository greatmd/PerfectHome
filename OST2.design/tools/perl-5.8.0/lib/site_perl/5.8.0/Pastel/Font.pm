package Pastel::Font;
@ISA = qw (Pastel::Mixin::Mixin);
use Pastel::Mixin::Mixin;
use Carp;
use strict;

my $font_parser;

{
    my $id;
    sub _id { return $id++;}
}

sub new {
    my $class = shift;
    my $self = {};
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
     my ($self, @args) = @_;
     my ($family, $style, $size) = $self->_rearrange(["FAMILY","STYLE","SIZE"],
						   @args );
     if ( defined ( $family) ){
	 $self->{"family"} = $family;
     }

     if ( defined( $style ) ){
	 if( ($style =~ /^bold$/i) || ($style =~ /^italic$/i) ||
	     ($style =~ /^bolditalic$/i) || ($style =~ /^plain$/i)|| ($style =~ /^regular$/i) ){
	     $self->{"style"} = $style;
	 }
	 else {
	     croak "Illegal style parameter in Pastel::Font\n";
	 }
     } else {
	 $self->{"style"} = "REGULAR";
     }

     if ( defined( $size ) ){
	 $self->{"size"} = $size;
     } else {
	 $self->{"size"} = 10;
     }
     
     $self->{"id"} = $self->_id()  ;
     return $self;
}

sub get_id {
    return $_[0]->{"id"};
}

sub get_family {
    return $_[0]->{"family"};
}

sub get_style {
    return $_[0]->{"style"};
}

sub get_size {
    return $_[0]->{"size"};
}

sub get_svg_string {
    my $self = shift;
    my $s = "";
    $s .= "font-family:".$self->get_family()."; "; 
    $s .= "font-size:".$self->get_size()."pt;";
    if( $self->{"style"} =~ /^bold$/i ){
      $s .= "font-weight:bold;";
    }
    if( $self->{"style"} eq "bolditalic"){
	$s .= 'font-style:italic;font-weight:bold';
    }
    if( $self->{"style"} eq "italic"){
	$s .= 'font-style:italic';
    }
    return $s;
}

sub _fontify {
    my $self = shift;
    my $string_object = shift;
    $string_object->{"font"} = $self;
    return $string_object;
}

sub create_from_file {
  my ($self, @args) = @_;
  #my $font_parser;
  my ($filename, $type) = $self->_rearrange( ["FILE","TYPE"], @args );
  
  if ( defined ($type) ){

    if ($type =~ /^TTF$/i ){
     # $self->{"type"} = "TTF";
      $font_parser = Pastel::Font::TTF->create_from_file($filename);
      #print "Font created\n";
      return $self->new($font_parser->get_font_family(),$font_parser->get_subfamily());
      
    }

  } else {
    croak 'Error: Argument missing in Pastel::Font::create_from file()', "\n";
  }

}
1;

