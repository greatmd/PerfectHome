/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: n2_8t_bstbld_1.s
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

! Initialize LFSR to 0x4547^4
sethi %hi(0x4547), %l0
or    %l0, %lo(0x4547), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES0: ! Test instruction sequence for ISTREAM 0 begins

P1: !_REPLACEMENT [18] (Int) (Loop entry)
sethi %hi(0x5), %l2
or %l2, %lo(0x5),  %l2
loop_entry_0_0:
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

P2: !_LD [12] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2
nop
RET2:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P3: !_REPLACEMENT [34] (Int)
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

P4: !_MEMBAR (FP)
membar #StoreLoad

P5: !_BLD [29] (FP) (CBR) (Branch target of P97)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET5
nop
RET5:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P6
nop

TARGET97:
ba RET97
nop


P6: !_MEMBAR (FP) (Branch target of P73)
ba P7
nop

TARGET73:
ba RET73
nop


P7: !_REPLACEMENT [33] (Int)
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

P8: !_LD [29] (Int)
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

P9: !_MEMBAR (FP)

P10: !_BST [31] (maybe <- 0x3f800001) (FP) (CBR)
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
be,pn  %xcc, TARGET10
nop
RET10:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P11: !_MEMBAR (FP)
membar #StoreLoad

P12: !_REPLACEMENT [18] (Int)
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

P13: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P14: !_BLD [12] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f40, %f18
fmovs %f18, %f5

P15: !_MEMBAR (FP) (Secondary ctx)

P16: !_REPLACEMENT [2] (Int)
sethi %hi(0x2000), %l3
ld [%i2+8], %l7
st %l7, [%i2+8]
add %i2, %l3, %l6
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

P17: !_MEMBAR (FP)

P18: !_BST [33] (maybe <- 0x3f800003) (FP) (Branch target of P151)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P19
nop

TARGET151:
ba RET151
nop


P19: !_MEMBAR (FP) (Branch target of P112)
membar #StoreLoad
ba P20
nop

TARGET112:
ba RET112
nop


P20: !_REPLACEMENT [8] (Int) (CBR) (Branch target of P220)
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
be,pt  %xcc, TARGET20
nop
RET20:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P21
nop

TARGET220:
ba RET220
nop


P21: !_REPLACEMENT [0] (Int)
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

P22: !_REPLACEMENT [15] (Int)
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

P23: !_MEMBAR (FP)

P24: !_BSTC [15] (maybe <- 0x3f800004) (FP) (CBR)
wr %g0, 0xe0, %asi
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
be,pn  %xcc, TARGET24
nop
RET24:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P25: !_MEMBAR (FP)
membar #StoreLoad

P26: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P27: !_MEMBAR (FP)

P28: !_REPLACEMENT [4] (Int)
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

P29: !_REPLACEMENT [6] (Int) (Branch target of P5)
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
ba P30
nop

TARGET5:
ba RET5
nop


P30: !_ST [1] (maybe <- 0x3f800005) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 4 ] %asi

P31: !_MEMBAR (Int)
membar #StoreLoad

P32: !_REPLACEMENT [28] (Int) (Branch target of P118)
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
ba P33
nop

TARGET118:
ba RET118
nop


P33: !_PREFETCH [1] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
prefetcha [%i0 + 4] %asi, 1

P34: !_REPLACEMENT [6] (Int) (CBR)
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
be,pn  %xcc, TARGET34
nop
RET34:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P35: !_REPLACEMENT [15] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P36: !_REPLACEMENT [30] (Int) (Nucleus ctx)
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

P37: !_REPLACEMENT [27] (Int)
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

P38: !_MEMBAR (FP)

P39: !_BSTC [31] (maybe <- 0x3f800006) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P40: !_MEMBAR (FP)
membar #StoreLoad

P41: !_REPLACEMENT [2] (Int) (CBR)
sethi %hi(0x2000), %l3
ld [%i2+8], %l7
st %l7, [%i2+8]
add %i2, %l3, %l6
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET41
nop
RET41:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P42: !_REPLACEMENT [5] (Int) (CBR) (Branch target of P164)
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
be,pn  %xcc, TARGET42
nop
RET42:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P43
nop

TARGET164:
ba RET164
nop


P43: !_REPLACEMENT [14] (Int)
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

P44: !_REPLACEMENT [5] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pt  %xcc, TARGET44
nop
RET44:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P45: !_REPLACEMENT [33] (Int) (CBR)
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
be,pn  %xcc, TARGET45
nop
RET45:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P46: !_REPLACEMENT [0] (Int) (CBR) (Nucleus ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET46
nop
RET46:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P47: !_PREFETCH [11] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET47
nop
RET47:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P48: !_REPLACEMENT [29] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P49: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET49
nop
RET49:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P50: !_BLD [6] (FP) (Branch target of P41)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f8
fmovd %f40, %f18
fmovs %f18, %f9
ba P51
nop

TARGET41:
ba RET41
nop


P51: !_MEMBAR (FP)

P52: !_BSTC [13] (maybe <- 0x3f800008) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
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

P53: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P54: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f10
fmovd %f40, %f12

P55: !_MEMBAR (FP)

P56: !_REPLACEMENT [16] (Int) (CBR) (Nucleus ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET56
nop
RET56:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P57: !_PREFETCH [4] (Int)
prefetch [%i0 + 32], 1

P58: !_ST [9] (maybe <- 0x3f80000b) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i1 + 32 ] %asi

P59: !_IDC_FLIP [10] (Int)
IDC_FLIP(59, 25430, 0, 0x43800040, 0x40, %i1, 0x40, %l6, %l7, %o5, %l3)

P60: !_PREFETCH [20] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 256], 1

P61: !_ST [33] (maybe <- 0x3f80000c) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 0 ] %asi

P62: !_REPLACEMENT [34] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P63: !_ST [19] (maybe <- 0x3f80000d) (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P64: !_FLUSHI [24] (Int)
flush %g0 

P65: !_REPLACEMENT [13] (Int)
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

P66: !_IDC_FLIP [20] (Int)
IDC_FLIP(66, 6308, 0, 0x45000100, 0x100, %i2, 0x100, %l6, %l7, %o5, %l3)

P67: !_MEMBAR (FP)
membar #StoreLoad

P68: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14

P69: !_MEMBAR (FP) (Branch target of P231)
ba P70
nop

TARGET231:
ba RET231
nop


P70: !_BST [31] (maybe <- 0x3f80000e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P71: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET71
nop
RET71:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P72: !_ST [12] (maybe <- 0x3f800010) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 4 ] %asi

P73: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET73
nop
RET73:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P74: !_BLD [20] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET74
nop
RET74:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P75: !_MEMBAR (FP) (Branch target of P194)
ba P76
nop

TARGET194:
ba RET194
nop


P76: !_BSTC [14] (maybe <- 0x3f800011) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P77: !_MEMBAR (FP) (Branch target of P94)
membar #StoreLoad
ba P78
nop

TARGET94:
ba RET94
nop


P78: !_REPLACEMENT [16] (Int)
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

P79: !_MEMBAR (FP)
membar #StoreLoad

P80: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 1 addresses covered

P81: !_MEMBAR (FP)

P82: !_REPLACEMENT [22] (Int)
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

P83: !_FLUSH [22] (Int) (Branch target of P205)
! Unsupported instruction
ba P84
nop

TARGET205:
ba RET205
nop


P84: !_LD [5] (Int)
lduw [%i0 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P85: !_REPLACEMENT [25] (Int) (Branch target of P175)
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
ba P86
nop

TARGET175:
ba RET175
nop


P86: !_REPLACEMENT [1] (Int)
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

P87: !_REPLACEMENT [16] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P88: !_LD [12] (FP) (Secondary ctx) (Branch target of P229)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 4] %asi, %f1
! 1 addresses covered
ba P89
nop

TARGET229:
ba RET229
nop


P89: !_REPLACEMENT [18] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET89
nop
RET89:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P90: !_REPLACEMENT [29] (Int)
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

P91: !_REPLACEMENT [32] (Int) (Secondary ctx)
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

P92: !_ST [1] (maybe <- 0x1) (Int) (Branch target of P34)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4
ba P93
nop

TARGET34:
ba RET34
nop


P93: !_ST [34] (maybe <- 0x2) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P94: !_REPLACEMENT [28] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pn  %xcc, TARGET94
nop
RET94:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P95: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET95
nop
RET95:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P96: !_BST [15] (maybe <- 0x3f800012) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P97: !_MEMBAR (FP) (CBR) (Branch target of P89)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET97
nop
RET97:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P98
nop

TARGET89:
ba RET89
nop


P98: !_REPLACEMENT [33] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P99: !_REPLACEMENT [5] (Int)
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

P100: !_REPLACEMENT [17] (Int)
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

P101: !_IDC_FLIP [1] (Int)
IDC_FLIP(101, 22167, 0, 0x43000004, 0x4, %i0, 0x4, %l6, %l7, %o5, %l3)

P102: !_REPLACEMENT [20] (Int)
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

P103: !_REPLACEMENT [1] (Int) (Nucleus ctx) (Branch target of P49)
wr %g0, 0x4, %asi
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
ba P104
nop

TARGET49:
ba RET49
nop


P104: !_REPLACEMENT [3] (Int)
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

P105: !_MEMBAR (FP) (Secondary ctx)

P106: !_BST [26] (maybe <- 0x3f800013) (FP) (Secondary ctx)
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

P107: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P108: !_ST [28] (maybe <- 0x3) (Int) (CBR) (Branch target of P44)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET108
nop
RET108:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P109
nop

TARGET44:
ba RET44
nop


P109: !_ST [24] (maybe <- 0x3f800015) (FP) (Branch target of P47)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]
ba P110
nop

TARGET47:
ba RET47
nop


P110: !_REPLACEMENT [33] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P111: !_REPLACEMENT [22] (Int)
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

P112: !_REPLACEMENT [8] (Int) (CBR)
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
be,pn  %xcc, TARGET112
nop
RET112:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P113: !_REPLACEMENT [23] (Int) (CBR)
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
be,pt  %xcc, TARGET113
nop
RET113:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P114: !_MEMBAR (FP)

P115: !_BST [27] (maybe <- 0x3f800016) (FP) (Branch target of P10)
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
ba P116
nop

TARGET10:
ba RET10
nop


P116: !_MEMBAR (FP)

P117: !_BSTC [33] (maybe <- 0x3f800018) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P118: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET118
nop
RET118:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P119: !_REPLACEMENT [6] (Int) (Branch target of P108)
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
ba P120
nop

TARGET108:
ba RET108
nop


P120: !_PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P121: !_REPLACEMENT [30] (Int)
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

P122: !_MEMBAR (FP) (Branch target of P74)
ba P123
nop

TARGET74:
ba RET74
nop


P123: !_BST [13] (maybe <- 0x3f800019) (FP) (Branch target of P218)
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
ba P124
nop

TARGET218:
ba RET218
nop


P124: !_MEMBAR (FP) (Branch target of P195)
membar #StoreLoad
ba P125
nop

TARGET195:
ba RET195
nop


P125: !_REPLACEMENT [32] (Int)
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

P126: !_ST [4] (maybe <- 0x4) (Int) (CBR)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET126
nop
RET126:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P127: !_REPLACEMENT [21] (Int) (Branch target of P132)
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
ba P128
nop

TARGET132:
ba RET132
nop


P128: !_FLUSH [8] (Int)
! Unsupported instruction

P129: !_REPLACEMENT [9] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P130: !_REPLACEMENT [32] (Int) (CBR) (Secondary ctx) (Branch target of P224)
wr %g0, 0x81, %asi
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
be,pn  %xcc, TARGET130
nop
RET130:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P131
nop

TARGET224:
ba RET224
nop


P131: !_REPLACEMENT [1] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P132: !_IDC_FLIP [31] (Int) (CBR) (Branch target of P135)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(132, 18284, 0, 0x46000040, 0x40, %i2, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET132
nop
RET132:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P133
nop

TARGET135:
ba RET135
nop


P133: !_REPLACEMENT [17] (Int)
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

P134: !_MEMBAR (FP)
membar #StoreLoad

P135: !_BLD [25] (FP) (CBR) (Branch target of P227)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET135
nop
RET135:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P136
nop

TARGET227:
ba RET227
nop


P136: !_MEMBAR (FP) (Branch target of P56)
ba P137
nop

TARGET56:
ba RET56
nop


P137: !_BSTC [30] (maybe <- 0x3f80001c) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P138: !_MEMBAR (FP)
membar #StoreLoad

P139: !_REPLACEMENT [20] (Int)
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

P140: !_MEMBAR (FP) (Secondary ctx)

P141: !_BSTC [18] (maybe <- 0x3f80001f) (FP) (Secondary ctx) (Branch target of P113)
wr %g0, 0xe1, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi
ba P142
nop

TARGET113:
ba RET113
nop


P142: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P208)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET142
nop
RET142:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P143
nop

TARGET208:
ba RET208
nop


P143: !_REPLACEMENT [21] (Int) (Secondary ctx)
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

P144: !_MEMBAR (FP)
membar #StoreLoad

P145: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
ldda [%i1 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4

P146: !_MEMBAR (FP)

P147: !_LD [30] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 32], %f5
! 1 addresses covered

P148: !_PREFETCH [17] (Int)
prefetch [%i3 + 96], 1

P149: !_REPLACEMENT [1] (Int) (Branch target of P42)
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
ba P150
nop

TARGET42:
ba RET42
nop


P150: !_MEMBAR (FP)

P151: !_BST [28] (maybe <- 0x3f800020) (FP) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET151
nop
RET151:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P152: !_MEMBAR (FP)
membar #StoreLoad

P153: !_PREFETCH [10] (Int) (LE)
wr %g0, 0x88, %asi
prefetcha [%i1 + 64] %asi, 1

P154: !_REPLACEMENT [12] (Int)
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

P155: !_REPLACEMENT [0] (Int)
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

P156: !_MEMBAR (FP)
membar #StoreLoad

P157: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P158: !_MEMBAR (FP)

P159: !_REPLACEMENT [4] (Int)
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

P160: !_REPLACEMENT [6] (Int)
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

P161: !_MEMBAR (FP)

P162: !_BST [31] (maybe <- 0x3f800023) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P163: !_MEMBAR (FP)
membar #StoreLoad

P164: !_REPLACEMENT [23] (Int) (CBR)
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
be,pn  %xcc, TARGET164
nop
RET164:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P165: !_REPLACEMENT [32] (Int)
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

P166: !_REPLACEMENT [2] (Int) (CBR)
sethi %hi(0x2000), %l3
ld [%i2+8], %l7
st %l7, [%i2+8]
add %i2, %l3, %l6
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


P167: !_REPLACEMENT [18] (Int)
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

P168: !_MEMBAR (FP) (Branch target of P184)
membar #StoreLoad
ba P169
nop

TARGET184:
ba RET184
nop


P169: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

P170: !_MEMBAR (FP)

P171: !_REPLACEMENT [0] (Int)
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

P172: !_REPLACEMENT [12] (Int)
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

P173: !_REPLACEMENT [16] (Int)
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

P174: !_REPLACEMENT [11] (Int) (Branch target of P95)
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
ba P175
nop

TARGET95:
ba RET95
nop


P175: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET175
nop
RET175:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P176: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
fmovs %f19, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P177: !_MEMBAR (FP)

P178: !_LD [27] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i2 + 160] %asi, %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P179: !_ST [24] (maybe <- 0x5) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P180: !_REPLACEMENT [17] (Int)
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

P181: !_REPLACEMENT [20] (Int) (Secondary ctx)
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

P182: !_REPLACEMENT [23] (Int)
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

P183: !_LD [23] (Int)
lduw [%i2 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P184: !_LD [24] (Int) (CBR)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET184
nop
RET184:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P185: !_IDC_FLIP [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(185, 14994, 0, 0x46000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P186: !_IDC_FLIP [10] (Int)
IDC_FLIP(186, 17438, 0, 0x43800040, 0x40, %i1, 0x40, %l6, %l7, %o5, %l3)

P187: !_REPLACEMENT [5] (Int) (Branch target of P142)
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
ba P188
nop

TARGET142:
ba RET142
nop


P188: !_REPLACEMENT [3] (Int) (Nucleus ctx) (Branch target of P191)
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
ba P189
nop

TARGET191:
ba RET191
nop


P189: !_REPLACEMENT [24] (Int) (Branch target of P166)
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
ba P190
nop

TARGET166:
ba RET166
nop


P190: !_REPLACEMENT [7] (Int) (Branch target of P20)
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
ba P191
nop

TARGET20:
ba RET20
nop


P191: !_REPLACEMENT [19] (Int) (CBR)
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
be,pn  %xcc, TARGET191
nop
RET191:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P192: !_LD [19] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f12
! 1 addresses covered

P193: !_REPLACEMENT [27] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l6
ld [%i2+160], %o5
st %o5, [%i2+160]
add %i2, %l6, %l7
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

P194: !_ST [33] (maybe <- 0x3f800025) (FP) (CBR)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET194
nop
RET194:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P195: !_REPLACEMENT [27] (Int) (CBR) (Branch target of P223)
sethi %hi(0x2000), %l3
ld [%i2+160], %l7
st %l7, [%i2+160]
add %i2, %l3, %l6
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET195
nop
RET195:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P196
nop

TARGET223:
ba RET223
nop


P196: !_REPLACEMENT [17] (Int)
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

P197: !_MEMBAR (FP)
membar #StoreLoad

P198: !_BLD [27] (FP) (Branch target of P2)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14
ba P199
nop

TARGET2:
ba RET2
nop


P199: !_MEMBAR (FP)

P200: !_IDC_FLIP [7] (Int)
IDC_FLIP(200, 18651, 0, 0x43000080, 0x80, %i0, 0x80, %l6, %l7, %o5, %l3)

P201: !_LD [12] (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET201
nop
RET201:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P202: !_REPLACEMENT [4] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P203: !_MEMBAR (FP) (Branch target of P130)
membar #StoreLoad
ba P204
nop

TARGET130:
ba RET130
nop


P204: !_BLD [2] (FP)
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

P205: !_MEMBAR (FP) (CBR) (Branch target of P206)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET205
nop
RET205:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P206
nop

TARGET206:
ba RET206
nop


P206: !_REPLACEMENT [5] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pt  %xcc, TARGET206
nop
RET206:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P207: !_REPLACEMENT [12] (Int) (Secondary ctx)
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

P208: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET208
nop
RET208:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P209: !_BST [3] (maybe <- 0x3f800026) (FP)
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

P210: !_MEMBAR (FP) (Branch target of P126)
membar #StoreLoad
ba P211
nop

TARGET126:
ba RET126
nop


P211: !_ST [2] (maybe <- 0x3f80002b) (FP) (Branch target of P45)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 8 ]
ba P212
nop

TARGET45:
ba RET45
nop


P212: !_REPLACEMENT [32] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P213: !_REPLACEMENT [2] (Int)
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

P214: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET214
nop
RET214:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P215: !_BSTC [1] (maybe <- 0x3f80002c) (FP)
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

P216: !_MEMBAR (FP) (Branch target of P226)
membar #StoreLoad
ba P217
nop

TARGET226:
ba RET226
nop


P217: !_REPLACEMENT [25] (Int)
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

P218: !_IDC_FLIP [34] (Int) (CBR) (Branch target of P214)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(218, 18501, 0, 0x46800040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET218
nop
RET218:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P219
nop

TARGET214:
ba RET214
nop


P219: !_ST [7] (maybe <- 0x3f800031) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 128 ]

P220: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET220
nop
RET220:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P221: !_BST [2] (maybe <- 0x3f800032) (FP)
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

P222: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET222
nop
RET222:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P223: !_IDC_FLIP [20] (Int) (CBR) (Branch target of P233)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(223, 7416, 0, 0x45000100, 0x100, %i2, 0x100, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET223
nop
RET223:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P224
nop

TARGET233:
ba RET233
nop


P224: !_REPLACEMENT [22] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET224
nop
RET224:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P225: !_IDC_FLIP [4] (Int) (Branch target of P222)
IDC_FLIP(225, 22947, 0, 0x43000020, 0x20, %i0, 0x20, %l6, %l7, %o5, %l3)
ba P226
nop

TARGET222:
ba RET222
nop


P226: !_REPLACEMENT [22] (Int) (CBR)
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
be,pt  %xcc, TARGET226
nop
RET226:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P227: !_REPLACEMENT [17] (Int) (CBR)
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
be,pn  %xcc, TARGET227
nop
RET227:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P228: !_ST [18] (maybe <- 0x3f800037) (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]

P229: !_FLUSH [30] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET229
nop
RET229:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P230: !_LD [25] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 96], %f4
! 1 addresses covered

P231: !_REPLACEMENT [16] (Int) (CBR) (Nucleus ctx) (Branch target of P71)
wr %g0, 0x4, %asi
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET231
nop
RET231:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P232
nop

TARGET71:
ba RET71
nop


P232: !_MEMBAR (FP)

P233: !_BST [31] (maybe <- 0x3f800038) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET233
nop
RET233:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P234: !_MEMBAR (FP) (Branch target of P46)
membar #StoreLoad
ba P235
nop

TARGET46:
ba RET46
nop


P235: !_LD [10] (Int) (Loop exit) (Branch target of P24)
lduw [%i1 + 64], %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_0_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_0
nop
ba P236
nop

TARGET24:
ba RET24
nop


P236: !_MEMBAR (Int) (Branch target of P201)
membar #StoreLoad
ba END_NODES0
nop

TARGET201:
ba RET201
nop


END_NODES0: ! Test instruction sequence for CPU 0 ends
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
sethi %hi(0x01deade1), %o5
or    %o5, %lo(0x01deade1), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x800001), %l4
or    %l4, %lo(0x800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x40000001), %o5
or    %o5, %lo(0x40000001), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x34800000), %o5
or    %o5, %lo(0x34800000), %o5
stw %o5, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x5c42^4
sethi %hi(0x5c42), %l0
or    %l0, %lo(0x5c42), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES1: ! Test instruction sequence for ISTREAM 1 begins

P237: !_REPLACEMENT [24] (Int) (Loop entry) (Nucleus ctx)
sethi %hi(0x4), %l2
or %l2, %lo(0x4),  %l2
loop_entry_1_0:
wr %g0, 0x4, %asi
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

P238: !_IDC_FLIP [33] (Int) (Branch target of P428)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(238, 31587, 1, 0x46800000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)
ba P239
nop

TARGET428:
ba RET428
nop


P239: !_REPLACEMENT [28] (Int) (Secondary ctx)
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

P240: !_REPLACEMENT [30] (Int)
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

P241: !_REPLACEMENT [21] (Int)
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

P242: !_REPLACEMENT [9] (Int) (Branch target of P407)
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
ba P243
nop

TARGET407:
ba RET407
nop


P243: !_REPLACEMENT [27] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l6
ld [%i2+160], %o5
st %o5, [%i2+160]
add %i2, %l6, %l7
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

P244: !_REPLACEMENT [17] (Int) (CBR)
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
be,pt  %xcc, TARGET244
nop
RET244:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P245: !_ST [10] (maybe <- 0x40000001) (FP) (Branch target of P553)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 64 ]
ba P246
nop

TARGET553:
ba RET553
nop


P246: !_ST [34] (maybe <- 0x40000002) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

P247: !_IDC_FLIP [22] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(247, 28663, 1, 0x45800004, 0x4, %i2, 0x4, %l6, %l7, %o5, %l3)

P248: !_REPLACEMENT [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P249: !_REPLACEMENT [26] (Int) (Secondary ctx)
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

P250: !_REPLACEMENT [17] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P251: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET251
nop
RET251:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P252: !_BLD [25] (FP) (CBR) (Branch target of P482)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f0
membar #Sync
! 2 addresses covered
fmovs %f8, %f1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET252
nop
RET252:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P253
nop

TARGET482:
ba RET482
nop


P253: !_MEMBAR (FP) (Loop exit)
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_0
nop

P254: !_PREFETCH [17] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_1:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 96], 1

P255: !_REPLACEMENT [22] (Int) (Branch target of P753)
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
ba P256
nop

TARGET753:
ba RET753
nop


P256: !_MEMBAR (FP)

P257: !_BSTC [27] (maybe <- 0x40000003) (FP)
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
stda %f32, [%i2 + 128 ] %asi

P258: !_MEMBAR (FP) (Branch target of P655)
membar #StoreLoad
ba P259
nop

TARGET655:
ba RET655
nop


P259: !_REPLACEMENT [18] (Int)
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

P260: !_REPLACEMENT [20] (Int)
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

P261: !_REPLACEMENT [5] (Int)
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

P262: !_REPLACEMENT [4] (Int) (Branch target of P302)
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
ba P263
nop

TARGET302:
ba RET302
nop


P263: !_FLUSH [8] (Int)
! Unsupported instruction

P264: !_FLUSHI [16] (Int) (Branch target of P726)
flush %g0 
ba P265
nop

TARGET726:
ba RET726
nop


P265: !_REPLACEMENT [32] (Int)
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

P266: !_REPLACEMENT [13] (Int)
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

P267: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET267
nop
RET267:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P268: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 5 addresses covered
fmovs %f4, %f3
fmovd %f8, %f4

P269: !_MEMBAR (FP)

P270: !_REPLACEMENT [29] (Int) (Branch target of P345)
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
ba P271
nop

TARGET345:
ba RET345
nop


P271: !_MEMBAR (FP)

P272: !_BST [18] (maybe <- 0x40000005) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P273: !_MEMBAR (FP) (Branch target of P746)
ba P274
nop

TARGET746:
ba RET746
nop


P274: !_BSTC [9] (maybe <- 0x40000006) (FP) (Secondary ctx)
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
stda %f32, [%i1 + 0 ] %asi

P275: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P276: !_REPLACEMENT [5] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
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
be,pn  %xcc, TARGET276
nop
RET276:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P277: !_REPLACEMENT [13] (Int) (CBR) (Nucleus ctx)
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
be,pn  %xcc, TARGET277
nop
RET277:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P278: !_MEMBAR (FP)

P279: !_BSTC [27] (maybe <- 0x40000008) (FP)
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
stda %f32, [%i3 + 128 ] %asi

P280: !_MEMBAR (FP)
membar #StoreLoad

P281: !_IDC_FLIP [8] (Int)
IDC_FLIP(281, 31955, 1, 0x43800000, 0x0, %i1, 0x0, %l6, %l7, %o5, %l3)

P282: !_REPLACEMENT [31] (Int)
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

P283: !_REPLACEMENT [1] (Int)
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

P284: !_ST [21] (maybe <- 0x4000000a) (FP) (Secondary ctx) (Branch target of P688)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 0 ] %asi
ba P285
nop

TARGET688:
ba RET688
nop


P285: !_LD [23] (FP)
ld [%i3 + 32], %f5
! 1 addresses covered

P286: !_REPLACEMENT [32] (Int)
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

P287: !_IDC_FLIP [4] (Int)
IDC_FLIP(287, 4179, 1, 0x43000020, 0x20, %i0, 0x20, %l6, %l7, %o5, %l3)

P288: !_REPLACEMENT [3] (Int) (Branch target of P372)
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
ba P289
nop

TARGET372:
ba RET372
nop


P289: !_MEMBAR (FP)
membar #StoreLoad

P290: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f6
fmovd %f34, %f8
fmovd %f36, %f18
fmovs %f18, %f9
fmovd %f40, %f10

P291: !_MEMBAR (FP) (CBR) (Branch target of P724)

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

ba P292
nop

TARGET724:
ba RET724
nop


P292: !_BST [18] (maybe <- 0x4000000b) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P293: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET293
nop
RET293:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P294: !_ST [29] (maybe <- 0x800001) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P295: !_IDC_FLIP [1] (Int)
IDC_FLIP(295, 15595, 1, 0x43000004, 0x4, %i0, 0x4, %l6, %l7, %o5, %l3)

P296: !_REPLACEMENT [18] (Int) (Nucleus ctx)
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

P297: !_FLUSH [10] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET297
nop
RET297:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P298: !_LD [21] (FP) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f11
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET298
nop
RET298:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P299: !_IDC_FLIP [9] (Int)
IDC_FLIP(299, 30552, 1, 0x43800020, 0x20, %i1, 0x20, %l6, %l7, %o5, %l3)

P300: !_REPLACEMENT [9] (Int)
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

P301: !_REPLACEMENT [14] (Int) (Nucleus ctx)
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

P302: !_REPLACEMENT [20] (Int) (CBR)
sethi %hi(0x2000), %o5
ld [%i2+256], %l6
st %l6, [%i2+256]
add %i2, %o5, %l3
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET302
nop
RET302:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P303: !_REPLACEMENT [31] (Int)
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

P304: !_REPLACEMENT [12] (Int) (CBR) (Branch target of P646)
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
be,pt  %xcc, TARGET304
nop
RET304:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P305
nop

TARGET646:
ba RET646
nop


P305: !_REPLACEMENT [1] (Int)
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

P306: !_REPLACEMENT [31] (Int) (CBR)
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
be,pn  %xcc, TARGET306
nop
RET306:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P307: !_ST [5] (maybe <- 0x4000000c) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET307
nop
RET307:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P308: !_MEMBAR (FP)
membar #StoreLoad

P309: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f12

P310: !_MEMBAR (FP)

P311: !_REPLACEMENT [2] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P312: !_IDC_FLIP [26] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(312, 1197, 1, 0x45800080, 0x80, %i2, 0x80, %l6, %l7, %o5, %l3)

P313: !_ST [6] (maybe <- 0x4000000d) (FP) (CBR) (Secondary ctx) (Branch target of P385)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 96 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET313
nop
RET313:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P314
nop

TARGET385:
ba RET385
nop


P314: !_REPLACEMENT [7] (Int)
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

P315: !_REPLACEMENT [7] (Int) (CBR) (Secondary ctx)
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
be,pn  %xcc, TARGET315
nop
RET315:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P316: !_LD [18] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 128], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET316
nop
RET316:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P317: !_REPLACEMENT [29] (Int)
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

P318: !_FLUSH [33] (Int)
! Unsupported instruction

P319: !_REPLACEMENT [18] (Int)
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

P320: !_REPLACEMENT [12] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P321: !_LD [6] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 96] %asi, %f13
! 1 addresses covered

P322: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET322
nop
RET322:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P323: !_BSTC [20] (maybe <- 0x4000000e) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P324: !_MEMBAR (FP) (Branch target of P657)
membar #StoreLoad
ba P325
nop

TARGET657:
ba RET657
nop


P325: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f14

P326: !_MEMBAR (FP)

P327: !_LD [24] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P328: !_MEMBAR (FP) (Branch target of P370)
ba P329
nop

TARGET370:
ba RET370
nop


P329: !_BST [5] (maybe <- 0x4000000f) (FP) (CBR)
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
be,pt  %xcc, TARGET329
nop
RET329:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P330: !_MEMBAR (FP) (Branch target of P387)
membar #StoreLoad
ba P331
nop

TARGET387:
ba RET387
nop


P331: !_REPLACEMENT [17] (Int)
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

P332: !_REPLACEMENT [22] (Int)
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

P333: !_REPLACEMENT [20] (Int) (CBR) (Branch target of P472)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET333
nop
RET333:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P334
nop

