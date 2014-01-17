package Pastel::BasicStroke;
@ISA = qw(Pastel::Mixin::Mixin);
use Carp;
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
     my ($width,$cap,$join,$miterlimit,$dasharray,$dashoffset)
        =$self->_rearrange(["WIDTH","CAP","JOIN",
                             "MITER","DASHARRAY","DASHOFFSET"],@args);
     $self->{width} = defined($width)? $width :1; # Default width = 1
     if(defined($cap)){
         if($cap =~/BUTT/i){
                 $self->{cap} = "butt";
         }
         elsif($cap =~/ROUND/i){
                  $self->{cap} = "round";
         }
         elsif($cap =~/SQUARE/i){
                    $self->{cap} ="square";
         }
         else { croak "Illegal parameter of Line-cap\n";}
      }
      else{
          # $self->{cap} = "square";
	  $self->{cap} = undef;
}
      if(defined($join)){
          if($join =~ /ROUND/i){
                   $self->{join} ="round";
          }
          elsif($join =~/BEVEL/i){
                   $self->{join} ="bevel";
          }
          elsif($join =~/MITER/i){
                   $self->{join} ="miter"
          }
          else {croak "Illegal paramter of Line join\n";
          }
       }
       else{
            #$self->{join} ="miter";
       $self->{join} = undef;
       }
       
       $self->{miterlimit} = defined($miterlimit)? $miterlimit: undef; #10;
       $self->{dasharray} = defined($dasharray)?$dasharray : undef;   
       $self->{dashoffset} = defined($dashoffset) ? $dashoffset : undef;
       return $self;
  }
  
 sub equals {
      my ($self) = shift;
      
      if (ref($_[0]) ne ref($self)){
         carp "Error: Not a basicstroke object!\n";
         return 0;
      }
      
      if ( ($self->{width} ne $_[0]->{width}) ||
                 ($self->{cap}   ne $_[0]->{cap}  ) ||
                 ($self->{join}  ne $_[0]->{join} ) ||
                 ($self->{miterlimit} ne $_[0]->{miterlimit}) #||
                 #($self->{dasharray} ne $_[0]->{dasharray}) ||
                 #($self->{dashoffset} ne $_[0]->{dashoffset})
                ){
                  return 0;
      }

      if (defined($self->{dasharray}) != defined($_[0]->{dasharray})){
          return 0;
      }
      if (defined ($self->{dasharray}) ){
        # print "**************Checkdasharray caller**************\n";
          return 0 unless defined ($_[0]->{dasharray});
         # print "Step1\n";
          #return 0 unless (@{$self->{dasharray}} != @{$_[0]->{dasharray}});
         #  print "Step2\n";
          return 0 unless $self->_checkdasharray($self->{dasharray}, $_[0]->{dasharray});
      }
                       
      if (defined($self->{dashoffset} ) != defined($_[0]->{dashoffset})){
         return 0;
      }
      if (defined($self->{dashoffset})){    
          return 0 unless defined($_[0]->{dashoffset});
          return 0 unless ($self->{dashoffset} ne $_[0]->{dashoffset});
      }             
     
     else {return 1;}

}

sub get_dash_array {
    if ( defined( $_[0]->{dasharray} ) ){
       my @array = @{$_[0]->{dasharray}};
       
       my $s="";
       for (my $i=0; $i<@array; $i++){
	 $s .= $array[$i];
	 $s .= " ";
	 }
       return $s;
	 
       
    }
    else {
         return undef;
    }
}

sub get_dashoffset {
    if ( defined( $_[0]->{dashoffset} ) ){
       return $_[0]->{dashoffset};
    }
    else {
         return undef;
    }
} 

sub get_end_cap { $_[0]->{cap}; }
sub get_line_join {$_[0]->{join}; }
sub get_line_width {$_[0]->{width}; }
sub get_miter_limit {$_[0]->{miterlimit}; }

# To be done

sub create_stroked_shape {
  my $self = shift;
  my $shape = shift;
  $shape->set_stroke($self);
  return $shape;
}
###############
    
sub _checkdasharray {
    #print "************CHEKDASHARRAY***************\n";
    my ($self, @args) = @_;
    my @array1 = @{ $args[0] };
    my @array2 = @{ $args[1] };
    #print @array1, ",", @array2, "\n";
    if (@array1 != @array2){
        #print "************Inside compare***************\n";
       return 0;
    }
    else {
         # print "************Inside else***************\n";
         for ( my $i = 0 ; $i < @array1; $i++ ){
             # print "************Inside loop***************\n";
             return 0 if $array1[$i] ne $array2[$i];
             #print "never entered\n";
          }
    }
    return 1;
}


sub to_svg  {
  my $self = shift;
  my $s = "";
  if(defined($self->{width} )){
   $s .= qq(stroke-width:$self->{width});
  #$s .= ';';
}
  my $dasharray = $self->get_dash_array();
  my $dashoffset = $self->get_dashoffset();
  
  if (defined($self->{cap}) && ($self->{cap} ne "butt")){
    $s .= ";"."stroke-linecap:".$self->{cap};
  }
  if (defined($self->{join}) && ($self->{join} ne "miter")){
	$s .= ";"."stroke-linejoin:".$self->{join};
      }
  if (defined($self->{miterlimit}) && ($self->{miterlimit} != 4)){
    $s .= ";stroke-miterlimit:".$self->{miterlimit};
  }
  if (defined ($self->{dasharray})){
    $s .= ";stroke-dasharray:".$dasharray.";";
  }
  if (defined ($self->{dashoffset})){
    $s .= ";stroke-dashoffset:".$dashoffset;
  }
  return $s;
}
  
    
1;
