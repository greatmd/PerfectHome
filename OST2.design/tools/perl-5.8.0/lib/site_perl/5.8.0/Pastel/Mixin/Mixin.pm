package Pastel::Mixin::Mixin;

#  The sole purpose of the existance of this module is to provide some low
#  level functionality to the Pastel package. This module is automatically called
#  by all the modules.


# I liked this method from the bioperl modules. I just lifted it verbatim. Great works
# guys!!!!

sub _rearrange {

  
    my($self,$order,@param) = @_;
    
    return unless @param;
    return @param unless (defined($param[0]) && $param[0]=~/^-/); 
    
    for (my $i=0;$i<@param;$i+=2) {
	    $param[$i]=~s/^\-//;
	    $param[$i]=~tr/a-z/A-Z/;
    }
    
    # Now we'll convert the @params variable into an associative array.
    local($^W) = 0;  # prevent "odd number of elements" warning with -w.
    my(%param) = @param;
    
    my(@return_array);
    
    # What we intend to do is loop through the @{$order} variable,
    # and for each value, we use that as a key into our associative
    # array, pushing the value at that key onto our return array.
    my($key);
    
    foreach $key (@{$order}) {
	my($value) = $param{$key};
	delete $param{$key};
	push(@return_array,$value);
    }
    
#    print "\n_rearrange() after processing:\n";
#    my $i; for ($i=0;$i<@return_array;$i++) { printf "%20s => %s\n", ${$order}[$i], $return_array[$i]; } <STDIN>;

    return (@return_array);
}

=head1

  sub print_svg {
    my $self = shift;
    my $data = shift;
   # my $indent_level = $self->{_indent_level};
    my $indent_type = "    "; # 4 spaces indent

    my $indent = $indent_type x $self->{_indent_level};
    print "$indent$data\n";

    while ($data =~ /</gi){
	$self->{_indent_level}++;
#print "Increase indent\n";
#print $self->{_indent_level};

    }
    while ($data =~ /\/>/gi ){
	$self->{_indent_level}--;
#print $self->{_indent_level};
    }
    while ($data =~ /<\//gi ){
	$self->{_indent_level} -= 2;
	
	#print $self->{_indent_level};
    }


}
=cut
  
sub _min {
    my $self = shift;
    my ($a, $b) = @_;

    if ($a == $b){
	return $a;
    }
    
    if ($a > $b){
	return $b;
    }

    else {
	return $a;
    }
}

sub _max {
    my $self = shift;
    my ($a, $b) = @_;

    if ($a == $b){
	return $a;
    }
    elsif ($a > $b) {
	return $a;
    }

    else {
	return $b;
    }
}

    
1;
