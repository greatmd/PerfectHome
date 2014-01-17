# Tea.pm 
#########################################################################
#        This Perl module is Copyright (c) 2000, Peter J Billam         #
#               c/o P J B Computing, www.pjb.com.au                     #
#                                                                       #
#     This module is free software; you can redistribute it and/or      #
#            modify it under the same terms as Perl itself.             #
#########################################################################
#
# implements TEA, the Tiny Encryption Algorithm, in Perl and Javascript.
# http://www.cl.cam.ac.uk/ftp/papers/djw-rmn/djw-rmn-tea.html
#
# Usage:
#    use Tea;
#    $key = 'PUFgob$*LKDF D)(F IDD&P?/';
#    $ascii_ciphertext = &encrypt ($plaintext, $key);
#    ...
#    $plaintext_again = &decrypt ($ascii_ciphertext, $key);
#    ...
#    $signature = &asciidigest ($text);
#
# The $key is a sufficiently longish string; at least 17 random 8-bit bytes
#
# Written by Peter J Billam, http://www.pjb.com.au

package Crypt::Tea;
$VERSION = '1.43';

# Don't like depending on externals; this is strong encrytion ... but ...
use Exporter; @ISA = qw(Exporter);
@EXPORT=qw(asciidigest encrypt decrypt
 tea_in_javascript str2ascii ascii2str encrypt_and_write);

# begin config
my %a2b = (
	A=>000, B=>001, C=>002, D=>003, E=>004, F=>005, G=>006, H=>007,
	I=>010, J=>011, K=>012, L=>013, M=>014, N=>015, O=>016, P=>017,
	Q=>020, R=>021, S=>022, T=>023, U=>024, V=>025, W=>026, X=>027,
	Y=>030, Z=>031, a=>032, b=>033, c=>034, d=>035, e=>036, f=>037,
	g=>040, h=>041, i=>042, j=>043, k=>044, l=>045, m=>046, n=>047,
	o=>050, p=>051, q=>052, r=>053, s=>054, t=>055, u=>056, v=>057,
	w=>060, x=>061, y=>062, z=>063, '0'=>064,  '1'=>065, '2'=>066, '3'=>067,
	'4'=>070,'5'=>071,'6'=>072,'7'=>073,'8'=>074,'9'=>075,'+'=>076,'_'=>077,
);
my %b2a = reverse %a2b;
# end config

# ------------------ infrastructure ...

