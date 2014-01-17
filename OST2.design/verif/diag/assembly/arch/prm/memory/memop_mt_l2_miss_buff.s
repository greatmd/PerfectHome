/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: memop_mt_l2_miss_buff.s
* Copyright (C) 1995-2007 Sun Microsystems, Inc. All Rights Reserved
* 4150 Network Circle, Santa Clara, California 95054, U.S.A.
*
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER. 
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; version 2 of the License.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*
* For the avoidance of doubt, and except that if any non-GPL license 
* choice is available it will apply instead, Sun elects to use only 
* the General Public License version 2 (GPLv2) at this time for any 
* software where a choice of GPL license versions is made 
* available with the language indicating that GPLv2 or any later version 
* may be used, or where a choice of which version of the GPL is applied is 
* otherwise unspecified. 
*
* Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara, 
* CA 95054 USA or visit www.sun.com if you need additional information or 
* have any questions. 
*
* 
* ========== Copyright Header End ============================================
*/
#define MAIN_PAGE_NUCLEUS_ALSO
#define MAIN_PAGE_HV_ALSO

#include "hboot.s"
#include "asi_s.h"
#include "nmacros.h"
#include "cmp_macros.h"

	
/************************************************************************
   Test case code start
 ************************************************************************/

.text
.global main

main:
	ta	T_CHANGE_HPRIV

	! Initialize the global registers.
	mov	%g0, %g1	
	mov	%g0, %g2
	mov	%g0, %g3
	mov	%g0, %g4
	mov	%g0, %g5
	mov	%g0, %g6
	mov	%g0, %g7

	ta	T_RD_THID
	mov	%o1, %l6
	setx	0x200000, %g1, %l7
	umul	%l6, %l7, %l7
	setx	user_data_start, %g1, %g3
	add	%l7, %g3, %l7

	cmp	%l6, 0x0
	be	main_t0
	nop
	ba	main_t1_to_t63
	nop

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!
! Thread 0 Start Here
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

main_t0:

	! Sync up all the treads.

	SYNC_THREAD_MAIN( test_failed, %g1, %g2, %g3 )

	! Do 8 loads that use the same L2 cache line.

test_t0:
	setx	0x40000, %g1, %g2	! Set up the load addresses
	add	%l7, %g2, %l6		! All alias to same L2$ line
	add	%l6, %g2, %l5
	add	%l5, %g2, %l4
	add	%l4, %g2, %l3
	add	%l3, %g2, %l2
	add	%l2, %g2, %l1	
	add	%l1, %g2, %l0

	ld	[%l7], %i7
	ld	[%l6], %i6
	ld	[%l5], %i5
	ld	[%l4], %i4
	ld	[%l3], %i3
	ld	[%l2], %i2
	ld	[%l1], %i1
	ld	[%l0], %i0
	membar	#Sync

	ba	test_passed
	nop

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!
! All Treads, except 0,  Start Here
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

main_t1_to_t63:

	! Sync up all the treads.

	SYNC_THREAD_OTHER( %l6,%g1,%g2 )
	
test:
	setx	0x40000, %g1, %g2	! Set up the load addresses
	add	%l7, %g2, %l6		! All alias to same L2$ line
	add	%l6, %g2, %l5
	add	%l5, %g2, %l4
	add	%l4, %g2, %l3
	add	%l3, %g2, %l2
	add	%l2, %g2, %l1	
	add	%l1, %g2, %l0

	ld	[%l7], %i7
	ld	[%l6], %i6
	ld	[%l5], %i5
	ld	[%l4], %i4
	ld	[%l3], %i3
	ld	[%l2], %i2
	ld	[%l1], %i1
	ld	[%l0], %i0
	membar	#Sync

	ba	test_passed
	nop


/**********************************************************************
 *  Common code.
 *********************************************************************/

test_passed:
	EXIT_GOOD
	nop

test_failed:
	EXIT_BAD
	nop
user_text_end:	

/************************************************************************
 *  Test case data start
 ************************************************************************/

SECTION       .DATA DATA_VA=0x70000000
attr_data {
      Name = .DATA,
      hypervisor,
      compressimage
}

