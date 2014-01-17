/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: tso_n1_self_mod107.s
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
#define MAIN_BASE_DATA_ADDR     0x160000
#define MAIN_BASE_TEXT_ADDR     0x150000
#define MAIN_BASE_DATA_ADDR_RA  0x100160000
#define MAIN_BASE_TEXT_ADDR_RA  0x100150000

#define USER_PAGE_CUSTOM_MAP
#include "hboot.s"

SECTION .MAIN  TEXT_VA=0x150000, DATA_VA=0x160000

attr_text {
        Name = .MAIN,
        VA=MAIN_BASE_TEXT_ADDR,
        RA=MAIN_BASE_TEXT_ADDR_RA,
        PA=ra2pa(MAIN_BASE_TEXT_ADDR_RA,0),
part_0_ctx_nonzero_tsb_config_0,
        TTE_G=0, TTE_Context=PCONTEXT, TTE_V=1, TTE_Size=0, TTE_NFO=0,
        TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
        TTE_L=0, TTE_CP=1, TTE_CV=1, TTE_EP=1, TTE_E=0, TTE_P=0, TTE_W=1
        }
attr_data {
        Name = .MAIN,
        VA=MAIN_BASE_DATA_ADDR,
        RA=MAIN_BASE_DATA_ADDR_RA,
        PA=ra2pa(MAIN_BASE_DATA_ADDR_RA,0),
part_0_ctx_nonzero_tsb_config_0,
        TTE_G=0, TTE_Context=PCONTEXT, TTE_V=1, TTE_Size=0, TTE_NFO=0,
        TTE_IE=0, TTE_Soft2=0, TTE_Diag=0, TTE_Soft=0,
        TTE_L=0, TTE_CP=1, TTE_CV=1, TTE_E=0, TTE_P=0, TTE_W=1
        }

.text
.global main
main:

	setx 	label0, %l0,%o0
	setx 	label1, %l0,%o1
	setx 	label2, %l0,%o2
	setx 	label3, %l0,%o3
	setx 	label4, %l0,%o4
	setx 	label5, %l0,%o5
	setx 	label6, %l0,%o6
	setx 	label7, %l0,%o7
	setx	0x01000000, %l0, %i0	! nop
	setx	0xdeadbeef, %l0, %i1	! well, you know this one.
	setx 	0x20, %l0, %l2

label0a:
	ld	[%o0], %i2
	st	%i0, [%o0]		! store a nop to label0
	flush 	%o0
label0:
	ta	T_BAD_TRAP		! 
	ld	[%o1], %i2
	st	%i0, [%o1]		! store a nop to label1
	flush 	%o0			! 
	nop
label1:
	ta	T_BAD_TRAP		! 
	ld	[%o2], %i2
	st	%i0, [%o2] 		! etc.
	flush 	%o0			! 
	nop
	nop
label2:
	ta	T_BAD_TRAP		!
	ld	[%o3], %i2
	st	%i0, [%o3]
	flush 	%o0			!
	nop
	nop
	nop
label3:
	ta	T_BAD_TRAP		!
	ld	[%o4], %i2
	st	%i0, [%o4]		!
	flush 	%o0			!
	nop
	nop
	nop
	nop
label4:
	ta	T_BAD_TRAP		!
	ld	[%o5], %i2
	st	%i0, [%o5]		!
	flush 	%o0			!
	nop
	nop
	nop
	nop
	nop
label5:
	ta	T_BAD_TRAP		!
	ld	[%o6], %i2
	st	%i0, [%o6]		!
	flush 	%o0			!
	nop
	nop
	nop
	nop
	nop
	nop

label6:
	ta	T_BAD_TRAP		!
	ld	[%o7], %i2
	st	%i0, [%o7]		!
	flush 	%o0			!
	nop
	nop
	nop
	nop
	nop
	nop
	nop

label7:
	ta	T_BAD_TRAP		!
	ld	[%o0], %i2
	st	%i0, [%o0]
	flush 	%o0			!

	ld	[%o0], %i2
	ld	[%o1], %i2
	ld	[%o2], %i2
	ld	[%o3], %i2
	ld	[%o4], %i2
	ld	[%o5], %i2
	ld	[%o6], %i2
	ld	[%o7], %i2
	st	%i1, [%o0]		! now put some bad data
	st	%i1, [%o1]		!
	st	%i1, [%o2]		!
	st	%i1, [%o3]		!
	st	%i1, [%o4]		!
	st	%i1, [%o5]		!
	st	%i1, [%o6]		!
	st	%i1, [%o7]		!

	dec     %l2			! and loop again.
        brnz,pt %l2, label0a
        nop

normal_end:
        ta      T_GOOD_TRAP
bad_end:
        ta      T_BAD_TRAP


user_text_end:

/***********************************************************************
   Test case data start
 ***********************************************************************/
.data
user_data_start:
	.word 0x0
user_data_end:
