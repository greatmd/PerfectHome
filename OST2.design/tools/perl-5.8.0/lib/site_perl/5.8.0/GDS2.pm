package GDS2; 
{
require 5.006;
$GDS2::VERSION = '1.3.1'; 
## Note: '@ ( # )' used by the what command  E.g. what GDS2.pm
$GDS2::revision = '@(#) $RCSfile: GDS2.pm,v $ $Revision: 1.64 $ $Date: 2003-03-21 15:32:23-06 $';
use strict;
use Config;
use IO::File;
use warnings;
#use Attribute::Profiled;
no strict qw( refs );
my $G_timer;
use constant TRUE  => 1;
use constant FALSE => 0;
use constant TIMER_ON => FALSE;
if (TIMER_ON)
{
    #use Benchmark::Timer;
    $G_timer = new Benchmark::Timer;
}
my $haveFlock=TRUE; ## some systems still may not have this...manually change
if ($haveFlock)
{
    use Fcntl q(:flock);  # import LOCK_* constants
}
my $isLittleEndian = 0; #default
$isLittleEndian = 1 if ($Config{'byteorder'} =~ m|^1|); ## mswin32 cygwin vms

# POD documentation is sprinkled throughout the file in an 
# attempt at Literate Programming style (which Perl partly supports ...
# see http://www.literateprogramming.com/ )
# Search for the strings '=head' or run perldoc on this file.

# You can run this file through either pod2man or pod2html to produce 
# documentation in manual or html file format 

# Author: Ken Schumack (c) 1999,2000,2001,2002,2003. All rights reserved.
# source code may be used and modified freely, but this copyright notice
# must remain attached to the file.  You may modify this module as you 
# wish, but if you create a modified version, please attach a note
# listing the modifications you have made, and send a copy to me at 
# schumack@cpan.org
# 
# Contributor Modification: Peter Baumbach 2002-01-11
# returnRecordAsPerl() was created to facilitate the creation of
# parameterized gds2 data with perl.
# 

################################################################################
## GDS2 STREAM RECORD DATATYPES
use constant NO_DATA      => 0;
use constant BIT_ARRAY    => 1;
use constant INTEGER_2    => 2;
use constant INTEGER_4    => 3;
use constant REAL_4       => 4; ## NOT supported
use constant REAL_8       => 5;
use constant ACSII_STRING => 6;
################################################################################

################################################################################
## GDS2 STREAM RECORD TYPES 
use constant HEADER       =>  0;   ## 2-byte Signed Integer
use constant BGNLIB       =>  1;   ## 2-byte Signed Integer
use constant LIBNAME      =>  2;   ## ASCII String
use constant UNITS        =>  3;   ## 8-byte Real
use constant ENDLIB       =>  4;   ## no data present
use constant BGNSTR       =>  5;   ## 2-byte Signed Integer
use constant STRNAME      =>  6;   ## ASCII String
use constant ENDSTR       =>  7;   ## no data present
use constant BOUNDARY     =>  8;   ## no data present
use constant PATH         =>  9;   ## no data present
use constant SREF         => 10;   ## no data present
use constant AREF         => 11;   ## no data present
use constant TEXT         => 12;   ## no data present
use constant LAYER        => 13;   ## 2-byte Signed Integer
use constant DATATYPE     => 14;   ## 2-byte Signed Integer
use constant WIDTH        => 15;   ## 4-byte Signed Integer
use constant XY           => 16;   ## 2-byte Signed Integer
use constant ENDEL        => 17;   ## no data present
use constant SNAME        => 18;   ## ASCII String
use constant COLROW       => 19;   ## 2 2-byte Signed Integer
use constant TEXTNODE     => 20;   ## no data present
use constant NODE         => 21;   ## no data present
use constant TEXTTYPE     => 22;   ## 2-byte Signed Integer
use constant PRESENTATION => 23;   ## Bit Array
use constant SPACING      => 24;   ## discontinued
use constant STRING       => 25;   ## ASCII String
use constant STRANS       => 26;   ## Bit Array
use constant MAG          => 27;   ## 8-byte Real
use constant ANGLE        => 28;   ## 8-byte Real
use constant UINTEGER     => 29;   ## UNKNOWN User int, used only in Calma V2.0
use constant USTRING      => 30;   ## UNKNOWN User string, used only in Calma V2.0
use constant REFLIBS      => 31;   ## ASCII String
use constant FONTS        => 32;   ## ASCII String
use constant PATHTYPE     => 33;   ## 2-byte Signed Integer
use constant GENERATIONS  => 34;   ## 2-byte Signed Integer
use constant ATTRTABLE    => 35;   ## ASCII String
use constant STYPTABLE    => 36;   ## ASCII String "Unreleased feature"
use constant STRTYPE      => 37;   ## 2-byte Signed Integer "Unreleased feature"
use constant EFLAGS       => 38;   ## BIT_ARRAY  Flags for template and exterior data.  bits 15 to 0, l to r 0=template, 
                                   ##   1=external data, others unused
use constant ELKEY        => 39;   ## INTEGER_4  "Unreleased feature"
use constant LINKTYPE     => 40;   ## UNKNOWN    "Unreleased feature"
use constant LINKKEYS     => 41;   ## UNKNOWN    "Unreleased feature"
use constant NODETYPE     => 42;   ## INTEGER_2  Nodetype specification. On Calma this could be 0 to 63, GDSII allows 0 to 255. 
                                   ##   Of course a 2 byte integer allows up to 65535...
use constant PROPATTR     => 43;   ## INTEGER_2  Property number.
use constant PROPVALUE    => 44;   ## STRING     Property value. On GDSII, 128 characters max, unless an SREF, AREF, or NODE, 
                                   ##   which may have 512 characters.
use constant BOX          => 45;   ## NO_DATA    The beginning of a BOX element.
use constant BOXTYPE      => 46;   ## INTEGER_2  Boxtype specification.
use constant PLEX         => 47;   ## INTEGER_4  Plex number and plexhead flag. The least significant bit of the most significant 
                                   ##    byte is the plexhead flag.
use constant BGNEXTN      => 48;   ## INTEGER_4  Path extension beginning for pathtype 4 in Calma CustomPlus. In database units, 
                                   ##    may be negative.
use constant ENDEXTN      => 49;   ## INTEGER_4  Path extension end for pathtype 4 in Calma CustomPlus. In database units, may be negative.
use constant TAPENUM      => 50;   ## INTEGER_2  Tape number for multi-reel stream file.
use constant TAPECODE     => 51;   ## INTEGER_2  Tape code to verify that the reel is from the proper set. 12 bytes that are 
                                   ##   supposed to form a unique tape code.
use constant STRCLASS     => 52;   ## BIT_ARRAY  Calma use only. 
use constant RESERVED     => 53;   ## INTEGER_4  Used to be NUMTYPES per Calma GDSII Stream Format Manual, v6.0.
use constant FORMAT       => 54;   ## INTEGER_2  Archive or Filtered flag.  0: Archive 1: filtered
use constant MASK         => 55;   ## STRING     Only in filtered streams. Layers and datatypes used for mask in a filtered 
                                   ##   stream file. A string giving ranges of layers and datatypes separated by a semicolon. 
                                   ##   There may be more than one mask in a stream file.
use constant ENDMASKS     => 56;   ## NO_DATA    The end of mask descriptions.
use constant LIBDIRSIZE   => 57;   ## INTEGER_2  Number of pages in library director, a GDSII thing, it seems to have only been 
                                   ##   used when Calma INFORM was creating a new library.
use constant SRFNAME      => 58;   ## STRING     Calma "Sticks"(c) rule file name.
use constant LIBSECUR     => 59;   ## INTEGER_2  Access control list stuff for CalmaDOS, ancient. INFORM used this when creating 
                                    ##   a new library. Had 1 to 32 entries with group numbers, user numbers and access rights.
#################################################################################################

my %RecordTypeNumbers=(
'HEADER'      =>  0,
'BGNLIB'      =>  1,
'LIBNAME'     =>  2,
'UNITS'       =>  3,
'ENDLIB'      =>  4,
'BGNSTR'      =>  5,
'STRNAME'     =>  6,
'ENDSTR'      =>  7,
'BOUNDARY'    =>  8,
'PATH'        =>  9,
'SREF'        => 10,
'AREF'        => 11,
'TEXT'        => 12,
'LAYER'       => 13,
'DATATYPE'    => 14,
'WIDTH'       => 15,
'XY'          => 16,
'ENDEL'       => 17,
'SNAME'       => 18,
'COLROW'      => 19,
'TEXTNODE'    => 20,
'NODE'        => 21,
'TEXTTYPE'    => 22,
'PRESENTATION'=> 23,
'SPACING'     => 24,
'STRING'      => 25,
'STRANS'      => 26,
'MAG'         => 27,
'ANGLE'       => 28,
'UINTEGER'    => 29,
'USTRING'     => 30,
'REFLIBS'     => 31,
'FONTS'       => 32,
'PATHTYPE'    => 33,
'GENERATIONS' => 34,
'ATTRTABLE'   => 35,
'STYPTABLE'   => 36,
'STRTYPE'     => 37,
'EFLAGS'      => 38,
'ELKEY'       => 39,
'LINKTYPE'    => 40,
'LINKKEYS'    => 41,
'NODETYPE'    => 42,
'PROPATTR'    => 43,
'PROPVALUE'   => 44,
'BOX'         => 45,
'BOXTYPE'     => 46,
'PLEX'        => 47,
'BGNEXTN'     => 48,
'ENDEXTN'     => 49,
'TAPENUM'     => 50,
'TAPECODE'    => 51,
'STRCLASS'    => 52,
'RESERVED'    => 53,
'FORMAT'      => 54,
'MASK'        => 55,
'ENDMASKS'    => 56,
'LIBDIRSIZE'  => 57,
'SRFNAME'     => 58,
'LIBSECUR'    => 59,
);

my @RecordTypeStrings=( ## for ascii print of GDS
'HEADER',
'BGNLIB',
'LIBNAME',
'UNITS',
'ENDLIB',
'BGNSTR',
'STRNAME',
'ENDSTR',
'BOUNDARY',
'PATH',
'SREF',
'AREF',
'TEXT',
'LAYER',
'DATATYPE',
'WIDTH',
'XY',
'ENDEL',
'SNAME',
'COLROW',
'TEXTNODE',
'NODE',
'TEXTTYPE',
'PRESENTATION',
'SPACING',
'STRING',
'STRANS',
'MAG',
'ANGLE',
'UINTEGER',
'USTRING',
'REFLIBS',
'FONTS',
'PATHTYPE',
'GENERATIONS',
'ATTRTABLE',
'STYPTABLE',
'STRTYPE',
'EFLAGS',
'ELKEY',
'LINKTYPE',
'LINKKEYS',
'NODETYPE',
'PROPATTR',
'PROPVALUE',
'BOX',
'BOXTYPE',
'PLEX',
'BGNEXTN',
'ENDEXTN',
'TAPENUM',
'TAPECODE',
'STRCLASS',
'RESERVED',
'FORMAT',
'MASK',
'ENDMASKS',
'LIBDIRSIZE',
'SRFNAME',
'LIBSECUR',
);

###################################################
my %RecordTypeData=(
'HEADER'       => INTEGER_2,
'BGNLIB'       => INTEGER_2,
'LIBNAME'      => ACSII_STRING,
'UNITS'        => REAL_8,
'ENDLIB'       => NO_DATA,
'BGNSTR'       => INTEGER_2,
'STRNAME'      => ACSII_STRING,
'ENDSTR'       => NO_DATA,
'BOUNDARY'     => NO_DATA,
'PATH'         => NO_DATA,
'SREF'         => NO_DATA,
'AREF'         => NO_DATA,
'TEXT'         => NO_DATA,
'LAYER'        => INTEGER_2,
'DATATYPE'     => INTEGER_2,
'WIDTH'        => INTEGER_4,
'XY'           => INTEGER_4,
'ENDEL'        => NO_DATA,
'SNAME'        => ACSII_STRING,
'COLROW'       => INTEGER_2,
'TEXTNODE'     => NO_DATA,
'NODE'         => NO_DATA,
'TEXTTYPE'     => INTEGER_2,
'PRESENTATION' => BIT_ARRAY,
'SPACING'      => -1, #INTEGER_4, discontinued
'STRING'       => ACSII_STRING,
'STRANS'       => BIT_ARRAY,
'MAG'          => REAL_8,
'ANGLE'        => REAL_8,
'UINTEGER'     => -1, #INTEGER_4, no longer used
'USTRING'      => -1, #ACSII_STRING, no longer used
'REFLIBS'      => ACSII_STRING,
'FONTS'        => ACSII_STRING,
'PATHTYPE'     => INTEGER_2,
'GENERATIONS'  => INTEGER_2,
'ATTRTABLE'    => ACSII_STRING,
'STYPTABLE'    => ACSII_STRING, # unreleased feature
'STRTYPE'      => INTEGER_2, #INTEGER_2, unreleased feature
'EFLAGS'       => BIT_ARRAY,
'ELKEY'        => INTEGER_4, #INTEGER_4, unreleased feature
'LINKTYPE'     => INTEGER_2, #unreleased feature
'LINKKEYS'     => INTEGER_4, #unreleased feature
'NODETYPE'     => INTEGER_2, 
'PROPATTR'     => INTEGER_2,
'PROPVALUE'    => ACSII_STRING,
'BOX'          => NO_DATA,
'BOXTYPE'      => INTEGER_2,
'PLEX'         => INTEGER_4,
'BGNEXTN'      => INTEGER_4,
'ENDEXTN'      => INTEGER_4,
'TAPENUM'      => INTEGER_2,
'TAPECODE'     => INTEGER_2,
'STRCLASS'     => -1,
'RESERVED'     => INTEGER_4,
'FORMAT'       => INTEGER_2,
'MASK'         => ACSII_STRING,
'ENDMASKS'     => NO_DATA,
'LIBDIRSIZE'   => -1, #INTEGER_2
'SRFNAME'      => ACSII_STRING,
'LIBSECUR'     => -1, #INTEGER_2,
);

# This is the default class for the GDS2 object to use when all else fails.
$GDS2::DefaultClass = 'GDS2' unless defined $GDS2::DefaultClass;
my $StrSpace='';
my $ElmSpace='';
my $G_epsilon=0.00001; ## to take care of floating point representation problems

=pod
=head1 NAME

GDS2 - GDS2 stream module


=head1 Description

This is GDS2, a module for quickly creating programs to read and/or write GDS2 files.

Send feedback/suggestions to
schumack@cpan.org


=head1 Create Method

=cut

################################################################################

=head2 new - open gds2 file

  usage:
  my $gds2File  = new GDS2(-fileName => "filename.gds2"); ## to read 
  my $gds2File2 = new GDS2(-fileName => ">filename.gds2"); ## to write

=cut

sub new #: Profiled
{
    my($class,%arg) = @_;
    my $self = {};
    bless $self,$class || ref $class || $GDS2::DefaultClass;
    my $fileName = $arg{'-fileName'};
    if (! defined $fileName)
    {
        die "new expects a gds2 file name. Missing -fileName => 'name' $!";
    }
    my $resolution = $arg{'-resolution'};
    if (! defined $resolution)
    {
        $resolution=1000;
    }
    die "new expects a positive integer resolution. ($resolution) $!" if (($resolution <= 0) || ($resolution !~ m|^\d+$|));
    my $lockMode = LOCK_SH;   ## default
    my $openModStr = substr($fileName,0,2);  ### looking for > or >>
    $openModStr =~ s|^\s+||;
    $openModStr =~ s|[^\+>]+||g;
    my $openModeNum = O_RDONLY;
    if ($openModStr =~ m|^\+|)
    {
        warn("Ignoring '+' in open mode"); ## not handling this yet...
        $openModStr =~ s|\++||;
    }
    if ($openModStr eq '>')
    {
        $openModeNum = O_WRONLY|O_CREAT;
        $lockMode = LOCK_EX;
        $fileName =~ s|^$openModStr||;
    }
    elsif ($openModStr eq '>>')
    {
        $openModeNum = O_WRONLY|O_APPEND;
        $lockMode = LOCK_EX;
        $fileName =~ s|^$openModStr||;
    }
    my $fileHandle = new IO::File;
    $fileHandle -> open("$fileName",$openModeNum) or die "Unable to open $fileName because $!";
    if ($haveFlock)
    {
        flock($fileHandle,$lockMode) or die "File lock on $fileName failed because $!";
    }
    binmode $fileHandle,':raw'; ## may need Perl 5.6 for discipline
    $self -> {'FileHandle'} = $fileHandle;
    $self -> {'FileName'}   = $fileName; ## the gds2 filename
    $self -> {'GDSLENGTH'}  = 0;         ## total file size so far
    $self -> {'EOLIB'}      = 0;         ## end of library flag
    $self -> {'HEADER'}     = -1;        ## in header flag
    $self -> {'INDATA'}     = 0;         ## in data flag
    $self -> {'Length'}     = 0;         ## length of data
    $self -> {'DataType'}   = -1;        ## one of 7 gds datatypes
    $self -> {'UUnits'}     = 0;         ## for gds2 file
    $self -> {'DBUnits'}    = 0;         ## for gds2 file
    $self -> {'Record'}     = '';        ## the whole record as found in gds2 file
    $self -> {'RecordType'} = -1;
    $self -> {'DataIndex'}  = 0;
    $self -> {'RecordData'} = ('');
    $self -> {'CurrentDataList'} = '';
    $self -> {'InStr'}      = 0;         ##flag for write error checking
    $self -> {'InElm'}      = 0;         ##flag for write error checking
    $self -> {'Resolution'} = $resolution;
    $self -> {'UsingPrettyPrint'} = 0;   ## print as string ...
    $self;
}
################################################################################

=head2 close - close gds2 file

  usage:
  $gds2File -> close;
   -or-
  $gds2File -> close(-markEnd=>1); ## experimental  -- some systems have trouble closing files
  $gds2File -> close(-pad=>2048);  ## experimental  -- pad end with \0's till file size is a 
                                   ## multiple of number. Note: old reel to reel tapes on Calma
                                   ## systems used 2048 byte blocks

=cut

sub close #: Profiled
{
    my($self,%arg) = @_;
    my $markEnd = $arg{'-markEnd'};
    my $pad = $arg{'-pad'};
    if ((defined $markEnd)&&($markEnd))
    {
        my $fh = $self -> {'FileHandle'};
        print $fh "\x1a\x04"; # a ^Z and a ^D
        $self -> {'GDSLENGTH'} += 2;
    }
    if ((defined $pad)&&($pad > 0))
    {
        my $fh = $self -> {'FileHandle'};
        my $fileSize = $self -> tellSize;
        my $padSize = $pad - ($fileSize % $pad);
        $padSize=0 if ($padSize == $pad);
        for (my $i=0; $i < $padSize; $i++)
        {
            print $fh "\0"; ## a null
        }
    }
    $self -> {'FileHandle'} -> close;
}
################################################################################

################################################################################

=head1 High Level Write Methods

=cut

################################################################################

=head2 printInitLib() - Does all the things needed to start a library

   usage:
     $gds2File -> printInitLib(-name => "testlib",   ##writes HEADER,BGNLIB,LIBNAME,and UNITS records
                               -isoDate => 0|1       ## (optional) use ISO 4 digit date 2001 vs 101
                              );
     ## defaults to current date for library date and 1e-3 and 1e-9 for units

   note:
     remember to close library with printEndlib()

=cut

sub printInitLib #: Profiled
{
    my($self,%arg) = @_;
    my $libName = $arg{'-name'};
    if (! defined $libName)
    {
        die "printInitLib expects a library name. Missing -name => 'name' $!";
    }
    my $isoDate = $arg{'-isoDate'};
    if (! defined $isoDate)
    {
        $isoDate = FALSE;
    }
    elsif ($isoDate != 0)
    {
        $isoDate = TRUE;
    }
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
    $mon++;
    $year += 1900 if ($isoDate); ## Cadence likes year left "as is". GDS format supports year number up to 65535 -- 101 vs 2001
    $self -> printGds2Record(-type => 'HEADER',-data => 3); ## GDS2 HEADER
    $self -> printGds2Record(-type => 'BGNLIB',-data => [$year,$mon,$mday,$hour,$min,$sec,$year,$mon,$mday,$hour,$min,$sec]);
    $self -> printGds2Record(-type => 'LIBNAME',-data => $libName);
    $self -> printGds2Record(-type => 'UNITS',-data => [0.001,1e-9]);
}
################################################################################

=head2 printBgnstr - Does all the things needed to start a structure definition

   usage:
    $gds2File -> printBgnstr(-name => "nand3" ## writes BGNSTR and STRNAME records
                             -isoDate => 1|0  ## (optional) use ISO 4 digit date 2001 vs 101
                             );

   note:
     remember to close with printEndstr()

=cut

sub printBgnstr #: Profiled
{
    my($self,%arg) = @_;

    my $strName = $arg{'-name'};
    if (! defined $strName)
    {
        die "bgnStr expects a structure name. Missing -name => 'name' $!";
    }
    my $createTime = $arg{'-createTime'};
    my $isoDate = $arg{'-isoDate'};
    if (! defined $isoDate)
    {
        $isoDate = FALSE;
    }
    elsif ($isoDate != 0)
    {
        $isoDate = TRUE;
    }
    my ($csec,$cmin,$chour,$cmday,$cmon,$cyear,$cwday,$cyday,$cisdst);
    if (defined $createTime)
    {
        ($csec,$cmin,$chour,$cmday,$cmon,$cyear,$cwday,$cyday,$cisdst) = localtime($createTime);
    }
    else
    {
        ($csec,$cmin,$chour,$cmday,$cmon,$cyear,$cwday,$cyday,$cisdst) = localtime(time);
    }
    $cmon++;

    my $modTime = $arg{'-modTime'};
    my ($msec,$mmin,$mhour,$mmday,$mmon,$myear,$mwday,$myday,$misdst);
    if (defined $modTime)
    {
        ($msec,$mmin,$mhour,$mmday,$mmon,$myear,$mwday,$myday,$misdst) = localtime($modTime);
    }
    else
    {
        ($msec,$mmin,$mhour,$mmday,$mmon,$myear,$mwday,$myday,$misdst) = localtime(time);
    }
    $mmon++;

    if ($isoDate)
    {
        $cyear += 1900;  ## 2001 vs 101
        $myear += 1900;
    }
    $self -> printGds2Record(-type => 'BGNSTR',-data => [$cyear,$cmon,$cmday,$chour,$cmin,$csec,$myear,$mmon,$mmday,$mhour,$mmin,$msec]);
    $self -> printGds2Record(-type => 'STRNAME',-data => $strName);
}
################################################################################

=head2 printPath - prints a gds2 path

  usage: 
    $gds2File -> printPath(
                    -layer=>#,
                    -dataType=>#, ##optional
                    -pathType=>#,
                    -width=>#.#,
                    -unitWidth=>#,    ## (optional) directly specify width in data base units (vs -width which is multipled by resolution)
                    -xy=>\@array,     ## array of reals
                    -xyInt=>\@array,  ## array of internal ints (optional -wks better if you are modifying an existing GDS2 file)
                  );

  note:
    layer defaults to 0 if -layer not used
    pathType defaults to 0 if -pathType not used
      pathType 0 = square end
               1 = round end
               2 = square - extended 1/2 width
               4 = custom plus variable path extension...
    width defaults to 0.0 if -width not used

=cut

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#  <path>::= PATH [ELFLAGS] [PLEX] LAYER DATATYPE [PATHTYPE] [WIDTH] XY
sub printPath #: Profiled
{
    my($self,%arg) = @_;
    my $resolution = $self -> {'Resolution'};
    my $layer = $arg{'-layer'};
    if (! defined $layer)
    {
        $layer=0;
    }
    my $dataType = $arg{'-dataType'};
    if (! defined $dataType)
    {
        $dataType=0;
    }
    my $pathType = $arg{'-pathType'};
    if (! defined $pathType)
    {
        $pathType=0;
    }
    my $bgnExtn = $arg{'-bgnExtn'};
    if (! defined $bgnExtn)
    {
        $bgnExtn=0;
    }
    my $endExtn = $arg{'-endExtn'};
    if (! defined $endExtn)
    {
        $endExtn=0;
    }
    my $unitWidth = $arg{'-unitWidth'};
    my $widthReal = $arg{'-width'};
    my $width = 0;
    if ((defined $unitWidth)&&($unitWidth >= 0))
    {
        $width=int($unitWidth);
    }
    if ((defined $widthReal)&&($widthReal >= 0.0))
    {
        $width = int(($widthReal*$resolution)+$G_epsilon);
    }
    #### -xyInt most useful if reading and modifying... -xy if creating from scratch
    my $xyInt = $arg{'-xyInt'}; ## $xyInt should be a reference to an array of internal GDS2 format integers
    my $xy = $arg{'-xy'};       ## $xy should be a reference to an array of reals
    my @xyTmp=();               ##don't pollute array passed in
    if (! ((defined $xy) || (defined $xyInt)))
    {
        die "printPath expects an xy array reference. Missing -xy => \\\@array $!";
    }
    if (defined $xyInt)
    {
        $xy = $xyInt;
        $resolution=1;
    }
    $self -> printGds2Record(-type => 'PATH');
    $self -> printGds2Record(-type => 'LAYER',-data => $layer);
    $self -> printGds2Record(-type => 'DATATYPE',-data => $dataType);
    $self -> printGds2Record(-type => 'PATHTYPE',-data => $pathType) if ($pathType);
    $self -> printGds2Record(-type => 'WIDTH',-data => $width) if ($width);
    if ($pathType == 4)
    {
        $self -> printGds2Record(-type => 'BGNEXTN',-data => $bgnExtn); ## int used with resolution
        $self -> printGds2Record(-type => 'ENDEXTN',-data => $endExtn); ## int used with resolution
    }
    for(my $i=0;$i<=$#$xy;$i++) ## e.g. 3.4 in -> 3400 out
    {
        if ($xy -> [$i] >= 0) { push @xyTmp,int((($xy -> [$i])*$resolution)+$G_epsilon);}
        else                  { push @xyTmp,int((($xy -> [$i])*$resolution)-$G_epsilon);}
    }
    if ($bgnExtn || $endExtn) ## we have to convert
    {
        my $bgnX1 = $xyTmp[0];
        my $bgnY1 = $xyTmp[1];
        my $bgnX2 = $xyTmp[2];
        my $bgnY2 = $xyTmp[3];
        my $endX1 = $xyTmp[$#xyTmp - 1];
        my $endY1 = $xyTmp[$#xyTmp];
        my $endX2 = $xyTmp[$#xyTmp - 3];
        my $endY2 = $xyTmp[$#xyTmp - 2];
        if ($bgnExtn)
        {
            if ($bgnX1 == $bgnX2) #vertical ...modify 1st Y
            {
                if ($bgnY1 < $bgnY2) ## points down
                {
                    $xyTmp[1] -= $bgnExtn;
                    $xyTmp[1] += int($width/2) if ($pathType != 0);
                }
                else ## points up
                {
                    $xyTmp[1] += $bgnExtn;
                    $xyTmp[1] -= int($width/2) if ($pathType != 0);
                }
            }
            elsif ($bgnY1 == $bgnY2) #horizontal ...modify 1st X
            {
                if ($bgnX1 < $bgnX2) ## points left
                {
                    $xyTmp[0] -= $bgnExtn;
                    $xyTmp[0] += int($width/2) if ($pathType != 0);
                }
                else ## points up
                {
                    $xyTmp[0] += $bgnExtn;
                    $xyTmp[0] -= int($width/2) if ($pathType != 0);
                }
            }
        }

        if ($endExtn)
        {
            if ($endX1 == $endX2) #vertical ...modify last Y
            {
                if ($endY1 < $endY2) ## points down
                {
                    $xyTmp[$#xyTmp] -= $endExtn;
                    $xyTmp[$#xyTmp] += int($width/2) if ($pathType != 0);
                }
                else ## points up
                {
                    $xyTmp[$#xyTmp] += $endExtn;
                    $xyTmp[$#xyTmp] -= int($width/2) if ($pathType != 0);
                }
            }
            elsif ($endY1 == $endY2) #horizontal ...modify last X
            {
                if ($endX1 < $endX2) ## points left
                {
                    $xyTmp[$#xyTmp - 1] -= $endExtn;
                    $xyTmp[$#xyTmp - 1] += int($width/2) if ($pathType != 0);
                }
                else ## points up
                {
                    $xyTmp[$#xyTmp - 1] += $endExtn;
                    $xyTmp[$#xyTmp - 1] -= int($width/2) if ($pathType != 0);
                }
            }
        }
    }
    $self -> printGds2Record(-type => 'XY',-data => \@xyTmp);
    $self -> printGds2Record(-type => 'ENDEL');
}
################################################################################

=head2 printBoundary - prints a gds2 boundary

  usage: 
    $gds2File -> printBoundary(
                    -layer=>#,
                    -dataType=>#,
                    -xy=>\@array,     ## array of reals
                    -xyInt=>\@array,  ## array of internal ints (optional -wks better if you are modifying an existing GDS2 file)
                 );

  note:
    layer defaults to 0 if -layer not used
    dataType defaults to 0 if -dataType not used

=cut

#  <boundary>::= BOUNDARY [ELFLAGS] [PLEX] LAYER DATATYPE XY
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
sub printBoundary #: Profiled
{
    my($self,%arg) = @_;
    my $resolution = $self -> {'Resolution'};
    my $layer = $arg{'-layer'};
    if (! defined $layer)
    {
        $layer=0;
    }
    my $dataType = $arg{'-dataType'};
    if (! defined $dataType)
    {
        $dataType=0;
    }
    #### -xyInt most useful if reading and modifying... -xy if creating from scratch
    my $xyInt = $arg{'-xyInt'}; ## $xyInt should be a reference to an array of internal GDS2 format integers
    my $xy = $arg{'-xy'}; ## $xy should be a reference to an array of reals
    my @xyTmp=(); ##don't pollute array passed in
    if (! ((defined $xy) || (defined $xyInt)))
    {
        die "printBoundary expects an xy array reference. Missing -xy => \\\@array $!";
    }
    if (defined $xyInt)
    {
        $xy = $xyInt;
        $resolution=1;
    }
    $self -> printGds2Record(-type => 'BOUNDARY');
    $self -> printGds2Record(-type => 'LAYER',-data => $layer);
    $self -> printGds2Record(-type => 'DATATYPE',-data => $dataType);
    if (my $numPoints=$#$xy+1 < 6)
    {
        die "printBoundary expects an xy array of at leasts 3 coordinates $!";
    }
    for(my $i=0;$i<=$#$xy;$i++) ## e.g. 3.4 in -> 3400 out
    {
        if ($xy -> [$i] >= 0) {push @xyTmp,int((($xy -> [$i])*$resolution)+$G_epsilon);}
        else                  {push @xyTmp,int((($xy -> [$i])*$resolution)-$G_epsilon);}
    }
    ## gds expects square to have 5 coords (closure)
    if (($xy -> [0] != ($xy -> [($#$xy - 1)])) && ($xy -> [1] != ($xy -> [$#$xy])))
    {
        if ($xy -> [0] >= 0) {push @xyTmp,int((($xy -> [0])*$resolution)+$G_epsilon);}
        else                 {push @xyTmp,int((($xy -> [0])*$resolution)-$G_epsilon);}
        if ($xy -> [1] >= 0) {push @xyTmp,int((($xy -> [1])*$resolution)+$G_epsilon);}
        else                 {push @xyTmp,int((($xy -> [1])*$resolution)-$G_epsilon);}
    }
    $self -> printGds2Record(-type => 'XY',-data => \@xyTmp);
    $self -> printGds2Record(-type => 'ENDEL');
}
################################################################################

=head2 printSref - prints a gds2 Structure REFerence

  usage: 
    $gds2File -> printSref(
                    -name=>string,   ## Name of structure
                    -xy=>\@array,    ## array of reals
                    -xyInt=>\@array, ## array of internal ints (optional -wks better than -xy if you are modifying an existing GDS2 file)
                    -angle=>#.#,     ## (optional) Default is 0.0
                    -mag=>#.#,       ## (optional) Default is 1.0
                    -reflect=>0|1    ## (optional)
                 );

  note:
    best not to specify angle or mag if not needed

=cut

#<SREF>::= SREF [ELFLAGS] [PLEX] SNAME [<strans>] XY
#  <strans>::=   STRANS [MAG] [ANGLE]
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
sub printSref #: Profiled
{
    my($self,%arg) = @_;
    my $useSTRANS=FALSE;
    my $resolution = $self -> {'Resolution'};
    my $sname = $arg{'-name'};
    if (! defined $sname)
    {
        die "printSref expects a name string. Missing -name => 'text' $!";
    }
    #### -xyInt most useful if reading and modifying... -xy if creating from scratch
    my $xyInt = $arg{'-xyInt'}; ## $xyInt should be a reference to an array of internal GDS2 format integers
    my $xy = $arg{'-xy'}; ## $xy should be a reference to an array of reals 
    if (! ((defined $xy) || (defined $xyInt)))
    {
        die "printSref expects an xy array reference. Missing -xy => \\\@array $!";
    }
    if (defined $xyInt)
    {
        $xy = $xyInt;
        $resolution=1;
    }
    $self -> printGds2Record(-type => 'SREF');
    $self -> printGds2Record(-type => 'SNAME',-data => $sname);
    my $reflect = $arg{'-reflect'};
    if ((! defined $reflect)||($reflect <= 0))
    {
        $reflect=0;
    }
    else
    {
        $reflect=1;
        $useSTRANS=TRUE;
    }
    my $mag = $arg{'-mag'};
    if ((! defined $mag)||($mag <= 0))
    {
        $mag=0;
    }
    else
    {
        $useSTRANS=TRUE;
    }
    my $angle = $arg{'-angle'};
    if (! defined $angle)
    {
        $angle=0;
    }
    else
    { 
        $angle=posAngle($angle);
        $useSTRANS=TRUE;
    }
    if ($useSTRANS)
    {
        my $data=$reflect.'000000000000000'; ## 16 'bit' string
        $self -> printGds2Record(-type => 'STRANS',-data => $data);
        $self -> printGds2Record(-type => 'MAG',-data => $mag) if ($mag);
        $self -> printGds2Record(-type => 'ANGLE',-data => $angle) if ($angle);
    }
    my @xyTmp=(); ##don't pollute array passed in
    for(my $i=0;$i<=$#$xy;$i++) ## e.g. 3.4 in -> 3400 out
    {
        if ($xy -> [$i] >= 0) {push @xyTmp,int((($xy -> [$i])*$resolution)+$G_epsilon);}
        else                  {push @xyTmp,int((($xy -> [$i])*$resolution)-$G_epsilon);}
    }
    $self -> printGds2Record(-type => 'XY',-data => \@xyTmp);
    $self -> printGds2Record(-type => 'ENDEL');
}
################################################################################

=head2 printAref - prints a gds2 Array REFerence

  usage: 
    $gds2File -> printAref(
                    -name=>string,   ## Name of structure
                    -columns=>#,     ## Default is 1
                    -rows=>#,        ## Default is 1
                    -xy=>\@array,    ## array of reals
                    -xyInt=>\@array, ## array of internal ints (optional -wks better if you are modifying an existing GDS2 file)
                    -angle=>#.#,     ## (optional) Default is 0.0
                    -mag=>#.#,       ## (optional) Default is 1.0
                    -reflect=>0|1    ## (optional)
                 );

  note:
    best not to specify angle or mag if not needed

=cut

#<AREF>::= AREF [ELFLAGS] [PLEX] SNAME [<strans>] COLROW XY
#  <strans>::= STRANS [MAG] [ANGLE]
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
sub printAref #: Profiled
{
    my($self,%arg) = @_;
    my $useSTRANS=FALSE;
    my $resolution = $self -> {'Resolution'};
    my $sname = $arg{'-name'};
    if (! defined $sname)
    {
        die "printAref expects a sname string. Missing -name => 'text' $!";
    }
    #### -xyInt most useful if reading and modifying... -xy if creating from scratch
    my $xyInt = $arg{'-xyInt'}; ## $xyInt should be a reference to an array of internal GDS2 format integers
    my $xy = $arg{'-xy'}; ## $xy should be a reference to an array of reals
    if (! ((defined $xy) || (defined $xyInt)))
    {
        die "printAref expects an xy array reference. Missing -xy => \\\@array $!";
    }
    if (defined $xyInt)
    {
        $xy = $xyInt;
        $resolution=1;
    }
    $self -> printGds2Record(-type => 'AREF');
    $self -> printGds2Record(-type => 'SNAME',-data => $sname);
    my $reflect = $arg{'-reflect'};
    if ((! defined $reflect)||($reflect <= 0))
    {
        $reflect=0;
    }
    else
    {
        $reflect=1;
        $useSTRANS=TRUE;
    }
    my $mag = $arg{'-mag'};
    if ((! defined $mag)||($mag <= 0))
    {
        $mag=0;
    }
    else
    {
        $useSTRANS=TRUE;
    }
    my $angle = $arg{'-angle'};
    if (! defined $angle)
    {
        $angle=0;
    }
    else
    {
        $angle=posAngle($angle);
        $useSTRANS=TRUE;
    }
    if ($useSTRANS)
    {
        my $data=$reflect.'000000000000000'; ## 16 'bit' string
        $self -> printGds2Record(-type => 'STRANS',-data => $data);
        $self -> printGds2Record(-type => 'MAG',-data => $mag) if ($mag);
        $self -> printGds2Record(-type => 'ANGLE',-data => $angle) if ($angle);
    }
    my $columns = $arg{'-columns'};
    if ((! defined $columns)||($columns <= 0))
    {
        $columns=1;
    }
    else
    {
        $columns=int($columns);
    }
    my $rows = $arg{'-rows'};
    if ((! defined $rows)||($rows <= 0))
    {
        $rows=1;
    }
    else
    {
        $rows=int($rows);
    }
    $self -> printGds2Record(-type => 'COLROW',-data => [$columns,$rows]);
    my @xyTmp=(); ##don't pollute array passed in
    for(my $i=0;$i<=$#$xy;$i++) ## e.g. 3.4 in -> 3400 out
    {
        if ($xy -> [$i] >= 0) {push @xyTmp,int((($xy -> [$i])*$resolution)+$G_epsilon);}
        else                  {push @xyTmp,int((($xy -> [$i])*$resolution)-$G_epsilon);}
    }
    $self -> printGds2Record(-type => 'XY',-data => \@xyTmp);
    $self -> printGds2Record(-type => 'ENDEL');
}
################################################################################

=head2 printText - prints a gds2 Text

  usage: 
    $gds2File -> printText(
                    -string=>string,
                    -layer=>#,      ## Default is 0
                    -textType=>#,   ## Default is 0
                    -font=>#,       ## 0-3
                    -top, or -middle, -bottom,     ##optional vertical presentation
                    -left, or -center, or -right,  ##optional horizontal presentation
                    -xy=>\@array,     ## array of reals
                    -xyInt=>\@array,  ## array of internal ints (optional -wks better if you are modifying an existing GDS2 file)
                    -x=>#.#,        ## optional way of passing in x value
                    -y=>#.#,        ## optional way of passing in y value
                    -angle=>#.#,    ## (optional) Default is 0.0
                    -mag=>#.#,      ## (optional) Default is 1.0
                    -reflect=>#,    ## (optional) Default is 0
                 );

  note:
    best not to specify reflect, angle or mag if not needed

=cut

#<text>::= TEXT [ELFLAGS] [PLEX] LAYER <textbody>
#  <textbody>::= TEXTTYPE [PRESENTATION] [PATHTYPE] [WIDTH] [<strans>] XY STRING
#    <strans>::= STRANS [MAG] [ANGLE]
################################################################################
sub printText #: Profiled
{
    my($self,%arg) = @_;
    my $useSTRANS=FALSE;
    my $string = $arg{'-string'};
    if (! defined $string)
    {
        die "printText expects a string. Missing -string => 'text' $!";
    }
    my $resolution = $self -> {'Resolution'};
    my $x = $arg{'-x'};
    my $y = $arg{'-y'};
    #### -xyInt most useful if reading and modifying... -xy if creating from scratch
    my $xyInt = $arg{'-xyInt'}; ## $xyInt should be a reference to an array of internal GDS2 format integers
    my $xy = $arg{'-xy'}; ## $xy should be a reference to an array of reals
    if (defined $xyInt)
    {
        $xy = $xyInt;
        $resolution=1;
    }
    if (defined $xy)
    {
        $x = $xy -> [0];
        $y = $xy -> [1];
    }

    my $x2 = $arg{'-x'};
    if (defined $x2)
    {
        $x = $x2;
    }
    if (! defined $x)
    {
        die "printText expects a x coord. Missing -xy=>\@array or -x => 'num' $!";
    }
    if ($x>=0) {$x = int(($x*$resolution)+$G_epsilon);}
    else       {$x = int(($x*$resolution)-$G_epsilon);}

    my $y2 = $arg{'-y'};
    if (defined $y2)
    {
        $y = $y2;
    }
    if (! defined $y)
    {
        die "printText expects a y coord. Missing -xy=>\@array or -y => 'num' $!";
    }
    if ($y>=0) {$y = int(($y*$resolution)+$G_epsilon);}
    else       {$y = int(($y*$resolution)-$G_epsilon);}

    my $layer = $arg{'-layer'};
    if (! defined $layer)
    {
        $layer=0;
    }
    my $textType = $arg{'-textType'};
    if (! defined $textType)
    {
        $textType=0;
    }
    my $reflect = $arg{'-reflect'};
    if ((! defined $reflect)||($reflect <= 0))
    {
        $reflect=0;
    }
    else
    {
        $reflect=1;
        $useSTRANS=TRUE;
    }

    my $font = $arg{'-font'};
    if ((! defined $font) || ($font < 0) || ($font > 3))
    {
        $font=0;
    }
    $font = sprintf("%02d",$font);

    my $vertical;
    my $top = $arg{'-top'};
    my $middle = $arg{'-middle'};
    my $bottom = $arg{'-bottom'};
    if    (defined $top)    {$vertical = '00';}
    elsif (defined $bottom) {$vertical = '10';}
    else                    {$vertical = '01';} ## middle
    my $horizontal; 
    my $left   = $arg{'-left'};
    my $center = $arg{'-center'};
    my $right  = $arg{'-right'};
    if    (defined $left)  {$horizontal = '00';}
    elsif (defined $right) {$horizontal = '10';}
    else                   {$horizontal = '01';} ## center
    my $presString = "0000000000$font$vertical$horizontal";

    my $mag = $arg{'-mag'};
    if ((! defined $mag)||($mag <= 0))
    {
        $mag=0;
    }
    my $angle = $arg{'-angle'};
    if (! defined $angle)
    {
        $angle=0;
    }
    else
    {
        $angle=posAngle($angle);
    }
    $self -> printGds2Record(-type=>'TEXT');
    $self -> printGds2Record(-type=>'LAYER',-data=>$layer);
    $self -> printGds2Record(-type=>'TEXTTYPE',-data=>$textType);
    $self -> printGds2Record(-type => 'PRESENTATION',-data => $presString) if (defined $font || defined $top || defined $middle || defined $bottom || defined $bottom || defined $left || defined $center || defined $right);
    if ($useSTRANS)
    {
        my $data=$reflect.'000000000000000'; ## 16 'bit' string
        $self -> printGds2Record(-type=>'STRANS',-data=>$data);
    }
    $self -> printGds2Record(-type=>'MAG',-data=>$mag) if ($mag);
    $self -> printGds2Record(-type=>'ANGLE',-data=>$angle) if ($angle);
    $self -> printGds2Record(-type=>'XY',-data=>[$x,$y]);
    $self -> printGds2Record(-type=>'STRING',-data=>$string);
    $self -> printGds2Record(-type=>'ENDEL');
}
################################################################################

=head1 Low Level Generic Write Methods

=cut

################################################################################

=head2  saveGds2Record() - low level method to create a gds2 record given record type 
  and data (if required). Data of more than one item should be given as a list.
  
  NOTE: THIS ONLY USES GDS2 OBJECT TO GET RESOLUTION
  
  usage:
    saveGds2Record(
            -type=>string,
            -data=>data_If_Needed, ##optional for some types
            -scale=>#.#,           ##optional number to scale data to. I.E -scale=>0.5 #default is NOT to scale
            -snap=>#.#,            ##optional number to snap data to I.E. -snap=>0.005 #default is 1 resolution unit, typically 0.001
    );

  examples:
    my $gds2File = new GDS2(-fileName => ">$fileName");
    my $record = $gds2File -> saveGds2Record(-type=>'header',-data=>3);
    $gds2FileOut -> printGds2Record(-type=>'record',-data=>$record);
   

=cut

sub saveGds2Record #: Profiled
{
    my ($self,%arg) = @_;
    my $record='';

    my $type = $arg{'-type'};
    if (! defined $type)
    {
        die "saveGds2Record expects a type name. Missing -type => 'name' $!";
    }
    else
    {
        $type = uc $type;
    }

    my $saveEnd=$\;
    $\='';

    my @data = $arg{'-data'};
    my $dataString = $arg{'-asciiData'};
    die "saveGds2Record can not handle both -data and -asciiData options $!" if ((defined $dataString)&&((defined $data[0])&&($data[0] ne '')));

    my $data = '';
    if ($type eq 'RECORD') ## special case...
    {
        return $data[0];
    }
    else
    {
        my $numDataElements = 0;
        my $resolution = $self -> {'Resolution'};

        my $scale = $arg{'-scale'};
        if (! defined $scale)
        {
            $scale=1;
        }
        if ($scale <= 0)
        {
            die "saveGds2Record expects a positive scale -scale => $scale $!";
        }

        my $snap = $arg{'-snap'};
        if (! defined $snap) ## default is one resolution unit
        {
            $snap = 1;
        }
        else
        {
            $snap = $snap*$resolution; ## i.e. 0.001 -> 1
        }
        if ($snap < 1)
        {
            die "saveGds2Record expects a snap >= 1/resolution -snap => $snap $!";
        }

        if ((defined $data[0])&&($data[0] ne ''))
        {
            $data = $data[0];
            $numDataElements = @$data;
            if ($numDataElements) ## passed in anonymous array
            {
                @data = @$data; ## deref
            }
            else
            {
                $numDataElements = @data;
            }
        }

        my $recordDataType = $RecordTypeData{$type};
        if (defined $dataString)
        {
            $dataString=~s|^\s+||; ## clean-up
            $dataString=~s|\s+$||;
            $dataString=~s|\s+| |g if ($dataString !~ m|'|); ## don't compress spaces in strings...
            $dataString=~s|'$||; #'for strings
            $dataString=~s|^'||; #'for strings
            if (($recordDataType == BIT_ARRAY)||($recordDataType == ACSII_STRING))
            {
                $data = $dataString;
            }
            else
            {
                $dataString=~s|\s*[\s,;:/\\]+\s*| |g; ## incase commas etc... (non-std) were added by hand
                @data = split(' ',$dataString);
                $numDataElements = @data;
                if ($recordDataType == INTEGER_4)
                {
                    my @xyTmp=();
                    for(my $i=0;$i<$numDataElements;$i++) ## e.g. 3.4 in -> 3400 out
                    {
                        if ($data[$i]>=0) {push @xyTmp,int((($data[$i])*$resolution)+$G_epsilon);}
                        else              {push @xyTmp,int((($data[$i])*$resolution)-$G_epsilon);}
                    }
                    @data=@xyTmp;
                }
            }
        }
        my $byte;
        my $length = 0;
        if ($recordDataType == BIT_ARRAY)
        {
            $length = 2;
        }
        elsif ($recordDataType == INTEGER_2)
        {
            $length = 2 * $numDataElements;
        }
        elsif ($recordDataType == INTEGER_4)
        {
            $length = 4 * $numDataElements;
        }
        elsif ($recordDataType == REAL_8)
        {
            $length = 8 * $numDataElements;
        }
        elsif ($recordDataType == ACSII_STRING)
        {
            my $slen = length $data;
            $length = $slen + ($slen % 2); ## needs to be an even number
        }

        my $recordLength = pack 'S',($length + 4); #1 2 bytes for length 3rd for recordType 4th for dataType
        $record .= $recordLength;
        my $recordType = pack 'C',$RecordTypeNumbers{$type};
        $record .= $recordType;

        my $dataType   = pack 'C',$RecordTypeData{$type};
        $record .= $dataType;

        if ($recordDataType == BIT_ARRAY)     ## bit array 
        {
            my $bitLength = $length * 8;
            $record .= pack("B$bitLength",$data);
        }
        elsif ($recordDataType == INTEGER_2)  ## 2 byte signed integer
        {
            foreach my $num (@data)
            {
                $record .= pack('s',$num);
            }
        }
        elsif ($recordDataType == INTEGER_4)  ## 4 byte signed integer
        {
            foreach my $num (@data)
            {
                $num = scaleNum($num,$scale) if ($scale != 1);
                $num = snapNum($num,$snap) if ($snap != 1);
                $record .= pack('i',$num);
            }
        }
        elsif ($recordDataType == REAL_8)  ## 8 byte real
        {
            foreach my $num (@data)
            {
                my $real = $num;
                my $negative = 0;
                if($num < 0.0) 
                {
                    $negative = 1;
                    $real = 0 - $num;
                }

                my $exponent = 0;
                while($real >= 1.0) 
                {
                    $exponent++;
                    $real = ($real / 16.0);
                }

                if ($real != 0) 
                {
                    while($real < 0.0625) 
                    {
                        --$exponent;
                        $real = ($real * 16.0);
                    }
                }

                if($negative) { $exponent += 192; }
                else          { $exponent += 64; }
                $record .= pack('C',$exponent);

                for (my $i=1; $i<=7; $i++) 
                {
                    if ($real>=0) {$byte = int(($real*256.0)+$G_epsilon);}
                    else          {$byte = int(($real*256.0)-$G_epsilon);}
                    $record .= pack('C',$byte);
                    $real = $real * 256.0 - ($byte + 0.0);
                }
            }
        }
        elsif ($recordDataType == ACSII_STRING)  ## ascii string (null padded)
        {
            $record .= pack("a$length",$data);
        }
    }
    $\=$saveEnd;
    $record;
}
################################################################################

=head2  printGds2Record() - low level method to print a gds2 record given record type 
  and data (if required). Data of more than one item should be given as a list.

  usage:
    printGds2Record(
            -type=>string,
            -data=>data_If_Needed, ##optional for some types
            -scale=>#.#,           ##optional number to scale data to. I.E -scale=>0.5 #default is NOT to scale
            -snap=>#.#,            ##optional number to snap data to I.E. -snap=>0.005 #default is 1 resolution unit, typically 0.001
    );

  examples:
    my $gds2File = new GDS2(-fileName => ">$fileName");

    $gds2File -> printGds2Record(-type=>'header',-data=>3);
    $gds2File -> printGds2Record(-type=>'bgnlib',-data=>[99,12,1,22,33,0,99,12,1,22,33,9]);
    $gds2File -> printGds2Record(-type=>'libname',-data=>"testlib");
    $gds2File -> printGds2Record(-type=>'units',-data=>[0.001, 1e-9]);
    $gds2File -> printGds2Record(-type=>'bgnstr',-data=>[99,12,1,22,33,0,99,12,1,22,33,9]);
    ...
    $gds2File -> printGds2Record(-type=>'endstr');
    $gds2File -> printGds2Record(-type=>'endlib');

  Note: the special record type of 'record' can be used to copy a complete record
  just read in:
    while (my $record = $gds2FileIn -> readGds2Record()) 
    {
        $gds2FileOut -> printGds2Record(-type=>'record',-data=>$record);
    }

=cut

sub printGds2Record #: Profiled
{
    my ($self,%arg) = @_;

    my $type = $arg{'-type'};
    if (! defined $type)
    {
        die "printGds2Record expects a type name. Missing -type => 'name' $!";
    }
    else
    {
        $type = uc $type;
    }

    my $fh = $self -> {'FileHandle'};
    my $saveEnd=$\;
    $\='';

    my @data = $arg{'-data'};
    my $dataString = $arg{'-asciiData'};
    die "printGds2Record can not handle both -data and -asciiData options $!" if ((defined $dataString)&&((defined $data[0])&&($data[0] ne '')));

    my $data = '';
    my $recordLength; ## 1st 2 bytes for length 3rd for recordType 4th for dataType
    if ($type eq 'RECORD') ## special case...
    {
        if ($isLittleEndian)
        {
            my $length = substr($data[0],0,2);
            $recordLength = unpack 'v',$length;
            $self -> {'GDSLENGTH'} += $recordLength;
            $length = reverse $length;
            print($fh $length);

            my $recordType = substr($data[0],2,1);
            print($fh $recordType);
            $recordType = unpack 'C',$recordType;
            $type = $RecordTypeStrings[$recordType]; ## will use code below.....

            my $dataType = substr($data[0],3,1);
            print($fh $dataType);
            $dataType = unpack 'C',$dataType;
            if ($recordLength > 4)
            {
                my $lengthLeft = $recordLength - 4; ## length left
                my $recordDataType = $RecordTypeData{$type};

                if (($recordDataType == INTEGER_2) || ($recordDataType == BIT_ARRAY))
                {
                    my $binData = unpack 'b*',$data[0];
                    my $intData = substr($binData,32); #skip 1st 4 bytes (length, recordType dataType)
                    
                    my ($byteInt2String,$byte2);
                    for(my $i=0; $i<($lengthLeft/2); $i++)
                    {
                        $byteInt2String = reverse(substr($intData,0,16,''));
                        $byte2=pack 'B16',reverse($byteInt2String);
                        print($fh $byte2);
                    }
                }
                elsif ($recordDataType == INTEGER_4)
                {
                    my $binData = unpack 'b*',$data[0];
                    my $intData = substr($binData,32); #skip 1st 4 bytes (length, recordType dataType)
                    my ($byteInt4String,$byte4);
                    for(my $i=0; $i<($lengthLeft/4); $i++)
                    {
                        $byteInt4String = reverse(substr($intData,0,32,''));
                        $byte4=pack 'B32',reverse($byteInt4String);
                        print($fh $byte4);
                    }
                }
                elsif ($recordDataType == REAL_8)
                {
                    my $binData = unpack 'b*',$data[0];
                    my $realData = substr($binData,32); #skip 1st 4 bytes (length, recordType dataType)
                    my ($bit64String,$mantissa,$byteString,$byte);
                    for(my $i=0; $i<($lengthLeft/8); $i++)
                    {
                        $bit64String = substr($realData,($i*64),64);
                        print($fh pack 'b8',$bit64String);
                        $mantissa = substr($bit64String,8,56);
                        for(my $j=0; $j<7; $j++)
                        {
                            $byteString = substr($mantissa,($j*8),8);
                            $byte=pack 'b8',$byteString;
                            print($fh $byte);
                        }
                    }
                }
                elsif ($recordDataType == ACSII_STRING)  ## ascii string (null padded)
                {
                    print($fh pack("a$lengthLeft",substr($data[0],4)));
                }
                elsif ($recordDataType == REAL_4)  ## 4 byte real
                {
                    die "4-byte reals are not supported $!";
                }
            }
        }
        else
        {
            print($fh $data[0]);
            $recordLength = length $data[0];
            $self -> {'GDSLENGTH'} += $recordLength;
        }
    }
    else #if ($type ne 'RECORD') 
    {
        my $numDataElements = 0;
        my $resolution = $self -> {'Resolution'};

        my $scale = $arg{'-scale'};
        if (! defined $scale)
        {
            $scale=1;
        }
        if ($scale <= 0)
        {
            die "printGds2Record expects a positive scale -scale => $scale $!";
        }

        my $snap = $arg{'-snap'};
        if (! defined $snap) ## default is one resolution unit
        {
            $snap = 1;
        }
        else
        {
            $snap = int(($snap*$resolution)+$G_epsilon); ## i.e. 0.001 -> 1
        }
        if ($snap < 1)
        {
            die "printGds2Record expects a snap >= 1/resolution -snap => $snap $!";
        }

        if ((defined $data[0])&&($data[0] ne ''))
        {
            $data = $data[0];
            $numDataElements = @$data;
            if ($numDataElements) ## passed in anonymous array
            {
                @data = @$data; ## deref
            }
            else
            {
                $numDataElements = @data;
            }
        }

        my $recordDataType = $RecordTypeData{$type};
        
        if (defined $dataString)
        {
            $dataString=~s|^\s+||; ## clean-up
            $dataString=~s|\s+$||;
            $dataString=~s|\s+| |g if ($dataString !~ m|'|); ## don't compress spaces in strings...
            $dataString=~s|'$||; #'# for strings
            $dataString=~s|^'||; #'# for strings
            if (($recordDataType == BIT_ARRAY)||($recordDataType == ACSII_STRING))
            {
                $data = $dataString;
            }
            else
            {
                $dataString=~s|\s*[\s,;:/\\]+\s*| |g; ## in case commas etc... (non-std) were added by hand
                @data = split(' ',$dataString);
                $numDataElements = @data;
                if ($recordDataType == INTEGER_4)
                {
                    my @xyTmp=();
                    for(my $i=0;$i<$numDataElements;$i++) ## e.g. 3.4 in -> 3400 out
                    {
                        if ($data[$i]>=0) {push @xyTmp,int((($data[$i])*$resolution)+$G_epsilon);}
                        else              {push @xyTmp,int((($data[$i])*$resolution)-$G_epsilon);}
                    }
                    @data=@xyTmp;
                }
            }
        }
        my $byte;
        my $length = 0;
        if ($recordDataType == BIT_ARRAY)
        {
            $length = 2;
        }
        elsif ($recordDataType == INTEGER_2)
        {
            $length = 2 * $numDataElements;
        }
        elsif ($recordDataType == INTEGER_4)
        {
            $length = 4 * $numDataElements;
        }
        elsif ($recordDataType == REAL_8)
        {
            $length = 8 * $numDataElements;
        }
        elsif ($recordDataType == ACSII_STRING)
        {
            my $slen = length $data;
            $length = $slen + ($slen % 2); ## needs to be an even number
        }
        $self -> {'GDSLENGTH'} += $length;
        if ($isLittleEndian)
        {
            $recordLength = pack 'v',($length + 4);
            $recordLength = reverse $recordLength;
        }
        else
        {
            $recordLength = pack 'S',($length + 4);
        }
        print($fh $recordLength);

        my $recordType = pack 'C',$RecordTypeNumbers{$type};
        $recordType = reverse $recordType if ($isLittleEndian);
        print($fh $recordType);

        my $dataType   = pack 'C',$RecordTypeData{$type};
        $dataType = reverse $dataType if ($isLittleEndian);
        print($fh $dataType);

        if ($recordDataType == BIT_ARRAY)     ## bit array 
        {
            my $bitLength = $length * 8;
            my $value = pack("B$bitLength",$data);
            print($fh $value);
        }
        elsif ($recordDataType == INTEGER_2)  ## 2 byte signed integer
        {
            my $value;
            foreach my $num (@data)
            {
                $value = pack('s',$num);
                $value = reverse $value if ($isLittleEndian);
                print($fh $value);
            }
        }
        elsif ($recordDataType == INTEGER_4)  ## 4 byte signed integer
        {
            my $value;
            foreach my $num (@data)
            {
                $num = scaleNum($num,$scale) if ($scale != 1);
                $num = snapNum($num,$snap) if ($snap != 1);
                $value = pack('i',$num);
                $value = reverse $value if ($isLittleEndian);
                print($fh $value);
            }
        }
        elsif ($recordDataType == REAL_8)  ## 8 byte real
        {
            my ($real,$negative,$exponent,$value);
            foreach my $num (@data)
            {
                $real = $num;
                $negative = 0;
                if($num < 0.0) 
                {
                    $negative = 1;
                    $real = 0 - $num;
                }

                $exponent = 0;
                while($real >= 1.0) 
                {
                    $exponent++;
                    $real = ($real / 16.0);
                }

                if ($real != 0) 
                {
                    while($real < 0.0625) 
                    {
                        --$exponent;
                        $real = ($real * 16.0);
                    }
                }
                if($negative) { $exponent += 192; }
                else          { $exponent += 64; }
                $value = pack('C',$exponent);
                $value = reverse $value if ($isLittleEndian);
                print($fh $value);

                for (my $i=1; $i<=7; $i++) 
                {
                    if ($real>=0) {$byte = int(($real*256.0)+$G_epsilon);}
                    else          {$byte = int(($real*256.0)-$G_epsilon);}
                    my $value = pack('C',$byte);
                    $value = reverse $value if ($isLittleEndian);
                    print($fh $value);
                    $real = $real * 256.0 - ($byte + 0.0);
                }
            }
        }
        elsif ($recordDataType == ACSII_STRING)  ## ascii string (null padded)
        {
            print($fh pack("a$length",$data));
        }
    }
    $\=$saveEnd;
}
################################################################################

=head2 printRecord - prints a record just read 

  usage:
    $gds2File -> printRecord(
                  -data => $record 
                );

=cut

sub printRecord #: Profiled
{
    my ($self,%arg) = @_;
    my $record = $arg{'-data'};
    if (! defined $record)
    {
        die "printGds2Record expects a data record. Missing -data => \$record $!";
    }
    my $type = $arg{'-type'};
    if (defined $type)
    {
        die "printRecord does not take -type. Perhaps you meant to use printGds2Record? $!";
    }
    $self -> printGds2Record(-type=>'record',-data=>$record);
}
################################################################################

################################################################################

=head1 Low Level Generic Read Methods

=cut

################################################################################

=head2 readGds2Record - reads record header and data section

  usage:
  while ($gds2File -> readGds2Record)
  {
      if ($gds2File -> returnRecordTypeString eq 'LAYER')
      {
          $layersFound[$gds2File -> layer] = 1;
      }
  }

=cut

sub readGds2Record #: Profiled
{
    my $self = shift;
    $self -> readGds2RecordHeader();
    $self -> readGds2RecordData();
    $self -> {'Record'};
}
################################################################################

=head2 readGds2RecordHeader - only reads gds2 record header section (2 bytes)

=cut

sub readGds2RecordHeader #: Profiled
{
    my $self = shift;
    $self -> skipGds2RecordData() if (($self -> {'HEADER'} >= 0) && (! $self -> {'INDATA'})) ; # in HEADER not in data
    $self -> {'Record'} = '';
    $self -> {'RecordType'} = -1;
    $self -> {'HEADER'} = 1;
    $self -> {'INDATA'} = 0;
    return '' if ($self -> {'EOLIB'}); ## no sense reading null padding..
    my $data;
    if (read($self -> {'FileHandle'},$data,2)) ### length
    {
        $data = reverse $data if ($isLittleEndian);
        $self -> {'Record'} = $data;
        $self -> {'Length'} = unpack 'S',$data; 
        $self -> {'GDSLENGTH'} += $self -> {'Length'};
    }
    else
    {
        return 0;
    }

    if (read($self -> {'FileHandle'},$data,1)) ## record type 
    {
        $data = reverse $data if ($isLittleEndian);
        $self -> {'Record'} .= $data;
        $self -> {'RecordType'} = unpack 'C',$data; 
        $self -> {'EOLIB'} = 1 if (($self -> {'RecordType'}) == ENDLIB);

        if ($self -> {'UsingPrettyPrint'})
        {
            $StrSpace = ''   if (($self -> {'RecordType'}) == ENDSTR);
            $StrSpace = '  ' if (($self -> {'RecordType'}) == BGNSTR);

            $ElmSpace = '  ' if ((($self -> {'RecordType'}) == TEXT) || (($self -> {'RecordType'}) == PATH) || 
                                 (($self -> {'RecordType'}) == BOUNDARY) || (($self -> {'RecordType'}) == SREF) || 
                                 (($self -> {'RecordType'}) == AREF));
            $ElmSpace = ''   if (($self -> {'RecordType'}) == ENDEL);
        }
    }
    else
    {
        return 0;
    }

    if (read($self -> {'FileHandle'},$data,1)) ## data type
    {
        $data = reverse $data if ($isLittleEndian);
        $self -> {'Record'} .= $data;
        $self -> {'DataType'} = unpack 'C',$data; 
    }
    else
    {
        return 0;
    }
    return 1;
}
################################################################################

=head2 readGds2RecordData - only reads record data section

  slightly faster if you just want a certain thing...
  usage:
  while ($gds2File -> readGds2RecordHeader) 
  {
      if ($gds2File -> returnRecordTypeString eq 'LAYER')
      {
          $gds2File -> readGds2RecordData;
          $layersFound[$gds2File -> returnLayer] = 1;
      }
  }

=cut

sub readGds2RecordData #: Profiled
{
    my $self = shift;
    $self -> readGds2RecordHeader() if ($self -> {'HEADER'} <= 0);
    return $self -> {'Record'} if ($self -> {'DataType'} == NO_DATA); # no sense going on...
    $self -> {'HEADER'} = 0; # not in HEADER
    $self -> {'INDATA'} = 1; # rather in DATA
    my $resolution = $self -> {'Resolution'};
    my $bytesLeft = $self -> {'Length'} - 4; ## 4 should have been just read by readGds2RecordHeader
    $self -> {'RecordData'} = ('');
    $self -> {'CurrentDataList'} = '';
    my $data;
    if ($self -> {'DataType'} == BIT_ARRAY)     ## bit array 
    {
        $self -> {'DataIndex'}=0;
        read($self -> {'FileHandle'},$data,$bytesLeft);
        $data = reverse $data if ($isLittleEndian);
        my $bitsLeft = $bytesLeft * 8;
        $self -> {'Record'} .= $data;
        $self -> {'RecordData'}[0] = unpack "B$bitsLeft",$data;
        $self -> {'CurrentDataList'} = ($self -> {'RecordData'}[0]);
    }
    elsif ($self -> {'DataType'} == INTEGER_2)  ## 2 byte signed integer
    {
        my $tmpListString = ''; 
        my $i = 0;
        while ($bytesLeft)
        {
            read($self -> {'FileHandle'},$data,2);
            $data = reverse $data if ($isLittleEndian);
            $self -> {'Record'} .= $data;
            $self -> {'RecordData'}[$i] = unpack 's',$data;
            $tmpListString .= ',';
            $tmpListString .= $self -> {'RecordData'}[$i];
            $i++;
            $bytesLeft -= 2;
        }
        $self -> {'DataIndex'} = $i - 1;
        $self -> {'CurrentDataList'} = $tmpListString;
    }
    elsif ($self -> {'DataType'} == INTEGER_4)  ## 4 byte signed integer
    {
        my $tmpListString = ''; 
        my $i = 0;
        while ($bytesLeft)
        {
            read($self -> {'FileHandle'},$data,4);
            $data = reverse $data if ($isLittleEndian);
            $self -> {'Record'} .= $data;
            $self -> {'RecordData'}[$i] = unpack 'i',$data;
            $tmpListString .= ',';
            $tmpListString .= $self -> {'RecordData'}[$i];
            $i++;
            $bytesLeft -= 4;
        }
        $self -> {'DataIndex'} = $i - 1;
        $self -> {'CurrentDataList'} = $tmpListString;
    }
    elsif ($self -> {'DataType'} == REAL_4)  ## 4 byte real
    {
        die "4-byte reals are not supported $!";
    }
    elsif ($self -> {'DataType'} == REAL_8)  ## 8 byte real
    {
        my $tmpListString = ''; 
        my $i = 0;
        my ($negative,$exponent,$mantdata,$byteString,$byte,$mantissa,$real);
        while ($bytesLeft)
        {
            read($self -> {'FileHandle'},$data,1); ## sign bit and 7 exponent bits
            #$data = reverse $data if ($isLittleEndian);
            $self -> {'Record'} .= $data;
            $negative = unpack 'B',$data; ## sign bit
            $exponent = unpack 'C',$data;
            if ($negative)
            {
                $exponent -= 192; ## 128 + 64
            }
            else
            {
                $exponent -= 64;
            }
            read($self -> {'FileHandle'},$data,7); ## mantissa bits
            $mantdata = unpack 'b*',$data;
            $self -> {'Record'} .= $data;
            $mantissa = 0.0;
            for(my $j=0; $j<7; $j++)
            {
                $byteString = substr($mantdata,0,8,'');
                $byte = pack 'b*',$byteString;
                $byte = unpack 'C',$byte;
                $mantissa += $byte / (256.0**($j+1));
            }
            $real = $mantissa * (16**$exponent);
            $real = (0 - $real) if ($negative);
            if ($RecordTypeStrings[$self -> {'RecordType'}] eq 'UNITS')
            {
                $self -> {'UUnits'} = $real if ($self -> {'UUnits'} == 0);
                $self -> {'DBUnits'} = $real if ($self -> {'DBUnits'} == 0);
            }
            else
            {
                ### this works because UUnits and DBUnits are 1st reals in GDS2 file
                $real = int(($real+($self -> {'UUnits'}/$resolution))/$self -> {'UUnits'})*$self -> {'UUnits'} if ($self -> {'UUnits'} != 0); ## "rounds" off
            }
            $self -> {'RecordData'}[$i] = $real;
            $tmpListString .= ',';
            $tmpListString .= $self -> {'RecordData'}[$i];
            $i++;
            $bytesLeft -= 8;
        }
        $self -> {'DataIndex'} = $i - 1;
        $self -> {'CurrentDataList'} = $tmpListString;
    }
    elsif ($self -> {'DataType'} == ACSII_STRING)  ## ascii string (null padded)
    {
        $self -> {'DataIndex'} = 0;
        read($self -> {'FileHandle'},$data,$bytesLeft);
        $self -> {'Record'} .= $data;
        $self -> {'RecordData'}[0] = unpack "a$bytesLeft",$data;
        $self -> {'RecordData'}[0] =~ s|\0||g; ## take off ending nulls
        $self -> {'CurrentDataList'} = ($self -> {'RecordData'}[0]);
    }
    $self -> {'Record'};
}
################################################################################

=head1 Low Level Generic Evaluation Methods

=cut

################################################################################

=head2 returnRecordType - returns current (read) record type as integer

  usage:
  if ($gds2File -> returnRecordType == 6)
  {
      print "found STRNAME";
  }

=cut

sub returnRecordType #: Profiled
{
    my $self = shift;
    $self -> {'RecordType'};
}
################################################################################

=head2 returnRecordTypeString - returns current (read) record type as string

  usage:
  if ($gds2File -> returnRecordTypeString eq 'LAYER')
  {
      code goes here...
  }

=cut

sub returnRecordTypeString #: Profiled
{
    my $self = shift;
    $RecordTypeStrings[($self -> {'RecordType'})];
}
################################################################################

=head2 returnRecordAsString - returns current (read) record as a string

  usage:
  while ($gds2File -> readGds2Record) 
  {
      print $gds2File -> returnRecordAsString;
  }

=cut

sub returnRecordAsString() #: Profiled
{
    my $self = shift;
    my $string = '';
    $self -> {'UsingPrettyPrint'} = 1;
    $string .= $StrSpace if ($self -> {'RecordType'} != BGNSTR);
    $string .= $ElmSpace if (!(($self -> {'RecordType'} == TEXT) || ($self -> {'RecordType'} == PATH) || 
                               ($self -> {'RecordType'} == BOUNDARY) || ($self -> {'RecordType'} == SREF) || 
                               ($self -> {'RecordType'} == AREF)));
    my $recordType = $RecordTypeStrings[$self -> {'RecordType'}];
    $string .= $recordType;
    my $i = 0;
    while ($i <= $self -> {'DataIndex'})
    {
        if ($self -> {'DataType'} == BIT_ARRAY)
        {
            my $bitString = $self -> {'RecordData'}[$i];
            if ($isLittleEndian)
            {
                $bitString =~ m|(........)(........)|;
                $bitString = "$2$1";
            }
            $string .= '  '.$bitString;
        }
        elsif (
            ($self -> {'DataType'} == INTEGER_2) ||
            ($self -> {'DataType'} == REAL_8)
        )
        {
            $string .= '  '.$self -> {'RecordData'}[$i];
            $string =~ s|(\d)\.e|$1e| if ($recordType eq 'UNITS'); ## perl on Cygwin prints "1.e-9" others "1e-9"
        }
        elsif ($self -> {'DataType'} == INTEGER_4)
        {
            $string .= '  '.$self -> {'RecordData'}[$i]*($self -> {'UUnits'});
        }
        elsif ($self -> {'DataType'} == ACSII_STRING)
        {
            $string .= "  '".$self -> {'RecordData'}[$i]."'";
        }
        $i++;
    }
    $string;
}
################################################################################

=head2 returnXyAsArray - returns current (read) XY record as an array

  usage:
    $gds2File -> returnXyAsArray(
                    -asInteger => 0|1  ## (optional) default is true. Return integer 
                                       ## array or if false return array of reals.
                    -withClosure => 0|1  ## (optional) default is true. Whether to 
                                         ##return a rectangle with 5 or 4 points.
               );
    
  example:
  while ($gds2File -> readGds2Record) 
  {
      my @xy = $gds2File -> returnXyAsArray if ($gds2File -> isXy);
  }

=cut

sub returnXyAsArray() #: Profiled
{
    my($self,%arg) = @_;
    my $asInteger = $arg{'-asInteger'};
    if (! defined $asInteger)
    {
        $asInteger = 1;
    }
    my $withClosure = $arg{'-withClosure'};
    if (! defined $withClosure)
    {
        $withClosure = 1;
    }
    my @xys=();
    if ($self -> isXy)
    {
        my $i = 0;
        my $stopPoint = $self -> {'DataIndex'};
        $stopPoint -= 2 if (! $withClosure);
        while ($i <= $stopPoint)
        {
            if ($asInteger)
            {
                push @xys,($self -> {'RecordData'}[$i]);
            }
            else
            {
                push @xys,($self -> {'RecordData'}[$i]*($self -> {'UUnits'}));
            }
            $i++;
        }
    }
    @xys;
}
################################################################################


=head2 returnRecordAsPerl - returns current (read) record as a perl command to facilitate the creation of parameterized gds2 data with perl.

  usage:
  #!/usr/local/bin/perl
  use GDS2;
  my $gds2File = new GDS2(-fileName=>"test.gds");
  while ($gds2File -> readGds2Record) 
  {
      print $gds2File -> returnRecordAsPerl;
  }

=cut

sub returnRecordAsPerl() #: Profiled
{
    my($self,%arg) = @_;
    my $gds2File = $arg{'-gds2File'};
    if (! defined $gds2File)
    {
        $gds2File = '$gds2File';
    }
    my $PGR = $arg{'-printGds2Record'};
    if (! defined $PGR)
    {
        $PGR = 'printGds2Record';
    }
    my $string = '';
    $self -> {'UsingPrettyPrint'} = 1;
    $string .= $StrSpace if ($self -> {'RecordType'} != BGNSTR);
    $string .= $ElmSpace if (!(($self -> {'RecordType'} == TEXT) || ($self -> {'RecordType'} == PATH) || 
                               ($self -> {'RecordType'} == BOUNDARY) || ($self -> {'RecordType'} == SREF) || 
                               ($self -> {'RecordType'} == AREF)));
    if (
        ($self -> {'RecordType'} == TEXT) || 
        ($self -> {'RecordType'} == PATH) || 
        ($self -> {'RecordType'} == BOUNDARY) ||
        ($self -> {'RecordType'} == SREF) || 
        ($self -> {'RecordType'} == AREF) || 
        ($self -> {'RecordType'} == ENDEL) ||
        ($self -> {'RecordType'} == ENDSTR) ||
        ($self -> {'RecordType'} == ENDLIB)
       )
    {
        $string .= $gds2File.'->'.$PGR.'(-type=>'."'".$RecordTypeStrings[$self -> {'RecordType'}]."'".');';
    }
    else
    {
        $string .= $gds2File.'->'.$PGR.'(-type=>'."'".$RecordTypeStrings[$self -> {'RecordType'}]."',-data=>";
        my $i = 0;
        my $maxi = $self -> {'DataIndex'};
        if ($maxi >= 1) {$string .= '['}
        while ($i <= $maxi)
            {
            if ($self -> {'DataType'} == BIT_ARRAY)
            {
                $string .= "'".$self -> {'RecordData'}[$i]."'";
            }
            elsif ($self -> {'DataType'} == INTEGER_2)
            {
                $string .= $self -> {'RecordData'}[$i];
            }
            elsif ($self -> {'DataType'} == INTEGER_4)
            {
                $string .= $self -> {'RecordData'}[$i];
            }
            elsif ($self -> {'DataType'} == REAL_8)
            {
                $string .= $self -> {'RecordData'}[$i];
            }
            elsif ($self -> {'DataType'} == ACSII_STRING)
            {
                $string .= "'".$self -> {'RecordData'}[$i]."'";
            }
            if ($i < $maxi) {$string .= ', '}
            $i++;
        }
        if ($maxi >= 1) {$string .= ']'}
        $string .= ');';
    }
    $string;
}
################################################################################


=head1 Low Level Specific Write Methods

=cut

################################################################################

=head2 printAngle - prints ANGLE record

  usage:
    $gds2File -> printAngle(-num=>#.#);

=cut

sub printAngle #: Profiled
{
    my($self,%arg) = @_;
    my $angle = $arg{'-num'};
    $angle=0 if (! defined $angle);
    $angle=posAngle($angle);
    $self -> printGds2Record(-type => 'ANGLE',-data => $angle) if ($angle);
}
################################################################################

=head2 printAttrtable - prints ATTRTABLE record

  usage:
    $gds2File -> printAttrtable(-string=>$string);

=cut

sub printAttrtable #: Profiled
{
    my($self,%arg) = @_;
    my $string = $arg{'-string'};
    if (! defined $string)
    {
        die "printAttrtable expects a string. Missing -string => 'text' $!";
    }
    $self -> printGds2Record(-type => 'ATTRTABLE',-data => $string);
}
################################################################################

=head2 printBgnextn - prints BGNEXTN record

  usage:
    $gds2File -> printBgnextn(-num=>#.#);

=cut

sub printBgnextn #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printBgnextn expects a extension number. Missing -num => #.# $!";
    }
    my $resolution = $self -> {'Resolution'};
    if ($num >= 0) {$num = int(($num*$resolution)+$G_epsilon);}
    else           {$num = int(($num*$resolution)-$G_epsilon);}
    $self -> printGds2Record(-type => 'BGNEXTN',-data => $num);
}
################################################################################

=head2 printBgnlib - prints BGNLIB record

  usage:
    $gds2File -> printBgnlib(
                            -isoDate => 0|1 ## (optional) use ISO 4 digit date 2001 vs 101
                           );
    
=cut

sub printBgnlib #: Profiled
{
    my($self,%arg) = @_;
    my $isoDate = $arg{'-isoDate'};
    if (! defined $isoDate)
    {
        $isoDate = 0;
    }
    elsif ($isoDate != 0)
    {
        $isoDate = 1;
    }
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
    $mon++;
    $year += 1900 if ($isoDate); ## Cadence likes year left "as is". GDS format supports year number up to 65535 -- 101 vs 2001
    $self -> printGds2Record(-type=>'BGNLIB',-data=>[$year,$mon,$mday,$hour,$min,$sec,$year,$mon,$mday,$hour,$min,$sec]);
}
################################################################################

=head2 printBox - prints BOX record

  usage:
    $gds2File -> printBox;

=cut

sub printBox #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'BOX');
}
################################################################################

=head2 printBoxtype - prints BOXTYPE record

  usage:
    $gds2File -> printBoxtype(-num=>#);

=cut

sub printBoxtype #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printBoxtype expects a number. Missing -num => # $!";
    }
    $self -> printGds2Record(-type => 'BOXTYPE',-data => $num);
}
################################################################################

=head2 printColrow - prints COLROW record

  usage:
    $gds2File -> printBoxtype(-columns=>#, -rows=>#);

=cut

sub printColrow #: Profiled
{
    my($self,%arg) = @_;
    my $columns = $arg{'-columns'};
    if ((! defined $columns)||($columns <= 0))
    {
        $columns=1;
    }
    else
    {
        $columns=int($columns);
    }
    my $rows = $arg{'-rows'};
    if ((! defined $rows)||($rows <= 0))
    {
        $rows=1;
    }
    else
    {
        $rows=int($rows);
    }
    $self -> printGds2Record(-type => 'COLROW',-data => [$columns,$rows]);
}
################################################################################

=head2 printDatatype - prints DATATYPE record

  usage:
    $gds2File -> printDatatype(-num=>#);

=cut

sub printDatatype #: Profiled
{
    my($self,%arg) = @_;
    my $dataType = $arg{'-num'};
    if (! defined $dataType)
    {
        $dataType=0;
    }
    $self -> printGds2Record(-type => 'DATATYPE',-data => $dataType);
}
################################################################################

sub printEflags #: Profiled
{
    my $self = shift;
    die "EFLAGS type not supported $!";
}
################################################################################

=head2 printElkey - prints ELKEY record

  usage:
    $gds2File -> printElkey(-num=>#);

=cut

sub printElkey #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printElkey expects a number. Missing -num => #.# $!";
    }
    $self -> printGds2Record(-type => 'ELKEY',-data => $num);
}
################################################################################

=head2 printEndel - closes an element definition 

=cut

sub printEndel #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'ENDEL');
}
################################################################################

=head2 printEndextn - prints path end extension record

  usage:
    $gds2File printEndextn -> (-num=>#.#);

=cut

sub printEndextn #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printEndextn expects a extension number. Missing -num => #.# $!";
    }
    my $resolution = $self -> {'Resolution'};
    if ($num >= 0) {$num = int(($num*$resolution)+$G_epsilon);}
    else           {$num = int(($num*$resolution)-$G_epsilon);}
    $self -> printGds2Record(-type => 'ENDEXTN',-data => $num);
}
################################################################################

=head2 printEndlib - closes a library definition

=cut

sub printEndlib #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'ENDLIB');
}
################################################################################

=head2 printEndstr - closes a structure definition

=cut

sub printEndstr #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'ENDSTR');
}
################################################################################

=head2 printEndmasks - prints a ENDMASKS 

=cut

sub printEndmasks #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'ENDMASKS');
}
################################################################################

=head2 printFonts - prints a FONTS record

  usage:
    $gds2File -> printFonts(-string=>'names_of_font_files');

=cut

sub printFonts #: Profiled
{
    my($self,%arg) = @_;
    my $string = $arg{'-string'};
    if (! defined $string)
    {
        die "printFonts expects a string. Missing -string => 'text' $!";
    }
    $self -> printGds2Record(-type => 'FONTS',-data => $string);
}
################################################################################

sub printFormat #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printFormat expects a number. Missing -num => #.# $!";
    }
    $self -> printGds2Record(-type => 'FORMAT',-data => $num);
}
################################################################################

sub printGenerations #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'GENERATIONS');
}
################################################################################

=head2 printHeader - Prints a rev 3 header

  usage:
    $gds2File -> printHeader(
                  -num => #  ## optional, defaults to 3. valid revs are 0,3,4,5,and 600
                );

=cut

sub printHeader #: Profiled
{
    my($self,%arg) = @_;
    my $rev = $arg{'-num'};
    if (! defined $rev)
    {
        $rev=3;
    }
    $self -> printGds2Record(-type=>'HEADER',-data=>$rev);
}
################################################################################

=head2 printLayer - prints a LAYER number 

  usage:
    $gds2File -> printLayer(
                  -num => #  ## optional, defaults to 0. 
                );

=cut

sub printLayer #: Profiled
{
    my($self,%arg) = @_;
    my $layer = $arg{'-num'};
    if (! defined $layer)
    {
        $layer=0;
    }
    $self -> printGds2Record(-type => 'LAYER',-data => $layer);
}
################################################################################

sub printLibdirsize #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'LIBDIRSIZE');
}
################################################################################

=head2 printLibname - Prints library name

  usage:
    printLibname(-name=>$name);

=cut

sub printLibname #: Profiled
{
    my($self,%arg) = @_;
    my $libName = $arg{'-name'};
    if (! defined $libName)
    {
        die "printLibname expects a library name. Missing -name => 'name' $!";
    }
    $self -> printGds2Record(-type => 'LIBNAME',-data => $libName);
}
################################################################################

sub printLibsecur #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'LIBSECUR');
}
################################################################################

sub printLinkkeys #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printLinkkeys expects a number. Missing -num => #.# $!";
    }
    $self -> printGds2Record(-type => 'LINKKEYS',-data => $num);
}
################################################################################

sub printLinktype #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printLinktype expects a number. Missing -num => #.# $!";
    }
    $self -> printGds2Record(-type => 'LINKTYPE',-data => $num);
}
################################################################################

=head2 printPathtype - prints a PATHTYPE number 

  usage:
    $gds2File -> printPathtype(
                  -num => #  ## optional, defaults to 0. 
                );

=cut

sub printPathtype #: Profiled
{
    my($self,%arg) = @_;
    my $pathType = $arg{'-num'};
    $pathType=0 if (! defined $pathType);
    $self -> printGds2Record(-type => 'PATHTYPE',-data => $pathType) if ($pathType);
}
################################################################################

=head2 printMag - prints a MAG number 

  usage:
    $gds2File -> printMag(
                  -num => #.#  ## optional, defaults to 0.0 
                );

=cut

sub printMag #: Profiled
{
    my($self,%arg) = @_;
    my $mag = $arg{'-num'};
    $mag=0 if ((! defined $mag)||($mag <= 0));
    $self -> printGds2Record(-type => 'MAG',-data => $mag)if ($mag);
}
################################################################################

sub printMask #: Profiled
{
    my($self,%arg) = @_;
    my $string = $arg{'-string'};
    if (! defined $string)
    {
        die "printMask expects a string. Missing -string => 'text' $!";
    }
    $self -> printGds2Record(-type => 'MASK',-data => $string);
}
################################################################################

sub printNode #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'NODE');
}
################################################################################

=head2 printNodetype - prints a NODETYPE number 

  usage:
    $gds2File -> printNodetype(
                  -num => #  
                );

=cut

sub printNodetype #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printNodetype expects a number. Missing -num => # $!";
    }
    $self -> printGds2Record(-type => 'NODETYPE',-data => $num);
}
################################################################################

sub printPlex #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printPlex expects a number. Missing -num => #.# $!";
    }
    $self -> printGds2Record(-type => 'PLEX',-data => $num);
}
################################################################################

=head2 printPresentation - prints a text presentation record

  usage:
    $gds2File -> printPresentation(
                  -font => #,  ##optional, defaults to 0, valid numbers are 0-3
                  -top, ||-middle, || -bottom, ## vertical justification
                  -left, ||-center, || -right, ## horizontal justification
                );

  example:
    gds2File -> printPresentation(-font=>0,-top,-left);

=cut

sub printPresentation #: Profiled
{
    my($self,%arg) = @_;
    my $font = $arg{'-font'};
    if ((! defined $font) || ($font < 0) || ($font > 3))
    {
        $font=0;
    }
    $font = sprintf("%02d",$font);

    my $vertical;
    my $top = $arg{'-top'};
    my $middle = $arg{'-middle'};
    my $bottom = $arg{'-bottom'};
    if    (defined $top)    {$vertical = '00';}
    elsif (defined $bottom) {$vertical = '10';}
    else                    {$vertical = '01';} ## middle
    my $horizontal; 
    my $left   = $arg{'-left'};
    my $center = $arg{'-center'};
    my $right  = $arg{'-right'};
    if    (defined $left)  {$horizontal = '00';}
    elsif (defined $right) {$horizontal = '10';}
    else                   {$horizontal = '01';} ## center

    my $bitstring = "0000000000$font$vertical$horizontal";
    $self -> printGds2Record(-type => 'PRESENTATION',-data => $bitstring);
}
################################################################################

=head2 printPropattr - prints a property id number 

  usage:
    $gds2File -> printPropattr( -num => # );

=cut

sub printPropattr #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printPropattr expects a number. Missing -num => # $!";
    }
    $self -> printGds2Record(-type => 'PROPATTR',-data => $num);
}
################################################################################

=head2 printPropvalue - prints a property value string

  usage:
    $gds2File -> printPropvalue( -string => $string );

=cut

sub printPropvalue #: Profiled
{
    my($self,%arg) = @_;
    my $string = $arg{'-string'};
    if (! defined $string)
    {
        die "printPropvalue expects a string. Missing -string => 'text' $!";
    }
    $self -> printGds2Record(-type => 'PROPVALUE',-data => $string);
}
################################################################################

sub printReflibs #: Profiled
{
    my($self,%arg) = @_;
    my $string = $arg{'-string'};
    if (! defined $string)
    {
        die "printReflibs expects a string. Missing -string => 'text' $!";
    }
    $self -> printGds2Record(-type => 'REFLIBS',-data => $string);
}
################################################################################

sub printReserved #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printReserved expects a number. Missing -num => #.# $!";
    }
    $self -> printGds2Record(-type => 'RESERVED',-data => $num);
}
################################################################################

=head2 printSname - prints a SNAME string

  usage:
    $gds2File -> printSname( -name => $cellName );

=cut

sub printSname #: Profiled
{
    my($self,%arg) = @_;
    my $string = $arg{'-name'};
    if (! defined $string)
    {
        die "printSname expects a cell name. Missing -name => 'text' $!";
    }
    $self -> printGds2Record(-type => 'SNAME',-data => $string);
}
################################################################################

sub printSpacing #: Profiled
{
    my $self = shift;
    die "SPACING type not supported $!";
}
################################################################################

sub printSrfname #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'SRFNAME');
}
################################################################################

=head2 printStrans - prints a STRANS record

  usage:
    $gds2File -> printStrans( -reflect );

=cut

sub printStrans #: Profiled
{
    my($self,%arg) = @_;
    my $reflect = $arg{'-reflect'};
    if ((! defined $reflect)||($reflect <= 0))
    {
        $reflect=0;
    }
    else
    {
        $reflect=1;
    }
    my $data=$reflect.'000000000000000'; ## 16 'bit' string
    $self -> printGds2Record(-type => 'STRANS',-data => $data);
}
################################################################################

sub printStrclass #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'STRCLASS');
}
################################################################################