TARGET472:
ba RET472
nop


P334: !_REPLACEMENT [5] (Int)
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

P335: !_REPLACEMENT [22] (Int)
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

P336: !_REPLACEMENT [34] (Int)
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

P337: !_MEMBAR (FP)

P338: !_BSTC [16] (maybe <- 0x40000011) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P339: !_MEMBAR (FP)
membar #StoreLoad

P340: !_IDC_FLIP [19] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(340, 29546, 1, 0x45000000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)

P341: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P342: !_REPLACEMENT [11] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P343: !_IDC_FLIP [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(343, 21944, 1, 0x46000000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)

P344: !_MEMBAR (FP) (Branch target of P683)
membar #StoreLoad
ba P345
nop

TARGET683:
ba RET683
nop


P345: !_BLD [9] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f0
membar #Sync
! 2 addresses covered
fmovs %f8, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET345
nop
RET345:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P346: !_MEMBAR (FP)

P347: !_BLD [26] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P348: !_MEMBAR (FP)

P349: !_LD [21] (Int)
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P350: !_ST [25] (maybe <- 0x40000012) (FP) (Secondary ctx) (Branch target of P298)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 96 ] %asi
ba P351
nop

TARGET298:
ba RET298
nop


P351: !_MEMBAR (FP) (Secondary ctx) (Branch target of P676)
ba P352
nop

TARGET676:
ba RET676
nop


P352: !_BSTC [32] (maybe <- 0x40000013) (FP) (Secondary ctx)
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
stda %f32, [%i3 + 64 ] %asi

P353: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P354: !_REPLACEMENT [26] (Int) (CBR)
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
be,pn  %xcc, TARGET354
nop
RET354:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P355: !_MEMBAR (FP)

P356: !_BST [6] (maybe <- 0x40000015) (FP) (Branch target of P477)
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
ba P357
nop

TARGET477:
ba RET477
nop


P357: !_MEMBAR (FP) (Branch target of P530)
ba P358
nop

TARGET530:
ba RET530
nop


P358: !_BSTC [4] (maybe <- 0x40000017) (FP) (Secondary ctx)
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

P359: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P360: !_REPLACEMENT [22] (Int) (Branch target of P417)
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
ba P361
nop

TARGET417:
ba RET417
nop


P361: !_REPLACEMENT [5] (Int) (Nucleus ctx)
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

P362: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET362
nop
RET362:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P363: !_REPLACEMENT [5] (Int)
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

P364: !_REPLACEMENT [29] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET364
nop
RET364:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P365: !_REPLACEMENT [34] (Int)
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

P366: !_MEMBAR (FP)
membar #StoreLoad

P367: !_BLD [7] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET367
nop
RET367:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P368: !_MEMBAR (FP) (Branch target of P421)
ba P369
nop

TARGET421:
ba RET421
nop


P369: !_REPLACEMENT [3] (Int) (Nucleus ctx) (Branch target of P316)
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
ba P370
nop

TARGET316:
ba RET316
nop


P370: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET370
nop
RET370:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P371: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovd %f40, %f6

P372: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET372
nop
RET372:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P373: !_REPLACEMENT [34] (Int)
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

P374: !_MEMBAR (FP)

P375: !_BST [9] (maybe <- 0x4000001c) (FP)
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

P376: !_MEMBAR (FP)
membar #StoreLoad

P377: !_REPLACEMENT [10] (Int)
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

P378: !_REPLACEMENT [2] (Int)
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

P379: !_ST [30] (maybe <- 0x4000001e) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

P380: !_ST [33] (maybe <- 0x800002) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P381: !_FLUSH [19] (Int)
! Unsupported instruction

P382: !_REPLACEMENT [7] (Int)
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

P383: !_REPLACEMENT [1] (Int) (Branch target of P678)
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
ba P384
nop

TARGET678:
ba RET678
nop


P384: !_REPLACEMENT [24] (Int)
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

P385: !_MEMBAR (FP) (CBR) (Branch target of P593)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET385
nop
RET385:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P386
nop

TARGET593:
ba RET593
nop


P386: !_BLD [31] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET386
nop
RET386:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P387: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET387
nop
RET387:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P388: !_ST [7] (maybe <- 0x4000001f) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 128 ] %asi

P389: !_IDC_FLIP [29] (Int)
IDC_FLIP(389, 9024, 1, 0x46000004, 0x4, %i3, 0x4, %l6, %l7, %o5, %l3)

P390: !_REPLACEMENT [11] (Int) (Branch target of P701)
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
ba P391
nop

TARGET701:
ba RET701
nop


P391: !_REPLACEMENT [5] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P392: !_REPLACEMENT [16] (Int)
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

P393: !_REPLACEMENT [6] (Int) (Branch target of P611)
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
ba P394
nop

TARGET611:
ba RET611
nop


P394: !_IDC_FLIP [11] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(394, 5639, 1, 0x44000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P395: !_MEMBAR (Int)
membar #StoreLoad

P396: !_MEMBAR (Int)
membar #StoreLoad

P397: !_REPLACEMENT [0] (Int)
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

P398: !_REPLACEMENT [2] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P399: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET399
nop
RET399:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P400: !_BST [17] (maybe <- 0x40000020) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P401: !_MEMBAR (FP)
membar #StoreLoad

P402: !_FLUSH [18] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET402
nop
RET402:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P403: !_REPLACEMENT [24] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET403
nop
RET403:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P404: !_REPLACEMENT [11] (Int) (Secondary ctx)
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

P405: !_REPLACEMENT [3] (Int)
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

P406: !_REPLACEMENT [16] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET406
nop
RET406:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P407: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET407
nop
RET407:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P408: !_BLD [34] (FP) (Branch target of P252)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
ba P409
nop

TARGET252:
ba RET252
nop


P409: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET409
nop
RET409:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P410: !_REPLACEMENT [11] (Int)
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

P411: !_REPLACEMENT [11] (Int)
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

P412: !_PREFETCH [10] (Int)
prefetch [%i1 + 64], 1

P413: !_IDC_FLIP [32] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(413, 5205, 1, 0x46000060, 0x60, %i3, 0x60, %l6, %l7, %o5, %l3)

P414: !_LD [25] (FP) (Branch target of P583)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 96], %f10
! 1 addresses covered
ba P415
nop

TARGET583:
ba RET583
nop


P415: !_REPLACEMENT [25] (Int)
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

P416: !_IDC_FLIP [18] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(416, 13367, 1, 0x44800080, 0x80, %i2, 0x80, %l6, %l7, %o5, %l3)

P417: !_LD [4] (Int) (CBR)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET417
nop
RET417:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P418: !_REPLACEMENT [18] (Int) (Secondary ctx)
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

P419: !_REPLACEMENT [31] (Int)
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

P420: !_REPLACEMENT [31] (Int) (Secondary ctx) (Branch target of P406)
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
ba P421
nop

TARGET406:
ba RET406
nop


P421: !_ST [34] (maybe <- 0x40000021) (FP) (CBR) (Secondary ctx) (Branch target of P573)
wr %g0, 0x81, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET421
nop
RET421:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P422
nop

TARGET573:
ba RET573
nop


P422: !_MEMBAR (FP)

P423: !_BST [16] (maybe <- 0x40000022) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P424: !_MEMBAR (FP)
membar #StoreLoad

P425: !_BLD [2] (FP)
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

P426: !_MEMBAR (FP) (Branch target of P512)
ba P427
nop

TARGET512:
ba RET512
nop


P427: !_REPLACEMENT [4] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P428: !_MEMBAR (FP) (CBR)
membar #StoreLoad

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


P429: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 5 addresses covered
fmovs %f4, %f3
fmovd %f8, %f4

P430: !_MEMBAR (FP)

P431: !_REPLACEMENT [18] (Int)
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

P432: !_MEMBAR (FP)

P433: !_BSTC [14] (maybe <- 0x40000023) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P434: !_MEMBAR (FP)
membar #StoreLoad

P435: !_REPLACEMENT [10] (Int) (Secondary ctx)
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

P436: !_REPLACEMENT [2] (Int)
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

P437: !_PREFETCH [22] (Int) (LE) (Secondary ctx)
wr %g0, 0x89, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 1

P438: !_REPLACEMENT [19] (Int)
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

P439: !_IDC_FLIP [17] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(439, 12518, 1, 0x44800060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)

P440: !_REPLACEMENT [26] (Int) (Nucleus ctx)
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

P441: !_LD [4] (Int) (Loop exit) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i0 + 32] %asi, %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_1_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_1
nop

P442: !_REPLACEMENT [8] (Int) (Loop entry)
sethi %hi(0x3), %l2
or %l2, %lo(0x3),  %l2
loop_entry_1_2:
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

P443: !_REPLACEMENT [21] (Int)
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

P444: !_REPLACEMENT [11] (Int) (Branch target of P354)
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
ba P445
nop

TARGET354:
ba RET354
nop


P445: !_ST [14] (maybe <- 0x40000024) (FP) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET445
nop
RET445:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P446: !_REPLACEMENT [10] (Int)
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

P447: !_MEMBAR (FP) (Branch target of P307)
ba P448
nop

TARGET307:
ba RET307
nop


P448: !_BSTC [18] (maybe <- 0x40000025) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P449: !_MEMBAR (FP)
membar #StoreLoad

P450: !_PREFETCH [12] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
prefetcha [%i2 + 4] %asi, 1

P451: !_REPLACEMENT [6] (Int)
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

P452: !_REPLACEMENT [10] (Int) (Branch target of P333)
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
ba P453
nop

TARGET333:
ba RET333
nop


P453: !_IDC_FLIP [21] (Int) (Branch target of P581)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(453, 24141, 1, 0x45800000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)
ba P454
nop

TARGET581:
ba RET581
nop


P454: !_REPLACEMENT [27] (Int)
sethi %hi(0x2000), %l6
ld [%i2+160], %o5
st %o5, [%i2+160]
add %i2, %l6, %l7
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

P455: !_MEMBAR (FP) (Branch target of P625)
ba P456
nop

TARGET625:
ba RET625
nop


P456: !_BST [3] (maybe <- 0x40000026) (FP)
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

P457: !_MEMBAR (FP) (CBR) (Branch target of P362)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET457
nop
RET457:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P458
nop

TARGET362:
ba RET362
nop


P458: !_REPLACEMENT [2] (Int) (Branch target of P517)
sethi %hi(0x2000), %l3
ld [%i2+8], %l7
st %l7, [%i2+8]
add %i2, %l3, %l6
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
ba P459
nop

TARGET517:
ba RET517
nop


P459: !_IDC_FLIP [8] (Int)
IDC_FLIP(459, 14904, 1, 0x43800000, 0x0, %i1, 0x0, %l6, %l7, %o5, %l3)

P460: !_REPLACEMENT [14] (Int) (Branch target of P491)
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
ba P461
nop

TARGET491:
ba RET491
nop


P461: !_IDC_FLIP [6] (Int)
IDC_FLIP(461, 25079, 1, 0x43000060, 0x60, %i0, 0x60, %l6, %l7, %o5, %l3)

P462: !_REPLACEMENT [31] (Int) (Branch target of P313)
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
ba P463
nop

TARGET313:
ba RET313
nop


P463: !_REPLACEMENT [7] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P464: !_MEMBAR (FP)
membar #StoreLoad

P465: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P466: !_MEMBAR (FP)

P467: !_REPLACEMENT [29] (Int) (Branch target of P480)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
ba P468
nop

TARGET480:
ba RET480
nop


P468: !_REPLACEMENT [2] (Int)
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

P469: !_REPLACEMENT [14] (Int)
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

P470: !_REPLACEMENT [25] (Int)
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

P471: !_ST [20] (maybe <- 0x4000002b) (FP) (Branch target of P578)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 256 ]
ba P472
nop

TARGET578:
ba RET578
nop


P472: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET472
nop
RET472:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P473: !_BLD [9] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET473
nop
RET473:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P474: !_MEMBAR (FP)

P475: !_ST [31] (maybe <- 0x4000002c) (FP) (Nucleus ctx) (Branch target of P291)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 64 ] %asi
ba P476
nop

TARGET291:
ba RET291
nop


P476: !_PREFETCH [5] (Int)
prefetch [%i0 + 64], 1

P477: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET477
nop
RET477:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P478: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P479: !_MEMBAR (FP)

P480: !_PREFETCH [17] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 96], 1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET480
nop
RET480:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P481: !_REPLACEMENT [33] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P482: !_REPLACEMENT [1] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET482
nop
RET482:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P483: !_REPLACEMENT [7] (Int)
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

P484: !_ST [23] (maybe <- 0x800003) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 32 ]
add   %l4, 1, %l4

P485: !_ST [27] (maybe <- 0x4000002d) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 160 ] %asi

P486: !_MEMBAR (FP)
membar #StoreLoad

P487: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f36, %f8

P488: !_MEMBAR (FP)

P489: !_LD [19] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f9
! 1 addresses covered

P490: !_MEMBAR (FP)

P491: !_BST [19] (maybe <- 0x4000002e) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET491
nop
RET491:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P492: !_MEMBAR (FP)
membar #StoreLoad

P493: !_PREFETCH [7] (Int)
prefetch [%i0 + 128], 1

P494: !_LD [21] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f10
! 1 addresses covered

P495: !_REPLACEMENT [27] (Int) (Branch target of P293)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+160], %l3
st %l3, [%i3+160]
add %i3, %l7, %o5
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
ba P496
nop

TARGET293:
ba RET293
nop


P496: !_ST [21] (maybe <- 0x4000002f) (FP) (Branch target of P402)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]
ba P497
nop

TARGET402:
ba RET402
nop


P497: !_REPLACEMENT [23] (Int)
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

P498: !_IDC_FLIP [7] (Int)
IDC_FLIP(498, 18364, 1, 0x43000080, 0x80, %i0, 0x80, %l6, %l7, %o5, %l3)

P499: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET499
nop
RET499:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P500: !_BSTC [9] (maybe <- 0x40000030) (FP)
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

P501: !_MEMBAR (FP) (Branch target of P513)
membar #StoreLoad
ba P502
nop

TARGET513:
ba RET513
nop


P502: !_REPLACEMENT [30] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P503: !_FLUSHI [14] (Int)
flush %g0 

P504: !_REPLACEMENT [18] (Int) (Branch target of P329)
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
ba P505
nop

TARGET329:
ba RET329
nop


P505: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET505
nop
RET505:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P506: !_BLD [18] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11

P507: !_MEMBAR (FP) (Secondary ctx)

P508: !_BSTC [5] (maybe <- 0x40000032) (FP)
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

P509: !_MEMBAR (FP) (Branch target of P244)
membar #StoreLoad
ba P510
nop

TARGET244:
ba RET244
nop


P510: !_REPLACEMENT [29] (Int)
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

P511: !_MEMBAR (FP)

P512: !_BSTC [32] (maybe <- 0x40000034) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET512
nop
RET512:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P513: !_MEMBAR (FP) (CBR) (Branch target of P627)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET513
nop
RET513:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P514
nop

TARGET627:
ba RET627
nop


P514: !_REPLACEMENT [33] (Int)
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

P515: !_IDC_FLIP [30] (Int)
IDC_FLIP(515, 24814, 1, 0x46000020, 0x20, %i3, 0x20, %l6, %l7, %o5, %l3)

P516: !_REPLACEMENT [8] (Int)
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

P517: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET517
nop
RET517:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P518: !_BST [12] (maybe <- 0x40000036) (FP)
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

P519: !_MEMBAR (FP)

P520: !_BST [13] (maybe <- 0x40000039) (FP)
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

P521: !_MEMBAR (FP)
membar #StoreLoad

P522: !_ST [19] (maybe <- 0x800004) (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET522
nop
RET522:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P523: !_REPLACEMENT [21] (Int) (Secondary ctx) (Branch target of P399)
wr %g0, 0x81, %asi
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
ba P524
nop

TARGET399:
ba RET399
nop


P524: !_IDC_FLIP [8] (Int)
IDC_FLIP(524, 28918, 1, 0x43800000, 0x0, %i1, 0x0, %l6, %l7, %o5, %l3)

P525: !_REPLACEMENT [23] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET525
nop
RET525:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P526: !_REPLACEMENT [22] (Int)
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

P527: !_REPLACEMENT [34] (Int)
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

P528: !_LD [15] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 128], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P529: !_REPLACEMENT [14] (Int)
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

P530: !_REPLACEMENT [14] (Int) (CBR)
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
be,pt  %xcc, TARGET530
nop
RET530:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P531: !_REPLACEMENT [29] (Int)
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

P532: !_ST [23] (maybe <- 0x4000003c) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 32 ] %asi

P533: !_REPLACEMENT [8] (Int) (Secondary ctx)
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

P534: !_MEMBAR (FP)
membar #StoreLoad

P535: !_BLD [5] (FP) (Branch target of P633)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f12
fmovd %f40, %f18
fmovs %f18, %f13
ba P536
nop

TARGET633:
ba RET633
nop


P536: !_MEMBAR (FP)

P537: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P538: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET538
nop
RET538:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P539: !_BLD [16] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f36, %f18
fmovs %f18, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET539
nop
RET539:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P540: !_MEMBAR (FP) (Branch target of P306)
ba P541
nop

TARGET306:
ba RET306
nop


P541: !_REPLACEMENT [19] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P542: !_MEMBAR (FP)
membar #StoreLoad

P543: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f2
fmovd %f40, %f4

P544: !_MEMBAR (FP)

P545: !_REPLACEMENT [31] (Int)
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

P546: !_REPLACEMENT [15] (Int)
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

P547: !_REPLACEMENT [28] (Int)
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

P548: !_REPLACEMENT [8] (Int)
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

P549: !_MEMBAR (FP)

P550: !_BST [28] (maybe <- 0x4000003d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P551: !_MEMBAR (FP)
membar #StoreLoad

P552: !_ST [18] (maybe <- 0x800005) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4

P553: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P403)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET553
nop
RET553:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P554
nop

TARGET403:
ba RET403
nop


P554: !_BSTC [5] (maybe <- 0x40000040) (FP) (Secondary ctx)
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

P555: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P556: !_REPLACEMENT [7] (Int)
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

P557: !_REPLACEMENT [34] (Int)
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

P558: !_REPLACEMENT [3] (Int) (Nucleus ctx)
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

P559: !_REPLACEMENT [24] (Int)
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

P560: !_MEMBAR (FP)

P561: !_BST [7] (maybe <- 0x40000042) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P562: !_MEMBAR (FP)
membar #StoreLoad

P563: !_REPLACEMENT [23] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P564: !_REPLACEMENT [29] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P565: !_LD [13] (FP) (Branch target of P473)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 32], %f5
! 1 addresses covered
ba P566
nop

TARGET473:
ba RET473
nop


P566: !_REPLACEMENT [20] (Int) (Branch target of P525)
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
ba P567
nop

TARGET525:
ba RET525
nop


P567: !_ST [4] (maybe <- 0x800006) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 32] %asi
add   %l4, 1, %l4

P568: !_REPLACEMENT [20] (Int)
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

P569: !_REPLACEMENT [9] (Int)
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

P570: !_REPLACEMENT [25] (Int) (Secondary ctx)
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

P571: !_LD [3] (Int) (Secondary ctx) (Branch target of P654)
wr %g0, 0x81, %asi
lduwa [%i0 + 16] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
ba P572
nop

TARGET654:
ba RET654
nop


P572: !_MEMBAR (FP)

P573: !_BST [28] (maybe <- 0x40000043) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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
be,pn  %xcc, TARGET573
nop
RET573:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P574: !_MEMBAR (FP)
membar #StoreLoad

P575: !_REPLACEMENT [14] (Int)
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

P576: !_MEMBAR (FP) (Branch target of P277)
ba P577
nop

TARGET277:
ba RET277
nop


P577: !_BSTC [28] (maybe <- 0x40000046) (FP)
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

P578: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET578
nop
RET578:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P579: !_IDC_FLIP [7] (Int)
IDC_FLIP(579, 23417, 1, 0x43000080, 0x80, %i0, 0x80, %l6, %l7, %o5, %l3)

P580: !_REPLACEMENT [13] (Int)
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

P581: !_REPLACEMENT [14] (Int) (CBR)
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
be,pn  %xcc, TARGET581
nop
RET581:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P582: !_MEMBAR (FP)
membar #StoreLoad

P583: !_BLD [20] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET583
nop
RET583:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P584: !_MEMBAR (FP)

P585: !_ST [14] (maybe <- 0x40000049) (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

P586: !_MEMBAR (FP)

P587: !_BST [31] (maybe <- 0x4000004a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P588: !_MEMBAR (FP)
membar #StoreLoad

P589: !_REPLACEMENT [12] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET589
nop
RET589:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P590: !_ST [1] (maybe <- 0x800007) (Int) (Branch target of P304)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4
ba P591
nop

TARGET304:
ba RET304
nop


P591: !_REPLACEMENT [5] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET591
nop
RET591:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P592: !_MEMBAR (FP)

P593: !_BSTC [0] (maybe <- 0x4000004c) (FP) (CBR)
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
be,pn  %xcc, TARGET593
nop
RET593:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P594: !_MEMBAR (FP)
membar #StoreLoad

P595: !_REPLACEMENT [19] (Int)
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

P596: !_ST [0] (maybe <- 0x40000051) (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 0 ] %asi

P597: !_IDC_FLIP [19] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(597, 9027, 1, 0x45000000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)

P598: !_MEMBAR (FP)

P599: !_BSTC [15] (maybe <- 0x40000052) (FP) (Branch target of P675)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi
ba P600
nop

TARGET675:
ba RET675
nop


P600: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET600
nop
RET600:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P601: !_REPLACEMENT [18] (Int) (Secondary ctx)
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

P602: !_REPLACEMENT [4] (Int)
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

P603: !_ST [11] (maybe <- 0x800008) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P604: !_REPLACEMENT [8] (Int)
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

P605: !_REPLACEMENT [6] (Int)
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

P606: !_IDC_FLIP [16] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(606, 3504, 1, 0x44800010, 0x10, %i2, 0x10, %l6, %l7, %o5, %l3)

P607: !_REPLACEMENT [1] (Int) (Branch target of P386)
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
ba P608
nop

TARGET386:
ba RET386
nop


P608: !_REPLACEMENT [30] (Int) (CBR)
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
be,pt  %xcc, TARGET608
nop
RET608:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P609: !_REPLACEMENT [25] (Int)
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

P610: !_PREFETCH [19] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 1

P611: !_REPLACEMENT [13] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET611
nop
RET611:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P612: !_IDC_FLIP [7] (Int)
IDC_FLIP(612, 9494, 1, 0x43000080, 0x80, %i0, 0x80, %l6, %l7, %o5, %l3)

P613: !_REPLACEMENT [16] (Int)
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

P614: !_LD [7] (Int)
lduw [%i0 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P615: !_REPLACEMENT [19] (Int)
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

P616: !_REPLACEMENT [29] (Int) (CBR)
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
be,pn  %xcc, TARGET616
nop
RET616:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P617: !_REPLACEMENT [19] (Int) (Secondary ctx) (Branch target of P623)
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
ba P618
nop

TARGET623:
ba RET623
nop


P618: !_REPLACEMENT [28] (Int) (Branch target of P600)
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
ba P619
nop

TARGET600:
ba RET600
nop


P619: !_REPLACEMENT [7] (Int) (Branch target of P364)
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
ba P620
nop

TARGET364:
ba RET364
nop


P620: !_MEMBAR (FP) (Secondary ctx)

P621: !_BST [3] (maybe <- 0x40000053) (FP) (Secondary ctx)
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

P622: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P623: !_BLD [5] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET623
nop
RET623:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P624: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET624
nop
RET624:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P625: !_REPLACEMENT [31] (Int) (CBR)
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
be,pt  %xcc, TARGET625
nop
RET625:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P626: !_REPLACEMENT [2] (Int)
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

P627: !_REPLACEMENT [7] (Int) (CBR) (Branch target of P624)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET627
nop
RET627:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P628
nop

TARGET624:
ba RET624
nop


P628: !_REPLACEMENT [15] (Int)
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

P629: !_ST [17] (maybe <- 0x800009) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 96 ]
add   %l4, 1, %l4

P630: !_LD [11] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 0] %asi, %f9
! 1 addresses covered

P631: !_MEMBAR (FP)

P632: !_BST [32] (maybe <- 0x40000058) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P633: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET633
nop
RET633:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P634: !_BSTC [30] (maybe <- 0x4000005a) (FP)
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

P635: !_MEMBAR (FP)

P636: !_BSTC [5] (maybe <- 0x4000005d) (FP)
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

P637: !_MEMBAR (FP)
membar #StoreLoad

P638: !_REPLACEMENT [15] (Int) (Branch target of P693)
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
ba P639
nop

TARGET693:
ba RET693
nop


P639: !_ST [27] (maybe <- 0x4000005f) (FP) (Branch target of P608)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 160 ]
ba P640
nop

TARGET608:
ba RET608
nop


P640: !_ST [13] (maybe <- 0x80000a) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P641: !_MEMBAR (FP) (Branch target of P276)
ba P642
nop

TARGET276:
ba RET276
nop


P642: !_BST [2] (maybe <- 0x40000060) (FP)
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

P643: !_MEMBAR (FP)
membar #StoreLoad

P644: !_REPLACEMENT [4] (Int) (Secondary ctx) (Branch target of P505)
wr %g0, 0x81, %asi
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
ba P645
nop

TARGET505:
ba RET505
nop


P645: !_REPLACEMENT [10] (Int) (Branch target of P367)
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
ba P646
nop

TARGET367:
ba RET367
nop


P646: !_REPLACEMENT [15] (Int) (CBR)
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
be,pt  %xcc, TARGET646
nop
RET646:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P647: !_REPLACEMENT [17] (Int) (Branch target of P297)
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
ba P648
nop

TARGET297:
ba RET297
nop


P648: !_REPLACEMENT [13] (Int)
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

P649: !_FLUSH [8] (Int)
! Unsupported instruction

P650: !_LD [28] (Int) (Loop exit) (CBR) (Secondary ctx) (Branch target of P538)
wr %g0, 0x81, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET650
nop
RET650:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
!--
loop_exit_1_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_2
nop
ba P651
nop

TARGET538:
ba RET538
nop


P651: !_REPLACEMENT [17] (Int) (Loop entry) (Secondary ctx)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_3:
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P652: !_ST [31] (maybe <- 0x80000b) (Int) (Branch target of P616)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4
ba P653
nop

TARGET616:
ba RET616
nop


P653: !_LD [25] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 96], %f0
! 1 addresses covered

P654: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET654
nop
RET654:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P655: !_BST [12] (maybe <- 0x40000065) (FP) (CBR)
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
be,pn  %xcc, TARGET655
nop
RET655:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P656: !_MEMBAR (FP)
membar #StoreLoad

P657: !_REPLACEMENT [4] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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
be,pn  %xcc, TARGET657
nop
RET657:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P658: !_PREFETCH [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 1

P659: !_REPLACEMENT [19] (Int) (Branch target of P322)
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
ba P660
nop

TARGET322:
ba RET322
nop


P660: !_LD [30] (FP)
ld [%i2 + 32], %f1
! 1 addresses covered

P661: !_MEMBAR (FP)

P662: !_BSTC [26] (maybe <- 0x40000068) (FP)
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
stda %f32, [%i3 + 128 ] %asi

P663: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET663
nop
RET663:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P664: !_REPLACEMENT [1] (Int)
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

P665: !_REPLACEMENT [2] (Int) (Nucleus ctx) (Branch target of P700)
wr %g0, 0x4, %asi
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
ba P666
nop

TARGET700:
ba RET700
nop


P666: !_REPLACEMENT [6] (Int)
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

P667: !_IDC_FLIP [25] (Int)
IDC_FLIP(667, 13419, 1, 0x45800060, 0x60, %i3, 0x60, %l6, %l7, %o5, %l3)

P668: !_REPLACEMENT [31] (Int) (Secondary ctx)
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

P669: !_REPLACEMENT [1] (Int) (Branch target of P738)
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
ba P670
nop

TARGET738:
ba RET738
nop


P670: !_LD [17] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 96], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P671: !_MEMBAR (FP) (Branch target of P539)
ba P672
nop

TARGET539:
ba RET539
nop


P672: !_BSTC [10] (maybe <- 0x4000006a) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P673: !_MEMBAR (FP) (Branch target of P409)
membar #StoreLoad
ba P674
nop

TARGET409:
ba RET409
nop


P674: !_REPLACEMENT [21] (Int)
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

P675: !_REPLACEMENT [2] (Int) (CBR)
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
be,pt  %xcc, TARGET675
nop
RET675:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P676: !_REPLACEMENT [3] (Int) (CBR) (Branch target of P736)
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
be,pt  %xcc, TARGET676
nop
RET676:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P677
nop

TARGET736:
ba RET736
nop


P677: !_PREFETCH [3] (Int)
prefetch [%i0 + 16], 1

P678: !_REPLACEMENT [31] (Int) (CBR) (Branch target of P722)
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
be,pn  %xcc, TARGET678
nop
RET678:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P679
nop

TARGET722:
ba RET722
nop


P679: !_IDC_FLIP [11] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(679, 24347, 1, 0x44000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P680: !_REPLACEMENT [4] (Int)
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

P681: !_MEMBAR (FP) (Secondary ctx) (Branch target of P694)
ba P682
nop

TARGET694:
ba RET694
nop


P682: !_BST [20] (maybe <- 0x4000006b) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P683: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET683
nop
RET683:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P684: !_BSTC [10] (maybe <- 0x4000006c) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P685: !_MEMBAR (FP)
membar #StoreLoad

P686: !_REPLACEMENT [28] (Int)
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

P687: !_REPLACEMENT [11] (Int)
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

P688: !_REPLACEMENT [23] (Int) (CBR) (Branch target of P499)
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
be,pt  %xcc, TARGET688
nop
RET688:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P689
nop

TARGET499:
ba RET499
nop


P689: !_REPLACEMENT [16] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P690: !_IDC_FLIP [8] (Int) (CBR)
IDC_FLIP(690, 14332, 1, 0x43800000, 0x0, %i1, 0x0, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET690
nop
RET690:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P691: !_REPLACEMENT [1] (Int) (Branch target of P690)
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
ba P692
nop

TARGET690:
ba RET690
nop


P692: !_REPLACEMENT [16] (Int)
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

P693: !_PREFETCH [17] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 96], 1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET693
nop
RET693:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P694: !_REPLACEMENT [20] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET694
nop
RET694:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P695: !_MEMBAR (FP) (Branch target of P445)
ba P696
nop

TARGET445:
ba RET445
nop


P696: !_BSTC [19] (maybe <- 0x4000006d) (FP) (CBR)
wr %g0, 0xe0, %asi
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
be,pt  %xcc, TARGET696
nop
RET696:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P697: !_MEMBAR (FP)
membar #StoreLoad

P698: !_REPLACEMENT [18] (Int)
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

P699: !_MEMBAR (FP)
membar #StoreLoad

P700: !_BLD [34] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET700
nop
RET700:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P701: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET701
nop
RET701:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P702: !_BSTC [5] (maybe <- 0x4000006e) (FP) (CBR) (Branch target of P522)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET702
nop
RET702:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P703
nop

TARGET522:
ba RET522
nop


P703: !_MEMBAR (FP)
membar #StoreLoad

P704: !_REPLACEMENT [0] (Int) (Branch target of P251)
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
ba P705
nop

TARGET251:
ba RET251
nop


P705: !_REPLACEMENT [26] (Int)
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

P706: !_MEMBAR (FP)

P707: !_BSTC [23] (maybe <- 0x40000070) (FP)
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

P708: !_MEMBAR (FP)
membar #StoreLoad

P709: !_IDC_FLIP [5] (Int)
IDC_FLIP(709, 12761, 1, 0x43000040, 0x40, %i0, 0x40, %l6, %l7, %o5, %l3)

P710: !_REPLACEMENT [12] (Int)
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

P711: !_REPLACEMENT [29] (Int) (Branch target of P267)
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
ba P712
nop

TARGET267:
ba RET267
nop


P712: !_ST [31] (maybe <- 0x80000c) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P713: !_REPLACEMENT [25] (Int)
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

P714: !_ST [6] (maybe <- 0x80000d) (Int)
stw   %l4, [%i0 + 96 ]
add   %l4, 1, %l4

P715: !_MEMBAR (FP)
membar #StoreLoad

P716: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4

P717: !_MEMBAR (FP)

P718: !_ST [7] (maybe <- 0x80000e) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 128] %asi
add   %l4, 1, %l4

