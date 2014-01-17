/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: allcores_allbanks_atomic.s
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
#define TEST_DATA 0x5555555555555555
#define L2_BANK0  0x3a000000
#define L2_BANK1  0x3a000040
#define L2_BANK2  0x3a000080
#define L2_BANK3  0x3a0000c0
#define L2_BANK4  0x3a000100
#define L2_BANK5  0x3a000140
#define L2_BANK6  0x3a000180
#define L2_BANK7  0x3a0001c0

#include "hboot.s"
#include "asi_s.h"

/************************************************************************
   Test case code start
 ************************************************************************/

.text
.global main

main:
	ta      T_CHANGE_HPRIV

!
! Thread 0 Start
!
thread_0:
	 ta      T_RD_THID
        setx    256, %g1, %l7
        umul    %o1, %l7, %l7
        setx    user_data_start, %g1, %g3
        add     %l7, %g3, %l7

        ! All threads executed same code, with different data areas



casa_bank0:
	setx	L2_BANK0, %g1, %g2
	setx	TEST_DATA, %g1, %l4
	setx	0xffffffffffffffff, %g1, %l0
	stx     %l4, [%g2]
	membar  #Sync
	casa	[%g2]ASI_PRIMARY, %l4, %l0
	cmp	%l0, %l4
	bne	test_failed
	nop
	setx	0xffffffff, %g1, %g4
	ld	[%g2], %l1
	cmp	%g4, %l1
	bne	test_failed
	nop
caxsa_Bank0:
	setx	0xffffffffffffffff, %g1, %l0
	casxa	[%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffffffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop



casa_bank1:
        setx    L2_BANK1, %g1, %g2
        setx    TEST_DATA, %g1, %l4
        setx    0xffffffffffffffff, %g1, %l0
        stx     %l4, [%g2]
        membar  #Sync
        casa    [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop
caxsa_Bank1:
        setx    0xffffffffffffffff, %g1, %l0
        casxa   [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffffffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop


casa_bank2:
        setx    L2_BANK2, %g1, %g2
        setx    TEST_DATA, %g1, %l4
        setx    0xffffffffffffffff, %g1, %l0
        stx     %l4, [%g2]
        membar  #Sync
        casa    [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop
caxsa_Bank2:
        setx    0xffffffffffffffff, %g1, %l0
        casxa   [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffffffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop


casa_bank3:
        setx    L2_BANK3, %g1, %g2
        setx    TEST_DATA, %g1, %l4
        setx    0xffffffffffffffff, %g1, %l0
        stx     %l4, [%g2]
        membar  #Sync
        casa    [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop
caxsa_Bank3:
        setx    0xffffffffffffffff, %g1, %l0
        casxa   [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffffffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop


casa_bank4:
        setx    L2_BANK4, %g1, %g2
        setx    TEST_DATA, %g1, %l4
        setx    0xffffffffffffffff, %g1, %l0
        stx     %l4, [%g2]
        membar  #Sync
        casa    [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop
caxsa_Bank4:
        setx    0xffffffffffffffff, %g1, %l0
        casxa   [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffffffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop


casa_bank5:
        setx    L2_BANK5, %g1, %g2
        setx    TEST_DATA, %g1, %l4
        setx    0xffffffffffffffff, %g1, %l0
        stx     %l4, [%g2]
        membar  #Sync
        casa    [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop
caxsa_Bank5:
        setx    0xffffffffffffffff, %g1, %l0
        casxa   [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffffffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop


casa_bank6:
        setx    L2_BANK6, %g1, %g2
        setx    TEST_DATA, %g1, %l4
        setx    0xffffffffffffffff, %g1, %l0
        stx     %l4, [%g2]
        membar  #Sync
        casa    [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop
caxsa_Bank6:
        setx    0xffffffffffffffff, %g1, %l0
        casxa   [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffffffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop


casa_bank7:
        setx    L2_BANK7, %g1, %g2
        setx    TEST_DATA, %g1, %l4
        setx    0xffffffffffffffff, %g1, %l0
        stx     %l4, [%g2]
        membar  #Sync
        casa    [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop
caxsa_Bank7:
        setx    0xffffffffffffffff, %g1, %l0
        casxa   [%g2]ASI_PRIMARY, %l4, %l0
        cmp     %l0, %l4
        bne     test_failed
        nop
        setx    0xffffffffffffffff, %g1, %g4
        ld      [%g2], %l1
        cmp     %g4, %l1
        bne     test_failed
        nop



test_passed:
	EXIT_GOOD

test_failed:
	EXIT_BAD


/************************************************************************
   Test case data start
 ************************************************************************/
.data
user_data_start:
	.xword 0x0000000000000000
	.xword 0x1111111111111111
	.xword 0x2222222222222222
	.xword 0x3333333333333333
	.xword 0x4444444444444444
	.xword 0x5555555555555555
	.xword 0x6666666666666666
	.xword 0x7777777777777777
	.xword 0x8888888888888888
	.xword 0x9999999999999999
	.xword 0xaaaaaaaaaaaaaaaa
	.xword 0xbbbbbbbbbbbbbbbb
	.xword 0xcccccccccccccccc
	.xword 0xdddddddddddddddd
	.xword 0xeeeeeeeeeeeeeeee
	.xword 0xffffffffffffffff
.end