=head2 printString - prints a STRING record

  usage:
    $gds2File -> printSname( -string => $text );

=cut

sub printString #: Profiled
{
    my($self,%arg) = @_;
    my $string = $arg{'-string'};
    if (! defined $string)
    {
        die "printString expects a string. Missing -string => 'text' $!";
    }
    $self -> printGds2Record(-type => 'STRING',-data => $string);
}
################################################################################

=head2 printStrname - prints a structure name string

  usage:
    $gds2File -> printStrname( -name => $cellName );

=cut

sub printStrname #: Profiled
{
    my($self,%arg) = @_;
    my $strName = $arg{'-name'};
    if (! defined $strName)
    {
        die "printStrname expects a structure name. Missing -name => 'name' $!";
    }
    $self -> printGds2Record(-type => 'STRNAME',-data => $strName);
}
################################################################################

sub printStrtype #: Profiled
{
    my $self = shift;
    die "STRTYPE type not supported $!";
}
################################################################################

sub printStyptable #: Profiled
{
    my($self,%arg) = @_;
    my $string = $arg{'-string'};
    if (! defined $string)
    {
        die "printStyptable expects a string. Missing -string => 'text' $!";
    }
    $self -> printGds2Record(-type => 'STYPTABLE',-data => $string);
}
################################################################################

