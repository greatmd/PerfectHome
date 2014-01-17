# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: Midas.pm
# Copyright (C) 1995-2007 Sun Microsystems, Inc. All Rights Reserved
# 4150 Network Circle, Santa Clara, California 95054, U.S.A.
#
# * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER. 
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# For the avoidance of doubt, and except that if any non-GPL license 
# choice is available it will apply instead, Sun elects to use only 
# the General Public License version 2 (GPLv2) at this time for any 
# software where a choice of GPL license versions is made 
# available with the language indicating that GPLv2 or any later version 
# may be used, or where a choice of which version of the GPL is applied is 
# otherwise unspecified. 
#
# Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara, 
# CA 95054 USA or visit www.sun.com if you need additional information or 
# have any questions. 
# 
# ========== Copyright Header End ============================================
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

our $VERSION = '3.32';


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
