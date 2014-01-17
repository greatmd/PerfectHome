package Pastel::Text::AttributeEntry;
use strict;

sub new {
    my $class = shift;
   
    # Fields

    my $self = {  
	key    => "",  
        value  => "",    
	};
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
  my ($self, @args) = @_;
  $self->{key} = $args[0];
  $self->{key} = $args[1];
  return $self;
}

sub equals{
  my ($self,$object) = @_;
  if (!$object->isa("Pastel::Text::AttributeEntry")) {
    return 0;
  }elsif (!( $self->get_key() eq $object->get_key() ) ||
	  !( $self-get_value() eq $object->get_value() )
	 ) {
    return 0;
  } else{ return 1;
	  }
}

sub get_key {
  my $self = shift;
  return $self->{key};
}

sub get_value {
  my $self = shift;
  return $self->{value};
}

1;
