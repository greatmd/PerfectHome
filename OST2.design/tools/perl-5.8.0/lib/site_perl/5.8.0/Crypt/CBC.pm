package Crypt::CBC;

use Digest::MD5 'md5';
use Carp;
use strict;
use vars qw($VERSION);
$VERSION = '2.08';

sub new {
    my $class = shift;
    my $arg1 = shift;
    my $arg2 = shift;

    my $options = {};

    if (ref($arg1) eq 'HASH') {
	$options = $arg1;
    } else {
	$options->{key} = $arg1;
    }

    if ($arg2) {
	$options->{cipher} = $arg2;
    }

    my $key = $options->{key};
    croak "Please provide an encryption/decryption key" unless defined $key;

    # get key from key?
    my $gkfk = 1;
    $gkfk = $options->{regenerate_key} if (exists($options->{regenerate_key}));

    my $cipher = $options->{cipher};
    $cipher = 'Crypt::DES' unless $cipher;
    $cipher = $cipher=~/^Crypt::/ ? $cipher : "Crypt::$cipher";
    eval "require $cipher";
    croak "Couldn't load $cipher: $@" if $@;
    # some crypt modules use the class Crypt::, and others don't
    $cipher =~ s/^Crypt::// unless $cipher->can('keysize');

    my $iv = $options->{iv};

    my $ks = eval {$cipher->keysize};
    my $bs = eval {$cipher->blocksize};

    my $padding = $options->{padding};
    $padding ||= \&_standard_padding;

    if ($padding && ref($padding) eq 'CODE') {
      # check to see that this code does its padding correctly
      for my $i (1..$bs-1) {
	my $rbs = length($padding->(" "x$i,$bs,'e'));
	croak "padding method callback does not behave properly: expected $bs bytes back, got $rbs bytes back." unless ($rbs == $bs);
      }
    } elsif ($padding eq 'null') {
      $padding = \&_null_padding;
    } elsif ($padding eq 'space') {
      $padding = \&_space_padding;
    } elsif ($padding eq 'oneandzeroes') {
      $padding = \&_oneandzeroes_padding;
    } elsif ($padding eq 'standard') {
      $padding = \&_standard_padding;
    } else {
      croak "padding method $padding not supported.  Please create your own sub to do it, and pass in a coderef to that";
    }

    # Some of the cipher modules are busted and don't report the
    # keysize (well, Crypt::Blowfish in any case).  If we detect
    # this, and find the blowfish module in use, then assume 56.
    # Otherwise assume the least common denominator of 8.
    $ks ||= $cipher =~ /blowfish/i ? 56 : 8;
    $bs ||= $ks;

    if ($gkfk) {
      # generate the keysize from the
      # MD5 hash of the provided key.
      my $material = md5($key);
      # if that's not enough, keep adding to it
      while (length($material) < $ks)  {
	$material .= md5($material);
      }
	
      $key = substr($material,0,$ks);
    }

    if (length($key) > $ks) {
	carp "keysize is greater than allowed keysize of $ks for cipher $cipher - using only first $ks bytes";
	$key = substr($key, 0, $ks);
    }
    
    my $prepend_iv = exists $options->{'prepend_iv'} 
       ? $options->{'prepend_iv'} 
       : 1;

    return bless {'crypt'     => $cipher->new($key),
		  'iv'        => $iv,
		  'padding'   => $padding,
		  'blocksize' => $bs,
                  'prepend_iv' => $prepend_iv,
		  },$class;
}

sub encrypt (\$$) {
    my ($self,$data) = @_;
    $self->start('encrypting');
    my $result = $self->crypt($data);
    $result .= $self->finish;
    $result;
}

sub decrypt (\$$){
    my ($self,$data) = @_;
    $self->start('decrypting');
    my $result = $self->crypt($data);
    $result .= $self->finish;
    $result;
}

sub encrypt_hex (\$$) {
    my ($self,$data) = @_;
    return join('',unpack 'H*',$self->encrypt($data));
}

sub decrypt_hex (\$$) {
    my ($self,$data) = @_;
    return $self->decrypt(pack'H*',$data);
}

# call to start a series of encryption/decryption operations
sub start (\$$) {
    my $self = shift;
    my $operation = shift;
    croak "Specify <e>ncryption or <d>ecryption" unless $operation=~/^[ed]/i;

    unless (defined($self->{'iv'})) {
    	$self->{'iv'} = pack("C*",map {rand(256)} 1..8);
    }

    $self->{'buffer'} = '';
    $self->{'decrypt'} = $operation=~/^d/i;
}

