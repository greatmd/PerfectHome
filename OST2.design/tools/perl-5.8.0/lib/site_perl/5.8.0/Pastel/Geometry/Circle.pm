#$Id: Circle.pm,v 1.1 2003/04/29 18:19:54 malay Exp $
# Perl module for Pastel::Geometry::Circle
# Author: Malay < curiouser@ccmb.res.in >
# Copyright (c) 2003 by Malay. All rights reserved.
# You may distribute this module under the same terms as perl itself

=head1 NAME

Pastel::Geometry::Circle - DESCRIPTION of Object

=head1 SYNOPSIS

Give standard usage here

=head1 DESCRIPTION

Describe the object here

=cut

package Pastel::Geometry::Circle;
@ISA = qw(Pastel::Geometry::Ellipse);

use Pastel::Mixin::Mixin;
use strict;

=head1 CONSTRUCTOR

=cut

sub new {
    my ( $class, @args ) = @_;
    $class = ref($class) || $class;
    my ( $x, $y, $d ) =
      Pastel::Mixin::Mixin->_rearrange( [ "X", "Y", "DIA" ], @args );
    #print STDERR "circle:", " $x ","  $y "," $d ", "\n";
    my $self = $class->SUPER::new( $x, $y, $d, $d );
    bless $self, $class;
    #$self->_init(@args);

    #print "****", $self->{_mac_header}, "\n";
    return $self;
}

sub _init {
    my ( $self, @args ) = @_;
    #print STDERR "Circle init callled\n@args\n"; 
    $self->SUPER::_init(@args);

}

=head1 METHODS

=head2 get_center()

Describe your function here

 Usage   : 
 Args    : 
 Returns : 

=cut


sub get_center {
    my $self = shift;
    my $x = $self->get_x() + ($self->get_width() / 2);
    my $y = $self->get_y() + ($self->get_height()/ 2);
    return Pastel::Geometry::Point->new(-x=>$x, -y=>$y);
    
}

=head2 get_radius()

Describe your function here

 Usage   : 
 Args    : 
 Returns : 

=cut


sub get_radius {
    my $self = shift;
    if ($self->get_width() == $self->get_height()){
    
    return $self->get_width() / 2;
}
}

=head2 _draw()

Describe your function here

 Usage   : 
 Args    : 
 Returns : 

=cut

sub _draw{
  my ($self,$g) = @_;
  my $style = $self->get_style($g);
  my $s = "<circle cx=\"".$self->get_center()->get_x()."\" cy=\"";
  $s   .= $self->get_center()->get_y()."\" r=\"";
  $s   .= $self->get_radius(). "\" style=\"$style\" />";
  return $s;
}


=head1 SEE ALSO


=head1 COPYRIGHTS

Copyright (c) 2003 by Malay <curiouser@ccmb.res.in>. All rights reserved.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut

1;
