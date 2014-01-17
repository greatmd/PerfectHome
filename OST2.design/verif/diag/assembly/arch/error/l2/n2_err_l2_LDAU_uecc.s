/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: n2_err_l2_LDAU_uecc.s
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
#define MAIN_PAGE_HV_ALSO


#define  L2_ENTRY_PA        0xa000000000
#define  TEST_DATA1         0x5555555555555555
#define	 L2_ENTRY_PA0       0x2020000008
#define L2_ES_W1C_VALUE     0xc03ffff800000000

#include "hboot.s"
#include "asi_s.h"
#include "err_defines.h"

.text
.global	 main

main:


  ! Boot code does not provide TLB translation for IO address space
  ta    T_CHANGE_HPRIV

disable_l1_DCache:
  ldxa  [%g0] ASI_LSU_CONTROL, %l0
  ! Remove bit 2
  andn  %l0, 0x2, %l0
  stxa  %l0, [%g0] ASI_LSU_CONTROL


clear_l2_ESR:
  setx  L2_ES_W1C_VALUE, %l0, %l1
  setx  L2ES_PA0, %l6, %g1
  stx   %l1, [%g1]


set_L2_Directly_Mapped_Mode:
  setx  L2CS_PA0, %l6, %g1
  mov   0x2, %l0
  stx   %l0, [%g1]

store_to_L2:
  setx  TEST_DATA1, %l0, %g5

store_to_L2_way0:
  setx	0x202000aa00, %l0, %g2
  stx %g5, [%g2] 
  stx %g5, [%g2+8]
  membar #Sync

clr %l6
set 0x7, %l5
loop:
   inc %l6
   cmp %l6,%l5
   bne loop
   nop


L2_diag_load:
  setx  0x3ffff8, %l0, %l2      ! Mask for extracting [21:3]
  setx	L2_ENTRY_PA, %l0, %g4
  and   %g2, %l2, %g5
  or	%g5, %g4, %g5
  ldx	[%g5], %g6
  membar #Sync

! Flip two  bits
  xor	 %g6, 0x600, %g6
  stx	%g6, [%g5]
  membar #Sync

reading_back_0:
  setx  0x202000aa00, %l0, %g2
  ldx   [%g2], %l6
  membar #Sync  

compute_error:
  mov   0x1, %l1
  sllx  %l1, L2ES_LDAU, %l7
  sllx  %l1, L2ES_VEU, %l3
  or    %l7, %l3, %l7
  !mov   0x46, %l1                ! 7-bit Syndrome
  !sllx  %l1, 21, %l3             ! Syndrome for [127:96] at [27:21]
  !or    %l7, %l3, %l7
  !sllx  %g4, L2ES_TID, %l3       ! ID of thread that encountered error
  !or    %l7, %l3, %l7            ! %l7 has expected value
  membar #Sync


check_l2_ESR:
  setx  L2ES_PA0, %l6, %g1
  ldx   [%g1], %l4
  membar #Sync

! Not Checking SYND in this test
  set  0xffffffff, %l3
  andn   %l4, %l3, %l4
  cmp   %l7,  %l4
  bne test_fail
  nop
  nop


check_l2_EAR:
  setx  L2EA_PA0, %l6, %l3
  ldx   [%l3], %l4
  membar #Sync
  setx  0x202000aa00, %l0, %g2
  cmp %g2,%l4
  bne test_fail
  nop

reading_back_1: ! For MEU
  setx  0x202000aa00, %l0, %g2
  ldx   [%g2], %l6
  membar #Sync



enable_l1_DCache:
  ldxa  [%g0] ASI_LSU_CONTROL, %l0
  or    %l0, 0x2, %l0
  stxa  %l0, [%g0] ASI_LSU_CONTROL

compute_error_meu:
  mov   0x1, %l1
  sllx  %l1, L2ES_LDAU, %l7
  sllx  %l1, L2ES_VEU, %l3
  or    %l7, %l3, %l7
  sllx  %l1, L2ES_MEU, %l3
  or    %l7, %l3, %l7
  !mov   0x46, %l1                ! 7-bit Syndrome
  !sllx  %l1, 21, %l3             ! Syndrome for [127:96] at [27:21]
  !or    %l7, %l3, %l7
  !sllx  %g4, L2ES_TID, %l3       ! ID of thread that encountered error
  !or    %l7, %l3, %l7            ! %l7 has expected value
  membar #Sync


check_l2_ESR_meu:
  setx  L2ES_PA0, %l6, %g1
  ldx   [%g1], %l4
  membar #Sync

! Not Checking SYND in this test
  set  0xffffffff, %l3
  andn   %l4, %l3, %l4
  cmp   %l7,  %l4
  bne test_fail
  nop
  nop


check_l2_EAR_meu:
  setx  L2EA_PA0, %l6, %l3
  ldx   [%l3], %l4
  membar #Sync
  setx  0x202000aa00, %l0, %g2
  cmp %g2,%l4
  bne test_fail
  nop


  ba    test_pass
  nop



/*******************************************************
 * Exit code
 *******************************************************/

test_pass:
ta  T_GOOD_TRAP

test_fail:
ta  T_BAD_TRAP