P719: !_REPLACEMENT [20] (Int)
sethi %hi(0x2000), %o5
ld [%i2+256], %l6
st %l6, [%i2+256]
add %i2, %o5, %l3
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

P720: !_REPLACEMENT [19] (Int)
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

P721: !_REPLACEMENT [16] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P722: !_LD [9] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i1 + 32] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET722
nop
RET722:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P723: !_IDC_FLIP [16] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(723, 3491, 1, 0x44800010, 0x10, %i2, 0x10, %l6, %l7, %o5, %l3)

P724: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET724
nop
RET724:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P725: !_BSTC [31] (maybe <- 0x40000073) (FP) (Branch target of P589)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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
ba P726
nop

TARGET589:
ba RET589
nop


P726: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET726
nop
RET726:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P727: !_REPLACEMENT [8] (Int)
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

P728: !_REPLACEMENT [27] (Int)
sethi %hi(0x2000), %l6
ld [%i2+160], %o5
st %o5, [%i2+160]
add %i2, %l6, %l7
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

P729: !_MEMBAR (FP)
membar #StoreLoad

P730: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5
fmovd %f40, %f6

P731: !_MEMBAR (FP)

P732: !_FLUSHI [1] (Int) (Branch target of P650)
flush %g0 
ba P733
nop

TARGET650:
ba RET650
nop


P733: !_ST [25] (maybe <- 0x80000f) (Int)
stw   %l4, [%i3 + 96 ]
add   %l4, 1, %l4

P734: !_ST [13] (maybe <- 0x800010) (Int) (Nucleus ctx) (Branch target of P457)
wr %g0, 0x4, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 32] %asi
add   %l4, 1, %l4
ba P735
nop

TARGET457:
ba RET457
nop


P735: !_MEMBAR (FP)

P736: !_BST [13] (maybe <- 0x40000075) (FP) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET736
nop
RET736:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P737: !_MEMBAR (FP)

P738: !_BSTC [15] (maybe <- 0x40000078) (FP) (CBR) (Branch target of P591)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET738
nop
RET738:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P739
nop

TARGET591:
ba RET591
nop


P739: !_MEMBAR (FP)
membar #StoreLoad

P740: !_FLUSHI [33] (Int)
flush %g0 

P741: !_REPLACEMENT [31] (Int)
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

P742: !_ST [1] (maybe <- 0x40000079) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P743: !_REPLACEMENT [2] (Int)
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

P744: !_REPLACEMENT [29] (Int)
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

P745: !_LD [20] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 256] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P746: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET746
nop
RET746:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P747: !_BLD [4] (FP)
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

P748: !_MEMBAR (FP)

P749: !_MEMBAR (Int)

P750: !_BSTC [22] (maybe <- 0x4000007a) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
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

P751: !_MEMBAR (FP) (Secondary ctx)

P752: !_BST [30] (maybe <- 0x4000007d) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P753: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET753
nop
RET753:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P754: !_REPLACEMENT [32] (Int)
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

P755: !_REPLACEMENT [25] (Int)
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

P756: !_LD [27] (Int) (Branch target of P663)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 160], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
ba P757
nop

TARGET663:
ba RET663
nop


P757: !_REPLACEMENT [2] (Int) (Branch target of P702)
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
ba P758
nop

TARGET702:
ba RET702
nop


P758: !_IDC_FLIP [12] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(758, 21380, 1, 0x44000004, 0x4, %i3, 0x4, %l6, %l7, %o5, %l3)

P759: !_REPLACEMENT [26] (Int) (Branch target of P315)
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
ba P760
nop

TARGET315:
ba RET315
nop


P760: !_FLUSH [6] (Int) (Branch target of P696)
! Unsupported instruction
ba P761
nop

TARGET696:
ba RET696
nop


P761: !_REPLACEMENT [24] (Int)
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

P762: !_REPLACEMENT [12] (Int)
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

P763: !_ST [7] (maybe <- 0x800011) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 128] %asi
add   %l4, 1, %l4

P764: !_REPLACEMENT [10] (Int)
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

P765: !_MEMBAR (FP)

P766: !_BST [22] (maybe <- 0x40000080) (FP)
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

P767: !_MEMBAR (FP) (Loop exit)
membar #StoreLoad
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
!--
loop_exit_1_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_3
nop

P768: !_MEMBAR (Int)
membar #StoreLoad

END_NODES1: ! Test instruction sequence for CPU 1 ends
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
sethi %hi(0x02deade1), %o5
or    %o5, %lo(0x02deade1), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1000001), %l4
or    %l4, %lo(0x1000001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x40800001), %o5
or    %o5, %lo(0x40800001), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x35000000), %o5
or    %o5, %lo(0x35000000), %o5
stw %o5, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0xe34^4
sethi %hi(0xe34), %l0
or    %l0, %lo(0xe34), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES2: ! Test instruction sequence for ISTREAM 2 begins

P769: !_REPLACEMENT [5] (Int) (Loop entry) (Branch target of P1064)
sethi %hi(0x5), %l2
or %l2, %lo(0x5),  %l2
loop_entry_2_0:
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
ba P770
nop

TARGET1064:
ba RET1064
nop


P770: !_REPLACEMENT [34] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P771: !_MEMBAR (FP)
membar #StoreLoad

P772: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 5 addresses covered
fmovs %f4, %f3
fmovd %f8, %f4

P773: !_MEMBAR (FP) (Branch target of P997)
ba P774
nop

TARGET997:
ba RET997
nop


P774: !_REPLACEMENT [8] (Int) (CBR) (Secondary ctx)
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
be,pn  %xcc, TARGET774
nop
RET774:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P775: !_REPLACEMENT [17] (Int)
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

P776: !_MEMBAR (FP)
membar #StoreLoad

P777: !_BLD [3] (FP)
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

P778: !_MEMBAR (FP)

P779: !_REPLACEMENT [6] (Int) (CBR) (Secondary ctx)
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
be,pt  %xcc, TARGET779
nop
RET779:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P780: !_REPLACEMENT [25] (Int)
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

P781: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET781
nop
RET781:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P782: !_BLD [7] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f10

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET782
nop
RET782:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P783: !_MEMBAR (FP)

P784: !_REPLACEMENT [24] (Int)
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

P785: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET785
nop
RET785:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P786: !_BLD [34] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11

P787: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET787
nop
RET787:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P788: !_REPLACEMENT [11] (Int)
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

P789: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET789
nop
RET789:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P790: !_BST [8] (maybe <- 0x40800001) (FP) (Branch target of P894)
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
ba P791
nop

TARGET894:
ba RET894
nop


P791: !_MEMBAR (FP)

P792: !_BSTC [28] (maybe <- 0x40800003) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P793: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET793
nop
RET793:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P794: !_REPLACEMENT [12] (Int) (Branch target of P946)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
ba P795
nop

TARGET946:
ba RET946
nop


P795: !_REPLACEMENT [20] (Int)
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

P796: !_IDC_FLIP [5] (Int)
IDC_FLIP(796, 14377, 2, 0x43000040, 0x40, %i0, 0x40, %l6, %l7, %o5, %l3)

P797: !_LD [0] (Int)
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P798: !_IDC_FLIP [5] (Int)
IDC_FLIP(798, 20125, 2, 0x43000040, 0x40, %i0, 0x40, %l6, %l7, %o5, %l3)

P799: !_PREFETCH [24] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 64], 1

P800: !_REPLACEMENT [23] (Int) (CBR)
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
be,pt  %xcc, TARGET800
nop
RET800:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P801: !_LD [19] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f12
! 1 addresses covered

P802: !_MEMBAR (FP) (Branch target of P1003)
membar #StoreLoad
ba P803
nop

TARGET1003:
ba RET1003
nop


P803: !_BLD [14] (FP) (CBR) (Branch target of P898)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET803
nop
RET803:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P804
nop

TARGET898:
ba RET898
nop


P804: !_MEMBAR (FP)

P805: !_LD [4] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 32] %asi, %f14
! 1 addresses covered

P806: !_MEMBAR (FP) (Branch target of P782)
membar #StoreLoad
ba P807
nop

TARGET782:
ba RET782
nop


P807: !_BLD [2] (FP)
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

P808: !_MEMBAR (FP) (Branch target of P908)
ba P809
nop

TARGET908:
ba RET908
nop


P809: !_REPLACEMENT [0] (Int)
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

P810: !_MEMBAR (FP)
membar #StoreLoad

P811: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f4
fmovd %f40, %f18
fmovs %f18, %f5

P812: !_MEMBAR (FP) (CBR) (Branch target of P922)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET812
nop
RET812:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P813
nop

TARGET922:
ba RET922
nop


P813: !_IDC_FLIP [17] (Int) (Branch target of P853)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(813, 1770, 2, 0x44800060, 0x60, %i3, 0x60, %l6, %l7, %o5, %l3)
ba P814
nop

TARGET853:
ba RET853
nop


P814: !_REPLACEMENT [13] (Int)
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

P815: !_FLUSH [21] (Int)
! Unsupported instruction

P816: !_REPLACEMENT [29] (Int)
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

P817: !_REPLACEMENT [2] (Int)
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

P818: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET818
nop
RET818:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P819: !_BST [1] (maybe <- 0x40800006) (FP) (Secondary ctx) (Branch target of P887)
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
ba P820
nop

TARGET887:
ba RET887
nop


P820: !_MEMBAR (FP) (Secondary ctx)

P821: !_BST [30] (maybe <- 0x4080000b) (FP) (Branch target of P1013)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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
ba P822
nop

TARGET1013:
ba RET1013
nop


P822: !_MEMBAR (FP) (Branch target of P851)
membar #StoreLoad
ba P823
nop

TARGET851:
ba RET851
nop


P823: !_REPLACEMENT [28] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P824: !_REPLACEMENT [7] (Int) (CBR) (Nucleus ctx)
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
be,pn  %xcc, TARGET824
nop
RET824:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P825: !_IDC_FLIP [29] (Int) (CBR)
IDC_FLIP(825, 21261, 2, 0x46000004, 0x4, %i3, 0x4, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET825
nop
RET825:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P826: !_REPLACEMENT [25] (Int) (Branch target of P978)
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
ba P827
nop

TARGET978:
ba RET978
nop


P827: !_REPLACEMENT [24] (Int)
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

P828: !_REPLACEMENT [17] (Int) (Branch target of P992)
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
ba P829
nop

TARGET992:
ba RET992
nop


P829: !_MEMBAR (FP)
membar #StoreLoad

P830: !_BLD [26] (FP) (Branch target of P1130)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f6
fmovd %f40, %f18
fmovs %f18, %f7
ba P831
nop

TARGET1130:
ba RET1130
nop


P831: !_MEMBAR (FP)

P832: !_REPLACEMENT [27] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P833: !_PREFETCH [17] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 96], 1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET833
nop
RET833:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P834: !_MEMBAR (FP) (Secondary ctx)

P835: !_BST [4] (maybe <- 0x4080000e) (FP) (Secondary ctx) (Branch target of P888)
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
ba P836
nop

TARGET888:
ba RET888
nop


P836: !_MEMBAR (FP) (Secondary ctx)

P837: !_BST [31] (maybe <- 0x40800013) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P838: !_MEMBAR (FP)
membar #StoreLoad

P839: !_REPLACEMENT [11] (Int)
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

P840: !_MEMBAR (FP) (Secondary ctx) (Branch target of P1011)
membar #StoreLoad
ba P841
nop

TARGET1011:
ba RET1011
nop


P841: !_BLD [24] (FP) (Secondary ctx) (Branch target of P1142)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f8
fmovd %f40, %f18
fmovs %f18, %f9
ba P842
nop

TARGET1142:
ba RET1142
nop


P842: !_MEMBAR (FP) (Secondary ctx)

P843: !_REPLACEMENT [5] (Int)
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

P844: !_REPLACEMENT [26] (Int) (Nucleus ctx) (Branch target of P880)
wr %g0, 0x4, %asi
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
ba P845
nop

TARGET880:
ba RET880
nop


P845: !_REPLACEMENT [15] (Int)
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

P846: !_ST [28] (maybe <- 0x1000001) (Int) (LE) (CBR)
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET846
nop
RET846:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P847: !_PREFETCH [33] (Int) (Branch target of P934)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 1
ba P848
nop

TARGET934:
ba RET934
nop


P848: !_REPLACEMENT [14] (Int) (Nucleus ctx)
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

P849: !_LD [7] (FP) (Nucleus ctx)
wr %g0, 0x4, %asi
lda    [%i0 + 128] %asi, %f10
! 1 addresses covered

P850: !_REPLACEMENT [19] (Int) (Nucleus ctx)
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

P851: !_LD [20] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 256] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET851
nop
RET851:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P852: !_REPLACEMENT [27] (Int) (CBR)
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
be,pn  %xcc, TARGET852
nop
RET852:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P853: !_REPLACEMENT [13] (Int) (CBR)
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
be,pn  %xcc, TARGET853
nop
RET853:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P854: !_ST [20] (maybe <- 0x40800015) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 256 ]

P855: !_MEMBAR (FP) (CBR) (Branch target of P1054)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET855
nop
RET855:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P856
nop

TARGET1054:
ba RET1054
nop


P856: !_BST [24] (maybe <- 0x40800016) (FP)
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

P857: !_MEMBAR (FP)
membar #StoreLoad

P858: !_REPLACEMENT [15] (Int)
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

P859: !_MEMBAR (FP)

P860: !_BSTC [14] (maybe <- 0x40800018) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P861: !_MEMBAR (FP)

P862: !_BSTC [7] (maybe <- 0x40800019) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P863: !_MEMBAR (FP)
membar #StoreLoad

P864: !_REPLACEMENT [31] (Int)
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

P865: !_ST [24] (maybe <- 0x4080001a) (FP) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET865
nop
RET865:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P866: !_FLUSH [29] (Int)
! Unsupported instruction

P867: !_MEMBAR (FP)

P868: !_BSTC [25] (maybe <- 0x4080001b) (FP)
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

P869: !_MEMBAR (FP)
membar #StoreLoad

P870: !_REPLACEMENT [21] (Int)
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

P871: !_REPLACEMENT [10] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P872: !_REPLACEMENT [25] (Int)
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

P873: !_PREFETCH [20] (Int) (Nucleus ctx) (Branch target of P1097)
wr %g0, 0x4, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 256] %asi, 1
ba P874
nop

TARGET1097:
ba RET1097
nop


P874: !_ST [12] (maybe <- 0x4080001d) (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P875: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET875
nop
RET875:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P876: !_BST [30] (maybe <- 0x4080001e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P877: !_MEMBAR (FP) (Branch target of P1123)
membar #StoreLoad
ba P878
nop

TARGET1123:
ba RET1123
nop


P878: !_REPLACEMENT [25] (Int)
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

P879: !_REPLACEMENT [4] (Int)
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

P880: !_REPLACEMENT [5] (Int) (CBR) (Branch target of P1079)
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
be,pn  %xcc, TARGET880
nop
RET880:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P881
nop

TARGET1079:
ba RET1079
nop


P881: !_REPLACEMENT [1] (Int) (Branch target of P779)
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
ba P882
nop

TARGET779:
ba RET779
nop


P882: !_PREFETCH [27] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 160] %asi, 1

P883: !_IDC_FLIP [14] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(883, 2442, 2, 0x44000040, 0x40, %i2, 0x40, %l6, %l7, %o5, %l3)

P884: !_MEMBAR (FP)

P885: !_BST [8] (maybe <- 0x40800021) (FP)
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

P886: !_MEMBAR (FP)
membar #StoreLoad

P887: !_REPLACEMENT [17] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pn  %xcc, TARGET887
nop
RET887:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P888: !_LD [22] (FP) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f11
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET888
nop
RET888:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P889: !_REPLACEMENT [25] (Int) (CBR) (Secondary ctx)
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
be,pn  %xcc, TARGET889
nop
RET889:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P890: !_REPLACEMENT [7] (Int)
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

P891: !_REPLACEMENT [31] (Int) (Nucleus ctx)
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

P892: !_ST [28] (maybe <- 0x1000002) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P893: !_REPLACEMENT [28] (Int) (Branch target of P1005)
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
ba P894
nop

TARGET1005:
ba RET1005
nop


P894: !_REPLACEMENT [3] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET894
nop
RET894:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P895: !_REPLACEMENT [10] (Int)
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

P896: !_REPLACEMENT [17] (Int)
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

P897: !_FLUSH [27] (Int)
! Unsupported instruction

P898: !_REPLACEMENT [10] (Int) (CBR) (Branch target of P1007)
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
be,pt  %xcc, TARGET898
nop
RET898:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P899
nop

TARGET1007:
ba RET1007
nop


P899: !_REPLACEMENT [7] (Int)
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

P900: !_MEMBAR (FP) (Branch target of P1021)
ba P901
nop

TARGET1021:
ba RET1021
nop


P901: !_BST [17] (maybe <- 0x40800023) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P902: !_MEMBAR (FP) (Loop exit) (Branch target of P1132)
membar #StoreLoad
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
!--
loop_exit_2_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_0
nop
ba P903
nop

TARGET1132:
ba RET1132
nop


P903: !_REPLACEMENT [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_1:
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

P904: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET904
nop
RET904:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P905: !_BSTC [31] (maybe <- 0x40800024) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P906: !_MEMBAR (FP)
membar #StoreLoad

P907: !_ST [20] (maybe <- 0x1000003) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 256 ]
add   %l4, 1, %l4

P908: !_REPLACEMENT [19] (Int) (CBR)
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
be,pt  %xcc, TARGET908
nop
RET908:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P909: !_REPLACEMENT [9] (Int)
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

P910: !_REPLACEMENT [20] (Int)
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

P911: !_REPLACEMENT [0] (Int)
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

P912: !_ST [6] (maybe <- 0x1000004) (Int) (CBR)
stw   %l4, [%i0 + 96 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET912
nop
RET912:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P913: !_PREFETCH [15] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 128], 1

P914: !_ST [17] (maybe <- 0x1000005) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 96] %asi
add   %l4, 1, %l4

P915: !_REPLACEMENT [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
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

P916: !_ST [12] (maybe <- 0x40800026) (FP) (Branch target of P793)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
ba P917
nop

TARGET793:
ba RET793
nop


P917: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET917
nop
RET917:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P918: !_BSTC [24] (maybe <- 0x40800027) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
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

P919: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P920: !_REPLACEMENT [29] (Int) (Branch target of P1053)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
ba P921
nop

TARGET1053:
ba RET1053
nop


P921: !_LD [21] (Int)
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P922: !_REPLACEMENT [1] (Int) (CBR) (Nucleus ctx) (Branch target of P917)
wr %g0, 0x4, %asi
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET922
nop
RET922:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P923
nop

TARGET917:
ba RET917
nop


P923: !_REPLACEMENT [22] (Int)
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

P924: !_ST [10] (maybe <- 0x1000006) (Int)
stw   %l4, [%i1 + 64 ]
add   %l4, 1, %l4

P925: !_REPLACEMENT [15] (Int)
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

P926: !_REPLACEMENT [33] (Int) (Branch target of P960)
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
ba P927
nop

TARGET960:
ba RET960
nop


P927: !_REPLACEMENT [5] (Int)
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

P928: !_MEMBAR (FP)

P929: !_BSTC [33] (maybe <- 0x40800029) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P930: !_MEMBAR (FP)
membar #StoreLoad

P931: !_REPLACEMENT [9] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P932: !_PREFETCH [31] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 64], 1

P933: !_LD [33] (Int)
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P934: !_ST [29] (maybe <- 0x1000007) (Int) (CBR)
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET934
nop
RET934:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P935: !_LD [26] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P936: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P937: !_BLD [11] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P938: !_MEMBAR (FP) (Secondary ctx)

P939: !_LD [30] (Int) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

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


P940: !_REPLACEMENT [33] (Int)
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

P941: !_MEMBAR (FP) (Branch target of P855)
ba P942
nop

TARGET855:
ba RET855
nop


P942: !_BSTC [17] (maybe <- 0x4080002a) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P943: !_MEMBAR (FP)
membar #StoreLoad

P944: !_LD [13] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P945: !_MEMBAR (FP)

P946: !_BST [28] (maybe <- 0x4080002b) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
be,pt  %xcc, TARGET946
nop
RET946:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P947: !_MEMBAR (FP)
membar #StoreLoad

P948: !_IDC_FLIP [33] (Int) (Branch target of P998)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(948, 882, 2, 0x46800000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)
ba P949
nop

TARGET998:
ba RET998
nop


P949: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET949
nop
RET949:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P950: !_BLD [30] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f40, %f18
fmovs %f18, %f5

P951: !_MEMBAR (FP) (Secondary ctx)

P952: !_REPLACEMENT [30] (Int)
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

P953: !_MEMBAR (FP) (Branch target of P1063)
ba P954
nop

TARGET1063:
ba RET1063
nop


P954: !_BST [24] (maybe <- 0x4080002e) (FP) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET954
nop
RET954:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P955: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET955
nop
RET955:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P956: !_REPLACEMENT [33] (Int) (CBR)
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
be,pn  %xcc, TARGET956
nop
RET956:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P957: !_LD [30] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 32], %f6
! 1 addresses covered

P958: !_REPLACEMENT [31] (Int) (Branch target of P852)
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
ba P959
nop

TARGET852:
ba RET852
nop


P959: !_IDC_FLIP [9] (Int)
IDC_FLIP(959, 23053, 2, 0x43800020, 0x20, %i1, 0x20, %l6, %l7, %o5, %l3)

P960: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET960
nop
RET960:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P961: !_BLD [24] (FP) (CBR) (Secondary ctx) (Branch target of P818)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET961
nop
RET961:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P962
nop

TARGET818:
ba RET818
nop


P962: !_MEMBAR (FP) (Secondary ctx)

P963: !_IDC_FLIP [6] (Int) (Branch target of P984)
IDC_FLIP(963, 29258, 2, 0x43000060, 0x60, %i0, 0x60, %l6, %l7, %o5, %l3)
ba P964
nop

TARGET984:
ba RET984
nop


P964: !_IDC_FLIP [9] (Int) (CBR)
IDC_FLIP(964, 5034, 2, 0x43800020, 0x20, %i1, 0x20, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET964
nop
RET964:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P965: !_MEMBAR (FP)

P966: !_BST [11] (maybe <- 0x40800030) (FP) (CBR)
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
be,pn  %xcc, TARGET966
nop
RET966:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P967: !_MEMBAR (FP) (Branch target of P1000)
membar #StoreLoad
ba P968
nop

TARGET1000:
ba RET1000
nop


P968: !_FLUSH [2] (Int)
! Unsupported instruction

P969: !_REPLACEMENT [31] (Int)
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

P970: !_IDC_FLIP [27] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(970, 4200, 2, 0x458000a0, 0xa0, %i3, 0xa0, %l6, %l7, %o5, %l3)

P971: !_REPLACEMENT [33] (Int) (Secondary ctx)
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

P972: !_REPLACEMENT [25] (Int) (Secondary ctx)
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

P973: !_REPLACEMENT [9] (Int)
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

P974: !_REPLACEMENT [11] (Int) (Secondary ctx)
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

P975: !_MEMBAR (FP)

P976: !_BST [2] (maybe <- 0x40800033) (FP) (Branch target of P824)
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
ba P977
nop

TARGET824:
ba RET824
nop


P977: !_MEMBAR (FP)

P978: !_BSTC [30] (maybe <- 0x40800038) (FP) (CBR) (Secondary ctx) (Branch target of P833)
wr %g0, 0xe1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
be,pt  %xcc, TARGET978
nop
RET978:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P979
nop

TARGET833:
ba RET833
nop


P979: !_MEMBAR (FP) (Secondary ctx)

P980: !_BST [32] (maybe <- 0x4080003b) (FP)
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

P981: !_MEMBAR (FP)
membar #StoreLoad

P982: !_BLD [18] (FP) (Branch target of P994)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9
ba P983
nop

TARGET994:
ba RET994
nop


P983: !_MEMBAR (FP) (Branch target of P785)
ba P984
nop

TARGET785:
ba RET785
nop


P984: !_LD [6] (FP) (CBR)
ld [%i0 + 96], %f10
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET984
nop
RET984:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P985: !_REPLACEMENT [19] (Int) (Secondary ctx)
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

P986: !_MEMBAR (FP)
membar #StoreLoad

P987: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P988: !_MEMBAR (FP)

P989: !_IDC_FLIP [28] (Int)
IDC_FLIP(989, 5899, 2, 0x46000000, 0x0, %i3, 0x0, %l6, %l7, %o5, %l3)

P990: !_REPLACEMENT [7] (Int) (Secondary ctx)
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

P991: !_MEMBAR (FP) (CBR) (Branch target of P812)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET991
nop
RET991:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P992
nop

TARGET812:
ba RET812
nop


P992: !_BST [24] (maybe <- 0x4080003d) (FP) (CBR)
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
be,pn  %xcc, TARGET992
nop
RET992:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P993: !_MEMBAR (FP)
membar #StoreLoad

P994: !_ST [34] (maybe <- 0x4080003f) (FP) (CBR) (Branch target of P966)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET994
nop
RET994:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P995
nop

TARGET966:
ba RET966
nop


P995: !_REPLACEMENT [7] (Int)
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

P996: !_REPLACEMENT [9] (Int)
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

P997: !_REPLACEMENT [30] (Int) (CBR)
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
be,pn  %xcc, TARGET997
nop
RET997:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P998: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET998
nop
RET998:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P999: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f14

P1000: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1000
nop
RET1000:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1001: !_REPLACEMENT [11] (Int)
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

P1002: !_REPLACEMENT [30] (Int) (Branch target of P787)
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
ba P1003
nop

TARGET787:
ba RET787
nop


P1003: !_LD [9] (Int) (CBR)
lduw [%i1 + 32], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1003
nop
RET1003:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1004: !_REPLACEMENT [28] (Int) (Branch target of P1138)
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
ba P1005
nop

TARGET1138:
ba RET1138
nop


P1005: !_REPLACEMENT [0] (Int) (CBR)
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
be,pn  %xcc, TARGET1005
nop
RET1005:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1006: !_MEMBAR (FP) (Branch target of P1028)
ba P1007
nop

TARGET1028:
ba RET1028
nop


P1007: !_BSTC [3] (maybe <- 0x40800040) (FP) (CBR)
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
be,pn  %xcc, TARGET1007
nop
RET1007:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1008: !_MEMBAR (FP)
membar #StoreLoad

P1009: !_REPLACEMENT [31] (Int)
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

P1010: !_REPLACEMENT [3] (Int) (CBR) (Branch target of P1010)
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
be,pn  %xcc, TARGET1010
nop
RET1010:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1011
nop

TARGET1010:
ba RET1010
nop


P1011: !_REPLACEMENT [32] (Int) (CBR)
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
be,pn  %xcc, TARGET1011
nop
RET1011:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1012: !_MEMBAR (FP) (Branch target of P1095)
ba P1013
nop

TARGET1095:
ba RET1095
nop


P1013: !_BSTC [23] (maybe <- 0x40800045) (FP) (CBR) (Branch target of P789)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1013
nop
RET1013:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1014
nop

TARGET789:
ba RET789
nop


P1014: !_MEMBAR (FP)
membar #StoreLoad

P1015: !_IDC_FLIP [17] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1015, 28074, 2, 0x44800060, 0x60, %i3, 0x60, %l6, %l7, %o5, %l3)

P1016: !_REPLACEMENT [11] (Int)
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

P1017: !_REPLACEMENT [1] (Int)
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

P1018: !_IDC_FLIP [23] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1018, 21047, 2, 0x45800020, 0x20, %i3, 0x20, %l6, %l7, %o5, %l3)

P1019: !_ST [27] (maybe <- 0x1000008) (Int)
stw   %l4, [%i3 + 160 ]
add   %l4, 1, %l4

P1020: !_LD [1] (FP)
ld [%i0 + 4], %f15
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

P1021: !_REPLACEMENT [10] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pn  %xcc, TARGET1021
nop
RET1021:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1022: !_REPLACEMENT [17] (Int)
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

P1023: !_REPLACEMENT [13] (Int)
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

P1024: !_LD [34] (Int) (Nucleus ctx) (Branch target of P949)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 64] %asi, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
ba P1025
nop

TARGET949:
ba RET949
nop


P1025: !_REPLACEMENT [15] (Int) (Secondary ctx)
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

P1026: !_REPLACEMENT [20] (Int)
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

P1027: !_LD [25] (FP) (Branch target of P1145)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 96], %f0
! 1 addresses covered
ba P1028
nop

TARGET1145:
ba RET1145
nop


P1028: !_REPLACEMENT [20] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1028
nop
RET1028:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1029: !_REPLACEMENT [3] (Int) (Branch target of P803)
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
ba P1030
nop

TARGET803:
ba RET803
nop


P1030: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1030
nop
RET1030:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1031: !_BST [14] (maybe <- 0x40800048) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P1032: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1033: !_ST [27] (maybe <- 0x40800049) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 160 ]

P1034: !_REPLACEMENT [26] (Int)
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

P1035: !_REPLACEMENT [9] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1036: !_REPLACEMENT [1] (Int)
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

P1037: !_REPLACEMENT [27] (Int)
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

P1038: !_REPLACEMENT [8] (Int) (Branch target of P889)
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
ba P1039
nop

TARGET889:
ba RET889
nop


P1039: !_REPLACEMENT [27] (Int)
sethi %hi(0x2000), %l3
ld [%i2+160], %l7
st %l7, [%i2+160]
add %i2, %l3, %l6
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

P1040: !_REPLACEMENT [26] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1041: !_REPLACEMENT [28] (Int) (Secondary ctx) (Branch target of P1060)
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
ba P1042
nop

TARGET1060:
ba RET1060
nop


P1042: !_MEMBAR (FP) (Branch target of P954)
ba P1043
nop

TARGET954:
ba RET954
nop


