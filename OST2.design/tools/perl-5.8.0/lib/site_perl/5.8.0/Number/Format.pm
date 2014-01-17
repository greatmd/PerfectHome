package Number::Format;

require 5.003;

=head1 NAME

Number::Format - Perl extension for formatting numbers

=head1 SYNOPSIS

  use Number::Format;
  my $x = new Number::Format %args;
  $formatted = $x->round($number, $precision);
  $formatted = $x->format_number($number, $precision, $trailing_zeroes);
  $formatted = $x->format_negative($number, $picture);
  $formatted = $x->format_picture($number, $picture);
  $formatted = $x->format_price($number, $precision);
  $formatted = $x->format_bytes($number, $precision);
  $number    = $x->unformat_number($formatted);

  use Number::Format qw(:subs);
  $formatted = round($number, $precision);
  $formatted = format_number($number, $precision, $trailing_zeroes);
  $formatted = format_negative($number, $picture);
  $formatted = format_picture($number, $picture);
  $formatted = format_price($number, $precision);
  $formatted = format_bytes($number, $precision);
  $number    = unformat_number($formatted);

=head1 REQUIRES

Perl, version 5.003 or higher.

POSIX.pm will be used if present to determine locale settings.

Carp.pm is used for some error reporting.

=head1 DESCRIPTION

These functions provide an easy means of formatting numbers in a
manner suitable for displaying to the user.

There are two ways to use this package.  One is to declare an object
of type Number::Format, which you can think of as a formatting engine.
The various functions defined here are provided as object methods.
The constructor C<new()> can be used to set the parameters of the
formatting engine.  Valid parameters are:

  THOUSANDS_SEP     - character inserted between groups of 3 digits
  DECIMAL_POINT     - character separating integer and fractional parts
  MON_THOUSANDS_SEP - like THOUSANDS_SEP, but used for format_price
  MON_DECIMAL_POINT - like DECIMAL_POINT, but used for format_price
  INT_CURR_SYMBOL   - character(s) denoting currency (see format_price())
  DECIMAL_DIGITS    - number of digits to the right of dec point (def 2)
  DECIMAL_FILL      - boolean; whether to add zeroes to fill out decimal
  NEG_FORMAT        - format to display negative numbers (def ``-x'')
  KILO_SUFFIX       - suffix to add when format_bytes formats kilobytes
  MEGA_SUFFIX       -    "    "  "    "        "         "    megabytes
  GIGA_SUFFIX       -    "    "  "    "        "         "    gigabytes

They may be specified in upper or lower case, with or without a
leading hyphen ( - ).

The defaults for C<THOUSANDS_SEP>, C<DECIMAL_POINT>,
C<MON_THOUSANDS_SEP>, C<MON_DECIMAL_POINT>, and C<INT_CURR_SYMBOL>
come from the POSIX locale information (see L<perllocale>), if
available.  If your POSIX locale does not provide C<MON_THOUSANDS_SEP>
and/or C<MON_DECIMAL_POINT> fields, then the C<THOUSANDS_SEP> and/or
C<DECIMAL_POINT> values are used for those parameters.  Some systems
(e.g. Win32 ports of Perl) do not include POSIX support.  In those
systems, the POSIX system is bypassed.

If any of the above parameters are not specified when you invoke
C<new()>, then the values are taken from package global variables of
the same name (e.g.  C<$DECIMAL_POINT> is the default for the
C<DECIMAL_POINT> parameter).  If you use the C<:vars> keyword on your
C<use Number::Format> line (see non-object-oriented example below) you
will import those variables into your namesapce and can assign values
as if they were your own local variables.  The default values for all
the parameters are:

  THOUSANDS_SEP     = ','
  DECIMAL_POINT     = '.'
  MON_THOUSANDS_SEP = ','
  MON_DECIMAL_POINT = '.'
  INT_CURR_SYMBOL   = 'USD'
  DECIMAL_DIGITS    = 2
  DECIMAL_FILL      = 0
  NEG_FORMAT        = '-x'
  KILO_SUFFIX       = 'K'
  MEGA_SUFFIX       = 'M'
  GIGA_SUFFIX       = 'G'