sub printTapecode #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printTapecode expects a number. Missing -num => #.# $!";
    }
    $self -> printGds2Record(-type => 'TAPECODE',-data => $num);
}
################################################################################

sub printTapenum #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printTapenum expects a number. Missing -num => #.# $!";
    }
    $self -> printGds2Record(-type => 'TAPENUM',-data => $num);
}
################################################################################

sub printTextnode #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'TEXTNODE');
}
################################################################################

=head2 printTexttype - prints a text type number 

  usage:
    $gds2File -> printTexttype( -num => # );

=cut

sub printTexttype #: Profiled
{
    my($self,%arg) = @_;
    my $num = $arg{'-num'};
    if (! defined $num)
    {
        die "printTexttype expects a number. Missing -num => # $!";
    }
    $num = 0 if ($num < 0);
    $self -> printGds2Record(-type => 'TEXTTYPE',-data => $num);
}
################################################################################

sub printUinteger #: Profiled
{
    my $self = shift;
    die "UINTEGER type not supported $!";
}
################################################################################

=head2 printUnits - Prints units record.

  Defaults to 1e-3 and 1e-9

=cut

sub printUnits #: Profiled
{
    my $self = shift;
    $self -> printGds2Record(-type => 'UNITS',-data => [0.001,1e-9]);
}
################################################################################

sub printUstring #: Profiled
{
    my $self = shift;
    die "USTRING type not supported $!";
}
################################################################################

=head2 printPropattr - prints a width number 

  usage:
    $gds2File -> printWidth( -num => # );

=cut

sub printWidth #: Profiled
{
    my($self,%arg) = @_;
    my $width = $arg{'-num'};
    if ((! defined $width)||($width <= 0))
    {
        $width=0;
    }
    $self -> printGds2Record(-type => 'WIDTH',-data => $width) if ($width);
}
################################################################################

=head2 printXy - prints an XY array 

  usage:
    $gds2File -> printXy( -xy => \@array );

=cut

sub printXy #: Profiled
{
    my($self,%arg) = @_;
    #### -xyInt most useful if reading and modifying... -xy if creating from scratch
    my $xyInt = $arg{'-xyInt'}; ## $xyInt should be a reference to an array of internal GDS2 format integers
    my $xy = $arg{'-xy'}; ## $xy should be a reference to an array of reals
    my $resolution = $self -> {'Resolution'};
    if (! ((defined $xy) || (defined $xyInt)))
    {
        die "printXy expects an xy array reference. Missing -xy => \\\@array $!";
    }
    if (defined $xyInt)
    {
        $xy = $xyInt;
        $resolution=1;
    }
    my @xyTmp=(); ##don't pollute array passed in
    for(my $i=0;$i<=$#$xy;$i++) ## e.g. 3.4 in -> 3400 out
    {
        if ($xy -> [$i] >= 0) {push @xyTmp,int((($xy -> [$i])*$resolution)+$G_epsilon);}
        else                  {push @xyTmp,int((($xy -> [$i])*$resolution)-$G_epsilon);}
    }
    $self -> printGds2Record(-type => 'XY',-data => \@xyTmp);
}
################################################################################


################################################################################

=head1 Low Level Specific Evaluation Methods

=cut

################################################################################

=head2 returnDatatype - returns datatype # if record is DATATYPE else returns -1

  usage:
    $dataTypesFound[$gds2File -> returnDatatype] = 1;

=cut

sub returnDatatype #: Profiled
{
    my $self = shift;
    ## 2 byte signed integer
    if ($self -> isDatatype) { $self -> {'RecordData'}[0]; }
    else { -1; }
}
################################################################################

=head2 returnPathtype - returns pathtype # if record is PATHTYPE else returns -1

  usage:

=cut

sub returnPathtype #: Profiled
{
    my $self = shift;
    ## 2 byte signed integer
    if ($self -> isPathtype) { $self -> {'RecordData'}[0]; }
    else { -1; }
}
################################################################################

=head2 returnTexttype - returns texttype # if record is TEXTTYPE else returns -1

  usage:
    $TextTypesFound[$gds2File -> returnTexttype] = 1;

=cut

sub returnTexttype #: Profiled
{
    my $self = shift;
    ## 2 byte signed integer
    if ($self -> isTexttype) { $self -> {'RecordData'}[0]; }
    else { -1; }
}
################################################################################

=head2 returnWidth - returns width # if record is WIDTH else returns -1 

  usage:

=cut

sub returnWidth #: Profiled
{
    my $self = shift;
    ## 4 byte signed integer
    if ($self -> isWidth) { $self -> {'RecordData'}[0]; }
    else { -1; }
}
################################################################################


=head2 returnLayer - returns layer # if record is LAYER else returns -1

  usage:
    $layersFound[$gds2File -> returnLayer] = 1;

=cut

sub returnLayer #: Profiled
{
    my $self = shift;
    ## 2 byte signed integer
    if ($self -> isLayer) { $self -> {'RecordData'}[0]; }
    else { -1; }
}
################################################################################

=head2 returnBgnextn - returns bgnextn if record is BGNEXTN else returns 0

  usage:

=cut

sub returnBgnextn #: Profiled
{
    my $self = shift;
    ## 2 byte signed integer
    if ($self -> isBgnextn) { $self -> {'RecordData'}[0]; }
    else { 0; }
}
################################################################################

=head2 returnEndextn- returns endextn if record is ENDEXTN else returns 0

  usage:

=cut

sub returnEndextn #: Profiled
{
    my $self = shift;
    ## 2 byte signed integer
    if ($self -> isEndextn) { $self -> {'RecordData'}[0]; }
    else { 0; }
}
################################################################################

=head2 returnString - return string if record type is STRING else ''

=cut

sub returnString #: Profiled
{
    my $self = shift;
    if ($self -> isString) { $self -> {'RecordData'}[0]; }
    else { ''; }
}
################################################################################

=head2 returnSname - return string if record type is SNAME else ''

=cut

sub returnSname #: Profiled
{
    my $self = shift;
    if ($self -> isSname) { $self -> {'RecordData'}[0]; }
    else { ''; }
}
################################################################################

=head2 returnStrname - return string if record type is STRNAME else ''

=cut

sub returnStrname #: Profiled
{
    my $self = shift;
    if ($self -> isStrname) { $self -> {'RecordData'}[0]; }
    else { ''; }
}
################################################################################

################################################################################

=head1 Low Level Specific Boolean Methods

=cut

################################################################################

=head2 isAref - return 0 or 1 depending on whether current record is an aref

=cut

sub isAref #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == AREF) { 1; }
    else { 0; }
}
################################################################################

=head2 isBgnlib - return 0 or 1 depending on whether current record is a bgnlib

=cut

sub isBgnlib #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == BGNLIB) { 1; }
    else { 0; }
}
################################################################################

=head2 isBgnstr - return 0 or 1 depending on whether current record is a bgnstr

=cut

sub isBgnstr #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == BGNSTR) { 1; }
    else { 0; }
}
################################################################################

