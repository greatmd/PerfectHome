/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: n2_8t_ldst1_7.s
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
#define REGION_SIZE_RTL (128 * 1024)
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

#define REGION0_ALIAS3_O 0x0
#define REGION1_ALIAS3_O 0x20000
#define REGION2_ALIAS3_O 0x40000
#define REGION3_ALIAS3_O 0x60000
#define REGION4_ALIAS3_O 0x80000
#define REGION5_ALIAS3_O 0xa0000
#define REGION6_ALIAS3_O 0xc0000
#define REGION7_ALIAS3_O 0xe0000
#define REPLACEMENT0_ALIAS3_O 0x100000
#define REGION0_ALIAS2_O 0x200000
#define REGION1_ALIAS2_O 0x220000
#define REGION2_ALIAS2_O 0x240000
#define REGION3_ALIAS2_O 0x260000
#define REGION4_ALIAS2_O 0x280000
#define REGION5_ALIAS2_O 0x2a0000
#define REGION6_ALIAS2_O 0x2c0000
#define REGION7_ALIAS2_O 0x2e0000
#define REPLACEMENT0_ALIAS2_O 0x300000
#define REGION0_ALIAS1_O 0x400000
#define REGION1_ALIAS1_O 0x420000
#define REGION2_ALIAS1_O 0x440000
#define REGION3_ALIAS1_O 0x460000
#define REGION4_ALIAS1_O 0x480000
#define REGION5_ALIAS1_O 0x4a0000
#define REGION6_ALIAS1_O 0x4c0000
#define REGION7_ALIAS1_O 0x4e0000
#define REPLACEMENT0_ALIAS1_O 0x500000
#define REGION0_ALIAS0_O 0x600000
#define REGION1_ALIAS0_O 0x620000
#define REGION2_ALIAS0_O 0x640000
#define REGION3_ALIAS0_O 0x660000
#define REGION4_ALIAS0_O 0x680000
#define REGION5_ALIAS0_O 0x6a0000
#define REGION6_ALIAS0_O 0x6c0000
#define REGION7_ALIAS0_O 0x6e0000
#define REPLACEMENT0_ALIAS0_O 0x700000


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

SECTION region0_alias3_4 DATA_VA=0x6000000
attr_data {
	Name = region0_alias3_4,
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

SECTION region1_alias3_4 DATA_VA=0x6020000
attr_data {
	Name = region1_alias3_4,
	VA=0x6020000,
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

SECTION region2_alias3_4 DATA_VA=0x6040000
attr_data {
	Name = region2_alias3_4,
	VA=0x6040000,
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

SECTION region3_alias3_4 DATA_VA=0x6060000
attr_data {
	Name = region3_alias3_4,
	VA=0x6060000,
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

SECTION region4_alias3_4 DATA_VA=0x6080000
attr_data {
	Name = region4_alias3_4,
	VA=0x6080000,
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

SECTION region5_alias3_4 DATA_VA=0x60a0000
attr_data {
	Name = region5_alias3_4,
	VA=0x60a0000,
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

SECTION region6_alias3_4 DATA_VA=0x60c0000
attr_data {
	Name = region6_alias3_4,
	VA=0x60c0000,
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

SECTION region7_alias3_4 DATA_VA=0x60e0000
attr_data {
	Name = region7_alias3_4,
	VA=0x60e0000,
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

SECTION replacement0_alias3_4 DATA_VA=0x6100000
attr_data {
	Name = replacement0_alias3_4,
	VA=0x6100000,
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

SECTION replacement1_alias3_4 DATA_VA=0x6120000
attr_data {
	Name = replacement1_alias3_4,
	VA=0x6120000,
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

SECTION replacement2_alias3_4 DATA_VA=0x6140000
attr_data {
	Name = replacement2_alias3_4,
	VA=0x6140000,
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

SECTION replacement3_alias3_4 DATA_VA=0x6160000
attr_data {
	Name = replacement3_alias3_4,
	VA=0x6160000,
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

SECTION replacement4_alias3_4 DATA_VA=0x6180000
attr_data {
	Name = replacement4_alias3_4,
	VA=0x6180000,
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

SECTION replacement5_alias3_4 DATA_VA=0x61a0000
attr_data {
	Name = replacement5_alias3_4,
	VA=0x61a0000,
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

SECTION replacement6_alias3_4 DATA_VA=0x61c0000
attr_data {
	Name = replacement6_alias3_4,
	VA=0x61c0000,
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

SECTION replacement7_alias3_4 DATA_VA=0x61e0000
attr_data {
	Name = replacement7_alias3_4,
	VA=0x61e0000,
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

SECTION region0_alias2_4 DATA_VA=0x6200000
attr_data {
	Name = region0_alias2_4,
	VA=0x6200000,
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

SECTION region1_alias2_4 DATA_VA=0x6220000
attr_data {
	Name = region1_alias2_4,
	VA=0x6220000,
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

SECTION region2_alias2_4 DATA_VA=0x6240000
attr_data {
	Name = region2_alias2_4,
	VA=0x6240000,
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

SECTION region3_alias2_4 DATA_VA=0x6260000
attr_data {
	Name = region3_alias2_4,
	VA=0x6260000,
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

SECTION region4_alias2_4 DATA_VA=0x6280000
attr_data {
	Name = region4_alias2_4,
	VA=0x6280000,
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

SECTION region5_alias2_4 DATA_VA=0x62a0000
attr_data {
	Name = region5_alias2_4,
	VA=0x62a0000,
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

SECTION region6_alias2_4 DATA_VA=0x62c0000
attr_data {
	Name = region6_alias2_4,
	VA=0x62c0000,
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

SECTION region7_alias2_4 DATA_VA=0x62e0000
attr_data {
	Name = region7_alias2_4,
	VA=0x62e0000,
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

SECTION replacement0_alias2_4 DATA_VA=0x6300000
attr_data {
	Name = replacement0_alias2_4,
	VA=0x6300000,
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

SECTION replacement1_alias2_4 DATA_VA=0x6320000
attr_data {
	Name = replacement1_alias2_4,
	VA=0x6320000,
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

SECTION replacement2_alias2_4 DATA_VA=0x6340000
attr_data {
	Name = replacement2_alias2_4,
	VA=0x6340000,
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

SECTION replacement3_alias2_4 DATA_VA=0x6360000
attr_data {
	Name = replacement3_alias2_4,
	VA=0x6360000,
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

SECTION replacement4_alias2_4 DATA_VA=0x6380000
attr_data {
	Name = replacement4_alias2_4,
	VA=0x6380000,
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

SECTION replacement5_alias2_4 DATA_VA=0x63a0000
attr_data {
	Name = replacement5_alias2_4,
	VA=0x63a0000,
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

SECTION replacement6_alias2_4 DATA_VA=0x63c0000
attr_data {
	Name = replacement6_alias2_4,
	VA=0x63c0000,
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

SECTION replacement7_alias2_4 DATA_VA=0x63e0000
attr_data {
	Name = replacement7_alias2_4,
	VA=0x63e0000,
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

SECTION region0_alias1_4 DATA_VA=0x6400000
attr_data {
	Name = region0_alias1_4,
	VA=0x6400000,
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

SECTION region1_alias1_4 DATA_VA=0x6420000
attr_data {
	Name = region1_alias1_4,
	VA=0x6420000,
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

SECTION region2_alias1_4 DATA_VA=0x6440000
attr_data {
	Name = region2_alias1_4,
	VA=0x6440000,
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

SECTION region3_alias1_4 DATA_VA=0x6460000
attr_data {
	Name = region3_alias1_4,
	VA=0x6460000,
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

SECTION region4_alias1_4 DATA_VA=0x6480000
attr_data {
	Name = region4_alias1_4,
	VA=0x6480000,
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

SECTION region5_alias1_4 DATA_VA=0x64a0000
attr_data {
	Name = region5_alias1_4,
	VA=0x64a0000,
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

SECTION region6_alias1_4 DATA_VA=0x64c0000
attr_data {
	Name = region6_alias1_4,
	VA=0x64c0000,
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

SECTION region7_alias1_4 DATA_VA=0x64e0000
attr_data {
	Name = region7_alias1_4,
	VA=0x64e0000,
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

SECTION replacement0_alias1_4 DATA_VA=0x6500000
attr_data {
	Name = replacement0_alias1_4,
	VA=0x6500000,
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

SECTION replacement1_alias1_4 DATA_VA=0x6520000
attr_data {
	Name = replacement1_alias1_4,
	VA=0x6520000,
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

SECTION replacement2_alias1_4 DATA_VA=0x6540000
attr_data {
	Name = replacement2_alias1_4,
	VA=0x6540000,
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

SECTION replacement3_alias1_4 DATA_VA=0x6560000
attr_data {
	Name = replacement3_alias1_4,
	VA=0x6560000,
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

SECTION replacement4_alias1_4 DATA_VA=0x6580000
attr_data {
	Name = replacement4_alias1_4,
	VA=0x6580000,
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

SECTION replacement5_alias1_4 DATA_VA=0x65a0000
attr_data {
	Name = replacement5_alias1_4,
	VA=0x65a0000,
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

SECTION replacement6_alias1_4 DATA_VA=0x65c0000
attr_data {
	Name = replacement6_alias1_4,
	VA=0x65c0000,
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

SECTION replacement7_alias1_4 DATA_VA=0x65e0000
attr_data {
	Name = replacement7_alias1_4,
	VA=0x65e0000,
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

SECTION region0_alias0 DATA_VA=0x6600000
attr_data {
	Name = region0_alias0,
	VA=0x6600000,
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

SECTION region1_alias0 DATA_VA=0x6620000
attr_data {
	Name = region1_alias0,
	VA=0x6620000,
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

SECTION region2_alias0 DATA_VA=0x6640000
attr_data {
	Name = region2_alias0,
	VA=0x6640000,
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

SECTION region3_alias0 DATA_VA=0x6660000
attr_data {
	Name = region3_alias0,
	VA=0x6660000,
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

SECTION region4_alias0 DATA_VA=0x6680000
attr_data {
	Name = region4_alias0,
	VA=0x6680000,
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

SECTION region5_alias0 DATA_VA=0x66a0000
attr_data {
	Name = region5_alias0,
	VA=0x66a0000,
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

SECTION region6_alias0 DATA_VA=0x66c0000
attr_data {
	Name = region6_alias0,
	VA=0x66c0000,
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

SECTION region7_alias0 DATA_VA=0x66e0000
attr_data {
	Name = region7_alias0,
	VA=0x66e0000,
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

SECTION replacement0_alias0 DATA_VA=0x6700000
attr_data {
	Name = replacement0_alias0,
	VA=0x6700000,
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

SECTION replacement1_alias0 DATA_VA=0x6720000
attr_data {
	Name = replacement1_alias0,
	VA=0x6720000,
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

SECTION replacement2_alias0 DATA_VA=0x6740000
attr_data {
	Name = replacement2_alias0,
	VA=0x6740000,
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

SECTION replacement3_alias0 DATA_VA=0x6760000
attr_data {
	Name = replacement3_alias0,
	VA=0x6760000,
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

SECTION replacement4_alias0 DATA_VA=0x6780000
attr_data {
	Name = replacement4_alias0,
	VA=0x6780000,
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

SECTION replacement5_alias0 DATA_VA=0x67a0000
attr_data {
	Name = replacement5_alias0,
	VA=0x67a0000,
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

SECTION replacement6_alias0 DATA_VA=0x67c0000
attr_data {
	Name = replacement6_alias0,
	VA=0x67c0000,
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

SECTION replacement7_alias0 DATA_VA=0x67e0000
attr_data {
	Name = replacement7_alias0,
	VA=0x67e0000,
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

SECTION region0_alias3_0 DATA_VA=0x6000000
attr_data {
	Name = region0_alias3_0,
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

SECTION region1_alias3_0 DATA_VA=0x6020000
attr_data {
	Name = region1_alias3_0,
	VA=0x6020000,
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

SECTION region2_alias3_0 DATA_VA=0x6040000
attr_data {
	Name = region2_alias3_0,
	VA=0x6040000,
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

SECTION region3_alias3_0 DATA_VA=0x6060000
attr_data {
	Name = region3_alias3_0,
	VA=0x6060000,
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

SECTION region4_alias3_0 DATA_VA=0x6080000
attr_data {
	Name = region4_alias3_0,
	VA=0x6080000,
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

SECTION region5_alias3_0 DATA_VA=0x60a0000
attr_data {
	Name = region5_alias3_0,
	VA=0x60a0000,
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

SECTION region6_alias3_0 DATA_VA=0x60c0000
attr_data {
	Name = region6_alias3_0,
	VA=0x60c0000,
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

SECTION region7_alias3_0 DATA_VA=0x60e0000
attr_data {
	Name = region7_alias3_0,
	VA=0x60e0000,
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

SECTION replacement0_alias3_0 DATA_VA=0x6100000
attr_data {
	Name = replacement0_alias3_0,
	VA=0x6100000,
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

SECTION replacement1_alias3_0 DATA_VA=0x6120000
attr_data {
	Name = replacement1_alias3_0,
	VA=0x6120000,
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

SECTION replacement2_alias3_0 DATA_VA=0x6140000
attr_data {
	Name = replacement2_alias3_0,
	VA=0x6140000,
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

SECTION replacement3_alias3_0 DATA_VA=0x6160000
attr_data {
	Name = replacement3_alias3_0,
	VA=0x6160000,
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

SECTION replacement4_alias3_0 DATA_VA=0x6180000
attr_data {
	Name = replacement4_alias3_0,
	VA=0x6180000,
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

SECTION replacement5_alias3_0 DATA_VA=0x61a0000
attr_data {
	Name = replacement5_alias3_0,
	VA=0x61a0000,
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

SECTION replacement6_alias3_0 DATA_VA=0x61c0000
attr_data {
	Name = replacement6_alias3_0,
	VA=0x61c0000,
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

SECTION replacement7_alias3_0 DATA_VA=0x61e0000
attr_data {
	Name = replacement7_alias3_0,
	VA=0x61e0000,
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

SECTION region0_alias2_0 DATA_VA=0x6200000
attr_data {
	Name = region0_alias2_0,
	VA=0x6200000,
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

SECTION region1_alias2_0 DATA_VA=0x6220000
attr_data {
	Name = region1_alias2_0,
	VA=0x6220000,
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

SECTION region2_alias2_0 DATA_VA=0x6240000
attr_data {
	Name = region2_alias2_0,
	VA=0x6240000,
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

SECTION region3_alias2_0 DATA_VA=0x6260000
attr_data {
	Name = region3_alias2_0,
	VA=0x6260000,
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

SECTION region4_alias2_0 DATA_VA=0x6280000
attr_data {
	Name = region4_alias2_0,
	VA=0x6280000,
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

SECTION region5_alias2_0 DATA_VA=0x62a0000
attr_data {
	Name = region5_alias2_0,
	VA=0x62a0000,
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

SECTION region6_alias2_0 DATA_VA=0x62c0000
attr_data {
	Name = region6_alias2_0,
	VA=0x62c0000,
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

SECTION region7_alias2_0 DATA_VA=0x62e0000
attr_data {
	Name = region7_alias2_0,
	VA=0x62e0000,
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

SECTION replacement0_alias2_0 DATA_VA=0x6300000
attr_data {
	Name = replacement0_alias2_0,
	VA=0x6300000,
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

SECTION replacement1_alias2_0 DATA_VA=0x6320000
attr_data {
	Name = replacement1_alias2_0,
	VA=0x6320000,
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

SECTION replacement2_alias2_0 DATA_VA=0x6340000
attr_data {
	Name = replacement2_alias2_0,
	VA=0x6340000,
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

SECTION replacement3_alias2_0 DATA_VA=0x6360000
attr_data {
	Name = replacement3_alias2_0,
	VA=0x6360000,
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

SECTION replacement4_alias2_0 DATA_VA=0x6380000
attr_data {
	Name = replacement4_alias2_0,
	VA=0x6380000,
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

SECTION replacement5_alias2_0 DATA_VA=0x63a0000
attr_data {
	Name = replacement5_alias2_0,
	VA=0x63a0000,
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

SECTION replacement6_alias2_0 DATA_VA=0x63c0000
attr_data {
	Name = replacement6_alias2_0,
	VA=0x63c0000,
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

SECTION replacement7_alias2_0 DATA_VA=0x63e0000
attr_data {
	Name = replacement7_alias2_0,
	VA=0x63e0000,
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

SECTION region0_alias1_0 DATA_VA=0x6400000
attr_data {
	Name = region0_alias1_0,
	VA=0x6400000,
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

SECTION region1_alias1_0 DATA_VA=0x6420000
attr_data {
	Name = region1_alias1_0,
	VA=0x6420000,
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

SECTION region2_alias1_0 DATA_VA=0x6440000
attr_data {
	Name = region2_alias1_0,
	VA=0x6440000,
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

SECTION region3_alias1_0 DATA_VA=0x6460000
attr_data {
	Name = region3_alias1_0,
	VA=0x6460000,
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

SECTION region4_alias1_0 DATA_VA=0x6480000
attr_data {
	Name = region4_alias1_0,
	VA=0x6480000,
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

SECTION region5_alias1_0 DATA_VA=0x64a0000
attr_data {
	Name = region5_alias1_0,
	VA=0x64a0000,
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

SECTION region6_alias1_0 DATA_VA=0x64c0000
attr_data {
	Name = region6_alias1_0,
	VA=0x64c0000,
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

SECTION region7_alias1_0 DATA_VA=0x64e0000
attr_data {
	Name = region7_alias1_0,
	VA=0x64e0000,
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

SECTION replacement0_alias1_0 DATA_VA=0x6500000
attr_data {
	Name = replacement0_alias1_0,
	VA=0x6500000,
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

SECTION replacement1_alias1_0 DATA_VA=0x6520000
attr_data {
	Name = replacement1_alias1_0,
	VA=0x6520000,
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

SECTION replacement2_alias1_0 DATA_VA=0x6540000
attr_data {
	Name = replacement2_alias1_0,
	VA=0x6540000,
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

SECTION replacement3_alias1_0 DATA_VA=0x6560000
attr_data {
	Name = replacement3_alias1_0,
	VA=0x6560000,
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

SECTION replacement4_alias1_0 DATA_VA=0x6580000
attr_data {
	Name = replacement4_alias1_0,
	VA=0x6580000,
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

SECTION replacement5_alias1_0 DATA_VA=0x65a0000
attr_data {
	Name = replacement5_alias1_0,
	VA=0x65a0000,
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

SECTION replacement6_alias1_0 DATA_VA=0x65c0000
attr_data {
	Name = replacement6_alias1_0,
	VA=0x65c0000,
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

SECTION replacement7_alias1_0 DATA_VA=0x65e0000
attr_data {
	Name = replacement7_alias1_0,
	VA=0x65e0000,
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

SECTION region0_alias0_0 DATA_VA=0x6600000
attr_data {
	Name = region0_alias0_0,
	VA=0x6600000,
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

SECTION region1_alias0_0 DATA_VA=0x6620000
attr_data {
	Name = region1_alias0_0,
	VA=0x6620000,
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

SECTION region2_alias0_0 DATA_VA=0x6640000
attr_data {
	Name = region2_alias0_0,
	VA=0x6640000,
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

SECTION region3_alias0_0 DATA_VA=0x6660000
attr_data {
	Name = region3_alias0_0,
	VA=0x6660000,
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

SECTION region4_alias0_0 DATA_VA=0x6680000
attr_data {
	Name = region4_alias0_0,
	VA=0x6680000,
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

SECTION region5_alias0_0 DATA_VA=0x66a0000
attr_data {
	Name = region5_alias0_0,
	VA=0x66a0000,
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

SECTION region6_alias0_0 DATA_VA=0x66c0000
attr_data {
	Name = region6_alias0_0,
	VA=0x66c0000,
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

SECTION region7_alias0_0 DATA_VA=0x66e0000
attr_data {
	Name = region7_alias0_0,
	VA=0x66e0000,
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

SECTION replacement0_alias0_0 DATA_VA=0x6700000
attr_data {
	Name = replacement0_alias0_0,
	VA=0x6700000,
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

SECTION replacement1_alias0_0 DATA_VA=0x6720000
attr_data {
	Name = replacement1_alias0_0,
	VA=0x6720000,
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

SECTION replacement2_alias0_0 DATA_VA=0x6740000
attr_data {
	Name = replacement2_alias0_0,
	VA=0x6740000,
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

SECTION replacement3_alias0_0 DATA_VA=0x6760000
attr_data {
	Name = replacement3_alias0_0,
	VA=0x6760000,
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

SECTION replacement4_alias0_0 DATA_VA=0x6780000
attr_data {
	Name = replacement4_alias0_0,
	VA=0x6780000,
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

SECTION replacement5_alias0_0 DATA_VA=0x67a0000
attr_data {
	Name = replacement5_alias0_0,
	VA=0x67a0000,
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

SECTION replacement6_alias0_0 DATA_VA=0x67c0000
attr_data {
	Name = replacement6_alias0_0,
	VA=0x67c0000,
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

SECTION replacement7_alias0_0 DATA_VA=0x67e0000
attr_data {
	Name = replacement7_alias0_0,
	VA=0x67e0000,
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
! 8 shared memory regions, 3 alias(es) each (Alias 0 is normal VA)


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

! Initialize LFSR to 0x2bbb^4
sethi %hi(0x2bbb), %l0
or    %l0, %lo(0x2bbb), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES0: ! Test instruction sequence for ISTREAM 0 begins

P1: !_DWLD [6] (Int) (Loop entry) (Branch target of P176)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_0:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
ba P2
nop

TARGET176:
ba RET176
nop


P2: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2
nop
RET2:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3: !_BSTC [4] (maybe <- 0x3f800001) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4: !_MEMBAR (FP)
membar #StoreLoad

P5: !_DWLD [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P6: !_DWLD [18] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P7: !_MEMBAR (FP)

P8: !_BST [6] (maybe <- 0x3f800004) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P9: !_MEMBAR (FP)
membar #StoreLoad

P10: !_LD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P11: !_LD [11] (Int)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P12: !_DWST_BINIT [8] (maybe <- 0x1) (Int)
wr %g0, 0xe2, %asi
mov %l4, %o5 
stxa %o5, [%i2 + 8] %asi 
add   %l4, 1, %l4

P13: !_MEMBAR (Int)
membar #StoreLoad

P14: !_DWST_BINIT [8] (maybe <- 0x2) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l7 
stxa %l7, [%i2 + 8] %asi 
add   %l4, 1, %l4

P15: !_MEMBAR (Int)
membar #StoreLoad

P16: !_DWST [17] (maybe <- 0x3) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 8]
add   %l4, 1, %l4

P17: !_SWAP [20] (maybe <- 0x4) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o4
swap  [%i3 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P18: !_ST [5] (maybe <- 0x5) (Int)
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4

P19: !_CAS [8] (maybe <- 0x6) (Int) (Branch target of P129)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%o5], %l7, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4
ba P20
nop

TARGET129:
ba RET129
nop


P20: !_MEMBAR (FP)

P21: !_BSTC [8] (maybe <- 0x3f800007) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P22: !_MEMBAR (FP)
membar #StoreLoad

P23: !_BLD [5] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET23
nop
RET23:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P24: !_MEMBAR (FP)

P25: !_BSTC [23] (maybe <- 0x3f80000a) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P26: !_MEMBAR (FP)
membar #StoreLoad

P27: !_PREFETCH [6] (Int)
prefetch [%i2 + 0], 22

P28: !_MEMBAR (FP)

P29: !_BST [23] (maybe <- 0x3f80000d) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P30: !_MEMBAR (FP)
membar #StoreLoad

P31: !_LD [8] (Int)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P32: !_PREFETCH [14] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 4

P33: !_LDD [15] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P34: !_MEMBAR (FP)
membar #StoreLoad

P35: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P36: !_MEMBAR (FP)

P37: !_DWLD [8] (Int)
ldx [%i2 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P38: !_SWAP [17] (maybe <- 0x7) (Int)
mov %l4, %l3
swap  [%i3 + 12], %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P39: !_CASX [18] (maybe <- 0x8) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l6
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i3], %l6, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P40: !_SWAP [23] (maybe <- 0xa) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P41: !_CASX [1] (maybe <- 0xb) (Int)
ldx [%i0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i0], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P42: !_CAS [16] (maybe <- 0xd) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
mov %l4, %o3
cas [%l6], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P43: !_LDD [18] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P44: !_LD [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P45: !_MEMBAR (FP)

P46: !_BST [9] (maybe <- 0x3f800010) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P47: !_MEMBAR (FP)
membar #StoreLoad

P48: !_DWST [8] (maybe <- 0xe) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l6 
stx %l6, [%i3 + 8]
add   %l4, 1, %l4

P49: !_MEMBAR (FP)

P50: !_BST [9] (maybe <- 0x3f800013) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P51: !_MEMBAR (FP)
membar #StoreLoad

P52: !_DWST_BINIT [3] (maybe <- 0xf) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i1 + 0] %asi
add   %l4, 1, %l4

P53: !_MEMBAR (Int)

P54: !_BSTC [2] (maybe <- 0x3f800016) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P55: !_MEMBAR (FP)

P56: !_BSTC [14] (maybe <- 0x3f800019) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P57: !_MEMBAR (FP)
membar #StoreLoad

P58: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P59: !_MEMBAR (FP)

P60: !_PREFETCH [18] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 3

P61: !_REPLACEMENT [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P62: !_MEMBAR (FP)

P63: !_BST [12] (maybe <- 0x3f80001c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P64: !_MEMBAR (FP)
membar #StoreLoad

P65: !_DWST_BINIT [23] (maybe <- 0x11) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o5 
stxa %o5, [%i2 + 8] %asi 
add   %l4, 1, %l4

P66: !_MEMBAR (Int)
membar #StoreLoad

P67: !_CAS [4] (maybe <- 0x12) (Int)
add %i1, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P68: !_ST [3] (maybe <- 0x13) (Int)
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

P69: !_REPLACEMENT [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
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

P70: !_MEMBAR (FP)
membar #StoreLoad

P71: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P72: !_MEMBAR (FP)

P73: !_ST [7] (maybe <- 0x14) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
stwa   %l3, [%i2 + 4] %asi
add   %l4, 1, %l4

P74: !_DWST [0] (maybe <- 0x15) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i0 + 0]
add   %l4, 1, %l4

P75: !_CASX [8] (maybe <- 0x17) (Int)
add %i2, 8, %o5
ldx [%o5], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l7
mov %l4, %o2
casx [%o5], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P76: !_SWAP [11] (maybe <- 0x18) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o3
swap  [%i3 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P77: !_LD [19] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P78: !_SWAP [1] (maybe <- 0x19) (Int)
mov %l4, %o4
swap  [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P79: !_DWST [0] (maybe <- 0x1a) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i0 + 0]
add   %l4, 1, %l4

P80: !_CAS [0] (maybe <- 0x1c) (Int)
lduw [%i0], %l3
mov %l3, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%i0], %l6, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P81: !_ST_BINIT [23] (maybe <- 0x1d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P82: !_MEMBAR (Int)
membar #StoreLoad

P83: !_CAS [6] (maybe <- 0x1e) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o5
mov %o5, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
mov %l4, %o1
cas [%i2], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P84: !_CASX [6] (maybe <- 0x1f) (Int)
ldx [%i2], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P85: !_DWLD [7] (Int)
ldx [%i2 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P86: !_MEMBAR (FP)

P87: !_BST [7] (maybe <- 0x3f80001f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P88: !_MEMBAR (FP)
membar #StoreLoad

P89: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P90: !_MEMBAR (FP)

P91: !_BST [21] (maybe <- 0x3f800022) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P92: !_MEMBAR (FP)
membar #StoreLoad

P93: !_LDD [23] (Int)
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P94: !_LD [23] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P95: !_MEMBAR (FP) (Branch target of P846)
ba P96
nop

TARGET846:
ba RET846
nop


P96: !_BST [4] (maybe <- 0x3f800025) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P97: !_MEMBAR (FP)
membar #StoreLoad

P98: !_ST_BINIT [0] (maybe <- 0x21) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P99: !_MEMBAR (Int)
membar #StoreLoad

P100: !_DWST [15] (maybe <- 0x22) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i3 + 0]
add   %l4, 1, %l4

P101: !_DWST [23] (maybe <- 0x24) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l6
srl %l6, 8, %l6
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3
srl %l3, 16, %l6
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l6, %l3
sllx %l3, 32, %l3 
stxa %l3, [%i2 + 8 ] %asi
add   %l4, 1, %l4

P102: !_ST [16] (maybe <- 0x25) (Int)
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P103: !_PREFETCH [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 23

P104: !_SWAP [18] (maybe <- 0x26) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o5
swap  [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P105: !_ST [2] (maybe <- 0x27) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P106: !_DWST [20] (maybe <- 0x28) (Int)
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4

P107: !_DWST_BINIT [5] (maybe <- 0x29) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l7 
stxa %l7, [%i1 + 8] %asi 
add   %l4, 1, %l4

P108: !_MEMBAR (Int)
membar #StoreLoad

P109: !_ST [5] (maybe <- 0x2a) (Int)
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4

P110: !_ST [16] (maybe <- 0x2b) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P111: !_REPLACEMENT [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+12], %l6
st %l6, [%i2+12]
add %i2, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]

P112: !_PREFETCH [1] (Int) (CBR)
prefetch [%i0 + 4], 22

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET112
nop
RET112:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P113: !_DWST [22] (maybe <- 0x2c) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P114: !_CAS [2] (maybe <- 0x2e) (Int)
add %i0, 12, %o5
lduw [%o5], %o1
mov %o1, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P115: !_ST_BINIT [21] (maybe <- 0x2f) (Int) (CBR)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET115
nop
RET115:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P116: !_MEMBAR (Int)
membar #StoreLoad

P117: !_CAS [13] (maybe <- 0x30) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P118: !_CAS [6] (maybe <- 0x31) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o3
mov %o3, %l7
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
mov %l4, %l6
cas [%i3], %l7, %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P119: !_CAS [1] (maybe <- 0x32) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
wr %g0, 0x88, %asi
add %i0, 4, %o5
lduwa [%o5] %asi, %o4
mov %o4, %l7
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l3, %l6
casa [%o5] %asi, %l7, %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P120: !_SWAP [21] (maybe <- 0x33) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P121: !_SWAP [2] (maybe <- 0x34) (Int)
mov %l4, %o5
swap  [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P122: !_CASX [15] (maybe <- 0x35) (Int) (LE)
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldxa [%i3] %asi, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
mov %o5, %l3
mov  %l7, %o5
casxa [%i3] %asi, %l3, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
add  %l4, 1, %l4

P123: !_SWAP [15] (maybe <- 0x37) (Int)
mov %l4, %o3
swap  [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P124: !_LDD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P125: !_CASX [14] (maybe <- 0x38) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
add  %l4, 1, %l4

P126: !_DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P127: !_CAS [18] (maybe <- 0x39) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2] %asi, %l6
mov %l6, %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
mov %l3, %o3
casa [%i2] %asi, %l7, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P128: !_CASX [4] (maybe <- 0x3a) (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0x200000), %l7
sub   %i1, %l7, %i1
ldx [%i1], %l7
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %o5
or %o5, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i1], %o5, %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
add  %l4, 1, %l4

P129: !_CASX [3] (maybe <- 0x3c) (Int) (CBR)
ldx [%i1], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i1], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET129
nop
RET129:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P130: !_CAS [2] (maybe <- 0x3e) (Int)
add %i0, 12, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
mov %l4, %o3
cas [%l6], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P131: !_ST_BINIT [6] (maybe <- 0x3f) (Int) (Branch target of P597)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4
ba P132
nop

TARGET597:
ba RET597
nop


P132: !_MEMBAR (Int) (Branch target of P995)
membar #StoreLoad
ba P133
nop

TARGET995:
ba RET995
nop


P133: !_PREFETCH [23] (Int) (CBR)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 20

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET133
nop
RET133:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P134: !_MEMBAR (FP)

P135: !_BSTC [8] (maybe <- 0x3f800028) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P136: !_MEMBAR (FP)
membar #StoreLoad

P137: !_LD [21] (Int)
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

P138: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET138
nop
RET138:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P139: !_BSTC [22] (maybe <- 0x3f80002b) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P140: !_MEMBAR (FP)
membar #StoreLoad

P141: !_ST [6] (maybe <- 0x40) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P142: !_ST [8] (maybe <- 0x41) (Int) (LE)
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
stwa   %l3, [%i3 + 12] %asi
add   %l4, 1, %l4

P143: !_SWAP [18] (maybe <- 0x42) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o4
swap  [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P144: !_SWAP [2] (maybe <- 0x43) (Int)
mov %l4, %l3
swap  [%i0 + 12], %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P145: !_DWLD [3] (Int)
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P146: !_PREFETCH [12] (Int) (Branch target of P930)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 22
ba P147
nop

TARGET930:
ba RET930
nop


P147: !_CASX [22] (maybe <- 0x44) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %o5
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P148: !_ST [21] (maybe <- 0x46) (Int) (LE)
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
stwa   %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P149: !_MEMBAR (FP)

P150: !_BST [19] (maybe <- 0x3f80002e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P151: !_MEMBAR (FP)
membar #StoreLoad

P152: !_CAS [1] (maybe <- 0x47) (Int)
add %i0, 4, %l7
lduw [%l7], %o3
mov %o3, %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P153: !_CAS [9] (maybe <- 0x48) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o4
mov %o4, %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P154: !_ST_BINIT [20] (maybe <- 0x49) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P155: !_MEMBAR (Int)
membar #StoreLoad

P156: !_SWAP [19] (maybe <- 0x4a) (Int)
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P157: !_MEMBAR (FP)

P158: !_BST [18] (maybe <- 0x3f800031) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P159: !_MEMBAR (FP)
membar #StoreLoad

P160: !_DWST [2] (maybe <- 0x4b) (Int)
mov %l4, %l7 
stx %l7, [%i0 + 8]
add   %l4, 1, %l4

P161: !_LDD [20] (Int)
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P162: !_MEMBAR (FP)
membar #StoreLoad

P163: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
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
fmovd %f34, %f18
fmovs %f19, %f1

P164: !_MEMBAR (FP)

P165: !_ST_BINIT [16] (maybe <- 0x4c) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P166: !_MEMBAR (Int)
membar #StoreLoad

P167: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P168: !_MEMBAR (FP)

P169: !_DWST [19] (maybe <- 0x4d) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P170: !_DWST_BINIT [18] (maybe <- 0x4f) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4

P171: !_MEMBAR (Int)
membar #StoreLoad

P172: !_DWST [14] (maybe <- 0x51) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l6 
stx %l6, [%i3 + 8]
add   %l4, 1, %l4

P173: !_LDD [6] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P174: !_DWLD [3] (Int)
ldx [%i1 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P175: !_MEMBAR (FP)
membar #StoreLoad

P176: !_BLD [11] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET176
nop
RET176:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P177: !_MEMBAR (FP)

P178: !_BSTC [18] (maybe <- 0x3f800034) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P179: !_MEMBAR (FP)

P180: !_BSTC [21] (maybe <- 0x3f800037) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P181: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET181
nop
RET181:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P182: !_CAS [9] (maybe <- 0x52) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o3
mov %o3, %l7
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P183: !_CASX [2] (maybe <- 0x53) (Int) (Branch target of P631)
add %i0, 8, %o5
ldx [%o5], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov  %o4, %l7
mov %l4, %o0
casx [%o5], %l7, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4
ba P184
nop

TARGET631:
ba RET631
nop


P184: !_DWST [13] (maybe <- 0x54) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P185: !_ST [7] (maybe <- 0x56) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P186: !_DWST_BINIT [4] (maybe <- 0x57) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i1 + 0] %asi
add   %l4, 1, %l4

P187: !_MEMBAR (Int)
membar #StoreLoad

P188: !_ST_BINIT [9] (maybe <- 0x59) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P189: !_MEMBAR (Int)
membar #StoreLoad

P190: !_PREFETCH [3] (Int) (Branch target of P112)
prefetch [%i1 + 0], 22
ba P191
nop

TARGET112:
ba RET112
nop


P191: !_CAS [13] (maybe <- 0x5a) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %o1
mov %o1, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P192: !_DWST_BINIT [16] (maybe <- 0x5b) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P193: !_MEMBAR (Int) (Branch target of P281)
membar #StoreLoad
ba P194
nop

TARGET281:
ba RET281
nop


P194: !_ST_BINIT [14] (maybe <- 0x5d) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P195: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET195
nop
RET195:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P196: !_LD [12] (FP)
ld [%i2 + 0], %f8
! 1 addresses covered

P197: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET197
nop
RET197:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P198: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P199: !_MEMBAR (FP)

P200: !_BSTC [1] (maybe <- 0x3f80003a) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P201: !_MEMBAR (FP)
membar #StoreLoad

P202: !_LD [2] (Int)
lduw [%i0 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P203: !_REPLACEMENT [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
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

P204: !_DWST [18] (maybe <- 0x5e) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P205: !_ST [17] (maybe <- 0x60) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET205
nop
RET205:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P206: !_MEMBAR (FP)

P207: !_BSTC [11] (maybe <- 0x3f80003d) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P208: !_MEMBAR (FP)
membar #StoreLoad

P209: !_DWST [11] (maybe <- 0x61) (Int)
mov %l4, %l6 
stx %l6, [%i3 + 8]
add   %l4, 1, %l4

P210: !_ST [12] (maybe <- 0x3f800040) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P211: !_MEMBAR (FP)

P212: !_BSTC [18] (maybe <- 0x3f800041) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P213: !_MEMBAR (FP)
membar #StoreLoad

P214: !_CAS [7] (maybe <- 0x62) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
mov %l4, %o3
cas [%o5], %l7, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P215: !_CASX [13] (maybe <- 0x63) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i3], %l7, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
add  %l4, 1, %l4

P216: !_DWLD [19] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1

P217: !_ST_BINIT [8] (maybe <- 0x65) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P218: !_MEMBAR (Int)
membar #StoreLoad

P219: !_SWAP [18] (maybe <- 0x66) (Int)
mov %l4, %l6
swap  [%i2 + 0], %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P220: !_MEMBAR (FP)
membar #StoreLoad

P221: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P222: !_MEMBAR (FP)

P223: !_BSTC [10] (maybe <- 0x3f800044) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P224: !_MEMBAR (FP)
membar #StoreLoad

P225: !_SWAP [23] (maybe <- 0x67) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o2
swap  [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P226: !_DWST_BINIT [20] (maybe <- 0x68) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P227: !_MEMBAR (Int)
membar #StoreLoad

P228: !_DWST_BINIT [0] (maybe <- 0x69) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i0 + 0] %asi
add   %l4, 1, %l4

P229: !_MEMBAR (Int)
membar #StoreLoad

P230: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
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
fmovd %f34, %f18
fmovs %f19, %f1

P231: !_MEMBAR (FP)

P232: !_CAS [23] (maybe <- 0x6b) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
mov %l4, %o3
cas [%o5], %l7, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P233: !_CAS [21] (maybe <- 0x6c) (Int)
lduw [%i2], %l6
mov %l6, %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3
mov %l4, %o4
cas [%i2], %l7, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P234: !_CASX [19] (maybe <- 0x6d) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i3], %l7, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
add  %l4, 1, %l4

P235: !_MEMBAR (FP)

P236: !_BST [1] (maybe <- 0x3f800047) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P237: !_MEMBAR (FP)
membar #StoreLoad

P238: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 21

P239: !_CASX [20] (maybe <- 0x6f) (Int)
add %i3, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
add  %l4, 1, %l4

P240: !_MEMBAR (FP)
membar #StoreLoad

P241: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P242: !_MEMBAR (FP)

P243: !_CAS [3] (maybe <- 0x70) (Int) (CBR)
lduw [%i1], %l3
mov %l3, %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
mov %l4, %o4
cas [%i1], %l6, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET243
nop
RET243:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P244: !_DWLD [22] (Int) (LE) (Branch target of P2)
wr %g0, 0x88, %asi
ldxa [%i2 + 0] %asi, %o5
! move %o5(lower) -> %o4(lower)
srl %o5, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(upper) -> %o0(upper)
or %o5, %g0, %o0
ba P245
nop

TARGET2:
ba RET2
nop


P245: !_ST_BINIT [2] (maybe <- 0x71) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 12] %asi
add   %l4, 1, %l4

P246: !_MEMBAR (Int)
membar #StoreLoad

P247: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P248: !_MEMBAR (FP)

P249: !_ST_BINIT [16] (maybe <- 0x72) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P250: !_MEMBAR (Int)
membar #StoreLoad

P251: !_ST_BINIT [4] (maybe <- 0x73) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 4] %asi
add   %l4, 1, %l4

P252: !_MEMBAR (Int)

P253: !_BSTC [17] (maybe <- 0x3f80004a) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P254: !_MEMBAR (FP)
membar #StoreLoad

P255: !_SWAP [19] (maybe <- 0x74) (Int) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l7
swap  [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srl %l7, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET255
nop
RET255:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P256: !_CAS [23] (maybe <- 0x75) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o1
mov %o1, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o1(lower)
srl %l3, 0, %l6
or %l6, %o1, %o1
add   %l4, 1, %l4

P257: !_MEMBAR (FP)

P258: !_BST [4] (maybe <- 0x3f80004d) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET258
nop
RET258:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P259: !_MEMBAR (FP) (Branch target of P530)
membar #StoreLoad
ba P260
nop

TARGET530:
ba RET530
nop


P260: !_PREFETCH [3] (Int)
prefetch [%i1 + 0], 21

P261: !_SWAP [21] (maybe <- 0x76) (Int)
mov %l4, %o2
swap  [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P262: !_ST_BINIT [19] (maybe <- 0x77) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P263: !_MEMBAR (Int)

P264: !_BSTC [22] (maybe <- 0x3f800050) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P265: !_MEMBAR (FP)
membar #StoreLoad

P266: !_BLD [6] (FP) (Branch target of P609)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10
ba P267
nop

TARGET609:
ba RET609
nop


P267: !_MEMBAR (FP)

P268: !_DWST [12] (maybe <- 0x78) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P269: !_CASX [0] (maybe <- 0x7a) (Int)
ldx [%i0], %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i0], %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
add  %l4, 1, %l4

P270: !_LD [20] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P271: !_ST_BINIT [11] (maybe <- 0x7c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P272: !_MEMBAR (Int)
membar #StoreLoad

P273: !_PREFETCH [11] (Int)
prefetch [%i3 + 12], 21

P274: !_CAS [2] (maybe <- 0x7d) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
wr %g0, 0x88, %asi
add %i0, 12, %o5
lduwa [%o5] %asi, %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l3, %l6
casa [%o5] %asi, %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P275: !_ST_BINIT [15] (maybe <- 0x7e) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P276: !_MEMBAR (Int)
membar #StoreLoad

P277: !_DWST_BINIT [7] (maybe <- 0x7f) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P278: !_MEMBAR (Int)
membar #StoreLoad

P279: !_REPLACEMENT [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
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

P280: !_LDD [4] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P281: !_LD [22] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET281
nop
RET281:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P282: !_LD [6] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

P283: !_CASX [10] (maybe <- 0x81) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l6
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i3], %l6, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P284: !_DWLD [4] (Int)
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P285: !_CASX [10] (maybe <- 0x83) (Int)
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %o5
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P286: !_MEMBAR (FP)

P287: !_BSTC [0] (maybe <- 0x3f800053) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P288: !_MEMBAR (FP)

P289: !_BSTC [21] (maybe <- 0x3f800056) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P290: !_MEMBAR (FP)
membar #StoreLoad

P291: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P292: !_MEMBAR (FP)

P293: !_BSTC [16] (maybe <- 0x3f800059) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET293
nop
RET293:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P294: !_MEMBAR (FP)
membar #StoreLoad

P295: !_ST [4] (maybe <- 0x85) (Int)
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4

P296: !_CAS [10] (maybe <- 0x86) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l6
lduwa [%l6] %asi, %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l7, %o5
casa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P297: !_ST_BINIT [16] (maybe <- 0x87) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P298: !_MEMBAR (Int) (Branch target of P197)
ba P299
nop

TARGET197:
ba RET197
nop


P299: !_BST [13] (maybe <- 0x3f80005c) (FP) (Branch target of P964)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P300
nop

TARGET964:
ba RET964
nop


P300: !_MEMBAR (FP)
membar #StoreLoad

P301: !_PREFETCH [6] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 20

P302: !_LD [7] (Int)
lduw [%i2 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P303: !_REPLACEMENT [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P304: !_CAS [16] (maybe <- 0x88) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l3], %o5, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P305: !_CASX [14] (maybe <- 0x89) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P306: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

P307: !_DWST_BINIT [6] (maybe <- 0x8a) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P308: !_MEMBAR (Int)
membar #StoreLoad

P309: !_BLD [8] (FP)
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
fmovd %f34, %f18
fmovs %f19, %f0

P310: !_MEMBAR (FP) (Branch target of P195)
ba P311
nop

TARGET195:
ba RET195
nop


P311: !_BST [19] (maybe <- 0x3f80005f) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P312: !_MEMBAR (FP)
membar #StoreLoad

P313: !_CASX [14] (maybe <- 0x8c) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov  %o3, %o5
mov %l4, %o4
casx [%l3], %o5, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P314: !_MEMBAR (FP)

P315: !_BST [23] (maybe <- 0x3f800062) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P316: !_MEMBAR (FP)
membar #StoreLoad

P317: !_SWAP [17] (maybe <- 0x8d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P318: !_DWST_BINIT [20] (maybe <- 0x8e) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6 
stxa %l6, [%i2 + 8] %asi 
add   %l4, 1, %l4

P319: !_MEMBAR (Int)
membar #StoreLoad

P320: !_DWST_BINIT [7] (maybe <- 0x8f) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P321: !_MEMBAR (Int)

P322: !_BST [21] (maybe <- 0x3f800065) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P323: !_MEMBAR (FP)
membar #StoreLoad

P324: !_DWLD [18] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P325: !_PREFETCH [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 4

P326: !_ST_BINIT [14] (maybe <- 0x91) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P327: !_MEMBAR (Int)

P328: !_BSTC [7] (maybe <- 0x3f800068) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P329: !_MEMBAR (FP)
membar #StoreLoad

P330: !_SWAP [23] (maybe <- 0x92) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 12], %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P331: !_DWLD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P332: !_DWLD [19] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P333: !_LD [2] (Int)
lduw [%i0 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P334: !_SWAP [12] (maybe <- 0x93) (Int)
mov %l4, %l7
swap  [%i3 + 0], %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P335: !_MEMBAR (FP)

P336: !_BST [20] (maybe <- 0x3f80006b) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P337: !_MEMBAR (FP)
membar #StoreLoad

P338: !_LD [8] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P339: !_ST_BINIT [4] (maybe <- 0x94) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 4] %asi
add   %l4, 1, %l4

P340: !_MEMBAR (Int)
membar #StoreLoad

P341: !_CAS [2] (maybe <- 0x95) (Int)
add %i0, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P342: !_DWST_BINIT [5] (maybe <- 0x96) (Int)
wr %g0, 0xe2, %asi
mov %l4, %o5 
stxa %o5, [%i1 + 8] %asi 
add   %l4, 1, %l4

P343: !_MEMBAR (Int)

P344: !_BST [19] (maybe <- 0x3f80006e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P345: !_MEMBAR (FP)
membar #StoreLoad

P346: !_DWST [7] (maybe <- 0x97) (Int) (LE)
wr %g0, 0x88, %asi
sllx %l4, 32, %l6
add   %l4, 1, %l4
or %l6, %l4, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l7, %o5, %l6
srlx %l6, 8, %l6
sllx %l7, 8, %l7
and %l7, %o5, %l7
or %l7, %l6, %l7 
sethi %hi(0xffff0000), %o5
srlx %l7, 16, %l6
andn %l6, %o5, %l6
andn %l7, %o5, %l7
sllx %l7, 16, %l7
or %l7, %l6, %l7 
srlx %l7, 32, %l6
sllx %l7, 32, %l7
or %l7, %l6, %l6 
stxa %l6, [%i3 + 0 ] %asi
add   %l4, 1, %l4

P347: !_CASX [16] (maybe <- 0x99) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P348: !_MEMBAR (FP)
membar #StoreLoad

P349: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

P350: !_MEMBAR (FP)

P351: !_ST [10] (maybe <- 0x3f800071) (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P352: !_ST [16] (maybe <- 0x9b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P353: !_MEMBAR (FP)

P354: !_BSTC [16] (maybe <- 0x3f800072) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P355: !_MEMBAR (FP)
membar #StoreLoad

P356: !_ST_BINIT [16] (maybe <- 0x9c) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P357: !_MEMBAR (Int)

P358: !_BSTC [23] (maybe <- 0x3f800075) (FP) (Branch target of P428)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P359
nop

TARGET428:
ba RET428
nop


P359: !_MEMBAR (FP)
membar #StoreLoad

P360: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6

P361: !_MEMBAR (FP)

P362: !_CAS [0] (maybe <- 0x9d) (Int)
lduw [%i0], %l7
mov %l7, %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3
mov %l4, %o4
cas [%i0], %o5, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P363: !_DWST_BINIT [0] (maybe <- 0x9e) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i0 + 0] %asi
add   %l4, 1, %l4

P364: !_MEMBAR (Int)
membar #StoreLoad

P365: !_DWST [8] (maybe <- 0xa0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7 
stx %l7, [%i2 + 8]
add   %l4, 1, %l4

P366: !_PREFETCH [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 2

P367: !_CAS [9] (maybe <- 0xa1) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %l3
mov %l3, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%i2], %l6, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P368: !_MEMBAR (FP)

P369: !_BST [6] (maybe <- 0x3f800078) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P370: !_MEMBAR (FP)
membar #StoreLoad

P371: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P372: !_MEMBAR (FP)

P373: !_SWAP [13] (maybe <- 0xa2) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l7
swap  [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P374: !_LDD [21] (Int) (Branch target of P762)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
ba P375
nop

TARGET762:
ba RET762
nop


P375: !_DWST_BINIT [10] (maybe <- 0xa3) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P376: !_MEMBAR (Int)
membar #StoreLoad

P377: !_ST_BINIT [17] (maybe <- 0xa5) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P378: !_MEMBAR (Int)
membar #StoreLoad

P379: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P380: !_MEMBAR (FP)

P381: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P382: !_MEMBAR (FP)

P383: !_CAS [13] (maybe <- 0xa6) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P384: !_MEMBAR (FP)
membar #StoreLoad

P385: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P386: !_MEMBAR (FP)

P387: !_BSTC [2] (maybe <- 0x3f80007b) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P388: !_MEMBAR (FP)
membar #StoreLoad

P389: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P390: !_MEMBAR (FP)

P391: !_DWST_BINIT [10] (maybe <- 0xa7) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i3 + 0] %asi
add   %l4, 1, %l4

P392: !_MEMBAR (Int)
membar #StoreLoad

P393: !_LDD [3] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P394: !_CASX [18] (maybe <- 0xa9) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
casx [%i2], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P395: !_DWLD [2] (Int)
ldx [%i0 + 8], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P396: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET396
nop
RET396:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P397: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P398: !_MEMBAR (FP)

P399: !_LD [1] (Int)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P400: !_DWST_BINIT [22] (maybe <- 0xab) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P401: !_MEMBAR (Int)
membar #StoreLoad

P402: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P403: !_MEMBAR (FP)

P404: !_SWAP [20] (maybe <- 0xad) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o2
swap  [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P405: !_PREFETCH [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 17

P406: !_LDD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P407: !_MEMBAR (FP)

P408: !_BSTC [20] (maybe <- 0x3f80007e) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P409: !_MEMBAR (FP)
membar #StoreLoad

P410: !_LD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P411: !_SWAP [2] (maybe <- 0xae) (Int)
mov %l4, %o5
swap  [%i0 + 12], %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P412: !_CAS [17] (maybe <- 0xaf) (Int) (Branch target of P181)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o4(lower)
srl %o5, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4
ba P413
nop

TARGET181:
ba RET181
nop


P413: !_MEMBAR (FP)

P414: !_BSTC [5] (maybe <- 0x3f800081) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P415: !_MEMBAR (FP)
membar #StoreLoad

P416: !_CASX [20] (maybe <- 0xb0) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P417: !_MEMBAR (FP)

P418: !_BSTC [10] (maybe <- 0x3f800084) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P419: !_MEMBAR (FP)
membar #StoreLoad

P420: !_CAS [19] (maybe <- 0xb1) (Int)
add %i3, 4, %o5
lduw [%o5], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P421: !_CASX [13] (maybe <- 0xb2) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l7
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i3], %l7, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P422: !_LDD [10] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P423: !_CAS [22] (maybe <- 0xb4) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P424: !_MEMBAR (FP)
membar #StoreLoad

P425: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P426: !_MEMBAR (FP)

P427: !_CAS [1] (maybe <- 0xb5) (Int)
add %i0, 4, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P428: !_SWAP [15] (maybe <- 0xb6) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o3
swap  [%i2 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET428
nop
RET428:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P429: !_MEMBAR (FP)

P430: !_BSTC [0] (maybe <- 0x3f800087) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P431: !_MEMBAR (FP)
membar #StoreLoad

P432: !_CASX [12] (maybe <- 0xb7) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %l7
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %o5
or %o5, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
add  %l4, 1, %l4

P433: !_DWST_BINIT [23] (maybe <- 0xb9) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stxa %o5, [%i2 + 8] %asi 
add   %l4, 1, %l4

P434: !_MEMBAR (Int)
membar #StoreLoad

P435: !_ST_BINIT [13] (maybe <- 0xba) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P436: !_MEMBAR (Int)
membar #StoreLoad

P437: !_DWST [18] (maybe <- 0xbb) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i3 + 0]
add   %l4, 1, %l4

P438: !_REPLACEMENT [8] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P439: !_DWST [20] (maybe <- 0xbd) (Int)
mov %l4, %o5 
stx %o5, [%i3 + 8]
add   %l4, 1, %l4

P440: !_MEMBAR (FP)
membar #StoreLoad

P441: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
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
fmovd %f34, %f18
fmovs %f19, %f1

P442: !_MEMBAR (FP)

P443: !_LD [18] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P444: !_CASX [12] (maybe <- 0xbe) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P445: !_SWAP [19] (maybe <- 0xc0) (Int)
mov %l4, %o3
swap  [%i2 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P446: !_DWLD [12] (FP)
ldd [%i3 + 0], %f2
! 2 addresses covered

P447: !_LDD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P448: !_CAS [7] (maybe <- 0xc1) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l7], %l6, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P449: !_MEMBAR (FP)
membar #StoreLoad

P450: !_BLD [6] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET450
nop
RET450:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P451: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET451
nop
RET451:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P452: !_DWST [10] (maybe <- 0xc2) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P453: !_CAS [11] (maybe <- 0xc4) (Int)
add %i2, 12, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%o5], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P454: !_DWLD [10] (Int)
ldx [%i2 + 0], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l7
or %l7, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2

P455: !_REPLACEMENT [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P456: !_DWLD [20] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %o5
or %o5, %o2, %o2

P457: !_DWLD [19] (Int)
ldx [%i2 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P458: !_DWLD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P459: !_REPLACEMENT [19] (Int) (Branch target of P255)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
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
ba P460
nop

TARGET255:
ba RET255
nop


P460: !_SWAP [0] (maybe <- 0xc5) (Int)
mov %l4, %l7
swap  [%i0 + 0], %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P461: !_CASX [23] (maybe <- 0xc6) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P462: !_DWLD [20] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldxa [%i2 + 8] %asi, %l3
! move %l3(upper) -> %o2(upper)
or %l3, %g0, %o2

P463: !_LD [18] (Int)
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l7, %o2, %o2

P464: !_CAS [8] (maybe <- 0xc7) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l3
lduw [%l3], %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P465: !_ST [9] (maybe <- 0x3f80008a) (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P466: !_SWAP [1] (maybe <- 0xc8) (Int)
mov %l4, %o4
swap  [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P467: !_ST_BINIT [8] (maybe <- 0xc9) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P468: !_MEMBAR (Int)
membar #StoreLoad

P469: !_CASX [23] (maybe <- 0xca) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
add  %l4, 1, %l4

P470: !_CAS [11] (maybe <- 0xcb) (Int)
add %i2, 12, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
mov %l4, %o2
cas [%l6], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P471: !_MEMBAR (FP)

P472: !_BST [13] (maybe <- 0x3f80008b) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P473: !_MEMBAR (FP)
membar #StoreLoad

P474: !_DWLD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %o5
or %o5, %o2, %o2

P475: !_DWST_BINIT [23] (maybe <- 0xcc) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6 
stxa %l6, [%i2 + 8] %asi 
add   %l4, 1, %l4

P476: !_MEMBAR (Int)
membar #StoreLoad

P477: !_DWST_BINIT [12] (maybe <- 0xcd) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P478: !_MEMBAR (Int)
membar #StoreLoad

P479: !_REPLACEMENT [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
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

P480: !_ST_BINIT [18] (maybe <- 0xcf) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P481: !_MEMBAR (Int)
membar #StoreLoad

P482: !_CASX [7] (maybe <- 0xd0) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l6
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i2], %l6, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET482
nop
RET482:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P483: !_MEMBAR (FP)
membar #StoreLoad

P484: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P485: !_MEMBAR (FP)

P486: !_REPLACEMENT [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P487: !_SWAP [9] (maybe <- 0xd2) (Int) (CBR)
mov %l4, %o0
swap  [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET487
nop
RET487:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P488: !_ST [2] (maybe <- 0xd3) (Int) (LE)
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
stwa   %l6, [%i0 + 12] %asi
add   %l4, 1, %l4

P489: !_CASX [14] (maybe <- 0xd4) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P490: !_MEMBAR (FP)

P491: !_BST [19] (maybe <- 0x3f80008e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P492: !_MEMBAR (FP)
membar #StoreLoad

P493: !_ST [6] (maybe <- 0x3f800091) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P494: !_MEMBAR (FP) (Branch target of P243)
ba P495
nop

TARGET243:
ba RET243
nop


P495: !_BSTC [6] (maybe <- 0x3f800092) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P496: !_MEMBAR (FP)
membar #StoreLoad

P497: !_LD [4] (Int)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P498: !_DWST [4] (maybe <- 0xd5) (Int) (Branch target of P927)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i1 + 0]
add   %l4, 1, %l4
ba P499
nop

TARGET927:
ba RET927
nop


P499: !_PREFETCH [6] (Int)
prefetch [%i3 + 0], 21

P500: !_ST [0] (maybe <- 0xd7) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P501: !_CAS [13] (maybe <- 0xd8) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %o3
mov %o3, %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P502: !_DWLD [4] (Int)
ldx [%i1 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P503: !_DWST [14] (maybe <- 0xd9) (Int)
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4

P504: !_MEMBAR (FP)

P505: !_BST [5] (maybe <- 0x3f800095) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P506: !_MEMBAR (FP)
membar #StoreLoad

P507: !_CAS [16] (maybe <- 0xda) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P508: !_MEMBAR (FP)
membar #StoreLoad

P509: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P510: !_MEMBAR (FP)

P511: !_PREFETCH [15] (Int)
prefetch [%i3 + 0], 20

P512: !_MEMBAR (FP)

P513: !_BSTC [15] (maybe <- 0x3f800098) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P514: !_MEMBAR (FP)
membar #StoreLoad

P515: !_CAS [22] (maybe <- 0xdb) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %o1
mov %o1, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o1(lower)
srl %l3, 0, %l6
or %l6, %o1, %o1
add   %l4, 1, %l4

P516: !_ST [0] (maybe <- 0xdc) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P517: !_SWAP [6] (maybe <- 0xdd) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %o2, %l3, %l6
srl %l6, 8, %l6
sll %o2, 8, %o2
and %o2, %l3, %o2
or %o2, %l6, %o2
srl %o2, 16, %l6
sll %o2, 16, %o2
srl %o2, 0, %o2
or %o2, %l6, %o2
swapa  [%i2 + 0] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P518: !_SWAP [2] (maybe <- 0xde) (Int)
mov %l4, %l6
swap  [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P519: !_DWLD [0] (Int)
ldx [%i0 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P520: !_MEMBAR (FP)

P521: !_BSTC [19] (maybe <- 0x3f80009b) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P522: !_MEMBAR (FP)
membar #StoreLoad

P523: !_DWST [18] (maybe <- 0xdf) (Int) (LE)
wr %g0, 0x88, %asi
sllx %l4, 32, %o5
add   %l4, 1, %l4
or %o5, %l4, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l3, %l6, %o5
srlx %o5, 8, %o5
sllx %l3, 8, %l3
and %l3, %l6, %l3
or %l3, %o5, %l3 
sethi %hi(0xffff0000), %l6
srlx %l3, 16, %o5
andn %o5, %l6, %o5
andn %l3, %l6, %l3
sllx %l3, 16, %l3
or %l3, %o5, %l3 
srlx %l3, 32, %o5
sllx %l3, 32, %l3
or %l3, %o5, %o5 
stxa %o5, [%i3 + 0 ] %asi
add   %l4, 1, %l4

P524: !_DWLD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P525: !_DWLD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P526: !_REPLACEMENT [1] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
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

P527: !_CASX [15] (maybe <- 0xe1) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P528: !_ST_BINIT [0] (maybe <- 0xe3) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P529: !_MEMBAR (Int)
membar #StoreLoad

P530: !_CAS [6] (maybe <- 0xe4) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET530
nop
RET530:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P531: !_DWST [13] (maybe <- 0xe5) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l6
add   %l4, 1, %l4
or %l6, %l4, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l7, %o5, %l6
srlx %l6, 8, %l6
sllx %l7, 8, %l7
and %l7, %o5, %l7
or %l7, %l6, %l7 
sethi %hi(0xffff0000), %o5
srlx %l7, 16, %l6
andn %l6, %o5, %l6
andn %l7, %o5, %l7
sllx %l7, 16, %l7
or %l7, %l6, %l7 
srlx %l7, 32, %l6
sllx %l7, 32, %l7
or %l7, %l6, %l6 
stxa %l6, [%i3 + 0 ] %asi
add   %l4, 1, %l4

P532: !_DWST [11] (maybe <- 0xe7) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l3 
stx %l3, [%i2 + 8]
add   %l4, 1, %l4

P533: !_CASX [16] (maybe <- 0xe8) (Int) (LE)
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %l7
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l7, %o5
mov  %l6, %l7
casxa [%i3] %asi, %o5, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
add  %l4, 1, %l4

P534: !_ST [21] (maybe <- 0xea) (Int) (Branch target of P396)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
ba P535
nop

TARGET396:
ba RET396
nop


P535: !_DWST_BINIT [19] (maybe <- 0xeb) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i3 + 0] %asi
add   %l4, 1, %l4

P536: !_MEMBAR (Int)

P537: !_BST [6] (maybe <- 0x3f80009e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P538: !_MEMBAR (FP)
membar #StoreLoad

P539: !_SWAP [4] (maybe <- 0xed) (Int) (LE)
wr %g0, 0x88, %asi
mov %l4, %o1
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %o1, %l3, %l6
srl %l6, 8, %l6
sll %o1, 8, %o1
and %o1, %l3, %o1
or %o1, %l6, %o1
srl %o1, 16, %l6
sll %o1, 16, %o1
srl %o1, 0, %o1
or %o1, %l6, %o1
swapa  [%i1 + 4] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P540: !_MEMBAR (FP)

P541: !_BSTC [18] (maybe <- 0x3f8000a1) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P542: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET542
nop
RET542:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P543: !_LDD [3] (Int) (Branch target of P949)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
ba P544
nop

TARGET949:
ba RET949
nop


P544: !_SWAP [16] (maybe <- 0xee) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7
swap  [%i3 + 4], %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P545: !_CAS [23] (maybe <- 0xef) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l3
lduw [%l3], %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P546: !_LDD [23] (Int)
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P547: !_REPLACEMENT [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P548: !_LDD [14] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P549: !_MEMBAR (FP)
membar #StoreLoad

P550: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P551: !_MEMBAR (FP)

P552: !_ST_BINIT [7] (maybe <- 0xf0) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P553: !_MEMBAR (Int)
membar #StoreLoad

P554: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P555: !_MEMBAR (FP)

P556: !_DWST_BINIT [18] (maybe <- 0xf1) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i2 + 0] %asi
add   %l4, 1, %l4

P557: !_MEMBAR (Int)
membar #StoreLoad

P558: !_DWST_BINIT [2] (maybe <- 0xf3) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l7 
stxa %l7, [%i0 + 8] %asi 
add   %l4, 1, %l4

P559: !_MEMBAR (Int)
membar #StoreLoad

P560: !_DWST_BINIT [3] (maybe <- 0xf4) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i1 + 0] %asi
add   %l4, 1, %l4

P561: !_MEMBAR (Int)
membar #StoreLoad

P562: !_LDD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P563: !_MEMBAR (FP)

P564: !_BSTC [6] (maybe <- 0x3f8000a4) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P565: !_MEMBAR (FP)
membar #StoreLoad

P566: !_ST_BINIT [6] (maybe <- 0xf6) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P567: !_MEMBAR (Int)
membar #StoreLoad

P568: !_SWAP [3] (maybe <- 0xf7) (Int)
mov %l4, %o1
swap  [%i1 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P569: !_DWST [6] (maybe <- 0xf8) (Int)
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P570: !_MEMBAR (FP) (Branch target of P482)
ba P571
nop

TARGET482:
ba RET482
nop


P571: !_BST [20] (maybe <- 0x3f8000a7) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P572: !_MEMBAR (FP)
membar #StoreLoad

P573: !_LD [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P574: !_DWST_BINIT [4] (maybe <- 0xfa) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i1 + 0] %asi
add   %l4, 1, %l4

P575: !_MEMBAR (Int)
membar #StoreLoad

P576: !_DWST [3] (maybe <- 0xfc) (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #2
!Logical addr: 3 

sethi %hi(0x200000), %l3
sub   %i1, %l3, %i1
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i1 + 0]
add   %l4, 1, %l4

P577: !_MEMBAR (FP)

P578: !_BSTC [8] (maybe <- 0x3f8000aa) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P579: !_MEMBAR (FP)
membar #StoreLoad

P580: !_SWAP [6] (maybe <- 0xfe) (Int)
mov %l4, %o2
swap  [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P581: !_MEMBAR (FP)

P582: !_BST [6] (maybe <- 0x3f8000ad) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P583: !_MEMBAR (FP)
membar #StoreLoad

P584: !_LDD [19] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P585: !_ST_BINIT [9] (maybe <- 0xff) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P586: !_MEMBAR (Int)
membar #StoreLoad

P587: !_DWST_BINIT [2] (maybe <- 0x100) (Int)
wr %g0, 0xe2, %asi
mov %l4, %o5 
stxa %o5, [%i0 + 8] %asi 
add   %l4, 1, %l4

P588: !_MEMBAR (Int)
membar #StoreLoad

P589: !_DWST [0] (maybe <- 0x101) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i0 + 0]
add   %l4, 1, %l4

P590: !_ST [2] (maybe <- 0x103) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P591: !_MEMBAR (FP)

P592: !_BST [17] (maybe <- 0x3f8000b0) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P593: !_MEMBAR (FP)
membar #StoreLoad

P594: !_ST_BINIT [21] (maybe <- 0x104) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P595: !_MEMBAR (Int)
membar #StoreLoad

P596: !_DWST [12] (maybe <- 0x105) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4

P597: !_CASX [3] (maybe <- 0x107) (Int) (CBR)
ldx [%i1], %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i1], %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET597
nop
RET597:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P598: !_PREFETCH [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 18

P599: !_DWLD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1

P600: !_CASX [18] (maybe <- 0x109) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P601: !_SWAP [12] (maybe <- 0x10b) (Int) (Branch target of P660)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l7
swap  [%i2 + 0], %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4
ba P602
nop

TARGET660:
ba RET660
nop


P602: !_DWLD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P603: !_MEMBAR (FP)
membar #StoreLoad

P604: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P605: !_MEMBAR (FP)

P606: !_SWAP [7] (maybe <- 0x10c) (Int)
mov %l4, %o5
swap  [%i3 + 4], %o5
! move %o5(lower) -> %o4(lower)
srl %o5, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P607: !_ST_BINIT [18] (maybe <- 0x10d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P608: !_MEMBAR (Int)
membar #StoreLoad

P609: !_ST [15] (maybe <- 0x10e) (Int) (CBR) (Branch target of P633)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET609
nop
RET609:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P610
nop

TARGET633:
ba RET633
nop


P610: !_PREFETCH [18] (Int)
prefetch [%i2 + 0], 26

P611: !_PREFETCH [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 22

P612: !_ST_BINIT [23] (maybe <- 0x10f) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P613: !_MEMBAR (Int)
membar #StoreLoad

P614: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P615: !_MEMBAR (FP)

P616: !_DWLD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P617: !_CASX [5] (maybe <- 0x110) (Int)
add %i1, 8, %l6
ldx [%l6], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l3
mov %l4, %o2
casx [%l6], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P618: !_MEMBAR (FP)

P619: !_BSTC [23] (maybe <- 0x3f8000b3) (FP) (Branch target of P822)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P620
nop

TARGET822:
ba RET822
nop


P620: !_MEMBAR (FP)
membar #StoreLoad

P621: !_ST [20] (maybe <- 0x111) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P622: !_ST_BINIT [15] (maybe <- 0x112) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P623: !_MEMBAR (Int)

P624: !_BSTC [21] (maybe <- 0x3f8000b6) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P625: !_MEMBAR (FP)
membar #StoreLoad

P626: !_DWST_BINIT [0] (maybe <- 0x113) (Int) (LE)
wr %g0, 0xea, %asi
sllx %l4, 32, %l3
add   %l4, 1, %l4
or %l3, %l4, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
sllx %l7, 32, %l3
or %l7, %l3, %l7 
and %l6, %l7, %l3
srlx %l3, 8, %l3
sllx %l6, 8, %l6
and %l6, %l7, %l6
or %l6, %l3, %l6 
sethi %hi(0xffff0000), %l7
srlx %l6, 16, %l3
andn %l3, %l7, %l3
andn %l6, %l7, %l6
sllx %l6, 16, %l6
or %l6, %l3, %l6 
srlx %l6, 32, %l3
sllx %l6, 32, %l6
or %l6, %l3, %l3 
stxa %l3, [%i0 + 0 ] %asi
add   %l4, 1, %l4

P627: !_MEMBAR (Int) (LE)
membar #StoreLoad

P628: !_DWST_BINIT [11] (maybe <- 0x115) (Int) (LE)
wr %g0, 0xea, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l6
srl %l6, 8, %l6
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3
srl %l3, 16, %l6
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l6, %l3
sllx %l3, 32, %l3 
stxa %l3, [%i2 + 8 ] %asi
add   %l4, 1, %l4

P629: !_MEMBAR (Int) (LE)

P630: !_BST [15] (maybe <- 0x3f8000b9) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P631: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET631
nop
RET631:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P632: !_CASX [5] (maybe <- 0x116) (Int)
add %i1, 8, %o5
ldx [%o5], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov  %o3, %l7
mov %l4, %o4
casx [%o5], %l7, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P633: !_ST [15] (maybe <- 0x117) (Int) (CBR)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET633
nop
RET633:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P634: !_SWAP [3] (maybe <- 0x118) (Int)
mov %l4, %o0
swap  [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P635: !_MEMBAR (FP)

P636: !_BST [22] (maybe <- 0x3f8000bc) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P637: !_MEMBAR (FP)

P638: !_BST [23] (maybe <- 0x3f8000bf) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P639: !_MEMBAR (FP)
membar #StoreLoad

P640: !_ST [16] (maybe <- 0x119) (Int) (Branch target of P1001)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
ba P641
nop

TARGET1001:
ba RET1001
nop


P641: !_CASX [4] (maybe <- 0x11a) (Int)
ldx [%i1], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i1], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P642: !_DWST_BINIT [16] (maybe <- 0x11c) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P643: !_MEMBAR (Int)
membar #StoreLoad

P644: !_CASX [1] (maybe <- 0x11e) (Int)
ldx [%i0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i0], %l7, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
add  %l4, 1, %l4

P645: !_LDD [3] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P646: !_PREFETCH [4] (Int)
prefetch [%i1 + 4], 22

P647: !_CASX [23] (maybe <- 0x120) (Int)
add %i2, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P648: !_MEMBAR (FP)

P649: !_BSTC [4] (maybe <- 0x3f8000c2) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P650: !_MEMBAR (FP)
membar #StoreLoad

P651: !_LDD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P652: !_MEMBAR (FP)

P653: !_BSTC [4] (maybe <- 0x3f8000c5) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P654: !_MEMBAR (FP)

P655: !_BST [11] (maybe <- 0x3f8000c8) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P656: !_MEMBAR (FP)
membar #StoreLoad

P657: !_CASX [19] (maybe <- 0x121) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l7
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i2], %l7, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P658: !_CAS [10] (maybe <- 0x123) (Int)
add %i3, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P659: !_MEMBAR (FP)

P660: !_BSTC [10] (maybe <- 0x3f8000cb) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET660
nop
RET660:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P661: !_MEMBAR (FP)
membar #StoreLoad

P662: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P663: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET663
nop
RET663:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P664: !_ST_BINIT [8] (maybe <- 0x124) (Int) (LE) (Branch target of P451)
wr %g0, 0xea, %asi
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
stwa   %o5, [%i3 + 12] %asi
add   %l4, 1, %l4
ba P665
nop

TARGET451:
ba RET451
nop


P665: !_MEMBAR (Int) (LE)
membar #StoreLoad

P666: !_LDD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P667: !_SWAP [2] (maybe <- 0x125) (Int)
mov %l4, %o2
swap  [%i0 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P668: !_MEMBAR (FP)

P669: !_BST [15] (maybe <- 0x3f8000ce) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P670: !_MEMBAR (FP)
membar #StoreLoad

P671: !_PREFETCH [0] (Int) (Branch target of P865)
prefetch [%i0 + 0], 20
ba P672
nop

TARGET865:
ba RET865
nop


P672: !_SWAP [22] (maybe <- 0x126) (Int)
mov %l4, %l3
swap  [%i2 + 4], %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P673: !_DWST [16] (maybe <- 0x127) (Int)
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i3 + 0]
add   %l4, 1, %l4

P674: !_LD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P675: !_REPLACEMENT [13] (Int) (Branch target of P988)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
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
ba P676
nop

TARGET988:
ba RET988
nop


P676: !_LDD [4] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P677: !_DWST_BINIT [19] (maybe <- 0x129) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P678: !_MEMBAR (Int)

P679: !_BST [11] (maybe <- 0x3f8000d1) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P680: !_MEMBAR (FP)
membar #StoreLoad

P681: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P682: !_MEMBAR (FP)

P683: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
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
fmovd %f34, %f18
fmovs %f19, %f1

P684: !_MEMBAR (FP)

P685: !_PREFETCH [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 16

P686: !_MEMBAR (FP)

P687: !_BST [2] (maybe <- 0x3f8000d4) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P688: !_MEMBAR (FP)

P689: !_BST [3] (maybe <- 0x3f8000d7) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET689
nop
RET689:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P690: !_MEMBAR (FP)
membar #StoreLoad

P691: !_DWLD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P692: !_MEMBAR (FP)
membar #StoreLoad

P693: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P694: !_MEMBAR (FP)

P695: !_DWST_BINIT [21] (maybe <- 0x12b) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P696: !_MEMBAR (Int)
membar #StoreLoad

P697: !_CAS [14] (maybe <- 0x12d) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P698: !_MEMBAR (FP)

P699: !_BSTC [15] (maybe <- 0x3f8000da) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P700: !_MEMBAR (FP)
membar #StoreLoad

P701: !_DWST [20] (maybe <- 0x12e) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 8]
add   %l4, 1, %l4

P702: !_DWST [14] (maybe <- 0x12f) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l3 
stx %l3, [%i3 + 8]
add   %l4, 1, %l4

P703: !_MEMBAR (FP)
membar #StoreLoad

P704: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P705: !_MEMBAR (FP)

P706: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 22

P707: !_LD [3] (Int)
lduw [%i1 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P708: !_DWST [12] (maybe <- 0x130) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P709: !_SWAP [5] (maybe <- 0x132) (Int)
mov %l4, %o5
swap  [%i1 + 12], %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l6
or %l6, %o1, %o1
add   %l4, 1, %l4

P710: !_MEMBAR (FP)

P711: !_BST [3] (maybe <- 0x3f8000dd) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P712: !_MEMBAR (FP)
membar #StoreLoad

P713: !_REPLACEMENT [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
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

P714: !_MEMBAR (FP)

P715: !_BST [23] (maybe <- 0x3f8000e0) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P716: !_MEMBAR (FP)
membar #StoreLoad

P717: !_LD [18] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P718: !_LDD [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P719: !_ST_BINIT [22] (maybe <- 0x133) (Int) (LE)
wr %g0, 0xea, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
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
stwa   %l3, [%i2 + 4] %asi
add   %l4, 1, %l4

P720: !_MEMBAR (Int) (LE)
membar #StoreLoad

P721: !_SWAP [13] (maybe <- 0x134) (Int)
mov %l4, %l6
swap  [%i3 + 4], %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P722: !_LD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P723: !_DWLD [23] (FP)
ldd [%i2 + 8], %f8
! 1 addresses covered
fmovs %f9, %f8

P724: !_MEMBAR (FP)

P725: !_BSTC [4] (maybe <- 0x3f8000e3) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P726: !_MEMBAR (FP)
membar #StoreLoad

P727: !_SWAP [5] (maybe <- 0x135) (Int)
mov %l4, %l6
swap  [%i1 + 12], %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P728: !_LDD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P729: !_LDD [2] (Int)
ldd [%i0 + 8], %l6
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P730: !_ST_BINIT [22] (maybe <- 0x136) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P731: !_MEMBAR (Int)

P732: !_BST [5] (maybe <- 0x3f8000e6) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P733: !_MEMBAR (FP)
membar #StoreLoad

P734: !_ST_BINIT [4] (maybe <- 0x137) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 4] %asi
add   %l4, 1, %l4

P735: !_MEMBAR (Int)
membar #StoreLoad

P736: !_LDD [20] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P737: !_MEMBAR (FP)

P738: !_BSTC [0] (maybe <- 0x3f8000e9) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P739: !_MEMBAR (FP)
membar #StoreLoad

P740: !_DWST [7] (maybe <- 0x138) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P741: !_CAS [20] (maybe <- 0x13a) (Int)
add %i2, 12, %o5
lduw [%o5], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P742: !_DWST [8] (maybe <- 0x13b) (Int)
mov %l4, %l7 
stx %l7, [%i3 + 8]
add   %l4, 1, %l4

P743: !_LDD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P744: !_LDD [1] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P745: !_DWST [13] (maybe <- 0x13c) (Int) (Branch target of P138)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4
ba P746
nop

TARGET138:
ba RET138
nop


P746: !_DWST [17] (maybe <- 0x13e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 8]
add   %l4, 1, %l4

P747: !_DWLD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P748: !_SWAP [23] (maybe <- 0x13f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7
swap  [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P749: !_LDD [18] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P750: !_DWST_BINIT [15] (maybe <- 0x140) (Int) (Branch target of P293)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4
ba P751
nop

TARGET293:
ba RET293
nop


P751: !_MEMBAR (Int)
membar #StoreLoad

P752: !_CAS [0] (maybe <- 0x142) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
wr %g0, 0x88, %asi
lduwa [%i0] %asi, %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l6, %l7
casa [%i0] %asi, %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P753: !_CASX [13] (maybe <- 0x143) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %o5
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i2], %o5, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P754: !_ST_BINIT [7] (maybe <- 0x145) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P755: !_MEMBAR (Int)
membar #StoreLoad

P756: !_CAS [21] (maybe <- 0x146) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P757: !_LD [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P758: !_DWST [15] (maybe <- 0x147) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P759: !_DWLD [1] (Int)
ldx [%i0 + 0], %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %o5
or %o5, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2

P760: !_PREFETCH [13] (Int)
prefetch [%i3 + 4], 2

P761: !_PREFETCH [16] (Int)
prefetch [%i2 + 4], 1

P762: !_CASX [13] (maybe <- 0x149) (Int) (CBR)
ldx [%i3], %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i3], %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET762
nop
RET762:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P763: !_SWAP [15] (maybe <- 0x14b) (Int)
mov %l4, %l3
swap  [%i2 + 0], %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P764: !_MEMBAR (FP)
membar #StoreLoad

P765: !_BLD [15] (FP) (Branch target of P689)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11
ba P766
nop

TARGET689:
ba RET689
nop


P766: !_MEMBAR (FP)

P767: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P768: !_MEMBAR (FP)

P769: !_ST [6] (maybe <- 0x14c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P770: !_LD [0] (Int)
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P771: !_MEMBAR (FP)

P772: !_BST [9] (maybe <- 0x3f8000ec) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P773: !_MEMBAR (FP) (Branch target of P115)
membar #StoreLoad
ba P774
nop

TARGET115:
ba RET115
nop


P774: !_ST [5] (maybe <- 0x14d) (Int)
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4

P775: !_ST_BINIT [0] (maybe <- 0x14e) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P776: !_MEMBAR (Int)
membar #StoreLoad

P777: !_CASX [15] (maybe <- 0x14f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P778: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P779: !_SWAP [12] (maybe <- 0x151) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o3
swap  [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P780: !_SWAP [10] (maybe <- 0x152) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o5
swap  [%i2 + 4], %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P781: !_ST_BINIT [17] (maybe <- 0x153) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P782: !_MEMBAR (Int)
membar #StoreLoad

P783: !_LDD [10] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P784: !_CAS [0] (maybe <- 0x154) (Int)
lduw [%i0], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i0], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P785: !_DWLD [1] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P786: !_MEMBAR (FP)

P787: !_BSTC [19] (maybe <- 0x3f8000ef) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P788: !_MEMBAR (FP)
membar #StoreLoad

P789: !_LD [8] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P790: !_SWAP [4] (maybe <- 0x155) (Int) (LE)
wr %g0, 0x88, %asi
mov %l4, %l6
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l6, %o5, %l3
srl %l3, 8, %l3
sll %l6, 8, %l6
and %l6, %o5, %l6
or %l6, %l3, %l6
srl %l6, 16, %l3
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %l3, %l6
swapa  [%i1 + 4] %asi, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P791: !_SWAP [12] (maybe <- 0x156) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o3
swap  [%i2 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P792: !_LD [7] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i3 + 4] %asi, %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P793: !_ST_BINIT [18] (maybe <- 0x157) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P794: !_MEMBAR (Int)
membar #StoreLoad

P795: !_LD [13] (Int)
lduw [%i2 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P796: !_PREFETCH [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 21

P797: !_ST_BINIT [19] (maybe <- 0x158) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P798: !_MEMBAR (Int)
membar #StoreLoad

P799: !_CASX [19] (maybe <- 0x159) (Int)
ldx [%i3], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
add  %l4, 1, %l4

P800: !_LDD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P801: !_LDD [18] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P802: !_SWAP [1] (maybe <- 0x15b) (Int)
mov %l4, %l7
swap  [%i0 + 4], %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P803: !_MEMBAR (FP)

P804: !_BST [8] (maybe <- 0x3f8000f2) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P805: !_MEMBAR (FP)
membar #StoreLoad

P806: !_ST_BINIT [7] (maybe <- 0x15c) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P807: !_MEMBAR (Int) (Branch target of P859)
membar #StoreLoad
ba P808
nop

TARGET859:
ba RET859
nop


P808: !_REPLACEMENT [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]

P809: !_LD [16] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
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

P810: !_MEMBAR (FP)

P811: !_BSTC [13] (maybe <- 0x3f8000f5) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P812: !_MEMBAR (FP) (Branch target of P828)
ba P813
nop

TARGET828:
ba RET828
nop


P813: !_BST [9] (maybe <- 0x3f8000f8) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P814: !_MEMBAR (FP)
membar #StoreLoad

P815: !_DWST_BINIT [12] (maybe <- 0x15d) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4

P816: !_MEMBAR (Int)
membar #StoreLoad

P817: !_DWLD [12] (Int) (CBR) (Branch target of P886)
ldx [%i2 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

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

TARGET886:
ba RET886
nop


P818: !_CASX [8] (maybe <- 0x15f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P819: !_MEMBAR (FP)
membar #StoreLoad

P820: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P821: !_MEMBAR (FP)

P822: !_BST [8] (maybe <- 0x3f8000fb) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET822
nop
RET822:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P823: !_MEMBAR (FP)
membar #StoreLoad

P824: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P825: !_MEMBAR (FP)

P826: !_CAS [17] (maybe <- 0x160) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P827: !_MEMBAR (FP)

P828: !_BSTC [23] (maybe <- 0x3f8000fe) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET828
nop
RET828:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P829: !_MEMBAR (FP)

P830: !_BSTC [12] (maybe <- 0x3f800101) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P831: !_MEMBAR (FP)
membar #StoreLoad

P832: !_DWLD [5] (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #3
!Logical addr: 5 

sethi %hi(0x200000), %o5
sub   %i1, %o5, %i1
ldd [%i1 + 8], %f6
! 1 addresses covered
fmovs %f7, %f6

P833: !_DWST [6] (maybe <- 0x161) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P834: !_LD [0] (Int)
lduw [%i0 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P835: !_DWST [15] (maybe <- 0x163) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i3 + 0]
add   %l4, 1, %l4

P836: !_MEMBAR (FP)

P837: !_BSTC [13] (maybe <- 0x3f800104) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P838: !_MEMBAR (FP)
membar #StoreLoad

P839: !_LD [0] (Int)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

P840: !_DWST_BINIT [14] (maybe <- 0x165) (Int) (Branch target of P205)
wr %g0, 0xe2, %asi
mov %l4, %l6 
stxa %l6, [%i2 + 8] %asi 
add   %l4, 1, %l4
ba P841
nop

TARGET205:
ba RET205
nop


P841: !_MEMBAR (Int)
membar #StoreLoad

P842: !_CASX [22] (maybe <- 0x166) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
casx [%i3], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P843: !_PREFETCH [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 2

P844: !_CASX [14] (maybe <- 0x168) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l3
mov %l4, %o2
casx [%l6], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P845: !_MEMBAR (FP)

P846: !_BST [7] (maybe <- 0x3f800107) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET846
nop
RET846:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P847: !_MEMBAR (FP)

P848: !_BSTC [1] (maybe <- 0x3f80010a) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P849: !_MEMBAR (FP)
membar #StoreLoad

P850: !_SWAP [9] (maybe <- 0x169) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o3
swap  [%i2 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P851: !_MEMBAR (FP)

P852: !_BST [8] (maybe <- 0x3f80010d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P853: !_MEMBAR (FP)
membar #StoreLoad

P854: !_DWST [7] (maybe <- 0x16a) (Int)
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i3 + 0]
add   %l4, 1, %l4

P855: !_SWAP [9] (maybe <- 0x16c) (Int)
mov %l4, %l7
swap  [%i2 + 0], %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P856: !_ST [21] (maybe <- 0x16d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P857: !_DWST_BINIT [0] (maybe <- 0x16e) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i0 + 0] %asi
add   %l4, 1, %l4

P858: !_MEMBAR (Int) (Branch target of P133)
membar #StoreLoad
ba P859
nop

TARGET133:
ba RET133
nop


P859: !_DWLD [15] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

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


P860: !_DWST [9] (maybe <- 0x170) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P861: !_DWST_BINIT [22] (maybe <- 0x172) (Int) (Branch target of P663)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4
ba P862
nop

TARGET663:
ba RET663
nop


P862: !_MEMBAR (Int)
membar #StoreLoad

P863: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P864: !_MEMBAR (FP)

P865: !_BST [19] (maybe <- 0x3f800110) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET865
nop
RET865:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P866: !_MEMBAR (FP)
membar #StoreLoad

P867: !_DWLD [18] (FP)
ldd [%i2 + 0], %f10
! 2 addresses covered

P868: !_CASX [18] (maybe <- 0x174) (Int)
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P869: !_CASX [3] (maybe <- 0x176) (Int)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P870: !_LDD [3] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P871: !_LDD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P872: !_PREFETCH [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 28

P873: !_MEMBAR (FP)

P874: !_BST [3] (maybe <- 0x3f800113) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P875: !_MEMBAR (FP)
membar #StoreLoad

P876: !_CAS [4] (maybe <- 0x178) (Int)
add %i1, 4, %l3
lduw [%l3], %o1
mov %o1, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P877: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET877
nop
RET877:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P878: !_BST [0] (maybe <- 0x3f800116) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P879: !_MEMBAR (FP)
membar #StoreLoad

P880: !_DWST [19] (maybe <- 0x179) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P881: !_DWST_BINIT [8] (maybe <- 0x17b) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l7 
stxa %l7, [%i2 + 8] %asi 
add   %l4, 1, %l4

P882: !_MEMBAR (Int)
membar #StoreLoad

P883: !_DWST_BINIT [18] (maybe <- 0x17c) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P884: !_MEMBAR (Int)
membar #StoreLoad

P885: !_ST_BINIT [6] (maybe <- 0x17e) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P886: !_MEMBAR (Int) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET886
nop
RET886:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P887: !_BSTC [12] (maybe <- 0x3f800119) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P888: !_MEMBAR (FP)
membar #StoreLoad

P889: !_ST [14] (maybe <- 0x17f) (Int)
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P890: !_CAS [23] (maybe <- 0x180) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
lduw [%o5], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P891: !_DWST [21] (maybe <- 0x181) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P892: !_ST_BINIT [18] (maybe <- 0x183) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P893: !_MEMBAR (Int)
membar #StoreLoad

P894: !_DWST [0] (maybe <- 0x184) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i0 + 0]
add   %l4, 1, %l4

P895: !_MEMBAR (FP)
membar #StoreLoad

P896: !_BLD [3] (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #0
!Logical addr: 3 

sethi %hi(0x600000), %o5
add   %i1, %o5, %i1
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P897: !_MEMBAR (FP) (Branch target of P542)
ba P898
nop

TARGET542:
ba RET542
nop


P898: !_PREFETCH [0] (Int)
prefetch [%i0 + 0], 3

P899: !_DWLD [19] (FP)
ldd [%i2 + 0], %f18
! 2 addresses covered
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

P900: !_MEMBAR (FP)

P901: !_BSTC [1] (maybe <- 0x3f80011c) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P902: !_MEMBAR (FP)
membar #StoreLoad

P903: !_CAS [1] (maybe <- 0x186) (Int)
add %i0, 4, %l3
lduw [%l3], %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P904: !_MEMBAR (FP)

P905: !_BST [1] (maybe <- 0x3f80011f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P906: !_MEMBAR (FP)
membar #StoreLoad

P907: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

P908: !_MEMBAR (FP)

P909: !_SWAP [16] (maybe <- 0x187) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o4
swap  [%i2 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P910: !_LDD [0] (Int) (Branch target of P487)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
ba P911
nop

TARGET487:
ba RET487
nop


P911: !_LD [10] (Int)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P912: !_SWAP [9] (maybe <- 0x188) (Int)
mov %l4, %o1
swap  [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P913: !_CASX [1] (maybe <- 0x189) (Int)
ldx [%i0], %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i0], %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
add  %l4, 1, %l4

P914: !_ST [23] (maybe <- 0x18b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P915: !_DWST [11] (maybe <- 0x18c) (Int) (Branch target of P23)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l3 
stx %l3, [%i2 + 8]
add   %l4, 1, %l4
ba P916
nop

TARGET23:
ba RET23
nop


P916: !_ST [17] (maybe <- 0x18d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P917: !_CASX [18] (maybe <- 0x18e) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i2], %l7, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
add  %l4, 1, %l4

P918: !_ST_BINIT [11] (maybe <- 0x190) (Int) (LE)
wr %g0, 0xea, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
stwa   %l7, [%i3 + 12] %asi
add   %l4, 1, %l4

P919: !_MEMBAR (Int) (LE)
membar #StoreLoad

P920: !_CASX [20] (maybe <- 0x191) (Int)
add %i2, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P921: !_DWLD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %l6
or %l6, %o2, %o2

P922: !_CAS [16] (maybe <- 0x192) (Int)
add %i2, 4, %l3
lduw [%l3], %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P923: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P924: !_LD [7] (Int)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P925: !_DWLD [0] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P926: !_MEMBAR (FP)
membar #StoreLoad

P927: !_BLD [14] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET927
nop
RET927:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P928: !_MEMBAR (FP)

P929: !_CASX [20] (maybe <- 0x193) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l7
mov %l4, %o2
casx [%o5], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P930: !_ST_BINIT [20] (maybe <- 0x194) (Int) (CBR)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET930
nop
RET930:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P931: !_MEMBAR (Int)
membar #StoreLoad

P932: !_DWLD [5] (Int)
ldx [%i1 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P933: !_ST_BINIT [9] (maybe <- 0x195) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P934: !_MEMBAR (Int)
membar #StoreLoad

P935: !_ST_BINIT [0] (maybe <- 0x196) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P936: !_MEMBAR (Int)
membar #StoreLoad

P937: !_DWST_BINIT [1] (maybe <- 0x197) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i0 + 0] %asi
add   %l4, 1, %l4

P938: !_MEMBAR (Int)
membar #StoreLoad

P939: !_ST_BINIT [21] (maybe <- 0x199) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P940: !_MEMBAR (Int)
membar #StoreLoad

P941: !_PREFETCH [3] (Int)
prefetch [%i1 + 0], 20

P942: !_MEMBAR (FP)
membar #StoreLoad

P943: !_BLD [2] (FP) (Branch target of P258)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9
ba P944
nop

TARGET258:
ba RET258
nop


P944: !_MEMBAR (FP) (Branch target of P817)
ba P945
nop

TARGET817:
ba RET817
nop


P945: !_CASX [7] (maybe <- 0x19a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
add  %l4, 1, %l4

P946: !_ST_BINIT [9] (maybe <- 0x19c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P947: !_MEMBAR (Int)
membar #StoreLoad

P948: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P949: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET949
nop
RET949:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P950: !_ST_BINIT [3] (maybe <- 0x19d) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 0] %asi
add   %l4, 1, %l4

P951: !_MEMBAR (Int)
membar #StoreLoad

P952: !_PREFETCH [18] (Int) (Branch target of P450)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 2
ba P953
nop

TARGET450:
ba RET450
nop


P953: !_DWLD [3] (Int)
ldx [%i1 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P954: !_ST_BINIT [15] (maybe <- 0x19e) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P955: !_MEMBAR (Int)
membar #StoreLoad

P956: !_DWST_BINIT [15] (maybe <- 0x19f) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P957: !_MEMBAR (Int)
membar #StoreLoad

P958: !_ST_BINIT [11] (maybe <- 0x1a1) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P959: !_MEMBAR (Int)
membar #StoreLoad

P960: !_DWLD [0] (Int)
ldx [%i0 + 0], %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %o5
or %o5, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2

P961: !_LD [1] (Int)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P962: !_CASX [19] (maybe <- 0x1a2) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %o5
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i3], %o5, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P963: !_REPLACEMENT [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+12], %l6
st %l6, [%i2+12]
add %i2, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]

P964: !_DWLD [10] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET964
nop
RET964:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P965: !_SWAP [9] (maybe <- 0x1a4) (Int)
mov %l4, %o1
swap  [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P966: !_ST [13] (maybe <- 0x1a5) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P967: !_ST [5] (maybe <- 0x1a6) (Int)
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4

P968: !_CAS [4] (maybe <- 0x1a7) (Int)
add %i1, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
mov %l4, %o2
cas [%o5], %l7, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P969: !_CAS [20] (maybe <- 0x1a8) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
mov %l4, %o3
cas [%o5], %l7, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P970: !_REPLACEMENT [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P971: !_DWLD [3] (Int)
ldx [%i1 + 0], %l7
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %l6
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P972: !_LDD [20] (Int)
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P973: !_ST [18] (maybe <- 0x3f800122) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P974: !_PREFETCH [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 21

P975: !_SWAP [17] (maybe <- 0x1a9) (Int)
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P976: !_PREFETCH [20] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 20

P977: !_DWLD [12] (Int) (Branch target of P877)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
ba P978
nop

TARGET877:
ba RET877
nop


P978: !_ST [0] (maybe <- 0x1aa) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P979: !_DWLD [2] (Int)
ldx [%i0 + 8], %l3
! move %l3(lower) -> %o1(lower)
srl %l3, 0, %o5
or %o5, %o1, %o1

P980: !_LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P981: !_MEMBAR (FP)

P982: !_BST [7] (maybe <- 0x3f800123) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P983: !_MEMBAR (FP)
membar #StoreLoad

P984: !_DWST_BINIT [16] (maybe <- 0x1ab) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i3 + 0] %asi
add   %l4, 1, %l4

P985: !_MEMBAR (Int)
membar #StoreLoad

P986: !_DWST_BINIT [19] (maybe <- 0x1ad) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P987: !_MEMBAR (Int)
membar #StoreLoad

P988: !_DWLD [9] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET988
nop
RET988:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P989: !_DWST [19] (maybe <- 0x1af) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P990: !_DWLD [14] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l7
or %l7, %o3, %o3

P991: !_LDD [20] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P992: !_MEMBAR (FP)

P993: !_BSTC [6] (maybe <- 0x3f800126) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P994: !_MEMBAR (FP)
membar #StoreLoad

P995: !_BLD [11] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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
be,pn  %xcc, TARGET995
nop
RET995:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P996: !_MEMBAR (FP)

P997: !_BSTC [9] (maybe <- 0x3f800129) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P998: !_MEMBAR (FP)
membar #StoreLoad

P999: !_DWLD [11] (Int)
ldx [%i3 + 8], %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1000: !_PREFETCH [12] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 22
loop_exit_0_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_0
nop

P1001: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1001
nop
RET1001:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


END_NODES0: ! Test instruction sequence for CPU 0 ends
sethi %hi(0xdead0e0f), %o5
or    %o5, %lo(0xdead0e0f), %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
sethi %hi(0xdead0e0f), %o5
or    %o5, %lo(0xdead0e0f), %o5
stw %o5, [%i5] 
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
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%i5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%i5+4]
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
sethi %hi(0x01deade1), %l7
or    %l7, %lo(0x01deade1), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x800001), %l4
or    %l4, %lo(0x800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x40000001), %l7
or    %l7, %lo(0x40000001), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x34800000), %l7
or    %l7, %lo(0x34800000), %l7
stw %l7, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x6f2^4
sethi %hi(0x6f2), %l0
or    %l0, %lo(0x6f2), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES1: ! Test instruction sequence for ISTREAM 1 begins

P1002: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_0:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1003: !_MEMBAR (FP)
membar #StoreLoad

P1004: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P1005: !_MEMBAR (FP)

P1006: !_CAS [9] (maybe <- 0x800001) (Int) (Branch target of P1673)
lduw [%i3], %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
mov %l4, %o1
cas [%i3], %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4
ba P1007
nop

TARGET1673:
ba RET1673
nop


P1007: !_LDD [10] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P1008: !_MEMBAR (FP)

P1009: !_BST [0] (maybe <- 0x40000001) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1009
nop
RET1009:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1010: !_MEMBAR (FP)
membar #StoreLoad

P1011: !_DWST_BINIT [22] (maybe <- 0x800002) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P1012: !_MEMBAR (Int)

P1013: !_BST [17] (maybe <- 0x40000004) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1014: !_MEMBAR (FP)
membar #StoreLoad

P1015: !_ST_BINIT [0] (maybe <- 0x800004) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P1016: !_MEMBAR (Int)
membar #StoreLoad

P1017: !_ST [0] (maybe <- 0x40000007) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P1018: !_PREFETCH [0] (Int)
prefetch [%i0 + 0], 22

P1019: !_DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l3
or %l3, %o2, %o2

P1020: !_SWAP [13] (maybe <- 0x800005) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o3
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %o3, %l7, %o5
srl %o5, 8, %o5
sll %o3, 8, %o3
and %o3, %l7, %o3
or %o3, %o5, %o3
srl %o3, 16, %o5
sll %o3, 16, %o3
srl %o3, 0, %o3
or %o3, %o5, %o3
swapa  [%i2 + 4] %asi, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1021: !_DWST_BINIT [7] (maybe <- 0x800006) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P1022: !_MEMBAR (Int)
membar #StoreLoad

P1023: !_CASX [7] (maybe <- 0x800008) (Int)
ldx [%i3], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
add  %l4, 1, %l4

P1024: !_CAS [8] (maybe <- 0x80000a) (Int)
add %i3, 12, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
mov %l4, %o1
cas [%l6], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1025: !_MEMBAR (FP)

P1026: !_BSTC [7] (maybe <- 0x40000008) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1027: !_MEMBAR (FP)
membar #StoreLoad

P1028: !_LD [8] (Int) (Branch target of P1763)
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
ba P1029
nop

TARGET1763:
ba RET1763
nop


P1029: !_LD [23] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1030: !_LDD [23] (Int)
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P1031: !_ST_BINIT [21] (maybe <- 0x80000b) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P1032: !_MEMBAR (Int)
membar #StoreLoad

P1033: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P1034: !_MEMBAR (FP)

P1035: !_BSTC [11] (maybe <- 0x4000000b) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1036: !_MEMBAR (FP)
membar #StoreLoad

P1037: !_CASX [5] (maybe <- 0x80000c) (Int)
add %i1, 8, %o5
ldx [%o5], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov  %o3, %l7
mov %l4, %o4
casx [%o5], %l7, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P1038: !_ST_BINIT [7] (maybe <- 0x80000d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P1039: !_MEMBAR (Int)
membar #StoreLoad

P1040: !_CASX [6] (maybe <- 0x80000e) (Int)
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1041: !_ST_BINIT [1] (maybe <- 0x800010) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P1042: !_MEMBAR (Int)
membar #StoreLoad

P1043: !_LDD [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P1044: !_REPLACEMENT [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P1045: !_CASX [4] (maybe <- 0x800011) (Int)
ldx [%i1], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %o5
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i1], %o5, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P1046: !_CASX [6] (maybe <- 0x800013) (Int) (LE)
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov %l7, %o5
mov  %l6, %l7
casxa [%i2] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4

P1047: !_ST_BINIT [11] (maybe <- 0x800015) (Int) (LE)
wr %g0, 0xea, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
stwa   %o5, [%i3 + 12] %asi
add   %l4, 1, %l4

P1048: !_MEMBAR (Int) (LE)
membar #StoreLoad

P1049: !_LDD [9] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P1050: !_MEMBAR (FP) (Branch target of P1234)
ba P1051
nop

TARGET1234:
ba RET1234
nop


P1051: !_BSTC [6] (maybe <- 0x4000000e) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1052: !_MEMBAR (FP)
membar #StoreLoad

P1053: !_PREFETCH [19] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 3

P1054: !_CAS [7] (maybe <- 0x800016) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P1055: !_LDD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1056: !_DWST [6] (maybe <- 0x40000011) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P1057: !_PREFETCH [8] (Int)
prefetch [%i3 + 12], 4

P1058: !_CASX [20] (maybe <- 0x800017) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1059: !_PREFETCH [3] (Int)
prefetch [%i1 + 0], 2

P1060: !_DWST [2] (maybe <- 0x800018) (Int)
mov %l4, %o5 
stx %o5, [%i0 + 8]
add   %l4, 1, %l4

P1061: !_SWAP [19] (maybe <- 0x800019) (Int)
mov %l4, %o2
swap  [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1062: !_DWST_BINIT [18] (maybe <- 0x80001a) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P1063: !_MEMBAR (Int)
membar #StoreLoad

P1064: !_ST_BINIT [18] (maybe <- 0x80001c) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P1065: !_MEMBAR (Int)
membar #StoreLoad

P1066: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P1067: !_MEMBAR (FP)

P1068: !_LD [17] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f9
! 1 addresses covered

P1069: !_ST_BINIT [6] (maybe <- 0x80001d) (Int) (Branch target of P1652)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4
ba P1070
nop

TARGET1652:
ba RET1652
nop


P1070: !_MEMBAR (Int)
membar #StoreLoad

P1071: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

P1072: !_SWAP [7] (maybe <- 0x80001e) (Int) (LE)
wr %g0, 0x88, %asi
mov %l4, %o3
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %o3, %l6, %l7
srl %l7, 8, %l7
sll %o3, 8, %o3
and %o3, %l6, %o3
or %o3, %l7, %o3
srl %o3, 16, %l7
sll %o3, 16, %o3
srl %o3, 0, %o3
or %o3, %l7, %o3
swapa  [%i2 + 4] %asi, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1073: !_ST [17] (maybe <- 0x80001f) (Int) (Branch target of P1311)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
ba P1074
nop

TARGET1311:
ba RET1311
nop


P1074: !_ST [20] (maybe <- 0x800020) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
stwa   %o5, [%i3 + 12] %asi
add   %l4, 1, %l4

P1075: !_LDD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P1076: !_MEMBAR (FP)

P1077: !_BSTC [10] (maybe <- 0x40000013) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1078: !_MEMBAR (FP)
membar #StoreLoad

P1079: !_DWST [3] (maybe <- 0x800021) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i1 + 0]
add   %l4, 1, %l4

P1080: !_CAS [16] (maybe <- 0x800023) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %o4
mov %o4, %l7
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P1081: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1082: !_CASX [17] (maybe <- 0x800024) (Int)
add %i2, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P1083: !_DWST_BINIT [7] (maybe <- 0x800025) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P1084: !_MEMBAR (Int)
membar #StoreLoad

P1085: !_CAS [9] (maybe <- 0x800027) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %l7
mov %l7, %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
mov %l4, %o3
cas [%i3], %o5, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1086: !_SWAP [19] (maybe <- 0x800028) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 4], %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P1087: !_MEMBAR (FP)
membar #StoreLoad

P1088: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P1089: !_MEMBAR (FP) (Branch target of P1908)
ba P1090
nop

TARGET1908:
ba RET1908
nop


P1090: !_DWLD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1091: !_LD [19] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1092: !_MEMBAR (FP)
membar #StoreLoad

P1093: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P1094: !_MEMBAR (FP)

P1095: !_DWLD [19] (Int)
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1096: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1096
nop
RET1096:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1097: !_BST [3] (maybe <- 0x40000016) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1098: !_MEMBAR (FP)
membar #StoreLoad

P1099: !_CASX [23] (maybe <- 0x800029) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l3
mov %l4, %o2
casx [%l6], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P1100: !_LDD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P1101: !_PREFETCH [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 23

P1102: !_LDD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1103: !_CASX [6] (maybe <- 0x80002a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1104: !_DWST_BINIT [8] (maybe <- 0x80002c) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l3 
stxa %l3, [%i3 + 8] %asi 
add   %l4, 1, %l4

P1105: !_MEMBAR (Int)
membar #StoreLoad

P1106: !_DWLD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1107: !_CAS [17] (maybe <- 0x80002d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o3
mov %o3, %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P1108: !_DWST_BINIT [0] (maybe <- 0x80002e) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i0 + 0] %asi
add   %l4, 1, %l4

P1109: !_MEMBAR (Int)
membar #StoreLoad

P1110: !_DWLD [9] (FP) (Branch target of P1800)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 2 addresses covered
ba P1111
nop

TARGET1800:
ba RET1800
nop


P1111: !_DWST_BINIT [12] (maybe <- 0x800030) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P1112: !_MEMBAR (Int)

P1113: !_BST [18] (maybe <- 0x40000019) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1114: !_MEMBAR (FP)
membar #StoreLoad

P1115: !_DWLD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1116: !_CAS [15] (maybe <- 0x800032) (Int)
lduw [%i3], %o5
mov %o5, %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%i3], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1117: !_CASX [15] (maybe <- 0x800033) (Int)
ldx [%i3], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P1118: !_LD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1119: !_SWAP [4] (maybe <- 0x800035) (Int) (LE)
wr %g0, 0x88, %asi
mov %l4, %o3
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %o3, %l7, %o5
srl %o5, 8, %o5
sll %o3, 8, %o3
and %o3, %l7, %o3
or %o3, %o5, %o3
srl %o3, 16, %o5
sll %o3, 16, %o3
srl %o3, 0, %o3
or %o3, %o5, %o3
swapa  [%i1 + 4] %asi, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1120: !_ST [10] (maybe <- 0x800036) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1121: !_LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1122: !_LDD [10] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1123: !_MEMBAR (FP)

P1124: !_BST [7] (maybe <- 0x4000001c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1125: !_MEMBAR (FP)
membar #StoreLoad

P1126: !_DWLD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1127: !_LDD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P1128: !_MEMBAR (FP)
membar #StoreLoad

P1129: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P1130: !_MEMBAR (FP)

P1131: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P1132: !_MEMBAR (FP)

P1133: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P1134: !_MEMBAR (FP)

P1135: !_SWAP [11] (maybe <- 0x800037) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o2
swap  [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1136: !_CASX [10] (maybe <- 0x800038) (Int)
ldx [%i3], %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
add  %l4, 1, %l4

P1137: !_DWST_BINIT [15] (maybe <- 0x80003a) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P1138: !_MEMBAR (Int)
membar #StoreLoad

P1139: !_DWLD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0

P1140: !_LD [16] (Int)
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1141: !_DWST_BINIT [13] (maybe <- 0x80003c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i2 + 0] %asi
add   %l4, 1, %l4

P1142: !_MEMBAR (Int)
membar #StoreLoad

P1143: !_DWST [4] (maybe <- 0x80003e) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i1 + 0]
add   %l4, 1, %l4

P1144: !_CASX [10] (maybe <- 0x800040) (Int) (Branch target of P1265)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
ba P1145
nop

TARGET1265:
ba RET1265
nop


P1145: !_DWLD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1146: !_LD [4] (Int)
lduw [%i1 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1147: !_DWST [1] (maybe <- 0x4000001f) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P1148: !_LDD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P1149: !_CASX [13] (maybe <- 0x800042) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P1150: !_LDD [12] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P1151: !_MEMBAR (FP)

P1152: !_BSTC [9] (maybe <- 0x40000021) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1153: !_MEMBAR (FP)

P1154: !_BSTC [11] (maybe <- 0x40000024) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1155: !_MEMBAR (FP)

P1156: !_BST [18] (maybe <- 0x40000027) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1157: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1157
nop
RET1157:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1158: !_LDD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P1159: !_MEMBAR (FP)

P1160: !_BST [11] (maybe <- 0x4000002a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1161: !_MEMBAR (FP)

P1162: !_BST [14] (maybe <- 0x4000002d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1163: !_MEMBAR (FP)

P1164: !_BST [8] (maybe <- 0x40000030) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1165: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1165
nop
RET1165:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1166: !_DWST_BINIT [18] (maybe <- 0x800044) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i3 + 0] %asi
add   %l4, 1, %l4

P1167: !_MEMBAR (Int)
membar #StoreLoad

P1168: !_DWLD [23] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f18
! 1 addresses covered
fmovs %f19, %f11

P1169: !_CASX [15] (maybe <- 0x800046) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i3], %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
add  %l4, 1, %l4

P1170: !_DWST [8] (maybe <- 0x40000033) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]

P1171: !_ST [2] (maybe <- 0x800048) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P1172: !_MEMBAR (FP)

P1173: !_BST [6] (maybe <- 0x40000034) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1174: !_MEMBAR (FP) (Branch target of P1278)
membar #StoreLoad
ba P1175
nop

TARGET1278:
ba RET1278
nop


P1175: !_ST_BINIT [10] (maybe <- 0x800049) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P1176: !_MEMBAR (Int)
membar #StoreLoad

P1177: !_SWAP [17] (maybe <- 0x80004a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5
swap  [%i2 + 12], %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l6
or %l6, %o1, %o1
add   %l4, 1, %l4

P1178: !_MEMBAR (FP) (Branch target of P1351)
ba P1179
nop

TARGET1351:
ba RET1351
nop


P1179: !_BSTC [10] (maybe <- 0x40000037) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1180: !_MEMBAR (FP)
membar #StoreLoad

P1181: !_DWST [10] (maybe <- 0x80004b) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P1182: !_PREFETCH [5] (Int)
prefetch [%i1 + 12], 0

P1183: !_CASX [11] (maybe <- 0x80004d) (Int)
add %i3, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P1184: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1185: !_DWST_BINIT [14] (maybe <- 0x80004e) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P1186: !_MEMBAR (Int)
membar #StoreLoad

P1187: !_PREFETCH [18] (Int)
prefetch [%i3 + 0], 4

P1188: !_CAS [4] (maybe <- 0x80004f) (Int)
add %i1, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l3], %o5, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1189: !_MEMBAR (FP)
membar #StoreLoad

P1190: !_BLD [19] (FP) (Branch target of P1215)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14
ba P1191
nop

TARGET1215:
ba RET1215
nop


P1191: !_MEMBAR (FP)

P1192: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
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
fmovd %f34, %f18
fmovs %f19, %f1

P1193: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1193
nop
RET1193:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1194: !_LD [2] (FP)
ld [%i0 + 12], %f2
! 1 addresses covered

P1195: !_REPLACEMENT [13] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
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

P1196: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1197: !_CAS [20] (maybe <- 0x800050) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
lduw [%o5], %o1
mov %o1, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P1198: !_SWAP [21] (maybe <- 0x800051) (Int)
mov %l4, %o2
swap  [%i2 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1199: !_ST [13] (maybe <- 0x800052) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P1200: !_DWST_BINIT [8] (maybe <- 0x800053) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3 
stxa %l3, [%i3 + 8] %asi 
add   %l4, 1, %l4

P1201: !_MEMBAR (Int)
membar #StoreLoad

P1202: !_PREFETCH [0] (Int)
prefetch [%i0 + 0], 20

P1203: !_SWAP [23] (maybe <- 0x800054) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 12], %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P1204: !_SWAP [4] (maybe <- 0x800055) (Int)
mov %l4, %o3
swap  [%i1 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1205: !_CASX [5] (maybe <- 0x800056) (Int)
add %i1, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
add  %l4, 1, %l4

P1206: !_MEMBAR (FP)

P1207: !_BSTC [10] (maybe <- 0x4000003a) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1208: !_MEMBAR (FP)

P1209: !_BST [15] (maybe <- 0x4000003d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1210: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1210
nop
RET1210:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1211: !_DWST [18] (maybe <- 0x800057) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i3 + 0]
add   %l4, 1, %l4

P1212: !_DWST_BINIT [20] (maybe <- 0x800059) (Int)
wr %g0, 0xe2, %asi
mov %l4, %o5 
stxa %o5, [%i3 + 8] %asi 
add   %l4, 1, %l4

P1213: !_MEMBAR (Int)
membar #StoreLoad

P1214: !_DWLD [3] (Int)
ldx [%i1 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1

P1215: !_CAS [17] (maybe <- 0x80005a) (Int) (CBR)
add %i2, 12, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
mov %l4, %o2
cas [%l6], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1215
nop
RET1215:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1216: !_DWST_BINIT [10] (maybe <- 0x80005b) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P1217: !_MEMBAR (Int) (Branch target of P1738)
ba P1218
nop

TARGET1738:
ba RET1738
nop


P1218: !_BST [23] (maybe <- 0x40000040) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1219: !_MEMBAR (FP)
membar #StoreLoad

P1220: !_DWST [12] (maybe <- 0x80005d) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P1221: !_MEMBAR (FP)

P1222: !_BST [7] (maybe <- 0x40000043) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1223: !_MEMBAR (FP)
membar #StoreLoad

P1224: !_PREFETCH [13] (Int)
prefetch [%i2 + 4], 0

P1225: !_REPLACEMENT [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]

P1226: !_ST [6] (maybe <- 0x80005f) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1227: !_SWAP [15] (maybe <- 0x800060) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P1228: !_ST [1] (maybe <- 0x800061) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1229: !_REPLACEMENT [21] (Int)
sethi %hi(0x20000), %l6
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

P1230: !_SWAP [20] (maybe <- 0x800062) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o3
swap  [%i2 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1231: !_LD [13] (Int) (LE) (Branch target of P1334)
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3
ba P1232
nop

TARGET1334:
ba RET1334
nop


P1232: !_MEMBAR (FP)

P1233: !_BST [6] (maybe <- 0x40000046) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1234: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1234
nop
RET1234:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1235: !_DWST_BINIT [0] (maybe <- 0x800063) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i0 + 0] %asi
add   %l4, 1, %l4

P1236: !_MEMBAR (Int)
membar #StoreLoad

P1237: !_PREFETCH [22] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 1

P1238: !_MEMBAR (FP)
membar #StoreLoad

P1239: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P1240: !_MEMBAR (FP)

P1241: !_ST [21] (maybe <- 0x800065) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1242: !_DWST_BINIT [1] (maybe <- 0x800066) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i0 + 0] %asi
add   %l4, 1, %l4

P1243: !_MEMBAR (Int)
membar #StoreLoad

P1244: !_DWST_BINIT [16] (maybe <- 0x800068) (Int) (Branch target of P1942)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4
ba P1245
nop

TARGET1942:
ba RET1942
nop


P1245: !_MEMBAR (Int)
membar #StoreLoad

P1246: !_PREFETCH [23] (Int)
prefetch [%i3 + 12], 23

P1247: !_MEMBAR (FP)

P1248: !_BST [3] (maybe <- 0x40000049) (FP) (Branch target of P1982)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P1249
nop

TARGET1982:
ba RET1982
nop


P1249: !_MEMBAR (FP)
membar #StoreLoad

P1250: !_SWAP [21] (maybe <- 0x80006a) (Int)
mov %l4, %o4
swap  [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1251: !_LD [23] (Int)
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1252: !_ST [23] (maybe <- 0x80006b) (Int)
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1253: !_REPLACEMENT [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P1254: !_LDD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1255: !_ST_BINIT [11] (maybe <- 0x80006c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P1256: !_MEMBAR (Int)
membar #StoreLoad

P1257: !_CAS [22] (maybe <- 0x80006d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P1258: !_ST [17] (maybe <- 0x4000004c) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]

P1259: !_PREFETCH [13] (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 21

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1259
nop
RET1259:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1260: !_ST [8] (maybe <- 0x80006e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1261: !_CAS [15] (maybe <- 0x80006f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%i2], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P1262: !_DWLD [14] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1263: !_DWST [6] (maybe <- 0x800070) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P1264: !_LDD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P1265: !_CASX [13] (maybe <- 0x800072) (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1265
nop
RET1265:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1266: !_REPLACEMENT [22] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
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

P1267: !_PREFETCH [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 2

P1268: !_LDD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P1269: !_SWAP [23] (maybe <- 0x800074) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7
swap  [%i2 + 12], %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P1270: !_SWAP [15] (maybe <- 0x800075) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o3
swap  [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1271: !_DWLD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l7
or %l7, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4

P1272: !_SWAP [12] (maybe <- 0x800076) (Int) (Branch target of P1513)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l7
swap  [%i3 + 0], %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4
ba P1273
nop

TARGET1513:
ba RET1513
nop


P1273: !_DWST [4] (maybe <- 0x800077) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i1 + 0]
add   %l4, 1, %l4

P1274: !_DWST [1] (maybe <- 0x800079) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i0 + 0]
add   %l4, 1, %l4

P1275: !_CAS [15] (maybe <- 0x80007b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i2], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1276: !_LDD [8] (Int) (Branch target of P1780)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
ba P1277
nop

TARGET1780:
ba RET1780
nop


P1277: !_MEMBAR (FP)

P1278: !_BSTC [8] (maybe <- 0x4000004d) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1278
nop
RET1278:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1279: !_MEMBAR (FP)
membar #StoreLoad

P1280: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P1281: !_MEMBAR (FP)

P1282: !_BST [21] (maybe <- 0x40000050) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1283: !_MEMBAR (FP)

P1284: !_BST [23] (maybe <- 0x40000053) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1285: !_MEMBAR (FP)

P1286: !_BSTC [6] (maybe <- 0x40000056) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1287: !_MEMBAR (FP)
membar #StoreLoad

P1288: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P1289: !_MEMBAR (FP)

P1290: !_BSTC [7] (maybe <- 0x40000059) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1290
nop
RET1290:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1291: !_MEMBAR (FP)
membar #StoreLoad

P1292: !_ST_BINIT [21] (maybe <- 0x80007c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P1293: !_MEMBAR (Int)
membar #StoreLoad

P1294: !_ST_BINIT [23] (maybe <- 0x80007d) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P1295: !_MEMBAR (Int)

P1296: !_BSTC [10] (maybe <- 0x4000005c) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1297: !_MEMBAR (FP)
membar #StoreLoad

P1298: !_LDD [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P1299: !_CAS [17] (maybe <- 0x80007e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P1300: !_DWLD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1301: !_CASX [22] (maybe <- 0x80007f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1302: !_MEMBAR (FP)

P1303: !_BSTC [2] (maybe <- 0x4000005f) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1304: !_MEMBAR (FP)
membar #StoreLoad

P1305: !_PREFETCH [5] (Int)
prefetch [%i1 + 12], 19

P1306: !_LDD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P1307: !_CAS [16] (maybe <- 0x800081) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P1308: !_DWLD [10] (Int)
ldx [%i2 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1309: !_MEMBAR (FP)
membar #StoreLoad

P1310: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P1311: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1311
nop
RET1311:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1312: !_ST_BINIT [2] (maybe <- 0x800082) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 12] %asi
add   %l4, 1, %l4

P1313: !_MEMBAR (Int)
membar #StoreLoad

P1314: !_DWST_BINIT [20] (maybe <- 0x800083) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7 
stxa %l7, [%i2 + 8] %asi 
add   %l4, 1, %l4

P1315: !_MEMBAR (Int)
membar #StoreLoad

P1316: !_DWST [14] (maybe <- 0x800084) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l6 
stx %l6, [%i3 + 8]
add   %l4, 1, %l4

P1317: !_LDD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1318: !_MEMBAR (FP)

P1319: !_BSTC [19] (maybe <- 0x40000062) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1320: !_MEMBAR (FP)
membar #StoreLoad

P1321: !_BLD [5] (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0x200000), %o5
sub   %i1, %o5, %i1
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P1322: !_MEMBAR (FP)

P1323: !_BSTC [15] (maybe <- 0x40000065) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1324: !_MEMBAR (FP)
membar #StoreLoad

P1325: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
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
fmovd %f34, %f18
fmovs %f19, %f1

P1326: !_MEMBAR (FP)

P1327: !_ST_BINIT [1] (maybe <- 0x800085) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P1328: !_MEMBAR (Int)
membar #StoreLoad

P1329: !_DWST [14] (maybe <- 0x800086) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l7 
stx %l7, [%i2 + 8]
add   %l4, 1, %l4

P1330: !_CASX [4] (maybe <- 0x800087) (Int)
ldx [%i1], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i1], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P1331: !_ST [21] (maybe <- 0x800089) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1332: !_CAS [21] (maybe <- 0x80008a) (Int)
lduw [%i3], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P1333: !_SWAP [11] (maybe <- 0x80008b) (Int) (Branch target of P1427)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o4
swap  [%i2 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4
ba P1334
nop

TARGET1427:
ba RET1427
nop


P1334: !_DWLD [11] (FP) (CBR)
ldd [%i2 + 8], %f2
! 1 addresses covered
fmovs %f3, %f2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1334
nop
RET1334:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1335: !_LD [3] (Int)
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1336: !_REPLACEMENT [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
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

P1337: !_CAS [8] (maybe <- 0x80008c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1338: !_DWST_BINIT [15] (maybe <- 0x80008d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P1339: !_MEMBAR (Int)
membar #StoreLoad

P1340: !_DWST [5] (maybe <- 0x40000068) (FP)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 8]

P1341: !_SWAP [17] (maybe <- 0x80008f) (Int)
mov %l4, %o1
swap  [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1342: !_DWST_BINIT [22] (maybe <- 0x800090) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4

P1343: !_MEMBAR (Int)
membar #StoreLoad

P1344: !_LD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P1345: !_MEMBAR (FP)
membar #StoreLoad

P1346: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P1347: !_MEMBAR (FP)

P1348: !_LD [0] (Int)
lduw [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1349: !_LDD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P1350: !_CAS [2] (maybe <- 0x800092) (Int)
add %i0, 12, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3
mov %l4, %o4
cas [%l6], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1351: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1351
nop
RET1351:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1352: !_BSTC [19] (maybe <- 0x40000069) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1353: !_MEMBAR (FP)
membar #StoreLoad

P1354: !_SWAP [15] (maybe <- 0x800093) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7
swap  [%i2 + 0], %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P1355: !_SWAP [23] (maybe <- 0x800094) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1356: !_DWLD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l7
or %l7, %o0, %o0

P1357: !_PREFETCH [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 4

P1358: !_MEMBAR (FP)

P1359: !_BST [12] (maybe <- 0x4000006c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1360: !_MEMBAR (FP)
membar #StoreLoad

P1361: !_LDD [22] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P1362: !_ST [6] (maybe <- 0x800095) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1363: !_PREFETCH [3] (Int)
prefetch [%i1 + 0], 31

P1364: !_DWST_BINIT [15] (maybe <- 0x800096) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P1365: !_MEMBAR (Int)
membar #StoreLoad

P1366: !_DWLD [4] (Int)
ldx [%i1 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1367: !_CAS [1] (maybe <- 0x800098) (Int)
add %i0, 4, %l6
lduw [%l6], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P1368: !_DWLD [15] (FP)
ldd [%i3 + 0], %f6
! 2 addresses covered

P1369: !_ST_BINIT [11] (maybe <- 0x800099) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P1370: !_MEMBAR (Int)

P1371: !_BST [14] (maybe <- 0x4000006f) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1372: !_MEMBAR (FP)
membar #StoreLoad

P1373: !_CAS [6] (maybe <- 0x80009a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o4
mov %o4, %l7
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P1374: !_SWAP [15] (maybe <- 0x80009b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1375: !_REPLACEMENT [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]

P1376: !_ST_BINIT [22] (maybe <- 0x80009c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P1377: !_MEMBAR (Int)
membar #StoreLoad

P1378: !_DWST_BINIT [21] (maybe <- 0x80009d) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P1379: !_MEMBAR (Int)
membar #StoreLoad

P1380: !_DWLD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1

P1381: !_ST [0] (maybe <- 0x80009f) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1382: !_ST_BINIT [22] (maybe <- 0x8000a0) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P1383: !_MEMBAR (Int)
membar #StoreLoad

P1384: !_ST [18] (maybe <- 0x8000a1) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1385: !_MEMBAR (FP)

P1386: !_BSTC [0] (maybe <- 0x40000072) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1387: !_MEMBAR (FP)
membar #StoreLoad

P1388: !_ST [12] (maybe <- 0x8000a2) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1389: !_MEMBAR (FP)

P1390: !_BST [0] (maybe <- 0x40000075) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1391: !_MEMBAR (FP)
membar #StoreLoad

P1392: !_LD [2] (Int)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P1393: !_CAS [15] (maybe <- 0x8000a3) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P1394: !_LD [12] (Int)
lduw [%i2 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1395: !_MEMBAR (FP)
membar #StoreLoad

P1396: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P1397: !_MEMBAR (FP)

P1398: !_LDD [6] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P1399: !_MEMBAR (FP)
membar #StoreLoad

P1400: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P1401: !_MEMBAR (FP)

P1402: !_SWAP [10] (maybe <- 0x8000a4) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l7
swap  [%i2 + 4], %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P1403: !_LDD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1404: !_CAS [6] (maybe <- 0x8000a5) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P1405: !_DWST_BINIT [1] (maybe <- 0x8000a6) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i0 + 0] %asi
add   %l4, 1, %l4

P1406: !_MEMBAR (Int)
membar #StoreLoad

P1407: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 22

P1408: !_ST [16] (maybe <- 0x8000a8) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1409: !_DWST [3] (maybe <- 0x8000a9) (Int) (CBR)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i1 + 0]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1409
nop
RET1409:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1410: !_MEMBAR (FP)
membar #StoreLoad

P1411: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
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
fmovd %f34, %f18
fmovs %f19, %f0

P1412: !_MEMBAR (FP)

P1413: !_DWST [7] (maybe <- 0x8000ab) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P1414: !_SWAP [18] (maybe <- 0x8000ad) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o2
swap  [%i2 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1415: !_ST [1] (maybe <- 0x8000ae) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1416: !_ST [12] (maybe <- 0x40000078) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P1417: !_ST [22] (maybe <- 0x8000af) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P1418: !_PREFETCH [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 21

P1419: !_DWLD [0] (Int)
ldx [%i0 + 0], %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %l6
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P1420: !_CAS [14] (maybe <- 0x8000b0) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3
mov %l4, %o4
cas [%l3], %o5, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1421: !_MEMBAR (FP)

P1422: !_BSTC [8] (maybe <- 0x40000079) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1423: !_MEMBAR (FP)
membar #StoreLoad

P1424: !_CAS [9] (maybe <- 0x8000b1) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %l6
mov %l6, %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%i2], %l7, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1425: !_MEMBAR (FP)

P1426: !_BST [14] (maybe <- 0x4000007c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1427: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1427
nop
RET1427:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1428: !_ST_BINIT [17] (maybe <- 0x8000b2) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P1429: !_MEMBAR (Int)
membar #StoreLoad

P1430: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P1431: !_CASX [11] (maybe <- 0x8000b3) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
add  %l4, 1, %l4

P1432: !_DWLD [9] (FP)
ldd [%i2 + 0], %f18
! 2 addresses covered
fmovs %f18, %f1
fmovs %f19, %f2

P1433: !_MEMBAR (FP)

P1434: !_BST [11] (maybe <- 0x4000007f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1435: !_MEMBAR (FP)
membar #StoreLoad

P1436: !_SWAP [4] (maybe <- 0x8000b4) (Int)
mov %l4, %l3
swap  [%i1 + 4], %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P1437: !_DWLD [1] (Int)
ldx [%i0 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1438: !_ST [17] (maybe <- 0x8000b5) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1439: !_REPLACEMENT [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
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

P1440: !_MEMBAR (FP)
membar #StoreLoad

P1441: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P1442: !_MEMBAR (FP)

P1443: !_BSTC [22] (maybe <- 0x40000082) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1444: !_MEMBAR (FP)

P1445: !_BST [20] (maybe <- 0x40000085) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1446: !_MEMBAR (FP)
membar #StoreLoad

P1447: !_PREFETCH [14] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 20

P1448: !_PREFETCH [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 0

P1449: !_LDD [0] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1450: !_DWST_BINIT [4] (maybe <- 0x8000b6) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i1 + 0] %asi
add   %l4, 1, %l4

P1451: !_MEMBAR (Int) (Branch target of P2003)
ba P1452
nop

TARGET2003:
ba RET2003
nop


P1452: !_BST [8] (maybe <- 0x40000088) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1453: !_MEMBAR (FP)
membar #StoreLoad

P1454: !_SWAP [9] (maybe <- 0x8000b8) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o1
swap  [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1455: !_REPLACEMENT [1] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
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

P1456: !_MEMBAR (FP)

P1457: !_BST [5] (maybe <- 0x4000008b) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1458: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1458
nop
RET1458:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1459: !_BST [1] (maybe <- 0x4000008e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1460: !_MEMBAR (FP)
membar #StoreLoad

P1461: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P1462: !_MEMBAR (FP)

P1463: !_BST [13] (maybe <- 0x40000091) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1464: !_MEMBAR (FP)
membar #StoreLoad

P1465: !_DWST [9] (maybe <- 0x40000094) (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P1466: !_MEMBAR (FP)

P1467: !_BST [4] (maybe <- 0x40000096) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1468: !_MEMBAR (FP)
membar #StoreLoad

P1469: !_PREFETCH [5] (Int)
prefetch [%i1 + 12], 22

P1470: !_LD [16] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f6
! 1 addresses covered

P1471: !_SWAP [15] (maybe <- 0x8000b9) (Int)
mov %l4, %o2
swap  [%i2 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1472: !_SWAP [18] (maybe <- 0x8000ba) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5
swap  [%i3 + 0], %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P1473: !_CASX [17] (maybe <- 0x8000bb) (Int)
add %i2, 8, %l6
ldx [%l6], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov  %o3, %l3
mov %l4, %o4
casx [%l6], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P1474: !_SWAP [14] (maybe <- 0x8000bc) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1475: !_DWLD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P1476: !_DWST [6] (maybe <- 0x8000bd) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P1477: !_DWST_BINIT [19] (maybe <- 0x8000bf) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P1478: !_MEMBAR (Int)
membar #StoreLoad

P1479: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P1480: !_MEMBAR (FP)

P1481: !_CASX [17] (maybe <- 0x8000c1) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
sllx %l6, 32, %l6
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldxa [%l3] %asi, %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %o5
or %o5, %o1, %o1
! move %l7(upper) -> %o2(upper)
or %l7, %g0, %o2
mov  %l7, %o5
mov  %l6, %l7
casxa [%l3] %asi, %o5, %l7
! move %l7(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srl %l7, 0, %o5
or %o5, %o2, %o2
! move %l7(upper) -> %o3(upper)
or %l7, %g0, %o3
add  %l4, 1, %l4

P1482: !_REPLACEMENT [3] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %o5
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

P1483: !_ST [10] (maybe <- 0x40000099) (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P1484: !_MEMBAR (FP)
membar #StoreLoad

P1485: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P1486: !_MEMBAR (FP)

P1487: !_CASX [7] (maybe <- 0x8000c2) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
add  %l4, 1, %l4

P1488: !_ST_BINIT [6] (maybe <- 0x8000c4) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P1489: !_MEMBAR (Int)
membar #StoreLoad

P1490: !_DWST_BINIT [13] (maybe <- 0x8000c5) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P1491: !_MEMBAR (Int)
membar #StoreLoad

P1492: !_REPLACEMENT [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
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

P1493: !_DWLD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l7
or %l7, %o0, %o0

P1494: !_MEMBAR (FP)

P1495: !_BSTC [18] (maybe <- 0x4000009a) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1496: !_MEMBAR (FP)
membar #StoreLoad

P1497: !_ST [19] (maybe <- 0x8000c7) (Int)
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P1498: !_ST [12] (maybe <- 0x8000c8) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1499: !_CASX [5] (maybe <- 0x8000c9) (Int)
add %i1, 8, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l6
mov %l4, %o2
casx [%l7], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P1500: !_REPLACEMENT [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]

P1501: !_MEMBAR (FP)

P1502: !_BST [2] (maybe <- 0x4000009d) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1503: !_MEMBAR (FP)
membar #StoreLoad

P1504: !_SWAP [3] (maybe <- 0x8000ca) (Int) (Branch target of P1157)
mov %l4, %o3
swap  [%i1 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4
ba P1505
nop

TARGET1157:
ba RET1157
nop


P1505: !_ST_BINIT [10] (maybe <- 0x8000cb) (Int) (Branch target of P1733)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4
ba P1506
nop

TARGET1733:
ba RET1733
nop


P1506: !_MEMBAR (Int)
membar #StoreLoad

P1507: !_LDD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P1508: !_DWLD [5] (Int)
ldx [%i1 + 8], %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1509: !_DWLD [14] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1510: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
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

P1511: !_ST [15] (maybe <- 0x8000cc) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1512: !_LD [3] (Int)
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P1513: !_PREFETCH [3] (Int) (CBR)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #2
!Logical addr: 3 

sethi %hi(0x200000), %l3
sub   %i1, %l3, %i1
prefetch [%i1 + 0], 22

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1513
nop
RET1513:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1514: !_MEMBAR (FP)

P1515: !_BSTC [2] (maybe <- 0x400000a0) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1516: !_MEMBAR (FP)

P1517: !_BSTC [12] (maybe <- 0x400000a3) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1518: !_MEMBAR (FP)

P1519: !_BSTC [3] (maybe <- 0x400000a6) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1520: !_MEMBAR (FP)
membar #StoreLoad

P1521: !_ST [2] (maybe <- 0x400000a9) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]

P1522: !_MEMBAR (FP)
membar #StoreLoad

P1523: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P1524: !_MEMBAR (FP) (Branch target of P1096)
ba P1525
nop

TARGET1096:
ba RET1096
nop


P1525: !_ST [21] (maybe <- 0x8000cd) (Int) (Branch target of P1623)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
ba P1526
nop

TARGET1623:
ba RET1623
nop


P1526: !_LDD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P1527: !_MEMBAR (FP) (Branch target of P1723)
ba P1528
nop

TARGET1723:
ba RET1723
nop


P1528: !_BSTC [3] (maybe <- 0x400000aa) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1529: !_MEMBAR (FP)

P1530: !_BST [12] (maybe <- 0x400000ad) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1531: !_MEMBAR (FP)
membar #StoreLoad

P1532: !_ST [6] (maybe <- 0x8000ce) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1533: !_MEMBAR (FP)
membar #StoreLoad

P1534: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P1535: !_MEMBAR (FP)

P1536: !_SWAP [5] (maybe <- 0x8000cf) (Int)
mov %l4, %o2
swap  [%i1 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1537: !_CASX [18] (maybe <- 0x8000d0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
add  %l4, 1, %l4

P1538: !_ST_BINIT [14] (maybe <- 0x8000d2) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P1539: !_MEMBAR (Int)
membar #StoreLoad

P1540: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1541: !_CASX [11] (maybe <- 0x8000d3) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1542: !_MEMBAR (FP)

P1543: !_BSTC [8] (maybe <- 0x400000b0) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1544: !_MEMBAR (FP)
membar #StoreLoad

P1545: !_DWLD [1] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1546: !_REPLACEMENT [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
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

P1547: !_DWST [10] (maybe <- 0x400000b3) (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P1548: !_MEMBAR (FP)

P1549: !_BST [19] (maybe <- 0x400000b5) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1550: !_MEMBAR (FP)
membar #StoreLoad

P1551: !_LDD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P1552: !_MEMBAR (FP)

P1553: !_BSTC [18] (maybe <- 0x400000b8) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1554: !_MEMBAR (FP)

P1555: !_BST [3] (maybe <- 0x400000bb) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1556: !_MEMBAR (FP)
membar #StoreLoad

P1557: !_LDD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P1558: !_REPLACEMENT [6] (Int) (Branch target of P1193)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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
ba P1559
nop

TARGET1193:
ba RET1193
nop


P1559: !_MEMBAR (FP) (Branch target of P1409)
ba P1560
nop

TARGET1409:
ba RET1409
nop


P1560: !_BSTC [15] (maybe <- 0x400000be) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1561: !_MEMBAR (FP)

P1562: !_BSTC [13] (maybe <- 0x400000c1) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1563: !_MEMBAR (FP)
membar #StoreLoad

P1564: !_CAS [9] (maybe <- 0x8000d4) (Int) (Branch target of P1660)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %l3
mov %l3, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%i2], %l6, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4
ba P1565
nop

TARGET1660:
ba RET1660
nop


P1565: !_ST [17] (maybe <- 0x8000d5) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1566: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1567: !_LD [19] (Int)
lduw [%i2 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1568: !_CASX [1] (maybe <- 0x8000d6) (Int) (CBR)
ldx [%i0], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i0], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

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


P1569: !_ST_BINIT [11] (maybe <- 0x8000d8) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P1570: !_MEMBAR (Int)
membar #StoreLoad

P1571: !_SWAP [11] (maybe <- 0x8000d9) (Int)
mov %l4, %l7
swap  [%i3 + 12], %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P1572: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1573: !_MEMBAR (FP)
membar #StoreLoad

P1574: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P1575: !_MEMBAR (FP)

P1576: !_DWLD [18] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f6
! 2 addresses covered

P1577: !_ST [1] (maybe <- 0x8000da) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1578: !_CAS [8] (maybe <- 0x8000db) (Int)
add %i2, 12, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l7], %l6, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1579: !_SWAP [16] (maybe <- 0x8000dc) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5
swap  [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1580: !_ST_BINIT [23] (maybe <- 0x8000dd) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P1581: !_MEMBAR (Int) (Branch target of P1458)
membar #StoreLoad
ba P1582
nop

TARGET1458:
ba RET1458
nop


P1582: !_DWLD [1] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1583: !_PREFETCH [17] (Int)
prefetch [%i2 + 12], 21

P1584: !_LD [3] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i1 + 0] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1585: !_ST [17] (maybe <- 0x8000de) (Int)
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P1586: !_CAS [21] (maybe <- 0x8000df) (Int)
lduw [%i3], %l6
mov %l6, %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
mov %l4, %o3
cas [%i3], %l7, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1587: !_MEMBAR (FP)

P1588: !_BSTC [3] (maybe <- 0x400000c4) (FP) (Branch target of P1929)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P1589
nop

TARGET1929:
ba RET1929
nop


P1589: !_MEMBAR (FP)
membar #StoreLoad

P1590: !_CAS [15] (maybe <- 0x8000e0) (Int) (CBR)
lduw [%i2], %l3
mov %l3, %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
mov %l4, %o4
cas [%i2], %l6, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1590
nop
RET1590:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1591: !_ST_BINIT [7] (maybe <- 0x8000e1) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P1592: !_MEMBAR (Int)
membar #StoreLoad

P1593: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P1594: !_MEMBAR (FP) (Branch target of P1165)
ba P1595
nop

TARGET1165:
ba RET1165
nop


P1595: !_LDD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P1596: !_ST [22] (maybe <- 0x8000e2) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1597: !_CAS [7] (maybe <- 0x8000e3) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1598: !_CAS [22] (maybe <- 0x8000e4) (Int)
add %i3, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
mov %l4, %o2
cas [%l3], %o5, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1599: !_LD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

P1600: !_DWST_BINIT [1] (maybe <- 0x8000e5) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i0 + 0] %asi
add   %l4, 1, %l4

P1601: !_MEMBAR (Int)
membar #StoreLoad

P1602: !_DWST_BINIT [15] (maybe <- 0x8000e7) (Int) (Branch target of P1840)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4
ba P1603
nop

TARGET1840:
ba RET1840
nop


P1603: !_MEMBAR (Int)
membar #StoreLoad

P1604: !_DWST [2] (maybe <- 0x8000e9) (Int)
mov %l4, %o5 
stx %o5, [%i0 + 8]
add   %l4, 1, %l4

P1605: !_MEMBAR (FP)

P1606: !_BST [19] (maybe <- 0x400000c7) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1607: !_MEMBAR (FP)
membar #StoreLoad

P1608: !_LDD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P1609: !_ST_BINIT [0] (maybe <- 0x8000ea) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P1610: !_MEMBAR (Int)
membar #StoreLoad

P1611: !_LD [19] (FP)
ld [%i3 + 4], %f11
! 1 addresses covered

P1612: !_PREFETCH [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 2

P1613: !_PREFETCH [14] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 2

P1614: !_SWAP [7] (maybe <- 0x8000eb) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6
swap  [%i3 + 4], %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P1615: !_DWST_BINIT [7] (maybe <- 0x8000ec) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i3 + 0] %asi
add   %l4, 1, %l4

P1616: !_MEMBAR (Int)
membar #StoreLoad

P1617: !_DWLD [7] (Int)
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1618: !_LDD [5] (Int) (LE)
wr %g0, 0x88, %asi
ldda [%i1 + 8] %asi, %l6
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P1619: !_DWST [4] (maybe <- 0x400000ca) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 0]

P1620: !_DWST_BINIT [17] (maybe <- 0x8000ee) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stxa %o5, [%i2 + 8] %asi 
add   %l4, 1, %l4

P1621: !_MEMBAR (Int)
membar #StoreLoad

P1622: !_DWLD [2] (Int)
ldx [%i0 + 8], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l7
or %l7, %o0, %o0

P1623: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1623
nop
RET1623:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1624: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P1625: !_MEMBAR (FP)

P1626: !_LDD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P1627: !_MEMBAR (FP)

P1628: !_BSTC [20] (maybe <- 0x400000cc) (FP) (Branch target of P1568)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P1629
nop

TARGET1568:
ba RET1568
nop


P1629: !_MEMBAR (FP)
membar #StoreLoad

P1630: !_LD [16] (Int)
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1631: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1631
nop
RET1631:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1632: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
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
fmovd %f34, %f18
fmovs %f19, %f1

P1633: !_MEMBAR (FP) (Branch target of P1841)
ba P1634
nop

TARGET1841:
ba RET1841
nop


P1634: !_CAS [4] (maybe <- 0x8000ef) (Int)
add %i1, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
mov %l4, %o3
cas [%o5], %l7, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1635: !_ST_BINIT [1] (maybe <- 0x8000f0) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P1636: !_MEMBAR (Int)

P1637: !_BSTC [9] (maybe <- 0x400000cf) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1638: !_MEMBAR (FP)
membar #StoreLoad

P1639: !_CASX [6] (maybe <- 0x8000f1) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
add  %l4, 1, %l4

P1640: !_PREFETCH [0] (Int)
prefetch [%i0 + 0], 19

P1641: !_SWAP [1] (maybe <- 0x8000f3) (Int)
mov %l4, %o5
swap  [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1642: !_MEMBAR (FP)

P1643: !_BST [5] (maybe <- 0x400000d2) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1644: !_MEMBAR (FP)
membar #StoreLoad

P1645: !_ST [18] (maybe <- 0x8000f4) (Int) (Branch target of P1631)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
ba P1646
nop

TARGET1631:
ba RET1631
nop


P1646: !_PREFETCH [13] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 20

P1647: !_CASX [18] (maybe <- 0x8000f5) (Int) (LE)
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
sllx %l7, 32, %l3
or %l7, %l3, %l7 
and %o5, %l7, %l3
srlx %l3, 8, %l3
sllx %o5, 8, %o5
and %o5, %l7, %o5
or %o5, %l3, %o5 
sethi %hi(0xffff0000), %l7
srlx %o5, 16, %l3
andn %l3, %l7, %l3
andn %o5, %l7, %o5
sllx %o5, 16, %o5
or %o5, %l3, %o5 
srlx %o5, 32, %l3
sllx %o5, 32, %o5
or %o5, %l3, %l3 
wr %g0, 0x88, %asi
ldxa [%i2] %asi, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
mov %l6, %l7
mov  %l3, %l6
casxa [%i2] %asi, %l7, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
add  %l4, 1, %l4

P1648: !_DWST [0] (maybe <- 0x8000f7) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i0 + 0]
add   %l4, 1, %l4

P1649: !_ST_BINIT [13] (maybe <- 0x8000f9) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P1650: !_MEMBAR (Int)
membar #StoreLoad

P1651: !_CASX [18] (maybe <- 0x8000fa) (Int)
ldx [%i2], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i2], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P1652: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1652
nop
RET1652:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1653: !_BST [12] (maybe <- 0x400000d5) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1654: !_MEMBAR (FP)
membar #StoreLoad

P1655: !_ST_BINIT [11] (maybe <- 0x8000fc) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P1656: !_MEMBAR (Int)
membar #StoreLoad

P1657: !_ST_BINIT [14] (maybe <- 0x8000fd) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P1658: !_MEMBAR (Int)
membar #StoreLoad

P1659: !_ST [21] (maybe <- 0x8000fe) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1660: !_REPLACEMENT [12] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
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
be,pt  %xcc, TARGET1660
nop
RET1660:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1661: !_CAS [1] (maybe <- 0x8000ff) (Int)
add %i0, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1662: !_MEMBAR (FP)

P1663: !_BSTC [4] (maybe <- 0x400000d8) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1664: !_MEMBAR (FP)
membar #StoreLoad

P1665: !_DWLD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1666: !_LD [3] (Int)
lduw [%i1 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1667: !_DWST_BINIT [4] (maybe <- 0x800100) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i1 + 0] %asi
add   %l4, 1, %l4

P1668: !_MEMBAR (Int)
membar #StoreLoad

P1669: !_DWST [3] (maybe <- 0x800102) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i1 + 0]
add   %l4, 1, %l4

P1670: !_DWST [1] (maybe <- 0x800104) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i0 + 0]
add   %l4, 1, %l4

P1671: !_MEMBAR (FP)

P1672: !_BSTC [5] (maybe <- 0x400000db) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P1673: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1673
nop
RET1673:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1674: !_DWLD [3] (Int)
ldx [%i1 + 0], %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %l6
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P1675: !_DWST_BINIT [2] (maybe <- 0x800106) (Int)
wr %g0, 0xe2, %asi
mov %l4, %o5 
stxa %o5, [%i0 + 8] %asi 
add   %l4, 1, %l4

P1676: !_MEMBAR (Int) (Branch target of P1813)
membar #StoreLoad
ba P1677
nop

TARGET1813:
ba RET1813
nop


P1677: !_ST_BINIT [1] (maybe <- 0x800107) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P1678: !_MEMBAR (Int)
membar #StoreLoad

P1679: !_LD [3] (Int)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P1680: !_MEMBAR (FP)
membar #StoreLoad

P1681: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P1682: !_MEMBAR (FP)

P1683: !_DWLD [18] (Int)
ldx [%i2 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1684: !_LD [5] (Int)
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1685: !_LDD [14] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1686: !_ST [15] (maybe <- 0x800108) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1687: !_PREFETCH [13] (Int)
prefetch [%i3 + 4], 0

P1688: !_ST_BINIT [6] (maybe <- 0x800109) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P1689: !_MEMBAR (Int)
membar #StoreLoad

P1690: !_DWLD [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1691: !_LD [14] (Int)
lduw [%i2 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1692: !_MEMBAR (FP) (Branch target of P2002)
ba P1693
nop

TARGET2002:
ba RET2002
nop


P1693: !_BST [2] (maybe <- 0x400000de) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1694: !_MEMBAR (FP)

P1695: !_BST [6] (maybe <- 0x400000e1) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1696: !_MEMBAR (FP)
membar #StoreLoad

P1697: !_ST [10] (maybe <- 0x80010a) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1698: !_DWST [5] (maybe <- 0x80010b) (Int)
mov %l4, %o5 
stx %o5, [%i1 + 8]
add   %l4, 1, %l4

P1699: !_DWST [20] (maybe <- 0x80010c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7 
stx %l7, [%i2 + 8]
add   %l4, 1, %l4

P1700: !_DWST_BINIT [11] (maybe <- 0x80010d) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l6 
stxa %l6, [%i3 + 8] %asi 
add   %l4, 1, %l4

P1701: !_MEMBAR (Int)

P1702: !_BSTC [8] (maybe <- 0x400000e4) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1703: !_MEMBAR (FP)
membar #StoreLoad

P1704: !_CAS [2] (maybe <- 0x80010e) (Int)
add %i0, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
mov %l4, %o3
cas [%l3], %o5, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1705: !_MEMBAR (FP)

P1706: !_BST [7] (maybe <- 0x400000e7) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1707: !_MEMBAR (FP)
membar #StoreLoad

P1708: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 18

P1709: !_SWAP [23] (maybe <- 0x80010f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 12], %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P1710: !_ST_BINIT [4] (maybe <- 0x800110) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 4] %asi
add   %l4, 1, %l4

P1711: !_MEMBAR (Int)
membar #StoreLoad

P1712: !_DWST_BINIT [16] (maybe <- 0x800111) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P1713: !_MEMBAR (Int) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1713
nop
RET1713:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1714: !_BST [7] (maybe <- 0x400000ea) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1715: !_MEMBAR (FP)
membar #StoreLoad

P1716: !_LDD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1717: !_SWAP [1] (maybe <- 0x800113) (Int)
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1718: !_MEMBAR (FP)
membar #StoreLoad

P1719: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P1720: !_MEMBAR (FP)

P1721: !_ST_BINIT [20] (maybe <- 0x800114) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P1722: !_MEMBAR (Int)

P1723: !_BSTC [3] (maybe <- 0x400000ed) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1723
nop
RET1723:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1724: !_MEMBAR (FP)
membar #StoreLoad

P1725: !_SWAP [0] (maybe <- 0x800115) (Int)
mov %l4, %l3
swap  [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1726: !_MEMBAR (FP)

P1727: !_BSTC [8] (maybe <- 0x400000f0) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1728: !_MEMBAR (FP)
membar #StoreLoad

P1729: !_REPLACEMENT [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P1730: !_CAS [21] (maybe <- 0x800116) (Int) (Branch target of P1009)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o1
mov %o1, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %l4, %l7
cas [%i3], %o5, %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4
ba P1731
nop

TARGET1009:
ba RET1009
nop


P1731: !_DWLD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1732: !_DWST [10] (maybe <- 0x800117) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i3 + 0]
add   %l4, 1, %l4

P1733: !_DWST [20] (maybe <- 0x800119) (Int) (CBR)
mov %l4, %l3 
stx %l3, [%i2 + 8]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1733
nop
RET1733:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1734: !_DWST_BINIT [21] (maybe <- 0x80011a) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P1735: !_MEMBAR (Int)
membar #StoreLoad

P1736: !_DWST [18] (maybe <- 0x80011c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P1737: !_DWLD [18] (Int)
ldx [%i3 + 0], %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l7
or %l7, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3

P1738: !_PREFETCH [15] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1738
nop
RET1738:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1739: !_MEMBAR (FP)

P1740: !_BST [23] (maybe <- 0x400000f3) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1740
nop
RET1740:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1741: !_MEMBAR (FP)
membar #StoreLoad

P1742: !_LDD [16] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P1743: !_MEMBAR (FP)

P1744: !_BSTC [9] (maybe <- 0x400000f6) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1745: !_MEMBAR (FP)
membar #StoreLoad

P1746: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P1747: !_MEMBAR (FP)

P1748: !_DWST_BINIT [1] (maybe <- 0x80011e) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i0 + 0] %asi
add   %l4, 1, %l4

P1749: !_MEMBAR (Int) (Branch target of P1713)
membar #StoreLoad
ba P1750
nop

TARGET1713:
ba RET1713
nop


P1750: !_DWST [21] (maybe <- 0x800120) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4

P1751: !_MEMBAR (FP)

P1752: !_BSTC [0] (maybe <- 0x400000f9) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1753: !_MEMBAR (FP)
membar #StoreLoad

P1754: !_PREFETCH [3] (Int)
prefetch [%i1 + 0], 4

P1755: !_DWST [16] (maybe <- 0x400000fc) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P1756: !_DWST_BINIT [8] (maybe <- 0x800122) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stxa %o5, [%i2 + 8] %asi 
add   %l4, 1, %l4

P1757: !_MEMBAR (Int)
membar #StoreLoad

P1758: !_ST [9] (maybe <- 0x800123) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1759: !_DWST [6] (maybe <- 0x800124) (Int)
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P1760: !_LD [18] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f11
! 1 addresses covered

P1761: !_DWST_BINIT [6] (maybe <- 0x800126) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P1762: !_MEMBAR (Int)
membar #StoreLoad

P1763: !_SWAP [8] (maybe <- 0x800128) (Int) (CBR)
mov %l4, %l6
swap  [%i3 + 12], %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1763
nop
RET1763:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1764: !_ST [23] (maybe <- 0x400000fe) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 12 ]

P1765: !_ST [17] (maybe <- 0x800129) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1766: !_SWAP [5] (maybe <- 0x80012a) (Int)
mov %l4, %o0
swap  [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1767: !_DWST_BINIT [11] (maybe <- 0x80012b) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P1768: !_MEMBAR (Int)

P1769: !_BST [23] (maybe <- 0x400000ff) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1770: !_MEMBAR (FP)
membar #StoreLoad

P1771: !_LDD [11] (Int)
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1772: !_CAS [20] (maybe <- 0x80012c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P1773: !_DWST [0] (maybe <- 0x80012d) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i0 + 0]
add   %l4, 1, %l4

P1774: !_LDD [4] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P1775: !_MEMBAR (FP)

P1776: !_BST [13] (maybe <- 0x40000102) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1777: !_MEMBAR (FP)
membar #StoreLoad

P1778: !_PREFETCH [2] (Int) (Branch target of P1740)
prefetch [%i0 + 12], 24
ba P1779
nop

TARGET1740:
ba RET1740
nop


P1779: !_LDD [4] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P1780: !_MEMBAR (FP) (CBR)

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


P1781: !_BST [13] (maybe <- 0x40000105) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1782: !_MEMBAR (FP)
membar #StoreLoad

P1783: !_REPLACEMENT [0] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
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

P1784: !_MEMBAR (FP)

P1785: !_BST [11] (maybe <- 0x40000108) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1786: !_MEMBAR (FP)

P1787: !_BSTC [6] (maybe <- 0x4000010b) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1788: !_MEMBAR (FP)
membar #StoreLoad

P1789: !_ST_BINIT [5] (maybe <- 0x80012f) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 12] %asi
add   %l4, 1, %l4

P1790: !_MEMBAR (Int)
membar #StoreLoad

P1791: !_SWAP [6] (maybe <- 0x800130) (Int)
mov %l4, %o4
swap  [%i2 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1792: !_MEMBAR (FP)

P1793: !_BSTC [1] (maybe <- 0x4000010e) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1794: !_MEMBAR (FP)
membar #StoreLoad

P1795: !_DWST [11] (maybe <- 0x800131) (Int)
mov %l4, %l7 
stx %l7, [%i3 + 8]
add   %l4, 1, %l4

P1796: !_CAS [7] (maybe <- 0x800132) (Int)
add %i2, 4, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l7], %l6, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1797: !_CAS [23] (maybe <- 0x800133) (Int) (Branch target of P1210)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4
ba P1798
nop

TARGET1210:
ba RET1210
nop


P1798: !_MEMBAR (FP)

P1799: !_BST [6] (maybe <- 0x40000111) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1800: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1800
nop
RET1800:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1801: !_REPLACEMENT [18] (Int) (Branch target of P1259)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
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
ba P1802
nop

TARGET1259:
ba RET1259
nop


P1802: !_MEMBAR (FP)

P1803: !_BST [6] (maybe <- 0x40000114) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1804: !_MEMBAR (FP)
membar #StoreLoad

P1805: !_ST_BINIT [11] (maybe <- 0x800134) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P1806: !_MEMBAR (Int)
membar #StoreLoad

P1807: !_ST_BINIT [12] (maybe <- 0x800135) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P1808: !_MEMBAR (Int)
membar #StoreLoad

P1809: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 23

P1810: !_MEMBAR (FP)

P1811: !_BST [19] (maybe <- 0x40000117) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1812: !_MEMBAR (FP)
membar #StoreLoad

P1813: !_ST_BINIT [22] (maybe <- 0x800136) (Int) (CBR)
wr %g0, 0xe2, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1813
nop
RET1813:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1814: !_MEMBAR (Int)

P1815: !_BSTC [0] (maybe <- 0x4000011a) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1816: !_MEMBAR (FP)
membar #StoreLoad

P1817: !_CASX [15] (maybe <- 0x800137) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i2], %o5, %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
add  %l4, 1, %l4

P1818: !_ST [23] (maybe <- 0x800139) (Int)
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1819: !_LDD [0] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P1820: !_CASX [4] (maybe <- 0x80013a) (Int)
ldx [%i1], %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i1], %l3, %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
add  %l4, 1, %l4

P1821: !_MEMBAR (FP)

P1822: !_BST [8] (maybe <- 0x4000011d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1823: !_MEMBAR (FP)
membar #StoreLoad

P1824: !_PREFETCH [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 4

P1825: !_CAS [8] (maybe <- 0x80013c) (Int)
add %i3, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
mov %l4, %o2
cas [%l3], %o5, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1826: !_MEMBAR (FP)

P1827: !_BST [22] (maybe <- 0x40000120) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1828: !_MEMBAR (FP)

P1829: !_BSTC [12] (maybe <- 0x40000123) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1830: !_MEMBAR (FP)
membar #StoreLoad

P1831: !_LDD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P1832: !_ST [0] (maybe <- 0x40000126) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P1833: !_MEMBAR (FP)

P1834: !_BST [13] (maybe <- 0x40000127) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1835: !_MEMBAR (FP)
membar #StoreLoad

P1836: !_PREFETCH [23] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 1

P1837: !_CASX [16] (maybe <- 0x80013d) (Int) (Branch target of P1590)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l7
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %o5
or %o5, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
add  %l4, 1, %l4
ba P1838
nop

TARGET1590:
ba RET1590
nop


P1838: !_SWAP [10] (maybe <- 0x80013f) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P1839: !_SWAP [12] (maybe <- 0x800140) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o1
swap  [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1840: !_CAS [12] (maybe <- 0x800141) (Int) (CBR)
lduw [%i3], %l3
mov %l3, %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
mov %l4, %o2
cas [%i3], %l6, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1840
nop
RET1840:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1841: !_PREFETCH [19] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 18

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1841
nop
RET1841:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1842: !_CAS [9] (maybe <- 0x800142) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %l7
mov %l7, %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
mov %l4, %o3
cas [%i3], %o5, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1843: !_LDD [1] (Int) (LE)
wr %g0, 0x88, %asi
ldda [%i0 + 0] %asi, %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P1844: !_DWST_BINIT [19] (maybe <- 0x800143) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P1845: !_MEMBAR (Int)
membar #StoreLoad

P1846: !_DWLD [4] (Int)
ldx [%i1 + 0], %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0

P1847: !_SWAP [17] (maybe <- 0x800145) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5
swap  [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1848: !_MEMBAR (FP)

P1849: !_BST [17] (maybe <- 0x4000012a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1850: !_MEMBAR (FP)

P1851: !_BSTC [2] (maybe <- 0x4000012d) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1852: !_MEMBAR (FP)
membar #StoreLoad

P1853: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P1854: !_MEMBAR (FP)

P1855: !_DWST_BINIT [0] (maybe <- 0x800146) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i0 + 0] %asi
add   %l4, 1, %l4

P1856: !_MEMBAR (Int)
membar #StoreLoad

P1857: !_ST_BINIT [4] (maybe <- 0x800148) (Int) (Branch target of P1290)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 4] %asi
add   %l4, 1, %l4
ba P1858
nop

TARGET1290:
ba RET1290
nop


P1858: !_MEMBAR (Int)
membar #StoreLoad

P1859: !_CAS [16] (maybe <- 0x800149) (Int)
add %i2, 4, %l6
lduw [%l6], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P1860: !_DWST_BINIT [22] (maybe <- 0x80014a) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P1861: !_MEMBAR (Int)
membar #StoreLoad

P1862: !_LDD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P1863: !_ST [0] (maybe <- 0x80014c) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1864: !_DWST [15] (maybe <- 0x80014d) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P1865: !_MEMBAR (FP)
membar #StoreLoad

P1866: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
fmovd %f34, %f18
fmovs %f19, %f1

P1867: !_MEMBAR (FP)

P1868: !_BSTC [21] (maybe <- 0x40000130) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1869: !_MEMBAR (FP)
membar #StoreLoad

P1870: !_ST [20] (maybe <- 0x80014f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P1871: !_PREFETCH [22] (Int)
prefetch [%i3 + 4], 20

P1872: !_MEMBAR (FP)
membar #StoreLoad

P1873: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P1874: !_MEMBAR (FP)

P1875: !_LDD [19] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P1876: !_CAS [10] (maybe <- 0x800150) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3
mov %l4, %o4
cas [%l6], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1877: !_MEMBAR (FP)

P1878: !_BSTC [12] (maybe <- 0x40000133) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1879: !_MEMBAR (FP)
membar #StoreLoad

P1880: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P1881: !_MEMBAR (FP)

P1882: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1883: !_LDD [1] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1884: !_MEMBAR (FP)

P1885: !_BSTC [17] (maybe <- 0x40000136) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1886: !_MEMBAR (FP)
membar #StoreLoad

P1887: !_DWLD [21] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1888: !_CAS [17] (maybe <- 0x800151) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l7, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
wr %g0, 0x88, %asi
add %i3, 12, %l7
lduwa [%l7] %asi, %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %o5, %l3
casa [%l7] %asi, %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P1889: !_CASX [18] (maybe <- 0x800152) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l6
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i3], %l6, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P1890: !_LDD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1891: !_MEMBAR (FP)
membar #StoreLoad

P1892: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P1893: !_MEMBAR (FP)

P1894: !_ST [17] (maybe <- 0x800154) (Int)
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P1895: !_CAS [1] (maybe <- 0x800155) (Int)
add %i0, 4, %l3
lduw [%l3], %o1
mov %o1, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P1896: !_SWAP [20] (maybe <- 0x800156) (Int)
mov %l4, %o2
swap  [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1897: !_CAS [22] (maybe <- 0x800157) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
mov %l4, %o3
cas [%l3], %o5, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1898: !_LDD [5] (Int)
ldd [%i1 + 8], %l6
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P1899: !_CASX [22] (maybe <- 0x800158) (Int)
ldx [%i3], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
casx [%i3], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P1900: !_LDD [16] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P1901: !_MEMBAR (FP)

P1902: !_BST [6] (maybe <- 0x40000139) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1903: !_MEMBAR (FP)

P1904: !_BST [0] (maybe <- 0x4000013c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1905: !_MEMBAR (FP)
membar #StoreLoad

P1906: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P1907: !_MEMBAR (FP)

P1908: !_LD [13] (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1908
nop
RET1908:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1909: !_PREFETCH [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 4

P1910: !_MEMBAR (FP)

P1911: !_BST [2] (maybe <- 0x4000013f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1912: !_MEMBAR (FP)
membar #StoreLoad

P1913: !_DWST [0] (maybe <- 0x80015a) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i0 + 0]
add   %l4, 1, %l4

P1914: !_MEMBAR (FP)

P1915: !_BSTC [16] (maybe <- 0x40000142) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1916: !_MEMBAR (FP)

P1917: !_BSTC [18] (maybe <- 0x40000145) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1918: !_MEMBAR (FP)
membar #StoreLoad

P1919: !_CASX [11] (maybe <- 0x80015c) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
add  %l4, 1, %l4

P1920: !_SWAP [2] (maybe <- 0x80015d) (Int)
mov %l4, %o5
swap  [%i0 + 12], %o5
! move %o5(lower) -> %o4(lower)
srl %o5, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P1921: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1922: !_MEMBAR (FP)
membar #StoreLoad

P1923: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
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
fmovd %f34, %f18
fmovs %f19, %f0

P1924: !_MEMBAR (FP)

P1925: !_CASX [15] (maybe <- 0x80015e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i2], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P1926: !_SWAP [18] (maybe <- 0x800160) (Int)
mov %l4, %l3
swap  [%i3 + 0], %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1927: !_LDD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P1928: !_LD [1] (Int)
lduw [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1929: !_ST [10] (maybe <- 0x800161) (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1929
nop
RET1929:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1930: !_MEMBAR (FP)

P1931: !_BST [12] (maybe <- 0x40000148) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1932: !_MEMBAR (FP)
membar #StoreLoad

P1933: !_CAS [8] (maybe <- 0x800162) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l7], %l6, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1934: !_ST_BINIT [5] (maybe <- 0x800163) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 12] %asi
add   %l4, 1, %l4

P1935: !_MEMBAR (Int)
membar #StoreLoad

P1936: !_SWAP [8] (maybe <- 0x800164) (Int)
mov %l4, %l7
swap  [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1937: !_MEMBAR (FP)
membar #StoreLoad

P1938: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

P1939: !_MEMBAR (FP)

P1940: !_DWST_BINIT [21] (maybe <- 0x800165) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P1941: !_MEMBAR (Int)
membar #StoreLoad

P1942: !_ST_BINIT [9] (maybe <- 0x800167) (Int) (CBR)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1942
nop
RET1942:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1943: !_MEMBAR (Int)
membar #StoreLoad

P1944: !_CASX [17] (maybe <- 0x800168) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l7
mov %l4, %o2
casx [%o5], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P1945: !_MEMBAR (FP)
membar #StoreLoad

P1946: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6

P1947: !_MEMBAR (FP)

P1948: !_LDD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P1949: !_ST_BINIT [20] (maybe <- 0x800169) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P1950: !_MEMBAR (Int)
membar #StoreLoad

P1951: !_DWLD [12] (Int)
ldx [%i2 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P1952: !_ST_BINIT [0] (maybe <- 0x80016a) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P1953: !_MEMBAR (Int)
membar #StoreLoad

P1954: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P1955: !_MEMBAR (FP)

P1956: !_DWLD [3] (Int)
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1957: !_SWAP [4] (maybe <- 0x80016b) (Int)
mov %l4, %o1
swap  [%i1 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1958: !_CAS [14] (maybe <- 0x80016c) (Int)
add %i2, 12, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l6, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1959: !_ST [4] (maybe <- 0x80016d) (Int)
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4

P1960: !_MEMBAR (FP)

P1961: !_BST [16] (maybe <- 0x4000014b) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1962: !_MEMBAR (FP)

P1963: !_BST [22] (maybe <- 0x4000014e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1964: !_MEMBAR (FP)

P1965: !_BSTC [18] (maybe <- 0x40000151) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1966: !_MEMBAR (FP)

P1967: !_BSTC [11] (maybe <- 0x40000154) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1968: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1968
nop
RET1968:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1969: !_BSTC [1] (maybe <- 0x40000157) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1970: !_MEMBAR (FP)
membar #StoreLoad

P1971: !_CASX [3] (maybe <- 0x80016e) (Int)
ldx [%i1], %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i1], %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
add  %l4, 1, %l4

P1972: !_DWST [15] (maybe <- 0x800170) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P1973: !_SWAP [2] (maybe <- 0x800172) (Int)
mov %l4, %l7
swap  [%i0 + 12], %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P1974: !_DWST [7] (maybe <- 0x800173) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5
add   %l4, 1, %l4
or %o5, %l4, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l3, %l6, %o5
srlx %o5, 8, %o5
sllx %l3, 8, %l3
and %l3, %l6, %l3
or %l3, %o5, %l3 
sethi %hi(0xffff0000), %l6
srlx %l3, 16, %o5
andn %o5, %l6, %o5
andn %l3, %l6, %l3
sllx %l3, 16, %l3
or %l3, %o5, %l3 
srlx %l3, 32, %o5
sllx %l3, 32, %l3
or %l3, %o5, %o5 
stxa %o5, [%i3 + 0 ] %asi
add   %l4, 1, %l4

P1975: !_CASX [22] (maybe <- 0x800175) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1976: !_MEMBAR (FP)
membar #StoreLoad

P1977: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P1978: !_MEMBAR (FP)

P1979: !_SWAP [16] (maybe <- 0x800177) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o2
swap  [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1980: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
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

P1981: !_SWAP [21] (maybe <- 0x800178) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7
swap  [%i3 + 0], %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P1982: !_DWLD [0] (Int) (CBR)
ldx [%i0 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1982
nop
RET1982:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1983: !_MEMBAR (FP)

P1984: !_BSTC [2] (maybe <- 0x4000015a) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P1985: !_MEMBAR (FP)

P1986: !_BST [19] (maybe <- 0x4000015d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1987: !_MEMBAR (FP) (Branch target of P1968)
membar #StoreLoad
ba P1988
nop

TARGET1968:
ba RET1968
nop


P1988: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P1989: !_MEMBAR (FP)

P1990: !_SWAP [18] (maybe <- 0x800179) (Int)
mov %l4, %o4
swap  [%i2 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1991: !_ST_BINIT [11] (maybe <- 0x80017a) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P1992: !_MEMBAR (Int)
membar #StoreLoad

P1993: !_CASX [20] (maybe <- 0x80017b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
add  %l4, 1, %l4

P1994: !_DWST [17] (maybe <- 0x80017c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7 
stx %l7, [%i2 + 8]
add   %l4, 1, %l4

P1995: !_LDD [17] (Int)
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P1996: !_DWLD [19] (Int)
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1997: !_MEMBAR (FP)
membar #StoreLoad

P1998: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P1999: !_MEMBAR (FP)

P2000: !_LDD [12] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P2001: !_LD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2002: !_LD [18] (Int) (Loop exit) (CBR)
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2002
nop
RET2002:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--

sethi %hi(0x400000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_0
nop

P2003: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2003
nop
RET2003:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


END_NODES1: ! Test instruction sequence for CPU 1 ends
sethi %hi(0xdead0e0f), %o5
or    %o5, %lo(0xdead0e0f), %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
sethi %hi(0xdead0e0f), %o5
or    %o5, %lo(0xdead0e0f), %o5
stw %o5, [%i5] 
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
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%i5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%i5+4]
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
sethi %hi(0x02deade1), %l7
or    %l7, %lo(0x02deade1), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1000001), %l4
or    %l4, %lo(0x1000001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x40800001), %l7
or    %l7, %lo(0x40800001), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x35000000), %l7
or    %l7, %lo(0x35000000), %l7
stw %l7, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x39d8^4
sethi %hi(0x39d8), %l0
or    %l0, %lo(0x39d8), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES2: ! Test instruction sequence for ISTREAM 2 begins

P2004: !_DWLD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_0:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2005: !_ST_BINIT [10] (maybe <- 0x1000001) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P2006: !_MEMBAR (Int)
membar #StoreLoad

P2007: !_SWAP [5] (maybe <- 0x1000002) (Int)
mov %l4, %o1
swap  [%i1 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2008: !_ST_BINIT [6] (maybe <- 0x1000003) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P2009: !_MEMBAR (Int)
membar #StoreLoad

P2010: !_ST_BINIT [18] (maybe <- 0x1000004) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2011: !_MEMBAR (Int)
membar #StoreLoad

P2012: !_ST [7] (maybe <- 0x1000005) (Int)
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P2013: !_ST_BINIT [4] (maybe <- 0x1000006) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 4] %asi
add   %l4, 1, %l4

P2014: !_MEMBAR (Int)
membar #StoreLoad

P2015: !_CASX [8] (maybe <- 0x1000007) (Int)
add %i2, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
add  %l4, 1, %l4

P2016: !_PREFETCH [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 1

P2017: !_MEMBAR (FP)
membar #StoreLoad

P2018: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P2019: !_MEMBAR (FP)

P2020: !_BSTC [20] (maybe <- 0x40800001) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2021: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2021
nop
RET2021:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2022: !_ST [7] (maybe <- 0x1000008) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P2023: !_LDD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P2024: !_LD [3] (Int)
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2025: !_DWST [1] (maybe <- 0x1000009) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i0 + 0]
add   %l4, 1, %l4

P2026: !_ST [21] (maybe <- 0x100000b) (Int) (Branch target of P2728)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
ba P2027
nop

TARGET2728:
ba RET2728
nop


P2027: !_REPLACEMENT [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
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

P2028: !_MEMBAR (FP)

P2029: !_BST [22] (maybe <- 0x40800004) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2030: !_MEMBAR (FP)
membar #StoreLoad

P2031: !_LDD [4] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P2032: !_PREFETCH [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

P2033: !_LDD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P2034: !_MEMBAR (FP)

P2035: !_BSTC [13] (maybe <- 0x40800007) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2036: !_MEMBAR (FP)
membar #StoreLoad

P2037: !_CAS [5] (maybe <- 0x100000c) (Int)
add %i1, 12, %l3
lduw [%l3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P2038: !_MEMBAR (FP)

P2039: !_BST [15] (maybe <- 0x4080000a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2040: !_MEMBAR (FP)
membar #StoreLoad

P2041: !_REPLACEMENT [7] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
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
be,pn  %xcc, TARGET2041
nop
RET2041:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2042: !_ST_BINIT [13] (maybe <- 0x100000d) (Int) (LE)
wr %g0, 0xea, %asi
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
stwa   %l7, [%i3 + 4] %asi
add   %l4, 1, %l4

P2043: !_MEMBAR (Int) (LE)
membar #StoreLoad

P2044: !_ST [5] (maybe <- 0x4080000d) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 12 ]

P2045: !_MEMBAR (FP)

P2046: !_BST [0] (maybe <- 0x4080000e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2047: !_MEMBAR (FP)
membar #StoreLoad

P2048: !_REPLACEMENT [15] (Int)
sethi %hi(0x20000), %o5
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

P2049: !_CAS [14] (maybe <- 0x100000e) (Int)
add %i3, 12, %o5
lduw [%o5], %o3
mov %o3, %l7
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2050: !_MEMBAR (FP)

P2051: !_BSTC [4] (maybe <- 0x40800011) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2052: !_MEMBAR (FP)
membar #StoreLoad

P2053: !_CASX [17] (maybe <- 0x100000f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov  %o4, %l6
mov %l4, %o0
casx [%l7], %l6, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P2054: !_ST_BINIT [7] (maybe <- 0x1000010) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P2055: !_MEMBAR (Int) (Branch target of P2423)
membar #StoreLoad
ba P2056
nop

TARGET2423:
ba RET2423
nop


P2056: !_SWAP [10] (maybe <- 0x1000011) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o1
swap  [%i3 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2057: !_SWAP [12] (maybe <- 0x1000012) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 0], %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P2058: !_DWST_BINIT [9] (maybe <- 0x1000013) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i3 + 0] %asi
add   %l4, 1, %l4

P2059: !_MEMBAR (Int)
membar #StoreLoad

P2060: !_SWAP [1] (maybe <- 0x1000015) (Int)
mov %l4, %o2
swap  [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2061: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 2

P2062: !_ST [23] (maybe <- 0x40800014) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]

P2063: !_DWST [0] (maybe <- 0x1000016) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i0 + 0]
add   %l4, 1, %l4

P2064: !_DWST [1] (maybe <- 0x1000018) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i0 + 0]
add   %l4, 1, %l4

P2065: !_DWST_BINIT [4] (maybe <- 0x100001a) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i1 + 0] %asi
add   %l4, 1, %l4

P2066: !_MEMBAR (Int)
membar #StoreLoad

P2067: !_CASX [21] (maybe <- 0x100001c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
add  %l4, 1, %l4

P2068: !_SWAP [16] (maybe <- 0x100001e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5
swap  [%i3 + 4], %o5
! move %o5(lower) -> %o4(lower)
srl %o5, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P2069: !_DWLD [1] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2070: !_DWLD [13] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2071: !_CAS [18] (maybe <- 0x100001f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P2072: !_SWAP [1] (maybe <- 0x1000020) (Int)
mov %l4, %o3
swap  [%i0 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2073: !_DWST [14] (maybe <- 0x1000021) (Int)
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4

P2074: !_ST [23] (maybe <- 0x1000022) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P2075: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2075
nop
RET2075:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2076: !_BST [13] (maybe <- 0x40800015) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2077: !_MEMBAR (FP) (Branch target of P2445)
membar #StoreLoad
ba P2078
nop

TARGET2445:
ba RET2445
nop


P2078: !_SWAP [18] (maybe <- 0x1000023) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5
swap  [%i2 + 0], %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P2079: !_ST [4] (maybe <- 0x40800018) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 4 ]

P2080: !_DWST_BINIT [14] (maybe <- 0x1000024) (Int)
wr %g0, 0xe2, %asi
mov %l4, %o5 
stxa %o5, [%i3 + 8] %asi 
add   %l4, 1, %l4

P2081: !_MEMBAR (Int)
membar #StoreLoad

P2082: !_CASX [2] (maybe <- 0x1000025) (Int)
add %i0, 8, %o5
ldx [%o5], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov  %o4, %l7
mov %l4, %o0
casx [%o5], %l7, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P2083: !_MEMBAR (FP)

P2084: !_BSTC [17] (maybe <- 0x40800019) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2085: !_MEMBAR (FP)
membar #StoreLoad

P2086: !_DWLD [11] (Int) (Branch target of P2524)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
ba P2087
nop

TARGET2524:
ba RET2524
nop


P2087: !_ST [23] (maybe <- 0x1000026) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P2088: !_MEMBAR (FP)

P2089: !_BSTC [13] (maybe <- 0x4080001c) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2090: !_MEMBAR (FP)
membar #StoreLoad

P2091: !_ST [4] (maybe <- 0x1000027) (Int)
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4

P2092: !_ST_BINIT [6] (maybe <- 0x1000028) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2093: !_MEMBAR (Int)
membar #StoreLoad

P2094: !_SWAP [7] (maybe <- 0x1000029) (Int)
mov %l4, %l6
swap  [%i3 + 4], %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P2095: !_DWLD [1] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P2096: !_MEMBAR (FP)

P2097: !_BSTC [22] (maybe <- 0x4080001f) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2098: !_MEMBAR (FP)
membar #StoreLoad

P2099: !_PREFETCH [22] (Int)
prefetch [%i2 + 4], 23

P2100: !_SWAP [7] (maybe <- 0x100002a) (Int)
mov %l4, %o3
swap  [%i3 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2101: !_CAS [12] (maybe <- 0x100002b) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %l6
mov %l6, %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3
mov %l4, %o4
cas [%i3], %l7, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2102: !_MEMBAR (FP)
membar #StoreLoad

P2103: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P2104: !_MEMBAR (FP)

P2105: !_PREFETCH [10] (Int)
prefetch [%i2 + 4], 2

P2106: !_MEMBAR (FP)

P2107: !_BSTC [20] (maybe <- 0x40800022) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2108: !_MEMBAR (FP)
membar #StoreLoad

P2109: !_REPLACEMENT [16] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
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

P2110: !_ST_BINIT [12] (maybe <- 0x100002c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2111: !_MEMBAR (Int)

P2112: !_BST [12] (maybe <- 0x40800025) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2113: !_MEMBAR (FP)
membar #StoreLoad

P2114: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P2115: !_MEMBAR (FP)

P2116: !_CAS [21] (maybe <- 0x100002d) (Int)
lduw [%i2], %l6
mov %l6, %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%i2], %l7, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2117: !_DWST_BINIT [4] (maybe <- 0x100002e) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i1 + 0] %asi
add   %l4, 1, %l4

P2118: !_MEMBAR (Int)

P2119: !_BSTC [14] (maybe <- 0x40800028) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2120: !_MEMBAR (FP)

P2121: !_BSTC [10] (maybe <- 0x4080002b) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2122: !_MEMBAR (FP)
membar #StoreLoad

P2123: !_LD [4] (Int)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

P2124: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2125: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P2126: !_CASX [12] (maybe <- 0x1000030) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P2127: !_ST_BINIT [1] (maybe <- 0x1000032) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P2128: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2128
nop
RET2128:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2129: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P2130: !_MEMBAR (FP)

P2131: !_DWST [0] (maybe <- 0x1000033) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i0 + 0]
add   %l4, 1, %l4

P2132: !_DWLD [19] (Int)
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2133: !_CASX [4] (maybe <- 0x1000035) (Int)
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2134: !_CAS [21] (maybe <- 0x1000037) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%i3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P2135: !_MEMBAR (FP)

P2136: !_BST [7] (maybe <- 0x4080002e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2137: !_MEMBAR (FP)
membar #StoreLoad

P2138: !_SWAP [0] (maybe <- 0x1000038) (Int) (LE)
wr %g0, 0x88, %asi
mov %l4, %o3
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %o3, %l7, %o5
srl %o5, 8, %o5
sll %o3, 8, %o3
and %o3, %l7, %o3
or %o3, %o5, %o3
srl %o3, 16, %o5
sll %o3, 16, %o3
srl %o3, 0, %o3
or %o3, %o5, %o3
swapa  [%i0 + 0] %asi, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2139: !_CASX [23] (maybe <- 0x1000039) (Int)
add %i3, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
add  %l4, 1, %l4

P2140: !_CAS [6] (maybe <- 0x100003a) (Int)
lduw [%i2], %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
mov %l4, %o1
cas [%i2], %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2141: !_ST [11] (maybe <- 0x100003b) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P2142: !_LDD [8] (Int)
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P2143: !_MEMBAR (FP)
membar #StoreLoad

P2144: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P2145: !_MEMBAR (FP)

P2146: !_CASX [2] (maybe <- 0x100003c) (Int)
add %i0, 8, %l6
ldx [%l6], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l3
mov %l4, %o3
casx [%l6], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P2147: !_MEMBAR (FP)

P2148: !_BSTC [10] (maybe <- 0x40800031) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2149: !_MEMBAR (FP)
membar #StoreLoad

P2150: !_LDD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2151: !_DWST_BINIT [13] (maybe <- 0x100003d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P2152: !_MEMBAR (Int)

P2153: !_BST [15] (maybe <- 0x40800034) (FP) (CBR) (Branch target of P2940)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2153
nop
RET2153:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2154
nop

TARGET2940:
ba RET2940
nop


P2154: !_MEMBAR (FP)

P2155: !_BST [22] (maybe <- 0x40800037) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2156: !_MEMBAR (FP)
membar #StoreLoad

P2157: !_DWST_BINIT [13] (maybe <- 0x100003f) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i3 + 0] %asi
add   %l4, 1, %l4

P2158: !_MEMBAR (Int)
membar #StoreLoad

P2159: !_LDD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P2160: !_DWST_BINIT [23] (maybe <- 0x1000041) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P2161: !_MEMBAR (Int)

P2162: !_BSTC [13] (maybe <- 0x4080003a) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2163: !_MEMBAR (FP)
membar #StoreLoad

P2164: !_SWAP [10] (maybe <- 0x1000042) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o1
swap  [%i3 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2165: !_PREFETCH [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 22

P2166: !_MEMBAR (FP)
membar #StoreLoad

P2167: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
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
fmovd %f34, %f18
fmovs %f19, %f1

P2168: !_MEMBAR (FP)

P2169: !_ST [13] (maybe <- 0x4080003d) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P2170: !_DWST_BINIT [12] (maybe <- 0x1000043) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P2171: !_MEMBAR (Int)
membar #StoreLoad

P2172: !_DWST [13] (maybe <- 0x1000045) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P2173: !_CASX [2] (maybe <- 0x1000047) (Int)
add %i0, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
add  %l4, 1, %l4

P2174: !_ST_BINIT [13] (maybe <- 0x1000048) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P2175: !_MEMBAR (Int)
membar #StoreLoad

P2176: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P2177: !_MEMBAR (FP)

P2178: !_DWST [16] (maybe <- 0x1000049) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P2179: !_CAS [5] (maybe <- 0x100004b) (Int)
add %i1, 12, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3
mov %l4, %o4
cas [%l6], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2180: !_LD [4] (Int)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2181: !_CAS [22] (maybe <- 0x100004c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2182: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2183: !_CASX [16] (maybe <- 0x100004d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P2184: !_DWLD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2185: !_ST_BINIT [19] (maybe <- 0x100004f) (Int) (Branch target of P2766)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4
ba P2186
nop

TARGET2766:
ba RET2766
nop


P2186: !_MEMBAR (Int)
membar #StoreLoad

P2187: !_SWAP [21] (maybe <- 0x1000050) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2188: !_DWLD [19] (FP) (Branch target of P2075)
ldd [%i3 + 0], %f18
! 2 addresses covered
fmovs %f18, %f5
fmovs %f19, %f6
ba P2189
nop

TARGET2075:
ba RET2075
nop


P2189: !_MEMBAR (FP)

P2190: !_BST [2] (maybe <- 0x4080003e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2191: !_MEMBAR (FP)
membar #StoreLoad

P2192: !_LDD [19] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P2193: !_CASX [22] (maybe <- 0x1000051) (Int)
ldx [%i2], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P2194: !_MEMBAR (FP)

P2195: !_BSTC [12] (maybe <- 0x40800041) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2196: !_MEMBAR (FP)
membar #StoreLoad

P2197: !_ST [16] (maybe <- 0x1000053) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
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
stwa   %l3, [%i2 + 4] %asi
add   %l4, 1, %l4

P2198: !_LDD [15] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P2199: !_CAS [18] (maybe <- 0x1000054) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o5
mov %o5, %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%i3], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2200: !_LD [1] (FP)
ld [%i0 + 4], %f7
! 1 addresses covered

P2201: !_DWST_BINIT [6] (maybe <- 0x1000055) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P2202: !_MEMBAR (Int)
membar #StoreLoad

P2203: !_DWST_BINIT [14] (maybe <- 0x1000057) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5 
stxa %o5, [%i3 + 8] %asi 
add   %l4, 1, %l4

P2204: !_MEMBAR (Int)
membar #StoreLoad

P2205: !_DWST_BINIT [23] (maybe <- 0x1000058) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7 
stxa %l7, [%i2 + 8] %asi 
add   %l4, 1, %l4

P2206: !_MEMBAR (Int)
membar #StoreLoad

P2207: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
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

P2208: !_DWST [13] (maybe <- 0x1000059) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P2209: !_LDD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P2210: !_MEMBAR (FP)
membar #StoreLoad

P2211: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P2212: !_MEMBAR (FP)

P2213: !_BST [22] (maybe <- 0x40800044) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2214: !_MEMBAR (FP)
membar #StoreLoad

P2215: !_CAS [3] (maybe <- 0x100005b) (Int)
lduw [%i1], %o1
mov %o1, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %l4, %l7
cas [%i1], %o5, %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P2216: !_DWST_BINIT [6] (maybe <- 0x100005c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P2217: !_MEMBAR (Int)
membar #StoreLoad

P2218: !_ST_BINIT [23] (maybe <- 0x100005e) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P2219: !_MEMBAR (Int)
membar #StoreLoad

P2220: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P2221: !_MEMBAR (FP)

P2222: !_CAS [8] (maybe <- 0x100005f) (Int)
add %i3, 12, %l7
lduw [%l7], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P2223: !_MEMBAR (FP)

P2224: !_BST [16] (maybe <- 0x40800047) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2225: !_MEMBAR (FP)

P2226: !_BST [16] (maybe <- 0x4080004a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2227: !_MEMBAR (FP)

P2228: !_BST [0] (maybe <- 0x4080004d) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2229: !_MEMBAR (FP)
membar #StoreLoad

P2230: !_ST_BINIT [1] (maybe <- 0x1000060) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P2231: !_MEMBAR (Int)
membar #StoreLoad

P2232: !_DWLD [6] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 0] %asi, %l7
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %l6
or %l6, %o3, %o3

P2233: !_ST_BINIT [5] (maybe <- 0x1000061) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 12] %asi
add   %l4, 1, %l4

P2234: !_MEMBAR (Int)
membar #StoreLoad

P2235: !_ST [16] (maybe <- 0x1000062) (Int)
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P2236: !_DWLD [2] (FP)
ldd [%i0 + 8], %f14
! 1 addresses covered
fmovs %f15, %f14

P2237: !_ST_BINIT [15] (maybe <- 0x1000063) (Int) (Branch target of P2919)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4
ba P2238
nop

TARGET2919:
ba RET2919
nop


P2238: !_MEMBAR (Int)
membar #StoreLoad

P2239: !_DWST [15] (maybe <- 0x1000064) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i3 + 0]
add   %l4, 1, %l4

P2240: !_ST_BINIT [21] (maybe <- 0x1000066) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2241: !_MEMBAR (Int)
membar #StoreLoad

P2242: !_CASX [13] (maybe <- 0x1000067) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %o4, %l7
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
casx [%i2], %l7, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P2243: !_MEMBAR (FP)
membar #StoreLoad

P2244: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
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
fmovd %f34, %f18
fmovs %f19, %f1

P2245: !_MEMBAR (FP)

P2246: !_BST [9] (maybe <- 0x40800050) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2247: !_MEMBAR (FP)
membar #StoreLoad

P2248: !_SWAP [23] (maybe <- 0x1000069) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o1
swap  [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2249: !_PREFETCH [18] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 0] %asi, 2

P2250: !_DWST_BINIT [15] (maybe <- 0x100006a) (Int) (LE)
wr %g0, 0xea, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3
add   %l4, 1, %l4
or %l3, %l4, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
sllx %l7, 32, %l3
or %l7, %l3, %l7 
and %l6, %l7, %l3
srlx %l3, 8, %l3
sllx %l6, 8, %l6
and %l6, %l7, %l6
or %l6, %l3, %l6 
sethi %hi(0xffff0000), %l7
srlx %l6, 16, %l3
andn %l3, %l7, %l3
andn %l6, %l7, %l6
sllx %l6, 16, %l6
or %l6, %l3, %l6 
srlx %l6, 32, %l3
sllx %l6, 32, %l6
or %l6, %l3, %l3 
stxa %l3, [%i3 + 0 ] %asi
add   %l4, 1, %l4

P2251: !_MEMBAR (Int) (LE)
membar #StoreLoad

P2252: !_SWAP [4] (maybe <- 0x100006c) (Int)
mov %l4, %l6
swap  [%i1 + 4], %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P2253: !_DWST [8] (maybe <- 0x100006d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7 
stx %l7, [%i2 + 8]
add   %l4, 1, %l4

P2254: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 3

P2255: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2256: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

P2257: !_MEMBAR (FP)
membar #StoreLoad

P2258: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P2259: !_MEMBAR (FP)

P2260: !_SWAP [19] (maybe <- 0x100006e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o3
swap  [%i2 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2261: !_CASX [21] (maybe <- 0x100006f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i3], %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
add  %l4, 1, %l4

P2262: !_LDD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P2263: !_ST [21] (maybe <- 0x1000071) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2264: !_PREFETCH [12] (Int)
prefetch [%i2 + 0], 21

P2265: !_MEMBAR (FP)

P2266: !_BSTC [19] (maybe <- 0x40800053) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2267: !_MEMBAR (FP)
membar #StoreLoad

P2268: !_LDD [4] (Int) (CBR)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2268
nop
RET2268:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2269: !_MEMBAR (FP)

P2270: !_BSTC [8] (maybe <- 0x40800056) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2271: !_MEMBAR (FP)
membar #StoreLoad

P2272: !_PREFETCH [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 0

P2273: !_MEMBAR (FP)
membar #StoreLoad

P2274: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P2275: !_MEMBAR (FP) (Branch target of P2565)
ba P2276
nop

TARGET2565:
ba RET2565
nop


P2276: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P2277: !_CASX [20] (maybe <- 0x1000072) (Int)
add %i2, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
add  %l4, 1, %l4

P2278: !_MEMBAR (FP)

P2279: !_BSTC [16] (maybe <- 0x40800059) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2280: !_MEMBAR (FP)
membar #StoreLoad

P2281: !_PREFETCH [3] (Int)
prefetch [%i1 + 0], 23

P2282: !_CASX [11] (maybe <- 0x1000073) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P2283: !_ST [3] (maybe <- 0x1000074) (Int)
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

P2284: !_DWLD [20] (Int)
ldx [%i2 + 8], %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l3
or %l3, %o2, %o2

P2285: !_DWLD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P2286: !_MEMBAR (FP)

P2287: !_BSTC [5] (maybe <- 0x4080005c) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2288: !_MEMBAR (FP)
membar #StoreLoad

P2289: !_LD [1] (FP)
ld [%i0 + 4], %f8
! 1 addresses covered

P2290: !_CAS [1] (maybe <- 0x1000075) (Int)
add %i0, 4, %l3
lduw [%l3], %o4
mov %o4, %o5
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P2291: !_MEMBAR (FP)

P2292: !_BST [4] (maybe <- 0x4080005f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2293: !_MEMBAR (FP)

P2294: !_BSTC [20] (maybe <- 0x40800062) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2295: !_MEMBAR (FP)
membar #StoreLoad

P2296: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P2297: !_MEMBAR (FP)

P2298: !_PREFETCH [3] (Int)
prefetch [%i1 + 0], 28

P2299: !_CAS [8] (maybe <- 0x1000076) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P2300: !_MEMBAR (FP)

P2301: !_BST [13] (maybe <- 0x40800065) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2302: !_MEMBAR (FP)
membar #StoreLoad

P2303: !_PREFETCH [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 23

P2304: !_MEMBAR (FP) (Branch target of P2350)
membar #StoreLoad
ba P2305
nop

TARGET2350:
ba RET2350
nop


P2305: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P2306: !_MEMBAR (FP)

P2307: !_BST [17] (maybe <- 0x40800068) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2308: !_MEMBAR (FP)
membar #StoreLoad

P2309: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
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
fmovd %f34, %f18
fmovs %f19, %f1

P2310: !_MEMBAR (FP)

P2311: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2312: !_DWST [14] (maybe <- 0x1000077) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 8]
add   %l4, 1, %l4

P2313: !_CASX [22] (maybe <- 0x1000078) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P2314: !_DWST_BINIT [15] (maybe <- 0x100007a) (Int) (CBR)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

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


P2315: !_MEMBAR (Int)
membar #StoreLoad

P2316: !_DWST_BINIT [17] (maybe <- 0x100007c) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P2317: !_MEMBAR (Int) (Branch target of P2458)
membar #StoreLoad
ba P2318
nop

TARGET2458:
ba RET2458
nop


P2318: !_ST [19] (maybe <- 0x4080006b) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]

P2319: !_DWST [20] (maybe <- 0x100007d) (Int)
mov %l4, %l7 
stx %l7, [%i3 + 8]
add   %l4, 1, %l4

P2320: !_DWST_BINIT [4] (maybe <- 0x100007e) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i1 + 0] %asi
add   %l4, 1, %l4

P2321: !_MEMBAR (Int)
membar #StoreLoad

P2322: !_SWAP [11] (maybe <- 0x1000080) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l7
swap  [%i2 + 12], %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P2323: !_PREFETCH [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 2

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


P2325: !_BSTC [10] (maybe <- 0x4080006c) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2326: !_MEMBAR (FP)

P2327: !_BST [7] (maybe <- 0x4080006f) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2328: !_MEMBAR (FP)
membar #StoreLoad

P2329: !_LDD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2330: !_PREFETCH [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 31

P2331: !_LDD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P2332: !_DWST [2] (maybe <- 0x1000081) (Int)
mov %l4, %l3 
stx %l3, [%i0 + 8]
add   %l4, 1, %l4

P2333: !_MEMBAR (FP)
membar #StoreLoad

P2334: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P2335: !_MEMBAR (FP)

P2336: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P2337: !_MEMBAR (FP)
membar #StoreLoad

P2338: !_BLD [21] (FP) (Branch target of P2755)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7
ba P2339
nop

TARGET2755:
ba RET2755
nop


P2339: !_MEMBAR (FP)

P2340: !_PREFETCH [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 4

P2341: !_DWLD [3] (Int)
ldx [%i1 + 0], %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %l6
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P2342: !_DWST_BINIT [4] (maybe <- 0x1000082) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i1 + 0] %asi
add   %l4, 1, %l4

P2343: !_MEMBAR (Int)
membar #StoreLoad

P2344: !_CAS [7] (maybe <- 0x1000084) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
mov %l4, %o3
cas [%o5], %l7, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2345: !_MEMBAR (FP) (Branch target of P2538)
ba P2346
nop

TARGET2538:
ba RET2538
nop


P2346: !_BSTC [6] (maybe <- 0x40800072) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2347: !_MEMBAR (FP)

P2348: !_BST [16] (maybe <- 0x40800075) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2349: !_MEMBAR (FP)
membar #StoreLoad

P2350: !_ST [1] (maybe <- 0x40800078) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2350
nop
RET2350:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2351: !_SWAP [5] (maybe <- 0x1000085) (Int)
mov %l4, %l7
swap  [%i1 + 12], %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P2352: !_LDD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2353: !_ST [1] (maybe <- 0x1000086) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2354: !_ST_BINIT [2] (maybe <- 0x1000087) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 12] %asi
add   %l4, 1, %l4

P2355: !_MEMBAR (Int)
membar #StoreLoad

P2356: !_DWLD [19] (Int) (Branch target of P2041)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
ba P2357
nop

TARGET2041:
ba RET2041
nop


P2357: !_LDD [1] (Int) (CBR)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2357
nop
RET2357:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2358: !_LDD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P2359: !_ST_BINIT [16] (maybe <- 0x1000088) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P2360: !_MEMBAR (Int)
membar #StoreLoad

P2361: !_LDD [1] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P2362: !_DWLD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2363: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2363
nop
RET2363:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2364: !_BST [3] (maybe <- 0x40800079) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2365: !_MEMBAR (FP)
membar #StoreLoad

P2366: !_DWLD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2367: !_ST [1] (maybe <- 0x4080007c) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P2368: !_MEMBAR (FP)

P2369: !_BST [19] (maybe <- 0x4080007d) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2370: !_MEMBAR (FP)
membar #StoreLoad

P2371: !_SWAP [20] (maybe <- 0x1000089) (Int)
mov %l4, %o1
swap  [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2372: !_LDD [9] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P2373: !_PREFETCH [9] (Int)
prefetch [%i2 + 0], 1

P2374: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P2375: !_LD [10] (FP)
ld [%i2 + 4], %f8
! 1 addresses covered

P2376: !_CAS [13] (maybe <- 0x100008a) (Int)
add %i3, 4, %o5
lduw [%o5], %o3
mov %o3, %l7
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2377: !_MEMBAR (FP)

P2378: !_BST [4] (maybe <- 0x40800080) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2379: !_MEMBAR (FP)
membar #StoreLoad

P2380: !_PREFETCH [13] (Int)
prefetch [%i3 + 4], 1

P2381: !_PREFETCH [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 21

P2382: !_LD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2383: !_CASX [13] (maybe <- 0x100008b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i2], %o5, %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
add  %l4, 1, %l4

P2384: !_MEMBAR (FP)
membar #StoreLoad

P2385: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P2386: !_MEMBAR (FP)

P2387: !_BSTC [13] (maybe <- 0x40800083) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2388: !_MEMBAR (FP)

P2389: !_BSTC [12] (maybe <- 0x40800086) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2390: !_MEMBAR (FP)

P2391: !_BSTC [0] (maybe <- 0x40800089) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2392: !_MEMBAR (FP)
membar #StoreLoad

P2393: !_ST [23] (maybe <- 0x100008d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P2394: !_DWST_BINIT [5] (maybe <- 0x100008e) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l3 
stxa %l3, [%i1 + 8] %asi 
add   %l4, 1, %l4

P2395: !_MEMBAR (Int) (Branch target of P2021)
membar #StoreLoad
ba P2396
nop

TARGET2021:
ba RET2021
nop


P2396: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P2397: !_MEMBAR (FP)

P2398: !_CASX [7] (maybe <- 0x100008f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i2], %o5, %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
add  %l4, 1, %l4

P2399: !_MEMBAR (FP)

P2400: !_BST [21] (maybe <- 0x4080008c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2401: !_MEMBAR (FP)

P2402: !_BSTC [16] (maybe <- 0x4080008f) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2403: !_MEMBAR (FP)
membar #StoreLoad

P2404: !_BLD [8] (FP) (CBR) (Branch target of P2577)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
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
fmovd %f34, %f18
fmovs %f19, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2404
nop
RET2404:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2405
nop

TARGET2577:
ba RET2577
nop


P2405: !_MEMBAR (FP)

P2406: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P2407: !_MEMBAR (FP)

P2408: !_ST [19] (maybe <- 0x1000091) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P2409: !_MEMBAR (FP)
membar #StoreLoad

P2410: !_BLD [13] (FP) (Branch target of P2731)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7
ba P2411
nop

TARGET2731:
ba RET2731
nop


P2411: !_MEMBAR (FP)

P2412: !_ST_BINIT [6] (maybe <- 0x1000092) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P2413: !_MEMBAR (Int)
membar #StoreLoad

P2414: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 28

P2415: !_DWLD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %l3
or %l3, %o3, %o3

P2416: !_SWAP [22] (maybe <- 0x1000093) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o4
swap  [%i2 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2417: !_MEMBAR (FP)

P2418: !_BST [7] (maybe <- 0x40800092) (FP) (Branch target of P2783)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P2419
nop

TARGET2783:
ba RET2783
nop


P2419: !_MEMBAR (FP)
membar #StoreLoad

P2420: !_CASX [5] (maybe <- 0x1000094) (Int)
add %i1, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
add  %l4, 1, %l4

P2421: !_MEMBAR (FP)

P2422: !_BST [6] (maybe <- 0x40800095) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2423: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2423
nop
RET2423:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2424: !_SWAP [6] (maybe <- 0x1000095) (Int)
mov %l4, %l7
swap  [%i3 + 0], %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P2425: !_DWST [16] (maybe <- 0x1000096) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P2426: !_LD [17] (Int)
lduw [%i2 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2427: !_DWST [11] (maybe <- 0x1000098) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l3 
stx %l3, [%i3 + 8]
add   %l4, 1, %l4

P2428: !_CAS [16] (maybe <- 0x1000099) (Int)
add %i2, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
mov %l4, %o3
cas [%l3], %o5, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2429: !_CAS [18] (maybe <- 0x100009a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %l7
mov %l7, %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3
mov %l4, %o4
cas [%i2], %o5, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2430: !_ST [8] (maybe <- 0x100009b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P2431: !_MEMBAR (FP)

P2432: !_BST [19] (maybe <- 0x40800098) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2433: !_MEMBAR (FP)
membar #StoreLoad

P2434: !_CAS [21] (maybe <- 0x100009c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %l3
mov %l3, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%i2], %l6, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2435: !_REPLACEMENT [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
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

P2436: !_ST [4] (maybe <- 0x100009d) (Int)
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4

P2437: !_CAS [6] (maybe <- 0x100009e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%i2], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2438: !_DWST_BINIT [14] (maybe <- 0x100009f) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5 
stxa %o5, [%i3 + 8] %asi 
add   %l4, 1, %l4

P2439: !_MEMBAR (Int)
membar #StoreLoad

P2440: !_DWST_BINIT [16] (maybe <- 0x10000a0) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4

P2441: !_MEMBAR (Int) (Branch target of P2128)
ba P2442
nop

TARGET2128:
ba RET2128
nop


P2442: !_BSTC [0] (maybe <- 0x4080009b) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2443: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2443
nop
RET2443:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2444: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P2445: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2445
nop
RET2445:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2446: !_LDD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P2447: !_DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P2448: !_MEMBAR (FP)

P2449: !_BSTC [19] (maybe <- 0x4080009e) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2450: !_MEMBAR (FP)

P2451: !_BST [12] (maybe <- 0x408000a1) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2452: !_MEMBAR (FP)
membar #StoreLoad

P2453: !_ST [12] (maybe <- 0x10000a2) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P2454: !_LDD [19] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P2455: !_CASX [16] (maybe <- 0x10000a3) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
add  %l4, 1, %l4

P2456: !_CASX [1] (maybe <- 0x10000a5) (Int)
ldx [%i0], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i0], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P2457: !_REPLACEMENT [1] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
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

P2458: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2458
nop
RET2458:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2459: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P2460: !_MEMBAR (FP)

P2461: !_DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2462: !_ST_BINIT [6] (maybe <- 0x10000a7) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2463: !_MEMBAR (Int)
membar #StoreLoad

P2464: !_DWLD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P2465: !_CAS [16] (maybe <- 0x10000a8) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2466: !_ST [0] (maybe <- 0x408000a4) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P2467: !_CASX [15] (maybe <- 0x10000a9) (Int)
ldx [%i3], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i3], %l7, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
add  %l4, 1, %l4

P2468: !_MEMBAR (FP)
membar #StoreLoad

P2469: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
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
fmovd %f34, %f18
fmovs %f19, %f0

P2470: !_MEMBAR (FP)

P2471: !_DWST_BINIT [22] (maybe <- 0x10000ab) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i3 + 0] %asi
add   %l4, 1, %l4

P2472: !_MEMBAR (Int)
membar #StoreLoad

P2473: !_ST_BINIT [3] (maybe <- 0x10000ad) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 0] %asi
add   %l4, 1, %l4

P2474: !_MEMBAR (Int)

P2475: !_BSTC [17] (maybe <- 0x408000a5) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2476: !_MEMBAR (FP) (Branch target of P2575)
membar #StoreLoad
ba P2477
nop

TARGET2575:
ba RET2575
nop


P2477: !_ST [13] (maybe <- 0x10000ae) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
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
stwa   %o5, [%i3 + 4] %asi
add   %l4, 1, %l4

P2478: !_MEMBAR (FP)
membar #StoreLoad

P2479: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

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


P2481: !_ST_BINIT [19] (maybe <- 0x10000af) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P2482: !_MEMBAR (Int)
membar #StoreLoad

P2483: !_ST [8] (maybe <- 0x10000b0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P2484: !_DWLD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l7
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %l6
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P2485: !_DWLD [7] (Int)
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0

P2486: !_MEMBAR (FP)

P2487: !_BSTC [18] (maybe <- 0x408000a8) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2488: !_MEMBAR (FP)
membar #StoreLoad

P2489: !_PREFETCH [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 0

P2490: !_ST_BINIT [22] (maybe <- 0x10000b1) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P2491: !_MEMBAR (Int)
membar #StoreLoad

P2492: !_PREFETCH [0] (Int)
prefetch [%i0 + 0], 3

P2493: !_ST_BINIT [2] (maybe <- 0x10000b2) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 12] %asi
add   %l4, 1, %l4

P2494: !_MEMBAR (Int)
membar #StoreLoad

P2495: !_PREFETCH [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 16

P2496: !_ST [21] (maybe <- 0x10000b3) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P2497: !_DWST_BINIT [8] (maybe <- 0x10000b4) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l6 
stxa %l6, [%i3 + 8] %asi 
add   %l4, 1, %l4

P2498: !_MEMBAR (Int)
membar #StoreLoad

P2499: !_DWLD [4] (Int)
ldx [%i1 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2500: !_DWLD [9] (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %f4
! 2 addresses covered

P2501: !_DWST_BINIT [5] (maybe <- 0x10000b5) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l7 
stxa %l7, [%i1 + 8] %asi 
add   %l4, 1, %l4

P2502: !_MEMBAR (Int)
membar #StoreLoad

P2503: !_ST [4] (maybe <- 0x10000b6) (Int)
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4

P2504: !_DWST [0] (maybe <- 0x10000b7) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i0 + 0]
add   %l4, 1, %l4

P2505: !_DWST_BINIT [13] (maybe <- 0x10000b9) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P2506: !_MEMBAR (Int)
membar #StoreLoad

P2507: !_LDD [13] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P2508: !_MEMBAR (FP)

P2509: !_BST [10] (maybe <- 0x408000ab) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2509
nop
RET2509:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2510: !_MEMBAR (FP)
membar #StoreLoad

P2511: !_ST_BINIT [0] (maybe <- 0x10000bb) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P2512: !_MEMBAR (Int)
membar #StoreLoad

P2513: !_CAS [1] (maybe <- 0x10000bc) (Int)
add %i0, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
mov %l4, %o3
cas [%l3], %o5, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2514: !_MEMBAR (FP)
membar #StoreLoad

P2515: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P2516: !_MEMBAR (FP)

P2517: !_PREFETCH [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 1

P2518: !_LDD [1] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P2519: !_SWAP [14] (maybe <- 0x10000bd) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7
swap  [%i2 + 12], %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P2520: !_DWST_BINIT [5] (maybe <- 0x10000be) (Int) (CBR)
wr %g0, 0xe2, %asi
mov %l4, %o5 
stxa %o5, [%i1 + 8] %asi 
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2520
nop
RET2520:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2521: !_MEMBAR (Int)
membar #StoreLoad

P2522: !_CAS [5] (maybe <- 0x10000bf) (Int)
add %i1, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P2523: !_MEMBAR (FP)

P2524: !_BSTC [18] (maybe <- 0x408000ae) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2524
nop
RET2524:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2525: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2525
nop
RET2525:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2526: !_ST_BINIT [14] (maybe <- 0x10000c0) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P2527: !_MEMBAR (Int)
membar #StoreLoad

P2528: !_CASX [2] (maybe <- 0x10000c1) (Int)
add %i0, 8, %l3
ldx [%l3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %o5
mov %l4, %o2
casx [%l3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P2529: !_DWST_BINIT [10] (maybe <- 0x10000c2) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i2 + 0] %asi
add   %l4, 1, %l4

P2530: !_MEMBAR (Int) (Branch target of P2525)
membar #StoreLoad
ba P2531
nop

TARGET2525:
ba RET2525
nop


P2531: !_DWLD [17] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2532: !_MEMBAR (FP) (Branch target of P2726)
ba P2533
nop

TARGET2726:
ba RET2726
nop


P2533: !_BST [0] (maybe <- 0x408000b1) (FP) (Branch target of P2959)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P2534
nop

TARGET2959:
ba RET2959
nop


P2534: !_MEMBAR (FP)
membar #StoreLoad

P2535: !_ST_BINIT [17] (maybe <- 0x10000c4) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P2536: !_MEMBAR (Int)

P2537: !_BST [1] (maybe <- 0x408000b4) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2538: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2538
nop
RET2538:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2539: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P2540: !_MEMBAR (FP)

P2541: !_CAS [0] (maybe <- 0x10000c5) (Int)
lduw [%i0], %l6
mov %l6, %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3
mov %l4, %o4
cas [%i0], %l7, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2542: !_PREFETCH [5] (Int)
prefetch [%i1 + 12], 2

P2543: !_PREFETCH [13] (Int)
prefetch [%i2 + 4], 4

P2544: !_DWST [16] (maybe <- 0x10000c6) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P2545: !_DWST_BINIT [2] (maybe <- 0x10000c8) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l6 
stxa %l6, [%i0 + 8] %asi 
add   %l4, 1, %l4

P2546: !_MEMBAR (Int)
membar #StoreLoad

P2547: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P2548: !_MEMBAR (FP)

P2549: !_ST [21] (maybe <- 0x10000c9) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P2550: !_MEMBAR (FP)
membar #StoreLoad

P2551: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
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
fmovd %f34, %f18
fmovs %f19, %f1

P2552: !_MEMBAR (FP)

P2553: !_CASX [18] (maybe <- 0x10000ca) (Int)
ldx [%i3], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
add  %l4, 1, %l4

P2554: !_DWST_BINIT [1] (maybe <- 0x10000cc) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i0 + 0] %asi
add   %l4, 1, %l4

P2555: !_MEMBAR (Int)
membar #StoreLoad

P2556: !_PREFETCH [20] (Int)
prefetch [%i3 + 12], 1

P2557: !_MEMBAR (FP)
membar #StoreLoad

P2558: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P2559: !_MEMBAR (FP)

P2560: !_DWLD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l7
or %l7, %o1, %o1

P2561: !_DWLD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2562: !_LD [18] (Int)
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2

P2563: !_SWAP [7] (maybe <- 0x10000ce) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o3
swap  [%i2 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2564: !_MEMBAR (FP)

P2565: !_BST [7] (maybe <- 0x408000b7) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2565
nop
RET2565:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2566: !_MEMBAR (FP)
membar #StoreLoad

P2567: !_LD [15] (Int) (CBR) (Branch target of P2690)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2567
nop
RET2567:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2568
nop

TARGET2690:
ba RET2690
nop


P2568: !_PREFETCH [7] (Int)
prefetch [%i2 + 4], 17

P2569: !_PREFETCH [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 4

P2570: !_LDD [5] (Int)
ldd [%i1 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P2571: !_CAS [14] (maybe <- 0x10000cf) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l6], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2572: !_PREFETCH [21] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 0] %asi, 20

P2573: !_CASX [13] (maybe <- 0x10000d0) (Int)
ldx [%i3], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P2574: !_SWAP [14] (maybe <- 0x10000d2) (Int)
mov %l4, %l7
swap  [%i3 + 12], %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P2575: !_DWST_BINIT [6] (maybe <- 0x10000d3) (Int) (CBR)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2575
nop
RET2575:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2576: !_MEMBAR (Int)
membar #StoreLoad

P2577: !_DWLD [13] (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f18
! 2 addresses covered
fmovs %f18, %f5
fmovs %f19, %f6

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2577
nop
RET2577:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2578: !_DWST_BINIT [1] (maybe <- 0x10000d5) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i0 + 0] %asi
add   %l4, 1, %l4

P2579: !_MEMBAR (Int)

P2580: !_BSTC [4] (maybe <- 0x408000ba) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2581: !_MEMBAR (FP)
membar #StoreLoad

P2582: !_CAS [22] (maybe <- 0x10000d7) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P2583: !_LDD [4] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2584: !_CAS [18] (maybe <- 0x10000d8) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2584
nop
RET2584:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2585: !_MEMBAR (FP) (Branch target of P2625)
ba P2586
nop

TARGET2625:
ba RET2625
nop


P2586: !_BST [16] (maybe <- 0x408000bd) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2587: !_MEMBAR (FP)
membar #StoreLoad

P2588: !_DWST_BINIT [11] (maybe <- 0x10000d9) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P2589: !_MEMBAR (Int)
membar #StoreLoad

P2590: !_ST [13] (maybe <- 0x10000da) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P2591: !_CAS [18] (maybe <- 0x10000db) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o1
mov %o1, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2592: !_CASX [1] (maybe <- 0x10000dc) (Int)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P2593: !_DWST_BINIT [17] (maybe <- 0x10000de) (Int) (Branch target of P2567)
wr %g0, 0xe2, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l7 
stxa %l7, [%i3 + 8] %asi 
add   %l4, 1, %l4
ba P2594
nop

TARGET2567:
ba RET2567
nop


P2594: !_MEMBAR (Int)

P2595: !_BST [20] (maybe <- 0x408000c0) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2596: !_MEMBAR (FP)

P2597: !_BST [21] (maybe <- 0x408000c3) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2598: !_MEMBAR (FP)
membar #StoreLoad

P2599: !_ST_BINIT [6] (maybe <- 0x10000df) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2600: !_MEMBAR (Int)
membar #StoreLoad

P2601: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2602: !_DWLD [19] (Int) (LE)
wr %g0, 0x88, %asi
ldxa [%i2 + 0] %asi, %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(upper) -> %o0(upper)
or %l6, %g0, %o0

P2603: !_ST [20] (maybe <- 0x408000c6) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 12 ]

P2604: !_CAS [21] (maybe <- 0x10000e0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
mov %l4, %o1
cas [%i3], %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2605: !_LD [23] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i3 + 12] %asi, %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P2606: !_DWST_BINIT [22] (maybe <- 0x10000e1) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P2607: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2607
nop
RET2607:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2608: !_SWAP [7] (maybe <- 0x10000e3) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o2
swap  [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2609: !_LD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2

P2610: !_CASX [10] (maybe <- 0x10000e4) (Int)
ldx [%i3], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i3], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P2611: !_ST [14] (maybe <- 0x10000e6) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P2612: !_LDD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P2613: !_LDD [13] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P2614: !_CASX [5] (maybe <- 0x10000e7) (Int)
add %i1, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P2615: !_CASX [14] (maybe <- 0x10000e8) (Int)
add %i2, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
add  %l4, 1, %l4

P2616: !_CASX [0] (maybe <- 0x10000e9) (Int)
ldx [%i0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i0], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P2617: !_MEMBAR (FP)
membar #StoreLoad

P2618: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P2619: !_MEMBAR (FP)

P2620: !_PREFETCH [18] (Int)
prefetch [%i3 + 0], 1

P2621: !_ST [12] (maybe <- 0x10000eb) (Int) (CBR)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2621
nop
RET2621:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2622: !_ST_BINIT [5] (maybe <- 0x10000ec) (Int) (CBR)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 12] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2622
nop
RET2622:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2623: !_MEMBAR (Int)

P2624: !_BST [4] (maybe <- 0x408000c7) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2625: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2625
nop
RET2625:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2626: !_DWST [7] (maybe <- 0x10000ed) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P2627: !_SWAP [23] (maybe <- 0x10000ef) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6
swap  [%i3 + 12], %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P2628: !_ST [12] (maybe <- 0x10000f0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P2629: !_LD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2630: !_MEMBAR (FP)
membar #StoreLoad

P2631: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P2632: !_MEMBAR (FP)

P2633: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P2634: !_MEMBAR (FP)

P2635: !_CAS [21] (maybe <- 0x10000f1) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %l7
mov %l7, %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3
mov %l4, %o4
cas [%i2], %o5, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2636: !_CASX [14] (maybe <- 0x10000f2) (Int)
add %i3, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
add  %l4, 1, %l4

P2637: !_LDD [6] (Int) (Branch target of P2621)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
ba P2638
nop

TARGET2621:
ba RET2621
nop


P2638: !_LD [17] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P2639: !_ST [17] (maybe <- 0x10000f3) (Int) (Branch target of P2607)
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
ba P2640
nop

TARGET2607:
ba RET2607
nop


P2640: !_MEMBAR (FP)
membar #StoreLoad

P2641: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P2642: !_MEMBAR (FP)

P2643: !_DWST [15] (maybe <- 0x10000f4) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P2644: !_LD [16] (Int)
lduw [%i3 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2645: !_MEMBAR (FP)

P2646: !_BST [22] (maybe <- 0x408000ca) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2647: !_MEMBAR (FP)
membar #StoreLoad

P2648: !_PREFETCH [22] (Int)
prefetch [%i2 + 4], 26

P2649: !_MEMBAR (FP)

P2650: !_BSTC [9] (maybe <- 0x408000cd) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2651: !_MEMBAR (FP)
membar #StoreLoad

P2652: !_CASX [4] (maybe <- 0x10000f6) (Int)
ldx [%i1], %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i1], %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
add  %l4, 1, %l4

P2653: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2654: !_CASX [8] (maybe <- 0x10000f8) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P2655: !_SWAP [20] (maybe <- 0x10000f9) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %o5, %l6, %l7
srl %l7, 8, %l7
sll %o5, 8, %o5
and %o5, %l6, %o5
or %o5, %l7, %o5
srl %o5, 16, %l7
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l7, %o5
swapa  [%i3 + 12] %asi, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P2656: !_DWLD [8] (Int)
ldx [%i2 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2657: !_CASX [7] (maybe <- 0x10000fa) (Int)
ldx [%i2], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i2], %l7, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
add  %l4, 1, %l4

P2658: !_ST [15] (maybe <- 0x10000fc) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P2659: !_MEMBAR (FP)
membar #StoreLoad

P2660: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P2661: !_MEMBAR (FP)

P2662: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P2663: !_MEMBAR (FP)

P2664: !_CAS [15] (maybe <- 0x10000fd) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
mov %l4, %o1
cas [%i3], %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2665: !_DWST_BINIT [21] (maybe <- 0x10000fe) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P2666: !_MEMBAR (Int)
membar #StoreLoad

P2667: !_DWST [17] (maybe <- 0x1000100) (Int)
mov %l4, %l3 
stx %l3, [%i3 + 8]
add   %l4, 1, %l4

P2668: !_PREFETCH [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 20

P2669: !_MEMBAR (FP)

P2670: !_BSTC [20] (maybe <- 0x408000d0) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2671: !_MEMBAR (FP)
membar #StoreLoad

P2672: !_SWAP [14] (maybe <- 0x1000101) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3
swap  [%i3 + 12], %l3
! move %l3(lower) -> %o1(lower)
srl %l3, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2673: !_CAS [19] (maybe <- 0x1000102) (Int)
add %i2, 4, %l7
lduw [%l7], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P2674: !_LDD [18] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P2675: !_DWST_BINIT [23] (maybe <- 0x1000103) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P2676: !_MEMBAR (Int)
membar #StoreLoad

P2677: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P2678: !_MEMBAR (FP)

P2679: !_REPLACEMENT [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
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

P2680: !_REPLACEMENT [13] (Int)
sethi %hi(0x20000), %l7
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

P2681: !_REPLACEMENT [20] (Int)
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]

P2682: !_PREFETCH [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

P2683: !_MEMBAR (FP)
membar #StoreLoad

P2684: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P2685: !_MEMBAR (FP)

P2686: !_SWAP [22] (maybe <- 0x1000104) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o4
swap  [%i3 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2687: !_PREFETCH [21] (Int)
prefetch [%i3 + 0], 4

P2688: !_CASX [12] (maybe <- 0x1000105) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i2], %o5, %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
add  %l4, 1, %l4

P2689: !_ST [23] (maybe <- 0x1000107) (Int)
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P2690: !_CASX [13] (maybe <- 0x1000108) (Int) (CBR) (Branch target of P2520)
ldx [%i2], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i2], %l7, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2690
nop
RET2690:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2691
nop

TARGET2520:
ba RET2520
nop


P2691: !_MEMBAR (FP)

P2692: !_BSTC [9] (maybe <- 0x408000d3) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2693: !_MEMBAR (FP)

P2694: !_BSTC [11] (maybe <- 0x408000d6) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2695: !_MEMBAR (FP) (Branch target of P2584)
membar #StoreLoad
ba P2696
nop

TARGET2584:
ba RET2584
nop


P2696: !_ST_BINIT [0] (maybe <- 0x100010a) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P2697: !_MEMBAR (Int)
membar #StoreLoad

P2698: !_REPLACEMENT [1] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
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

P2699: !_CASX [21] (maybe <- 0x100010b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l7
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %o5
or %o5, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
add  %l4, 1, %l4

P2700: !_LD [1] (Int)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

P2701: !_LD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2702: !_DWST_BINIT [4] (maybe <- 0x100010d) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i1 + 0] %asi
add   %l4, 1, %l4

P2703: !_MEMBAR (Int)
membar #StoreLoad

P2704: !_PREFETCH [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 2

P2705: !_REPLACEMENT [3] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
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

P2706: !_ST_BINIT [13] (maybe <- 0x100010f) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P2707: !_MEMBAR (Int)
membar #StoreLoad

P2708: !_CASX [8] (maybe <- 0x1000110) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
add  %l4, 1, %l4

P2709: !_CASX [4] (maybe <- 0x1000111) (Int)
ldx [%i1], %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i1], %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
add  %l4, 1, %l4

P2710: !_DWST [22] (maybe <- 0x1000113) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i3 + 0]
add   %l4, 1, %l4

P2711: !_LDD [7] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P2712: !_LD [21] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2713: !_PREFETCH [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 16

P2714: !_SWAP [23] (maybe <- 0x1000115) (Int)
mov %l4, %o2
swap  [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2715: !_SWAP [5] (maybe <- 0x1000116) (Int)
mov %l4, %o5
swap  [%i1 + 12], %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P2716: !_ST_BINIT [2] (maybe <- 0x1000117) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 12] %asi
add   %l4, 1, %l4

P2717: !_MEMBAR (Int)
membar #StoreLoad

P2718: !_SWAP [12] (maybe <- 0x1000118) (Int)
mov %l4, %o3
swap  [%i2 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2719: !_ST_BINIT [20] (maybe <- 0x1000119) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P2720: !_MEMBAR (Int)
membar #StoreLoad

P2721: !_DWST_BINIT [19] (maybe <- 0x100011a) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P2722: !_MEMBAR (Int)
membar #StoreLoad

P2723: !_PREFETCH [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 2

P2724: !_PREFETCH [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 3

P2725: !_PREFETCH [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 0

P2726: !_REPLACEMENT [1] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l3
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
be,pt  %xcc, TARGET2726
nop
RET2726:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2727: !_MEMBAR (FP)
membar #StoreLoad

P2728: !_BLD [21] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
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
fmovd %f34, %f18
fmovs %f19, %f1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2728
nop
RET2728:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2729: !_MEMBAR (FP)

P2730: !_ST_BINIT [19] (maybe <- 0x100011c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P2731: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2731
nop
RET2731:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2732: !_ST_BINIT [1] (maybe <- 0x100011d) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P2733: !_MEMBAR (Int)

P2734: !_BST [8] (maybe <- 0x408000d9) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2735: !_MEMBAR (FP)
membar #StoreLoad

P2736: !_DWST [1] (maybe <- 0x100011e) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i0 + 0]
add   %l4, 1, %l4

P2737: !_ST_BINIT [16] (maybe <- 0x1000120) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P2738: !_MEMBAR (Int)
membar #StoreLoad

P2739: !_PREFETCH [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 4

P2740: !_PREFETCH [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 16

P2741: !_DWST_BINIT [6] (maybe <- 0x1000121) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P2742: !_MEMBAR (Int) (Branch target of P2268)
ba P2743
nop

TARGET2268:
ba RET2268
nop


P2743: !_BST [4] (maybe <- 0x408000dc) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2744: !_MEMBAR (FP)
membar #StoreLoad

P2745: !_PREFETCH [3] (Int)
prefetch [%i1 + 0], 3

P2746: !_DWLD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %o5
or %o5, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4

P2747: !_MEMBAR (FP)

P2748: !_BSTC [23] (maybe <- 0x408000df) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2749: !_MEMBAR (FP)
membar #StoreLoad

P2750: !_DWLD [3] (Int) (Branch target of P2968)
ldx [%i1 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
ba P2751
nop

TARGET2968:
ba RET2968
nop


P2751: !_SWAP [15] (maybe <- 0x1000123) (Int) (Branch target of P2324)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3
swap  [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
ba P2752
nop

TARGET2324:
ba RET2324
nop


P2752: !_PREFETCH [4] (Int)
prefetch [%i1 + 4], 0

P2753: !_LD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2754: !_MEMBAR (FP)
membar #StoreLoad

P2755: !_BLD [4] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2755
nop
RET2755:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2756: !_MEMBAR (FP) (Branch target of P2153)
ba P2757
nop

TARGET2153:
ba RET2153
nop


P2757: !_PREFETCH [5] (Int)
prefetch [%i1 + 12], 19

P2758: !_MEMBAR (FP)

P2759: !_BST [17] (maybe <- 0x408000e2) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2760: !_MEMBAR (FP)
membar #StoreLoad

P2761: !_ST_BINIT [5] (maybe <- 0x1000124) (Int) (LE)
wr %g0, 0xea, %asi
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
stwa   %o5, [%i1 + 12] %asi
add   %l4, 1, %l4

P2762: !_MEMBAR (Int) (LE)
membar #StoreLoad

P2763: !_ST [12] (maybe <- 0x1000125) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2764: !_MEMBAR (FP)

P2765: !_BST [10] (maybe <- 0x408000e5) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2766: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2766
nop
RET2766:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2767: !_LDD [9] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P2768: !_ST_BINIT [8] (maybe <- 0x1000126) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P2769: !_MEMBAR (Int)

P2770: !_BSTC [4] (maybe <- 0x408000e8) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2771: !_MEMBAR (FP)
membar #StoreLoad

P2772: !_LD [4] (Int)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

P2773: !_ST_BINIT [20] (maybe <- 0x1000127) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P2774: !_MEMBAR (Int)
membar #StoreLoad

P2775: !_ST [0] (maybe <- 0x1000128) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P2776: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 22

P2777: !_DWST [1] (maybe <- 0x1000129) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i0 + 0]
add   %l4, 1, %l4

P2778: !_MEMBAR (FP)

P2779: !_BST [20] (maybe <- 0x408000eb) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2780: !_MEMBAR (FP)
membar #StoreLoad

P2781: !_DWST [7] (maybe <- 0x408000ee) (FP) (Branch target of P2814)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]
ba P2782
nop

TARGET2814:
ba RET2814
nop


P2782: !_LDD [1] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P2783: !_SWAP [8] (maybe <- 0x100012b) (Int) (CBR)
mov %l4, %o4
swap  [%i2 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2783
nop
RET2783:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2784: !_MEMBAR (FP)

P2785: !_BSTC [18] (maybe <- 0x408000f0) (FP) (Branch target of P2622)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P2786
nop

TARGET2622:
ba RET2622
nop


P2786: !_MEMBAR (FP)
membar #StoreLoad

P2787: !_PREFETCH [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 24

P2788: !_LD [2] (Int)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2789: !_ST_BINIT [3] (maybe <- 0x100012c) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 0] %asi
add   %l4, 1, %l4

P2790: !_MEMBAR (Int)
membar #StoreLoad

P2791: !_PREFETCH [15] (Int)
prefetch [%i2 + 0], 22

P2792: !_REPLACEMENT [1] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P2793: !_CASX [8] (maybe <- 0x100012d) (Int) (Branch target of P2363)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P2794
nop

TARGET2363:
ba RET2363
nop


P2794: !_ST_BINIT [15] (maybe <- 0x100012e) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2795: !_MEMBAR (Int)

P2796: !_BST [2] (maybe <- 0x408000f3) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2797: !_MEMBAR (FP)
membar #StoreLoad

P2798: !_DWST [1] (maybe <- 0x100012f) (Int)
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i0 + 0]
add   %l4, 1, %l4

P2799: !_DWST [17] (maybe <- 0x1000131) (Int)
mov %l4, %l3 
stx %l3, [%i3 + 8]
add   %l4, 1, %l4

P2800: !_CAS [20] (maybe <- 0x1000132) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l3
lduw [%l3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P2801: !_CAS [18] (maybe <- 0x1000133) (Int) (LE) (CBR)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
wr %g0, 0x88, %asi
lduwa [%i2] %asi, %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l6, %l7
casa [%i2] %asi, %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2801
nop
RET2801:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2802: !_DWLD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2803: !_DWST_BINIT [18] (maybe <- 0x1000134) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4

P2804: !_MEMBAR (Int)
membar #StoreLoad

P2805: !_PREFETCH [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 1

P2806: !_CASX [6] (maybe <- 0x1000136) (Int)
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2807: !_SWAP [17] (maybe <- 0x1000138) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o2
swap  [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2808: !_LDD [6] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P2809: !_MEMBAR (FP)
membar #StoreLoad

P2810: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P2811: !_MEMBAR (FP)

P2812: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P2813: !_MEMBAR (FP)

P2814: !_DWLD [14] (Int) (LE) (CBR)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 8] %asi, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2814
nop
RET2814:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2815: !_REPLACEMENT [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
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

P2816: !_MEMBAR (FP)

P2817: !_BSTC [20] (maybe <- 0x408000f6) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2818: !_MEMBAR (FP)
membar #StoreLoad

P2819: !_ST_BINIT [15] (maybe <- 0x1000139) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2820: !_MEMBAR (Int)
membar #StoreLoad

P2821: !_DWLD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2822: !_MEMBAR (FP)

P2823: !_BSTC [10] (maybe <- 0x408000f9) (FP) (Branch target of P2509)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P2824
nop

TARGET2509:
ba RET2509
nop


P2824: !_MEMBAR (FP)
membar #StoreLoad

P2825: !_DWST_BINIT [18] (maybe <- 0x100013a) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P2826: !_MEMBAR (Int)
membar #StoreLoad

P2827: !_ST_BINIT [1] (maybe <- 0x100013c) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P2828: !_MEMBAR (Int)
membar #StoreLoad

P2829: !_LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2830: !_ST [21] (maybe <- 0x100013d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2831: !_PREFETCH [18] (Int)
prefetch [%i2 + 0], 1

P2832: !_MEMBAR (FP)
membar #StoreLoad

P2833: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P2834: !_MEMBAR (FP)

P2835: !_CASX [4] (maybe <- 0x100013e) (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0x200000), %l3
sub   %i1, %l3, %i1
ldx [%i1], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i1], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P2836: !_CAS [10] (maybe <- 0x1000140) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l6, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2837: !_MEMBAR (FP)

P2838: !_BSTC [21] (maybe <- 0x408000fc) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2839: !_MEMBAR (FP)
membar #StoreLoad

P2840: !_REPLACEMENT [4] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P2841: !_ST_BINIT [19] (maybe <- 0x1000141) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P2842: !_MEMBAR (Int)
membar #StoreLoad

P2843: !_CASX [10] (maybe <- 0x1000142) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i3], %l7, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
add  %l4, 1, %l4

P2844: !_PREFETCH [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 22

P2845: !_DWST_BINIT [6] (maybe <- 0x1000144) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i3 + 0] %asi
add   %l4, 1, %l4

P2846: !_MEMBAR (Int)
membar #StoreLoad

P2847: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
fmovd %f34, %f18
fmovs %f19, %f0

P2848: !_MEMBAR (FP)

P2849: !_DWST [3] (maybe <- 0x1000146) (Int)
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i1 + 0]
add   %l4, 1, %l4

P2850: !_DWST_BINIT [15] (maybe <- 0x1000148) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P2851: !_MEMBAR (Int)
membar #StoreLoad

P2852: !_DWLD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P2853: !_MEMBAR (FP)

P2854: !_BSTC [20] (maybe <- 0x408000ff) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2855: !_MEMBAR (FP) (Branch target of P2357)
ba P2856
nop

TARGET2357:
ba RET2357
nop


P2856: !_BST [15] (maybe <- 0x40800102) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2857: !_MEMBAR (FP)
membar #StoreLoad

P2858: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

P2859: !_MEMBAR (FP)

P2860: !_ST [14] (maybe <- 0x100014a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P2861: !_DWST_BINIT [11] (maybe <- 0x100014b) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l7 
stxa %l7, [%i2 + 8] %asi 
add   %l4, 1, %l4

P2862: !_MEMBAR (Int)
membar #StoreLoad

P2863: !_SWAP [16] (maybe <- 0x100014c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5
swap  [%i3 + 4], %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l6
or %l6, %o1, %o1
add   %l4, 1, %l4

P2864: !_MEMBAR (FP)
membar #StoreLoad

P2865: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6

P2866: !_MEMBAR (FP)

P2867: !_BSTC [6] (maybe <- 0x40800105) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2868: !_MEMBAR (FP)
membar #StoreLoad

P2869: !_REPLACEMENT [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
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

P2870: !_CAS [3] (maybe <- 0x100014d) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
wr %g0, 0x88, %asi
lduwa [%i1] %asi, %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l3, %l6
casa [%i1] %asi, %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2871: !_MEMBAR (FP)
membar #StoreLoad

P2872: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P2873: !_MEMBAR (FP)

P2874: !_BSTC [13] (maybe <- 0x40800108) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2875: !_MEMBAR (FP)
membar #StoreLoad

P2876: !_REPLACEMENT [6] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
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

P2877: !_PREFETCH [4] (Int)
prefetch [%i1 + 4], 20

P2878: !_MEMBAR (FP)
membar #StoreLoad

P2879: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P2880: !_MEMBAR (FP)

P2881: !_BST [3] (maybe <- 0x4080010b) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2882: !_MEMBAR (FP)
membar #StoreLoad

P2883: !_DWLD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P2884: !_CAS [5] (maybe <- 0x100014e) (Int)
add %i1, 12, %l7
lduw [%l7], %o4
mov %o4, %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P2885: !_MEMBAR (FP)
membar #StoreLoad

P2886: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P2887: !_MEMBAR (FP)

P2888: !_BSTC [21] (maybe <- 0x4080010e) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2889: !_MEMBAR (FP)
membar #StoreLoad

P2890: !_ST_BINIT [10] (maybe <- 0x100014f) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P2891: !_MEMBAR (Int)

P2892: !_BSTC [0] (maybe <- 0x40800111) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2893: !_MEMBAR (FP)
membar #StoreLoad

P2894: !_CASX [14] (maybe <- 0x1000150) (Int) (Branch target of P2908)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P2895
nop

TARGET2908:
ba RET2908
nop


P2895: !_MEMBAR (FP)

P2896: !_BST [15] (maybe <- 0x40800114) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2897: !_MEMBAR (FP)

P2898: !_BSTC [20] (maybe <- 0x40800117) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2899: !_MEMBAR (FP)

P2900: !_BST [6] (maybe <- 0x4080011a) (FP) (Branch target of P3003)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P2901
nop

TARGET3003:
ba RET3003
nop


P2901: !_MEMBAR (FP)

P2902: !_BSTC [0] (maybe <- 0x4080011d) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2903: !_MEMBAR (FP) (Branch target of P2404)
membar #StoreLoad
ba P2904
nop

TARGET2404:
ba RET2404
nop


P2904: !_DWLD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2905: !_CAS [10] (maybe <- 0x1000151) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l6, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2906: !_CAS [8] (maybe <- 0x1000152) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l6, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2907: !_LD [19] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2908: !_PREFETCH [4] (Int) (CBR)
prefetch [%i1 + 4], 3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2908
nop
RET2908:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2909: !_DWST [10] (maybe <- 0x40800120) (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P2910: !_ST_BINIT [20] (maybe <- 0x1000153) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P2911: !_MEMBAR (Int)
membar #StoreLoad

P2912: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P2913: !_DWST [15] (maybe <- 0x1000154) (Int) (LE)
wr %g0, 0x88, %asi
sllx %l4, 32, %l7
add   %l4, 1, %l4
or %l7, %l4, %o5
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %o5, %l3, %l7
srlx %l7, 8, %l7
sllx %o5, 8, %o5
and %o5, %l3, %o5
or %o5, %l7, %o5 
sethi %hi(0xffff0000), %l3
srlx %o5, 16, %l7
andn %l7, %l3, %l7
andn %o5, %l3, %o5
sllx %o5, 16, %o5
or %o5, %l7, %o5 
srlx %o5, 32, %l7
sllx %o5, 32, %o5
or %o5, %l7, %l7 
stxa %l7, [%i2 + 0 ] %asi
add   %l4, 1, %l4

P2914: !_ST_BINIT [12] (maybe <- 0x1000156) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2915: !_MEMBAR (Int)
membar #StoreLoad

P2916: !_CAS [17] (maybe <- 0x1000157) (Int)
add %i2, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P2917: !_LDD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P2918: !_MEMBAR (FP)

P2919: !_BSTC [15] (maybe <- 0x40800122) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2919
nop
RET2919:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2920: !_MEMBAR (FP)

P2921: !_BST [17] (maybe <- 0x40800125) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2922: !_MEMBAR (FP)
membar #StoreLoad

P2923: !_CASX [15] (maybe <- 0x1000158) (Int)
ldx [%i3], %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
add  %l4, 1, %l4

P2924: !_MEMBAR (FP)

P2925: !_BSTC [15] (maybe <- 0x40800128) (FP) (Branch target of P2480)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P2926
nop

TARGET2480:
ba RET2480
nop


P2926: !_MEMBAR (FP)
membar #StoreLoad

P2927: !_LD [2] (Int)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3

P2928: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2929: !_ST_BINIT [13] (maybe <- 0x100015a) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P2930: !_MEMBAR (Int) (Branch target of P2314)
membar #StoreLoad
ba P2931
nop

TARGET2314:
ba RET2314
nop


P2931: !_DWST_BINIT [11] (maybe <- 0x100015b) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6 
stxa %l6, [%i2 + 8] %asi 
add   %l4, 1, %l4

P2932: !_MEMBAR (Int)
membar #StoreLoad

P2933: !_DWST [2] (maybe <- 0x100015c) (Int)
mov %l4, %l3 
stx %l3, [%i0 + 8]
add   %l4, 1, %l4

P2934: !_MEMBAR (FP)
membar #StoreLoad

P2935: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

P2936: !_MEMBAR (FP)

P2937: !_SWAP [23] (maybe <- 0x100015d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 12], %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P2938: !_MEMBAR (FP)

P2939: !_BSTC [23] (maybe <- 0x4080012b) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2940: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2940
nop
RET2940:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2941: !_CAS [21] (maybe <- 0x100015e) (Int)
lduw [%i2], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2942: !_ST [20] (maybe <- 0x100015f) (Int)
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P2943: !_MEMBAR (FP)

P2944: !_BST [1] (maybe <- 0x4080012e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P2945: !_MEMBAR (FP)
membar #StoreLoad

P2946: !_REPLACEMENT [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P2947: !_LDD [10] (Int) (Branch target of P2801)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
ba P2948
nop

TARGET2801:
ba RET2801
nop


P2948: !_MEMBAR (FP)

P2949: !_BST [13] (maybe <- 0x40800131) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2950: !_MEMBAR (FP)
membar #StoreLoad

P2951: !_DWLD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2952: !_ST_BINIT [16] (maybe <- 0x1000160) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P2953: !_MEMBAR (Int)
membar #StoreLoad

P2954: !_ST_BINIT [16] (maybe <- 0x1000161) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P2955: !_MEMBAR (Int)
membar #StoreLoad

P2956: !_ST_BINIT [12] (maybe <- 0x1000162) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P2957: !_MEMBAR (Int)
membar #StoreLoad

P2958: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6

P2959: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2959
nop
RET2959:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2960: !_LDD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P2961: !_LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2962: !_CAS [23] (maybe <- 0x1000163) (Int)
add %i2, 12, %o5
lduw [%o5], %o4
mov %o4, %l7
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P2963: !_LDD [2] (Int)
ldd [%i0 + 8], %l6
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P2964: !_MEMBAR (FP)

P2965: !_BST [5] (maybe <- 0x40800134) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P2966: !_MEMBAR (FP)
membar #StoreLoad

P2967: !_DWST_BINIT [11] (maybe <- 0x1000164) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o5 
stxa %o5, [%i3 + 8] %asi 
add   %l4, 1, %l4

P2968: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2968
nop
RET2968:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2969: !_DWST [0] (maybe <- 0x1000165) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i0 + 0]
add   %l4, 1, %l4

P2970: !_DWST [22] (maybe <- 0x1000167) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4

P2971: !_REPLACEMENT [15] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
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

P2972: !_DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l3
or %l3, %o0, %o0

P2973: !_SWAP [3] (maybe <- 0x1000169) (Int)
mov %l4, %o1
swap  [%i1 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2974: !_ST_BINIT [12] (maybe <- 0x100016a) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P2975: !_MEMBAR (Int)
membar #StoreLoad

P2976: !_BLD [20] (FP) (Branch target of P2443)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9
ba P2977
nop

TARGET2443:
ba RET2443
nop


P2977: !_MEMBAR (FP)

P2978: !_REPLACEMENT [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P2979: !_ST [0] (maybe <- 0x100016b) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P2980: !_DWST_BINIT [13] (maybe <- 0x100016c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4

P2981: !_MEMBAR (Int)
membar #StoreLoad

P2982: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P2983: !_MEMBAR (FP)

P2984: !_BST [14] (maybe <- 0x40800137) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P2985: !_MEMBAR (FP)
membar #StoreLoad

P2986: !_CAS [7] (maybe <- 0x100016e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
mov %l4, %o2
cas [%l6], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2987: !_DWST [0] (maybe <- 0x100016f) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i0 + 0]
add   %l4, 1, %l4

P2988: !_SWAP [12] (maybe <- 0x1000171) (Int)
mov %l4, %l6
swap  [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P2989: !_MEMBAR (FP)
membar #StoreLoad

P2990: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P2991: !_MEMBAR (FP)

P2992: !_CASX [23] (maybe <- 0x1000172) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov  %o3, %l7
mov %l4, %o4
casx [%o5], %l7, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P2993: !_LDD [16] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P2994: !_ST_BINIT [20] (maybe <- 0x1000173) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P2995: !_MEMBAR (Int)
membar #StoreLoad

P2996: !_LDD [0] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P2997: !_PREFETCH [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 23

P2998: !_ST_BINIT [3] (maybe <- 0x1000174) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 0] %asi
add   %l4, 1, %l4

P2999: !_MEMBAR (Int)
membar #StoreLoad

P3000: !_DWST [2] (maybe <- 0x1000175) (Int)
mov %l4, %o5 
stx %o5, [%i0 + 8]
add   %l4, 1, %l4

P3001: !_DWST_BINIT [23] (maybe <- 0x1000176) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7 
stxa %l7, [%i2 + 8] %asi 
add   %l4, 1, %l4

P3002: !_MEMBAR (Int)
membar #StoreLoad

P3003: !_ST_BINIT [14] (maybe <- 0x1000177) (Int) (CBR)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3003
nop
RET3003:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3004: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0x200000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_0
nop

P3005: !_MEMBAR (Int)
membar #StoreLoad

END_NODES2: ! Test instruction sequence for CPU 2 ends
sethi %hi(0xdead0e0f), %l7
or    %l7, %lo(0xdead0e0f), %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
sethi %hi(0xdead0e0f), %l7
or    %l7, %lo(0xdead0e0f), %l7
stw %l7, [%i5] 
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
sethi %hi(0x03deade1), %l6
or    %l6, %lo(0x03deade1), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1800001), %l4
or    %l4, %lo(0x1800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x41000001), %l6
or    %l6, %lo(0x41000001), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x35800000), %l6
or    %l6, %lo(0x35800000), %l6
stw %l6, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0xe08^4
sethi %hi(0xe08), %l0
or    %l0, %lo(0xe08), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES3: ! Test instruction sequence for ISTREAM 3 begins

P3006: !_ST_BINIT [0] (maybe <- 0x1800001) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_0:
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P3007: !_MEMBAR (Int)
membar #StoreLoad

P3008: !_LDD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P3009: !_CAS [0] (maybe <- 0x1800002) (Int)
lduw [%i0], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%i0], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P3010: !_CASX [6] (maybe <- 0x1800003) (Int) (LE)
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
mov %o5, %l3
mov  %l7, %o5
casxa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
add  %l4, 1, %l4

P3011: !_DWST_BINIT [4] (maybe <- 0x1800005) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i1 + 0] %asi
add   %l4, 1, %l4

P3012: !_MEMBAR (Int)
membar #StoreLoad

P3013: !_LDD [12] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3014: !_ST_BINIT [11] (maybe <- 0x1800007) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P3015: !_MEMBAR (Int)
membar #StoreLoad

P3016: !_REPLACEMENT [0] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
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

P3017: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3018: !_PREFETCH [21] (Int)
prefetch [%i3 + 0], 22

P3019: !_MEMBAR (FP)

P3020: !_BSTC [19] (maybe <- 0x41000001) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3021: !_MEMBAR (FP)
membar #StoreLoad

P3022: !_SWAP [3] (maybe <- 0x1800008) (Int)
mov %l4, %l6
swap  [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P3023: !_DWLD [11] (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P3024: !_SWAP [10] (maybe <- 0x1800009) (Int)
mov %l4, %o1
swap  [%i3 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3025: !_DWLD [14] (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f18
! 1 addresses covered
fmovs %f19, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3025
nop
RET3025:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3026: !_ST [16] (maybe <- 0x180000a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P3027: !_ST [22] (maybe <- 0x180000b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P3028: !_DWST_BINIT [23] (maybe <- 0x180000c) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P3029: !_MEMBAR (Int)
membar #StoreLoad

P3030: !_DWST_BINIT [3] (maybe <- 0x180000d) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i1 + 0] %asi
add   %l4, 1, %l4

P3031: !_MEMBAR (Int)
membar #StoreLoad

P3032: !_CASX [5] (maybe <- 0x180000f) (Int)
add %i1, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
add  %l4, 1, %l4

P3033: !_DWST [19] (maybe <- 0x1800010) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P3034: !_DWST [2] (maybe <- 0x1800012) (Int) (Branch target of P3256)
mov %l4, %l6 
stx %l6, [%i0 + 8]
add   %l4, 1, %l4
ba P3035
nop

TARGET3256:
ba RET3256
nop


P3035: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3035
nop
RET3035:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3036: !_BST [20] (maybe <- 0x41000004) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3037: !_MEMBAR (FP)
membar #StoreLoad

P3038: !_DWST_BINIT [22] (maybe <- 0x1800013) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P3039: !_MEMBAR (Int)
membar #StoreLoad

P3040: !_LDD [20] (Int)
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P3041: !_PREFETCH [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 0

P3042: !_MEMBAR (FP)
membar #StoreLoad

P3043: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P3044: !_MEMBAR (FP)

P3045: !_ST_BINIT [0] (maybe <- 0x1800015) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P3046: !_MEMBAR (Int)
membar #StoreLoad

P3047: !_DWST_BINIT [12] (maybe <- 0x1800016) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P3048: !_MEMBAR (Int)
membar #StoreLoad

P3049: !_CAS [1] (maybe <- 0x1800018) (Int)
add %i0, 4, %o5
lduw [%o5], %o4
mov %o4, %l7
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3050: !_SWAP [12] (maybe <- 0x1800019) (Int)
mov %l4, %o0
swap  [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3051: !_ST [4] (maybe <- 0x180001a) (Int)
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4

P3052: !_DWST [7] (maybe <- 0x180001b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P3053: !_DWST_BINIT [7] (maybe <- 0x180001d) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i2 + 0] %asi
add   %l4, 1, %l4

P3054: !_MEMBAR (Int)
membar #StoreLoad

P3055: !_LD [5] (Int)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P3056: !_ST_BINIT [2] (maybe <- 0x180001f) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 12] %asi
add   %l4, 1, %l4

P3057: !_MEMBAR (Int)
membar #StoreLoad

P3058: !_LD [5] (Int)
lduw [%i1 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3059: !_PREFETCH [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 3

P3060: !_DWST_BINIT [15] (maybe <- 0x1800020) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P3061: !_MEMBAR (Int)
membar #StoreLoad

P3062: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P3063: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3063
nop
RET3063:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3064: !_LD [20] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P3065: !_DWST_BINIT [15] (maybe <- 0x1800022) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P3066: !_MEMBAR (Int)
membar #StoreLoad

P3067: !_BLD [6] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3067
nop
RET3067:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3068: !_MEMBAR (FP)

P3069: !_DWLD [21] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3070: !_DWST [21] (maybe <- 0x1800024) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P3071: !_LDD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P3072: !_CASX [18] (maybe <- 0x1800026) (Int)
ldx [%i2], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
casx [%i2], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P3073: !_REPLACEMENT [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P3074: !_MEMBAR (FP) (Branch target of P3932)
membar #StoreLoad
ba P3075
nop

TARGET3932:
ba RET3932
nop


P3075: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P3076: !_MEMBAR (FP)

P3077: !_PREFETCH [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 23

P3078: !_SWAP [9] (maybe <- 0x1800028) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o1
swap  [%i2 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3079: !_ST [15] (maybe <- 0x1800029) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3080: !_LDD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P3081: !_CASX [10] (maybe <- 0x180002a) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P3082: !_MEMBAR (FP)

P3083: !_BSTC [19] (maybe <- 0x41000007) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3084: !_MEMBAR (FP)
membar #StoreLoad

P3085: !_REPLACEMENT [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+12], %l6
st %l6, [%i2+12]
add %i2, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]

P3086: !_PREFETCH [21] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 0] %asi, 2

P3087: !_CAS [10] (maybe <- 0x180002c) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %o4
mov %o4, %l7
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3088: !_ST_BINIT [15] (maybe <- 0x180002d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P3089: !_MEMBAR (Int)
membar #StoreLoad

P3090: !_BLD [15] (FP)
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
fmovd %f34, %f18
fmovs %f19, %f0

P3091: !_MEMBAR (FP)

P3092: !_ST_BINIT [7] (maybe <- 0x180002e) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P3093: !_MEMBAR (Int)
membar #StoreLoad

P3094: !_DWST [18] (maybe <- 0x180002f) (Int) (Branch target of P3994)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i3 + 0]
add   %l4, 1, %l4
ba P3095
nop

TARGET3994:
ba RET3994
nop


P3095: !_MEMBAR (FP)

P3096: !_BST [3] (maybe <- 0x4100000a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P3097: !_MEMBAR (FP)
membar #StoreLoad

P3098: !_DWST [8] (maybe <- 0x1800031) (Int)
mov %l4, %l7 
stx %l7, [%i2 + 8]
add   %l4, 1, %l4

P3099: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3100: !_CASX [17] (maybe <- 0x1800032) (Int)
add %i2, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P3101: !_CASX [1] (maybe <- 0x1800033) (Int)
ldx [%i0], %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i0], %o5, %l7
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %o5
or %o5, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
add  %l4, 1, %l4

P3102: !_LDD [22] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P3103: !_MEMBAR (FP)
membar #StoreLoad

P3104: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

P3105: !_MEMBAR (FP)

P3106: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6

P3107: !_MEMBAR (FP)

P3108: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P3109: !_MEMBAR (FP)

P3110: !_CASX [8] (maybe <- 0x1800035) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P3111: !_LDD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P3112: !_DWST_BINIT [14] (maybe <- 0x1800036) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3 
stxa %l3, [%i3 + 8] %asi 
add   %l4, 1, %l4

P3113: !_MEMBAR (Int)
membar #StoreLoad

P3114: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

P3115: !_CAS [5] (maybe <- 0x1800037) (Int)
add %i1, 12, %l7
lduw [%l7], %o4
mov %o4, %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3116: !_CAS [1] (maybe <- 0x1800038) (Int)
add %i0, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P3117: !_PREFETCH [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 4

P3118: !_DWLD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3119: !_MEMBAR (FP)

P3120: !_BSTC [15] (maybe <- 0x4100000d) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3121: !_MEMBAR (FP)
membar #StoreLoad

P3122: !_LDD [1] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P3123: !_MEMBAR (FP)

P3124: !_BST [23] (maybe <- 0x41000010) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3124
nop
RET3124:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3125: !_MEMBAR (FP) (Branch target of P3742)
membar #StoreLoad
ba P3126
nop

TARGET3742:
ba RET3742
nop


P3126: !_CASX [23] (maybe <- 0x1800039) (Int)
add %i2, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
add  %l4, 1, %l4

P3127: !_MEMBAR (FP)

P3128: !_BST [22] (maybe <- 0x41000013) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3129: !_MEMBAR (FP)
membar #StoreLoad

P3130: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P3131: !_MEMBAR (FP)

P3132: !_DWST_BINIT [4] (maybe <- 0x180003a) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i1 + 0] %asi
add   %l4, 1, %l4

P3133: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3133
nop
RET3133:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3134: !_ST_BINIT [7] (maybe <- 0x180003c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P3135: !_MEMBAR (Int)

P3136: !_BSTC [18] (maybe <- 0x41000016) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3137: !_MEMBAR (FP) (Branch target of P3160)
membar #StoreLoad
ba P3138
nop

TARGET3160:
ba RET3160
nop


P3138: !_REPLACEMENT [5] (Int) (Branch target of P3918)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
ba P3139
nop

TARGET3918:
ba RET3918
nop


P3139: !_REPLACEMENT [10] (Int)
sethi %hi(0x20000), %l6
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

P3140: !_LD [18] (Int)
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3141: !_DWLD [3] (Int)
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3142: !_CASX [16] (maybe <- 0x180003d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P3143: !_SWAP [19] (maybe <- 0x180003f) (Int) (Branch target of P3501)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o3
swap  [%i3 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4
ba P3144
nop

TARGET3501:
ba RET3501
nop


P3144: !_CAS [17] (maybe <- 0x1800040) (Int)
add %i2, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3
mov %l4, %o4
cas [%l3], %o5, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3145: !_PREFETCH [15] (Int)
prefetch [%i2 + 0], 18

P3146: !_CASX [18] (maybe <- 0x1800041) (Int)
ldx [%i3], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
add  %l4, 1, %l4

P3147: !_ST_BINIT [1] (maybe <- 0x1800043) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P3148: !_MEMBAR (Int)
membar #StoreLoad

P3149: !_DWST [19] (maybe <- 0x1800044) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P3150: !_LDD [5] (Int)
ldd [%i1 + 8], %l6
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P3151: !_LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3152: !_MEMBAR (FP)
membar #StoreLoad

P3153: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P3154: !_MEMBAR (FP)

P3155: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P3156: !_MEMBAR (FP)

P3157: !_LDD [20] (Int)
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P3158: !_LDD [18] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P3159: !_MEMBAR (FP)

P3160: !_BSTC [13] (maybe <- 0x41000019) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3160
nop
RET3160:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3161: !_MEMBAR (FP)
membar #StoreLoad

P3162: !_DWST [12] (maybe <- 0x1800046) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i3 + 0]
add   %l4, 1, %l4

P3163: !_ST_BINIT [7] (maybe <- 0x1800048) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P3164: !_MEMBAR (Int)
membar #StoreLoad

P3165: !_PREFETCH [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 1

P3166: !_CASX [23] (maybe <- 0x1800049) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov  %o4, %l7
mov %l4, %o0
casx [%o5], %l7, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P3167: !_CAS [4] (maybe <- 0x180004a) (Int)
add %i1, 4, %o5
lduw [%o5], %o1
mov %o1, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3168: !_DWLD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3169: !_MEMBAR (FP)
membar #StoreLoad

P3170: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P3171: !_MEMBAR (FP)

P3172: !_BST [5] (maybe <- 0x4100001c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P3173: !_MEMBAR (FP)

P3174: !_BST [1] (maybe <- 0x4100001f) (FP) (Branch target of P3508)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P3175
nop

TARGET3508:
ba RET3508
nop


P3175: !_MEMBAR (FP)
membar #StoreLoad

P3176: !_REPLACEMENT [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
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

P3177: !_LD [4] (Int)
lduw [%i1 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3178: !_MEMBAR (FP)

P3179: !_BSTC [14] (maybe <- 0x41000022) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3180: !_MEMBAR (FP)
membar #StoreLoad

P3181: !_SWAP [2] (maybe <- 0x180004b) (Int) (Branch target of P3909)
mov %l4, %l3
swap  [%i0 + 12], %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4
ba P3182
nop

TARGET3909:
ba RET3909
nop


P3182: !_CAS [5] (maybe <- 0x180004c) (Int) (LE) (Branch target of P3620)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l7, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
wr %g0, 0x88, %asi
add %i1, 12, %l7
lduwa [%l7] %asi, %o4
mov %o4, %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %o5, %l3
casa [%l7] %asi, %l6, %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4
ba P3183
nop

TARGET3620:
ba RET3620
nop


P3183: !_MEMBAR (FP)
membar #StoreLoad

P3184: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P3185: !_MEMBAR (FP)

P3186: !_LDD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P3187: !_DWST_BINIT [12] (maybe <- 0x180004d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P3188: !_MEMBAR (Int)
membar #StoreLoad

P3189: !_CAS [22] (maybe <- 0x180004f) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o1
mov %o1, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P3190: !_LD [2] (Int)
lduw [%i0 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3191: !_MEMBAR (FP)
membar #StoreLoad

P3192: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P3193: !_MEMBAR (FP)

P3194: !_BSTC [10] (maybe <- 0x41000025) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3195: !_MEMBAR (FP)
membar #StoreLoad

P3196: !_LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P3197: !_REPLACEMENT [9] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %o5
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

P3198: !_DWST [0] (maybe <- 0x1800050) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i0 + 0]
add   %l4, 1, %l4

P3199: !_CAS [19] (maybe <- 0x1800052) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %o3
mov %o3, %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P3200: !_DWST_BINIT [2] (maybe <- 0x1800053) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l6 
stxa %l6, [%i0 + 8] %asi 
add   %l4, 1, %l4

P3201: !_MEMBAR (Int)
membar #StoreLoad

P3202: !_DWST [6] (maybe <- 0x1800054) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P3203: !_MEMBAR (FP)

P3204: !_BST [15] (maybe <- 0x41000028) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3205: !_MEMBAR (FP)
membar #StoreLoad

P3206: !_ST [16] (maybe <- 0x1800056) (Int)
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P3207: !_CAS [15] (maybe <- 0x1800057) (Int)
lduw [%i3], %o4
mov %o4, %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3208: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3209: !_CASX [15] (maybe <- 0x1800058) (Int)
ldx [%i3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P3210: !_DWST_BINIT [1] (maybe <- 0x180005a) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i0 + 0] %asi
add   %l4, 1, %l4

P3211: !_MEMBAR (Int)
membar #StoreLoad

P3212: !_DWST [21] (maybe <- 0x180005c) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P3213: !_DWLD [13] (Int)
ldx [%i2 + 0], %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %l6
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P3214: !_SWAP [11] (maybe <- 0x180005e) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 12], %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P3215: !_MEMBAR (FP)
membar #StoreLoad

P3216: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P3217: !_MEMBAR (FP)

P3218: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
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
fmovd %f34, %f18
fmovs %f19, %f1

P3219: !_MEMBAR (FP)

P3220: !_BST [20] (maybe <- 0x4100002b) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3221: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3221
nop
RET3221:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3222: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 21

P3223: !_MEMBAR (FP)

P3224: !_BSTC [7] (maybe <- 0x4100002e) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3225: !_MEMBAR (FP)
membar #StoreLoad

P3226: !_DWST [0] (maybe <- 0x180005f) (Int)
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i0 + 0]
add   %l4, 1, %l4

P3227: !_ST [13] (maybe <- 0x1800061) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P3228: !_CAS [19] (maybe <- 0x1800062) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o4
mov %o4, %o5
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3229: !_DWLD [0] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3230: !_CASX [16] (maybe <- 0x1800063) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P3231: !_CASX [1] (maybe <- 0x1800065) (Int)
ldx [%i0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l6
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i0], %l6, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P3232: !_LD [22] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3233: !_DWST [21] (maybe <- 0x1800067) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P3234: !_LDD [21] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P3235: !_MEMBAR (FP)
membar #StoreLoad

P3236: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P3237: !_MEMBAR (FP)

P3238: !_DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P3239: !_LDD [0] (Int) (Branch target of P3025)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
ba P3240
nop

TARGET3025:
ba RET3025
nop


P3240: !_LD [14] (Int) (Branch target of P3063)
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
ba P3241
nop

TARGET3063:
ba RET3063
nop


P3241: !_CAS [22] (maybe <- 0x1800069) (Int)
add %i2, 4, %o5
lduw [%o5], %o4
mov %o4, %l7
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3242: !_SWAP [1] (maybe <- 0x180006a) (Int)
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3243: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P3244: !_ST_BINIT [6] (maybe <- 0x180006b) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P3245: !_MEMBAR (Int)
membar #StoreLoad

P3246: !_CAS [4] (maybe <- 0x180006c) (Int)
add %i1, 4, %o5
lduw [%o5], %o1
mov %o1, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3247: !_DWST_BINIT [23] (maybe <- 0x180006d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l7 
stxa %l7, [%i3 + 8] %asi 
add   %l4, 1, %l4

P3248: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3248
nop
RET3248:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3249: !_LDD [22] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P3250: !_ST [22] (maybe <- 0x180006e) (Int)
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P3251: !_LDD [7] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P3252: !_ST [3] (maybe <- 0x180006f) (Int)
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

P3253: !_MEMBAR (FP)

P3254: !_BST [2] (maybe <- 0x41000031) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3255: !_MEMBAR (FP)
membar #StoreLoad

P3256: !_ST_BINIT [2] (maybe <- 0x1800070) (Int) (CBR)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 12] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3256
nop
RET3256:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3257: !_MEMBAR (Int)
membar #StoreLoad

P3258: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3259: !_MEMBAR (FP)

P3260: !_BST [20] (maybe <- 0x41000034) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3261: !_MEMBAR (FP)
membar #StoreLoad

P3262: !_LDD [1] (Int) (CBR)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3262
nop
RET3262:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3263: !_MEMBAR (FP)

P3264: !_BSTC [6] (maybe <- 0x41000037) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3265: !_MEMBAR (FP)

P3266: !_BST [0] (maybe <- 0x4100003a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3267: !_MEMBAR (FP)
membar #StoreLoad

P3268: !_DWST_BINIT [5] (maybe <- 0x1800071) (Int) (LE)
wr %g0, 0xea, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l6
srl %l6, 8, %l6
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3
srl %l3, 16, %l6
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l6, %l3
sllx %l3, 32, %l3 
stxa %l3, [%i1 + 8 ] %asi
add   %l4, 1, %l4

P3269: !_MEMBAR (Int) (LE)
membar #StoreLoad

P3270: !_DWST [15] (maybe <- 0x1800072) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P3271: !_ST [13] (maybe <- 0x1800074) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P3272: !_REPLACEMENT [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P3273: !_DWST [16] (maybe <- 0x1800075) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P3274: !_REPLACEMENT [1] (Int)
sethi %hi(0x20000), %l7
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

P3275: !_CASX [6] (maybe <- 0x1800077) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i3], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P3276: !_DWLD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %l6
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P3277: !_SWAP [6] (maybe <- 0x1800079) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P3278: !_MEMBAR (FP)
membar #StoreLoad

P3279: !_BLD [12] (FP) (CBR) (Branch target of P3279)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3279
nop
RET3279:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P3280
nop

TARGET3279:
ba RET3279
nop


P3280: !_MEMBAR (FP)

P3281: !_ST_BINIT [9] (maybe <- 0x180007a) (Int) (CBR)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3281
nop
RET3281:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3282: !_MEMBAR (Int)
membar #StoreLoad

P3283: !_LDD [2] (Int)
ldd [%i0 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P3284: !_MEMBAR (FP)

P3285: !_BST [19] (maybe <- 0x4100003d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3286: !_MEMBAR (FP)
membar #StoreLoad

P3287: !_CASX [16] (maybe <- 0x180007b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
add  %l4, 1, %l4

P3288: !_DWST_BINIT [1] (maybe <- 0x180007d) (Int) (Branch target of P3714)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i0 + 0] %asi
add   %l4, 1, %l4
ba P3289
nop

TARGET3714:
ba RET3714
nop


P3289: !_MEMBAR (Int)

P3290: !_BST [10] (maybe <- 0x41000040) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3291: !_MEMBAR (FP)
membar #StoreLoad

P3292: !_ST [18] (maybe <- 0x41000043) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P3293: !_DWST_BINIT [3] (maybe <- 0x180007f) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i1 + 0] %asi
add   %l4, 1, %l4

P3294: !_MEMBAR (Int)
membar #StoreLoad

P3295: !_LDD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P3296: !_LD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3297: !_DWST_BINIT [13] (maybe <- 0x1800081) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4

P3298: !_MEMBAR (Int)
membar #StoreLoad

P3299: !_CAS [20] (maybe <- 0x1800083) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l7, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduwa [%l7] %asi, %l3
mov %l3, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
mov %o5, %o3
casa [%l7] %asi, %l6, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3300: !_ST [22] (maybe <- 0x1800084) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P3301: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3301
nop
RET3301:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3302: !_BST [4] (maybe <- 0x41000044) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P3303: !_MEMBAR (FP)

P3304: !_BSTC [2] (maybe <- 0x41000047) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3305: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3305
nop
RET3305:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3306: !_REPLACEMENT [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
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

P3307: !_MEMBAR (FP)

P3308: !_BST [6] (maybe <- 0x4100004a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3309: !_MEMBAR (FP)
membar #StoreLoad

P3310: !_CASX [19] (maybe <- 0x1800085) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i2], %l7, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
add  %l4, 1, %l4

P3311: !_CASX [10] (maybe <- 0x1800087) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i3], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P3312: !_LDD [4] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P3313: !_PREFETCH [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 3

P3314: !_ST_BINIT [10] (maybe <- 0x1800089) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P3315: !_MEMBAR (Int)
membar #StoreLoad

P3316: !_DWST [16] (maybe <- 0x180008a) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P3317: !_MEMBAR (FP)
membar #StoreLoad

P3318: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P3319: !_MEMBAR (FP)

P3320: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 0

P3321: !_REPLACEMENT [8] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P3322: !_ST [9] (maybe <- 0x180008c) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
stwa   %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P3323: !_PREFETCH [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

P3324: !_ST_BINIT [19] (maybe <- 0x180008d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P3325: !_MEMBAR (Int)
membar #StoreLoad

P3326: !_ST_BINIT [6] (maybe <- 0x180008e) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P3327: !_MEMBAR (Int)
membar #StoreLoad

P3328: !_CAS [7] (maybe <- 0x180008f) (Int)
add %i3, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3
mov %l4, %o4
cas [%l3], %o5, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3329: !_PREFETCH [4] (Int)
prefetch [%i1 + 4], 0

P3330: !_DWST_BINIT [17] (maybe <- 0x1800090) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stxa %o5, [%i2 + 8] %asi 
add   %l4, 1, %l4

P3331: !_MEMBAR (Int)
membar #StoreLoad

P3332: !_LDD [13] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P3333: !_MEMBAR (FP)

P3334: !_BST [8] (maybe <- 0x4100004d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3335: !_MEMBAR (FP)
membar #StoreLoad

P3336: !_LD [22] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

P3337: !_MEMBAR (FP)
membar #StoreLoad

P3338: !_BLD [8] (FP) (Branch target of P3399)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13
ba P3339
nop

TARGET3399:
ba RET3399
nop


P3339: !_MEMBAR (FP)

P3340: !_SWAP [17] (maybe <- 0x1800091) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o1
swap  [%i2 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3341: !_SWAP [8] (maybe <- 0x1800092) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7
swap  [%i3 + 12], %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P3342: !_SWAP [6] (maybe <- 0x1800093) (Int)
mov %l4, %o2
swap  [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3343: !_ST_BINIT [21] (maybe <- 0x1800094) (Int) (Branch target of P3753)
wr %g0, 0xe2, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4
ba P3344
nop

TARGET3753:
ba RET3753
nop


P3344: !_MEMBAR (Int)
membar #StoreLoad

P3345: !_DWLD [8] (FP)
ldd [%i3 + 8], %f14
! 1 addresses covered
fmovs %f15, %f14

P3346: !_DWST [22] (maybe <- 0x1800095) (Int)
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P3347: !_LD [5] (Int)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P3348: !_SWAP [1] (maybe <- 0x1800097) (Int)
mov %l4, %o3
swap  [%i0 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3349: !_CAS [7] (maybe <- 0x1800098) (Int)
add %i3, 4, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l6, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3350: !_MEMBAR (FP)
membar #StoreLoad

P3351: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
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
fmovd %f34, %f18
fmovs %f19, %f1

P3352: !_MEMBAR (FP)

P3353: !_BST [13] (maybe <- 0x41000050) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3354: !_MEMBAR (FP)
membar #StoreLoad

P3355: !_PREFETCH [12] (Int)
prefetch [%i3 + 0], 19

P3356: !_CASX [21] (maybe <- 0x1800099) (Int)
ldx [%i2], %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
add  %l4, 1, %l4

P3357: !_SWAP [6] (maybe <- 0x180009b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7
swap  [%i2 + 0], %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P3358: !_PREFETCH [8] (Int) (LE)
wr %g0, 0x88, %asi
prefetcha [%i2 + 12] %asi, 2

P3359: !_DWST [20] (maybe <- 0x180009c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 8]
add   %l4, 1, %l4

P3360: !_CASX [4] (maybe <- 0x180009d) (Int) (CBR) (Branch target of P3305)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3360
nop
RET3360:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P3361
nop

TARGET3305:
ba RET3305
nop


P3361: !_LD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3362: !_ST [7] (maybe <- 0x180009f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P3363: !_LDD [10] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P3364: !_ST_BINIT [15] (maybe <- 0x18000a0) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P3365: !_MEMBAR (Int)
membar #StoreLoad

P3366: !_CAS [4] (maybe <- 0x18000a1) (Int)
add %i1, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3367: !_MEMBAR (FP)
membar #StoreLoad

P3368: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P3369: !_MEMBAR (FP)

P3370: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P3371: !_MEMBAR (FP)

P3372: !_ST_BINIT [14] (maybe <- 0x18000a2) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P3373: !_MEMBAR (Int)

P3374: !_BSTC [16] (maybe <- 0x41000053) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3375: !_MEMBAR (FP)

P3376: !_BSTC [21] (maybe <- 0x41000056) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3377: !_MEMBAR (FP)
membar #StoreLoad

P3378: !_CASX [4] (maybe <- 0x18000a3) (Int)
ldx [%i1], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i1], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P3379: !_DWST [21] (maybe <- 0x18000a5) (Int) (Branch target of P3475)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i3 + 0]
add   %l4, 1, %l4
ba P3380
nop

TARGET3475:
ba RET3475
nop


P3380: !_CAS [2] (maybe <- 0x18000a7) (Int)
add %i0, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3
mov %l4, %o4
cas [%l3], %o5, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3381: !_SWAP [3] (maybe <- 0x18000a8) (Int)
mov %l4, %l6
swap  [%i1 + 0], %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3382: !_DWLD [22] (Int)
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3383: !_MEMBAR (FP)

P3384: !_BST [20] (maybe <- 0x41000059) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3385: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3385
nop
RET3385:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3386: !_CAS [3] (maybe <- 0x18000a9) (Int)
lduw [%i1], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%i1], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P3387: !_CAS [8] (maybe <- 0x18000aa) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P3388: !_ST [8] (maybe <- 0x4100005c) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]

P3389: !_LD [5] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0x200000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3390: !_ST_BINIT [12] (maybe <- 0x18000ab) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P3391: !_MEMBAR (Int)
membar #StoreLoad

P3392: !_ST_BINIT [17] (maybe <- 0x18000ac) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P3393: !_MEMBAR (Int)
membar #StoreLoad

P3394: !_PREFETCH [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 19

P3395: !_PREFETCH [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 20

P3396: !_MEMBAR (FP)

P3397: !_BST [23] (maybe <- 0x4100005d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3398: !_MEMBAR (FP)
membar #StoreLoad

P3399: !_PREFETCH [19] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3399
nop
RET3399:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3400: !_DWST_BINIT [2] (maybe <- 0x18000ad) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l3 
stxa %l3, [%i0 + 8] %asi 
add   %l4, 1, %l4

P3401: !_MEMBAR (Int)
membar #StoreLoad

P3402: !_CASX [7] (maybe <- 0x18000ae) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l7
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %o5
or %o5, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i2], %o5, %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
add  %l4, 1, %l4

P3403: !_LDD [3] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P3404: !_CASX [13] (maybe <- 0x18000b0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P3405: !_DWST [7] (maybe <- 0x18000b2) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P3406: !_LD [13] (FP)
ld [%i3 + 4], %f8
! 1 addresses covered

P3407: !_DWLD [13] (Int)
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %o5
or %o5, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4

P3408: !_MEMBAR (FP)

P3409: !_BSTC [0] (maybe <- 0x41000060) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3410: !_MEMBAR (FP)
membar #StoreLoad

P3411: !_DWST [14] (maybe <- 0x18000b4) (Int)
mov %l4, %l3 
stx %l3, [%i3 + 8]
add   %l4, 1, %l4

P3412: !_ST_BINIT [13] (maybe <- 0x18000b5) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P3413: !_MEMBAR (Int)
membar #StoreLoad

P3414: !_LDD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3415: !_MEMBAR (FP)
membar #StoreLoad

P3416: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P3417: !_MEMBAR (FP)

P3418: !_LDD [15] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P3419: !_LDD [4] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P3420: !_CAS [9] (maybe <- 0x18000b6) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P3421: !_DWST_BINIT [19] (maybe <- 0x18000b7) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P3422: !_MEMBAR (Int)
membar #StoreLoad

P3423: !_CAS [16] (maybe <- 0x18000b9) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P3424: !_SWAP [9] (maybe <- 0x18000ba) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o4
swap  [%i2 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3425: !_CAS [21] (maybe <- 0x18000bb) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %l6
mov %l6, %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%i3], %l7, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3426: !_DWST_BINIT [18] (maybe <- 0x18000bc) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4

P3427: !_MEMBAR (Int)
membar #StoreLoad

P3428: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P3429: !_MEMBAR (FP)

P3430: !_REPLACEMENT [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
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

P3431: !_ST [5] (maybe <- 0x18000be) (Int)
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4

P3432: !_ST_BINIT [10] (maybe <- 0x18000bf) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P3433: !_MEMBAR (Int) (Branch target of P3626)
membar #StoreLoad
ba P3434
nop

TARGET3626:
ba RET3626
nop


P3434: !_CAS [12] (maybe <- 0x18000c0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%i2], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3435: !_MEMBAR (FP)
membar #StoreLoad

P3436: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
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
fmovd %f34, %f18
fmovs %f19, %f1

P3437: !_MEMBAR (FP)

P3438: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P3439: !_MEMBAR (FP)

P3440: !_PREFETCH [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 18

P3441: !_REPLACEMENT [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P3442: !_DWST [15] (maybe <- 0x18000c1) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i3 + 0]
add   %l4, 1, %l4

P3443: !_LD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3444: !_LDD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P3445: !_MEMBAR (FP)

P3446: !_BSTC [9] (maybe <- 0x41000063) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3447: !_MEMBAR (FP)
membar #StoreLoad

P3448: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P3449: !_MEMBAR (FP)

P3450: !_BST [16] (maybe <- 0x41000066) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3451: !_MEMBAR (FP)
membar #StoreLoad

P3452: !_ST [7] (maybe <- 0x18000c3) (Int) (Branch target of P3281)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
ba P3453
nop

TARGET3281:
ba RET3281
nop


P3453: !_CASX [8] (maybe <- 0x18000c4) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
add  %l4, 1, %l4

P3454: !_ST_BINIT [15] (maybe <- 0x18000c5) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P3455: !_MEMBAR (Int)

P3456: !_BSTC [2] (maybe <- 0x41000069) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3456
nop
RET3456:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3457: !_MEMBAR (FP)
membar #StoreLoad

P3458: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P3459: !_MEMBAR (FP)

P3460: !_LD [17] (Int)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3461: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3462: !_DWST_BINIT [17] (maybe <- 0x18000c6) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l6 
stxa %l6, [%i3 + 8] %asi 
add   %l4, 1, %l4

P3463: !_MEMBAR (Int)
membar #StoreLoad

P3464: !_DWST [15] (maybe <- 0x18000c7) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i3 + 0]
add   %l4, 1, %l4

P3465: !_REPLACEMENT [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
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

P3466: !_ST [2] (maybe <- 0x18000c9) (Int) (LE)
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
stwa   %l7, [%i0 + 12] %asi
add   %l4, 1, %l4

P3467: !_DWLD [0] (Int) (CBR)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3467
nop
RET3467:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3468: !_CAS [2] (maybe <- 0x18000ca) (Int)
add %i0, 12, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P3469: !_ST [15] (maybe <- 0x18000cb) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P3470: !_ST [14] (maybe <- 0x18000cc) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P3471: !_MEMBAR (FP)
membar #StoreLoad

P3472: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P3473: !_MEMBAR (FP)

P3474: !_PREFETCH [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 2

P3475: !_LD [11] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3475
nop
RET3475:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3476: !_SWAP [13] (maybe <- 0x18000cd) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5
swap  [%i2 + 4], %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P3477: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3478: !_DWST [14] (maybe <- 0x18000ce) (Int)
mov %l4, %l7 
stx %l7, [%i2 + 8]
add   %l4, 1, %l4

P3479: !_MEMBAR (FP)

P3480: !_BST [11] (maybe <- 0x4100006c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3481: !_MEMBAR (FP)
membar #StoreLoad

P3482: !_ST [23] (maybe <- 0x18000cf) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P3483: !_DWST_BINIT [10] (maybe <- 0x18000d0) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i2 + 0] %asi
add   %l4, 1, %l4

P3484: !_MEMBAR (Int)
membar #StoreLoad

P3485: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
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
fmovd %f34, %f18
fmovs %f19, %f0

P3486: !_MEMBAR (FP)

P3487: !_CASX [12] (maybe <- 0x18000d2) (Int)
ldx [%i2], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i2], %l7, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
add  %l4, 1, %l4

P3488: !_LDD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P3489: !_LD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3490: !_MEMBAR (FP)
membar #StoreLoad

P3491: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

P3492: !_MEMBAR (FP)

P3493: !_BSTC [12] (maybe <- 0x4100006f) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3494: !_MEMBAR (FP)
membar #StoreLoad

P3495: !_DWLD [1] (Int)
ldx [%i0 + 0], %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %l6
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P3496: !_MEMBAR (FP)

P3497: !_BST [15] (maybe <- 0x41000072) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3498: !_MEMBAR (FP)
membar #StoreLoad

P3499: !_DWLD [15] (FP)
ldd [%i2 + 0], %f4
! 2 addresses covered

P3500: !_DWLD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l7
or %l7, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4

P3501: !_ST [17] (maybe <- 0x18000d4) (Int) (CBR)
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3501
nop
RET3501:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3502: !_CAS [13] (maybe <- 0x18000d5) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l6], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3503: !_ST_BINIT [13] (maybe <- 0x18000d6) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P3504: !_MEMBAR (Int)
membar #StoreLoad

P3505: !_ST_BINIT [18] (maybe <- 0x18000d7) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P3506: !_MEMBAR (Int)
membar #StoreLoad

P3507: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P3508: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3508
nop
RET3508:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3509: !_DWLD [4] (Int)
ldx [%i1 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P3510: !_CASX [9] (maybe <- 0x18000d8) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
add  %l4, 1, %l4

P3511: !_MEMBAR (FP)
membar #StoreLoad

P3512: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P3513: !_MEMBAR (FP)

P3514: !_ST [17] (maybe <- 0x18000da) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
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
stwa   %l6, [%i3 + 12] %asi
add   %l4, 1, %l4

P3515: !_ST_BINIT [13] (maybe <- 0x18000db) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P3516: !_MEMBAR (Int)
membar #StoreLoad

P3517: !_ST [10] (maybe <- 0x18000dc) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P3518: !_ST [12] (maybe <- 0x18000dd) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P3519: !_ST_BINIT [6] (maybe <- 0x18000de) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P3520: !_MEMBAR (Int)
membar #StoreLoad

P3521: !_SWAP [16] (maybe <- 0x18000df) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5
swap  [%i3 + 4], %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P3522: !_MEMBAR (FP)

P3523: !_BSTC [19] (maybe <- 0x41000075) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3524: !_MEMBAR (FP)
membar #StoreLoad

P3525: !_SWAP [6] (maybe <- 0x18000e0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o4
swap  [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3526: !_SWAP [1] (maybe <- 0x18000e1) (Int)
mov %l4, %l3
swap  [%i0 + 4], %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3527: !_PREFETCH [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 3

P3528: !_ST [21] (maybe <- 0x18000e2) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3529: !_CASX [17] (maybe <- 0x18000e3) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P3530: !_SWAP [22] (maybe <- 0x18000e4) (Int) (Branch target of P3221)
mov %l4, %o2
swap  [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4
ba P3531
nop

TARGET3221:
ba RET3221
nop


P3531: !_MEMBAR (FP)

P3532: !_BST [22] (maybe <- 0x41000078) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3533: !_MEMBAR (FP)
membar #StoreLoad

P3534: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2

P3535: !_CAS [19] (maybe <- 0x18000e5) (Int)
add %i3, 4, %l6
lduw [%l6], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l3
or %l3, %o3, %o3
add   %l4, 1, %l4

P3536: !_REPLACEMENT [4] (Int) (Branch target of P3987)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
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
ba P3537
nop

TARGET3987:
ba RET3987
nop


P3537: !_ST [5] (maybe <- 0x18000e6) (Int)
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4

P3538: !_DWLD [17] (Int) (Branch target of P3792)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
ba P3539
nop

TARGET3792:
ba RET3792
nop


P3539: !_LDD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P3540: !_MEMBAR (FP)

P3541: !_BSTC [14] (maybe <- 0x4100007b) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3542: !_MEMBAR (FP)

P3543: !_BST [4] (maybe <- 0x4100007e) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P3544: !_MEMBAR (FP)
membar #StoreLoad

P3545: !_PREFETCH [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 4

P3546: !_MEMBAR (FP)
membar #StoreLoad

P3547: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P3548: !_MEMBAR (FP)

P3549: !_ST_BINIT [8] (maybe <- 0x18000e7) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P3550: !_MEMBAR (Int)
membar #StoreLoad

P3551: !_ST_BINIT [6] (maybe <- 0x18000e8) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P3552: !_MEMBAR (Int) (Branch target of P3262)
membar #StoreLoad
ba P3553
nop

TARGET3262:
ba RET3262
nop


P3553: !_ST_BINIT [5] (maybe <- 0x18000e9) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 12] %asi
add   %l4, 1, %l4

P3554: !_MEMBAR (Int)
membar #StoreLoad

P3555: !_ST_BINIT [0] (maybe <- 0x18000ea) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P3556: !_MEMBAR (Int)
membar #StoreLoad

P3557: !_CAS [1] (maybe <- 0x18000eb) (Int)
add %i0, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%o5], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3558: !_SWAP [13] (maybe <- 0x18000ec) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l3
swap  [%i2 + 4], %l3
! move %l3(lower) -> %o1(lower)
srl %l3, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3559: !_ST_BINIT [0] (maybe <- 0x18000ed) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P3560: !_MEMBAR (Int)

P3561: !_BST [11] (maybe <- 0x41000081) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3562: !_MEMBAR (FP)
membar #StoreLoad

P3563: !_ST [16] (maybe <- 0x18000ee) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P3564: !_PREFETCH [11] (Int)
prefetch [%i3 + 12], 23

P3565: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
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

P3566: !_ST_BINIT [22] (maybe <- 0x18000ef) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P3567: !_MEMBAR (Int)
membar #StoreLoad

P3568: !_CAS [15] (maybe <- 0x18000f0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P3569: !_ST [15] (maybe <- 0x18000f1) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3570: !_CAS [4] (maybe <- 0x18000f2) (Int)
add %i1, 4, %l3
lduw [%l3], %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P3571: !_DWST_BINIT [14] (maybe <- 0x18000f3) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stxa %o5, [%i2 + 8] %asi 
add   %l4, 1, %l4

P3572: !_MEMBAR (Int)

P3573: !_BST [16] (maybe <- 0x41000084) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3574: !_MEMBAR (FP)
membar #StoreLoad

P3575: !_CAS [2] (maybe <- 0x18000f4) (Int)
add %i0, 12, %l7
lduw [%l7], %o4
mov %o4, %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3576: !_ST [1] (maybe <- 0x18000f5) (Int) (Branch target of P3874)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4
ba P3577
nop

TARGET3874:
ba RET3874
nop


P3577: !_MEMBAR (FP)

P3578: !_BST [10] (maybe <- 0x41000087) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3579: !_MEMBAR (FP)
membar #StoreLoad

P3580: !_SWAP [13] (maybe <- 0x18000f6) (Int) (Branch target of P3810)
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4
ba P3581
nop

TARGET3810:
ba RET3810
nop


P3581: !_SWAP [8] (maybe <- 0x18000f7) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P3582: !_DWST [9] (maybe <- 0x18000f8) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4

P3583: !_ST_BINIT [7] (maybe <- 0x18000fa) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P3584: !_MEMBAR (Int)

P3585: !_BST [14] (maybe <- 0x4100008a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3586: !_MEMBAR (FP)
membar #StoreLoad

P3587: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
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
fmovd %f34, %f18
fmovs %f19, %f1

P3588: !_MEMBAR (FP)

P3589: !_DWST [7] (maybe <- 0x18000fb) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P3590: !_DWST [18] (maybe <- 0x18000fd) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4

P3591: !_PREFETCH [4] (Int)
prefetch [%i1 + 4], 0

P3592: !_DWST_BINIT [7] (maybe <- 0x18000ff) (Int) (LE)
wr %g0, 0xea, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l6
add   %l4, 1, %l4
or %l6, %l4, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l7, %o5, %l6
srlx %l6, 8, %l6
sllx %l7, 8, %l7
and %l7, %o5, %l7
or %l7, %l6, %l7 
sethi %hi(0xffff0000), %o5
srlx %l7, 16, %l6
andn %l6, %o5, %l6
andn %l7, %o5, %l7
sllx %l7, 16, %l7
or %l7, %l6, %l7 
srlx %l7, 32, %l6
sllx %l7, 32, %l7
or %l7, %l6, %l6 
stxa %l6, [%i3 + 0 ] %asi
add   %l4, 1, %l4

P3593: !_MEMBAR (Int) (LE)
membar #StoreLoad

P3594: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3595: !_MEMBAR (FP)

P3596: !_BSTC [21] (maybe <- 0x4100008d) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3597: !_MEMBAR (FP)
membar #StoreLoad

P3598: !_ST [23] (maybe <- 0x41000090) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]

P3599: !_MEMBAR (FP)

P3600: !_BSTC [6] (maybe <- 0x41000091) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3601: !_MEMBAR (FP)
membar #StoreLoad

P3602: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P3603: !_MEMBAR (FP)

P3604: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P3605: !_MEMBAR (FP)

P3606: !_LD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P3607: !_DWST_BINIT [17] (maybe <- 0x1800101) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6 
stxa %l6, [%i3 + 8] %asi 
add   %l4, 1, %l4

P3608: !_MEMBAR (Int)
membar #StoreLoad

P3609: !_REPLACEMENT [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P3610: !_CASX [21] (maybe <- 0x1800102) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P3611: !_PREFETCH [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 2

P3612: !_CAS [8] (maybe <- 0x1800104) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l3
lduw [%l3], %o4
mov %o4, %o5
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o4(lower)
srl %l7, 0, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3613: !_MEMBAR (FP)

P3614: !_BST [19] (maybe <- 0x41000094) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3615: !_MEMBAR (FP)
membar #StoreLoad

P3616: !_PREFETCH [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 0

P3617: !_MEMBAR (FP)

P3618: !_BSTC [13] (maybe <- 0x41000097) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3619: !_MEMBAR (FP) (Branch target of P3133)
membar #StoreLoad
ba P3620
nop

TARGET3133:
ba RET3133
nop


P3620: !_DWLD [1] (Int) (CBR)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3620
nop
RET3620:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3621: !_DWST [17] (maybe <- 0x1800105) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l3 
stx %l3, [%i2 + 8]
add   %l4, 1, %l4

P3622: !_DWLD [13] (FP)
ldd [%i3 + 0], %f8
! 2 addresses covered

P3623: !_LD [0] (Int)
lduw [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3624: !_CAS [3] (maybe <- 0x1800106) (Int)
lduw [%i1], %l3
mov %l3, %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
mov %l4, %o2
cas [%i1], %l6, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3625: !_MEMBAR (FP)

P3626: !_BSTC [3] (maybe <- 0x4100009a) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3626
nop
RET3626:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3627: !_MEMBAR (FP)
membar #StoreLoad

P3628: !_LDD [2] (Int)
ldd [%i0 + 8], %l6
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P3629: !_MEMBAR (FP)
membar #StoreLoad

P3630: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P3631: !_MEMBAR (FP)

P3632: !_PREFETCH [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 18

P3633: !_DWLD [22] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3634: !_DWLD [0] (Int)
ldx [%i0 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3635: !_CASX [6] (maybe <- 0x1800107) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P3636: !_PREFETCH [8] (Int) (Branch target of P3124)
prefetch [%i3 + 12], 1
ba P3637
nop

TARGET3124:
ba RET3124
nop


P3637: !_CASX [7] (maybe <- 0x1800109) (Int) (LE)
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
ldxa [%i3] %asi, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
mov %o5, %l3
mov  %l7, %o5
casxa [%i3] %asi, %l3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
add  %l4, 1, %l4

P3638: !_MEMBAR (FP)
membar #StoreLoad

P3639: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P3640: !_MEMBAR (FP)

P3641: !_SWAP [13] (maybe <- 0x180010b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o4
swap  [%i3 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3642: !_CASX [5] (maybe <- 0x180010c) (Int)
add %i1, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
add  %l4, 1, %l4

P3643: !_CAS [22] (maybe <- 0x180010d) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
mov %l4, %o2
cas [%l3], %o5, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3644: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 25

P3645: !_CASX [5] (maybe <- 0x180010e) (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #2
!Logical addr: 5 

sethi %hi(0x200000), %o5
sub   %i1, %o5, %i1
add %i1, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
add  %l4, 1, %l4

P3646: !_ST [9] (maybe <- 0x180010f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3647: !_MEMBAR (FP)
membar #StoreLoad

P3648: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P3649: !_MEMBAR (FP)

P3650: !_LDD [23] (Int)
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3651: !_ST [19] (maybe <- 0x1800110) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P3652: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3653: !_CAS [7] (maybe <- 0x1800111) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3654: !_CASX [6] (maybe <- 0x1800112) (Int)
ldx [%i2], %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
add  %l4, 1, %l4

P3655: !_SWAP [12] (maybe <- 0x1800114) (Int)
mov %l4, %o5
swap  [%i3 + 0], %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P3656: !_MEMBAR (FP)

P3657: !_BST [4] (maybe <- 0x4100009d) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P3658: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3658
nop
RET3658:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3659: !_DWLD [19] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3660: !_ST [1] (maybe <- 0x1800115) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3661: !_ST_BINIT [16] (maybe <- 0x1800116) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P3662: !_MEMBAR (Int)
membar #StoreLoad

P3663: !_SWAP [16] (maybe <- 0x1800117) (Int)
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3664: !_MEMBAR (FP)
membar #StoreLoad

P3665: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P3666: !_MEMBAR (FP)

P3667: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P3668: !_MEMBAR (FP)

P3669: !_ST [15] (maybe <- 0x1800118) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P3670: !_MEMBAR (FP)
membar #StoreLoad

P3671: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P3672: !_MEMBAR (FP)

P3673: !_ST [20] (maybe <- 0x1800119) (Int)
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P3674: !_MEMBAR (FP)
membar #StoreLoad

P3675: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P3676: !_MEMBAR (FP)

P3677: !_ST [8] (maybe <- 0x180011a) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P3678: !_LD [11] (Int)
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P3679: !_ST [11] (maybe <- 0x180011b) (Int)
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P3680: !_ST [17] (maybe <- 0x180011c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P3681: !_CASX [16] (maybe <- 0x180011d) (Int)
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P3682: !_DWST_BINIT [23] (maybe <- 0x180011f) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P3683: !_MEMBAR (Int)

P3684: !_BSTC [19] (maybe <- 0x410000a0) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3685: !_MEMBAR (FP)
membar #StoreLoad

P3686: !_CASX [1] (maybe <- 0x1800120) (Int)
ldx [%i0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l7
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i0], %l7, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P3687: !_PREFETCH [23] (Int)
prefetch [%i2 + 12], 21

P3688: !_LD [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3689: !_MEMBAR (FP)

P3690: !_BST [7] (maybe <- 0x410000a3) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3691: !_MEMBAR (FP)
membar #StoreLoad

P3692: !_SWAP [14] (maybe <- 0x1800122) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P3693: !_CASX [10] (maybe <- 0x1800123) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l7
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P3694: !_MEMBAR (FP)

P3695: !_BSTC [0] (maybe <- 0x410000a6) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3696: !_MEMBAR (FP)
membar #StoreLoad

P3697: !_LD [11] (Int)
lduw [%i3 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3698: !_LD [11] (Int)
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

P3699: !_LD [19] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f15
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

P3700: !_DWLD [0] (Int)
ldx [%i0 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3701: !_ST [12] (maybe <- 0x1800125) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3702: !_DWST_BINIT [0] (maybe <- 0x1800126) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i0 + 0] %asi
add   %l4, 1, %l4

P3703: !_MEMBAR (Int)
membar #StoreLoad

P3704: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P3705: !_MEMBAR (FP)

P3706: !_DWST_BINIT [6] (maybe <- 0x1800128) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P3707: !_MEMBAR (Int)
membar #StoreLoad

P3708: !_CASX [10] (maybe <- 0x180012a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P3709: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3710: !_MEMBAR (FP)

P3711: !_BSTC [12] (maybe <- 0x410000a9) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3712: !_MEMBAR (FP)
membar #StoreLoad

P3713: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P3714: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3714
nop
RET3714:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3715: !_ST_BINIT [13] (maybe <- 0x180012c) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P3716: !_MEMBAR (Int)
membar #StoreLoad

P3717: !_PREFETCH [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 23

P3718: !_CAS [13] (maybe <- 0x180012d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
mov %l4, %o3
cas [%o5], %l7, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3719: !_DWST_BINIT [14] (maybe <- 0x180012e) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l7 
stxa %l7, [%i2 + 8] %asi 
add   %l4, 1, %l4

P3720: !_MEMBAR (Int)
membar #StoreLoad

P3721: !_REPLACEMENT [21] (Int) (Branch target of P3067)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
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
ba P3722
nop

TARGET3067:
ba RET3067
nop


P3722: !_ST_BINIT [13] (maybe <- 0x180012f) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P3723: !_MEMBAR (Int)
membar #StoreLoad

P3724: !_LD [3] (Int)
lduw [%i1 + 0], %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

P3725: !_CAS [23] (maybe <- 0x1800130) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %o4
mov %o4, %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P3726: !_MEMBAR (FP)

P3727: !_BSTC [20] (maybe <- 0x410000ac) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3728: !_MEMBAR (FP)
membar #StoreLoad

P3729: !_LD [19] (Int)
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3730: !_PREFETCH [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 22

P3731: !_CASX [12] (maybe <- 0x1800131) (Int) (Branch target of P3248)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i3], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4
ba P3732
nop

TARGET3248:
ba RET3248
nop


P3732: !_DWST_BINIT [15] (maybe <- 0x1800133) (Int) (Branch target of P3658)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4
ba P3733
nop

TARGET3658:
ba RET3658
nop


P3733: !_MEMBAR (Int)
membar #StoreLoad

P3734: !_SWAP [15] (maybe <- 0x1800135) (Int)
mov %l4, %o5
swap  [%i2 + 0], %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P3735: !_CASX [7] (maybe <- 0x1800136) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i2], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P3736: !_LD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3737: !_SWAP [3] (maybe <- 0x1800138) (Int)
mov %l4, %l3
swap  [%i1 + 0], %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3738: !_DWST_BINIT [11] (maybe <- 0x1800139) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6 
stxa %l6, [%i2 + 8] %asi 
add   %l4, 1, %l4

P3739: !_MEMBAR (Int)
membar #StoreLoad

P3740: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P3741: !_MEMBAR (FP)

P3742: !_BLD [0] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3742
nop
RET3742:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3743: !_MEMBAR (FP)

P3744: !_LDD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P3745: !_DWST_BINIT [14] (maybe <- 0x180013a) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P3746: !_MEMBAR (Int)

P3747: !_BSTC [12] (maybe <- 0x410000af) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3748: !_MEMBAR (FP)
membar #StoreLoad

P3749: !_DWLD [20] (Int)
ldx [%i3 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3750: !_ST_BINIT [7] (maybe <- 0x180013b) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P3751: !_MEMBAR (Int)
membar #StoreLoad

P3752: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P3753: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3753
nop
RET3753:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3754: !_LD [7] (Int)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P3755: !_PREFETCH [13] (Int)
prefetch [%i2 + 4], 1

P3756: !_LDD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P3757: !_REPLACEMENT [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P3758: !_REPLACEMENT [5] (Int)
sethi %hi(0x20000), %o5
ld [%i3+12], %l6
st %l6, [%i3+12]
add %i3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]

P3759: !_MEMBAR (FP)
membar #StoreLoad

P3760: !_BLD [6] (FP)
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
fmovd %f34, %f18
fmovs %f19, %f1

P3761: !_MEMBAR (FP)

P3762: !_DWST [14] (maybe <- 0x180013c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7 
stx %l7, [%i3 + 8]
add   %l4, 1, %l4

P3763: !_MEMBAR (FP)
membar #StoreLoad

P3764: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P3765: !_MEMBAR (FP)

P3766: !_REPLACEMENT [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
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

P3767: !_DWST [5] (maybe <- 0x180013d) (Int)
mov %l4, %l3 
stx %l3, [%i1 + 8]
add   %l4, 1, %l4

P3768: !_SWAP [1] (maybe <- 0x180013e) (Int)
mov %l4, %l6
swap  [%i0 + 4], %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P3769: !_MEMBAR (FP)

P3770: !_BSTC [18] (maybe <- 0x410000b2) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3771: !_MEMBAR (FP)

P3772: !_BSTC [16] (maybe <- 0x410000b5) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3773: !_MEMBAR (FP)
membar #StoreLoad

P3774: !_ST_BINIT [11] (maybe <- 0x180013f) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P3775: !_MEMBAR (Int)
membar #StoreLoad

P3776: !_ST_BINIT [7] (maybe <- 0x1800140) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P3777: !_MEMBAR (Int)
membar #StoreLoad

P3778: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P3779: !_MEMBAR (FP)

P3780: !_LDD [6] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3781: !_DWST [5] (maybe <- 0x1800141) (Int)
mov %l4, %l3 
stx %l3, [%i1 + 8]
add   %l4, 1, %l4

P3782: !_MEMBAR (FP)
membar #StoreLoad

P3783: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P3784: !_MEMBAR (FP)

P3785: !_ST_BINIT [4] (maybe <- 0x1800142) (Int) (LE)
wr %g0, 0xea, %asi
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
stwa   %o5, [%i1 + 4] %asi
add   %l4, 1, %l4

P3786: !_MEMBAR (Int) (LE)
membar #StoreLoad

P3787: !_PREFETCH [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

P3788: !_SWAP [17] (maybe <- 0x1800143) (Int)
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3789: !_DWLD [7] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P3790: !_LDD [0] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P3791: !_LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P3792: !_DWLD [3] (Int) (CBR)
ldx [%i1 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3792
nop
RET3792:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3793: !_DWLD [4] (Int)
ldx [%i1 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3794: !_CAS [17] (maybe <- 0x1800144) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P3795: !_CASX [0] (maybe <- 0x1800145) (Int)
ldx [%i0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %o5
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i0], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P3796: !_MEMBAR (FP)

P3797: !_BSTC [18] (maybe <- 0x410000b8) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3798: !_MEMBAR (FP)

P3799: !_BST [5] (maybe <- 0x410000bb) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P3800: !_MEMBAR (FP)
membar #StoreLoad

P3801: !_ST_BINIT [17] (maybe <- 0x1800147) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P3802: !_MEMBAR (Int)
membar #StoreLoad

P3803: !_DWST_BINIT [8] (maybe <- 0x1800148) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l3 
stxa %l3, [%i3 + 8] %asi 
add   %l4, 1, %l4

P3804: !_MEMBAR (Int)
membar #StoreLoad

P3805: !_ST_BINIT [6] (maybe <- 0x1800149) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P3806: !_MEMBAR (Int)
membar #StoreLoad

P3807: !_LDD [0] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P3808: !_DWST_BINIT [18] (maybe <- 0x180014a) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P3809: !_MEMBAR (Int)

P3810: !_BSTC [17] (maybe <- 0x410000be) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3810
nop
RET3810:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P3811: !_MEMBAR (FP)
membar #StoreLoad

P3812: !_ST [20] (maybe <- 0x180014c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P3813: !_MEMBAR (FP)

P3814: !_BSTC [18] (maybe <- 0x410000c1) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3815: !_MEMBAR (FP)
membar #StoreLoad

P3816: !_LD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3817: !_CAS [5] (maybe <- 0x180014d) (Int)
add %i1, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l3], %o5, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3818: !_CAS [6] (maybe <- 0x180014e) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%i3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3819: !_MEMBAR (FP)

P3820: !_BSTC [20] (maybe <- 0x410000c4) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3821: !_MEMBAR (FP)
membar #StoreLoad

P3822: !_DWLD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l7
or %l7, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2

P3823: !_LDD [1] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P3824: !_MEMBAR (FP)

P3825: !_BST [9] (maybe <- 0x410000c7) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3826: !_MEMBAR (FP)
membar #StoreLoad

P3827: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 18

P3828: !_DWST_BINIT [1] (maybe <- 0x180014f) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i0 + 0] %asi
add   %l4, 1, %l4

P3829: !_MEMBAR (Int)

P3830: !_BST [21] (maybe <- 0x410000ca) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3831: !_MEMBAR (FP)
membar #StoreLoad

P3832: !_DWST_BINIT [7] (maybe <- 0x1800151) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P3833: !_MEMBAR (Int)
membar #StoreLoad

P3834: !_CASX [3] (maybe <- 0x1800153) (Int)
ldx [%i1], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i1], %l3, %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
add  %l4, 1, %l4

P3835: !_ST_BINIT [3] (maybe <- 0x1800155) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 0] %asi
add   %l4, 1, %l4

P3836: !_MEMBAR (Int)

P3837: !_BST [23] (maybe <- 0x410000cd) (FP) (Branch target of P3301)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P3838
nop

TARGET3301:
ba RET3301
nop


P3838: !_MEMBAR (FP)
membar #StoreLoad

P3839: !_DWST [3] (maybe <- 0x1800156) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i1 + 0]
add   %l4, 1, %l4

P3840: !_LDD [6] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P3841: !_DWST [11] (maybe <- 0x1800158) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l3 
stx %l3, [%i2 + 8]
add   %l4, 1, %l4

P3842: !_MEMBAR (FP) (Branch target of P3035)
ba P3843
nop

TARGET3035:
ba RET3035
nop


P3843: !_BSTC [22] (maybe <- 0x410000d0) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3844: !_MEMBAR (FP)
membar #StoreLoad

P3845: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P3846: !_MEMBAR (FP)

P3847: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
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
fmovd %f34, %f18
fmovs %f19, %f0

P3848: !_MEMBAR (FP)

P3849: !_ST_BINIT [8] (maybe <- 0x1800159) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P3850: !_MEMBAR (Int)
membar #StoreLoad

P3851: !_DWST [19] (maybe <- 0x180015a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i3 + 0]
add   %l4, 1, %l4

P3852: !_CASX [1] (maybe <- 0x180015c) (Int)
ldx [%i0], %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i0], %l3, %o5
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
add  %l4, 1, %l4

P3853: !_CASX [17] (maybe <- 0x180015e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
add  %l4, 1, %l4

P3854: !_REPLACEMENT [6] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P3855: !_MEMBAR (FP)

P3856: !_BSTC [10] (maybe <- 0x410000d3) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3857: !_MEMBAR (FP)
membar #StoreLoad

P3858: !_DWLD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1

P3859: !_DWST [22] (maybe <- 0x410000d6) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]

P3860: !_MEMBAR (FP)

P3861: !_BSTC [15] (maybe <- 0x410000d8) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3862: !_MEMBAR (FP)
membar #StoreLoad

P3863: !_CASX [15] (maybe <- 0x180015f) (Int)
ldx [%i3], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i3], %l7, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
add  %l4, 1, %l4

P3864: !_SWAP [1] (maybe <- 0x1800161) (Int)
mov %l4, %l3
swap  [%i0 + 4], %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P3865: !_CASX [19] (maybe <- 0x1800162) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %o4, %l6
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
casx [%i2], %l6, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P3866: !_CASX [19] (maybe <- 0x1800164) (Int)
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P3867: !_DWLD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3868: !_MEMBAR (FP)

P3869: !_BST [13] (maybe <- 0x410000db) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3870: !_MEMBAR (FP)
membar #StoreLoad

P3871: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

P3872: !_MEMBAR (FP) (Branch target of P3456)
ba P3873
nop

TARGET3456:
ba RET3456
nop


P3873: !_LD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3874: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3874
nop
RET3874:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3875: !_BSTC [12] (maybe <- 0x410000de) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3876: !_MEMBAR (FP)
membar #StoreLoad

P3877: !_PREFETCH [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 24

P3878: !_MEMBAR (FP)

P3879: !_BSTC [23] (maybe <- 0x410000e1) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3880: !_MEMBAR (FP)
membar #StoreLoad

P3881: !_LDD [4] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P3882: !_MEMBAR (FP)
membar #StoreLoad

P3883: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6

P3884: !_MEMBAR (FP)

P3885: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P3886: !_MEMBAR (FP)

P3887: !_CAS [0] (maybe <- 0x1800166) (Int)
lduw [%i0], %o5
mov %o5, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
mov %l4, %o1
cas [%i0], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3888: !_DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P3889: !_MEMBAR (FP)
membar #StoreLoad

P3890: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P3891: !_MEMBAR (FP)

P3892: !_LD [20] (Int) (Branch target of P3467)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
ba P3893
nop

TARGET3467:
ba RET3467
nop


P3893: !_SWAP [15] (maybe <- 0x1800167) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o3
swap  [%i2 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3894: !_CASX [20] (maybe <- 0x1800168) (Int)
add %i3, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %o5
or %o5, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
add  %l4, 1, %l4

P3895: !_ST [22] (maybe <- 0x1800169) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P3896: !_MEMBAR (FP)

P3897: !_BST [13] (maybe <- 0x410000e4) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3898: !_MEMBAR (FP)
membar #StoreLoad

P3899: !_LD [3] (Int)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P3900: !_DWLD [12] (Int)
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3901: !_ST [9] (maybe <- 0x180016a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3902: !_MEMBAR (FP)

P3903: !_BST [12] (maybe <- 0x410000e7) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3904: !_MEMBAR (FP)
membar #StoreLoad

P3905: !_SWAP [20] (maybe <- 0x180016b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o2
swap  [%i2 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3906: !_ST_BINIT [12] (maybe <- 0x180016c) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P3907: !_MEMBAR (Int)
membar #StoreLoad

P3908: !_CASX [1] (maybe <- 0x180016d) (Int)
ldx [%i0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i0], %l7, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
add  %l4, 1, %l4

P3909: !_DWST_BINIT [2] (maybe <- 0x180016f) (Int) (CBR)
wr %g0, 0xe2, %asi
mov %l4, %l7 
stxa %l7, [%i0 + 8] %asi 
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3909
nop
RET3909:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P3910: !_MEMBAR (Int)
membar #StoreLoad

P3911: !_ST [18] (maybe <- 0x1800170) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P3912: !_MEMBAR (FP)

P3913: !_BSTC [0] (maybe <- 0x410000ea) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3914: !_MEMBAR (FP)
membar #StoreLoad

P3915: !_CAS [13] (maybe <- 0x1800171) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
wr %g0, 0x88, %asi
add %i3, 4, %l6
lduwa [%l6] %asi, %o5
mov %o5, %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l7, %o0
casa [%l6] %asi, %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3916: !_SWAP [0] (maybe <- 0x1800172) (Int)
mov %l4, %l7
swap  [%i0 + 0], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P3917: !_MEMBAR (FP)
membar #StoreLoad

P3918: !_BLD [2] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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
be,pt  %xcc, TARGET3918
nop
RET3918:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3919: !_MEMBAR (FP)

P3920: !_LDD [5] (Int)
ldd [%i1 + 8], %l6
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P3921: !_SWAP [20] (maybe <- 0x1800173) (Int)
mov %l4, %l7
swap  [%i2 + 12], %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P3922: !_MEMBAR (FP)

P3923: !_BSTC [9] (maybe <- 0x410000ed) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3924: !_MEMBAR (FP)

P3925: !_BSTC [21] (maybe <- 0x410000f0) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3926: !_MEMBAR (FP)
membar #StoreLoad

P3927: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P3928: !_MEMBAR (FP)

P3929: !_REPLACEMENT [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
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

P3930: !_DWST_BINIT [3] (maybe <- 0x1800174) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i1 + 0] %asi
add   %l4, 1, %l4

P3931: !_MEMBAR (Int)
membar #StoreLoad

P3932: !_PREFETCH [23] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3932
nop
RET3932:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3933: !_DWLD [6] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3934: !_CAS [3] (maybe <- 0x1800176) (Int)
lduw [%i1], %o3
mov %o3, %l7
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
mov %l4, %l6
cas [%i1], %l7, %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P3935: !_LD [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3936: !_LD [0] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 0] %asi, %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3937: !_ST [1] (maybe <- 0x1800177) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3938: !_LD [17] (Int) (Branch target of P3385)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P3939
nop

TARGET3385:
ba RET3385
nop


P3939: !_LD [5] (Int)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

P3940: !_MEMBAR (FP)
membar #StoreLoad

P3941: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P3942: !_MEMBAR (FP)

P3943: !_SWAP [0] (maybe <- 0x1800178) (Int)
mov %l4, %o1
swap  [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3944: !_MEMBAR (FP)
membar #StoreLoad

P3945: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P3946: !_MEMBAR (FP)

P3947: !_ST_BINIT [11] (maybe <- 0x1800179) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 12] %asi
add   %l4, 1, %l4

P3948: !_MEMBAR (Int)
membar #StoreLoad

P3949: !_DWST [13] (maybe <- 0x180017a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P3950: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1

P3951: !_ST [12] (maybe <- 0x180017c) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3952: !_MEMBAR (FP)

P3953: !_BSTC [17] (maybe <- 0x410000f3) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P3954: !_MEMBAR (FP)
membar #StoreLoad

P3955: !_LDD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P3956: !_ST [18] (maybe <- 0x180017d) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3957: !_DWLD [18] (Int)
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3958: !_MEMBAR (FP)
membar #StoreLoad

P3959: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P3960: !_MEMBAR (FP)

P3961: !_ST_BINIT [20] (maybe <- 0x180017e) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P3962: !_MEMBAR (Int)
membar #StoreLoad

P3963: !_LDD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P3964: !_LDD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P3965: !_SWAP [16] (maybe <- 0x180017f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3966: !_MEMBAR (FP)

P3967: !_BST [9] (maybe <- 0x410000f6) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3968: !_MEMBAR (FP)
membar #StoreLoad

P3969: !_CAS [20] (maybe <- 0x1800180) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3970: !_DWLD [2] (Int)
ldx [%i0 + 8], %l3
! move %l3(lower) -> %o1(lower)
srl %l3, 0, %o5
or %o5, %o1, %o1

P3971: !_MEMBAR (FP)
membar #StoreLoad

P3972: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P3973: !_MEMBAR (FP)

P3974: !_DWLD [1] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3975: !_SWAP [16] (maybe <- 0x1800181) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o3
swap  [%i3 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3976: !_LDD [8] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P3977: !_SWAP [19] (maybe <- 0x1800182) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o4
swap  [%i3 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3978: !_CAS [1] (maybe <- 0x1800183) (Int)
add %i0, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l3], %o5, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3979: !_ST_BINIT [6] (maybe <- 0x1800184) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P3980: !_MEMBAR (Int)
membar #StoreLoad

P3981: !_LDD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P3982: !_MEMBAR (FP)

P3983: !_BST [1] (maybe <- 0x410000f9) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P3984: !_MEMBAR (FP)
membar #StoreLoad

P3985: !_DWST_BINIT [11] (maybe <- 0x1800185) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5 
stxa %o5, [%i3 + 8] %asi 
add   %l4, 1, %l4

P3986: !_MEMBAR (Int)
membar #StoreLoad

P3987: !_LDD [2] (Int) (CBR)
ldd [%i0 + 8], %l6
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET3987
nop
RET3987:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3988: !_LDD [10] (Int) (LE)
wr %g0, 0x88, %asi
ldda [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P3989: !_ST [23] (maybe <- 0x1800186) (Int)
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P3990: !_DWST_BINIT [16] (maybe <- 0x1800187) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i2 + 0] %asi
add   %l4, 1, %l4

P3991: !_MEMBAR (Int)

P3992: !_BSTC [22] (maybe <- 0x410000fc) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3993: !_MEMBAR (FP) (Branch target of P3360)
membar #StoreLoad
ba P3994
nop

TARGET3360:
ba RET3360
nop


P3994: !_LDD [12] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET3994
nop
RET3994:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P3995: !_LD [23] (Int)
lduw [%i3 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3996: !_MEMBAR (FP)

P3997: !_BSTC [22] (maybe <- 0x410000ff) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P3998: !_MEMBAR (FP)
membar #StoreLoad

P3999: !_ST_BINIT [1] (maybe <- 0x1800189) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P4000: !_MEMBAR (Int)

P4001: !_BSTC [17] (maybe <- 0x41000102) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4002: !_MEMBAR (FP)
membar #StoreLoad

P4003: !_DWST [9] (maybe <- 0x180018a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P4004: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
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

P4005: !_MEMBAR (FP)
membar #StoreLoad

P4006: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
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
fmovd %f34, %f18
fmovs %f19, %f1

P4007: !_MEMBAR (FP)

P4008: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--

sethi %hi(0x400000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_0
nop

P4009: !_MEMBAR (Int)
membar #StoreLoad

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

! Initialize LFSR to 0x5079^4
sethi %hi(0x5079), %l0
or    %l0, %lo(0x5079), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES4: ! Test instruction sequence for ISTREAM 4 begins

P4010: !_PREFETCH [22] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_0:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 22

P4011: !_MEMBAR (FP)
membar #StoreLoad

P4012: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P4013: !_MEMBAR (FP)

P4014: !_SWAP [12] (maybe <- 0x2000001) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4015: !_DWLD [10] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l3
or %l3, %o0, %o0
! move %l6(upper) -> %o1(upper)
or %l6, %g0, %o1

P4016: !_REPLACEMENT [3] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
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

P4017: !_ST [13] (maybe <- 0x2000002) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P4018: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 22

P4019: !_MEMBAR (FP)

P4020: !_BSTC [3] (maybe <- 0x41800001) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4021: !_MEMBAR (FP)
membar #StoreLoad

P4022: !_SWAP [23] (maybe <- 0x2000003) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 12], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srl %l6, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4

P4023: !_MEMBAR (FP)
membar #StoreLoad

P4024: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P4025: !_MEMBAR (FP)

P4026: !_BSTC [6] (maybe <- 0x41800004) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4027: !_MEMBAR (FP)
membar #StoreLoad

P4028: !_DWST [12] (maybe <- 0x2000004) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P4029: !_DWST [17] (maybe <- 0x2000006) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3 
stx %l3, [%i3 + 8]
add   %l4, 1, %l4

P4030: !_CASX [4] (maybe <- 0x2000007) (Int)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P4031: !_ST_BINIT [16] (maybe <- 0x2000009) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P4032: !_MEMBAR (Int)
membar #StoreLoad

P4033: !_LDD [2] (Int)
ldd [%i0 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P4034: !_CASX [22] (maybe <- 0x200000a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
add  %l4, 1, %l4

P4035: !_ST [0] (maybe <- 0x41800007) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P4036: !_ST_BINIT [9] (maybe <- 0x200000c) (Int) (LE)
wr %g0, 0xea, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
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
stwa   %o5, [%i3 + 0] %asi
add   %l4, 1, %l4

P4037: !_MEMBAR (Int) (LE)
membar #StoreLoad

P4038: !_BLD [1] (FP) (Branch target of P4477)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8
ba P4039
nop

TARGET4477:
ba RET4477
nop


P4039: !_MEMBAR (FP)

P4040: !_ST [3] (maybe <- 0x200000d) (Int)
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

P4041: !_MEMBAR (FP) (CBR) (Branch target of P4041)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4041
nop
RET4041:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P4042
nop

TARGET4041:
ba RET4041
nop


P4042: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f34, %f18
fmovs %f19, %f11

P4043: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4043
nop
RET4043:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P4044: !_PREFETCH [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 3

P4045: !_LD [15] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i2 + 0] %asi, %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P4046: !_CAS [9] (maybe <- 0x200000e) (Int)
lduw [%i3], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P4047: !_MEMBAR (FP)

P4048: !_BST [10] (maybe <- 0x41800008) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4049: !_MEMBAR (FP)
membar #StoreLoad

P4050: !_DWST [20] (maybe <- 0x200000f) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %l7
srl %l7, 8, %l7
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6
srl %l6, 16, %l7
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %l7, %l6
sllx %l6, 32, %l6 
stxa %l6, [%i3 + 8 ] %asi
add   %l4, 1, %l4

P4051: !_ST_BINIT [16] (maybe <- 0x2000010) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P4052: !_MEMBAR (Int)
membar #StoreLoad

P4053: !_DWST [11] (maybe <- 0x2000011) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7 
stx %l7, [%i2 + 8]
add   %l4, 1, %l4

P4054: !_ST_BINIT [17] (maybe <- 0x2000012) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P4055: !_MEMBAR (Int)
membar #StoreLoad

P4056: !_LDD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P4057: !_ST [6] (maybe <- 0x2000013) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
stwa   %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P4058: !_DWST [20] (maybe <- 0x2000014) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4

P4059: !_MEMBAR (FP)

P4060: !_BSTC [20] (maybe <- 0x4180000b) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4061: !_MEMBAR (FP)
membar #StoreLoad

P4062: !_ST_BINIT [5] (maybe <- 0x2000015) (Int) (Branch target of P4766)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 12] %asi
add   %l4, 1, %l4
ba P4063
nop

TARGET4766:
ba RET4766
nop


P4063: !_MEMBAR (Int)
membar #StoreLoad

P4064: !_CASX [1] (maybe <- 0x2000016) (Int)
ldx [%i0], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i0], %l3, %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
add  %l4, 1, %l4

P4065: !_ST [11] (maybe <- 0x2000018) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4065
nop
RET4065:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P4066: !_LD [5] (Int) (LE) (Branch target of P4517)
wr %g0, 0x88, %asi
lduwa [%i1 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
ba P4067
nop

TARGET4517:
ba RET4517
nop


P4067: !_LD [23] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4068: !_LD [23] (Int)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P4069: !_MEMBAR (FP)

P4070: !_BST [6] (maybe <- 0x4180000e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4071: !_MEMBAR (FP)
membar #StoreLoad

P4072: !_DWLD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4073: !_MEMBAR (FP)
membar #StoreLoad

P4074: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f34, %f18
fmovs %f19, %f14

P4075: !_MEMBAR (FP)

P4076: !_ST [16] (maybe <- 0x2000019) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P4077: !_PREFETCH [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 29

P4078: !_DWST [8] (maybe <- 0x200001a) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 8]
add   %l4, 1, %l4

P4079: !_MEMBAR (FP)
membar #StoreLoad

P4080: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
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
fmovd %f34, %f18
fmovs %f19, %f1

P4081: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4081
nop
RET4081:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P4082: !_DWST [6] (maybe <- 0x200001b) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P4083: !_MEMBAR (FP)
membar #StoreLoad

P4084: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P4085: !_MEMBAR (FP) (Branch target of P4276)
ba P4086
nop

TARGET4276:
ba RET4276
nop


P4086: !_CASX [9] (maybe <- 0x200001d) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l7
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i3], %l7, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P4087: !_CAS [18] (maybe <- 0x200001f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4088: !_ST_BINIT [3] (maybe <- 0x2000020) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 0] %asi
add   %l4, 1, %l4

P4089: !_MEMBAR (Int)

P4090: !_BSTC [8] (maybe <- 0x41800011) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4091: !_MEMBAR (FP)
membar #StoreLoad

P4092: !_SWAP [6] (maybe <- 0x2000021) (Int)
mov %l4, %o1
swap  [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4093: !_ST_BINIT [5] (maybe <- 0x2000022) (Int) (CBR)
wr %g0, 0xe2, %asi
stwa   %l4, [%i1 + 12] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4093
nop
RET4093:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P4094: !_MEMBAR (Int)
membar #StoreLoad

P4095: !_REPLACEMENT [4] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %o5
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

P4096: !_LDD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P4097: !_CAS [20] (maybe <- 0x2000023) (Int)
add %i3, 12, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
mov %l4, %o3
cas [%l6], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4098: !_CASX [8] (maybe <- 0x2000024) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
add  %l4, 1, %l4

P4099: !_LDD [18] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P4100: !_MEMBAR (FP)

P4101: !_BSTC [13] (maybe <- 0x41800014) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4101
nop
RET4101:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P4102: !_MEMBAR (FP)
membar #StoreLoad

P4103: !_LDD [2] (Int)
ldd [%i0 + 8], %l6
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P4104: !_CAS [21] (maybe <- 0x2000025) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4

P4105: !_MEMBAR (FP) (Branch target of P4443)
ba P4106
nop

TARGET4443:
ba RET4443
nop


P4106: !_BST [23] (maybe <- 0x41800017) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4107: !_MEMBAR (FP)
membar #StoreLoad

P4108: !_LD [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4109: !_ST_BINIT [5] (maybe <- 0x2000026) (Int) (LE)
wr %g0, 0xea, %asi
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
stwa   %l6, [%i1 + 12] %asi
add   %l4, 1, %l4

P4110: !_MEMBAR (Int) (LE)

P4111: !_BST [2] (maybe <- 0x4180001a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P4112: !_MEMBAR (FP)
membar #StoreLoad

P4113: !_LD [4] (FP)
ld [%i1 + 4], %f5
! 1 addresses covered

P4114: !_ST_BINIT [11] (maybe <- 0x2000027) (Int) (LE)
wr %g0, 0xea, %asi
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
stwa   %o5, [%i3 + 12] %asi
add   %l4, 1, %l4

P4115: !_MEMBAR (Int) (LE)
membar #StoreLoad

P4116: !_ST [16] (maybe <- 0x2000028) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P4117: !_MEMBAR (FP)

P4118: !_BST [0] (maybe <- 0x4180001d) (FP) (Branch target of P4101)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi
ba P4119
nop

TARGET4101:
ba RET4101
nop


P4119: !_MEMBAR (FP)
membar #StoreLoad

P4120: !_DWLD [23] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %f6
! 1 addresses covered
fmovs %f7, %f6

P4121: !_LD [7] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P4122: !_ST [18] (maybe <- 0x2000029) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4123: !_LD [17] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f7
! 1 addresses covered

P4124: !_LDD [2] (Int)
ldd [%i0 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P4125: !_CASX [4] (maybe <- 0x200002a) (Int)
ldx [%i1], %o5
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i1], %l3, %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
add  %l4, 1, %l4

P4126: !_SWAP [4] (maybe <- 0x200002c) (Int)
mov %l4, %l7
swap  [%i1 + 4], %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P4127: !_MEMBAR (FP) (Branch target of P4904)
ba P4128
nop

TARGET4904:
ba RET4904
nop


P4128: !_BSTC [3] (maybe <- 0x41800020) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4129: !_MEMBAR (FP)
membar #StoreLoad

P4130: !_ST [0] (maybe <- 0x200002d) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4131: !_LDD [18] (Int) (LE)
wr %g0, 0x88, %asi
ldda [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P4132: !_LDD [10] (Int) (Branch target of P4601)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3
ba P4133
nop

TARGET4601:
ba RET4601
nop


P4133: !_PREFETCH [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 3

P4134: !_ST [19] (maybe <- 0x200002e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P4135: !_DWST [1] (maybe <- 0x200002f) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i0 + 0]
add   %l4, 1, %l4

P4136: !_DWST [2] (maybe <- 0x2000031) (Int)
mov %l4, %l7 
stx %l7, [%i0 + 8]
add   %l4, 1, %l4

P4137: !_CAS [21] (maybe <- 0x2000032) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o4
mov %o4, %l7
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o4(lower)
srl %l6, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P4138: !_DWLD [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4139: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4140: !_ST_BINIT [20] (maybe <- 0x2000033) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P4141: !_MEMBAR (Int)
membar #StoreLoad

P4142: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 22

P4143: !_LDD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P4144: !_DWLD [10] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f8
! 2 addresses covered

P4145: !_CAS [18] (maybe <- 0x2000034) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o5
mov %o5, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
mov %l4, %o3
cas [%i2], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4146: !_LDD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P4147: !_LDD [18] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P4148: !_DWST_BINIT [7] (maybe <- 0x2000035) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P4149: !_MEMBAR (Int)

P4150: !_BST [10] (maybe <- 0x41800023) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4151: !_MEMBAR (FP)
membar #StoreLoad

P4152: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P4153: !_DWST_BINIT [22] (maybe <- 0x2000037) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P4154: !_MEMBAR (Int)
membar #StoreLoad

P4155: !_CASX [4] (maybe <- 0x2000039) (Int)
ldx [%i1], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %o5
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i1], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P4156: !_DWST_BINIT [16] (maybe <- 0x200003b) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i2 + 0] %asi
add   %l4, 1, %l4

P4157: !_MEMBAR (Int)
membar #StoreLoad

P4158: !_PREFETCH [16] (Int)
prefetch [%i2 + 4], 22

P4159: !_PREFETCH [4] (Int)
prefetch [%i1 + 4], 20

P4160: !_LDD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P4161: !_DWST_BINIT [21] (maybe <- 0x200003d) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P4162: !_MEMBAR (Int)
membar #StoreLoad

P4163: !_PREFETCH [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 4

P4164: !_ST [19] (maybe <- 0x200003f) (Int)
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P4165: !_DWST [15] (maybe <- 0x2000040) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4

P4166: !_SWAP [23] (maybe <- 0x2000042) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o4
swap  [%i3 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4167: !_DWST_BINIT [11] (maybe <- 0x2000043) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P4168: !_MEMBAR (Int)
membar #StoreLoad

P4169: !_PREFETCH [7] (Int) (Branch target of P4268)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 29
ba P4170
nop

TARGET4268:
ba RET4268
nop


P4170: !_LD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P4171: !_MEMBAR (FP)

P4172: !_BST [20] (maybe <- 0x41800026) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4172
nop
RET4172:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P4173: !_MEMBAR (FP)
membar #StoreLoad

P4174: !_LD [13] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f10
! 1 addresses covered

P4175: !_DWLD [2] (Int)
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4176: !_DWST [12] (maybe <- 0x2000044) (Int) (Branch target of P4747)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4
ba P4177
nop

TARGET4747:
ba RET4747
nop


P4177: !_DWST [14] (maybe <- 0x41800029) (FP)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]

P4178: !_PREFETCH [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

P4179: !_LD [1] (Int) (LE) (Branch target of P4345)
wr %g0, 0x88, %asi
lduwa [%i0 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
ba P4180
nop

TARGET4345:
ba RET4345
nop


P4180: !_LD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4181: !_REPLACEMENT [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
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

P4182: !_DWST_BINIT [12] (maybe <- 0x2000046) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i2 + 0] %asi
add   %l4, 1, %l4

P4183: !_MEMBAR (Int)
membar #StoreLoad

P4184: !_CAS [22] (maybe <- 0x2000048) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
mov %l4, %o2
cas [%l3], %o5, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4185: !_SWAP [7] (maybe <- 0x2000049) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 4], %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P4186: !_PREFETCH [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

P4187: !_ST [23] (maybe <- 0x200004a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P4188: !_CAS [15] (maybe <- 0x200004b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o3
mov %o3, %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P4189: !_PREFETCH [15] (Int)
prefetch [%i3 + 0], 1

P4190: !_CASX [3] (maybe <- 0x200004c) (Int)
ldx [%i1], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %o4, %l6
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
casx [%i1], %l6, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P4191: !_CASX [17] (maybe <- 0x200004e) (Int)
add %i3, 8, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l6
mov %l4, %o2
casx [%l7], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P4192: !_MEMBAR (FP)
membar #StoreLoad

P4193: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

P4194: !_MEMBAR (FP)

P4195: !_CASX [7] (maybe <- 0x200004f) (Int)
ldx [%i2], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l6
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i2], %l6, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P4196: !_MEMBAR (FP)

P4197: !_BST [16] (maybe <- 0x4180002a) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4198: !_MEMBAR (FP)
membar #StoreLoad

P4199: !_CASX [17] (maybe <- 0x2000051) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
sllx %l7, 32, %l7
wr %g0, 0x88, %asi
add %i3, 8, %l6
ldxa [%l6] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov  %o5, %l3
mov  %l7, %o5
casxa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4

P4200: !_DWST [16] (maybe <- 0x2000052) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i3 + 0]
add   %l4, 1, %l4

P4201: !_ST_BINIT [2] (maybe <- 0x2000054) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 12] %asi
add   %l4, 1, %l4

P4202: !_MEMBAR (Int)
membar #StoreLoad

P4203: !_CAS [10] (maybe <- 0x2000055) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4

P4204: !_CAS [22] (maybe <- 0x2000056) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduwa [%l3] %asi, %o3
mov %o3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
mov %l6, %l7
casa [%l3] %asi, %o5, %l7
! move %l7(lower) -> %o3(lower)
srl %l7, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P4205: !_DWLD [23] (FP)
ldd [%i2 + 8], %f14
! 1 addresses covered
fmovs %f15, %f14

P4206: !_ST [14] (maybe <- 0x2000057) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P4207: !_PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P4208: !_DWST_BINIT [15] (maybe <- 0x2000058) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i2 + 0] %asi
add   %l4, 1, %l4

P4209: !_MEMBAR (Int)

P4210: !_BST [8] (maybe <- 0x4180002d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4211: !_MEMBAR (FP)
membar #StoreLoad

P4212: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
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
fmovd %f34, %f18
fmovs %f19, %f1

P4213: !_MEMBAR (FP)

P4214: !_SWAP [5] (maybe <- 0x200005a) (Int)
mov %l4, %o4
swap  [%i1 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4215: !_REPLACEMENT [1] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
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

P4216: !_LDD [6] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P4217: !_DWLD [9] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4217
nop
RET4217:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P4218: !_CASX [14] (maybe <- 0x200005b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
add  %l4, 1, %l4

P4219: !_MEMBAR (FP)

P4220: !_BSTC [19] (maybe <- 0x41800030) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4221: !_MEMBAR (FP)
membar #StoreLoad

P4222: !_ST_BINIT [19] (maybe <- 0x200005c) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P4223: !_MEMBAR (Int)
membar #StoreLoad

P4224: !_DWST [10] (maybe <- 0x200005d) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4224
nop
RET4224:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P4225: !_SWAP [12] (maybe <- 0x200005f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5
swap  [%i3 + 0], %o5
! move %o5(lower) -> %o3(lower)
srl %o5, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P4226: !_CASX [7] (maybe <- 0x2000060) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
casx [%i2], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4

P4227: !_MEMBAR (FP)

P4228: !_BST [20] (maybe <- 0x41800033) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4229: !_MEMBAR (FP)
membar #StoreLoad

P4230: !_ST [14] (maybe <- 0x2000062) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P4231: !_LD [18] (Int)
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4232: !_DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l3
or %l3, %o1, %o1

P4233: !_MEMBAR (FP)
membar #StoreLoad

P4234: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4

P4235: !_MEMBAR (FP)

P4236: !_SWAP [1] (maybe <- 0x2000063) (Int)
mov %l4, %o2
swap  [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4237: !_PREFETCH [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 0

P4238: !_CASX [1] (maybe <- 0x2000064) (Int)
ldx [%i0], %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i0], %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
add  %l4, 1, %l4

P4239: !_LDD [22] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P4240: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4241: !_SWAP [22] (maybe <- 0x2000066) (Int) (LE)
wr %g0, 0x88, %asi
mov %l4, %o1
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %o1, %l7, %o5
srl %o5, 8, %o5
sll %o1, 8, %o1
and %o1, %l7, %o1
or %o1, %o5, %o1
srl %o1, 16, %o5
sll %o1, 16, %o1
srl %o1, 0, %o1
or %o1, %o5, %o1
swapa  [%i2 + 4] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4242: !_DWST_BINIT [8] (maybe <- 0x2000067) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6 
stxa %l6, [%i2 + 8] %asi 
add   %l4, 1, %l4

P4243: !_MEMBAR (Int)

P4244: !_BST [3] (maybe <- 0x41800036) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4245: !_MEMBAR (FP)
membar #StoreLoad

P4246: !_ST [8] (maybe <- 0x2000068) (Int)
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P4247: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4247
nop
RET4247:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P4248: !_BST [5] (maybe <- 0x41800039) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4249: !_MEMBAR (FP)
membar #StoreLoad

P4250: !_DWST_BINIT [20] (maybe <- 0x2000069) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7 
stxa %l7, [%i3 + 8] %asi 
add   %l4, 1, %l4

P4251: !_MEMBAR (Int)
membar #StoreLoad

P4252: !_DWST [9] (maybe <- 0x200006a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P4253: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 21

P4254: !_SWAP [13] (maybe <- 0x200006c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7
swap  [%i3 + 4], %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

P4255: !_PREFETCH [5] (Int)
prefetch [%i1 + 12], 21

P4256: !_SWAP [0] (maybe <- 0x200006d) (Int)
mov %l4, %o2
swap  [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4257: !_LDD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P4258: !_LDD [3] (Int)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P4259: !_MEMBAR (FP)
membar #StoreLoad

P4260: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f34, %f18
fmovs %f19, %f7

P4261: !_MEMBAR (FP)

P4262: !_SWAP [1] (maybe <- 0x200006e) (Int)
mov %l4, %o4
swap  [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4263: !_CAS [22] (maybe <- 0x200006f) (Int)
add %i2, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l3], %o5, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4264: !_MEMBAR (FP)
membar #StoreLoad

P4265: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f34, %f18
fmovs %f19, %f10

P4266: !_MEMBAR (FP)

P4267: !_CAS [13] (maybe <- 0x2000070) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
mov %l4, %o1
cas [%l6], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4268: !_DWST [11] (maybe <- 0x2000071) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3 
stx %l3, [%i3 + 8]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4268
nop
RET4268:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P4269: !_MEMBAR (FP)

P4270: !_BSTC [5] (maybe <- 0x4180003c) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4271: !_MEMBAR (FP)
membar #StoreLoad

P4272: !_DWLD [5] (Int)
ldx [%i1 + 8], %l3
! move %l3(lower) -> %o1(lower)
srl %l3, 0, %o5
or %o5, %o1, %o1

P4273: !_CAS [19] (maybe <- 0x2000072) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P4274: !_CAS [21] (maybe <- 0x2000073) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o3
mov %o3, %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P4275: !_ST_BINIT [16] (maybe <- 0x2000074) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P4276: !_MEMBAR (Int) (CBR) (Branch target of P4678)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4276
nop
RET4276:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P4277
nop

TARGET4678:
ba RET4678
nop


P4277: !_DWST_BINIT [5] (maybe <- 0x2000075) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l6 
stxa %l6, [%i1 + 8] %asi 
add   %l4, 1, %l4

P4278: !_MEMBAR (Int)
membar #StoreLoad

P4279: !_DWST [4] (maybe <- 0x4180003f) (FP) (Branch target of P4657)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 0]
ba P4280
nop

TARGET4657:
ba RET4657
nop


P4280: !_LDD [1] (Int)
ldd [%i0 + 0], %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P4281: !_REPLACEMENT [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P4282: !_DWST [6] (maybe <- 0x2000076) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P4283: !_ST [11] (maybe <- 0x2000078) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P4284: !_MEMBAR (FP)

P4285: !_BST [1] (maybe <- 0x41800041) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4285
nop
RET4285:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P4286: !_MEMBAR (FP)
membar #StoreLoad

P4287: !_DWLD [9] (Int)
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4288: !_LDD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

P4289: !_PREFETCH [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 23

P4290: !_MEMBAR (FP)

P4291: !_BST [13] (maybe <- 0x41800044) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4292: !_MEMBAR (FP)
membar #StoreLoad

P4293: !_DWST [14] (maybe <- 0x2000079) (Int)
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4

P4294: !_MEMBAR (FP)

P4295: !_BSTC [19] (maybe <- 0x41800047) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4296: !_MEMBAR (FP)
membar #StoreLoad

P4297: !_DWST_BINIT [13] (maybe <- 0x200007a) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i2 + 0] %asi
add   %l4, 1, %l4

P4298: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4298
nop
RET4298:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P4299: !_DWST [3] (maybe <- 0x4180004a) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 0]

P4300: !_MEMBAR (FP)

P4301: !_BST [23] (maybe <- 0x4180004c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4302: !_MEMBAR (FP)
membar #StoreLoad

P4303: !_DWST_BINIT [0] (maybe <- 0x200007c) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i0 + 0] %asi
add   %l4, 1, %l4

P4304: !_MEMBAR (Int)
membar #StoreLoad

P4305: !_CAS [10] (maybe <- 0x200007e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P4306: !_LDD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P4307: !_LDD [8] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P4308: !_MEMBAR (FP)

P4309: !_BSTC [2] (maybe <- 0x4180004f) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P4310: !_MEMBAR (FP)
membar #StoreLoad

P4311: !_BLD [20] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f34, %f18
fmovs %f19, %f13

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4311
nop
RET4311:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P4312: !_MEMBAR (FP)

P4313: !_DWST [23] (maybe <- 0x41800052) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]

P4314: !_CASX [21] (maybe <- 0x200007f) (Int)
ldx [%i3], %l7
! move %l7(upper) -> %o4(lower)
srlx %l7, 32, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
add  %l4, 1, %l4

P4315: !_CAS [6] (maybe <- 0x2000081) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %l7
mov %l7, %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
mov %l4, %o2
cas [%i2], %o5, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4316: !_DWST_BINIT [3] (maybe <- 0x2000082) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i1 + 0] %asi
add   %l4, 1, %l4

P4317: !_MEMBAR (Int)
membar #StoreLoad

P4318: !_ST [18] (maybe <- 0x2000084) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4319: !_CASX [3] (maybe <- 0x2000085) (Int) (LE) (Branch target of P4285)
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l7, %l6, %o5
srlx %o5, 8, %o5
sllx %l7, 8, %l7
and %l7, %l6, %l7
or %l7, %o5, %l7 
sethi %hi(0xffff0000), %l6
srlx %l7, 16, %o5
andn %o5, %l6, %o5
andn %l7, %l6, %l7
sllx %l7, 16, %l7
or %l7, %o5, %l7 
srlx %l7, 32, %o5
sllx %l7, 32, %l7
or %l7, %o5, %o5 
wr %g0, 0x88, %asi
ldxa [%i1] %asi, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
! move %l3(upper) -> %o3(upper)
or %l3, %g0, %o3
mov %l3, %l6
mov  %o5, %l3
casxa [%i1] %asi, %l6, %l3
! move %l3(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srl %l3, 0, %l6
or %l6, %o3, %o3
! move %l3(upper) -> %o4(upper)
or %l3, %g0, %o4
add  %l4, 1, %l4
ba P4320
nop

TARGET4285:
ba RET4285
nop


P4320: !_REPLACEMENT [15] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
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

P4321: !_PREFETCH [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 21

P4322: !_CAS [4] (maybe <- 0x2000087) (Int)
add %i1, 4, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l6], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4323: !_SWAP [13] (maybe <- 0x2000088) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l7
swap  [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P4324: !_ST_BINIT [21] (maybe <- 0x2000089) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P4325: !_MEMBAR (Int)
membar #StoreLoad

P4326: !_CASX [6] (maybe <- 0x200008a) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l7
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P4327: !_ST_BINIT [0] (maybe <- 0x200008c) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4

P4328: !_MEMBAR (Int)
membar #StoreLoad

P4329: !_PREFETCH [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 30

P4330: !_LDD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P4331: !_DWST_BINIT [14] (maybe <- 0x200008d) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P4332: !_MEMBAR (Int)
membar #StoreLoad

P4333: !_CAS [19] (maybe <- 0x200008e) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o3(lower)
or %o5, %o3, %o3
mov %l4, %o4
cas [%l3], %o5, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4334: !_MEMBAR (FP)

P4335: !_BSTC [23] (maybe <- 0x41800053) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4336: !_MEMBAR (FP)
membar #StoreLoad

P4337: !_ST [5] (maybe <- 0x200008f) (Int)
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4

P4338: !_ST [8] (maybe <- 0x41800056) (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]

P4339: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P4340: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 23

P4341: !_SWAP [6] (maybe <- 0x2000090) (Int)
mov %l4, %o0
swap  [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4342: !_ST_BINIT [15] (maybe <- 0x2000091) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P4343: !_MEMBAR (Int)

P4344: !_BST [14] (maybe <- 0x41800057) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4345: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4345
nop
RET4345:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P4346: !_LD [13] (Int)
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4347: !_PREFETCH [16] (Int) (CBR)
prefetch [%i3 + 4], 23

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4347
nop
RET4347:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P4348: !_MEMBAR (FP)

P4349: !_BST [18] (maybe <- 0x4180005a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4350: !_MEMBAR (FP)
membar #StoreLoad

P4351: !_PREFETCH [3] (Int)
prefetch [%i1 + 0], 21

P4352: !_DWST [3] (maybe <- 0x2000092) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i1 + 0]
add   %l4, 1, %l4

P4353: !_PREFETCH [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 16

P4354: !_MEMBAR (FP)

P4355: !_BSTC [20] (maybe <- 0x4180005d) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4356: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4356
nop
RET4356:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P4357: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
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
fmovd %f34, %f18
fmovs %f19, %f0

P4358: !_MEMBAR (FP)

P4359: !_ST [0] (maybe <- 0x2000094) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4360: !_DWST_BINIT [11] (maybe <- 0x2000095) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l3 
stxa %l3, [%i2 + 8] %asi 
add   %l4, 1, %l4

P4361: !_MEMBAR (Int)
membar #StoreLoad

P4362: !_DWST [12] (maybe <- 0x2000096) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P4363: !_CAS [0] (maybe <- 0x2000098) (Int)
lduw [%i0], %o1
mov %o1, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l4, %l6
cas [%i0], %l7, %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P4364: !_PREFETCH [0] (Int)
prefetch [%i0 + 0], 20

P4365: !_MEMBAR (FP) (Branch target of P4842)
ba P4366
nop

TARGET4842:
ba RET4842
nop


P4366: !_BSTC [5] (maybe <- 0x41800060) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4367: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4367
nop
RET4367:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P4368: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

P4369: !_MEMBAR (FP)

P4370: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 21

P4371: !_ST [14] (maybe <- 0x2000099) (Int) (Branch target of P4709)
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
ba P4372
nop

TARGET4709:
ba RET4709
nop


P4372: !_CAS [9] (maybe <- 0x200009a) (Int)
lduw [%i2], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%i2], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P4373: !_LD [3] (Int)
lduw [%i1 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4374: !_SWAP [15] (maybe <- 0x200009b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
srl %l6, 0, %o5
or %o5, %o3, %o3
add   %l4, 1, %l4

P4375: !_CASX [14] (maybe <- 0x200009c) (Int) (Branch target of P4609)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov  %o4, %l7
mov %l4, %o0
casx [%o5], %l7, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
add  %l4, 1, %l4
ba P4376
nop

TARGET4609:
ba RET4609
nop


P4376: !_MEMBAR (FP)

P4377: !_BST [13] (maybe <- 0x41800063) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4378: !_MEMBAR (FP)
membar #StoreLoad

P4379: !_CASX [6] (maybe <- 0x200009d) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P4380: !_DWST [23] (maybe <- 0x200009f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 8]
add   %l4, 1, %l4

P4381: !_DWST_BINIT [12] (maybe <- 0x20000a0) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stxa %l3, [%i3 + 0] %asi
add   %l4, 1, %l4

P4382: !_MEMBAR (Int)
membar #StoreLoad

P4383: !_ST [2] (maybe <- 0x20000a2) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4384: !_SWAP [20] (maybe <- 0x20000a3) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o3
swap  [%i2 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4385: !_PREFETCH [13] (Int)
prefetch [%i3 + 4], 1

P4386: !_LDD [8] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P4387: !_CAS [15] (maybe <- 0x20000a4) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o4(lower)
srl %o5, 0, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P4388: !_MEMBAR (FP)

P4389: !_BSTC [13] (maybe <- 0x41800066) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4390: !_MEMBAR (FP)
membar #StoreLoad

P4391: !_REPLACEMENT [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
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

P4392: !_CASX [22] (maybe <- 0x20000a5) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P4393: !_MEMBAR (FP)

P4394: !_BST [6] (maybe <- 0x41800069) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4395: !_MEMBAR (FP)
membar #StoreLoad

P4396: !_LDD [8] (Int) (LE)
wr %g0, 0x88, %asi
ldda [%i2 + 8] %asi, %l6
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P4397: !_LD [22] (Int)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4398: !_ST_BINIT [11] (maybe <- 0x20000a7) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P4399: !_MEMBAR (Int)
membar #StoreLoad

P4400: !_DWST_BINIT [10] (maybe <- 0x20000a8) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P4401: !_MEMBAR (Int)
membar #StoreLoad

P4402: !_REPLACEMENT [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P4403: !_ST [6] (maybe <- 0x20000aa) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4404: !_DWST_BINIT [0] (maybe <- 0x20000ab) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stxa %l7, [%i0 + 0] %asi
add   %l4, 1, %l4

P4405: !_MEMBAR (Int)

P4406: !_BSTC [18] (maybe <- 0x4180006c) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4407: !_MEMBAR (FP)
membar #StoreLoad

P4408: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6

P4409: !_MEMBAR (FP)

P4410: !_CASX [22] (maybe <- 0x20000ad) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
casx [%i3], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P4411: !_ST [0] (maybe <- 0x20000af) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4412: !_SWAP [7] (maybe <- 0x20000b0) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4413: !_LDD [4] (Int) (CBR)
ldd [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4413
nop
RET4413:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P4414: !_MEMBAR (FP)

P4415: !_BST [2] (maybe <- 0x4180006f) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P4416: !_MEMBAR (FP)
membar #StoreLoad

P4417: !_DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4418: !_CAS [11] (maybe <- 0x20000b1) (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
mov %l4, %o3
cas [%o5], %l7, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4418
nop
RET4418:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P4419: !_MEMBAR (FP)

P4420: !_BST [17] (maybe <- 0x41800072) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4421: !_MEMBAR (FP)
membar #StoreLoad

P4422: !_DWST [16] (maybe <- 0x20000b2) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4

P4423: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P4424: !_DWST_BINIT [11] (maybe <- 0x20000b4) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stxa %o5, [%i2 + 8] %asi 
add   %l4, 1, %l4

P4425: !_MEMBAR (Int)
membar #StoreLoad

P4426: !_REPLACEMENT [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P4427: !_LDD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P4428: !_CAS [22] (maybe <- 0x20000b5) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o4(lower)
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%l6], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4429: !_ST_BINIT [1] (maybe <- 0x20000b6) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i0 + 4] %asi
add   %l4, 1, %l4

P4430: !_MEMBAR (Int)
membar #StoreLoad

P4431: !_CASX [0] (maybe <- 0x20000b7) (Int)
ldx [%i0], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i0], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P4432: !_MEMBAR (FP)
membar #StoreLoad

P4433: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f34, %f18
fmovs %f19, %f9

P4434: !_MEMBAR (FP)

P4435: !_LD [21] (Int) (Branch target of P4671)
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
ba P4436
nop

TARGET4671:
ba RET4671
nop


P4436: !_CASX [14] (maybe <- 0x20000b9) (Int) (Branch target of P4367)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov  %o3, %l6
mov %l4, %o4
casx [%l7], %l6, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4
ba P4437
nop

TARGET4367:
ba RET4367
nop


P4437: !_DWST_BINIT [1] (maybe <- 0x20000ba) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i0 + 0] %asi
add   %l4, 1, %l4

P4438: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4438
nop
RET4438:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P4439: !_CAS [8] (maybe <- 0x20000bc) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P4440: !_CASX [7] (maybe <- 0x20000bd) (Int)
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

P4441: !_CAS [12] (maybe <- 0x20000bf) (Int)
lduw [%i3], %o3
mov %o3, %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o3(lower)
srl %l3, 0, %l6
or %l6, %o3, %o3
add   %l4, 1, %l4

P4442: !_LD [12] (Int)
lduw [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4443: !_DWLD [23] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %o5
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4443
nop
RET4443:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P4444: !_DWLD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4445: !_MEMBAR (FP)

P4446: !_BST [1] (maybe <- 0x41800075) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i0 + 0 ] %asi

P4447: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4447
nop
RET4447:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P4448: !_LD [15] (Int)
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4449: !_LD [19] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4450: !_PREFETCH [5] (Int) (CBR)
prefetch [%i1 + 12], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4450
nop
RET4450:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P4451: !_MEMBAR (FP)

P4452: !_BST [22] (maybe <- 0x41800078) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4453: !_MEMBAR (FP)
membar #StoreLoad

P4454: !_REPLACEMENT [0] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
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

P4455: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P4456: !_SWAP [23] (maybe <- 0x20000c0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o2
swap  [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4457: !_CAS [7] (maybe <- 0x20000c1) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l6, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4458: !_DWST_BINIT [4] (maybe <- 0x20000c2) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i1 + 0] %asi
add   %l4, 1, %l4

P4459: !_MEMBAR (Int)
membar #StoreLoad

P4460: !_PREFETCH [22] (Int)
prefetch [%i3 + 4], 2

P4461: !_LDD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3
! move %l7(lower) -> %o4(upper)
sllx %l7, 32, %o4

P4462: !_MEMBAR (FP)
membar #StoreLoad

P4463: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f34, %f18
fmovs %f19, %f12

P4464: !_MEMBAR (FP)

P4465: !_DWST [3] (maybe <- 0x20000c4) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i1 + 0]
add   %l4, 1, %l4

P4466: !_LDD [10] (Int)
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P4467: !_LDD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P4468: !_SWAP [18] (maybe <- 0x20000c6) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o1
swap  [%i2 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4469: !_DWST_BINIT [19] (maybe <- 0x20000c7) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stxa %o5, [%i2 + 0] %asi
add   %l4, 1, %l4

P4470: !_MEMBAR (Int)
membar #StoreLoad

P4471: !_LD [21] (Int)
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1

P4472: !_LD [21] (Int)
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4473: !_REPLACEMENT [1] (Int) (Branch target of P4298)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
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
ba P4474
nop

TARGET4298:
ba RET4298
nop


P4474: !_MEMBAR (FP) (Branch target of P4093)
ba P4475
nop

TARGET4093:
ba RET4093
nop


P4475: !_BST [4] (maybe <- 0x4180007b) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4476: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET4476
nop
RET4476:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P4477: !_PREFETCH [0] (Int) (CBR)
prefetch [%i0 + 0], 19

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4477
nop
RET4477:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P4478: !_DWST [18] (maybe <- 0x20000c9) (Int)
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4

P4479: !_SWAP [20] (maybe <- 0x20000cb) (Int) (LE)
wr %g0, 0x88, %asi
mov %l4, %o5
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %o5, %l6, %l7
srl %l7, 8, %l7
sll %o5, 8, %o5
and %o5, %l6, %o5
or %o5, %l7, %o5
srl %o5, 16, %l7
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l7, %o5
swapa  [%i2 + 12] %asi, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4

P4480: !_LDD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P4481: !_REPLACEMENT [1] (Int)
sethi %hi(0x20000), %l3
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

P4482: !_PREFETCH [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 22

P4483: !_SWAP [13] (maybe <- 0x20000cc) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o4
swap  [%i2 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4484: !_SWAP [21] (maybe <- 0x20000cd) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3
swap  [%i3 + 0], %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P4485: !_DWST_BINIT [22] (maybe <- 0x20000ce) (Int)
wr %g0, 0xe2, %asi
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stxa %l6, [%i3 + 0] %asi
add   %l4, 1, %l4

P4486: !_MEMBAR (Int)
membar #StoreLoad

P4487: !_SWAP [12] (maybe <- 0x20000d0) (Int)
mov %l4, %o0
swap  [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4488: !_LDD [13] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P4489: !_MEMBAR (FP)

P4490: !_BST [20] (maybe <- 0x4180007e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4491: !_MEMBAR (FP)
membar #StoreLoad

P4492: !_CASX [4] (maybe <- 0x20000d1) (Int)
ldx [%i1], %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i1], %o5, %l7
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
add  %l4, 1, %l4

P4493: !_PREFETCH [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 23

P4494: !_MEMBAR (FP)

P4495: !_BSTC [11] (maybe <- 0x41800081) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4496: !_MEMBAR (FP)
membar #StoreLoad

P4497: !_DWLD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o5
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l7
or %l7, %o3, %o3
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4

P4498: !_DWST [9] (maybe <- 0x20000d3) (Int) (Branch target of P4438)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4
ba P4499
nop

TARGET4438:
ba RET4438
nop


P4499: !_MEMBAR (FP)

P4500: !_BST [4] (maybe <- 0x41800084) (FP) (Branch target of P4684)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi
ba P4501
nop

TARGET4684:
ba RET4684
nop


P4501: !_MEMBAR (FP)
membar #StoreLoad

P4502: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o4(lower)
or %o5, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5

P4503: !_LDD [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %l6
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P4504: !_SWAP [4] (maybe <- 0x20000d5) (Int)
mov %l4, %l7
swap  [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P4505: !_LD [0] (Int)
lduw [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4506: !_SWAP [14] (maybe <- 0x20000d6) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5
swap  [%i2 + 12], %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l6
or %l6, %o1, %o1
add   %l4, 1, %l4

P4507: !_ST [5] (maybe <- 0x20000d7) (Int) (LE) (Branch target of P4847)
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
stwa   %l3, [%i1 + 12] %asi
add   %l4, 1, %l4
ba P4508
nop

TARGET4847:
ba RET4847
nop


P4508: !_DWST [14] (maybe <- 0x41800087) (FP)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]

P4509: !_LD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4510: !_REPLACEMENT [0] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
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

P4511: !_DWST_BINIT [9] (maybe <- 0x20000d8) (Int) (LE)
wr %g0, 0xea, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5
add   %l4, 1, %l4
or %o5, %l4, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l3, %l6, %o5
srlx %o5, 8, %o5
sllx %l3, 8, %l3
and %l3, %l6, %l3
or %l3, %o5, %l3 
sethi %hi(0xffff0000), %l6
srlx %l3, 16, %o5
andn %o5, %l6, %o5
andn %l3, %l6, %l3
sllx %l3, 16, %l3
or %l3, %o5, %l3 
srlx %l3, 32, %o5
sllx %l3, 32, %l3
or %l3, %o5, %o5 
stxa %o5, [%i3 + 0 ] %asi
add   %l4, 1, %l4

P4512: !_MEMBAR (Int) (LE)
membar #StoreLoad

P4513: !_ST_BINIT [7] (maybe <- 0x20000da) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P4514: !_MEMBAR (Int)
membar #StoreLoad

P4515: !_LDD [9] (Int) (LE)
wr %g0, 0x88, %asi
ldda [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P4516: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4517: !_CAS [5] (maybe <- 0x20000db) (Int) (CBR)
add %i1, 12, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%o5], %l7, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET4517
nop
RET4517:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P4518: !_DWST [1] (maybe <- 0x20000dc) (Int)
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i0 + 0]
add   %l4, 1, %l4

P4519: !_LD [18] (Int)
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P4520: !_DWST_BINIT [5] (maybe <- 0x20000de) (Int)
wr %g0, 0xe2, %asi
mov %l4, %l3 
stxa %l3, [%i1 + 8] %asi 
add   %l4, 1, %l4

P4521: !_MEMBAR (Int)
membar #StoreLoad

P4522: !_DWST [6] (maybe <- 0x20000df) (Int)
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4

P4523: !_MEMBAR (FP)

P4524: !_BSTC [17] (maybe <- 0x41800088) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4525: !_MEMBAR (FP)
membar #StoreLoad

P4526: !_LD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4527: !_MEMBAR (FP)

P4528: !_BST [4] (maybe <- 0x4180008b) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4529: !_MEMBAR (FP)
membar #StoreLoad

P4530: !_LD [0] (Int)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

P4531: !_MEMBAR (FP)
membar #StoreLoad

P4532: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovs %f19, %f14
fmovd %f34, %f18
fmovs %f19, %f15
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

P4533: !_MEMBAR (FP) (Branch target of P4217)
ba P4534
nop

TARGET4217:
ba RET4217
nop


P4534: !_CASX [4] (maybe <- 0x20000e1) (Int)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

P4535: !_CAS [5] (maybe <- 0x20000e3) (Int)
add %i1, 12, %l7
lduw [%l7], %o4
mov %o4, %l6
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o4(lower)
srl %l3, 0, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add   %l4, 1, %l4

P4536: !_LD [3] (Int)
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4537: !_ST [7] (maybe <- 0x20000e4) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P4538: !_LDD [15] (Int) (Branch target of P4476)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
ba P4539
nop

TARGET4476:
ba RET4476
nop


P4539: !_LDD [12] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 0] %asi, %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P4540: !_MEMBAR (FP)
membar #StoreLoad

P4541: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovs %f3, %f2

P4542: !_MEMBAR (FP)

P4543: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P4544: !_CASX [3] (maybe <- 0x20000e5) (Int)
ldx [%i1], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i1], %l7, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
add  %l4, 1, %l4

P4545: !_CAS [9] (maybe <- 0x20000e7) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%i2], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4546: !_MEMBAR (FP)

P4547: !_BSTC [13] (maybe <- 0x4180008e) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4548: !_MEMBAR (FP)
membar #StoreLoad

P4549: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f34, %f18
fmovs %f19, %f5

P4550: !_MEMBAR (FP) (Branch target of P4946)
ba P4551
nop

TARGET4946:
ba RET4946
nop


P4551: !_LDD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2

P4552: !_PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4553: !_MEMBAR (FP)

P4554: !_BST [8] (maybe <- 0x41800091) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P4555: !_MEMBAR (FP)
membar #StoreLoad

P4556: !_LDD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3

P4557: !_DWST_BINIT [14] (maybe <- 0x20000e8) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3 
stxa %l3, [%i3 + 8] %asi 
add   %l4, 1, %l4

P4558: !_MEMBAR (Int)
membar #StoreLoad

P4559: !_LDD [11] (Int)
ldd [%i2 + 8], %l6
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3

P4560: !_MEMBAR (FP)
membar #StoreLoad

P4561: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f6
fmovd %f34, %f18
fmovs %f19, %f8

P4562: !_MEMBAR (FP)

P4563: !_SWAP [14] (maybe <- 0x20000e9) (Int)
mov %l4, %o4
swap  [%i3 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4564: !_MEMBAR (FP)

P4565: !_BSTC [22] (maybe <- 0x41800094) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P4566: !_MEMBAR (FP) (Branch target of P4736)
membar #StoreLoad
ba P4567
nop

TARGET4736:
ba RET4736
nop


P4567: !_CAS [10] (maybe <- 0x20000ea) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o4(lower)
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
mov %l4, %o0
cas [%o5], %l7, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4568: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P4569: !_ST_BINIT [20] (maybe <- 0x20000eb) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 12] %asi
add   %l4, 1, %l4

P4570: !_MEMBAR (Int)
membar #StoreLoad

P4571: !_ST_BINIT [19] (maybe <- 0x20000ec) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 4] %asi
add   %l4, 1, %l4

P4572: !_MEMBAR (Int)
membar #StoreLoad

P4573: !_ST_BINIT [13] (maybe <- 0x20000ed) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stwa   %l4, [%i2 + 4] %asi
add   %l4, 1, %l4

P4574: !_MEMBAR (Int)
membar #StoreLoad

P4575: !_CAS [15] (maybe <- 0x20000ee) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o1
mov %o1, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o1(lower)
srl %l3, 0, %l6
or %l6, %o1, %o1
add   %l4, 1, %l4

P4576: !_PREFETCH [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 1

P4577: !_LDD [6] (Int)
ldd [%i2 + 0], %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P4578: !_ST_BINIT [18] (maybe <- 0x20000ef) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P4579: !_MEMBAR (Int)
membar #StoreLoad

P4580: !_REPLACEMENT [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
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

P4581: !_ST_BINIT [18] (maybe <- 0x20000f0) (Int)
wr %g0, 0xe2, %asi
stwa   %l4, [%i3 + 0] %asi
add   %l4, 1, %l4

P4582: !_MEMBAR (Int)
membar #StoreLoad

P4583: !_DWST_BINIT [11] (maybe <- 0x20000f1) (Int)
wr %g0, 0xe2, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6 
stxa %l6, [%i3 + 8] %asi 
add   %l4, 1, %l4

P4584: !_MEMBAR (Int)

P4585: !_BST [4] (maybe <- 0x41800097) (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0x200000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #2, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync
stda %f32, [%i1 + 0 ] %asi

P4586: !_MEMBAR (FP)
membar #StoreLoad

P4587: !_PREFETCH [4] (Int)
prefetch [%i1 + 4], 3

P4588: !_CASX [7] (maybe <- 0x20000f2) (Int) (LE)
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
mov %o5, %l3
mov  %l7, %o5
casxa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o4(upper)
sllx %o5, 32, %o4
! move %o5(upper) -> %o4(lower)
srlx %o5, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
mov %o4, %l5
add  %l4, 1, %l4

P4589: !_SWAP [10] (maybe <- 0x20000f4) (Int)
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4590: !_REPLACEMENT [1] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %o5
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