# call to encrypt/decrypt a bit of data
sub crypt (\$$){
    my $self = shift;
    my $data = shift;
    croak "crypt() called without a preceding start()"
      unless exists $self->{'buffer'};

    my $d = $self->{'decrypt'};

    my $iv;
    my $result = '';

    if ( !$self->{'civ'} ) {
	if ($d) { # decrypting
		if (($iv) = $data=~ /^RandomIV(.{8})/s) {
		  $self->{'iv'} = $iv;
		  substr($data,0,16) = ''; #truncate
		}
	} else { # encrypting
	  if ($self->{'prepend_iv'}) {
	    $result = 'RandomIV';
	    $result .= $self->{'iv'};
	  }
	}
	$self->{'civ'} = $self->{'iv'};
    }

    $iv = $self->{'civ'};

    $self->{'buffer'} .= $data;

     my $bs = $self->{'blocksize'};

    return $result unless (length($self->{'buffer'}) >= $bs);

    # split into blocksize chunks
    # used to be:
    # my @blocks = $self->{'buffer'}=~/(.{1,$bs})/ogs;
    # but this is a little faster (about 1.5 times)
    my @blocks = unpack("a$bs "x(int(length($self->{'buffer'})/$bs)) . "a*", $self->{'buffer'});
    $self->{'buffer'} = '';

    if ($d) {  # when decrypting, always leave a free block at the end
      $self->{'buffer'} = length($blocks[-1]) < $bs ? join '',splice(@blocks,-2) : pop(@blocks);
    } else {
      $self->{'buffer'} = pop @blocks if length($blocks[-1]) < $bs;  # what's left over
    }

    foreach my $block (@blocks) {
      if ($d) { # decrypting
	$result .= $iv ^ $self->{'crypt'}->decrypt($block);
	$iv = $block;
      } else { # encrypting
	$result .= $iv = $self->{'crypt'}->encrypt($iv ^ $block);
      }
    }
    $self->{'civ'} = $iv;	        # remember the iv
    return $result;
}

# this is called at the end to flush whatever's left
sub finish (\$) {
    my $self = shift;
    my $bs = $self->{'blocksize'};
    my $block = $self->{'buffer'};

    $self->{civ} ||= '';

    my $result;
    if ($self->{'decrypt'}) { #decrypting
	$block = pack("a$bs",$block); # pad and truncate to block size
	
	if (length($block)) {
	  $result = $self->{'civ'} ^ $self->{'crypt'}->decrypt($block);
	  $result = $self->{'padding'}->($result, $bs, 'd');
	} else {
	  $result = '';
	}

    } else { # encrypting
      $block = $self->{'padding'}->($block,$bs,'e');
      $result = $self->{'crypt'}->encrypt($self->{'civ'} ^ $block);
    }
    delete $self->{'civ'};
    delete $self->{'buffer'};
    return $result;
}

sub _standard_padding ($$$) {
  my ($b,$bs,$decrypt) = @_;
  if ($decrypt eq 'd') {
     substr($b, -unpack("C",substr($b,-1)))='';
     return $b;
  }
  my $pad = $bs - length($b) % $bs;
  return $b . pack("C*",($pad)x$pad);
}

sub _space_padding ($$$) {
  my ($b,$bs,$decrypt) = @_;
  if ($decrypt eq 'd') {
     $b=~ s/ *$//s;
     return $b;
  }
  return $b . pack("C*", (32) x ($bs - length($b) % $bs));
}

sub _null_padding ($$$) {
  my ($b,$bs,$decrypt) = @_;
  if ($decrypt eq 'd') {
     $b=~ s/\0*$//s;
     return $b;
  }
  return $b . pack("C*", (0) x ($bs - length($b) % $bs));
}

sub _oneandzeroes_padding ($$$) {
  my ($b,$bs,$decrypt) = @_;
  if ($decrypt eq 'd') {
     my $hex = unpack("H*", $b);
     $hex =~ s/80*$//s;
     return pack("H*", $hex);
  }
  return $b . pack("C*", 128, (0) x ($bs - length($b) % $bs - 1) );
}

sub get_initialization_vector (\$) {
	my $self = shift;
	return $self->{'iv'};
}

