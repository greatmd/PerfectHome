#$Id: Pastel.pm,v 1.12 2003/05/08 18:00:44 malay Exp $
# Perl module for Pastel
# Author: Malay < curiouser@ccmb.res.in >
# Copyright (c) 2003 by Malay. All rights reserved.
# You may distribute this module under the same terms as Perl itself

=head1 NAME

Pastel - 2D graphic library and Scalable Vector Graphics (SVG) generator

=head1 SYNOPSIS

  use Pastel;
  my $g = Pastel::Graphics->new(); # create a graphics context
  ...
  # various graphics routines here
  ...
  $g->show();    # dump the SVG graphics on STDOUT
  $g->get_svg(); # get the SVG graphics as string

=head1 DESCRIPTION

This module is just a wrapper class to call all the other module. The
main work-horse of the whole package is C<Pastel::Graphics>. After
calling C<use Pastel> a graphics context should be created by creating
an instance of C<Pastel::Graphics>. After calling various method
calls, the graphics object can be dumped as SVG on STDOUT by calling
C<show()> method of the graphics object. Alternatively, the graphics
object can be returned as string by calling C<get_svg()> method.

=cut


package Pastel;

$VERSION = 0.04;

use strict;

use Pastel::Mixin::Mixin; # For _rearrange function
use Pastel::Graphics;
use Pastel::BasicStroke;
#use Pastel::Geometry::Shape;
use Pastel::Shape;
use Pastel::Geometry::Point;
use Pastel::Geometry::Line;
use Pastel::Geometry::Rectangle;
use Pastel::Geometry::GeneralPath;
use Pastel::Color;
use Pastel::Tools::Writer;
use Pastel::Font;
#use Pastel::Text;
use Pastel::String;
use Pastel::Geometry::Ellipse;
use Pastel::GradientStop;
use Pastel::GradientI;
use Pastel::LinearGradient;
use Pastel::Geometry::AffineTransform;
use Pastel::Text::AttributedString;
use Pastel::Geometry::Circle;


=head1 SEE ALSO

  L<Pastel::Graphics>

=head1 COPYRIGHTS

Copyright (c) 2003 by Malay <curiouser@ccmb.res.in>. All rights reserved.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut




1;
