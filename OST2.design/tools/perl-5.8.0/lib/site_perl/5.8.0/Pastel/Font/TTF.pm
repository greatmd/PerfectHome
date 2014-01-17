package  Pastel::Font::TTF;

use Pastel::Mixin::Mixin;
use IO::File;
use Carp;
@ISA = qw(Pastel::Mixin::Mixin);
use strict;

my $PLATFORM_ID = 3;
my $ENCODING_ID = 1;

sub new
{
    my $arg = shift;
    my $class = ref($arg) || $arg;
    my $self = {};

    bless $self, $class;
    $self->_init(@_);
   
    return $self;

}

sub _init {

    my ($self, @args) = @_;
    $self->{_fh} = undef;
    $self->{family} = undef;
    $self->{glyphs} = [];
    $self->{tables} = {};
    $self->{platform} = 3;
    $self->{encoding} = 1;
    $self->{subfamily} = undef;
}

sub create_from_file {
    my ($self,@args) = @_;
    my $mod = Pastel::Font::TTF->new();
    my ($path, $file) = $mod->_rearrange(["PATH","FILE"],@args);
    my $fh;
    
    if(defined($path) || defined($file)){

	if(defined($path)){
	    $mod->set_file_handle($path);
	    return $mod;
	}
	if(defined($file)){
	    $mod->set_file_handle($file);
	    return $mod;
	}
	
    } else {
	croak "Supply filename in Pastel::Font::TTF::create_from_file()\n";
    }
}

sub set_file_handle {
    my $self = shift;
    my $path = shift;
    my $fh = IO::File->new();

    if($fh->open("< $path")){
	binmode($fh);
	$self->{_fh} = $fh;
    } else {
	croak "Could not open $path in Pastel::Font::TTF::set_file_handle\n";
	}
    $self->make_directory_entry();
    
}

sub get_file_handle {
    my $self = shift;
    if (defined($self->{_fh})){
	return $self->{_fh};
    } else {
	return 0;
    }
}

sub make_directory_entry {
    my $self = shift;
    my $fh = $self->get_file_handle();
    my $buf="";

    eval{read($fh, $buf, 12)};
    if($@){
	croak "Read error in Pastel::Font::TTF::make_directory_entry\n";
    }
     
    my ($version, $number) = unpack("Nn", $buf);
    #print "Version = $version, Number of tables = $number\n";
    # print "\nTABLE\tOFFSET\tLENGTH\n";

    for(my $i = 0; $i < $number; $i++){
    #print "Inside for\n";
     read($fh, $buf, 16);
     my ( $table, $offset, $length) = unpack("a4x4NN", $buf);
    $self->{table}->{$table} = $offset;
     
#print "$table\t$offset\t$length\n";
}
    #print $self->{table}->{'OS/2'};
}

#sub get_font_family {
#    my $self = shift;
#    my $buf;
#    my $fh = $self->get_file_handle();

#    my  $LANGUAGE_ID;
#    my $PLATFORM_ID = $self->{platform};
#    my $ENCODING_ID = $self->{encoding};
    
#    if ( $self->{platform} =="1" && $self->{encoding} =="0"){
#	$LANGUAGE_ID = 0;
#    }
#    else {
#	$LANGUAGE_ID = 1033;
#    }

#    my $add = $self->get_table_address('name');

#    seek ($fh, $add, 0);
#    read($fh, $buf, 6);
#    my ( $num , $offset) = unpack ("x2nn", $buf);
#    #print "*******NAME : Number of records, $num, Offset: $offset\n";

#    my ($copyright_offset, $font_family_name_offset,
#	$subfamily_offset, $id_offset,$full_name_offset,
#	$version_string_offset, $postscript_offset, $trademark_offset);

#    my ($copyright_length, $font_family_length,
#	$subfamily_length, $id_length, $full_name_length,
#	$version_length, $postscript_length, $trademark_length);
    
