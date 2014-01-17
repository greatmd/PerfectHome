package Pastel::Geometry::Line;
@ISA = qw(Pastel::Mixin::Mixin Pastel::Shape);
use strict;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
     my ($self, @args) = @_;

     #If two Point objects have been passed
     if(@args == 2){
           my ($point1, $point2) = @args;
           $self->{x1}= $point1->get_x();
           $self->{x2} = $point2->get_x();
           $self->{y1} = $point1->get_y();
           $self->{y2} = $point2->get_y();
     }

     #If point coordinates have been passed
     elsif(@args > 2){
       my ($x1, $y1, $x2, $y2) = 
                    $self->_rearrange(["X1","Y1","X2","Y2"],@args);
       $self->{_coords} = [ $x1, $y1, $x2, $y2 ]; #Reserve the coordinates for future use
       $self->{x1} = $x1;
           $self->{x2} = $x2;
           $self->{y1} = $y1;
           $self->{y2} = $y2;
     }
      return $self;
}

sub get_bounds {
    
    my $self = shift;
    my $bb = $self->_get_bounds(@{$self->{_coords}}); # Call method from Pastel::Geometry::Shape
   return $bb;
}
sub get_x1 { $_[0]->{x1}; }
sub get_x2 { $_[0]->{x2}; }
sub get_y1 { $_[0]->{y1}; }
sub get_y2 { $_[0]->{y2}; }

sub get_p1 { return Pastel::Geometry::Point->new ($_[0]->{x1}, $_[0]->{y1}); }
sub get_p2 { return Pastel::Geometry::Point->new ($_[0]->{x2}, $_[0]->{y2}); }


# Called by the draw() method of Pastel::Graphics::draw()

sub _draw {
  my $self = shift;
  my $x1 = $self->get_x1();
  my $x2 = $self->get_x2();
  my $y1 = $self->get_y1();
  my $y2 = $self->get_y2();


  my $graphics = shift; # Graphics object passed as parameter
  my $style =$self->get_style($graphics);
  #my $paint = $graphics->get_paint()->to_svg();

  my $data = qq(<line x1="$x1" y1="$y1" x2="$x2" y2="$y2" );
  
  $data .= "style=\"".$style."\"";
  #if (defined($self->{stroke})){
#      #print "Line stroke defined\n";
#      my $stroke = $self->{stroke} ;
#      my $st=$stroke->_to_svg();
#      $data .= "style="."\"fill:none;".$paint.";".$st."\""." />";
#  }
#  else {
      $data .= qq( />);
#  }
  return $data;

}

1;