sub set_initialization_vector (\$$) {
	my $self = shift;
	my $iv = shift;
	
	croak "Initialization vector must be 8 bytes" unless (length($iv) == 8);
	
	if (exists($self->{'iv'})) {
		carp "Initialization vector already set.  Re-setting is not recommended. (doing it anyways)";
	}
	$self->{'iv'} = $iv;
}

1;
__END__

=head1 NAME

Crypt::CBC - Encrypt Data with Cipher Block Chaining Mode

=head1 SYNOPSIS

  use Crypt::CBC;
  $cipher = Crypt::CBC->new( {'key'             => 'my secret key',
                              'cipher'          => 'Blowfish',
                              'iv'              => '$KJh#(}q',
                              'regenerate_key'  => 0,   # default true
                              'padding'         => 'space',
                              'prepend_iv'      => 0
                           });
  
  $ciphertext = $cipher->encrypt("This data is hush hush");
  $plaintext = $cipher->decrypt($ciphertext);
  
  $cipher->start('encrypting');
  open(F,"./BIG_FILE");
  while (read(F,$buffer,1024)) {
      print $cipher->crypt($buffer);
  }
  print $cipher->finish;


=head1 DESCRIPTION

This module is a Perl-only implementation of the cryptographic cipher
block chaining mode (CBC).  In combination with a block cipher such as
DES or IDEA, you can encrypt and decrypt messages of arbitrarily long
length.  The encrypted messages are compatible with the encryption
format used by B<SSLeay>.

To use this module, you will first create a Crypt::CBC cipher object with
new().  At the time of cipher creation, you specify an encryption key
to use and, optionally, a block encryption algorithm.  You will then
call the start() method to initialize the encryption or decryption
process, crypt() to encrypt or decrypt one or more blocks of data, and
lastly finish(), to pad and encrypt the final block.  For your
convenience, you can call the encrypt() and decrypt() methods to
operate on a whole data value at once.

=head2 new()

  $cipher = Crypt::CBC->new( {'key'             => 'my secret key',
                              'cipher'          => 'Blowfish',
                              'iv'              => '$KJh#(}q',
                              'regenerate_key'  => 0,   # default true
                              'padding'         => 'space',
                              'prepend_iv'      => 0
                           });
  
  # or (for compatibility with earlier versions)
  $cipher = new Crypt::CBC($key,$algorithm);

The new() method creates a new Crypt::CBC object.  

You must provide an encryption/decryption key, which can be any series
of characters of any length.  If regenerate_key is not specified as a
false value, the actual key used is derived from the MD5 hash of the
key you provide.  The cipher is optional and will default to DES unless
specified otherwise. You may use any compatible block encryption
algorithm that you have installed. Currently, this includes Crypt::DES,
Crypt::DES_EDE3, Crypt::IDEA, Crypt::Blowfish, and Crypt::Rijndael. You
may refer to them using their full names ("Crypt::IDEA") or in 
abbreviated form ("IDEA").  

An initialization vector may be specified, either by passing in a key of
'iv' as an option to new, or by calling 
$cipher->set_initialization_key($iv) before calling $cipher->start().  
The IV will be ignored in decryption if the ciphertext is prepended by 
text which matches the regex /^RandomIV.{8}/, in which case the 8 
characters following "RandomIV" will be used as the IV. When encrypting,
by default the ciphertext will be prepended with "RandomIVE<lt>IVE<gt>"
(16 bytes). To disable this, set 'prepend_iv' to a false value. The 
padding method can be specified by the 'padding' option. If no padding 
method is specified, PKCS#5 ("standard") padding is assumed.

=head2 start()

   $cipher->start('encrypting');
   $cipher->start('decrypting');

The start() method prepares the cipher for a series of encryption or
decryption steps, resetting the internal state of the cipher if
necessary.  You must provide a string indicating whether you wish to
encrypt or decrypt.  "E" or any word that begins with an "e" indicates
encryption.  "D" or any word that begins with a "d" indicates
decryption.

=head2 crypt()
 
   $ciphertext = $cipher->crypt($plaintext);

After calling start(), you should call crypt() as many times as
necessary to encrypt the desired data.  

=head2  finish()

   $ciphertext = $cipher->finish();

The CBC algorithm must buffer data blocks inernally until they are
even multiples of the encryption algorithm's blocksize (typically 8
bytes).  After the last call to crypt() you should call finish().
This flushes the internal buffer and returns any leftover ciphertext.

