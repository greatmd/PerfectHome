# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: OutputDirector.pm
# Copyright (C) 1995-2007 Sun Microsystems, Inc. All Rights Reserved
# 4150 Network Circle, Santa Clara, California 95054, U.S.A.
#
# * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER. 
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# For the avoidance of doubt, and except that if any non-GPL license 
# choice is available it will apply instead, Sun elects to use only 
# the General Public License version 2 (GPLv2) at this time for any 
# software where a choice of GPL license versions is made 
# available with the language indicating that GPLv2 or any later version 
# may be used, or where a choice of which version of the GPL is applied is 
# otherwise unspecified. 
#
# Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara, 
# CA 95054 USA or visit www.sun.com if you need additional information or 
# have any questions. 
# 
# ========== Copyright Header End ============================================
package OutputDirector;

use 5.008;
use strict;
use warnings;

our $VERSION = '1.01';


use fields qw(
	      print_status
	      printf_status
	      print_error
	      printf_error
	     );

##############################################################################

sub new {
  my $class = shift;
  my %args  = @_;

  my $this = fields::new($class);

  foreach my $key (keys %args) {
    $this->{$key} = $args{$key};
  }

  $this->set_defaults();
  return $this;
}

##############################################################################

sub set_defaults {
  my $this = shift;

  $this->{print_status} =
    sub { print STDOUT @_; }
      unless defined $this->{print_status};
  $this->{printf_status} =
    sub { printf STDOUT @_; }
      unless defined $this->{printf_status};
  $this->{print_error} =
    sub { print STDERR @_; }
      unless defined $this->{print_error};
  $this->{printf_error} =
    sub { printf STDERR @_; }
      unless defined $this->{printf_error};
}

##############################################################################

sub print_status {
  my $this = shift;
  my @args = @_;
  $this->{print_status}->(@args);
}

##############################################################################

sub printf_status {
  my $this = shift;
  my @args = @_;
  $this->{printf_status}->(@args);
}

##############################################################################

sub print_error {
  my $this = shift;
  my @args = @_;
  $this->{print_error}->(@args);
}

##############################################################################

sub printf_error {
  my $this = shift;
  my @args = @_;
  $this->{printf_error}->(@args);
}

##############################################################################
1;

__END__

=head1 NAME

OutputDirector - Object interface to output streams to allow easy redirection

=head1 SYNOPSIS

  use OutputDirector;

  my $OUT = OutputDirector->new();

  $OUT->print_status("Hello, world!\n");
  $OUT->print_error("Things are not good.\n");

=head1 ABSTRACT

  This module provides an object interface for status and error output
  streams.  The intent is that a module that uses an OutputDirector
  can be trivially modified to redirect output.

=head1 DESCRIPTION

This module provides an object interface to status and error streams.
The intent is that a module or script that uses an OutputDirector can
be easily (and dynamically) modified to redirect its output.

=head2 Construction

The OutputDirector is created by the class method new().  The
arguments to new form a hash of arguments whose legal keys are as follows:

=over 4

=item print_status

Value is a coderef to use in the print_status method.  Default method
prints arguments to STDOUT.

=item printf_status

Value is a coderef to use in the printf_status method.  Default method
prints formatted string to STDOUT.

=item print_error

Value is a coderef to use in the print_error method.  Default method
prints arguments to STDERR.

=item printf_error

Value is a coderef to use in the printf_error method.  Default method
prints formatted string to STDERR.

=back

The default OutputDirector is constructed as shown in the default
section.  If, for instance, you wanted to redefine how messages are
printed to the error stream, use:

  my $OUT = OutputDirector->new(
                                 print_error  => \&my_print_error,
                                 printf_error => \&my_printf_error,
                               );

  $OUT->print_error("This string goes to my_print_error\n");

=head2 Methods

The OutputDirector has 4 object methods:

=over 4

=item print_status(@args)

Print the arguments to the status stream.

=item printf_status($format, @args)

Print formatted string to the status stream.

=item print_error(@args)

Print the arguments to the error stream.

=item printf_error($format, @args)

Print formatted string to the error stream.

=back

=head1 SEE ALSO

Triage(3).

=cut