Note however that when you first call one of the functions in this
module I<without> using the object-oriented interface, further setting
of those global variables will have no effect on non-OO calls.  It is
recommended that you use the object-oriented interface instead for
fewer headaches and a cleaner design.

The C<DECIMAL_FILL> and C<DECIMAL_DIGITS> values are not set by the
Locale system, but are definable by the user.  They affect the output
of C<format_number()>.  Setting C<DECIMAL_DIGITS> is like giving that
value as the C<$precision> argument to that function.  Setting
C<DECIMAL_FILL> to a true value causes C<format_number()> to append
zeroes to the right of the decimal digits until the length is the
specified number of digits.

C<NEG_FORMAT> is only used by C<format_negative()> and is a string
containing the letter 'x', where that letter will be replaced by a
positive representation of the number being passed to that function.
C<format_number()> and C<format_price()> utilize this feature by
calling C<format_negative()> if the number was less than 0.

C<KILO_SUFFIX>, C<MEGA_SUFFIX>, and C<GIGA_SUFFIX> are used by
C<format_bytes()> when the value is over 1024, 1024*1024, or
1024*1024*1024, respectively.  The default values are "K", "M", and
"G".  Note: we can't do TERA because of integer overflows on 32-bit
systems.

The only restrictions on C<DECIMAL_POINT> and C<THOUSANDS_SEP> are that
they must not be digits, must not be identical, and must each be one
character.  There are no restrictions on C<INT_CURR_SYMBOL>.

For example, a German user might include this in their code:

  use Number::Format;
  my $de = new Number::Format(-thousands_sep   => '.',
                              -decimal_point   => ',',
                              -int_curr_symbol => 'DEM');
  my $formatted = $de->format_number($number);

Or, if you prefer not to use the object oriented interface, you can do
this instead:

  use Number::Format qw(:subs :vars);
  $THOUSANDS_SEP   = '.';
  $DECIMAL_POINT   = ',';
  $INT_CURR_SYMBOL = 'DEM';
  my $formatted = format_number($number);

=head1 EXPORTS

Nothing is exported by default.  To export the functions or the global
variables defined herein, specify the function name(s) on the import
list of the C<use Number::Format> statement.  To export all functions
defined herein, use the special tag C<:subs>.  To export the
variables, use the special tag C<:vars>; to export both subs and vars
you can use the tag C<:all>.

=cut

###---------------------------------------------------------------------

use strict;
use vars qw($DECIMAL_DIGITS $DECIMAL_FILL $DECIMAL_POINT
            $DEFAULT_LOCALE $INT_CURR_SYMBOL $KILO_SUFFIX $MEGA_SUFFIX
            $GIGA_SUFFIX $NEG_FORMAT $POSIX_LOADED $THOUSANDS_SEP
            $VERSION %EXPORT_TAGS @EXPORT_OK @EXPORT_SUBS @EXPORT_VARS
            @ISA);
use Exporter;
use Carp;

BEGIN
{
    eval { require POSIX; POSIX->import( qw(locale_h) ) };
    if ($@)
    {
        # code to provide alternate definitions for POSIX functions
        *localeconv = sub { $DEFAULT_LOCALE }; # return default
        *setlocale  = sub { };  #  do nothing
        *LC_ALL = sub { };      #  do nothing
        $POSIX_LOADED = 0;
    }
    else
    {
        $POSIX_LOADED = 1;
    }
}

@ISA     = qw(Exporter);

@EXPORT_SUBS = qw(format_number format_negative format_picture
                  format_price format_bytes round unformat_number);
@EXPORT_VARS = qw($DECIMAL_DIGITS $DECIMAL_FILL $DECIMAL_POINT
                  $DEFAULT_LOCALE $INT_CURR_SYMBOL $KILO_SUFFIX
                  $MEGA_SUFFIX $GIGA_SUFFIX $NEG_FORMAT $POSIX_LOADED
                  $THOUSANDS_SEP);
@EXPORT_OK   = (@EXPORT_SUBS, @EXPORT_VARS);
%EXPORT_TAGS = (subs => \@EXPORT_SUBS,
                vars => \@EXPORT_VARS,
                all  => [ @EXPORT_SUBS, @EXPORT_VARS ]);

$VERSION = '1.45';

