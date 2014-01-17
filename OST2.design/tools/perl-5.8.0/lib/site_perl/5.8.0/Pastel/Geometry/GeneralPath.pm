#$Id: GeneralPath.pm,v 1.7 2003/04/22 16:28:12 malay Exp $

# Perl module for GeneralPath
# Author: Malay < curiouser@ccmb.res.in >
# Copyright Malay
# You may distribute this module under the same terms as perl itself

# POD documentation - main docs before the code

=head1 NAME

GeneralPath - DESCRIPTION of Object

=head1 SYNOPSIS

Give standard usage here

=head1 DESCRIPTION

Describe the object here

=head1 CONTACT

Malay <curiouser@ccmb.ap.nic.in>

=cut

# Let the code begin...

package Pastel::Geometry::GeneralPath;
@ISA = qw(Pastel::Root Pastel::Shape);

use Pastel::Root;
use Pastel::Shape;
use Pastel::Geometry::PathIteratorI;
use Pastel::Geometry::Point;
use strict;
use Carp;

=head1 CONSTRUCTOR

=cut

# _init is where the heavy stuff will happen when new is called

# Some static constants

use constant WIND_EVEN_ODD => 'WIND_EVEN_ODD';
use constant WIND_NON_ZERO => 'WIND_NON_ZERO';
use constant SEG_MOVETO    => 'SEG_MOVETO';
use constant SEG_LINETO    => 'SEG_LINETO';
use constant SEG_QUADTO    => 'SEG_QUADTO';
use constant SEG_CUBICTO   => 'SEG_CUBICTO';
use constant SEG_CLOSE     => 'SEG_CLOSE';
use constant SEG_ARCTO     => 'SEG_ARCTO';

sub _init {
    my ( $self, @args ) = @_;
    my ( $rule, $shape ) = $self->_rearrange( [ 'RULE', 'SHAPE' ], @args );
    if ( defined($rule) && $rule eq 'WIND_EVEN_ODD' ) {
        $self->set_winding_rule('WIND_EVEN_ODD');
    }
    else {
        $self->set_winding_rule('WIND_NON_ZERO');    # Default winding rule
    }
    $self->{types}    = [];                          # Segment types
    $self->{coord}    = [];                          # xy coord of each point
    $self->{numtypes} = 0;                           # y coord of current point
    $self->{numcoord} = 0;
    $self->{arc_rotation} = 0;
    
    # set stuff in self from @args
    return $self;                                    # success - we hope!
}

sub get_winding_rule {
    my $self = shift;
    return $self->{wind};
}


sub set_winding_rule {
    my ( $self, $rule ) = @_;

    #print STDERR $rule;
    if ( ( $rule ne 'WIND_EVEN_ODD' ) && ( $rule ne 'WIND_NON_ZERO' ) ) {
        die
'Illegal parameter in Pastel::Geometry::GeneralPath::set_winding_rule()\n';
    }
    else {
        $self->{wind} = $rule;
        if ( $rule eq 'WIND_EVEN_ODD' ) {

            # default fill rule for SVG is nonzero
            $self->set_fill_rule('evenodd');    # inherited from Pastel::Shape
        }
    }
}

sub set_arc_rotation {
    my $self = shift;
    my $r = shift;
    if ($r){
	$self->{arc_rotation} = $r;
	
    }
}

sub get_arc_rotation {
    return $_[0]->{arc_rotation};
    
}
sub move_to {
    my ( $self, $x, $y ) = @_;
    push ( @{ $self->{types} }, SEG_MOVETO );
    push ( @{ $self->{coord} }, $x );
    push ( @{ $self->{coord} }, $y );
    $self->{numtypes}++;
    $self->{numcoord} += 2;
}

sub line_to {
    my ( $self, $x, $y ) = @_;
    push ( @{ $self->{types} }, SEG_LINETO );
    push ( @{ $self->{coord} }, $x );
    push ( @{ $self->{coord} }, $y );
    $self->{numtypes}++;
    $self->{numcoord} += 2;
}

sub quad_to {
    my $self  = shift;
    my @array = @_[ 0 .. 3 ];
    push ( @{ $self->{types} }, SEG_QUADTO );
    push ( @{ $self->{coord} }, @array );
    $self->{numtypes}++;
    $self->{numcoord} += 4;
}

sub curve_to {
    my $self  = shift;
    my @array = @_[ 0 .. 5 ];
    push ( @{ $self->{types} }, SEG_CUBICTO );
    push ( @{ $self->{coord} }, @array );
    $self->{numtypes}++;
    $self->{numcoord} += 6;
}

sub close_path {
    my $self = shift;
    push ( @{ $self->{types} }, SEG_CLOSE );
    $self->{numtypes}++;
}