#    for (my $i = 0; $i < $num; $i++){
#	read ($fh, $buf, 12);
#	my ($id, $encoding, $language, $name_id, $length, $string_offset)
#	   = unpack("n6", $buf);
#	#print "****NAMERECORDS: $id, $encoding, $language, $name_id, $length, $string_offset\n";

#	if ( ($id == $PLATFORM_ID)&&         # Windows??
#	     ($encoding == $ENCODING_ID) &&  #UGL??
#	     ($language == $LANGUAGE_ID)
#	   ) {
#	    if ($name_id == 0 ) { #Copyright
#		$copyright_offset = $string_offset;
#		$copyright_length = $length;
#	    }
#	    if ($name_id == 1 ) { # Familyname
#		$font_family_name_offset = $string_offset;
#		$font_family_length =  $length;
#	    }
#	    if ($name_id == 2 ) { # Subfamily
#		$subfamily_offset = $string_offset;
#		$subfamily_length = $length;
#	    }
#	    if ($name_id == 3 ) { # Identifier
#		$id_offset = $string_offset;
#		$id_length = $length;
#	    }
#	    if ($name_id == 4 ) { # Full name
#	        $full_name_offset = $string_offset;
#		$full_name_length = $length;
#	    }
#	    if ($name_id == 5 ) { #version string
#		$version_string_offset = $string_offset;
#		$version_length = $length;
#	    }
#	    if ( $name_id == 6) { # Postscript name
#		$postscript_offset = $string_offset;
#		$postscript_length = $length;
#	    }
#	    if ($name_id == 7 ) { # Trademark
#		$trademark_offset = $string_offset;
# 		$trademark_length = $length;
#	    }
#	}

#    } # End for loop;

#    # Print copyright
#    seek ( $fh, $add + $offset + $copyright_offset, 0);
#    read ($fh, $buf, $copyright_length);
#   # print "COPYRIGHT: $buf\n\n";

#    # Print familyname
#    seek ($fh, $add + $offset + $font_family_name_offset, 0 );
#    read ( $fh, $buf, $font_family_length);
#    return $buf;
## print "FAMILY: $buf\n\n";
    
#    #Print Subfamily
#    seek ($fh, $add + $offset + $subfamily_offset, 0);
#    read ($fh, $buf, $subfamily_length);
#    #print "SUBFAMILY: $buf\n\n";

#    #Print Identifier
#    seek ( $fh, $add + $offset +$id_offset, 0);
#     read ($fh, $buf, $id_length);
#    #print "ID: $buf\n\n";

#    #Print Full name
#    seek ( $fh, $add + $offset +$full_name_offset, 0);
#     read ($fh, $buf, $full_name_length);
#    #print "FULL NAME: $buf\n\n";

#    #Print Version string
#    seek ( $fh, $add + $offset +$version_string_offset, 0);
#     read ($fh, $buf, $version_length);
#    #print "VERSION: $buf\n\n";


#    #Print Postscript
#    seek ( $fh, $add + $offset +$postscript_offset, 0);
#     read ($fh, $buf, $postscript_length);
#    #print "Postscript: $buf\n\n";

##Print Trademark
#    seek ( $fh, $add + $offset +$trademark_offset, 0);
#     read ($fh, $buf, $trademark_length);
#    #print "TRADEMARK: $buf\n\n";


#}

sub get_table_address {
    my $self = shift;
    my $table_name = shift;

    if (defined($self->{table}->{$table_name})){
	return $self->{table}->{$table_name};
    } else {
	croak "Undefined table address in Pastel::Font::TTF::get_table_address()\n";
	}
}

