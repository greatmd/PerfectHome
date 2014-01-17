package Pastel::FontMetrics;
@ISA = qw (Pastel::Mixin::Mixin);
use Pastel::Mixin::Mixin;
use Carp;
use strict;

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

     if ( @args >  4 ){
	 croak "Wrong number of parameters in Pastel::FonMetrics\n";
     }

     my ( $file, $font, $platform) = $self->_rearrange(["FILE", "FONT",
							"PLATFORM"], @args);

     if ( defined ( $file) ){
	 $self->{filename} = $file;
	     
	 