=head2 isBoundary - return 0 or 1 depending on whether current record is a boundary

=cut

sub isBoundary #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == BOUNDARY) { 1; }
    else { 0; }
}
################################################################################

=head2 isDatatype - return 0 or 1 depending on whether current record is datatype

=cut

sub isDatatype #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == DATATYPE) { 1; }
    else { 0; }
}
################################################################################

=head2 isEndlib - return 0 or 1 depending on whether current record is endlib 

=cut

sub isEndlib #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == ENDLIB) { 1; }
    else { 0; }
}
################################################################################

=head2 isEndel - return 0 or 1 depending on whether current record is endel

=cut

sub isEndel #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == ENDEL) { 1; }
    else { 0; }
}
################################################################################

=head2 isEndstr - return 0 or 1 depending on whether current record is endstr 

=cut

sub isEndstr #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == ENDSTR) { 1; }
    else { 0; }
}
################################################################################


=head2 isHeader - return 0 or 1 depending on whether current record is a header

=cut

sub isHeader #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == HEADER) { 1; }
    else { 0; }
}
################################################################################

=head2 isLibname - return 0 or 1 depending on whether current record is a libname

=cut

sub isLibname #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == LIBNAME) { 1; }
    else { 0; }
}
################################################################################

=head2 isPath - return 0 or 1 depending on whether current record is a path

