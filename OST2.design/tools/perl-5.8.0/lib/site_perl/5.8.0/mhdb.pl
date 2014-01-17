##---------------------------------------------------------------------------##
##  File:
##	$Id: mhdb.pl,v 2.22 2002/07/27 05:13:13 ehood Exp $
##  Author:
##      Earl Hood       mhonarc@mhonarc.org
##  Description:
##      MHonArc library defining routines for outputing database.
##---------------------------------------------------------------------------##
##    MHonArc -- Internet mail-to-HTML converter
##    Copyright (C) 1995-2002	Earl Hood, mhonarc@mhonarc.org
##
##    This program is free software; you can redistribute it and/or modify
##    it under the terms of the GNU General Public License as published by
##    the Free Software Foundation; either version 2 of the License, or
##    (at your option) any later version.
##
##    This program is distributed in the hope that it will be useful,
##    but WITHOUT ANY WARRANTY; without even the implied warranty of
##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##    GNU General Public License for more details.
##
##    You should have received a copy of the GNU General Public License
##    along with this program; if not, write to the Free Software
##    Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
##    02111-1307, USA
##---------------------------------------------------------------------------##

##---------------------------------------------------------------------------
##	output_db() spits out the state of mhonarc to a file.  This
##	(database) file contains information to update mail threading
##	when incremental adding is done.  The actual database file
##	is a Perl program defining all the internal data structures.
##	All mhonarc does is 'require' it when updating.  This is
##	faster than having to extract the data from message files
##	-- which would require opening every file to perform
##	updates.
##
sub output_db {
    my($pathname) = shift;
    my $tmpfile = $pathname . "$$";

    ## Invoke pre-save callback
    if (defined($CBDbPreSave) && defined(&$CBDbPreSave)) {
	return  unless &$CBDbPreSave($pathname, $tmpfile);
    }

    local(*DB);
    if (!open(DB, ">$tmpfile")) {
	warn qq/ERROR: Unable to create "$tmpfile": $!\n/;
	return 0;
    }
    binmode(DB);  # Unix text format okay for Perl source on Windog

print DB "## MHonArcDB (Automatically generated by MHonArc)\n";
print_var(\*DB,'DbVERSION',     \$VERSION);

## Meta-data
print_var(\*DB,'ContentType', \%ContentType);
print_var(\*DB,'Date',        \%Date);
print_var(\*DB,'Derived',     \%Derived);
print_var(\*DB,'FollowOld',   \%Follow);
print_var(\*DB,'From',        \%From);
print_var(\*DB,'IndexNum',    \%IndexNum);
print_var(\*DB,'MsgId',       \%MsgId);
print_var(\*DB,'Refs',        \%Refs);
print_var(\*DB,'Subject',     \%Subject);
print_var(\*DB,'TListOrder',  \@TListOrder);
print_var(\*DB,'NumOfMsgs',   \$NumOfMsgs);
print_var(\*DB,'NumOfPages',  \$NumOfPages);
print_var(\*DB,'SaveRsrcs',   \$SaveRsrcs);

if ($SaveRsrcs) {

## Resources
print_var(\*DB,'CustomRcVars',\%CustomRcVars);
print_var(\*DB,'FieldODefs',  \%FieldODefs);
print_var(\*DB,'HFieldsExc',  \%HFieldsExc);
print_var(\*DB,'HeadFields',  \%HeadFields);
print_var(\*DB,'HeadHeads',   \%HeadHeads);
print_var(\*DB,'Icons',       \%Icons);
print_var(\*DB,'UDerivedFile',\%UDerivedFile);
print_var(\*DB,'ZoneUD',      \%ZoneUD);

unless ($IsDefault{'CHARSETCONVERTERS'}) {
    print_var(\*DB,'readmail::MIMECharSetConverters',
		    \%readmail::MIMECharSetConverters);
    print_var(\*DB,'readmail::MIMECharSetConvertersSrc',
		    \%readmail::MIMECharSetConvertersSrc);
}
unless ($IsDefault{'MIMEDECODERS'}) {
    print_var(\*DB,'readmail::MIMEDecoders',
		    \%readmail::MIMEDecoders);
    print_var(\*DB,'readmail::MIMEDecodersSrc',
		    \%readmail::MIMEDecodersSrc);
}
unless ($IsDefault{'MIMEFILTERS'}) {
    print_var(\*DB,'readmail::MIMEFilters',
		    \%readmail::MIMEFilters);
    print_var(\*DB,'readmail::MIMEFiltersSrc',
		    \%readmail::MIMEFiltersSrc);
}
print_var(\*DB,'readmail::MIMEFiltersArgs',
		\%readmail::MIMEFiltersArgs)
		unless $IsDefault{'MIMEARGS'};
if (%readmail::MIMEExcs) {
    print_var(\*DB,'readmail::MIMEExcs',
		    \%readmail::MIMEExcs)
		    unless $IsDefault{'MIMEEXCS'};
}
unless ($IsDefault{'MIMEALTPREFS'}) {
    print_var(\*DB,'MIMEAltPrefs',
		    \@MIMEAltPrefs);
}

print_var(\*DB,'DateFields', \@DateFields) unless $IsDefault{'DATEFIELDS'};
print_var(\*DB,'FieldOrder', \@FieldOrder);
print_var(\*DB,'FromFields', \@FromFields) unless $IsDefault{'FROMFIELDS'};
print_var(\*DB,'Months',     \@Months)     if scalar(@Months);
print_var(\*DB,'months',     \@months)     if scalar(@months);
print_var(\*DB,'OtherIdxs',  \@OtherIdxs)  if scalar(@OtherIdxs);
print_var(\*DB,'PerlINC',    \@PerlINC)    if scalar(@PerlINC);
print_var(\*DB,'Weekdays',   \@Weekdays)   if scalar(@Weekdays);
print_var(\*DB,'weekdays',   \@weekdays)   if scalar(@weekdays);

## I should use a hash for this stuff instead of individual variables.
## A legacy of Perl 4 days and a program getting larger than expected.

print_var(\*DB,'AddressModify',  \$AddressModify)
				unless $IsDefault{'AddressModify'};
print_var(\*DB,'CheckNoArchive', \$CheckNoArchive);
print_var(\*DB,'DOCURL',         \$DOCURL);
print_var(\*DB,'NODOC',          \$NODOC);
print_var(\*DB,'DecodeHeads',    \$DecodeHeads);
print_var(\*DB,'DoFolRefs',      \$DoFolRefs);
print_var(\*DB,'ExpireDate',     \$ExpireDate);
print_var(\*DB,'ExpireTime',     \$ExpireTime);
print_var(\*DB,'FROM',           \$FROM);
print_var(\*DB,'GMTDateFmt',     \$GMTDateFmt);
print_var(\*DB,'GzipExe',        \$GzipExe);
print_var(\*DB,'GzipFiles',      \$GzipFiles);
print_var(\*DB,'GzipLinks',      \$GzipLinks);
print_var(\*DB,'HtmlExt',        \$HtmlExt);
print_var(\*DB,'IDXSIZE',        \$IDXSIZE);
print_var(\*DB,'KeepOnRmm',      \$KeepOnRmm);
print_var(\*DB,'LocalDateFmt',   \$LocalDateFmt);
print_var(\*DB,'MAILTOURL',      \$MAILTOURL)  unless $IsDefault{'MAILTOURL'};
print_var(\*DB,'MAIN',           \$MAIN);
print_var(\*DB,'MAXSIZE',        \$MAXSIZE);
print_var(\*DB,'MHPATTERN',      \$MHPATTERN);
print_var(\*DB,'MODTIME',        \$MODTIME);
print_var(\*DB,'MSGFOOT',        \$MSGFOOT);
print_var(\*DB,'MsgGMTDateFmt',  \$MsgGMTDateFmt);
print_var(\*DB,'MSGHEAD',        \$MSGHEAD);
print_var(\*DB,'MsgExcFilter',   \$MsgExcFilter);
print_var(\*DB,'MsgLocalDateFmt',\$MsgLocalDateFmt);
print_var(\*DB,'MsgPrefix',      \$MsgPrefix);
print_var(\*DB,'MULTIIDX',       \$MULTIIDX);
print_var(\*DB,'NOMAILTO',       \$NOMAILTO);
print_var(\*DB,'NONEWS',         \$NONEWS);
print_var(\*DB,'NOURL',          \$NOURL);
print_var(\*DB,'NoMsgPgs',       \$NoMsgPgs);
print_var(\*DB,'NoSubjectThreads', \$NoSubjectThreads);
print_var(\*DB,'NoSubjectTxt',   \$NoSubjectTxt);
print_var(\*DB,'NoteDir',        \$NoteDir);
print_var(\*DB,'POSIXstrftime',  \$POSIXstrftime);
print_var(\*DB,'THREAD',         \$THREAD);
print_var(\*DB,'SubArtRxp',      \$SubArtRxp);
print_var(\*DB,'SubReplyRxp',    \$SubReplyRxp);
print_var(\*DB,'SubStripCode',   \$SubStripCode);
print_var(\*DB,'UseLocalTime',   \$UseLocalTime);
print_var(\*DB,'UsingLASTPG',    \$UsingLASTPG);
print_var(\*DB,'VarExp',    	 \$VarExp);

print_var(\*DB,'MSGPGSSMARKUP',  \$MSGPGSSMARKUP);
print_var(\*DB,'IDXPGSSMARKUP',  \$IDXPGSSMARKUP);
print_var(\*DB,'TIDXPGSSMARKUP', \$TIDXPGSSMARKUP);
print_var(\*DB,'SSMARKUP',       \$SSMARKUP);
print_var(\*DB,'SpamMode',       \$SpamMode);

if (!$IsDefault{'TEXTCLIPFUNC'}) {
    print_var(\*DB,'TextClipFunc', \$TextClipFunc);
    print_var(\*DB,'TextClipSrc',  \$TextClipSrc);
};

# Main index resources
print_var(\*DB,'AUTHSORT',     \$AUTHSORT);
print_var(\*DB,'NOSORT',       \$NOSORT);
print_var(\*DB,'REVSORT',      \$REVSORT);
print_var(\*DB,'SUBSORT',      \$SUBSORT);

print_var(\*DB,'AUTHBEG',      \$AUTHBEG) unless $IsDefault{'AUTHBEG'};
print_var(\*DB,'AUTHEND',      \$AUTHEND) unless $IsDefault{'AUTHEND'};
print_var(\*DB,'DAYBEG',       \$DAYBEG) unless $IsDefault{'DAYBEG'};
print_var(\*DB,'DAYEND',       \$DAYEND) unless $IsDefault{'DAYEND'};
print_var(\*DB,'IDXLABEL',     \$IDXLABEL) unless $IsDefault{'IDXLABEL'};
print_var(\*DB,'IDXNAME',      \$IDXNAME);
print_var(\*DB,'IDXPGBEG',     \$IDXPGBEG) unless $IsDefault{'IDXPGBEG'};
print_var(\*DB,'IDXPGEND',     \$IDXPGEND) unless $IsDefault{'IDXPGEND'};
print_var(\*DB,'IDXPREFIX',    \$IDXPREFIX);
print_var(\*DB,'LIBEG',        \$LIBEG) unless $IsDefault{'LIBEG'};
print_var(\*DB,'LIEND',        \$LIEND) unless $IsDefault{'LIEND'};
print_var(\*DB,'LITMPL',       \$LITMPL) unless $IsDefault{'LITMPL'};
print_var(\*DB,'FIRSTPGLINK',  \$FIRSTPGLINK) unless $IsDefault{'FIRSTPGLINK'};
print_var(\*DB,'LASTPGLINK',   \$LASTPGLINK) unless $IsDefault{'LASTPGLINK'};
print_var(\*DB,'NEXTPGLINK',   \$NEXTPGLINK) unless $IsDefault{'NEXTPGLINK'};
print_var(\*DB,'NEXTPGLINKIA', \$NEXTPGLINKIA)
				unless $IsDefault{'NEXTPGLINKIA'};
print_var(\*DB,'PREVPGLINK',   \$PREVPGLINK) unless $IsDefault{'PREVPGLINK'};
print_var(\*DB,'PREVPGLINKIA', \$PREVPGLINKIA)
				unless $IsDefault{'PREVPGLINKIA'};
print_var(\*DB,'SUBJECTBEG',   \$SUBJECTBEG) unless $IsDefault{'SUBJECTBEG'};
print_var(\*DB,'SUBJECTEND',   \$SUBJECTEND) unless $IsDefault{'SUBJECTEND'};
print_var(\*DB,'TITLE',        \$TITLE);

# Thread index resources
print_var(\*DB,'TNOSORT',      \$TNOSORT);
print_var(\*DB,'TREVERSE',     \$TREVERSE);
print_var(\*DB,'TSUBSORT',     \$TSUBSORT);

print_var(\*DB,'TCONTBEG',     \$TCONTBEG) unless $IsDefault{'TCONTBEG'};
print_var(\*DB,'TCONTEND',     \$TCONTEND) unless $IsDefault{'TCONTEND'};
print_var(\*DB,'TFOOT',        \$TFOOT) unless $IsDefault{'TFOOT'};
print_var(\*DB,'THEAD',        \$THEAD) unless $IsDefault{'THEAD'};
print_var(\*DB,'TIDXLABEL',    \$TIDXLABEL) unless $IsDefault{'TIDXLABEL'};
print_var(\*DB,'TIDXNAME',     \$TIDXNAME);
print_var(\*DB,'TIDXPGBEG',    \$TIDXPGBEG) unless $IsDefault{'TIDXPGBEG'};
print_var(\*DB,'TIDXPGEND',    \$TIDXPGEND) unless $IsDefault{'TIDXPGEND'};
print_var(\*DB,'TIDXPREFIX',   \$TIDXPREFIX);
print_var(\*DB,'TINDENTBEG',   \$TINDENTBEG) unless $IsDefault{'TINDENTBEG'};
print_var(\*DB,'TINDENTEND',   \$TINDENTEND) unless $IsDefault{'TINDENTEND'};
print_var(\*DB,'TLEVELS',      \$TLEVELS);
print_var(\*DB,'TLIEND',       \$TLIEND) unless $IsDefault{'TLIEND'};
print_var(\*DB,'TLINONE',      \$TLINONE) unless $IsDefault{'TLINONE'};
print_var(\*DB,'TLINONEEND',   \$TLINONEEND) unless $IsDefault{'TLINONEEND'};
print_var(\*DB,'TLITXT',       \$TLITXT) unless $IsDefault{'TLITXT'};
print_var(\*DB,'TFIRSTPGLINK', \$TFIRSTPGLINK)
				unless $IsDefault{'TFIRSTPGLINK'};
print_var(\*DB,'TLASTPGLINK',  \$TLASTPGLINK)
				unless $IsDefault{'TLASTPGLINK'};
print_var(\*DB,'TNEXTPGLINK',  \$TNEXTPGLINK) unless $IsDefault{'TNEXTPGLINK'};
print_var(\*DB,'TNEXTPGLINKIA',\$TNEXTPGLINKIA)
				unless $IsDefault{'TNEXTPGLINKIA'};
print_var(\*DB,'TPREVPGLINK',  \$TPREVPGLINK) unless $IsDefault{'TPREVPGLINK'};
print_var(\*DB,'TPREVPGLINKIA',\$TPREVPGLINKIA)
				unless $IsDefault{'TPREVPGLINKIA'};
print_var(\*DB,'TSINGLETXT',   \$TSINGLETXT) unless $IsDefault{'TSINGLETXT'};
print_var(\*DB,'TSUBJECTBEG',  \$TSUBJECTBEG) unless $IsDefault{'TSUBJECTBEG'};
print_var(\*DB,'TSUBJECTEND',  \$TSUBJECTEND) unless $IsDefault{'TSUBJECTEND'};
print_var(\*DB,'TSUBLISTBEG',  \$TSUBLISTBEG) unless $IsDefault{'TSUBLISTBEG'};
print_var(\*DB,'TSUBLISTEND',  \$TSUBLISTEND) unless $IsDefault{'TSUBLISTEND'};
print_var(\*DB,'TTITLE',       \$TTITLE);
print_var(\*DB,'TTOPBEG',      \$TTOPBEG) unless $IsDefault{'TTOPBEG'};
print_var(\*DB,'TTOPEND',      \$TTOPEND) unless $IsDefault{'TTOPEND'};

print_var(\*DB,'TSLICESINGLETXT', \$TSLICESINGLETXT)
				unless $IsDefault{'TSLICESINGLETXT'};
print_var(\*DB,'TSLICETOPBEG', \$TSLICETOPBEG)
				unless $IsDefault{'TSLICETOPBEG'};
print_var(\*DB,'TSLICETOPEND', \$TSLICETOPEND)
				unless $IsDefault{'TSLICETOPEND'};
print_var(\*DB,'TSLICESUBLISTBEG', \$TSLICESUBLISTBEG)
				unless $IsDefault{'TSLICESUBLISTBEG'};
print_var(\*DB,'TSLICESUBLISTEND', \$TSLICESUBLISTEND)
				unless $IsDefault{'TSLICESUBLISTEND'};
print_var(\*DB,'TSLICELEVELS', \$TSLICELEVELS)
				unless $IsDefault{'TSLICELEVELS'};
print_var(\*DB,'TSLICELITXT', \$TSLICELITXT)
				unless $IsDefault{'TSLICELITXT'};
print_var(\*DB,'TSLICELIEND', \$TSLICELIEND)
				unless $IsDefault{'TSLICELIEND'};
print_var(\*DB,'TSLICELINONE', \$TSLICELINONE)
				unless $IsDefault{'TSLICELINONE'};
print_var(\*DB,'TSLICELINONEEND', \$TSLICELINONEEND)
				unless $IsDefault{'TSLICELINONEEND'};
print_var(\*DB,'TSLICESUBJECTBEG', \$TSLICESUBJECTBEG)
				unless $IsDefault{'TSLICESUBJECTBEG'};
print_var(\*DB,'TSLICESUBJECTEND', \$TSLICESUBJECTEND)
				unless $IsDefault{'TSLICESUBJECTEND'};
print_var(\*DB,'TSLICEINDENTBEG', \$TSLICEINDENTBEG)
				unless $IsDefault{'TSLICEINDENTBEG'};
print_var(\*DB,'TSLICEINDENTEND', \$TSLICEINDENTEND)
				unless $IsDefault{'TSLICEINDENTEND'};
print_var(\*DB,'TSLICECONTBEG', \$TSLICECONTBEG)
				unless $IsDefault{'TSLICECONTBEG'};
print_var(\*DB,'TSLICECONTEND', \$TSLICECONTEND)
				unless $IsDefault{'TSLICECONTEND'};
print_var(\*DB,'TSLICESINGLETXTCUR', \$TSLICESINGLETXTCUR)
				unless $IsDefault{'TSLICESINGLETXTCUR'};
print_var(\*DB,'TSLICETOPBEGCUR', \$TSLICETOPBEGCUR)
				unless $IsDefault{'TSLICETOPBEGCUR'};
print_var(\*DB,'TSLICETOPENDCUR', \$TSLICETOPENDCUR)
				unless $IsDefault{'TSLICETOPENDCUR'};
print_var(\*DB,'TSLICELITXTCUR', \$TSLICELITXTCUR)
				unless $IsDefault{'TSLICELITXTCUR'};
print_var(\*DB,'TSLICELIENDCUR', \$TSLICELIENDCUR)
				unless $IsDefault{'TSLICELIENDCUR'};

## Other resources
print_var(\*DB,'BOTLINKS',     \$BOTLINKS) unless $IsDefault{'BOTLINKS'};
print_var(\*DB,'FIELDSBEG',    \$FIELDSBEG) unless $IsDefault{'FIELDSBEG'};
print_var(\*DB,'FIELDSEND',    \$FIELDSEND) unless $IsDefault{'FIELDSEND'};
print_var(\*DB,'FLDBEG',       \$FLDBEG) unless $IsDefault{'FLDBEG'};
print_var(\*DB,'FLDEND',       \$FLDEND) unless $IsDefault{'FLDEND'};
print_var(\*DB,'FOLUPBEGIN',   \$FOLUPBEGIN) unless $IsDefault{'FOLUPBEGIN'};
print_var(\*DB,'FOLUPEND',     \$FOLUPEND) unless $IsDefault{'FOLUPEND'};
print_var(\*DB,'FOLUPLITXT',   \$FOLUPLITXT) unless $IsDefault{'FOLUPLITXT'};
print_var(\*DB,'HEADBODYSEP',  \$HEADBODYSEP) unless $IsDefault{'HEADBODYSEP'};
print_var(\*DB,'LABELBEG',     \$LABELBEG) unless $IsDefault{'LABELBEG'};
print_var(\*DB,'LABELEND',     \$LABELEND) unless $IsDefault{'LABELEND'};
print_var(\*DB,'MSGBODYEND',   \$MSGBODYEND) unless $IsDefault{'MSGBODYEND'};
print_var(\*DB,'MSGIDLINK',    \$MSGIDLINK) unless $IsDefault{'MSGIDLINK'};
print_var(\*DB,'MSGPGBEG',     \$MSGPGBEG) unless $IsDefault{'MSGPGBEG'};
print_var(\*DB,'MSGPGEND',     \$MSGPGEND) unless $IsDefault{'MSGPGEND'};
print_var(\*DB,'NEXTBUTTON',   \$NEXTBUTTON) unless $IsDefault{'NEXTBUTTON'};
print_var(\*DB,'NEXTBUTTONIA', \$NEXTBUTTONIA)
				unless $IsDefault{'NEXTBUTTONIA'};
print_var(\*DB,'NEXTLINK',     \$NEXTLINK) unless $IsDefault{'NEXTLINK'};
print_var(\*DB,'NEXTLINKIA',   \$NEXTLINKIA) unless $IsDefault{'NEXTLINKIA'};
print_var(\*DB,'NOTE',         \$NOTE) unless $IsDefault{'NOTE'};
print_var(\*DB,'NOTEIA',       \$NOTEIA) unless $IsDefault{'NOTEIA'};
print_var(\*DB,'NOTEICON',     \$NOTEICON) unless $IsDefault{'NOTEICON'};
print_var(\*DB,'NOTEICONIA',   \$NOTEICONIA) unless $IsDefault{'NOTEICONIA'};
print_var(\*DB,'PREVBUTTON',   \$PREVBUTTON) unless $IsDefault{'PREVBUTTON'};
print_var(\*DB,'PREVBUTTONIA', \$PREVBUTTONIA)
				unless $IsDefault{'PREVBUTTONIA'};
print_var(\*DB,'PREVLINK',     \$PREVLINK) unless $IsDefault{'PREVLINK'};
print_var(\*DB,'PREVLINKIA',   \$PREVLINKIA) unless $IsDefault{'PREVLINKIA'};
print_var(\*DB,'REFSBEGIN',    \$REFSBEGIN) unless $IsDefault{'REFSBEGIN'};
print_var(\*DB,'REFSEND',      \$REFSEND) unless $IsDefault{'REFSEND'};
print_var(\*DB,'REFSLITXT',    \$REFSLITXT) unless $IsDefault{'REFSLITXT'};
print_var(\*DB,'SUBJECTHEADER',\$SUBJECTHEADER)
				unless $IsDefault{'SUBJECTHEADER'};
print_var(\*DB,'TNEXTBUTTON',  \$TNEXTBUTTON) unless $IsDefault{'TNEXTBUTTON'};
print_var(\*DB,'TNEXTBUTTONIA',\$TNEXTBUTTONIA)
				unless $IsDefault{'TNEXTBUTTONIA'};
print_var(\*DB,'TNEXTINBUTTON',  \$TNEXTINBUTTON)
				unless $IsDefault{'TNEXTINBUTTON'};
print_var(\*DB,'TNEXTINBUTTONIA',  \$TNEXTINBUTTONIA)
				unless $IsDefault{'TNEXTINBUTTONIA'};
print_var(\*DB,'TNEXTINLINK',  \$TNEXTINLINK)
				unless $IsDefault{'TNEXTINLINK'};
print_var(\*DB,'TNEXTINLINKIA',  \$TNEXTINLINKIA)
				unless $IsDefault{'TNEXTINLINKIA'};
print_var(\*DB,'TNEXTLINK',    \$TNEXTLINK) unless $IsDefault{'TNEXTLINK'};
print_var(\*DB,'TNEXTLINKIA',  \$TNEXTLINKIA) unless $IsDefault{'TNEXTLINKIA'};
print_var(\*DB,'TOPLINKS',     \$TOPLINKS) unless $IsDefault{'TOPLINKS'};
print_var(\*DB,'TPREVBUTTON',  \$TPREVBUTTON) unless $IsDefault{'TPREVBUTTON'};
print_var(\*DB,'TPREVBUTTONIA',\$TPREVBUTTONIA)
				unless $IsDefault{'TPREVBUTTONIA'};
print_var(\*DB,'TPREVINBUTTON',  \$TPREVINBUTTON)
				unless $IsDefault{'TPREVINBUTTON'};
print_var(\*DB,'TPREVINBUTTONIA',  \$TPREVINBUTTONIA)
				unless $IsDefault{'TPREVINBUTTONIA'};
print_var(\*DB,'TPREVINLINK',  \$TPREVINLINK)
				unless $IsDefault{'TPREVINLINK'};
print_var(\*DB,'TPREVINLINKIA',  \$TPREVINLINKIA)
				unless $IsDefault{'TPREVINLINKIA'};
print_var(\*DB,'TPREVLINK',    \$TPREVLINK) unless $IsDefault{'TPREVLINK'};
print_var(\*DB,'TPREVLINKIA',  \$TPREVLINKIA) unless $IsDefault{'TPREVLINKIA'};
print_var(\*DB,'TSLICEBEG',    \$TSLICEBEG) unless $IsDefault{'TSLICEBEG'};
print_var(\*DB,'TSLICEEND',    \$TSLICEEND) unless $IsDefault{'TSLICEEND'};
print_var(\*DB,'TSliceNBefore',\$TSliceNBefore);
print_var(\*DB,'TSliceNAfter', \$TSliceNAfter);
print_var(\*DB,'TSliceInclusive', \$TSliceInclusive);
print_var(\*DB,'TNEXTTOPBUTTON',  \$TNEXTTOPBUTTON)
				unless $IsDefault{'TNEXTTOPBUTTON'};
print_var(\*DB,'TNEXTTOPBUTTONIA',  \$TNEXTTOPBUTTONIA)
				unless $IsDefault{'TNEXTTOPBUTTONIA'};
print_var(\*DB,'TNEXTTOPLINK',  \$TNEXTTOPLINK)
				unless $IsDefault{'TNEXTTOPLINK'};
print_var(\*DB,'TNEXTTOPLINKIA',  \$TNEXTTOPLINKIA)
				unless $IsDefault{'TNEXTTOPLINKIA'};
print_var(\*DB,'TPREVTOPBUTTON',  \$TPREVTOPBUTTON)
				unless $IsDefault{'TPREVTOPBUTTON'};
print_var(\*DB,'TPREVTOPBUTTONIA',  \$TPREVTOPBUTTONIA)
				unless $IsDefault{'TPREVTOPBUTTONIA'};
print_var(\*DB,'TPREVTOPLINK',  \$TPREVTOPLINK)
				unless $IsDefault{'TPREVTOPLINK'};
print_var(\*DB,'TPREVTOPLINKIA',  \$TPREVTOPLINKIA)
				unless $IsDefault{'TPREVTOPLINKIA'};
print_var(\*DB,'UMASK',	       \$UMASK);

}

    ## Invoke save callback
    if (defined($CBDbSave) && defined(&$CBDbSave)) {
	&$CBDbSave(\*DB);
    }

    ## Make sure file ends with a true value
    print DB "1;\n";

    close(DB);

    if (!rename($tmpfile, $pathname)) {
	warn qq/ERROR: Unable to rename "$tmpfile" to "$pathname": $!\n/;
	return 0;
    }
    1;
}