P1043: !_BST [33] (maybe <- 0x4080004a) (FP) (Branch target of P955)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P1044
nop

TARGET955:
ba RET955
nop


P1044: !_MEMBAR (FP) (Branch target of P781)
ba P1045
nop

TARGET781:
ba RET781
nop


P1045: !_BST [1] (maybe <- 0x4080004b) (FP)
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

P1046: !_MEMBAR (FP)
membar #StoreLoad

P1047: !_REPLACEMENT [10] (Int)
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

P1048: !_ST [21] (maybe <- 0x40800050) (FP) (Secondary ctx) (Branch target of P1127)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 0 ] %asi
ba P1049
nop

TARGET1127:
ba RET1127
nop


P1049: !_REPLACEMENT [11] (Int) (Branch target of P1067)
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
ba P1050
nop

TARGET1067:
ba RET1067
nop


P1050: !_REPLACEMENT [3] (Int) (Secondary ctx)
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

P1051: !_REPLACEMENT [3] (Int) (Branch target of P865)
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
ba P1052
nop

TARGET865:
ba RET865
nop


P1052: !_REPLACEMENT [16] (Int)
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

P1053: !_MEMBAR (FP) (CBR) (Branch target of P1065)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1053
nop
RET1053:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1054
nop

TARGET1065:
ba RET1065
nop


P1054: !_BLD [4] (FP) (CBR)
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


P1055: !_MEMBAR (FP) (Branch target of P846)
ba P1056
nop

TARGET846:
ba RET846
nop


P1056: !_PREFETCH [2] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
prefetcha [%i0 + 8] %asi, 1

P1057: !_ST [33] (maybe <- 0x40800051) (FP) (Branch target of P912)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]
ba P1058
nop

TARGET912:
ba RET912
nop


P1058: !_ST [4] (maybe <- 0x40800052) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]

P1059: !_MEMBAR (FP)

P1060: !_BST [22] (maybe <- 0x40800053) (FP) (CBR)
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
be,pn  %xcc, TARGET1060
nop
RET1060:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1061: !_MEMBAR (FP)
membar #StoreLoad

P1062: !_PREFETCH [2] (Int) (CBR)
prefetch [%i0 + 8], 1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1062
nop
RET1062:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1063: !_MEMBAR (FP) (CBR) (Branch target of P1121)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1063
nop
RET1063:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1064
nop

TARGET1121:
ba RET1121
nop


P1064: !_BSTC [7] (maybe <- 0x40800056) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1064
nop
RET1064:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1065: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1065
nop
RET1065:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1066: !_REPLACEMENT [20] (Int)
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

P1067: !_IDC_FLIP [20] (Int) (CBR) (Branch target of P1062)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1067, 24120, 2, 0x45000100, 0x100, %i3, 0x100, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1067
nop
RET1067:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1068
nop

TARGET1062:
ba RET1062
nop


P1068: !_PREFETCH [23] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 32] %asi, 1

P1069: !_REPLACEMENT [23] (Int) (Nucleus ctx) (Branch target of P1093)
wr %g0, 0x4, %asi
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
ba P1070
nop

TARGET1093:
ba RET1093
nop


P1070: !_REPLACEMENT [8] (Int)
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

P1071: !_MEMBAR (FP) (Secondary ctx) (Branch target of P825)
ba P1072
nop

TARGET825:
ba RET825
nop


P1072: !_BST [8] (maybe <- 0x40800057) (FP) (Secondary ctx)
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

P1073: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1074: !_LD [2] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i0 + 8] %asi, %l3
! move %l3(lower) -> %o3(lower)
or %l3, %o3, %o3

P1075: !_ST [14] (maybe <- 0x40800059) (FP) (Branch target of P939)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]
ba P1076
nop

TARGET939:
ba RET939
nop


P1076: !_REPLACEMENT [5] (Int) (Secondary ctx)
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

P1077: !_REPLACEMENT [10] (Int) (Nucleus ctx)
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

P1078: !_REPLACEMENT [15] (Int) (CBR) (Secondary ctx) (Branch target of P1030)
wr %g0, 0x81, %asi
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
be,pt  %xcc, TARGET1078
nop
RET1078:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1079
nop

TARGET1030:
ba RET1030
nop


P1079: !_REPLACEMENT [17] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1079
nop
RET1079:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1080: !_REPLACEMENT [10] (Int)
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

P1081: !_REPLACEMENT [25] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1082: !_MEMBAR (FP)
membar #StoreLoad

P1083: !_BLD [24] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f6
fmovd %f40, %f18
fmovs %f18, %f7

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1083
nop
RET1083:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1084: !_MEMBAR (FP) (Branch target of P961)
ba P1085
nop

TARGET961:
ba RET961
nop


P1085: !_BSTC [0] (maybe <- 0x4080005a) (FP)
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

P1086: !_MEMBAR (FP)
membar #StoreLoad

P1087: !_REPLACEMENT [27] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %l3
ld [%i2+160], %l7
st %l7, [%i2+160]
add %i2, %l3, %l6
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

P1088: !_MEMBAR (FP)

P1089: !_BSTC [8] (maybe <- 0x4080005f) (FP)
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

P1090: !_MEMBAR (FP)
membar #StoreLoad

P1091: !_REPLACEMENT [1] (Int) (CBR)
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
be,pn  %xcc, TARGET1091
nop
RET1091:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1092: !_REPLACEMENT [8] (Int)
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

P1093: !_REPLACEMENT [14] (Int) (CBR) (Branch target of P1083)
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
be,pn  %xcc, TARGET1093
nop
RET1093:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1094
nop

TARGET1083:
ba RET1083
nop


P1094: !_REPLACEMENT [7] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1095: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1095
nop
RET1095:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1096: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f8
fmovd %f40, %f18
fmovs %f18, %f9

P1097: !_MEMBAR (FP) (CBR) (Branch target of P956)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1097
nop
RET1097:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1098
nop

TARGET956:
ba RET956
nop


P1098: !_REPLACEMENT [9] (Int) (Branch target of P964)
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
ba P1099
nop

TARGET964:
ba RET964
nop


P1099: !_REPLACEMENT [24] (Int) (Nucleus ctx)
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

P1100: !_REPLACEMENT [4] (Int)
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

P1101: !_IDC_FLIP [6] (Int)
IDC_FLIP(1101, 21064, 2, 0x43000060, 0x60, %i0, 0x60, %l6, %l7, %o5, %l3)

P1102: !_REPLACEMENT [34] (Int) (Secondary ctx)
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

P1103: !_REPLACEMENT [24] (Int) (Branch target of P800)
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
ba P1104
nop

TARGET800:
ba RET800
nop


P1104: !_REPLACEMENT [17] (Int)
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

P1105: !_REPLACEMENT [4] (Int) (Branch target of P774)
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
ba P1106
nop

TARGET774:
ba RET774
nop


P1106: !_REPLACEMENT [4] (Int)
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

P1107: !_LD [32] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 96], %f10
! 1 addresses covered

P1108: !_REPLACEMENT [19] (Int)
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

P1109: !_REPLACEMENT [8] (Int) (Nucleus ctx)
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

P1110: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1110
nop
RET1110:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1111: !_BST [31] (maybe <- 0x40800061) (FP)
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

P1112: !_MEMBAR (FP)
membar #StoreLoad

P1113: !_REPLACEMENT [0] (Int) (Branch target of P991)
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
ba P1114
nop

TARGET991:
ba RET991
nop


P1114: !_ST [15] (maybe <- 0x40800063) (FP) (Branch target of P1126)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 128 ]
ba P1115
nop

TARGET1126:
ba RET1126
nop


P1115: !_REPLACEMENT [27] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P1116: !_LD [2] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 8] %asi, %f11
! 1 addresses covered

P1117: !_LD [17] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 96], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1118: !_MEMBAR (FP)
membar #StoreLoad

P1119: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f12
fmovd %f40, %f14

P1120: !_MEMBAR (FP)

P1121: !_REPLACEMENT [8] (Int) (CBR)
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
be,pt  %xcc, TARGET1121
nop
RET1121:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1122: !_ST [19] (maybe <- 0x1000009) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1123: !_REPLACEMENT [33] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1123
nop
RET1123:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1124: !_ST [19] (maybe <- 0x40800064) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P1125: !_REPLACEMENT [14] (Int)
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

P1126: !_REPLACEMENT [32] (Int) (CBR)
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
be,pn  %xcc, TARGET1126
nop
RET1126:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1127: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1127
nop
RET1127:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1128: !_BST [32] (maybe <- 0x40800065) (FP) (Branch target of P1091)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
ba P1129
nop

TARGET1091:
ba RET1091
nop


P1129: !_MEMBAR (FP)
membar #StoreLoad

P1130: !_REPLACEMENT [0] (Int) (CBR)
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
be,pt  %xcc, TARGET1130
nop
RET1130:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1131: !_PREFETCH [9] (Int)
prefetch [%i1 + 32], 1

P1132: !_REPLACEMENT [14] (Int) (CBR) (Branch target of P1110)
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
be,pt  %xcc, TARGET1132
nop
RET1132:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1133
nop

TARGET1110:
ba RET1110
nop


P1133: !_REPLACEMENT [16] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1134: !_REPLACEMENT [19] (Int) (Branch target of P1078)
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
ba P1135
nop

TARGET1078:
ba RET1078
nop


P1135: !_REPLACEMENT [18] (Int)
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

P1136: !_LD [14] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P1137: !_REPLACEMENT [9] (Int)
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

P1138: !_ST [21] (maybe <- 0x40800067) (FP) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1138
nop
RET1138:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1139: !_REPLACEMENT [33] (Int)
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

P1140: !_REPLACEMENT [29] (Int) (Secondary ctx)
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

P1141: !_REPLACEMENT [13] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1142: !_ST [12] (maybe <- 0x100000a) (Int) (LE) (CBR)
wr %g0, 0x88, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
stwa   %l6, [%i3 + 4] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1142
nop
RET1142:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1143: !_REPLACEMENT [14] (Int)
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

P1144: !_IDC_FLIP [15] (Int)
IDC_FLIP(1144, 4430, 2, 0x44000080, 0x80, %i3, 0x80, %l6, %l7, %o5, %l3)

P1145: !_REPLACEMENT [26] (Int) (CBR)
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
be,pt  %xcc, TARGET1145
nop
RET1145:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1146: !_LD [22] (FP) (Branch target of P875)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
ba P1147
nop

TARGET875:
ba RET875
nop


P1147: !_REPLACEMENT [6] (Int)
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

P1148: !_MEMBAR (FP)
membar #StoreLoad

P1149: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P1150: !_MEMBAR (FP) (Loop exit) (Branch target of P904)
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_2_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_1
nop
ba P1151
nop

TARGET904:
ba RET904
nop


P1151: !_MEMBAR (Int)
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

! Initialize LFSR to 0x4dab^4
sethi %hi(0x4dab), %l0
or    %l0, %lo(0x4dab), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES3: ! Test instruction sequence for ISTREAM 3 begins

P1152: !_REPLACEMENT [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_0:
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

P1153: !_MEMBAR (FP)

P1154: !_BST [22] (maybe <- 0x41000001) (FP) (Branch target of P1236)
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
ba P1155
nop

TARGET1236:
ba RET1236
nop


P1155: !_MEMBAR (FP) (Branch target of P1497)
membar #StoreLoad
ba P1156
nop

TARGET1497:
ba RET1497
nop


P1156: !_REPLACEMENT [1] (Int)
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

P1157: !_REPLACEMENT [25] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1158: !_REPLACEMENT [32] (Int) (CBR)
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
be,pn  %xcc, TARGET1158
nop
RET1158:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1159: !_REPLACEMENT [34] (Int)
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

P1160: !_MEMBAR (FP)

P1161: !_BSTC [32] (maybe <- 0x41000004) (FP) (Branch target of P1381)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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
ba P1162
nop

TARGET1381:
ba RET1381
nop


P1162: !_MEMBAR (FP)

P1163: !_BST [34] (maybe <- 0x41000006) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P1164: !_MEMBAR (FP) (Branch target of P1196)
membar #StoreLoad
ba P1165
nop

TARGET1196:
ba RET1196
nop


P1165: !_REPLACEMENT [14] (Int) (Nucleus ctx) (Branch target of P1479)
wr %g0, 0x4, %asi
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
ba P1166
nop

TARGET1479:
ba RET1479
nop


P1166: !_ST [32] (maybe <- 0x1800001) (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 96] %asi
add   %l4, 1, %l4

P1167: !_MEMBAR (FP) (Branch target of P1424)
ba P1168
nop

TARGET1424:
ba RET1424
nop


P1168: !_BST [16] (maybe <- 0x41000007) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1169: !_MEMBAR (FP)
membar #StoreLoad

P1170: !_ST [5] (maybe <- 0x41000008) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

P1171: !_REPLACEMENT [7] (Int) (Secondary ctx)
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

P1172: !_REPLACEMENT [0] (Int) (Secondary ctx)
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

P1173: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1173
nop
RET1173:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1174: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 5 addresses covered
fmovs %f4, %f3
fmovd %f8, %f4

P1175: !_MEMBAR (FP)

P1176: !_REPLACEMENT [13] (Int)
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

P1177: !_REPLACEMENT [34] (Int) (Nucleus ctx)
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

P1178: !_REPLACEMENT [21] (Int) (Nucleus ctx)
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

P1179: !_REPLACEMENT [6] (Int)
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

P1180: !_REPLACEMENT [22] (Int) (Branch target of P1273)
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
ba P1181
nop

TARGET1273:
ba RET1273
nop


P1181: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1181
nop
RET1181:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1182: !_BSTC [10] (maybe <- 0x41000009) (FP) (CBR) (Branch target of P1453)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1182
nop
RET1182:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1183
nop

TARGET1453:
ba RET1453
nop


P1183: !_MEMBAR (FP)
membar #StoreLoad

P1184: !_REPLACEMENT [20] (Int) (CBR) (Branch target of P1230)
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
be,pn  %xcc, TARGET1184
nop
RET1184:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1185
nop

TARGET1230:
ba RET1230
nop


P1185: !_REPLACEMENT [1] (Int)
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

P1186: !_REPLACEMENT [31] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1187: !_MEMBAR (FP)
membar #StoreLoad

P1188: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

P1189: !_MEMBAR (FP)

P1190: !_REPLACEMENT [12] (Int) (Secondary ctx)
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

P1191: !_REPLACEMENT [3] (Int)
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

P1192: !_REPLACEMENT [30] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1193: !_ST [27] (maybe <- 0x4100000a) (FP) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 160 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1193
nop
RET1193:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1194: !_REPLACEMENT [28] (Int) (Branch target of P1220)
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
ba P1195
nop

TARGET1220:
ba RET1220
nop


P1195: !_REPLACEMENT [12] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1196: !_REPLACEMENT [8] (Int) (CBR) (Branch target of P1223)
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
be,pn  %xcc, TARGET1196
nop
RET1196:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1197
nop

TARGET1223:
ba RET1223
nop


P1197: !_ST [9] (maybe <- 0x1800002) (Int) (Branch target of P1503)
stw   %l4, [%i1 + 32 ]
add   %l4, 1, %l4
ba P1198
nop

TARGET1503:
ba RET1503
nop


P1198: !_IDC_FLIP [28] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1198, 19120, 3, 0x46000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P1199: !_MEMBAR (FP)

P1200: !_BSTC [24] (maybe <- 0x4100000b) (FP) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1200
nop
RET1200:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1201: !_MEMBAR (FP)
membar #StoreLoad

P1202: !_REPLACEMENT [7] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1203: !_REPLACEMENT [19] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1203
nop
RET1203:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1204: !_IDC_FLIP [23] (Int) (CBR)
IDC_FLIP(1204, 1244, 3, 0x45800020, 0x20, %i3, 0x20, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1204
nop
RET1204:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1205: !_LD [11] (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f6
! 1 addresses covered

P1206: !_REPLACEMENT [11] (Int) (CBR)
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
be,pt  %xcc, TARGET1206
nop
RET1206:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1207: !_ST [21] (maybe <- 0x1800003) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 0] %asi
add   %l4, 1, %l4

P1208: !_REPLACEMENT [29] (Int)
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

P1209: !_REPLACEMENT [33] (Int)
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

P1210: !_REPLACEMENT [11] (Int) (Nucleus ctx)
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

P1211: !_PREFETCH [4] (Int)
prefetch [%i0 + 32], 1

P1212: !_REPLACEMENT [15] (Int)
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

P1213: !_PREFETCH [19] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 1

P1214: !_REPLACEMENT [15] (Int) (Branch target of P1389)
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
ba P1215
nop

TARGET1389:
ba RET1389
nop


P1215: !_REPLACEMENT [16] (Int) (Branch target of P1495)
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
ba P1216
nop

TARGET1495:
ba RET1495
nop


P1216: !_MEMBAR (FP)

P1217: !_BST [4] (maybe <- 0x4100000d) (FP)
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

P1218: !_MEMBAR (FP)
membar #StoreLoad

P1219: !_REPLACEMENT [26] (Int) (Nucleus ctx)
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

P1220: !_REPLACEMENT [25] (Int) (CBR) (Nucleus ctx) (Branch target of P1173)
wr %g0, 0x4, %asi
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
be,pn  %xcc, TARGET1220
nop
RET1220:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1221
nop

TARGET1173:
ba RET1173
nop


P1221: !_MEMBAR (FP)

P1222: !_BSTC [33] (maybe <- 0x41000012) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1223: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1223
nop
RET1223:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1224: !_REPLACEMENT [26] (Int)
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

P1225: !_MEMBAR (FP) (Branch target of P1355)
ba P1226
nop

TARGET1355:
ba RET1355
nop


P1226: !_BST [10] (maybe <- 0x41000013) (FP) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1226
nop
RET1226:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1227: !_MEMBAR (FP)
membar #StoreLoad

P1228: !_REPLACEMENT [27] (Int)
sethi %hi(0x2000), %l3
ld [%i2+160], %l7
st %l7, [%i2+160]
add %i2, %l3, %l6
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

P1229: !_REPLACEMENT [32] (Int)
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

P1230: !_REPLACEMENT [3] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1230
nop
RET1230:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1231: !_FLUSH [20] (Int)
! Unsupported instruction

P1232: !_REPLACEMENT [20] (Int) (CBR)
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
be,pt  %xcc, TARGET1232
nop
RET1232:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1233: !_REPLACEMENT [9] (Int)
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

P1234: !_REPLACEMENT [7] (Int) (Secondary ctx)
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

P1235: !_REPLACEMENT [0] (Int)
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

P1236: !_REPLACEMENT [18] (Int) (CBR)
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
be,pt  %xcc, TARGET1236
nop
RET1236:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1237: !_REPLACEMENT [12] (Int) (Branch target of P1518)
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
ba P1238
nop

TARGET1518:
ba RET1518
nop


P1238: !_REPLACEMENT [16] (Int)
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

P1239: !_IDC_FLIP [24] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1239, 18231, 3, 0x45800040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

P1240: !_MEMBAR (FP)

P1241: !_BST [5] (maybe <- 0x41000014) (FP)
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

P1242: !_MEMBAR (FP)
membar #StoreLoad

P1243: !_REPLACEMENT [32] (Int)
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

P1244: !_REPLACEMENT [3] (Int)
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

P1245: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1245
nop
RET1245:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1246: !_BST [26] (maybe <- 0x41000016) (FP)
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

P1247: !_MEMBAR (FP) (Branch target of P1488)
membar #StoreLoad
ba P1248
nop

TARGET1488:
ba RET1488
nop


P1248: !_REPLACEMENT [27] (Int)
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

P1249: !_MEMBAR (FP)
membar #StoreLoad

P1250: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f40, %f18
fmovs %f18, %f9

P1251: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1251
nop
RET1251:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1252: !_BST [14] (maybe <- 0x41000018) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P1253: !_MEMBAR (FP) (Branch target of P1457)
membar #StoreLoad
ba P1254
nop

TARGET1457:
ba RET1457
nop


P1254: !_FLUSHI [33] (Int)
flush %g0 

P1255: !_REPLACEMENT [31] (Int) (Secondary ctx)
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

P1256: !_FLUSH [0] (Int)
! Unsupported instruction

P1257: !_ST [6] (maybe <- 0x1800004) (Int) (Branch target of P1463)
stw   %l4, [%i0 + 96 ]
add   %l4, 1, %l4
ba P1258
nop

TARGET1463:
ba RET1463
nop


P1258: !_MEMBAR (FP) (Branch target of P1507)
ba P1259
nop

TARGET1507:
ba RET1507
nop


P1259: !_BST [22] (maybe <- 0x41000019) (FP)
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

P1260: !_MEMBAR (FP) (Branch target of P1393)
membar #StoreLoad
ba P1261
nop

TARGET1393:
ba RET1393
nop


P1261: !_REPLACEMENT [1] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1261
nop
RET1261:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1262: !_REPLACEMENT [15] (Int)
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

P1263: !_MEMBAR (FP) (Branch target of P1433)
ba P1264
nop

TARGET1433:
ba RET1433
nop


P1264: !_BST [10] (maybe <- 0x4100001c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi

P1265: !_MEMBAR (FP)
membar #StoreLoad

P1266: !_REPLACEMENT [7] (Int)
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

P1267: !_LD [28] (FP) (CBR) (Branch target of P1305)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f10
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1267
nop
RET1267:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1268
nop

TARGET1305:
ba RET1305
nop


P1268: !_REPLACEMENT [33] (Int) (Branch target of P1314)
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
ba P1269
nop

TARGET1314:
ba RET1314
nop


P1269: !_REPLACEMENT [17] (Int) (Branch target of P1368)
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
ba P1270
nop

TARGET1368:
ba RET1368
nop


P1270: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P1284)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1270
nop
RET1270:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1271
nop

TARGET1284:
ba RET1284
nop


P1271: !_BSTC [23] (maybe <- 0x4100001d) (FP) (Secondary ctx) (Branch target of P1456)
wr %g0, 0xe1, %asi
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
ba P1272
nop

TARGET1456:
ba RET1456
nop


P1272: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1273: !_REPLACEMENT [24] (Int) (CBR)
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
be,pn  %xcc, TARGET1273
nop
RET1273:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1274: !_MEMBAR (FP) (Branch target of P1422)
ba P1275
nop

TARGET1422:
ba RET1422
nop


P1275: !_BST [22] (maybe <- 0x41000020) (FP)
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

P1276: !_MEMBAR (FP)
membar #StoreLoad

P1277: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovd %f40, %f12

P1278: !_MEMBAR (FP) (Branch target of P1182)
ba P1279
nop

TARGET1182:
ba RET1182
nop


P1279: !_REPLACEMENT [23] (Int) (Branch target of P1336)
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
ba P1280
nop

TARGET1336:
ba RET1336
nop


P1280: !_REPLACEMENT [27] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l3
ld [%i2+160], %l7
st %l7, [%i2+160]
add %i2, %l3, %l6
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

P1281: !_REPLACEMENT [23] (Int)
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

P1282: !_REPLACEMENT [27] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1283: !_REPLACEMENT [6] (Int) (CBR)
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
be,pt  %xcc, TARGET1283
nop
RET1283:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1284: !_REPLACEMENT [8] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1284
nop
RET1284:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1285: !_MEMBAR (FP)

P1286: !_BST [15] (maybe <- 0x41000023) (FP) (CBR)
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
be,pn  %xcc, TARGET1286
nop
RET1286:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1287: !_MEMBAR (FP) (Branch target of P1251)
ba P1288
nop

TARGET1251:
ba RET1251
nop


P1288: !_BSTC [17] (maybe <- 0x41000024) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P1289: !_MEMBAR (FP) (Branch target of P1500)
ba P1290
nop

TARGET1500:
ba RET1500
nop


P1290: !_BSTC [19] (maybe <- 0x41000025) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1290
nop
RET1290:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1291: !_MEMBAR (FP)
membar #StoreLoad

P1292: !_REPLACEMENT [17] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1293: !_REPLACEMENT [2] (Int)
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

P1294: !_REPLACEMENT [26] (Int)
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

P1295: !_REPLACEMENT [8] (Int)
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

P1296: !_FLUSH [19] (Int)
! Unsupported instruction

P1297: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1297
nop
RET1297:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1298: !_BST [6] (maybe <- 0x41000026) (FP) (Secondary ctx)
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

P1299: !_MEMBAR (FP) (Secondary ctx)

P1300: !_BSTC [1] (maybe <- 0x41000028) (FP)
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

P1301: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1301
nop
RET1301:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1302: !_LD [8] (Int) (CBR)
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1302
nop
RET1302:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1303: !_MEMBAR (FP) (Secondary ctx)

P1304: !_BSTC [9] (maybe <- 0x4100002d) (FP) (Secondary ctx)
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
stda %f32, [%i1 + 0 ] %asi

P1305: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1305
nop
RET1305:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1306: !_REPLACEMENT [20] (Int)
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

P1307: !_REPLACEMENT [1] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1308: !_REPLACEMENT [26] (Int)
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

P1309: !_MEMBAR (FP)

P1310: !_BSTC [4] (maybe <- 0x4100002f) (FP)
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

P1311: !_MEMBAR (FP)

P1312: !_BSTC [17] (maybe <- 0x41000034) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P1313: !_MEMBAR (FP)
membar #StoreLoad

P1314: !_REPLACEMENT [26] (Int) (CBR)
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
be,pn  %xcc, TARGET1314
nop
RET1314:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1315: !_REPLACEMENT [0] (Int) (Nucleus ctx) (Branch target of P1181)
wr %g0, 0x4, %asi
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
ba P1316
nop

TARGET1181:
ba RET1181
nop


P1316: !_MEMBAR (FP) (Secondary ctx)

P1317: !_BST [15] (maybe <- 0x41000035) (FP) (CBR) (Secondary ctx) (Branch target of P1226)
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
be,pt  %xcc, TARGET1317
nop
RET1317:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1318
nop

TARGET1226:
ba RET1226
nop


P1318: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1319: !_REPLACEMENT [4] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1319
nop
RET1319:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1320: !_MEMBAR (FP) (Secondary ctx)

P1321: !_BSTC [13] (maybe <- 0x41000036) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
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

P1322: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1323: !_FLUSH [17] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1323
nop
RET1323:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1324: !_REPLACEMENT [29] (Int)
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

P1325: !_REPLACEMENT [23] (Int)
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

P1326: !_REPLACEMENT [19] (Int) (Secondary ctx) (Branch target of P1386)
wr %g0, 0x81, %asi
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
ba P1327
nop

TARGET1386:
ba RET1386
nop


P1327: !_MEMBAR (FP)

P1328: !_BST [7] (maybe <- 0x41000039) (FP) (Branch target of P1319)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi
ba P1329
nop

TARGET1319:
ba RET1319
nop


P1329: !_MEMBAR (FP)
membar #StoreLoad

P1330: !_FLUSH [3] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1330
nop
RET1330:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1331: !_REPLACEMENT [7] (Int)
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

P1332: !_REPLACEMENT [27] (Int)
sethi %hi(0x2000), %l6
ld [%i2+160], %o5
st %o5, [%i2+160]
add %i2, %l6, %l7
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

P1333: !_REPLACEMENT [6] (Int)
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

P1334: !_REPLACEMENT [33] (Int)
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

P1335: !_REPLACEMENT [30] (Int) (CBR) (Branch target of P1384)
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
be,pt  %xcc, TARGET1335
nop
RET1335:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1336
nop

TARGET1384:
ba RET1384
nop


P1336: !_REPLACEMENT [4] (Int) (CBR)
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
be,pn  %xcc, TARGET1336
nop
RET1336:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1337: !_MEMBAR (FP)

P1338: !_BST [2] (maybe <- 0x4100003a) (FP)
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

P1339: !_MEMBAR (FP) (Branch target of P1245)
membar #StoreLoad
ba P1340
nop

TARGET1245:
ba RET1245
nop


P1340: !_REPLACEMENT [32] (Int) (Secondary ctx)
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

P1341: !_FLUSHI [8] (Int)
flush %g0 

P1342: !_REPLACEMENT [5] (Int)
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

P1343: !_MEMBAR (FP)

P1344: !_BSTC [21] (maybe <- 0x4100003f) (FP)
wr %g0, 0xe0, %asi
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

P1345: !_MEMBAR (FP)
membar #StoreLoad

P1346: !_REPLACEMENT [27] (Int) (Secondary ctx) (Branch target of P1406)
wr %g0, 0x81, %asi
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
ba P1347
nop

TARGET1406:
ba RET1406
nop


P1347: !_IDC_FLIP [29] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1347, 13065, 3, 0x46000004, 0x4, %i2, 0x4, %l6, %l7, %o5, %l3)

P1348: !_REPLACEMENT [21] (Int)
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

P1349: !_REPLACEMENT [33] (Int)
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

P1350: !_LD [1] (FP)
ld [%i0 + 4], %f13
! 1 addresses covered

P1351: !_REPLACEMENT [21] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1352: !_REPLACEMENT [13] (Int)
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

P1353: !_REPLACEMENT [19] (Int) (Secondary ctx)
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

P1354: !_REPLACEMENT [1] (Int)
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

P1355: !_REPLACEMENT [22] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1355
nop
RET1355:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1356: !_MEMBAR (FP)

P1357: !_BST [11] (maybe <- 0x41000042) (FP)
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

P1358: !_MEMBAR (FP) (Branch target of P1232)
membar #StoreLoad
ba P1359
nop

TARGET1232:
ba RET1232
nop


P1359: !_REPLACEMENT [4] (Int)
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

P1360: !_REPLACEMENT [1] (Int) (Secondary ctx)
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

P1361: !_REPLACEMENT [34] (Int)
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

P1362: !_REPLACEMENT [28] (Int)
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

P1363: !_LD [29] (FP) (Nucleus ctx) (Branch target of P1200)
wr %g0, 0x4, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 4] %asi, %f14
! 1 addresses covered
ba P1364
nop

TARGET1200:
ba RET1200
nop


P1364: !_REPLACEMENT [11] (Int)
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

P1365: !_REPLACEMENT [3] (Int)
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

P1366: !_REPLACEMENT [6] (Int) (Secondary ctx)
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

P1367: !_REPLACEMENT [26] (Int)
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

P1368: !_ST [27] (maybe <- 0x41000045) (FP) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 160 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1368
nop
RET1368:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1369: !_MEMBAR (FP)
membar #StoreLoad

P1370: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
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

P1371: !_MEMBAR (FP)

P1372: !_BST [18] (maybe <- 0x41000046) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P1373: !_MEMBAR (FP) (Branch target of P1335)
membar #StoreLoad
ba P1374
nop

TARGET1335:
ba RET1335
nop


P1374: !_REPLACEMENT [23] (Int)
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

P1375: !_REPLACEMENT [20] (Int) (Secondary ctx)
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

P1376: !_MEMBAR (FP) (Branch target of P1301)
membar #StoreLoad
ba P1377
nop

TARGET1301:
ba RET1301
nop


P1377: !_BLD [16] (FP) (Branch target of P1425)
wr %g0, 0xf0, %asi
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 1 addresses covered
fmovd %f4, %f0
ba P1378
nop

TARGET1425:
ba RET1425
nop


P1378: !_MEMBAR (FP) (Branch target of P1405)
ba P1379
nop

TARGET1405:
ba RET1405
nop