=cut

sub isPath #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == PATH) { 1; }
    else { 0; }
}
################################################################################

=head2 isSref - return 0 or 1 depending on whether current record is an sref

=cut

sub isSref #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == SREF) { 1; }
    else { 0; }
}
################################################################################

=head2 isSrfname - return 0 or 1 depending on whether current record is an srfname

=cut

sub isSrfname #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == SRFNAME) { 1; }
    else { 0; }
}
################################################################################

=head2 isText - return 0 or 1 depending on whether current record is a text

=cut

sub isText #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == TEXT) { 1; }
    else { 0; }
}
################################################################################

=head2 isUnits - return 0 or 1 depending on whether current record is units 

=cut

sub isUnits #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == UNITS) { 1; }
    else { 0; }
}
################################################################################

=head2 isLayer - return 0 or 1 depending on whether current record is layer

=cut

sub isLayer #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == LAYER) { 1; }
    else { 0; }
}
################################################################################

=head2 isStrname - return 0 or 1 depending on whether current record is strname 

=cut

sub isStrname #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == STRNAME) { 1; }
    else { 0; }
}
################################################################################

=head2 isWidth - return 0 or 1 depending on whether current record is width 

=cut

sub isWidth #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == WIDTH) { 1; }
    else { 0; }
}
################################################################################