.data
.global user_data_start
user_data_start:
	.word	0x00000000
	.skip	0x3fffc
	.word	0x00010001
	.skip	0x3fffc
	.word	0x00020002
	.skip	0x3fffc
	.word	0x00030003
	.skip	0x3fffc
	.word	0x00040004
	.skip	0x3fffc
	.word	0x00050005
	.skip	0x3fffc
	.word	0x00060006
	.skip	0x3fffc
	.word	0x00070007

	.skip	0x3fffc
	.word	0x00080008
	.skip	0x3fffc
	.word	0x00090009
	.skip	0x3fffc
	.word	0x000a000a
	.skip	0x3fffc
	.word	0x000b000b
	.skip	0x3fffc
	.word	0x000c000c
	.skip	0x3fffc
	.word	0x000d000d
	.skip	0x3fffc
	.word	0x000e000e
	.skip	0x3fffc
	.word	0x000f000f

	.skip	0x3fffc
	.word	0x00100010
	.skip	0x3fffc
	.word	0x00110011
	.skip	0x3fffc
	.word	0x00120012
	.skip	0x3fffc
	.word	0x00130013
	.skip	0x3fffc
	.word	0x00140014
	.skip	0x3fffc
	.word	0x00150015
	.skip	0x3fffc
	.word	0x00160016
	.skip	0x3fffc
	.word	0x00170017

	.skip	0x3fffc
	.word	0x00180018
	.skip	0x3fffc
	.word	0x00190019
	.skip	0x3fffc
	.word	0x001a001a
	.skip	0x3fffc
	.word	0x001b001b
	.skip	0x3fffc
	.word	0x001c001c
	.skip	0x3fffc
	.word	0x001d001d
	.skip	0x3fffc
	.word	0x001e001e
	.skip	0x3fffc
	.word	0x001f001f

	.skip	0x3fffc
	.word	0x00200020
	.skip	0x3fffc
	.word	0x00210021
	.skip	0x3fffc
	.word	0x00220022
	.skip	0x3fffc
	.word	0x00230023
	.skip	0x3fffc
	.word	0x00240024
	.skip	0x3fffc
	.word	0x00250025
	.skip	0x3fffc
	.word	0x00260026
	.skip	0x3fffc
	.word	0x00270027

	.skip	0x3fffc
	.word	0x00280028
	.skip	0x3fffc
	.word	0x00290029
	.skip	0x3fffc
	.word	0x002a002a
	.skip	0x3fffc
	.word	0x002b002b
	.skip	0x3fffc
	.word	0x002c002c
	.skip	0x3fffc
	.word	0x002d002d
	.skip	0x3fffc
	.word	0x002e002e
	.skip	0x3fffc
	.word	0x002f002f

	.skip	0x3fffc
	.word	0x00300030
	.skip	0x3fffc
	.word	0x00310031
	.skip	0x3fffc
	.word	0x00320032
	.skip	0x3fffc
	.word	0x00330033
	.skip	0x3fffc
	.word	0x00340034
	.skip	0x3fffc
	.word	0x00350035
	.skip	0x3fffc
	.word	0x00360036
	.skip	0x3fffc
	.word	0x00370037

	.skip	0x3fffc
	.word	0x00380038
	.skip	0x3fffc
	.word	0x00390039
	.skip	0x3fffc
	.word	0x003a003a
	.skip	0x3fffc
	.word	0x003b003b
	.skip	0x3fffc
	.word	0x003c003c
	.skip	0x3fffc
	.word	0x003d003d
	.skip	0x3fffc
	.word	0x003e003e
	.skip	0x3fffc
	.word	0x003f003f

	.skip	0x3fffc
	.word	0x00400040
	.skip	0x3fffc
	.word	0x00410041
	.skip	0x3fffc
	.word	0x00420042
	.skip	0x3fffc
	.word	0x00430043
	.skip	0x3fffc
	.word	0x00440044
	.skip	0x3fffc
	.word	0x00450045
	.skip	0x3fffc
	.word	0x00460046
	.skip	0x3fffc
	.word	0x00470047

	.skip	0x3fffc
	.word	0x00480048
	.skip	0x3fffc
	.word	0x00490049
	.skip	0x3fffc
	.word	0x004a004a
	.skip	0x3fffc
	.word	0x004b004b
	.skip	0x3fffc
	.word	0x004c004c
	.skip	0x3fffc
	.word	0x004d004d
	.skip	0x3fffc
	.word	0x004e004e
	.skip	0x3fffc
	.word	0x004f004f

	.skip	0x3fffc
	.word	0x00500050
	.skip	0x3fffc
	.word	0x00510051
	.skip	0x3fffc
	.word	0x00520052
	.skip	0x3fffc
	.word	0x00530053
	.skip	0x3fffc
	.word	0x00540054
	.skip	0x3fffc
	.word	0x00550055
	.skip	0x3fffc
	.word	0x00560056
	.skip	0x3fffc
	.word	0x00570057

	.skip	0x3fffc
	.word	0x00580058
	.skip	0x3fffc
	.word	0x00590059
	.skip	0x3fffc
	.word	0x005a005a
	.skip	0x3fffc
	.word	0x005b005b
	.skip	0x3fffc
	.word	0x005c005c
	.skip	0x3fffc
	.word	0x005d005d
	.skip	0x3fffc
	.word	0x005e005e
	.skip	0x3fffc
	.word	0x005f005f

	.skip	0x3fffc
	.word	0x00600060
	.skip	0x3fffc
	.word	0x00610061
	.skip	0x3fffc
	.word	0x00620062
	.skip	0x3fffc
	.word	0x00630063
	.skip	0x3fffc
	.word	0x00640064
	.skip	0x3fffc
	.word	0x00650065
	.skip	0x3fffc
	.word	0x00660066
	.skip	0x3fffc
	.word	0x00670067

	.skip	0x3fffc
	.word	0x00680068
	.skip	0x3fffc
	.word	0x00690069
	.skip	0x3fffc
	.word	0x006a006a
	.skip	0x3fffc
	.word	0x006b006b
	.skip	0x3fffc
	.word	0x006c006c
	.skip	0x3fffc
	.word	0x006d006d
	.skip	0x3fffc
	.word	0x006e006e
	.skip	0x3fffc
	.word	0x006f006f

	.skip	0x3fffc
	.word	0x00700070
	.skip	0x3fffc
	.word	0x00710071
	.skip	0x3fffc
	.word	0x00720072
	.skip	0x3fffc
	.word	0x00730073
	.skip	0x3fffc
	.word	0x00740074
	.skip	0x3fffc
	.word	0x00750075
	.skip	0x3fffc
	.word	0x00760076
	.skip	0x3fffc
	.word	0x00770077

	.skip	0x3fffc
	.word	0x00780078
	.skip	0x3fffc
	.word	0x00790079
	.skip	0x3fffc
	.word	0x007a007a
	.skip	0x3fffc
	.word	0x007b007b
	.skip	0x3fffc
	.word	0x007c007c
	.skip	0x3fffc
	.word	0x007d007d
	.skip	0x3fffc
	.word	0x007e007e
	.skip	0x3fffc
	.word	0x007f007f

	.skip	0x3fffc
	.word	0x00800080
	.skip	0x3fffc
	.word	0x00810081
	.skip	0x3fffc
	.word	0x00820082
	.skip	0x3fffc
	.word	0x00830083
	.skip	0x3fffc
	.word	0x00840084
	.skip	0x3fffc
	.word	0x00850085
	.skip	0x3fffc
	.word	0x00860086
	.skip	0x3fffc
	.word	0x00870087

	.skip	0x3fffc
	.word	0x00880088
	.skip	0x3fffc
	.word	0x00890089
	.skip	0x3fffc
	.word	0x008a008a
	.skip	0x3fffc
	.word	0x008b008b
	.skip	0x3fffc
	.word	0x008c008c
	.skip	0x3fffc
	.word	0x008d008d
	.skip	0x3fffc
	.word	0x008e008e
	.skip	0x3fffc
	.word	0x008f008f

	.skip	0x3fffc
	.word	0x00900090
	.skip	0x3fffc
	.word	0x00910091
	.skip	0x3fffc
	.word	0x00920092
	.skip	0x3fffc
	.word	0x00930093
	.skip	0x3fffc
	.word	0x00940094
	.skip	0x3fffc
	.word	0x00950095
	.skip	0x3fffc
	.word	0x00960096
	.skip	0x3fffc
	.word	0x00970097

	.skip	0x3fffc
	.word	0x00980098
	.skip	0x3fffc
	.word	0x00990099
	.skip	0x3fffc
	.word	0x009a009a
	.skip	0x3fffc
	.word	0x009b009b
	.skip	0x3fffc
	.word	0x009c009c
	.skip	0x3fffc
	.word	0x009d009d
	.skip	0x3fffc
	.word	0x009e009e
	.skip	0x3fffc
	.word	0x009f009f

	.skip	0x3fffc
	.word	0x00a000a0
	.skip	0x3fffc
	.word	0x00a100a1
	.skip	0x3fffc
	.word	0x00a200a2
	.skip	0x3fffc
	.word	0x00a300a3
	.skip	0x3fffc
	.word	0x00a400a4
	.skip	0x3fffc
	.word	0x00a500a5
	.skip	0x3fffc
	.word	0x00a600a6
	.skip	0x3fffc
	.word	0x00a700a7

	.skip	0x3fffc
	.word	0x00a800a8
	.skip	0x3fffc
	.word	0x00a900a9
	.skip	0x3fffc
	.word	0x00aa00aa
	.skip	0x3fffc
	.word	0x00ab00ab
	.skip	0x3fffc
	.word	0x00ac00ac
	.skip	0x3fffc
	.word	0x00ad00ad
	.skip	0x3fffc
	.word	0x00ae00ae
	.skip	0x3fffc
	.word	0x00af00af

	.skip	0x3fffc
	.word	0x00b000b0
	.skip	0x3fffc
	.word	0x00b100b1
	.skip	0x3fffc
	.word	0x00b200b2
	.skip	0x3fffc
	.word	0x00b300b3
	.skip	0x3fffc
	.word	0x00b400b4
	.skip	0x3fffc
	.word	0x00b500b5
	.skip	0x3fffc
	.word	0x00b600b6
	.skip	0x3fffc
	.word	0x00b700b7

	.skip	0x3fffc
	.word	0x00b800b8
	.skip	0x3fffc
	.word	0x00b900b9
	.skip	0x3fffc
	.word	0x00ba00ba
	.skip	0x3fffc
	.word	0x00bb00bb
	.skip	0x3fffc
	.word	0x00bc00bc
	.skip	0x3fffc
	.word	0x00bd00bd
	.skip	0x3fffc
	.word	0x00be00be
	.skip	0x3fffc
	.word	0x00bf00bf

	.skip	0x3fffc
	.word	0x00c000c0
	.skip	0x3fffc
	.word	0x00c100c1
	.skip	0x3fffc
	.word	0x00c200c2
	.skip	0x3fffc
	.word	0x00c300c3
	.skip	0x3fffc
	.word	0x00c400c4
	.skip	0x3fffc
	.word	0x00c500c5
	.skip	0x3fffc
	.word	0x00c600c6
	.skip	0x3fffc
	.word	0x00c700c7

	.skip	0x3fffc
	.word	0x00c800c8
	.skip	0x3fffc
	.word	0x00c900c9
	.skip	0x3fffc
	.word	0x00ca00ca
	.skip	0x3fffc
	.word	0x00cb00cb
	.skip	0x3fffc
	.word	0x00cc00cc
	.skip	0x3fffc
	.word	0x00cd00cd
	.skip	0x3fffc
	.word	0x00ce00ce
	.skip	0x3fffc
	.word	0x00cf00cf

	.skip	0x3fffc
	.word	0x00d000d0
	.skip	0x3fffc
	.word	0x00d100d1
	.skip	0x3fffc
	.word	0x00d200d2
	.skip	0x3fffc
	.word	0x00d300d3
	.skip	0x3fffc
	.word	0x00d400d4
	.skip	0x3fffc
	.word	0x00d500d5
	.skip	0x3fffc
	.word	0x00d600d6
	.skip	0x3fffc
	.word	0x00d700d7

	.skip	0x3fffc
	.word	0x00d800d8
	.skip	0x3fffc
	.word	0x00d900d9
	.skip	0x3fffc
	.word	0x00da00da
	.skip	0x3fffc
	.word	0x00db00db
	.skip	0x3fffc
	.word	0x00dc00dc
	.skip	0x3fffc
	.word	0x00dd00dd
	.skip	0x3fffc
	.word	0x00de00de
	.skip	0x3fffc
	.word	0x00df00df

	.skip	0x3fffc
	.word	0x00e000e0
	.skip	0x3fffc
	.word	0x00e100e1
	.skip	0x3fffc
	.word	0x00e200e2
	.skip	0x3fffc
	.word	0x00e300e3
	.skip	0x3fffc
	.word	0x00e400e4
	.skip	0x3fffc
	.word	0x00e500e5
	.skip	0x3fffc
	.word	0x00e600e6
	.skip	0x3fffc
	.word	0x00e700e7

	.skip	0x3fffc
	.word	0x00e800e8
	.skip	0x3fffc
	.word	0x00e900e9
	.skip	0x3fffc
	.word	0x00ea00ea
	.skip	0x3fffc
	.word	0x00eb00eb
	.skip	0x3fffc
	.word	0x00ec00ec
	.skip	0x3fffc
	.word	0x00ed00ed
	.skip	0x3fffc
	.word	0x00ee00ee
	.skip	0x3fffc
	.word	0x00ef00ef

	.skip	0x3fffc
	.word	0x00f000f0
	.skip	0x3fffc
	.word	0x00f100f1
	.skip	0x3fffc
	.word	0x00f200f2
	.skip	0x3fffc
	.word	0x00f300f3
	.skip	0x3fffc
	.word	0x00f400f4
	.skip	0x3fffc
	.word	0x00f500f5
	.skip	0x3fffc
	.word	0x00f600f6
	.skip	0x3fffc
	.word	0x00f700f7

	.skip	0x3fffc
	.word	0x00f800f8
	.skip	0x3fffc
	.word	0x00f900f9
	.skip	0x3fffc
	.word	0x00fa00fa
	.skip	0x3fffc
	.word	0x00fb00fb
	.skip	0x3fffc
	.word	0x00fc00fc
	.skip	0x3fffc
	.word	0x00fd00fd
	.skip	0x3fffc
	.word	0x00fe00fe
	.skip	0x3fffc
	.word	0x00ff00ff

	.skip	0x3fffc
	.word	0x01000100
	.skip	0x3fffc
	.word	0x01010101
	.skip	0x3fffc
	.word	0x01020102
	.skip	0x3fffc
	.word	0x01030103
	.skip	0x3fffc
	.word	0x01040104
	.skip	0x3fffc
	.word	0x01050105
	.skip	0x3fffc
	.word	0x01060106
	.skip	0x3fffc
	.word	0x01070107

	.skip	0x3fffc
	.word	0x01080108
	.skip	0x3fffc
	.word	0x01090109
	.skip	0x3fffc
	.word	0x010a010a
	.skip	0x3fffc
	.word	0x010b010b
	.skip	0x3fffc
	.word	0x010c010c
	.skip	0x3fffc
	.word	0x010d010d
	.skip	0x3fffc
	.word	0x010e010e
	.skip	0x3fffc
	.word	0x010f010f

	.skip	0x3fffc
	.word	0x01100110
	.skip	0x3fffc
	.word	0x01110111
	.skip	0x3fffc
	.word	0x01120112
	.skip	0x3fffc
	.word	0x01130113
	.skip	0x3fffc
	.word	0x01140114
	.skip	0x3fffc
	.word	0x01150115
	.skip	0x3fffc
	.word	0x01160116
	.skip	0x3fffc
	.word	0x01170117

	.skip	0x3fffc
	.word	0x01180118
	.skip	0x3fffc
	.word	0x01190119
	.skip	0x3fffc
	.word	0x011a011a
	.skip	0x3fffc
	.word	0x011b011b
	.skip	0x3fffc
	.word	0x011c011c
	.skip	0x3fffc
	.word	0x011d011d
	.skip	0x3fffc
	.word	0x011e011e
	.skip	0x3fffc
	.word	0x011f011f

	.skip	0x3fffc
	.word	0x01200120
	.skip	0x3fffc
	.word	0x01210121
	.skip	0x3fffc
	.word	0x01220122
	.skip	0x3fffc
	.word	0x01230123
	.skip	0x3fffc
	.word	0x01240124
	.skip	0x3fffc
	.word	0x01250125
	.skip	0x3fffc
	.word	0x01260126
	.skip	0x3fffc
	.word	0x01270127

	.skip	0x3fffc
	.word	0x01280128
	.skip	0x3fffc
	.word	0x01290129
	.skip	0x3fffc
	.word	0x012a012a
	.skip	0x3fffc
	.word	0x012b012b
	.skip	0x3fffc
	.word	0x012c012c
	.skip	0x3fffc
	.word	0x012d012d
	.skip	0x3fffc
	.word	0x012e012e
	.skip	0x3fffc
	.word	0x012f012f

	.skip	0x3fffc
	.word	0x01300130
	.skip	0x3fffc
	.word	0x01310131
	.skip	0x3fffc
	.word	0x01320132
	.skip	0x3fffc
	.word	0x01330133
	.skip	0x3fffc
	.word	0x01340134
	.skip	0x3fffc
	.word	0x01350135
	.skip	0x3fffc
	.word	0x01360136
	.skip	0x3fffc
	.word	0x01370137

	.skip	0x3fffc
	.word	0x01380138
	.skip	0x3fffc
	.word	0x01390139
	.skip	0x3fffc
	.word	0x013a013a
	.skip	0x3fffc
	.word	0x013b013b
	.skip	0x3fffc
	.word	0x013c013c
	.skip	0x3fffc
	.word	0x013d013d
	.skip	0x3fffc
	.word	0x013e013e
	.skip	0x3fffc
	.word	0x013f013f

	.skip	0x3fffc
	.word	0x01400140
	.skip	0x3fffc
	.word	0x01410141
	.skip	0x3fffc
	.word	0x01420142
	.skip	0x3fffc
	.word	0x01430143
	.skip	0x3fffc
	.word	0x01440144
	.skip	0x3fffc
	.word	0x01450145
	.skip	0x3fffc
	.word	0x01460146
	.skip	0x3fffc
	.word	0x01470147

	.skip	0x3fffc
	.word	0x01480148
	.skip	0x3fffc
	.word	0x01490149
	.skip	0x3fffc
	.word	0x014a014a
	.skip	0x3fffc
	.word	0x014b014b
	.skip	0x3fffc
	.word	0x014c014c
	.skip	0x3fffc
	.word	0x014d014d
	.skip	0x3fffc
	.word	0x014e014e
	.skip	0x3fffc
	.word	0x014f014f

	.skip	0x3fffc
	.word	0x01500150
	.skip	0x3fffc
	.word	0x01510151
	.skip	0x3fffc
	.word	0x01520152
	.skip	0x3fffc
	.word	0x01530153
	.skip	0x3fffc
	.word	0x01540154
	.skip	0x3fffc
	.word	0x01550155
	.skip	0x3fffc
	.word	0x01560156
	.skip	0x3fffc
	.word	0x01570157

	.skip	0x3fffc
	.word	0x01580158
	.skip	0x3fffc
	.word	0x01590159
	.skip	0x3fffc
	.word	0x015a015a
	.skip	0x3fffc
	.word	0x015b015b
	.skip	0x3fffc
	.word	0x015c015c
	.skip	0x3fffc
	.word	0x015d015d
	.skip	0x3fffc
	.word	0x015e015e
	.skip	0x3fffc
	.word	0x015f015f

	.skip	0x3fffc
	.word	0x01600160
	.skip	0x3fffc
	.word	0x01610161
	.skip	0x3fffc
	.word	0x01620162
	.skip	0x3fffc
	.word	0x01630163
	.skip	0x3fffc
	.word	0x01640164
	.skip	0x3fffc
	.word	0x01650165
	.skip	0x3fffc
	.word	0x01660166
	.skip	0x3fffc
	.word	0x01670167

	.skip	0x3fffc
	.word	0x01680168
	.skip	0x3fffc
	.word	0x01690169
	.skip	0x3fffc
	.word	0x016a016a
	.skip	0x3fffc
	.word	0x016b016b
	.skip	0x3fffc
	.word	0x016c016c
	.skip	0x3fffc
	.word	0x016d016d
	.skip	0x3fffc
	.word	0x016e016e
	.skip	0x3fffc
	.word	0x016f016f

	.skip	0x3fffc
	.word	0x01700170
	.skip	0x3fffc
	.word	0x01710171
	.skip	0x3fffc
	.word	0x01720172
	.skip	0x3fffc
	.word	0x01730173
	.skip	0x3fffc
	.word	0x01740174
	.skip	0x3fffc
	.word	0x01750175
	.skip	0x3fffc
	.word	0x01760176
	.skip	0x3fffc
	.word	0x01770177

	.skip	0x3fffc
	.word	0x01780178
	.skip	0x3fffc
	.word	0x01790179
	.skip	0x3fffc
	.word	0x017a017a
	.skip	0x3fffc
	.word	0x017b017b
	.skip	0x3fffc
	.word	0x017c017c
	.skip	0x3fffc
	.word	0x017d017d
	.skip	0x3fffc
	.word	0x017e017e
	.skip	0x3fffc
	.word	0x017f017f

	.skip	0x3fffc
	.word	0x01800180
	.skip	0x3fffc
	.word	0x01810181
	.skip	0x3fffc
	.word	0x01820182
	.skip	0x3fffc
	.word	0x01830183
	.skip	0x3fffc
	.word	0x01840184
	.skip	0x3fffc
	.word	0x01850185
	.skip	0x3fffc
	.word	0x01860186
	.skip	0x3fffc
	.word	0x01870187

	.skip	0x3fffc
	.word	0x01880188
	.skip	0x3fffc
	.word	0x01890189
	.skip	0x3fffc
	.word	0x018a018a
	.skip	0x3fffc
	.word	0x018b018b
	.skip	0x3fffc
	.word	0x018c018c
	.skip	0x3fffc
	.word	0x018d018d
	.skip	0x3fffc
	.word	0x018e018e
	.skip	0x3fffc
	.word	0x018f018f

	.skip	0x3fffc
	.word	0x01900190
	.skip	0x3fffc
	.word	0x01910191
	.skip	0x3fffc
	.word	0x01920192
	.skip	0x3fffc
	.word	0x01930193
	.skip	0x3fffc
	.word	0x01940194
	.skip	0x3fffc
	.word	0x01950195
	.skip	0x3fffc
	.word	0x01960196
	.skip	0x3fffc
	.word	0x01970197

	.skip	0x3fffc
	.word	0x01980198
	.skip	0x3fffc
	.word	0x01990199
	.skip	0x3fffc
	.word	0x019a019a
	.skip	0x3fffc
	.word	0x019b019b
	.skip	0x3fffc
	.word	0x019c019c
	.skip	0x3fffc
	.word	0x019d019d
	.skip	0x3fffc
	.word	0x019e019e
	.skip	0x3fffc
	.word	0x019f019f

	.skip	0x3fffc
	.word	0x01a001a0
	.skip	0x3fffc
	.word	0x01a101a1
	.skip	0x3fffc
	.word	0x01a201a2
	.skip	0x3fffc
	.word	0x01a301a3
	.skip	0x3fffc
	.word	0x01a401a4
	.skip	0x3fffc
	.word	0x01a501a5
	.skip	0x3fffc
	.word	0x01a601a6
	.skip	0x3fffc
	.word	0x01a701a7

	.skip	0x3fffc
	.word	0x01a801a8
	.skip	0x3fffc
	.word	0x01a901a9
	.skip	0x3fffc
	.word	0x01aa01aa
	.skip	0x3fffc
	.word	0x01ab01ab
	.skip	0x3fffc
	.word	0x01ac01ac
	.skip	0x3fffc
	.word	0x01ad01ad
	.skip	0x3fffc
	.word	0x01ae01ae
	.skip	0x3fffc
	.word	0x01af01af

	.skip	0x3fffc
	.word	0x01b001b0
	.skip	0x3fffc
	.word	0x01b101b1
	.skip	0x3fffc
	.word	0x01b201b2
	.skip	0x3fffc
	.word	0x01b301b3
	.skip	0x3fffc
	.word	0x01b401b4
	.skip	0x3fffc
	.word	0x01b501b5
	.skip	0x3fffc
	.word	0x01b601b6
	.skip	0x3fffc
	.word	0x01b701b7

	.skip	0x3fffc
	.word	0x01b801b8
	.skip	0x3fffc
	.word	0x01b901b9
	.skip	0x3fffc
	.word	0x01ba01ba
	.skip	0x3fffc
	.word	0x01bb01bb
	.skip	0x3fffc
	.word	0x01bc01bc
	.skip	0x3fffc
	.word	0x01bd01bd
	.skip	0x3fffc
	.word	0x01be01be
	.skip	0x3fffc
	.word	0x01bf01bf

	.skip	0x3fffc
	.word	0x01c001c0
	.skip	0x3fffc
	.word	0x01c101c1
	.skip	0x3fffc
	.word	0x01c201c2
	.skip	0x3fffc
	.word	0x01c301c3
	.skip	0x3fffc
	.word	0x01c401c4
	.skip	0x3fffc
	.word	0x01c501c5
	.skip	0x3fffc
	.word	0x01c601c6
	.skip	0x3fffc
	.word	0x01c701c7

	.skip	0x3fffc
	.word	0x01c801c8
	.skip	0x3fffc
	.word	0x01c901c9
	.skip	0x3fffc
	.word	0x01ca01ca
	.skip	0x3fffc
	.word	0x01cb01cb
	.skip	0x3fffc
	.word	0x01cc01cc
	.skip	0x3fffc
	.word	0x01cd01cd
	.skip	0x3fffc
	.word	0x01ce01ce
	.skip	0x3fffc
	.word	0x01cf01cf

	.skip	0x3fffc
	.word	0x01d001d0
	.skip	0x3fffc
	.word	0x01d101d1
	.skip	0x3fffc
	.word	0x01d201d2
	.skip	0x3fffc
	.word	0x01d301d3
	.skip	0x3fffc
	.word	0x01d401d4
	.skip	0x3fffc
	.word	0x01d501d5
	.skip	0x3fffc
	.word	0x01d601d6
	.skip	0x3fffc
	.word	0x01d701d7

	.skip	0x3fffc
	.word	0x01d801d8
	.skip	0x3fffc
	.word	0x01d901d9
	.skip	0x3fffc
	.word	0x01da01da
	.skip	0x3fffc
	.word	0x01db01db
	.skip	0x3fffc
	.word	0x01dc01dc
	.skip	0x3fffc
	.word	0x01dd01dd
	.skip	0x3fffc
	.word	0x01de01de
	.skip	0x3fffc
	.word	0x01df01df

	.skip	0x3fffc
	.word	0x01e001e0
	.skip	0x3fffc
	.word	0x01e101e1
	.skip	0x3fffc
	.word	0x01e201e2
	.skip	0x3fffc
	.word	0x01e301e3
	.skip	0x3fffc
	.word	0x01e401e4
	.skip	0x3fffc
	.word	0x01e501e5
	.skip	0x3fffc
	.word	0x01e601e6
	.skip	0x3fffc
	.word	0x01e701e7

	.skip	0x3fffc
	.word	0x01e801e8
	.skip	0x3fffc
	.word	0x01e901e9
	.skip	0x3fffc
	.word	0x01ea01ea
	.skip	0x3fffc
	.word	0x01eb01eb
	.skip	0x3fffc
	.word	0x01ec01ec
	.skip	0x3fffc
	.word	0x01ed01ed
	.skip	0x3fffc
	.word	0x01ee01ee
	.skip	0x3fffc
	.word	0x01ef01ef

	.skip	0x3fffc
	.word	0x01f001f0
	.skip	0x3fffc
	.word	0x01f101f1
	.skip	0x3fffc
	.word	0x01f201f2
	.skip	0x3fffc
	.word	0x01f301f3
	.skip	0x3fffc
	.word	0x01f401f4
	.skip	0x3fffc
	.word	0x01f501f5
	.skip	0x3fffc
	.word	0x01f601f6
	.skip	0x3fffc
	.word	0x01f701f7

	.skip	0x3fffc
	.word	0x01f801f8
	.skip	0x3fffc
	.word	0x01f901f9
	.skip	0x3fffc
	.word	0x01fa01fa
	.skip	0x3fffc
	.word	0x01fb01fb
	.skip	0x3fffc
	.word	0x01fc01fc
	.skip	0x3fffc
	.word	0x01fd01fd
	.skip	0x3fffc
	.word	0x01fe01fe
	.skip	0x3fffc
	.word	0x01ff01ff

	.skip	0x3fffc
	.word	0x02000200
	.skip	0x3fffc
	.word	0x02010201
	.skip	0x3fffc
	.word	0x02020202
	.skip	0x3fffc
	.word	0x02030203
	.skip	0x3fffc
	.word	0x02040204
	.skip	0x3fffc
	.word	0x02050205
	.skip	0x3fffc
	.word	0x02060206
	.skip	0x3fffc
	.word	0x02070207

	.skip	0x3fffc
	.word	0x02080208
	.skip	0x3fffc
	.word	0x02090209
	.skip	0x3fffc
	.word	0x020a020a
	.skip	0x3fffc
	.word	0x020b020b
	.skip	0x3fffc
	.word	0x020c020c
	.skip	0x3fffc
	.word	0x020d020d
	.skip	0x3fffc
	.word	0x020e020e
	.skip	0x3fffc
	.word	0x020f020f

	.skip	0x3fffc
	.word	0x02100210
	.skip	0x3fffc
	.word	0x02110211
	.skip	0x3fffc
	.word	0x02120212
	.skip	0x3fffc
	.word	0x02130213
	.skip	0x3fffc
	.word	0x02140214
	.skip	0x3fffc
	.word	0x02150215
	.skip	0x3fffc
	.word	0x02160216

	.skip	0x3fffc
	.word	0x02170217
	.skip	0x3fffc
	.word	0x02180218
	.skip	0x3fffc
	.word	0x02190219
	.skip	0x3fffc
	.word	0x021a021a
	.skip	0x3fffc
	.word	0x021b021b
	.skip	0x3fffc
	.word	0x021c021c
	.skip	0x3fffc
	.word	0x021d021d
	.skip	0x3fffc
	.word	0x021e021e
	.skip	0x3fffc
	.word	0x021f021f

	.skip	0x3fffc
	.word	0x02200220
	.skip	0x3fffc
	.word	0x02210221
	.skip	0x3fffc
	.word	0x02220222
	.skip	0x3fffc
	.word	0x02230223
	.skip	0x3fffc
	.word	0x02240224
	.skip	0x3fffc
	.word	0x02250225
	.skip	0x3fffc
	.word	0x02260226

	.skip	0x3fffc
	.word	0x02270227
	.skip	0x3fffc
	.word	0x02280228
	.skip	0x3fffc
	.word	0x02290229
	.skip	0x3fffc
	.word	0x022a022a
	.skip	0x3fffc
	.word	0x022b022b
	.skip	0x3fffc
	.word	0x022c022c
	.skip	0x3fffc
	.word	0x022d022d
	.skip	0x3fffc
	.word	0x022e022e
	.skip	0x3fffc
	.word	0x022f022f

	.skip	0x3fffc
	.word	0x02300230
	.skip	0x3fffc
	.word	0x02310231
	.skip	0x3fffc
	.word	0x02320232
	.skip	0x3fffc
	.word	0x02330233
	.skip	0x3fffc
	.word	0x02340234
	.skip	0x3fffc
	.word	0x02350235
	.skip	0x3fffc
	.word	0x02360236

	.skip	0x3fffc
	.word	0x02370237
	.skip	0x3fffc
	.word	0x02380238
	.skip	0x3fffc
	.word	0x02390239
	.skip	0x3fffc
	.word	0x023a023a
	.skip	0x3fffc
	.word	0x023b023b
	.skip	0x3fffc
	.word	0x023c023c
	.skip	0x3fffc
	.word	0x023d023d
	.skip	0x3fffc
	.word	0x023e023e
	.skip	0x3fffc
	.word	0x023f023f

	.skip	0x3fffc
	.word	0x02400240
	.skip	0x3fffc
	.word	0x02410241
	.skip	0x3fffc
	.word	0x02420242
	.skip	0x3fffc
	.word	0x02430243
	.skip	0x3fffc
	.word	0x02440244
	.skip	0x3fffc
	.word	0x02450245
	.skip	0x3fffc
	.word	0x02460246

	.skip	0x3fffc
	.word	0x02470247
	.skip	0x3fffc
	.word	0x02480248
	.skip	0x3fffc
	.word	0x02490249
	.skip	0x3fffc
	.word	0x024a024a
	.skip	0x3fffc
	.word	0x024b024b
	.skip	0x3fffc
	.word	0x024c024c
	.skip	0x3fffc
	.word	0x024d024d
	.skip	0x3fffc
	.word	0x024e024e
	.skip	0x3fffc
	.word	0x024f024f

	.skip	0x3fffc
	.word	0x02500250
	.skip	0x3fffc
	.word	0x02510251
	.skip	0x3fffc
	.word	0x02520252
	.skip	0x3fffc
	.word	0x02530253
	.skip	0x3fffc
	.word	0x02540254
	.skip	0x3fffc
	.word	0x02550255
	.skip	0x3fffc
	.word	0x02560256

	.skip	0x3fffc
	.word	0x02570257
	.skip	0x3fffc
	.word	0x02580258
	.skip	0x3fffc
	.word	0x02590259
	.skip	0x3fffc
	.word	0x025a025a
	.skip	0x3fffc
	.word	0x025b025b
	.skip	0x3fffc
	.word	0x025c025c
	.skip	0x3fffc
	.word	0x025d025d
	.skip	0x3fffc
	.word	0x025e025e
	.skip	0x3fffc
	.word	0x025f025f

	.skip	0x3fffc
	.word	0x02600260
	.skip	0x3fffc
	.word	0x02610261
	.skip	0x3fffc
	.word	0x02620262
	.skip	0x3fffc
	.word	0x02630263
	.skip	0x3fffc
	.word	0x02640264
	.skip	0x3fffc
	.word	0x02650265
	.skip	0x3fffc
	.word	0x02660266

	.skip	0x3fffc
	.word	0x02670267
	.skip	0x3fffc
	.word	0x02680268
	.skip	0x3fffc
	.word	0x02690269
	.skip	0x3fffc
	.word	0x026a026a
	.skip	0x3fffc
	.word	0x026b026b
	.skip	0x3fffc
	.word	0x026c026c
	.skip	0x3fffc
	.word	0x026d026d
	.skip	0x3fffc
	.word	0x026e026e
	.skip	0x3fffc
	.word	0x026f026f

	.skip	0x3fffc
	.word	0x02700270
	.skip	0x3fffc
	.word	0x02710271
	.skip	0x3fffc
	.word	0x02720272
	.skip	0x3fffc
	.word	0x02730273
	.skip	0x3fffc
	.word	0x02740274
	.skip	0x3fffc
	.word	0x02750275
	.skip	0x3fffc
	.word	0x02760276

	.skip	0x3fffc
	.word	0x02770277
	.skip	0x3fffc
	.word	0x02780278
	.skip	0x3fffc
	.word	0x02790279
	.skip	0x3fffc
	.word	0x027a027a
	.skip	0x3fffc
	.word	0x027b027b
	.skip	0x3fffc
	.word	0x027c027c
	.skip	0x3fffc
	.word	0x027d027d
	.skip	0x3fffc
	.word	0x027e027e
	.skip	0x3fffc
	.word	0x027f027f

	.skip	0x3fffc
	.word	0x02800280
	.skip	0x3fffc
	.word	0x02810281
	.skip	0x3fffc
	.word	0x02820282
	.skip	0x3fffc
	.word	0x02830283
	.skip	0x3fffc
	.word	0x02840284
	.skip	0x3fffc
	.word	0x02850285
	.skip	0x3fffc
	.word	0x02860286

	.skip	0x3fffc
	.word	0x02870287
	.skip	0x3fffc
	.word	0x02880288
	.skip	0x3fffc
	.word	0x02890289
	.skip	0x3fffc
	.word	0x028a028a
	.skip	0x3fffc
	.word	0x028b028b
	.skip	0x3fffc
	.word	0x028c028c
	.skip	0x3fffc
	.word	0x028d028d
	.skip	0x3fffc
	.word	0x028e028e
	.skip	0x3fffc
	.word	0x028f028f

	.skip	0x3fffc
	.word	0x02900290
	.skip	0x3fffc
	.word	0x02910291
	.skip	0x3fffc
	.word	0x02920292
	.skip	0x3fffc
	.word	0x02930293
	.skip	0x3fffc
	.word	0x02940294
	.skip	0x3fffc
	.word	0x02950295
	.skip	0x3fffc
	.word	0x02960296

	.skip	0x3fffc
	.word	0x02970297
	.skip	0x3fffc
	.word	0x02980298
	.skip	0x3fffc
	.word	0x02990299
	.skip	0x3fffc
	.word	0x029a029a
	.skip	0x3fffc
	.word	0x029b029b
	.skip	0x3fffc
	.word	0x029c029c
	.skip	0x3fffc
	.word	0x029d029d
	.skip	0x3fffc
	.word	0x029e029e
	.skip	0x3fffc
	.word	0x029f029f

	.skip	0x3fffc
	.word	0x02a002a0
	.skip	0x3fffc
	.word	0x02a102a1
	.skip	0x3fffc
	.word	0x02a202a2
	.skip	0x3fffc
	.word	0x02a302a3
	.skip	0x3fffc
	.word	0x02a402a4
	.skip	0x3fffc
	.word	0x02a502a5
	.skip	0x3fffc
	.word	0x02a602a6

	.skip	0x3fffc
	.word	0x02a702a7
	.skip	0x3fffc
	.word	0x02a802a8
	.skip	0x3fffc
	.word	0x02a902a9
	.skip	0x3fffc
	.word	0x02aa02aa
	.skip	0x3fffc
	.word	0x02ab02ab
	.skip	0x3fffc
	.word	0x02ac02ac
	.skip	0x3fffc
	.word	0x02ad02ad
	.skip	0x3fffc
	.word	0x02ae02ae
	.skip	0x3fffc
	.word	0x02af02af

	.skip	0x3fffc
	.word	0x02b002b0
	.skip	0x3fffc
	.word	0x02b102b1
	.skip	0x3fffc
	.word	0x02b202b2
	.skip	0x3fffc
	.word	0x02b302b3
	.skip	0x3fffc
	.word	0x02b402b4
	.skip	0x3fffc
	.word	0x02b502b5
	.skip	0x3fffc
	.word	0x02b602b6

	.skip	0x3fffc
	.word	0x02b702b7
	.skip	0x3fffc
	.word	0x02b802b8
	.skip	0x3fffc
	.word	0x02b902b9
	.skip	0x3fffc
	.word	0x02ba02ba
	.skip	0x3fffc
	.word	0x02bb02bb
	.skip	0x3fffc
	.word	0x02bc02bc
	.skip	0x3fffc
	.word	0x02bd02bd
	.skip	0x3fffc
	.word	0x02be02be
	.skip	0x3fffc
	.word	0x02bf02bf

	.skip	0x3fffc
	.word	0x02c002c0
	.skip	0x3fffc
	.word	0x02c102c1
	.skip	0x3fffc
	.word	0x02c202c2
	.skip	0x3fffc
	.word	0x02c302c3
	.skip	0x3fffc
	.word	0x02c402c4
	.skip	0x3fffc
	.word	0x02c502c5
	.skip	0x3fffc
	.word	0x02c602c6

	.skip	0x3fffc
	.word	0x02c702c7
	.skip	0x3fffc
	.word	0x02c802c8
	.skip	0x3fffc
	.word	0x02c902c9
	.skip	0x3fffc
	.word	0x02ca02ca
	.skip	0x3fffc
	.word	0x02cb02cb
	.skip	0x3fffc
	.word	0x02cc02cc
	.skip	0x3fffc
	.word	0x02cd02cd
	.skip	0x3fffc
	.word	0x02ce02ce
	.skip	0x3fffc
	.word	0x02cf02cf

	.skip	0x3fffc
	.word	0x02d002d0
	.skip	0x3fffc
	.word	0x02d102d1
	.skip	0x3fffc
	.word	0x02d202d2
	.skip	0x3fffc
	.word	0x02d302d3
	.skip	0x3fffc
	.word	0x02d402d4
	.skip	0x3fffc
	.word	0x02d502d5
	.skip	0x3fffc
	.word	0x02d602d6

	.skip	0x3fffc
	.word	0x02d702d7
	.skip	0x3fffc
	.word	0x02d802d8
	.skip	0x3fffc
	.word	0x02d902d9
	.skip	0x3fffc
	.word	0x02da02da
	.skip	0x3fffc
	.word	0x02db02db
	.skip	0x3fffc
	.word	0x02dc02dc
	.skip	0x3fffc
	.word	0x02dd02dd
	.skip	0x3fffc
	.word	0x02de02de
	.skip	0x3fffc
	.word	0x02df02df

	.skip	0x3fffc
	.word	0x02e002e0
	.skip	0x3fffc
	.word	0x02e102e1
	.skip	0x3fffc
	.word	0x02e202e2
	.skip	0x3fffc
	.word	0x02e302e3
	.skip	0x3fffc
	.word	0x02e402e4
	.skip	0x3fffc
	.word	0x02e502e5
	.skip	0x3fffc
	.word	0x02e602e6

	.skip	0x3fffc
	.word	0x02e702e7
	.skip	0x3fffc
	.word	0x02e802e8
	.skip	0x3fffc
	.word	0x02e902e9
	.skip	0x3fffc
	.word	0x02ea02ea
	.skip	0x3fffc
	.word	0x02eb02eb
	.skip	0x3fffc
	.word	0x02ec02ec
	.skip	0x3fffc
	.word	0x02ed02ed
	.skip	0x3fffc
	.word	0x02ee02ee
	.skip	0x3fffc
	.word	0x02ef02ef

	.skip	0x3fffc
	.word	0x02f002f0
	.skip	0x3fffc
	.word	0x02f102f1
	.skip	0x3fffc
	.word	0x02f202f2
	.skip	0x3fffc
	.word	0x02f302f3
	.skip	0x3fffc
	.word	0x02f402f4
	.skip	0x3fffc
	.word	0x02f502f5
	.skip	0x3fffc
	.word	0x02f602f6

	.skip	0x3fffc
	.word	0x02f702f7
	.skip	0x3fffc
	.word	0x02f802f8
	.skip	0x3fffc
	.word	0x02f902f9
	.skip	0x3fffc
	.word	0x02fa02fa
	.skip	0x3fffc
	.word	0x02fb02fb
	.skip	0x3fffc
	.word	0x02fc02fc
	.skip	0x3fffc
	.word	0x02fd02fd
	.skip	0x3fffc
	.word	0x02fe02fe
	.skip	0x3fffc
	.word	0x02ff02ff

	.skip	0x3fffc
	.word	0x03000300
	.skip	0x3fffc
	.word	0x03010301
	.skip	0x3fffc
	.word	0x03020302
	.skip	0x3fffc
	.word	0x03030303
	.skip	0x3fffc
	.word	0x03040304
	.skip	0x3fffc
	.word	0x03050305
	.skip	0x3fffc
	.word	0x03060306

	.skip	0x3fffc
	.word	0x03070307
	.skip	0x3fffc
	.word	0x03080308
	.skip	0x3fffc
	.word	0x03090309
	.skip	0x3fffc
	.word	0x030a030a
	.skip	0x3fffc
	.word	0x030b030b
	.skip	0x3fffc
	.word	0x030c030c
	.skip	0x3fffc
	.word	0x030d030d
	.skip	0x3fffc
	.word	0x030e030e
	.skip	0x3fffc
	.word	0x030f030f

	.skip	0x3fffc
	.word	0x03100310
	.skip	0x3fffc
	.word	0x03110311
	.skip	0x3fffc
	.word	0x03120312
	.skip	0x3fffc
	.word	0x03130313
	.skip	0x3fffc
	.word	0x03140314
	.skip	0x3fffc
	.word	0x03150315

	.skip	0x3fffc
	.word	0x03160316
	.skip	0x3fffc
	.word	0x03170317
	.skip	0x3fffc
	.word	0x03180318
	.skip	0x3fffc
	.word	0x03190319
	.skip	0x3fffc
	.word	0x031a031a
	.skip	0x3fffc
	.word	0x031b031b
	.skip	0x3fffc
	.word	0x031c031c
	.skip	0x3fffc
	.word	0x031d031d
	.skip	0x3fffc
	.word	0x031e031e
	.skip	0x3fffc
	.word	0x031f031f

	.skip	0x3fffc
	.word	0x03200320
	.skip	0x3fffc
	.word	0x03210321
	.skip	0x3fffc
	.word	0x03220322
	.skip	0x3fffc
	.word	0x03230323
	.skip	0x3fffc
	.word	0x03240324
	.skip	0x3fffc
	.word	0x03250325

	.skip	0x3fffc
	.word	0x03260326
	.skip	0x3fffc
	.word	0x03270327
	.skip	0x3fffc
	.word	0x03280328
	.skip	0x3fffc
	.word	0x03290329
	.skip	0x3fffc
	.word	0x032a032a
	.skip	0x3fffc
	.word	0x032b032b
	.skip	0x3fffc
	.word	0x032c032c
	.skip	0x3fffc
	.word	0x032d032d
	.skip	0x3fffc
	.word	0x032e032e
	.skip	0x3fffc
	.word	0x032f032f

	.skip	0x3fffc
	.word	0x03300330
	.skip	0x3fffc
	.word	0x03310331
	.skip	0x3fffc
	.word	0x03320332
	.skip	0x3fffc
	.word	0x03330333
	.skip	0x3fffc
	.word	0x03340334
	.skip	0x3fffc
	.word	0x03350335

	.skip	0x3fffc
	.word	0x03360336
	.skip	0x3fffc
	.word	0x03370337
	.skip	0x3fffc
	.word	0x03380338
	.skip	0x3fffc
	.word	0x03390339
	.skip	0x3fffc
	.word	0x033a033a
	.skip	0x3fffc
	.word	0x033b033b
	.skip	0x3fffc
	.word	0x033c033c
	.skip	0x3fffc
	.word	0x033d033d
	.skip	0x3fffc
	.word	0x033e033e
	.skip	0x3fffc
	.word	0x033f033f

	.skip	0x3fffc
	.word	0x03400340
	.skip	0x3fffc
	.word	0x03410341
	.skip	0x3fffc
	.word	0x03420342
	.skip	0x3fffc
	.word	0x03430343
	.skip	0x3fffc
	.word	0x03440344
	.skip	0x3fffc
	.word	0x03450345

	.skip	0x3fffc
	.word	0x03460346
	.skip	0x3fffc
	.word	0x03470347
	.skip	0x3fffc
	.word	0x03480348
	.skip	0x3fffc
	.word	0x03490349
	.skip	0x3fffc
	.word	0x034a034a
	.skip	0x3fffc
	.word	0x034b034b
	.skip	0x3fffc
	.word	0x034c034c
	.skip	0x3fffc
	.word	0x034d034d
	.skip	0x3fffc
	.word	0x034e034e
	.skip	0x3fffc
	.word	0x034f034f

	.skip	0x3fffc
	.word	0x03500350
	.skip	0x3fffc
	.word	0x03510351
	.skip	0x3fffc
	.word	0x03520352
	.skip	0x3fffc
	.word	0x03530353
	.skip	0x3fffc
	.word	0x03540354
	.skip	0x3fffc
	.word	0x03550355

	.skip	0x3fffc
	.word	0x03560356
	.skip	0x3fffc
	.word	0x03570357
	.skip	0x3fffc
	.word	0x03580358
	.skip	0x3fffc
	.word	0x03590359
	.skip	0x3fffc
	.word	0x035a035a
	.skip	0x3fffc
	.word	0x035b035b
	.skip	0x3fffc
	.word	0x035c035c
	.skip	0x3fffc
	.word	0x035d035d
	.skip	0x3fffc
	.word	0x035e035e
	.skip	0x3fffc
	.word	0x035f035f

	.skip	0x3fffc
	.word	0x03600360
	.skip	0x3fffc
	.word	0x03610361
	.skip	0x3fffc
	.word	0x03620362
	.skip	0x3fffc
	.word	0x03630363
	.skip	0x3fffc
	.word	0x03640364
	.skip	0x3fffc
	.word	0x03650365

	.skip	0x3fffc
	.word	0x03660366
	.skip	0x3fffc
	.word	0x03670367
	.skip	0x3fffc
	.word	0x03680368
	.skip	0x3fffc
	.word	0x03690369
	.skip	0x3fffc
	.word	0x036a036a
	.skip	0x3fffc
	.word	0x036b036b
	.skip	0x3fffc
	.word	0x036c036c
	.skip	0x3fffc
	.word	0x036d036d
	.skip	0x3fffc
	.word	0x036e036e
	.skip	0x3fffc
	.word	0x036f036f

	.skip	0x3fffc
	.word	0x03700370
	.skip	0x3fffc
	.word	0x03710371
	.skip	0x3fffc
	.word	0x03720372
	.skip	0x3fffc
	.word	0x03730373
	.skip	0x3fffc
	.word	0x03740374
	.skip	0x3fffc
	.word	0x03750375

	.skip	0x3fffc
	.word	0x03760376
	.skip	0x3fffc
	.word	0x03770377
	.skip	0x3fffc
	.word	0x03780378
	.skip	0x3fffc
	.word	0x03790379
	.skip	0x3fffc
	.word	0x037a037a
	.skip	0x3fffc
	.word	0x037b037b
	.skip	0x3fffc
	.word	0x037c037c
	.skip	0x3fffc
	.word	0x037d037d
	.skip	0x3fffc
	.word	0x037e037e
	.skip	0x3fffc
	.word	0x037f037f

	.skip	0x3fffc
	.word	0x03800380
	.skip	0x3fffc
	.word	0x03810381
	.skip	0x3fffc
	.word	0x03820382
	.skip	0x3fffc
	.word	0x03830383
	.skip	0x3fffc
	.word	0x03840384
	.skip	0x3fffc
	.word	0x03850385

	.skip	0x3fffc
	.word	0x03860386
	.skip	0x3fffc
	.word	0x03870387
	.skip	0x3fffc
	.word	0x03880388
	.skip	0x3fffc
	.word	0x03890389
	.skip	0x3fffc
	.word	0x038a038a
	.skip	0x3fffc
	.word	0x038b038b
	.skip	0x3fffc
	.word	0x038c038c
	.skip	0x3fffc
	.word	0x038d038d
	.skip	0x3fffc
	.word	0x038e038e
	.skip	0x3fffc
	.word	0x038f038f

	.skip	0x3fffc
	.word	0x03900390
	.skip	0x3fffc
	.word	0x03910391
	.skip	0x3fffc
	.word	0x03920392
	.skip	0x3fffc
	.word	0x03930393
	.skip	0x3fffc
	.word	0x03940394
	.skip	0x3fffc
	.word	0x03950395

	.skip	0x3fffc
	.word	0x03960396
	.skip	0x3fffc
	.word	0x03970397
	.skip	0x3fffc
	.word	0x03980398
	.skip	0x3fffc
	.word	0x03990399
	.skip	0x3fffc
	.word	0x039a039a
	.skip	0x3fffc
	.word	0x039b039b
	.skip	0x3fffc
	.word	0x039c039c
	.skip	0x3fffc
	.word	0x039d039d
	.skip	0x3fffc
	.word	0x039e039e
	.skip	0x3fffc
	.word	0x039f039f

	.skip	0x3fffc
	.word	0x03a003a0
	.skip	0x3fffc
	.word	0x03a103a1
	.skip	0x3fffc
	.word	0x03a203a2
	.skip	0x3fffc
	.word	0x03a303a3
	.skip	0x3fffc
	.word	0x03a403a4
	.skip	0x3fffc
	.word	0x03a503a5

	.skip	0x3fffc
	.word	0x03a603a6
	.skip	0x3fffc
	.word	0x03a703a7
	.skip	0x3fffc
	.word	0x03a803a8
	.skip	0x3fffc
	.word	0x03a903a9
	.skip	0x3fffc
	.word	0x03aa03aa
	.skip	0x3fffc
	.word	0x03ab03ab
	.skip	0x3fffc
	.word	0x03ac03ac
	.skip	0x3fffc
	.word	0x03ad03ad
	.skip	0x3fffc
	.word	0x03ae03ae
	.skip	0x3fffc
	.word	0x03af03af

	.skip	0x3fffc
	.word	0x03b003b0
	.skip	0x3fffc
	.word	0x03b103b1
	.skip	0x3fffc
	.word	0x03b203b2
	.skip	0x3fffc
	.word	0x03b303b3
	.skip	0x3fffc
	.word	0x03b403b4
	.skip	0x3fffc
	.word	0x03b503b5

	.skip	0x3fffc
	.word	0x03b603b6
	.skip	0x3fffc
	.word	0x03b703b7
	.skip	0x3fffc
	.word	0x03b803b8
	.skip	0x3fffc
	.word	0x03b903b9
	.skip	0x3fffc
	.word	0x03ba03ba
	.skip	0x3fffc
	.word	0x03bb03bb
	.skip	0x3fffc
	.word	0x03bc03bc
	.skip	0x3fffc
	.word	0x03bd03bd
	.skip	0x3fffc
	.word	0x03be03be
	.skip	0x3fffc
	.word	0x03bf03bf

	.skip	0x3fffc
	.word	0x03c003c0
	.skip	0x3fffc
	.word	0x03c103c1
	.skip	0x3fffc
	.word	0x03c203c2
	.skip	0x3fffc
	.word	0x03c303c3
	.skip	0x3fffc
	.word	0x03c403c4
	.skip	0x3fffc
	.word	0x03c503c5

	.skip	0x3fffc
	.word	0x03c603c6
	.skip	0x3fffc
	.word	0x03c703c7
	.skip	0x3fffc
	.word	0x03c803c8
	.skip	0x3fffc
	.word	0x03c903c9
	.skip	0x3fffc
	.word	0x03ca03ca
	.skip	0x3fffc
	.word	0x03cb03cb
	.skip	0x3fffc
	.word	0x03cc03cc
	.skip	0x3fffc
	.word	0x03cd03cd
	.skip	0x3fffc
	.word	0x03ce03ce
	.skip	0x3fffc
	.word	0x03cf03cf

	.skip	0x3fffc
	.word	0x03d003d0
	.skip	0x3fffc
	.word	0x03d103d1
	.skip	0x3fffc
	.word	0x03d203d2
	.skip	0x3fffc
	.word	0x03d303d3
	.skip	0x3fffc
	.word	0x03d403d4
	.skip	0x3fffc
	.word	0x03d503d5

	.skip	0x3fffc
	.word	0x03d603d6
	.skip	0x3fffc
	.word	0x03d703d7
	.skip	0x3fffc
	.word	0x03d803d8
	.skip	0x3fffc
	.word	0x03d903d9
	.skip	0x3fffc
	.word	0x03da03da
	.skip	0x3fffc
	.word	0x03db03db
	.skip	0x3fffc
	.word	0x03dc03dc
	.skip	0x3fffc
	.word	0x03dd03dd
	.skip	0x3fffc
	.word	0x03de03de
	.skip	0x3fffc
	.word	0x03df03df

	.skip	0x3fffc
	.word	0x03e003e0
	.skip	0x3fffc
	.word	0x03e103e1
	.skip	0x3fffc
	.word	0x03e203e2
	.skip	0x3fffc
	.word	0x03e303e3
	.skip	0x3fffc
	.word	0x03e403e4
	.skip	0x3fffc
	.word	0x03e503e5

	.skip	0x3fffc
	.word	0x03e603e6
	.skip	0x3fffc
	.word	0x03e703e7
	.skip	0x3fffc
	.word	0x03e803e8
	.skip	0x3fffc
	.word	0x03e903e9
	.skip	0x3fffc
	.word	0x03ea03ea
	.skip	0x3fffc
	.word	0x03eb03eb
	.skip	0x3fffc
	.word	0x03ec03ec
	.skip	0x3fffc
	.word	0x03ed03ed
	.skip	0x3fffc
	.word	0x03ee03ee
	.skip	0x3fffc
	.word	0x03ef03ef

	.skip	0x3fffc
	.word	0x03f003f0
	.skip	0x3fffc
	.word	0x03f103f1
	.skip	0x3fffc
	.word	0x03f203f2
	.skip	0x3fffc
	.word	0x03f303f3
	.skip	0x3fffc
	.word	0x03f403f4
	.skip	0x3fffc
	.word	0x03f503f5

	.skip	0x3fffc
	.word	0x03f603f6
	.skip	0x3fffc
	.word	0x03f703f7
	.skip	0x3fffc
	.word	0x03f803f8
	.skip	0x3fffc
	.word	0x03f903f9
	.skip	0x3fffc
	.word	0x03fa03fa
	.skip	0x3fffc
	.word	0x03fb03fb
	.skip	0x3fffc
	.word	0x03fc03fc
	.skip	0x3fffc
	.word	0x03fd03fd
	.skip	0x3fffc
	.word	0x03fe03fe
	.skip	0x3fffc
	.word	0x03ff03ff

.end
