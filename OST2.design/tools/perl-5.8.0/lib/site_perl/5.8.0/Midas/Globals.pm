# -*- perl -*-

package Midas::Globals;

require Exporter;

our @ISA = qw(Exporter);
our @EXPORT = qw( $STATE %CONFIG $VASIZE $RASIZE $PASIZE $CONFIG_FILE
		  %MapAttr_Settable %MapAttr_FieldMax %MapAttr_FieldWidth
		  clear_globals $PROJECT );


our $STATE;
our %CONFIG;
our $CONFIG_FILE = 'midasconfig.pl';
our $PROJECT = exists $ENV{PROJECT} ? $ENV{PROJECT} : undef;

our $VASIZE;
our $RASIZE;
our $PASIZE;
our %MapAttr_Settable;
our %MapAttr_FieldMax;
our %MapAttr_FieldWidth;

sub clear_globals { undef $STATE; undef %CONFIG;
		    undef $VASIZE; undef $RASIZE; undef $PASIZE;
		    undef %MapAttr_Settable;
		    undef %MapAttr_FieldMax;
		    undef %MapAttr_FieldWidth;
		    $CONFIG_FILE = 'midasconfig.pl';
		    $PROJECT = exists $ENV{PROJECT} ? $ENV{PROJECT} : undef;
		  }

1;