sub make_glyph_index {
    my $self = shift;
    my $buf;
    my $offset;
    my $fh = $self->get_file_handle();
    my $PLATFORM_ID = $self->{platform};
    my $ENCODING_ID = $self->{encoding};
    # Glyph indices are stored in "cmap" table. We get the offset of the
    # "cmap" table from the %table hash

    my $cmap = $self->get_table_address('cmap');

    #Go there
    seek ($fh, $cmap, 0);

    #'cmap' table starts with
    # USHORT    Table version number
    # USHORT    Number of encoding tables
    # Read 4 bytes
    read ($fh, $buf, 4);

    #Get number of tables and skip the version number
    my ($num) = unpack ("x2n", $buf);

    # Read the tables. There will $num tables
    # Each one for a specific encoding and platform id
    # There are three most important id and encoding-
    # Windows        :      ID=3    Encoding = 1
    # Windows symbol :      ID=3    Encoding = 0
    # Mac/Poscript   :      ID=1    Encoding = 0

    #Each subtable:
    # USHORT         Platform ID
    # USHORT         Platform specific encoding ID
    # ULONG          Byte ofset from the begining of the 'cmap' table
    
    for(my $i = 0; $i < $num; $i++){
       read($fh, $buf, 8); 
       my($id, $encoding, $off) = unpack("nnN", $buf);

       if($id == $PLATFORM_ID && $encoding == $ENCODING_ID){
              $offset = $off;
       }
   }

    #Goto the specific table
    seek($fh, $cmap + $offset, 0);

    # Mac/Poscript table with encoding 0 use the following format
    # USHORT    format set to 0
    # USHORT    length
    # USHORT    version starts at 0
    # BYTE      glyphIdArray[256] There is no trick here just read the whole
    #           thing as 256 array

    # If MAC/Postcript table
    if ($PLATFORM_ID =="1" && $ENCODING_ID=="0"){
	# Skip the format, length and version information
	read($fh, $buf, 6);
	#print (unpack("nnn", $buf));
	# Now read the 256 element array directly

	for (my $i =0; $i < 256; $i++){
	    read($fh, $buf,1);
	    #print $buf;
	    $self->{glyphs}->[$i] = unpack("C", $buf);
	    #print $self->{glyphs}->[$i];
	    print "Char $i\t\t-> Index $self->{glyphs}->[$i]\n";
	}

    }

    # Windows  table with encoding 1 use the following format FORMAT 4
 #   USHORT         format                 Format number is set to 4. 
#    USHORT         length                 Length in bytes. 
#    USHORT         version                Version number (starts at 0).
#    USHORT         segCountX2             2 x segCount.
#    USHORT         searchRange            2 x (2**floor(log2(segCount)))
#    USHORT         entrySelector          log2(searchRange/2)
#    USHORT         rangeShift             2 x segCount - searchRange
#    USHORT         endCount[segCount]     End characterCode for each segment,
#                                           last =0xFFFF.
#    USHORT         reservedPad            Set to 0.
#    USHORT         startCount[segCount]   Start character code for each segment.
#    USHORT         idDelta[segCount]      Delta for all character codes in segment.
#    USHORT         idRangeOffset[segCount]Offsets into glyphIdArray or 0
#    USHORT         glyphIdArray[ ]        Glyph index array (arbitrary length)
    if ( $PLATFORM_ID == "3" && $ENCODING_ID =="1"){
	 read ($fh, $buf, 6);
	 my ($format, $length, $version) = unpack("nnn", $buf);
	 #print "Format: $format\tLength: $length\tVersion: $version\n\n";
	 read ($fh, $buf,8);
	 my ($seg_countX2, $search_range, $entry_selector, $range_shift)  
	   = unpack("nnnn", $buf);
	 my $seg_count = $seg_countX2 / 2;
	# print "SegcountX2:\t\t$seg_countX2\n";
#	 print "Search Range:\t$search_range\n";
#	 print "Entry:\t$entry_selector\n";
#	 print "Range Shift:\t$range_shift\n";
    
	 read($fh, $buf, 2 * $seg_count);
	 my(@end_count) = unpack("n" x $seg_count, $buf);
	 #print "EndCount: ", join("\t",@end_count), "\n";
	 read($fh, $buf, 2);
	 my $reserve_pad = unpack("n", $buf);
	 #print "Reserve Pad: $reserve_pad\n";

	 read($fh, $buf, 2 * $seg_count);
	 my(@start_count) = unpack("n" x $seg_count, $buf);
	 #print "Start Count: ", join("\t",@start_count), "\n";

	 read($fh, $buf, 2 * $seg_count);
	 my(@id_delta) = unpack("n" x $seg_count, $buf);
	 #print "idDelta: ", join("\t",@id_delta), "\n";

	 read($fh, $buf, 2 * $seg_count);
	 my(@id_range_offset) = unpack("n" x $seg_count, $buf);
	 #print "idRangeOffset: ", join("\t",@id_range_offset), "\n";

	 my $num = read($fh, $buf, $length - ($seg_count * 8) - 16);
	 my (@glyph_id) = unpack("n" x ($num / 2), $buf);

#	 for(my $i = 0; $i <@end_count; $i++){
#           if ( ($INDEX <= $end_count[$i]) && ($INDEX >= $start_count[$i]) ){
#              if ($id_range_offset[$i] == 0){
#                 return $INDEX + $id_delta[$i] -($id_delta[$i]> 32767 ? 65536: 0);
#              }
#              else {
#                   my $offset = $INDEX - $start_count[$i];
#                   print "OFFSET ===== $offset\n";
#                   if ($glyph_id[$offset] == 0){
                      
#                      return 0;
#                   }
#                   else{
                      
#                      return $glyph_id[$offset] + $id_delta[$i] - ($id_delta[$i]> 32767 ? 65536: 0);
                   
#                   }   
#              }
#	  }
	   
#       }

	 for ( my $i = 0; $i < 256; $i++){
	     for (my $j = 0; $j <$seg_count; $j++){

		 if ($end_count[$j] >= $i && $start_count[$j] <= $i){
		     #print "ID RANGE OFFSET $id_range_offset[$j]", "\n";
		     if ($id_range_offset[$j] != 0){
			 
			 $self->{glyphs}->[$i] = $glyph_id[$id_range_offset[$j]/2 + ($i - $start_count[$j]) - ($seg_count - $j)];
		     }
		     else {
			$self->{glyphs}->[$i] = ($id_delta[$j] + $i) % 65536;
		       }
		 }
	     }
	   if (!defined($self->{glyphs}->[$i])){
	       #$self->{glyphs}->[$i] = $glyph_id[0];
	       $self->{glyphs}->[$i] = 0;
	   }
	   #print "Char $i -> \t\t $self->{glyphs}->[$i]\n";    
	}
	     
     }
}

