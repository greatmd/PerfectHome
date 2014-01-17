# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: Sims.pm
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
package Sims;

use 5.008;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Sims ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.

## Default project is BW.  Perhaps it should not be set.  [Viranjit 3/29/04]
my $project = exists $ENV{PROJECT} ? $ENV{PROJECT} : "OpenSparc_N2";
our %proj_vars;

if ( $project eq 'OpenSparc_N2' ) {
    %proj_vars = (
      'proj'		=> 'OpenSparc_N2',
      'sims_config'	=> 'verif/env/config',
      'diaglist'	=> 'verif/diag',
      'sas'		=> 'nas',
      'sasconfig'	=> 'nasconfig',
      'sims_db'		=> [],
      'vcsprefix'       => '',
      'cc_dv_root'      => '',
      'has_denali'  => '0'
    ) ;
} else {
    die   "Sims.pm: Unknown project: \$PROJECT = $ENV{PROJECT}," .
	"\n         only OpenSparc_N2 is supported, please do one of the following:" .
	"\n         setenv PROJECT OpenSparc_N2\nOR\n         unsetenv PROJECT\n"
;
}

our %EXPORT_TAGS = ( 'all' => [ qw( %proj_vars
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

our $VERSION = '1.12';


# Preloaded methods go here.

1;
__END__

=head1 NAME

Sims - Perl module to configure sims for a given project

=head1 SYNOPSIS

use Sims;

=head1 ABSTRACT

Exports project-specific variables to B<sims> simulation script.

=head1 DESCRIPTION

A hash called %proj_vars is exported, which has the following fields:

	proj		the name of the project, OpenSparc_N2
	sims_config	directory of config files for sys=<foo> argument
	diaglist	path to top of diag directory
	sas		name of architectural simulator
	sasconfig	name of program to generate sas config file
	sims_db		list of directories where big-brother logs are kept

Paths are relative to B<dv_root>.
The values in %proj_vars depend on the environment variable B<$PROJECT>.

=head2 EXPORT

':all'	exports the hash %proj_vars.
No default export.

=head1 SEE ALSO

L<sims -h>

=cut
