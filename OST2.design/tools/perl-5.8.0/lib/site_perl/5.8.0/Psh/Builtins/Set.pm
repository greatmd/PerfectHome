package Psh::Builtins::Set;

require Psh::Util;

=item * C<set>

Return the list of the variables in the environment.  This cannot as yet be
used to set internal options (e.g. noclobber) but may be able to in future versions.

=cut

sub bi_set
{
	foreach (sort keys %ENV) {
		print "$_=$ENV{$_}\n";
	}

	return (1,undef);
}

1;