sub get_advance_width {
    my $self = shift;
    my $fh = $self->get_file_handle();
    my $buf;
    
    seek($fh, $self->{table}->{"hhea"}, 0);
    read($fh, $buf, 36) == 36 || die "reading hhea table";
    my($h_num) = unpack("x34n", $buf);
    my $num = $h_num;
    my $index = shift;
    seek($fh, $self->{table}->{"hmtx"}, 0);
    read($fh, $buf, 4 * $num) == 4 * $num || die "reading hmtx table";
    my (@h_temp) = unpack("n" x (2 * $num), $buf);
   # print "******@h_temp\n";
    my (@advanced_width);
    my (@lsb);
    for (my $i = 0; $i < @h_temp; $i +=2){
        push (@advanced_width,$h_temp[$i]);
        #print $h_temp[$i];
    }
    for (my $i = 1; $i < @h_temp; $i +=2){   
        push (@lsb,$h_temp[$i]);
    }
#print @advanced_width, "\n";
#print @lsb;
    
    if ($index > @lsb){$index = @lsb;}
    my $a = $advanced_width[$index] - ($advanced_width[$index] > 32768 ? 65536 : 0);
    my $l = $lsb[$index] - ($lsb[$index] > 32768 ? 65536 :0);
    
    #return $a, $l;
    return $a;
 }

sub get_leading {
    my $self = shift;
    if (defined($self->{leading})){
	return $self->{leading};
    } else {
	$self->_parse_os2();
        #$self->{leading} = $self->_get_leading();
	return $self->{leading};
	}
}