P1379: !_BST [26] (maybe <- 0x41000047) (FP) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1379
nop
RET1379:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1380: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1380
nop
RET1380:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1381: !_LD [1] (FP) (CBR)
ld [%i0 + 4], %f1
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1381
nop
RET1381:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1382: !_REPLACEMENT [13] (Int)
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

P1383: !_REPLACEMENT [22] (Int) (Secondary ctx)
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

P1384: !_REPLACEMENT [19] (Int) (CBR)
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
be,pt  %xcc, TARGET1384
nop
RET1384:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1385: !_REPLACEMENT [31] (Int)
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

P1386: !_REPLACEMENT [14] (Int) (CBR)
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
be,pt  %xcc, TARGET1386
nop
RET1386:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1387: !_REPLACEMENT [23] (Int)
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

P1388: !_REPLACEMENT [10] (Int)
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

P1389: !_MEMBAR (FP) (CBR) (Branch target of P1536)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1389
nop
RET1389:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1390
nop

TARGET1536:
ba RET1536
nop


P1390: !_BST [29] (maybe <- 0x41000049) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P1391: !_MEMBAR (FP)
membar #StoreLoad

P1392: !_REPLACEMENT [26] (Int) (Secondary ctx) (Branch target of P1496)
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
ba P1393
nop

TARGET1496:
ba RET1496
nop


P1393: !_IDC_FLIP [26] (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1393, 21295, 3, 0x45800080, 0x80, %i2, 0x80, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1393
nop
RET1393:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1394: !_LD [16] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 16], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

P1395: !_IDC_FLIP [0] (Int)
IDC_FLIP(1395, 14826, 3, 0x43000000, 0x0, %i0, 0x0, %l6, %l7, %o5, %l3)

P1396: !_REPLACEMENT [2] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P1397: !_REPLACEMENT [24] (Int) (Nucleus ctx)
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

P1398: !_LD [14] (FP) (Secondary ctx) (Branch target of P1412)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 64] %asi, %f2
! 1 addresses covered
ba P1399
nop

TARGET1412:
ba RET1412
nop


P1399: !_REPLACEMENT [24] (Int) (Loop exit)
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
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_3_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_0
nop

P1400: !_REPLACEMENT [30] (Int) (Loop entry)
sethi %hi(0x6), %l2
or %l2, %lo(0x6),  %l2
loop_entry_3_1:
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

P1401: !_REPLACEMENT [7] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1402: !_LD [21] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered

P1403: !_REPLACEMENT [20] (Int) (Secondary ctx)
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

P1404: !_MEMBAR (FP)

P1405: !_BSTC [16] (maybe <- 0x4100004c) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1405
nop
RET1405:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1406: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1406
nop
RET1406:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1407: !_REPLACEMENT [33] (Int) (Branch target of P1270)
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
ba P1408
nop

TARGET1270:
ba RET1270
nop


P1408: !_REPLACEMENT [27] (Int)
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

P1409: !_IDC_FLIP [20] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1409, 22403, 3, 0x45000100, 0x100, %i2, 0x100, %l6, %l7, %o5, %l3)

P1410: !_REPLACEMENT [21] (Int) (Branch target of P1379)
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
ba P1411
nop

TARGET1379:
ba RET1379
nop


P1411: !_REPLACEMENT [0] (Int)
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

P1412: !_ST [15] (maybe <- 0x1800005) (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 128] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1412
nop
RET1412:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1413: !_REPLACEMENT [0] (Int)
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

P1414: !_LD [2] (Int) (CBR)
lduw [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1414
nop
RET1414:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1415: !_MEMBAR (FP)

P1416: !_BST [6] (maybe <- 0x4100004d) (FP)
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

P1417: !_MEMBAR (FP)
membar #StoreLoad

P1418: !_LD [3] (Int)
lduw [%i0 + 16], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1419: !_REPLACEMENT [31] (Int)
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

P1420: !_REPLACEMENT [8] (Int) (Secondary ctx)
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

P1421: !_REPLACEMENT [23] (Int) (Branch target of P1297)
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
ba P1422
nop

TARGET1297:
ba RET1297
nop


P1422: !_REPLACEMENT [12] (Int) (CBR)
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
be,pt  %xcc, TARGET1422
nop
RET1422:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1423: !_REPLACEMENT [12] (Int) (CBR) (Branch target of P1290)
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
be,pt  %xcc, TARGET1423
nop
RET1423:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1424
nop

TARGET1290:
ba RET1290
nop


P1424: !_REPLACEMENT [30] (Int) (CBR) (Secondary ctx) (Branch target of P1283)
wr %g0, 0x81, %asi
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
be,pt  %xcc, TARGET1424
nop
RET1424:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1425
nop

TARGET1283:
ba RET1283
nop


P1425: !_MEMBAR (FP) (CBR) (Branch target of P1484)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1425
nop
RET1425:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1426
nop

TARGET1484:
ba RET1484
nop


P1426: !_BLD [14] (FP) (Branch target of P1323)
wr %g0, 0xf0, %asi
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
ba P1427
nop

TARGET1323:
ba RET1323
nop


P1427: !_MEMBAR (FP)

P1428: !_REPLACEMENT [23] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1429: !_ST [8] (maybe <- 0x4100004f) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 0 ]

P1430: !_PREFETCH [27] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 160] %asi, 1

P1431: !_REPLACEMENT [9] (Int)
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

P1432: !_REPLACEMENT [21] (Int)
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

P1433: !_REPLACEMENT [0] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1433
nop
RET1433:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1434: !_REPLACEMENT [33] (Int)
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

P1435: !_ST [0] (maybe <- 0x41000050) (FP) (Branch target of P1267)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]
ba P1436
nop

TARGET1267:
ba RET1267
nop


P1436: !_REPLACEMENT [24] (Int)
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

P1437: !_REPLACEMENT [7] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1438: !_REPLACEMENT [3] (Int)
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

P1439: !_LD [5] (Int)
lduw [%i0 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1440: !_REPLACEMENT [15] (Int) (Branch target of P1467)
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
ba P1441
nop

TARGET1467:
ba RET1467
nop


P1441: !_REPLACEMENT [13] (Int) (Branch target of P1512)
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
ba P1442
nop

TARGET1512:
ba RET1512
nop


P1442: !_LD [18] (FP) (Branch target of P1286)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 128], %f2
! 1 addresses covered
ba P1443
nop

TARGET1286:
ba RET1286
nop


P1443: !_REPLACEMENT [14] (Int) (Secondary ctx) (Branch target of P1490)
wr %g0, 0x81, %asi
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
ba P1444
nop

TARGET1490:
ba RET1490
nop


P1444: !_REPLACEMENT [28] (Int)
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

P1445: !_IDC_FLIP [27] (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1445, 20297, 3, 0x458000a0, 0xa0, %i2, 0xa0, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1445
nop
RET1445:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1446: !_REPLACEMENT [6] (Int)
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

P1447: !_REPLACEMENT [15] (Int) (Secondary ctx)
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

P1448: !_REPLACEMENT [11] (Int)
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

P1449: !_REPLACEMENT [3] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1450: !_ST [21] (maybe <- 0x1800006) (Int)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1451: !_LD [15] (Int) (Branch target of P1330)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 128], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
ba P1452
nop

TARGET1330:
ba RET1330
nop


P1452: !_ST [16] (maybe <- 0x1800007) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stwa   %l4, [%i2 + 16] %asi
add   %l4, 1, %l4

P1453: !_REPLACEMENT [17] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
be,pt  %xcc, TARGET1453
nop
RET1453:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1454: !_REPLACEMENT [11] (Int) (CBR)
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
be,pt  %xcc, TARGET1454
nop
RET1454:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1455: !_FLUSH [13] (Int) (Branch target of P1203)
! Unsupported instruction
ba P1456
nop

TARGET1203:
ba RET1203
nop


P1456: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1456
nop
RET1456:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1457: !_BST [28] (maybe <- 0x41000051) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
be,pn  %xcc, TARGET1457
nop
RET1457:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1458: !_MEMBAR (FP)
membar #StoreLoad

P1459: !_REPLACEMENT [2] (Int)
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

P1460: !_REPLACEMENT [11] (Int)
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

P1461: !_MEMBAR (FP)

P1462: !_BST [15] (maybe <- 0x41000054) (FP) (Branch target of P1445)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi
ba P1463
nop

TARGET1445:
ba RET1445
nop


P1463: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1463
nop
RET1463:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1464: !_FLUSHI [10] (Int)
flush %g0 

P1465: !_LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1466: !_LD [21] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f3
! 1 addresses covered

P1467: !_FLUSHI [21] (Int) (CBR)
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1467
nop
RET1467:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1468: !_MEMBAR (FP) (Branch target of P1302)
membar #StoreLoad
ba P1469
nop

TARGET1302:
ba RET1302
nop


P1469: !_BLD [6] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f4
fmovd %f40, %f18
fmovs %f18, %f5

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1469
nop
RET1469:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1470: !_MEMBAR (FP) (Branch target of P1204)
ba P1471
nop

TARGET1204:
ba RET1204
nop


P1471: !_REPLACEMENT [9] (Int)
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

P1472: !_REPLACEMENT [30] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1473: !_MEMBAR (FP)
membar #StoreLoad

P1474: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f6
fmovd %f40, %f18
fmovs %f18, %f7

P1475: !_MEMBAR (FP)

P1476: !_ST [8] (maybe <- 0x1800008) (Int)
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

P1477: !_REPLACEMENT [9] (Int) (CBR)
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
be,pt  %xcc, TARGET1477
nop
RET1477:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1478: !_REPLACEMENT [33] (Int)
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

P1479: !_REPLACEMENT [15] (Int) (CBR)
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
be,pn  %xcc, TARGET1479
nop
RET1479:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1480: !_REPLACEMENT [13] (Int) (CBR)
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
be,pn  %xcc, TARGET1480
nop
RET1480:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1481: !_REPLACEMENT [28] (Int)
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

P1482: !_LD [3] (Int)
lduw [%i0 + 16], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1483: !_REPLACEMENT [9] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1484: !_ST [0] (maybe <- 0x41000055) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1484
nop
RET1484:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1485: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1486: !_BLD [11] (FP) (Secondary ctx) (Branch target of P1469)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f40, %f10
ba P1487
nop

TARGET1469:
ba RET1469
nop


P1487: !_MEMBAR (FP) (Secondary ctx)

P1488: !_REPLACEMENT [34] (Int) (CBR) (Branch target of P1193)
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
be,pn  %xcc, TARGET1488
nop
RET1488:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1489
nop

TARGET1193:
ba RET1193
nop


P1489: !_ST [34] (maybe <- 0x1800009) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P1490: !_MEMBAR (FP) (CBR) (Branch target of P1317)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1490
nop
RET1490:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1491
nop

TARGET1317:
ba RET1317
nop


P1491: !_BST [18] (maybe <- 0x41000056) (FP) (Branch target of P1423)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi
ba P1492
nop

TARGET1423:
ba RET1423
nop


P1492: !_MEMBAR (FP) (Branch target of P1414)
membar #StoreLoad
ba P1493
nop

TARGET1414:
ba RET1414
nop


P1493: !_FLUSH [4] (Int) (Branch target of P1206)
! Unsupported instruction
ba P1494
nop

TARGET1206:
ba RET1206
nop


P1494: !_REPLACEMENT [15] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1495: !_REPLACEMENT [7] (Int) (CBR)
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
be,pt  %xcc, TARGET1495
nop
RET1495:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1496: !_MEMBAR (FP) (CBR)
membar #StoreLoad

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


P1497: !_BLD [8] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i1 + 0] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovd %f40, %f12

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1497
nop
RET1497:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1498: !_MEMBAR (FP)

P1499: !_BLD [3] (FP) (Branch target of P1380)
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
ba P1500
nop

TARGET1380:
ba RET1380
nop


P1500: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1500
nop
RET1500:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1501: !_REPLACEMENT [22] (Int)
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

P1502: !_REPLACEMENT [24] (Int)
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

P1503: !_ST [27] (maybe <- 0x180000a) (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 160 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1503
nop
RET1503:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1504: !_IDC_FLIP [5] (Int)
IDC_FLIP(1504, 23856, 3, 0x43000040, 0x40, %i0, 0x40, %l6, %l7, %o5, %l3)

P1505: !_REPLACEMENT [33] (Int)
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

P1506: !_REPLACEMENT [28] (Int)
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

P1507: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1507
nop
RET1507:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1508: !_BLD [27] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P1509: !_MEMBAR (FP) (Secondary ctx)

P1510: !_REPLACEMENT [2] (Int)
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

P1511: !_REPLACEMENT [25] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1512: !_REPLACEMENT [0] (Int) (CBR)
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
be,pn  %xcc, TARGET1512
nop
RET1512:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1513: !_REPLACEMENT [2] (Int)
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

P1514: !_ST [13] (maybe <- 0x180000b) (Int) (Secondary ctx) (Branch target of P1261)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 32] %asi
add   %l4, 1, %l4
ba P1515
nop

TARGET1261:
ba RET1261
nop


P1515: !_IDC_FLIP [7] (Int)
IDC_FLIP(1515, 11167, 3, 0x43000080, 0x80, %i0, 0x80, %l6, %l7, %o5, %l3)

P1516: !_REPLACEMENT [6] (Int)
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

P1517: !_MEMBAR (FP)

P1518: !_BST [6] (maybe <- 0x41000057) (FP) (CBR)
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
be,pt  %xcc, TARGET1518
nop
RET1518:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1519: !_MEMBAR (FP)
membar #StoreLoad

P1520: !_REPLACEMENT [3] (Int) (Branch target of P1454)
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
ba P1521
nop

TARGET1454:
ba RET1454
nop


P1521: !_LD [23] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1522: !_REPLACEMENT [14] (Int) (Nucleus ctx)
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

P1523: !_ST [14] (maybe <- 0x41000059) (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

P1524: !_REPLACEMENT [22] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P1525: !_REPLACEMENT [24] (Int)
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

P1526: !_MEMBAR (FP) (Branch target of P1158)
ba P1527
nop

TARGET1158:
ba RET1158
nop


P1527: !_BST [16] (maybe <- 0x4100005a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1528: !_MEMBAR (FP) (Branch target of P1184)
membar #StoreLoad
ba P1529
nop

TARGET1184:
ba RET1184
nop


P1529: !_PREFETCH [9] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
prefetcha [%i1 + 32] %asi, 1

P1530: !_REPLACEMENT [22] (Int) (Branch target of P1480)
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
ba P1531
nop

TARGET1480:
ba RET1480
nop


P1531: !_REPLACEMENT [30] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1532: !_MEMBAR (FP)

P1533: !_BST [5] (maybe <- 0x4100005b) (FP)
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

P1534: !_MEMBAR (FP)
membar #StoreLoad

P1535: !_BLD [30] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f40, %f6

P1536: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1536
nop
RET1536:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1537: !_BST [1] (maybe <- 0x4100005d) (FP)
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

P1538: !_MEMBAR (FP)
membar #StoreLoad

P1539: !_LD [32] (Int) (Loop exit) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i3 + 96] %asi, %l7
! move %l7(lower) -> %o3(lower)
or %l7, %o3, %o3
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovs %f6, %f30
!--
loop_exit_3_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_1
nop

P1540: !_MEMBAR (Int) (Branch target of P1477)
membar #StoreLoad
ba END_NODES3
nop

TARGET1477:
ba RET1477
nop


END_NODES3: ! Test instruction sequence for CPU 3 ends
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
sethi %hi(0x04deade1), %o5
or    %o5, %lo(0x04deade1), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x2000001), %l4
or    %l4, %lo(0x2000001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x41800001), %o5
or    %o5, %lo(0x41800001), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x36000000), %o5
or    %o5, %lo(0x36000000), %o5
stw %o5, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x53dd^4
sethi %hi(0x53dd), %l0
or    %l0, %lo(0x53dd), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES4: ! Test instruction sequence for ISTREAM 4 begins

P1541: !_ST [7] (maybe <- 0x41800001) (FP) (Loop entry)
sethi %hi(0x6), %l2
or %l2, %lo(0x6),  %l2
loop_entry_4_0:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 128 ]

P1542: !_REPLACEMENT [1] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1543: !_REPLACEMENT [22] (Int)
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

P1544: !_LD [25] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 96], %f0
! 1 addresses covered

P1545: !_MEMBAR (FP) (Secondary ctx)

P1546: !_BSTC [29] (maybe <- 0x41800002) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P1547: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1547
nop
RET1547:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1548: !_REPLACEMENT [24] (Int)
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

P1549: !_PREFETCH [4] (Int) (Loop exit)
prefetch [%i0 + 32], 1
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_0
nop

P1550: !_REPLACEMENT [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_1:
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

P1551: !_REPLACEMENT [17] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
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
be,pt  %xcc, TARGET1551
nop
RET1551:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1552: !_IDC_FLIP [10] (Int) (CBR) (Branch target of P1675)
IDC_FLIP(1552, 25045, 4, 0x43800040, 0x40, %i1, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1552
nop
RET1552:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1553
nop

TARGET1675:
ba RET1675
nop


P1553: !_ST [6] (maybe <- 0x2000001) (Int) (CBR)
stw   %l4, [%i0 + 96 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1553
nop
RET1553:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1554: !_REPLACEMENT [32] (Int)
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

P1555: !_FLUSH [1] (Int)
! Unsupported instruction

P1556: !_REPLACEMENT [8] (Int) (Secondary ctx) (Branch target of P1592)
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
ba P1557
nop

TARGET1592:
ba RET1592
nop


P1557: !_MEMBAR (FP) (Branch target of P1735)
ba P1558
nop

TARGET1735:
ba RET1735
nop


P1558: !_BST [17] (maybe <- 0x41800005) (FP) (Branch target of P1645)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi
ba P1559
nop

TARGET1645:
ba RET1645
nop


P1559: !_MEMBAR (FP)
membar #StoreLoad

P1560: !_REPLACEMENT [33] (Int) (CBR)
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
be,pt  %xcc, TARGET1560
nop
RET1560:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1561: !_LD [33] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1562: !_MEMBAR (FP)

P1563: !_BSTC [27] (maybe <- 0x41800006) (FP)
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
stda %f32, [%i3 + 128 ] %asi

P1564: !_MEMBAR (FP)

P1565: !_BSTC [11] (maybe <- 0x41800008) (FP)
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

P1566: !_MEMBAR (FP)
membar #StoreLoad

P1567: !_REPLACEMENT [21] (Int)
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

P1568: !_REPLACEMENT [33] (Int)
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

P1569: !_REPLACEMENT [24] (Int) (CBR)
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
be,pn  %xcc, TARGET1569
nop
RET1569:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1570: !_MEMBAR (FP)

P1571: !_BST [19] (maybe <- 0x4180000b) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1572: !_MEMBAR (FP)
membar #StoreLoad

P1573: !_REPLACEMENT [13] (Int) (Branch target of P1584)
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
ba P1574
nop

TARGET1584:
ba RET1584
nop


P1574: !_REPLACEMENT [12] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1574
nop
RET1574:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1575: !_REPLACEMENT [9] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pn  %xcc, TARGET1575
nop
RET1575:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1576: !_REPLACEMENT [29] (Int) (Secondary ctx)
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

P1577: !_FLUSH [14] (Int) (CBR) (Branch target of P1574)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1577
nop
RET1577:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1578
nop

TARGET1574:
ba RET1574
nop


P1578: !_MEMBAR (FP) (Secondary ctx)

P1579: !_BSTC [3] (maybe <- 0x4180000c) (FP) (Secondary ctx)
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

P1580: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1581: !_ST [7] (maybe <- 0x41800011) (FP) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1581
nop
RET1581:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1582: !_MEMBAR (FP)

P1583: !_BST [29] (maybe <- 0x41800012) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P1584: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1584
nop
RET1584:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1585: !_PREFETCH [23] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 32], 1

P1586: !_REPLACEMENT [27] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x2000), %l7
ld [%i3+160], %l3
st %l3, [%i3+160]
add %i3, %l7, %o5
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

P1587: !_ST [24] (maybe <- 0x2000002) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1588: !_REPLACEMENT [21] (Int) (CBR)
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
be,pt  %xcc, TARGET1588
nop
RET1588:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1589: !_MEMBAR (FP)
membar #StoreLoad

P1590: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f0
membar #Sync
! 1 addresses covered

P1591: !_MEMBAR (FP)

P1592: !_REPLACEMENT [11] (Int) (CBR)
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
be,pt  %xcc, TARGET1592
nop
RET1592:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1593: !_IDC_FLIP [7] (Int)
IDC_FLIP(1593, 10406, 4, 0x43000080, 0x80, %i0, 0x80, %l6, %l7, %o5, %l3)

P1594: !_REPLACEMENT [33] (Int) (Secondary ctx)
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

P1595: !_REPLACEMENT [2] (Int)
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

P1596: !_REPLACEMENT [27] (Int) (CBR)
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
be,pn  %xcc, TARGET1596
nop
RET1596:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1597: !_REPLACEMENT [1] (Int) (Nucleus ctx) (Branch target of P1631)
wr %g0, 0x4, %asi
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
ba P1598
nop

TARGET1631:
ba RET1631
nop


P1598: !_REPLACEMENT [12] (Int) (Branch target of P1588)
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
ba P1599
nop

TARGET1588:
ba RET1588
nop


P1599: !_LD [17] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 96], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1599
nop
RET1599:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1600: !_REPLACEMENT [10] (Int) (Secondary ctx)
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

P1601: !_FLUSH [5] (Int)
! Unsupported instruction

P1602: !_MEMBAR (FP)

P1603: !_BSTC [12] (maybe <- 0x41800015) (FP) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1603
nop
RET1603:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1604: !_MEMBAR (FP)
membar #StoreLoad

P1605: !_REPLACEMENT [27] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+160], %l6
st %l6, [%i2+160]
add %i2, %o5, %l3
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

P1606: !_REPLACEMENT [20] (Int) (CBR) (Secondary ctx) (Branch target of P1599)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1606
nop
RET1606:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1607
nop

TARGET1599:
ba RET1599
nop


P1607: !_IDC_FLIP [20] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1607, 556, 4, 0x45000100, 0x100, %i3, 0x100, %l6, %l7, %o5, %l3)

P1608: !_REPLACEMENT [8] (Int) (Branch target of P1575)
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
ba P1609
nop

TARGET1575:
ba RET1575
nop


P1609: !_ST [15] (maybe <- 0x2000003) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4

P1610: !_FLUSHI [31] (Int)
flush %g0 

P1611: !_REPLACEMENT [24] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P1612: !_REPLACEMENT [28] (Int) (Branch target of P1577)
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
ba P1613
nop

TARGET1577:
ba RET1577
nop


P1613: !_MEMBAR (FP)

P1614: !_BSTC [4] (maybe <- 0x41800018) (FP) (Branch target of P1581)
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
ba P1615
nop

TARGET1581:
ba RET1581
nop


P1615: !_MEMBAR (FP)
membar #StoreLoad

P1616: !_ST [21] (maybe <- 0x4180001d) (FP) (Branch target of P1551)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]
ba P1617
nop

TARGET1551:
ba RET1551
nop


P1617: !_REPLACEMENT [7] (Int) (Secondary ctx)
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

P1618: !_REPLACEMENT [9] (Int)
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

P1619: !_REPLACEMENT [20] (Int) (CBR)
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
be,pn  %xcc, TARGET1619
nop
RET1619:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1620: !_FLUSHI [19] (Int) (Branch target of P1603)
flush %g0 
ba P1621
nop

TARGET1603:
ba RET1603
nop


P1621: !_PREFETCH [22] (Int) (CBR) (Branch target of P1634)
prefetch [%i2 + 4], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1621
nop
RET1621:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1622
nop

TARGET1634:
ba RET1634
nop


P1622: !_REPLACEMENT [19] (Int)
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

P1623: !_REPLACEMENT [31] (Int)
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

P1624: !_REPLACEMENT [27] (Int) (Nucleus ctx) (Branch target of P1619)
wr %g0, 0x4, %asi
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
ba P1625
nop

TARGET1619:
ba RET1619
nop


P1625: !_REPLACEMENT [25] (Int)
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

P1626: !_REPLACEMENT [20] (Int)
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

P1627: !_MEMBAR (FP) (Branch target of P1726)
membar #StoreLoad
ba P1628
nop

TARGET1726:
ba RET1726
nop


P1628: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovd %f40, %f2

P1629: !_MEMBAR (FP) (Loop exit) (Branch target of P1780)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_4_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_1
nop
ba P1630
nop

TARGET1780:
ba RET1780
nop


P1630: !_ST [28] (maybe <- 0x2000004) (Int) (Loop entry)
sethi %hi(0x5), %l2
or %l2, %lo(0x5),  %l2
loop_entry_4_2:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1631: !_MEMBAR (FP) (CBR)

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


P1632: !_BST [12] (maybe <- 0x4180001e) (FP)
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

P1633: !_MEMBAR (FP)
membar #StoreLoad

P1634: !_FLUSHI [34] (Int) (CBR)
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1634
nop
RET1634:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1635: !_REPLACEMENT [22] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P1636: !_MEMBAR (FP) (Branch target of P1701)
membar #StoreLoad
ba P1637
nop

TARGET1701:
ba RET1701
nop


P1637: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2

P1638: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1638
nop
RET1638:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1639: !_REPLACEMENT [18] (Int) (CBR) (Branch target of P1639)
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
be,pt  %xcc, TARGET1639
nop
RET1639:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1640
nop

TARGET1639:
ba RET1639
nop


P1640: !_REPLACEMENT [31] (Int) (Secondary ctx)
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

P1641: !_LD [16] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 16] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1642: !_REPLACEMENT [27] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x2000), %o5
ld [%i2+160], %l6
st %l6, [%i2+160]
add %i2, %o5, %l3
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

P1643: !_ST [26] (maybe <- 0x41800021) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P1644: !_REPLACEMENT [32] (Int) (Secondary ctx)
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

P1645: !_MEMBAR (Int) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1645
nop
RET1645:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1646: !_BSTC [17] (maybe <- 0x41800022) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P1647: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1648: !_REPLACEMENT [14] (Int)
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

P1649: !_REPLACEMENT [13] (Int) (Nucleus ctx) (Branch target of P1547)
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
ba P1650
nop

TARGET1547:
ba RET1547
nop


P1650: !_REPLACEMENT [16] (Int)
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

P1651: !_REPLACEMENT [20] (Int) (Branch target of P1811)
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
ba P1652
nop

TARGET1811:
ba RET1811
nop


P1652: !_MEMBAR (FP)
membar #StoreLoad

P1653: !_BLD [34] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P1654: !_MEMBAR (FP) (Branch target of P1755)
ba P1655
nop

TARGET1755:
ba RET1755
nop


P1655: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f4
fmovd %f34, %f6
fmovd %f36, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P1656: !_MEMBAR (FP)

P1657: !_LD [22] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f9
! 1 addresses covered

P1658: !_PREFETCH [22] (Int)
prefetch [%i3 + 4], 1

P1659: !_REPLACEMENT [5] (Int) (CBR) (Branch target of P1769)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1659
nop
RET1659:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1660
nop

TARGET1769:
ba RET1769
nop


P1660: !_ST [34] (maybe <- 0x41800023) (FP) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i3 + 64 ] %asi

P1661: !_LD [3] (Int) (CBR) (Branch target of P1552)
lduw [%i0 + 16], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1661
nop
RET1661:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1662
nop

TARGET1552:
ba RET1552
nop


P1662: !_REPLACEMENT [34] (Int)
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

P1663: !_PREFETCH [23] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 32] %asi, 1

P1664: !_REPLACEMENT [29] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1665: !_MEMBAR (FP)
membar #StoreLoad

P1666: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f10
fmovd %f40, %f18
fmovs %f18, %f11

P1667: !_MEMBAR (FP)

P1668: !_REPLACEMENT [21] (Int) (Branch target of P1659)
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
ba P1669
nop

TARGET1659:
ba RET1659
nop


P1669: !_REPLACEMENT [5] (Int)
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

P1670: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1670
nop
RET1670:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1671: !_BSTC [26] (maybe <- 0x41800024) (FP)
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

P1672: !_MEMBAR (FP)
membar #StoreLoad

P1673: !_LD [21] (FP)
ld [%i2 + 0], %f12
! 1 addresses covered

P1674: !_MEMBAR (FP)

P1675: !_BSTC [28] (maybe <- 0x41800026) (FP) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
be,pt  %xcc, TARGET1675
nop
RET1675:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1676: !_MEMBAR (FP)
membar #StoreLoad

P1677: !_BLD [24] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14

P1678: !_MEMBAR (FP) (Secondary ctx)

P1679: !_REPLACEMENT [24] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1680: !_PREFETCH [2] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
prefetcha [%i0 + 8] %asi, 1

P1681: !_REPLACEMENT [0] (Int)
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

P1682: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1682
nop
RET1682:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1683: !_BLD [25] (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1683
nop
RET1683:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1684: !_MEMBAR (FP) (Secondary ctx)

P1685: !_REPLACEMENT [32] (Int) (CBR)
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
be,pt  %xcc, TARGET1685
nop
RET1685:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1686: !_MEMBAR (FP)

P1687: !_BST [29] (maybe <- 0x41800029) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P1688: !_MEMBAR (FP)
membar #StoreLoad

P1689: !_PREFETCH [20] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 256] %asi, 1

P1690: !_REPLACEMENT [2] (Int)
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

P1691: !_REPLACEMENT [27] (Int)
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

P1692: !_MEMBAR (FP)

P1693: !_BST [7] (maybe <- 0x4180002c) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P1694: !_MEMBAR (FP) (Branch target of P1794)
membar #StoreLoad
ba P1695
nop

TARGET1794:
ba RET1794
nop


P1695: !_FLUSH [12] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1695
nop
RET1695:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1696: !_REPLACEMENT [3] (Int)
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

P1697: !_REPLACEMENT [14] (Int)
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

P1698: !_REPLACEMENT [24] (Int) (Secondary ctx)
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

P1699: !_REPLACEMENT [13] (Int) (Secondary ctx) (Branch target of P1789)
wr %g0, 0x81, %asi
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
ba P1700
nop

TARGET1789:
ba RET1789
nop


P1700: !_REPLACEMENT [28] (Int)
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

P1701: !_REPLACEMENT [30] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pt  %xcc, TARGET1701
nop
RET1701:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1702: !_REPLACEMENT [15] (Int) (Nucleus ctx)
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

P1703: !_REPLACEMENT [6] (Int)
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

P1704: !_REPLACEMENT [22] (Int)
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

P1705: !_ST [4] (maybe <- 0x2000005) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1706: !_REPLACEMENT [32] (Int)
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

P1707: !_ST [17] (maybe <- 0x2000006) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 96 ]
add   %l4, 1, %l4

P1708: !_REPLACEMENT [27] (Int) (Branch target of P1752)
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
ba P1709
nop

TARGET1752:
ba RET1752
nop


P1709: !_MEMBAR (FP) (Branch target of P1560)
membar #StoreLoad
ba P1710
nop

TARGET1560:
ba RET1560
nop


P1710: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovd %f40, %f2

P1711: !_MEMBAR (FP)

P1712: !_REPLACEMENT [30] (Int)
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

P1713: !_REPLACEMENT [1] (Int) (Secondary ctx) (Branch target of P1569)
wr %g0, 0x81, %asi
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
ba P1714
nop

