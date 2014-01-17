package Pastel::Tools::Writer;
use strict;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, ref($class) || $class;
    $self->_init(@_);
    return $self;
}

sub _init {
    my $self = shift;
    $self->{_indent} = 0;
    $self->{_temp_buffer} = "";
    $self->{_inside_flag} = "";
    return $self;
}

sub print_svg {
    my $self = shift;
    my $xml = shift;

   # print "Inside writer\n";
    my @xml = split (//, $xml); #Split the whole string in characters

    for (my $i=0; $i < @xml ; $i++) {
#	print "Inside for loop\n";
	$self->{_temp_buffer} .= $xml[$i];
	
	if ($xml[$i] eq "<") {
	    $self->{_inside_flag} = "true";
	    $self->{_indent}++;
#print "START**\n";
	    if ($xml[$i+1] eq "?"){
		$self->{_indent}--;
	    }

	    if ($xml[$i+1] eq "!" && $xml[$i+2] eq "D"){
		$self->{_indent}--;
	    }
	    
	    if ($xml[$i+1] eq "/"){
		$self->{_indent}--;
	    }

	  #  if ($xml[$i+1] =~ /s/i){
#		$self->{_indent}--;

#	    }
#	print "Indent $self->{_indent}\n";    
	}

	if ($xml[$i] eq ">") {
	    $self->{_inside_flag} = "";
	   # print "Inside end tag\n";
	    my $tab = $self->{_indent};
	    my $gap = "    " x $tab;
	    print "$gap","$self->{_temp_buffer}","\n";
	    $self->{_temp_buffer} ="";
	   
	}

	if ($xml[$i] eq "/"){

	    if($xml[$i +1] eq ">"){ # &&  $self->{_inside_flag} eq "true") {
	   	$self->{_indent}--;
	    }
	    if($xml[$i +1] =~ /s/i && $self->{_inside_flag} eq "true") {
		$self->{indent}--;
	    }
	}    
#	print "***********$self->{_indent}\n";
    }
}
    
sub set_indent {
    my $self = shift;
    my $indent = shift;
    $self->{_indent} = $indent;
}

sub get_indent {
    my $self = shift;
    return $self->{_indent};
}


1;