$DECIMAL_POINT   = '.';
$THOUSANDS_SEP   = ',';
$INT_CURR_SYMBOL = 'USD';
$DECIMAL_DIGITS  = 2;
$DECIMAL_FILL    = 0;
$NEG_FORMAT      = '-x';
$KILO_SUFFIX     = 'K';
$MEGA_SUFFIX     = 'M';
$GIGA_SUFFIX     = 'G';

$DEFAULT_LOCALE = { mon_thousands_sep => $THOUSANDS_SEP,
                    mon_decimal_point => $DECIMAL_POINT,
                    thousands_sep     => $THOUSANDS_SEP,
                    decimal_point     => $DECIMAL_POINT,
                    int_curr_symbol   => $INT_CURR_SYMBOL,
                    neg_format        => $NEG_FORMAT,
                    kilo_suffix       => $KILO_SUFFIX,
                    mega_suffix       => $MEGA_SUFFIX,
                    giga_suffix       => $GIGA_SUFFIX,
                    decimal_digits    => $DECIMAL_DIGITS,
                    decimal_fill      => $DECIMAL_FILL,
                  };

###---------------------------------------------------------------------

# INTERNAL FUNCTIONS

# These functions (with names beginning with '_' are for internal use
# only.  There is no guarantee that they will remain the same from one
# version to the next!

##----------------------------------------------------------------------

# _get_self creates an instance of Number::Format with the default
#     values for the configuration parameters, if the first element of
#     @_ is not already an object.

my $DefaultObject;
sub _get_self
{
    unless (ref $_[0])
    {
        $DefaultObject ||= new Number::Format();
        unshift (@_, $DefaultObject);
    }
    @_;
}

##----------------------------------------------------------------------

# _check_seps is used to validate that the thousands_sep and
#     decimal_point variables have acceptable values.  For internal use
#     only.

sub _check_seps
{
    my ($self) = @_;
    croak "Not an object" unless ref $self;
    croak "Number::Format: {thousands_sep} must be one character\n"
        if length $self->{thousands_sep} != 1;
    croak "Number::Format: {thousands_sep} may not be numeric\n"
        if $self->{thousands_sep} =~ /\d/;
    croak "Number::Format: {decimal_point} must be one character\n"
        if length $self->{decimal_point} != 1;
    croak "Number::Format: {decimal_point} may not be numeric\n"
        if $self->{decimal_point} =~ /\d/;
    croak("Number::Format: {thousands_sep} and {decimal_point} ".
          "may not be equal\n")
        if $self->{decimal_point} eq $self->{thousands_sep};
}

###---------------------------------------------------------------------

=head1 METHODS

=over 4

=cut

##----------------------------------------------------------------------

=item new( %args )

Creates a new Number::Format object.  Valid keys for %args are any of
the parameters described above.  Keys may be in all uppercase or all
lowercase, and may optionally be preceded by a hyphen (-) character.
Example:

  my $de = new Number::Format(-thousands_sep   => '.',
                              -decimal_point   => ',',
                              -int_curr_symbol => 'DEM');

=cut

sub new
{
    my $type = shift;
    my %args = @_;

    # Fetch defaults from current locale, or failing that, using globals
    my $me            = {};
    my $locale        = setlocale(LC_ALL);
    my $locale_values = localeconv();
    my $arg;
    foreach $arg (keys %$locale_values)
    {
        $me->{$arg} = $locale_values->{$arg};
    }
    $me->{mon_decimal_point} ||= $DECIMAL_POINT;
    $me->{mon_thousands_sep} ||= $THOUSANDS_SEP;
    $me->{int_curr_symbol}   ||= $INT_CURR_SYMBOL;
    $me->{decimal_digits}    ||= $DECIMAL_DIGITS;
    $me->{decimal_fill}      ||= $DECIMAL_FILL;
    $me->{neg_format}        ||= $NEG_FORMAT;
    $me->{kilo_suffix}       ||= $KILO_SUFFIX;
    $me->{mega_suffix}       ||= $MEGA_SUFFIX;
    $me->{giga_suffix}       ||= $GIGA_SUFFIX;
    $me->{thousands_sep}     ||= $me->{mon_thousands_sep};
    $me->{decimal_point}     ||= $me->{mon_decimal_point};

    # Override if given as arguments
    foreach $arg (qw(thousands_sep decimal_point mon_thousands_sep
                     mon_decimal_point int_curr_symbol decimal_digits
                     decimal_fill neg_format kilo_suffix mega_suffix
                     giga_suffix))
    {
        foreach ($arg, uc $arg, "-$arg", uc "-$arg")
        {
            next unless defined $args{$_};
            $me->{$arg} = $args{$_};
            delete $args{$_};
            last;
        }
    }
    croak "Invalid args: ".join(',', keys %args)."\n" if %args;
    bless $me, $type;
    $me;
}

