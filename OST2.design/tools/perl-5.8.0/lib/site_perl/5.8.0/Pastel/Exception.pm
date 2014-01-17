# $Id: Exception.pm,v 1.3 2003/04/29 18:18:05 malay Exp $
# Perl module for Pastel::Exception
# Author: Malay < curiouser@ccmp.ap.nic.in >
# Copyright Malay
# You may distribute this module under the same terms as perl itself

# POD documentation - main docs before the code

=head1 NAME

Pastel::Exception - A module for easy exception handling in Pastel.

=head1 SYNOPSIS

#For thowing exception from any module

use Pastel;
# Creating an exception object has the advantage of calling 
# the full stack trace. If the catch() method in the Pastel::Exception
# class is not overridden, throwing an exception with a Exception object
# as parameter will call the full stack trace.

$self->throw(Pastel::Exception("Miserable condition"));

or,

$self->throw("Miserable condition"); 
# If not caught it just calls croak "Miserable condition"

or,

$self->throw(); 
# If not caught it just calls croak "Unknown error";


# Catching an exception from a module
# You need to overide the catch() of Exception class

$self->throw(Pastel::Exception("Some error");

sub catch {
 my ($self, $exception) = @_;
 $exception->print_stack_trace(); # Give full stack trace
 print $exception->get_message(); # prints "Some error"
 croak "Miserable death\n";
} 



=head1 DESCRIPTION

Pastel::Exception is the root class of handling exception in Pastel. There are two ways exception can be handled. Either inheriting from Pastel::Exception andoverriding catch() method, or by simply Creating a Pastel::Exception object and using its throw method. The exception is caught automatically by the Pastel::Exception::catch().  

=head1 CONTACT

Malay <curiouser@ccmb.ap.nic.in>

=cut

# Let the code begin...

package Pastel::Exception;
use Carp;
use strict;

=head1 CONSTRUCTOR

=head2 new($string)

 Usage    :  Pastel::Exception->new("Some error");
             or, Pastel::Exception->new();
 Function :  Creates and returns a Pastel::Exception object
 Returns  :  Pastel::Exception object
 Arguments:  A string (optional);

=cut

sub new {
    my ( $class, $string ) = shift;

    my $self = {};
    bless $self, ref($class) || $class;
    if ($string) {
        $self->{message} = $string;
    }
    else {
        $self->{message} = "Unknown error";
    }
    return $self;
}

=head1 METHODS

=head2 throw()

 Usage:    $self->throw($e); # Inherited from Pastel::Exception class
           or, $self->throw();
           or, $self->throw($string);
 Function: Throws an exception.
 Returns:   Nothing 
 Arguments: Either an Pastel::Exception object or a string or nothing

=cut

sub throw {
    my ( $self, $e ) = @_;
    if ( $self->can('catch') ) {
        $self->catch($e);
    }
}

=head2 catch()

 Usage    : Should never be directly used. To use this function, override 
            this function after inheriting from Pastel::Exception. 
 Function : Catches an exception
 Returns  : Nothing
 Arguments: The function is always called with the same parameter when thrown.
            May be a string or an Exception object or null. Should always be 
            tested with isa() before use.

=cut

sub catch {
    my ( $self, $e ) = @_;
    print STDERR "\nException reached the root exception class!\n";
    if ( defined($e) && $e->isa('Pastel::Exception') ) {
        $e->print_stack_trace();
        croak "\n", $e->get_message(), "\n";
    }
    elsif ( defined($e) ) {
	$self->print_stack_trace();
        croak $e, "\n";
    }
    else {
        croak "Unknown error!\n";
    }

}

=head2 print_stack_trace()

 Usage    : $exception_object->print_stack_trace(); 
 Function : Prints complete stack trace of the call.
 Returns  : Nothing
 Arguments: Nothing

=cut


sub print_stack_trace {
    my $self = shift;

    #my(@a) = caller();
    #print "@a", "\n";
    print STDERR "\n--------------------------------------------\n";
    print STDERR "                  STACK TRACE                 \n";
    print STDERR "--------------------------------------------\n";

    my $i = 0;
    while (1) {
        my (@b) = caller($i);
        if ( !@b ) {

            last;
        }
        my @c = ();
        foreach my $element (@b) {
            if ($element) {
                $c[@c] = $element;
            }
        }
        print STDERR "Package  : $c[0]\n";
        print STDERR "File     : $c[1]\n";
        print STDERR "Line No  : $c[2]\n";
        if ( $c[3] ) {
            print STDERR "Function : $c[3]\n";
        }
        print STDERR "--------------------------------------------\n";
        $i++;
    }

    #print "@b", "\n";
}


=head2 get_message()

 Usage    : $exception_object->get_message() 
 Function : Return the message stored in the exception object.
 Returns  : A scalar containg the massage string.
 Arguments: Nothing

=cut


sub get_message {
    return $_[0]->{message};
}
1;
