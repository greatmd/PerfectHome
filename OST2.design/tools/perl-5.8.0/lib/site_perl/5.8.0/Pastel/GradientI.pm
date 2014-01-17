package Pastel::GradientI;
use strict;
use Carp;

use constant USER_SPACE => "userSpaceOnUse";
use constant BOUNDING_BOX => "objectBoundingBox";
use constant PAD => "pad";
use constant REFLECT => "reflect";
use constant REPEAT => "repeat";
use constant RADIAL => "radial";
use constant LINEAR => "linear";

sub add_stop {
    my $self = shift;
    my $arg = shift;
    
    if (!$arg->isa("Pastel::GradientStop")){
	croak 'Error: Parameter must be a Pastel::GradientStop object in Pastel:GradientPaint::add_stop()' ;
    }

    ${$self->{stops}}[@{$self->{stops}}] = $arg;
    
}
1;
