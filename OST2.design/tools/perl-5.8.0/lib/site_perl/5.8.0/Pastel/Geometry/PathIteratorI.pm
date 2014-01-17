# Interface : Pastel::Geometry::PathIterator.pm

package Pastel::Geometry::PathIteratorI;
use Carp;

#Static constants
#use constant WIND_EVEN_ODD =>  0;
#use constant WIND_NON_ZERO =>  1;
#use constant SEG_MOVETO    =>  0;
#use constant SEG_LINETO    =>  1;
#use constant SEG_QUADTO    =>  2;
#use constant SEG_CUBICTO   =>  3;
#use constant SEG_CLOSE     =>  4;


use constant WIND_EVEN_ODD =>  'WIND_EVEN_ODD';
use constant WIND_NON_ZERO =>  'WIND_NON_ZERO';
use constant SEG_MOVETO    =>  'SEG_MOVETO';
use constant SEG_LINETO    =>  'SEG_LINETO';
use constant SEG_QUADTO    =>  'SEG_QUADTO';
use constant SEG_CUBICTO   =>  'SEG_CUBICTO';
use constant SEG_CLOSE     =>  'SEG_CLOSE';

use strict;

sub _die {
    croak "Abstract method call in Pastel::Geometry::PathIteratorI\n";
}

sub get_winding_rule {
    _die;
}

sub is_done {
    _die();
}

sub next {
    _die();
}

sub current_segment {
    _die();
}

1;