sub arc_to {
    my $self = shift;
    push ( @{$self->{types} } , SEG_ARCTO );
    $self->{numtypes}++;
    push (@{$self->{coord}}, @_ );
    $self->{numcoord} += 6;
}
sub get_current_point {
    my $self = shift;
    if ( $self->{numtypes} < 1 || $self->{numcoord} < 2 ) {
        return undef;
    }
    my $index = $self->{numcoord};

    # If last point is a CLOSE PATH then go back to the beginning

    if ( $self->{types}[ $self->{numtypes} - 1 ] eq 'SEG_CLOSE' ) {
        for ( my $j = $self->{numtypes} - 2 ; $j > 0 ; $j-- ) {
            if ( $self->{types}[$j] eq 'SEG_MOVETO' ) {
                last;
            }
            elsif ( $self->{types}[$j] eq 'SEG_LINETO' ) {
                $index -= 2;
                next;
            }
            elsif ( $self->{types}[$j] eq 'SEG_QUADTO' ) {
                $index -= 4;
                next;
            }
            elsif ( $self->{types}[$j] eq 'SEG_CUBICTO' ) {
                $index -= 6;
                next;
            }
	    elsif ($self->{types}[$j] eq 'SEG_ARCTO' ){
		$index -= 6;
		
	    }
            elsif ( $self->{types}[$j] eq 'SEG_CLOSE' ) {
                last;
            }
        }
    }
    return Pastel::Geometry::Point->new(
        -x => $self->{coord}[ $index - 2 ],
        -y => $self->{coord}[ $index - 1 ]
    );

}

sub _draw {
    my $self     = shift;
    my $graphics = shift;
    my $s        = '<path d="';
    $s .= $self->to_svg();
    $s .= '" style="' . $self->get_style($graphics) . '" />';
    return $s;

}

sub to_svg {
    my $self  = shift;
    my $index = 0;
    my $s     = "";

    my $x = 0;    # holds the last x coordinate
    my $y = 0;    # holds the last y coordinate

    for ( my $i = 0 ; $i < $self->{numtypes} ; $i++ ) {
        if ( $self->{types}[$i] eq 'SEG_MOVETO' ) {
            $x = $self->{coord}[$index];
            $y = $self->{coord}[ $index + 1 ];
            $s .=
              'M' . $self->{coord}[$index] . " " . $self->{coord}[ $index + 1 ];
            $index += 2;
            next;
        }
        elsif ( $self->{types}[$i] eq 'SEG_LINETO' ) {
            if ( $self->{coord}[$index] == $x ) {
                $y = $self->{coord}[ $index + 1 ];
                $s .= 'V' . $y;
                $index += 2;
                next;
            }
            elsif ( $self->{coord}[ $index + 1 ] == $y ) {
                $x = $self->{coord}[$index];
                $s .= 'H' . $x;
                $index += 2;
                next;
            }
            else {
                $x = $self->{coord}[$index];
                $y = $self->{coord}[ $index + 1 ];
                $s .= 'L'
                  . $self->{coord}[$index] . " "
                  . $self->{coord}[ $index + 1 ];
                $index += 2;
                next;
            }
        }
        elsif ( $self->{types}[$i] eq 'SEG_QUADTO' ) {
            $x = $self->{coord}[ $index + 2 ];
            $y = $self->{coord}[ $index + 3 ];
            $s .=
              'Q' . $self->{coord}[$index] . " " . $self->{coord}[ $index + 1 ];
            $s .= " " . $x . " " . $y;
            $index += 4;
            next;
        }
        elsif ( $self->{types}[$i] eq 'SEG_CUBICTO' ) {
            $x = $self->{coord}[ $index + 4 ];
            $y = $self->{coord}[ $index + 5 ];
            $s .=
              'C' . $self->{coord}[$index] . " " . $self->{coord}[ $index + 1 ];
            $s .= " "
              . $self->{coord}[ $index + 2 ] . " "
              . $self->{coord}[ $index + 3 ];
            $s .= " " . $x . " " . $y;
            $index += 6;
            next;
        }
	elsif ($self->{types}[$i] eq 'SEG_ARCTO'){
	    $x = $self->{coord}[ $index + 4];
	    $y = $self->{coord}[ $index + 5];
	    $s .= 'A'.$self->{coord}[$index]." ".$self->{coord}[$index + 1];
	    $s .= " ".$self->get_arc_rotation()." ";
	    $s .= $self->{coord}[$index + 2];
	     $s .= " ".$self->{coord}[$index + 3];
	     $s .= " ".$x." ".$y;
	    $index += 6;
	    next;
	    
	    
	}
        elsif ( $self->{types}[$i] eq 'SEG_CLOSE' ) {
            $s .= 'z';
            next;
        }
    }

    return $s;
}

=head1 APPENDIX



=cut

1;