##----------------------------------------------------------------------

=item round($number, $precision)

Rounds the number to the specified precision.  If C<$precision> is
omitted, the value of the C<DECIMAL_DIGITS> parameter is used (default
value 2).  Both input and output are numeric (the function uses math
operators rather than string manipulation to do its job), The value of
C<$precision> may be any integer, positive or negative. Examples:

  round(3.14159)       yields    3.14
  round(3.14159, 4)    yields    3.1416
  round(42.00, 4)      yields    42
  round(1234, -2)      yields    1200

Since this is a mathematical rather than string oriented function,
there will be no trailing zeroes to the right of the decimal point,
and the C<DECIMAL_POINT> and C<THOUSANDS_SEP> variables are ignored.
To format your number using the C<DECIMAL_POINT> and C<THOUSANDS_SEP>
variables, use C<format_number()> instead.

=cut

sub round
{
    my ($self, $number, $precision) = _get_self @_;
    $precision = $self->{decimal_digits} unless defined $precision;
    $precision = 2 unless defined $precision;
    $number    = 0 unless defined $number;

    my $sign = $number <=> 0;
    my $multiplier = (10 ** $precision);
    my $result = abs($number);
    $result = int(($result * $multiplier) + .5000001) / $multiplier;
    $result = -$result if $sign < 0;
    return $result;
}

##----------------------------------------------------------------------

=item format_number($number, $precision, $trailing_zeroes)

Formats a number by adding C<THOUSANDS_SEP> between each set of 3
digits to the left of the decimal point, substituting C<DECIMAL_POINT>
for the decimal point, and rounding to the specified precision using
C<round()>.  Note that C<$precision> is a I<maximum> precision
specifier; trailing zeroes will only appear in the output if
C<$trailing_zeroes> is provided, or the parameter C<DECIMAL_FILL> is
set, with a value that is true (not zero, undef, or the empty string).
If C<$precision> is omitted, the value of the C<DECIMAL_DIGITS>
parameter (default value of 2) is used.  Examples:

  format_number(12345.6789)      yields   '12,345.68'
  format_number(123456.789, 2)   yields   '123,456.79'
  format_number(1234567.89, 2)   yields   '1,234,567.89'
  format_number(1234567.8, 2)    yields   '1,234,567.8'
  format_number(1234567.8, 2, 1) yields   '1,234,567.80'
  format_number(1.23456789, 6)   yields   '1.234568'

Of course the output would have your values of C<THOUSANDS_SEP> and
C<DECIMAL_POINT> instead of ',' and '.' respectively.

=cut

sub format_number
{
    my ($self, $number, $precision, $trailing_zeroes) = _get_self @_;
    $self->_check_seps();       # first make sure the SEP variables are valid

    # Set defaults and standardize number
    $precision = $self->{decimal_digits}     unless defined $precision;
    $trailing_zeroes = $self->{decimal_fill} unless defined $trailing_zeroes;

    # Handle negative numbers
    my $sign = $number <=> 0;
    $number = abs($number) if $sign < 0;
    $number = $self->round($number, $precision); # round off $number

    # Split integer and decimal parts of the number and add commas
    my $integer = int($number);
    my $decimal;

    # Note: In perl 5.6 and up, string representation of a number
    # automagically includes the locale decimal point.  This way we
    # will detect the decimal part correctly as long as the decimal
    # point is 1 character.
    $decimal = substr($number, length($integer)+1)
        if (length($integer) < length($number));
    $decimal = '' unless defined $decimal;

    # Add trailing 0's if $trailing_zeroes is set.
    $decimal .= '0'x( $precision - length($decimal) )
        if $trailing_zeroes && $precision > length($decimal);

    # Add leading 0's so length($integer) is divisible by 3
    $integer = '0'x(3 - (length($integer) % 3)).$integer;

    # Split $integer into groups of 3 characters and insert commas
    $integer = join($self->{thousands_sep},
                    grep {$_ ne ''} split(/(...)/, $integer));

    # Strip off leading zeroes and/or comma
    $integer =~ s/^0+\Q$self->{thousands_sep}\E?//;
    $integer = '0' if $integer eq '';

    # Combine integer and decimal parts and return the result.
    my $result = ((defined $decimal && length $decimal) ?
                  join($self->{decimal_point}, $integer, $decimal) :
                  $integer);

    return ($sign < 0) ? $self->format_negative($result) : $result;
}