TARGET1569:
ba RET1569
nop


P1714: !_REPLACEMENT [9] (Int) (Secondary ctx)
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

P1715: !_MEMBAR (FP)
membar #StoreLoad

P1716: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovs %f19, %f4
fmovd %f40, %f18
fmovs %f18, %f5

P1717: !_MEMBAR (FP) (Branch target of P1638)
ba P1718
nop

TARGET1638:
ba RET1638
nop


P1718: !_REPLACEMENT [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
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

P1719: !_REPLACEMENT [9] (Int)
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

P1720: !_LD [10] (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i1 + 64] %asi, %f6
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1720
nop
RET1720:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1721: !_REPLACEMENT [34] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1722: !_MEMBAR (FP)

P1723: !_BSTC [3] (maybe <- 0x4180002d) (FP)
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

P1724: !_MEMBAR (FP)
membar #StoreLoad

P1725: !_REPLACEMENT [19] (Int)
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

P1726: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1726
nop
RET1726:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1727: !_BSTC [26] (maybe <- 0x41800032) (FP) (Branch target of P1720)
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
stda %f32, [%i3 + 128 ] %asi
ba P1728
nop

TARGET1720:
ba RET1720
nop


P1728: !_MEMBAR (FP) (Branch target of P1683)
membar #StoreLoad
ba P1729
nop

TARGET1683:
ba RET1683
nop


P1729: !_REPLACEMENT [12] (Int) (Secondary ctx)
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

P1730: !_REPLACEMENT [18] (Int)
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

P1731: !_REPLACEMENT [19] (Int) (CBR)
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
be,pt  %xcc, TARGET1731
nop
RET1731:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1732: !_REPLACEMENT [27] (Int)
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

P1733: !_MEMBAR (FP)

P1734: !_BST [16] (maybe <- 0x41800034) (FP) (Branch target of P1682)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P1735
nop

TARGET1682:
ba RET1682
nop


P1735: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1735
nop
RET1735:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1736: !_IDC_FLIP [31] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1736, 8301, 4, 0x46000040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

P1737: !_REPLACEMENT [30] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1738: !_REPLACEMENT [29] (Int)
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

P1739: !_REPLACEMENT [16] (Int)
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

P1740: !_LD [23] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1741: !_REPLACEMENT [0] (Int)
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

P1742: !_FLUSH [22] (Int)
! Unsupported instruction

P1743: !_REPLACEMENT [31] (Int)
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

P1744: !_LD [15] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 128], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1

P1745: !_ST [33] (maybe <- 0x41800035) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P1746: !_REPLACEMENT [13] (Int)
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

P1747: !_PREFETCH [1] (Int) (CBR)
prefetch [%i0 + 4], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1747
nop
RET1747:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1748: !_REPLACEMENT [3] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1748
nop
RET1748:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1749: !_REPLACEMENT [10] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1750: !_REPLACEMENT [16] (Int)
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

P1751: !_LD [6] (Int) (Branch target of P1685)
lduw [%i0 + 96], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
ba P1752
nop

TARGET1685:
ba RET1685
nop


P1752: !_PREFETCH [2] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
prefetcha [%i0 + 8] %asi, 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1752
nop
RET1752:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1753: !_REPLACEMENT [22] (Int) (Branch target of P1786)
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
ba P1754
nop

TARGET1786:
ba RET1786
nop


P1754: !_IDC_FLIP [3] (Int)
IDC_FLIP(1754, 12068, 4, 0x43000010, 0x10, %i0, 0x10, %l6, %l7, %o5, %l3)

P1755: !_ST [24] (maybe <- 0x2000007) (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1755
nop
RET1755:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1756: !_REPLACEMENT [16] (Int) (Secondary ctx) (Branch target of P1621)
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
ba P1757
nop

TARGET1621:
ba RET1621
nop


P1757: !_ST [12] (maybe <- 0x2000008) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P1758: !_REPLACEMENT [13] (Int)
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

P1759: !_PREFETCH [19] (Int) (Branch target of P1747)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 1
ba P1760
nop

TARGET1747:
ba RET1747
nop


P1760: !_REPLACEMENT [31] (Int)
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

P1761: !_REPLACEMENT [19] (Int) (Secondary ctx)
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

P1762: !_REPLACEMENT [33] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1763: !_FLUSH [18] (Int)
! Unsupported instruction

P1764: !_MEMBAR (FP)

P1765: !_BST [20] (maybe <- 0x41800036) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 256 ] %asi

P1766: !_MEMBAR (FP)
membar #StoreLoad

P1767: !_REPLACEMENT [10] (Int) (CBR)
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
be,pt  %xcc, TARGET1767
nop
RET1767:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1768: !_REPLACEMENT [24] (Int)
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

P1769: !_REPLACEMENT [29] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
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
be,pt  %xcc, TARGET1769
nop
RET1769:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1770: !_ST [24] (maybe <- 0x2000009) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stwa   %l4, [%i3 + 64] %asi
add   %l4, 1, %l4

P1771: !_IDC_FLIP [9] (Int)
IDC_FLIP(1771, 29855, 4, 0x43800020, 0x20, %i1, 0x20, %l6, %l7, %o5, %l3)

P1772: !_ST [33] (maybe <- 0x200000a) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1773: !_REPLACEMENT [4] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1774: !_ST [7] (maybe <- 0x41800037) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 128 ]

P1775: !_ST [26] (maybe <- 0x200000b) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4

P1776: !_REPLACEMENT [22] (Int)
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

P1777: !_REPLACEMENT [13] (Int)
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

P1778: !_REPLACEMENT [20] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1779: !_REPLACEMENT [24] (Int) (Branch target of P1731)
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
ba P1780
nop

TARGET1731:
ba RET1731
nop


P1780: !_REPLACEMENT [25] (Int) (CBR)
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
be,pn  %xcc, TARGET1780
nop
RET1780:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1781: !_IDC_FLIP [23] (Int) (Branch target of P1767)
IDC_FLIP(1781, 29343, 4, 0x45800020, 0x20, %i2, 0x20, %l6, %l7, %o5, %l3)
ba P1782
nop

TARGET1767:
ba RET1767
nop


P1782: !_REPLACEMENT [2] (Int)
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

P1783: !_REPLACEMENT [32] (Int)
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

P1784: !_PREFETCH [29] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 1

P1785: !_REPLACEMENT [11] (Int)
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

P1786: !_REPLACEMENT [31] (Int) (CBR)
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
be,pn  %xcc, TARGET1786
nop
RET1786:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1787: !_MEMBAR (FP) (Branch target of P1661)
membar #StoreLoad
ba P1788
nop

TARGET1661:
ba RET1661
nop


P1788: !_BLD [0] (FP)
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

P1789: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1789
nop
RET1789:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1790: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P1791: !_MEMBAR (FP)

P1792: !_REPLACEMENT [16] (Int) (Secondary ctx)
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

P1793: !_REPLACEMENT [28] (Int)
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

P1794: !_REPLACEMENT [15] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1794
nop
RET1794:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1795: !_REPLACEMENT [15] (Int) (Secondary ctx) (Branch target of P1748)
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
ba P1796
nop

TARGET1748:
ba RET1748
nop


P1796: !_REPLACEMENT [11] (Int)
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

P1797: !_REPLACEMENT [8] (Int) (Branch target of P1670)
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
ba P1798
nop

TARGET1670:
ba RET1670
nop


P1798: !_REPLACEMENT [28] (Int)
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

P1799: !_REPLACEMENT [12] (Int)
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

P1800: !_FLUSH [31] (Int)
! Unsupported instruction

P1801: !_MEMBAR (FP) (Branch target of P1553)
membar #StoreLoad
ba P1802
nop

TARGET1553:
ba RET1553
nop


P1802: !_BLD [9] (FP)
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

P1803: !_MEMBAR (FP)

P1804: !_REPLACEMENT [15] (Int)
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

P1805: !_REPLACEMENT [1] (Int)
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

P1806: !_REPLACEMENT [8] (Int)
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

P1807: !_MEMBAR (FP)

P1808: !_BST [1] (maybe <- 0x41800038) (FP)
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

P1809: !_MEMBAR (FP)
membar #StoreLoad

P1810: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f0
membar #Sync
! 1 addresses covered
fmovd %f4, %f0

P1811: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1811
nop
RET1811:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1812: !_BST [4] (maybe <- 0x4180003d) (FP)
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

P1813: !_MEMBAR (FP)

P1814: !_BSTC [1] (maybe <- 0x41800042) (FP) (Branch target of P1606)
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
ba P1815
nop

TARGET1606:
ba RET1606
nop


P1815: !_MEMBAR (FP)
membar #StoreLoad

P1816: !_LD [21] (Int) (Loop exit) (Secondary ctx) (Branch target of P1596)
wr %g0, 0x81, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_2
nop
ba P1817
nop

TARGET1596:
ba RET1596
nop


P1817: !_MEMBAR (Int) (Branch target of P1695)
membar #StoreLoad
ba END_NODES4
nop

TARGET1695:
ba RET1695
nop


END_NODES4: ! Test instruction sequence for CPU 4 ends
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
sethi %hi(0x05deade1), %l7
or    %l7, %lo(0x05deade1), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x2800001), %l4
or    %l4, %lo(0x2800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x42000001), %l7
or    %l7, %lo(0x42000001), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x36800000), %l7
or    %l7, %lo(0x36800000), %l7
stw %l7, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x4023^4
sethi %hi(0x4023), %l0
or    %l0, %lo(0x4023), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES5: ! Test instruction sequence for ISTREAM 5 begins

P1818: !_REPLACEMENT [13] (Int) (Loop entry)
sethi %hi(0x6), %l2
or %l2, %lo(0x6),  %l2
loop_entry_5_0:
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

P1819: !_LD [0] (Int)
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1820: !_REPLACEMENT [16] (Int) (Nucleus ctx)
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

P1821: !_MEMBAR (FP)

P1822: !_BSTC [16] (maybe <- 0x42000001) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1823: !_MEMBAR (FP)
membar #StoreLoad

P1824: !_REPLACEMENT [25] (Int) (Secondary ctx)
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

P1825: !_MEMBAR (FP)

P1826: !_BSTC [16] (maybe <- 0x42000002) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1827: !_MEMBAR (FP)
membar #StoreLoad

P1828: !_REPLACEMENT [34] (Int)
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

P1829: !_REPLACEMENT [27] (Int) (CBR)
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
be,pn  %xcc, TARGET1829
nop
RET1829:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1830: !_MEMBAR (FP) (Secondary ctx)

P1831: !_BSTC [33] (maybe <- 0x42000003) (FP) (Secondary ctx)
wr %g0, 0xe1, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1832: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1833: !_REPLACEMENT [2] (Int)
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

P1834: !_REPLACEMENT [24] (Int)
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

P1835: !_REPLACEMENT [29] (Int)
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

P1836: !_IDC_FLIP [24] (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1836, 10346, 5, 0x45800040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1836
nop
RET1836:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1837: !_REPLACEMENT [2] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1837
nop
RET1837:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1838: !_MEMBAR (FP)

P1839: !_BST [22] (maybe <- 0x42000004) (FP)
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

P1840: !_MEMBAR (FP)
membar #StoreLoad

P1841: !_REPLACEMENT [16] (Int)
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

P1842: !_REPLACEMENT [19] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1842
nop
RET1842:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1843: !_REPLACEMENT [28] (Int) (Branch target of P2072)
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
ba P1844
nop

TARGET2072:
ba RET2072
nop


P1844: !_PREFETCH [32] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 96], 1

P1845: !_REPLACEMENT [8] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1846: !_REPLACEMENT [17] (Int) (CBR)
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
be,pn  %xcc, TARGET1846
nop
RET1846:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1847: !_REPLACEMENT [32] (Int) (Secondary ctx)
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

P1848: !_MEMBAR (FP)

P1849: !_BSTC [19] (maybe <- 0x42000007) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 0 ] %asi

P1850: !_MEMBAR (FP)

P1851: !_BST [33] (maybe <- 0x42000008) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P1852: !_MEMBAR (FP)
membar #StoreLoad

P1853: !_ST [6] (maybe <- 0x2800001) (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 96] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1853
nop
RET1853:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1854: !_FLUSH [22] (Int) (Branch target of P1878)
! Unsupported instruction
ba P1855
nop

TARGET1878:
ba RET1878
nop


P1855: !_REPLACEMENT [21] (Int) (Branch target of P2173)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
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
ba P1856
nop

TARGET2173:
ba RET2173
nop


P1856: !_REPLACEMENT [20] (Int)
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

P1857: !_LD [27] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 160], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

P1858: !_REPLACEMENT [2] (Int) (Branch target of P1853)
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
ba P1859
nop

TARGET1853:
ba RET1853
nop


P1859: !_REPLACEMENT [31] (Int) (Branch target of P2123)
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
ba P1860
nop

TARGET2123:
ba RET2123
nop


P1860: !_LD [26] (FP) (CBR)
ld [%i3 + 128], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1860
nop
RET1860:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1861: !_IDC_FLIP [22] (Int) (Branch target of P2159)
IDC_FLIP(1861, 6708, 5, 0x45800004, 0x4, %i3, 0x4, %l6, %l7, %o5, %l3)
ba P1862
nop

TARGET2159:
ba RET2159
nop


P1862: !_REPLACEMENT [19] (Int) (Branch target of P2226)
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
ba P1863
nop

TARGET2226:
ba RET2226
nop


P1863: !_IDC_FLIP [14] (Int) (Branch target of P1846)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1863, 26330, 5, 0x44000040, 0x40, %i2, 0x40, %l6, %l7, %o5, %l3)
ba P1864
nop

TARGET1846:
ba RET1846
nop


P1864: !_PREFETCH [25] (Int) (Branch target of P1860)
prefetch [%i3 + 96], 1
ba P1865
nop

TARGET1860:
ba RET1860
nop


P1865: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1866: !_BLD [22] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P1867: !_MEMBAR (FP) (Secondary ctx)

P1868: !_REPLACEMENT [20] (Int)
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

P1869: !_REPLACEMENT [8] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1870: !_PREFETCH [15] (Int)
prefetch [%i2 + 128], 1

P1871: !_ST [7] (maybe <- 0x2800002) (Int)
stw   %l4, [%i0 + 128 ]
add   %l4, 1, %l4

P1872: !_REPLACEMENT [7] (Int) (Nucleus ctx)
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

P1873: !_REPLACEMENT [13] (Int)
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

P1874: !_REPLACEMENT [3] (Int) (Branch target of P1881)
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
ba P1875
nop

TARGET1881:
ba RET1881
nop


P1875: !_REPLACEMENT [5] (Int) (CBR)
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
be,pt  %xcc, TARGET1875
nop
RET1875:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1876: !_IDC_FLIP [26] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1876, 19589, 5, 0x45800080, 0x80, %i2, 0x80, %l6, %l7, %o5, %l3)

P1877: !_REPLACEMENT [5] (Int) (CBR)
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
be,pn  %xcc, TARGET1877
nop
RET1877:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1878: !_REPLACEMENT [9] (Int) (CBR)
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
be,pn  %xcc, TARGET1878
nop
RET1878:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1879: !_REPLACEMENT [31] (Int) (Secondary ctx)
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

P1880: !_REPLACEMENT [17] (Int)
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

P1881: !_FLUSH [31] (Int) (CBR) (Branch target of P2217)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1881
nop
RET1881:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P1882
nop

TARGET2217:
ba RET2217
nop


P1882: !_IDC_FLIP [32] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1882, 21698, 5, 0x46000060, 0x60, %i3, 0x60, %l6, %l7, %o5, %l3)

P1883: !_REPLACEMENT [25] (Int) (Branch target of P2111)
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
ba P1884
nop

TARGET2111:
ba RET2111
nop


P1884: !_REPLACEMENT [4] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1885: !_PREFETCH [18] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 128], 1

P1886: !_REPLACEMENT [22] (Int)
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

P1887: !_REPLACEMENT [11] (Int) (Secondary ctx)
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

P1888: !_IDC_FLIP [11] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(1888, 25341, 5, 0x44000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P1889: !_REPLACEMENT [1] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1890: !_REPLACEMENT [25] (Int) (CBR)
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
be,pt  %xcc, TARGET1890
nop
RET1890:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1891: !_REPLACEMENT [13] (Int)
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

P1892: !_REPLACEMENT [19] (Int) (Branch target of P1894)
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
ba P1893
nop

TARGET1894:
ba RET1894
nop


P1893: !_REPLACEMENT [12] (Int)
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

P1894: !_LD [16] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 16], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1894
nop
RET1894:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1895: !_LD [22] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P1896: !_REPLACEMENT [4] (Int)
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

P1897: !_REPLACEMENT [19] (Int)
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

P1898: !_REPLACEMENT [7] (Int)
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

P1899: !_REPLACEMENT [30] (Int) (Nucleus ctx)
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

P1900: !_REPLACEMENT [14] (Int) (Secondary ctx)
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

P1901: !_REPLACEMENT [18] (Int) (CBR)
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
be,pn  %xcc, TARGET1901
nop
RET1901:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1902: !_REPLACEMENT [31] (Int) (CBR) (Branch target of P1913)
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
be,pt  %xcc, TARGET1902
nop
RET1902:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1903
nop

TARGET1913:
ba RET1913
nop


P1903: !_REPLACEMENT [16] (Int) (Branch target of P1837)
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
ba P1904
nop

TARGET1837:
ba RET1837
nop


P1904: !_REPLACEMENT [4] (Int)
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

P1905: !_FLUSH [32] (Int)
! Unsupported instruction

P1906: !_LD [2] (FP)
ld [%i0 + 8], %f4
! 1 addresses covered

P1907: !_REPLACEMENT [2] (Int)
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

P1908: !_REPLACEMENT [19] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1909: !_REPLACEMENT [10] (Int)
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

P1910: !_REPLACEMENT [7] (Int)
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

P1911: !_REPLACEMENT [17] (Int)
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

P1912: !_REPLACEMENT [29] (Int) (Loop exit)
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_5_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_5_0
nop

P1913: !_MEMBAR (FP) (Loop entry) (CBR) (Secondary ctx)
sethi %hi(0x4), %l2
or %l2, %lo(0x4),  %l2
loop_entry_5_1:

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1913
nop
RET1913:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1914: !_BST [29] (maybe <- 0x42000009) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P1915: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P1916: !_LD [24] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 64], %f0
! 1 addresses covered

P1917: !_PREFETCH [20] (Int) (Branch target of P2161)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 256], 1
ba P1918
nop

TARGET2161:
ba RET2161
nop


P1918: !_REPLACEMENT [3] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1918
nop
RET1918:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1919: !_REPLACEMENT [11] (Int)
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

P1920: !_REPLACEMENT [3] (Int) (Branch target of P2144)
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
ba P1921
nop

TARGET2144:
ba RET2144
nop


P1921: !_MEMBAR (FP)

P1922: !_BST [10] (maybe <- 0x4200000c) (FP) (Branch target of P2194)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i1 + 64 ] %asi
ba P1923
nop

TARGET2194:
ba RET2194
nop


P1923: !_MEMBAR (FP)
membar #StoreLoad

P1924: !_REPLACEMENT [28] (Int)
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

P1925: !_MEMBAR (FP)
membar #StoreLoad

P1926: !_BLD [28] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P1927: !_MEMBAR (FP)

P1928: !_BLD [11] (FP) (Branch target of P1829)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f4
fmovd %f40, %f6
ba P1929
nop

TARGET1829:
ba RET1829
nop


P1929: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1929
nop
RET1929:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1930: !_REPLACEMENT [26] (Int)
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

P1931: !_MEMBAR (FP) (CBR) (Branch target of P2163)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1931
nop
RET1931:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1932
nop

TARGET2163:
ba RET2163
nop


P1932: !_BLD [34] (FP) (Branch target of P2152)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
ba P1933
nop

TARGET2152:
ba RET2152
nop


P1933: !_MEMBAR (FP)

P1934: !_REPLACEMENT [24] (Int)
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

P1935: !_REPLACEMENT [6] (Int)
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

P1936: !_REPLACEMENT [28] (Int)
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

P1937: !_REPLACEMENT [23] (Int) (CBR)
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
be,pt  %xcc, TARGET1937
nop
RET1937:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1938: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1938
nop
RET1938:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1939: !_BLD [7] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f8

P1940: !_MEMBAR (FP) (Branch target of P2040)
ba P1941
nop

TARGET2040:
ba RET2040
nop


P1941: !_BLD [22] (FP)
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

P1942: !_MEMBAR (FP)

P1943: !_REPLACEMENT [6] (Int) (CBR)
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
be,pn  %xcc, TARGET1943
nop
RET1943:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1944: !_MEMBAR (FP)

P1945: !_BST [24] (maybe <- 0x4200000d) (FP) (Branch target of P1973)
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
ba P1946
nop

TARGET1973:
ba RET1973
nop


P1946: !_MEMBAR (FP)
membar #StoreLoad

P1947: !_REPLACEMENT [21] (Int)
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

P1948: !_REPLACEMENT [24] (Int) (Branch target of P1929)
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
ba P1949
nop

TARGET1929:
ba RET1929
nop


P1949: !_REPLACEMENT [18] (Int) (Loop exit) (Branch target of P2071)
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
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
!--
loop_exit_5_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_5_1
nop
ba P1950
nop

TARGET2071:
ba RET2071
nop


P1950: !_REPLACEMENT [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_5_2:
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

P1951: !_REPLACEMENT [15] (Int) (Nucleus ctx)
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

P1952: !_REPLACEMENT [16] (Int)
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

P1953: !_REPLACEMENT [15] (Int)
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

P1954: !_REPLACEMENT [22] (Int)
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

P1955: !_REPLACEMENT [1] (Int) (CBR)
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
be,pn  %xcc, TARGET1955
nop
RET1955:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1956: !_REPLACEMENT [5] (Int) (Secondary ctx)
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

P1957: !_REPLACEMENT [14] (Int) (CBR)
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
be,pn  %xcc, TARGET1957
nop
RET1957:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1958: !_MEMBAR (FP)

P1959: !_BSTC [12] (maybe <- 0x4200000f) (FP)
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

P1960: !_MEMBAR (FP)
membar #StoreLoad

P1961: !_REPLACEMENT [8] (Int)
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

P1962: !_REPLACEMENT [23] (Int)
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

P1963: !_MEMBAR (FP)

P1964: !_BSTC [9] (maybe <- 0x42000012) (FP)
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

P1965: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1965
nop
RET1965:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1966: !_REPLACEMENT [34] (Int)
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

P1967: !_REPLACEMENT [5] (Int)
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

P1968: !_MEMBAR (FP)

P1969: !_BST [24] (maybe <- 0x42000014) (FP) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1969
nop
RET1969:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1970: !_MEMBAR (FP)
membar #StoreLoad

P1971: !_ST [29] (maybe <- 0x42000016) (FP) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1971
nop
RET1971:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1972: !_REPLACEMENT [25] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P1973: !_REPLACEMENT [27] (Int) (CBR) (Secondary ctx) (Branch target of P2188)
wr %g0, 0x81, %asi
sethi %hi(0x2000), %l7
ld [%i3+160], %l3
st %l3, [%i3+160]
add %i3, %l7, %o5
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
be,pn  %xcc, TARGET1973
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

TARGET2188:
ba RET2188
nop


P1974: !_ST [18] (maybe <- 0x2800003) (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1974
nop
RET1974:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1975: !_MEMBAR (FP)
membar #StoreLoad

P1976: !_BLD [31] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f0
membar #Sync
! 2 addresses covered
fmovs %f8, %f1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1976
nop
RET1976:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1977: !_MEMBAR (FP)

P1978: !_REPLACEMENT [23] (Int)
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

P1979: !_ST [19] (maybe <- 0x2800004) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1980: !_ST [19] (maybe <- 0x42000017) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P1981: !_FLUSHI [24] (Int) (CBR)
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1981
nop
RET1981:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1982: !_FLUSHI [15] (Int) (Branch target of P2075)
flush %g0 
ba P1983
nop

TARGET2075:
ba RET2075
nop


P1983: !_REPLACEMENT [20] (Int) (Branch target of P2096)
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
ba P1984
nop

TARGET2096:
ba RET2096
nop


P1984: !_REPLACEMENT [30] (Int) (CBR)
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
be,pn  %xcc, TARGET1984
nop
RET1984:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1985: !_REPLACEMENT [3] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P1986: !_PREFETCH [16] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 16], 1

P1987: !_REPLACEMENT [24] (Int) (Branch target of P1943)
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
ba P1988
nop

TARGET1943:
ba RET1943
nop


P1988: !_MEMBAR (Int) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1988
nop
RET1988:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1989: !_IDC_FLIP [16] (Int) (Branch target of P2206)
IDC_FLIP(1989, 13027, 5, 0x44800010, 0x10, %i2, 0x10, %l6, %l7, %o5, %l3)
ba P1990
nop

TARGET2206:
ba RET2206
nop


P1990: !_REPLACEMENT [27] (Int) (CBR) (Branch target of P2204)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1990
nop
RET1990:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1991
nop

TARGET2204:
ba RET2204
nop


P1991: !_REPLACEMENT [15] (Int) (Nucleus ctx)
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

P1992: !_FLUSHI [3] (Int) (CBR) (Branch target of P2063)
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1992
nop
RET1992:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1993
nop

TARGET2063:
ba RET2063
nop


P1993: !_LD [8] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i1 + 0] %asi, %f2
! 1 addresses covered

P1994: !_IDC_FLIP [33] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
IDC_FLIP(1994, 2140, 5, 0x46800000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)

P1995: !_REPLACEMENT [28] (Int)
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

P1996: !_REPLACEMENT [3] (Int)
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

P1997: !_IDC_FLIP [24] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(1997, 9337, 5, 0x45800040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

P1998: !_REPLACEMENT [32] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P1999: !_REPLACEMENT [17] (Int)
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

P2000: !_REPLACEMENT [11] (Int)
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

P2001: !_REPLACEMENT [2] (Int)
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

P2002: !_REPLACEMENT [17] (Int)
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

P2003: !_REPLACEMENT [23] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P2004: !_MEMBAR (FP)
membar #StoreLoad

P2005: !_BLD [33] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3

P2006: !_MEMBAR (FP)

P2007: !_BST [7] (maybe <- 0x42000018) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P2008: !_MEMBAR (FP) (Secondary ctx) (Branch target of P1971)
ba P2009
nop

TARGET1971:
ba RET1971
nop


P2009: !_BST [7] (maybe <- 0x42000019) (FP)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P2010: !_MEMBAR (FP)
membar #StoreLoad

P2011: !_REPLACEMENT [33] (Int)
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

P2012: !_MEMBAR (FP)

P2013: !_BSTC [24] (maybe <- 0x4200001a) (FP) (Branch target of P2170)
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
ba P2014
nop

TARGET2170:
ba RET2170
nop


P2014: !_MEMBAR (FP) (CBR) (Branch target of P1990)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2014
nop
RET2014:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2015
nop

TARGET1990:
ba RET1990
nop


P2015: !_REPLACEMENT [13] (Int) (Branch target of P2139)
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
ba P2016
nop

TARGET2139:
ba RET2139
nop


P2016: !_REPLACEMENT [31] (Int) (Branch target of P2201)
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
ba P2017
nop

TARGET2201:
ba RET2201
nop


P2017: !_MEMBAR (FP)

P2018: !_BST [34] (maybe <- 0x4200001c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P2019: !_MEMBAR (FP)
membar #StoreLoad

P2020: !_REPLACEMENT [27] (Int)
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

P2021: !_MEMBAR (FP)
membar #StoreLoad

P2022: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f4
fmovd %f34, %f6
fmovd %f36, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P2023: !_MEMBAR (FP)

P2024: !_REPLACEMENT [15] (Int)
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

P2025: !_ST [4] (maybe <- 0x2800005) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2026: !_IDC_FLIP [4] (Int)
IDC_FLIP(2026, 13037, 5, 0x43000020, 0x20, %i0, 0x20, %l6, %l7, %o5, %l3)

P2027: !_REPLACEMENT [22] (Int)
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

P2028: !_REPLACEMENT [24] (Int) (Secondary ctx)
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

P2029: !_PREFETCH [17] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 96], 1

P2030: !_IDC_FLIP [12] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2030, 6886, 5, 0x44000004, 0x4, %i2, 0x4, %l6, %l7, %o5, %l3)

P2031: !_ST [8] (maybe <- 0x2800006) (Int) (LE) (CBR)
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
stwa   %l6, [%i1 + 0] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2031
nop
RET2031:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2032: !_MEMBAR (FP)

P2033: !_BSTC [12] (maybe <- 0x4200001d) (FP)
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
stda %f32, [%i2 + 0 ] %asi

P2034: !_MEMBAR (FP)
membar #StoreLoad

P2035: !_REPLACEMENT [15] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2035
nop
RET2035:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2036: !_REPLACEMENT [10] (Int) (Secondary ctx) (Branch target of P1890)
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
ba P2037
nop

TARGET1890:
ba RET1890
nop


P2037: !_MEMBAR (FP)

P2038: !_BSTC [28] (maybe <- 0x42000020) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P2039: !_MEMBAR (FP)

P2040: !_BST [3] (maybe <- 0x42000023) (FP) (CBR) (Secondary ctx)
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
be,pn  %xcc, TARGET2040
nop
RET2040:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2041: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2042: !_REPLACEMENT [9] (Int)
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

P2043: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2044: !_BLD [19] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f9

P2045: !_MEMBAR (FP) (Secondary ctx)

P2046: !_REPLACEMENT [10] (Int)
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

P2047: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2047
nop
RET2047:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2048: !_BLD [26] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f10
fmovd %f40, %f18
fmovs %f18, %f11

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2048
nop
RET2048:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2049: !_MEMBAR (FP)

P2050: !_ST [3] (maybe <- 0x42000028) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 16 ]

P2051: !_REPLACEMENT [5] (Int)
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

P2052: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2052
nop
RET2052:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2053: !_BSTC [7] (maybe <- 0x42000029) (FP) (Branch target of P2056)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi
ba P2054
nop

TARGET2056:
ba RET2056
nop


P2054: !_MEMBAR (FP)
membar #StoreLoad

P2055: !_REPLACEMENT [21] (Int) (Branch target of P2116)
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
ba P2056
nop

TARGET2116:
ba RET2116
nop


P2056: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2056
nop
RET2056:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2057: !_BSTC [12] (maybe <- 0x4200002a) (FP)
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

P2058: !_MEMBAR (FP)
membar #StoreLoad

P2059: !_REPLACEMENT [11] (Int)
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

P2060: !_REPLACEMENT [23] (Int) (CBR)
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
be,pt  %xcc, TARGET2060
nop
RET2060:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2061: !_REPLACEMENT [17] (Int)
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

P2062: !_REPLACEMENT [27] (Int) (Branch target of P1955)
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
ba P2063
nop

TARGET1955:
ba RET1955
nop


P2063: !_REPLACEMENT [4] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pn  %xcc, TARGET2063
nop
RET2063:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2064: !_LD [12] (FP)
ld [%i2 + 4], %f12
! 1 addresses covered

P2065: !_ST [33] (maybe <- 0x2800007) (Int) (Branch target of P2145)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
ba P2066
nop

TARGET2145:
ba RET2145
nop