=head2 isXy - return 0 or 1 depending on whether current record is xy 

=cut

sub isXy #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == XY) { 1; }
    else { 0; }
}
################################################################################

=head2 isSname - return 0 or 1 depending on whether current record is sname

=cut

sub isSname #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == SNAME) { 1; }
    else { 0; }
}
################################################################################

=head2 isColrow - return 0 or 1 depending on whether current record is colrow

=cut

sub isColrow #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == COLROW) { 1; }
    else { 0; }
}
################################################################################

=head2 isTextnode - return 0 or 1 depending on whether current record is a textnode

=cut

sub isTextnode #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == TEXTNODE) { 1; }
    else { 0; }
}
################################################################################

=head2 isNode - return 0 or 1 depending on whether current record is a node

=cut

sub isNode #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == NODE) { 1; }
    else { 0; }
}
################################################################################

=head2 isTexttype - return 0 or 1 depending on whether current record is a texttype

=cut

sub isTexttype #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == TEXTTYPE) { 1; }
    else { 0; }
}
################################################################################

=head2 isPresentation - return 0 or 1 depending on whether current record is a presentation

=cut

sub isPresentation #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == PRESENTATION) { 1; }
    else { 0; }
}
################################################################################

=head2 isSpacing - return 0 or 1 depending on whether current record is a spacing