##----------------------------------------------------------------------

=item format_negative($number, $picture)

Formats a negative number.  Picture should be a string that contains
the letter C<x> where the number should be inserted.  For example, for
standard negative numbers you might use ``C<-x>'', while for
accounting purposes you might use ``C<(x)>''.  If the specified number
begins with a ``-'' character, that will be removed before formatting,
but formatting will occur whether or not the number is negative.

=cut

sub format_negative
{
    my($self, $number, $format) = _get_self @_;
    $format = $self->{neg_format} unless defined $format;
    croak "Letter x must be present in picture in format_negative()\n"
        unless $format =~ /x/;
    $number =~ s/^-//;
    $format =~ s/x/$number/;
    return $format;
}

##----------------------------------------------------------------------

=item format_picture($number, $picture)

Returns a string based on C<$picture> with the C<#> characters
replaced by digits from C<$number>.  If the length of the integer part
of $number is too large to fit, the C<#> characters are replaced with
asterisks (C<*>) instead.  Examples:

  format_picture(100.023, 'USD ##,###.##')   yields   'USD    100.02'
  format_picture(1000.23, 'USD ##,###.##')   yields   'USD  1,000.23'
  format_picture(10002.3, 'USD ##,###.##')   yields   'USD 10,002.30'
  format_picture(100023,  'USD ##,###.##')   yields   'USD **,***.**'
  format_picture(1.00023, 'USD #.###,###')   yields   'USD 1.002,300'

The comma (,) and period (.) you see in the picture examples should
match the values of C<THOUSANDS_SEP> and C<DECIMAL_POINT>,
respectively, for proper operation.  However, the C<THOUSANDS_SEP>
characters in C<$picture> need not occur every three digits; the
I<only> use of that variable by this function is to remove leading
commas (see the first example above).  There may not be more than one
instance of C<DECIMAL_POINT> in C<$picture>.

The value of C<NEG_FORMAT> is used to determine how negative numbers
are displayed.  The result of this is that the output of this function
my have unexpected spaces before and/or after the number.  This is
necessary so that positive and negative numbers are formatted into a
space the same size.  If you are only using positive numbers and want
to avoid this problem, set NEG_FORMAT to "x".

=cut

