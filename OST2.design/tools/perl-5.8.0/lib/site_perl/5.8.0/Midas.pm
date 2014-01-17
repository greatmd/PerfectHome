package Midas;

use 5.008;
use strict;
use warnings;

use Midas::Interface;
use Midas::Error;


require Exporter;


our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Midas ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = (
		    all      => [ @Error_Codes, 'midas' ],
		    errcodes => [ @Error_Codes],
 );

Exporter::export_ok_tags('all');
our @EXPORT = qw(
		 midas
		);

our $VERSION = '3.31';


# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Midas - Perl extension for building diags

=head1 SYNOPSIS

  use Midas;

  my $exitcode = midas(@argv);

=head1 ABSTRACT

  This module builds diags from assembly or C.  It is intented to be
  used by the script 'midas'.

=head1 DESCRIPTION

The normal module interface for midas is the function midas().  It
takes the same arguments as the script 'midas' and returns an exit
status.

The ':errcodes' exporter tag exports the error codes as constants for
use in modules that need to interpret midas exit status.

The ':all' tag exports midas() and the contents of ':test' and
':errcodes'.

=head1 SEE ALSO

midas(1), midasformat(1).

=head1 AUTHOR


=cut