=cut

sub isSpacing #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == SPACING) { 1; }
    else { 0; }
}
################################################################################

=head2 isString - return 0 or 1 depending on whether current record is a string

=cut

sub isString #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == STRING) { 1; }
    else { 0; }
}
################################################################################

=head2 isStrans - return 0 or 1 depending on whether current record is a strans

=cut

sub isStrans #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == STRANS) { 1; }
    else { 0; }
}
################################################################################

=head2 isMag - return 0 or 1 depending on whether current record is a mag

=cut

sub isMag #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == MAG) { 1; }
    else { 0; }
}
################################################################################

=head2 isAngle - return 0 or 1 depending on whether current record is a angle 

=cut

sub isAngle #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == ANGLE) { 1; }
    else { 0; }
}
################################################################################

=head2 isUinteger - return 0 or 1 depending on whether current record is a uinteger

=cut

sub isUinteger #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == UINTEGER) { 1; }
    else { 0; }
}
################################################################################

=head2 isUstring - return 0 or 1 depending on whether current record is a ustring

=cut

sub isUstring #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == USTRING) { 1; }
    else { 0; }
}
################################################################################

=head2 isReflibs - return 0 or 1 depending on whether current record is a reflibs

=cut

sub isReflibs #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == REFLIBS) { 1; }
    else { 0; }
}
################################################################################

=head2 isFonts - return 0 or 1 depending on whether current record is a fonts

=cut

sub isFonts #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == FONTS) { 1; }
    else { 0; }
}
################################################################################

=head2 isPathtype - return 0 or 1 depending on whether current record is a pathtype

=cut

sub isPathtype #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == PATHTYPE) { 1; }
    else { 0; }
}
################################################################################

=head2 isGenerations - return 0 or 1 depending on whether current record is a generations

=cut

sub isGenerations #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == GENERATIONS) { 1; }
    else { 0; }
}
################################################################################

=head2 isAttrtable - return 0 or 1 depending on whether current record is a attrtable

=cut

sub isAttrtable #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == ATTRTABLE) { 1; }
    else { 0; }
}
################################################################################

=head2 isStyptable - return 0 or 1 depending on whether current record is a styptable

=cut

sub isStyptable #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == STYPTABLE) { 1; }
    else { 0; }
}
################################################################################

=head2 isStrtype - return 0 or 1 depending on whether current record is a strtype

=cut

sub isStrtype #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == STRTYPE) { 1; }
    else { 0; }
}
################################################################################

=head2 isEflags - return 0 or 1 depending on whether current record is a eflags

=cut

sub isEflags #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == EFLAGS) { 1; }
    else { 0; }
}
################################################################################

=head2 isElkey - return 0 or 1 depending on whether current record is a elkey

=cut

sub isElkey #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == ELKEY) { 1; }
    else { 0; }
}
################################################################################

=head2 isLinktype - return 0 or 1 depending on whether current record is a linktype

=cut

sub isLinktype #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == LINKTYPE) { 1; }
    else { 0; }
}
################################################################################

=head2 isLinkkeys - return 0 or 1 depending on whether current record is a linkkeys

=cut

sub isLinkkeys #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == LINKKEYS) { 1; }
    else { 0; }
}
################################################################################

=head2 isNodetype - return 0 or 1 depending on whether current record is a nodetype

=cut

sub isNodetype #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == NODETYPE) { 1; }
    else { 0; }
}
################################################################################

=head2 isPropattr - return 0 or 1 depending on whether current record is a propattr

=cut

sub isPropattr #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == PROPATTR) { 1; }
    else { 0; }
}
################################################################################

=head2 isPropvalue - return 0 or 1 depending on whether current record is a propvalue

=cut

sub isPropvalue #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == PROPVALUE) { 1; }
    else { 0; }
}
################################################################################

=head2 isBox - return 0 or 1 depending on whether current record is a box

=cut

sub isBox #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == BOX) { 1; }
    else { 0; }
}
################################################################################

=head2 isBoxtype - return 0 or 1 depending on whether current record is a boxtype

=cut

sub isBoxtype #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == BOXTYPE) { 1; }
    else { 0; }
}
################################################################################

=head2 isPlex - return 0 or 1 depending on whether current record is a plex

=cut

sub isPlex #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == PLEX) { 1; }
    else { 0; }
}
################################################################################

=head2 isBgnextn - return 0 or 1 depending on whether current record is a bgnextn

=cut

sub isBgnextn #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == BGNEXTN) { 1; }
    else { 0; }
}
################################################################################

=head2 isEndextn - return 0 or 1 depending on whether current record is a endextn

=cut

sub isEndextn #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == ENDEXTN) { 1; }
    else { 0; }
}
################################################################################

=head2 isTapenum - return 0 or 1 depending on whether current record is a tapenum

=cut

sub isTapenum #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == TAPENUM) { 1; }
    else { 0; }
}
################################################################################

=head2 isTapecode - return 0 or 1 depending on whether current record is a tapecode

=cut

sub isTapecode #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == TAPECODE) { 1; }
    else { 0; }
}
################################################################################

=head2 isStrclass - return 0 or 1 depending on whether current record is a strclass

=cut

sub isStrclass #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == STRCLASS) { 1; }
    else { 0; }
}
################################################################################

=head2 isReserved - return 0 or 1 depending on whether current record is a reserved

=cut

sub isReserved #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == RESERVED) { 1; }
    else { 0; }
}
################################################################################

=head2 isFormat - return 0 or 1 depending on whether current record is a format

=cut

sub isFormat #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == FORMAT) { 1; }
    else { 0; }
}
################################################################################

=head2 isMask - return 0 or 1 depending on whether current record is a mask

=cut

sub isMask #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == MASK) { 1; }
    else { 0; }
}
################################################################################

=head2 isEndmasks - return 0 or 1 depending on whether current record is a endmasks

=cut

sub isEndmasks #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == ENDMASKS) { 1; }
    else { 0; }
}
################################################################################

=head2 isLibdirsize - return 0 or 1 depending on whether current record is a libdirsize

=cut

sub isLibdirsize #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == LIBDIRSIZE) { 1; }
    else { 0; }
}
################################################################################

=head2 isLibsecur - return 0 or 1 depending on whether current record is a libsecur

=cut

sub isLibsecur #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == LIBSECUR) { 1; }
    else { 0; }
}
################################################################################

################################################################################
## support functions

sub getRecordData #: Profiled
{
    my $self = shift;
    my $dt = $self -> {'DataType'};
    if ($dt==NO_DATA)
    {
        return '';
    }
    elsif ($dt==INTEGER_2 || $dt==INTEGER_4 || $dt==REAL_8)
    {
        my $stuff = $self -> {'CurrentDataList'};
        $stuff =~ s|^,||;
        return(split(/,/,$stuff));
    }
    elsif ($dt==ACSII_STRING)
    {
        my $stuff = $self -> {'CurrentDataList'};
        $stuff =~ s|\0||g;
        return($stuff);
    }
    else ## bit_array
    {
        return ($self -> {'CurrentDataList'});
    }
}
################################################################################

sub readRecordTypeAndData #: Profiled
{
    my $self = shift;
    return ($RecordTypeStrings[$self -> {'RecordType'}],$self -> {'RecordData'});
}
################################################################################

sub skipGds2RecordData #: Profiled
{
    my $self = shift;
    $self -> readGds2RecordHeader() if ($self -> {'HEADER'} <= 0); ## safety
    if (TIMER_ON)
    {
        $G_timer -> reset();
        $G_timer -> start('skipGds2RecordData');
    }
    $self -> {'HEADER'} = 0;
    $self -> {'INDATA'} = 1;
    ## 4 should have been just read by readGds2RecordHeader
    seek($self -> {'FileHandle'},$self -> {'Length'} - 4,SEEK_CUR); ## seek seems to run a little faster than read
    $self -> {'DataIndex'} = -1;
    if (TIMER_ON)
    {
        $G_timer -> stop;
        $G_timer -> report;
    }
    return 1;
}
################################################################################