sub format_picture
{
    my ($self, $number, $picture) = _get_self @_;
    $self->_check_seps();

    # Handle negative numbers
    my($neg_prefix) = $self->{neg_format} =~ /^([^x]+)/;
    my($pic_prefix) = $picture            =~ /^([^\#]+)/;
    my $neg_pic = $self->{neg_format};
    (my $pos_pic = $self->{neg_format}) =~ s/[^x\s]/ /g;
    (my $pos_prefix = $neg_prefix) =~ s/[^x\s]/ /g;
    $neg_pic =~ s/x/$picture/;
    $pos_pic =~ s/x/$picture/;
    my $sign = $number <=> 0;
    $number = abs($number) if $sign < 0;
    $picture = $sign < 0 ? $neg_pic : $pos_pic;
    my $sign_prefix = $sign < 0 ? $neg_prefix : $pos_prefix;

    # Split up the picture and die if there is more than one $DECIMAL_POINT
    my($pic_int, $pic_dec, @cruft) =
        split(/\Q$self->{decimal_point}\E/, $picture);
    $pic_int = '' unless defined $pic_int;
    $pic_dec = '' unless defined $pic_dec;

    croak("Number::Format::format_picture($number, $picture): ".
          "Only one decimal separator($self->{decimal_point}) ".
          "permitted in picture.\n")
        if @cruft;

    # Obtain precision from the length of the decimal part...
    my $precision = $pic_dec;       # start with copying it
    $precision =~ s/[^\#]//g;       # eliminate all non-# characters
    $precision = length $precision; # take the length of the result

    # Format the number
    $number = $self->round($number, $precision);

    # Obtain the length of the integer portion just like we did for $precision
    my $intsize = $pic_int;     # start with copying it
    $intsize =~ s/[^\#]//g;     # eliminate all non-# characters
    $intsize = length $intsize; # take the length of the result

    # Split up $number same as we did for $picture earlier
    my($num_int, $num_dec) = split(/\./, $number, 2);
    $num_int = '' unless defined $num_int;
    $num_dec = '' unless defined $num_dec;

    # Check if the integer part will fit in the picture
    if (length $num_int > $intsize)
    {
        $picture =~ s/\#/\*/g;  # convert # to * and return it
        $picture =~ s/^(\Q$sign_prefix\E)(\Q$pic_prefix\E)(\s*)/$2$3$1/;
        return $picture;
    }

    # Split each portion of number and picture into arrays of characters
    my @num_int = split(//, $num_int);
    my @num_dec = split(//, $num_dec);
    my @pic_int = split(//, $pic_int);
    my @pic_dec = split(//, $pic_dec);

    # Now we copy those characters into @result.
    my @result;
    @result = ($self->{decimal_point})
        if $picture =~ /\Q$self->{decimal_point}\E/;
    # For each characture in the decimal part of the picture, replace '#'
    # signs with digits from the number.
    my $char;
    foreach $char (@pic_dec)
    {
        $char = (shift(@num_dec) || 0) if ($char eq '#');
        push (@result, $char);
    }

    # For each character in the integer part of the picture (moving right
    # to left this time), replace '#' signs with digits from the number,
    # or spaces if we've run out of numbers.
    while ($char = pop @pic_int)
    {
        $char = pop(@num_int) if ($char eq '#');
        $char = ' ' if (!defined($char) ||
                        $char eq $self->{thousands_sep} && $#num_int < 0);
        unshift (@result, $char);
    }

    # Combine @result into a string and return it.
    my $result = join('', @result);
    $sign_prefix = '' unless defined $sign_prefix;
    $pic_prefix  = '' unless defined $pic_prefix;
    $result =~ s/^(\Q$sign_prefix\E)(\Q$pic_prefix\E)(\s*)/$2$3$1/;
    $result;
}

##----------------------------------------------------------------------

=item format_price($number, $precision)

Returns a string containing C<$number> formatted similarly to
C<format_number()>, except that the decimal portion may have trailing
zeroes added to make it be exactly C<$precision> characters long, and
the currency string will be prefixed.

If the C<INT_CURR_SYMBOL> attribute of the object is the empty string, no
currency will be added.

If C<$precision> is not provided, the default of 2 will be used.
Examples:

  format_price(12.95)   yields   'USD 12.95'
  format_price(12)      yields   'USD 12.00'
  format_price(12, 3)   yields   '12.000'

The third example assumes that C<INT_CURR_SYMBOL> is the empty string.

=cut

sub format_price
{
    my ($self, $number, $precision) = _get_self @_;
    $precision = $self->{decimal_digits} unless defined $precision;
    $precision = 2 unless defined $precision; # default

    my $sign = $number <=> 0;
    $number = abs($number) if $sign < 0;

    $number = $self->format_number($number, $precision); # format it first
    # Now we make sure the decimal part has enough zeroes
    my ($integer, $decimal) =
        split(/\Q$self->{mon_decimal_point}\E/, $number, 2);
    $decimal = '0'x$precision unless $decimal;
    $decimal .= '0'x($precision - length $decimal);

    # Combine it all back together and return it.
    $self->{int_curr_symbol} =~ s/\s*$/ /;
    my $result = ($self->{int_curr_symbol} .
                  ($precision ?
                   join($self->{mon_decimal_point}, $integer, $decimal) :
                   $integer));

    return ($sign < 0) ? $self->format_negative($result) : $result;
}

##----------------------------------------------------------------------

=item format_bytes($number, $precision)

Returns a string containing C<$number> formatted similarly to
C<format_number()>, except that if the number is over 1024, it will be
divided by 1024 and "K" appended to the end; or if it is over 1048576
(1024*1024), it will be divided by 1048576 and "M" appended to the
end.  Negative values will result in an error.

If C<$precision> is not provided, the default of 2 will be used.
Examples:

  format_bytes(12.95)   yields   '12.95'
  format_bytes(2048)    yields   '2K'
  format_bytes(1048576) yields   '1M'

=cut

sub format_bytes
{
    my ($self, $number, $precision) = _get_self @_;
    $precision = $self->{decimal_digits} unless defined $precision;
    $precision = 2 unless defined $precision; # default
    croak "Negative number ($number) not allowed in format_bytes\n"
        if $number < 0;
    my $suffix = "";
    if ($number > 0x40000000)
    {
        $number /= 0x40000000;
        $suffix = $self->{giga_suffix};
    }
    elsif ($number > 0x100000)
    {
        $number /= 0x100000;
        $suffix = $self->{mega_suffix};
    }
    elsif ($number > 0x400)
    {
        $number /= 0x400;
        $suffix = $self->{kilo_suffix};
    }

    $number = $self->format_number($number, $precision); # format it first

    # Combine it all back together and return it.
    return $number.$suffix;
}

##----------------------------------------------------------------------

=item unformat_number($formatted)

Converts a string as returned by C<format_number()>,
C<format_price()>, or C<format_picture()>, and returns the
corresponding value as a numeric scalar.  Returns C<undef> if the
number does not contain any digits.  Examples:

  unformat_number('USD 12.95')   yields   12.95
  unformat_number('USD 12.00')   yields   12
  unformat_number('foobar')      yields   undef
  unformat_number('1234-567@.8') yields   1234567.8

The value of C<DECIMAL_POINT> is used to determine where to separate
the integer and decimal portions of the input.  All other non-digit
characters, including but not limited to C<INT_CURR_SYMBOL> and
C<THOUSANDS_SEP>, are removed.

If the number matches the pattern of C<NEG_FORMAT> I<or> there is a
``-'' character before any of the digits, then a negative number is
returned.

If the number ends with the C<KILO_SUFFIX> or C<MEGA_SUFFIX>
characters, then the number returned will be multiplied by 1024 or
1024*1024 as appropriate.

=cut

sub unformat_number
{
    my ($self, $formatted) = _get_self @_;
    $self->_check_seps();
    return undef unless $formatted =~ /\d/; # require at least one digit

    # Detect if it ends with the kilo or mega suffix.
    my $kp = ($formatted =~ s/$self->{kilo_suffix}\s*$//);
    my $mp = ($formatted =~ s/$self->{mega_suffix}\s*$//);

    # Split number into integer and decimal parts
    my ($integer, $decimal, @cruft) =
        split(/\Q$self->{decimal_point}\E/, $formatted);
    croak("Number::Format::unformat_number($formatted): ".
          "Only one decimal separator($self->{decimal_point}) permitted.\n")
        if @cruft;

    # It's negative if the first non-digit character is a -
    my $sign = $formatted =~ /^\D*-/ ? -1 : 1;
    my($before_re, $after_re) = split /x/, $self->{neg_format}, 2;
    $sign = -1 if $formatted =~ /\Q$before_re\E(.+)\Q$after_re\E/;

    # Strip out all non-digits from integer and decimal parts
    $integer = '' unless defined $integer;
    $decimal = '' unless defined $decimal;
    $integer =~ s/\D//g;
    $decimal =~ s/\D//g;

    # Join back up, using period, and add 0 to make Perl think it's a number
    my $number = join('.', $integer, $decimal) + 0;
    $number = -$number if $sign < 0;

    # Scale the number if it ended in kilo or mega suffix.
    $number *= 1024    if $kp;
    $number *= 1048576 if $mp;

    return $number;
}

###---------------------------------------------------------------------

=back

=head1 BUGS

No known bugs at this time.  Please report any problems to the author.

=head1 AUTHOR

William R. Ward, wrw@bayview.com

=head1 SEE ALSO

perl(1).

=cut

1;
