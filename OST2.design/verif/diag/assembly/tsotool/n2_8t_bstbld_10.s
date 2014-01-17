/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: n2_8t_bstbld_10.s
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
#define N_CPUS  8
#define REGION_MAPPED_SIZE_RTL 8192
#define REGION_SIZE_RTL (8 * 1024)
#define RESULTS_BUF_SIZE_PER_CPU_RTL 1024
#define PRIVATE_DATA_AREA_PER_CPU_RTL 64

#define ALIGN_PAGE_8K .align 8192
#define ALIGN_PAGE_64K .align 65536
#define ALIGN_PAGE_512K .align 524288
#define ALIGN_PAGE_4M .align 4194304
#define USER_PAGE_CUSTOM_MAP

SECTION .MY_HYP_SEC TEXT_VA = 0x1100150000
attr_text {
        Name=.MY_HYP_SEC,
        hypervisor
	}
.text
.global intr0x60_custom_trap
intr0x60_custom_trap:
	ldxa	[%g0] 0x72, %g2;
	ldxa	[%g0] 0x74, %g1;	
	retry;

.global intr0x190_custom_trap
intr0x190_custom_trap:

.global intr0x190_custom_trap
intr0x190_custom_trap:

#ifdef SJM
! programming the JBI - not quite rrugho
!=====================
!setx 0x0000000006040012, %g1, %g2
!setx 0x8503000010, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000100, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000000, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000400, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000108, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000101, %g1, %g2
!setx 0x9800000008, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000408, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000110, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000202, %g1, %g2
!setx 0x9800000010, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000410, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000118, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000303, %g1, %g2
!setx 0x9800000018, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000418, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000120, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000404, %g1, %g2
!setx 0x9800000020, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000420, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000128, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000505, %g1, %g2
!setx 0x9800000028, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000428, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000130, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000606, %g1, %g2
!setx 0x9800000030, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000430, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000138, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000707, %g1, %g2
!setx 0x9800000038, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000438, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000140, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000808, %g1, %g2
!setx 0x9800000040, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000440, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000148, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000909, %g1, %g2
!setx 0x9800000048, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000448, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000150, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000a0a, %g1, %g2
!setx 0x9800000050, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000450, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000158, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000b0b, %g1, %g2
!setx 0x9800000058, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000458, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000160, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000c0c, %g1, %g2
!setx 0x9800000060, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000460, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000168, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000d0d, %g1, %g2
!setx 0x9800000068, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000468, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000170, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000e0e, %g1, %g2
!setx 0x9800000070, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000470, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000178, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000f0f, %g1, %g2
!setx 0x9800000078, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000478, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x000000000000007f, %g1, %g2
!setx 0x8503000008, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000001010, %g1, %g2
!setx 0x9800000080, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000480, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000001111, %g1, %g2
!setx 0x9800000088, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000488, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9300000c00, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9300000e20, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9300000e28, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9300000e38, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000008, %g1, %g2
!setx 0x8503000018, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000828, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x8503000028, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000001, %g1, %g2
!setx 0x8503000020, %g1, %g3
!stx %g2, [%g3]
!!=====================

/***********************************************************************
  Disable L2 Cache Visibility Port
 ***********************************************************************/

setx 0x0000000000000000, %g1, %g2
setx 0x9800001800, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001820, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001828, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001830, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001838, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001840, %g1, %g3
stx %g2, [%g3]
!=====================

/***********************************************************************
  Disable IOBridge Visibility Ports
 ***********************************************************************/

setx 0x0000000000000000, %g1, %g2
setx 0x9800001000, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002000, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002008, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002100, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002140, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002160, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002180, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x98000021a0, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002148, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002168, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002188, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x98000021a8, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002150, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002170, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002190, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x98000021b0, %g1, %g3
stx %g2, [%g3]
!=====================

/***********************************************************************
 Configure jbi controller
 ***********************************************************************/

setx 0x03fb303e00000001, %g1, %g2
setx 0x8000000000, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x000000007033fe0f, %g1, %g2
setx 0x8000000008, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000003fc0000000, %g1, %g2
setx 0x80000100a0, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x00000000fe0003ff, %g1, %g2
setx 0x8000004100, %g1, %g3
stx %g2, [%g3]
!=====================

/***********************************************************************
 IOSYNC cycles to start sjm
 ***********************************************************************/

setx 0xdeadbeefdeadbeef, %g1, %g2
setx 0xcf00beef00, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0xdeadbeefdeadbeef, %g1, %g2
setx 0xef00beef00, %g1, %g3
stx %g2, [%g3]

!=============================
done;

#else
#ifdef  DC_ON_OFF
	
	and	%i0, 0x1, %i0
	brz	%i0, on
	nop

        mov     0xd, %i0
	ba	finish_dc_on_off
        stxa    %l0, [%g0] 0x45         /* turn D-cache off */
on:        
        mov     0xf, %i0
        stxa    %i0, [%g0] 0x45         /* turn D-cache back on */

finish_dc_on_off:
	done

#else
	stxa	%i0, [%g0] 0x73;	
	done;
#endif
#endif
!============================================================================

#define ENABLE_T0_Fp_exception_ieee_754_0x21
#define ENABLE_T0_Fp_exception_other_0x22
#define ENABLE_T0_Fp_disabled_0x20
#define ENABLE_T0_Illegal_instruction_0x10
#define ENABLE_T1_Illegal_instruction_0x10
#define ENABLE_HT0_Illegal_instruction_0x10
#define ENABLE_HT1_Illegal_instruction_0x10
#define ENABLE_T0_Clean_Window_0x24
#define MAIN_PAGE_NUCLEUS_ALSO
#define MAIN_PAGE_HV_ALSO
#define MAIN_PAGE_VA_IS_RA_ALSO




#define H_T0_Trap_Instruction_0
#define My_T0_Trap_Instruction_0	\
	ta      0x90;			\
	done;

#define H_HT0_HTrap_Instruction_0 intr0x190_custom_trap
#ifdef SJM
#define My_HT0_HTrap_Instruction_0 \
	setx intr0x190_custom_trap, %g1, %g2; \
	jmp %g2; nop
#else
#define My_HT0_HTrap_Instruction_0      \
	stxa    %i0, [%g0] 0x73;        \
	done;
#endif

#define H_HT0_Interrupt_0x60 intr0x60_custom_trap
#define My_HT0_Interrupt_0x60   \
        ldxa    [%g0] 0x72, %g2;        \
        ldxa    [%g0] 0x74, %g1;        \
        retry;
#define H_HT0_Trap_Instruction_5
#define My_HT0_Trap_Instruction_5   \
        ldxa [%g0 + %g0]0x45, %g1;     \
		membar #Sync;  \
        xor  %g1, 19, %g1;   \
        stxa %g1, [%g0 + %g0]0x45;  \
		wrpr %g0, 0x200, %pstate;
        done;

#ifndef THREAD_COUNT
#define THREAD_COUNT 8
#endif

#ifndef THREAD_STRIDE
#define THREAD_STRIDE 1
#endif
#define SKIP_TRAPCHECK
! force ta T_RD_THID to return thread%8 (aka 0-7)
#define PORTABLE_CORE
#include "hboot.s"


!try later:
!	stxa    %l6, [$8] (0x22 | ($2 & 0x9)) ! ASI is randomly set
!===========
define(BST_INIT, `
	add     $6, ($7 & 0xfff0), $8	! 4-byte align the offset
	stxa    %l6, [$8] 0x22		! ASI is randomly set
')

!try later:
!ldda    [$8] (0x22 | ($2 & 0x9)), %l6 ! ASI is randomly set
!===========
define(BLD_INIT, `
        add     $6, ($7 & 0xfff0), $8 	! 4-byte align the offset
        ldda    [$8] 0x22, %l6 		! ASI is randomly set
')

define(CHECK_PROC_ID,`
check_cpu_id: 

	wr	%g0, 0x4, %fprs         /* make sure fef is 1 */
	mov 	THREAD_STRIDE, %l2
	th_fork(thread,%l0)

thread_0:
#ifdef SJM
	ta 	0x30
#endif
	mov 	0, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
	
thread_1:
	mov 	1, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_2:
	mov 	2, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_3:
	mov 	3, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_4:
	mov 	4, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_5:
	mov 	5, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_6:
	mov 	6, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_7:
	mov 	7, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_8:
	mov 	8, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_9:
	mov 	9, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_10:
	mov 	10, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_11:
	mov 	11, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_12:
	mov 	12, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_13:
	mov 	13, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_14:
	mov 	14, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_15:
	mov 	15, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_16:
	mov 	16, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_17:
	mov 	17, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_18:
	mov 	18, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_19:
	mov 	19, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_20:
	mov 	20, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_21:
	mov 	21, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_22:
	mov 	22, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_23:
	mov 	23, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_24:
	mov 	24, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_25:
	mov 	25, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_26:
	mov 	26, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
	
thread_27:
	mov 	27, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_28:
	mov 	28, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_29:
	mov 	29, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_30:
	mov 	30, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_31:
	mov 	31, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop

thread_32:
    mov     32, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_33:
    mov     33, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_34:
    mov     34, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_35:
    mov     35, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_36:
    mov     36, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_37:
    mov     37, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_38:
    mov     38, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_39:
    mov     39, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_40:
    mov     40, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_41:
    mov     41, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_42:
    mov     42, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_43:
    mov     43, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_44:
    mov     44, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_45:
    mov     45, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_46:
    mov     46, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_47:
    mov     47, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_48:
    mov     48, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_49:
    mov     49, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_50:
    mov     50, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_51:
    mov     51, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_52:
    mov     52, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_53:
    mov     53, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_54:
    mov     54, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_55:
    mov     55, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_56:
    mov     56, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_57:
    mov     57, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_58:
    mov     58, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_59:
    mov     59, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_60:
    mov     60, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_61:
    mov     61, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_62:
    mov     62, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_63:
    mov     63, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

entry_point:
#ifdef RTGPRIV
	ta	T_CHANGE_PRIV
#endif
	
')
! --- Common Macro Definitions ---
!
! macros will be instantiated with these arguments
! macro_name(P#, rand#, my_cpu#, PA_val, VA_val, VA_reg, VA_offset, \
!            tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3)
!
! P# - Pid, just in case one needs unique number
! rand# - random number
! my_cpu# - CPU id
! PA_val - shared memory physisal address value
! VA_val - shared memory virtual address value
! VA_reg - register containing VA region base address
! VA_offset - VA_reg + VA_offset will give correct VA address value
! tmp_reg0-tmp_reg3 - integer registers for arbitrary use within the macro
!                     tmp_reg0 & tmp_reg1 are even-odd register pair
!
! VA_val may be incorrect since VA will be determined at compile time by assembler
! and may not available at diag generation time, but VA_reg+VA_offset is valid
!
! ex. SAMPLE(1, 1249, 0, 0x43400100, 0x100, %i1, 0x100, %l6, %l7, %o5, %l3)
!
! Sample macro 1:
!  load unsigned byte from the given shared addr into tmp_reg1
!  the given shared addr is 4-byte aligned and we will randomly
!  pick one byte from the 4 bytes.
! 
! define(SAMPLE, `
!        ldub   [$6+$7+($2 mod 4)], $8
! ')
!
! Can also use C-like macro definition format.
!
! Sample macro 2:
!   issue an "ldda" instruction to the randomly picked shared location
!   (aligned it to 16-byte boundary first) with a random ASI value among
!   0x22, 0x23, 0x2a, and 0x2b (utilizing the provided "rand" value).
!
! #define BLD_INIT(Pid, rand, my_cpu, PA_val, \
!                 VA_val, VA_reg, VA_offset, \
!                 tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
!   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
!   ldda [tmp_reg2] (0x22 | (rand & 0x9)), tmp_reg0;
!
! ---

! Macro NOPTRAIN
! Train of NOPs

#define NOPTRAIN(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
		nop;\
		nop;\
		nop;\
		nop;


! Macro STTRAIN4
! Train of total 4 of UW stores.
! Note: doesn't use shared addresses

#define STTRAIN4(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set 5120, tmp_reg1; \
        add %i0, tmp_reg1, tmp_reg1; \
        set rand, tmp_reg2; \
        stw tmp_reg2, [tmp_reg1]; \
        stw tmp_reg2, [tmp_reg1+4]; \
        stw tmp_reg2, [tmp_reg1+8]; \
        stw tmp_reg2, [tmp_reg1+16];

! Macro STTRAIN8
! Train of total 8 of UW stores 

#define STTRAIN8(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set 5120, tmp_reg1; \
        add %i0, tmp_reg1, tmp_reg1; \
        set rand, tmp_reg2; \
        add tmp_reg2, rand % 4096, tmp_reg3; \
        stw tmp_reg2, [tmp_reg1]; \
        stw tmp_reg2, [tmp_reg1+4]; \
        stw tmp_reg2, [tmp_reg1+8]; \
        stw tmp_reg2, [tmp_reg1+12]; \
        stw tmp_reg3, [tmp_reg1+4]; \
        stw tmp_reg3, [tmp_reg1+12]; \
        stw tmp_reg3, [tmp_reg1]; \
        stw tmp_reg3, [tmp_reg1+8];
 
! Macro LDTRAIN4
! Train of total 4 of UW Loads
! Note the values of those loads inside the macro will not be analized,
! even though the accesses are [possibly] made to the shared locations

#define LDTRAIN4(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        ld [%i0], tmp_reg1; \
        ld [%i1+4], tmp_reg1; \
        ld [%i2+8], tmp_reg1; \
        ld [%i3+12], tmp_reg1;

! Macro LDTRAIN8

#define LDTRAIN8(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        ld [%i3], tmp_reg1; \
        ld [%i2+4], tmp_reg1; \
        ld [%i1+8], tmp_reg2; \
        ld [%i0+12], tmp_reg2; \
        ld [%i3+4], tmp_reg3; \
        ld [%i2], tmp_reg3; \
        ld [%i1+12], tmp_reg4; \
        ld [%i0+8], tmp_reg4;

! Macro PREFETCHTRAIN4

#define PREFETCHTRAIN4(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        prefetch [%i0+4], 0; \
        prefetch [%i1+12], 0; \
        prefetch [%i2+8], 0; \
        prefetch [%i3], 0;

! Macro PREFETCHTRAIN8

#define PREFETCHTRAIN8(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        prefetch [%i3], 0; \
        prefetch [%i2+4], 0; \
        prefetch [%i1+8], 0; \
        prefetch [%i0+12], 0; \
        prefetch [%i3+4], 1; \
        prefetch [%i2], 1; \
        prefetch [%i1+12], 1; \
        prefetch [%i0+8], 1;

! Macro CASTRAIN4
! This is an interesting macro that will probably create the write congessions
! access to the shared locations (offsets from bases have to be adjusted)
! the values of the locations are not changed, so it should not affect analysis

#define CASTRAIN4(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set 128, tmp_reg1;\
        add %i0, tmp_reg1, tmp_reg1;\
        set 256, tmp_reg2;\
        add %i1, tmp_reg2, tmp_reg2;\
        ld [tmp_reg1], tmp_reg3;\
        ld [tmp_reg2], tmp_reg4;\
        cas [tmp_reg1], tmp_reg3, tmp_reg3;\
        cas [tmp_reg1], tmp_reg3, tmp_reg3;\
        cas [tmp_reg2], tmp_reg4, tmp_reg4;\
        cas [tmp_reg2], tmp_reg4, tmp_reg4;

! CASTRAIN8
! yet another flavor of cas train theme that actually always use shared locations
! given by the specified instance arguments for the first 4 cases
! and then follows then with another 4 to a randomized offset

#define CASTRAIN8(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
  add VA_reg, VA_offset, tmp_reg1;\
  add VA_reg, (rand&0x0ffc), tmp_reg2;\
  ld [tmp_reg1], tmp_reg3;\
  cas [tmp_reg1], tmp_reg3, tmp_reg3;\
  cas [tmp_reg1], tmp_reg3, tmp_reg3;\
  cas [tmp_reg1], tmp_reg3, tmp_reg3;\
  cas [tmp_reg1], tmp_reg3, tmp_reg3;\
  ld  [tmp_reg2], tmp_reg4;\
  cas [tmp_reg2], tmp_reg4, tmp_reg4;\
  cas [tmp_reg2], tmp_reg4, tmp_reg4;\
  cas [tmp_reg2], tmp_reg4, tmp_reg4;\
  cas [tmp_reg2], tmp_reg4, tmp_reg4;

! Macro ST_BR_ANLD_CAS
! this is meant to reproduce NG6025
! the scenario is the anulled load in the delay slot of the branch is 
! not wiped completely, which creates false RAW hazard, and the following cas
! is getting screwed
! WARNING: there is a store to the %i0+128, which can potentially be a shared 
! location. When using this macro, make sure that the vicinity of offset 128 in
! region 0 is not used

#define ST_BR_ANLD_CAS(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set 128, tmp_reg1;\
        add %i0, tmp_reg1, tmp_reg1;\
        set rand, tmp_reg3;\
        stw tmp_reg3, [tmp_reg1];\
        ba,a 1;\
        cas [tmp_reg1], tmp_reg3, tmp_reg4;

#define ASI_BLOCK(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
        setx 0x060, tmp_reg1, tmp_reg2; \
        stxa %g0, [tmp_reg2] 0x38;

! Macro SELF_MODIFY
! do a read-unmodify-write at address pc + random[0..0x80]
! this is targetted to catch bugs due to sharing/modification
! of data between D$ and I$. (e.g. Niagara1, Bug #6372)
! 1. 0x80 chosen arbitrarily, is another number better
! 2. should we include an iflush ?
! 3. WT.MACRO.SELF_MODIFY should be given a small non-0 weight by default
! 4. Possible variation: a macro which only does a load
!    from the instruction stream instead of a load-store. 
!    (Niagara1 bug #6372 did not involve stores to instruction
!    stream, just sharing of unmodified data between I$ and D$.)
! 5. this macro needs text segment to be writable. On system runs,
!    this is achieved by using a special map file for the linker.
! - sgh, 25 may 04

#define SELF_MODIFY(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
	rd    %pc, tmp_reg0; \
	ld    [ tmp_reg0 + (rand & 0x7c)], tmp_reg1; \
	st    tmp_reg1, [ tmp_reg0 + (rand & 0x7c)] 

#define ASI_BLOCK(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
        setx 0x060, tmp_reg1, tmp_reg2; \
        stxa %g0, [tmp_reg2] 0x38;


#define ASI_BLOCK_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
        setx 0x8559e06ff33bad10, tmp_reg1, tmp_reg2; \
        stxa %g0, [tmp_reg2] 0x80;
	
#define PREFETCH_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        setx 0x8559e06ff33bad10, tmp_reg1, tmp_reg2; \
        prefetch [tmp_reg2], 0; \
        prefetch [tmp_reg2+4], 1; \
        prefetch [tmp_reg2+8], 2; \
        prefetch [tmp_reg2+12], 3; \
        prefetch [tmp_reg2+4], 4; \
        prefetch [tmp_reg2], 5; \
        prefetch [tmp_reg2+12], 6; \
        prefetch [tmp_reg2+8], 7;

#define LOAD_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        setx 0x8559e06ff33bad10, tmp_reg1, tmp_reg2; \
        ld [tmp_reg2], tmp_reg1; \
        ld [tmp_reg2+4], tmp_reg1; \
        ld [tmp_reg2+8], tmp_reg1; \
        ld [tmp_reg2+12], tmp_reg1;



#define STORE_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        setx 0x8559e06ff33bad10, tmp_reg2, tmp_reg1; \
        set rand, tmp_reg2; \
        add tmp_reg2, rand % 4096, tmp_reg3; \
        stw tmp_reg2, [tmp_reg1]; \
        stw tmp_reg2, [tmp_reg1+4]; \
        stw tmp_reg2, [tmp_reg1+8]; \
        stw tmp_reg2, [tmp_reg1+12]; \
        stw tmp_reg3, [tmp_reg1+4]; \
        stw tmp_reg3, [tmp_reg1+12]; \
        stw tmp_reg3, [tmp_reg1]; \
        stw tmp_reg3, [tmp_reg1+8];	

#define CAS_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        setx 0x8559e06ff33bad10, tmp_reg3, tmp_reg1; \
        setx 0x8559e06ff33bad10, tmp_reg3, tmp_reg2; \
        add tmp_reg2, rand % 4096, tmp_reg3; \
        cas [tmp_reg1], tmp_reg3, tmp_reg3;\
        cas [tmp_reg2], tmp_reg4, tmp_reg4;

#define IDC_FLIP(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        ta 0xb5; \
		ta T_CHANGE_NONHPRIV;

! this macro produce ldda/stda to 
! ASI_BLOCK_AS_IF_USER_PRIMARY            0x16
! ASI_BLOCK_AS_IF_USER_SECONDARY          0x17
! ASI_BLOCK_AS_IF_USER_PRIMARY_LITTLE     0x1e
! ASI_BLOCK_AS_IF_USER_SECONDARY_LITTLE   0x1f
!! hardcode for now since illegal asi not working in RS
#define BLD_16(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   ldda [tmp_reg3]0x16, tmp_reg0;
#define BLD_17(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   ldda [tmp_reg3]0x17, tmp_reg0;
#define BLD_1e(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   ldda [tmp_reg3]0x1e, tmp_reg0;
#define BLD_1f(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   ldda [tmp_reg3]0x1f, tmp_reg0;

#define BST_16(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   stda tmp_reg0, [tmp_reg3]0x16;
#define BST_17(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   stda tmp_reg0, [tmp_reg3]0x17;
#define BST_1e(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   stda tmp_reg0, [tmp_reg3]0x1e;
#define BST_1f(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   stda tmp_reg0, [tmp_reg3]0x1f;

#define BLD_INIT_2(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ldda [tmp_reg3] (0x27 | (rand & 0xf)), tmp_reg0;
#define BST_INIT_2(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   stda tmp_reg0, [tmp_reg3] (0x27 | (rand & 0xf));
#define BLD_INIT_E(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ldda [tmp_reg3] (0xe2 | (rand & 0xb)), tmp_reg0;
#define BST_INIT_E(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   stda tmp_reg0, [tmp_reg3] (0xe2 | (rand & 0xb));
#define PREFETCHA(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0x00ff), tmp_reg3; \
   prefetch [%i1], (rand & 0x1f); \
   prefetch [%i1 + ((rand >> 5) & 0x1f)], ((rand >> 5) & 0x1f); \
   prefetcha [%i1]((rand >> 5) & 0x1f), (0x0 | ((rand >> 5) & 0x1f));
#define STBYTE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        add  VA_reg, (VA_offset & 0xff00), tmp_reg1; \
        set rand, tmp_reg2; \
        stb tmp_reg2, [tmp_reg1+(rand & 0x5f)];
#define LDBYTE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        add  VA_reg, (VA_offset & 0xff00), tmp_reg1; \
        ldub [tmp_reg1+(rand & 0x5f)], tmp_reg2;
#define STBYTE1(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        add  VA_reg, (VA_offset & 0xff00), tmp_reg1;\
		set 5200, tmp_reg2; \
		add tmp_reg2, tmp_reg1, tmp_reg1; \
		set rand, tmp_reg2; \
		stb tmp_reg2, [tmp_reg1+(rand & 0x5f)];
#define STINT(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set rand, tmp_reg1; \
        stha  tmp_reg1,[%g0+%g0](0x73); \
        stda tmp_reg1, [%g0+%g0](0x73);
define(EN_INTERRUPTS,`
nop
')

define(DIS_INTERRUPTS,`
nop
')

define(CHECK_DISPATCH_STATUS,`
nop
')

define(CHECK_RECEIVE_STATUS,`
nop
')

define(WRITE_INTR_DATA_REGS,`
nop
')

define(INTR_SET_DISPATCH_VECTOR,`
add      %g0, $3, $4
sllx     $4, 8,  $5      ! DEST ID
add      %g0, $2, $4      ! VECTOR NUMBER
or       $5, $4, $5
mov      %i0, $4
mov      $5, %i0
ta       0x30
mov      $4, %i0
')

define(DSPCH_INTERRUPT,`
nop
')

#define REGION0_ALIAS1_O 0x0
#define REGION1_ALIAS1_O 0x2000
#define REGION2_ALIAS1_O 0x4000
#define REGION3_ALIAS1_O 0x6000
#define REGION4_ALIAS1_O 0x8000
#define REGION5_ALIAS1_O 0xa000
#define REGION6_ALIAS1_O 0xc000
#define REGION7_ALIAS1_O 0xe000
#define REPLACEMENT0_ALIAS1_O 0x10000
#define REGION0_ALIAS0_O 0x20000
#define REGION1_ALIAS0_O 0x22000
#define REGION2_ALIAS0_O 0x24000
#define REGION3_ALIAS0_O 0x26000
#define REGION4_ALIAS0_O 0x28000
#define REGION5_ALIAS0_O 0x2a000
#define REGION6_ALIAS0_O 0x2c000
#define REGION7_ALIAS0_O 0x2e000
#define REPLACEMENT0_ALIAS0_O 0x30000


#define USER_PAGE_CUSTOM_MAP
SECTION .MAIN TEXT_VA=0x1000000
attr_text {
	Name = .MAIN,
	VA=0x1000000,
	RA=0x130000000,
	PA=ra2pa(0x130000000,0),
part_0_ctx_nonzero_tsb_config_1,
 TTE_EP=1,
	TTE_G=1,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=0
	}

attr_text {
	Name = .MAIN,
	VA=0x1000000,
	RA=0x130000000,
	PA=ra2pa(0x130000000,0),
part_0_ctx_nonzero_tsb_config_0,
 TTE_EP=1,
	TTE_G=1,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

SECTION tsotool_unshared_data DATA_VA=0x21400000
attr_data {
	Name = tsotool_unshared_data,
	VA=0x21400000,
	RA=0x21400000,
	PA=ra2pa(0x21400000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=1,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region0_alias1_4 DATA_VA=0x6000000
attr_data {
	Name = region0_alias1_4,
	VA=0x6000000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias1_4 DATA_VA=0x6002000
attr_data {
	Name = region1_alias1_4,
	VA=0x6002000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias1_4 DATA_VA=0x6004000
attr_data {
	Name = region2_alias1_4,
	VA=0x6004000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias1_4 DATA_VA=0x6006000
attr_data {
	Name = region3_alias1_4,
	VA=0x6006000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias1_4 DATA_VA=0x6008000
attr_data {
	Name = region4_alias1_4,
	VA=0x6008000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias1_4 DATA_VA=0x600a000
attr_data {
	Name = region5_alias1_4,
	VA=0x600a000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias1_4 DATA_VA=0x600c000
attr_data {
	Name = region6_alias1_4,
	VA=0x600c000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias1_4 DATA_VA=0x600e000
attr_data {
	Name = region7_alias1_4,
	VA=0x600e000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias1_4 DATA_VA=0x6010000
attr_data {
	Name = replacement0_alias1_4,
	VA=0x6010000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias1_4 DATA_VA=0x6012000
attr_data {
	Name = replacement1_alias1_4,
	VA=0x6012000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias1_4 DATA_VA=0x6014000
attr_data {
	Name = replacement2_alias1_4,
	VA=0x6014000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias1_4 DATA_VA=0x6016000
attr_data {
	Name = replacement3_alias1_4,
	VA=0x6016000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias1_4 DATA_VA=0x6018000
attr_data {
	Name = replacement4_alias1_4,
	VA=0x6018000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias1_4 DATA_VA=0x601a000
attr_data {
	Name = replacement5_alias1_4,
	VA=0x601a000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias1_4 DATA_VA=0x601c000
attr_data {
	Name = replacement6_alias1_4,
	VA=0x601c000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias1_4 DATA_VA=0x601e000
attr_data {
	Name = replacement7_alias1_4,
	VA=0x601e000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias0 DATA_VA=0x6020000
attr_data {
	Name = region0_alias0,
	VA=0x6020000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region1_alias0 DATA_VA=0x6022000
attr_data {
	Name = region1_alias0,
	VA=0x6022000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region2_alias0 DATA_VA=0x6024000
attr_data {
	Name = region2_alias0,
	VA=0x6024000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region3_alias0 DATA_VA=0x6026000
attr_data {
	Name = region3_alias0,
	VA=0x6026000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region4_alias0 DATA_VA=0x6028000
attr_data {
	Name = region4_alias0,
	VA=0x6028000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region5_alias0 DATA_VA=0x602a000
attr_data {
	Name = region5_alias0,
	VA=0x602a000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region6_alias0 DATA_VA=0x602c000
attr_data {
	Name = region6_alias0,
	VA=0x602c000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region7_alias0 DATA_VA=0x602e000
attr_data {
	Name = region7_alias0,
	VA=0x602e000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement0_alias0 DATA_VA=0x6030000
attr_data {
	Name = replacement0_alias0,
	VA=0x6030000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement1_alias0 DATA_VA=0x6032000
attr_data {
	Name = replacement1_alias0,
	VA=0x6032000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement2_alias0 DATA_VA=0x6034000
attr_data {
	Name = replacement2_alias0,
	VA=0x6034000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement3_alias0 DATA_VA=0x6036000
attr_data {
	Name = replacement3_alias0,
	VA=0x6036000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement4_alias0 DATA_VA=0x6038000
attr_data {
	Name = replacement4_alias0,
	VA=0x6038000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement5_alias0 DATA_VA=0x603a000
attr_data {
	Name = replacement5_alias0,
	VA=0x603a000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement6_alias0 DATA_VA=0x603c000
attr_data {
	Name = replacement6_alias0,
	VA=0x603c000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement7_alias0 DATA_VA=0x603e000
attr_data {
	Name = replacement7_alias0,
	VA=0x603e000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION non_fault_area_4 DATA_VA=0x0
attr_data {
	Name = non_fault_area_4,
	VA=0x0,
	RA=0x47002000,
	PA=ra2pa(0x47002000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=1,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=1,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias1_8 DATA_VA=0x6000000
attr_data {
	Name = region0_alias1_8,
	VA=0x6000000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias1_8 DATA_VA=0x6002000
attr_data {
	Name = region1_alias1_8,
	VA=0x6002000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias1_8 DATA_VA=0x6004000
attr_data {
	Name = region2_alias1_8,
	VA=0x6004000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias1_8 DATA_VA=0x6006000
attr_data {
	Name = region3_alias1_8,
	VA=0x6006000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias1_8 DATA_VA=0x6008000
attr_data {
	Name = region4_alias1_8,
	VA=0x6008000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias1_8 DATA_VA=0x600a000
attr_data {
	Name = region5_alias1_8,
	VA=0x600a000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias1_8 DATA_VA=0x600c000
attr_data {
	Name = region6_alias1_8,
	VA=0x600c000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias1_8 DATA_VA=0x600e000
attr_data {
	Name = region7_alias1_8,
	VA=0x600e000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias1_8 DATA_VA=0x6010000
attr_data {
	Name = replacement0_alias1_8,
	VA=0x6010000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias1_8 DATA_VA=0x6012000
attr_data {
	Name = replacement1_alias1_8,
	VA=0x6012000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias1_8 DATA_VA=0x6014000
attr_data {
	Name = replacement2_alias1_8,
	VA=0x6014000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias1_8 DATA_VA=0x6016000
attr_data {
	Name = replacement3_alias1_8,
	VA=0x6016000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias1_8 DATA_VA=0x6018000
attr_data {
	Name = replacement4_alias1_8,
	VA=0x6018000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias1_8 DATA_VA=0x601a000
attr_data {
	Name = replacement5_alias1_8,
	VA=0x601a000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias1_8 DATA_VA=0x601c000
attr_data {
	Name = replacement6_alias1_8,
	VA=0x601c000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias1_8 DATA_VA=0x601e000
attr_data {
	Name = replacement7_alias1_8,
	VA=0x601e000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias0_8 DATA_VA=0x6020000
attr_data {
	Name = region0_alias0_8,
	VA=0x6020000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias0_8 DATA_VA=0x6022000
attr_data {
	Name = region1_alias0_8,
	VA=0x6022000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias0_8 DATA_VA=0x6024000
attr_data {
	Name = region2_alias0_8,
	VA=0x6024000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias0_8 DATA_VA=0x6026000
attr_data {
	Name = region3_alias0_8,
	VA=0x6026000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias0_8 DATA_VA=0x6028000
attr_data {
	Name = region4_alias0_8,
	VA=0x6028000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias0_8 DATA_VA=0x602a000
attr_data {
	Name = region5_alias0_8,
	VA=0x602a000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias0_8 DATA_VA=0x602c000
attr_data {
	Name = region6_alias0_8,
	VA=0x602c000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias0_8 DATA_VA=0x602e000
attr_data {
	Name = region7_alias0_8,
	VA=0x602e000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias0_8 DATA_VA=0x6030000
attr_data {
	Name = replacement0_alias0_8,
	VA=0x6030000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias0_8 DATA_VA=0x6032000
attr_data {
	Name = replacement1_alias0_8,
	VA=0x6032000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias0_8 DATA_VA=0x6034000
attr_data {
	Name = replacement2_alias0_8,
	VA=0x6034000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias0_8 DATA_VA=0x6036000
attr_data {
	Name = replacement3_alias0_8,
	VA=0x6036000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias0_8 DATA_VA=0x6038000
attr_data {
	Name = replacement4_alias0_8,
	VA=0x6038000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias0_8 DATA_VA=0x603a000
attr_data {
	Name = replacement5_alias0_8,
	VA=0x603a000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias0_8 DATA_VA=0x603c000
attr_data {
	Name = replacement6_alias0_8,
	VA=0x603c000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias0_8 DATA_VA=0x603e000
attr_data {
	Name = replacement7_alias0_8,
	VA=0x603e000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION non_fault_area_8 DATA_VA=0x0
attr_data {
	Name = non_fault_area_8,
	VA=0x0,
	RA=0x47002000,
	PA=ra2pa(0x47002000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=SCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=1,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=1,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias1_0 DATA_VA=0x6000000
attr_data {
	Name = region0_alias1_0,
	VA=0x6000000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias1_0 DATA_VA=0x6002000
attr_data {
	Name = region1_alias1_0,
	VA=0x6002000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias1_0 DATA_VA=0x6004000
attr_data {
	Name = region2_alias1_0,
	VA=0x6004000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias1_0 DATA_VA=0x6006000
attr_data {
	Name = region3_alias1_0,
	VA=0x6006000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias1_0 DATA_VA=0x6008000
attr_data {
	Name = region4_alias1_0,
	VA=0x6008000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias1_0 DATA_VA=0x600a000
attr_data {
	Name = region5_alias1_0,
	VA=0x600a000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias1_0 DATA_VA=0x600c000
attr_data {
	Name = region6_alias1_0,
	VA=0x600c000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias1_0 DATA_VA=0x600e000
attr_data {
	Name = region7_alias1_0,
	VA=0x600e000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias1_0 DATA_VA=0x6010000
attr_data {
	Name = replacement0_alias1_0,
	VA=0x6010000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias1_0 DATA_VA=0x6012000
attr_data {
	Name = replacement1_alias1_0,
	VA=0x6012000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias1_0 DATA_VA=0x6014000
attr_data {
	Name = replacement2_alias1_0,
	VA=0x6014000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias1_0 DATA_VA=0x6016000
attr_data {
	Name = replacement3_alias1_0,
	VA=0x6016000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias1_0 DATA_VA=0x6018000
attr_data {
	Name = replacement4_alias1_0,
	VA=0x6018000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias1_0 DATA_VA=0x601a000
attr_data {
	Name = replacement5_alias1_0,
	VA=0x601a000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias1_0 DATA_VA=0x601c000
attr_data {
	Name = replacement6_alias1_0,
	VA=0x601c000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias1_0 DATA_VA=0x601e000
attr_data {
	Name = replacement7_alias1_0,
	VA=0x601e000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias0_0 DATA_VA=0x6020000
attr_data {
	Name = region0_alias0_0,
	VA=0x6020000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias0_0 DATA_VA=0x6022000
attr_data {
	Name = region1_alias0_0,
	VA=0x6022000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias0_0 DATA_VA=0x6024000
attr_data {
	Name = region2_alias0_0,
	VA=0x6024000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias0_0 DATA_VA=0x6026000
attr_data {
	Name = region3_alias0_0,
	VA=0x6026000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias0_0 DATA_VA=0x6028000
attr_data {
	Name = region4_alias0_0,
	VA=0x6028000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias0_0 DATA_VA=0x602a000
attr_data {
	Name = region5_alias0_0,
	VA=0x602a000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias0_0 DATA_VA=0x602c000
attr_data {
	Name = region6_alias0_0,
	VA=0x602c000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias0_0 DATA_VA=0x602e000
attr_data {
	Name = region7_alias0_0,
	VA=0x602e000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias0_0 DATA_VA=0x6030000
attr_data {
	Name = replacement0_alias0_0,
	VA=0x6030000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias0_0 DATA_VA=0x6032000
attr_data {
	Name = replacement1_alias0_0,
	VA=0x6032000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias0_0 DATA_VA=0x6034000
attr_data {
	Name = replacement2_alias0_0,
	VA=0x6034000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias0_0 DATA_VA=0x6036000
attr_data {
	Name = replacement3_alias0_0,
	VA=0x6036000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias0_0 DATA_VA=0x6038000
attr_data {
	Name = replacement4_alias0_0,
	VA=0x6038000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias0_0 DATA_VA=0x603a000
attr_data {
	Name = replacement5_alias0_0,
	VA=0x603a000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias0_0 DATA_VA=0x603c000
attr_data {
	Name = replacement6_alias0_0,
	VA=0x603c000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias0_0 DATA_VA=0x603e000
attr_data {
	Name = replacement7_alias0_0,
	VA=0x603e000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024


!------------------------------------------------------------------------

SECTION tsotool_unshared_data
.global tsotool_unshared_data_start
.global res_buf_fp_p_0
.global res_buf_int_p_0
.global private_data_p0
.global stack_top_p0:
.global res_buf_fp_p_1
.global res_buf_int_p_1
.global private_data_p1
.global stack_top_p1:
.global res_buf_fp_p_2
.global res_buf_int_p_2
.global private_data_p2
.global stack_top_p2:
.global res_buf_fp_p_3
.global res_buf_int_p_3
.global private_data_p3
.global stack_top_p3:
.global res_buf_fp_p_4
.global res_buf_int_p_4
.global private_data_p4
.global stack_top_p4:
.global res_buf_fp_p_5
.global res_buf_int_p_5
.global private_data_p5
.global stack_top_p5:
.global res_buf_fp_p_6
.global res_buf_int_p_6
.global private_data_p6
.global stack_top_p6:
.global res_buf_fp_p_7
.global res_buf_int_p_7
.global private_data_p7
.global stack_top_p7:
.data
ALIGN_PAGE_512K
tsotool_unshared_data_start:
!-- label names of res_buf must match with extract_loads_m64.pl --
.align 64 ! for self bcopy()
res_buf_fp_p_0:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_0:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_1:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_1:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_2:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_2:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_3:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_3:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_4:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_4:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_5:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_5:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_6:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_6:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_7:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_7:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
private_data_p0:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p1:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p2:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p3:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p4:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p5:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p6:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p7:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
stack_top_p0:
	.skip 2048
stack_top_p1:
	.skip 2048
stack_top_p2:
	.skip 2048
stack_top_p3:
	.skip 2048
stack_top_p4:
	.skip 2048
stack_top_p5:
	.skip 2048
stack_top_p6:
	.skip 2048
stack_top_p7:
	.skip 2048
tsotool_unshared_data_end:
ALIGN_PAGE_512K
! to prevent VAs from running over from this section into shared regions

!------------------------------------------------------------------------

.seg "data"
! 8 shared memory regions, 1 alias(es) each (Alias 0 is normal VA)


SECTION region0_alias0
.global REGION0_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION0_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION0_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region1_alias0
.global REGION1_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION1_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION1_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region2_alias0
.global REGION2_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION2_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION2_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region3_alias0
.global REGION3_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION3_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION3_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region4_alias0
.global REGION4_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION4_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION4_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region5_alias0
.global REGION5_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION5_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION5_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region6_alias0
.global REGION6_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION6_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION6_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region7_alias0
.global REGION7_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION7_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION7_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement0_alias0
.global REPLACEMENT0_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT0_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT0_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement1_alias0
.global REPLACEMENT1_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT1_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT1_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement2_alias0
.global REPLACEMENT2_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT2_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT2_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement3_alias0
.global REPLACEMENT3_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT3_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT3_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement4_alias0
.global REPLACEMENT4_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT4_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT4_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement5_alias0
.global REPLACEMENT5_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT5_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT5_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement6_alias0
.global REPLACEMENT6_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT6_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT6_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement7_alias0
.global REPLACEMENT7_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT7_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT7_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL

SECTION .MAIN
.global local_trap_handlers_start
.global local_trap_handlers_end.global extern_interrupt_handler
.text
ALIGN_PAGE_8K
local_trap_handlers_start:

.align 64
extern_interrupt_handler:
stxa  %g0, [%g0]ASI_INTR_RECEIVE
retry

local_trap_handlers_end:

SECTION .MAIN
.global main
.global tsotool_text_start
.global irepl_text_start
.text
ba user_text_start
nop
ALIGN_PAGE_64K
irepl_text_start:
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
ALIGN_PAGE_64K
user_text_start:
ba main
nop
user_text_end:

ALIGN_PAGE_64K
tsotool_text_start:
main:
	mov     0, %o0
	mov     0, %o1
	CHECK_PROC_ID
! at this point, g1 should have CPU id (0, 1, 2, ...)
	set     REGION0_ALIAS0_START, %o0	! shared address 0
	set     REGION1_ALIAS0_START, %o1	! shared address 1
	cmp     %g1, 0x7
	be      setup_p7
	nop
	cmp     %g1, 0x6
	be      setup_p6
	nop
	cmp     %g1, 0x5
	be      setup_p5
	nop
	cmp     %g1, 0x4
	be      setup_p4
	nop
	cmp     %g1, 0x3
	be      setup_p3
	nop
	cmp     %g1, 0x2
	be      setup_p2
	nop
	cmp     %g1, 0x1
	be      setup_p1
	nop
	cmp     %g1, 0x0
	be      setup_p0
	nop
	EXIT_BAD   ! Should never reach here
	nop

setup_p0:
	setx    stack_top_p0, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_0, %g1, %o4
	setx    private_data_p0, %g1, %o5
	setx    func0, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p1:
	setx    stack_top_p1, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_1, %g1, %o4
	setx    private_data_p1, %g1, %o5
	setx    func1, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p2:
	setx    stack_top_p2, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_2, %g1, %o4
	setx    private_data_p2, %g1, %o5
	setx    func2, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p3:
	setx    stack_top_p3, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_3, %g1, %o4
	setx    private_data_p3, %g1, %o5
	setx    func3, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p4:
	setx    stack_top_p4, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_4, %g1, %o4
	setx    private_data_p4, %g1, %o5
	setx    func4, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p5:
	setx    stack_top_p5, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_5, %g1, %o4
	setx    private_data_p5, %g1, %o5
	setx    func5, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p6:
	setx    stack_top_p6, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_6, %g1, %o4
	setx    private_data_p6, %g1, %o5
	setx    func6, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p7:
	setx    stack_top_p7, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_7, %g1, %o4
	setx    private_data_p7, %g1, %o5
	setx    func7, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop
#define    NO_REAL_CPUS_MINUS_1    7

!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func0:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l6
or    %l6, %lo(0xdeadbee0), %l6
stw   %l6, [%i5]
sethi %hi(0xdeadbee1), %l6
or    %l6, %lo(0xdeadbee1), %l6
stw   %l6, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x00deade1), %l6
or    %l6, %lo(0x00deade1), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1), %l4
or    %l4, %lo(0x1), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x3f800001), %l6
or    %l6, %lo(0x3f800001), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x34000000), %l6
or    %l6, %lo(0x34000000), %l6
stw %l6, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x3f5a^4
sethi %hi(0x3f5a), %l0
or    %l0, %lo(0x3f5a), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES0: ! Test instruction sequence for ISTREAM 0 begins

P1: !_REPLACEMENT [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_0:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+32], %l3
st %l3, [%i3+32]
add %i3, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P2: !_ST [33] (maybe <- 0x3f800001) (FP)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P3: !_LD [8] (FP)
ld [%i1 + 0], %f0
! 1 addresses covered

P4: !_REPLACEMENT [3] (Int) (Branch target of P360)
sethi %hi(0x2000), %l3
ld [%i3+16], %l7
st %l7, [%i3+16]
add %i3, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
ba P5
nop

TARGET360:
ba RET360
nop


P5: !_REPLACEMENT [1] (Int)
sethi %hi(0x2000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P6: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET6
nop
RET6:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P7: !_BST [9] (maybe <- 0x3f800002) (FP) (Branch target of P671)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P8
nop

TARGET671:
ba RET671
nop


P8: !_MEMBAR (FP)
membar #StoreLoad

P9: !_ST [7] (maybe <- 0x1) (Int)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

P10: !_MEMBAR (FP)

P11: !_BST [9] (maybe <- 0x3f800004) (FP) (Branch target of P573)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P12
nop

TARGET573:
ba RET573
nop


P12: !_MEMBAR (FP) (Branch target of P515)
membar #StoreLoad
ba P13
nop

TARGET515:
ba RET515
nop


P13: !_IDC_FLIP [16] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(13, 4234, 0, 0x44800010, 0x10, %i3, 0x10, %l6, %l7, %o5, %l3)

P14: !_MEMBAR (FP) (Branch target of P471)
ba P15
nop

TARGET471:
ba RET471
nop


P15: !_BST [17] (maybe <- 0x3f800006) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P16: !_MEMBAR (FP)
membar #StoreLoad

P17: !_LD [32] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 256], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P18: !_ST [1] (maybe <- 0x3f800007) (FP) (Branch target of P480)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]
ba P19
nop

TARGET480:
ba RET480
nop


P19: !_REPLACEMENT [3] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+16], %o5
st %o5, [%i3+16]
add %i3, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]

P20: !_MEMBAR (FP)

P21: !_BSTC [30] (maybe <- 0x3f800008) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P22: !_MEMBAR (FP)
membar #StoreLoad

P23: !_REPLACEMENT [29] (Int) (Branch target of P442)
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
ba P24
nop

TARGET442:
ba RET442
nop


P24: !_REPLACEMENT [20] (Int)
sethi %hi(0x2000), %l7
ld [%i3+256], %l3
st %l3, [%i3+256]
add %i3, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]

P25: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET25
nop
RET25:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P26: !_BST [0] (maybe <- 0x3f800009) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET26
nop
RET26:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P27: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET27
nop
RET27:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P28: !_ST [10] (maybe <- 0x2) (Int)
stw   %l4, [%i1 + 64 ]
add   %l4, 1, %l4

P29: !_LD [1] (Int)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P30: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET30
nop
RET30:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P31: !_BST [3] (maybe <- 0x3f80000e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P32: !_MEMBAR (FP)

P33: !_BST [7] (maybe <- 0x3f800013) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P34: !_MEMBAR (FP)

P35: !_BST [2] (maybe <- 0x3f800014) (FP) (Branch target of P267)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P36
nop

TARGET267:
ba RET267
nop


P36: !_MEMBAR (FP)

P37: !_BSTC [32] (maybe <- 0x3f800019) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P38: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P39: !_REPLACEMENT [6] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+96], %o5
st %o5, [%i3+96]
add %i3, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

P40: !_IDC_FLIP [25] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(40, 28363, 0, 0x45800060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)

P41: !_ST [21] (maybe <- 0x3) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P42: !_MEMBAR (FP) (Branch target of P689)
ba P43
nop

TARGET689:
ba RET689
nop


P43: !_BST [28] (maybe <- 0x3f80001a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P44: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET44
nop
RET44:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P45: !_BST [33] (maybe <- 0x3f80001b) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P46: !_MEMBAR (FP) (Secondary ctx) (Branch target of P220)
membar #StoreLoad
ba P47
nop

TARGET220:
ba RET220
nop


P47: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1

P48: !_MEMBAR (FP)

P49: !_IDC_FLIP [29] (Int)
IDC_FLIP(49, 20272, 0, 0x46000040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

P50: !_MEMBAR (FP)

P51: !_BST [7] (maybe <- 0x3f80001c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P52: !_MEMBAR (FP)
membar #StoreLoad

P53: !_LD [14] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 64] %asi, %f2
! 1 addresses covered

P54: !_MEMBAR (FP) (Branch target of P315)
ba P55
nop

TARGET315:
ba RET315
nop


P55: !_BST [1] (maybe <- 0x3f80001d) (FP) (Branch target of P26)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P56
nop

TARGET26:
ba RET26
nop


P56: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET56
nop
RET56:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P57: !_LD [13] (FP) (CBR)
ld [%i3 + 32], %f3
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET57
nop
RET57:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P58: !_MEMBAR (FP)

P59: !_BST [24] (maybe <- 0x3f800022) (FP) (CBR) (Branch target of P208)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET59
nop
RET59:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P60
nop

TARGET208:
ba RET208
nop


P60: !_MEMBAR (FP) (Branch target of P44)
membar #StoreLoad
ba P61
nop

TARGET44:
ba RET44
nop


P61: !_REPLACEMENT [25] (Int) (Branch target of P469)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+96], %o5
st %o5, [%i3+96]
add %i3, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
ba P62
nop

TARGET469:
ba RET469
nop


P62: !_ST [23] (maybe <- 0x3f800024) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET62
nop
RET62:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P63: !_LD [16] (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 16], %f4
! 1 addresses covered

P64: !_REPLACEMENT [27] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+160], %o5
st %o5, [%i3+160]
add %i3, %l6, %l7
ld [%l7+160], %o5
st %o5, [%l7+160]
add %l7, %l6, %l7
ld [%l7+160], %o5
st %o5, [%l7+160]
add %l7, %l6, %l7
ld [%l7+160], %o5
st %o5, [%l7+160]
add %l7, %l6, %l7
ld [%l7+160], %o5
st %o5, [%l7+160]
add %l7, %l6, %l7
ld [%l7+160], %o5
st %o5, [%l7+160]
add %l7, %l6, %l7
ld [%l7+160], %o5
st %o5, [%l7+160]
add %l7, %l6, %l7
ld [%l7+160], %o5
st %o5, [%l7+160]

P65: !_REPLACEMENT [17] (Int) (Branch target of P113)
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
ba P66
nop

TARGET113:
ba RET113
nop


P66: !_IDC_FLIP [16] (Int) (CBR)
IDC_FLIP(66, 30868, 0, 0x44800010, 0x10, %i2, 0x10, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET66
nop
RET66:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P67: !_MEMBAR (FP)
membar #StoreLoad

P68: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

P69: !_MEMBAR (FP)

P70: !_BLD [14] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

P71: !_MEMBAR (FP) (Secondary ctx)

P72: !_ST [9] (maybe <- 0x3f800025) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 32 ]

P73: !_REPLACEMENT [18] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P74: !_ST [23] (maybe <- 0x4) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 32] %asi
add   %l4, 1, %l4

P75: !_LD [33] (FP) (Branch target of P557)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f7
! 1 addresses covered
ba P76
nop

TARGET557:
ba RET557
nop


P76: !_REPLACEMENT [3] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+16], %l6
st %l6, [%i3+16]
add %i3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET76
nop
RET76:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P77: !_REPLACEMENT [33] (Int)
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P78: !_REPLACEMENT [3] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l7
ld [%i3+16], %l3
st %l3, [%i3+16]
add %i3, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]

P79: !_LD [25] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 96] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P80: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET80
nop
RET80:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P81: !_BLD [26] (FP) (Branch target of P676)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f8
fmovd %f40, %f18
fmovs %f18, %f9
ba P82
nop

TARGET676:
ba RET676
nop


P82: !_MEMBAR (FP)

P83: !_BST [10] (maybe <- 0x3f800026) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P84: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET84
nop
RET84:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P85: !_ST [26] (maybe <- 0x5) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i2 + 128] %asi
add   %l4, 1, %l4

P86: !_MEMBAR (FP)

P87: !_BST [8] (maybe <- 0x3f800027) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P88: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET88
nop
RET88:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P89: !_IDC_FLIP [32] (Int) (Branch target of P159)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(89, 6838, 0, 0x46000100, 0x100, %i3, 0x100, %l6, %l7, %o5, %l3)
ba P90
nop

TARGET159:
ba RET159
nop


P90: !_MEMBAR (FP) (Branch target of P76)
ba P91
nop

TARGET76:
ba RET76
nop


P91: !_BSTC [10] (maybe <- 0x3f800029) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P92: !_MEMBAR (FP)
membar #StoreLoad

P93: !_BLD [24] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P94: !_MEMBAR (FP) (Secondary ctx)

P95: !_BLD [14] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f12

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET95
nop
RET95:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P96: !_MEMBAR (FP) (Branch target of P193)
ba P97
nop

TARGET193:
ba RET193
nop


P97: !_BST [25] (maybe <- 0x3f80002a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P98: !_MEMBAR (FP)
membar #StoreLoad

P99: !_LD [19] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P100: !_ST [9] (maybe <- 0x3f80002c) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i1 + 32 ] %asi

P101: !_MEMBAR (FP)
membar #StoreLoad

P102: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14

P103: !_MEMBAR (FP)

P104: !_ST [13] (maybe <- 0x3f80002d) (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 32 ]

P105: !_MEMBAR (FP)

P106: !_BST [26] (maybe <- 0x3f80002e) (FP) (Branch target of P488)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi
ba P107
nop

TARGET488:
ba RET488
nop


P107: !_MEMBAR (FP)
membar #StoreLoad

P108: !_ST [2] (maybe <- 0x3f800030) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 8 ]

P109: !_MEMBAR (FP) (Branch target of P142)
ba P110
nop

TARGET142:
ba RET142
nop


P110: !_BST [32] (maybe <- 0x3f800031) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P111: !_MEMBAR (FP)
membar #StoreLoad

P112: !_LD [24] (FP)
ld [%i2 + 64], %f15
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P113: !_ST [28] (maybe <- 0x3f800032) (FP) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET113
nop
RET113:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P114: !_MEMBAR (FP) (Branch target of P642)
membar #StoreLoad
ba P115
nop

TARGET642:
ba RET642
nop


P115: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 5 addresses covered
fmovs %f4, %f3
fmovd %f8, %f4

P116: !_MEMBAR (FP)

P117: !_REPLACEMENT [28] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P118: !_REPLACEMENT [4] (Int) (Branch target of P186)
sethi %hi(0x2000), %l3
ld [%i2+32], %l7
st %l7, [%i2+32]
add %i2, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
ba P119
nop

TARGET186:
ba RET186
nop


P119: !_LD [9] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i1 + 32] %asi, %f5
! 1 addresses covered

P120: !_MEMBAR (FP) (CBR) (Branch target of P526)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET120
nop
RET120:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P121
nop

TARGET526:
ba RET526
nop


P121: !_BST [19] (maybe <- 0x3f800033) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P122: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET122
nop
RET122:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P123: !_BLD [33] (FP) (Branch target of P641)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6
ba P124
nop

TARGET641:
ba RET641
nop


P124: !_MEMBAR (FP)

P125: !_LD [18] (FP) (Nucleus ctx) (Branch target of P136)
wr %g0, 0x4, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 128] %asi, %f7
! 1 addresses covered
ba P126
nop

TARGET136:
ba RET136
nop


P126: !_ST [11] (maybe <- 0x6) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P127: !_REPLACEMENT [31] (Int) (Branch target of P586)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+192], %l6
st %l6, [%i3+192]
add %i3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
ba P128
nop

TARGET586:
ba RET586
nop


P128: !_REPLACEMENT [9] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P129: !_REPLACEMENT [24] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P130: !_REPLACEMENT [3] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+16], %o5
st %o5, [%i2+16]
add %i2, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]

P131: !_ST [29] (maybe <- 0x7) (Int) (Secondary ctx) (Branch target of P198)
wr %g0, 0x81, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 64] %asi
add   %l4, 1, %l4
ba P132
nop

TARGET198:
ba RET198
nop


P132: !_MEMBAR (FP)

P133: !_BST [29] (maybe <- 0x3f800034) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET133
nop
RET133:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P134: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET134
nop
RET134:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P135: !_BST [33] (maybe <- 0x3f800035) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P136: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET136
nop
RET136:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P137: !_LD [28] (Int)
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P138: !_MEMBAR (FP) (Branch target of P682)
membar #StoreLoad
ba P139
nop

TARGET682:
ba RET682
nop


P139: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f40, %f10

P140: !_MEMBAR (FP)

P141: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11

P142: !_MEMBAR (FP) (CBR) (Branch target of P513)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET142
nop
RET142:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P143
nop

TARGET513:
ba RET513
nop


P143: !_REPLACEMENT [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+64], %l6
st %l6, [%i2+64]
add %i2, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P144: !_IDC_FLIP [1] (Int)
IDC_FLIP(144, 48, 0, 0x43000004, 0x4, %i0, 0x4, %l6, %l7, %o5, %l3)

P145: !_ST [28] (maybe <- 0x8) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P146: !_MEMBAR (FP)
membar #StoreLoad

P147: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f40, %f14

P148: !_MEMBAR (FP) (Branch target of P207)
ba P149
nop

TARGET207:
ba RET207
nop


P149: !_BST [20] (maybe <- 0x3f800036) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P150: !_MEMBAR (FP)
membar #StoreLoad

P151: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P152: !_MEMBAR (FP) (Branch target of P484)
ba P153
nop

TARGET484:
ba RET484
nop


P153: !_LD [29] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 64] %asi, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

P154: !_LD [1] (Int)
lduw [%i0 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P155: !_LD [25] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 96], %f0
! 1 addresses covered

P156: !_LD [23] (FP)
ld [%i2 + 32], %f1
! 1 addresses covered

P157: !_MEMBAR (FP) (Branch target of P566)
membar #StoreLoad
ba P158
nop

TARGET566:
ba RET566
nop


P158: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f2
fmovd %f34, %f4
fmovd %f36, %f18
fmovs %f18, %f5
fmovd %f40, %f6

P159: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET159
nop
RET159:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P160: !_REPLACEMENT [5] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+64], %l7
st %l7, [%i3+64]
add %i3, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P161: !_LD [32] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 256], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

P162: !_ST [4] (maybe <- 0x3f800037) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET162
nop
RET162:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P163: !_MEMBAR (FP) (Secondary ctx)

P164: !_BST [5] (maybe <- 0x3f800038) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P165: !_MEMBAR (FP) (Secondary ctx)

P166: !_BST [22] (maybe <- 0x3f80003a) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET166
nop
RET166:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P167: !_MEMBAR (FP)

P168: !_BST [17] (maybe <- 0x3f80003d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P169: !_MEMBAR (FP)
membar #StoreLoad

P170: !_LD [32] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 256] %asi, %f7
! 1 addresses covered

P171: !_IDC_FLIP [15] (Int) (CBR) (Branch target of P191)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(171, 30562, 0, 0x44000080, 0x80, %i2, 0x80, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET171
nop
RET171:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P172
nop

TARGET191:
ba RET191
nop


P172: !_LD [11] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i2 + 0] %asi, %f8
! 1 addresses covered

P173: !_MEMBAR (FP)

P174: !_BST [12] (maybe <- 0x3f80003e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P175: !_MEMBAR (FP)

P176: !_BST [16] (maybe <- 0x3f800041) (FP) (Branch target of P681)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P177
nop

TARGET681:
ba RET681
nop


P177: !_MEMBAR (FP) (Branch target of P95)
membar #StoreLoad
ba P178
nop

TARGET95:
ba RET95
nop


P178: !_PREFETCH [22] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 1

P179: !_MEMBAR (FP)
membar #StoreLoad

P180: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f18, %f11
fmovd %f36, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P181: !_MEMBAR (FP)

P182: !_REPLACEMENT [19] (Int) (Branch target of P554)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
ba P183
nop

TARGET554:
ba RET554
nop


P183: !_ST [6] (maybe <- 0x9) (Int)
stw   %l4, [%i0 + 96 ]
add   %l4, 1, %l4

P184: !_ST [7] (maybe <- 0xa) (Int)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

P185: !_MEMBAR (FP)
membar #StoreLoad

P186: !_BLD [19] (FP) (CBR) (Branch target of P292)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f14

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET186
nop
RET186:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P187
nop

TARGET292:
ba RET292
nop


P187: !_MEMBAR (FP) (Branch target of P657)
ba P188
nop

TARGET657:
ba RET657
nop


P188: !_REPLACEMENT [30] (Int)
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P189: !_REPLACEMENT [26] (Int)
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P190: !_IDC_FLIP [19] (Int) (CBR) (Branch target of P199)
IDC_FLIP(190, 24167, 0, 0x45000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET190
nop
RET190:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P191
nop

TARGET199:
ba RET199
nop


P191: !_ST [30] (maybe <- 0x3f800042) (FP) (CBR) (Branch target of P258)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET191
nop
RET191:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P192
nop

TARGET258:
ba RET258
nop


P192: !_REPLACEMENT [26] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+128], %l6
st %l6, [%i2+128]
add %i2, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P193: !_REPLACEMENT [14] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET193
nop
RET193:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P194: !_LD [23] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 32] %asi, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P195: !_MEMBAR (FP)
membar #StoreLoad

P196: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P197: !_MEMBAR (FP)

P198: !_BSTC [0] (maybe <- 0x3f800043) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET198
nop
RET198:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P199: !_MEMBAR (FP) (CBR) (Branch target of P299)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET199
nop
RET199:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P200
nop

TARGET299:
ba RET299
nop


P200: !_LD [0] (FP) (Branch target of P304)
ld [%i0 + 0], %f0
! 1 addresses covered
ba P201
nop

TARGET304:
ba RET304
nop


P201: !_MEMBAR (FP)

P202: !_BST [9] (maybe <- 0x3f800048) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P203: !_MEMBAR (FP)
membar #StoreLoad

P204: !_ST [15] (maybe <- 0xb) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P205: !_MEMBAR (FP)

P206: !_BST [19] (maybe <- 0x3f80004a) (FP) (Branch target of P556)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P207
nop

TARGET556:
ba RET556
nop


P207: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET207
nop
RET207:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P208: !_BST [12] (maybe <- 0x3f80004b) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET208
nop
RET208:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P209: !_MEMBAR (FP)
membar #StoreLoad

P210: !_ST [16] (maybe <- 0x3f80004e) (FP) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 16 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET210
nop
RET210:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P211: !_ST [24] (maybe <- 0x3f80004f) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

P212: !_MEMBAR (FP) (Secondary ctx)

P213: !_BST [32] (maybe <- 0x3f800050) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P214: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P215: !_REPLACEMENT [12] (Int) (Branch target of P359)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
ba P216
nop

TARGET359:
ba RET359
nop


P216: !_REPLACEMENT [13] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i2+32], %l7
st %l7, [%i2+32]
add %i2, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P217: !_MEMBAR (FP) (Branch target of P385)
membar #StoreLoad
ba P218
nop

TARGET385:
ba RET385
nop


P218: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1

P219: !_MEMBAR (FP)

P220: !_BLD [6] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET220
nop
RET220:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P221: !_MEMBAR (FP) (Branch target of P300)
ba P222
nop

TARGET300:
ba RET300
nop


P222: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f4
fmovd %f34, %f6
fmovd %f36, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P223: !_MEMBAR (FP) (Branch target of P531)
ba P224
nop

TARGET531:
ba RET531
nop


P224: !_LD [10] (Int)
lduw [%i1 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P225: !_REPLACEMENT [8] (Int)
sethi %hi(0x2000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P226: !_MEMBAR (FP)

P227: !_BST [4] (maybe <- 0x3f800051) (FP) (Branch target of P580)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P228
nop

TARGET580:
ba RET580
nop


P228: !_MEMBAR (FP)
membar #StoreLoad

P229: !_BLD [26] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovd %f40, %f10

P230: !_MEMBAR (FP)

P231: !_BST [31] (maybe <- 0x3f800056) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

P232: !_MEMBAR (FP) (CBR) (Branch target of P620)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET232
nop
RET232:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P233
nop

TARGET620:
ba RET620
nop


P233: !_REPLACEMENT [5] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+64], %l7
st %l7, [%i2+64]
add %i2, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P234: !_REPLACEMENT [2] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %o5
ld [%i2+8], %l6
st %l6, [%i2+8]
add %i2, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET234
nop
RET234:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P235: !_REPLACEMENT [7] (Int) (Branch target of P352)
sethi %hi(0x2000), %o5
ld [%i2+128], %l6
st %l6, [%i2+128]
add %i2, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
ba P236
nop

TARGET352:
ba RET352
nop


P236: !_REPLACEMENT [3] (Int)
sethi %hi(0x2000), %l7
ld [%i2+16], %l3
st %l3, [%i2+16]
add %i2, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]

P237: !_ST [29] (maybe <- 0xc) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P238: !_MEMBAR (FP)

P239: !_BSTC [14] (maybe <- 0x3f800057) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P240: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET240
nop
RET240:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P241: !_BST [19] (maybe <- 0x3f800058) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P242: !_MEMBAR (FP)
membar #StoreLoad

P243: !_BLD [26] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P244: !_MEMBAR (FP)

P245: !_BST [12] (maybe <- 0x3f800059) (FP) (Branch target of P450)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P246
nop

TARGET450:
ba RET450
nop


P246: !_MEMBAR (FP)
membar #StoreLoad

P247: !_LD [5] (FP)
ld [%i0 + 64], %f13
! 1 addresses covered

P248: !_LD [4] (Int)
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P249: !_MEMBAR (FP)

P250: !_BST [8] (maybe <- 0x3f80005c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P251: !_MEMBAR (FP)

P252: !_BSTC [0] (maybe <- 0x3f80005e) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P253: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P254: !_ST [6] (maybe <- 0x3f800063) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 96 ]

P255: !_ST [31] (maybe <- 0x3f800064) (FP) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 192 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET255
nop
RET255:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P256: !_REPLACEMENT [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P257: !_MEMBAR (FP) (Branch target of P88)
ba P258
nop

TARGET88:
ba RET88
nop


P258: !_BST [1] (maybe <- 0x3f800065) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET258
nop
RET258:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P259: !_MEMBAR (FP)

P260: !_BST [16] (maybe <- 0x3f80006a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P261: !_MEMBAR (FP)
membar #StoreLoad

P262: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P263: !_MEMBAR (FP)

P264: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 1 addresses covered

P265: !_MEMBAR (FP)

P266: !_FLUSHI [29] (Int) (Branch target of P374)
flush %g0 
ba P267
nop

TARGET374:
ba RET374
nop


P267: !_ST [22] (maybe <- 0xd) (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET267
nop
RET267:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P268: !_MEMBAR (FP)

P269: !_BSTC [1] (maybe <- 0x3f80006b) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P270: !_MEMBAR (FP)
membar #StoreLoad

P271: !_LD [16] (FP) (Branch target of P630)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 16], %f1
! 1 addresses covered
ba P272
nop

TARGET630:
ba RET630
nop


P272: !_ST [32] (maybe <- 0x3f800070) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 256 ]

P273: !_ST [32] (maybe <- 0x3f800071) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 256 ] %asi

P274: !_MEMBAR (FP)

P275: !_BST [21] (maybe <- 0x3f800072) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P276: !_MEMBAR (FP) (Branch target of P552)
membar #StoreLoad
ba P277
nop

TARGET552:
ba RET552
nop


P277: !_ST [7] (maybe <- 0xe) (Int)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

P278: !_LD [29] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i3 + 64] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

P279: !_LD [31] (FP)
ld [%i3 + 192], %f2
! 1 addresses covered

P280: !_REPLACEMENT [6] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+96], %o5
st %o5, [%i3+96]
add %i3, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET280
nop
RET280:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P281: !_REPLACEMENT [9] (Int)
sethi %hi(0x2000), %l6
ld [%i3+32], %o5
st %o5, [%i3+32]
add %i3, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

P282: !_REPLACEMENT [11] (Int)
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P283: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P284: !_BLD [32] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P285: !_MEMBAR (FP) (Secondary ctx)

P286: !_PREFETCH [15] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 128] %asi, 1

P287: !_ST [32] (maybe <- 0xf) (Int) (LE) (Branch target of P120)
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l3, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
stwa   %o5, [%i2 + 256] %asi
add   %l4, 1, %l4
ba P288
nop

TARGET120:
ba RET120
nop


P288: !_LD [28] (FP)
ld [%i2 + 0], %f4
! 1 addresses covered

P289: !_REPLACEMENT [12] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P290: !_MEMBAR (FP)

P291: !_BSTC [3] (maybe <- 0x3f800075) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET291
nop
RET291:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P292: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET292
nop
RET292:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P293: !_IDC_FLIP [9] (Int)
IDC_FLIP(293, 1091, 0, 0x43800020, 0x20, %i1, 0x20, %l6, %l7, %o5, %l3)

P294: !_REPLACEMENT [17] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+96], %o5
st %o5, [%i2+96]
add %i2, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET294
nop
RET294:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P295: !_REPLACEMENT [11] (Int) (Secondary ctx) (Branch target of P210)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
ba P296
nop

TARGET210:
ba RET210
nop


P296: !_ST [27] (maybe <- 0x10) (Int) (Secondary ctx) (Branch target of P701)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 160] %asi
add   %l4, 1, %l4
ba P297
nop

TARGET701:
ba RET701
nop


P297: !_MEMBAR (FP) (Secondary ctx)

P298: !_BST [15] (maybe <- 0x3f80007a) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P299: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET299
nop
RET299:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P300: !_REPLACEMENT [28] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET300
nop
RET300:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P301: !_MEMBAR (FP)

P302: !_BST [31] (maybe <- 0x3f80007b) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 192 ] %asi

P303: !_MEMBAR (FP) (Branch target of P57)
membar #StoreLoad
ba P304
nop

TARGET57:
ba RET57
nop


P304: !_ST [20] (maybe <- 0x11) (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 256 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET304
nop
RET304:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P305: !_LD [1] (Int)
lduw [%i0 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P306: !_LD [10] (FP) (CBR)
ld [%i1 + 64], %f5
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET306
nop
RET306:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P307: !_REPLACEMENT [20] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+256], %o5
st %o5, [%i2+256]
add %i2, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

P308: !_LD [15] (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 128], %f6
! 1 addresses covered

P309: !_MEMBAR (FP)
membar #StoreLoad

P310: !_BLD [2] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f18, %f9
fmovd %f36, %f10
fmovd %f40, %f18
fmovs %f18, %f11

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET310
nop
RET310:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P311: !_MEMBAR (FP)

P312: !_REPLACEMENT [16] (Int)
sethi %hi(0x2000), %l6
ld [%i2+16], %o5
st %o5, [%i2+16]
add %i2, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]

P313: !_LD [15] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P314: !_MEMBAR (FP)
membar #StoreLoad

P315: !_BLD [1] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f12
fmovd %f34, %f14
fmovd %f36, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET315
nop
RET315:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P316: !_MEMBAR (FP)

P317: !_ST [21] (maybe <- 0x12) (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET317
nop
RET317:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P318: !_LD [8] (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i1 + 0] %asi, %f1
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET318
nop
RET318:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P319: !_REPLACEMENT [13] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P320: !_ST [33] (maybe <- 0x3f80007c) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P321: !_LD [0] (Int)
lduw [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P322: !_MEMBAR (FP)
membar #StoreLoad

P323: !_BLD [13] (FP) (Branch target of P626)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f40, %f4
ba P324
nop

TARGET626:
ba RET626
nop


P324: !_MEMBAR (FP) (Branch target of P660)
ba P325
nop

TARGET660:
ba RET660
nop


P325: !_PREFETCH [14] (Int)
prefetch [%i3 + 64], 1

P326: !_REPLACEMENT [25] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+96], %o5
st %o5, [%i2+96]
add %i2, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

P327: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P328: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P329: !_BLD [0] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f18, %f7
fmovd %f36, %f8
fmovd %f40, %f18
fmovs %f18, %f9

P330: !_MEMBAR (FP) (Secondary ctx)

P331: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10

P332: !_MEMBAR (FP)

P333: !_IDC_FLIP [25] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(333, 18798, 0, 0x45800060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)

P334: !_MEMBAR (FP)
membar #StoreLoad

P335: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f18, %f13
fmovd %f36, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P336: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET336
nop
RET336:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P337: !_REPLACEMENT [15] (Int) (Branch target of P653)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
ba P338
nop

TARGET653:
ba RET653
nop


P338: !_REPLACEMENT [30] (Int)
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P339: !_MEMBAR (FP)
membar #StoreLoad

P340: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P341: !_MEMBAR (FP)

P342: !_REPLACEMENT [32] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET342
nop
RET342:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P343: !_MEMBAR (FP) (Branch target of P561)
ba P344
nop

TARGET561:
ba RET561
nop


P344: !_BST [2] (maybe <- 0x3f80007d) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P345: !_MEMBAR (FP)

P346: !_BST [23] (maybe <- 0x3f800082) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P347: !_MEMBAR (FP) (Branch target of P190)
membar #StoreLoad
ba P348
nop

TARGET190:
ba RET190
nop


P348: !_REPLACEMENT [30] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P349: !_MEMBAR (FP) (Secondary ctx) (Branch target of P538)
membar #StoreLoad
ba P350
nop

TARGET538:
ba RET538
nop


P350: !_BLD [29] (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET350
nop
RET350:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P351: !_MEMBAR (FP) (Secondary ctx)

P352: !_REPLACEMENT [24] (Int) (CBR) (Branch target of P133)
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET352
nop
RET352:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P353
nop

TARGET133:
ba RET133
nop


P353: !_LD [33] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2

P354: !_REPLACEMENT [6] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET354
nop
RET354:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P355: !_REPLACEMENT [23] (Int) (Branch target of P350)
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
ba P356
nop

TARGET350:
ba RET350
nop


P356: !_LD [17] (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 96], %f4
! 1 addresses covered

P357: !_REPLACEMENT [1] (Int)
sethi %hi(0x2000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P358: !_IDC_FLIP [14] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(358, 3736, 0, 0x44000040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET358
nop
RET358:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P359: !_IDC_FLIP [29] (Int) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(359, 32433, 0, 0x46000040, 0x40, %i2, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET359
nop
RET359:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P360: !_REPLACEMENT [25] (Int) (CBR) (Branch target of P698)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+96], %l3
st %l3, [%i3+96]
add %i3, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET360
nop
RET360:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P361
nop

TARGET698:
ba RET698
nop


P361: !_LD [8] (Int) (Branch target of P571)
lduw [%i1 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
ba P362
nop

TARGET571:
ba RET571
nop


P362: !_MEMBAR (FP)
membar #StoreLoad

P363: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

P364: !_MEMBAR (FP)

P365: !_LD [15] (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 128], %f6
! 1 addresses covered

P366: !_MEMBAR (FP) (Secondary ctx)

P367: !_BST [9] (maybe <- 0x3f800085) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P368: !_MEMBAR (FP) (Secondary ctx)

P369: !_BST [29] (maybe <- 0x3f800087) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET369
nop
RET369:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P370: !_MEMBAR (FP)
membar #StoreLoad

P371: !_ST [22] (maybe <- 0x3f800088) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P372: !_REPLACEMENT [6] (Int) (Secondary ctx) (Branch target of P584)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+96], %l3
st %l3, [%i3+96]
add %i3, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
ba P373
nop

TARGET584:
ba RET584
nop


P373: !_LD [6] (Int) (CBR)
lduw [%i0 + 96], %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET373
nop
RET373:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P374: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET374
nop
RET374:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P375: !_BSTC [31] (maybe <- 0x3f800089) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 192 ] %asi

P376: !_MEMBAR (FP)
membar #StoreLoad

P377: !_ST [33] (maybe <- 0x3f80008a) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P378: !_LD [24] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 64], %f7
! 1 addresses covered

P379: !_REPLACEMENT [25] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+96], %l6
st %l6, [%i3+96]
add %i3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

P380: !_REPLACEMENT [25] (Int)
sethi %hi(0x2000), %l7
ld [%i3+96], %l3
st %l3, [%i3+96]
add %i3, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

P381: !_MEMBAR (FP) (Branch target of P358)
membar #StoreLoad
ba P382
nop

TARGET358:
ba RET358
nop


P382: !_BLD [25] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f8
fmovd %f40, %f18
fmovs %f18, %f9

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET382
nop
RET382:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P383: !_MEMBAR (FP)

P384: !_REPLACEMENT [23] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P385: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET385
nop
RET385:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P386: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10

P387: !_MEMBAR (FP)

P388: !_REPLACEMENT [9] (Int)
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P389: !_MEMBAR (FP)
membar #StoreLoad

P390: !_BLD [31] (FP) (Branch target of P697)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
ba P391
nop

TARGET697:
ba RET697
nop


P391: !_MEMBAR (FP) (Branch target of P30)
ba P392
nop

TARGET30:
ba RET30
nop


P392: !_REPLACEMENT [2] (Int) (Branch target of P342)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+8], %l3
st %l3, [%i3+8]
add %i3, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
ba P393
nop

TARGET342:
ba RET342
nop


P393: !_REPLACEMENT [13] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+32], %o5
st %o5, [%i3+32]
add %i3, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

P394: !_MEMBAR (FP)

P395: !_BSTC [5] (maybe <- 0x3f80008b) (FP) (Branch target of P27)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi
ba P396
nop

TARGET27:
ba RET27
nop


P396: !_MEMBAR (FP)
membar #StoreLoad

P397: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f12

P398: !_MEMBAR (FP)

P399: !_BST [12] (maybe <- 0x3f80008d) (FP) (CBR) (Branch target of P460)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET399
nop
RET399:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P400
nop

TARGET460:
ba RET460
nop


P400: !_MEMBAR (FP)
membar #StoreLoad

P401: !_BLD [8] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET401
nop
RET401:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P402: !_MEMBAR (FP)

P403: !_LD [1] (Int)
lduw [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P404: !_MEMBAR (FP)
membar #StoreLoad

P405: !_BLD [33] (FP) (Branch target of P336)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
ba P406
nop

TARGET336:
ba RET336
nop


P406: !_MEMBAR (FP)

P407: !_ST [28] (maybe <- 0x3f800090) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 0 ] %asi

P408: !_REPLACEMENT [6] (Int) (Branch target of P550)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+96], %o5
st %o5, [%i3+96]
add %i3, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
ba P409
nop

TARGET550:
ba RET550
nop


P409: !_MEMBAR (FP)
membar #StoreLoad

P410: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P411: !_MEMBAR (FP)

P412: !_REPLACEMENT [29] (Int)
sethi %hi(0x2000), %l3
ld [%i3+64], %l7
st %l7, [%i3+64]
add %i3, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P413: !_ST [20] (maybe <- 0x3f800091) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 256 ]

P414: !_REPLACEMENT [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+96], %l3
st %l3, [%i2+96]
add %i2, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

P415: !_REPLACEMENT [5] (Int)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P416: !_REPLACEMENT [3] (Int)
sethi %hi(0x2000), %l3
ld [%i2+16], %l7
st %l7, [%i2+16]
add %i2, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]

P417: !_LD [17] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 96] %asi, %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P418: !_REPLACEMENT [8] (Int)
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P419: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET419
nop
RET419:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P420: !_BST [4] (maybe <- 0x3f800092) (FP) (CBR) (Branch target of P401)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET420
nop
RET420:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P421
nop

TARGET401:
ba RET401
nop


P421: !_MEMBAR (FP)
membar #StoreLoad

P422: !_ST [3] (maybe <- 0x3f800097) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 16 ] %asi

P423: !_REPLACEMENT [22] (Int) (Branch target of P667)
sethi %hi(0x2000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
ba P424
nop

TARGET667:
ba RET667
nop


P424: !_ST [30] (maybe <- 0x3f800098) (FP) (Nucleus ctx) (Branch target of P520)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 128 ] %asi
ba P425
nop

TARGET520:
ba RET520
nop


P425: !_ST [7] (maybe <- 0x13) (Int)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

P426: !_MEMBAR (FP)

P427: !_BSTC [25] (maybe <- 0x3f800099) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P428: !_MEMBAR (FP)

P429: !_BST [11] (maybe <- 0x3f80009b) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P430: !_MEMBAR (FP)
membar #StoreLoad

P431: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P432: !_MEMBAR (FP)

P433: !_BLD [10] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4

P434: !_MEMBAR (FP) (Secondary ctx) (Branch target of P80)
ba P435
nop

TARGET80:
ba RET80
nop


P435: !_ST [19] (maybe <- 0x14) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P436: !_ST [3] (maybe <- 0x3f80009e) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 16 ]

P437: !_ST [5] (maybe <- 0x15) (Int) (CBR)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET437
nop
RET437:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P438: !_MEMBAR (FP)

P439: !_BST [26] (maybe <- 0x3f80009f) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P440: !_MEMBAR (FP)
membar #StoreLoad

P441: !_BLD [32] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

P442: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET442
nop
RET442:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P443: !_BST [17] (maybe <- 0x3f8000a1) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P444: !_MEMBAR (FP) (Branch target of P437)
membar #StoreLoad
ba P445
nop

TARGET437:
ba RET437
nop


P445: !_REPLACEMENT [28] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P446: !_ST [15] (maybe <- 0x16) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4

P447: !_ST [32] (maybe <- 0x17) (Int) (Branch target of P559)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 256 ]
add   %l4, 1, %l4
ba P448
nop

TARGET559:
ba RET559
nop


P448: !_ST [15] (maybe <- 0x18) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4

P449: !_ST [25] (maybe <- 0x19) (Int) (Secondary ctx) (Branch target of P486)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 96] %asi
add   %l4, 1, %l4
ba P450
nop

TARGET486:
ba RET486
nop


P450: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET450
nop
RET450:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P451: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P452: !_MEMBAR (FP)

P453: !_FLUSHI [25] (Int)
flush %g0 

P454: !_MEMBAR (FP)
membar #StoreLoad

P455: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

P456: !_MEMBAR (FP)

P457: !_REPLACEMENT [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P458: !_LD [7] (FP) (CBR)
ld [%i0 + 128], %f9
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET458
nop
RET458:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P459: !_MEMBAR (FP) (Secondary ctx)

P460: !_BST [12] (maybe <- 0x3f8000a2) (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET460
nop
RET460:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P461: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P462: !_BLD [12] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f40, %f12

P463: !_MEMBAR (FP) (Secondary ctx) (Branch target of P171)
ba P464
nop

TARGET171:
ba RET171
nop


P464: !_ST [1] (maybe <- 0x1a) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P465: !_MEMBAR (FP) (Branch target of P419)
ba P466
nop

TARGET419:
ba RET419
nop


P466: !_BST [9] (maybe <- 0x3f8000a5) (FP) (Branch target of P56)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P467
nop

TARGET56:
ba RET56
nop


P467: !_MEMBAR (FP)
membar #StoreLoad

P468: !_REPLACEMENT [12] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P469: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET469
nop
RET469:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P470: !_BST [23] (maybe <- 0x3f8000a7) (FP) (Secondary ctx) (Branch target of P310)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P471
nop

TARGET310:
ba RET310
nop


P471: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET471
nop
RET471:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P472: !_BST [15] (maybe <- 0x3f8000aa) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P473: !_MEMBAR (FP)
membar #StoreLoad

P474: !_IDC_FLIP [24] (Int)
IDC_FLIP(474, 10713, 0, 0x45800040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

P475: !_MEMBAR (FP)

P476: !_BST [26] (maybe <- 0x3f8000ab) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P477: !_MEMBAR (FP)
membar #StoreLoad

P478: !_ST [27] (maybe <- 0x3f8000ad) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 160 ]

P479: !_LD [25] (Int)
lduw [%i3 + 96], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P480: !_REPLACEMENT [30] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET480
nop
RET480:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P481: !_MEMBAR (FP) (Branch target of P685)
membar #StoreLoad
ba P482
nop

TARGET685:
ba RET685
nop


P482: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14

P483: !_MEMBAR (FP)

P484: !_REPLACEMENT [20] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i2+256], %o5
st %o5, [%i2+256]
add %i2, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET484
nop
RET484:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P485: !_MEMBAR (FP)

P486: !_BST [17] (maybe <- 0x3f8000ae) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET486
nop
RET486:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P487: !_MEMBAR (FP)
membar #StoreLoad

P488: !_REPLACEMENT [0] (Int) (CBR) (Branch target of P234)
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET488
nop
RET488:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P489
nop

TARGET234:
ba RET234
nop


P489: !_ST [3] (maybe <- 0x3f8000af) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 16 ]

P490: !_REPLACEMENT [32] (Int)
sethi %hi(0x2000), %l3
ld [%i2+256], %l7
st %l7, [%i2+256]
add %i2, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P491: !_REPLACEMENT [19] (Int)
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P492: !_ST [9] (maybe <- 0x3f8000b0) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i1 + 32 ] %asi

P493: !_IDC_FLIP [1] (Int)
IDC_FLIP(493, 13567, 0, 0x43000004, 0x4, %i0, 0x4, %l6, %l7, %o5, %l3)

P494: !_LD [2] (FP)
ld [%i0 + 8], %f15
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P495: !_REPLACEMENT [10] (Int)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P496: !_REPLACEMENT [16] (Int)
sethi %hi(0x2000), %l3
ld [%i2+16], %l7
st %l7, [%i2+16]
add %i2, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]

P497: !_LD [19] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered

P498: !_REPLACEMENT [19] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P499: !_MEMBAR (FP)
membar #StoreLoad

P500: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f18, %f3
fmovd %f36, %f4
fmovd %f40, %f18
fmovs %f18, %f5

P501: !_MEMBAR (FP)

P502: !_REPLACEMENT [22] (Int)
sethi %hi(0x2000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P503: !_REPLACEMENT [14] (Int)
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P504: !_IDC_FLIP [18] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(504, 5004, 0, 0x44800080, 0x80, %i2, 0x80, %l6, %l7, %o5, %l3)

P505: !_ST [9] (maybe <- 0x1b) (Int)
stw   %l4, [%i1 + 32 ]
add   %l4, 1, %l4

P506: !_REPLACEMENT [30] (Int)
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P507: !_LD [4] (Int) (Secondary ctx) (Branch target of P373)
wr %g0, 0x81, %asi
lduwa [%i0 + 32] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
ba P508
nop

TARGET373:
ba RET373
nop


P508: !_LD [5] (FP)
ld [%i0 + 64], %f6
! 1 addresses covered

P509: !_MEMBAR (FP)
membar #StoreLoad

P510: !_BLD [17] (FP) (Branch target of P294)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f18
fmovs %f18, %f7
ba P511
nop

TARGET294:
ba RET294
nop


P511: !_MEMBAR (FP)

P512: !_ST [14] (maybe <- 0x1c) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 64] %asi
add   %l4, 1, %l4

P513: !_REPLACEMENT [22] (Int) (CBR) (Branch target of P232)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET513
nop
RET513:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P514
nop

TARGET232:
ba RET232
nop


P514: !_REPLACEMENT [5] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P515: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET515
nop
RET515:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P516: !_BST [6] (maybe <- 0x3f8000b1) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P517: !_MEMBAR (FP) (Branch target of P66)
ba P518
nop

TARGET66:
ba RET66
nop


P518: !_BST [16] (maybe <- 0x3f8000b3) (FP) (Secondary ctx) (Branch target of P666)
wr %g0, 0xf1, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P519
nop

TARGET666:
ba RET666
nop


P519: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P520: !_BLD [23] (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f40, %f10

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET520
nop
RET520:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P521: !_MEMBAR (FP) (Secondary ctx)

P522: !_BST [13] (maybe <- 0x3f8000b4) (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET522
nop
RET522:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P523: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P524: !_REPLACEMENT [22] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P525: !_IDC_FLIP [31] (Int) (Branch target of P382)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(525, 17842, 0, 0x460000c0, 0xc0, %i3, 0xc0, %l6, %l7, %o5, %l3)
ba P526
nop

TARGET382:
ba RET382
nop


P526: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET526
nop
RET526:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P527: !_BLD [17] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f18
fmovs %f18, %f11

P528: !_MEMBAR (FP) (Secondary ctx)

P529: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P530: !_MEMBAR (FP)

P531: !_REPLACEMENT [18] (Int) (CBR) (Branch target of P280)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET531
nop
RET531:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P532
nop

TARGET280:
ba RET280
nop


P532: !_MEMBAR (FP)

P533: !_BST [25] (maybe <- 0x3f8000b7) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P534: !_MEMBAR (FP)
membar #StoreLoad

P535: !_REPLACEMENT [20] (Int)
sethi %hi(0x2000), %l6
ld [%i3+256], %o5
st %o5, [%i3+256]
add %i3, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

P536: !_MEMBAR (FP) (Branch target of P399)
ba P537
nop

TARGET399:
ba RET399
nop


P537: !_BST [23] (maybe <- 0x3f8000b9) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P538: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET538
nop
RET538:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P539: !_REPLACEMENT [27] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+160], %l7
st %l7, [%i3+160]
add %i3, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]

P540: !_MEMBAR (FP) (Secondary ctx)

P541: !_BST [30] (maybe <- 0x3f8000bc) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P542: !_MEMBAR (FP) (Secondary ctx)

P543: !_BST [8] (maybe <- 0x3f8000bd) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P544: !_MEMBAR (FP) (Secondary ctx) (Branch target of P594)
membar #StoreLoad
ba P545
nop

TARGET594:
ba RET594
nop


P545: !_ST [17] (maybe <- 0x3f8000bf) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 96 ] %asi

P546: !_MEMBAR (FP)

P547: !_BST [28] (maybe <- 0x3f8000c0) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET547
nop
RET547:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P548: !_MEMBAR (FP) (Branch target of P62)
membar #StoreLoad
ba P549
nop

TARGET62:
ba RET62
nop


P549: !_LD [3] (Int)
lduw [%i0 + 16], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P550: !_ST [9] (maybe <- 0x1d) (Int) (CBR)
stw   %l4, [%i1 + 32 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET550
nop
RET550:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P551: !_MEMBAR (FP)
membar #StoreLoad

P552: !_BLD [22] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET552
nop
RET552:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P553: !_MEMBAR (FP)

P554: !_BLD [2] (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f18, %f3
fmovd %f36, %f4
fmovd %f40, %f18
fmovs %f18, %f5

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET554
nop
RET554:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P555: !_MEMBAR (FP) (Secondary ctx)

P556: !_REPLACEMENT [16] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+16], %l7
st %l7, [%i2+16]
add %i2, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET556
nop
RET556:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P557: !_PREFETCH [17] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 96], 1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET557
nop
RET557:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P558: !_MEMBAR (FP)
membar #StoreLoad

P559: !_BLD [3] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f6
fmovd %f34, %f8
fmovd %f36, %f18
fmovs %f18, %f9
fmovd %f40, %f10

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET559
nop
RET559:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P560: !_MEMBAR (FP)

P561: !_BST [22] (maybe <- 0x3f8000c1) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET561
nop
RET561:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P562: !_MEMBAR (FP)
membar #StoreLoad

P563: !_PREFETCH [33] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 0] %asi, 1

P564: !_MEMBAR (FP)
membar #StoreLoad

P565: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P566: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET566
nop
RET566:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P567: !_IDC_FLIP [11] (Int)
IDC_FLIP(567, 19640, 0, 0x44000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P568: !_REPLACEMENT [10] (Int) (Branch target of P318)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
ba P569
nop

TARGET318:
ba RET318
nop


P569: !_REPLACEMENT [8] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P570: !_MEMBAR (FP)
membar #StoreLoad

P571: !_BLD [12] (FP) (CBR) (Branch target of P420)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET571
nop
RET571:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P572
nop

TARGET420:
ba RET420
nop


P572: !_MEMBAR (FP)

P573: !_LD [16] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 16], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET573
nop
RET573:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P574: !_ST [27] (maybe <- 0x1e) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 160 ]
add   %l4, 1, %l4

P575: !_REPLACEMENT [12] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P576: !_IDC_FLIP [3] (Int) (Branch target of P291)
IDC_FLIP(576, 18038, 0, 0x43000010, 0x10, %i0, 0x10, %l6, %l7, %o5, %l3)
ba P577
nop

TARGET291:
ba RET291
nop


P577: !_MEMBAR (FP)

P578: !_BSTC [7] (maybe <- 0x3f8000c4) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P579: !_MEMBAR (FP)
membar #StoreLoad

P580: !_IDC_FLIP [4] (Int) (CBR)
IDC_FLIP(580, 4574, 0, 0x43000020, 0x20, %i0, 0x20, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET580
nop
RET580:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P581: !_REPLACEMENT [27] (Int)
sethi %hi(0x2000), %l7
ld [%i2+160], %l3
st %l3, [%i2+160]
add %i2, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]

P582: !_ST [31] (maybe <- 0x3f8000c5) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 192 ]

P583: !_ST [15] (maybe <- 0x3f8000c6) (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]

P584: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P134)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET584
nop
RET584:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P585
nop

TARGET134:
ba RET134
nop


P585: !_BSTC [17] (maybe <- 0x3f8000c7) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P586: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P25)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET586
nop
RET586:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P587
nop

TARGET25:
ba RET25
nop


P587: !_BSTC [0] (maybe <- 0x3f8000c8) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P588: !_MEMBAR (FP) (CBR) (Branch target of P6)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET588
nop
RET588:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P589
nop

TARGET6:
ba RET6
nop


P589: !_LD [28] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 0] %asi, %f1
! 1 addresses covered

P590: !_REPLACEMENT [20] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P591: !_MEMBAR (FP)
membar #StoreLoad

P592: !_BLD [19] (FP) (Branch target of P602)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f2
ba P593
nop

TARGET602:
ba RET602
nop


P593: !_MEMBAR (FP) (CBR) (Branch target of P317)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET593
nop
RET593:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P594
nop

TARGET317:
ba RET317
nop


P594: !_REPLACEMENT [29] (Int) (CBR)
sethi %hi(0x2000), %l3
ld [%i3+64], %l7
st %l7, [%i3+64]
add %i3, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET594
nop
RET594:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P595: !_REPLACEMENT [17] (Int)
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

P596: !_MEMBAR (FP)

P597: !_BST [9] (maybe <- 0x3f8000cd) (FP) (Branch target of P84)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P598
nop

TARGET84:
ba RET84
nop


P598: !_MEMBAR (FP)
membar #StoreLoad

P599: !_IDC_FLIP [2] (Int) (Branch target of P255)
IDC_FLIP(599, 25237, 0, 0x43000008, 0x8, %i0, 0x8, %l6, %l7, %o5, %l3)
ba P600
nop

TARGET255:
ba RET255
nop


P600: !_MEMBAR (FP) (Branch target of P547)
membar #StoreLoad
ba P601
nop

TARGET547:
ba RET547
nop


P601: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4

P602: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET602
nop
RET602:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P603: !_ST [33] (maybe <- 0x1f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P604: !_LD [6] (Int)
lduw [%i0 + 96], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P605: !_MEMBAR (FP)
membar #StoreLoad

P606: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovd %f40, %f6

P607: !_MEMBAR (FP)

P608: !_REPLACEMENT [7] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P609: !_ST [17] (maybe <- 0x3f8000cf) (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 96 ]

P610: !_REPLACEMENT [33] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P611: !_ST [15] (maybe <- 0x3f8000d0) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 128 ] %asi

P612: !_MEMBAR (Int)
membar #StoreLoad

P613: !_ST [23] (maybe <- 0x3f8000d1) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

P614: !_MEMBAR (FP) (Secondary ctx)

P615: !_BST [32] (maybe <- 0x3f8000d2) (FP) (Secondary ctx) (Branch target of P369)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi
ba P616
nop

TARGET369:
ba RET369
nop


P616: !_MEMBAR (FP) (Secondary ctx) (Branch target of P162)
ba P617
nop

TARGET162:
ba RET162
nop


P617: !_BST [23] (maybe <- 0x3f8000d3) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P618: !_MEMBAR (FP)
membar #StoreLoad

P619: !_REPLACEMENT [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P620: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET620
nop
RET620:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P621: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f40, %f18
fmovs %f18, %f9

P622: !_MEMBAR (FP)

P623: !_BLD [2] (FP) (Branch target of P588)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f10
fmovd %f34, %f12
fmovd %f36, %f18
fmovs %f18, %f13
fmovd %f40, %f14
ba P624
nop

TARGET588:
ba RET588
nop


P624: !_MEMBAR (FP)

P625: !_REPLACEMENT [1] (Int)
sethi %hi(0x2000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P626: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET626
nop
RET626:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P627: !_BST [1] (maybe <- 0x3f8000d6) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P628: !_MEMBAR (FP)
membar #StoreLoad

P629: !_REPLACEMENT [12] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i2+4], %l6
st %l6, [%i2+4]
add %i2, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET629
nop
RET629:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P630: !_REPLACEMENT [30] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i2+128], %l6
st %l6, [%i2+128]
add %i2, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET630
nop
RET630:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P631: !_LD [16] (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 16], %f15
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P632: !_IDC_FLIP [4] (Int) (Branch target of P122)
IDC_FLIP(632, 6953, 0, 0x43000020, 0x20, %i0, 0x20, %l6, %l7, %o5, %l3)
ba P633
nop

TARGET122:
ba RET122
nop


P633: !_MEMBAR (FP) (Branch target of P593)
ba P634
nop

TARGET593:
ba RET593
nop


P634: !_BST [3] (maybe <- 0x3f8000db) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P635: !_MEMBAR (FP)
membar #StoreLoad

P636: !_ST [26] (maybe <- 0x3f8000e0) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 128 ] %asi

P637: !_ST [1] (maybe <- 0x20) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P638: !_MEMBAR (FP)
membar #StoreLoad

P639: !_BLD [26] (FP) (Branch target of P646)
wr %g0, 0xf0, %asi
ldda [%i3 + 128] %asi, %f0
membar #Sync
! 2 addresses covered
fmovs %f8, %f1
ba P640
nop

TARGET646:
ba RET646
nop


P640: !_MEMBAR (FP)

P641: !_REPLACEMENT [28] (Int) (CBR) (Secondary ctx) (Branch target of P629)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET641
nop
RET641:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P642
nop

TARGET629:
ba RET629
nop


P642: !_MEMBAR (FP) (CBR) (Branch target of P458)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET642
nop
RET642:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P643
nop

TARGET458:
ba RET458
nop


P643: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f2

P644: !_MEMBAR (FP)

P645: !_ST [0] (maybe <- 0x21) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P646: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET646
nop
RET646:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P647: !_BST [33] (maybe <- 0x3f8000e1) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P648: !_MEMBAR (FP) (Branch target of P354)
membar #StoreLoad
ba P649
nop

TARGET354:
ba RET354
nop


P649: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P650: !_MEMBAR (FP) (Branch target of P306)
ba P651
nop

TARGET306:
ba RET306
nop


P651: !_ST [8] (maybe <- 0x3f8000e2) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 0 ]

P652: !_LD [7] (FP)
ld [%i0 + 128], %f4
! 1 addresses covered

P653: !_ST [8] (maybe <- 0x22) (Int) (CBR)
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET653
nop
RET653:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P654: !_LD [5] (Int)
lduw [%i0 + 64], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2

P655: !_MEMBAR (FP)

P656: !_BST [13] (maybe <- 0x3f8000e3) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P657: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET657
nop
RET657:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P658: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovd %f40, %f6

P659: !_MEMBAR (FP)

P660: !_BLD [13] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f40, %f18
fmovs %f18, %f9

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET660
nop
RET660:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P661: !_MEMBAR (FP)

P662: !_BST [32] (maybe <- 0x3f8000e6) (FP) (Branch target of P59)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi
ba P663
nop

TARGET59:
ba RET59
nop


P663: !_MEMBAR (FP)
membar #StoreLoad

P664: !_LD [26] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 128], %f10
! 1 addresses covered

P665: !_REPLACEMENT [33] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P666: !_REPLACEMENT [15] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i2+128], %l6
st %l6, [%i2+128]
add %i2, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET666
nop
RET666:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P667: !_LD [24] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i3 + 64] %asi, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET667
nop
RET667:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P668: !_MEMBAR (FP)

P669: !_BST [21] (maybe <- 0x3f8000e7) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P670: !_MEMBAR (FP)
membar #StoreLoad

P671: !_REPLACEMENT [7] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET671
nop
RET671:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P672: !_MEMBAR (FP)

P673: !_BSTC [14] (maybe <- 0x3f8000ea) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P674: !_MEMBAR (FP) (Branch target of P240)
membar #StoreLoad
ba P675
nop

TARGET240:
ba RET240
nop


P675: !_LD [25] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 96], %f11
! 1 addresses covered

P676: !_PREFETCH [22] (Int) (CBR)
prefetch [%i2 + 4], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET676
nop
RET676:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P677: !_REPLACEMENT [31] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+192], %o5
st %o5, [%i3+192]
add %i3, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]

P678: !_REPLACEMENT [28] (Int)
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P679: !_MEMBAR (FP)

P680: !_BST [23] (maybe <- 0x3f8000eb) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P681: !_MEMBAR (FP) (CBR) (Branch target of P166)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET681
nop
RET681:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P682
nop

TARGET166:
ba RET166
nop


P682: !_REPLACEMENT [31] (Int) (CBR) (Branch target of P522)
sethi %hi(0x2000), %o5
ld [%i3+192], %l6
st %l6, [%i3+192]
add %i3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET682
nop
RET682:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P683
nop

TARGET522:
ba RET522
nop


P683: !_MEMBAR (FP)
membar #StoreLoad

P684: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f40, %f14

P685: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET685
nop
RET685:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P686: !_ST [19] (maybe <- 0x3f8000ee) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P687: !_MEMBAR (FP) (Secondary ctx)

P688: !_BSTC [25] (maybe <- 0x3f8000ef) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P689: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET689
nop
RET689:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P690: !_ST [25] (maybe <- 0x23) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i3 + 96] %asi
add   %l4, 1, %l4

P691: !_LD [22] (FP)
ld [%i3 + 4], %f15
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P692: !_REPLACEMENT [27] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+160], %l3
st %l3, [%i2+160]
add %i2, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]

P693: !_LD [14] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 64] %asi, %f0
! 1 addresses covered

P694: !_MEMBAR (FP)

P695: !_BST [14] (maybe <- 0x3f8000f1) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P696: !_MEMBAR (FP)
membar #StoreLoad

P697: !_LD [31] (Int) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 192], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET697
nop
RET697:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P698: !_LD [22] (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET698
nop
RET698:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P699: !_REPLACEMENT [15] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P700: !_LD [0] (Int) (Loop exit) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i0 + 0] %asi, %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_0
nop

P701: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET701
nop
RET701:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


END_NODES0: ! Test instruction sequence for CPU 0 ends
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
stw %l6, [%i5] 
ld [%i5], %f0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

restore
retl
nop
!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func1:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l3
or    %l3, %lo(0xdeadbee0), %l3
stw   %l3, [%i5]
sethi %hi(0xdeadbee1), %l3
or    %l3, %lo(0xdeadbee1), %l3
stw   %l3, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x01deade1), %l3
or    %l3, %lo(0x01deade1), %l3
stw %l3, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x800001), %l4
or    %l4, %lo(0x800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x40000001), %l3
or    %l3, %lo(0x40000001), %l3
stw %l3, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x34800000), %l3
or    %l3, %lo(0x34800000), %l3
stw %l3, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x9a4^4
sethi %hi(0x9a4), %l0
or    %l0, %lo(0x9a4), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES1: ! Test instruction sequence for ISTREAM 1 begins

P702: !_ST [30] (maybe <- 0x40000001) (FP) (Loop entry) (Nucleus ctx)
sethi %hi(0x7), %l2
or %l2, %lo(0x7),  %l2
loop_entry_1_0:
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 128 ] %asi

P703: !_MEMBAR (FP) (Secondary ctx)

P704: !_BST [28] (maybe <- 0x40000002) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P705: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET705
nop
RET705:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P706: !_REPLACEMENT [5] (Int) (Branch target of P823)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+64], %l7
st %l7, [%i2+64]
add %i2, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
ba P707
nop

TARGET823:
ba RET823
nop


P707: !_MEMBAR (FP)

P708: !_BST [22] (maybe <- 0x40000003) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P709: !_MEMBAR (FP)
membar #StoreLoad

P710: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f0
membar #Sync
! 2 addresses covered
fmovs %f8, %f1

P711: !_MEMBAR (FP)

P712: !_BST [0] (maybe <- 0x40000006) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P713: !_MEMBAR (FP)
membar #StoreLoad

P714: !_REPLACEMENT [2] (Int) (Branch target of P715)
sethi %hi(0x2000), %l6
ld [%i2+8], %o5
st %o5, [%i2+8]
add %i2, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
ba P715
nop

TARGET715:
ba RET715
nop


P715: !_ST [29] (maybe <- 0x4000000b) (FP) (CBR) (Branch target of P818)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET715
nop
RET715:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P716
nop

TARGET818:
ba RET818
nop


P716: !_MEMBAR (FP)

P717: !_BST [20] (maybe <- 0x4000000c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P718: !_MEMBAR (FP)
membar #StoreLoad

P719: !_LD [30] (Int)
lduw [%i2 + 128], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P720: !_REPLACEMENT [9] (Int) (Branch target of P737)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+32], %o5
st %o5, [%i2+32]
add %i2, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
ba P721
nop

TARGET737:
ba RET737
nop


P721: !_MEMBAR (FP) (Branch target of P797)
ba P722
nop

TARGET797:
ba RET797
nop


P722: !_BST [19] (maybe <- 0x4000000d) (FP) (Branch target of P726)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P723
nop

TARGET726:
ba RET726
nop


P723: !_MEMBAR (FP)
membar #StoreLoad

P724: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f2

P725: !_MEMBAR (FP) (CBR) (Branch target of P771)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET725
nop
RET725:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P726
nop

TARGET771:
ba RET771
nop


P726: !_BLD [4] (FP) (CBR) (Branch target of P794)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f18, %f5
fmovd %f36, %f6
fmovd %f40, %f18
fmovs %f18, %f7

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET726
nop
RET726:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P727
nop

TARGET794:
ba RET794
nop


P727: !_MEMBAR (FP)

P728: !_REPLACEMENT [26] (Int)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P729: !_ST [30] (maybe <- 0x4000000e) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 128 ] %asi

P730: !_LD [22] (Int) (Nucleus ctx) (Branch target of P809)
wr %g0, 0x4, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
ba P731
nop

TARGET809:
ba RET809
nop


P731: !_ST [19] (maybe <- 0x4000000f) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 0 ] %asi

P732: !_REPLACEMENT [28] (Int) (CBR) (Branch target of P761)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET732
nop
RET732:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P733
nop

TARGET761:
ba RET761
nop


P733: !_LD [9] (Int) (LE) (CBR)
wr %g0, 0x88, %asi
lduwa [%i1 + 32] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET733
nop
RET733:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P734: !_PREFETCH [14] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 64], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET734
nop
RET734:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P735: !_ST [4] (maybe <- 0x40000010) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET735
nop
RET735:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P736: !_PREFETCH [2] (Int) (Branch target of P786)
prefetch [%i0 + 8], 1
ba P737
nop

TARGET786:
ba RET786
nop


P737: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET737
nop
RET737:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P738: !_BST [2] (maybe <- 0x40000011) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P739: !_MEMBAR (FP)
membar #StoreLoad

P740: !_LD [5] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P741: !_REPLACEMENT [30] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET741
nop
RET741:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P742: !_IDC_FLIP [4] (Int) (CBR) (Branch target of P815)
IDC_FLIP(742, 23131, 1, 0x43000020, 0x20, %i0, 0x20, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET742
nop
RET742:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P743
nop

TARGET815:
ba RET815
nop


P743: !_ST [12] (maybe <- 0x800001) (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET743
nop
RET743:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P744: !_ST [11] (maybe <- 0x40000016) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P745: !_REPLACEMENT [10] (Int)
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P746: !_REPLACEMENT [27] (Int)
sethi %hi(0x2000), %l3
ld [%i3+160], %l7
st %l7, [%i3+160]
add %i3, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]
add %l6, %l3, %l6
ld [%l6+160], %l7
st %l7, [%l6+160]

P747: !_MEMBAR (FP)

P748: !_BST [4] (maybe <- 0x40000017) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P749: !_MEMBAR (FP) (Branch target of P830)
membar #StoreLoad
ba P750
nop

TARGET830:
ba RET830
nop


P750: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

P751: !_MEMBAR (FP)

P752: !_BST [25] (maybe <- 0x4000001c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P753: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET753
nop
RET753:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P754: !_REPLACEMENT [24] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+64], %l3
st %l3, [%i3+64]
add %i3, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P755: !_REPLACEMENT [17] (Int)
sethi %hi(0x2000), %l6
ld [%i3+96], %o5
st %o5, [%i3+96]
add %i3, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

P756: !_LD [24] (Int)
lduw [%i2 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P757: !_ST [24] (maybe <- 0x800002) (Int) (LE)
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %o5, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
stwa   %l7, [%i2 + 64] %asi
add   %l4, 1, %l4

P758: !_LD [4] (FP)
ld [%i0 + 32], %f9
! 1 addresses covered

P759: !_MEMBAR (FP)
membar #StoreLoad

P760: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f10
fmovd %f34, %f12
fmovd %f36, %f18
fmovs %f18, %f13
fmovd %f40, %f14

P761: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET761
nop
RET761:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P762: !_REPLACEMENT [24] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i3+64], %l3
st %l3, [%i3+64]
add %i3, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET762
nop
RET762:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P763: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P764: !_BLD [12] (FP) (CBR) (Secondary ctx) (Branch target of P705)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovs %f19, %f0
fmovd %f40, %f18
fmovs %f18, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET764
nop
RET764:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P765
nop

TARGET705:
ba RET705
nop


P765: !_MEMBAR (FP) (Secondary ctx)

P766: !_REPLACEMENT [20] (Int)
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P767: !_REPLACEMENT [8] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P768: !_MEMBAR (FP)
membar #StoreLoad

P769: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f40, %f4

P770: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET770
nop
RET770:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P771: !_REPLACEMENT [25] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+96], %l6
st %l6, [%i2+96]
add %i2, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET771
nop
RET771:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P772: !_MEMBAR (FP)

P773: !_BST [33] (maybe <- 0x4000001e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P774: !_MEMBAR (FP)
membar #StoreLoad

P775: !_REPLACEMENT [0] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET775
nop
RET775:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P776: !_REPLACEMENT [29] (Int)
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P777: !_REPLACEMENT [29] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P778: !_ST [5] (maybe <- 0x800003) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P779: !_LD [25] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 96] %asi, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

P780: !_REPLACEMENT [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P781: !_REPLACEMENT [0] (Int)
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P782: !_REPLACEMENT [11] (Int)
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P783: !_MEMBAR (FP) (CBR) (Branch target of P783)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET783
nop
RET783:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P784
nop

TARGET783:
ba RET783
nop


P784: !_BST [24] (maybe <- 0x4000001f) (FP) (CBR) (Branch target of P832)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET784
nop
RET784:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P785
nop

TARGET832:
ba RET832
nop


P785: !_MEMBAR (FP)
membar #StoreLoad

P786: !_ST [32] (maybe <- 0x800004) (Int) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 256 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET786
nop
RET786:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P787: !_REPLACEMENT [25] (Int)
sethi %hi(0x2000), %o5
ld [%i3+96], %l6
st %l6, [%i3+96]
add %i3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

P788: !_ST [23] (maybe <- 0x40000021) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 32 ] %asi

P789: !_MEMBAR (FP)
membar #StoreLoad

P790: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P791: !_MEMBAR (FP)

P792: !_REPLACEMENT [28] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P793: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P770)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET793
nop
RET793:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P794
nop

TARGET770:
ba RET770
nop


P794: !_BST [15] (maybe <- 0x40000022) (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET794
nop
RET794:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P795: !_MEMBAR (FP) (Secondary ctx) (Branch target of P743)
membar #StoreLoad
ba P796
nop

TARGET743:
ba RET743
nop


P796: !_IDC_FLIP [0] (Int) (Branch target of P793)
IDC_FLIP(796, 10226, 1, 0x43000000, 0x0, %i0, 0x0, %l6, %l7, %o5, %l3)
ba P797
nop

TARGET793:
ba RET793
nop


P797: !_MEMBAR (FP) (CBR) (Branch target of P806)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET797
nop
RET797:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P798
nop

TARGET806:
ba RET806
nop


P798: !_BST [14] (maybe <- 0x40000023) (FP) (Branch target of P801)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi
ba P799
nop

TARGET801:
ba RET801
nop


P799: !_MEMBAR (FP)
membar #StoreLoad

P800: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f8
fmovd %f40, %f18
fmovs %f18, %f9

P801: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET801
nop
RET801:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P802: !_BST [28] (maybe <- 0x40000024) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P803: !_MEMBAR (FP) (Secondary ctx) (Branch target of P735)
membar #StoreLoad
ba P804
nop

TARGET735:
ba RET735
nop


P804: !_LD [2] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i0 + 8] %asi, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P805: !_ST [29] (maybe <- 0x40000025) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

P806: !_REPLACEMENT [27] (Int) (CBR) (Secondary ctx) (Branch target of P753)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+160], %l3
st %l3, [%i2+160]
add %i2, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET806
nop
RET806:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P807
nop

TARGET753:
ba RET753
nop


P807: !_MEMBAR (FP) (Branch target of P732)
membar #StoreLoad
ba P808
nop

TARGET732:
ba RET732
nop


P808: !_BLD [7] (FP) (Branch target of P764)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10
ba P809
nop

TARGET764:
ba RET764
nop


P809: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET809
nop
RET809:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P810: !_REPLACEMENT [33] (Int)
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P811: !_LD [10] (Int)
lduw [%i1 + 64], %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3

P812: !_IDC_FLIP [16] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(812, 25914, 1, 0x44800010, 0x10, %i3, 0x10, %l6, %l7, %o5, %l3)

P813: !_MEMBAR (FP)

P814: !_BST [27] (maybe <- 0x40000026) (FP) (Branch target of P741)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi
ba P815
nop

TARGET741:
ba RET741
nop


P815: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET815
nop
RET815:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P816: !_REPLACEMENT [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P817: !_ST [7] (maybe <- 0x800005) (Int) (CBR) (Branch target of P742)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET817
nop
RET817:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P818
nop

TARGET742:
ba RET742
nop


P818: !_IDC_FLIP [10] (Int) (CBR)
IDC_FLIP(818, 18994, 1, 0x43800040, 0x40, %i1, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET818
nop
RET818:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P819: !_MEMBAR (FP) (Branch target of P734)
ba P820
nop

TARGET734:
ba RET734
nop


P820: !_BST [20] (maybe <- 0x40000028) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P821: !_MEMBAR (FP)
membar #StoreLoad

P822: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P823: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET823
nop
RET823:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P824: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13

P825: !_MEMBAR (FP)

P826: !_ST [20] (maybe <- 0x40000029) (FP) (Branch target of P725)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 256 ]
ba P827
nop

TARGET725:
ba RET725
nop


P827: !_LD [6] (FP) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
lda    [%i0 + 96] %asi, %f14
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET827
nop
RET827:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P828: !_LD [33] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P829: !_MEMBAR (FP)

P830: !_BST [8] (maybe <- 0x4000002a) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET830
nop
RET830:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P831: !_MEMBAR (FP) (Branch target of P784)
membar #StoreLoad
ba P832
nop

TARGET784:
ba RET784
nop


P832: !_PREFETCH [5] (Int) (CBR)
prefetch [%i0 + 64], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET832
nop
RET832:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P833: !_MEMBAR (FP)

P834: !_BST [1] (maybe <- 0x4000002c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P835: !_MEMBAR (FP) (Branch target of P762)
membar #StoreLoad
ba P836
nop

TARGET762:
ba RET762
nop


P836: !_REPLACEMENT [28] (Int) (Secondary ctx) (Branch target of P733)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
ba P837
nop

TARGET733:
ba RET733
nop


P837: !_LD [21] (Int) (CBR) (Secondary ctx) (Branch target of P817)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET837
nop
RET837:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P838
nop

TARGET817:
ba RET817
nop


P838: !_MEMBAR (FP)

P839: !_BST [16] (maybe <- 0x40000031) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P840: !_MEMBAR (FP)

P841: !_BSTC [14] (maybe <- 0x40000032) (FP) (Branch target of P827)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi
ba P842
nop

TARGET827:
ba RET827
nop


P842: !_MEMBAR (FP)

P843: !_BST [27] (maybe <- 0x40000033) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P844: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P845: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovs %f19, %f0
fmovd %f34, %f18
fmovs %f18, %f1
fmovd %f36, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P846: !_MEMBAR (FP) (Loop exit) (Branch target of P837)
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_0
nop
ba P847
nop

TARGET837:
ba RET837
nop


P847: !_MEMBAR (Int) (Branch target of P775)
membar #StoreLoad
ba END_NODES1
nop

TARGET775:
ba RET775
nop


END_NODES1: ! Test instruction sequence for CPU 1 ends
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
stw %l6, [%i5] 
ld [%i5], %f0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

restore
retl
nop
!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func2:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l3
or    %l3, %lo(0xdeadbee0), %l3
stw   %l3, [%i5]
sethi %hi(0xdeadbee1), %l3
or    %l3, %lo(0xdeadbee1), %l3
stw   %l3, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x02deade1), %l3
or    %l3, %lo(0x02deade1), %l3
stw %l3, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1000001), %l4
or    %l4, %lo(0x1000001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x40800001), %l3
or    %l3, %lo(0x40800001), %l3
stw %l3, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x35000000), %l3
or    %l3, %lo(0x35000000), %l3
stw %l3, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x4428^4
sethi %hi(0x4428), %l0
or    %l0, %lo(0x4428), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES2: ! Test instruction sequence for ISTREAM 2 begins

P848: !_ST [27] (maybe <- 0x40800001) (FP) (Loop entry) (Secondary ctx)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_0:
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 160 ] %asi

P849: !_REPLACEMENT [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P850: !_MEMBAR (FP)
membar #StoreLoad

P851: !_BLD [14] (FP) (Branch target of P1286)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f0
membar #Sync
! 1 addresses covered
ba P852
nop

TARGET1286:
ba RET1286
nop


P852: !_MEMBAR (FP)

P853: !_LD [8] (Int)
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P854: !_IDC_FLIP [21] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(854, 1620, 2, 0x45800000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)

P855: !_REPLACEMENT [23] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+32], %o5
st %o5, [%i2+32]
add %i2, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET855
nop
RET855:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P856: !_LD [22] (Int)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P857: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P858: !_BLD [6] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovd %f40, %f2

P859: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P998)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET859
nop
RET859:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P860
nop

TARGET998:
ba RET998
nop


P860: !_LD [12] (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 4] %asi, %f3
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET860
nop
RET860:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P861: !_REPLACEMENT [24] (Int) (Branch target of P1168)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
ba P862
nop

TARGET1168:
ba RET1168
nop


P862: !_LD [28] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f4
! 1 addresses covered

P863: !_MEMBAR (FP)

P864: !_BST [16] (maybe <- 0x40800002) (FP) (Branch target of P1264)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P865
nop

TARGET1264:
ba RET1264
nop


P865: !_MEMBAR (FP)
membar #StoreLoad

P866: !_LD [4] (FP) (Branch target of P1443)
ld [%i0 + 32], %f5
! 1 addresses covered
ba P867
nop

TARGET1443:
ba RET1443
nop


P867: !_REPLACEMENT [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P868: !_IDC_FLIP [11] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(868, 7757, 2, 0x44000000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)

P869: !_ST [16] (maybe <- 0x1000001) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 16 ]
add   %l4, 1, %l4

P870: !_MEMBAR (FP) (Secondary ctx)

P871: !_BST [13] (maybe <- 0x40800003) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P872: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P873: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

P874: !_MEMBAR (FP)

P875: !_REPLACEMENT [31] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+192], %l6
st %l6, [%i2+192]
add %i2, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]
add %l3, %o5, %l3
ld [%l3+192], %l6
st %l6, [%l3+192]

P876: !_MEMBAR (FP)
membar #StoreLoad

P877: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f18, %f9
fmovd %f36, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P878: !_MEMBAR (FP)

P879: !_ST [8] (maybe <- 0x40800006) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET879
nop
RET879:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P880: !_LD [0] (Int) (Secondary ctx) (Branch target of P908)
wr %g0, 0x81, %asi
lduwa [%i0 + 0] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
ba P881
nop

TARGET908:
ba RET908
nop


P881: !_LD [33] (FP) (CBR)
ld [%i3 + 0], %f12
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET881
nop
RET881:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P882: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET882
nop
RET882:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P883: !_BST [11] (maybe <- 0x40800007) (FP) (Branch target of P1162)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P884
nop

TARGET1162:
ba RET1162
nop


P884: !_MEMBAR (FP)
membar #StoreLoad

P885: !_ST [14] (maybe <- 0x1000002) (Int) (CBR)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET885
nop
RET885:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P886: !_ST [18] (maybe <- 0x1000003) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 128] %asi
add   %l4, 1, %l4

P887: !_ST [15] (maybe <- 0x1000004) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i3 + 128] %asi
add   %l4, 1, %l4

P888: !_MEMBAR (FP)
membar #StoreLoad

P889: !_BLD [25] (FP) (Branch target of P1157)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14
ba P890
nop

TARGET1157:
ba RET1157
nop


P890: !_MEMBAR (FP) (Branch target of P1217)
ba P891
nop

TARGET1217:
ba RET1217
nop


P891: !_BSTC [22] (maybe <- 0x4080000a) (FP) (Branch target of P859)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P892
nop

TARGET859:
ba RET859
nop


P892: !_MEMBAR (FP) (Branch target of P976)
membar #StoreLoad
ba P893
nop

TARGET976:
ba RET976
nop


P893: !_ST [19] (maybe <- 0x4080000d) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P894: !_MEMBAR (FP) (CBR) (Branch target of P1323)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET894
nop
RET894:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P895
nop

TARGET1323:
ba RET1323
nop


P895: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

P896: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET896
nop
RET896:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P897: !_REPLACEMENT [28] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET897
nop
RET897:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P898: !_MEMBAR (FP)
membar #StoreLoad

P899: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1

P900: !_MEMBAR (FP)

P901: !_REPLACEMENT [16] (Int)
sethi %hi(0x2000), %o5
ld [%i3+16], %l6
st %l6, [%i3+16]
add %i3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

P902: !_MEMBAR (FP) (Secondary ctx)

P903: !_BST [15] (maybe <- 0x4080000e) (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET903
nop
RET903:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P904: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET904
nop
RET904:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P905: !_REPLACEMENT [9] (Int)
sethi %hi(0x2000), %o5
ld [%i3+32], %l6
st %l6, [%i3+32]
add %i3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P906: !_LD [5] (Int) (Nucleus ctx) (Branch target of P1365)
wr %g0, 0x4, %asi
lduwa [%i0 + 64] %asi, %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
ba P907
nop

TARGET1365:
ba RET1365
nop


P907: !_REPLACEMENT [5] (Int)
sethi %hi(0x2000), %l3
ld [%i3+64], %l7
st %l7, [%i3+64]
add %i3, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P908: !_REPLACEMENT [14] (Int) (CBR) (Secondary ctx) (Branch target of P904)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET908
nop
RET908:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P909
nop

TARGET904:
ba RET904
nop


P909: !_LD [2] (Int) (Branch target of P1442)
lduw [%i0 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
ba P910
nop

TARGET1442:
ba RET1442
nop


P910: !_REPLACEMENT [31] (Int)
sethi %hi(0x2000), %l6
ld [%i3+192], %o5
st %o5, [%i3+192]
add %i3, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]

P911: !_MEMBAR (FP) (CBR) (Branch target of P1246)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET911
nop
RET911:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P912
nop

TARGET1246:
ba RET1246
nop


P912: !_BST [23] (maybe <- 0x4080000f) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P913: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET913
nop
RET913:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P914: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f2

P915: !_MEMBAR (FP) (Branch target of P1420)
ba P916
nop

TARGET1420:
ba RET1420
nop


P916: !_ST [0] (maybe <- 0x1000005) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P917: !_ST [17] (maybe <- 0x40800012) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 96 ]

P918: !_ST [4] (maybe <- 0x40800013) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]

P919: !_ST [21] (maybe <- 0x40800014) (FP) (Branch target of P881)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]
ba P920
nop

TARGET881:
ba RET881
nop


P920: !_MEMBAR (FP)
membar #StoreLoad

P921: !_BLD [31] (FP) (Branch target of P1413)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
ba P922
nop

TARGET1413:
ba RET1413
nop


P922: !_MEMBAR (FP)

P923: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f4
fmovd %f34, %f6
fmovd %f36, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P924: !_MEMBAR (FP)

P925: !_REPLACEMENT [27] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+160], %l3
st %l3, [%i2+160]
add %i2, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]

P926: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P927: !_REPLACEMENT [23] (Int)
sethi %hi(0x2000), %l3
ld [%i2+32], %l7
st %l7, [%i2+32]
add %i2, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P928: !_MEMBAR (FP)

P929: !_BST [19] (maybe <- 0x40800015) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P930: !_MEMBAR (FP)
membar #StoreLoad

P931: !_LD [29] (Int) (Branch target of P1224)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 64], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
ba P932
nop

TARGET1224:
ba RET1224
nop


P932: !_REPLACEMENT [29] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+64], %l7
st %l7, [%i3+64]
add %i3, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P933: !_REPLACEMENT [16] (Int)
sethi %hi(0x2000), %o5
ld [%i3+16], %l6
st %l6, [%i3+16]
add %i3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

P934: !_LD [21] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 0] %asi, %f9
! 1 addresses covered

P935: !_MEMBAR (FP)

P936: !_BST [17] (maybe <- 0x40800016) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET936
nop
RET936:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P937: !_MEMBAR (FP)
membar #StoreLoad

P938: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10

P939: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET939
nop
RET939:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P940: !_BLD [30] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11

P941: !_MEMBAR (FP) (Branch target of P946)
ba P942
nop

TARGET946:
ba RET946
nop


P942: !_IDC_FLIP [29] (Int)
IDC_FLIP(942, 17736, 2, 0x46000040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

P943: !_MEMBAR (FP) (Branch target of P1366)
membar #StoreLoad
ba P944
nop

TARGET1366:
ba RET1366
nop


P944: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P945: !_MEMBAR (FP)

P946: !_BLD [23] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET946
nop
RET946:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P947: !_MEMBAR (FP)

P948: !_REPLACEMENT [31] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+192], %l3
st %l3, [%i3+192]
add %i3, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]

P949: !_MEMBAR (FP) (Secondary ctx)

P950: !_BST [5] (maybe <- 0x40800017) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P951: !_MEMBAR (FP) (Secondary ctx)

P952: !_BST [1] (maybe <- 0x40800019) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET952
nop
RET952:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P953: !_MEMBAR (FP)
membar #StoreLoad

P954: !_REPLACEMENT [21] (Int)
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P955: !_ST [7] (maybe <- 0x1000006) (Int)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

P956: !_MEMBAR (FP)

P957: !_BST [29] (maybe <- 0x4080001e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P958: !_MEMBAR (FP)
membar #StoreLoad

P959: !_REPLACEMENT [5] (Int) (Branch target of P896)
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
ba P960
nop

TARGET896:
ba RET896
nop


P960: !_MEMBAR (FP) (Secondary ctx) (Branch target of P855)
ba P961
nop

TARGET855:
ba RET855
nop


P961: !_BST [23] (maybe <- 0x4080001f) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P962: !_MEMBAR (FP) (Secondary ctx) (Branch target of P1208)
ba P963
nop

TARGET1208:
ba RET1208
nop


P963: !_BST [15] (maybe <- 0x40800022) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P964: !_MEMBAR (FP) (Branch target of P1102)
ba P965
nop

TARGET1102:
ba RET1102
nop


P965: !_BST [0] (maybe <- 0x40800023) (FP) (Branch target of P911)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P966
nop

TARGET911:
ba RET911
nop


P966: !_MEMBAR (FP)
membar #StoreLoad

P967: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovd %f40, %f2

P968: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET968
nop
RET968:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P969: !_ST [31] (maybe <- 0x40800028) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 192 ]

P970: !_MEMBAR (FP)

P971: !_BST [31] (maybe <- 0x40800029) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET971
nop
RET971:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P972: !_MEMBAR (FP)
membar #StoreLoad

P973: !_LD [0] (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 0] %asi, %f3
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET973
nop
RET973:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P974: !_REPLACEMENT [25] (Int) (Branch target of P1335)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+96], %l3
st %l3, [%i2+96]
add %i2, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
ba P975
nop

TARGET1335:
ba RET1335
nop


P975: !_REPLACEMENT [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+64], %l3
st %l3, [%i3+64]
add %i3, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P976: !_REPLACEMENT [5] (Int) (CBR) (Branch target of P1252)
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET976
nop
RET976:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P977
nop

TARGET1252:
ba RET1252
nop


P977: !_ST [28] (maybe <- 0x4080002a) (FP) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET977
nop
RET977:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P978: !_MEMBAR (FP) (Secondary ctx) (Branch target of P1243)
ba P979
nop

TARGET1243:
ba RET1243
nop


P979: !_BST [32] (maybe <- 0x4080002b) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P980: !_MEMBAR (FP) (Secondary ctx) (Branch target of P894)
membar #StoreLoad
ba P981
nop

TARGET894:
ba RET894
nop


P981: !_LD [5] (Int)
lduw [%i0 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P982: !_ST [9] (maybe <- 0x1000007) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i1 + 32] %asi
add   %l4, 1, %l4

P983: !_MEMBAR (FP)

P984: !_BSTC [18] (maybe <- 0x4080002c) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P985: !_MEMBAR (FP)
membar #StoreLoad

P986: !_REPLACEMENT [16] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+16], %l7
st %l7, [%i2+16]
add %i2, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]

P987: !_MEMBAR (FP)
membar #StoreLoad

P988: !_BLD [17] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET988
nop
RET988:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P989: !_MEMBAR (FP)

P990: !_IDC_FLIP [24] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(990, 19136, 2, 0x45800040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

P991: !_REPLACEMENT [2] (Int)
sethi %hi(0x2000), %l6
ld [%i2+8], %o5
st %o5, [%i2+8]
add %i2, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]

P992: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET992
nop
RET992:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P993: !_BST [0] (maybe <- 0x4080002d) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET993
nop
RET993:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P994: !_MEMBAR (FP)
membar #StoreLoad

P995: !_REPLACEMENT [5] (Int)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P996: !_ST [30] (maybe <- 0x40800032) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]

P997: !_MEMBAR (FP)

P998: !_BST [9] (maybe <- 0x40800033) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET998
nop
RET998:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P999: !_MEMBAR (FP)
membar #StoreLoad

P1000: !_LD [4] (Int) (CBR)
lduw [%i0 + 32], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1000
nop
RET1000:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1001: !_LD [8] (FP)
ld [%i1 + 0], %f5
! 1 addresses covered

P1002: !_ST [26] (maybe <- 0x1000008) (Int) (Branch target of P1376)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4
ba P1003
nop

TARGET1376:
ba RET1376
nop


P1003: !_REPLACEMENT [26] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P1004: !_LD [33] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f6
! 1 addresses covered

P1005: !_LD [11] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1006: !_ST [17] (maybe <- 0x1000009) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 96 ]
add   %l4, 1, %l4

P1007: !_IDC_FLIP [1] (Int) (Branch target of P1396)
IDC_FLIP(1007, 30724, 2, 0x43000004, 0x4, %i0, 0x4, %l6, %l7, %o5, %l3)
ba P1008
nop

TARGET1396:
ba RET1396
nop


P1008: !_MEMBAR (FP)
membar #StoreLoad

P1009: !_BLD [20] (FP) (Branch target of P1402)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
ba P1010
nop

TARGET1402:
ba RET1402
nop


P1010: !_MEMBAR (FP)

P1011: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f40, %f10

P1012: !_MEMBAR (FP)

P1013: !_REPLACEMENT [14] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1013
nop
RET1013:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1014: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1014
nop
RET1014:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1015: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11

P1016: !_MEMBAR (FP)

P1017: !_BST [22] (maybe <- 0x40800035) (FP) (CBR) (Secondary ctx) (Branch target of P1205)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1017
nop
RET1017:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1018
nop

TARGET1205:
ba RET1205
nop


P1018: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1019: !_LD [18] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 128], %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1020: !_REPLACEMENT [22] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P1021: !_MEMBAR (FP) (Branch target of P1014)
ba P1022
nop

TARGET1014:
ba RET1014
nop


P1022: !_BST [2] (maybe <- 0x40800038) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1023: !_MEMBAR (FP)
membar #StoreLoad

P1024: !_REPLACEMENT [9] (Int) (CBR) (Branch target of P936)
sethi %hi(0x2000), %l7
ld [%i3+32], %l3
st %l3, [%i3+32]
add %i3, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1024
nop
RET1024:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1025
nop

TARGET936:
ba RET936
nop


P1025: !_REPLACEMENT [9] (Int)
sethi %hi(0x2000), %l7
ld [%i3+32], %l3
st %l3, [%i3+32]
add %i3, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P1026: !_ST [10] (maybe <- 0x4080003d) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 64 ]

P1027: !_REPLACEMENT [21] (Int)
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P1028: !_ST [14] (maybe <- 0x100000a) (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 64] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1028
nop
RET1028:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1029: !_ST [2] (maybe <- 0x100000b) (Int) (Branch target of P977)
stw   %l4, [%i0 + 8 ]
add   %l4, 1, %l4
ba P1030
nop

TARGET977:
ba RET977
nop


P1030: !_REPLACEMENT [13] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i3+32], %l3
st %l3, [%i3+32]
add %i3, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1030
nop
RET1030:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1031: !_MEMBAR (FP)
membar #StoreLoad

P1032: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P1033: !_MEMBAR (FP)

P1034: !_REPLACEMENT [16] (Int)
sethi %hi(0x2000), %l7
ld [%i3+16], %l3
st %l3, [%i3+16]
add %i3, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]

P1035: !_IDC_FLIP [22] (Int) (Branch target of P1401)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1035, 22299, 2, 0x45800004, 0x4, %i3, 0x4, %l6, %l7, %o5, %l3)
ba P1036
nop

TARGET1401:
ba RET1401
nop


P1036: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1036
nop
RET1036:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1037: !_BST [24] (maybe <- 0x4080003e) (FP) (CBR) (Branch target of P1040)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1037
nop
RET1037:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1038
nop

TARGET1040:
ba RET1040
nop


P1038: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1038
nop
RET1038:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1039: !_ST [0] (maybe <- 0x40800040) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 0 ] %asi

P1040: !_REPLACEMENT [6] (Int) (CBR) (Branch target of P1121)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+96], %l6
st %l6, [%i2+96]
add %i2, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1040
nop
RET1040:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1041
nop

TARGET1121:
ba RET1121
nop


P1041: !_REPLACEMENT [6] (Int)
sethi %hi(0x2000), %o5
ld [%i2+96], %l6
st %l6, [%i2+96]
add %i2, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

P1042: !_MEMBAR (FP)

P1043: !_BST [4] (maybe <- 0x40800041) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1044: !_MEMBAR (FP)
membar #StoreLoad

P1045: !_BLD [1] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f34, %f0
fmovd %f36, %f18
fmovs %f18, %f1
fmovd %f40, %f2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1045
nop
RET1045:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1046: !_MEMBAR (FP) (Branch target of P1381)
ba P1047
nop

TARGET1381:
ba RET1381
nop


P1047: !_REPLACEMENT [7] (Int)
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1048: !_REPLACEMENT [26] (Int) (Branch target of P903)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
ba P1049
nop

TARGET903:
ba RET903
nop


P1049: !_REPLACEMENT [8] (Int) (Branch target of P1429)
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
ba P1050
nop

TARGET1429:
ba RET1429
nop


P1050: !_REPLACEMENT [14] (Int)
sethi %hi(0x2000), %o5
ld [%i2+64], %l6
st %l6, [%i2+64]
add %i2, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P1051: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1051
nop
RET1051:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1052: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f36, %f18
fmovs %f18, %f3

P1053: !_MEMBAR (FP)

P1054: !_REPLACEMENT [18] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i2+128], %l6
st %l6, [%i2+128]
add %i2, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1054
nop
RET1054:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1055: !_IDC_FLIP [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1055, 20316, 2, 0x46000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P1056: !_LD [26] (FP) (Secondary ctx) (Branch target of P1127)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 128] %asi, %f4
! 1 addresses covered
ba P1057
nop

TARGET1127:
ba RET1127
nop


P1057: !_LD [29] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i2 + 64] %asi, %f5
! 1 addresses covered

P1058: !_MEMBAR (FP) (Secondary ctx) (Branch target of P992)
membar #StoreLoad
ba P1059
nop

TARGET992:
ba RET992
nop


P1059: !_BLD [14] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

P1060: !_MEMBAR (FP) (Secondary ctx)

P1061: !_LD [17] (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 96] %asi, %f7
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1061
nop
RET1061:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1062: !_MEMBAR (FP)

P1063: !_BST [29] (maybe <- 0x40800046) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P1064: !_MEMBAR (FP)
membar #StoreLoad

P1065: !_ST [33] (maybe <- 0x40800047) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P1066: !_IDC_FLIP [3] (Int) (Branch target of P1390)
IDC_FLIP(1066, 4106, 2, 0x43000010, 0x10, %i0, 0x10, %l6, %l7, %o5, %l3)
ba P1067
nop

TARGET1390:
ba RET1390
nop


P1067: !_REPLACEMENT [16] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+16], %o5
st %o5, [%i2+16]
add %i2, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]

P1068: !_LD [12] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1069: !_MEMBAR (FP)
membar #StoreLoad

P1070: !_BLD [8] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f8
fmovd %f40, %f18
fmovs %f18, %f9

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1070
nop
RET1070:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1071: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1071
nop
RET1071:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1072: !_ST [17] (maybe <- 0x100000c) (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 96 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1072
nop
RET1072:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1073: !_MEMBAR (FP)
membar #StoreLoad

P1074: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P1075: !_MEMBAR (FP)

P1076: !_REPLACEMENT [18] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+128], %l7
st %l7, [%i2+128]
add %i2, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1076
nop
RET1076:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1077: !_REPLACEMENT [16] (Int)
sethi %hi(0x2000), %l3
ld [%i2+16], %l7
st %l7, [%i2+16]
add %i2, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]

P1078: !_LD [7] (Int)
lduw [%i0 + 128], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

P1079: !_MEMBAR (FP)
membar #StoreLoad

P1080: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P1081: !_MEMBAR (FP)

P1082: !_ST [5] (maybe <- 0x100000d) (Int) (CBR)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1082
nop
RET1082:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1083: !_MEMBAR (FP)

P1084: !_BST [3] (maybe <- 0x40800048) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1085: !_MEMBAR (FP)
membar #StoreLoad

P1086: !_LD [19] (FP) (Secondary ctx) (Branch target of P968)
wr %g0, 0x81, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 0] %asi, %f14
! 1 addresses covered
ba P1087
nop

TARGET968:
ba RET968
nop


P1087: !_REPLACEMENT [18] (Int)
sethi %hi(0x2000), %l3
ld [%i2+128], %l7
st %l7, [%i2+128]
add %i2, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P1088: !_LD [18] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1089: !_ST [27] (maybe <- 0x4080004d) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 160 ]

P1090: !_REPLACEMENT [21] (Int) (Nucleus ctx) (Branch target of P1038)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
ba P1091
nop

TARGET1038:
ba RET1038
nop


P1091: !_REPLACEMENT [16] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %o5
ld [%i2+16], %l6
st %l6, [%i2+16]
add %i2, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

P1092: !_REPLACEMENT [7] (Int)
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1093: !_MEMBAR (FP)
membar #StoreLoad

P1094: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovs %f19, %f0
fmovd %f40, %f18
fmovs %f18, %f1

P1095: !_MEMBAR (FP)

P1096: !_REPLACEMENT [24] (Int) (Secondary ctx) (Branch target of P882)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
ba P1097
nop

TARGET882:
ba RET882
nop


P1097: !_REPLACEMENT [30] (Int)
sethi %hi(0x2000), %l3
ld [%i2+128], %l7
st %l7, [%i2+128]
add %i2, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P1098: !_ST [25] (maybe <- 0x100000e) (Int) (Branch target of P1000)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 96 ]
add   %l4, 1, %l4
ba P1099
nop

TARGET1000:
ba RET1000
nop


P1099: !_MEMBAR (FP) (Secondary ctx)

P1100: !_BST [29] (maybe <- 0x4080004e) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P1101: !_MEMBAR (FP) (Secondary ctx)

P1102: !_BST [15] (maybe <- 0x4080004f) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1102
nop
RET1102:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1103: !_MEMBAR (FP) (Branch target of P1037)
membar #StoreLoad
ba P1104
nop

TARGET1037:
ba RET1037
nop


P1104: !_LD [11] (Int)
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1

P1105: !_REPLACEMENT [0] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P1106: !_REPLACEMENT [18] (Int)
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P1107: !_MEMBAR (FP)
membar #StoreLoad

P1108: !_BLD [8] (FP) (Branch target of P952)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3
ba P1109
nop

TARGET952:
ba RET952
nop


P1109: !_MEMBAR (FP) (Branch target of P1128)
ba P1110
nop

TARGET1128:
ba RET1128
nop


P1110: !_LD [6] (FP)
ld [%i0 + 96], %f4
! 1 addresses covered

P1111: !_MEMBAR (FP) (Secondary ctx)

P1112: !_BST [25] (maybe <- 0x40800050) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P1113: !_MEMBAR (FP) (Secondary ctx)

P1114: !_BST [23] (maybe <- 0x40800052) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1115: !_MEMBAR (FP) (Branch target of P1301)
ba P1116
nop

TARGET1301:
ba RET1301
nop


P1116: !_BST [8] (maybe <- 0x40800055) (FP) (Branch target of P1311)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P1117
nop

TARGET1311:
ba RET1311
nop


P1117: !_MEMBAR (FP)
membar #StoreLoad

P1118: !_BLD [7] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1118
nop
RET1118:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1119: !_MEMBAR (FP)

P1120: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P1121: !_REPLACEMENT [28] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1121
nop
RET1121:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1122: !_LD [4] (Int)
lduw [%i0 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1123: !_MEMBAR (FP)
membar #StoreLoad

P1124: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f6

P1125: !_MEMBAR (FP)

P1126: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f18, %f9
fmovd %f36, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P1127: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1127
nop
RET1127:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1128: !_REPLACEMENT [20] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+256], %l3
st %l3, [%i2+256]
add %i2, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1128
nop
RET1128:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1129: !_REPLACEMENT [15] (Int)
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1130: !_LD [2] (FP)
ld [%i0 + 8], %f12
! 1 addresses covered

P1131: !_MEMBAR (FP)

P1132: !_BST [29] (maybe <- 0x40800057) (FP) (CBR) (Branch target of P1160)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1132
nop
RET1132:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1133
nop

TARGET1160:
ba RET1160
nop


P1133: !_MEMBAR (FP)
membar #StoreLoad

P1134: !_REPLACEMENT [15] (Int) (Secondary ctx) (Branch target of P1071)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
ba P1135
nop

TARGET1071:
ba RET1071
nop


P1135: !_LD [9] (Int) (LE) (Branch target of P1177)
wr %g0, 0x88, %asi
lduwa [%i1 + 32] %asi, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
ba P1136
nop

TARGET1177:
ba RET1177
nop


P1136: !_REPLACEMENT [13] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i2+32], %l3
st %l3, [%i2+32]
add %i2, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1136
nop
RET1136:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1137: !_IDC_FLIP [10] (Int)
IDC_FLIP(1137, 13258, 2, 0x43800040, 0x40, %i1, 0x40, %l6, %l7, %o5, %l3)

P1138: !_ST [27] (maybe <- 0x40800058) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 160 ]

P1139: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1139
nop
RET1139:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1140: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f36, %f0
fmovd %f40, %f18
fmovs %f18, %f1

P1141: !_MEMBAR (FP)

P1142: !_ST [12] (maybe <- 0x100000f) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1143: !_MEMBAR (FP)
membar #StoreLoad

P1144: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P1145: !_MEMBAR (FP)

P1146: !_BST [23] (maybe <- 0x40800059) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1147: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1148: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f40, %f6

P1149: !_MEMBAR (FP) (Branch target of P973)
ba P1150
nop

TARGET973:
ba RET973
nop


P1150: !_LD [18] (Int) (Branch target of P1036)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 128], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
ba P1151
nop

TARGET1036:
ba RET1036
nop


P1151: !_REPLACEMENT [5] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P1152: !_MEMBAR (FP)
membar #StoreLoad

P1153: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7

P1154: !_MEMBAR (FP)

P1155: !_REPLACEMENT [20] (Int) (CBR) (Branch target of P1045)
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1155
nop
RET1155:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1156
nop

TARGET1045:
ba RET1045
nop


P1156: !_LD [8] (Int)
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1157: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1157
nop
RET1157:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1158: !_BST [24] (maybe <- 0x4080005c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P1159: !_MEMBAR (FP)
membar #StoreLoad

P1160: !_REPLACEMENT [10] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i3+64], %l3
st %l3, [%i3+64]
add %i3, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1160
nop
RET1160:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1161: !_REPLACEMENT [7] (Int)
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1162: !_IDC_FLIP [30] (Int) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1162, 25155, 2, 0x46000080, 0x80, %i3, 0x80, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1162
nop
RET1162:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1163: !_LD [32] (Int)
lduw [%i3 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1164: !_REPLACEMENT [20] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+256], %l7
st %l7, [%i2+256]
add %i2, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P1165: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1166: !_BLD [33] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

P1167: !_MEMBAR (FP) (Secondary ctx)

P1168: !_REPLACEMENT [26] (Int) (CBR) (Nucleus ctx) (Branch target of P939)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i2+128], %l7
st %l7, [%i2+128]
add %i2, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1168
nop
RET1168:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1169
nop

TARGET939:
ba RET939
nop


P1169: !_ST [16] (maybe <- 0x1000010) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 16 ]
add   %l4, 1, %l4

P1170: !_MEMBAR (FP)
membar #StoreLoad

P1171: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P1172: !_MEMBAR (FP)

P1173: !_PREFETCH [4] (Int) (Branch target of P1379)
prefetch [%i0 + 32], 1
ba P1174
nop

TARGET1379:
ba RET1379
nop


P1174: !_IDC_FLIP [23] (Int) (Branch target of P1395)
IDC_FLIP(1174, 150, 2, 0x45800020, 0x20, %i3, 0x20, %l6, %l7, %o5, %l3)
ba P1175
nop

TARGET1395:
ba RET1395
nop


P1175: !_REPLACEMENT [20] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+256], %o5
st %o5, [%i2+256]
add %i2, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

P1176: !_REPLACEMENT [20] (Int) (Secondary ctx) (Branch target of P1425)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i2+256], %l7
st %l7, [%i2+256]
add %i2, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
ba P1177
nop

TARGET1425:
ba RET1425
nop


P1177: !_IDC_FLIP [6] (Int) (CBR)
IDC_FLIP(1177, 30381, 2, 0x43000060, 0x60, %i0, 0x60, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1177
nop
RET1177:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1178: !_REPLACEMENT [11] (Int) (Branch target of P1118)
sethi %hi(0x2000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
ba P1179
nop

TARGET1118:
ba RET1118
nop


P1179: !_REPLACEMENT [18] (Int)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P1180: !_ST [29] (maybe <- 0x4080005e) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 64 ] %asi

P1181: !_LD [24] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 64], %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1182: !_LD [10] (Int)
lduw [%i1 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1183: !_MEMBAR (FP)
membar #StoreLoad

P1184: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f12

P1185: !_MEMBAR (FP)

P1186: !_REPLACEMENT [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P1187: !_ST [30] (maybe <- 0x4080005f) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P1188: !_LD [29] (FP)
ld [%i3 + 64], %f13
! 1 addresses covered

P1189: !_MEMBAR (FP)
membar #StoreLoad

P1190: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P1191: !_MEMBAR (FP) (Branch target of P1272)
ba P1192
nop

TARGET1272:
ba RET1272
nop


P1192: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P1193: !_MEMBAR (FP)

P1194: !_ST [8] (maybe <- 0x1000011) (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i1 + 0] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1194
nop
RET1194:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1195: !_REPLACEMENT [31] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+192], %o5
st %o5, [%i3+192]
add %i3, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]
add %l7, %l6, %l7
ld [%l7+192], %o5
st %o5, [%l7+192]

P1196: !_MEMBAR (FP)

P1197: !_BST [19] (maybe <- 0x40800060) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1198: !_MEMBAR (FP) (Branch target of P879)
membar #StoreLoad
ba P1199
nop

TARGET879:
ba RET879
nop


P1199: !_IDC_FLIP [4] (Int)
IDC_FLIP(1199, 28495, 2, 0x43000020, 0x20, %i0, 0x20, %l6, %l7, %o5, %l3)

P1200: !_LD [10] (Int)
lduw [%i1 + 64], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1201: !_REPLACEMENT [7] (Int) (Branch target of P1329)
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
ba P1202
nop

TARGET1329:
ba RET1329
nop


P1202: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1202
nop
RET1202:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1203: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P1204: !_MEMBAR (FP)

P1205: !_BST [0] (maybe <- 0x40800061) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1205
nop
RET1205:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1206: !_MEMBAR (FP) (Branch target of P1309)
membar #StoreLoad
ba P1207
nop

TARGET1309:
ba RET1309
nop


P1207: !_REPLACEMENT [5] (Int)
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P1208: !_ST [9] (maybe <- 0x40800066) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1208
nop
RET1208:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1209: !_LD [9] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i1 + 32] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1210: !_LD [23] (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1210
nop
RET1210:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1211: !_MEMBAR (FP) (CBR) (Branch target of P897)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1211
nop
RET1211:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1212
nop

TARGET897:
ba RET897
nop


P1212: !_BST [28] (maybe <- 0x40800067) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1212
nop
RET1212:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1213: !_MEMBAR (FP)
membar #StoreLoad

P1214: !_REPLACEMENT [0] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P1215: !_REPLACEMENT [5] (Int) (Nucleus ctx) (Branch target of P1430)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
ba P1216
nop

TARGET1430:
ba RET1430
nop


P1216: !_LD [19] (FP) (Branch target of P1013)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f4
! 1 addresses covered
ba P1217
nop

TARGET1013:
ba RET1013
nop


P1217: !_ST [23] (maybe <- 0x1000012) (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 32] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1217
nop
RET1217:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1218: !_REPLACEMENT [24] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P1219: !_LD [20] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 256], %f5
! 1 addresses covered

P1220: !_ST [4] (maybe <- 0x40800068) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]

P1221: !_ST [18] (maybe <- 0x40800069) (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]

P1222: !_MEMBAR (FP)

P1223: !_BST [29] (maybe <- 0x4080006a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P1224: !_MEMBAR (FP) (CBR) (Branch target of P1330)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1224
nop
RET1224:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1225
nop

TARGET1330:
ba RET1330
nop


P1225: !_BST [13] (maybe <- 0x4080006b) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1226: !_MEMBAR (FP) (Secondary ctx) (Branch target of P1248)
membar #StoreLoad
ba P1227
nop

TARGET1248:
ba RET1248
nop


P1227: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

P1228: !_MEMBAR (FP)

P1229: !_ST [18] (maybe <- 0x4080006e) (FP) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1229
nop
RET1229:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1230: !_MEMBAR (FP)

P1231: !_BST [1] (maybe <- 0x4080006f) (FP) (Branch target of P1028)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P1232
nop

TARGET1028:
ba RET1028
nop


P1232: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1232
nop
RET1232:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1233: !_ST [27] (maybe <- 0x40800074) (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 160 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1233
nop
RET1233:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1234: !_REPLACEMENT [9] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+32], %l6
st %l6, [%i3+32]
add %i3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P1235: !_ST [30] (maybe <- 0x40800075) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]

P1236: !_MEMBAR (FP)

P1237: !_BST [1] (maybe <- 0x40800076) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1238: !_MEMBAR (FP)
membar #StoreLoad

P1239: !_REPLACEMENT [20] (Int) (Branch target of P1285)
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
ba P1240
nop

TARGET1285:
ba RET1285
nop


P1240: !_LD [19] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1241: !_REPLACEMENT [29] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P1242: !_REPLACEMENT [12] (Int) (Secondary ctx) (Branch target of P1054)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
ba P1243
nop

TARGET1054:
ba RET1054
nop


P1243: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1243
nop
RET1243:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1244: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P1245: !_MEMBAR (FP)

P1246: !_LD [8] (Int) (CBR) (Branch target of P971)
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1246
nop
RET1246:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1247
nop

TARGET971:
ba RET971
nop


P1247: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1247
nop
RET1247:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1248: !_BLD [17] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f18
fmovs %f18, %f9

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1248
nop
RET1248:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1249: !_MEMBAR (FP)

P1250: !_ST [12] (maybe <- 0x4080007b) (FP) (Nucleus ctx) (Branch target of P1136)
wr %g0, 0x4, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 4 ] %asi
ba P1251
nop

TARGET1136:
ba RET1136
nop


P1251: !_LD [18] (Int)
lduw [%i2 + 128], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1252: !_IDC_FLIP [25] (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1252, 8767, 2, 0x45800060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1252
nop
RET1252:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1253: !_LD [2] (Int)
lduw [%i0 + 8], %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3

P1254: !_MEMBAR (FP)

P1255: !_BST [16] (maybe <- 0x4080007c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1256: !_MEMBAR (FP) (Branch target of P1229)
membar #StoreLoad
ba P1257
nop

TARGET1229:
ba RET1229
nop


P1257: !_LD [14] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1257
nop
RET1257:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1258: !_MEMBAR (FP) (Branch target of P1378)
membar #StoreLoad
ba P1259
nop

TARGET1378:
ba RET1378
nop


P1259: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10

P1260: !_MEMBAR (FP)

P1261: !_LD [17] (Int)
lduw [%i3 + 96], %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1262: !_REPLACEMENT [19] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P1263: !_ST [21] (maybe <- 0x1000013) (Int) (Branch target of P1350)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
ba P1264
nop

TARGET1350:
ba RET1350
nop


P1264: !_MEMBAR (FP) (CBR) (Branch target of P988)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1264
nop
RET1264:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1265
nop

TARGET988:
ba RET988
nop


P1265: !_BSTC [2] (maybe <- 0x4080007d) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1266: !_MEMBAR (FP)
membar #StoreLoad

P1267: !_LD [8] (Int)
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1268: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1269: !_BLD [3] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f18, %f13
fmovd %f36, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P1270: !_MEMBAR (FP) (Secondary ctx)

P1271: !_ST [21] (maybe <- 0x40800082) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 0 ] %asi

P1272: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1272
nop
RET1272:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1273: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 5 addresses covered
fmovs %f4, %f3
fmovd %f8, %f4

P1274: !_MEMBAR (FP) (Branch target of P1393)
ba P1275
nop

TARGET1393:
ba RET1393
nop


P1275: !_LD [18] (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 128], %f5
! 1 addresses covered

P1276: !_LD [30] (Int) (Nucleus ctx) (Branch target of P1202)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 128] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
ba P1277
nop

TARGET1202:
ba RET1202
nop


P1277: !_ST [4] (maybe <- 0x40800083) (FP) (Branch target of P1017)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]
ba P1278
nop

TARGET1017:
ba RET1017
nop


P1278: !_LD [29] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i2 + 64] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1279: !_MEMBAR (FP)

P1280: !_BST [19] (maybe <- 0x40800084) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1281: !_MEMBAR (FP)
membar #StoreLoad

P1282: !_LD [8] (FP) (Branch target of P1305)
ld [%i1 + 0], %f6
! 1 addresses covered
ba P1283
nop

TARGET1305:
ba RET1305
nop


P1283: !_LD [14] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 64], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1

P1284: !_IDC_FLIP [17] (Int) (Branch target of P1132)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1284, 32481, 2, 0x44800060, 0x60, %i3, 0x60, %l6, %l7, %o5, %l3)
ba P1285
nop

TARGET1132:
ba RET1132
nop


P1285: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1285
nop
RET1285:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1286: !_BST [14] (maybe <- 0x40800085) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1286
nop
RET1286:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1287: !_MEMBAR (FP)
membar #StoreLoad

P1288: !_ST [13] (maybe <- 0x1000014) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P1289: !_MEMBAR (FP)
membar #StoreLoad

P1290: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f40, %f18
fmovs %f18, %f9

P1291: !_MEMBAR (FP)

P1292: !_REPLACEMENT [12] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P1293: !_REPLACEMENT [28] (Int)
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P1294: !_MEMBAR (FP)

P1295: !_BST [17] (maybe <- 0x40800086) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P1296: !_MEMBAR (FP)

P1297: !_BSTC [10] (maybe <- 0x40800087) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P1298: !_MEMBAR (FP)
membar #StoreLoad

P1299: !_IDC_FLIP [20] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1299, 20531, 2, 0x45000100, 0x100, %i2, 0x100, %l6, %l7, %o5, %l3)

P1300: !_LD [14] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1301: !_REPLACEMENT [3] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+16], %l6
st %l6, [%i2+16]
add %i2, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1301
nop
RET1301:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1302: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1303: !_BLD [15] (FP) (Secondary ctx) (Branch target of P1155)
wr %g0, 0xf1, %asi
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10
ba P1304
nop

TARGET1155:
ba RET1155
nop


P1304: !_MEMBAR (FP) (Secondary ctx) (Branch target of P1072)
ba P1305
nop

TARGET1072:
ba RET1072
nop


P1305: !_BLD [16] (FP) (CBR) (Branch target of P1380)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f36, %f18
fmovs %f18, %f11

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1305
nop
RET1305:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1306
nop

TARGET1380:
ba RET1380
nop


P1306: !_MEMBAR (FP)

P1307: !_REPLACEMENT [6] (Int) (Secondary ctx) (Branch target of P1419)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i2+96], %l7
st %l7, [%i2+96]
add %i2, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
ba P1308
nop

TARGET1419:
ba RET1419
nop


P1308: !_LD [14] (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 64], %f12
! 1 addresses covered

P1309: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1309
nop
RET1309:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1310: !_BST [33] (maybe <- 0x40800088) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1311: !_MEMBAR (FP) (CBR) (Branch target of P1409)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1311
nop
RET1311:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1312
nop

TARGET1409:
ba RET1409
nop


P1312: !_IDC_FLIP [0] (Int)
IDC_FLIP(1312, 19991, 2, 0x43000000, 0x0, %i0, 0x0, %l6, %l7, %o5, %l3)

P1313: !_REPLACEMENT [3] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+16], %o5
st %o5, [%i2+16]
add %i2, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]

P1314: !_ST [32] (maybe <- 0x1000015) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 256] %asi
add   %l4, 1, %l4

P1315: !_REPLACEMENT [19] (Int) (Branch target of P1024)
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
ba P1316
nop

TARGET1024:
ba RET1024
nop


P1316: !_MEMBAR (FP) (Branch target of P1061)
membar #StoreLoad
ba P1317
nop

TARGET1061:
ba RET1061
nop


P1317: !_BLD [10] (FP) (Branch target of P1233)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
ba P1318
nop

TARGET1233:
ba RET1233
nop


P1318: !_MEMBAR (FP)

P1319: !_REPLACEMENT [10] (Int)
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P1320: !_REPLACEMENT [10] (Int)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P1321: !_ST [14] (maybe <- 0x40800089) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 64 ] %asi

P1322: !_MEMBAR (FP)

P1323: !_BST [21] (maybe <- 0x4080008a) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1323
nop
RET1323:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1324: !_MEMBAR (FP)
membar #StoreLoad

P1325: !_REPLACEMENT [1] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+4], %l6
st %l6, [%i2+4]
add %i2, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P1326: !_LD [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2

P1327: !_REPLACEMENT [30] (Int) (Branch target of P1212)
sethi %hi(0x2000), %l3
ld [%i2+128], %l7
st %l7, [%i2+128]
add %i2, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
ba P1328
nop

TARGET1212:
ba RET1212
nop


P1328: !_MEMBAR (FP)
membar #StoreLoad

P1329: !_BLD [2] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f34, %f0
fmovd %f36, %f18
fmovs %f18, %f1
fmovd %f40, %f2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1329
nop
RET1329:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1330: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1330
nop
RET1330:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1331: !_BST [25] (maybe <- 0x4080008d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P1332: !_MEMBAR (FP)
membar #StoreLoad

P1333: !_LD [17] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 96], %f3
! 1 addresses covered

P1334: !_REPLACEMENT [18] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+128], %l7
st %l7, [%i2+128]
add %i2, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P1335: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1335
nop
RET1335:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1336: !_BST [8] (maybe <- 0x4080008f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1337: !_MEMBAR (FP)

P1338: !_BSTC [0] (maybe <- 0x40800091) (FP) (Branch target of P1418)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P1339
nop

TARGET1418:
ba RET1418
nop


P1339: !_MEMBAR (FP)
membar #StoreLoad

P1340: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f4
fmovd %f34, %f6
fmovd %f36, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P1341: !_MEMBAR (FP) (Branch target of P1070)
ba P1342
nop

TARGET1070:
ba RET1070
nop


P1342: !_REPLACEMENT [7] (Int)
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1343: !_REPLACEMENT [3] (Int)
sethi %hi(0x2000), %l6
ld [%i2+16], %o5
st %o5, [%i2+16]
add %i2, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]

P1344: !_REPLACEMENT [13] (Int) (Branch target of P885)
sethi %hi(0x2000), %l3
ld [%i2+32], %l7
st %l7, [%i2+32]
add %i2, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
ba P1345
nop

TARGET885:
ba RET885
nop


P1345: !_REPLACEMENT [16] (Int)
sethi %hi(0x2000), %o5
ld [%i2+16], %l6
st %l6, [%i2+16]
add %i2, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

P1346: !_REPLACEMENT [2] (Int)
sethi %hi(0x2000), %l7
ld [%i2+8], %l3
st %l3, [%i2+8]
add %i2, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]

P1347: !_MEMBAR (FP)

P1348: !_BST [15] (maybe <- 0x40800096) (FP) (Branch target of P1423)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi
ba P1349
nop

TARGET1423:
ba RET1423
nop


P1349: !_MEMBAR (FP)
membar #StoreLoad

P1350: !_REPLACEMENT [13] (Int) (CBR) (Branch target of P1082)
sethi %hi(0x2000), %l3
ld [%i2+32], %l7
st %l7, [%i2+32]
add %i2, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1350
nop
RET1350:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1351
nop

TARGET1082:
ba RET1082
nop


P1351: !_MEMBAR (FP) (Branch target of P1247)
ba P1352
nop

TARGET1247:
ba RET1247
nop


P1352: !_BST [3] (maybe <- 0x40800097) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1353: !_MEMBAR (FP)
membar #StoreLoad

P1354: !_REPLACEMENT [17] (Int)
sethi %hi(0x2000), %o5
ld [%i2+96], %l6
st %l6, [%i2+96]
add %i2, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

P1355: !_REPLACEMENT [31] (Int)
sethi %hi(0x2000), %l7
ld [%i2+192], %l3
st %l3, [%i2+192]
add %i2, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]

P1356: !_LD [1] (FP)
ld [%i0 + 4], %f9
! 1 addresses covered

P1357: !_IDC_FLIP [14] (Int)
IDC_FLIP(1357, 29966, 2, 0x44000040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

P1358: !_REPLACEMENT [32] (Int) (Branch target of P860)
sethi %hi(0x2000), %l6
ld [%i2+256], %o5
st %o5, [%i2+256]
add %i2, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
ba P1359
nop

TARGET860:
ba RET860
nop


P1359: !_MEMBAR (FP) (Secondary ctx)

P1360: !_BST [30] (maybe <- 0x4080009c) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P1361: !_MEMBAR (FP) (Secondary ctx)

P1362: !_BST [14] (maybe <- 0x4080009d) (FP) (Secondary ctx) (Branch target of P1431)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi
ba P1363
nop

TARGET1431:
ba RET1431
nop


P1363: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1364: !_REPLACEMENT [7] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P1365: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1365
nop
RET1365:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1366: !_BST [15] (maybe <- 0x4080009e) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1366
nop
RET1366:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1367: !_MEMBAR (FP)
membar #StoreLoad

P1368: !_REPLACEMENT [24] (Int)
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P1369: !_LD [13] (FP) (Branch target of P1392)
ld [%i2 + 32], %f10
! 1 addresses covered
ba P1370
nop

TARGET1392:
ba RET1392
nop


P1370: !_LD [1] (FP)
ld [%i0 + 4], %f11
! 1 addresses covered

P1371: !_LD [28] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f12
! 1 addresses covered

P1372: !_MEMBAR (FP)

P1373: !_BST [31] (maybe <- 0x4080009f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

P1374: !_MEMBAR (FP) (Branch target of P1051)
membar #StoreLoad
ba P1375
nop

TARGET1051:
ba RET1051
nop


P1375: !_BLD [28] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13

P1376: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1376
nop
RET1376:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1377: !_REPLACEMENT [13] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+32], %l3
st %l3, [%i2+32]
add %i2, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P1378: !_REPLACEMENT [26] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1378
nop
RET1378:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1379: !_REPLACEMENT [33] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1379
nop
RET1379:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1380: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1380
nop
RET1380:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1381: !_BST [21] (maybe <- 0x408000a0) (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1381
nop
RET1381:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1382: !_MEMBAR (FP) (Secondary ctx)

P1383: !_BSTC [20] (maybe <- 0x408000a3) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P1384: !_MEMBAR (FP)
membar #StoreLoad

P1385: !_ST [1] (maybe <- 0x1000016) (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1385
nop
RET1385:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1386: !_REPLACEMENT [9] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+32], %o5
st %o5, [%i3+32]
add %i3, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

P1387: !_LD [26] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 128], %f14
! 1 addresses covered

P1388: !_IDC_FLIP [19] (Int) (Branch target of P1030)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1388, 19390, 2, 0x45000000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)
ba P1389
nop

TARGET1030:
ba RET1030
nop


P1389: !_LD [10] (Int)
lduw [%i1 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1390: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1390
nop
RET1390:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1391: !_BLD [27] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

P1392: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1392
nop
RET1392:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1393: !_REPLACEMENT [12] (Int) (CBR) (Branch target of P913)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1393
nop
RET1393:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1394
nop

TARGET913:
ba RET913
nop


P1394: !_LD [29] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 64] %asi, %f1
! 1 addresses covered

P1395: !_LD [3] (FP) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
lda    [%i0 + 16] %asi, %f2
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1395
nop
RET1395:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1396: !_REPLACEMENT [9] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i2+32], %l3
st %l3, [%i2+32]
add %i2, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1396
nop
RET1396:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1397: !_ST [9] (maybe <- 0x1000017) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i1 + 32] %asi
add   %l4, 1, %l4

P1398: !_ST [19] (maybe <- 0x408000a4) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P1399: !_MEMBAR (FP)
membar #StoreLoad

P1400: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P1401: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1401
nop
RET1401:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1402: !_REPLACEMENT [1] (Int) (CBR) (Secondary ctx) (Branch target of P993)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1402
nop
RET1402:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1403
nop

TARGET993:
ba RET993
nop


P1403: !_MEMBAR (FP)

P1404: !_BSTC [1] (maybe <- 0x408000a5) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1405: !_MEMBAR (FP)
membar #StoreLoad

P1406: !_REPLACEMENT [1] (Int) (Branch target of P1076)
sethi %hi(0x2000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
ba P1407
nop

TARGET1076:
ba RET1076
nop


P1407: !_REPLACEMENT [13] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P1408: !_ST [20] (maybe <- 0x408000aa) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 256 ]

P1409: !_LD [20] (FP) (CBR)
ld [%i3 + 256], %f4
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1409
nop
RET1409:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1410: !_REPLACEMENT [30] (Int)
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1411: !_LD [26] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 128], %f5
! 1 addresses covered

P1412: !_MEMBAR (FP)
membar #StoreLoad

P1413: !_BLD [32] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1413
nop
RET1413:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1414: !_MEMBAR (FP)

P1415: !_LD [3] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i0 + 16] %asi, %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3

P1416: !_MEMBAR (FP)
membar #StoreLoad

P1417: !_BLD [6] (FP) (Branch target of P1139)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8
ba P1418
nop

TARGET1139:
ba RET1139
nop


P1418: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1418
nop
RET1418:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1419: !_BST [16] (maybe <- 0x408000ab) (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1419
nop
RET1419:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1420: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1420
nop
RET1420:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1421: !_BST [20] (maybe <- 0x408000ac) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P1422: !_MEMBAR (FP) (Branch target of P1385)
membar #StoreLoad
ba P1423
nop

TARGET1385:
ba RET1385
nop


P1423: !_LD [23] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1423
nop
RET1423:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1424: !_REPLACEMENT [5] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P1425: !_LD [27] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i2 + 160] %asi, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1425
nop
RET1425:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1426: !_REPLACEMENT [10] (Int)
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P1427: !_REPLACEMENT [3] (Int)
sethi %hi(0x2000), %l7
ld [%i3+16], %l3
st %l3, [%i3+16]
add %i3, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]

P1428: !_MEMBAR (FP)
membar #StoreLoad

P1429: !_BLD [27] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovd %f40, %f10

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1429
nop
RET1429:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1430: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1430
nop
RET1430:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1431: !_BLD [23] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f40, %f18
fmovs %f18, %f13

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1431
nop
RET1431:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1432: !_MEMBAR (FP)

P1433: !_BST [6] (maybe <- 0x408000ad) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P1434: !_MEMBAR (FP)
membar #StoreLoad

P1435: !_LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1436: !_MEMBAR (FP)

P1437: !_BST [9] (maybe <- 0x408000af) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1438: !_MEMBAR (FP)
membar #StoreLoad

P1439: !_BLD [12] (FP) (Branch target of P1210)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0
ba P1440
nop

TARGET1210:
ba RET1210
nop


P1440: !_MEMBAR (FP)

P1441: !_ST [11] (maybe <- 0x1000018) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1442: !_ST [2] (maybe <- 0x1000019) (Int) (CBR) (Branch target of P1194)
stw   %l4, [%i0 + 8 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1442
nop
RET1442:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1443
nop

TARGET1194:
ba RET1194
nop


P1443: !_REPLACEMENT [29] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1443
nop
RET1443:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1444: !_REPLACEMENT [6] (Int)
sethi %hi(0x2000), %o5
ld [%i3+96], %l6
st %l6, [%i3+96]
add %i3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

P1445: !_PREFETCH [23] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 32] %asi, 1

P1446: !_MEMBAR (FP) (Branch target of P1232)
membar #StoreLoad
ba P1447
nop

TARGET1232:
ba RET1232
nop


P1447: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P1448: !_MEMBAR (FP) (Branch target of P1211)
ba P1449
nop

TARGET1211:
ba RET1211
nop


P1449: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f4
fmovd %f34, %f6
fmovd %f36, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P1450: !_MEMBAR (FP)

P1451: !_LD [6] (Int) (Loop exit) (Nucleus ctx) (Branch target of P1257)
wr %g0, 0x4, %asi
lduwa [%i0 + 96] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovs %f8, %f30
!--
loop_exit_2_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_0
nop
ba P1452
nop

TARGET1257:
ba RET1257
nop


P1452: !_MEMBAR (Int)
membar #StoreLoad

END_NODES2: ! Test instruction sequence for CPU 2 ends
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
stw %l6, [%i5] 
ld [%i5], %f0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

restore
retl
nop
!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func3:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l3
or    %l3, %lo(0xdeadbee0), %l3
stw   %l3, [%i5]
sethi %hi(0xdeadbee1), %l3
or    %l3, %lo(0xdeadbee1), %l3
stw   %l3, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x03deade1), %l3
or    %l3, %lo(0x03deade1), %l3
stw %l3, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1800001), %l4
or    %l4, %lo(0x1800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x41000001), %l3
or    %l3, %lo(0x41000001), %l3
stw %l3, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x35800000), %l3
or    %l3, %lo(0x35800000), %l3
stw %l3, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x1927^4
sethi %hi(0x1927), %l0
or    %l0, %lo(0x1927), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES3: ! Test instruction sequence for ISTREAM 3 begins

P1453: !_MEMBAR (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_0:
membar #StoreLoad

P1454: !_BLD [7] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f0
membar #Sync
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1454
nop
RET1454:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1455: !_MEMBAR (FP)

P1456: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovd %f40, %f2

P1457: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1457
nop
RET1457:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1458: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4

P1459: !_MEMBAR (FP)

P1460: !_ST [21] (maybe <- 0x41000001) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 0 ] %asi

P1461: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1461
nop
RET1461:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1462: !_BSTC [32] (maybe <- 0x41000002) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P1463: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1463
nop
RET1463:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1464: !_REPLACEMENT [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+16], %l6
st %l6, [%i2+16]
add %i2, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

P1465: !_MEMBAR (FP) (Branch target of P1454)
membar #StoreLoad
ba P1466
nop

TARGET1454:
ba RET1454
nop


P1466: !_BLD [28] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

P1467: !_MEMBAR (FP)

P1468: !_IDC_FLIP [31] (Int)
IDC_FLIP(1468, 29792, 3, 0x460000c0, 0xc0, %i3, 0xc0, %l6, %l7, %o5, %l3)

P1469: !_MEMBAR (FP)

P1470: !_BST [27] (maybe <- 0x41000003) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P1471: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1471
nop
RET1471:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1472: !_REPLACEMENT [18] (Int)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P1473: !_MEMBAR (FP)
membar #StoreLoad

P1474: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f6
fmovd %f34, %f8
fmovd %f36, %f18
fmovs %f18, %f9
fmovd %f40, %f10

P1475: !_MEMBAR (FP) (Branch target of P1658)
ba P1476
nop

TARGET1658:
ba RET1658
nop


P1476: !_LD [11] (FP) (Secondary ctx) (Branch target of P1906)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 0] %asi, %f11
! 1 addresses covered
ba P1477
nop

TARGET1906:
ba RET1906
nop


P1477: !_REPLACEMENT [16] (Int) (Branch target of P2083)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+16], %l7
st %l7, [%i3+16]
add %i3, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
ba P1478
nop

TARGET2083:
ba RET2083
nop


P1478: !_REPLACEMENT [7] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P1479: !_LD [11] (FP)
ld [%i2 + 0], %f12
! 1 addresses covered

P1480: !_REPLACEMENT [7] (Int)
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1481: !_ST [16] (maybe <- 0x1800001) (Int) (Secondary ctx) (Branch target of P1528)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 16] %asi
add   %l4, 1, %l4
ba P1482
nop

TARGET1528:
ba RET1528
nop


P1482: !_REPLACEMENT [26] (Int) (Nucleus ctx) (Branch target of P1735)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
ba P1483
nop

TARGET1735:
ba RET1735
nop


P1483: !_MEMBAR (FP) (Branch target of P1577)
membar #StoreLoad
ba P1484
nop

TARGET1577:
ba RET1577
nop


P1484: !_BLD [27] (FP) (Branch target of P2022)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14
ba P1485
nop

TARGET2022:
ba RET2022
nop


P1485: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1485
nop
RET1485:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1486: !_ST [3] (maybe <- 0x41000005) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 16 ]

P1487: !_MEMBAR (FP)

P1488: !_BSTC [5] (maybe <- 0x41000006) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P1489: !_MEMBAR (FP) (Branch target of P1690)
membar #StoreLoad
ba P1490
nop

TARGET1690:
ba RET1690
nop


P1490: !_REPLACEMENT [1] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P1491: !_ST [26] (maybe <- 0x41000008) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P1492: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1492
nop
RET1492:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1493: !_BLD [29] (FP) (Branch target of P1586)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
ba P1494
nop

TARGET1586:
ba RET1586
nop


P1494: !_MEMBAR (FP)

P1495: !_REPLACEMENT [14] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P1496: !_REPLACEMENT [24] (Int) (CBR)
sethi %hi(0x2000), %l3
ld [%i2+64], %l7
st %l7, [%i2+64]
add %i2, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1496
nop
RET1496:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1497: !_MEMBAR (FP)

P1498: !_BST [21] (maybe <- 0x41000009) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1499: !_MEMBAR (FP)
membar #StoreLoad

P1500: !_LD [23] (FP)
ld [%i2 + 32], %f0
! 1 addresses covered

P1501: !_LD [21] (FP)
ld [%i2 + 0], %f1
! 1 addresses covered

P1502: !_ST [19] (maybe <- 0x4100000c) (FP) (CBR) (Nucleus ctx) (Branch target of P1754)
wr %g0, 0x4, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1502
nop
RET1502:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1503
nop

TARGET1754:
ba RET1754
nop


P1503: !_MEMBAR (FP)
membar #StoreLoad

P1504: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P1505: !_MEMBAR (FP)

P1506: !_MEMBAR (Int)
membar #StoreLoad

P1507: !_REPLACEMENT [5] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+64], %l6
st %l6, [%i2+64]
add %i2, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P1508: !_ST [17] (maybe <- 0x1800002) (Int) (Branch target of P2036)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 96 ]
add   %l4, 1, %l4
ba P1509
nop

TARGET2036:
ba RET2036
nop


P1509: !_REPLACEMENT [6] (Int) (CBR) (Branch target of P1765)
sethi %hi(0x2000), %l6
ld [%i2+96], %o5
st %o5, [%i2+96]
add %i2, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1509
nop
RET1509:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1510
nop

TARGET1765:
ba RET1765
nop


P1510: !_ST [7] (maybe <- 0x4100000d) (FP) (Branch target of P1996)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 128 ]
ba P1511
nop

TARGET1996:
ba RET1996
nop


P1511: !_MEMBAR (FP)

P1512: !_BST [28] (maybe <- 0x4100000e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1513: !_MEMBAR (FP)

P1514: !_BST [0] (maybe <- 0x4100000f) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1514
nop
RET1514:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1515: !_MEMBAR (FP)
membar #StoreLoad

P1516: !_LD [2] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
lda    [%i0 + 8] %asi, %f4
! 1 addresses covered

P1517: !_ST [26] (maybe <- 0x41000014) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P1518: !_MEMBAR (FP) (Branch target of P1945)
ba P1519
nop

TARGET1945:
ba RET1945
nop


P1519: !_BST [13] (maybe <- 0x41000015) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1520: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1520
nop
RET1520:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1521: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P1522: !_IDC_FLIP [2] (Int)
IDC_FLIP(1522, 20797, 3, 0x43000008, 0x8, %i0, 0x8, %l6, %l7, %o5, %l3)

P1523: !_REPLACEMENT [20] (Int) (Branch target of P2026)
sethi %hi(0x2000), %l6
ld [%i3+256], %o5
st %o5, [%i3+256]
add %i3, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
ba P1524
nop

TARGET2026:
ba RET2026
nop


P1524: !_ST [17] (maybe <- 0x1800003) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 96 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1524
nop
RET1524:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1525: !_REPLACEMENT [29] (Int) (CBR) (Nucleus ctx) (Branch target of P1762)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i3+64], %l7
st %l7, [%i3+64]
add %i3, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1525
nop
RET1525:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1526
nop

TARGET1762:
ba RET1762
nop


P1526: !_REPLACEMENT [32] (Int) (Branch target of P1674)
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
ba P1527
nop

TARGET1674:
ba RET1674
nop


P1527: !_REPLACEMENT [10] (Int)
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P1528: !_MEMBAR (FP) (CBR) (Branch target of P1463)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1528
nop
RET1528:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1529
nop

TARGET1463:
ba RET1463
nop


P1529: !_BLD [31] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1529
nop
RET1529:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1530: !_MEMBAR (FP)

P1531: !_REPLACEMENT [8] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P1532: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1532
nop
RET1532:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1533: !_BST [3] (maybe <- 0x41000018) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1534: !_MEMBAR (FP) (Branch target of P1665)
membar #StoreLoad
ba P1535
nop

TARGET1665:
ba RET1665
nop


P1535: !_BLD [5] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f6
fmovd %f40, %f18
fmovs %f18, %f7

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1535
nop
RET1535:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1536: !_MEMBAR (FP)

P1537: !_IDC_FLIP [0] (Int)
IDC_FLIP(1537, 12946, 3, 0x43000000, 0x0, %i0, 0x0, %l6, %l7, %o5, %l3)

P1538: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1538
nop
RET1538:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1539: !_BSTC [2] (maybe <- 0x4100001d) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1540: !_MEMBAR (FP)

P1541: !_BST [31] (maybe <- 0x41000022) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

P1542: !_MEMBAR (FP)
membar #StoreLoad

P1543: !_REPLACEMENT [17] (Int)
sethi %hi(0x2000), %l3
ld [%i2+96], %l7
st %l7, [%i2+96]
add %i2, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

P1544: !_MEMBAR (FP)

P1545: !_BSTC [16] (maybe <- 0x41000023) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1545
nop
RET1545:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1546: !_MEMBAR (FP) (Branch target of P1931)
membar #StoreLoad
ba P1547
nop

TARGET1931:
ba RET1931
nop


P1547: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f8
fmovd %f34, %f10
fmovd %f36, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P1548: !_MEMBAR (FP)

P1549: !_REPLACEMENT [2] (Int)
sethi %hi(0x2000), %o5
ld [%i2+8], %l6
st %l6, [%i2+8]
add %i2, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]

P1550: !_LD [27] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 160], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1551: !_MEMBAR (FP)
membar #StoreLoad

P1552: !_BLD [26] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14

P1553: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1553
nop
RET1553:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1554: !_BLD [32] (FP) (Branch target of P1854)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
ba P1555
nop

TARGET1854:
ba RET1854
nop


P1555: !_MEMBAR (FP)

P1556: !_ST [9] (maybe <- 0x41000024) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 32 ]

P1557: !_ST [12] (maybe <- 0x41000025) (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P1558: !_MEMBAR (FP)

P1559: !_BST [29] (maybe <- 0x41000026) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1559
nop
RET1559:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1560: !_MEMBAR (FP)
membar #StoreLoad

P1561: !_REPLACEMENT [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P1562: !_REPLACEMENT [7] (Int)
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1563: !_REPLACEMENT [18] (Int)
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P1564: !_MEMBAR (FP) (CBR) (Branch target of P1538)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1564
nop
RET1564:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1565
nop

TARGET1538:
ba RET1538
nop


P1565: !_BST [23] (maybe <- 0x41000027) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1566: !_MEMBAR (FP)
membar #StoreLoad

P1567: !_LD [1] (Int) (Branch target of P1659)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
ba P1568
nop

TARGET1659:
ba RET1659
nop


P1568: !_LD [21] (Int) (LE) (CBR) (Secondary ctx) (Branch target of P1777)
wr %g0, 0x89, %asi
lduwa [%i2 + 0] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1568
nop
RET1568:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1569
nop

TARGET1777:
ba RET1777
nop


P1569: !_MEMBAR (FP)

P1570: !_BST [26] (maybe <- 0x4100002a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P1571: !_MEMBAR (FP)
membar #StoreLoad

P1572: !_ST [20] (maybe <- 0x4100002c) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 256 ] %asi

P1573: !_LD [1] (FP)
ld [%i0 + 4], %f0
! 1 addresses covered

P1574: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1574
nop
RET1574:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1575: !_BLD [13] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f40, %f18
fmovs %f18, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1575
nop
RET1575:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1576: !_MEMBAR (FP)

P1577: !_REPLACEMENT [29] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1577
nop
RET1577:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1578: !_REPLACEMENT [2] (Int)
sethi %hi(0x2000), %l6
ld [%i3+8], %o5
st %o5, [%i3+8]
add %i3, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]

P1579: !_REPLACEMENT [1] (Int) (Branch target of P1564)
sethi %hi(0x2000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
ba P1580
nop

TARGET1564:
ba RET1564
nop


P1580: !_LD [21] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f4
! 1 addresses covered

P1581: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1581
nop
RET1581:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1582: !_BST [32] (maybe <- 0x4100002d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P1583: !_MEMBAR (FP)

P1584: !_BST [13] (maybe <- 0x4100002e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1585: !_MEMBAR (FP)
membar #StoreLoad

P1586: !_BLD [29] (FP) (CBR) (Branch target of P1485)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1586
nop
RET1586:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1587
nop

TARGET1485:
ba RET1485
nop


P1587: !_MEMBAR (FP)

P1588: !_BLD [16] (FP) (Branch target of P1575)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f36, %f6
ba P1589
nop

TARGET1575:
ba RET1575
nop


P1589: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1589
nop
RET1589:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1590: !_REPLACEMENT [10] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P1591: !_MEMBAR (FP) (Secondary ctx)

P1592: !_BST [17] (maybe <- 0x41000031) (FP) (Secondary ctx) (Branch target of P1841)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi
ba P1593
nop

TARGET1841:
ba RET1841
nop


P1593: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1594: !_REPLACEMENT [26] (Int)
sethi %hi(0x2000), %o5
ld [%i2+128], %l6
st %l6, [%i2+128]
add %i2, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P1595: !_MEMBAR (FP) (Branch target of P1471)
ba P1596
nop

TARGET1471:
ba RET1471
nop


P1596: !_BST [7] (maybe <- 0x41000032) (FP) (Branch target of P1647)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi
ba P1597
nop

TARGET1647:
ba RET1647
nop


P1597: !_MEMBAR (FP)

P1598: !_BST [19] (maybe <- 0x41000033) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1598
nop
RET1598:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1599: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1599
nop
RET1599:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1600: !_BST [6] (maybe <- 0x41000034) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P1601: !_MEMBAR (FP) (Branch target of P1964)
membar #StoreLoad
ba P1602
nop

TARGET1964:
ba RET1964
nop


P1602: !_REPLACEMENT [26] (Int) (CBR) (Branch target of P1799)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1602
nop
RET1602:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1603
nop

TARGET1799:
ba RET1799
nop


P1603: !_ST [15] (maybe <- 0x41000036) (FP) (Branch target of P1648)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]
ba P1604
nop

TARGET1648:
ba RET1648
nop


P1604: !_ST [15] (maybe <- 0x1800004) (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i2 + 128] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1604
nop
RET1604:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1605: !_ST [32] (maybe <- 0x1800005) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 256] %asi
add   %l4, 1, %l4

P1606: !_IDC_FLIP [20] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1606, 14736, 3, 0x45000100, 0x100, %i2, 0x100, %l6, %l7, %o5, %l3)

P1607: !_REPLACEMENT [25] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+96], %o5
st %o5, [%i3+96]
add %i3, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

P1608: !_REPLACEMENT [1] (Int)
sethi %hi(0x2000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P1609: !_IDC_FLIP [4] (Int)
IDC_FLIP(1609, 19240, 3, 0x43000020, 0x20, %i0, 0x20, %l6, %l7, %o5, %l3)

P1610: !_MEMBAR (FP) (Branch target of P2035)
ba P1611
nop

TARGET2035:
ba RET2035
nop


P1611: !_BST [31] (maybe <- 0x41000037) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 192 ] %asi

P1612: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1612
nop
RET1612:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1613: !_IDC_FLIP [3] (Int)
IDC_FLIP(1613, 16092, 3, 0x43000010, 0x10, %i0, 0x10, %l6, %l7, %o5, %l3)

P1614: !_REPLACEMENT [30] (Int) (Branch target of P1871)
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
ba P1615
nop

TARGET1871:
ba RET1871
nop


P1615: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1616: !_BLD [30] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7

P1617: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1617
nop
RET1617:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1618: !_BST [0] (maybe <- 0x41000038) (FP) (Secondary ctx) (Branch target of P1602)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P1619
nop

TARGET1602:
ba RET1602
nop


P1619: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1620: !_REPLACEMENT [17] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

P1621: !_MEMBAR (FP)

P1622: !_BST [27] (maybe <- 0x4100003d) (FP) (Branch target of P1838)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 128 ] %asi
ba P1623
nop

TARGET1838:
ba RET1838
nop


P1623: !_MEMBAR (FP)

P1624: !_BST [28] (maybe <- 0x4100003f) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1624
nop
RET1624:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1625: !_MEMBAR (FP)
membar #StoreLoad

P1626: !_REPLACEMENT [24] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P1627: !_MEMBAR (FP)
membar #StoreLoad

P1628: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

P1629: !_MEMBAR (FP)

P1630: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovd %f40, %f10

P1631: !_MEMBAR (FP) (Branch target of P1457)
ba P1632
nop

TARGET1457:
ba RET1457
nop


P1632: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P1633: !_MEMBAR (FP)

P1634: !_BST [27] (maybe <- 0x41000040) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P1635: !_MEMBAR (FP)
membar #StoreLoad

P1636: !_REPLACEMENT [18] (Int)
sethi %hi(0x2000), %l3
ld [%i2+128], %l7
st %l7, [%i2+128]
add %i2, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P1637: !_MEMBAR (FP)
membar #StoreLoad

P1638: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

P1639: !_MEMBAR (FP)

P1640: !_BLD [27] (FP) (Branch target of P1514)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovd %f40, %f2
ba P1641
nop

TARGET1514:
ba RET1514
nop


P1641: !_MEMBAR (FP)

P1642: !_IDC_FLIP [11] (Int) (Branch target of P1740)
IDC_FLIP(1642, 780, 3, 0x44000000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)
ba P1643
nop

TARGET1740:
ba RET1740
nop


P1643: !_ST [30] (maybe <- 0x41000042) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 128 ] %asi

P1644: !_REPLACEMENT [30] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P1645: !_IDC_FLIP [13] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1645, 6887, 3, 0x44000020, 0x20, %i3, 0x20, %l6, %l7, %o5, %l3)

P1646: !_MEMBAR (FP)

P1647: !_BST [2] (maybe <- 0x41000043) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1647
nop
RET1647:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1648: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1648
nop
RET1648:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1649: !_ST [14] (maybe <- 0x1800006) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i3 + 64] %asi
add   %l4, 1, %l4

P1650: !_MEMBAR (FP)
membar #StoreLoad

P1651: !_BLD [28] (FP) (Branch target of P2020)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
ba P1652
nop

TARGET2020:
ba RET2020
nop


P1652: !_MEMBAR (FP) (Branch target of P2065)
ba P1653
nop

TARGET2065:
ba RET2065
nop


P1653: !_LD [1] (FP)
ld [%i0 + 4], %f4
! 1 addresses covered

P1654: !_MEMBAR (FP)
membar #StoreLoad

P1655: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P1656: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1656
nop
RET1656:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1657: !_REPLACEMENT [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1658: !_IDC_FLIP [6] (Int) (CBR)
IDC_FLIP(1658, 21792, 3, 0x43000060, 0x60, %i0, 0x60, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1658
nop
RET1658:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1659: !_REPLACEMENT [17] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i3+96], %l3
st %l3, [%i3+96]
add %i3, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1659
nop
RET1659:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1660: !_REPLACEMENT [30] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P1661: !_ST [10] (maybe <- 0x1800007) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i1 + 64] %asi
add   %l4, 1, %l4

P1662: !_ST [33] (maybe <- 0x1800008) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1663: !_MEMBAR (FP) (Branch target of P1545)
membar #StoreLoad
ba P1664
nop

TARGET1545:
ba RET1545
nop


P1664: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f40, %f10

P1665: !_MEMBAR (FP) (CBR) (Branch target of P1753)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1665
nop
RET1665:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1666
nop

TARGET1753:
ba RET1753
nop


P1666: !_BLD [15] (FP) (Secondary ctx) (Branch target of P1532)
wr %g0, 0xf1, %asi
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
ba P1667
nop

TARGET1532:
ba RET1532
nop


P1667: !_MEMBAR (FP) (Secondary ctx)

P1668: !_BSTC [25] (maybe <- 0x41000048) (FP) (Branch target of P1461)
wr %g0, 0xe0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi
ba P1669
nop

TARGET1461:
ba RET1461
nop


P1669: !_MEMBAR (FP)
membar #StoreLoad

P1670: !_ST [2] (maybe <- 0x4100004a) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 8 ]

P1671: !_LD [0] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 0] %asi, %f12
! 1 addresses covered

P1672: !_MEMBAR (FP)
membar #StoreLoad

P1673: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13

P1674: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1674
nop
RET1674:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1675: !_REPLACEMENT [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+16], %l6
st %l6, [%i3+16]
add %i3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

P1676: !_REPLACEMENT [29] (Int)
sethi %hi(0x2000), %l7
ld [%i3+64], %l3
st %l3, [%i3+64]
add %i3, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P1677: !_MEMBAR (FP)

P1678: !_BST [4] (maybe <- 0x4100004b) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1679: !_MEMBAR (FP)

P1680: !_BST [2] (maybe <- 0x41000050) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1681: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1681
nop
RET1681:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1682: !_REPLACEMENT [11] (Int)
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P1683: !_MEMBAR (FP) (Branch target of P2001)
membar #StoreLoad
ba P1684
nop

TARGET2001:
ba RET2001
nop


P1684: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f34, %f0
fmovd %f36, %f18
fmovs %f18, %f1
fmovd %f40, %f2

P1685: !_MEMBAR (FP)

P1686: !_REPLACEMENT [16] (Int) (Nucleus ctx) (Branch target of P1811)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i3+16], %l6
st %l6, [%i3+16]
add %i3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
ba P1687
nop

TARGET1811:
ba RET1811
nop


P1687: !_MEMBAR (FP)
membar #StoreLoad

P1688: !_BLD [4] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f18, %f5
fmovd %f36, %f6
fmovd %f40, %f18
fmovs %f18, %f7

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1688
nop
RET1688:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1689: !_MEMBAR (FP)

P1690: !_ST [27] (maybe <- 0x41000055) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 160 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1690
nop
RET1690:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1691: !_LD [22] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i2 + 4] %asi, %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P1692: !_MEMBAR (FP) (Secondary ctx)

P1693: !_BST [22] (maybe <- 0x41000056) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1694: !_MEMBAR (FP) (Secondary ctx)

P1695: !_BST [20] (maybe <- 0x41000059) (FP) (Branch target of P2078)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi
ba P1696
nop

TARGET2078:
ba RET2078
nop


P1696: !_MEMBAR (FP) (Branch target of P1980)
membar #StoreLoad
ba P1697
nop

TARGET1980:
ba RET1980
nop


P1697: !_REPLACEMENT [20] (Int)
sethi %hi(0x2000), %o5
ld [%i3+256], %l6
st %l6, [%i3+256]
add %i3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]

P1698: !_LD [11] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1698
nop
RET1698:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1699: !_REPLACEMENT [6] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+96], %o5
st %o5, [%i2+96]
add %i2, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

P1700: !_MEMBAR (FP)

P1701: !_BST [12] (maybe <- 0x4100005a) (FP) (Branch target of P1792)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P1702
nop

TARGET1792:
ba RET1792
nop


P1702: !_MEMBAR (FP)
membar #StoreLoad

P1703: !_ST [32] (maybe <- 0x1800009) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 256] %asi
add   %l4, 1, %l4

P1704: !_LD [14] (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 64], %f8
! 1 addresses covered

P1705: !_MEMBAR (FP) (Branch target of P1726)
ba P1706
nop

TARGET1726:
ba RET1726
nop


P1706: !_BST [9] (maybe <- 0x4100005d) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1707: !_MEMBAR (FP) (CBR) (Branch target of P1599)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1707
nop
RET1707:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1708
nop

TARGET1599:
ba RET1599
nop


P1708: !_BLD [11] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f40, %f18
fmovs %f18, %f11

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1708
nop
RET1708:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1709: !_MEMBAR (FP)

P1710: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f12

P1711: !_MEMBAR (FP)

P1712: !_REPLACEMENT [0] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P1713: !_REPLACEMENT [12] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %o5
ld [%i2+4], %l6
st %l6, [%i2+4]
add %i2, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1713
nop
RET1713:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1714: !_ST [24] (maybe <- 0x4100005f) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 64 ] %asi

P1715: !_REPLACEMENT [27] (Int) (Branch target of P1783)
sethi %hi(0x2000), %l7
ld [%i2+160], %l3
st %l3, [%i2+160]
add %i2, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
ba P1716
nop

TARGET1783:
ba RET1783
nop


P1716: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P1717: !_MEMBAR (FP)

P1718: !_BST [23] (maybe <- 0x41000060) (FP) (Branch target of P1581)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P1719
nop

TARGET1581:
ba RET1581
nop


P1719: !_MEMBAR (FP) (Branch target of P1589)
membar #StoreLoad
ba P1720
nop

TARGET1589:
ba RET1589
nop


P1720: !_REPLACEMENT [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P1721: !_ST [6] (maybe <- 0x180000a) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i0 + 96] %asi
add   %l4, 1, %l4

P1722: !_MEMBAR (FP) (Branch target of P2081)
ba P1723
nop

TARGET2081:
ba RET2081
nop


P1723: !_BST [11] (maybe <- 0x41000063) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1724: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1724
nop
RET1724:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1725: !_IDC_FLIP [15] (Int)
IDC_FLIP(1725, 24363, 3, 0x44000080, 0x80, %i2, 0x80, %l6, %l7, %o5, %l3)

P1726: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1726
nop
RET1726:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1727: !_BST [12] (maybe <- 0x41000066) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1728: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1729: !_BLD [7] (FP) (Branch target of P1805)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
ba P1730
nop

TARGET1805:
ba RET1805
nop


P1730: !_MEMBAR (FP)

P1731: !_IDC_FLIP [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1731, 11916, 3, 0x46000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P1732: !_MEMBAR (FP) (Branch target of P1942)
membar #StoreLoad
ba P1733
nop

TARGET1942:
ba RET1942
nop


P1733: !_BLD [14] (FP) (CBR) (Branch target of P1937)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f14

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1733
nop
RET1733:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1734
nop

TARGET1937:
ba RET1937
nop


P1734: !_MEMBAR (FP) (Branch target of P2006)
ba P1735
nop

TARGET2006:
ba RET2006
nop


P1735: !_BST [20] (maybe <- 0x41000069) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1735
nop
RET1735:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1736: !_MEMBAR (FP)
membar #StoreLoad

P1737: !_REPLACEMENT [31] (Int) (Branch target of P1568)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+192], %l3
st %l3, [%i3+192]
add %i3, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
ba P1738
nop

TARGET1568:
ba RET1568
nop


P1738: !_ST [31] (maybe <- 0x180000b) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 192 ]
add   %l4, 1, %l4

P1739: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2003)
ba P1740
nop

TARGET2003:
ba RET2003
nop


P1740: !_BSTC [18] (maybe <- 0x4100006a) (FP) (CBR) (Secondary ctx)
wr %g0, 0xe1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1740
nop
RET1740:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1741: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1742: !_BLD [28] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P1743: !_MEMBAR (FP) (Secondary ctx)

P1744: !_ST [11] (maybe <- 0x4100006b) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P1745: !_LD [14] (Int)
lduw [%i2 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1746: !_REPLACEMENT [11] (Int) (Branch target of P2058)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
ba P1747
nop

TARGET2058:
ba RET2058
nop


P1747: !_LD [30] (FP) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 128], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1747
nop
RET1747:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1748: !_LD [2] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
lda    [%i0 + 8] %asi, %f1
! 1 addresses covered

P1749: !_ST [5] (maybe <- 0x180000c) (Int) (CBR)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1749
nop
RET1749:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1750: !_MEMBAR (FP)

P1751: !_BST [29] (maybe <- 0x4100006c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P1752: !_MEMBAR (FP)
membar #StoreLoad

P1753: !_ST [9] (maybe <- 0x4100006d) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1753
nop
RET1753:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1754: !_REPLACEMENT [31] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+192], %l7
st %l7, [%i3+192]
add %i3, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1754
nop
RET1754:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1755: !_MEMBAR (FP)
membar #StoreLoad

P1756: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f40, %f4

P1757: !_MEMBAR (FP)

P1758: !_MEMBAR (Int) (Branch target of P1843)
membar #StoreLoad
ba P1759
nop

TARGET1843:
ba RET1843
nop


P1759: !_LD [19] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f5
! 1 addresses covered

P1760: !_LD [18] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 128], %f6
! 1 addresses covered

P1761: !_REPLACEMENT [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+32], %l7
st %l7, [%i2+32]
add %i2, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P1762: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1762
nop
RET1762:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1763: !_BST [14] (maybe <- 0x4100006e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P1764: !_MEMBAR (FP)
membar #StoreLoad

P1765: !_LD [16] (FP) (CBR) (Branch target of P1812)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 16], %f7
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1765
nop
RET1765:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1766
nop

TARGET1812:
ba RET1812
nop


P1766: !_REPLACEMENT [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P1767: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1768: !_BLD [10] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

P1769: !_MEMBAR (FP) (Secondary ctx)

P1770: !_BST [15] (maybe <- 0x4100006f) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P1771: !_MEMBAR (FP) (Branch target of P1896)
membar #StoreLoad
ba P1772
nop

TARGET1896:
ba RET1896
nop


P1772: !_REPLACEMENT [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P1773: !_REPLACEMENT [4] (Int)
sethi %hi(0x2000), %l7
ld [%i3+32], %l3
st %l3, [%i3+32]
add %i3, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P1774: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1775: !_BLD [24] (FP) (Secondary ctx) (Branch target of P1933)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovd %f40, %f10
ba P1776
nop

TARGET1933:
ba RET1933
nop


P1776: !_MEMBAR (FP) (Secondary ctx) (Branch target of P1681)
ba P1777
nop

TARGET1681:
ba RET1681
nop


P1777: !_REPLACEMENT [0] (Int) (CBR) (Branch target of P1912)
sethi %hi(0x2000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1777
nop
RET1777:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1778
nop

TARGET1912:
ba RET1912
nop


P1778: !_ST [3] (maybe <- 0x180000d) (Int)
stw   %l4, [%i0 + 16 ]
add   %l4, 1, %l4

P1779: !_MEMBAR (FP)
membar #StoreLoad

P1780: !_BLD [33] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1780
nop
RET1780:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1781: !_MEMBAR (FP)

P1782: !_BST [2] (maybe <- 0x41000070) (FP) (Branch target of P2056)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P1783
nop

TARGET2056:
ba RET2056
nop


P1783: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1783
nop
RET1783:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1784: !_BST [26] (maybe <- 0x41000075) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P1785: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1786: !_BLD [23] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f40, %f14

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1786
nop
RET1786:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1787: !_MEMBAR (FP) (Branch target of P1612)
ba P1788
nop

TARGET1612:
ba RET1612
nop


P1788: !_BLD [6] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

P1789: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1789
nop
RET1789:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1790: !_REPLACEMENT [29] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1790
nop
RET1790:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1791: !_LD [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3

P1792: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1792
nop
RET1792:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1793: !_BLD [0] (FP) (Branch target of P1988)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f18, %f3
fmovd %f36, %f4
fmovd %f40, %f18
fmovs %f18, %f5
ba P1794
nop

TARGET1988:
ba RET1988
nop


P1794: !_MEMBAR (FP)

P1795: !_BST [2] (maybe <- 0x41000077) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1796: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1796
nop
RET1796:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1797: !_ST [2] (maybe <- 0x4100007c) (FP) (Secondary ctx) (Branch target of P1840)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 8 ] %asi
ba P1798
nop

TARGET1840:
ba RET1840
nop


P1798: !_REPLACEMENT [29] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i2+64], %l7
st %l7, [%i2+64]
add %i2, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P1799: !_REPLACEMENT [23] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1799
nop
RET1799:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1800: !_MEMBAR (FP) (Branch target of P1525)
membar #StoreLoad
ba P1801
nop

TARGET1525:
ba RET1525
nop


P1801: !_BLD [26] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P1802: !_MEMBAR (FP)

P1803: !_LD [14] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 64], %f8
! 1 addresses covered

P1804: !_ST [30] (maybe <- 0x180000e) (Int) (Branch target of P2033)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4
ba P1805
nop

TARGET2033:
ba RET2033
nop


P1805: !_ST [31] (maybe <- 0x180000f) (Int) (CBR) (Branch target of P1535)
stw   %l4, [%i2 + 192 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1805
nop
RET1805:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1806
nop

TARGET1535:
ba RET1535
nop


P1806: !_MEMBAR (FP)

P1807: !_BST [10] (maybe <- 0x4100007d) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P1808: !_MEMBAR (FP)
membar #StoreLoad

P1809: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f18, %f11
fmovd %f36, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P1810: !_MEMBAR (FP)

P1811: !_LD [4] (FP) (CBR)
ld [%i0 + 32], %f14
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1811
nop
RET1811:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1812: !_ST [8] (maybe <- 0x1800010) (Int) (CBR)
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1812
nop
RET1812:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1813: !_MEMBAR (FP)

P1814: !_BST [26] (maybe <- 0x4100007e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P1815: !_MEMBAR (FP)
membar #StoreLoad

P1816: !_REPLACEMENT [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+32], %o5
st %o5, [%i2+32]
add %i2, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

P1817: !_MEMBAR (FP) (Branch target of P1502)
ba P1818
nop

TARGET1502:
ba RET1502
nop


P1818: !_BST [28] (maybe <- 0x41000080) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1819: !_MEMBAR (FP)
membar #StoreLoad

P1820: !_REPLACEMENT [13] (Int)
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P1821: !_REPLACEMENT [15] (Int) (Branch target of P1919)
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
ba P1822
nop

TARGET1919:
ba RET1919
nop


P1822: !_ST [23] (maybe <- 0x41000081) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

P1823: !_REPLACEMENT [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P1824: !_MEMBAR (FP) (Branch target of P1786)
ba P1825
nop

TARGET1786:
ba RET1786
nop


P1825: !_BST [1] (maybe <- 0x41000082) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1826: !_MEMBAR (FP)
membar #StoreLoad

P1827: !_REPLACEMENT [22] (Int) (Branch target of P1707)
sethi %hi(0x2000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
ba P1828
nop

TARGET1707:
ba RET1707
nop


P1828: !_MEMBAR (FP)
membar #StoreLoad

P1829: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovs %f19, %f0
fmovd %f34, %f18
fmovs %f18, %f1
fmovd %f36, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P1830: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1830
nop
RET1830:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1831: !_BST [6] (maybe <- 0x41000087) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P1832: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1832
nop
RET1832:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1833: !_ST [24] (maybe <- 0x1800011) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1834: !_LD [4] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 32] %asi, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1835: !_REPLACEMENT [9] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i3+32], %l6
st %l6, [%i3+32]
add %i3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P1836: !_MEMBAR (FP)

P1837: !_BST [1] (maybe <- 0x41000089) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1838: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1838
nop
RET1838:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1839: !_BLD [11] (FP) (Branch target of P2044)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f40, %f6
ba P1840
nop

TARGET2044:
ba RET2044
nop


P1840: !_MEMBAR (FP) (CBR) (Branch target of P1857)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1840
nop
RET1840:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1841
nop

TARGET1857:
ba RET1857
nop


P1841: !_BSTC [1] (maybe <- 0x4100008e) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1841
nop
RET1841:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1842: !_MEMBAR (FP)
membar #StoreLoad

P1843: !_LD [10] (Int) (CBR)
lduw [%i1 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1843
nop
RET1843:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1844: !_MEMBAR (FP)

P1845: !_BST [25] (maybe <- 0x41000093) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P1846: !_MEMBAR (FP) (Branch target of P1850)
membar #StoreLoad
ba P1847
nop

TARGET1850:
ba RET1850
nop


P1847: !_REPLACEMENT [20] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+256], %l3
st %l3, [%i2+256]
add %i2, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]

P1848: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1849: !_BLD [1] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f18, %f9
fmovd %f36, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P1850: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1850
nop
RET1850:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1851: !_ST [14] (maybe <- 0x41000095) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 64 ] %asi

P1852: !_REPLACEMENT [18] (Int) (Branch target of P1617)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
ba P1853
nop

TARGET1617:
ba RET1617
nop


P1853: !_ST [0] (maybe <- 0x41000096) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P1854: !_FLUSHI [3] (Int) (CBR)
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1854
nop
RET1854:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1855: !_MEMBAR (FP) (Branch target of P1496)
membar #StoreLoad
ba P1856
nop

TARGET1496:
ba RET1496
nop


P1856: !_BLD [1] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f12
fmovd %f34, %f14
fmovd %f36, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1856
nop
RET1856:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1857: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1857
nop
RET1857:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1858: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P1859: !_LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1860: !_LD [16] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 16], %f1
! 1 addresses covered

P1861: !_REPLACEMENT [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+32], %l6
st %l6, [%i3+32]
add %i3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P1862: !_LD [3] (FP)
ld [%i0 + 16], %f2
! 1 addresses covered

P1863: !_LD [33] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P1864: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P1865: !_MEMBAR (FP) (Secondary ctx)

P1866: !_BSTC [6] (maybe <- 0x41000097) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P1867: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1868: !_BLD [9] (FP) (Secondary ctx) (Branch target of P1969)
wr %g0, 0xf1, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4
ba P1869
nop

TARGET1969:
ba RET1969
nop


P1869: !_MEMBAR (FP) (Secondary ctx)

P1870: !_BST [0] (maybe <- 0x41000099) (FP) (Branch target of P1830)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P1871
nop

TARGET1830:
ba RET1830
nop


P1871: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1871
nop
RET1871:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1872: !_ST [10] (maybe <- 0x1800012) (Int) (Branch target of P1559)
stw   %l4, [%i1 + 64 ]
add   %l4, 1, %l4
ba P1873
nop

TARGET1559:
ba RET1559
nop


P1873: !_ST [21] (maybe <- 0x4100009e) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 0 ] %asi

P1874: !_LD [2] (FP)
ld [%i0 + 8], %f5
! 1 addresses covered

P1875: !_REPLACEMENT [20] (Int) (Branch target of P1986)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+256], %l7
st %l7, [%i2+256]
add %i2, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
ba P1876
nop

TARGET1986:
ba RET1986
nop


P1876: !_REPLACEMENT [17] (Int)
sethi %hi(0x2000), %o5
ld [%i2+96], %l6
st %l6, [%i2+96]
add %i2, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

P1877: !_LD [13] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 32], %f6
! 1 addresses covered

P1878: !_ST [3] (maybe <- 0x1800013) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i0 + 16] %asi
add   %l4, 1, %l4

P1879: !_MEMBAR (FP)
membar #StoreLoad

P1880: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f18, %f9
fmovd %f36, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P1881: !_MEMBAR (FP)

P1882: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f12
fmovd %f34, %f14
fmovd %f36, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

P1883: !_MEMBAR (FP)

P1884: !_BSTC [19] (maybe <- 0x4100009f) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1885: !_MEMBAR (FP)
membar #StoreLoad

P1886: !_ST [12] (maybe <- 0x410000a0) (FP) (Nucleus ctx) (Branch target of P2046)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 4 ] %asi
ba P1887
nop

TARGET2046:
ba RET2046
nop


P1887: !_MEMBAR (FP)

P1888: !_BST [17] (maybe <- 0x410000a1) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P1889: !_MEMBAR (FP)
membar #StoreLoad

P1890: !_PREFETCH [18] (Int) (Branch target of P1529)
prefetch [%i3 + 128], 1
ba P1891
nop

TARGET1529:
ba RET1529
nop


P1891: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1892: !_BLD [28] (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1892
nop
RET1892:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1893: !_MEMBAR (FP) (Secondary ctx)

P1894: !_ST [17] (maybe <- 0x410000a2) (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 96 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1894
nop
RET1894:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1895: !_LD [11] (Int) (Branch target of P2052)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
ba P1896
nop

TARGET2052:
ba RET2052
nop


P1896: !_LD [28] (Int) (CBR)
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1896
nop
RET1896:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1897: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P1898: !_MEMBAR (FP)

P1899: !_BST [31] (maybe <- 0x410000a3) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

P1900: !_MEMBAR (FP)
membar #StoreLoad

P1901: !_LD [24] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 64] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1902: !_MEMBAR (FP)

P1903: !_BSTC [27] (maybe <- 0x410000a4) (FP) (CBR) (Branch target of P1944)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1903
nop
RET1903:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1904
nop

TARGET1944:
ba RET1944
nop


P1904: !_MEMBAR (FP)
membar #StoreLoad

P1905: !_REPLACEMENT [2] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+8], %o5
st %o5, [%i3+8]
add %i3, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]

P1906: !_REPLACEMENT [23] (Int) (CBR)
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1906
nop
RET1906:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1907: !_ST [26] (maybe <- 0x1800014) (Int)
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4

P1908: !_MEMBAR (FP)

P1909: !_BST [19] (maybe <- 0x410000a6) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1910: !_MEMBAR (FP)
membar #StoreLoad

P1911: !_LD [0] (Int) (Secondary ctx) (Branch target of P1892)
wr %g0, 0x81, %asi
lduwa [%i0 + 0] %asi, %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
ba P1912
nop

TARGET1892:
ba RET1892
nop


P1912: !_REPLACEMENT [6] (Int) (CBR)
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1912
nop
RET1912:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1913: !_MEMBAR (FP)

P1914: !_BST [0] (maybe <- 0x410000a7) (FP) (Branch target of P2071)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P1915
nop

TARGET2071:
ba RET2071
nop


P1915: !_MEMBAR (FP)
membar #StoreLoad

P1916: !_BLD [30] (FP) (Branch target of P1796)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f2
ba P1917
nop

TARGET1796:
ba RET1796
nop


P1917: !_MEMBAR (FP)

P1918: !_BSTC [28] (maybe <- 0x410000ac) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1919: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1919
nop
RET1919:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1920: !_REPLACEMENT [13] (Int) (Branch target of P1780)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
ba P1921
nop

TARGET1780:
ba RET1780
nop


P1921: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1922: !_BLD [24] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4

P1923: !_MEMBAR (FP) (Secondary ctx)

P1924: !_REPLACEMENT [7] (Int) (Branch target of P1574)
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
ba P1925
nop

TARGET1574:
ba RET1574
nop


P1925: !_REPLACEMENT [26] (Int)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P1926: !_ST [32] (maybe <- 0x410000ad) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 256 ]

P1927: !_LD [21] (FP) (Branch target of P1749)
ld [%i3 + 0], %f5
! 1 addresses covered
ba P1928
nop

TARGET1749:
ba RET1749
nop


P1928: !_REPLACEMENT [0] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P1929: !_ST [28] (maybe <- 0x1800015) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1930: !_MEMBAR (FP) (Branch target of P2000)
ba P1931
nop

TARGET2000:
ba RET2000
nop


P1931: !_BST [1] (maybe <- 0x410000ae) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1931
nop
RET1931:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1932: !_MEMBAR (FP)
membar #StoreLoad

P1933: !_REPLACEMENT [15] (Int) (CBR) (Branch target of P1790)
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1933
nop
RET1933:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1934
nop

TARGET1790:
ba RET1790
nop


P1934: !_REPLACEMENT [7] (Int)
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P1935: !_MEMBAR (FP)
membar #StoreLoad

P1936: !_BLD [28] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

P1937: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1937
nop
RET1937:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1938: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7

P1939: !_MEMBAR (FP) (Branch target of P1524)
ba P1940
nop

TARGET1524:
ba RET1524
nop


P1940: !_REPLACEMENT [10] (Int) (Branch target of P1973)
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
ba P1941
nop

TARGET1973:
ba RET1973
nop


P1941: !_REPLACEMENT [20] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P1942: !_REPLACEMENT [28] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1942
nop
RET1942:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1943: !_MEMBAR (FP)

P1944: !_BST [18] (maybe <- 0x410000b3) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1944
nop
RET1944:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1945: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1945
nop
RET1945:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1946: !_BST [8] (maybe <- 0x410000b4) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1947: !_MEMBAR (FP)
membar #StoreLoad

P1948: !_REPLACEMENT [28] (Int)
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P1949: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1949
nop
RET1949:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1950: !_BST [28] (maybe <- 0x410000b6) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1951: !_MEMBAR (FP)

P1952: !_BST [26] (maybe <- 0x410000b7) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P1953: !_MEMBAR (FP)
membar #StoreLoad

P1954: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f40, %f10

P1955: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1955
nop
RET1955:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1956: !_BST [6] (maybe <- 0x410000b9) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P1957: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1958: !_LD [6] (Int)
lduw [%i0 + 96], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1959: !_REPLACEMENT [9] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P1960: !_LD [32] (FP) (Nucleus ctx) (Branch target of P1688)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 256] %asi, %f11
! 1 addresses covered
ba P1961
nop

TARGET1688:
ba RET1688
nop


P1961: !_MEMBAR (FP)

P1962: !_BST [19] (maybe <- 0x410000bb) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1963: !_MEMBAR (FP) (Branch target of P1598)
membar #StoreLoad
ba P1964
nop

TARGET1598:
ba RET1598
nop


P1964: !_REPLACEMENT [33] (Int) (CBR) (Branch target of P1553)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1964
nop
RET1964:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1965
nop

TARGET1553:
ba RET1553
nop


P1965: !_MEMBAR (FP) (Branch target of P1656)
ba P1966
nop

TARGET1656:
ba RET1656
nop


P1966: !_BSTC [10] (maybe <- 0x410000bc) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P1967: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1967
nop
RET1967:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1968: !_BSTC [32] (maybe <- 0x410000bd) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P1969: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1969
nop
RET1969:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1970: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P1971: !_MEMBAR (FP)
membar #StoreLoad

P1972: !_BLD [25] (FP) (Branch target of P1492)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f12
fmovd %f40, %f18
fmovs %f18, %f13
ba P1973
nop

TARGET1492:
ba RET1492
nop


P1973: !_MEMBAR (FP) (CBR) (Branch target of P1832)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1973
nop
RET1973:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1974
nop

TARGET1832:
ba RET1832
nop


P1974: !_REPLACEMENT [11] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P1975: !_MEMBAR (FP)
membar #StoreLoad

P1976: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P1977: !_MEMBAR (FP)

P1978: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P1979: !_LD [22] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P1980: !_REPLACEMENT [2] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+8], %l6
st %l6, [%i3+8]
add %i3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1980
nop
RET1980:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1981: !_ST [7] (maybe <- 0x1800016) (Int)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

P1982: !_LD [28] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f1
! 1 addresses covered

P1983: !_REPLACEMENT [32] (Int)
sethi %hi(0x2000), %l7
ld [%i3+256], %l3
st %l3, [%i3+256]
add %i3, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]

P1984: !_REPLACEMENT [20] (Int) (Nucleus ctx) (Branch target of P1967)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l6
ld [%i3+256], %o5
st %o5, [%i3+256]
add %i3, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
ba P1985
nop

TARGET1967:
ba RET1967
nop


P1985: !_REPLACEMENT [22] (Int)
sethi %hi(0x2000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P1986: !_ST [4] (maybe <- 0x1800017) (Int) (CBR) (Branch target of P1789)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1986
nop
RET1986:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1987
nop

TARGET1789:
ba RET1789
nop


P1987: !_MEMBAR (FP)
membar #StoreLoad

P1988: !_BLD [15] (FP) (CBR) (Branch target of P1698)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1988
nop
RET1988:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1989
nop

TARGET1698:
ba RET1698
nop


P1989: !_MEMBAR (FP)

P1990: !_BST [31] (maybe <- 0x410000be) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 192 ] %asi

P1991: !_MEMBAR (FP) (Branch target of P2002)
membar #StoreLoad
ba P1992
nop

TARGET2002:
ba RET2002
nop


P1992: !_IDC_FLIP [28] (Int)
IDC_FLIP(1992, 14973, 3, 0x46000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P1993: !_LD [32] (FP) (CBR)
ld [%i2 + 256], %f3
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1993
nop
RET1993:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1994: !_REPLACEMENT [32] (Int) (Branch target of P1894)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+256], %l3
st %l3, [%i2+256]
add %i2, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
ba P1995
nop

TARGET1894:
ba RET1894
nop


P1995: !_MEMBAR (FP)
membar #StoreLoad

P1996: !_BLD [0] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f4
fmovd %f34, %f6
fmovd %f36, %f18
fmovs %f18, %f7
fmovd %f40, %f8

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1996
nop
RET1996:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1997: !_MEMBAR (FP)

P1998: !_LD [17] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 96] %asi, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1999: !_MEMBAR (FP)

P2000: !_BST [18] (maybe <- 0x410000bf) (FP) (CBR) (Branch target of P2079)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2000
nop
RET2000:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2001
nop

TARGET2079:
ba RET2079
nop


P2001: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2001
nop
RET2001:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2002: !_REPLACEMENT [11] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2002
nop
RET2002:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2003: !_REPLACEMENT [29] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2003
nop
RET2003:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2004: !_LD [32] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 256], %f9
! 1 addresses covered

P2005: !_MEMBAR (FP)
membar #StoreLoad

P2006: !_BLD [17] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f10

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2006
nop
RET2006:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2007: !_MEMBAR (FP)

P2008: !_BLD [1] (FP) (Branch target of P1509)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f18, %f13
fmovd %f36, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
ba P2009
nop

TARGET1509:
ba RET1509
nop


P2009: !_MEMBAR (FP)

P2010: !_BLD [28] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 1 addresses covered

P2011: !_MEMBAR (FP) (Secondary ctx)

P2012: !_REPLACEMENT [32] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+256], %l3
st %l3, [%i3+256]
add %i3, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]

P2013: !_REPLACEMENT [32] (Int)
sethi %hi(0x2000), %l6
ld [%i3+256], %o5
st %o5, [%i3+256]
add %i3, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

P2014: !_ST [5] (maybe <- 0x1800018) (Int) (LE)
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %l6, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
stwa   %l3, [%i0 + 64] %asi
add   %l4, 1, %l4

P2015: !_MEMBAR (FP) (Branch target of P1713)
membar #StoreLoad
ba P2016
nop

TARGET1713:
ba RET1713
nop


P2016: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1

P2017: !_MEMBAR (FP)

P2018: !_REPLACEMENT [26] (Int)
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P2019: !_MEMBAR (FP) (Branch target of P2027)
ba P2020
nop

TARGET2027:
ba RET2027
nop


P2020: !_BST [29] (maybe <- 0x410000c0) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2020
nop
RET2020:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2021: !_MEMBAR (FP)

P2022: !_BST [4] (maybe <- 0x410000c1) (FP) (CBR) (Branch target of P1724)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2022
nop
RET2022:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2023
nop

TARGET1724:
ba RET1724
nop


P2023: !_MEMBAR (FP) (Branch target of P1955)
membar #StoreLoad
ba P2024
nop

TARGET1955:
ba RET1955
nop


P2024: !_ST [29] (maybe <- 0x1800019) (Int) (Nucleus ctx) (Branch target of P2066)
wr %g0, 0x4, %asi
stwa   %l4, [%i2 + 64] %asi
add   %l4, 1, %l4
ba P2025
nop

TARGET2066:
ba RET2066
nop


P2025: !_LD [15] (Int) (Branch target of P1993)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 128], %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
ba P2026
nop

TARGET1993:
ba RET1993
nop


P2026: !_ST [7] (maybe <- 0x410000c6) (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2026
nop
RET2026:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2027: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2027
nop
RET2027:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2028: !_BLD [4] (FP) (Secondary ctx) (Branch target of P1733)
wr %g0, 0xf1, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f2
fmovd %f34, %f4
fmovd %f36, %f18
fmovs %f18, %f5
fmovd %f40, %f6
ba P2029
nop

TARGET1733:
ba RET1733
nop


P2029: !_MEMBAR (FP) (Secondary ctx)

P2030: !_IDC_FLIP [1] (Int)
IDC_FLIP(2030, 18266, 3, 0x43000004, 0x4, %i0, 0x4, %l6, %l7, %o5, %l3)

P2031: !_REPLACEMENT [23] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+32], %o5
st %o5, [%i3+32]
add %i3, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

P2032: !_MEMBAR (FP)
membar #StoreLoad

P2033: !_BLD [19] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2033
nop
RET2033:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2034: !_MEMBAR (FP)

P2035: !_IDC_FLIP [14] (Int) (CBR)
IDC_FLIP(2035, 10203, 3, 0x44000040, 0x40, %i2, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2035
nop
RET2035:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2036: !_ST [5] (maybe <- 0x410000c7) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2036
nop
RET2036:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2037: !_REPLACEMENT [2] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+8], %l3
st %l3, [%i2+8]
add %i2, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]

P2038: !_MEMBAR (FP)
membar #StoreLoad

P2039: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

P2040: !_MEMBAR (FP) (Branch target of P1624)
ba P2041
nop

TARGET1624:
ba RET1624
nop


P2041: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2042: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P2043: !_MEMBAR (FP)

P2044: !_BST [29] (maybe <- 0x410000c8) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2044
nop
RET2044:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2045: !_MEMBAR (FP)
membar #StoreLoad

P2046: !_ST [25] (maybe <- 0x180001a) (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 96 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2046
nop
RET2046:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2047: !_LD [18] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 128] %asi, %f9
! 1 addresses covered

P2048: !_LD [3] (FP)
ld [%i0 + 16], %f10
! 1 addresses covered

P2049: !_REPLACEMENT [21] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P2050: !_MEMBAR (FP)

P2051: !_BST [0] (maybe <- 0x410000c9) (FP) (Branch target of P1903)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P2052
nop

TARGET1903:
ba RET1903
nop


P2052: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2052
nop
RET2052:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2053: !_ST [11] (maybe <- 0x410000ce) (FP) (Branch target of P1747)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]
ba P2054
nop

TARGET1747:
ba RET1747
nop


P2054: !_MEMBAR (FP)

P2055: !_BST [22] (maybe <- 0x410000cf) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2056: !_MEMBAR (FP) (CBR) (Branch target of P1708)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2056
nop
RET2056:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2057
nop

TARGET1708:
ba RET1708
nop


P2057: !_ST [33] (maybe <- 0x410000d2) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P2058: !_ST [23] (maybe <- 0x410000d3) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2058
nop
RET2058:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2059: !_MEMBAR (FP)
membar #StoreLoad

P2060: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P2061: !_MEMBAR (FP)

P2062: !_BST [20] (maybe <- 0x410000d4) (FP) (Branch target of P1520)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi
ba P2063
nop

TARGET1520:
ba RET1520
nop


P2063: !_MEMBAR (FP)

P2064: !_BSTC [32] (maybe <- 0x410000d5) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P2065: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2065
nop
RET2065:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2066: !_LD [23] (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2066
nop
RET2066:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2067: !_MEMBAR (FP)

P2068: !_BST [25] (maybe <- 0x410000d6) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P2069: !_MEMBAR (FP)
membar #StoreLoad

P2070: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

P2071: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2071
nop
RET2071:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2072: !_ST [26] (maybe <- 0x410000d8) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P2073: !_MEMBAR (FP)
membar #StoreLoad

P2074: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P2075: !_MEMBAR (FP)

P2076: !_REPLACEMENT [28] (Int) (Secondary ctx) (Branch target of P1604)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
ba P2077
nop

TARGET1604:
ba RET1604
nop


P2077: !_ST [4] (maybe <- 0x180001b) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 32] %asi
add   %l4, 1, %l4

P2078: !_ST [3] (maybe <- 0x410000d9) (FP) (CBR) (Branch target of P1949)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 16 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2078
nop
RET2078:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2079
nop

TARGET1949:
ba RET1949
nop


P2079: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2079
nop
RET2079:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2080: !_BST [7] (maybe <- 0x410000da) (FP) (Branch target of P1856)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi
ba P2081
nop

TARGET1856:
ba RET1856
nop


P2081: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2081
nop
RET2081:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2082: !_LD [23] (Int) (Loop exit)
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_0
nop

P2083: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2083
nop
RET2083:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


END_NODES3: ! Test instruction sequence for CPU 3 ends
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
stw %l6, [%i5] 
ld [%i5], %f0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

restore
retl
nop
!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func4:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l3
or    %l3, %lo(0xdeadbee0), %l3
stw   %l3, [%i5]
sethi %hi(0xdeadbee1), %l3
or    %l3, %lo(0xdeadbee1), %l3
stw   %l3, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x04deade1), %l3
or    %l3, %lo(0x04deade1), %l3
stw %l3, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x2000001), %l4
or    %l4, %lo(0x2000001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x41800001), %l3
or    %l3, %lo(0x41800001), %l3
stw %l3, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x36000000), %l3
or    %l3, %lo(0x36000000), %l3
stw %l3, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x7d2f^4
sethi %hi(0x7d2f), %l0
or    %l0, %lo(0x7d2f), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES4: ! Test instruction sequence for ISTREAM 4 begins

P2084: !_IDC_FLIP [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_0:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
IDC_FLIP(2084, 22026, 4, 0x44800080, 0x80, %i3, 0x80, %l6, %l7, %o5, %l3)

P2085: !_REPLACEMENT [24] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2085
nop
RET2085:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2086: !_LD [32] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 256], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2087: !_LD [29] (FP)
ld [%i3 + 64], %f0
! 1 addresses covered

P2088: !_MEMBAR (FP) (Branch target of P2284)
ba P2089
nop

TARGET2284:
ba RET2284
nop


P2089: !_BSTC [21] (maybe <- 0x41800001) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2090: !_MEMBAR (FP)
membar #StoreLoad

P2091: !_REPLACEMENT [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+32], %l3
st %l3, [%i3+32]
add %i3, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P2092: !_REPLACEMENT [15] (Int)
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P2093: !_MEMBAR (FP)

P2094: !_BST [23] (maybe <- 0x41800004) (FP) (Branch target of P2377)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P2095
nop

TARGET2377:
ba RET2377
nop


P2095: !_MEMBAR (FP) (CBR) (Branch target of P2824)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2095
nop
RET2095:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2096
nop

TARGET2824:
ba RET2824
nop


P2096: !_BLD [33] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1

P2097: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2097
nop
RET2097:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2098: !_LD [17] (FP) (Branch target of P2640)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 96], %f2
! 1 addresses covered
ba P2099
nop

TARGET2640:
ba RET2640
nop


P2099: !_MEMBAR (FP)

P2100: !_BST [33] (maybe <- 0x41800007) (FP) (Branch target of P2675)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P2101
nop

TARGET2675:
ba RET2675
nop


P2101: !_MEMBAR (FP) (Branch target of P2630)
ba P2102
nop

TARGET2630:
ba RET2630
nop


P2102: !_BST [33] (maybe <- 0x41800008) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2103: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2104: !_PREFETCH [16] (Int)
prefetch [%i3 + 16], 1

P2105: !_REPLACEMENT [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+64], %l6
st %l6, [%i2+64]
add %i2, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P2106: !_MEMBAR (FP) (CBR) (Branch target of P3009)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2106
nop
RET2106:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2107
nop

TARGET3009:
ba RET3009
nop


P2107: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4

P2108: !_MEMBAR (FP)

P2109: !_LD [6] (Int) (Branch target of P2656)
lduw [%i0 + 96], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
ba P2110
nop

TARGET2656:
ba RET2656
nop


P2110: !_LD [10] (Int)
lduw [%i1 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2111: !_MEMBAR (FP)

P2112: !_BST [0] (maybe <- 0x41800009) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2113: !_MEMBAR (FP)
membar #StoreLoad

P2114: !_LD [6] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i0 + 96] %asi, %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1

P2115: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2116: !_BLD [17] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f18
fmovs %f18, %f5

P2117: !_MEMBAR (FP) (Secondary ctx)

P2118: !_PREFETCH [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 64], 1

P2119: !_MEMBAR (FP)
membar #StoreLoad

P2120: !_BLD [31] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2120
nop
RET2120:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2121: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2121
nop
RET2121:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2122: !_LD [11] (Int)
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2123: !_MEMBAR (FP) (Secondary ctx)

P2124: !_BST [13] (maybe <- 0x4180000e) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2125: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2618)
membar #StoreLoad
ba P2126
nop

TARGET2618:
ba RET2618
nop


P2126: !_REPLACEMENT [4] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+32], %l6
st %l6, [%i3+32]
add %i3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2126
nop
RET2126:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2127: !_ST [9] (maybe <- 0x41800011) (FP) (Secondary ctx) (Branch target of P2085)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i1 + 32 ] %asi
ba P2128
nop

TARGET2085:
ba RET2085
nop


P2128: !_MEMBAR (FP)
membar #StoreLoad

P2129: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7

P2130: !_MEMBAR (FP)

P2131: !_LD [7] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
lda    [%i0 + 128] %asi, %f8
! 1 addresses covered

P2132: !_REPLACEMENT [10] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i3+64], %l3
st %l3, [%i3+64]
add %i3, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2132
nop
RET2132:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2133: !_MEMBAR (FP)
membar #StoreLoad

P2134: !_BLD [5] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovd %f40, %f10

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2134
nop
RET2134:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2135: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2135
nop
RET2135:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2136: !_LD [9] (Int)
lduw [%i1 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P2137: !_REPLACEMENT [25] (Int)
sethi %hi(0x2000), %l7
ld [%i3+96], %l3
st %l3, [%i3+96]
add %i3, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

P2138: !_REPLACEMENT [14] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2138
nop
RET2138:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2139: !_MEMBAR (FP)

P2140: !_BST [9] (maybe <- 0x41800012) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2141: !_MEMBAR (FP)

P2142: !_BST [9] (maybe <- 0x41800014) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2143: !_MEMBAR (FP)
membar #StoreLoad

P2144: !_REPLACEMENT [11] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P2145: !_MEMBAR (FP)

P2146: !_BST [6] (maybe <- 0x41800016) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P2147: !_MEMBAR (FP)

P2148: !_BSTC [32] (maybe <- 0x41800018) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P2149: !_MEMBAR (FP)
membar #StoreLoad

P2150: !_ST [18] (maybe <- 0x2000001) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i2 + 128] %asi
add   %l4, 1, %l4

P2151: !_IDC_FLIP [10] (Int) (CBR) (Branch target of P2743)
IDC_FLIP(2151, 27531, 4, 0x43800040, 0x40, %i1, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2151
nop
RET2151:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2152
nop

TARGET2743:
ba RET2743
nop


P2152: !_LD [20] (FP) (Branch target of P2722)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 256], %f11
! 1 addresses covered
ba P2153
nop

TARGET2722:
ba RET2722
nop


P2153: !_REPLACEMENT [21] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P2154: !_ST [23] (maybe <- 0x2000002) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2155: !_REPLACEMENT [11] (Int)
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P2156: !_PREFETCH [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 1

P2157: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2687)
membar #StoreLoad
ba P2158
nop

TARGET2687:
ba RET2687
nop


P2158: !_BLD [21] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f40, %f14

P2159: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2159
nop
RET2159:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2160: !_BSTC [4] (maybe <- 0x41800019) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2160
nop
RET2160:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2161: !_MEMBAR (FP) (Branch target of P2159)
membar #StoreLoad
ba P2162
nop

TARGET2159:
ba RET2159
nop


P2162: !_ST [21] (maybe <- 0x4180001e) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P2163: !_ST [33] (maybe <- 0x2000003) (Int) (CBR) (Branch target of P3031)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2163
nop
RET2163:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2164
nop

TARGET3031:
ba RET3031
nop


P2164: !_ST [33] (maybe <- 0x4180001f) (FP) (CBR) (Branch target of P2356)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2164
nop
RET2164:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2165
nop

TARGET2356:
ba RET2356
nop


P2165: !_MEMBAR (FP)

P2166: !_BST [29] (maybe <- 0x41800020) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2166
nop
RET2166:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2167: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2167
nop
RET2167:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2168: !_ST [1] (maybe <- 0x41800021) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P2169: !_LD [24] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2170: !_REPLACEMENT [22] (Int) (Branch target of P2198)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
ba P2171
nop

TARGET2198:
ba RET2198
nop


P2171: !_REPLACEMENT [19] (Int)
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P2172: !_LD [17] (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 96], %f15
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2172
nop
RET2172:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2173: !_LD [25] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 96] %asi, %f0
! 1 addresses covered

P2174: !_PREFETCH [14] (Int) (Branch target of P2908)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 64], 1
ba P2175
nop

TARGET2908:
ba RET2908
nop


P2175: !_REPLACEMENT [6] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+96], %l7
st %l7, [%i2+96]
add %i2, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2175
nop
RET2175:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2176: !_REPLACEMENT [18] (Int)
sethi %hi(0x2000), %l3
ld [%i2+128], %l7
st %l7, [%i2+128]
add %i2, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P2177: !_REPLACEMENT [33] (Int)
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P2178: !_REPLACEMENT [26] (Int) (Branch target of P3027)
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
ba P2179
nop

TARGET3027:
ba RET3027
nop


P2179: !_MEMBAR (FP)
membar #StoreLoad

P2180: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P2181: !_MEMBAR (FP) (Branch target of P2336)
ba P2182
nop

TARGET2336:
ba RET2336
nop


P2182: !_BST [31] (maybe <- 0x41800022) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2182
nop
RET2182:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2183: !_MEMBAR (FP) (CBR) (Branch target of P2739)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2183
nop
RET2183:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2184
nop

TARGET2739:
ba RET2739
nop


P2184: !_REPLACEMENT [18] (Int) (Secondary ctx) (Branch target of P2303)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
ba P2185
nop

TARGET2303:
ba RET2303
nop


P2185: !_MEMBAR (FP)

P2186: !_BST [6] (maybe <- 0x41800023) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P2187: !_MEMBAR (FP)

P2188: !_BST [13] (maybe <- 0x41800025) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2189: !_MEMBAR (FP)
membar #StoreLoad

P2190: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f40, %f6

P2191: !_MEMBAR (FP) (Branch target of P2869)
ba P2192
nop

TARGET2869:
ba RET2869
nop


P2192: !_LD [5] (Int) (Branch target of P2789)
lduw [%i0 + 64], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3
ba P2193
nop

TARGET2789:
ba RET2789
nop


P2193: !_MEMBAR (FP) (Branch target of P2960)
ba P2194
nop

TARGET2960:
ba RET2960
nop


P2194: !_BST [13] (maybe <- 0x41800028) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2195: !_MEMBAR (FP)
membar #StoreLoad

P2196: !_REPLACEMENT [0] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2196
nop
RET2196:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2197: !_LD [14] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i2 + 64] %asi, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2198: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2198
nop
RET2198:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2199: !_BST [8] (maybe <- 0x4180002b) (FP) (Branch target of P2485)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P2200
nop

TARGET2485:
ba RET2485
nop


P2200: !_MEMBAR (FP)
membar #StoreLoad

P2201: !_ST [27] (maybe <- 0x4180002d) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 160 ]

P2202: !_ST [5] (maybe <- 0x4180002e) (FP) (CBR) (Nucleus ctx) (Branch target of P2939)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2202
nop
RET2202:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2203
nop

TARGET2939:
ba RET2939
nop


P2203: !_IDC_FLIP [8] (Int) (Branch target of P2654)
IDC_FLIP(2203, 21737, 4, 0x43800000, 0x0, %i1, 0x0, %l6, %l7, %o5, %l3)
ba P2204
nop

TARGET2654:
ba RET2654
nop


P2204: !_MEMBAR (FP)
membar #StoreLoad

P2205: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P2206: !_MEMBAR (FP)

P2207: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P2208: !_MEMBAR (FP) (Branch target of P2121)
ba P2209
nop

TARGET2121:
ba RET2121
nop


P2209: !_ST [19] (maybe <- 0x2000004) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2210: !_MEMBAR (FP)
membar #StoreLoad

P2211: !_BLD [15] (FP) (Branch target of P2964)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f12
ba P2212
nop

TARGET2964:
ba RET2964
nop


P2212: !_MEMBAR (FP)

P2213: !_REPLACEMENT [21] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P2214: !_REPLACEMENT [3] (Int) (Nucleus ctx) (Branch target of P2506)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i3+16], %l7
st %l7, [%i3+16]
add %i3, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
ba P2215
nop

TARGET2506:
ba RET2506
nop


P2215: !_REPLACEMENT [28] (Int)
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P2216: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2216
nop
RET2216:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2217: !_BST [3] (maybe <- 0x4180002f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2218: !_MEMBAR (FP)

P2219: !_BSTC [16] (maybe <- 0x41800034) (FP) (Branch target of P2234)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P2220
nop

TARGET2234:
ba RET2234
nop


P2220: !_MEMBAR (FP)
membar #StoreLoad

P2221: !_BLD [7] (FP) (Branch target of P2430)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
ba P2222
nop

TARGET2430:
ba RET2430
nop


P2222: !_MEMBAR (FP)

P2223: !_ST [30] (maybe <- 0x2000005) (Int) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2223
nop
RET2223:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2224: !_REPLACEMENT [0] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2224
nop
RET2224:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2225: !_REPLACEMENT [5] (Int)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P2226: !_ST [33] (maybe <- 0x2000006) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2227: !_MEMBAR (FP)

P2228: !_BST [15] (maybe <- 0x41800035) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P2229: !_MEMBAR (FP)

P2230: !_BST [27] (maybe <- 0x41800036) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P2231: !_MEMBAR (FP)
membar #StoreLoad

P2232: !_BLD [30] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f14

P2233: !_MEMBAR (FP)

P2234: !_LD [30] (FP) (CBR)
ld [%i2 + 128], %f15
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2234
nop
RET2234:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2235: !_MEMBAR (FP)
membar #StoreLoad

P2236: !_BLD [2] (FP) (Branch target of P3068)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 5 addresses covered
fmovs %f4, %f3
fmovd %f8, %f4
ba P2237
nop

TARGET3068:
ba RET3068
nop


P2237: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2237
nop
RET2237:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2238: !_ST [21] (maybe <- 0x41800038) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P2239: !_LD [20] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 256], %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2240: !_LD [3] (FP)
ld [%i0 + 16], %f5
! 1 addresses covered

P2241: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2241
nop
RET2241:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2242: !_BST [17] (maybe <- 0x41800039) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P2243: !_MEMBAR (FP)
membar #StoreLoad

P2244: !_ST [17] (maybe <- 0x4180003a) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 96 ] %asi

P2245: !_ST [27] (maybe <- 0x2000007) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 160] %asi
add   %l4, 1, %l4

P2246: !_ST [5] (maybe <- 0x4180003b) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 64 ] %asi

P2247: !_IDC_FLIP [25] (Int) (CBR)
IDC_FLIP(2247, 27892, 4, 0x45800060, 0x60, %i3, 0x60, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2247
nop
RET2247:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2248: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P2249: !_LD [17] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 96] %asi, %f6
! 1 addresses covered

P2250: !_MEMBAR (FP)

P2251: !_BSTC [23] (maybe <- 0x4180003c) (FP) (Branch target of P2275)
wr %g0, 0xe0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P2252
nop

TARGET2275:
ba RET2275
nop


P2252: !_MEMBAR (FP)
membar #StoreLoad

P2253: !_LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2254: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2254
nop
RET2254:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2255: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7

P2256: !_MEMBAR (FP)

P2257: !_BLD [15] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2257
nop
RET2257:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2258: !_MEMBAR (FP)

P2259: !_BLD [33] (FP) (Branch target of P2533)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
ba P2260
nop

TARGET2533:
ba RET2533
nop


P2260: !_MEMBAR (FP) (Branch target of P2807)
ba P2261
nop

TARGET2807:
ba RET2807
nop


P2261: !_REPLACEMENT [25] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+96], %l7
st %l7, [%i2+96]
add %i2, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2261
nop
RET2261:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2262: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2262
nop
RET2262:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2263: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f40, %f12

P2264: !_MEMBAR (FP)

P2265: !_REPLACEMENT [14] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P2266: !_IDC_FLIP [31] (Int) (CBR) (Branch target of P2120)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2266, 8960, 4, 0x460000c0, 0xc0, %i2, 0xc0, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2266
nop
RET2266:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2267
nop

TARGET2120:
ba RET2120
nop


P2267: !_REPLACEMENT [21] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2267
nop
RET2267:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2268: !_MEMBAR (FP)

P2269: !_BST [0] (maybe <- 0x4180003f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2270: !_MEMBAR (FP)
membar #StoreLoad

P2271: !_ST [26] (maybe <- 0x2000008) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 128] %asi
add   %l4, 1, %l4

P2272: !_ST [26] (maybe <- 0x41800044) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]

P2273: !_REPLACEMENT [2] (Int) (Branch target of P2795)
sethi %hi(0x2000), %o5
ld [%i3+8], %l6
st %l6, [%i3+8]
add %i3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
ba P2274
nop

TARGET2795:
ba RET2795
nop


P2274: !_REPLACEMENT [6] (Int)
sethi %hi(0x2000), %l7
ld [%i3+96], %l3
st %l3, [%i3+96]
add %i3, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

P2275: !_LD [8] (FP) (CBR)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 8 

sethi %hi(0x20000), %l6
sub   %i1, %l6, %i1
ld [%i1 + 0], %f13
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2275
nop
RET2275:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2276: !_MEMBAR (FP) (Branch target of P2126)
ba P2277
nop

TARGET2126:
ba RET2126
nop


P2277: !_BST [8] (maybe <- 0x41800045) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2278: !_MEMBAR (FP)
membar #StoreLoad

P2279: !_BLD [32] (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f14

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2279
nop
RET2279:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2280: !_MEMBAR (FP) (Secondary ctx)

P2281: !_ST [16] (maybe <- 0x2000009) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 16 ]
add   %l4, 1, %l4

P2282: !_ST [26] (maybe <- 0x41800047) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P2283: !_ST [20] (maybe <- 0x41800048) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 256 ]

P2284: !_REPLACEMENT [30] (Int) (CBR) (Secondary ctx) (Branch target of P2502)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2284
nop
RET2284:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2285
nop

TARGET2502:
ba RET2502
nop


P2285: !_ST [4] (maybe <- 0x41800049) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 32 ] %asi

P2286: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2286
nop
RET2286:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2287: !_BLD [21] (FP) (Secondary ctx) (Branch target of P2733)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovs %f19, %f0
fmovd %f40, %f18
fmovs %f18, %f1
ba P2288
nop

TARGET2733:
ba RET2733
nop


P2288: !_MEMBAR (FP) (Secondary ctx)

P2289: !_LD [17] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 96] %asi, %f2
! 1 addresses covered

P2290: !_IDC_FLIP [10] (Int)
IDC_FLIP(2290, 20818, 4, 0x43800040, 0x40, %i1, 0x40, %l6, %l7, %o5, %l3)

P2291: !_REPLACEMENT [6] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+96], %o5
st %o5, [%i2+96]
add %i2, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2291
nop
RET2291:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2292: !_LD [5] (FP)
ld [%i0 + 64], %f3
! 1 addresses covered

P2293: !_MEMBAR (FP)
membar #StoreLoad

P2294: !_BLD [28] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2294
nop
RET2294:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2295: !_MEMBAR (FP)

P2296: !_REPLACEMENT [28] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2296
nop
RET2296:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2297: !_MEMBAR (FP)

P2298: !_BST [6] (maybe <- 0x4180004a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P2299: !_MEMBAR (FP) (Branch target of P2196)
ba P2300
nop

TARGET2196:
ba RET2196
nop


P2300: !_BST [32] (maybe <- 0x4180004c) (FP) (Branch target of P2267)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi
ba P2301
nop

TARGET2267:
ba RET2267
nop


P2301: !_MEMBAR (FP)
membar #StoreLoad

P2302: !_PREFETCH [18] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 128] %asi, 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2302
nop
RET2302:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2303: !_IDC_FLIP [16] (Int) (CBR) (Branch target of P2500)
IDC_FLIP(2303, 28686, 4, 0x44800010, 0x10, %i2, 0x10, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2303
nop
RET2303:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2304
nop

TARGET2500:
ba RET2500
nop


P2304: !_MEMBAR (FP)
membar #StoreLoad

P2305: !_BLD [6] (FP) (Branch target of P2924)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovd %f40, %f6
ba P2306
nop

TARGET2924:
ba RET2924
nop


P2306: !_MEMBAR (FP)

P2307: !_BST [6] (maybe <- 0x4180004d) (FP) (Secondary ctx) (Branch target of P2911)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi
ba P2308
nop

TARGET2911:
ba RET2911
nop


P2308: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2375)
membar #StoreLoad
ba P2309
nop

TARGET2375:
ba RET2375
nop


P2309: !_ST [5] (maybe <- 0x4180004f) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

P2310: !_REPLACEMENT [25] (Int) (Branch target of P2771)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
ba P2311
nop

TARGET2771:
ba RET2771
nop


P2311: !_LD [30] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 128], %f7
! 1 addresses covered

P2312: !_MEMBAR (FP) (Branch target of P2702)
membar #StoreLoad
ba P2313
nop

TARGET2702:
ba RET2702
nop


P2313: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f8
fmovd %f34, %f10
fmovd %f36, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P2314: !_MEMBAR (FP) (CBR) (Branch target of P2804)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2314
nop
RET2314:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2315
nop

TARGET2804:
ba RET2804
nop


P2315: !_BLD [0] (FP) (Branch target of P2439)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f36, %f0
fmovd %f40, %f18
fmovs %f18, %f1
ba P2316
nop

TARGET2439:
ba RET2439
nop


P2316: !_MEMBAR (FP) (Branch target of P2493)
ba P2317
nop

TARGET2493:
ba RET2493
nop


P2317: !_LD [0] (FP)
ld [%i0 + 0], %f2
! 1 addresses covered

P2318: !_REPLACEMENT [18] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2318
nop
RET2318:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2319: !_REPLACEMENT [23] (Int) (Branch target of P2734)
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
ba P2320
nop

TARGET2734:
ba RET2734
nop


P2320: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2320
nop
RET2320:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2321: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f18, %f5
fmovd %f36, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P2322: !_MEMBAR (FP)

P2323: !_BLD [1] (FP) (Branch target of P3064)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f8
fmovd %f34, %f10
fmovd %f36, %f18
fmovs %f18, %f11
fmovd %f40, %f12
ba P2324
nop

TARGET3064:
ba RET3064
nop


P2324: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2324
nop
RET2324:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2325: !_LD [2] (FP)
ld [%i0 + 8], %f13
! 1 addresses covered

P2326: !_MEMBAR (FP)

P2327: !_BSTC [13] (maybe <- 0x41800050) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2328: !_MEMBAR (FP)
membar #StoreLoad

P2329: !_BLD [31] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f14

P2330: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2330
nop
RET2330:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2331: !_REPLACEMENT [6] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+96], %o5
st %o5, [%i2+96]
add %i2, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

P2332: !_REPLACEMENT [8] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P2333: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2333
nop
RET2333:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2334: !_BST [20] (maybe <- 0x41800053) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P2335: !_MEMBAR (FP)
membar #StoreLoad

P2336: !_REPLACEMENT [4] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2336
nop
RET2336:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2337: !_REPLACEMENT [3] (Int)
sethi %hi(0x2000), %o5
ld [%i2+16], %l6
st %l6, [%i2+16]
add %i2, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

P2338: !_REPLACEMENT [2] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i2+8], %l3
st %l3, [%i2+8]
add %i2, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]

P2339: !_MEMBAR (FP)

P2340: !_BST [25] (maybe <- 0x41800054) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P2341: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2341
nop
RET2341:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2342: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P2343: !_MEMBAR (FP)

P2344: !_IDC_FLIP [8] (Int)
IDC_FLIP(2344, 17852, 4, 0x43800000, 0x0, %i1, 0x0, %l6, %l7, %o5, %l3)

P2345: !_REPLACEMENT [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P2346: !_MEMBAR (FP)
membar #StoreLoad

P2347: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P2348: !_MEMBAR (FP)

P2349: !_ST [17] (maybe <- 0x41800056) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 96 ]

P2350: !_MEMBAR (FP)

P2351: !_BST [17] (maybe <- 0x41800057) (FP) (Branch target of P2163)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi
ba P2352
nop

TARGET2163:
ba RET2163
nop


P2352: !_MEMBAR (FP)
membar #StoreLoad

P2353: !_LD [17] (Int) (CBR)
lduw [%i3 + 96], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2353
nop
RET2353:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2354: !_LD [23] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2355: !_REPLACEMENT [5] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P2356: !_MEMBAR (FP) (CBR) (Branch target of P2645)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2356
nop
RET2356:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2357
nop

TARGET2645:
ba RET2645
nop


P2357: !_BST [15] (maybe <- 0x41800058) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P2358: !_MEMBAR (FP)

P2359: !_BST [1] (maybe <- 0x41800059) (FP) (Secondary ctx) (Branch target of P2487)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P2360
nop

TARGET2487:
ba RET2487
nop


P2360: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2361: !_LD [26] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 128], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P2362: !_LD [3] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 16] %asi, %f3
! 1 addresses covered

P2363: !_MEMBAR (FP)

P2364: !_BST [15] (maybe <- 0x4180005e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P2365: !_MEMBAR (FP)
membar #StoreLoad

P2366: !_ST [13] (maybe <- 0x4180005f) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

P2367: !_MEMBAR (FP)
membar #StoreLoad

P2368: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4

P2369: !_MEMBAR (FP)

P2370: !_ST [30] (maybe <- 0x200000a) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i2 + 128] %asi
add   %l4, 1, %l4

P2371: !_REPLACEMENT [32] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P2372: !_REPLACEMENT [15] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2372
nop
RET2372:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2373: !_ST [6] (maybe <- 0x41800060) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 96 ]

P2374: !_MEMBAR (FP) (CBR) (Branch target of P2689)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2374
nop
RET2374:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2375
nop

TARGET2689:
ba RET2689
nop


P2375: !_BLD [4] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f18, %f7
fmovd %f36, %f8
fmovd %f40, %f18
fmovs %f18, %f9

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2375
nop
RET2375:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2376: !_MEMBAR (FP)

P2377: !_REPLACEMENT [25] (Int) (CBR) (Secondary ctx) (Branch target of P2866)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2377
nop
RET2377:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2378
nop

TARGET2866:
ba RET2866
nop


P2378: !_LD [29] (FP)
ld [%i2 + 64], %f10
! 1 addresses covered

P2379: !_MEMBAR (FP)
membar #StoreLoad

P2380: !_BLD [5] (FP) (Branch target of P2160)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovd %f40, %f12
ba P2381
nop

TARGET2160:
ba RET2160
nop


P2381: !_MEMBAR (FP)

P2382: !_ST [14] (maybe <- 0x41800061) (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

P2383: !_ST [0] (maybe <- 0x41800062) (FP) (Branch target of P2526)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]
ba P2384
nop

TARGET2526:
ba RET2526
nop


P2384: !_ST [11] (maybe <- 0x41800063) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P2385: !_REPLACEMENT [17] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+96], %o5
st %o5, [%i3+96]
add %i3, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2385
nop
RET2385:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2386: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %l6
ld [%i3+4], %o5
st %o5, [%i3+4]
add %i3, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P2387: !_REPLACEMENT [2] (Int)
sethi %hi(0x2000), %l3
ld [%i3+8], %l7
st %l7, [%i3+8]
add %i3, %l3, %l6
ld [%l6+8], %l7
st %l7, [%l6+8]
add %l6, %l3, %l6
ld [%l6+8], %l7
st %l7, [%l6+8]
add %l6, %l3, %l6
ld [%l6+8], %l7
st %l7, [%l6+8]
add %l6, %l3, %l6
ld [%l6+8], %l7
st %l7, [%l6+8]
add %l6, %l3, %l6
ld [%l6+8], %l7
st %l7, [%l6+8]
add %l6, %l3, %l6
ld [%l6+8], %l7
st %l7, [%l6+8]
add %l6, %l3, %l6
ld [%l6+8], %l7
st %l7, [%l6+8]

P2388: !_REPLACEMENT [9] (Int) (Branch target of P2921)
sethi %hi(0x2000), %o5
ld [%i3+32], %l6
st %l6, [%i3+32]
add %i3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
ba P2389
nop

TARGET2921:
ba RET2921
nop


P2389: !_LD [8] (Int)
lduw [%i1 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2390: !_MEMBAR (FP)
membar #StoreLoad

P2391: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f36, %f0
fmovd %f40, %f18
fmovs %f18, %f1

P2392: !_MEMBAR (FP)

P2393: !_REPLACEMENT [19] (Int)
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P2394: !_LD [28] (FP) (Branch target of P2952)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f2
! 1 addresses covered
ba P2395
nop

TARGET2952:
ba RET2952
nop


P2395: !_MEMBAR (FP)

P2396: !_BST [28] (maybe <- 0x41800064) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2397: !_MEMBAR (FP)
membar #StoreLoad

P2398: !_ST [27] (maybe <- 0x200000b) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 160] %asi
add   %l4, 1, %l4

P2399: !_ST [17] (maybe <- 0x41800065) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 96 ]

P2400: !_MEMBAR (FP) (Secondary ctx) (Branch target of P3051)
membar #StoreLoad
ba P2401
nop

TARGET3051:
ba RET3051
nop


P2401: !_BLD [30] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P2402: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2402
nop
RET2402:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2403: !_REPLACEMENT [7] (Int) (Secondary ctx) (Branch target of P2740)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
ba P2404
nop

TARGET2740:
ba RET2740
nop


P2404: !_MEMBAR (FP)
membar #StoreLoad

P2405: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f40, %f6

P2406: !_MEMBAR (FP)

P2407: !_IDC_FLIP [0] (Int)
IDC_FLIP(2407, 14775, 4, 0x43000000, 0x0, %i0, 0x0, %l6, %l7, %o5, %l3)

P2408: !_LD [25] (FP) (Branch target of P2681)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 96], %f7
! 1 addresses covered
ba P2409
nop

TARGET2681:
ba RET2681
nop


P2409: !_REPLACEMENT [14] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P2410: !_ST [32] (maybe <- 0x41800066) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 256 ]

P2411: !_REPLACEMENT [29] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i2+64], %l6
st %l6, [%i2+64]
add %i2, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2411
nop
RET2411:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2412: !_MEMBAR (FP)
membar #StoreLoad

P2413: !_BLD [10] (FP) (Branch target of P2864)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8
ba P2414
nop

TARGET2864:
ba RET2864
nop


P2414: !_MEMBAR (FP)

P2415: !_LD [4] (FP)
ld [%i0 + 32], %f9
! 1 addresses covered

P2416: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2416
nop
RET2416:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2417: !_BST [0] (maybe <- 0x41800067) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2418: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2419: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10

P2420: !_MEMBAR (FP)

P2421: !_LD [26] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 128], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

P2422: !_PREFETCH [13] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 32], 1

P2423: !_REPLACEMENT [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P2424: !_MEMBAR (FP)
membar #StoreLoad

P2425: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11

P2426: !_MEMBAR (FP) (Branch target of P2886)
ba P2427
nop

TARGET2886:
ba RET2886
nop


P2427: !_ST [8] (maybe <- 0x4180006c) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 0 ]

P2428: !_LD [23] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 32] %asi, %f12
! 1 addresses covered

P2429: !_IDC_FLIP [32] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(2429, 7557, 4, 0x46000100, 0x100, %i3, 0x100, %l6, %l7, %o5, %l3)

P2430: !_REPLACEMENT [29] (Int) (CBR) (Nucleus ctx) (Branch target of P2788)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2430
nop
RET2430:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2431
nop

TARGET2788:
ba RET2788
nop


P2431: !_MEMBAR (FP)
membar #StoreLoad

P2432: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13

P2433: !_MEMBAR (FP)

P2434: !_ST [5] (maybe <- 0x200000c) (Int) (Branch target of P2756)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4
ba P2435
nop

TARGET2756:
ba RET2756
nop


P2435: !_REPLACEMENT [11] (Int)
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P2436: !_ST [4] (maybe <- 0x4180006d) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]

P2437: !_LD [18] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 128], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2437
nop
RET2437:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2438: !_FLUSHI [10] (Int)
flush %g0 

P2439: !_LD [22] (Int) (CBR) (Branch target of P2286)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2439
nop
RET2439:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2440
nop

TARGET2286:
ba RET2286
nop


P2440: !_REPLACEMENT [5] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+64], %l7
st %l7, [%i3+64]
add %i3, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2440
nop
RET2440:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2441: !_ST [14] (maybe <- 0x200000d) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2442: !_MEMBAR (FP)

P2443: !_BST [31] (maybe <- 0x4180006e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

P2444: !_MEMBAR (FP) (Branch target of P2266)
membar #StoreLoad
ba P2445
nop

TARGET2266:
ba RET2266
nop


P2445: !_ST [3] (maybe <- 0x200000e) (Int)
stw   %l4, [%i0 + 16 ]
add   %l4, 1, %l4

P2446: !_FLUSHI [7] (Int)
flush %g0 

P2447: !_ST [1] (maybe <- 0x4180006f) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2447
nop
RET2447:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2448: !_MEMBAR (FP)
membar #StoreLoad

P2449: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P2450: !_MEMBAR (FP) (Branch target of P2947)
ba P2451
nop

TARGET2947:
ba RET2947
nop


P2451: !_IDC_FLIP [0] (Int)
IDC_FLIP(2451, 11712, 4, 0x43000000, 0x0, %i0, 0x0, %l6, %l7, %o5, %l3)

P2452: !_MEMBAR (FP)

P2453: !_BST [11] (maybe <- 0x41800070) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2454: !_MEMBAR (FP)
membar #StoreLoad

P2455: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f0
membar #Sync
! 1 addresses covered

P2456: !_MEMBAR (FP)

P2457: !_REPLACEMENT [29] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+64], %l7
st %l7, [%i2+64]
add %i2, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2457
nop
RET2457:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2458: !_MEMBAR (FP)
membar #StoreLoad

P2459: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1

P2460: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2460
nop
RET2460:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2461: !_BST [5] (maybe <- 0x41800073) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P2462: !_MEMBAR (FP) (Branch target of P2949)
membar #StoreLoad
ba P2463
nop

TARGET2949:
ba RET2949
nop


P2463: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f2

P2464: !_MEMBAR (FP)

P2465: !_ST [18] (maybe <- 0x200000f) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 128] %asi
add   %l4, 1, %l4

P2466: !_REPLACEMENT [24] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P2467: !_LD [1] (FP) (Branch target of P2594)
ld [%i0 + 4], %f3
! 1 addresses covered
ba P2468
nop

TARGET2594:
ba RET2594
nop


P2468: !_REPLACEMENT [30] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2468
nop
RET2468:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2469: !_LD [6] (Int) (Branch target of P2216)
lduw [%i0 + 96], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
ba P2470
nop

TARGET2216:
ba RET2216
nop


P2470: !_LD [5] (FP) (Branch target of P2773)
ld [%i0 + 64], %f4
! 1 addresses covered
ba P2471
nop

TARGET2773:
ba RET2773
nop


P2471: !_REPLACEMENT [18] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P2472: !_MEMBAR (FP)

P2473: !_BST [26] (maybe <- 0x41800075) (FP) (Branch target of P3053)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi
ba P2474
nop

TARGET3053:
ba RET3053
nop


P2474: !_MEMBAR (FP)
membar #StoreLoad

P2475: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovd %f40, %f6

P2476: !_MEMBAR (FP)

P2477: !_ST [8] (maybe <- 0x41800077) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 0 ]

P2478: !_MEMBAR (FP) (Branch target of P2963)
membar #StoreLoad
ba P2479
nop

TARGET2963:
ba RET2963
nop


P2479: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7

P2480: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2480
nop
RET2480:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2481: !_BLD [3] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f8
fmovd %f34, %f10
fmovd %f36, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P2482: !_MEMBAR (FP) (Secondary ctx)

P2483: !_BLD [4] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f36, %f0
fmovd %f40, %f18
fmovs %f18, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2483
nop
RET2483:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2484: !_MEMBAR (FP) (Branch target of P2945)
ba P2485
nop

TARGET2945:
ba RET2945
nop


P2485: !_REPLACEMENT [7] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2485
nop
RET2485:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2486: !_MEMBAR (FP)
membar #StoreLoad

P2487: !_BLD [13] (FP) (CBR) (Branch target of P2164)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f40, %f4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2487
nop
RET2487:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2488
nop

TARGET2164:
ba RET2164
nop


P2488: !_MEMBAR (FP)

P2489: !_BST [27] (maybe <- 0x41800078) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P2490: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2490
nop
RET2490:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2491: !_IDC_FLIP [16] (Int) (CBR) (Branch target of P2490)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
IDC_FLIP(2491, 8196, 4, 0x44800010, 0x10, %i2, 0x10, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2491
nop
RET2491:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2492
nop

TARGET2490:
ba RET2490
nop


P2492: !_REPLACEMENT [14] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+64], %l3
st %l3, [%i3+64]
add %i3, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P2493: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2493
nop
RET2493:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2494: !_BST [4] (maybe <- 0x4180007a) (FP) (CBR) (Branch target of P2660)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2494
nop
RET2494:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2495
nop

TARGET2660:
ba RET2660
nop


P2495: !_MEMBAR (FP)

P2496: !_BST [0] (maybe <- 0x4180007f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2497: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2497
nop
RET2497:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2498: !_BST [1] (maybe <- 0x41800084) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2499: !_MEMBAR (FP) (Branch target of P2513)
membar #StoreLoad
ba P2500
nop

TARGET2513:
ba RET2513
nop


P2500: !_BLD [26] (FP) (CBR) (Branch target of P2570)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovd %f40, %f6

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2500
nop
RET2500:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2501
nop

TARGET2570:
ba RET2570
nop


P2501: !_MEMBAR (FP) (Branch target of P2480)
ba P2502
nop

TARGET2480:
ba RET2480
nop


P2502: !_BST [28] (maybe <- 0x41800089) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2502
nop
RET2502:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2503: !_MEMBAR (FP)

P2504: !_BST [12] (maybe <- 0x4180008a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2505: !_MEMBAR (FP)

P2506: !_BST [19] (maybe <- 0x4180008d) (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2506
nop
RET2506:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2507: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2508: !_REPLACEMENT [28] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P2509: !_MEMBAR (FP)

P2510: !_BST [22] (maybe <- 0x4180008e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2511: !_MEMBAR (FP) (Branch target of P2106)
membar #StoreLoad
ba P2512
nop

TARGET2106:
ba RET2106
nop


P2512: !_ST [31] (maybe <- 0x41800091) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 192 ]

P2513: !_MEMBAR (FP) (CBR) (Branch target of P2333)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2513
nop
RET2513:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2514
nop

TARGET2333:
ba RET2333
nop


P2514: !_BST [2] (maybe <- 0x41800092) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2515: !_MEMBAR (FP)
membar #StoreLoad

P2516: !_ST [12] (maybe <- 0x41800097) (FP) (CBR) (Branch target of P2202)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2516
nop
RET2516:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2517
nop

TARGET2202:
ba RET2202
nop


P2517: !_MEMBAR (FP)

P2518: !_BST [5] (maybe <- 0x41800098) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P2519: !_MEMBAR (FP)
membar #StoreLoad

P2520: !_REPLACEMENT [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P2521: !_LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2522: !_MEMBAR (FP)

P2523: !_BSTC [31] (maybe <- 0x4180009a) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

P2524: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2524
nop
RET2524:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2525: !_REPLACEMENT [29] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P2526: !_REPLACEMENT [5] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2526
nop
RET2526:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2527: !_ST [26] (maybe <- 0x4180009b) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]

P2528: !_LD [8] (Int)
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2529: !_MEMBAR (FP)
membar #StoreLoad

P2530: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P2531: !_MEMBAR (FP)

P2532: !_REPLACEMENT [30] (Int) (Branch target of P2097)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
ba P2533
nop

TARGET2097:
ba RET2097
nop


P2533: !_MEMBAR (FP) (CBR) (Branch target of P2913)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2533
nop
RET2533:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2534
nop

TARGET2913:
ba RET2913
nop


P2534: !_BLD [7] (FP) (Branch target of P2693)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
ba P2535
nop

TARGET2693:
ba RET2693
nop


P2535: !_MEMBAR (FP)

P2536: !_BST [21] (maybe <- 0x4180009c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2537: !_MEMBAR (FP)

P2538: !_BST [32] (maybe <- 0x4180009f) (FP) (CBR) (Branch target of P2134)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2538
nop
RET2538:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2539
nop

TARGET2134:
ba RET2134
nop


P2539: !_MEMBAR (FP)
membar #StoreLoad

P2540: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P2541: !_MEMBAR (FP) (Branch target of P2760)
ba P2542
nop

TARGET2760:
ba RET2760
nop


P2542: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f12
fmovd %f34, %f14
fmovd %f36, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

P2543: !_MEMBAR (FP)

P2544: !_LD [5] (Int)
lduw [%i0 + 64], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P2545: !_REPLACEMENT [13] (Int)
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P2546: !_MEMBAR (FP)
membar #StoreLoad

P2547: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1

P2548: !_MEMBAR (FP)

P2549: !_ST [19] (maybe <- 0x2000010) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2550: !_MEMBAR (FP)
membar #StoreLoad

P2551: !_BLD [6] (FP) (Branch target of P2138)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3
ba P2552
nop

TARGET2138:
ba RET2138
nop


P2552: !_MEMBAR (FP)

P2553: !_LD [11] (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f4
! 1 addresses covered

P2554: !_REPLACEMENT [30] (Int) (Branch target of P2457)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
ba P2555
nop

TARGET2457:
ba RET2457
nop


P2555: !_MEMBAR (FP)

P2556: !_BST [8] (maybe <- 0x418000a0) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2556
nop
RET2556:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2557: !_MEMBAR (FP)

P2558: !_BST [10] (maybe <- 0x418000a2) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P2559: !_MEMBAR (FP)
membar #StoreLoad

P2560: !_IDC_FLIP [28] (Int) (CBR) (Branch target of P2172)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2560, 19649, 4, 0x46000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2560
nop
RET2560:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2561
nop

TARGET2172:
ba RET2172
nop


P2561: !_MEMBAR (FP)
membar #StoreLoad

P2562: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovd %f40, %f6

P2563: !_MEMBAR (FP)

P2564: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f36, %f18
fmovs %f18, %f7

P2565: !_MEMBAR (FP)

P2566: !_BST [19] (maybe <- 0x418000a3) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2567: !_MEMBAR (FP) (Branch target of P2800)
membar #StoreLoad
ba P2568
nop

TARGET2800:
ba RET2800
nop


P2568: !_ST [18] (maybe <- 0x2000011) (Int) (Nucleus ctx) (Branch target of P2979)
wr %g0, 0x4, %asi
stwa   %l4, [%i2 + 128] %asi
add   %l4, 1, %l4
ba P2569
nop

TARGET2979:
ba RET2979
nop


P2569: !_LD [3] (Int)
lduw [%i0 + 16], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2570: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2570
nop
RET2570:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2571: !_BST [13] (maybe <- 0x418000a4) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2572: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2573: !_LD [20] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i3 + 256] %asi, %f8
! 1 addresses covered

P2574: !_MEMBAR (FP)
membar #StoreLoad

P2575: !_BLD [28] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9

P2576: !_MEMBAR (FP)

P2577: !_REPLACEMENT [1] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P2578: !_REPLACEMENT [25] (Int)
sethi %hi(0x2000), %l6
ld [%i2+96], %o5
st %o5, [%i2+96]
add %i2, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

P2579: !_MEMBAR (FP)
membar #StoreLoad

P2580: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10

P2581: !_MEMBAR (FP)

P2582: !_LD [5] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2583: !_LD [20] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 256], %f11
! 1 addresses covered

P2584: !_MEMBAR (FP)

P2585: !_BSTC [31] (maybe <- 0x418000a7) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

P2586: !_MEMBAR (FP)
membar #StoreLoad

P2587: !_REPLACEMENT [17] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+96], %o5
st %o5, [%i2+96]
add %i2, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2587
nop
RET2587:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2588: !_REPLACEMENT [20] (Int)
sethi %hi(0x2000), %l6
ld [%i2+256], %o5
st %o5, [%i2+256]
add %i2, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

P2589: !_REPLACEMENT [0] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P2590: !_MEMBAR (FP)

P2591: !_BSTC [8] (maybe <- 0x418000a8) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2592: !_MEMBAR (FP)
membar #StoreLoad

P2593: !_ST [24] (maybe <- 0x2000012) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 64] %asi
add   %l4, 1, %l4

P2594: !_MEMBAR (FP) (CBR) (Branch target of P2241)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2594
nop
RET2594:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2595
nop

TARGET2241:
ba RET2241
nop


P2595: !_BLD [25] (FP) (Branch target of P2615)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f12
fmovd %f40, %f18
fmovs %f18, %f13
ba P2596
nop

TARGET2615:
ba RET2615
nop


P2596: !_MEMBAR (FP)

P2597: !_LD [32] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 256], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2598: !_MEMBAR (FP)
membar #StoreLoad

P2599: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P2600: !_MEMBAR (FP) (Branch target of P2713)
ba P2601
nop

TARGET2713:
ba RET2713
nop


P2601: !_LD [7] (Int) (CBR)
lduw [%i0 + 128], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2601
nop
RET2601:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2602: !_MEMBAR (FP) (CBR) (Branch target of P2372)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2602
nop
RET2602:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2603
nop

TARGET2372:
ba RET2372
nop


P2603: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 256] %asi, %f0
membar #Sync
! 1 addresses covered

P2604: !_MEMBAR (FP)

P2605: !_BST [11] (maybe <- 0x418000aa) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2606: !_MEMBAR (FP)
membar #StoreLoad

P2607: !_ST [11] (maybe <- 0x2000013) (Int) (Branch target of P2151)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
ba P2608
nop

TARGET2151:
ba RET2151
nop


P2608: !_IDC_FLIP [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2608, 22745, 4, 0x46000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P2609: !_ST [12] (maybe <- 0x2000014) (Int) (Branch target of P2919)
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
ba P2610
nop

TARGET2919:
ba RET2919
nop


P2610: !_REPLACEMENT [13] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P2611: !_MEMBAR (FP)

P2612: !_BSTC [23] (maybe <- 0x418000ad) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2613: !_MEMBAR (FP) (Branch target of P3076)
membar #StoreLoad
ba P2614
nop

TARGET3076:
ba RET3076
nop


P2614: !_IDC_FLIP [19] (Int) (Branch target of P2402)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(2614, 26691, 4, 0x45000000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)
ba P2615
nop

TARGET2402:
ba RET2402
nop


P2615: !_REPLACEMENT [21] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2615
nop
RET2615:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2616: !_LD [5] (FP)
ld [%i0 + 64], %f1
! 1 addresses covered

P2617: !_PREFETCH [17] (Int) (Branch target of P3059)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 96], 1
ba P2618
nop

TARGET3059:
ba RET3059
nop


P2618: !_ST [21] (maybe <- 0x418000b0) (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2618
nop
RET2618:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2619: !_REPLACEMENT [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P2620: !_REPLACEMENT [20] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P2621: !_ST [14] (maybe <- 0x2000015) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2622: !_REPLACEMENT [2] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i3+8], %l3
st %l3, [%i3+8]
add %i3, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2622
nop
RET2622:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2623: !_LD [10] (FP)
ld [%i1 + 64], %f2
! 1 addresses covered

P2624: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2624
nop
RET2624:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2625: !_BST [19] (maybe <- 0x418000b1) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2626: !_MEMBAR (FP)
membar #StoreLoad

P2627: !_ST [1] (maybe <- 0x418000b2) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P2628: !_MEMBAR (FP)
membar #StoreLoad

P2629: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P2630: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2630
nop
RET2630:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2631: !_BST [31] (maybe <- 0x418000b3) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 192 ] %asi

P2632: !_MEMBAR (FP)
membar #StoreLoad

P2633: !_ST [13] (maybe <- 0x2000016) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 32 ]
add   %l4, 1, %l4

P2634: !_REPLACEMENT [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+64], %l7
st %l7, [%i2+64]
add %i2, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P2635: !_MEMBAR (FP)

P2636: !_BST [6] (maybe <- 0x418000b4) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P2637: !_MEMBAR (FP)
membar #StoreLoad

P2638: !_REPLACEMENT [7] (Int)
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P2639: !_MEMBAR (FP)
membar #StoreLoad

P2640: !_BLD [32] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2640
nop
RET2640:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2641: !_MEMBAR (FP) (Loop exit) (Branch target of P2838)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--

sethi %hi(0x20000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_0
nop
ba P2642
nop

TARGET2838:
ba RET2838
nop


P2642: !_MEMBAR (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_1:
membar #StoreLoad

P2643: !_BLD [1] (FP) (Branch target of P2738)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 5 addresses covered
fmovs %f4, %f3
fmovd %f8, %f4
ba P2644
nop

TARGET2738:
ba RET2738
nop


P2644: !_MEMBAR (FP)

P2645: !_ST [29] (maybe <- 0x418000b6) (FP) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2645
nop
RET2645:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2646: !_LD [33] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 0], %f5
! 1 addresses covered

P2647: !_MEMBAR (FP) (Branch target of P2296)
ba P2648
nop

TARGET2296:
ba RET2296
nop


P2648: !_BST [10] (maybe <- 0x418000b7) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P2649: !_MEMBAR (FP)

P2650: !_BST [11] (maybe <- 0x418000b8) (FP) (Branch target of P2460)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P2651
nop

TARGET2460:
ba RET2460
nop


P2651: !_MEMBAR (FP)

P2652: !_BST [2] (maybe <- 0x418000bb) (FP) (Secondary ctx) (Branch target of P2678)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P2653
nop

TARGET2678:
ba RET2678
nop


P2653: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2654: !_ST [10] (maybe <- 0x2000017) (Int) (CBR) (Branch target of P2494)
stw   %l4, [%i1 + 64 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2654
nop
RET2654:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2655
nop

TARGET2494:
ba RET2494
nop


P2655: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2840)
membar #StoreLoad
ba P2656
nop

TARGET2840:
ba RET2840
nop


P2656: !_BLD [10] (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2656
nop
RET2656:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2657: !_MEMBAR (FP) (Secondary ctx)

P2658: !_REPLACEMENT [2] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+8], %o5
st %o5, [%i3+8]
add %i3, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]

P2659: !_ST [24] (maybe <- 0x418000c0) (FP) (CBR) (Branch target of P2994)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2659
nop
RET2659:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2660
nop

TARGET2994:
ba RET2994
nop


P2660: !_FLUSHI [15] (Int) (CBR)
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2660
nop
RET2660:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2661: !_REPLACEMENT [21] (Int)
sethi %hi(0x2000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P2662: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2662
nop
RET2662:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2663: !_BLD [27] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P2664: !_MEMBAR (FP) (Secondary ctx)

P2665: !_ST [2] (maybe <- 0x2000018) (Int)
stw   %l4, [%i0 + 8 ]
add   %l4, 1, %l4

P2666: !_ST [30] (maybe <- 0x2000019) (Int) (Branch target of P2855)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4
ba P2667
nop

TARGET2855:
ba RET2855
nop


P2667: !_ST [10] (maybe <- 0x200001a) (Int)
stw   %l4, [%i1 + 64 ]
add   %l4, 1, %l4

P2668: !_MEMBAR (FP) (Branch target of P2324)
ba P2669
nop

TARGET2324:
ba RET2324
nop


P2669: !_BST [26] (maybe <- 0x418000c1) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P2670: !_MEMBAR (FP) (Branch target of P2538)
membar #StoreLoad
ba P2671
nop

TARGET2538:
ba RET2538
nop


P2671: !_LD [10] (Int)
lduw [%i1 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2672: !_MEMBAR (FP) (Secondary ctx)

P2673: !_BST [3] (maybe <- 0x418000c3) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2674: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2675: !_LD [26] (FP) (CBR)
ld [%i2 + 128], %f9
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2675
nop
RET2675:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2676: !_IDC_FLIP [9] (Int) (CBR)
IDC_FLIP(2676, 4644, 4, 0x43800020, 0x20, %i1, 0x20, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2676
nop
RET2676:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2677: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2677
nop
RET2677:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2678: !_BST [29] (maybe <- 0x418000c8) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2678
nop
RET2678:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2679: !_MEMBAR (FP)

P2680: !_BSTC [28] (maybe <- 0x418000c9) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2681: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2681
nop
RET2681:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2682: !_BLD [26] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P2683: !_MEMBAR (FP)

P2684: !_REPLACEMENT [24] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+64], %l6
st %l6, [%i2+64]
add %i2, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2684
nop
RET2684:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2685: !_IDC_FLIP [12] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(2685, 29884, 4, 0x44000004, 0x4, %i3, 0x4, %l6, %l7, %o5, %l3)

P2686: !_MEMBAR (FP) (Branch target of P2692)
ba P2687
nop

TARGET2692:
ba RET2692
nop


P2687: !_BST [1] (maybe <- 0x418000ca) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2687
nop
RET2687:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2688: !_MEMBAR (FP)
membar #StoreLoad

P2689: !_FLUSHI [4] (Int) (CBR)
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2689
nop
RET2689:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2690: !_ST [33] (maybe <- 0x418000cf) (FP) (Nucleus ctx) (Branch target of P2863)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 0 ] %asi
ba P2691
nop

TARGET2863:
ba RET2863
nop


P2691: !_MEMBAR (FP)

P2692: !_BST [23] (maybe <- 0x418000d0) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2692
nop
RET2692:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2693: !_MEMBAR (FP) (CBR) (Branch target of P3045)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2693
nop
RET2693:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2694
nop

TARGET3045:
ba RET3045
nop


P2694: !_REPLACEMENT [31] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+192], %l3
st %l3, [%i2+192]
add %i2, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]
add %o5, %l7, %o5
ld [%o5+192], %l3
st %l3, [%o5+192]

P2695: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2696: !_BLD [8] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P2697: !_MEMBAR (FP) (Secondary ctx)

P2698: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f14

P2699: !_MEMBAR (FP)

P2700: !_REPLACEMENT [7] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P2701: !_LD [0] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 0] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P2702: !_REPLACEMENT [17] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i2+96], %l3
st %l3, [%i2+96]
add %i2, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2702
nop
RET2702:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2703: !_REPLACEMENT [12] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2703
nop
RET2703:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2704: !_IDC_FLIP [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
IDC_FLIP(2704, 27563, 4, 0x44800060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)

P2705: !_MEMBAR (FP)

P2706: !_BSTC [13] (maybe <- 0x418000d3) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2707: !_MEMBAR (FP)
membar #StoreLoad

P2708: !_REPLACEMENT [22] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P2709: !_REPLACEMENT [12] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %o5
ld [%i2+4], %l6
st %l6, [%i2+4]
add %i2, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P2710: !_MEMBAR (FP) (Branch target of P2988)
ba P2711
nop

TARGET2988:
ba RET2988
nop


P2711: !_BSTC [7] (maybe <- 0x418000d6) (FP) (Branch target of P2237)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi
ba P2712
nop

TARGET2237:
ba RET2237
nop


P2712: !_MEMBAR (FP)

P2713: !_BST [16] (maybe <- 0x418000d7) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2713
nop
RET2713:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2714: !_MEMBAR (FP) (Branch target of P2135)
membar #StoreLoad
ba P2715
nop

TARGET2135:
ba RET2135
nop


P2715: !_REPLACEMENT [25] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+96], %o5
st %o5, [%i2+96]
add %i2, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

P2716: !_REPLACEMENT [29] (Int) (Branch target of P2602)
sethi %hi(0x2000), %l3
ld [%i2+64], %l7
st %l7, [%i2+64]
add %i2, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
ba P2717
nop

TARGET2602:
ba RET2602
nop


P2717: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2718: !_BLD [21] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovs %f19, %f0
fmovd %f40, %f18
fmovs %f18, %f1

P2719: !_MEMBAR (FP) (Secondary ctx)

P2720: !_REPLACEMENT [18] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P2721: !_ST [29] (maybe <- 0x200001b) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2722: !_LD [26] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 128] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2722
nop
RET2722:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2723: !_LD [26] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 128] %asi, %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P2724: !_MEMBAR (FP)

P2725: !_BST [1] (maybe <- 0x418000d8) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2726: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2726
nop
RET2726:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2727: !_REPLACEMENT [16] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+16], %l6
st %l6, [%i3+16]
add %i3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]
add %l3, %o5, %l3
ld [%l3+16], %l6
st %l6, [%l3+16]

P2728: !_MEMBAR (FP)
membar #StoreLoad

P2729: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P2730: !_MEMBAR (FP) (CBR) (Branch target of P2491)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2730
nop
RET2730:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2731
nop

TARGET2491:
ba RET2491
nop


P2731: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f4
fmovd %f40, %f18
fmovs %f18, %f5

P2732: !_MEMBAR (FP)

P2733: !_REPLACEMENT [6] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i3+96], %l6
st %l6, [%i3+96]
add %i3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2733
nop
RET2733:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2734: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2734
nop
RET2734:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2735: !_BST [5] (maybe <- 0x418000dd) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P2736: !_MEMBAR (FP)

P2737: !_BST [23] (maybe <- 0x418000df) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2738: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2738
nop
RET2738:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2739: !_ST [20] (maybe <- 0x418000e2) (FP) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 256 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2739
nop
RET2739:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2740: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2740
nop
RET2740:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2741: !_BST [5] (maybe <- 0x418000e3) (FP) (Branch target of P2965)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi
ba P2742
nop

TARGET2965:
ba RET2965
nop


P2742: !_MEMBAR (FP)
membar #StoreLoad

P2743: !_LD [17] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 96], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2743
nop
RET2743:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2744: !_ST [9] (maybe <- 0x200001c) (Int)
stw   %l4, [%i1 + 32 ]
add   %l4, 1, %l4

P2745: !_ST [27] (maybe <- 0x200001d) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 160] %asi
add   %l4, 1, %l4

P2746: !_REPLACEMENT [26] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P2747: !_ST [25] (maybe <- 0x200001e) (Int)
stw   %l4, [%i2 + 96 ]
add   %l4, 1, %l4

P2748: !_LD [0] (Int)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2

P2749: !_LD [25] (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i2 + 96] %asi, %f6
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2749
nop
RET2749:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2750: !_LD [27] (FP)
ld [%i2 + 160], %f7
! 1 addresses covered

P2751: !_MEMBAR (FP) (Secondary ctx)

P2752: !_BST [24] (maybe <- 0x418000e5) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P2753: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2754: !_LD [7] (FP) (Branch target of P2294)
ld [%i0 + 128], %f8
! 1 addresses covered
ba P2755
nop

TARGET2294:
ba RET2294
nop


P2755: !_MEMBAR (FP) (Branch target of P2659)
ba P2756
nop

TARGET2659:
ba RET2659
nop


P2756: !_BST [16] (maybe <- 0x418000e7) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2756
nop
RET2756:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2757: !_MEMBAR (FP)
membar #StoreLoad

P2758: !_LD [18] (Int) (Branch target of P3074)
lduw [%i2 + 128], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
ba P2759
nop

TARGET3074:
ba RET3074
nop


P2759: !_MEMBAR (FP)

P2760: !_BST [29] (maybe <- 0x418000e8) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2760
nop
RET2760:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2761: !_MEMBAR (FP)
membar #StoreLoad

P2762: !_REPLACEMENT [16] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+16], %l3
st %l3, [%i2+16]
add %i2, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]

P2763: !_REPLACEMENT [7] (Int)
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P2764: !_ST [12] (maybe <- 0x200001f) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P2765: !_LD [19] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f9
! 1 addresses covered

P2766: !_MEMBAR (FP)

P2767: !_BSTC [15] (maybe <- 0x418000e9) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P2768: !_MEMBAR (FP)

P2769: !_BST [30] (maybe <- 0x418000ea) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P2770: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2771: !_ST [20] (maybe <- 0x418000eb) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 256 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2771
nop
RET2771:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2772: !_ST [30] (maybe <- 0x2000020) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P2773: !_IDC_FLIP [28] (Int) (CBR)
IDC_FLIP(2773, 14657, 4, 0x46000000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2773
nop
RET2773:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2774: !_MEMBAR (FP) (Branch target of P2095)
ba P2775
nop

TARGET2095:
ba RET2095
nop


P2775: !_BST [31] (maybe <- 0x418000ec) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 192 ] %asi

P2776: !_MEMBAR (FP)
membar #StoreLoad

P2777: !_REPLACEMENT [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P2778: !_LD [27] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 160], %f10
! 1 addresses covered

P2779: !_ST [18] (maybe <- 0x418000ed) (FP) (Branch target of P2587)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]
ba P2780
nop

TARGET2587:
ba RET2587
nop


P2780: !_REPLACEMENT [17] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+96], %l6
st %l6, [%i3+96]
add %i3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2780
nop
RET2780:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2781: !_LD [29] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 64], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

P2782: !_REPLACEMENT [24] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P2783: !_REPLACEMENT [4] (Int)
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P2784: !_LD [31] (Int)
lduw [%i2 + 192], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2785: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2786: !_BLD [0] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f18, %f13
fmovd %f36, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P2787: !_MEMBAR (FP) (Secondary ctx)

P2788: !_REPLACEMENT [2] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l7
ld [%i3+8], %l3
st %l3, [%i3+8]
add %i3, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2788
nop
RET2788:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2789: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2789
nop
RET2789:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2790: !_BST [6] (maybe <- 0x418000ee) (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2790
nop
RET2790:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2791: !_MEMBAR (FP) (Secondary ctx) (Branch target of P3082)
membar #StoreLoad
ba P2792
nop

TARGET3082:
ba RET3082
nop


P2792: !_LD [25] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 96], %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2793: !_REPLACEMENT [13] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+32], %o5
st %o5, [%i2+32]
add %i2, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

P2794: !_ST [2] (maybe <- 0x2000021) (Int)
stw   %l4, [%i0 + 8 ]
add   %l4, 1, %l4

P2795: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2795
nop
RET2795:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2796: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f0
membar #Sync
! 2 addresses covered
fmovs %f8, %f1

P2797: !_MEMBAR (FP) (Branch target of P2437)
ba P2798
nop

TARGET2437:
ba RET2437
nop


P2798: !_REPLACEMENT [11] (Int) (Branch target of P2926)
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
ba P2799
nop

TARGET2926:
ba RET2926
nop


P2799: !_REPLACEMENT [21] (Int) (Nucleus ctx) (Branch target of P2261)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
ba P2800
nop

TARGET2261:
ba RET2261
nop


P2800: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2800
nop
RET2800:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2801: !_BSTC [18] (maybe <- 0x418000f0) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P2802: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2803: !_REPLACEMENT [32] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i2+256], %l3
st %l3, [%i2+256]
add %i2, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]

P2804: !_REPLACEMENT [12] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2804
nop
RET2804:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2805: !_ST [10] (maybe <- 0x2000022) (Int)
stw   %l4, [%i1 + 64 ]
add   %l4, 1, %l4

P2806: !_REPLACEMENT [31] (Int) (Branch target of P2823)
sethi %hi(0x2000), %l3
ld [%i2+192], %l7
st %l7, [%i2+192]
add %i2, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
add %l6, %l3, %l6
ld [%l6+192], %l7
st %l7, [%l6+192]
ba P2807
nop

TARGET2823:
ba RET2823
nop


P2807: !_ST [24] (maybe <- 0x418000f1) (FP) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2807
nop
RET2807:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2808: !_LD [26] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i2 + 128] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2809: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+4], %o5
st %o5, [%i3+4]
add %i3, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P2810: !_ST [0] (maybe <- 0x2000023) (Int) (Secondary ctx) (Branch target of P2440)
wr %g0, 0x81, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4
ba P2811
nop

TARGET2440:
ba RET2440
nop


P2811: !_REPLACEMENT [20] (Int)
sethi %hi(0x2000), %o5
ld [%i3+256], %l6
st %l6, [%i3+256]
add %i3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]

P2812: !_LD [3] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i0 + 16] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P2813: !_MEMBAR (FP)

P2814: !_BST [15] (maybe <- 0x418000f2) (FP) (Branch target of P2662)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi
ba P2815
nop

TARGET2662:
ba RET2662
nop


P2815: !_MEMBAR (FP) (Branch target of P2341)
membar #StoreLoad
ba P2816
nop

TARGET2341:
ba RET2341
nop


P2816: !_REPLACEMENT [13] (Int) (Branch target of P2385)
sethi %hi(0x2000), %o5
ld [%i3+32], %l6
st %l6, [%i3+32]
add %i3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
ba P2817
nop

TARGET2385:
ba RET2385
nop


P2817: !_ST [0] (maybe <- 0x2000024) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P2818: !_REPLACEMENT [11] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2818
nop
RET2818:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2819: !_REPLACEMENT [4] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+32], %o5
st %o5, [%i3+32]
add %i3, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

P2820: !_MEMBAR (FP) (Branch target of P3058)
ba P2821
nop

TARGET3058:
ba RET3058
nop


P2821: !_BST [15] (maybe <- 0x418000f3) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P2822: !_MEMBAR (FP)
membar #StoreLoad

P2823: !_REPLACEMENT [5] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2823
nop
RET2823:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2824: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2824
nop
RET2824:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2825: !_BLD [30] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f2

P2826: !_MEMBAR (FP)

P2827: !_REPLACEMENT [17] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+96], %l7
st %l7, [%i2+96]
add %i2, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

P2828: !_MEMBAR (FP) (Branch target of P2927)
ba P2829
nop

TARGET2927:
ba RET2927
nop


P2829: !_BST [6] (maybe <- 0x418000f4) (FP) (Branch target of P2411)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi
ba P2830
nop

TARGET2411:
ba RET2411
nop


P2830: !_MEMBAR (FP)
membar #StoreLoad

P2831: !_PREFETCH [22] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 1

P2832: !_ST [16] (maybe <- 0x418000f6) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 16 ]

P2833: !_MEMBAR (FP)
membar #StoreLoad

P2834: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4

P2835: !_MEMBAR (FP) (Branch target of P2973)
ba P2836
nop

TARGET2973:
ba RET2973
nop


P2836: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f18, %f7
fmovd %f36, %f8
fmovd %f40, %f18
fmovs %f18, %f9

P2837: !_MEMBAR (FP)

P2838: !_BLD [0] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f10
fmovd %f34, %f12
fmovd %f36, %f18
fmovs %f18, %f13
fmovd %f40, %f14

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2838
nop
RET2838:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2839: !_MEMBAR (FP) (Branch target of P2167)
ba P2840
nop

TARGET2167:
ba RET2167
nop


P2840: !_LD [22] (FP) (CBR)
ld [%i3 + 4], %f15
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2840
nop
RET2840:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2841: !_REPLACEMENT [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P2842: !_LD [28] (Int) (LE) (CBR)
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2842
nop
RET2842:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2843: !_MEMBAR (FP)

P2844: !_BST [10] (maybe <- 0x418000f7) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P2845: !_MEMBAR (FP)
membar #StoreLoad

P2846: !_ST [13] (maybe <- 0x418000f8) (FP) (CBR) (Branch target of P2818)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2846
nop
RET2846:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2847
nop

TARGET2818:
ba RET2818
nop


P2847: !_MEMBAR (FP)

P2848: !_BST [21] (maybe <- 0x418000f9) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2849: !_MEMBAR (FP) (Branch target of P2416)
membar #StoreLoad
ba P2850
nop

TARGET2416:
ba RET2416
nop


P2850: !_REPLACEMENT [27] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+160], %l6
st %l6, [%i3+160]
add %i3, %o5, %l3
ld [%l3+160], %l6
st %l6, [%l3+160]
add %l3, %o5, %l3
ld [%l3+160], %l6
st %l6, [%l3+160]
add %l3, %o5, %l3
ld [%l3+160], %l6
st %l6, [%l3+160]
add %l3, %o5, %l3
ld [%l3+160], %l6
st %l6, [%l3+160]
add %l3, %o5, %l3
ld [%l3+160], %l6
st %l6, [%l3+160]
add %l3, %o5, %l3
ld [%l3+160], %l6
st %l6, [%l3+160]
add %l3, %o5, %l3
ld [%l3+160], %l6
st %l6, [%l3+160]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2850
nop
RET2850:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2851: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2852: !_REPLACEMENT [24] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i3+64], %l3
st %l3, [%i3+64]
add %i3, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2852
nop
RET2852:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2853: !_REPLACEMENT [4] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l7
ld [%i3+32], %l3
st %l3, [%i3+32]
add %i3, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P2854: !_REPLACEMENT [2] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l6
ld [%i3+8], %o5
st %o5, [%i3+8]
add %i3, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]
add %l7, %l6, %l7
ld [%l7+8], %o5
st %o5, [%l7+8]

P2855: !_REPLACEMENT [1] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2855
nop
RET2855:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2856: !_LD [10] (Int)
lduw [%i1 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2857: !_LD [14] (FP)
ld [%i2 + 64], %f0
! 1 addresses covered

P2858: !_ST [18] (maybe <- 0x418000fc) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P2859: !_MEMBAR (FP) (Branch target of P2790)
ba P2860
nop

TARGET2790:
ba RET2790
nop


P2860: !_BST [33] (maybe <- 0x418000fd) (FP) (Branch target of P2262)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P2861
nop

TARGET2262:
ba RET2262
nop


P2861: !_MEMBAR (FP)
membar #StoreLoad

P2862: !_LD [33] (Int)
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P2863: !_LD [3] (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 16] %asi, %f1
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2863
nop
RET2863:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2864: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2864
nop
RET2864:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2865: !_BST [0] (maybe <- 0x418000fe) (FP) (Branch target of P2254)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P2866
nop

TARGET2254:
ba RET2254
nop


P2866: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2866
nop
RET2866:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2867: !_REPLACEMENT [32] (Int) (Branch target of P2846)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
ba P2868
nop

TARGET2846:
ba RET2846
nop


P2868: !_ST [33] (maybe <- 0x41800103) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P2869: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2869
nop
RET2869:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2870: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P2871: !_MEMBAR (FP)

P2872: !_REPLACEMENT [32] (Int)
sethi %hi(0x2000), %o5
ld [%i3+256], %l6
st %l6, [%i3+256]
add %i3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]

P2873: !_LD [16] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 16] %asi, %f4
! 1 addresses covered

P2874: !_LD [18] (FP)
ld [%i2 + 128], %f5
! 1 addresses covered

P2875: !_MEMBAR (FP)
membar #StoreLoad

P2876: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f6
fmovd %f34, %f8
fmovd %f36, %f18
fmovs %f18, %f9
fmovd %f40, %f10

P2877: !_MEMBAR (FP)

P2878: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P2879: !_MEMBAR (FP)

P2880: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P2881: !_MEMBAR (FP)

P2882: !_ST [1] (maybe <- 0x41800104) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P2883: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2884: !_BLD [22] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P2885: !_MEMBAR (FP) (Secondary ctx)

P2886: !_ST [27] (maybe <- 0x2000025) (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i3 + 160] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2886
nop
RET2886:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2887: !_MEMBAR (FP)

P2888: !_BSTC [5] (maybe <- 0x41800105) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P2889: !_MEMBAR (FP) (Branch target of P3063)
membar #StoreLoad
ba P2890
nop

TARGET3063:
ba RET3063
nop


P2890: !_REPLACEMENT [29] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+64], %l7
st %l7, [%i2+64]
add %i2, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P2891: !_MEMBAR (FP) (Secondary ctx)

P2892: !_BSTC [0] (maybe <- 0x41800107) (FP) (Secondary ctx) (Branch target of P2447)
wr %g0, 0xe1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P2893
nop

TARGET2447:
ba RET2447
nop


P2893: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2894: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P2895: !_MEMBAR (FP)

P2896: !_REPLACEMENT [25] (Int)
sethi %hi(0x2000), %l7
ld [%i2+96], %l3
st %l3, [%i2+96]
add %i2, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

P2897: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2898: !_BLD [28] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4

P2899: !_MEMBAR (FP) (Secondary ctx)

P2900: !_REPLACEMENT [32] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+256], %o5
st %o5, [%i2+256]
add %i2, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

P2901: !_MEMBAR (FP) (Secondary ctx)

P2902: !_BST [4] (maybe <- 0x4180010c) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2903: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2904: !_ST [22] (maybe <- 0x2000026) (Int) (Branch target of P2995)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
ba P2905
nop

TARGET2995:
ba RET2995
nop


P2905: !_LD [20] (Int) (Branch target of P2780)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
ba P2906
nop

TARGET2780:
ba RET2780
nop


P2906: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2907: !_BLD [32] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

P2908: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P2749)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2908
nop
RET2908:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2909
nop

TARGET2749:
ba RET2749
nop


P2909: !_BLD [31] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i2 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2909
nop
RET2909:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2910: !_MEMBAR (FP) (Branch target of P2560)
ba P2911
nop

TARGET2560:
ba RET2560
nop


P2911: !_BLD [7] (FP) (CBR) (Branch target of P2852)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2911
nop
RET2911:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2912
nop

TARGET2852:
ba RET2852
nop


P2912: !_MEMBAR (FP)

P2913: !_BLD [18] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2913
nop
RET2913:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2914: !_MEMBAR (FP) (Branch target of P2183)
ba P2915
nop

TARGET2183:
ba RET2183
nop


P2915: !_ST [30] (maybe <- 0x41800111) (FP) (Secondary ctx) (Branch target of P2320)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 128 ] %asi
ba P2916
nop

TARGET2320:
ba RET2320
nop


P2916: !_MEMBAR (FP)

P2917: !_BSTC [23] (maybe <- 0x41800112) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2918: !_MEMBAR (FP) (Branch target of P2279)
membar #StoreLoad
ba P2919
nop

TARGET2279:
ba RET2279
nop


P2919: !_ST [8] (maybe <- 0x41800115) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2919
nop
RET2919:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2920: !_MEMBAR (FP)

P2921: !_BSTC [25] (maybe <- 0x41800116) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2921
nop
RET2921:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2922: !_MEMBAR (FP) (Branch target of P2166)
ba P2923
nop

TARGET2166:
ba RET2166
nop


P2923: !_BST [23] (maybe <- 0x41800118) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2924: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2924
nop
RET2924:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2925: !_LD [30] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
lda    [%i2 + 128] %asi, %f9
! 1 addresses covered

P2926: !_IDC_FLIP [10] (Int) (CBR)
IDC_FLIP(2926, 17865, 4, 0x43800040, 0x40, %i1, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2926
nop
RET2926:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2927: !_PREFETCH [10] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
prefetcha [%i1 + 64] %asi, 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2927
nop
RET2927:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2928: !_LD [13] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 32], %f10
! 1 addresses covered

P2929: !_ST [27] (maybe <- 0x2000027) (Int) (LE)
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l3, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
stwa   %o5, [%i3 + 160] %asi
add   %l4, 1, %l4

P2930: !_REPLACEMENT [2] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+8], %l3
st %l3, [%i3+8]
add %i3, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]

P2931: !_LD [4] (FP)
ld [%i0 + 32], %f11
! 1 addresses covered

P2932: !_MEMBAR (FP)
membar #StoreLoad

P2933: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f40, %f14

P2934: !_MEMBAR (FP) (Branch target of P2999)
ba P2935
nop

TARGET2999:
ba RET2999
nop


P2935: !_BSTC [26] (maybe <- 0x4180011b) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P2936: !_MEMBAR (FP)
membar #StoreLoad

P2937: !_REPLACEMENT [29] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+64], %l7
st %l7, [%i3+64]
add %i3, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P2938: !_ST [20] (maybe <- 0x4180011d) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 256 ]

P2939: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2939
nop
RET2939:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2940: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovs %f19, %f0
fmovd %f34, %f18
fmovs %f18, %f1
fmovd %f36, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P2941: !_MEMBAR (FP)

P2942: !_LD [5] (Int)
lduw [%i0 + 64], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

P2943: !_REPLACEMENT [30] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P2944: !_PREFETCH [20] (Int)
prefetch [%i3 + 256], 1

P2945: !_ST [28] (maybe <- 0x2000028) (Int) (CBR) (Branch target of P2257)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2945
nop
RET2945:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2946
nop

TARGET2257:
ba RET2257
nop


P2946: !_MEMBAR (FP) (Branch target of P2182)
membar #StoreLoad
ba P2947
nop

TARGET2182:
ba RET2182
nop


P2947: !_BLD [9] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f4
fmovd %f40, %f18
fmovs %f18, %f5

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2947
nop
RET2947:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2948: !_MEMBAR (FP)

P2949: !_BLD [23] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f40, %f8

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2949
nop
RET2949:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2950: !_MEMBAR (FP)

P2951: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P2952: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2952
nop
RET2952:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2953: !_BST [4] (maybe <- 0x4180011e) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2954: !_MEMBAR (FP) (Secondary ctx)

P2955: !_BST [33] (maybe <- 0x41800123) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2956: !_MEMBAR (FP)
membar #StoreLoad

P2957: !_REPLACEMENT [3] (Int) (Secondary ctx) (Branch target of P2730)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+16], %o5
st %o5, [%i2+16]
add %i2, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
ba P2958
nop

TARGET2730:
ba RET2730
nop


P2958: !_IDC_FLIP [5] (Int)
IDC_FLIP(2958, 19235, 4, 0x43000040, 0x40, %i0, 0x40, %l6, %l7, %o5, %l3)

P2959: !_ST [17] (maybe <- 0x2000029) (Int) (Branch target of P2850)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 96 ]
add   %l4, 1, %l4
ba P2960
nop

TARGET2850:
ba RET2850
nop


P2960: !_REPLACEMENT [4] (Int) (CBR) (Branch target of P2224)
sethi %hi(0x2000), %l3
ld [%i2+32], %l7
st %l7, [%i2+32]
add %i2, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2960
nop
RET2960:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2961
nop

TARGET2224:
ba RET2224
nop


P2961: !_MEMBAR (FP) (Branch target of P2330)
ba P2962
nop

TARGET2330:
ba RET2330
nop


P2962: !_BST [11] (maybe <- 0x41800124) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2963: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2963
nop
RET2963:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2964: !_BST [0] (maybe <- 0x41800127) (FP) (CBR) (Secondary ctx) (Branch target of P2622)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2964
nop
RET2964:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2965
nop

TARGET2622:
ba RET2622
nop


P2965: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P2483)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2965
nop
RET2965:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2966
nop

TARGET2483:
ba RET2483
nop


P2966: !_ST [11] (maybe <- 0x200002a) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P2967: !_REPLACEMENT [32] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P2968: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2969: !_ST [6] (maybe <- 0x4180012c) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 96 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2969
nop
RET2969:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2970: !_MEMBAR (FP)
membar #StoreLoad

P2971: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f12
fmovd %f34, %f14
fmovd %f36, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0

P2972: !_MEMBAR (FP)

P2973: !_REPLACEMENT [7] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2973
nop
RET2973:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2974: !_MEMBAR (FP)

P2975: !_BST [3] (maybe <- 0x4180012d) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2976: !_MEMBAR (FP)
membar #StoreLoad

P2977: !_ST [20] (maybe <- 0x200002b) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 256 ]
add   %l4, 1, %l4

P2978: !_REPLACEMENT [14] (Int) (Branch target of P2909)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+64], %l6
st %l6, [%i2+64]
add %i2, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
ba P2979
nop

TARGET2909:
ba RET2909
nop


P2979: !_ST [13] (maybe <- 0x41800132) (FP) (CBR) (Branch target of P2291)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2979
nop
RET2979:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2980
nop

TARGET2291:
ba RET2291
nop


P2980: !_LD [24] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 64] %asi, %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2981: !_ST [1] (maybe <- 0x41800133) (FP) (Branch target of P3030)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]
ba P2982
nop

TARGET3030:
ba RET3030
nop


P2982: !_MEMBAR (FP)
membar #StoreLoad

P2983: !_BLD [27] (FP) (Branch target of P3080)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovd %f40, %f2
ba P2984
nop

TARGET3080:
ba RET3080
nop


P2984: !_MEMBAR (FP) (Branch target of P2468)
ba P2985
nop

TARGET2468:
ba RET2468
nop


P2985: !_ST [3] (maybe <- 0x200002c) (Int)
stw   %l4, [%i0 + 16 ]
add   %l4, 1, %l4

P2986: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2986
nop
RET2986:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2987: !_BSTC [24] (maybe <- 0x41800134) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P2988: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2988
nop
RET2988:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2989: !_LD [26] (Int)
lduw [%i2 + 128], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2990: !_ST [21] (maybe <- 0x200002d) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P2991: !_MEMBAR (FP)

P2992: !_BST [11] (maybe <- 0x41800136) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2993: !_MEMBAR (FP)
membar #StoreLoad

P2994: !_BLD [0] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f18, %f5
fmovd %f36, %f6
fmovd %f40, %f18
fmovs %f18, %f7

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2994
nop
RET2994:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2995: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2995
nop
RET2995:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2996: !_REPLACEMENT [15] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P2997: !_ST [8] (maybe <- 0x41800139) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i1 + 0 ] %asi

P2998: !_REPLACEMENT [18] (Int)
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P2999: !_MEMBAR (FP) (CBR) (Branch target of P2516)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2999
nop
RET2999:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P3000
nop

TARGET2516:
ba RET2516
nop


P3000: !_BLD [31] (FP) (Branch target of P2601)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8
ba P3001
nop

TARGET2601:
ba RET2601
nop


P3001: !_MEMBAR (FP)

P3002: !_BST [12] (maybe <- 0x4180013a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3003: !_MEMBAR (FP)
membar #StoreLoad

P3004: !_BLD [24] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovd %f40, %f10

P3005: !_MEMBAR (FP) (Secondary ctx)

P3006: !_BLD [26] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P3007: !_MEMBAR (FP) (Secondary ctx)

P3008: !_BST [16] (maybe <- 0x4180013d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3009: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3009
nop
RET3009:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3010: !_BST [27] (maybe <- 0x4180013e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P3011: !_MEMBAR (FP)
membar #StoreLoad

P3012: !_REPLACEMENT [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+32], %l3
st %l3, [%i2+32]
add %i2, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P3013: !_REPLACEMENT [24] (Int)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P3014: !_MEMBAR (FP) (Branch target of P2969)
ba P3015
nop

TARGET2969:
ba RET2969
nop


P3015: !_BST [6] (maybe <- 0x41800140) (FP) (Branch target of P2353)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi
ba P3016
nop

TARGET2353:
ba RET2353
nop


P3016: !_MEMBAR (FP)

P3017: !_BST [9] (maybe <- 0x41800142) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P3018: !_MEMBAR (FP) (Branch target of P2318)
membar #StoreLoad
ba P3019
nop

TARGET2318:
ba RET2318
nop


P3019: !_REPLACEMENT [14] (Int) (Branch target of P2703)
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
ba P3020
nop

TARGET2703:
ba RET2703
nop


P3020: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P3021: !_BLD [7] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13

P3022: !_MEMBAR (FP) (Secondary ctx)

P3023: !_PREFETCH [5] (Int)
prefetch [%i0 + 64], 1

P3024: !_ST [28] (maybe <- 0x200002e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3025: !_LD [16] (FP) (Secondary ctx) (Branch target of P2677)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 16] %asi, %f14
! 1 addresses covered
ba P3026
nop

TARGET2677:
ba RET2677
nop


P3026: !_REPLACEMENT [32] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+256], %l7
st %l7, [%i3+256]
add %i3, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P3027: !_ST [32] (maybe <- 0x41800144) (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 256 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3027
nop
RET3027:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3028: !_MEMBAR (FP)

P3029: !_BST [9] (maybe <- 0x41800145) (FP) (CBR) (Branch target of P2314)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3029
nop
RET3029:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P3030
nop

TARGET2314:
ba RET2314
nop


P3030: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3030
nop
RET3030:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3031: !_PREFETCH [10] (Int) (CBR) (Branch target of P2302)
prefetch [%i1 + 64], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3031
nop
RET3031:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3032
nop

TARGET2302:
ba RET2302
nop


P3032: !_REPLACEMENT [5] (Int)
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P3033: !_LD [18] (Int) (Branch target of P2223)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
ba P3034
nop

TARGET2223:
ba RET2223
nop


P3034: !_MEMBAR (FP) (Branch target of P3029)
ba P3035
nop

TARGET3029:
ba RET3029
nop


P3035: !_BST [16] (maybe <- 0x41800147) (FP) (Branch target of P2684)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P3036
nop

TARGET2684:
ba RET2684
nop


P3036: !_MEMBAR (FP)
membar #StoreLoad

P3037: !_BLD [12] (FP) (Branch target of P2842)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovs %f19, %f0
fmovd %f40, %f18
fmovs %f18, %f1
ba P3038
nop

TARGET2842:
ba RET2842
nop


P3038: !_MEMBAR (FP)

P3039: !_REPLACEMENT [3] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+16], %o5
st %o5, [%i3+16]
add %i3, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]
add %l7, %l6, %l7
ld [%l7+16], %o5
st %o5, [%l7+16]

P3040: !_MEMBAR (FP)
membar #StoreLoad

P3041: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f2
fmovd %f34, %f4
fmovd %f36, %f18
fmovs %f18, %f5
fmovd %f40, %f6

P3042: !_MEMBAR (FP) (Branch target of P2676)
ba P3043
nop

TARGET2676:
ba RET2676
nop


P3043: !_ST [1] (maybe <- 0x200002f) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P3044: !_ST [32] (maybe <- 0x41800148) (FP) (Branch target of P2986)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 256 ]
ba P3045
nop

TARGET2986:
ba RET2986
nop


P3045: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3045
nop
RET3045:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3046: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7

P3047: !_MEMBAR (FP)

P3048: !_PREFETCH [11] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 0] %asi, 1

P3049: !_ST [19] (maybe <- 0x2000030) (Int) (Branch target of P2624)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
ba P3050
nop

TARGET2624:
ba RET2624
nop


P3050: !_REPLACEMENT [5] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+64], %l6
st %l6, [%i2+64]
add %i2, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P3051: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3051
nop
RET3051:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3052: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f40, %f10

P3053: !_MEMBAR (FP) (CBR) (Branch target of P2374)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3053
nop
RET3053:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P3054
nop

TARGET2374:
ba RET2374
nop


P3054: !_IDC_FLIP [26] (Int)
IDC_FLIP(3054, 31704, 4, 0x45800080, 0x80, %i3, 0x80, %l6, %l7, %o5, %l3)

P3055: !_REPLACEMENT [10] (Int) (Branch target of P2175)
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
ba P3056
nop

TARGET2175:
ba RET2175
nop


P3056: !_MEMBAR (FP)
membar #StoreLoad

P3057: !_BLD [26] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P3058: !_MEMBAR (FP) (CBR) (Branch target of P2556)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3058
nop
RET3058:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3059
nop

TARGET2556:
ba RET2556
nop


P3059: !_ST [25] (maybe <- 0x41800149) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 96 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3059
nop
RET3059:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3060: !_LD [4] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i0 + 32] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3061: !_REPLACEMENT [2] (Int)
sethi %hi(0x2000), %o5
ld [%i2+8], %l6
st %l6, [%i2+8]
add %i2, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]

P3062: !_REPLACEMENT [14] (Int)
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P3063: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3063
nop
RET3063:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3064: !_BST [15] (maybe <- 0x4180014a) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3064
nop
RET3064:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3065: !_MEMBAR (FP)
membar #StoreLoad

P3066: !_ST [23] (maybe <- 0x2000031) (Int) (Branch target of P2497)
stw   %l4, [%i3 + 32 ]
add   %l4, 1, %l4
ba P3067
nop

TARGET2497:
ba RET2497
nop


P3067: !_REPLACEMENT [32] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+256], %o5
st %o5, [%i3+256]
add %i3, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

P3068: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3068
nop
RET3068:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3069: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P3070: !_MEMBAR (FP)

P3071: !_REPLACEMENT [7] (Int) (Secondary ctx) (Branch target of P2726)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
ba P3072
nop

TARGET2726:
ba RET2726
nop


P3072: !_REPLACEMENT [13] (Int)
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P3073: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P3074: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3074
nop
RET3074:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3075: !_BST [24] (maybe <- 0x4180014b) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P3076: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3076
nop
RET3076:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3077: !_BST [28] (maybe <- 0x4180014d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3078: !_MEMBAR (FP) (Branch target of P2132)
ba P3079
nop

TARGET2132:
ba RET2132
nop


P3079: !_BST [27] (maybe <- 0x4180014e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P3080: !_MEMBAR (FP) (CBR) (Branch target of P2524)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3080
nop
RET3080:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P3081
nop

TARGET2524:
ba RET2524
nop


P3081: !_REPLACEMENT [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+32], %l3
st %l3, [%i2+32]
add %i2, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P3082: !_LD [30] (FP) (CBR)
ld [%i3 + 128], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3082
nop
RET3082:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3083: !_MEMBAR (FP)

P3084: !_BSTC [6] (maybe <- 0x41800150) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P3085: !_MEMBAR (FP)
membar #StoreLoad

P3086: !_LD [18] (Int) (Loop exit) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 128] %asi, %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_1
nop

P3087: !_MEMBAR (Int) (Branch target of P2247)
membar #StoreLoad
ba END_NODES4
nop

TARGET2247:
ba RET2247
nop


END_NODES4: ! Test instruction sequence for CPU 4 ends
sethi %hi(0xdead0e0f), %l3
or    %l3, %lo(0xdead0e0f), %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sethi %hi(0xdead0e0f), %l3
or    %l3, %lo(0xdead0e0f), %l3
stw %l3, [%i5] 
ld [%i5], %f0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

restore
retl
nop
!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func5:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %o5
or    %o5, %lo(0xdeadbee0), %o5
stw   %o5, [%i5]
sethi %hi(0xdeadbee1), %o5
or    %o5, %lo(0xdeadbee1), %o5
stw   %o5, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x05deade1), %o5
or    %o5, %lo(0x05deade1), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x2800001), %l4
or    %l4, %lo(0x2800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x42000001), %o5
or    %o5, %lo(0x42000001), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x36800000), %o5
or    %o5, %lo(0x36800000), %o5
stw %o5, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x6a24^4
sethi %hi(0x6a24), %l0
or    %l0, %lo(0x6a24), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES5: ! Test instruction sequence for ISTREAM 5 begins

P3088: !_REPLACEMENT [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_5_0:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+128], %l7
st %l7, [%i2+128]
add %i2, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P3089: !_REPLACEMENT [33] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3089
nop
RET3089:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3090: !_REPLACEMENT [19] (Int)
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P3091: !_REPLACEMENT [11] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3091
nop
RET3091:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3092: !_REPLACEMENT [24] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P3093: !_MEMBAR (FP)

P3094: !_BST [7] (maybe <- 0x42000001) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P3095: !_MEMBAR (FP) (Branch target of P3835)
ba P3096
nop

TARGET3835:
ba RET3835
nop


P3096: !_BST [17] (maybe <- 0x42000002) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P3097: !_MEMBAR (FP)

P3098: !_BST [28] (maybe <- 0x42000003) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3099: !_MEMBAR (FP) (Branch target of P3845)
membar #StoreLoad
ba P3100
nop

TARGET3845:
ba RET3845
nop


P3100: !_REPLACEMENT [3] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+16], %l3
st %l3, [%i3+16]
add %i3, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]

P3101: !_IDC_FLIP [31] (Int)
IDC_FLIP(3101, 4053, 5, 0x460000c0, 0xc0, %i2, 0xc0, %l6, %l7, %o5, %l3)

P3102: !_FLUSHI [22] (Int)
flush %g0 

P3103: !_LD [6] (Int) (Nucleus ctx) (Branch target of P3963)
wr %g0, 0x4, %asi
lduwa [%i0 + 96] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P3104
nop

TARGET3963:
ba RET3963
nop


P3104: !_MEMBAR (FP) (Branch target of P3174)
membar #StoreLoad
ba P3105
nop

TARGET3174:
ba RET3174
nop


P3105: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 192] %asi, %f0
membar #Sync
! 1 addresses covered

P3106: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3106
nop
RET3106:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3107: !_LD [14] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3107
nop
RET3107:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3108: !_REPLACEMENT [23] (Int)
sethi %hi(0x2000), %o5
ld [%i3+32], %l6
st %l6, [%i3+32]
add %i3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P3109: !_ST [11] (maybe <- 0x42000004) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P3110: !_MEMBAR (FP)

P3111: !_BST [4] (maybe <- 0x42000005) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3112: !_MEMBAR (FP)
membar #StoreLoad

P3113: !_ST [28] (maybe <- 0x2800001) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3114: !_REPLACEMENT [25] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+96], %l6
st %l6, [%i2+96]
add %i2, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]

P3115: !_LD [18] (FP) (Secondary ctx) (Branch target of P3567)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 128] %asi, %f1
! 1 addresses covered
ba P3116
nop

TARGET3567:
ba RET3567
nop


P3116: !_REPLACEMENT [21] (Int)
sethi %hi(0x2000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P3117: !_LD [27] (FP) (Secondary ctx) (Branch target of P3119)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 160] %asi, %f2
! 1 addresses covered
ba P3118
nop

TARGET3119:
ba RET3119
nop


P3118: !_ST [27] (maybe <- 0x2800002) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i2 + 160] %asi
add   %l4, 1, %l4

P3119: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3119
nop
RET3119:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3120: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4

P3121: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3121
nop
RET3121:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3122: !_LD [14] (Int) (CBR) (Secondary ctx) (Branch target of P3850)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 64] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3122
nop
RET3122:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3123
nop

TARGET3850:
ba RET3850
nop


P3123: !_REPLACEMENT [26] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P3124: !_ST [4] (maybe <- 0x4200000a) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 32 ] %asi

P3125: !_REPLACEMENT [21] (Int)
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P3126: !_REPLACEMENT [1] (Int) (CBR) (Branch target of P3428)
sethi %hi(0x2000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3126
nop
RET3126:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P3127
nop

TARGET3428:
ba RET3428
nop


P3127: !_MEMBAR (FP)
membar #StoreLoad

P3128: !_BLD [5] (FP) (Branch target of P3354)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovd %f40, %f6
ba P3129
nop

TARGET3354:
ba RET3354
nop


P3129: !_MEMBAR (FP)

P3130: !_BST [5] (maybe <- 0x4200000b) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3130
nop
RET3130:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3131: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3131
nop
RET3131:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3132: !_BST [25] (maybe <- 0x4200000d) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P3133: !_MEMBAR (FP) (Secondary ctx)

P3134: !_BSTC [13] (maybe <- 0x4200000f) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3135: !_MEMBAR (FP)
membar #StoreLoad

P3136: !_REPLACEMENT [30] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P3137: !_REPLACEMENT [16] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+16], %l7
st %l7, [%i3+16]
add %i3, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3137
nop
RET3137:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3138: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P3206)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3138
nop
RET3138:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3139
nop

TARGET3206:
ba RET3206
nop


P3139: !_BST [30] (maybe <- 0x42000012) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P3140: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P3735)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3140
nop
RET3140:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3141
nop

TARGET3735:
ba RET3735
nop


P3141: !_LD [23] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 32], %f7
! 1 addresses covered

P3142: !_ST [28] (maybe <- 0x42000013) (FP) (CBR) (Branch target of P3791)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3142
nop
RET3142:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3143
nop

TARGET3791:
ba RET3791
nop


P3143: !_MEMBAR (FP)

P3144: !_BST [32] (maybe <- 0x42000014) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P3145: !_MEMBAR (FP)
membar #StoreLoad

P3146: !_REPLACEMENT [6] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+96], %l7
st %l7, [%i2+96]
add %i2, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3146
nop
RET3146:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3147: !_REPLACEMENT [32] (Int)
sethi %hi(0x2000), %l3
ld [%i2+256], %l7
st %l7, [%i2+256]
add %i2, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]
add %l6, %l3, %l6
ld [%l6+256], %l7
st %l7, [%l6+256]

P3148: !_IDC_FLIP [20] (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(3148, 17957, 5, 0x45000100, 0x100, %i3, 0x100, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3148
nop
RET3148:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3149: !_IDC_FLIP [13] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(3149, 28969, 5, 0x44000020, 0x20, %i2, 0x20, %l6, %l7, %o5, %l3)

P3150: !_REPLACEMENT [4] (Int) (Branch target of P3311)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+32], %o5
st %o5, [%i3+32]
add %i3, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
ba P3151
nop

TARGET3311:
ba RET3311
nop


P3151: !_MEMBAR (FP) (Branch target of P3600)
ba P3152
nop

TARGET3600:
ba RET3600
nop


P3152: !_BST [32] (maybe <- 0x42000015) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P3153: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3153
nop
RET3153:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3154: !_REPLACEMENT [30] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P3155: !_REPLACEMENT [25] (Int) (Secondary ctx) (Branch target of P4014)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
ba P3156
nop

TARGET4014:
ba RET4014
nop


P3156: !_REPLACEMENT [9] (Int)
sethi %hi(0x2000), %o5
ld [%i3+32], %l6
st %l6, [%i3+32]
add %i3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P3157: !_MEMBAR (FP)

P3158: !_BSTC [15] (maybe <- 0x42000016) (FP) (Branch target of P3608)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi
ba P3159
nop

TARGET3608:
ba RET3608
nop


P3159: !_MEMBAR (FP) (Branch target of P3265)
membar #StoreLoad
ba P3160
nop

TARGET3265:
ba RET3265
nop


P3160: !_REPLACEMENT [33] (Int) (Branch target of P4086)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
ba P3161
nop

TARGET4086:
ba RET4086
nop


P3161: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3161
nop
RET3161:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3162: !_BLD [19] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3162
nop
RET3162:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3163: !_MEMBAR (FP)

P3164: !_BST [15] (maybe <- 0x42000017) (FP) (Branch target of P3621)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi
ba P3165
nop

TARGET3621:
ba RET3621
nop


P3165: !_MEMBAR (FP)
membar #StoreLoad

P3166: !_REPLACEMENT [32] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+256], %o5
st %o5, [%i3+256]
add %i3, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3166
nop
RET3166:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3167: !_REPLACEMENT [22] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+4], %o5
st %o5, [%i3+4]
add %i3, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3167
nop
RET3167:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3168: !_PREFETCH [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 32], 1

P3169: !_REPLACEMENT [4] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i3+32], %o5
st %o5, [%i3+32]
add %i3, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3169
nop
RET3169:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3170: !_LD [25] (Int)
lduw [%i2 + 96], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P3171: !_LD [17] (FP) (Nucleus ctx) (Branch target of P3312)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 96] %asi, %f9
! 1 addresses covered
ba P3172
nop

TARGET3312:
ba RET3312
nop


P3172: !_ST [9] (maybe <- 0x42000018) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i1 + 32 ] %asi

P3173: !_LD [21] (Int)
lduw [%i2 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3174: !_LD [33] (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f10
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3174
nop
RET3174:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3175: !_REPLACEMENT [15] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P3176: !_LD [11] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P3177: !_REPLACEMENT [32] (Int)
sethi %hi(0x2000), %l7
ld [%i3+256], %l3
st %l3, [%i3+256]
add %i3, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]

P3178: !_MEMBAR (FP)
membar #StoreLoad

P3179: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11

P3180: !_MEMBAR (FP)

P3181: !_REPLACEMENT [23] (Int)
sethi %hi(0x2000), %l6
ld [%i3+32], %o5
st %o5, [%i3+32]
add %i3, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]
add %l7, %l6, %l7
ld [%l7+32], %o5
st %o5, [%l7+32]

P3182: !_ST [32] (maybe <- 0x2800003) (Int) (LE) (Branch target of P3668)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %l6, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
stwa   %l3, [%i3 + 256] %asi
add   %l4, 1, %l4
ba P3183
nop

TARGET3668:
ba RET3668
nop


P3183: !_LD [24] (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 64], %f12
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3183
nop
RET3183:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3184: !_LD [1] (FP)
ld [%i0 + 4], %f13
! 1 addresses covered

P3185: !_REPLACEMENT [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P3186: !_REPLACEMENT [33] (Int)
sethi %hi(0x2000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P3187: !_REPLACEMENT [2] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i3+8], %l3
st %l3, [%i3+8]
add %i3, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]
add %o5, %l7, %o5
ld [%o5+8], %l3
st %l3, [%o5+8]

P3188: !_MEMBAR (Int)

P3189: !_BST [4] (maybe <- 0x42000019) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3190: !_MEMBAR (FP) (Branch target of P3131)
membar #StoreLoad
ba P3191
nop

TARGET3131:
ba RET3131
nop


P3191: !_ST [7] (maybe <- 0x2800004) (Int)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

P3192: !_LD [23] (Int) (CBR) (Secondary ctx) (Branch target of P4035)
wr %g0, 0x81, %asi
lduwa [%i2 + 32] %asi, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3192
nop
RET3192:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P3193
nop

TARGET4035:
ba RET4035
nop


P3193: !_LD [13] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3193
nop
RET3193:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3194: !_REPLACEMENT [21] (Int)
sethi %hi(0x2000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P3195: !_MEMBAR (FP)

P3196: !_BST [1] (maybe <- 0x4200001e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3197: !_MEMBAR (FP)
membar #StoreLoad

P3198: !_ST [24] (maybe <- 0x42000023) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

P3199: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3199
nop
RET3199:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3200: !_BLD [22] (FP) (Branch target of P4017)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f40, %f0
ba P3201
nop

TARGET4017:
ba RET4017
nop


P3201: !_MEMBAR (FP) (Branch target of P3613)
ba P3202
nop

TARGET3613:
ba RET3613
nop


P3202: !_LD [7] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
lda    [%i0 + 128] %asi, %f1
! 1 addresses covered

P3203: !_LD [9] (FP) (CBR) (Branch target of P3902)
ld [%i1 + 32], %f2
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3203
nop
RET3203:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P3204
nop

TARGET3902:
ba RET3902
nop


P3204: !_ST [20] (maybe <- 0x2800005) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 256] %asi
add   %l4, 1, %l4

P3205: !_MEMBAR (FP)

P3206: !_BST [18] (maybe <- 0x42000024) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3206
nop
RET3206:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3207: !_MEMBAR (FP)
membar #StoreLoad

P3208: !_REPLACEMENT [15] (Int) (Branch target of P4038)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+128], %l6
st %l6, [%i2+128]
add %i2, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
ba P3209
nop

TARGET4038:
ba RET4038
nop


P3209: !_ST [3] (maybe <- 0x42000025) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 16 ]

P3210: !_PREFETCH [13] (Int) (Branch target of P3989)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 32], 1
ba P3211
nop

TARGET3989:
ba RET3989
nop


P3211: !_REPLACEMENT [28] (Int) (Branch target of P3986)
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
ba P3212
nop

TARGET3986:
ba RET3986
nop


P3212: !_ST [24] (maybe <- 0x2800006) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P3213: !_MEMBAR (FP) (Branch target of P3440)
ba P3214
nop

TARGET3440:
ba RET3440
nop


P3214: !_BST [2] (maybe <- 0x42000026) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3215: !_MEMBAR (FP)
membar #StoreLoad

P3216: !_LD [12] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
lda    [%i3 + 4] %asi, %f3
! 1 addresses covered

P3217: !_ST [3] (maybe <- 0x2800007) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 16] %asi
add   %l4, 1, %l4

P3218: !_LD [6] (Int) (Branch target of P3306)
lduw [%i0 + 96], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
ba P3219
nop

TARGET3306:
ba RET3306
nop


P3219: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3219
nop
RET3219:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3220: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4

P3221: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3221
nop
RET3221:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3222: !_REPLACEMENT [17] (Int) (Branch target of P3403)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+96], %l3
st %l3, [%i2+96]
add %i2, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
ba P3223
nop

TARGET3403:
ba RET3403
nop


P3223: !_REPLACEMENT [0] (Int) (Branch target of P3598)
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
ba P3224
nop

TARGET3598:
ba RET3598
nop


P3224: !_LD [4] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 32] %asi, %f5
! 1 addresses covered

P3225: !_MEMBAR (FP)
membar #StoreLoad

P3226: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

P3227: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3227
nop
RET3227:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3228: !_LD [17] (FP) (Branch target of P3242)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 96], %f7
! 1 addresses covered
ba P3229
nop

TARGET3242:
ba RET3242
nop


P3229: !_ST [29] (maybe <- 0x4200002b) (FP) (CBR) (Branch target of P3447)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3229
nop
RET3229:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3230
nop

TARGET3447:
ba RET3447
nop


P3230: !_ST [12] (maybe <- 0x2800008) (Int) (Branch target of P3122)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
ba P3231
nop

TARGET3122:
ba RET3122
nop


P3231: !_MEMBAR (FP) (Branch target of P3734)
membar #StoreLoad
ba P3232
nop

TARGET3734:
ba RET3734
nop


P3232: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f8
fmovd %f40, %f18
fmovs %f18, %f9

P3233: !_MEMBAR (FP)

P3234: !_REPLACEMENT [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P3235: !_ST [3] (maybe <- 0x2800009) (Int)
stw   %l4, [%i0 + 16 ]
add   %l4, 1, %l4

P3236: !_MEMBAR (FP)

P3237: !_BST [2] (maybe <- 0x4200002c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3238: !_MEMBAR (FP)

P3239: !_BSTC [12] (maybe <- 0x42000031) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3240: !_MEMBAR (FP)
membar #StoreLoad

P3241: !_LD [17] (FP) (Branch target of P3785)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 96], %f10
! 1 addresses covered
ba P3242
nop

TARGET3785:
ba RET3785
nop


P3242: !_LD [29] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3242
nop
RET3242:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3243: !_ST [3] (maybe <- 0x280000a) (Int)
stw   %l4, [%i0 + 16 ]
add   %l4, 1, %l4

P3244: !_MEMBAR (FP)

P3245: !_BST [21] (maybe <- 0x42000034) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3246: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3246
nop
RET3246:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3247: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P3248: !_MEMBAR (FP) (Branch target of P3859)
ba P3249
nop

TARGET3859:
ba RET3859
nop


P3249: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14

P3250: !_MEMBAR (FP)

P3251: !_BST [18] (maybe <- 0x42000037) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P3252: !_MEMBAR (FP)

P3253: !_BST [29] (maybe <- 0x42000038) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3253
nop
RET3253:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3254: !_MEMBAR (FP)
membar #StoreLoad

P3255: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P3256: !_MEMBAR (FP) (Branch target of P3309)
ba P3257
nop

TARGET3309:
ba RET3309
nop


P3257: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f0
membar #Sync
! 2 addresses covered
fmovs %f8, %f1

P3258: !_MEMBAR (FP)

P3259: !_BLD [17] (FP) (Branch target of P3909)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f2
ba P3260
nop

TARGET3909:
ba RET3909
nop


P3260: !_MEMBAR (FP)

P3261: !_REPLACEMENT [20] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+256], %o5
st %o5, [%i2+256]
add %i2, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

P3262: !_MEMBAR (FP) (Branch target of P3508)
ba P3263
nop

TARGET3508:
ba RET3508
nop


P3263: !_BST [28] (maybe <- 0x42000039) (FP) (Branch target of P3532)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P3264
nop

TARGET3532:
ba RET3532
nop


P3264: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3264
nop
RET3264:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3265: !_LD [13] (FP) (CBR) (Branch target of P3855)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 32], %f3
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3265
nop
RET3265:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3266
nop

TARGET3855:
ba RET3855
nop


P3266: !_MEMBAR (FP)
membar #StoreLoad

P3267: !_BLD [31] (FP) (Branch target of P3344)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 192] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4
ba P3268
nop

TARGET3344:
ba RET3344
nop


P3268: !_MEMBAR (FP)

P3269: !_PREFETCH [10] (Int) (CBR)
prefetch [%i1 + 64], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3269
nop
RET3269:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3270: !_REPLACEMENT [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+16], %l3
st %l3, [%i3+16]
add %i3, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]

P3271: !_REPLACEMENT [6] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i3+96], %o5
st %o5, [%i3+96]
add %i3, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]
add %l7, %l6, %l7
ld [%l7+96], %o5
st %o5, [%l7+96]

P3272: !_ST [2] (maybe <- 0x280000b) (Int)
stw   %l4, [%i0 + 8 ]
add   %l4, 1, %l4

P3273: !_ST [30] (maybe <- 0x4200003a) (FP) (Nucleus ctx) (Branch target of P4016)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 128 ] %asi
ba P3274
nop

TARGET4016:
ba RET4016
nop


P3274: !_ST [16] (maybe <- 0x4200003b) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 16 ] %asi

P3275: !_MEMBAR (FP) (Branch target of P3162)
membar #StoreLoad
ba P3276
nop

TARGET3162:
ba RET3162
nop


P3276: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

P3277: !_MEMBAR (FP)

P3278: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

P3279: !_MEMBAR (FP)

P3280: !_REPLACEMENT [13] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+32], %l3
st %l3, [%i3+32]
add %i3, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P3281: !_REPLACEMENT [32] (Int) (Branch target of P3993)
sethi %hi(0x2000), %l6
ld [%i3+256], %o5
st %o5, [%i3+256]
add %i3, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
ba P3282
nop

TARGET3993:
ba RET3993
nop


P3282: !_REPLACEMENT [24] (Int)
sethi %hi(0x2000), %l3
ld [%i3+64], %l7
st %l7, [%i3+64]
add %i3, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]
add %l6, %l3, %l6
ld [%l6+64], %l7
st %l7, [%l6+64]

P3283: !_LD [8] (Int)
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3284: !_MEMBAR (FP)
membar #StoreLoad

P3285: !_BLD [17] (FP) (Branch target of P3304)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f18
fmovs %f18, %f7
ba P3286
nop

TARGET3304:
ba RET3304
nop


P3286: !_MEMBAR (FP) (Branch target of P3146)
ba P3287
nop

TARGET3146:
ba RET3146
nop


P3287: !_ST [20] (maybe <- 0x4200003c) (FP) (Secondary ctx) (Branch target of P3760)
wr %g0, 0x81, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 256 ] %asi
ba P3288
nop

TARGET3760:
ba RET3760
nop


P3288: !_MEMBAR (FP)
membar #StoreLoad

P3289: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

P3290: !_MEMBAR (FP)

P3291: !_IDC_FLIP [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
IDC_FLIP(3291, 32461, 5, 0x45800020, 0x20, %i3, 0x20, %l6, %l7, %o5, %l3)

P3292: !_MEMBAR (FP)
membar #StoreLoad

P3293: !_BLD [10] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3293
nop
RET3293:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3294: !_MEMBAR (FP) (Branch target of P3955)
ba P3295
nop

TARGET3955:
ba RET3955
nop


P3295: !_REPLACEMENT [17] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+96], %l3
st %l3, [%i2+96]
add %i2, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

P3296: !_ST [1] (maybe <- 0x4200003d) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P3297: !_ST [22] (maybe <- 0x280000c) (Int)
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P3298: !_REPLACEMENT [8] (Int)
sethi %hi(0x2000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P3299: !_ST [7] (maybe <- 0x280000d) (Int) (CBR)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3299
nop
RET3299:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3300: !_MEMBAR (FP) (Branch target of P3477)
ba P3301
nop

TARGET3477:
ba RET3477
nop


P3301: !_BSTC [32] (maybe <- 0x4200003e) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3301
nop
RET3301:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3302: !_MEMBAR (FP)
membar #StoreLoad

P3303: !_REPLACEMENT [4] (Int)
sethi %hi(0x2000), %l7
ld [%i2+32], %l3
st %l3, [%i2+32]
add %i2, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

P3304: !_LD [13] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3304
nop
RET3304:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3305: !_LD [12] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i2 + 4] %asi, %f10
! 1 addresses covered

P3306: !_REPLACEMENT [3] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+16], %l7
st %l7, [%i3+16]
add %i3, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]
add %l6, %l3, %l6
ld [%l6+16], %l7
st %l7, [%l6+16]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3306
nop
RET3306:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3307: !_REPLACEMENT [8] (Int) (Branch target of P3786)
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
ba P3308
nop

TARGET3786:
ba RET3786
nop


P3308: !_REPLACEMENT [12] (Int)
sethi %hi(0x2000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P3309: !_ST [23] (maybe <- 0x4200003f) (FP) (CBR) (Branch target of P3647)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3309
nop
RET3309:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P3310
nop

TARGET3647:
ba RET3647
nop


P3310: !_REPLACEMENT [17] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i3+96], %l3
st %l3, [%i3+96]
add %i3, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

P3311: !_LD [28] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3311
nop
RET3311:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3312: !_LD [13] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3312
nop
RET3312:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3313: !_ST [24] (maybe <- 0x280000e) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3313
nop
RET3313:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3314: !_REPLACEMENT [22] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+4], %l6
st %l6, [%i2+4]
add %i2, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P3315: !_REPLACEMENT [4] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %l7
ld [%i2+32], %l3
st %l3, [%i2+32]
add %i2, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]
add %o5, %l7, %o5
ld [%o5+32], %l3
st %l3, [%o5+32]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3315
nop
RET3315:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3316: !_LD [2] (Int) (Branch target of P3685)
lduw [%i0 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
ba P3317
nop

TARGET3685:
ba RET3685
nop


P3317: !_MEMBAR (FP)
membar #StoreLoad

P3318: !_BLD [13] (FP) (Branch target of P3269)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f40, %f18
fmovs %f18, %f13
ba P3319
nop

TARGET3269:
ba RET3269
nop


P3319: !_MEMBAR (FP) (Branch target of P3727)
ba P3320
nop

TARGET3727:
ba RET3727
nop


P3320: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f14
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
fmovd %f34, %f0
fmovd %f36, %f18
fmovs %f18, %f1
fmovd %f40, %f2

P3321: !_MEMBAR (FP) (CBR) (Branch target of P3944)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3321
nop
RET3321:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3322
nop

TARGET3944:
ba RET3944
nop


P3322: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f18, %f5
fmovd %f36, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P3323: !_MEMBAR (FP)

P3324: !_BST [12] (maybe <- 0x42000040) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3325: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P3326: !_REPLACEMENT [11] (Int)
sethi %hi(0x2000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P3327: !_LD [1] (FP)
ld [%i0 + 4], %f8
! 1 addresses covered

P3328: !_IDC_FLIP [5] (Int) (CBR)
IDC_FLIP(3328, 4388, 5, 0x43000040, 0x40, %i0, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3328
nop
RET3328:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3329: !_MEMBAR (FP)

P3330: !_BST [11] (maybe <- 0x42000043) (FP) (Branch target of P3464)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P3331
nop

TARGET3464:
ba RET3464
nop


P3331: !_MEMBAR (FP)
membar #StoreLoad

P3332: !_ST [8] (maybe <- 0x42000046) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 0 ]

P3333: !_MEMBAR (FP) (Branch target of P3615)
membar #StoreLoad
ba P3334
nop

TARGET3615:
ba RET3615
nop


P3334: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovd %f40, %f10

P3335: !_MEMBAR (FP) (Branch target of P3393)
ba P3336
nop

TARGET3393:
ba RET3393
nop


P3336: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11

P3337: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3337
nop
RET3337:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3338: !_LD [5] (FP)
ld [%i0 + 64], %f12
! 1 addresses covered

P3339: !_MEMBAR (FP) (Branch target of P3315)
ba P3340
nop

TARGET3315:
ba RET3315
nop


P3340: !_BST [23] (maybe <- 0x42000047) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3341: !_MEMBAR (FP)

P3342: !_BST [13] (maybe <- 0x4200004a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3343: !_MEMBAR (FP)
membar #StoreLoad

P3344: !_REPLACEMENT [6] (Int) (CBR) (Branch target of P3301)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3344
nop
RET3344:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P3345
nop

TARGET3301:
ba RET3301
nop


P3345: !_ST [26] (maybe <- 0x4200004d) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]

P3346: !_MEMBAR (FP) (Secondary ctx)

P3347: !_BSTC [5] (maybe <- 0x4200004e) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P3348: !_MEMBAR (FP) (Secondary ctx) (Branch target of P3746)
membar #StoreLoad
ba P3349
nop

TARGET3746:
ba RET3746
nop


P3349: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13

P3350: !_MEMBAR (FP)

P3351: !_REPLACEMENT [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P3352: !_MEMBAR (FP)

P3353: !_BST [32] (maybe <- 0x42000050) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P3354: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3354
nop
RET3354:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3355: !_PREFETCH [22] (Int) (Branch target of P3459)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 1
ba P3356
nop

TARGET3459:
ba RET3459
nop


P3356: !_REPLACEMENT [12] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+4], %o5
st %o5, [%i3+4]
add %i3, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P3357: !_MEMBAR (FP)

P3358: !_BST [12] (maybe <- 0x42000051) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3359: !_MEMBAR (FP)
membar #StoreLoad

P3360: !_ST [22] (maybe <- 0x42000054) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]

P3361: !_REPLACEMENT [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+128], %l3
st %l3, [%i2+128]
add %i2, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P3362: !_ST [15] (maybe <- 0x280000f) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3363: !_MEMBAR (FP) (Branch target of P3744)
membar #StoreLoad
ba P3364
nop

TARGET3744:
ba RET3744
nop


P3364: !_BLD [33] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f14

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3364
nop
RET3364:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3365: !_MEMBAR (FP)

P3366: !_ST [10] (maybe <- 0x2800010) (Int) (LE)
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l7, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
stwa   %l6, [%i1 + 64] %asi
add   %l4, 1, %l4

P3367: !_REPLACEMENT [18] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3367
nop
RET3367:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3368: !_REPLACEMENT [4] (Int)
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P3369: !_LD [0] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 0] %asi, %f15
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P3370: !_ST [28] (maybe <- 0x42000055) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P3371: !_MEMBAR (FP)

P3372: !_BST [9] (maybe <- 0x42000056) (FP) (Branch target of P3938)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P3373
nop

TARGET3938:
ba RET3938
nop


P3373: !_MEMBAR (FP)
membar #StoreLoad

P3374: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P3375: !_MEMBAR (FP)

P3376: !_ST [11] (maybe <- 0x42000058) (FP) (Branch target of P3997)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]
ba P3377
nop

TARGET3997:
ba RET3997
nop


P3377: !_REPLACEMENT [4] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3377
nop
RET3377:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3378: !_MEMBAR (FP)

P3379: !_BST [30] (maybe <- 0x42000059) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3379
nop
RET3379:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3380: !_MEMBAR (FP)

P3381: !_BST [28] (maybe <- 0x4200005a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3382: !_MEMBAR (FP)
membar #StoreLoad

P3383: !_REPLACEMENT [22] (Int)
sethi %hi(0x2000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P3384: !_REPLACEMENT [20] (Int)
sethi %hi(0x2000), %l7
ld [%i3+256], %l3
st %l3, [%i3+256]
add %i3, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]
add %o5, %l7, %o5
ld [%o5+256], %l3
st %l3, [%o5+256]

P3385: !_MEMBAR (FP)

P3386: !_BST [14] (maybe <- 0x4200005b) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P3387: !_MEMBAR (FP)
membar #StoreLoad

P3388: !_BLD [5] (FP) (Branch target of P3130)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4
ba P3389
nop

TARGET3130:
ba RET3130
nop


P3389: !_MEMBAR (FP)

P3390: !_ST [11] (maybe <- 0x2800011) (Int) (Branch target of P3653)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
ba P3391
nop

TARGET3653:
ba RET3653
nop


P3391: !_MEMBAR (FP)
membar #StoreLoad

P3392: !_BLD [2] (FP) (CBR) (Branch target of P3708)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f18, %f7
fmovd %f36, %f8
fmovd %f40, %f18
fmovs %f18, %f9

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3392
nop
RET3392:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P3393
nop

TARGET3708:
ba RET3708
nop


P3393: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3393
nop
RET3393:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3394: !_ST [7] (maybe <- 0x2800012) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 128] %asi
add   %l4, 1, %l4

P3395: !_MEMBAR (FP)
membar #StoreLoad

P3396: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10

P3397: !_MEMBAR (FP)

P3398: !_LD [19] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f11
! 1 addresses covered

P3399: !_MEMBAR (FP)
membar #StoreLoad

P3400: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f12

P3401: !_MEMBAR (FP)

P3402: !_REPLACEMENT [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P3403: !_ST [32] (maybe <- 0x4200005c) (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 256 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3403
nop
RET3403:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3404: !_LD [11] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3404
nop
RET3404:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3405: !_ST [12] (maybe <- 0x2800013) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P3406: !_ST [15] (maybe <- 0x4200005d) (FP) (Branch target of P3193)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]
ba P3407
nop

TARGET3193:
ba RET3193
nop


P3407: !_REPLACEMENT [22] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3407
nop
RET3407:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3408: !_REPLACEMENT [29] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+64], %o5
st %o5, [%i2+64]
add %i2, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

P3409: !_ST [3] (maybe <- 0x4200005e) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 16 ]

P3410: !_LD [14] (Int) (CBR) (Branch target of P3089)
lduw [%i3 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3410
nop
RET3410:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P3411
nop

TARGET3089:
ba RET3089
nop


P3411: !_ST [5] (maybe <- 0x2800014) (Int) (Branch target of P3570)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4
ba P3412
nop

TARGET3570:
ba RET3570
nop


P3412: !_REPLACEMENT [20] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+256], %o5
st %o5, [%i2+256]
add %i2, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

P3413: !_ST [6] (maybe <- 0x4200005f) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 96 ] %asi

P3414: !_REPLACEMENT [4] (Int)
sethi %hi(0x2000), %o5
ld [%i2+32], %l6
st %l6, [%i2+32]
add %i2, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]
add %l3, %o5, %l3
ld [%l3+32], %l6
st %l6, [%l3+32]

P3415: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3415
nop
RET3415:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3416: !_BST [27] (maybe <- 0x42000060) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3416
nop
RET3416:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3417: !_MEMBAR (FP)

P3418: !_BST [1] (maybe <- 0x42000062) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3419: !_MEMBAR (FP)
membar #StoreLoad

P3420: !_REPLACEMENT [27] (Int)
sethi %hi(0x2000), %l7
ld [%i2+160], %l3
st %l3, [%i2+160]
add %i2, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]
add %o5, %l7, %o5
ld [%o5+160], %l3
st %l3, [%o5+160]

P3421: !_MEMBAR (FP)

P3422: !_BST [30] (maybe <- 0x42000067) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P3423: !_MEMBAR (FP) (Branch target of P3126)
membar #StoreLoad
ba P3424
nop

TARGET3126:
ba RET3126
nop


P3424: !_REPLACEMENT [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+96], %l7
st %l7, [%i3+96]
add %i3, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]
add %l6, %l3, %l6
ld [%l6+96], %l7
st %l7, [%l6+96]

P3425: !_MEMBAR (FP)

P3426: !_BSTC [30] (maybe <- 0x42000068) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P3427: !_MEMBAR (FP)
membar #StoreLoad

P3428: !_REPLACEMENT [18] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3428
nop
RET3428:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3429: !_ST [16] (maybe <- 0x2800015) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 16 ]
add   %l4, 1, %l4

P3430: !_MEMBAR (FP) (Branch target of P3829)
ba P3431
nop

TARGET3829:
ba RET3829
nop


P3431: !_BST [5] (maybe <- 0x42000069) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 64 ] %asi

P3432: !_MEMBAR (FP) (Branch target of P3910)
membar #StoreLoad
ba P3433
nop

TARGET3910:
ba RET3910
nop


P3433: !_REPLACEMENT [30] (Int)
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]

P3434: !_REPLACEMENT [32] (Int)
sethi %hi(0x2000), %o5
ld [%i3+256], %l6
st %l6, [%i3+256]
add %i3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]

P3435: !_ST [28] (maybe <- 0x2800016) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3435
nop
RET3435:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3436: !_REPLACEMENT [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P3437: !_IDC_FLIP [33] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
IDC_FLIP(3437, 6651, 5, 0x46800000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)

P3438: !_IDC_FLIP [25] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
IDC_FLIP(3438, 19007, 5, 0x45800060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3438
nop
RET3438:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3439: !_IDC_FLIP [25] (Int) (Branch target of P3153)
IDC_FLIP(3439, 25901, 5, 0x45800060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)
ba P3440
nop

TARGET3153:
ba RET3153
nop


P3440: !_REPLACEMENT [20] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+256], %o5
st %o5, [%i3+256]
add %i3, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]
add %l7, %l6, %l7
ld [%l7+256], %o5
st %o5, [%l7+256]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3440
nop
RET3440:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3441: !_LD [23] (FP)
ld [%i2 + 32], %f13
! 1 addresses covered

P3442: !_IDC_FLIP [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
IDC_FLIP(3442, 16057, 5, 0x44800080, 0x80, %i2, 0x80, %l6, %l7, %o5, %l3)

P3443: !_ST [6] (maybe <- 0x2800017) (Int) (Branch target of P3246)
stw   %l4, [%i0 + 96 ]
add   %l4, 1, %l4
ba P3444
nop

TARGET3246:
ba RET3246
nop


P3444: !_MEMBAR (FP)

P3445: !_BST [2] (maybe <- 0x4200006b) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3446: !_MEMBAR (FP) (Branch target of P3607)
membar #StoreLoad
ba P3447
nop

TARGET3607:
ba RET3607
nop


P3447: !_REPLACEMENT [2] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i3+8], %l6
st %l6, [%i3+8]
add %i3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]
add %l3, %o5, %l3
ld [%l3+8], %l6
st %l6, [%l3+8]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3447
nop
RET3447:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3448: !_REPLACEMENT [18] (Int)
sethi %hi(0x2000), %o5
ld [%i3+128], %l6
st %l6, [%i3+128]
add %i3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]

P3449: !_REPLACEMENT [16] (Int)
sethi %hi(0x2000), %l7
ld [%i3+16], %l3
st %l3, [%i3+16]
add %i3, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]
add %o5, %l7, %o5
ld [%o5+16], %l3
st %l3, [%o5+16]

P3450: !_REPLACEMENT [18] (Int) (Branch target of P3377)
sethi %hi(0x2000), %l6
ld [%i3+128], %o5
st %o5, [%i3+128]
add %i3, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
ba P3451
nop

TARGET3377:
ba RET3377
nop


P3451: !_ST [1] (maybe <- 0x2800018) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3452: !_ST [30] (maybe <- 0x42000070) (FP) (Branch target of P3392)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]
ba P3453
nop

TARGET3392:
ba RET3392
nop


P3453: !_ST [5] (maybe <- 0x2800019) (Int) (LE) (CBR)
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %o5, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
stwa   %l7, [%i0 + 64] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3453
nop
RET3453:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3454: !_ST [26] (maybe <- 0x280001a) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3454
nop
RET3454:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3455: !_REPLACEMENT [26] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+128], %l3
st %l3, [%i3+128]
add %i3, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]
add %o5, %l7, %o5
ld [%o5+128], %l3
st %l3, [%o5+128]

P3456: !_MEMBAR (FP)

P3457: !_BST [21] (maybe <- 0x42000071) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3458: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3458
nop
RET3458:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3459: !_IDC_FLIP [10] (Int) (CBR)
IDC_FLIP(3459, 32444, 5, 0x43800040, 0x40, %i1, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3459
nop
RET3459:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3460: !_MEMBAR (FP)
membar #StoreLoad

P3461: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--

P3462: !_MEMBAR (FP)

P3463: !_ST [11] (maybe <- 0x280001b) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P3464: !_REPLACEMENT [29] (Int) (CBR)
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3464
nop
RET3464:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3465: !_MEMBAR (FP)

P3466: !_BST [10] (maybe <- 0x42000074) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P3467: !_MEMBAR (FP) (CBR) (Branch target of P3707)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3467
nop
RET3467:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3468
nop

TARGET3707:
ba RET3707
nop


P3468: !_LD [27] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 160], %f0
! 1 addresses covered

P3469: !_REPLACEMENT [0] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P3470: !_ST [14] (maybe <- 0x42000075) (FP) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3470
nop
RET3470:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3471: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P3472: !_BLD [30] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1

P3473: !_MEMBAR (FP) (Secondary ctx)

P3474: !_REPLACEMENT [29] (Int) (Secondary ctx) (Branch target of P3568)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l6
ld [%i3+64], %o5
st %o5, [%i3+64]
add %i3, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
add %l7, %l6, %l7
ld [%l7+64], %o5
st %o5, [%l7+64]
ba P3475
nop

TARGET3568:
ba RET3568
nop


P3475: !_MEMBAR (FP) (Branch target of P3467)
ba P3476
nop

TARGET3467:
ba RET3467
nop


P3476: !_BST [25] (maybe <- 0x42000076) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P3477: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3477
nop
RET3477:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3478: !_LD [26] (FP)
ld [%i2 + 128], %f2
! 1 addresses covered

P3479: !_MEMBAR (FP)

P3480: !_BST [25] (maybe <- 0x42000078) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P3481: !_MEMBAR (FP) (Branch target of P3883)
membar #StoreLoad
ba P3482
nop

TARGET3883:
ba RET3883
nop


P3482: !_REPLACEMENT [10] (Int)
sethi %hi(0x2000), %o5
ld [%i3+64], %l6
st %l6, [%i3+64]
add %i3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]
add %l3, %o5, %l3
ld [%l3+64], %l6
st %l6, [%l3+64]

P3483: !_REPLACEMENT [14] (Int)
sethi %hi(0x2000), %l7
ld [%i3+64], %l3
st %l3, [%i3+64]
add %i3, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P3484: !_LD [2] (Int)
lduw [%i0 + 8], %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P3485: !_MEMBAR (FP) (Branch target of P3871)
ba P3486
nop

TARGET3871:
ba RET3871
nop


P3486: !_BST [18] (maybe <- 0x4200007a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P3487: !_MEMBAR (FP)
membar #StoreLoad

P3488: !_ST [7] (maybe <- 0x280001c) (Int)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

P3489: !_LD [11] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3490: !_ST [7] (maybe <- 0x4200007b) (FP) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3490
nop
RET3490:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3491: !_LD [11] (FP)
ld [%i2 + 0], %f3
! 1 addresses covered

P3492: !_REPLACEMENT [32] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %o5
ld [%i3+256], %l6
st %l6, [%i3+256]
add %i3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]
add %l3, %o5, %l3
ld [%l3+256], %l6
st %l6, [%l3+256]

P3493: !_REPLACEMENT [6] (Int)
sethi %hi(0x2000), %l7
ld [%i3+96], %l3
st %l3, [%i3+96]
add %i3, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

P3494: !_LD [0] (Int) (CBR) (Branch target of P3106)
lduw [%i0 + 0], %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3494
nop
RET3494:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P3495
nop

TARGET3106:
ba RET3106
nop


P3495: !_MEMBAR (FP)

P3496: !_BST [0] (maybe <- 0x4200007c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f34 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #3, next val will be in f36 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #4, next val will be in f40 
fmovd %f20, %f36
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3497: !_MEMBAR (FP)
membar #StoreLoad

P3498: !_LD [28] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f4
! 1 addresses covered

P3499: !_MEMBAR (FP)

P3500: !_BST [7] (maybe <- 0x42000081) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P3501: !_MEMBAR (FP)
membar #StoreLoad

P3502: !_LD [3] (Int) (Branch target of P3543)
lduw [%i0 + 16], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P3503
nop

TARGET3543:
ba RET3543
nop


P3503: !_ST [18] (maybe <- 0x280001d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3504: !_REPLACEMENT [26] (Int) (Branch target of P3693)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+128], %l6
st %l6, [%i2+128]
add %i2, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
add %l3, %o5, %l3
ld [%l3+128], %l6
st %l6, [%l3+128]
ba P3505
nop

TARGET3693:
ba RET3693
nop


P3505: !_ST [30] (maybe <- 0x42000082) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P3506: !_PREFETCH [19] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 1

P3507: !_LD [13] (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 32], %f5
! 1 addresses covered

P3508: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3508
nop
RET3508:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3509: !_BLD [28] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

P3510: !_MEMBAR (FP) (Branch target of P3740)
ba P3511
nop

TARGET3740:
ba RET3740
nop


P3511: !_LD [5] (Int) (Secondary ctx) (Branch target of P3838)
wr %g0, 0x81, %asi
lduwa [%i0 + 64] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
ba P3512
nop

TARGET3838:
ba RET3838
nop


P3512: !_REPLACEMENT [23] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+32], %l7
st %l7, [%i3+32]
add %i3, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]
add %l6, %l3, %l6
ld [%l6+32], %l7
st %l7, [%l6+32]

P3513: !_MEMBAR (FP) (Branch target of P3961)
membar #StoreLoad
ba P3514
nop

TARGET3961:
ba RET3961
nop


P3514: !_BLD [21] (FP) (Branch target of P3639)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f40, %f18
fmovs %f18, %f9
ba P3515
nop

TARGET3639:
ba RET3639
nop


P3515: !_MEMBAR (FP) (Branch target of P3913)
ba P3516
nop

TARGET3913:
ba RET3913
nop


P3516: !_REPLACEMENT [17] (Int) (Branch target of P3666)
sethi %hi(0x2000), %o5
ld [%i3+96], %l6
st %l6, [%i3+96]
add %i3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
add %l3, %o5, %l3
ld [%l3+96], %l6
st %l6, [%l3+96]
ba P3517
nop

TARGET3666:
ba RET3666
nop


P3517: !_IDC_FLIP [25] (Int)
IDC_FLIP(3517, 21130, 5, 0x45800060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)

P3518: !_LD [10] (Int)
lduw [%i1 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3519: !_MEMBAR (FP)
membar #StoreLoad

P3520: !_BLD [30] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10

P3521: !_MEMBAR (FP) (Branch target of P3595)
ba P3522
nop

TARGET3595:
ba RET3595
nop


P3522: !_BST [27] (maybe <- 0x42000083) (FP) (Branch target of P3962)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 128 ] %asi
ba P3523
nop

TARGET3962:
ba RET3962
nop


P3523: !_MEMBAR (FP)
membar #StoreLoad

P3524: !_ST [7] (maybe <- 0x42000085) (FP) (CBR) (Nucleus ctx) (Branch target of P3934)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3524
nop
RET3524:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P3525
nop

TARGET3934:
ba RET3934
nop


P3525: !_REPLACEMENT [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P3526: !_ST [18] (maybe <- 0x280001e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3527: !_MEMBAR (FP)
membar #StoreLoad

P3528: !_BLD [1] (FP) (Branch target of P3658)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f18, %f13
fmovd %f36, %f14
fmovd %f40, %f18
fmovs %f18, %f15
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30
!--
ba P3529
nop

TARGET3658:
ba RET3658
nop


P3529: !_MEMBAR (FP) (Branch target of P3862)
ba P3530
nop

TARGET3862:
ba RET3862
nop


P3530: !_LD [30] (FP) (CBR) (Branch target of P3219)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 128], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3530
nop
RET3530:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P3531
nop

TARGET3219:
ba RET3219
nop


P3531: !_MEMBAR (FP)

P3532: !_BST [12] (maybe <- 0x42000086) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3532
nop
RET3532:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3533: !_MEMBAR (FP)
membar #StoreLoad

P3534: !_BLD [33] (FP) (Branch target of P3634)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
ba P3535
nop

TARGET3634:
ba RET3634
nop


P3535: !_MEMBAR (FP) (Branch target of P3438)
ba P3536
nop

TARGET3438:
ba RET3438
nop


P3536: !_IDC_FLIP [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
IDC_FLIP(3536, 3423, 5, 0x45800020, 0x20, %i3, 0x20, %l6, %l7, %o5, %l3)

P3537: !_REPLACEMENT [30] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+128], %o5
st %o5, [%i2+128]
add %i2, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]
add %l7, %l6, %l7
ld [%l7+128], %o5
st %o5, [%l7+128]

P3538: !_MEMBAR (FP)

P3539: !_BST [7] (maybe <- 0x42000089) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P3540: !_MEMBAR (FP)

P3541: !_BST [25] (maybe <- 0x4200008a) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f40 
fmovd %f20, %f32
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P3542: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P3543: !_REPLACEMENT [25] (Int) (CBR)
sethi %hi(0x2000), %l7
ld [%i2+96], %l3
st %l3, [%i2+96]
add %i2, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]
add %o5, %l7, %o5
ld [%o5+96], %l3
st %l3, [%o5+96]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3543
nop
RET3543:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3544: !_REPLACEMENT [24] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i2+64], %l3
st %l3, [%i2+64]
add %i2, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]
add %o5, %l7, %o5
ld [%o5+64], %l3
st %l3, [%o5+64]

P3545: !_REPLACEMENT [12] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P3546: !_ST [33] (maybe <- 0x280001f) (Int) (Nucleus ctx) (Branch target of P3680)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4
ba P3547
nop

TARGET3680:
ba RET3680
nop


P3547: !_MEMBAR (FP)

P3548: !_BST [7] (maybe <- 0x4200008c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P3549: !_MEMBAR (FP) (CBR) (Branch target of P3665)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3549
nop
RET3549:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P3550
nop

TARGET3665:
ba RET3665
nop


P3550: !_ST [1] (maybe <- 0x4200008d) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P3551: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3551
nop
RET3551:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3552: !_BLD [26] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P3553: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3553
nop
RET3553:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3554: !_ST [0] (maybe <- 0x4200008e) (FP) (CBR) (Secondary ctx) (Branch target of P3907)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3554
nop
RET3554:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P3555
nop

TARGET3907:
ba RET3907
nop


P3555: !_LD [29] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 64], %f4
! 1 addresses covered

P3556: !_LD [17] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 96], %f5
! 1 addresses covered

P3557: !_REPLACEMENT [15] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l3
ld [%i3+128], %l7
st %l7, [%i3+128]
add %i3, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]
add %l6, %l3, %l6
ld [%l6+128], %l7
st %l7, [%l6+128]