### return number of XY coords if XY record 
sub returnNumCoords #: Profiled
{
    my $self = shift;
    if ($self -> {'RecordType'} == XY)  ## 4 byte signed integer
    {
        int(($self -> {'Length'} - 4) / 8);
    }
    else
    {
        0;
    }
}
################################################################################

sub roundNum #: Profiled
{
    my $self = shift;
    my $num = shift;
    my $places = shift;
    sprintf("%.${places}f",$num);
}
################################################################################

sub scaleNum($$) #: Profiled
{
    my $num=shift;
    my $scale=shift;
    die "1st number passed into scaleNum() must be an integer $!" if ($num !~ m|^-?\d+|);
    $num = $num * $scale;
    $num = int($num+0.5) if ($num =~ m|\.|);
    $num;
}
################################################################################

sub snapNum($$) #: Profiled
{
    my $num=shift;
    die "1st number passed into snapNum() must be an integer $!" if ($num !~ m|^-?\d+$|);
    my $snap=shift;
    my $snapLength = length("$snap");
    my $lean=1; ##init
    $lean = -1 if($num < 0);
    ## snap to grid..   
    my $littlePart=substr($num,-$snapLength,$snapLength);
    if($num<0)
    {
        $littlePart = -$littlePart;
    }
    $littlePart = int(($littlePart/$snap)+(0.5*$lean))*$snap;
    my $bigPart=substr($num,0,-$snapLength);
    if ($bigPart =~ m|^[-]?$|)
    {
        $bigPart=0;
    }
    else
    {
        $bigPart *= 10**$snapLength;
    }
    $num = $bigPart + $littlePart;
    $num;
}

sub DESTROY #: Profiled
{
    my $self = shift;
    #warn "DESTROYing $self";
}

################################################################################
## some vendor tools have trouble w/ negative angles and angles >= 360
## so we normalize to positive equivalent
################################################################################
sub posAngle($) #: Profiled
{
    my $angle = shift;
    $angle += 360.0 while ($angle < 0.0);
    $angle -= 360.0 while ($angle >= 360.0);
    $angle;
}

=head2 tellSize - return current byte position (NOT zero based)

  usage:
    my $position = $gds2File -> tellSize;


=cut

################################################################################
sub tellSize() #: Profiled
{
    my $self = shift;
    $self -> {'GDSLENGTH'};
}

################################################################################
sub subbyte() ## GDS2::version();
{
    my($what,$where,$howmuch) = @_;
    unpack("x$where C$howmuch", $what);
}

################################################################################
sub version() ## GDS2::version();
{
    return $GDS2::VERSION;
}

################################################################################
sub revision() ## GDS2::revision();
{
    return $GDS2::revision;
}


1;
}

################################################################################

__END__

=pod

=head1 Examples

  Layer change:
    here's a bare bones script to change all layer 59 to 66 given a file to
    read and a new file to create.
    #!/usr/local/bin/perl -w
    use strict;
    use GDS2;
    my $fileName1 = $ARGV[0];
    my $fileName2 = $ARGV[1];

    my $gds2File1 = new GDS2(-fileName => $fileName1);
    my $gds2File2 = new GDS2(-fileName => ">$fileName2");

    while (my $record = $gds2File1 -> readGds2Record) 
    {
        if ($gds2File1 -> returnLayer == 59)
        {
            $gds2File2 -> printLayer(-num=>66);
        }
        else
        {
            $gds2File2 -> printRecord(-data=>$record);
        }
    }


  Gds2 dump:
    here's a program to dump the contents of a stream file.
    #!/usr/local/bin/perl -w
    use GDS2;
    $\="\n";

    my $gds2File = new GDS2(-fileName=>$ARGV[0]);
    while ($gds2File -> readGds2Record) 
    {
        print $gds2File -> returnRecordAsString;
    }


  Create a complete GDS2 stream file from scratch:
    #!/usr/local/bin/perl -w
    use GDS2;
    my $gds2File = new GDS2(-fileName=>'>test.gds');
    $gds2File -> printInitLib(-name=>'testlib'); 
    $gds2File -> printBgnstr(-name=>'test');
    $gds2File -> printPath(
                    -layer=>6,
                    -pathType=>0,
                    -width=>2.4,
                    -xy=>[0,0, 10.5,0, 10.5,3.3],
                 );
    $gds2File -> printSref(
                    -name=>'contact',
                    -xy=>[4,5.5],
                 );
    $gds2File -> printAref(
                    -name=>'contact',
                    -columns=>2,
                    -rows=>3,
                    -xy=>[0,0],
                 );
    $gds2File -> printEndstr;
    $gds2File -> printBgnstr(-name => 'contact'); 
    $gds2File -> printBoundary(
                    -layer=>10,
                    -xy=>[0,0, 1,0, 1,1, 0,1],
                 );
    $gds2File -> printEndstr;
    $gds2File -> printEndlib();

=head1 GDS2 Stream Format 

 #########################################################################################
 # 
 # Gds2 stream format is composed of variable length records. The mininum
 # length record is 4 bytes. The 1st 2 bytes of a record contain a count (in 8 bit
 # bytes) of the total record length.  The 3rd byte of the header is the record
 # type. The 4th byte describes the type of data contained w/in the record. The
 # 5th through last bytes are data.
 # 
 # If the output file is a mag tape, then the records of the library are written
 # out in 2048-byte physical blocks. Records may overlap block boundaries.
 # For this reason I think gds2 is often padded with null bytes so that the 
 # file size ends up being a multiple of 2048.
 # 
 # A null word consists of 2 consecutive zero bytes. Use null words to fill the
 # space between:
 #     o the last record of a library and the end of its block
 #     o the last record of a tape in a mult-reel stream file.
 # 
 # DATA TYPE        VALUE  RECORD
 # ---------        -----  -----------------------
 # no data present     0   4 byte header + 0
 #
 # Bit Array           1   4 byte header + 2 bytes data
 #
 # 2byte Signed Int    2  SMMMMMMM MMMMMMMM  -> S - sign ;  M - magnitude. 
 #                        Twos complement format, with the most significant byte first.
 #                        I.E.
 #                        0x0001 = 1
 #                        0x0002 = 2
 #                        0x0089 = 137
 #                        0xffff = -1
 #                        0xfffe = -2
 #                        0xff77 = -137
 # 
 # 4byte Signed Int    3  SMMMMMMM MMMMMMMM MMMMMMMM MMMMMMMM 
 #
 # 8byte Real          5  SEEEEEEE MMMMMMMM MMMMMMMM MMMMMMMM E-expon in excess-64 
 #                        MMMMMMMM MMMMMMMM MMMMMMMM MMMMMMMM representation 
 #
 #                        Mantissa == pos fraction >=1/16 && <1 bit 8==1/2, 9==1/4 etc...
 #                        The first bit is the sign (1 = negative), the next 7 bits
 #                        are the exponent, you have to subtract 64 from this number to
 #                        get the real value. The next seven bytes are the mantissa in 
 #                        4 word floating point representation.
 #                
 #
 # string              6  odd length strings must be padded w/ null character and 
 #                        byte count++
 # 
 #########################################################################################


=head1 Backus-naur representation of GDS2 Stream Syntax

 ################################################################################
 #  <STREAM FORMAT>::= HEADER BGNLIB [LIBDIRSIZE] [SRFNAME] [LIBSECR]           #
 #                     LIBNAME [REFLIBS] [FONTS] [ATTRTABLE] [GENERATIONS]      #
 #                     [<FormatType>] UNITS {<structure>}* ENDLIB               #
 #                                                                              #
 #  <FormatType>::=    FORMAT | FORMAT {MASK}+ ENDMASKS                         #
 #                                                                              #
 #  <structure>::=     BGNSTR STRNAME [STRCLASS] {<element>}* ENDSTR            #
 #                                                                              #
 #  <element>::=       {<boundary> | <path> | <SREF> | <AREF> | <text> |        #
 #                      <node> | <box} {<property>}* ENDEL                      #
 #                                                                              #
 #  <boundary>::=      BOUNDARY [ELFLAGS] [PLEX] LAYER DATATYPE XY              #
 #                                                                              #
 #  <path>::=          PATH [ELFLAGS] [PLEX] LAYER DATATYPE [PATHTYPE]          #
 #                     [WIDTH] [BGNEXTN] [ENDEXTN] [XY]                         #
 #                                                                              #
 #  <SREF>::=          SREF [ELFLAGS] [PLEX] SNAME [<strans>] XY                #
 #                                                                              #
 #  <AREF>::=          AREF [ELFLAGS] [PLEX] SNAME [<strans>] COLROW XY         #
 #                                                                              #
 #  <text>::=          TEXT [ELFLAGS] [PLEX] LAYER <textbody>                   #
 #                                                                              #
 #  <textbody>::=      TEXTTYPE [PRESENTATION] [PATHTYPE] [WIDTH] [<strans>] XY #
 #                     STRING                                                   #
 #                                                                              #
 #  <strans>::=        STRANS [MAG] [ANGLE]                                     #
 #                                                                              #
 #  <node>::=          NODE [ELFLAGS] [PLEX] LAYER NODETYPE XY                  #
 #                                                                              #
 #  <box>::=           BOX [ELFLAGS] [PLEX] LAYER BOXTYPE XY                    #
 #                                                                              #
 #  <property>::=      PROPATTR PROPVALUE                                       #
 ################################################################################


=head1 GDS2 Stream Record Datatypes

 ################################################################################
 NO_DATA       =  0;
 BIT_ARRAY     =  1;
 INTEGER_2     =  2;
 INTEGER_4     =  3;
 REAL_4        =  4; ## NOT supported, never really used
 REAL_8        =  5;
 ACSII_STRING  =  6;
 ################################################################################


=head1 GDS2 Stream Record Types 

 ################################################################################
 HEADER        =  0;   ## 2-byte Signed Integer
 BGNLIB        =  1;   ## 2-byte Signed Integer
 LIBNAME       =  2;   ## ASCII String
 UNITS         =  3;   ## 8-byte Real
 ENDLIB        =  4;   ## no data present
 BGNSTR        =  5;   ## 2-byte Signed Integer
 STRNAME       =  6;   ## ASCII String
 ENDSTR        =  7;   ## no data present
 BOUNDARY      =  8;   ## no data present
 PATH          =  9;   ## no data present
 SREF          = 10;   ## no data present
 AREF          = 11;   ## no data present
 TEXT          = 12;   ## no data present
 LAYER         = 13;   ## 2-byte Signed Integer
 DATATYPE      = 14;   ## 2-byte Signed Integer
 WIDTH         = 15;   ## 4-byte Signed Integer
 XY            = 16;   ## 4-byte Signed Integer
 ENDEL         = 17;   ## no data present
 SNAME         = 18;   ## ASCII String
 COLROW        = 19;   ## 2 2-byte Signed Integer <= 32767
 TEXTNODE      = 20;   ## no data present
 NODE          = 21;   ## no data present
 TEXTTYPE      = 22;   ## 2-byte Signed Integer
 PRESENTATION  = 23;   ## Bit Array. One word (2 bytes) of bit flags. Bits 11 and 
                       ##   12 together specify the font 00->font 0 11->font 3.
                       ##   Bits 13 and 14 specify the vertical presentation, 15
                       ##   and 16 the horizontal presentation. 00->'top/left' 01->
                       ##   middle/center 10->bottom/right bits 1-10 were reserved 
                       ##   for future use and should be 0.
 SPACING       = 24;   ## discontinued
 STRING        = 25;   ## ASCII String <= 512 characters
 STRANS        = 26;   ## Bit Array: 2 bytes of bit flags for graphic presentation
                       ##   The 1st (high order or leftmost) bit specifies
                       ##   reflection. If set then reflection across the X-axis
                       ##   is applied before rotation. The 14th bit flags 
                       ##   absolute mag, the 15th absolute angle, the other bits
                       ##   were reserved for future use and should be 0.
 MAG           = 27;   ## 8-byte Real
 ANGLE         = 28;   ## 8-byte Real
 UINTEGER      = 29;   ## UNKNOWN User int, used only in Calma V2.0
 USTRING       = 30;   ## UNKNOWN User string, used only in Calma V2.0
 REFLIBS       = 31;   ## ASCII String
 FONTS         = 32;   ## ASCII String
 PATHTYPE      = 33;   ## 2-byte Signed Integer
 GENERATIONS   = 34;   ## 2-byte Signed Integer
 ATTRTABLE     = 35;   ## ASCII String
 STYPTABLE     = 36;   ## ASCII String "Unreleased feature"
 STRTYPE       = 37;   ## 2-byte Signed Integer "Unreleased feature"
 EFLAGS        = 38;   ## BIT_ARRAY  Flags for template and exterior data.  
                       ## bits 15 to 0, l to r 0=template, 1=external data, others unused
 ELKEY         = 39;   ## INTEGER_4  "Unreleased feature"
 LINKTYPE      = 40;   ## UNKNOWN    "Unreleased feature"
 LINKKEYS      = 41;   ## UNKNOWN    "Unreleased feature"
 NODETYPE      = 42;   ## INTEGER_2  Nodetype specification. On Calma this could be 0 to 63,
                       ##   GDSII allows 0 to 255. Of course a 16 bit integer allows up to 65535...
 PROPATTR      = 43;   ## INTEGER_2  Property number.
 PROPVALUE     = 44;   ## STRING     Property value. On GDSII, 128 characters max, unless an 
                       ##   SREF, AREF, or NODE, which may have 512 characters.
 BOX           = 45;   ## NO_DATA    The beginning of a BOX element.
 BOXTYPE       = 46;   ## INTEGER_2  Boxtype specification.
 PLEX          = 47;   ## INTEGER_4  Plex number and plexhead flag. The least significant bit of 
                       ##   the most significant byte is the plexhead flag.
 BGNEXTN       = 48;   ## INTEGER_4  Path extension beginning for pathtype 4 in Calma CustomPlus. 
                       ##   In database units, may be negative.
 ENDEXTN       = 49;   ## INTEGER_4  Path extension end for pathtype 4 in Calma CustomPlus. In 
                       ##   database units, may be negative.
 TAPENUM       = 50;   ## INTEGER_2  Tape number for multi-reel stream file.
 TAPECODE      = 51;   ## INTEGER_2  Tape code to verify that the reel is from the proper set. 
                       ##   12 bytes that are supposed to form a unique tape code.
 STRCLASS      = 52;   ## BIT_ARRAY  Calma use only. 
 RESERVED      = 53;   ## INTEGER_4  Used to be NUMTYPES per Calma GDSII Stream Format Manual, v6.0.
 FORMAT        = 54;   ## INTEGER_2  Archive or Filtered flag.  0: Archive 1: filtered
 MASK          = 55;   ## STRING     Only in filtered streams. Layers and datatypes used for mask 
                       ##   in a filtered stream file. A string giving ranges of layers and datatypes
                       ##   separated by a semicolon. There may be more than one mask in a stream file.
 ENDMASKS      = 56;   ## NO_DATA    The end of mask descriptions.
 LIBDIRSIZE    = 57;   ## INTEGER_2  Number of pages in library director, a GDSII thing, it seems 
                       ##   to have only been used when Calma INFORM was creating a new library.
 SRFNAME       = 58;   ## STRING     Calma "Sticks"(c) rule file name.
 LIBSECUR      = 59;   ## INTEGER_2  Access control list stuff for CalmaDOS, ancient. INFORM used
                       ##   this when creating a new library. Had 1 to 32 entries with group 
                       ##   numbers, user numbers and access rights.


=cut

