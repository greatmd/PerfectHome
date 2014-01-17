package Cudd;

use strict;
use Carp;
use vars qw($VERSION @ISA @EXPORT $AUTOLOAD);

require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT = qw(
	APA_BASE
	APA_BITS
	APA_MASK
	CACHE_SLOTS
	MAXINDEX
	MTR_DEFAULT
	MTR_FIXED
	OUT_OF_MEM
	REORDER_SAME
	REORDER_NONE
	REORDER_RANDOM
	REORDER_RANDOM_PIVOT
	REORDER_SIFT
	REORDER_SIFT_CONVERGE
	REORDER_SYMM_SIFT
	REORDER_SYMM_SIFT_CONV
	REORDER_WINDOW2
	REORDER_WINDOW3
	REORDER_WINDOW4
	REORDER_WINDOW2_CONV
	REORDER_WINDOW3_CONV
	REORDER_WINDOW4_CONV
	REORDER_GROUP_SIFT
	REORDER_GROUP_SIFT_CONV
	REORDER_ANNEALING
	REORDER_GENETIC
	REORDER_LINEAR
	REORDER_LINEAR_CONVERGE
	REORDER_EXACT
	RESIDUE_DEFAULT
	RESIDUE_MSB
	RESIDUE_TC
	SIZEOF_INT
	SIZEOF_LONG
	SIZEOF_VOID_P
	UNIQUE_SLOTS
);
$VERSION = '0.06';

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.  If a constant is not found then control is passed
    # to the AUTOLOAD in AutoLoader.

    my $constname;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    my $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
	if ($! =~ /Invalid/) {
	    $AutoLoader::AUTOLOAD = $AUTOLOAD;
	    goto &AutoLoader::AUTOLOAD;
	}
	else {
		croak "Your vendor has not defined Cudd macro $constname";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

bootstrap Cudd $VERSION;

# Preloaded methods go here.

=head1 NAME

Cudd - Perl extension for BDDs

=head1 SYNOPSIS

C<use Cudd;>

C<my $manager = new Cudd;>

and so on

=head1 DESCRIPTION

Cudd extends Perl so that it manipulates Binary Decision Diagrams
(BDDs) by providing an object-oriented encapsulation of the CUDD
package. The CUDD package is written in C and contains a large
collection of efficient BDD manipulation functions. Only a small
fraction of those functions are currently made available by the Cudd
module. Those that are available, however, allow one to accomplish
most tasks.

=head2

The methods defined by Cudd are divided into two packages. The first
package, Cudd, defines methods that create and manipulate BDD managers
and BDD variables. These are the methods defined in package Cudd:

=over 4
=cut

=item new

Creates a new BDD manager.

=cut

sub new {
    my $class = shift;
    my $numVars = shift || 0;
    my $numVarsZ = shift || 0;
    my $numSlots = shift || &Cudd::UNIQUE_SLOTS;
    my $cacheSize = shift || &Cudd::CACHE_SLOTS;
    my $maxMemory = shift || 0;
    my $manager = Init($numVars,$numVarsZ,$numSlots,$cacheSize,$maxMemory);
    bless \$manager, $class;
    return \$manager;
}

sub DESTROY {
    my $manager = shift;
    my $retval = CheckZeroRef($$manager);
    if ($retval != 0) {
	print "In Cudd::DESTROY $retval non-zero references\n";
    }
    Quit($$manager);
}

=item BddVar

Creates a new variable in a BDD manager.

=cut

sub BddVar {
    my $manager = shift;
    croak "Invalid reference" unless ref $manager;
    my $node = bddNewVar($$manager);
    Ref($node);
    my $BDD = Cudd::BDD->new($manager,$node);
    return $BDD;
}

=item BddOne

Returns the constant 1 of a BDD manager.

=cut

sub BddOne {
    my $manager = shift;
    croak "Invalid reference" unless ref $manager;
    my $node = ReadOne($$manager);
    Ref($node);
    my $BDD = Cudd::BDD->new($manager,$node);
    return $BDD;
}

=item Reorder

Reorders the BDDs of a manager.

=cut

sub Reorder {
    my $manager = shift;
    my $method = shift || &Cudd::REORDER_SAME;
    my $minsize = shift || 1;
    croak "Invalid reference" unless ref $manager;
    Cudd::ReduceHeap($$manager,$method,$minsize);
}

=item EnableDyn

Enables dynamic reordering for a BDD manager.

=cut

sub EnableDyn {
    my $manager = shift;
    my $method = shift || &Cudd::REORDER_SAME;
    croak "Invalid reference" unless ref $manager;
    Cudd::AutodynEnable($$manager,$method);
}

=item DisableDyn

Disables dynamic reordering for a BDD manager.

=cut

sub DisableDyn {
    my $manager = shift;
    croak "Invalid reference" unless ref $manager;
    Cudd::AutodynDisable($$manager);
}

=item ReportReordering

Enables reporting of dynamic reordering.

=cut

sub ReportReordering {
    my $manager = shift;
    croak "Invalid reference" unless ref $manager;
    Cudd::EnableReorderingReporting($$manager);
}


=item DoNotReportReordering

Disables reporting of dynamic reordering.

=cut

sub DoNotReportReordering {
    my $manager = shift;
    croak "Invalid reference" unless ref $manager;
    Cudd::DisableReorderingReporting($$manager);
}

=item Info

Prints statistical information on a BDD manager.

=cut

sub Info {
    my $manager = shift;
    croak "Invalid reference" unless ref $manager;
    my $retval = Cudd::PrintInfo($$manager);
    croak "Error while printing manager info" if ($retval != 1);
}

=item PeakLiveNodes

Returns the peak number of live nodes in the manager.

=cut

sub PeakLiveNodes {
    my $manager = shift;
    croak "Invalid reference" unless ref $manager;
    my $retval = Cudd::ReadPeakLiveNodeCount($$manager);
    return $retval;
}

=item LiveNodes

Returns the number of live nodes in the manager.

=cut

sub LiveNodes {
    my $manager = shift;
    croak "Invalid reference" unless ref $manager;
    my $retval = Cudd::ReadNodeCount($$manager);
    return $retval;
}

=item DynReorderingStatus

Returns a list with two elements. The first is 1 if reordering is
currently enabled and 0 otherwise; the second is the reordering method
currently selected.

=cut

sub DynReorderingStatus {
    my $manager = shift;
    croak "Invalid reference" unless ref $manager;
    my @retval = Cudd::ReorderingStatus($$manager);
    return @retval;
}

=back 4

=cut

package Cudd::BDD;

use Carp;
use overload
  '+'	 => "Or",
  '*'	 => "And",
  '/'	 => "Cofactor",
  '^'	 => "Xor",
  '!'	 => "Not",
  '=='	 => "Equal",
  '!='	 => "Unequal",
  '<='	 => "Leq",
  '>='	 => "Geq",
  '""'	 => sub { return "OK"; },
  'bool' => sub { my $self = shift; return $self->Unequal($self->Zero); }
;

=head2

The second package in module Cudd is Cudd::BDD. It defines methods
that manipulate BDDs. Starting with a set of variables belonging to a
manager, the functions in this package allow one to create BDDs for
arbitrary functions over those variables. These are the methods
defined by Cudd::BDD:

=over 4

=cut

sub new {
    my ($class,$manager,$node) = @_;
    croak "Invalid reference" unless ref $manager;
    # carp "In Cudd::BDD::new:          creating $node\n";
    bless { manager => $manager,
	    node => $node
	  }, $class;
}

sub DESTROY {
    my $self = shift;
    my $manager = $self->{manager};
    croak "Invalid reference" unless ref $manager;
    # carp "In Cudd::BDD::DESTROY: dereferencing $self->{node}\n";
    Cudd::IterDerefBdd($$manager,$self->{node});
}

=item One

Returns the constant 1 BDD from the manager of $f.

=cut

sub One {
    my $f = shift;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    return $manager->BddOne;
}

=item Zero

Returns the constant 0 BDD from the manager of $f.

=cut

sub Zero {
    my $f = shift;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    return !$manager->BddOne;
}

=item And

Computes the conjunction of two BDDs. Overloads '*'.

=cut

sub And {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddAnd($$manager,$f->{'node'},$g->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Or

Computes the disjunction of two BDDs. Overloads '+'.

=cut

sub Or {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddOr($$manager,$f->{'node'},$g->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Xor

Computes the exclusive or of two BDDs. Overloads '^'.

=cut

sub Xor {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddXor($$manager,$f->{'node'},$g->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

sub Xnor {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddXnor($$manager,$f->{'node'},$g->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Nand

Computes the NAND of two BDDs.

=cut

sub Nand {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddNand($$manager,$f->{'node'},$g->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Nor

Computes the NOR of two BDDs.

=cut

sub Nor {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddNor($$manager,$f->{'node'},$g->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Cofactor

Computes the cofactor of a BDD with respect to another. Uses the constrain
algorithm. Overloads '/'.

=cut

sub Cofactor {
    my ($f,$c) = @_;
    my $manager = $f->{'manager'};
    my $node = Cudd::bddConstrain($$manager,$f->{'node'},$c->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Restrict

Computes the cofactor of a BDD with respect to another. Uses the restrict
algorithm.

=cut

sub Restrict {
    my ($f,$c) = @_;
    my $manager = $f->{'manager'};
    my $node = Cudd::bddRestrict($$manager,$f->{'node'},$c->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Squeeze

Finds a small BDD in an interval.

=cut

sub Squeeze {
    my ($l,$u) = @_;
    my $manager = $l->{'manager'};
    my $node = Cudd::bddSqueeze($$manager,$l->{'node'},$u->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Exists

Existentially quantifies the variables in a cube from a BDD.

=cut

sub Exists {
    my ($cube,$f) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddExistAbstract($$manager,$f->{'node'},$cube->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Forall

Universally quantifies the variables in a cube from a BDD.

=cut

sub Forall {
    my ($cube,$f) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddUnivAbstract($$manager,$f->{'node'},$cube->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item AndExists

Existentially quantifies the variables in a cube from the conjunction of
two BDDs.

=cut

sub AndExists {
    my ($cube,$f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddAndAbstract($$manager,$f->{'node'},$g->{'node'},
				    $cube->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Compose

Composes a BDD $g into a BDD $f substituting variable $var.

=cut

sub Compose {
    my ($f,$var,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $index = Cudd::NodeReadIndex($var->{'node'});
    my $node = Cudd::bddCompose($$manager,$f->{'node'},$g->{'node'},$index);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item BooleanDiff

Computes the boolean difference of a BDD with respect to one variable.

=cut

sub BooleanDiff {
    my ($f,$var) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $index = Cudd::NodeReadIndex($var->{'node'});
    my $node = Cudd::bddBooleanDiff($$manager,$f->{'node'},$index);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Correlation

Computes the correlation of two BDDs. The result is a number between 0
and 1. A value of 1 indicates that the functions $f and $g are
identical. A value of 0 indicates that they are complementary.

=cut

sub Correlation {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $correl = Cudd::bddCorrelation($$manager,$f->{'node'},$g->{'node'});
    return $correl;
}

=item Decreasing

Returns 1 if the BDD $f is monotonic decreasing (negative unate) in
variable $var; 0 otherwise.

=cut

sub Decreasing {
    my ($f,$var) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $index = Cudd::NodeReadIndex($var->{'node'});
    my $retval = Cudd::Decreasing($$manager,$f->{'node'},$index);
    return $retval;
}

=item Increasing

Returns 1 if the BDD $f is monotonic increasing (positive unate) in
variable $var; 0 otherwise.

=cut

sub Increasing {
    my ($f,$var) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $index = Cudd::NodeReadIndex($var->{'node'});
    my $retval = Cudd::Increasing($$manager,$f->{'node'},$index);
    return $retval;
}

=item Essentials

Finds the essential variables of a BDD. Returns an array of all essentials.
Negative essentials correspond to negative literals.

=cut

sub Essentials {
    my ($f) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $essref = Cudd::FindEssential($$manager,$f->{'node'});
    my @essentials = ();
    foreach (@$essref) {
	my $ess = $_;
	Cudd::Ref($ess);
	my $BDD = new Cudd::BDD($manager,$ess);
	push(@essentials,$BDD);
    }
    return \@essentials;
}

=item Support

Returns a cube of all the variables in the support of $f.

=cut

sub Support {
    my ($f) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $support = Cudd::Support($$manager,$f->{'node'});
    Cudd::Ref($support);
    my $BDD = new Cudd::BDD($manager,$support);
    return $BDD;
}

=item LiteralSetIntersection

Computes the intersection of two literal sets represented by cube BDDs.

=cut

sub LiteralSetIntersection {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddLiteralSetIntersection($$manager,$f->{'node'},$g->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item SwapVariables

Swaps two sets of variables in a BDD.

=cut

sub SwapVariables {
    my ($f,$xref,$yref) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my @xvars = map $_->{'node'}, (@$xref);
    my @yvars = map $_->{'node'}, (@$yref);
    my $node = Cudd::bddSwapVariables($$manager,$f->{'node'},\@xvars,\@yvars);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item SolveEqn

Solves a boolean equation. The first argument $f is the left-hand side
of the equation $f = 0. The second argument is a reference to the
array of the unknowns. The variables that are not unknowns are
parameters.

=cut

sub SolveEqn {
    my ($f,$varref) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $cube = $manager->BddOne;
    foreach (@$varref) {
	my $var = $_;
	$cube *= $var;
    }
    my $numvar = @$varref;
    my ($consist,$solref) = Cudd::SolveEqn($$manager,$f->{'node'},
					   $cube->{'node'},$numvar);
    Cudd::Ref($consist);
    my $BDD;
    $BDD = new Cudd::BDD($manager,$consist);
    my @solutions = ();
    foreach (@$solref) {
	my $sol = $_;
	my $BDD = new Cudd::BDD($manager,$sol);
	push(@solutions,$BDD);
    }
    return((\@solutions,$BDD));
}

=item Signatures

Computes the variable signatures in a BDD. The signature of a variable
is the fraction of minterms in the on-set of the cofactor w.r.t. to
that variable. The function returns an array of as many signatures as
there are variables plus one. The last element of the array is the
fraction of minterms in the ON-set of the BDD, and can be used to
normalize the variable signatures.

=cut

sub Signatures {
    my $f = shift;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    return Cudd::CofMinterm($$manager,$f->{'node'});
}

=item NormSignatures
  
Returns signatures normalized between 0 and 2. See also Signatures.

=cut

sub NormSignatures {
    my $f = shift;
    my $raw = Cudd::BDD::Signatures($f);
    my $size = @$raw;
    my $result = [map {$$raw[$_] / $$raw[$size-1]} (0..$size-2)];
}

=item SubsetHB

Computes a subset of a BDD with a maximum number of nodes. Uses the
heavy branch approach.

=cut

sub SubsetHB {
    my ($f,$th) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $numVars = Cudd::ReadSize($$manager);
    my $node = Cudd::SubsetHeavyBranch($$manager,$f->{'node'},$numVars,$th);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
}

=item SubsetSP

Computes a subset of a BDD with a maximum number of nodes. Uses the
short paths approach.

=cut

sub SubsetSP {
    my ($f,$th) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $numVars = Cudd::ReadSize($$manager);
    my $node = Cudd::SubsetShortPaths($$manager,$f->{'node'},$numVars,$th,0);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
}

=item SupersetHB

Computes a superset of a BDD with a maximum number of nodes. Uses the
heavy branch approach.

=cut

sub SupersetHB {
    my ($f,$th) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $numVars = Cudd::ReadSize($$manager);
    my $node = Cudd::SupersetHeavyBranch($$manager,$f->{'node'},$numVars,$th);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
}

=item SupersetSP

Computes a superset of a BDD with a maximum number of nodes. Uses the
short paths approach.

=cut

sub SupersetSP {
    my ($f,$th) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $numVars = Cudd::ReadSize($$manager);
    my $node = Cudd::SupersetShortPaths($$manager,$f->{'node'},$numVars,$th,0);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
}

=item NewAdjVar

Creates a new variable adjacent to the given variable. Useful in creating the next state variables of FSMs.

=cut

sub NewAdjVar {
    my $var = shift;
    my $manager = $var->{manager};
    croak "Invalid reference" unless ref $manager;
    my $index = Cudd::NodeReadIndex($var->{node});
    my $level = Cudd::ReadPerm($$manager,$index);
    my $node = Cudd::bddNewVarAtLevel($$manager,$level);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item GroupVars

Creates a group of variables to be kept adjacent during reordering.

=cut

sub GroupVars {
    my $self = shift;
    my $size = shift || 2;
    my $method = shift || &Cudd::MTR_DEFAULT;
    my $manager = $self->{manager};
    croak "Invalid reference" unless ref $manager;
    my $index = Cudd::NodeReadIndex($self->{node});
    my $retval = Cudd::MakeTreeNode($$manager,$index,$size,$method);
    return $retval;
}

=item Not

Returns the complement of a BDD. Overloads '!'.

=cut

sub Not {
    my ($f) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::Not($f->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Equal

Returns 1 if the two arguments are equivalent; 0 otherwise. Overloads '=='.

=cut

sub Equal {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    return (${$f->{'node'}} == ${$g->{'node'}}) ? 1 : 0;
}

=item Unequal

Returns 1 if the two arguments are not equivalent; 0 otherwise. Overloads '!='.

=cut

sub Unequal {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    return (${$f->{'node'}} != ${$g->{'node'}}) ? 1 : 0;
}

=item Leq

Compares two BDDs $f and $g and returns 1 if $f is less than or equal to $g.
Overloads '<='.

=cut

sub Leq {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    return Cudd::bddLeq($$manager, $f->{'node'}, $g->{'node'});
}

=item Geq

Compares two BDDs $f and $g and returns 1 if $f is greater than or equal to $g.
Overloads '>='.

=cut

sub Geq {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    return Cudd::bddLeq($$manager, $g->{'node'}, $f->{'node'});
}

=item IsComplement

Returns 1 if the BDD node is complemented, that is, if the BDD evaluates to 0 when all variables are assigned 1.

=cut

sub IsComplement {
    my $f = shift;
    return Cudd::IsComplement($f->{'node'});
}

=item ShortestPath

Computes a shortest path in a BDD.

=cut

sub ShortestPath {
    my ($f) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $length = 0;
    my $node = Cudd::ShortestPath($$manager, $f->{'node'}, $length);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Size

Returns the number of nodes in the BDD or BDDs passed as arguments.

=cut

sub Size {
    my ($f) = @_;
    if (ref($f) eq "Cudd::BDD") {
	$f = [$f->{'node'}];
    } elsif (ref($f) eq "ARRAY") {
	$f = [map $_->{'node'}, (@$f)];
    } elsif (ref($f) eq "HASH") {
	$f = [map $_->{'node'}, values(%$f)];
    }
    my $size = Cudd::SharingSize($f);
    return $size;
}

=item Minterms

Returns the number of minterms of the BDD. The function of the BDD is
supposed to depend on C<$n> variables.

=cut

sub Minterms {
    my ($f,$n) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $retval = Cudd::CountMinterm($$manager, $f->{'node'}, $n);
    return $retval;
}

=item Print

Prints information about a BDD $f. The $pr parameter controls how much
information is printed. The $n parameter specifies how many inputs $f depends
on. This information is necessary to compute the number of minterms.

=cut

sub Print {
    my ($f,$n,$pr) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $retval = Cudd::PrintDebug($$manager,$f->{'node'},$n,$pr);
    return $retval;
}

=item Dot

Prints a description of a set of BDDs in dot format. The function has
one mandatory parameter, the list of BDDs for which the dot
description is desired, and two optional parameters, the array of
input names and the array of output names. All parameters are array
references. If the input names are omitted but the output names are
not, a reference to an empty array ([]) should be passed for the input
names.

=cut

sub Dot {
    my $fref = shift;
    my ($inameref,$onameref);
    if (@_) {
	$inameref = shift;
    } else {
	$inameref = [];
    }
    if (@_) {
	$onameref = shift;
    } else {
	$onameref = [];
    }
    my $first = $$fref[0];
    my $manager = $first->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my @f = ();
    foreach (@$fref) {
	my $f = $_;
	push(@f,$f->{'node'});
    }
    my $retval = Cudd::DumpDot($$manager,\@f,$onameref,$inameref);
    warn "Error while writing dot file" if ($retval != 1);
    return $retval;
}

=item Intersect

Computes a function included in the intersection of $f and $g. (That
is, a witness that the intersection is not empty.)  Intersect tries to
build as few new nodes as possible.

=cut

sub Intersect {
    my ($f,$g) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::bddIntersect($$manager,$f->{'node'},$g->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item ConstrainDecomp

BDD conjunctive decomposition as in the CAV96 paper by McMillan. The
decomposition is canonical only for a given variable order. If
canonicity is required, variable ordering must be disabled after the
decomposition has been computed.  Returns an array with one entry for
each BDD variable.

=cut

sub ConstrainDecomp {
    my ($f) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $decref = Cudd::bddConstrainDecomp($$manager,$f->{'node'});
    my @decomp = ();
    foreach (@$decref) {
	my $dec = $_;
	my $BDD = new Cudd::BDD($manager,$dec);
	push(@decomp,$BDD);
    }
    return \@decomp;
}

=item CharToVect

Computes a vector of functions such that their image equals a non-zero
function. Returns an array with one entry for each BDD variable.

=cut

sub CharToVect {
    my ($f) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $vecref = Cudd::bddCharToVect($$manager,$f->{'node'});
    my @vect = ();
    foreach (@$vecref) {
	my $vec = $_;
	my $BDD = new Cudd::BDD($manager,$vec);
	push(@vect,$BDD);
    }
    return \@vect;
}

=item PrioritySelect

Selects pairs from a relation C<R(x,y)> (given as a BDD)
in such a way that a given x appears in one pair only. Uses a
priority function to determine which y should be paired to a given x.

=cut

sub PrioritySelect {
    my ($f,$Pi,$xref,$yref,$zref) = @_;
    my $manager = $f->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my @xvars = map $_->{'node'}, (@$xref);
    my @yvars = map $_->{'node'}, (@$yref);
    my @zvars = map $_->{'node'}, (@$zref);
    my $node = Cudd::PrioritySelect($$manager,$f->{'node'},$Pi->{'node'},
				    \@xvars,\@yvars,\@zvars);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item PiDxygtdxz

Returns the priority function that is 1 if the distance of x from y is greater than the distance of x from z.

=cut

sub PiDxygtdxz {
    my ($xref,$yref,$zref) = @_;
    my $first = $$xref[0];
    my $manager = $first->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my @xvars = map $_->{'node'}, (@$xref);
    my @yvars = map $_->{'node'}, (@$yref);
    my @zvars = map $_->{'node'}, (@$zref);
    my $node = Cudd::Dxygtdxz($$manager,\@xvars,\@yvars,\@zvars);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item PiDxygtdyz

Returns the priority function that is 1 if the distance of x from y is greater than the distance of y from z.

=cut

sub PiDxygtdyz {
    my ($xref,$yref,$zref) = @_;
    my $first = $$xref[0];
    my $manager = $first->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my @xvars = map $_->{'node'}, (@$xref);
    my @yvars = map $_->{'node'}, (@$yref);
    my @zvars = map $_->{'node'}, (@$zref);
    my $node = Cudd::Dxygtdyz($$manager,\@xvars,\@yvars,\@zvars);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item PiXgty

Returns the priority function that is 1 if x is greater than y.

=cut

sub PiXgty {
    my ($zref,$xref,$yref) = @_;
    my $first = $$xref[0];
    my $manager = $first->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my @zvars = map $_->{'node'}, (@$zref);
    my @xvars = map $_->{'node'}, (@$xref);
    my @yvars = map $_->{'node'}, (@$yref);
    my $node = Cudd::Xgty($$manager,\@zvars,\@xvars,\@yvars);
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item CProjection

Applies the C-Projection to a relation R.

=cut

sub CProjection {
    my ($R,$Y) = @_;
    my $manager = $R->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my $node = Cudd::CProjection($$manager,$R->{'node'},$Y->{'node'});
    Cudd::Ref($node);
    my $BDD = new Cudd::BDD($manager,$node);
    return $BDD;
}

=item Shuffle

Imposes a given order.

=cut

sub Shuffle {
    my $varref = shift;
    my $first = $$varref[0];
    my $manager = $first->{'manager'};
    croak "Invalid reference" unless ref $manager;
    my @permutation = ();
    foreach (@$varref) {
	my $var = $_;
	my $index = Cudd::NodeReadIndex($var->{node});
	push(@permutation,$index);
    }
    return Cudd::ShuffleHeap($$manager,\@permutation);
}

package Cudd;

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Documentation.


=back 4

Package Cudd:BDD overloads common operators as follows:

C<+ > -> Or

C<* > -> And

C<^ > -> Xor

C<! > -> Not

C</ > -> Cofactor

C<==> -> Equal

C<!=> -> Unequal

C<E<lt>=> -> Leq

C<E<gt>=> -> Geq

=head1 EXAMPLE

The following code fragment creates a manager, two variables C<$x> and
C<$y> in it, and then builds and prints the conjunction of the two
variables.

	my $manager = new Cudd;
	my $x = $manager->BddVar;
	my $y = $manager->BddVar;
	my $z = $x * $y;
	$z->Print(2,1);			# (2 variables, verbosity 1)

=head1 AUTHOR

Fabio Somenzi, Fabio@Colorado.EDU

=head1 SEE ALSO

perl(1).

=cut