P2066: !_ST [23] (maybe <- 0x2800008) (Int) (LE) (CBR) (Secondary ctx)
wr %g0, 0x89, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
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
stwa   %o5, [%i3 + 32] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2066
nop
RET2066:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2067: !_MEMBAR (FP)

P2068: !_BSTC [34] (maybe <- 0x4200002d) (FP) (Branch target of P1938)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi
ba P2069
nop

TARGET1938:
ba RET1938
nop


P2069: !_MEMBAR (FP)
membar #StoreLoad

P2070: !_IDC_FLIP [32] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2070, 21084, 5, 0x46000060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)

P2071: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2071
nop
RET2071:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2072: !_BLD [26] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f13
fmovd %f40, %f14

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2072
nop
RET2072:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2073: !_MEMBAR (FP)

P2074: !_FLUSH [18] (Int)
! Unsupported instruction

P2075: !_REPLACEMENT [19] (Int) (CBR)
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
be,pn  %xcc, TARGET2075
nop
RET2075:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2076: !_REPLACEMENT [17] (Int)
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

P2077: !_MEMBAR (FP) (Branch target of P2224)
membar #StoreLoad
ba P2078
nop

TARGET2224:
ba RET2224
nop


P2078: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 1 addresses covered
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

P2079: !_MEMBAR (FP)

P2080: !_BLD [20] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 256] %asi, %f0
membar #Sync
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2080
nop
RET2080:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2081: !_MEMBAR (FP)

P2082: !_REPLACEMENT [15] (Int) (Branch target of P1957)
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
ba P2083
nop

TARGET1957:
ba RET1957
nop


P2083: !_REPLACEMENT [0] (Int) (Branch target of P1875)
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
ba P2084
nop

TARGET1875:
ba RET1875
nop


P2084: !_REPLACEMENT [15] (Int)
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

P2085: !_REPLACEMENT [1] (Int) (Branch target of P1974)
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
ba P2086
nop

TARGET1974:
ba RET1974
nop


P2086: !_REPLACEMENT [9] (Int)
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

P2087: !_REPLACEMENT [5] (Int)
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

P2088: !_REPLACEMENT [28] (Int) (Secondary ctx)
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

P2089: !_REPLACEMENT [28] (Int) (Branch target of P1992)
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
ba P2090
nop

TARGET1992:
ba RET1992
nop


P2090: !_ST [22] (maybe <- 0x2800009) (Int) (Branch target of P1937)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
ba P2091
nop

TARGET1937:
ba RET1937
nop


P2091: !_REPLACEMENT [9] (Int) (Branch target of P2160)
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
ba P2092
nop

TARGET2160:
ba RET2160
nop


P2092: !_REPLACEMENT [18] (Int)
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

P2093: !_REPLACEMENT [26] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P2094: !_ST [6] (maybe <- 0x280000a) (Int)
stw   %l4, [%i0 + 96 ]
add   %l4, 1, %l4

P2095: !_REPLACEMENT [19] (Int) (Nucleus ctx) (Branch target of P2216)
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
ba P2096
nop

TARGET2216:
ba RET2216
nop


P2096: !_REPLACEMENT [8] (Int) (CBR)
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
be,pt  %xcc, TARGET2096
nop
RET2096:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2097: !_REPLACEMENT [31] (Int) (Branch target of P2132)
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
ba P2098
nop

TARGET2132:
ba RET2132
nop


P2098: !_REPLACEMENT [12] (Int) (Branch target of P2066)
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
ba P2099
nop

TARGET2066:
ba RET2066
nop


P2099: !_REPLACEMENT [29] (Int)
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

P2100: !_MEMBAR (FP)

P2101: !_BST [3] (maybe <- 0x4200002e) (FP) (Branch target of P1969)
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
ba P2102
nop

TARGET1969:
ba RET1969
nop


P2102: !_MEMBAR (FP)
membar #StoreLoad

P2103: !_REPLACEMENT [6] (Int) (Secondary ctx) (Branch target of P1931)
wr %g0, 0x81, %asi
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
ba P2104
nop

TARGET1931:
ba RET1931
nop


P2104: !_REPLACEMENT [19] (Int) (Secondary ctx)
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

P2105: !_REPLACEMENT [14] (Int) (Branch target of P2031)
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
ba P2106
nop

TARGET2031:
ba RET2031
nop


P2106: !_REPLACEMENT [18] (Int)
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

P2107: !_LD [11] (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f1
! 1 addresses covered

P2108: !_MEMBAR (FP) (Secondary ctx)

P2109: !_BST [9] (maybe <- 0x42000033) (FP) (Secondary ctx)
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

P2110: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P1965)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2110
nop
RET2110:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2111
nop

TARGET1965:
ba RET1965
nop


P2111: !_REPLACEMENT [21] (Int) (CBR)
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
be,pt  %xcc, TARGET2111
nop
RET2111:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2112: !_REPLACEMENT [12] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2112
nop
RET2112:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2113: !_LD [34] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 64], %f2
! 1 addresses covered

P2114: !_REPLACEMENT [25] (Int)
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

P2115: !_REPLACEMENT [11] (Int)
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

P2116: !_MEMBAR (FP) (CBR) (Branch target of P1842)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2116
nop
RET2116:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2117
nop

TARGET1842:
ba RET1842
nop


P2117: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f3
fmovd %f40, %f4

P2118: !_MEMBAR (FP)

P2119: !_IDC_FLIP [17] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2119, 18477, 5, 0x44800060, 0x60, %i2, 0x60, %l6, %l7, %o5, %l3)

P2120: !_MEMBAR (FP) (Branch target of P2157)
ba P2121
nop

TARGET2157:
ba RET2157
nop


P2121: !_BST [18] (maybe <- 0x42000035) (FP) (Branch target of P1836)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi
ba P2122
nop

TARGET1836:
ba RET1836
nop


P2122: !_MEMBAR (FP) (Branch target of P2048)
membar #StoreLoad
ba P2123
nop

TARGET2048:
ba RET2048
nop


P2123: !_FLUSH [13] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2123
nop
RET2123:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2124: !_REPLACEMENT [29] (Int)
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

P2125: !_MEMBAR (FP)
membar #StoreLoad

P2126: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f5

P2127: !_MEMBAR (FP)

P2128: !_IDC_FLIP [5] (Int)
IDC_FLIP(2128, 27701, 5, 0x43000040, 0x40, %i0, 0x40, %l6, %l7, %o5, %l3)

P2129: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2130: !_BLD [25] (FP) (Secondary ctx) (Branch target of P2047)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f6
fmovd %f40, %f18
fmovs %f18, %f7
ba P2131
nop

TARGET2047:
ba RET2047
nop


P2131: !_MEMBAR (FP) (Secondary ctx)

P2132: !_IDC_FLIP [0] (Int) (CBR)
IDC_FLIP(2132, 31311, 5, 0x43000000, 0x0, %i0, 0x0, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2132
nop
RET2132:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2133: !_REPLACEMENT [34] (Int)
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

P2134: !_MEMBAR (FP)

P2135: !_BST [16] (maybe <- 0x42000036) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2136: !_MEMBAR (FP)
membar #StoreLoad

P2137: !_PREFETCH [28] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 0] %asi, 1

P2138: !_MEMBAR (FP)

P2139: !_BSTC [26] (maybe <- 0x42000037) (FP) (CBR)
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
stda %f32, [%i3 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2139
nop
RET2139:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2140: !_MEMBAR (FP)
membar #StoreLoad

P2141: !_REPLACEMENT [23] (Int)
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

P2142: !_REPLACEMENT [31] (Int)
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

P2143: !_REPLACEMENT [12] (Int)
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

P2144: !_REPLACEMENT [14] (Int) (CBR)
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
be,pt  %xcc, TARGET2144
nop
RET2144:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2145: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2145
nop
RET2145:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2146: !_BSTC [20] (maybe <- 0x42000039) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

P2147: !_MEMBAR (FP)
membar #StoreLoad

P2148: !_ST [7] (maybe <- 0x4200003a) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 128 ]

P2149: !_MEMBAR (FP)

P2150: !_BST [9] (maybe <- 0x4200003b) (FP)
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

P2151: !_MEMBAR (FP) (Branch target of P2209)
membar #StoreLoad
ba P2152
nop

TARGET2209:
ba RET2209
nop


P2152: !_REPLACEMENT [19] (Int) (CBR) (Branch target of P2195)
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
be,pt  %xcc, TARGET2152
nop
RET2152:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2153
nop

TARGET2195:
ba RET2195
nop


P2153: !_REPLACEMENT [16] (Int)
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

P2154: !_MEMBAR (FP)

P2155: !_BST [18] (maybe <- 0x4200003d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P2156: !_MEMBAR (FP) (Loop exit) (Branch target of P2110)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_5_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_5_2
nop
ba P2157
nop

TARGET2110:
ba RET2110
nop


P2157: !_MEMBAR (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_5_3:

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2157
nop
RET2157:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2158: !_BSTC [17] (maybe <- 0x4200003e) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P2159: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2159
nop
RET2159:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2160: !_REPLACEMENT [18] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2160
nop
RET2160:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2161: !_LD [13] (Int) (CBR) (Branch target of P1918)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2161
nop
RET2161:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2162
nop

TARGET1918:
ba RET1918
nop


P2162: !_MEMBAR (FP) (Secondary ctx)

P2163: !_BSTC [14] (maybe <- 0x4200003f) (FP) (CBR) (Secondary ctx) (Branch target of P2112)
wr %g0, 0xe1, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2163
nop
RET2163:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2164
nop

TARGET2112:
ba RET2112
nop


P2164: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2165: !_REPLACEMENT [20] (Int) (Secondary ctx)
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

P2166: !_REPLACEMENT [28] (Int)
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

P2167: !_REPLACEMENT [13] (Int)
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

P2168: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2169: !_BLD [16] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 1 addresses covered
fmovd %f4, %f0

P2170: !_MEMBAR (FP) (CBR) (Secondary ctx) (Branch target of P1981)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2170
nop
RET2170:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2171
nop

TARGET1981:
ba RET1981
nop


P2171: !_REPLACEMENT [28] (Int)
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

P2172: !_REPLACEMENT [17] (Int)
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

P2173: !_REPLACEMENT [17] (Int) (CBR)
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
be,pt  %xcc, TARGET2173
nop
RET2173:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2174: !_REPLACEMENT [6] (Int)
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

P2175: !_MEMBAR (FP)

P2176: !_BST [0] (maybe <- 0x42000040) (FP)
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

P2177: !_MEMBAR (FP)
membar #StoreLoad

P2178: !_REPLACEMENT [27] (Int)
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

P2179: !_REPLACEMENT [30] (Int)
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

P2180: !_MEMBAR (FP)

P2181: !_BSTC [11] (maybe <- 0x42000045) (FP)
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

P2182: !_MEMBAR (FP)
membar #StoreLoad

P2183: !_REPLACEMENT [30] (Int) (Branch target of P1877)
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
ba P2184
nop

TARGET1877:
ba RET1877
nop


P2184: !_REPLACEMENT [6] (Int)
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

P2185: !_ST [9] (maybe <- 0x42000048) (FP) (Branch target of P2080)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 32 ]
ba P2186
nop

TARGET2080:
ba RET2080
nop


P2186: !_MEMBAR (FP)
membar #StoreLoad

P2187: !_BLD [4] (FP)
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

P2188: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2188
nop
RET2188:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2189: !_ST [4] (maybe <- 0x280000b) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2190: !_REPLACEMENT [19] (Int)
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

P2191: !_REPLACEMENT [8] (Int)
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

P2192: !_REPLACEMENT [0] (Int) (Secondary ctx)
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

P2193: !_ST [27] (maybe <- 0x280000c) (Int) (Branch target of P2229)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 160 ]
add   %l4, 1, %l4
ba P2194
nop

TARGET2229:
ba RET2229
nop


P2194: !_LD [4] (Int) (CBR)
lduw [%i0 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2194
nop
RET2194:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2195: !_REPLACEMENT [23] (Int) (CBR)
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
be,pn  %xcc, TARGET2195
nop
RET2195:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2196: !_REPLACEMENT [0] (Int) (Branch target of P2035)
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
ba P2197
nop

TARGET2035:
ba RET2035
nop


P2197: !_LD [2] (FP) (Secondary ctx)
wr %g0, 0x81, %asi
lda    [%i0 + 8] %asi, %f6
! 1 addresses covered

P2198: !_LD [17] (FP) (Branch target of P2014)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 96], %f7
! 1 addresses covered
ba P2199
nop

TARGET2014:
ba RET2014
nop


P2199: !_PREFETCH [23] (Int) (Branch target of P1902)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 32], 1
ba P2200
nop

TARGET1902:
ba RET1902
nop


P2200: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P2201: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2201
nop
RET2201:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2202: !_BST [23] (maybe <- 0x42000049) (FP) (Branch target of P1984)
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
ba P2203
nop

TARGET1984:
ba RET1984
nop


P2203: !_MEMBAR (FP)
membar #StoreLoad

P2204: !_IDC_FLIP [24] (Int) (CBR)
IDC_FLIP(2204, 17251, 5, 0x45800040, 0x40, %i2, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2204
nop
RET2204:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2205: !_REPLACEMENT [8] (Int)
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

P2206: !_REPLACEMENT [24] (Int) (CBR) (Branch target of P1976)
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
be,pt  %xcc, TARGET2206
nop
RET2206:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2207
nop

TARGET1976:
ba RET1976
nop


P2207: !_REPLACEMENT [2] (Int)
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

P2208: !_REPLACEMENT [7] (Int)
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

P2209: !_REPLACEMENT [9] (Int) (CBR) (Nucleus ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2209
nop
RET2209:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2210: !_REPLACEMENT [23] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pt  %xcc, TARGET2210
nop
RET2210:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2211: !_LD [18] (FP)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 128], %f8
! 1 addresses covered

P2212: !_MEMBAR (FP)
membar #StoreLoad

P2213: !_BLD [23] (FP)
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

P2214: !_MEMBAR (FP) (Branch target of P2052)
ba P2215
nop

TARGET2052:
ba RET2052
nop


P2215: !_BST [34] (maybe <- 0x4200004c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P2216: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2216
nop
RET2216:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2217: !_FLUSHI [19] (Int) (CBR)
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2217
nop
RET2217:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2218: !_REPLACEMENT [22] (Int) (Branch target of P1988)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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
ba P2219
nop

TARGET1988:
ba RET1988
nop


P2219: !_MEMBAR (FP)

P2220: !_BST [17] (maybe <- 0x4200004d) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P2221: !_MEMBAR (FP) (Branch target of P2210)
ba P2222
nop

TARGET2210:
ba RET2210
nop


P2222: !_BST [19] (maybe <- 0x4200004e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2223: !_MEMBAR (FP) (Branch target of P2060)
membar #StoreLoad
ba P2224
nop

TARGET2060:
ba RET2060
nop


P2224: !_REPLACEMENT [28] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2224
nop
RET2224:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2225: !_REPLACEMENT [9] (Int)
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

P2226: !_FLUSH [28] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2226
nop
RET2226:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2227: !_REPLACEMENT [32] (Int) (Branch target of P1901)
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
ba P2228
nop

TARGET1901:
ba RET1901
nop


P2228: !_ST [23] (maybe <- 0x280000d) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
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
stwa   %l3, [%i3 + 32] %asi
add   %l4, 1, %l4

P2229: !_REPLACEMENT [25] (Int) (CBR)
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
be,pn  %xcc, TARGET2229
nop
RET2229:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2230: !_PREFETCH [19] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 1

P2231: !_IDC_FLIP [29] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(2231, 24963, 5, 0x46000004, 0x4, %i3, 0x4, %l6, %l7, %o5, %l3)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
!--
loop_exit_5_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_5_3
nop

P2232: !_MEMBAR (Int)
membar #StoreLoad

END_NODES5: ! Test instruction sequence for CPU 5 ends
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

func6:
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
sethi %hi(0x06deade1), %l6
or    %l6, %lo(0x06deade1), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x3000001), %l4
or    %l4, %lo(0x3000001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x42800001), %l6
or    %l6, %lo(0x42800001), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x37000000), %l6
or    %l6, %lo(0x37000000), %l6
stw %l6, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x50f5^4
sethi %hi(0x50f5), %l0
or    %l0, %lo(0x50f5), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES6: ! Test instruction sequence for ISTREAM 6 begins

P2233: !_REPLACEMENT [7] (Int) (Loop entry)
sethi %hi(0x5), %l2
or %l2, %lo(0x5),  %l2
loop_entry_6_0:
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

P2234: !_REPLACEMENT [29] (Int) (Secondary ctx)
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

P2235: !_REPLACEMENT [7] (Int)
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

P2236: !_REPLACEMENT [31] (Int)
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

P2237: !_LD [21] (FP) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered

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


P2238: !_REPLACEMENT [3] (Int) (Branch target of P2399)
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
ba P2239
nop

TARGET2399:
ba RET2399
nop


P2239: !_LD [4] (FP) (CBR)
ld [%i0 + 32], %f1
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2239
nop
RET2239:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2240: !_PREFETCH [34] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 64], 1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2240
nop
RET2240:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2241: !_IDC_FLIP [9] (Int) (CBR) (Branch target of P2312)
IDC_FLIP(2241, 16120, 6, 0x43800020, 0x20, %i1, 0x20, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2241
nop
RET2241:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2242
nop

TARGET2312:
ba RET2312
nop


P2242: !_REPLACEMENT [29] (Int) (Branch target of P2372)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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
ba P2243
nop

TARGET2372:
ba RET2372
nop


P2243: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2243
nop
RET2243:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2244: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f2
fmovd %f34, %f4
fmovd %f36, %f18
fmovs %f18, %f5
fmovd %f40, %f6

P2245: !_MEMBAR (FP) (Branch target of P2536)
ba P2246
nop

TARGET2536:
ba RET2536
nop


P2246: !_REPLACEMENT [19] (Int)
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

P2247: !_REPLACEMENT [32] (Int) (CBR)
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
be,pn  %xcc, TARGET2247
nop
RET2247:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2248: !_REPLACEMENT [28] (Int) (CBR)
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
be,pt  %xcc, TARGET2248
nop
RET2248:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2249: !_REPLACEMENT [16] (Int) (Branch target of P2421)
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
ba P2250
nop

TARGET2421:
ba RET2421
nop


P2250: !_LD [3] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i0 + 16] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2251: !_REPLACEMENT [10] (Int)
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

P2252: !_REPLACEMENT [10] (Int) (Secondary ctx)
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

P2253: !_MEMBAR (FP) (CBR) (Secondary ctx)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2253
nop
RET2253:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2254: !_BLD [22] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovs %f19, %f8
fmovd %f40, %f18
fmovs %f18, %f9

P2255: !_MEMBAR (FP) (Secondary ctx)

P2256: !_REPLACEMENT [25] (Int)
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

P2257: !_REPLACEMENT [32] (Int)
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

P2258: !_REPLACEMENT [7] (Int)
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

P2259: !_ST [12] (maybe <- 0x3000001) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P2260: !_REPLACEMENT [21] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2260
nop
RET2260:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2261: !_IDC_FLIP [2] (Int)
IDC_FLIP(2261, 12476, 6, 0x43000008, 0x8, %i0, 0x8, %l6, %l7, %o5, %l3)

P2262: !_IDC_FLIP [34] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
IDC_FLIP(2262, 21443, 6, 0x46800040, 0x40, %i3, 0x40, %l6, %l7, %o5, %l3)

P2263: !_MEMBAR (FP)

P2264: !_BST [0] (maybe <- 0x42800001) (FP)
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

P2265: !_MEMBAR (FP)
membar #StoreLoad

P2266: !_REPLACEMENT [10] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P2267: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2512)
ba P2268
nop

TARGET2512:
ba RET2512
nop


P2268: !_BST [11] (maybe <- 0x42800006) (FP) (CBR) (Secondary ctx) (Branch target of P2237)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2268
nop
RET2268:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2269
nop

TARGET2237:
ba RET2237
nop


P2269: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2270: !_REPLACEMENT [18] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2270
nop
RET2270:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2271: !_MEMBAR (FP)

P2272: !_BST [3] (maybe <- 0x42800009) (FP)
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

P2273: !_MEMBAR (FP)

P2274: !_BST [29] (maybe <- 0x4280000e) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
be,pn  %xcc, TARGET2274
nop
RET2274:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2275: !_MEMBAR (FP)
membar #StoreLoad

P2276: !_REPLACEMENT [5] (Int) (CBR)
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
be,pt  %xcc, TARGET2276
nop
RET2276:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2277: !_REPLACEMENT [24] (Int) (Secondary ctx) (Branch target of P2376)
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
ba P2278
nop

TARGET2376:
ba RET2376
nop


P2278: !_LD [19] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f10
! 1 addresses covered

P2279: !_REPLACEMENT [11] (Int) (Branch target of P2243)
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
ba P2280
nop

TARGET2243:
ba RET2243
nop


P2280: !_REPLACEMENT [5] (Int)
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

P2281: !_MEMBAR (FP)

P2282: !_BSTC [18] (maybe <- 0x42800011) (FP) (CBR) (Branch target of P2268)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2282
nop
RET2282:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2283
nop

TARGET2268:
ba RET2268
nop


P2283: !_MEMBAR (FP)
membar #StoreLoad

P2284: !_REPLACEMENT [25] (Int) (Branch target of P2358)
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
ba P2285
nop

TARGET2358:
ba RET2358
nop


P2285: !_REPLACEMENT [26] (Int)
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

P2286: !_ST [13] (maybe <- 0x3000002) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2287: !_REPLACEMENT [27] (Int) (CBR) (Branch target of P2253)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2287
nop
RET2287:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2288
nop

TARGET2253:
ba RET2253
nop


P2288: !_REPLACEMENT [34] (Int) (Branch target of P2447)
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
ba P2289
nop

TARGET2447:
ba RET2447
nop


P2289: !_PREFETCH [25] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 96], 1

P2290: !_LD [9] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i1 + 32] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

P2291: !_REPLACEMENT [31] (Int) (Secondary ctx)
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

P2292: !_FLUSH [7] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2292
nop
RET2292:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2293: !_FLUSH [15] (Int)
! Unsupported instruction

P2294: !_REPLACEMENT [19] (Int) (Branch target of P2260)
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
ba P2295
nop

TARGET2260:
ba RET2260
nop


P2295: !_REPLACEMENT [18] (Int)
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

P2296: !_REPLACEMENT [9] (Int)
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

P2297: !_MEMBAR (FP)

P2298: !_BST [19] (maybe <- 0x42800012) (FP) (Branch target of P2521)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi
ba P2299
nop

TARGET2521:
ba RET2521
nop


P2299: !_MEMBAR (FP)
membar #StoreLoad

P2300: !_REPLACEMENT [14] (Int) (Nucleus ctx)
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

P2301: !_ST [27] (maybe <- 0x3000003) (Int) (Branch target of P2239)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 160 ]
add   %l4, 1, %l4
ba P2302
nop

TARGET2239:
ba RET2239
nop


P2302: !_REPLACEMENT [11] (Int) (CBR)
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
be,pn  %xcc, TARGET2302
nop
RET2302:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2303: !_MEMBAR (FP) (Branch target of P2270)
membar #StoreLoad
ba P2304
nop

TARGET2270:
ba RET2270
nop


P2304: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f18
fmovs %f18, %f11
fmovs %f19, %f12
fmovd %f40, %f18
fmovs %f18, %f13

P2305: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2305
nop
RET2305:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2306: !_PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2307: !_REPLACEMENT [21] (Int)
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

P2308: !_REPLACEMENT [26] (Int) (CBR)
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
be,pn  %xcc, TARGET2308
nop
RET2308:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2309: !_REPLACEMENT [28] (Int)
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

P2310: !_REPLACEMENT [25] (Int) (Secondary ctx) (Branch target of P2305)
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
ba P2311
nop

TARGET2305:
ba RET2305
nop


P2311: !_ST [18] (maybe <- 0x3000004) (Int) (LE) (Secondary ctx)
wr %g0, 0x89, %asi
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
stwa   %l6, [%i2 + 128] %asi
add   %l4, 1, %l4

P2312: !_REPLACEMENT [20] (Int) (CBR)
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
be,pn  %xcc, TARGET2312
nop
RET2312:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2313: !_REPLACEMENT [32] (Int)
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

P2314: !_REPLACEMENT [16] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P2315: !_MEMBAR (FP)

P2316: !_BSTC [15] (maybe <- 0x42800013) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 128 ] %asi

P2317: !_MEMBAR (FP)
membar #StoreLoad

P2318: !_REPLACEMENT [14] (Int) (CBR) (Secondary ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2318
nop
RET2318:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2319: !_REPLACEMENT [22] (Int) (Branch target of P2241)
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
ba P2320
nop

TARGET2241:
ba RET2241
nop


P2320: !_MEMBAR (FP) (CBR) (Branch target of P2343)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2320
nop
RET2320:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2321
nop

TARGET2343:
ba RET2343
nop


P2321: !_BLD [30] (FP) (Branch target of P2247)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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
ba P2322
nop

TARGET2247:
ba RET2247
nop


P2322: !_MEMBAR (FP)

P2323: !_REPLACEMENT [8] (Int) (CBR) (Branch target of P2240)
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
be,pn  %xcc, TARGET2323
nop
RET2323:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2324
nop

TARGET2240:
ba RET2240
nop


P2324: !_REPLACEMENT [21] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P2325: !_REPLACEMENT [19] (Int) (Secondary ctx)
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

P2326: !_REPLACEMENT [24] (Int) (Branch target of P2366)
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
ba P2327
nop

TARGET2366:
ba RET2366
nop


P2327: !_ST [6] (maybe <- 0x3000005) (Int) (CBR)
stw   %l4, [%i0 + 96 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2327
nop
RET2327:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2328: !_MEMBAR (FP)

P2329: !_BST [8] (maybe <- 0x42800014) (FP)
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

P2330: !_MEMBAR (FP)
membar #StoreLoad

P2331: !_ST [1] (maybe <- 0x42800016) (FP) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 4 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2331
nop
RET2331:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2332: !_MEMBAR (FP) (Branch target of P2528)
ba P2333
nop

TARGET2528:
ba RET2528
nop


P2333: !_BST [6] (maybe <- 0x42800017) (FP)
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

P2334: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2334
nop
RET2334:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2335: !_REPLACEMENT [20] (Int)
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

P2336: !_REPLACEMENT [26] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P2337: !_REPLACEMENT [20] (Int)
sethi %hi(0x2000), %o5
ld [%i2+256], %l6
st %l6, [%i2+256]
add %i2, %o5, %l3
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

P2338: !_REPLACEMENT [26] (Int)
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

P2339: !_REPLACEMENT [15] (Int)
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

P2340: !_PREFETCH [6] (Int) (LE)
wr %g0, 0x88, %asi
prefetcha [%i0 + 96] %asi, 1

P2341: !_LD [24] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 64], %f1
! 1 addresses covered

P2342: !_REPLACEMENT [19] (Int) (Branch target of P2534)
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
ba P2343
nop

TARGET2534:
ba RET2534
nop


P2343: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2343
nop
RET2343:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2344: !_BST [26] (maybe <- 0x42800019) (FP) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2344
nop
RET2344:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2345: !_MEMBAR (FP) (CBR) (Branch target of P2526)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2345
nop
RET2345:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2346
nop

TARGET2526:
ba RET2526
nop


P2346: !_PREFETCH [32] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 96] %asi, 1

P2347: !_REPLACEMENT [29] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P2348: !_ST [32] (maybe <- 0x3000006) (Int)
stw   %l4, [%i2 + 96 ]
add   %l4, 1, %l4

P2349: !_REPLACEMENT [21] (Int) (CBR) (Branch target of P2465)
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
be,pt  %xcc, TARGET2349
nop
RET2349:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2350
nop

TARGET2465:
ba RET2465
nop


P2350: !_REPLACEMENT [32] (Int)
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

P2351: !_IDC_FLIP [2] (Int)
IDC_FLIP(2351, 12129, 6, 0x43000008, 0x8, %i0, 0x8, %l6, %l7, %o5, %l3)

P2352: !_LD [16] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 16], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2353: !_REPLACEMENT [0] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
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
be,pn  %xcc, TARGET2353
nop
RET2353:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2354: !_REPLACEMENT [0] (Int) (CBR) (Nucleus ctx)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2354
nop
RET2354:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2355: !_PREFETCH [12] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2355
nop
RET2355:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2356: !_REPLACEMENT [33] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2356
nop
RET2356:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2357: !_MEMBAR (FP)
membar #StoreLoad

P2358: !_BLD [2] (FP) (CBR)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f32
membar #Sync
! 5 addresses covered
fmovd %f32, %f2
fmovd %f34, %f4
fmovd %f36, %f18
fmovs %f18, %f5
fmovd %f40, %f6

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2358
nop
RET2358:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2359: !_MEMBAR (FP)

P2360: !_BSTC [31] (maybe <- 0x4280001b) (FP) (Branch target of P2282)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
ba P2361
nop

TARGET2282:
ba RET2282
nop


P2361: !_MEMBAR (FP)
membar #StoreLoad

P2362: !_BLD [24] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P2363: !_MEMBAR (FP) (Secondary ctx)

P2364: !_REPLACEMENT [22] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P2365: !_REPLACEMENT [27] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(0x2000), %o5
ld [%i2+160], %l6
st %l6, [%i2+160]
add %i2, %o5, %l3
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
be,pn  %xcc, TARGET2365
nop
RET2365:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2366: !_FLUSH [14] (Int) (CBR)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2366
nop
RET2366:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2367: !_REPLACEMENT [9] (Int) (CBR)
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
be,pn  %xcc, TARGET2367
nop
RET2367:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2368: !_FLUSH [1] (Int) (Branch target of P2323)
! Unsupported instruction
ba P2369
nop

TARGET2323:
ba RET2323
nop


P2369: !_REPLACEMENT [29] (Int) (Secondary ctx)
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

P2370: !_REPLACEMENT [33] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P2371: !_FLUSH [5] (Int)
! Unsupported instruction

P2372: !_REPLACEMENT [28] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
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
be,pt  %xcc, TARGET2372
nop
RET2372:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2373: !_REPLACEMENT [34] (Int)
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

P2374: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2318)
membar #StoreLoad
ba P2375
nop

TARGET2318:
ba RET2318
nop


P2375: !_BLD [11] (FP) (CBR) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
be,pn  %xcc, TARGET2375
nop
RET2375:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2376: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2376
nop
RET2376:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2377: !_LD [4] (Int) (LE) (Branch target of P2365)
wr %g0, 0x88, %asi
lduwa [%i0 + 32] %asi, %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
ba P2378
nop

TARGET2365:
ba RET2365
nop


P2378: !_LD [28] (FP) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f12
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2378
nop
RET2378:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2379: !_REPLACEMENT [12] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P2380: !_PREFETCH [27] (Int) (Branch target of P2292)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 160], 1
ba P2381
nop

TARGET2292:
ba RET2292
nop


P2381: !_REPLACEMENT [31] (Int)
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

P2382: !_REPLACEMENT [3] (Int) (Nucleus ctx)
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

P2383: !_MEMBAR (Int) (Branch target of P2353)
membar #StoreLoad
ba P2384
nop

TARGET2353:
ba RET2353
nop


