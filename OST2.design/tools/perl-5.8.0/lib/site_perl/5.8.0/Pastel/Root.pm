# Perl module for Pastel::Root
# Author: Malay < curiouser@ccmp.ap.nic.in >
# Copyright Malay
# You may distribute this module under the same terms as perl itself

# POD documentation - main docs before the code

=head1 NAME

Pastel::Root - Root class for Pastel library the constructor new in inherited by all Pastel classes. All the initialization is done by the _init() function of each class.

=head1 SYNOPSIS

This is an virtual base class and not to instantiated directly.

=head1 DESCRIPTION

This class is a virtual base class. The new in inherited in all the classes. This class is not to be instantiated directly. Look into the individual classes in the library for the constructor call.

=head1 CONTACT

Malay <curiouser@ccmb.ap.nic.in>

=cut

# Let the code begin...


package Pastel::Root;
@ISA = qw (Pastel::Mixin::Mixin); # Get the _rearrange function
use Pastel::Mixin::Mixin;

use strict;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, ref($class) || $class;
    $self->_init(@_); # Call the _init() function of the caller
    return $self;
}

sub DESTROY {
    my $self = shift;
    foreach my $key (keys %{$self}){
       delete $self->{$key};
   }
    }

1;