sub _get_leading {
    my $self = shift;
    my $fh = $self->get_file_handle();

    # Get the adress of the OS/2 table
    my $add = $self->get_table_address('OS/2');
    my $buf;
    #print $add, "\n";

    #Leading is sTypoLineGap in OS/2 table
    seek($fh, $add, 0);
    read($fh, $buf, 74) == 74 || die "reading OS/2 table";
    my ($leading) = unpack("x72n", $buf);
    #print join(" ",@panose), "\n";
    #print $leading, "\n";
    return $leading - ($leading > 32768 ? 65536 : 0);
}

sub get_units_per_em {
    my $self = shift;

    # Get Headtable address
    my $add = $self->get_table_address("head");
    my $buf;
    my $fh = $self->get_file_handle();
    
    seek($fh, $add, 0);

    read($fh, $buf, 54) == 54 || die "reading head table";
    my($units_per_em, $index_to_loc) = unpack("x18nx30n", $buf);

   # print "Unit/EM: $units_per_em\tIndex_to_loc: $index_to_loc\n\n";

    return $units_per_em;
}

    
sub get_ascent {
    my $self = shift;
    if (defined($self->{ascent})){
	return $self->{ascent};
    } else {
	$self->_parse_os2();
        #$self->{ascent} = $self->_get_ascent();
	return $self->{ascent};
	}
}

sub _get_ascent {
    my $self = shift;
    my $fh = $self->get_file_handle();

    # Get the adress of the OS/2 table
    my $add = $self->get_table_address('OS/2');
    my $buf;
    #print $add, "\n";

    # Ascent is  is sTypoAscender in OS/2 table
    seek($fh, $add, 0);
    read($fh, $buf, 70) == 70 || die "reading OS/2 table";
    my ($ascent) = unpack("x68n", $buf);
    #print join(" ",@panose), "\n";
    #print $ascent, "\n";
    return $ascent - ($ascent > 32768 ? 65536 : 0);
}

sub get_descent {
    my $self = shift;
    if (defined($self->{descent})){
	return $self->{descent};
    } else {
	$self->_parse_os2();
        #$self->{descent} = $self->_get_descent();
	return $self->{descent};
	}
}
    
sub _parse_os2 {
    my $self = shift;
    my $fh = $self->get_file_handle();
    my $add = $self->get_table_address('OS/2');
    my $buf;

    seek($fh, $add, 0);
    read($fh, $buf, 74) == 74 || die "reading OS/2 table";
    my ($ascent, $descent, $leading) =
               unpack("x68nnn", $buf);
    $self->{ascent} = $ascent - ($ascent > 32768 ? 65536 : 0);
    $self->{descent} = $descent - ($descent > 32768 ? 65536 :0);
    $self->{leading} = $leading - ($leading > 32768 ? 65536 :0);
}
sub get_font_family {
  my $self = shift;
  if ( defined($self->{family}) ){
    return $self->{family};
  } else {
    $self->_parse_name_table();
  }
  return $self->{family};
}

sub get_subfamily {
  my $self = shift;
  if ( defined( $self->{subfamily})){
    return $self->{subfamily};
  } else {
    $self->_parse_name_table();
    }
return $self->{subfamily};
 }