P2384: !_REPLACEMENT [18] (Int)
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

P2385: !_REPLACEMENT [25] (Int)
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

P2386: !_REPLACEMENT [27] (Int) (CBR) (Secondary ctx) (Branch target of P2413)
wr %g0, 0x81, %asi
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2386
nop
RET2386:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P2387
nop

TARGET2413:
ba RET2413
nop


P2387: !_ST [25] (maybe <- 0x4280001d) (FP) (Secondary ctx) (Branch target of P2449)
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i2 + 96 ] %asi
ba P2388
nop

TARGET2449:
ba RET2449
nop


P2388: !_MEMBAR (FP)

P2389: !_BSTC [6] (maybe <- 0x4280001e) (FP) (CBR) (Branch target of P2356)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2389
nop
RET2389:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2390
nop

TARGET2356:
ba RET2356
nop


P2390: !_MEMBAR (FP) (Loop exit)
membar #StoreLoad
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovs %f12, %f30
!--
loop_exit_6_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_6_0
nop

P2391: !_REPLACEMENT [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_6_1:
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

P2392: !_REPLACEMENT [12] (Int) (CBR) (Secondary ctx)
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
be,pt  %xcc, TARGET2392
nop
RET2392:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2393: !_REPLACEMENT [21] (Int)
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

P2394: !_REPLACEMENT [9] (Int)
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

P2395: !_REPLACEMENT [25] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P2396: !_IDC_FLIP [19] (Int) (Branch target of P2274)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2396, 22444, 6, 0x45000000, 0x0, %i2, 0x0, %l6, %l7, %o5, %l3)
ba P2397
nop

TARGET2274:
ba RET2274
nop


P2397: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2398: !_BLD [32] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f0
membar #Sync
! 2 addresses covered
fmovs %f8, %f1

P2399: !_MEMBAR (FP) (CBR) (Secondary ctx)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2399
nop
RET2399:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2400: !_REPLACEMENT [7] (Int) (Branch target of P2354)
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
ba P2401
nop

TARGET2354:
ba RET2354
nop


P2401: !_ST [0] (maybe <- 0x3000007) (Int) (Nucleus ctx) (Branch target of P2320)
wr %g0, 0x4, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4
ba P2402
nop

TARGET2320:
ba RET2320
nop


P2402: !_REPLACEMENT [10] (Int)
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

P2403: !_REPLACEMENT [29] (Int) (Branch target of P2493)
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
ba P2404
nop

TARGET2493:
ba RET2493
nop


P2404: !_REPLACEMENT [22] (Int)
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

P2405: !_PREFETCH [9] (Int)
prefetch [%i1 + 32], 1

P2406: !_REPLACEMENT [25] (Int)
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

P2407: !_MEMBAR (FP)

P2408: !_BST [14] (maybe <- 0x42800020) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 64 ] %asi

P2409: !_MEMBAR (FP) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_6_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_6_1
nop

P2410: !_ST [7] (maybe <- 0x42800021) (FP) (Loop entry) (Secondary ctx)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_6_2:
wr %g0, 0x81, %asi
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
sta   %f20, [%i0 + 128 ] %asi

P2411: !_MEMBAR (FP)

P2412: !_BST [16] (maybe <- 0x42800022) (FP) (Branch target of P2375)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f36 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f36
membar #Sync
stda %f32, [%i2 + 0 ] %asi
ba P2413
nop

TARGET2375:
ba RET2375
nop


P2413: !_MEMBAR (FP) (CBR) (Branch target of P2302)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2413
nop
RET2413:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2414
nop

TARGET2302:
ba RET2302
nop


P2414: !_FLUSHI [19] (Int)
flush %g0 

P2415: !_MEMBAR (FP)
membar #StoreLoad

P2416: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 0] %asi, %f0
membar #Sync
! 5 addresses covered
fmovs %f4, %f3
fmovd %f8, %f4

P2417: !_MEMBAR (FP) (CBR) (Branch target of P2327)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2417
nop
RET2417:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2418
nop

TARGET2327:
ba RET2327
nop


P2418: !_REPLACEMENT [20] (Int)
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

P2419: !_REPLACEMENT [25] (Int)
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

P2420: !_REPLACEMENT [12] (Int)
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

P2421: !_REPLACEMENT [25] (Int) (CBR)
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
be,pn  %xcc, TARGET2421
nop
RET2421:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2422: !_LD [9] (FP)
ld [%i1 + 32], %f5
! 1 addresses covered

P2423: !_LD [2] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
lduwa [%i0 + 8] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2424: !_MEMBAR (FP)

P2425: !_BSTC [18] (maybe <- 0x42800023) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i2 + 128 ] %asi

P2426: !_MEMBAR (FP)
membar #StoreLoad

P2427: !_ST [14] (maybe <- 0x3000008) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2428: !_ST [0] (maybe <- 0x3000009) (Int) (Branch target of P2334)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4
ba P2429
nop

TARGET2334:
ba RET2334
nop


P2429: !_REPLACEMENT [24] (Int) (Branch target of P2514)
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
ba P2430
nop

TARGET2514:
ba RET2514
nop


P2430: !_REPLACEMENT [0] (Int)
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

P2431: !_REPLACEMENT [3] (Int)
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

P2432: !_ST [28] (maybe <- 0x42800024) (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P2433: !_PREFETCH [16] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 16], 1

P2434: !_IDC_FLIP [3] (Int)
IDC_FLIP(2434, 26975, 6, 0x43000010, 0x10, %i0, 0x10, %l6, %l7, %o5, %l3)

P2435: !_LD [33] (Int) (Branch target of P2417)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
ba P2436
nop

TARGET2417:
ba RET2417
nop


P2436: !_PREFETCH [20] (Int) (Branch target of P2463)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 256], 1
ba P2437
nop

TARGET2463:
ba RET2463
nop


P2437: !_REPLACEMENT [20] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P2438: !_REPLACEMENT [10] (Int) (Branch target of P2308)
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
ba P2439
nop

TARGET2308:
ba RET2308
nop


P2439: !_MEMBAR (FP)

P2440: !_BST [2] (maybe <- 0x42800025) (FP)
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

P2441: !_MEMBAR (FP)
membar #StoreLoad

P2442: !_REPLACEMENT [9] (Int) (CBR)
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
be,pn  %xcc, TARGET2442
nop
RET2442:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2443: !_ST [9] (maybe <- 0x300000a) (Int) (Secondary ctx) (Branch target of P2482)
wr %g0, 0x81, %asi
stwa   %l4, [%i1 + 32] %asi
add   %l4, 1, %l4
ba P2444
nop

TARGET2482:
ba RET2482
nop


P2444: !_IDC_FLIP [24] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2444, 2336, 6, 0x45800040, 0x40, %i2, 0x40, %l6, %l7, %o5, %l3)

P2445: !_REPLACEMENT [8] (Int) (Branch target of P2518)
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
ba P2446
nop

TARGET2518:
ba RET2518
nop


P2446: !_REPLACEMENT [0] (Int)
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

P2447: !_REPLACEMENT [10] (Int) (CBR) (Branch target of P2355)
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
be,pt  %xcc, TARGET2447
nop
RET2447:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2448
nop

TARGET2355:
ba RET2355
nop


P2448: !_REPLACEMENT [0] (Int)
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

P2449: !_PREFETCH [33] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 0] %asi, 1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2449
nop
RET2449:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2450: !_REPLACEMENT [12] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P2451: !_IDC_FLIP [15] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(2451, 22779, 6, 0x44000080, 0x80, %i3, 0x80, %l6, %l7, %o5, %l3)

P2452: !_REPLACEMENT [0] (Int) (Branch target of P2477)
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
ba P2453
nop

TARGET2477:
ba RET2477
nop


P2453: !_REPLACEMENT [5] (Int)
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

P2454: !_MEMBAR (FP)
membar #StoreLoad

P2455: !_BLD [20] (FP) (Branch target of P2539)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 256] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6
ba P2456
nop

TARGET2539:
ba RET2539
nop


P2456: !_MEMBAR (FP) (Branch target of P2386)
ba P2457
nop

TARGET2386:
ba RET2386
nop


P2457: !_REPLACEMENT [0] (Int)
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

P2458: !_LD [24] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2459: !_LD [16] (FP) (Branch target of P2349)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 16], %f7
! 1 addresses covered
ba P2460
nop

TARGET2349:
ba RET2349
nop


P2460: !_REPLACEMENT [23] (Int)
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

P2461: !_REPLACEMENT [24] (Int)
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

P2462: !_FLUSH [29] (Int)
! Unsupported instruction

P2463: !_REPLACEMENT [34] (Int) (CBR)
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
be,pn  %xcc, TARGET2463
nop
RET2463:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2464: !_REPLACEMENT [12] (Int) (Branch target of P2287)
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
ba P2465
nop

TARGET2287:
ba RET2287
nop


P2465: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2465
nop
RET2465:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2466: !_BST [31] (maybe <- 0x4280002a) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P2467: !_MEMBAR (FP)
membar #StoreLoad

P2468: !_REPLACEMENT [19] (Int)
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

P2469: !_LD [26] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 128], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2470: !_REPLACEMENT [1] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P2471: !_REPLACEMENT [22] (Int)
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

P2472: !_REPLACEMENT [13] (Int)
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

P2473: !_REPLACEMENT [1] (Int)
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

P2474: !_MEMBAR (FP) (Branch target of P2331)
membar #StoreLoad
ba P2475
nop

TARGET2331:
ba RET2331
nop


P2475: !_BLD [28] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f32
membar #Sync
! 3 addresses covered
fmovd %f32, %f8
fmovd %f40, %f10

P2476: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2476
nop
RET2476:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2477: !_REPLACEMENT [2] (Int) (CBR)
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
be,pt  %xcc, TARGET2477
nop
RET2477:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2478: !_MEMBAR (FP) (Secondary ctx)

P2479: !_BST [27] (maybe <- 0x4280002c) (FP) (Secondary ctx)
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

P2480: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2345)
membar #StoreLoad
ba P2481
nop

TARGET2345:
ba RET2345
nop


P2481: !_REPLACEMENT [0] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P2482: !_REPLACEMENT [6] (Int) (CBR) (Secondary ctx)
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
be,pn  %xcc, TARGET2482
nop
RET2482:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2483: !_LD [34] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 64] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2484: !_REPLACEMENT [0] (Int) (Branch target of P2344)
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
ba P2485
nop

TARGET2344:
ba RET2344
nop


P2485: !_REPLACEMENT [3] (Int)
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

P2486: !_REPLACEMENT [23] (Int)
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

P2487: !_FLUSHI [10] (Int)
flush %g0 

P2488: !_MEMBAR (FP)

P2489: !_BST [17] (maybe <- 0x4280002e) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f40 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync
stda %f32, [%i2 + 64 ] %asi

P2490: !_MEMBAR (FP) (Branch target of P2442)
membar #StoreLoad
ba P2491
nop

TARGET2442:
ba RET2442
nop


P2491: !_REPLACEMENT [18] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P2492: !_MEMBAR (FP)

P2493: !_BSTC [13] (maybe <- 0x4280002f) (FP) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2493
nop
RET2493:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2494: !_MEMBAR (FP)
membar #StoreLoad

P2495: !_REPLACEMENT [9] (Int) (CBR)
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
be,pn  %xcc, TARGET2495
nop
RET2495:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2496: !_REPLACEMENT [28] (Int) (Branch target of P2476)
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
ba P2497
nop

TARGET2476:
ba RET2476
nop


P2497: !_MEMBAR (FP)

P2498: !_BST [28] (maybe <- 0x42800032) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P2499: !_MEMBAR (FP)
membar #StoreLoad

P2500: !_REPLACEMENT [33] (Int) (Branch target of P2495)
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
ba P2501
nop

TARGET2495:
ba RET2495
nop


P2501: !_IDC_FLIP [12] (Int) (Branch target of P2378)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(2501, 7517, 6, 0x44000004, 0x4, %i3, 0x4, %l6, %l7, %o5, %l3)
ba P2502
nop

TARGET2378:
ba RET2378
nop


P2502: !_REPLACEMENT [25] (Int)
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

P2503: !_REPLACEMENT [26] (Int)
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

P2504: !_REPLACEMENT [6] (Int) (Nucleus ctx) (Branch target of P2509)
wr %g0, 0x4, %asi
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
ba P2505
nop

TARGET2509:
ba RET2509
nop


P2505: !_REPLACEMENT [1] (Int)
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

P2506: !_MEMBAR (FP) (Secondary ctx)

P2507: !_BST [30] (maybe <- 0x42800035) (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P2508: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2509: !_REPLACEMENT [28] (Int) (CBR)
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
be,pn  %xcc, TARGET2509
nop
RET2509:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2510: !_REPLACEMENT [27] (Int) (Branch target of P2248)
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
ba P2511
nop

TARGET2248:
ba RET2248
nop


P2511: !_FLUSH [2] (Int)
! Unsupported instruction

P2512: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2512
nop
RET2512:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2513: !_BLD [1] (FP)
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

P2514: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2514
nop
RET2514:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2515: !_REPLACEMENT [6] (Int)
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

P2516: !_REPLACEMENT [33] (Int)
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

P2517: !_REPLACEMENT [30] (Int)
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

P2518: !_IDC_FLIP [5] (Int) (CBR)
IDC_FLIP(2518, 26038, 6, 0x43000040, 0x40, %i0, 0x40, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2518
nop
RET2518:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2519: !_REPLACEMENT [29] (Int)
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

P2520: !_PREFETCH [28] (Int)
prefetch [%i2 + 0], 1

P2521: !_REPLACEMENT [23] (Int) (CBR)
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
be,pt  %xcc, TARGET2521
nop
RET2521:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2522: !_LD [27] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 160], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

P2523: !_REPLACEMENT [15] (Int)
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

P2524: !_REPLACEMENT [1] (Int)
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

P2525: !_IDC_FLIP [20] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
IDC_FLIP(2525, 184, 6, 0x45000100, 0x100, %i3, 0x100, %l6, %l7, %o5, %l3)

P2526: !_LD [13] (FP) (CBR) (Secondary ctx) (Branch target of P2392)
wr %g0, 0x81, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 32] %asi, %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2526
nop
RET2526:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2527
nop

TARGET2392:
ba RET2392
nop


P2527: !_REPLACEMENT [13] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P2528: !_MEMBAR (FP) (CBR) (Branch target of P2276)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2528
nop
RET2528:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2529
nop

TARGET2276:
ba RET2276
nop


P2529: !_BSTC [8] (maybe <- 0x42800038) (FP)
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

P2530: !_MEMBAR (FP)
membar #StoreLoad

P2531: !_LD [32] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 96], %f1
! 1 addresses covered

P2532: !_REPLACEMENT [29] (Int)
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

P2533: !_PREFETCH [12] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 1

P2534: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2534
nop
RET2534:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2535: !_BST [11] (maybe <- 0x4280003a) (FP)
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

P2536: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2536
nop
RET2536:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2537: !_REPLACEMENT [5] (Int)
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

P2538: !_REPLACEMENT [10] (Int) (Secondary ctx) (Branch target of P2389)
wr %g0, 0x81, %asi
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
ba P2539
nop

TARGET2389:
ba RET2389
nop


P2539: !_REPLACEMENT [15] (Int) (Loop exit) (CBR)
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
be,pt  %xcc, TARGET2539
nop
RET2539:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_6_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_6_2
nop

P2540: !_MEMBAR (Int) (Branch target of P2367)
membar #StoreLoad
ba END_NODES6
nop

TARGET2367:
ba RET2367
nop


END_NODES6: ! Test instruction sequence for CPU 6 ends
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

func7:
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
sethi %hi(0x07deade1), %o5
or    %o5, %lo(0x07deade1), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x3800001), %l4
or    %l4, %lo(0x3800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x43000001), %o5
or    %o5, %lo(0x43000001), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x37800000), %o5
or    %o5, %lo(0x37800000), %o5
stw %o5, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x184e^4
sethi %hi(0x184e), %l0
or    %l0, %lo(0x184e), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES7: ! Test instruction sequence for ISTREAM 7 begins

P2541: !_REPLACEMENT [34] (Int) (Loop entry) (Branch target of P2894)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_7_0:
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
ba P2542
nop

TARGET2894:
ba RET2894
nop


P2542: !_REPLACEMENT [18] (Int)
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

P2543: !_ST [0] (maybe <- 0x3800001) (Int) (Secondary ctx) (Branch target of P2908)
wr %g0, 0x81, %asi
stwa   %l4, [%i0 + 0] %asi
add   %l4, 1, %l4
ba P2544
nop

TARGET2908:
ba RET2908
nop


P2544: !_REPLACEMENT [25] (Int)
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

P2545: !_REPLACEMENT [11] (Int)
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

P2546: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2546
nop
RET2546:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2547: !_BSTC [30] (maybe <- 0x43000001) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P2548: !_MEMBAR (FP)
membar #StoreLoad

P2549: !_REPLACEMENT [22] (Int)
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

P2550: !_REPLACEMENT [3] (Int)
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

P2551: !_REPLACEMENT [4] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P2552: !_MEMBAR (FP)

P2553: !_BST [12] (maybe <- 0x43000004) (FP)
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

P2554: !_MEMBAR (FP) (Branch target of P2849)
membar #StoreLoad
ba P2555
nop

TARGET2849:
ba RET2849
nop


P2555: !_REPLACEMENT [15] (Int)
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

P2556: !_ST [4] (maybe <- 0x43000007) (FP) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2556
nop
RET2556:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2557: !_MEMBAR (FP)
membar #StoreLoad

P2558: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
ldda [%i0 + 64] %asi, %f0
membar #Sync
! 2 addresses covered
fmovs %f8, %f1

P2559: !_MEMBAR (FP)

P2560: !_REPLACEMENT [23] (Int) (CBR)
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
be,pt  %xcc, TARGET2560
nop
RET2560:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2561: !_FLUSHI [8] (Int)
flush %g0 

P2562: !_FLUSH [15] (Int)
! Unsupported instruction

P2563: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2564: !_BLD [25] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 64] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f2
fmovd %f40, %f18
fmovs %f18, %f3

P2565: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2870)
ba P2566
nop

TARGET2870:
ba RET2870
nop


P2566: !_LD [4] (Int) (LE) (Secondary ctx)
wr %g0, 0x89, %asi
lduwa [%i0 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2567: !_REPLACEMENT [32] (Int)
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

P2568: !_LD [20] (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 256], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2568
nop
RET2568:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2569: !_REPLACEMENT [7] (Int) (CBR) (Nucleus ctx)
wr %g0, 0x4, %asi
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
be,pn  %xcc, TARGET2569
nop
RET2569:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2570: !_REPLACEMENT [19] (Int)
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

P2571: !_MEMBAR (FP)
membar #StoreLoad

P2572: !_BLD [15] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2572
nop
RET2572:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2573: !_MEMBAR (FP)

P2574: !_LD [6] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
lduwa [%i0 + 96] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2575: !_PREFETCH [23] (Int) (Branch target of P2701)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 32], 1
ba P2576
nop

TARGET2701:
ba RET2701
nop


P2576: !_LD [31] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 64], %f5
! 1 addresses covered

P2577: !_ST [15] (maybe <- 0x43000008) (FP) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

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


P2578: !_REPLACEMENT [17] (Int) (CBR)
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
be,pn  %xcc, TARGET2578
nop
RET2578:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2579: !_REPLACEMENT [24] (Int) (Branch target of P2919)
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
ba P2580
nop

TARGET2919:
ba RET2919
nop


P2580: !_IDC_FLIP [9] (Int) (CBR)
IDC_FLIP(2580, 19221, 7, 0x43800020, 0x20, %i1, 0x20, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2580
nop
RET2580:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2581: !_REPLACEMENT [0] (Int)
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

P2582: !_REPLACEMENT [4] (Int) (CBR)
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
be,pt  %xcc, TARGET2582
nop
RET2582:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2583: !_MEMBAR (FP)

P2584: !_BST [29] (maybe <- 0x43000009) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P2585: !_MEMBAR (FP)
membar #StoreLoad

P2586: !_PREFETCH [0] (Int) (Branch target of P2940)
prefetch [%i0 + 0], 1
ba P2587
nop

TARGET2940:
ba RET2940
nop


P2587: !_LD [30] (FP)
ld [%i3 + 32], %f6
! 1 addresses covered

P2588: !_REPLACEMENT [23] (Int)
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

P2589: !_ST [26] (maybe <- 0x3800002) (Int) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 128 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2589
nop
RET2589:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2590: !_ST [0] (maybe <- 0x4300000c) (FP) (Branch target of P2649)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]
ba P2591
nop

TARGET2649:
ba RET2649
nop


P2591: !_REPLACEMENT [21] (Int) (Branch target of P2810)
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
ba P2592
nop

TARGET2810:
ba RET2810
nop


P2592: !_REPLACEMENT [0] (Int)
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

P2593: !_MEMBAR (FP)
membar #StoreLoad

P2594: !_BLD [15] (FP) (Branch target of P2960)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 128] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
ba P2595
nop

TARGET2960:
ba RET2960
nop


P2595: !_MEMBAR (FP)

P2596: !_REPLACEMENT [7] (Int)
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

P2597: !_REPLACEMENT [5] (Int)
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

P2598: !_REPLACEMENT [20] (Int) (Branch target of P2569)
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
ba P2599
nop

TARGET2569:
ba RET2569
nop


P2599: !_ST [6] (maybe <- 0x3800003) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i0 + 96] %asi
add   %l4, 1, %l4

P2600: !_REPLACEMENT [25] (Int) (Secondary ctx)
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

P2601: !_FLUSH [6] (Int) (CBR) (Branch target of P2616)
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2601
nop
RET2601:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2602
nop

TARGET2616:
ba RET2616
nop


P2602: !_REPLACEMENT [8] (Int)
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

P2603: !_REPLACEMENT [32] (Int) (CBR)
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
be,pt  %xcc, TARGET2603
nop
RET2603:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2604: !_REPLACEMENT [2] (Int)
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

P2605: !_REPLACEMENT [17] (Int)
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

P2606: !_MEMBAR (FP) (Branch target of P2614)
ba P2607
nop

TARGET2614:
ba RET2614
nop


P2607: !_BSTC [33] (maybe <- 0x4300000d) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 0 ] %asi

P2608: !_MEMBAR (FP) (Branch target of P2589)
membar #StoreLoad
ba P2609
nop

TARGET2589:
ba RET2589
nop


P2609: !_REPLACEMENT [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
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

P2610: !_REPLACEMENT [9] (Int)
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

P2611: !_REPLACEMENT [16] (Int)
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

P2612: !_ST [0] (maybe <- 0x3800004) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P2613: !_REPLACEMENT [11] (Int)
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

P2614: !_LD [10] (Int) (Loop exit) (CBR)
lduw [%i1 + 64], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2614
nop
RET2614:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_7_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_7_0
nop

P2615: !_REPLACEMENT [14] (Int) (Loop entry) (Secondary ctx) (Branch target of P2653)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_7_1:
wr %g0, 0x81, %asi
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
ba P2616
nop

TARGET2653:
ba RET2653
nop


P2616: !_REPLACEMENT [17] (Int) (CBR)
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
be,pt  %xcc, TARGET2616
nop
RET2616:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2617: !_REPLACEMENT [31] (Int) (Secondary ctx)
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

P2618: !_LD [2] (Int) (LE) (CBR)
wr %g0, 0x88, %asi
lduwa [%i0 + 8] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2618
nop
RET2618:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2619: !_REPLACEMENT [18] (Int)
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

P2620: !_LD [1] (Int) (CBR)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2620
nop
RET2620:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2621: !_REPLACEMENT [0] (Int) (Secondary ctx) (Branch target of P2726)
wr %g0, 0x81, %asi
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
ba P2622
nop

TARGET2726:
ba RET2726
nop


P2622: !_MEMBAR (FP)
membar #StoreLoad

P2623: !_BLD [11] (FP) (Branch target of P2670)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 0] %asi, %f0
membar #Sync
! 3 addresses covered
fmovd %f8, %f2
ba P2624
nop

TARGET2670:
ba RET2670
nop


P2624: !_MEMBAR (FP)

P2625: !_REPLACEMENT [15] (Int)
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

P2626: !_REPLACEMENT [1] (Int)
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

P2627: !_MEMBAR (FP)

P2628: !_BST [30] (maybe <- 0x4300000e) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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
be,pn  %xcc, TARGET2628
nop
RET2628:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2629: !_MEMBAR (FP)
membar #StoreLoad

P2630: !_REPLACEMENT [22] (Int)
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

P2631: !_LD [13] (FP) (Branch target of P2657)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 32], %f3
! 1 addresses covered
ba P2632
nop

TARGET2657:
ba RET2657
nop


P2632: !_REPLACEMENT [34] (Int)
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

P2633: !_IDC_FLIP [23] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2633, 28563, 7, 0x45800020, 0x20, %i2, 0x20, %l6, %l7, %o5, %l3)

P2634: !_LD [5] (FP)
ld [%i0 + 64], %f4
! 1 addresses covered

P2635: !_REPLACEMENT [9] (Int) (Secondary ctx)
wr %g0, 0x81, %asi
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

P2636: !_REPLACEMENT [9] (Int) (CBR) (Branch target of P2900)
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
be,pn  %xcc, TARGET2636
nop
RET2636:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2637
nop

TARGET2900:
ba RET2900
nop


P2637: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2935)
membar #StoreLoad
ba P2638
nop

TARGET2935:
ba RET2935
nop


P2638: !_BLD [17] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f40, %f18
fmovs %f18, %f5

P2639: !_MEMBAR (FP) (Secondary ctx)

P2640: !_REPLACEMENT [28] (Int)
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

P2641: !_REPLACEMENT [15] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P2642: !_IDC_FLIP [18] (Int)
IDC_FLIP(2642, 18236, 7, 0x44800080, 0x80, %i2, 0x80, %l6, %l7, %o5, %l3)

P2643: !_REPLACEMENT [25] (Int) (Nucleus ctx)
wr %g0, 0x4, %asi
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

P2644: !_REPLACEMENT [0] (Int)
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

P2645: !_REPLACEMENT [5] (Int)
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

P2646: !_REPLACEMENT [20] (Int)
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

P2647: !_ST [16] (maybe <- 0x3800005) (Int) (Secondary ctx)
wr %g0, 0x81, %asi
stwa   %l4, [%i2 + 16] %asi
add   %l4, 1, %l4

P2648: !_REPLACEMENT [20] (Int)
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

P2649: !_ST [25] (maybe <- 0x43000011) (FP) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 96 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2649
nop
RET2649:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2650: !_REPLACEMENT [6] (Int) (Branch target of P2818)
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
ba P2651
nop

TARGET2818:
ba RET2818
nop


P2651: !_REPLACEMENT [7] (Int) (Secondary ctx)
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

P2652: !_REPLACEMENT [28] (Int)
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

P2653: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2653
nop
RET2653:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2654: !_BSTC [32] (maybe <- 0x43000012) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P2655: !_MEMBAR (FP)

P2656: !_BSTC [7] (maybe <- 0x43000014) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i0 + 128 ] %asi

P2657: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2657
nop
RET2657:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2658: !_REPLACEMENT [8] (Int)
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

P2659: !_REPLACEMENT [0] (Int)
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

P2660: !_REPLACEMENT [14] (Int)
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

P2661: !_REPLACEMENT [20] (Int)
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

P2662: !_REPLACEMENT [13] (Int) (CBR)
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
be,pt  %xcc, TARGET2662
nop
RET2662:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2663: !_REPLACEMENT [21] (Int) (Secondary ctx)
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

P2664: !_REPLACEMENT [18] (Int) (Nucleus ctx) (Branch target of P2891)
wr %g0, 0x4, %asi
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
ba P2665
nop

TARGET2891:
ba RET2891
nop


P2665: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2665
nop
RET2665:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2666: !_BLD [34] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldda [%i2 + 64] %asi, %f32
membar #Sync
! 1 addresses covered
fmovd %f32, %f6

P2667: !_MEMBAR (FP)

P2668: !_FLUSH [14] (Int)
! Unsupported instruction

P2669: !_MEMBAR (FP)

P2670: !_BST [20] (maybe <- 0x43000015) (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f32 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f32
membar #Sync
stda %f32, [%i3 + 256 ] %asi

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2670
nop
RET2670:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2671: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2671
nop
RET2671:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2672: !_REPLACEMENT [0] (Int) (CBR)
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2672
nop
RET2672:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2673: !_REPLACEMENT [5] (Int) (CBR) (Secondary ctx)
wr %g0, 0x81, %asi
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
be,pn  %xcc, TARGET2673
nop
RET2673:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2674: !_REPLACEMENT [28] (Int)
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

P2675: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2676: !_BLD [26] (FP) (Secondary ctx)
wr %g0, 0xf1, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldda [%i3 + 128] %asi, %f32
membar #Sync
! 2 addresses covered
fmovd %f32, %f18
fmovs %f18, %f7
fmovd %f40, %f8

P2677: !_MEMBAR (FP) (Secondary ctx)

P2678: !_LD [14] (FP)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 64], %f9
! 1 addresses covered

P2679: !_REPLACEMENT [29] (Int) (CBR)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2679
nop
RET2679:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2680: !_IDC_FLIP [9] (Int) (CBR)
IDC_FLIP(2680, 27929, 7, 0x43800020, 0x20, %i1, 0x20, %l6, %l7, %o5, %l3)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2680
nop
RET2680:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2681: !_MEMBAR (FP) (Secondary ctx)
membar #StoreLoad

P2682: !_BLD [4] (FP) (CBR) (Secondary ctx) (Branch target of P2694)
wr %g0, 0xf1, %asi
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
be,pt  %xcc, TARGET2682
nop
RET2682:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P2683
nop

TARGET2694:
ba RET2694
nop


P2683: !_MEMBAR (FP) (Secondary ctx) (Branch target of P2618)
ba P2684
nop

TARGET2618:
ba RET2618
nop


P2684: !_BST [8] (maybe <- 0x43000016) (FP)
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

P2685: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2685
nop
RET2685:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2686: !_IDC_FLIP [24] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
IDC_FLIP(2686, 18699, 7, 0x45800040, 0x40, %i2, 0x40, %l6, %l7, %o5, %l3)

P2687: !_MEMBAR (FP) (Branch target of P2770)
ba P2688
nop

TARGET2770:
ba RET2770
nop


P2688: !_BST [31] (maybe <- 0x43000018) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
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

P2689: !_MEMBAR (FP)
membar #StoreLoad

P2690: !_REPLACEMENT [29] (Int) (Secondary ctx) (Branch target of P2776)
wr %g0, 0x81, %asi
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
ba P2691
nop

TARGET2776:
ba RET2776
nop


P2691: !_REPLACEMENT [14] (Int)
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

P2692: !_MEMBAR (FP) (CBR)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2692
nop
RET2692:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2693: !_BST [23] (maybe <- 0x4300001a) (FP) (Branch target of P2789)
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
ba P2694
nop

TARGET2789:
ba RET2789
nop


P2694: !_MEMBAR (FP) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2694
nop
RET2694:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2695: !_MEMBAR (Int) (CBR) (Branch target of P3055)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2695
nop
RET2695:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P2696
nop

TARGET3055:
ba RET3055
nop


P2696: !_REPLACEMENT [10] (Int) (CBR)

! cbranch