##---------------------------------------------------------------------------

sub escape_str {
    my($str) = $_[0];
    $str =~ s/(['\\])/\\$1/g;
    $str;
}

##---------------------------------------------------------------------------

sub print_var {
    my($fh, $name, $ref, $d) = @_;

    if (ref($ref) eq 'SCALAR') {
	print $fh qq/\$$name='/, escape_str($$ref), qq/'/;
	print $fh qq/ unless defined(\$$name)/  if $d;
	print $fh qq/;\n/;
	return;
    }

    if (ref($ref) eq 'HASH') {
	my($key, $value, $sep);
	if (defined($name)) {
	    print $fh "%$name=(\n";
	    $sep = "\n";
	} else {
	    print $fh '{';
	    $sep = "";
	}
	while (($key, $value) = each(%$ref)) {
	    print $fh qq/'/, escape_str($key), qq/',/;
	    if (ref($value)) {
		print_var($fh, undef, $value, 0);
		print $fh ",\n";
		next;
	    }
	    if (defined($value)) {
		print $fh qq/'/, escape_str($value), qq/',/, $sep;
	    } else {
		print $fh 'undef,', $sep;
	    }
	}
	if (defined($name)) {
	    print $fh ");\n";
	} else {
	    print $fh '}';
	}
	return;
    }

    if (ref($ref) eq 'ARRAY') {
	local $_;
	my $sep;
	if (defined($name)) {
	    print $fh "\@$name=(\n";
	    $sep = "\n";
	} else {
	    print $fh '[';
	    $sep = "";
	}
	foreach (@$ref) {
	    if (ref($_)) {
		print_var($fh, undef, $_, 0);
		print $fh ",\n";
		next;
	    }
	    if (defined($_)) {
		print $fh qq/'/, escape_str($_), qq/',/, $sep;
	    } else {
		print $fh 'undef,', $sep;
	    }
	}
	if (defined($name)) {
	    print $fh ");\n";
	} else {
	    print $fh ']';
	}
	return;
    }

    print $fh qq/\$$name='/, escape_str($ref), qq/'/;
    print $fh qq/ unless defined(\$$name)/  if $d;
    print $fh qq/;\n/;
}

##---------------------------------------------------------------------------##
1;