sub _parse_name_table {

  my $self = shift;
  my $buf;
  my $fh = $self->get_file_handle();

   my  $LANGUAGE_ID;
    
    if ( $PLATFORM_ID =="1" && $ENCODING_ID =="0"){
	$LANGUAGE_ID = 0;
    }
    else {
	$LANGUAGE_ID = 1033;
    }
    my $add = $self->get_table_address("name");
    seek ($fh, $add, 0);
    read($fh, $buf, 6);
    my ( $num , $offset) = unpack ("x2nn", $buf);
    #print "*******NAME : Number of records, $num, Offset: $offset\n";

    my ($copyright_offset, $font_family_name_offset,
	$subfamily_offset, $id_offset,$full_name_offset,
	$version_string_offset, $postscript_offset, $trademark_offset);

    my ($copyright_length, $font_family_length,
	$subfamily_length, $id_length, $full_name_length,
	$version_length, $postscript_length, $trademark_length);
    
    for (my $i = 0; $i < $num; $i++){
	read ($fh, $buf, 12);
	my ($id, $encoding, $language, $name_id, $length, $string_offset)
	   = unpack("n6", $buf);
	#print "****NAMERECORDS: $id, $encoding, $language, $name_id, $length, $string_offset\n";

	if ( ($id == $PLATFORM_ID)&&         # Windows??
	     ($encoding == $ENCODING_ID) &&  #UGL??
	     ($language == $LANGUAGE_ID)
	   ) {
	    if ($name_id == 0 ) { #Copyright
		$copyright_offset = $string_offset;
		$copyright_length = $length;
	    }
	    if ($name_id == 1 ) { # Familyname
		$font_family_name_offset = $string_offset;
		$font_family_length =  $length;
	    }
	    if ($name_id == 2 ) { # Subfamily
		$subfamily_offset = $string_offset;
		$subfamily_length = $length;
	    }
	    if ($name_id == 3 ) { # Identifier
		$id_offset = $string_offset;
		$id_length = $length;
	    }
	    if ($name_id == 4 ) { # Full name
	        $full_name_offset = $string_offset;
		$full_name_length = $length;
	    }
	    if ($name_id == 5 ) { #version string
		$version_string_offset = $string_offset;
		$version_length = $length;
	    }
	    if ( $name_id == 6) { # Postscript name
		$postscript_offset = $string_offset;
		$postscript_length = $length;
	    }
	    if ($name_id == 7 ) { # Trademark
		$trademark_offset = $string_offset;
 		$trademark_length = $length;
	    }
	}

    } # End for loop;

    # Print copyright
    seek ( $fh, $self->get_table_address("name") + $offset + $copyright_offset, 0);
    read ($fh, $buf, $copyright_length);
   # print "COPYRIGHT: $buf\n\n";

    # Print familyname
    seek ($fh, $self->get_table_address("name") + $offset + $font_family_name_offset, 0 );
    read ( $fh, $buf, $font_family_length);
 
  
    #print $s;
    $self->{family}=  $self->_remove_white_space($buf, $font_family_length);
    #print  "\n****", "@char", "*****\n"; 
    #return "@char";
# print "FAMILY: $buf\n\n";
    
    #Print Subfamily
    seek ($fh, $self->get_table_address('name') + $offset + $subfamily_offset, 0);
    read ($fh, $buf, $subfamily_length);
    #print "SUBFAMILY: $buf\n\n";
   $self->{subfamily} = $self->_remove_white_space($buf, $subfamily_length);

    #Print Identifier
    seek ( $fh, $self->get_table_address('name') + $offset +$id_offset, 0);
     read ($fh, $buf, $id_length);
    #print "ID: $buf\n\n";

    #Print Full name
    seek ( $fh, $self->get_table_address('name') + $offset +$full_name_offset, 0);
     read ($fh, $buf, $full_name_length);
    #print "FULL NAME: $buf\n\n";

    #Print Version string
    seek ( $fh, $self->get_table_address('name') + $offset +$version_string_offset, 0);
     read ($fh, $buf, $version_length);
    #print "VERSION: $buf\n\n";


    #Print Postscript
    seek ( $fh, $self->get_table_address('name') + $offset +$postscript_offset, 0);
     read ($fh, $buf, $postscript_length);
    #print "Postscript: $buf\n\n";

#Print Trademark
    seek ( $fh, $self->get_table_address('name') + $offset +$trademark_offset, 0);
     read ($fh, $buf, $trademark_length);
    #print "TRADEMARK: $buf\n\n";


}

sub _remove_white_space {
  my $self = shift;
  my $buf = shift;
  my $font_family_length = shift;
     my @char = unpack("C*",$buf);
    my $i = $font_family_length;
   my $s = "";
    my $j = 0;
    while ( $j < $i){  
      if (defined $char[$j+1]){
      $s .= pack("C",$char[$j+1]);}
      $j += 2;
    }
  return $s;
}
1;