sub tea_in_javascript {
	my @js; while (<DATA>) { last if /^EOT$/; push @js, $_; } join '', @js;
}
sub encrypt_and_write { my ($str, $key) = @_;
	return unless $str; return unless $key;
	print
	"<SCRIPT LANGUAGE=\"JavaScript\">\n<!--\nparent.decrypt_and_write('";
	print &encrypt($str,$key);
	print "');\n// -->\n</SCRIPT>\n";
}
sub binary2ascii {
	return &str2ascii(&binary2str(@_));
}
sub ascii2binary {
	return &str2binary(&ascii2str($_[$[]));
}
sub str2binary {   my @str = split //, $_[$[];
	my @intarray = (); my $ii = $[;
	while (1) {
		last unless @str; $intarray[$ii]  = (0xFF & ord shift @str)<<24;
		last unless @str; $intarray[$ii] |= (0xFF & ord shift @str)<<16;
		last unless @str; $intarray[$ii] |= (0xFF & ord shift @str)<<8;
		last unless @str; $intarray[$ii] |=  0xFF & ord shift @str;
		$ii++;
	}
	return @intarray;
}
sub binary2str {
	my @str = ();
	foreach $i (@_) {
		push @str, chr (0xFF & ($i>>24)), chr (0xFF & ($i>>16)),
		 chr (0xFF & ($i>>8)), chr (0xFF & $i);
	}
	return join '', @str;
}
sub ascii2str {   my $a = $_[$[]; # converts pseudo-base64 to string of bytes
	$a =~ tr#A-Za-z0-9+_##cd;
	my $ia = $[-1;  my $la = length $a;   # BUG not length, final!
	my $ib = $[;  my @b = ();
	my $carry;
	while (1) {   # reads 4 ascii chars and produces 3 bytes
		$ia++; last if ($ia>=$la);
		$b[$ib]  = $a2b{substr $a, $ia+$[, 1}<<2;
		$ia++; last if ($ia>=$la);
		$carry=$a2b{substr $a, $ia+$[, 1};  $b[$ib] |= ($carry>>4); $ib++;
		# if low 4 bits of $carry are 0 and its the last char, then break
		$carry = 0xF & $carry; last if ($carry == 0 && $ia == ($la-1));
		$b[$ib]  = $carry<<4;
		$ia++; last if ($ia>=$la);
		$carry=$a2b{substr $a, $ia+$[, 1};  $b[$ib] |= ($carry>>2); $ib++;
		# if low 2 bits of $carry are 0 and its the last char, then break
		$carry = 03 & $carry; last if ($carry == 0 && $ia == ($la-1));
		$b[$ib]  = $carry<<6;
		$ia++; last if ($ia>=$la);
		$b[$ib] |= $a2b{substr $a, $ia+$[, 1}; $ib++;
	}
	return pack 'c*', @b;
}
sub str2ascii {   my $b = $_[$[]; # converts string of bytes to pseudo-base64
	my $ib = $[;  my $lb = length $b;  my @s = ();
	my $b1; my $b2; my $b3;
	my $carry;
	while (1) {   # reads 3 bytes and produces 4 ascii chars
		if ($ib >= $lb) { last; };
		$b1 = ord substr $b, $ib+$[, 1;  $ib++;
		push @s, $b2a{$b1>>2}; $carry = 03 & $b1;
		if ($ib >= $lb) { push @s, $b2a{$carry<<4}; last; }
		$b2 = ord substr $b, $ib+$[, 1;  $ib++;
		push @s, $b2a{($b2>>4) | ($carry<<4)}; $carry = 0xF & $b2;
		if ($ib >= $lb) { push @s, $b2a{$carry<<2}; last; }
		$b3 = ord substr $b, $ib+$[, 1;  $ib++;
		push @s, $b2a{($b3>>6) | ($carry<<2)}, $b2a{077 & $b3};
		if (!$ENV{REMOTE_ADDR} && (($ib % 36) == 0)) { push @s, "\n"; }
	}
	return join ('', @s);
}
sub asciidigest {   # returns 22-char ascii signature
	return &binary2ascii(&binarydigest($_[$[]));
}
sub binarydigest { my $str = $_[$[];  # returns 4 32-bit-int binary signature
	# warning: mode of use invented by Peter Billam 1998, needs checking !
	return '' unless $str;
	# add 1 char ('0'..'15') at front to specify no of pad chars at end ...
	my $npads = 15 - ((length $str) % 16);
	$str  = chr($npads) . $str;
	if ($npads) { $str .= "\0" x $npads; }
	my @str = &str2binary($str);
	my @key = (0x61626364, 0x62636465, 0x63646566, 0x64656667);

	my ($cswap, $v0, $v1, $v2, $v3);
	my $c0 = 0x61626364; my $c1 = 0x62636465; # CBC Initial Value. Retain !
	my $c2 = 0x61626364; my $c3 = 0x62636465; # likewise (abcdbcde).
	while (@str) {
		# shift 2 blocks off front of str ...
		$v0 = shift @str; $v1 = shift @str; $v2 = shift @str; $v3 = shift @str;
		# cipher them XOR'd with previous stage ...
		($c0,$c1) = &tea_code ($v0^$c0, $v1^$c1, @key);
		($c2,$c3) = &tea_code ($v2^$c2, $v3^$c3, @key);
		# mix up the two cipher blocks with a 4-byte left rotation ...
		$cswap  = $c0; $c0=$c1; $c1=$c2; $c2=$c3; $c3=$cswap;
	}
	return ($c0,$c1,$c2,$c3);
}
sub encrypt { my ($str,$key)=@_; # encodes with CBC (Cipher Block Chaining)
	use integer;
	return '' unless $str; return '' unless $key;
	@key = &binarydigest($key);

	# add 1 char ('0'..'7') at front to specify no of pad chars at end ...
	my $npads = 7 - ((length $str) % 8);
	$str  = chr($npads|(0xF8 & &rand_byte)) . $str;
	if ($npads) {
		my $padding = pack 'CCCCCCC', &rand_byte, &rand_byte,
		 &rand_byte, &rand_byte, &rand_byte, &rand_byte, &rand_byte; 
		$str  = $str . substr($padding,$[,$npads);
	}
	my @pblocks = &str2binary($str);
	my $v0; my $v1;
	my $c0 = 0x61626364; my $c1 = 0x62636465; # CBC Initial Value. Retain !
	my @cblocks;
	while (1) {
		last unless @pblocks; $v0 = shift @pblocks; $v1 = shift @pblocks;
		($c0,$c1) = &tea_code ($v0^$c0, $v1^$c1, @key);
		push @cblocks, $c0, $c1;
	}
	my $btmp = &binary2str(@cblocks);
	return &str2ascii( &binary2str(@cblocks) );
}
sub decrypt { my ($acstr, $key) = @_;   # decodes with CBC
	use integer;
	return '' unless $acstr; return '' unless $key;
	@key = &binarydigest($key);
	my $v0; my $v1; my $c0; my $c1; my @pblocks = (); my $de0; my $de1;
	my $lastc0 = 0x61626364; my $lastc1 = 0x62636465; # CBC Init Val. Retain!
	my @cblocks = &str2binary( &ascii2str($acstr) );
	while (1) {
		last unless @cblocks; $c0 = shift @cblocks; $c1 = shift @cblocks;
		($de0, $de1) = &tea_decode ($c0,$c1, @key);
		$v0 = $lastc0 ^ $de0;   $v1 = $lastc1 ^ $de1;
		push @pblocks, $v0, $v1;
		$lastc0 = $c0;   $lastc1 = $c1;
	}
	my $str = &binary2str( @pblocks );
	# remove no of pad chars at end specified by 1 char ('0'..'7') at front
	my $npads = 0x7 & ord $str; substr ($str, $[, 1) = '';
	if ($npads) { substr ($str, 0 - $npads) = ''; }
	return $str;
}
sub triple_encrypt { my ($plaintext,  $long_key) = @_;  # not yet ...
}
sub triple_decrypt { my ($cyphertext, $long_key) = @_;  # not yet ...
}
sub tea_code  { my ($v0,$v1, $k0,$k1,$k2,$k3) = @_;
	# TEA. 64-bit cleartext block in $v0,$v1. 128-bit key in $k0..$k3.
	# &prn("tea_code: v0=$v0 v1=$v1");
	use integer;
	my $sum = 0; my $n = 32;
	while ($n-- > 0) {
		$sum += 0x9e3779b9;   # TEA magic number delta
		$v0 += (($v1<<4)+$k0) ^ ($v1+$sum) ^ ((0x07FFFFFF & ($v1>>5))+$k1) ;
		$v1 += (($v0<<4)+$k2) ^ ($v0+$sum) ^ ((0x07FFFFFF & ($v0>>5))+$k3) ;
	}
	return ($v0, $v1);
}
sub tea_decode  { my ($v0,$v1, $k0,$k1,$k2,$k3) = @_;
	# TEA. 64-bit cyphertext block in $v0,$v1. 128-bit key in $k0..$k3.
	use integer;
	my $sum = 0; my $n = 32;
	$sum = 0x9e3779b9 << 5 ;   # TEA magic number delta
	while ($n-- > 0) {
		$v1 -= (($v0<<4)+$k2) ^ ($v0+$sum) ^ ((0x07FFFFFF & ($v0>>5))+$k3) ;
		$v0 -= (($v1<<4)+$k0) ^ ($v1+$sum) ^ ((0x07FFFFFF & ($v1>>5))+$k1) ;
		$sum -= 0x9e3779b9 ;
	}
	return ($v0, $v1);
}
sub rand_byte {
	if (! $rand_byte_already_called) {
	  # Jengwei Pan to keep the same seed
	  #srand(time() ^ ($$+($$<<15))); # could do better, but its only padding
	  srand(1121);
	  $rand_byte_already_called = 1;
	}
	int(rand 256);
}
1;

__DATA__

<SCRIPT LANGUAGE="JavaScript">
<!--
//        This JavaScript is Copyright (c) 2000, Peter J Billam
//              c/o P J B Computing, www.pjb.com.au
// It was generated by the Crypt::Tea.pm Perl module and is free software;
// you can redistribute and modify it under the same terms as Perl itself.

// -- conversion routines between string, bytes, ascii encoding, & blocks --
function binary2ascii (s) {
 return bytes2ascii( blocks2bytes(s) );
}
function binary2str (s) {
 return bytes2str( blocks2bytes(s) );
}
function ascii2binary (s) {
 return bytes2blocks( ascii2bytes(s) );
}
function str2binary (s) {
 return bytes2blocks( str2bytes(s) );
}
function str2bytes(s) {   // converts string to array of bytes
 var is = 0;  var ls = s.length;  var b = new Array();
 while (1) {
  if (is >= ls) break;
  if (c2b[s.charAt(is)] == null) { b[is] = 0xF7;
   alert ('is = '+is + '\nchar = '+s.charAt(is) + '\nls = '+ls);
  } else { b[is] = c2b[s.charAt(is)];
  }
  is++;
 }
 return b;
}
function bytes2str(b) {   // converts array of bytes to string
 var ib = 0;  var lb = b.length;  var s = '';
 while (1) {
  if (ib >= lb) break;
  s += b2c[0xFF&b[ib]];   // if its like perl, could be faster with join
  ib++;
 }
 return s;
}
function ascii2bytes(a) { // converts pseudo-base64 to array of bytes
 var ia = -1;  var la = a.length;
 var ib = 0;  var b = new Array();
 var carry;
 while (1) {   // reads 4 chars and produces 3 bytes
  while (1) { ia++; if (ia>=la) return b; if (a2b[a.charAt(ia)]!=null) break; }
  b[ib]  = a2b[a.charAt(ia)]<<2;
  while (1) { ia++; if (ia>=la) return b; if (a2b[a.charAt(ia)]!=null) break; }
  carry=a2b[a.charAt(ia)];  b[ib] |= carry>>>4; ib++;
  // if low 4 bits of carry are 0 and its the last char, then break
  carry = 0xF & carry;
  if (carry == 0 && ia == (la-1)) return b;
  b[ib]  = carry<<4;
  while (1) { ia++; if (ia>=la) return b; if (a2b[a.charAt(ia)]!=null) break; }
  carry=a2b[a.charAt(ia)];  b[ib] |= carry>>>2; ib++;
  // if low 2 bits of carry are 0 and its the last char, then break
  carry = 03 & carry;
  if (carry == 0 && ia == (la-1)) return b;
  b[ib]  = carry<<6;
  while (1) { ia++; if (ia>=la) return b; if (a2b[a.charAt(ia)]!=null) break; }
  b[ib] |= a2b[a.charAt(ia)];   ib++;
 }
 return b;
}
function bytes2ascii(b) { // converts array of bytes to pseudo-base64 ascii
 var ib = 0;   var lb = b.length;  var s = '';
 var b1; var b2; var b3;
 var carry;
 while (1) {   // reads 3 bytes and produces 4 chars
  if (ib >= lb) break;   b1 = 0xFF & b[ib];
  s += b2a[077 & (b1>>>2)];
  carry = 03 & b1;
  ib++;  if (ib >= lb) { s += b2a[carry<<4]; break; }  b2 = 0xFF & b[ib];
  s += b2a[(0xF0 & (carry<<4)) | (b2>>>4)];
  carry = 0xF & b2;
  ib++;  if (ib >= lb) { s += b2a[carry<<2]; break; }  b3 = 0xFF & b[ib];
  s += b2a[(074 & (carry<<2)) | (b3>>>6)] + b2a[077 & b3];
  ib++;
  if (ib % 36 == 0) s += "\n";
 }
 return s;
}
function bytes2blocks(bytes) {
 var blocks = new Array(); var ibl = 0;
 var iby = 0; var nby = bytes.length;
 while (1) {
  blocks[ibl]  = (0xFF & bytes[iby])<<24; iby++; if (iby >= nby) break;
  blocks[ibl] |= (0xFF & bytes[iby])<<16; iby++; if (iby >= nby) break;
  blocks[ibl] |= (0xFF & bytes[iby])<<8;  iby++; if (iby >= nby) break;
  blocks[ibl] |=  0xFF & bytes[iby];      iby++; if (iby >= nby) break;
  ibl++;
 }
 return blocks;
}
function blocks2bytes(blocks) {
 var bytes = new Array(); var iby = 0;
 var ibl = 0; var nbl = blocks.length;
 while (1) {
  if (ibl >= nbl) break;
  bytes[iby] = 0xFF & (blocks[ibl] >>> 24); iby++;
  bytes[iby] = 0xFF & (blocks[ibl] >>> 16); iby++;
  bytes[iby] = 0xFF & (blocks[ibl] >>> 8);  iby++;
  bytes[iby] = 0xFF & blocks[ibl]; iby++;
  ibl++;
 }
 return bytes;
}
function digest_pad (bytearray) {
 // add 1 char ('0'..'15') at front to specify no of \0 pad chars at end
 var newarray = new Array();  var ina = 0;
 var iba = 0; var nba = bytearray.length;
 var npads = 15 - (nba % 16); newarray[ina] = npads; ina++;
 while (iba < nba) { newarray[ina] = bytearray[iba]; ina++; iba++; }
 var ip = npads; while (ip>0) { newarray[ina] = 0; ina++; ip--; }
 return newarray;
}
function pad (bytearray) {
 // add 1 char ('0'..'7') at front to specify no of rand pad chars at end
 // unshift and push fail on Netscape 4.7 :-(
 var newarray = new Array();  var ina = 0;
 var iba = 0; var nba = bytearray.length;
 var npads = 7 - (nba % 8);
 newarray[ina] = (0xF8 & rand_byte()) | (07 & npads); ina++;
 while (iba < nba) { newarray[ina] = bytearray[iba]; ina++; iba++; }
 var ip = npads; while (ip>0) { newarray[ina] = rand_byte(); ina++; ip--; }
 return newarray;
}
function rand_byte() {   // used by pad
 return Math.floor( 256*Math.random() );  // Random needs js1.1 . Seed ?
 // for js1.0 compatibility, could try following ...
 if (! rand_byte_already_called) {
  var now = new Date();  seed = now.milliseconds;
  rand_byte_already_called = true;
 }
 seed = (1029*seed + 221591) % 1048576;  // see Fortran77, Wagener, p177
 return Math.floor(seed / 4096);
}
function unpad (bytearray) {
 // remove no of pad chars at end specified by 1 char ('0'..'7') at front
 // unshift and push fail on Netscape 4.7 :-(
 var iba = 0;
 var newarray = new Array();  var ina = 0;
 var npads = 0x7 & bytearray[iba]; iba++; var nba = bytearray.length - npads;
 while (iba < nba) { newarray[ina] = bytearray[iba]; ina++; iba++; }
 return newarray;
}

// --- TEA stuff, translated from the Perl Tea.pm see www.pjb.com.au/comp ---

// In JavaScript we express an 8-byte block as an array of 2 32-bit ints
function asciidigest (str) {
 return binary2ascii( binarydigest(str) );
}
function binarydigest (str, keystr) {  // returns 22-char ascii signature
 var key = new Array(); // key = binarydigest(keystr);
 key[0]=0x61626364; key[1]=0x62636465; key[2]=0x63646566; key[3]=0x64656667;

 // Initial Value for CBC mode = "abcdbcde". Retain for interoperability.
 var c0 = new Array(); c0[0] = 0x61626364; c0[1] = 0x62636465;
 var c1 = new Array(); c1 = c0;

 var v0 = new Array(); var v1 = new Array(); var swap;
 var blocks = new Array(); blocks = bytes2blocks(digest_pad(str2bytes(str))); 
 var ibl = 0;   var nbl = blocks.length;
 while (1) {
  if (ibl >= nbl) break;
  v0[0] = blocks[ibl]; ibl++; v0[1] = blocks[ibl]; ibl++;
  v1[0] = blocks[ibl]; ibl++; v1[1] = blocks[ibl]; ibl++;
  // cipher them XOR'd with previous stage ...
  c0 = tea_code( xor_blocks(v0,c0), key );
  c1 = tea_code( xor_blocks(v1,c1), key );
  // mix up the two cipher blocks with a 32-bit left rotation ...
  swap=c0[0]; c0[0]=c0[1]; c0[1]=c1[0]; c1[0]=c1[1]; c1[1]=swap;
 }
 var concat = new Array();
 concat[0]=c0[0]; concat[1]=c0[1]; concat[2]=c1[0]; concat[3]=c1[1];
 return concat;
}
function encrypt (str,keystr) {  // encodes with CBC (Cipher Block Chaining)
 if (! keystr) { alert("encrypt: no key"); return false; }
 var key = new Array();  key = binarydigest(keystr);
 if (! str) return "";
 var blocks = new Array(); blocks = bytes2blocks(pad(str2bytes(str)));
 var ibl = 0;  var nbl = blocks.length;
 // Initial Value for CBC mode = "abcdbcde". Retain for interoperability.
 var c = new Array(); c[0] = 0x61626364; c[1] = 0x62636465;
 var v = new Array(); var cblocks = new Array();  var icb = 0;
 while (1) {
  if (ibl >= nbl) break;
  v[0] = blocks[ibl];  ibl++; v[1] = blocks[ibl];  ibl++;
  c = tea_code( xor_blocks(v,c), key );
  cblocks[icb] = c[0]; icb++; cblocks[icb] = c[1]; icb++;
 }
 return binary2ascii(cblocks);
}
function decrypt (ascii, keystr) {   // decodes with CBC
 if (! keystr) { alert("decrypt: no key"); return false; }
 var key = new Array();  key = binarydigest(keystr);
 if (! ascii) return "";
 var cblocks = new Array(); cblocks = ascii2binary(ascii);
 var icbl = 0;  var ncbl = cblocks.length;
 // Initial Value for CBC mode = "abcdbcde". Retain for interoperability.
 var lastc = new Array(); lastc[0] = 0x61626364; lastc[1] = 0x62636465;
 var v = new Array(); var c = new Array();
 var blocks = new Array(); var ibl = 0;
 while (1) {
  if (icbl >= ncbl) break;
  c[0] = cblocks[icbl];  icbl++;  c[1] = cblocks[icbl];  icbl++;
  v = xor_blocks( lastc, tea_decode(c,key) );
  blocks[ibl] = v[0];  ibl++;  blocks[ibl] = v[1];  ibl++;
  lastc[0] = c[0]; lastc[1] = c[1];
 }
 return bytes2str(unpad(blocks2bytes(blocks)));
}
function xor_blocks(blk1, blk2) { // xor of two 8-byte blocks
 var blk = new Array();
 blk[0] = blk1[0]^blk2[0]; blk[1] = blk1[1]^blk2[1];
 return blk;
}
function tea_code (v, k) {
 // TEA. 2-int (64-bit) cyphertext block in v. 4-int (128-bit) key in k.
 var v0  = v[0]; var v1 = v[1];
 var k0  = k[0]; var k1 = k[1]; var k2 = k[2]; var k3 = k[3];
 var sum = 0; var n = 32;
 while (n-- > 0) {
  sum += 0x9e3779b9;  // TEA magic number
  v0 += ((v1<<4)+k0) ^ (v1+sum) ^ ((v1>>>5)+k1) ;
  v1 += ((v0<<4)+k2) ^ (v0+sum) ^ ((v0>>>5)+k3) ;
 }
 var w = new Array(); w[0] = v0; w[1] = v1; return w;
}
function tea_decode (v, k) {
 // TEA. 2-int (64-bit) cyphertext block in v. 4-int (128-bit) key in k.
 var v0 = v[0]; var v1 = v[1];
 var k0 = k[0]; var k1 = k[1]; var k2 = k[2]; var k3 = k[3];
 var sum = 0; var n = 32;
 sum = 0x9e3779b9 << 5 ;  // TEA magic number
 while (n-- > 0) {
  v1 -= ((v0<<4)+k2) ^ (v0+sum) ^ ((v0>>>5)+k3) ;
  v0 -= ((v1<<4)+k0) ^ (v1+sum) ^ ((v1>>>5)+k1) ;
  sum -= 0x9e3779b9 ;
 }
 var w = new Array(); w[0] = v0; w[1] = v1; return w;
}

// ------------- assocarys used by the conversion routines -----------
c2b = new Object();
c2b["\000"]=0000; c2b["\001"]=0001; c2b["\002"]=0002; c2b["\003"]=0003;
c2b["\004"]=0004; c2b["\005"]=0005; c2b["\006"]=0006; c2b["\007"]=0007;
c2b["\010"]=0010; c2b["\011"]=0011; c2b["\012"]=0012; c2b["\013"]=0013;
c2b["\014"]=0014; c2b["\015"]=0015; c2b["\016"]=0016; c2b["\017"]=0017;
c2b["\020"]=0020; c2b["\021"]=0021; c2b["\022"]=0022; c2b["\023"]=0023;
c2b["\024"]=0024; c2b["\025"]=0025; c2b["\026"]=0026; c2b["\027"]=0027;
c2b["\030"]=0030; c2b["\031"]=0031; c2b["\032"]=0032; c2b["\033"]=0033;
c2b["\034"]=0034; c2b["\035"]=0035; c2b["\036"]=0036; c2b["\037"]=0037;
c2b["\040"]=0040; c2b["\041"]=0041; c2b["\042"]=0042; c2b["\043"]=0043;
c2b["\044"]=0044; c2b["\045"]=0045; c2b["\046"]=0046; c2b["\047"]=0047;
c2b["\050"]=0050; c2b["\051"]=0051; c2b["\052"]=0052; c2b["\053"]=0053;
c2b["\054"]=0054; c2b["\055"]=0055; c2b["\056"]=0056; c2b["\057"]=0057;
c2b["\060"]=0060; c2b["\061"]=0061; c2b["\062"]=0062; c2b["\063"]=0063;
c2b["\064"]=0064; c2b["\065"]=0065; c2b["\066"]=0066; c2b["\067"]=0067;
c2b["\070"]=0070; c2b["\071"]=0071; c2b["\072"]=0072; c2b["\073"]=0073;
c2b["\074"]=0074; c2b["\075"]=0075; c2b["\076"]=0076; c2b["\077"]=0077;
c2b["\100"]=0100; c2b["\101"]=0101; c2b["\102"]=0102; c2b["\103"]=0103;
c2b["\104"]=0104; c2b["\105"]=0105; c2b["\106"]=0106; c2b["\107"]=0107;
c2b["\110"]=0110; c2b["\111"]=0111; c2b["\112"]=0112; c2b["\113"]=0113;
c2b["\114"]=0114; c2b["\115"]=0115; c2b["\116"]=0116; c2b["\117"]=0117;
c2b["\120"]=0120; c2b["\121"]=0121; c2b["\122"]=0122; c2b["\123"]=0123;
c2b["\124"]=0124; c2b["\125"]=0125; c2b["\126"]=0126; c2b["\127"]=0127;
c2b["\130"]=0130; c2b["\131"]=0131; c2b["\132"]=0132; c2b["\133"]=0133;
c2b["\134"]=0134; c2b["\135"]=0135; c2b["\136"]=0136; c2b["\137"]=0137;
c2b["\140"]=0140; c2b["\141"]=0141; c2b["\142"]=0142; c2b["\143"]=0143;
c2b["\144"]=0144; c2b["\145"]=0145; c2b["\146"]=0146; c2b["\147"]=0147;
c2b["\150"]=0150; c2b["\151"]=0151; c2b["\152"]=0152; c2b["\153"]=0153;
c2b["\154"]=0154; c2b["\155"]=0155; c2b["\156"]=0156; c2b["\157"]=0157;
c2b["\160"]=0160; c2b["\161"]=0161; c2b["\162"]=0162; c2b["\163"]=0163;
c2b["\164"]=0164; c2b["\165"]=0165; c2b["\166"]=0166; c2b["\167"]=0167;
c2b["\170"]=0170; c2b["\171"]=0171; c2b["\172"]=0172; c2b["\173"]=0173;
c2b["\174"]=0174; c2b["\175"]=0175; c2b["\176"]=0176; c2b["\177"]=0177;
c2b["\200"]=0200; c2b["\201"]=0201; c2b["\202"]=0202; c2b["\203"]=0203;
c2b["\204"]=0204; c2b["\205"]=0205; c2b["\206"]=0206; c2b["\207"]=0207;
c2b["\210"]=0210; c2b["\211"]=0211; c2b["\212"]=0212; c2b["\213"]=0213;
c2b["\214"]=0214; c2b["\215"]=0215; c2b["\216"]=0216; c2b["\217"]=0217;
c2b["\220"]=0220; c2b["\221"]=0221; c2b["\222"]=0222; c2b["\223"]=0223;
c2b["\224"]=0224; c2b["\225"]=0225; c2b["\226"]=0226; c2b["\227"]=0227;
c2b["\230"]=0230; c2b["\231"]=0231; c2b["\232"]=0232; c2b["\233"]=0233;
c2b["\234"]=0234; c2b["\235"]=0235; c2b["\236"]=0236; c2b["\237"]=0237;
c2b["\240"]=0240; c2b["\241"]=0241; c2b["\242"]=0242; c2b["\243"]=0243;
c2b["\244"]=0244; c2b["\245"]=0245; c2b["\246"]=0246; c2b["\247"]=0247;
c2b["\250"]=0250; c2b["\251"]=0251; c2b["\252"]=0252; c2b["\253"]=0253;
c2b["\254"]=0254; c2b["\255"]=0255; c2b["\256"]=0256; c2b["\257"]=0257;
c2b["\260"]=0260; c2b["\261"]=0261; c2b["\262"]=0262; c2b["\263"]=0263;
c2b["\264"]=0264; c2b["\265"]=0265; c2b["\266"]=0266; c2b["\267"]=0267;
c2b["\270"]=0270; c2b["\271"]=0271; c2b["\272"]=0272; c2b["\273"]=0273;
c2b["\274"]=0274; c2b["\275"]=0275; c2b["\276"]=0276; c2b["\277"]=0277;
c2b["\300"]=0300; c2b["\301"]=0301; c2b["\302"]=0302; c2b["\303"]=0303;
c2b["\304"]=0304; c2b["\305"]=0305; c2b["\306"]=0306; c2b["\307"]=0307;
c2b["\310"]=0310; c2b["\311"]=0311; c2b["\312"]=0312; c2b["\313"]=0313;
c2b["\314"]=0314; c2b["\315"]=0315; c2b["\316"]=0316; c2b["\317"]=0317;
c2b["\320"]=0320; c2b["\321"]=0321; c2b["\322"]=0322; c2b["\323"]=0323;
c2b["\324"]=0324; c2b["\325"]=0325; c2b["\326"]=0326; c2b["\327"]=0327;
c2b["\330"]=0330; c2b["\331"]=0331; c2b["\332"]=0332; c2b["\333"]=0333;
c2b["\334"]=0334; c2b["\335"]=0335; c2b["\336"]=0336; c2b["\337"]=0337;
c2b["\340"]=0340; c2b["\341"]=0341; c2b["\342"]=0342; c2b["\343"]=0343;
c2b["\344"]=0344; c2b["\345"]=0345; c2b["\346"]=0346; c2b["\347"]=0347;
c2b["\350"]=0350; c2b["\351"]=0351; c2b["\352"]=0352; c2b["\353"]=0353;
c2b["\354"]=0354; c2b["\355"]=0355; c2b["\356"]=0356; c2b["\357"]=0357;
c2b["\360"]=0360; c2b["\361"]=0361; c2b["\362"]=0362; c2b["\363"]=0363;
c2b["\364"]=0364; c2b["\365"]=0365; c2b["\366"]=0366; c2b["\367"]=0367;
c2b["\370"]=0370; c2b["\371"]=0371; c2b["\372"]=0372; c2b["\373"]=0373;
c2b["\374"]=0374; c2b["\375"]=0375; c2b["\376"]=0376; c2b["\377"]=0377;
b2c = new Object();
for (b in c2b) { b2c[c2b[b]] = b; }

// ascii to 6-bit bin to ascii
a2b = new Object();
a2b["A"]=000; a2b["B"]=001; a2b["C"]=002; a2b["D"]=003;
a2b["E"]=004; a2b["F"]=005; a2b["G"]=006; a2b["H"]=007;
a2b["I"]=010; a2b["J"]=011; a2b["K"]=012; a2b["L"]=013;
a2b["M"]=014; a2b["N"]=015; a2b["O"]=016; a2b["P"]=017;
a2b["Q"]=020; a2b["R"]=021; a2b["S"]=022; a2b["T"]=023;
a2b["U"]=024; a2b["V"]=025; a2b["W"]=026; a2b["X"]=027;
a2b["Y"]=030; a2b["Z"]=031; a2b["a"]=032; a2b["b"]=033;
a2b["c"]=034; a2b["d"]=035; a2b["e"]=036; a2b["f"]=037;
a2b["g"]=040; a2b["h"]=041; a2b["i"]=042; a2b["j"]=043;
a2b["k"]=044; a2b["l"]=045; a2b["m"]=046; a2b["n"]=047;
a2b["o"]=050; a2b["p"]=051; a2b["q"]=052; a2b["r"]=053;
a2b["s"]=054; a2b["t"]=055; a2b["u"]=056; a2b["v"]=057;
a2b["w"]=060; a2b["x"]=061; a2b["y"]=062; a2b["z"]=063;
a2b["0"]=064; a2b["1"]=065; a2b["2"]=066; a2b["3"]=067;
a2b["4"]=070; a2b["5"]=071; a2b["6"]=072; a2b["7"]=073;
a2b["8"]=074; a2b["9"]=075; a2b["+"]=076; a2b["_"]=077;

b2a = new Object();
for (b in a2b) { b2a[a2b[b]] = ''+b; }
// -->
</SCRIPT>
EOT

=pod

=head1 NAME

Tea.pm - The Tiny Encryption Algorithm in Perl and JavaScript

=head1 SYNOPSIS

Usage:

	use Crypt::Tea;
	$key = 'PUFgob$*LKDF D)(F IDD&P?/';
	$ascii_ciphertext = &encrypt ($plaintext, $key);
	...
	$plaintext_again = &decrypt ($ascii_ciphertext, $key);
	...
	$signature = &asciidigest ($text);

In CGI scripts:

	use Crypt::Tea;
	print &tea_in_javascript;  # now the browser can encrypt
	# and decrypt ! see CGI::Htauth.pm for examples ...

=head1 DESCRIPTION

This module implements TEA, the Tiny Encryption Algorithm,
and some Modes of Use, in Perl and JavaScript.

The $key is a sufficiently longish string; at least 17 random 8-bit
bytes for single encryption.

As of version 1.34, various Htauth-specific hook routines
have now been moved out into the I<CGI::Htauth.pm> module.

Version 1.43,
#COMMENT#

(c) Peter J Billam 1998

=head1 SUBROUTINES

=over 3

=item I<encrypt>( $plaintext, $key );

Encrypts with CBC (Cipher Block Chaining)

=item I<decrypt>( $ciphertext, $key );

Decrypts with CBC (Cipher Block Chaining)

=item I<binary2ascii>( $a_binary_string );

Provide an ascii text encoding of the binary argument.
If Tea.pm is not being invoked from a GCI script,
the ascii is split into lines of 72 characters.

=item I<ascii2binary>( $an_ascii_string );

=item I<asciidigest>( $a_string );

Returns an asciified binary signature of the argument.

=item I<tea_in_javascript>();

Returns a compatible implementation of TEA in JavaScript,
for use in CGI scripts to communicate with browsers.

=back

=head1 AUTHOR

Peter J Billam <peter@pjb.com.au>,
with thanks also to Neil Watkiss for MakeMaker packaging.

=head1 CREDITS

Based on TEA, as described in
http://www.cl.cam.ac.uk/ftp/papers/djw-rmn/djw-rmn-tea.html ,
and on some help from I<Applied Cryptography> by Bruce Schneier
as regards the modes of use.

=head1 SEE ALSO

http://www.pjb.com.au/, CGI::Htauth.pm, perl(1).

=cut