In a typical application you will read the plaintext from a file or
input stream and write the result to standard output in a loop that
might look like this:

  $cipher = new Crypt::CBC('hey jude!');
  $cipher->start('encrypting');
  print $cipher->crypt($_) while <>;
  print $cipher->finish();

=head2 encrypt()

  $ciphertext = $cipher->encrypt($plaintext)

This convenience function runs the entire sequence of start(), crypt()
and finish() for you, processing the provided plaintext and returning
the corresponding ciphertext.

=head2 decrypt()

  $plaintext = $cipher->decrypt($ciphertext)

This convenience function runs the entire sequence of start(), crypt()
and finish() for you, processing the provided ciphertext and returning
the corresponding plaintext.

=head2 encrypt_hex(), decrypt_hex()

  $ciphertext = $cipher->encrypt_hex($plaintext)
  $plaintext  = $cipher->decrypt_hex($ciphertext)

These are convenience functions that operate on ciphertext in a
hexadecimal representation.  B<encrypt_hex($plaintext)> is exactly
equivalent to B<unpack('H*',encrypt($plaintext))>.  These functions
can be useful if, for example, you wish to place the encrypted

=head2 get_initialization_vector()

  $iv = $cipher->get_initialization_vector()

This function will return the IV used in encryption and or decryption.
This function may be useful to determine the random IV used when 
encrypting if none is specified in new(). The IV is not guaranteed to
be set when encrypting until start() is called, and when decrypting 
until crypt() is called the first time.

=head2 set_initialization_vector()

  $cipher->set_initialization_vector('76543210')

This function sets the IV used in encryption and/or decryption. This 
function may be useful if the IV is not contained within the ciphertext
string being decrypted, or if a particular IV is desired for encryption.
If not set, a random IV will be generated. The IV is not guaranteed to
be set when encrypting until start() is called, and when decrypting
until crypt() is called the first time.

=head2 Padding methods

Use the 'padding' option to change the padding method.

When the last block of plaintext is shorter than the block size,
it must be padded. Padding methods include: "standard" (i.e., PKCS#5),
"oneandzeroes", "space", and "null".

   standard: (default) Binary safe
      pads with the number of bytes that should be truncated. So, if 
      blocksize is 8, then "0A0B0C" will be padded with "05", resulting
      in "0A0B0C0505050505". If the final block is a full block of 8 
      bytes, then a whole block of "0808080808080808" is appended.

   oneandzeroes: Binary safe
      pads with "80" followed by as many "00" necessary to fill the
      block. If the last block is a full block and blocksize is 8, a
      block of "8000000000000000" will be appended.

   null: text only
      pads with as many "00" necessary to fill the block. If the last 
      block is a full block and blocksize is 8, a block of 
      "0000000000000000" will be appended.

   space: text only
      same as "null", but with "20".
      
Both the standard and oneandzeroes paddings are binary safe.  The
space and null paddings are recommended only for text data.  Which
type of padding you use depends on whether you wish to communicate
with an external (non Crypt::CBC library).  If this is the case, use
whatever padding method is compatible.

You can also pass in a custom padding function.  To do this, create a
function that takes the arguments:

   $padded_block = function($block,$blocksize,$direction);

where $block is the current block of data, $blocksize is the size to
pad it to, $direction is "e" for encrypting and "d" for decrypting,
and $padded_block is the result after padding or depadding.

When encrypting, the function should always return a string of
<blocksize> length, and when decrypting, can expect the string coming
in to always be that length. See _standard_padding(), _space_padding(),
_null_padding(), or _oneandzeroes_padding() in the source for examples.

Standard and oneandzeroes padding are recommended, as both space and
null padding can potentially truncate more characters than they should. 

=head1 EXAMPLES

Two examples, des.pl and idea.pl can be found in the eg/ subdirectory
of the Crypt-CBC distribution.  These implement command-line DES and
IDEA encryption algorithms.

=head1 LIMITATIONS

The encryption and decryption process is about a tenth the speed of
the equivalent SSLeay programs (compiled C).  This could be improved
by implementing this module in C.  It may also be worthwhile to
optimize the DES and IDEA block algorithms further.

=head1 BUGS

Please report them.

=head1 AUTHOR

Lincoln Stein, lstein@cshl.org

This module is distributed under the ARTISTIC LICENSE using the same
terms as Perl itself.

=head1 SEE ALSO

perl(1), Crypt::DES(3), Crypt::IDEA(3), rfc2898 (PKCS#5)

=cut
