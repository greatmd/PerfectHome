/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: tso_n1_cross_mod6_bug6372.s
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
#define MAIN_BASE_TEXT_ADDR  	0x150000
#define MAIN_BASE_DATA_ADDR_RA	0x100160000
#define MAIN_BASE_TEXT_ADDR_RA	0x100150000

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
        TTE_L=0, TTE_CP=1, TTE_CV=1, TTE_E=0, TTE_EP=1, TTE_P=0, TTE_W=1
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
	th_fork(th_main,%l0)


! this thread modfifies the code
!===============================
th_main_0:
	setx    user_data_start, %l0, %o0
	setx    0x100, %l0, %i0

loop0:	
	ld	[%o0], %l0		! 
	ld	[%o0+ 0x10], %l0	! 
	ld	[%o0+ 0x20], %l0	! 
	ld	[%o0+ 0x30], %l0	! 
	add	%o0, 0x40, %o0		!
	dec	%i0
	brnz	%i0, loop0		!
	nop				!

	ba	good_end

th_main_1:
        setx    0x100, %l0, %i0

	setx    user_data_start, %l0, %o0
	ba	loop1
	nop
	.align 0x20

loop1:
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0

        dec     %i0
        brnz    %i0, loop1              !
        nop                             !

!	ba	loop1
!	nop

	ba	good_end
	nop

th_main_2:
	setx    user_data_start, %l0, %o0

        setx    0x100, %l0, %i0
loop2:
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0
	ld	[%o0], %l0

!	ba	loop2
!	nop

        dec     %i0
        brnz    %i0, loop2 
        nop           

	ba	good_end
th_main_3:
	setx    loop1, %l0, %o0
	or	%o0, 0x18, %o0
	add	%o0, 0x20, %o1

        setx    0x100, %l0, %i0
loop3:
	ld	[%o0], %l0
	ld	[%o1], %l0
	ld	[%o0], %l0
	ld	[%o1], %l0
	ld	[%o0], %l0
	ld	[%o1], %l0
	ld	[%o0], %l0
	ld	[%o1], %l0
	ld	[%o0], %l0
	ld	[%o1], %l0
	ld	[%o0], %l0
	ld	[%o1], %l0
	ld	[%o0], %l0
	ld	[%o1], %l0
	ld	[%o0], %l0
	ld	[%o1], %l0
	ld	[%o0], %l0
	ld	[%o1], %l0

        dec     %i0
        brnz    %i0, loop3
        nop

!	ba	loop3
!	nop

	ba	good_end
	nop
 
good_end:
        ta      T_GOOD_TRAP
bad_end:
        ta      T_BAD_TRAP
noop:
	nop

!------------------------------------------------------------------------------

.data
.global user_data_start
user_data_start:
	.skip 0x8000
        
.end

