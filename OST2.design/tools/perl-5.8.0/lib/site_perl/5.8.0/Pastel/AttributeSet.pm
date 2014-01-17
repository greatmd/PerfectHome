# Perl module for AttributeSet
# Author: Malay < curiouser@ccmb.res.in>
# Copyright Malay
# You may distribute this module under the same terms as perl itself

# POD documentation - main docs before the code

=head1 NAME

AttributeSet - Collection of attributes.

=head1 SYNOPSIS

  $as = Pastel::AttributeSet->new();
  $fill_color = Pastel::Color->red();
  my $att = Pastel::Attribute->new(-type=>"FILL", -object=>$fill_color);
  $as->add_attribute($att);
  # Iterate through  AttributeSet
  while ( $as->has_more() ){
      $attribute = $as->get_attribute();
      print $attribute->to_svg();
  }

  # or get the full thing as SVG
  my $svg = $as->to_svg();

=head1 DESCRIPTION

AttributeSet is a collection of Attribute objects.

=head1 CONTACT

Malay <curiouser@ccmb.res.in>

=cut

# Let the code begin...

package Pastel::AttributeSet;
@ISA = qw (Pastel::Root);
use Pastel::Root;
use strict;

=head1 CONSTRUCTOR

=head2 new()

Returns an empty AttributeSet object.

=cut

# _init is where the heavy stuff will happen when new is called

sub _init {
    my ( $self, @args ) = @_;
    $self->{attributes} = [];
    return $self;
}

=head2 add_attribute()

 Usage:    
 Function:
 Example:
 Returns: 
 Arguments

=cut

sub add_attribute {
    my ( $self, $att ) = @_;
    push ( @{ $self->{attributes} }, $att );
}

=head1 APPENDIX



=cut

1;
