/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: n2_8tload_weight_486046.s
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
        done;

#define THREAD_COUNT 8
#define THREAD_STRIDE 1
#define SKIP_TRAPCHECK
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
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   prefetcha [tmp_reg3](rand & 0x1f), (0x0 | ((rand >> 5) & 0x1f));
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

.seg "text"
ALIGN_PAGE_8K
local_trap_handlers_start:

.align 64
extern_interrupt_handler:
stxa  %g0, [%g0]ASI_INTR_RECEIVE
retry

local_trap_handlers_end:

SECTION .MAIN
.global main
.global  tsotool_text_start
.text
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
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func0:
! 1000 (dynamic) instruction sequence begins
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

! Initialize LFSR to 0xf44^4
sethi %hi(0xf44), %l0
or    %l0, %lo(0xf44), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES0: ! Test instruction sequence for CPU 0 begins

P1: !_LD [11] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_0:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P2: !_LD [4] (FP) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_0
nop

P3: !_BSTC [11] (maybe <- 0x3f800001) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_1:
wr %g0, 0xe0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P4: !_BSTC [4] (maybe <- 0x3f800003) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_0_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_1
nop

P5: !_PREFETCH [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_2:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 17

P6: !_LD [15] (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_2
nop

P7: !_BLD [0] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_3:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P8: !_CASX [3] (maybe <- 0x1) (Int) (Loop exit)
add %i1, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_3
nop

P9: !_QWLD [10] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_4:
wr %g0, 0x82, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldqa  [%i3 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_4
nop

P10: !_LD [5] (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_5:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET10
nop
RET10:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P11: !_ST [15] (maybe <- 0x3f800005) (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_5
nop

P12: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_6:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P13: !_LD [6] (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_0_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_6
nop

P14: !_SWAP [12] (maybe <- 0x2) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_7:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P15: !_LD [13] (Int) (Loop exit)
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_7
nop

P16: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_8:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P17: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_8
nop

P18: !_LD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_9:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P19: !_BST [11] (maybe <- 0x3f800006) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_9
nop

P20: !_FLUSHI [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_10:
flush %g0 
loop_exit_0_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_10
nop

P21: !_LD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_11:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P22: !_LD [8] (FP) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_11
nop

P23: !_LD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_12:
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_12
nop

P24: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_13:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_13
nop

P25: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_14:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P26: !_LD [0] (FP)
ld [%i0 + 4], %f0
! 1 addresses covered

P27: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_14
nop

P28: !_DWST [3] (maybe <- 0x3f800008) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_15:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 8]

P29: !_QWST [4] (maybe <- 0x3f800009) (FP) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_0_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_15
nop

P30: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_16:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P31: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_16
nop

P32: !_PREFETCH [3] (Int) (Loop entry) (Loop exit) (Branch target of P553)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_17:
prefetch [%i1 + 12], 22
loop_exit_0_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_17
nop
ba P33
nop

TARGET553:
ba RET553
nop


P33: !_DWST [11] (maybe <- 0x3f80000b) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_18:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]

P34: !_SWAP [8] (maybe <- 0x3) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P35: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_18
nop

P36: !_REPLACEMENT [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_19:
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

P37: !_BLD [5] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_19
nop

P38: !_PREFETCH [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_20:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 1

P39: !_LD [14] (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_20
nop

P40: !_DWST [4] (maybe <- 0x4) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_21:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P41: !_REPLACEMENT [9] (Int) (Loop exit)
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
loop_exit_0_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_21
nop

P42: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_22:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P43: !_CASX [1] (maybe <- 0x5) (Int)
add %i0, 8, %l6
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

P44: !_LD [7] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_22
nop

P45: !_QWST [13] (maybe <- 0x3f80000c) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_23:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

P46: !_ST [3] (maybe <- 0x6) (Int) (Loop exit)
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4
loop_exit_0_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_23
nop

P47: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_24:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P48: !_DWLD [15] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P49: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_24
nop

P50: !_LD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_25:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_25
nop

P51: !_DWST [10] (maybe <- 0x3f80000e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_26:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]
loop_exit_0_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_26
nop

P52: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_27:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P53: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_27
nop

P54: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_28:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P55: !_PREFETCH [13] (Int) (NF) (Faults)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 18

P56: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_28
nop

P57: !_CAS [3] (maybe <- 0x7) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_29:
add %i1, 12, %o5
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_29
nop

P58: !_PREFETCH [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_30:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 22

P59: !_BSTC [15] (maybe <- 0x3f80000f) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_30
nop

P60: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_31:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P61: !_PREFETCH [7] (Int) (Faults)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 22

P62: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_31
nop

P63: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_32:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P64: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_32
nop

P65: !_LD [1] (Int) (Loop entry) (Branch target of P346)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_33:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P66
nop

TARGET346:
ba RET346
nop


P66: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_33
nop

P67: !_CASX [0] (maybe <- 0x8) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_34:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_34
nop

P68: !_QWLD [1] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_35:
wr %g0, 0x82, %asi
ldqa  [%i0 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P69: !_PREFETCH [14] (Int) (Faults) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 20
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_35
nop

P70: !_PREFETCH [7] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_36:
prefetch [%g0], 0

P71: !_LD [14] (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_36
nop

P72: !_REPLACEMENT [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_37:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
loop_exit_0_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_37
nop

P73: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_38:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P74: !_ST [4] (maybe <- 0x9) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P75: !_LD [14] (Int) (Loop exit) (Branch target of P403)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_38
nop
ba P76
nop

TARGET403:
ba RET403
nop


P76: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_39:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P77: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_39
nop

P78: !_ST [1] (maybe <- 0x3f800011) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_40:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]
loop_exit_0_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_40
nop

P79: !_QWLD [4] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_41:
wr %g0, 0x82, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldqa  [%i3 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_41
nop

P80: !_PREFETCH [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_42:
prefetch [%i0 + 4], 23
loop_exit_0_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_42
nop

P81: !_DWST [0] (maybe <- 0x3f800012) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_43:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P82: !_LD [14] (FP) (Loop exit) (Branch target of P290)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_43
nop
ba P83
nop

TARGET290:
ba RET290
nop


P83: !_BSTC [5] (maybe <- 0x3f800013) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_44:
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_44
nop

P84: !_LD [11] (FP) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_45:
wr %g0, 0x82, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 12] %asi, %f0
! 1 addresses covered

P85: !_DWST [15] (maybe <- 0x3f800015) (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_45
nop

P86: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_46:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 3

P87: !_BSTC [6] (maybe <- 0x3f800016) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_0_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_46
nop

P88: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_47:
prefetch [%i1 + 12], 2

P89: !_PREFETCH [5] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 22
loop_exit_0_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_47
nop

P90: !_LD [5] (FP) (Loop entry) (Loop exit) (Branch target of P229)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_48:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_48
nop
ba P91
nop

TARGET229:
ba RET229
nop


P91: !_CAS [5] (maybe <- 0xa) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_49:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P92: !_LD [11] (FP) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_49
nop

P93: !_PREFETCH [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_50:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 4

P94: !_LD [11] (Int) (Branch target of P600)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P95
nop

TARGET600:
ba RET600
nop


P95: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_50
nop

P96: !_BST [7] (maybe <- 0x3f800018) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_51:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P97: !_QWLD [1] (FP) (Loop exit)
ldq   [%i0 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_51
nop

P98: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_52:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P99: !_FLUSH [0] (Int)
! Unsupported instruction

P100: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_52
nop

P101: !_LD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_53:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P102: !_FLUSH [8] (Int) (Loop exit)
! Unsupported instruction
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_53
nop

P103: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_54:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P104: !_REPLACEMENT [12] (Int)
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

P105: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_54
nop

P106: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_55:
prefetch [%i1 + 12], 22

P107: !_LD [7] (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_55
nop

P108: !_PREFETCH [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_56:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 4
loop_exit_0_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_56
nop

P109: !_ST [15] (maybe <- 0xb) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_57:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P110: !_LD [8] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_57
nop

P111: !_LD [0] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_58:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET111
nop
RET111:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P112: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_58
nop

P113: !_SWAP [14] (maybe <- 0xc) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_59:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P114: !_PREFETCH [0] (Int) (Faults)
prefetch [%g0], 4

P115: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_59
nop

P116: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_60:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P117: !_LD [3] (Int) (Loop exit) (CBR)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET117
nop
RET117:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_60
nop

P118: !_REPLACEMENT [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_61:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
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

P119: !_LD [7] (FP) (Loop exit) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET119
nop
RET119:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_61
nop

P120: !_LD [0] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_62:
ld [%i0 + 4], %f0
! 1 addresses covered

P121: !_LD [13] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P122: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_62
nop

P123: !_LD [10] (FP) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_63:
wr %g0, 0x82, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 4] %asi, %f0
! 1 addresses covered

P124: !_PREFETCH [14] (Int) (Faults) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 21
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_63
nop

P125: !_PREFETCH [11] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_64:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 20
loop_exit_0_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_64
nop

P126: !_LD [10] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_65:
wr %g0, 0x88, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P127: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_65
nop

P128: !_LD [2] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_66:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 2 

sethi %hi(0x200000), %l3
sub   %i1, %l3, %i1
wr %g0, 0x88, %asi
lduwa [%i1 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P129: !_LD [6] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0x200000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_66
nop

P130: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_67:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P131: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_67
nop

P132: !_SWAP [5] (maybe <- 0xd) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_68:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P133: !_LD [14] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_68
nop

P134: !_LD [6] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_69:
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P135: !_LD [8] (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET135
nop
RET135:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P136: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_69
nop

P137: !_BST [5] (maybe <- 0x3f80001a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_70:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_70
nop

P138: !_BSTC [11] (maybe <- 0x3f80001c) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_71:
wr %g0, 0xe0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P139: !_LD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P140: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_71
nop

P141: !_PREFETCH [0] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_72:
wr %g0, 0x88, %asi
prefetcha [%i0 + 4] %asi, 21

P142: !_LD [15] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P143: !_LD [15] (Int) (Loop exit) (Branch target of P383)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_72
nop
ba P144
nop

TARGET383:
ba RET383
nop


P144: !_ST [8] (maybe <- 0x3f80001e) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_73:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P145: !_DWLD [3] (Int) (CBR)
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET145
nop
RET145:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P146: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_73
nop

P147: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_74:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P148: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_74
nop

P149: !_BSTC [12] (maybe <- 0x3f80001f) (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_75:
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET149
nop
RET149:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P150: !_PREFETCH [6] (Int) (Faults) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 20
loop_exit_0_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_75
nop

P151: !_PREFETCH [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_76:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 4
loop_exit_0_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_76
nop

P152: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_77:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 21

P153: !_LD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P154: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_77
nop

P155: !_FLUSH [13] (Int) (Loop entry) (Loop exit) (Branch target of P342)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_78:
! Unsupported instruction
loop_exit_0_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_78
nop
ba P156
nop

TARGET342:
ba RET342
nop


P156: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_79:
prefetch [%i1 + 12], 0

P157: !_REPLACEMENT [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
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
loop_exit_0_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_79
nop

P158: !_QWLD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_80:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P159: !_BST [11] (maybe <- 0x3f800021) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_80
nop

P160: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_81:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P161: !_PREFETCH [4] (Int) (NF) (Faults)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 17

P162: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_81
nop

P163: !_CASX [12] (maybe <- 0xe) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_82:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_82
nop

P164: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_83:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P165: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_83
nop

P166: !_REPLACEMENT [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_84:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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
loop_exit_0_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_84
nop

P167: !_QWLD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_85:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P168: !_PREFETCH [2] (Int) (Loop exit)
prefetch [%i1 + 4], 25
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_85
nop

P169: !_LD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_86:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_86
nop

P170: !_LD [15] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_87:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P171: !_BSTC [6] (maybe <- 0x3f800023) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_87
nop

P172: !_DWST [5] (maybe <- 0xf) (Int) (Loop entry) (Branch target of P476)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_88:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4
ba P173
nop

TARGET476:
ba RET476
nop


P173: !_LD [11] (FP) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_88
nop

P174: !_PREFETCH [8] (Int) (Loop entry) (Loop exit) (Branch target of P135)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_89:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 23
loop_exit_0_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_89
nop
ba P175
nop

TARGET135:
ba RET135
nop


P175: !_PREFETCH [3] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_90:
wr %g0, 0x82, %asi
prefetcha [%i1 + 12] %asi, 1

P176: !_BST [15] (maybe <- 0x3f800025) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_90
nop

P177: !_PREFETCH [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_91:
prefetch [%i1 + 4], 1
loop_exit_0_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_91
nop

P178: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_92:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P179: !_PREFETCH [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 19

P180: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_92
nop

P181: !_PREFETCH [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_93:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 0

P182: !_BST [5] (maybe <- 0x3f800027) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_93
nop

P183: !_LD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_94:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P184: !_PREFETCH [14] (Int) (Faults) (Loop exit) (LE)
wr %g0, 0x88, %asi
prefetcha [%g0] %asi, 4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_94
nop

P185: !_DWST [9] (maybe <- 0x10) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_95:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 8]
add   %l4, 1, %l4
loop_exit_0_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_95
nop

P186: !_BLD [9] (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_96:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET186
nop
RET186:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P187: !_LD [9] (Int) (NF)
wr %g0, 0x82, %asi
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P188: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_96
nop

P189: !_PREFETCH [13] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_97:
wr %g0, 0x82, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 30

P190: !_CASX [1] (maybe <- 0x11) (Int) (Loop exit) (Branch target of P278)
add %i0, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_97
nop
ba P191
nop

TARGET278:
ba RET278
nop


P191: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_98:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P192: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_98
nop

P193: !_ST [9] (maybe <- 0x12) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_99:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_0_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_99
nop

P194: !_ST [13] (maybe <- 0x3f800029) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_100:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 12 ]

P195: !_PREFETCH [1] (Int) (Faults) (Loop exit)
prefetch [%i0 + 12], 21
loop_exit_0_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_100
nop

P196: !_LD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_101:
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_101
nop

P197: !_BST [0] (maybe <- 0x3f80002a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_102:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_0_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_102
nop

P198: !_LD [13] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_103:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P199: !_SWAP [0] (maybe <- 0x13) (Int)
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P200: !_LD [14] (Int) (Loop exit) (Branch target of P284)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_103
nop
ba P201
nop

TARGET284:
ba RET284
nop


P201: !_CASX [5] (maybe <- 0x14) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_104:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_104
nop

P202: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_105:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P203: !_REPLACEMENT [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
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

P204: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_105
nop

P205: !_PREFETCH [9] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_106:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 26

P206: !_CASX [6] (maybe <- 0x15) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_106
nop

P207: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_107:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P208: !_PREFETCH [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 21

P209: !_LD [9] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_107
nop

P210: !_ST [4] (maybe <- 0x16) (Int) (Loop entry) (Branch target of P186)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_108:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
ba P211
nop

TARGET186:
ba RET186
nop


P211: !_LD [10] (FP) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_108
nop

P212: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_109:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 20

P213: !_LD [6] (Int)
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P214: !_LD [12] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_109
nop

P215: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_110:
membar #StoreLoad
loop_exit_0_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_110
nop

P216: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_111:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P217: !_DWLD [15] (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %f2
! 1 addresses covered
fmovs %f3, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_0_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_111
nop

P218: !_SWAP [0] (maybe <- 0x17) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_112:
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P219: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_112
nop

P220: !_PREFETCH [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_113:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 3
loop_exit_0_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_113
nop

P221: !_LD [1] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_114:
wr %g0, 0x82, %asi
lduwa [%i0 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P222: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_114
nop

P223: !_LD [15] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_115:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET223
nop
RET223:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P224: !_PREFETCH [6] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 20

P225: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_115
nop

P226: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_116:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P227: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_116
nop

P228: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_117:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P229: !_LD [14] (Int) (Loop exit) (CBR) (Branch target of P355)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

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

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_117
nop
ba P230
nop

TARGET355:
ba RET355
nop


P230: !_LD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_118:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P231: !_BST [10] (maybe <- 0x3f80002c) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_118
nop

P232: !_LD [9] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_119:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P233: !_LD [15] (FP)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P234: !_LD [15] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i3 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_119
nop

P235: !_BSTC [5] (maybe <- 0x3f80002e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_120:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_0_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_120
nop

P236: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_121:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P237: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_121
nop

P238: !_BST [11] (maybe <- 0x3f800030) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_122:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P239: !_REPLACEMENT [8] (Int) (Loop exit)
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
loop_exit_0_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_122
nop

P240: !_REPLACEMENT [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_123:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
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
loop_exit_0_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_123
nop

P241: !_PREFETCH [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_124:
prefetch [%i0 + 12], 23
loop_exit_0_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_124
nop

P242: !_PREFETCH [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_125:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 22
loop_exit_0_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_125
nop

P243: !_LD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_126:
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_126
nop

P244: !_BSTC [11] (maybe <- 0x3f800032) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_127:
wr %g0, 0xe0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P245: !_LD [3] (Int)
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P246: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_127
nop

P247: !_BLD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_128:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P248: !_CASX [1] (maybe <- 0x18) (Int) (Loop exit)
add %i0, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_128
nop

P249: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_129:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_129
nop

P250: !_REPLACEMENT [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_130:
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
loop_exit_0_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_130
nop

P251: !_SWAP [6] (maybe <- 0x19) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_131:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P252: !_LD [3] (FP)
ld [%i1 + 12], %f0
! 1 addresses covered

P253: !_LD [6] (Int) (Loop exit)
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_131
nop

P254: !_LD [7] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_132:
wr %g0, 0x82, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P255: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P256: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_132
nop

P257: !_PREFETCH [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_133:
prefetch [%i1 + 12], 1
loop_exit_0_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_133
nop

P258: !_QWST [15] (maybe <- 0x3f800034) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_134:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
loop_exit_0_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_134
nop

P259: !_PREFETCH [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_135:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 22
loop_exit_0_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_135
nop

P260: !_PREFETCH [10] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_136:
prefetch [%g0], 31
loop_exit_0_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_136
nop

P261: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_137:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P262: !_PREFETCH [13] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 4

P263: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_137
nop

P264: !_LD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_138:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P265: !_LD [0] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P266: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_138
nop

P267: !_DWST [3] (maybe <- 0x1a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_139:
mov %l4, %l6 
stx %l6, [%i1 + 8]
add   %l4, 1, %l4
loop_exit_0_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_139
nop

P268: !_DWLD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_140:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_140
nop

P269: !_BST [3] (maybe <- 0x3f800036) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_141:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
loop_exit_0_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_141
nop

P270: !_BST [7] (maybe <- 0x3f800038) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_142:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_142
nop

P271: !_QWST [12] (maybe <- 0x3f80003a) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_143:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P272: !_BSTC [7] (maybe <- 0x3f80003c) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_143
nop

P273: !_LD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_144:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P274: !_ST [15] (maybe <- 0x1b) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_144
nop

P275: !_QWLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_145:
ldq   [%i0 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_145
nop

P276: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_146:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P277: !_PREFETCH [3] (Int)
prefetch [%i1 + 12], 22

P278: !_LD [9] (Int) (Loop exit) (CBR)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET278
nop
RET278:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_146
nop

P279: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_147:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P280: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_147
nop

P281: !_LD [9] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_148:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET281
nop
RET281:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_148
nop

P282: !_LD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_149:
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_149
nop

P283: !_CAS [7] (maybe <- 0x1c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_150:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_150
nop

P284: !_LD [1] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_151:
ld [%i0 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET284
nop
RET284:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P285: !_LD [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P286: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_151
nop

P287: !_LD [15] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_152:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P288: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P289: !_LD [4] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_152
nop

P290: !_LD [7] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_153:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET290
nop
RET290:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P291: !_PREFETCH [11] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 2
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_153
nop

P292: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_154:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P293: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_154
nop

P294: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_155:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P295: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_155
nop

P296: !_SWAP [10] (maybe <- 0x1d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_156:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P297: !_QWST [15] (maybe <- 0x3f80003e) (FP) (Branch target of P111)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
ba P298
nop

TARGET111:
ba RET111
nop


P298: !_LD [3] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i1 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_156
nop

P299: !_LD [0] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_157:
ld [%i0 + 4], %f0
! 1 addresses covered

P300: !_LD [10] (FP) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 4] %asi, %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_157
nop

P301: !_PREFETCH [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_158:
prefetch [%i0 + 12], 3
loop_exit_0_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_158
nop

P302: !_QWLD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_159:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_159
nop

P303: !_REPLACEMENT [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_160:
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
loop_exit_0_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_160
nop

P304: !_REPLACEMENT [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_161:
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

P305: !_SWAP [7] (maybe <- 0x1e) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P306: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_161
nop

P307: !_LD [10] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_162:
wr %g0, 0x82, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P308: !_PREFETCH [15] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 31

P309: !_LD [14] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_162
nop

P310: !_SWAP [10] (maybe <- 0x1f) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_163:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET310
nop
RET310:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P311: !_LD [0] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_163
nop

P312: !_QWST [13] (maybe <- 0x3f800040) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_164:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_0_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_164
nop

P313: !_SWAP [14] (maybe <- 0x20) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_165:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P314: !_LD [14] (FP)
ld [%i3 + 4], %f0
! 1 addresses covered

P315: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_165
nop

P316: !_CAS [9] (maybe <- 0x21) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_166:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l3
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

P317: !_BLD [0] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_166
nop

P318: !_LD [1] (FP) (NF) (Loop entry) (Branch target of P334)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_167:
wr %g0, 0x82, %asi
lda    [%i0 + 12] %asi, %f0
! 1 addresses covered
ba P319
nop

TARGET334:
ba RET334
nop


P319: !_DWST [6] (maybe <- 0x3f800042) (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_167
nop

P320: !_LD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_168:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_168
nop

P321: !_PREFETCH [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_169:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 20
loop_exit_0_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_169
nop

P322: !_PREFETCH [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_170:
prefetch [%i0 + 4], 0
loop_exit_0_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_170
nop

P323: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_171:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P324: !_LD [9] (Int) (Loop exit) (Branch target of P223)
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_171
nop
ba P325
nop

TARGET223:
ba RET223
nop


P325: !_BSTC [8] (maybe <- 0x3f800043) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_172:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P326: !_CASX [12] (maybe <- 0x22) (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_172
nop

P327: !_QWST [3] (maybe <- 0x3f800045) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_173:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]
loop_exit_0_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_173
nop

P328: !_LD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_174:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_174
nop

P329: !_PREFETCH [13] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_175:
wr %g0, 0x82, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 26

P330: !_REPLACEMENT [12] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
loop_exit_0_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_175
nop

P331: !_QWST [8] (maybe <- 0x3f800047) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_176:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_0_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_176
nop

P332: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_177:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P333: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_177
nop

P334: !_LD [12] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_178:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET334
nop
RET334:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P335: !_DWLD [5] (Int) (NF)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 8] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P336: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_178
nop

P337: !_BLD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_179:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_179
nop

P338: !_QWST [14] (maybe <- 0x3f800049) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_180:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

P339: !_PREFETCH [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 3
loop_exit_0_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_180
nop

P340: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_181:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P341: !_BSTC [0] (maybe <- 0x3f80004b) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

P342: !_LD [12] (Int) (Loop exit) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET342
nop
RET342:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_181
nop

P343: !_PREFETCH [8] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_182:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 0

P344: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P345: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_182
nop

P346: !_LD [5] (FP) (Loop entry) (CBR) (Branch target of P281)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_183:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET346
nop
RET346:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P347
nop

TARGET281:
ba RET281
nop


P347: !_PREFETCH [9] (Int) (Faults) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 23
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_183
nop

P348: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_184:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P349: !_LD [15] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_184
nop

P350: !_BSTC [10] (maybe <- 0x3f80004d) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_185:
wr %g0, 0xe0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P351: !_BST [2] (maybe <- 0x3f80004f) (FP) (Loop exit)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
loop_exit_0_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_185
nop

P352: !_CASX [1] (maybe <- 0x23) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_186:
add %i0, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_186
nop

P353: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_187:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P354: !_CASX [4] (maybe <- 0x24) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_187
nop

P355: !_PREFETCH [3] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_188:
prefetch [%i1 + 12], 22

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET355
nop
RET355:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_188
nop

P356: !_LD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_189:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P357: !_LD [6] (Int) (Branch target of P117)
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P358
nop

TARGET117:
ba RET117
nop


P358: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_189
nop

P359: !_CAS [3] (maybe <- 0x25) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_190:
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_190
nop

P360: !_CASX [7] (maybe <- 0x26) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_191:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P361: !_PREFETCH [3] (Int) (Loop exit)
prefetch [%i1 + 12], 4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_191
nop

P362: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_192:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_192
nop

P363: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_193:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P364: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_193
nop

P365: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_194:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P366: !_FLUSH [8] (Int)
! Unsupported instruction

P367: !_LD [2] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i1 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_194
nop

P368: !_LD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_195:
ld [%i1 + 12], %f0
! 1 addresses covered

P369: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P370: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_195
nop

P371: !_SWAP [0] (maybe <- 0x27) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_196:
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P372: !_PREFETCH [11] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 1

P373: !_LD [10] (Int) (Loop exit)
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_196
nop

P374: !_LD [14] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_197:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P375: !_PREFETCH [8] (Int) (NF) (Loop exit) (Branch target of P10)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 19
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_197
nop
ba P376
nop

TARGET10:
ba RET10
nop


P376: !_PREFETCH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_198:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 0
loop_exit_0_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_198
nop

P377: !_BLD [0] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_199:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P378: !_PREFETCH [13] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 20
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_199
nop

P379: !_BST [12] (maybe <- 0x3f800051) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_200:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_200
nop

P380: !_QWLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_201:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_201
nop

P381: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_202:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_202
nop

P382: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_203:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P383: !_LD [6] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET383
nop
RET383:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_203
nop

P384: !_PREFETCH [10] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_204:
prefetch [%g0], 17
loop_exit_0_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_204
nop

P385: !_BST [1] (maybe <- 0x3f800053) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_205:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_0_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_205
nop

P386: !_LD [8] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_206:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P387: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_206
nop

P388: !_PREFETCH [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_207:
prefetch [%i0 + 4], 1
loop_exit_0_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_207
nop

P389: !_PREFETCH [7] (Int) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_208:
prefetch [%g0], 19

P390: !_PREFETCH [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 20
loop_exit_0_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_208
nop

P391: !_BSTC [0] (maybe <- 0x3f800055) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_209:
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

P392: !_LD [1] (FP) (Loop exit)
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_209
nop

P393: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_210:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P394: !_PREFETCH [5] (Int) (Faults)
prefetch [%g0], 4

P395: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_210
nop

P396: !_PREFETCH [13] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_211:
prefetch [%g0], 2

P397: !_PREFETCH [0] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%i0 + 4] %asi, 21
loop_exit_0_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_211
nop

P398: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_212:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P399: !_LD [15] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P400: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_212
nop

P401: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_213:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_213
nop

P402: !_LD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_214:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_214
nop

P403: !_DWST [13] (maybe <- 0x3f800057) (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_215:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]

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


P404: !_LD [12] (FP) (Loop exit)
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_215
nop

P405: !_CASX [6] (maybe <- 0x28) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_216:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P406: !_QWLD [11] (FP) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldqa  [%i3 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_216
nop

P407: !_LD [10] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_217:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P408: !_PREFETCH [9] (Int) (Faults) (Loop exit) (LE)
wr %g0, 0x88, %asi
prefetcha [%g0] %asi, 2
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_217
nop

P409: !_LD [14] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_218:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P410: !_LD [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P411: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_218
nop

P412: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_219:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P413: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_219
nop

P414: !_LD [15] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_220:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P415: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P416: !_LD [8] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_220
nop

P417: !_FLUSH [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_221:
! Unsupported instruction

P418: !_QWLD [6] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_221
nop

P419: !_LD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_222:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P420: !_DWST [13] (maybe <- 0x3f800058) (FP) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_222
nop

P421: !_LD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_223:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_223
nop

P422: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_224:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P423: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_224
nop

P424: !_PREFETCH [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_225:
prefetch [%i1 + 12], 2
loop_exit_0_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_225
nop

P425: !_PREFETCH [11] (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_226:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 3
loop_exit_0_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_226
nop

P426: !_PREFETCH [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_227:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 21

P427: !_DWST [9] (maybe <- 0x29) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4
loop_exit_0_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_227
nop

P428: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_228:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P429: !_REPLACEMENT [13] (Int)
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

P430: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_228
nop

P431: !_FLUSH [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_229:
! Unsupported instruction
loop_exit_0_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_229
nop

P432: !_FLUSH [12] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_230:
! Unsupported instruction

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET432
nop
RET432:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_230
nop

P433: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_231:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P434: !_LD [10] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET434
nop
RET434:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_231
nop

P435: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_232:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P436: !_PREFETCH [0] (Int)
prefetch [%i0 + 4], 22

P437: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_232
nop

P438: !_LD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_233:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_233
nop

P439: !_LD [1] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_234:
ld [%i0 + 12], %f0
! 1 addresses covered

P440: !_LD [12] (FP) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_234
nop

P441: !_CASX [7] (maybe <- 0x2a) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_235:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET441
nop
RET441:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P442: !_LD [3] (FP) (Loop exit)
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_235
nop

P443: !_REPLACEMENT [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_236:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
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

P444: !_PREFETCH [3] (Int) (Loop exit)
prefetch [%i1 + 12], 0
loop_exit_0_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_236
nop

P445: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_237:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P446: !_LD [2] (Int) (Loop exit) (Branch target of P432)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_237
nop
ba P447
nop

TARGET432:
ba RET432
nop


P447: !_LD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_238:
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_238
nop

P448: !_PREFETCH [10] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_239:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 21

P449: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
loop_exit_0_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_239
nop

P450: !_LD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_240:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P451: !_LD [3] (Int)
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P452: !_LD [11] (Int) (NF) (Faults) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%g0] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_240
nop

P453: !_SWAP [0] (maybe <- 0x2b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_241:
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P454: !_LD [15] (FP) (NF) (Branch target of P588)
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered
ba P455
nop

TARGET588:
ba RET588
nop


P455: !_LD [4] (Int) (Loop exit) (Branch target of P546)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_241
nop
ba P456
nop

TARGET546:
ba RET546
nop


P456: !_FLUSH [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_242:
! Unsupported instruction

P457: !_LD [15] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P458: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_242
nop

P459: !_ST [0] (maybe <- 0x2c) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_243:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P460: !_LD [5] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_243
nop

P461: !_PREFETCH [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_244:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 2
loop_exit_0_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_244
nop

P462: !_PREFETCH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_245:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 22
loop_exit_0_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_245
nop

P463: !_BST [2] (maybe <- 0x3f800059) (FP) (Loop entry) (Loop exit) (Branch target of P149)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_246:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
loop_exit_0_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_246
nop
ba P464
nop

TARGET149:
ba RET149
nop


P464: !_BLD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_247:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P465: !_BST [9] (maybe <- 0x3f80005b) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_247
nop

P466: !_ST [14] (maybe <- 0x3f80005d) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_248:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P467: !_QWST [13] (maybe <- 0x3f80005e) (FP) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
loop_exit_0_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_248
nop

P468: !_SWAP [1] (maybe <- 0x2d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_249:
mov %l4, %o0
swap  [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P469: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_249
nop

P470: !_PREFETCH [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_250:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 31

P471: !_CASX [5] (maybe <- 0x2e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_250
nop

P472: !_PREFETCH [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_251:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 23

P473: !_DWLD [5] (FP) (Loop exit)
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_251
nop

P474: !_DWLD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_252:
ldd [%i1 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0

P475: !_SWAP [14] (maybe <- 0x2f) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P476: !_LD [0] (Int) (Loop exit) (CBR)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET476
nop
RET476:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_252
nop

P477: !_PREFETCH [10] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_253:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 20

P478: !_BST [6] (maybe <- 0x3f800060) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_253
nop

P479: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_254:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P480: !_PREFETCH [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 23

P481: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_254
nop

P482: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_255:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P483: !_BSTC [15] (maybe <- 0x3f800062) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P484: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_255
nop

P485: !_CASX [8] (maybe <- 0x30) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_256:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET485
nop
RET485:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_256
nop

P486: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_257:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P487: !_LD [8] (Int) (Loop exit) (Branch target of P561)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_257
nop
ba P488
nop

TARGET561:
ba RET561
nop


P488: !_FLUSH [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_258:
! Unsupported instruction
loop_exit_0_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_258
nop

P489: !_ST [10] (maybe <- 0x31) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_259:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_0_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_259
nop

P490: !_PREFETCH [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_260:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 28
loop_exit_0_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_260
nop

P491: !_LD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_261:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_261
nop

P492: !_BSTC [10] (maybe <- 0x3f800064) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_262:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P493: !_PREFETCH [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 21
loop_exit_0_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_262
nop

P494: !_BSTC [12] (maybe <- 0x3f800066) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_263:
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P495: !_LD [11] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_263
nop

P496: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_264:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P497: !_LD [7] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_264
nop

P498: !_FLUSH [11] (Int) (Loop entry) (Loop exit) (Branch target of P441)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_265:
! Unsupported instruction
loop_exit_0_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_265
nop
ba P499
nop

TARGET441:
ba RET441
nop


P499: !_CAS [0] (maybe <- 0x32) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_266:
add %i0, 4, %o5
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_266
nop

P500: !_DWST [11] (maybe <- 0x33) (Int) (Loop entry) (Loop exit) (Branch target of P119)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_267:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 8]
add   %l4, 1, %l4
loop_exit_0_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_267
nop
ba P501
nop

TARGET119:
ba RET119
nop


P501: !_CASX [7] (maybe <- 0x34) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_268:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_268
nop

P502: !_QWST [15] (maybe <- 0x3f800068) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_269:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

P503: !_PREFETCH [6] (Int) (Faults) (Loop exit)
prefetch [%g0], 27
loop_exit_0_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_269
nop

P504: !_LD [8] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_270:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P505: !_LD [1] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P506: !_LD [9] (Int) (Loop exit)
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_270
nop

P507: !_QWLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_271:
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_271
nop

P508: !_PREFETCH [14] (Int) (Loop entry) (Loop exit) (Branch target of P512)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_272:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 4
loop_exit_0_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_272
nop
ba P509
nop

TARGET512:
ba RET512
nop


P509: !_BLD [9] (FP) (Loop entry) (Branch target of P145)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_273:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
ba P510
nop

TARGET145:
ba RET145
nop


P510: !_CAS [15] (maybe <- 0x35) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_273
nop

P511: !_PREFETCH [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_274:
prefetch [%i1 + 4], 4
loop_exit_0_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_274
nop

P512: !_FLUSHI [1] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_275:
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET512
nop
RET512:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_275
nop

P513: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_276:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P514: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_276
nop

P515: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_277:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P516: !_LD [9] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_0_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_277
nop

P517: !_LD [7] (Int) (Loop entry) (LE) (Branch target of P565)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_278:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P518
nop

TARGET565:
ba RET565
nop


P518: !_LD [14] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_278
nop

P519: !_CAS [11] (maybe <- 0x36) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_279:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_279
nop

P520: !_PREFETCH [1] (Int) (Faults) (Loop entry) (Loop exit) (Branch target of P542)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_280:
prefetch [%g0], 1
loop_exit_0_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_280
nop
ba P521
nop

TARGET542:
ba RET542
nop


P521: !_CAS [15] (maybe <- 0x37) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_281:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P522: !_BLD [1] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_281
nop

P523: !_DWLD [5] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_282:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldda    [%i3 + 8] %asi, %f0
! 1 addresses covered
fmovs %f1, %f0

P524: !_REPLACEMENT [15] (Int) (Loop exit)
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_282
nop

P525: !_FLUSH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_283:
! Unsupported instruction
loop_exit_0_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_283
nop

P526: !_QWLD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_284:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_284
nop

P527: !_LD [0] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_285:
wr %g0, 0x88, %asi
lduwa [%i0 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P528: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_285
nop

P529: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_286:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P530: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_286
nop

P531: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_287:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 31
loop_exit_0_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_287
nop

P532: !_BSTC [7] (maybe <- 0x3f80006a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_288:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_288
nop

P533: !_DWLD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_289:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_289
nop

P534: !_PREFETCH [13] (Int) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_290:
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 24
loop_exit_0_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_290
nop

P535: !_PREFETCH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_291:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 16
loop_exit_0_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_291
nop

P536: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_292:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P537: !_CASX [2] (maybe <- 0x38) (Int) (LE)
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
ldxa [%i1] %asi, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
! move %o5(upper) -> %o1(upper)
or %o5, %g0, %o1
mov  %o5, %l3
mov  %l7, %o5
casxa [%i1] %asi, %l3, %o5
! move %o5(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srl %o5, 0, %l3
or %l3, %o1, %o1
! move %o5(upper) -> %o2(upper)
or %o5, %g0, %o2
add  %l4, 1, %l4

P538: !_LD [5] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET538
nop
RET538:

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
loop_exit_0_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_292
nop

P539: !_ST [1] (maybe <- 0x39) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_293:
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P540: !_LD [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P541: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_293
nop

P542: !_LD [12] (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_294:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET542
nop
RET542:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P543: !_BLD [3] (FP) (Loop exit) (Branch target of P434)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f32
membar #Sync 
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f1
fmovd %f34, %f18
fmovs %f19, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_0_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_294
nop
ba P544
nop

TARGET434:
ba RET434
nop


P544: !_PREFETCH [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_295:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 2
loop_exit_0_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_295
nop

P545: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_296:
prefetch [%i1 + 12], 21

P546: !_PREFETCH [0] (Int) (NF) (Faults) (Loop exit) (CBR)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 30

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET546
nop
RET546:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_296
nop

P547: !_PREFETCH [4] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_297:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 20
loop_exit_0_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_297
nop

P548: !_BSTC [15] (maybe <- 0x3f80006c) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_298:
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P549: !_LD [15] (FP) (NF) (Loop exit)
wr %g0, 0x82, %asi
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_298
nop

P550: !_REPLACEMENT [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_299:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P551: !_LD [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P552: !_LD [10] (Int) (Loop exit)
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_299
nop

P553: !_LD [12] (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_300:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET553
nop
RET553:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P554: !_LD [9] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_300
nop

P555: !_QWST [2] (maybe <- 0x3f80006e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_301:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]
loop_exit_0_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_301
nop

P556: !_PREFETCH [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_302:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 3

P557: !_LD [15] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P558: !_LD [6] (Int) (Loop exit)
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_302
nop

P559: !_PREFETCH [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_303:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 22
loop_exit_0_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_303
nop

P560: !_BLD [6] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_304:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P561: !_LD [0] (Int) (CBR)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET561
nop
RET561:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P562: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_304
nop

P563: !_ST [7] (maybe <- 0x3a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_305:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P564: !_LD [1] (FP) (Loop exit)
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_305
nop

P565: !_LD [13] (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_306:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET565
nop
RET565:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P566: !_BSTC [3] (maybe <- 0x3f800070) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_306
nop

P567: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_307:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P568: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_307
nop

P569: !_LD [3] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_308:
wr %g0, 0x82, %asi
lda    [%i1 + 12] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_308
nop

P570: !_PREFETCH [10] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_309:
prefetch [%g0], 3

P571: !_BSTC [8] (maybe <- 0x3f800072) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_309
nop

P572: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_310:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P573: !_SWAP [2] (maybe <- 0x3b) (Int) (Loop exit)
mov %l4, %o5
swap  [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_310
nop

P574: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_311:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P575: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_311
nop

P576: !_REPLACEMENT [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_312:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
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

P577: !_BST [15] (maybe <- 0x3f800074) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_0_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_312
nop

P578: !_LD [13] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_313:
wr %g0, 0x82, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered

P579: !_PREFETCH [4] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_313
nop

P580: !_FLUSH [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_314:
! Unsupported instruction

P581: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P582: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_314
nop

P583: !_PREFETCH [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_315:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 23

P584: !_PREFETCH [0] (Int) (NF) (Faults) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 1
loop_exit_0_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_315
nop

P585: !_FLUSH [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_316:
! Unsupported instruction
loop_exit_0_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_316
nop

P586: !_LD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_317:
ld [%i1 + 12], %f0
! 1 addresses covered

P587: !_PREFETCH [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 21
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_317
nop

P588: !_LD [1] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_318:
ld [%i0 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET588
nop
RET588:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_318
nop

P589: !_CAS [10] (maybe <- 0x3c) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_319:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
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

P590: !_LD [12] (FP) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_319
nop

P591: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_320:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P592: !_LD [13] (FP) (NF)
wr %g0, 0x82, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 12] %asi, %f0
! 1 addresses covered

P593: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_320
nop

P594: !_PREFETCH [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_321:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 21

P595: !_CASX [4] (maybe <- 0x3d) (Int) (Loop exit)
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_321
nop

P596: !_ST [13] (maybe <- 0x3f800076) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_322:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 12 ]

P597: !_LD [13] (Int) (Branch target of P485)
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P598
nop

TARGET485:
ba RET485
nop


P598: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_322
nop

P599: !_SWAP [9] (maybe <- 0x3e) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_323:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P600: !_BLD [4] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET600
nop
RET600:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P601: !_LD [2] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i1 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_323
nop

P602: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_324:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P603: !_PREFETCH [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_324
nop

P604: !_PREFETCH [9] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_325:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 23
loop_exit_0_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_325
nop

P605: !_PREFETCH [0] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_326:
wr %g0, 0x82, %asi
prefetcha [%i0 + 4] %asi, 29
loop_exit_0_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_326
nop

P606: !_SWAP [0] (maybe <- 0x3f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_327:
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P607: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_327
nop

P608: !_PREFETCH [14] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_328:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 18
loop_exit_0_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_328
nop

P609: !_QWST [6] (maybe <- 0x3f800077) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_329:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P610: !_LD [2] (FP) (Loop exit)
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_329
nop

P611: !_PREFETCH [5] (Int) (Faults) (Loop entry) (Branch target of P310)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_330:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 20
ba P612
nop

TARGET310:
ba RET310
nop


P612: !_PREFETCH [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 1
loop_exit_0_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_330
nop

P613: !_PREFETCH [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_331:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 25

P614: !_LD [0] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P615: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_331
nop

P616: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_332:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 31

P617: !_BST [6] (maybe <- 0x3f800079) (FP) (Loop exit)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_332
nop

P618: !_PREFETCH [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_333:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 18
loop_exit_0_333:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_333
nop

P619: !_PREFETCH [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_334:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 21

P620: !_LD [1] (FP) (Loop exit)
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_334:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_334
nop

P621: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_335:
membar #StoreLoad

P622: !_FLUSH [1] (Int) (Loop exit) (Branch target of P538)
! Unsupported instruction
loop_exit_0_335:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_335
nop
ba P623
nop

TARGET538:
ba RET538
nop


P623: !_LD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_336:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P624: !_BLD [0] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f1
fmovd %f34, %f18
fmovs %f19, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_0_336:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_336
nop

P625: !_FLUSHI [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_337:
flush %g0 

P626: !_PREFETCH [13] (Int) (Faults) (Loop exit)
prefetch [%g0], 2
loop_exit_0_337:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_337
nop

P627: !_PREFETCH [3] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_338:
prefetch [%i1 + 12], 20
loop_exit_0_338:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_338
nop

P628: !_QWST [2] (maybe <- 0x3f80007b) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_339:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]
loop_exit_0_339:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_339
nop

P629: !_BSTC [10] (maybe <- 0x3f80007d) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_340:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P630: !_LD [12] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P631: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_340:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_340
nop

P632: !_PREFETCH [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_341:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 21

P633: !_CAS [15] (maybe <- 0x40) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l7
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_341:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_341
nop

P634: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_342:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P635: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_342:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_342
nop

P636: !_SWAP [4] (maybe <- 0x41) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_343:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P637: !_LD [10] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P638: !_LD [6] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_343:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_343
nop

P639: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_344:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P640: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_344:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_344
nop

P641: !_LD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_345:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P642: !_PREFETCH [8] (Int) (NF) (Faults) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 1
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_345:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_345
nop

P643: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_346:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P644: !_DWLD [9] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P645: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_346:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_346
nop

P646: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_347:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P647: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_347:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_347
nop

P648: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_348:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P649: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_348:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_348
nop

P650: !_DWST [14] (maybe <- 0x3f80007f) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_349:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]

P651: !_BLD [12] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_0_349:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_349
nop

P652: !_DWLD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_350:
ldd [%i1 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P653: !_REPLACEMENT [10] (Int) (Loop exit)
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_350:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_350
nop

P654: !_CASX [8] (maybe <- 0x42) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_351:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P655: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P656: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_351:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_351
nop

P657: !_DWLD [6] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_352:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P658: !_BSTC [10] (maybe <- 0x3f800080) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P659: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_352:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_352
nop

P660: !_FLUSH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_353:
! Unsupported instruction
loop_exit_0_353:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_353
nop

P661: !_DWLD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_354:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P662: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_354:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_354
nop

P663: !_DWST [15] (maybe <- 0x3f800082) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_355:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]

P664: !_REPLACEMENT [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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
loop_exit_0_355:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_355
nop

P665: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_356:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P666: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_356:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_356
nop

P667: !_FLUSH [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_357:
! Unsupported instruction

P668: !_PREFETCH [7] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 27
loop_exit_0_357:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_357
nop

P669: !_FLUSH [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_358:
! Unsupported instruction
loop_exit_0_358:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_358
nop

P670: !_MEMBAR (Int)
membar #StoreLoad

END_NODES0: ! Test instruction sequence for CPU 0 ends
sethi %hi(0xdead0e0f), %l3
or    %l3, %lo(0xdead0e0f), %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
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
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func1:
! 1000 (dynamic) instruction sequence begins
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

! Initialize LFSR to 0x1556^4
sethi %hi(0x1556), %l0
or    %l0, %lo(0x1556), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES1: ! Test instruction sequence for CPU 1 begins

P671: !_DWST [7] (maybe <- 0x800001) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_0:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %o5
srl %o5, 8, %o5
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %o5, %l7
srl %l7, 16, %o5
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %o5, %l7
sllx %l7, 32, %l7 
stxa %l7, [%i2 + 8 ] %asi
add   %l4, 1, %l4

P672: !_BST [8] (maybe <- 0x40000001) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_0
nop

P673: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_1:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_1
nop

P674: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_2:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P675: !_LD [4] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET675
nop
RET675:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_2
nop

P676: !_LD [2] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_3:
ld [%i1 + 4], %f0
! 1 addresses covered

P677: !_LD [14] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P678: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_3
nop

P679: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_4:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P680: !_PREFETCH [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 4

P681: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_4
nop

P682: !_SWAP [1] (maybe <- 0x800002) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_5:
mov %l4, %o0
swap  [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P683: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_5
nop

P684: !_BLD [5] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_6:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET684
nop
RET684:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P685: !_PREFETCH [4] (Int) (NF) (Faults) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_6
nop

P686: !_PREFETCH [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_7:
prefetch [%i0 + 4], 23
loop_exit_1_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_7
nop

P687: !_LD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_8:
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_8
nop

P688: !_BSTC [12] (maybe <- 0x40000003) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_9:
wr %g0, 0xe0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P689: !_PREFETCH [3] (Int) (Loop exit)
prefetch [%i1 + 12], 18
loop_exit_1_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_9
nop

P690: !_DWST [9] (maybe <- 0x800003) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_10:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4

P691: !_PREFETCH [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 0
loop_exit_1_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_10
nop

P692: !_BST [4] (maybe <- 0x40000005) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_11:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_11
nop

P693: !_LD [0] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_12:
ld [%i0 + 4], %f0
! 1 addresses covered

P694: !_BLD [10] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f1
fmovd %f34, %f18
fmovs %f19, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_1_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_12
nop

P695: !_FLUSH [11] (Int) (Loop entry) (Loop exit) (Branch target of P1081)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_13:
! Unsupported instruction
loop_exit_1_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_13
nop
ba P696
nop

TARGET1081:
ba RET1081
nop


P696: !_BLD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_14:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P697: !_REPLACEMENT [13] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_14
nop

P698: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_15:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P699: !_LD [5] (Int) (Loop exit)
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_15
nop

P700: !_QWLD [15] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_16:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldqa  [%i3 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_16
nop

P701: !_FLUSH [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_17:
! Unsupported instruction
loop_exit_1_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_17
nop

P702: !_QWLD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_18:
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P703: !_LD [1] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P704: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_18
nop

P705: !_SWAP [6] (maybe <- 0x800004) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_19:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P706: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_19
nop

P707: !_DWST [3] (maybe <- 0x800005) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_20:
mov %l4, %o5 
stx %o5, [%i1 + 8]
add   %l4, 1, %l4
loop_exit_1_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_20
nop

P708: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_21:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P709: !_PREFETCH [0] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%i0 + 4] %asi, 21
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_21
nop

P710: !_QWLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_22:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_22
nop

P711: !_LD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_23:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P712: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P713: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_23
nop

P714: !_FLUSH [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_24:
! Unsupported instruction
loop_exit_1_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_24
nop

P715: !_BST [2] (maybe <- 0x40000007) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_25:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
loop_exit_1_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_25
nop

P716: !_LD [0] (Int) (Loop entry) (Branch target of P983)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_26:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P717
nop

TARGET983:
ba RET983
nop


P717: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_26
nop

P718: !_PREFETCH [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_27:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 4

P719: !_PREFETCH [13] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 23
loop_exit_1_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_27
nop

P720: !_DWLD [14] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_28:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldda    [%i2 + 0] %asi, %f0
! 1 addresses covered
fmovs %f1, %f0

P721: !_LD [14] (Int) (LE) (CBR)
wr %g0, 0x88, %asi
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET721
nop
RET721:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P722: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_28
nop

P723: !_PREFETCH [5] (Int) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_29:
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 2
loop_exit_1_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_29
nop

P724: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_30:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P725: !_LD [0] (Int) (NF) (Loop exit) (Branch target of P928)
wr %g0, 0x82, %asi
lduwa [%i0 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_30
nop
ba P726
nop

TARGET928:
ba RET928
nop


P726: !_LD [10] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_31:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P727: !_LD [4] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_31
nop

P728: !_DWST [3] (maybe <- 0x40000009) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_32:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 8]
loop_exit_1_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_32
nop

P729: !_PREFETCH [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_33:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 4

P730: !_LD [9] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_33
nop

P731: !_QWLD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_34:
ldq   [%i0 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_34
nop

P732: !_BSTC [10] (maybe <- 0x4000000a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_35:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_35
nop

P733: !_PREFETCH [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_36:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 22

P734: !_LD [10] (FP) (Loop exit) (Branch target of P1255)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_36
nop
ba P735
nop

TARGET1255:
ba RET1255
nop


P735: !_PREFETCH [11] (Int) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_37:
prefetch [%g0], 2

P736: !_SWAP [4] (maybe <- 0x800006) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P737: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_37
nop

P738: !_BSTC [15] (maybe <- 0x4000000c) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_38:
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_38
nop

P739: !_CASX [13] (maybe <- 0x800007) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_39:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P740: !_PREFETCH [12] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%i2 + 4] %asi, 21
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_39
nop

P741: !_LD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_40:
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_40
nop

P742: !_PREFETCH [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_41:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 4

P743: !_DWLD [1] (Int)
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P744: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_41
nop

P745: !_QWST [8] (maybe <- 0x4000000e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_42:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
loop_exit_1_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_42
nop

P746: !_PREFETCH [2] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_43:
prefetch [%i1 + 4], 21

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET746
nop
RET746:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P747: !_DWLD [12] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P748: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_43
nop

P749: !_PREFETCH [5] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_44:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 20

P750: !_LD [2] (FP) (Loop exit)
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_44
nop

P751: !_BST [13] (maybe <- 0x40000010) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_45:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P752: !_PREFETCH [7] (Int) (Faults) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 22
loop_exit_1_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_45
nop

P753: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_46:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P754: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_46
nop

P755: !_QWLD [14] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_47:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldqa  [%i3 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_47
nop

P756: !_BSTC [3] (maybe <- 0x40000012) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_48:
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

P757: !_FLUSH [5] (Int) (Loop exit)
! Unsupported instruction
loop_exit_1_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_48
nop

P758: !_BSTC [7] (maybe <- 0x40000014) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_49:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_49
nop

P759: !_DWST [2] (maybe <- 0x800008) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_50:
mov %l4, %l3 
stx %l3, [%i1 + 0]
add   %l4, 1, %l4

P760: !_LD [0] (FP) (Loop exit)
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_50
nop

P761: !_LD [6] (Int) (Loop entry) (Branch target of P1162)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_51:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P762
nop

TARGET1162:
ba RET1162
nop


P762: !_LD [7] (Int) (Loop exit) (LE) (CBR)
wr %g0, 0x88, %asi
lduwa [%i3 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET762
nop
RET762:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_51
nop

P763: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_52:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P764: !_LD [10] (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET764
nop
RET764:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P765: !_LD [15] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i2 + 12] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_52
nop

P766: !_QWST [1] (maybe <- 0x40000016) (FP) (Loop entry) (Branch target of P870)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_53:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
ba P767
nop

TARGET870:
ba RET870
nop


P767: !_DWST [2] (maybe <- 0x40000018) (FP) (Loop exit)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 0]
loop_exit_1_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_53
nop

P768: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_54:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P769: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P770: !_LD [4] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_54
nop

P771: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_55:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P772: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_55
nop

P773: !_QWLD [10] (FP) (Loop entry) (Loop exit) (Branch target of P978)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_56:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_56
nop
ba P774
nop

TARGET978:
ba RET978
nop


P774: !_PREFETCH [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_57:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 0
loop_exit_1_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_57
nop

P775: !_FLUSH [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_58:
! Unsupported instruction

P776: !_DWST [12] (maybe <- 0x40000019) (FP) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]
loop_exit_1_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_58
nop

P777: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_59:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P778: !_LD [4] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_59
nop

P779: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_60:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P780: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_60
nop

P781: !_LD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_61:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P782: !_REPLACEMENT [1] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_61
nop

P783: !_BLD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_62:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P784: !_LD [3] (FP) (Loop exit)
ld [%i1 + 12], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_1_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_62
nop

P785: !_BLD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_63:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P786: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P787: !_LD [3] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i1 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_63
nop

P788: !_LD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_64:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P789: !_LD [4] (FP) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 4] %asi, %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_64
nop

P790: !_REPLACEMENT [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_65:
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
loop_exit_1_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_65
nop

P791: !_PREFETCH [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_66:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 2
loop_exit_1_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_66
nop

P792: !_LD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_67:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_67
nop

P793: !_LD [7] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_68:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P794: !_LD [2] (FP) (Loop exit)
ld [%i1 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_68
nop

P795: !_LD [5] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_69:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P796: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_69
nop

P797: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_70:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_70
nop

P798: !_DWST [13] (maybe <- 0x4000001a) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_71:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]

P799: !_QWLD [3] (FP) (Loop exit)
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_71
nop

P800: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_72:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P801: !_DWST [0] (maybe <- 0x4000001b) (FP)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P802: !_LD [2] (Int) (NF) (Faults) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%g0] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_72
nop

P803: !_MEMBAR (Int) (Loop entry) (Loop exit) (Branch target of P1023)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_73:
membar #StoreLoad
loop_exit_1_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_73
nop
ba P804
nop

TARGET1023:
ba RET1023
nop


P804: !_CASX [4] (maybe <- 0x800009) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_74:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_74
nop

P805: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_75:
membar #StoreLoad

P806: !_PREFETCH [14] (Int) (Loop exit) (Branch target of P1040)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 28
loop_exit_1_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_75
nop
ba P807
nop

TARGET1040:
ba RET1040
nop


P807: !_LD [1] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_76:
wr %g0, 0x82, %asi
lduwa [%i0 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P808: !_PREFETCH [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 21

P809: !_LD [8] (Int) (NF) (Faults) (Loop exit) (Branch target of P1101)
wr %g0, 0x82, %asi
lduwa [%g0] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_76
nop
ba P810
nop

TARGET1101:
ba RET1101
nop


P810: !_ST [11] (maybe <- 0x4000001c) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_77:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]

P811: !_LD [2] (FP) (Loop exit)
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_77
nop

P812: !_CAS [1] (maybe <- 0x80000a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_78:
add %i0, 12, %o5
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

P813: !_LD [0] (FP) (Loop exit)
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_78
nop

P814: !_CAS [3] (maybe <- 0x80000b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_79:
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

P815: !_LD [2] (FP) (NF) (Loop exit)
wr %g0, 0x82, %asi
lda    [%i1 + 4] %asi, %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_79
nop

P816: !_BLD [1] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_80:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P817: !_CASX [4] (maybe <- 0x80000c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_80
nop

P818: !_BSTC [12] (maybe <- 0x4000001d) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_81:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_81
nop

P819: !_LD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_82:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_82
nop

P820: !_CASX [12] (maybe <- 0x80000d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_83:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_83
nop

P821: !_REPLACEMENT [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_84:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
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
loop_exit_1_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_84
nop

P822: !_DWST [15] (maybe <- 0x80000e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_85:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 8]
add   %l4, 1, %l4
loop_exit_1_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_85
nop

P823: !_BLD [6] (FP) (Loop entry) (Loop exit) (Branch target of P1179)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_86:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_86
nop
ba P824
nop

TARGET1179:
ba RET1179
nop


P824: !_PREFETCH [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_87:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 22

P825: !_FLUSH [9] (Int) (Loop exit) (Branch target of P863)
! Unsupported instruction
loop_exit_1_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_87
nop
ba P826
nop

TARGET863:
ba RET863
nop


P826: !_DWLD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_88:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P827: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_88
nop

P828: !_BSTC [0] (maybe <- 0x4000001f) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_89:
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

P829: !_BST [7] (maybe <- 0x40000021) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_89
nop

P830: !_LD [0] (FP) (Loop entry) (Branch target of P1261)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_90:
ld [%i0 + 4], %f0
! 1 addresses covered
ba P831
nop

TARGET1261:
ba RET1261
nop


P831: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P832: !_LD [0] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i0 + 4] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_90
nop

P833: !_LD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_91:
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_91
nop

P834: !_ST [15] (maybe <- 0x40000023) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_92:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]

P835: !_LD [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P836: !_LD [14] (Int) (Loop exit)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_92
nop

P837: !_CASX [7] (maybe <- 0x80000f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_93:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_93
nop

P838: !_DWLD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_94:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P839: !_ST [12] (maybe <- 0x800010) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P840: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_94
nop

P841: !_LD [10] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_95:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P842: !_PREFETCH [7] (Int) (NF) (Loop exit) (CBR)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 24

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET842
nop
RET842:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_95
nop

P843: !_REPLACEMENT [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_96:
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

P844: !_PREFETCH [3] (Int) (Loop exit)
prefetch [%i1 + 12], 23
loop_exit_1_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_96
nop

P845: !_REPLACEMENT [15] (Int) (Loop entry) (Branch target of P1055)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_97:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
ba P846
nop

TARGET1055:
ba RET1055
nop


P846: !_BSTC [11] (maybe <- 0x40000024) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_97
nop

P847: !_LD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_98:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P848: !_LD [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P849: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_98
nop

P850: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_99:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 4
loop_exit_1_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_99
nop

P851: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_100:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P852: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_100
nop

P853: !_CASX [15] (maybe <- 0x800011) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_101:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P854: !_LD [13] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_101
nop

P855: !_SWAP [6] (maybe <- 0x800012) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_102:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P856: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_102
nop

P857: !_LD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_103:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_103
nop

P858: !_QWLD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_104:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P859: !_LD [10] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_1_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_104
nop

P860: !_PREFETCH [6] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_105:
prefetch [%g0], 2

P861: !_LD [12] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_105
nop

P862: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_106:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P863: !_LD [5] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET863
nop
RET863:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_106
nop

P864: !_DWST [13] (maybe <- 0x800013) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_107:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 8]
add   %l4, 1, %l4
loop_exit_1_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_107
nop

P865: !_PREFETCH [14] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_108:
prefetch [%g0], 17
loop_exit_1_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_108
nop

P866: !_SWAP [8] (maybe <- 0x800014) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_109:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET866
nop
RET866:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P867: !_CASX [6] (maybe <- 0x800015) (Int) (Branch target of P1050)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov  %l6, %l7
mov %l4, %l6
casx [%i2], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4
ba P868
nop

TARGET1050:
ba RET1050
nop


P868: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_109
nop

P869: !_QWST [13] (maybe <- 0x40000026) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_110:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P870: !_BSTC [2] (maybe <- 0x40000028) (FP) (Loop exit) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET870
nop
RET870:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_1_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_110
nop

P871: !_LD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_111:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P872: !_REPLACEMENT [12] (Int) (Loop exit)
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_111
nop

P873: !_QWST [0] (maybe <- 0x4000002a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_112:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
loop_exit_1_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_112
nop

P874: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_113:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P875: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_113
nop

P876: !_LD [12] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_114:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P877: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_114
nop

P878: !_PREFETCH [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_115:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 1

P879: !_SWAP [2] (maybe <- 0x800016) (Int)
mov %l4, %o0
swap  [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P880: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_115
nop

P881: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_116:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P882: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_116
nop

P883: !_LD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_117:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P884: !_LD [3] (FP) (Loop exit)
ld [%i1 + 12], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_117
nop

P885: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_118:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P886: !_REPLACEMENT [4] (Int)
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

P887: !_LD [13] (Int) (Loop exit)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_118
nop

P888: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_119:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P889: !_PREFETCH [2] (Int)
prefetch [%i1 + 4], 4

P890: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_119
nop

P891: !_FLUSH [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_120:
! Unsupported instruction
loop_exit_1_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_120
nop

P892: !_PREFETCH [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_121:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 0

P893: !_DWLD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P894: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_121
nop

P895: !_BSTC [0] (maybe <- 0x4000002c) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_122:
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

P896: !_BSTC [10] (maybe <- 0x4000002e) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_122
nop

P897: !_LD [12] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_123:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P898: !_LD [12] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_123
nop

P899: !_PREFETCH [14] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_124:
prefetch [%g0], 2

P900: !_ST [8] (maybe <- 0x800017) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_1_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_124
nop

P901: !_PREFETCH [15] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_125:
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 19

P902: !_BST [3] (maybe <- 0x40000030) (FP) (Loop exit)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
loop_exit_1_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_125
nop

P903: !_SWAP [7] (maybe <- 0x800018) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_126:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P904: !_PREFETCH [7] (Int) (Branch target of P1249)
prefetch [%i2 + 12], 21
ba P905
nop

TARGET1249:
ba RET1249
nop


P905: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_126
nop

P906: !_BSTC [5] (maybe <- 0x40000032) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_127:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_127
nop

P907: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_128:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_128
nop

P908: !_LD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_129:
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_129
nop

P909: !_DWST [14] (maybe <- 0x800019) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_130:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7 
stx %l7, [%i3 + 0]
add   %l4, 1, %l4
loop_exit_1_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_130
nop

P910: !_REPLACEMENT [4] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_131:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
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
be,pn  %xcc, TARGET910
nop
RET910:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

loop_exit_1_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_131
nop

P911: !_LD [13] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_132:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P912: !_LD [8] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_132
nop

P913: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_133:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P914: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_133
nop

P915: !_DWLD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_134:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0

P916: !_CAS [7] (maybe <- 0x80001a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_134
nop

P917: !_LD [10] (Int) (Loop entry) (Branch target of P721)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_135:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P918
nop

TARGET721:
ba RET721
nop


P918: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_135
nop

P919: !_LD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_136:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P920: !_LD [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P921: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_136
nop

P922: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_137:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P923: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_137
nop

P924: !_LD [15] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_138:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P925: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_138
nop

P926: !_LD [7] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_139:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P927: !_DWST [4] (maybe <- 0x80001b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 0]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_139
nop

P928: !_BLD [4] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_140:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET928
nop
RET928:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_140
nop

P929: !_PREFETCH [8] (Int) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_141:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 22
loop_exit_1_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_141
nop

P930: !_SWAP [4] (maybe <- 0x80001c) (Int) (Loop entry) (Branch target of P1076)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_142:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4
ba P931
nop

TARGET1076:
ba RET1076
nop


P931: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_142
nop

P932: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_143:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P933: !_PREFETCH [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 2

P934: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_143
nop

P935: !_BST [3] (maybe <- 0x40000034) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_144:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

P936: !_DWLD [8] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_144
nop

P937: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_145:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P938: !_LD [13] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_1_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_145
nop

P939: !_LD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_146:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_146
nop

P940: !_QWST [10] (maybe <- 0x40000036) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_147:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P941: !_LD [9] (FP) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET941
nop
RET941:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_147
nop

P942: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_148:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_148
nop

P943: !_PREFETCH [1] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_149:
wr %g0, 0x82, %asi
prefetcha [%i0 + 12] %asi, 22
loop_exit_1_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_149
nop

P944: !_PREFETCH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_150:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 2
loop_exit_1_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_150
nop

P945: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_151:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P946: !_LD [1] (FP) (NF)
wr %g0, 0x82, %asi
lda    [%i0 + 12] %asi, %f0
! 1 addresses covered

P947: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_151
nop

P948: !_CAS [6] (maybe <- 0x80001d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_152:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_152
nop

P949: !_DWST [6] (maybe <- 0x80001e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_153:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 0]
add   %l4, 1, %l4
loop_exit_1_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_153
nop

P950: !_PREFETCH [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_154:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 23

P951: !_LD [2] (Int)
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P952: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_154
nop

P953: !_PREFETCH [5] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_155:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 1

P954: !_LD [5] (FP) (Loop exit)
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_155
nop

P955: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_156:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P956: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_156
nop

P957: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_157:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P958: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_157
nop

P959: !_CASX [13] (maybe <- 0x80001f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_158:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_158
nop

P960: !_PREFETCH [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_159:
prefetch [%i1 + 4], 3
loop_exit_1_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_159
nop

P961: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_160:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P962: !_LD [9] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P963: !_LD [7] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_160
nop

P964: !_BST [2] (maybe <- 0x40000038) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_161:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
loop_exit_1_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_161
nop

P965: !_FLUSH [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_162:
! Unsupported instruction

P966: !_FLUSH [5] (Int) (Loop exit)
! Unsupported instruction
loop_exit_1_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_162
nop

P967: !_DWST [2] (maybe <- 0x4000003a) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_163:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 0]

P968: !_REPLACEMENT [15] (Int) (Loop exit)
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
loop_exit_1_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_163
nop

P969: !_LD [7] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_164:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P970: !_BST [3] (maybe <- 0x4000003b) (FP) (Loop exit)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_164
nop

P971: !_CASX [1] (maybe <- 0x800020) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_165:
add %i0, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P972: !_CAS [8] (maybe <- 0x800021) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_165
nop

P973: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_166:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P974: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_166
nop

P975: !_SWAP [5] (maybe <- 0x800022) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_167:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P976: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_167
nop

P977: !_BSTC [12] (maybe <- 0x4000003d) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_168:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P978: !_PREFETCH [6] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 0

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

loop_exit_1_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_168
nop

P979: !_PREFETCH [8] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_169:
prefetch [%g0], 3
loop_exit_1_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_169
nop

P980: !_PREFETCH [1] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_170:
prefetch [%g0], 0
loop_exit_1_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_170
nop

P981: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_171:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P982: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P983: !_LD [10] (Int) (Loop exit) (CBR)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET983
nop
RET983:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_171
nop

P984: !_FLUSHI [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_172:
flush %g0 

P985: !_LD [15] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_172
nop

P986: !_LD [1] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_173:
ld [%i0 + 12], %f0
! 1 addresses covered

P987: !_CASX [14] (maybe <- 0x800023) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_173
nop

P988: !_BST [4] (maybe <- 0x4000003f) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_174:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_174
nop

P989: !_BST [12] (maybe <- 0x40000041) (FP) (Loop entry) (Branch target of P675)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_175:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
ba P990
nop

TARGET675:
ba RET675
nop


P990: !_REPLACEMENT [15] (Int) (Loop exit)
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
loop_exit_1_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_175
nop

P991: !_DWST [10] (maybe <- 0x40000043) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_176:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P992: !_PREFETCH [11] (Int) (Loop exit)
prefetch [%i3 + 12], 23
loop_exit_1_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_176
nop

P993: !_PREFETCH [11] (Int) (NF) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_177:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET993
nop
RET993:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_1_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_177
nop

P994: !_LD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_178:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_178
nop

P995: !_PREFETCH [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_179:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 22

P996: !_FLUSH [11] (Int) (Loop exit)
! Unsupported instruction
loop_exit_1_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_179
nop

P997: !_DWST [6] (maybe <- 0x40000044) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_180:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P998: !_LD [7] (Int)
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P999: !_LD [5] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_180
nop

P1000: !_FLUSH [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_181:
! Unsupported instruction

P1001: !_BSTC [8] (maybe <- 0x40000045) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_181
nop

P1002: !_LD [10] (FP) (Loop entry) (Loop exit) (Branch target of P842)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_182:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_182
nop
ba P1003
nop

TARGET842:
ba RET842
nop


P1003: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_183:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1004: !_LD [15] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_183
nop

P1005: !_BST [4] (maybe <- 0x40000047) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_184:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_184
nop

P1006: !_PREFETCH [15] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_185:
prefetch [%g0], 0
loop_exit_1_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_185
nop

P1007: !_QWST [6] (maybe <- 0x40000049) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_186:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_1_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_186
nop

P1008: !_LD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_187:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_187
nop

P1009: !_DWST [9] (maybe <- 0x4000004b) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_188:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]
loop_exit_1_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_188
nop

P1010: !_LD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_189:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1011: !_LD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1012: !_LD [6] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_189
nop

P1013: !_BLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_190:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_190
nop

P1014: !_PREFETCH [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_191:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 23

P1015: !_LD [10] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_191
nop

P1016: !_LD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_192:
ld [%i1 + 12], %f0
! 1 addresses covered

P1017: !_LD [10] (Int) (LE) (Branch target of P910)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1018
nop

TARGET910:
ba RET910
nop


P1018: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_192
nop

P1019: !_BLD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_193:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_193
nop

P1020: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_194:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1021: !_LD [10] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1021
nop
RET1021:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_194
nop

P1022: !_SWAP [3] (maybe <- 0x800024) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_195:
mov %l4, %o0
swap  [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1023: !_LD [8] (Int) (NF) (Faults) (Loop exit) (CBR)
wr %g0, 0x82, %asi
lduwa [%g0] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1023
nop
RET1023:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_195
nop

P1024: !_DWST [5] (maybe <- 0x800025) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_196:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6 
stx %l6, [%i3 + 8]
add   %l4, 1, %l4

P1025: !_LD [0] (FP) (Loop exit)
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_196
nop

P1026: !_CAS [2] (maybe <- 0x800026) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_197:
add %i1, 4, %l7
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

P1027: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1028: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_197
nop

P1029: !_PREFETCH [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_198:
prefetch [%i0 + 12], 21
loop_exit_1_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_198
nop

P1030: !_LD [1] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_199:
ld [%i0 + 12], %f0
! 1 addresses covered

P1031: !_FLUSHI [14] (Int) (Loop exit)
flush %g0 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_199
nop

P1032: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_200:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1033: !_LD [12] (FP) (NF)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 4] %asi, %f0
! 1 addresses covered

P1034: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_200
nop

P1035: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_201:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1036: !_LD [13] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P1037: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_201
nop

P1038: !_CAS [14] (maybe <- 0x800027) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_202:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
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

P1039: !_PREFETCH [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_202
nop

P1040: !_LD [12] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_203:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1040
nop
RET1040:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1041: !_SWAP [1] (maybe <- 0x800028) (Int) (Loop exit)
mov %l4, %l3
swap  [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_203
nop

P1042: !_BLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_204:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_204
nop

P1043: !_LD [10] (FP) (Loop entry) (Branch target of P684)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_205:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
ba P1044
nop

TARGET684:
ba RET684
nop


P1044: !_REPLACEMENT [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_205
nop

P1045: !_LD [9] (FP) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_206:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 12] %asi, %f0
! 1 addresses covered

P1046: !_LD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1047: !_LD [15] (Int) (Loop exit)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_206
nop

P1048: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_207:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1049: !_LD [4] (Int) (NF) (Faults) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%g0] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_207
nop

P1050: !_ST [4] (maybe <- 0x4000004c) (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_208:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1050
nop
RET1050:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1051: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1052: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_208
nop

P1053: !_PREFETCH [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_209:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 2
loop_exit_1_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_209
nop

P1054: !_BSTC [15] (maybe <- 0x4000004d) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_210:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_210
nop

P1055: !_DWLD [3] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_211:
ldd [%i1 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1055
nop
RET1055:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1056: !_QWLD [8] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f32
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f1
fmovd %f34, %f18
fmovs %f19, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_1_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_211
nop

P1057: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_212:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1058: !_LD [10] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1058
nop
RET1058:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_212
nop

P1059: !_BST [5] (maybe <- 0x4000004f) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_213:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1060: !_QWLD [3] (FP) (Loop exit)
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_213
nop

P1061: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_214:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1062: !_QWLD [11] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1063: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_214
nop

P1064: !_CASX [10] (maybe <- 0x800029) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_215:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_215
nop

P1065: !_LD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_216:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_216
nop

P1066: !_CAS [8] (maybe <- 0x80002a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_217:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_217
nop

P1067: !_PREFETCH [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_218:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 3

P1068: !_BST [8] (maybe <- 0x40000051) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_218
nop

P1069: !_PREFETCH [11] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_219:
prefetch [%g0], 16
loop_exit_1_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_219
nop

P1070: !_FLUSH [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_220:
! Unsupported instruction
loop_exit_1_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_220
nop

P1071: !_PREFETCH [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_221:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 21

P1072: !_PREFETCH [0] (Int) (Loop exit)
prefetch [%i0 + 4], 3
loop_exit_1_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_221
nop

P1073: !_DWLD [6] (FP) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_222:
wr %g0, 0x82, %asi
ldda    [%g0] %asi, %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_222
nop

P1074: !_CASX [0] (maybe <- 0x80002b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_223:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i0], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1075: !_REPLACEMENT [0] (Int) (Loop exit)
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_223
nop

P1076: !_BSTC [11] (maybe <- 0x40000053) (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_224:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

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


P1077: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
loop_exit_1_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_224
nop

P1078: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_225:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1079: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_225
nop

P1080: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_226:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1081: !_LD [11] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1081
nop
RET1081:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_226
nop

P1082: !_LD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_227:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1083: !_CAS [6] (maybe <- 0x80002c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_227
nop

P1084: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_228:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1085: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_228
nop

P1086: !_PREFETCH [12] (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_229:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 21
loop_exit_1_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_229
nop

P1087: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_230:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1088: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_230
nop

P1089: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_231:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1090: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_231
nop

P1091: !_QWLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_232:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_232
nop

P1092: !_FLUSH [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_233:
! Unsupported instruction
loop_exit_1_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_233
nop

P1093: !_LD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_234:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_234
nop

P1094: !_CAS [12] (maybe <- 0x80002d) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_235:
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
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduwa [%l6] %asi, %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l7, %o5
casa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_235
nop

P1095: !_QWLD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_236:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_236
nop

P1096: !_QWLD [2] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_237:
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1097: !_BST [13] (maybe <- 0x40000055) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_237
nop

P1098: !_CAS [12] (maybe <- 0x80002e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_238:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_238
nop

P1099: !_BSTC [14] (maybe <- 0x40000057) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_239:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_239
nop

P1100: !_LD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_240:
ld [%i1 + 4], %f0
! 1 addresses covered

P1101: !_PREFETCH [9] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 17

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1101
nop
RET1101:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_240
nop

P1102: !_REPLACEMENT [5] (Int) (Loop entry) (Loop exit) (Branch target of P1058)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_241:
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
loop_exit_1_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_241
nop
ba P1103
nop

TARGET1058:
ba RET1058
nop


P1103: !_SWAP [12] (maybe <- 0x80002f) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_242:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1104: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_242
nop

P1105: !_LD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_243:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_243
nop

P1106: !_CAS [2] (maybe <- 0x800030) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_244:
add %i1, 4, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_244
nop

P1107: !_QWST [10] (maybe <- 0x40000059) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_245:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P1108: !_BSTC [13] (maybe <- 0x4000005b) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_245
nop

P1109: !_BLD [7] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_246:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1110: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1111: !_LD [15] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_246
nop

P1112: !_LD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_247:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_247
nop

P1113: !_CAS [7] (maybe <- 0x800031) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_248:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
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

P1114: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1115: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_248
nop

P1116: !_LD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_249:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1117: !_PREFETCH [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 3
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_249
nop

P1118: !_DWST [2] (maybe <- 0x800032) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_250:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 2 

sethi %hi(0x200000), %l3
sub   %i1, %l3, %i1
mov %l4, %l6 
stx %l6, [%i1 + 0]
add   %l4, 1, %l4

sethi %hi(0x200000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_250
nop

P1119: !_PREFETCH [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_251:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 28

P1120: !_LD [9] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_251
nop

P1121: !_LD [1] (FP) (Loop entry) (Loop exit) (Branch target of P764)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_252:
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_252
nop
ba P1122
nop

TARGET764:
ba RET764
nop


P1122: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_253:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1123: !_LD [4] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_253
nop

P1124: !_BSTC [12] (maybe <- 0x4000005d) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_254:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1125: !_BSTC [8] (maybe <- 0x4000005f) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_254
nop

P1126: !_CASX [2] (maybe <- 0x800033) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_255:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1127: !_BSTC [10] (maybe <- 0x40000061) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_255
nop

P1128: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_256:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1129: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_256
nop

P1130: !_PREFETCH [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_257:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

P1131: !_LD [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1132: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_257
nop

P1133: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_258:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1134: !_PREFETCH [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 0

P1135: !_LD [2] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i1 + 4] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_258
nop

P1136: !_PREFETCH [7] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_259:
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 24

P1137: !_PREFETCH [12] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 2
loop_exit_1_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_259
nop

P1138: !_FLUSH [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_260:
! Unsupported instruction
loop_exit_1_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_260
nop

P1139: !_SWAP [7] (maybe <- 0x800034) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_261:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1139
nop
RET1139:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1140: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_261
nop

P1141: !_LD [5] (FP) (Loop entry) (Loop exit) (Branch target of P993)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_262:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_262
nop
ba P1142
nop

TARGET993:
ba RET993
nop


P1142: !_SWAP [9] (maybe <- 0x800035) (Int) (Loop entry) (Branch target of P1223)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_263:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4
ba P1143
nop

TARGET1223:
ba RET1223
nop


P1143: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_263
nop

P1144: !_LD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_264:
ld [%i1 + 12], %f0
! 1 addresses covered

P1145: !_LD [0] (FP) (Loop exit)
ld [%i0 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_264
nop

P1146: !_LD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_265:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_265
nop

P1147: !_LD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_266:
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_266
nop

P1148: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_267:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1149: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_267
nop

P1150: !_BSTC [14] (maybe <- 0x40000063) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_268:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_268
nop

P1151: !_CASX [0] (maybe <- 0x800036) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_269:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_269
nop

P1152: !_ST [11] (maybe <- 0x800037) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_270:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_1_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_270
nop

P1153: !_BSTC [6] (maybe <- 0x40000065) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_271:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_271
nop

P1154: !_CASX [12] (maybe <- 0x800038) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_272:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1155: !_LD [9] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_272
nop

P1156: !_DWLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_273:
ldd [%i1 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_273
nop

P1157: !_DWST [11] (maybe <- 0x800039) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_274:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6 
stx %l6, [%i3 + 8]
add   %l4, 1, %l4

P1158: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1159: !_LD [11] (Int) (Loop exit)
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_274
nop

P1160: !_BLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_275:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_275
nop

P1161: !_FLUSH [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_276:
! Unsupported instruction

P1162: !_LD [13] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1162
nop
RET1162:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1163: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_276
nop

P1164: !_BSTC [13] (maybe <- 0x40000067) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_277:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_277
nop

P1165: !_PREFETCH [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_278:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 20
loop_exit_1_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_278
nop

P1166: !_PREFETCH [5] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_279:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 21
loop_exit_1_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_279
nop

P1167: !_BLD [9] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_280:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1168: !_LD [8] (FP) (Loop exit)
ld [%i3 + 4], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_1_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_280
nop

P1169: !_LD [15] (FP) (Loop entry) (Branch target of P941)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_281:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
ba P1170
nop

TARGET941:
ba RET941
nop


P1170: !_LD [1] (FP) (Loop exit)
ld [%i0 + 12], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_281
nop

P1171: !_DWST [2] (maybe <- 0x40000069) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_282:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 0]
loop_exit_1_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_282
nop

P1172: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_283:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1173: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_283
nop

P1174: !_PREFETCH [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_284:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 16
loop_exit_1_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_284
nop

P1175: !_CAS [15] (maybe <- 0x80003a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_285:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
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

P1176: !_ST [6] (maybe <- 0x80003b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_285
nop

P1177: !_BLD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_286:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_286
nop

P1178: !_QWLD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_287:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1179: !_BST [4] (maybe <- 0x4000006a) (FP) (Loop exit) (CBR)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1179
nop
RET1179:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_287
nop

P1180: !_SWAP [13] (maybe <- 0x80003c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_288:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1181: !_LD [11] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_288
nop

P1182: !_DWLD [11] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_289:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P1183: !_PREFETCH [11] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%i3 + 12] %asi, 4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_289
nop

P1184: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_290:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1185: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_290
nop

P1186: !_QWST [0] (maybe <- 0x4000006c) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_291:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
loop_exit_1_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_291
nop

P1187: !_LD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_292:
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_292
nop

P1188: !_DWST [3] (maybe <- 0x80003d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_293:
mov %l4, %l7 
stx %l7, [%i1 + 8]
add   %l4, 1, %l4

P1189: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1190: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_293
nop

P1191: !_DWST [9] (maybe <- 0x4000006e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_294:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]
loop_exit_1_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_294
nop

P1192: !_PREFETCH [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_295:
prefetch [%i0 + 12], 18
loop_exit_1_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_295
nop

P1193: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_296:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1194: !_PREFETCH [10] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 3

P1195: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_296
nop

P1196: !_LD [7] (FP) (NF) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_297:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1196
nop
RET1196:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_297
nop

P1197: !_PREFETCH [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_298:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 0

P1198: !_LD [13] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_298
nop

P1199: !_REPLACEMENT [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_299:
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
loop_exit_1_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_299
nop

P1200: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_300:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1201: !_BSTC [5] (maybe <- 0x4000006f) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1202: !_LD [4] (Int) (Loop exit)
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_300
nop

P1203: !_BSTC [9] (maybe <- 0x40000071) (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_301:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1203
nop
RET1203:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1204: !_DWLD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1205: !_LD [8] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_301
nop

P1206: !_LD [11] (FP) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_302:
wr %g0, 0x82, %asi
lda    [%g0] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_302
nop

P1207: !_PREFETCH [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_303:
prefetch [%i1 + 12], 22
loop_exit_1_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_303
nop

P1208: !_PREFETCH [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_304:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 2

P1209: !_LD [2] (Int)
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1210: !_LD [3] (Int) (Loop exit) (Branch target of P746)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_304
nop
ba P1211
nop

TARGET746:
ba RET746
nop


P1211: !_LD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_305:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_305
nop

P1212: !_LD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_306:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_306
nop

P1213: !_DWST [13] (maybe <- 0x80003e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_307:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 8]
add   %l4, 1, %l4
loop_exit_1_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_307
nop

P1214: !_CASX [13] (maybe <- 0x80003f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_308:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_308
nop

P1215: !_PREFETCH [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_309:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 22
loop_exit_1_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_309
nop

P1216: !_PREFETCH [6] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_310:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 23

P1217: !_PREFETCH [3] (Int) (Loop exit)
prefetch [%i1 + 12], 1
loop_exit_1_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_310
nop

P1218: !_QWLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_311:
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_311
nop

P1219: !_PREFETCH [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_312:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 23
loop_exit_1_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_312
nop

P1220: !_PREFETCH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_313:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 20
loop_exit_1_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_313
nop

P1221: !_REPLACEMENT [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_314:
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
loop_exit_1_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_314
nop

P1222: !_QWLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_315:
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_315
nop

P1223: !_LD [13] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_316:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1223
nop
RET1223:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1224: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_316
nop

P1225: !_LD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_317:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1226: !_REPLACEMENT [1] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_317
nop

P1227: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_318:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1228: !_PREFETCH [11] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 2

P1229: !_LD [13] (Int) (Loop exit)
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_318
nop

P1230: !_BSTC [5] (maybe <- 0x40000073) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_319:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1231: !_PREFETCH [3] (Int) (Loop exit)
prefetch [%i1 + 12], 4
loop_exit_1_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_319
nop

P1232: !_QWST [14] (maybe <- 0x40000075) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_320:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P1233: !_BLD [3] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_320
nop

P1234: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_321:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1235: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_321
nop

P1236: !_ST [9] (maybe <- 0x800040) (Int) (Loop entry) (Branch target of P1021)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_322:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
ba P1237
nop

TARGET1021:
ba RET1021
nop


P1237: !_REPLACEMENT [2] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
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
loop_exit_1_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_322
nop

P1238: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_323:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1239: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_323
nop

P1240: !_QWST [0] (maybe <- 0x40000077) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_324:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
loop_exit_1_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_324
nop

P1241: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_325:
membar #StoreLoad
loop_exit_1_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_325
nop

P1242: !_CASX [11] (maybe <- 0x800041) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_326:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_326
nop

P1243: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_327:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_327
nop

P1244: !_LD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_328:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_328
nop

P1245: !_LD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_329:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_329
nop

P1246: !_ST [1] (maybe <- 0x800042) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_330:
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P1247: !_QWLD [5] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_330
nop

P1248: !_LD [7] (Int) (Loop entry) (Branch target of P1196)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_331:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1249
nop

TARGET1196:
ba RET1196
nop


P1249: !_LD [14] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1249
nop
RET1249:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_331
nop

P1250: !_QWST [1] (maybe <- 0x40000079) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_332:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
loop_exit_1_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_332
nop

P1251: !_DWST [13] (maybe <- 0x4000007b) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_333:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]
loop_exit_1_333:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_333
nop

P1252: !_PREFETCH [0] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_334:
prefetch [%g0], 3

P1253: !_FLUSHI [13] (Int) (Loop exit)
flush %g0 
loop_exit_1_334:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_334
nop

P1254: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_335:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1255: !_BSTC [3] (maybe <- 0x4000007c) (FP) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1255
nop
RET1255:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1256: !_LD [13] (Int) (Loop exit)
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_335:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_335
nop

P1257: !_PREFETCH [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_336:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 22

P1258: !_BLD [12] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_336:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_336
nop

P1259: !_BST [1] (maybe <- 0x4000007e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_337:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_1_337:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_337
nop

P1260: !_FLUSH [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_338:
! Unsupported instruction
loop_exit_1_338:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_338
nop

P1261: !_QWST [4] (maybe <- 0x40000080) (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_339:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1261
nop
RET1261:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1262: !_CASX [15] (maybe <- 0x800043) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_339:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_339
nop

P1263: !_QWST [0] (maybe <- 0x40000082) (FP) (Loop entry) (Branch target of P1139)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_340:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
ba P1264
nop

TARGET1139:
ba RET1139
nop


P1264: !_PREFETCH [1] (Int) (Loop exit)
prefetch [%i0 + 12], 0
loop_exit_1_340:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_340
nop

P1265: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_341:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1266: !_LD [9] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_341:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_341
nop

P1267: !_ST [12] (maybe <- 0x40000084) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_342:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]
loop_exit_1_342:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_342
nop

P1268: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_343:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 20

P1269: !_CAS [11] (maybe <- 0x800044) (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_343:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_343
nop

P1270: !_DWST [8] (maybe <- 0x40000085) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_344:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]
loop_exit_1_344:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_344
nop

P1271: !_LD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_345:
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_345:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_345
nop

P1272: !_SWAP [6] (maybe <- 0x800045) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_346:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1273: !_DWST [2] (maybe <- 0x40000086) (FP)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 0]

P1274: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_346:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_346
nop

P1275: !_LD [5] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_347:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1276: !_LD [6] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P1277: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_347:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_347
nop

P1278: !_QWST [11] (maybe <- 0x40000087) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_348:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P1279: !_LD [15] (Int) (NF)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1280: !_LD [1] (Int) (Loop exit) (Branch target of P1203)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_348:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_348
nop
ba P1281
nop

TARGET1203:
ba RET1203
nop


P1281: !_PREFETCH [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_349:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 3
loop_exit_1_349:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_349
nop

P1282: !_LD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_350:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_350:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_350
nop

P1283: !_CASX [12] (maybe <- 0x800046) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_351:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_351:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_351
nop

P1284: !_CASX [7] (maybe <- 0x800047) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_352:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_352:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_352
nop

P1285: !_DWLD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_353:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0

P1286: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_353:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_353
nop

P1287: !_BSTC [5] (maybe <- 0x40000089) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_354:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1288: !_PREFETCH [4] (Int) (Faults) (Loop exit)
prefetch [%g0], 2
loop_exit_1_354:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_354
nop

P1289: !_CAS [15] (maybe <- 0x800048) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_355:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l3
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

P1290: !_SWAP [7] (maybe <- 0x800049) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o1
swap  [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1291: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_355:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_355
nop

P1292: !_CASX [11] (maybe <- 0x80004a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_356:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_356:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_356
nop

P1293: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_357:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1294: !_ST [10] (maybe <- 0x4000008b) (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]

P1295: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_357:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_357
nop

P1296: !_LD [15] (FP) (Loop entry) (Loop exit) (Branch target of P866)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_358:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_358:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_358
nop
ba P1297
nop

TARGET866:
ba RET866
nop


P1297: !_SWAP [12] (maybe <- 0x80004b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_359:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1298: !_LD [10] (FP)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1299: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_359:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_359
nop

P1300: !_REPLACEMENT [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_360:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
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
loop_exit_1_360:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_360
nop

P1301: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_361:
membar #StoreLoad

P1302: !_LD [4] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_361:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_361
nop

P1303: !_REPLACEMENT [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_362:
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
loop_exit_1_362:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_362
nop

P1304: !_PREFETCH [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_363:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 3
loop_exit_1_363:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_363
nop

P1305: !_PREFETCH [6] (Int) (Faults) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_364:
wr %g0, 0x88, %asi
prefetcha [%g0] %asi, 3

P1306: !_REPLACEMENT [6] (Int) (Loop exit)
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
loop_exit_1_364:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_364
nop

P1307: !_PREFETCH [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_365:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 2

P1308: !_PREFETCH [3] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%i1 + 12] %asi, 2
loop_exit_1_365:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_365
nop

P1309: !_PREFETCH [10] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_366:
prefetch [%g0], 16

P1310: !_BSTC [13] (maybe <- 0x4000008c) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_366:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_366
nop

P1311: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_367:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1312: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_367:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_367
nop

P1313: !_PREFETCH [11] (Int) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_368:
wr %g0, 0x82, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 21
loop_exit_1_368:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_368
nop

P1314: !_ST [4] (maybe <- 0x4000008e) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_369:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]

P1315: !_CASX [11] (maybe <- 0x80004c) (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_369:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_369
nop

P1316: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_370:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1317: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_370:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_370
nop

P1318: !_LD [5] (Int) (NF) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_371:
wr %g0, 0x8a, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1319: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_371:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_371
nop

P1320: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_372:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1321: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_372:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_372
nop

P1322: !_PREFETCH [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_373:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 23
loop_exit_1_373:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_373
nop

P1323: !_DWST [5] (maybe <- 0x80004d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_374:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4

P1324: !_PREFETCH [8] (Int) (Faults) (Loop exit)
prefetch [%g0], 30
loop_exit_1_374:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_374
nop

P1325: !_QWLD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_375:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1326: !_PREFETCH [2] (Int) (Loop exit)
prefetch [%i1 + 4], 20
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_375:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_375
nop

P1327: !_DWST [1] (maybe <- 0x80004e) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_376:
mov %l4, %l3 
stx %l3, [%i0 + 8]
add   %l4, 1, %l4

P1328: !_PREFETCH [12] (Int) (Faults) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 20
loop_exit_1_376:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_376
nop

P1329: !_FLUSH [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_377:
! Unsupported instruction
loop_exit_1_377:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_377
nop

P1330: !_REPLACEMENT [15] (Int) (Loop entry) (Branch target of P762)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_378:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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
ba P1331
nop

TARGET762:
ba RET762
nop


P1331: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1332: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_378:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_378
nop

P1333: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_379:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1334: !_SWAP [10] (maybe <- 0x80004f) (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l6
swap  [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_379:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_379
nop

P1335: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_380:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1336: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_380:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_380
nop

P1337: !_FLUSH [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_381:
! Unsupported instruction
loop_exit_1_381:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_381
nop

P1338: !_LD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_382:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_382:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_382
nop

P1339: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_383:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1340: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_383:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_383
nop

P1341: !_QWLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_384:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1342: !_LD [11] (FP) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_1_384:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_384
nop

P1343: !_ST [14] (maybe <- 0x4000008f) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_385:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
loop_exit_1_385:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_385
nop

P1344: !_MEMBAR (Int)
membar #StoreLoad

END_NODES1: ! Test instruction sequence for CPU 1 ends
sethi %hi(0xdead0e0f), %l3
or    %l3, %lo(0xdead0e0f), %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
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
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func2:
! 1000 (dynamic) instruction sequence begins
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

! Initialize LFSR to 0x5f06^4
sethi %hi(0x5f06), %l0
or    %l0, %lo(0x5f06), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES2: ! Test instruction sequence for CPU 2 begins

P1345: !_SWAP [14] (maybe <- 0x1000001) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_0:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1346: !_BSTC [9] (maybe <- 0x40800001) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1347: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_0
nop

P1348: !_BLD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_1:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_1
nop

P1349: !_SWAP [5] (maybe <- 0x1000002) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_2:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1350: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_2
nop

P1351: !_LD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_3:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_3
nop

P1352: !_BST [9] (maybe <- 0x40800003) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_4:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1353: !_BSTC [14] (maybe <- 0x40800005) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_4
nop

P1354: !_QWLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_5:
ldq   [%i0 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_5
nop

P1355: !_LD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_6:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_6
nop

P1356: !_PREFETCH [15] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_7:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 2
loop_exit_2_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_7
nop

P1357: !_PREFETCH [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_8:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 21

P1358: !_PREFETCH [11] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 23
loop_exit_2_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_8
nop

P1359: !_FLUSH [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_9:
! Unsupported instruction
loop_exit_2_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_9
nop

P1360: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_10:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1361: !_FLUSH [4] (Int)
! Unsupported instruction

P1362: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_10
nop

P1363: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_11:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1364: !_LD [1] (FP)
ld [%i0 + 12], %f0
! 1 addresses covered

P1365: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_11
nop

P1366: !_PREFETCH [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_12:
prefetch [%i1 + 4], 4
loop_exit_2_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_12
nop

P1367: !_DWST [8] (maybe <- 0x1000003) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_13:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6 
stx %l6, [%i3 + 0]
add   %l4, 1, %l4
loop_exit_2_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_13
nop

P1368: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_14:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1369: !_LD [11] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_14
nop

P1370: !_LD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_15:
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_15
nop

P1371: !_SWAP [15] (maybe <- 0x1000004) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_16:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1372: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_16
nop

P1373: !_LD [1] (Int) (Loop entry) (Branch target of P1671)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_17:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1374
nop

TARGET1671:
ba RET1671
nop


P1374: !_PREFETCH [3] (Int)
prefetch [%i1 + 12], 23

P1375: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_17
nop

P1376: !_LD [14] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_18:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 4] %asi, %f0
! 1 addresses covered

P1377: !_PREFETCH [13] (Int) (NF) (Faults) (Loop exit) (CBR)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1377
nop
RET1377:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_18
nop

P1378: !_LD [1] (Int) (Loop entry) (Branch target of P1940)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_19:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1379
nop

TARGET1940:
ba RET1940
nop


P1379: !_QWLD [4] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1380: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_19
nop

P1381: !_LD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_20:
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_20
nop

P1382: !_DWST [11] (maybe <- 0x1000005) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_21:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l7 
stx %l7, [%i2 + 8]
add   %l4, 1, %l4
loop_exit_2_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_21
nop

P1383: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_22:
prefetch [%i1 + 12], 4

P1384: !_QWLD [7] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_22
nop

P1385: !_BLD [1] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_23:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1386: !_DWLD [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1387: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_23
nop

P1388: !_LD [8] (FP) (Loop entry) (Loop exit) (Branch target of P1906)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_24:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_24
nop
ba P1389
nop

TARGET1906:
ba RET1906
nop


P1389: !_CASX [4] (maybe <- 0x1000006) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_25:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_25
nop

P1390: !_FLUSH [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_26:
! Unsupported instruction

P1391: !_REPLACEMENT [7] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
loop_exit_2_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_26
nop

P1392: !_PREFETCH [11] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_27:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 18

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1392
nop
RET1392:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1393: !_LD [15] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_27
nop

P1394: !_LD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_28:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_28
nop

P1395: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_29:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1396: !_LD [0] (FP)
ld [%i0 + 4], %f0
! 1 addresses covered

P1397: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_29
nop

P1398: !_PREFETCH [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_30:
prefetch [%i0 + 12], 29

P1399: !_BSTC [7] (maybe <- 0x40800007) (FP) (Loop exit) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1399
nop
RET1399:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_30
nop

P1400: !_PREFETCH [6] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_31:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 22
loop_exit_2_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_31
nop

P1401: !_LD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_32:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_32
nop

P1402: !_QWLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_33:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_33
nop

P1403: !_BSTC [4] (maybe <- 0x40800009) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_34:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_34
nop

P1404: !_QWST [10] (maybe <- 0x4080000b) (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_35:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1404
nop
RET1404:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1405: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1406: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_35
nop

P1407: !_BST [15] (maybe <- 0x4080000d) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_36:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1408: !_LD [1] (FP) (Loop exit)
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_36
nop

P1409: !_QWLD [0] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_37:
ldq   [%i0 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1410: !_LD [7] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_2_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_37
nop

P1411: !_CASX [13] (maybe <- 0x1000007) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_38:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
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

P1412: !_LD [0] (FP) (Loop exit)
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_38
nop

P1413: !_PREFETCH [10] (Int) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_39:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 22

P1414: !_PREFETCH [2] (Int) (Loop exit)
prefetch [%i1 + 4], 24
loop_exit_2_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_39
nop

P1415: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_40:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1416: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_40
nop

P1417: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_41:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1418: !_LD [2] (Int) (Loop exit) (Branch target of P1978)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_41
nop
ba P1419
nop

TARGET1978:
ba RET1978
nop


P1419: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_42:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1420: !_QWLD [4] (FP) (NF) (Loop exit) (CBR) (Branch target of P1977)
wr %g0, 0x82, %asi
ldqa  [%i2 + 0] %asi, %f32
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3

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

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_42
nop
ba P1421
nop

TARGET1977:
ba RET1977
nop


P1421: !_LD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_43:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1422: !_REPLACEMENT [15] (Int) (Loop exit)
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_43
nop

P1423: !_LD [7] (FP) (NF) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_44:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1423
nop
RET1423:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1424: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1425: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_44
nop

P1426: !_PREFETCH [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_45:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 3
loop_exit_2_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_45
nop

P1427: !_DWST [1] (maybe <- 0x1000008) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_46:
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %l3
srl %l3, 8, %l3
sll %l4, 8, %o5
and %o5, %l7, %o5
or %o5, %l3, %o5
srl %o5, 16, %l3
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l3, %o5
sllx %o5, 32, %o5 
stxa %o5, [%i0 + 8 ] %asi
add   %l4, 1, %l4
loop_exit_2_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_46
nop

P1428: !_PREFETCH [5] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_47:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 21
loop_exit_2_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_47
nop

P1429: !_FLUSH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_48:
! Unsupported instruction
loop_exit_2_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_48
nop

P1430: !_DWLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_49:
ldd [%i0 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_49
nop

P1431: !_LD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_50:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P1432: !_REPLACEMENT [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_50
nop

P1433: !_QWST [2] (maybe <- 0x4080000f) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_51:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]
loop_exit_2_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_51
nop

P1434: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_52:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1435: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_52
nop

P1436: !_QWLD [1] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_53:
wr %g0, 0x82, %asi
ldqa  [%i0 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1437: !_QWLD [2] (FP) (Loop exit)
ldq   [%i1 + 0], %f32
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_53
nop

P1438: !_BST [11] (maybe <- 0x40800011) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_54:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1439: !_PREFETCH [10] (Int) (Loop exit)
prefetch [%i3 + 4], 22
loop_exit_2_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_54
nop

P1440: !_DWST [9] (maybe <- 0x1000009) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_55:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
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
loop_exit_2_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_55
nop

P1441: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_56:
membar #StoreLoad

P1442: !_LD [13] (FP) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1442
nop
RET1442:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_56
nop

P1443: !_DWST [14] (maybe <- 0x40800013) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_57:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]
loop_exit_2_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_57
nop

P1444: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_58:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1445: !_QWLD [4] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1446: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_58
nop

P1447: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_59:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1448: !_ST [12] (maybe <- 0x100000a) (Int)
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P1449: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_59
nop

P1450: !_LD [3] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_60:
wr %g0, 0x82, %asi
lduwa [%i1 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1451: !_REPLACEMENT [4] (Int)
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

P1452: !_LD [11] (Int) (Loop exit) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1452
nop
RET1452:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_60
nop

P1453: !_BLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_61:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_61
nop

P1454: !_QWLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_62:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_62
nop

P1455: !_LD [4] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_63:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1456: !_PREFETCH [2] (Int)
prefetch [%i1 + 4], 20

P1457: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_63
nop

P1458: !_QWST [15] (maybe <- 0x40800014) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_64:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

P1459: !_LD [13] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_64
nop

P1460: !_CAS [7] (maybe <- 0x100000b) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_65:
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
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
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

P1461: !_LD [8] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_65
nop

P1462: !_BST [11] (maybe <- 0x40800016) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_66:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1463: !_QWLD [3] (FP) (Loop exit)
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_66
nop

P1464: !_QWLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_67:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_67
nop

P1465: !_BST [9] (maybe <- 0x40800018) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_68:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1466: !_LD [0] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1467: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_68
nop

P1468: !_BST [13] (maybe <- 0x4080001a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_69:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_69
nop

P1469: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_70:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_70
nop

P1470: !_LD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_71:
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_71
nop

P1471: !_SWAP [7] (maybe <- 0x100000c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_72:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1472: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_72
nop

P1473: !_BST [2] (maybe <- 0x4080001c) (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_73:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1473
nop
RET1473:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_73
nop

P1474: !_CASX [11] (maybe <- 0x100000d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_74:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_74
nop

P1475: !_LD [2] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_75:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1475
nop
RET1475:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1476: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_75
nop

P1477: !_ST [14] (maybe <- 0x100000e) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_76:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1478: !_LD [1] (FP) (Loop exit)
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_76
nop

P1479: !_PREFETCH [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_77:
prefetch [%i0 + 4], 20

P1480: !_FLUSH [6] (Int) (Loop exit)
! Unsupported instruction
loop_exit_2_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_77
nop

P1481: !_BST [2] (maybe <- 0x4080001e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_78:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
loop_exit_2_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_78
nop

P1482: !_PREFETCH [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_79:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 22

P1483: !_BSTC [6] (maybe <- 0x40800020) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_79
nop

P1484: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_80:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_80
nop

P1485: !_QWST [4] (maybe <- 0x40800022) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_81:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
loop_exit_2_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_81
nop

P1486: !_QWST [14] (maybe <- 0x40800024) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_82:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_2_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_82
nop

P1487: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_83:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_83
nop

P1488: !_LD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_84:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P1489: !_PREFETCH [10] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_84
nop

P1490: !_SWAP [0] (maybe <- 0x100000f) (Int) (Loop entry) (Branch target of P1452)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_85:
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4
ba P1491
nop

TARGET1452:
ba RET1452
nop


P1491: !_LD [8] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_85
nop

P1492: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_86:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1493: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_86
nop

P1494: !_PREFETCH [4] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_87:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1494
nop
RET1494:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1495: !_PREFETCH [1] (Int) (Loop exit)
prefetch [%i0 + 12], 1
loop_exit_2_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_87
nop

P1496: !_LD [9] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_88:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1496
nop
RET1496:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1497: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_88
nop

P1498: !_ST [11] (maybe <- 0x40800026) (FP) (Loop entry) (Branch target of P1377)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_89:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 12 ]
ba P1499
nop

TARGET1377:
ba RET1377
nop


P1499: !_PREFETCH [11] (Int) (Loop exit)
prefetch [%i2 + 12], 23
loop_exit_2_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_89
nop

P1500: !_CASX [8] (maybe <- 0x1000010) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_90:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1501: !_PREFETCH [9] (Int) (Loop exit)
prefetch [%i3 + 12], 31
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_90
nop

P1502: !_FLUSH [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_91:
! Unsupported instruction

P1503: !_LD [12] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1503
nop
RET1503:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1504: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_91
nop

P1505: !_LD [3] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_92:
wr %g0, 0x82, %asi
lduwa [%i1 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1506: !_CAS [2] (maybe <- 0x1000011) (Int) (Branch target of P1560)
add %i1, 4, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4
ba P1507
nop

TARGET1560:
ba RET1560
nop


P1507: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_92
nop

P1508: !_BST [6] (maybe <- 0x40800027) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_93:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1509: !_SWAP [5] (maybe <- 0x1000012) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1510: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_93
nop

P1511: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_94:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_94
nop

P1512: !_DWLD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_95:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1513: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_95
nop

P1514: !_ST [8] (maybe <- 0x40800029) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_96:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]
loop_exit_2_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_96
nop

P1515: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_97:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1516: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_97
nop

P1517: !_REPLACEMENT [10] (Int) (Loop entry) (Loop exit) (Branch target of P1580)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_98:
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
loop_exit_2_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_98
nop
ba P1518
nop

TARGET1580:
ba RET1580
nop


P1518: !_DWST [0] (maybe <- 0x1000013) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_99:
mov %l4, %l3 
stx %l3, [%i0 + 0]
add   %l4, 1, %l4
loop_exit_2_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_99
nop

P1519: !_LD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_100:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_100
nop

P1520: !_PREFETCH [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_101:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 0

P1521: !_LD [6] (FP) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1521
nop
RET1521:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_101
nop

P1522: !_LD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_102:
ld [%i1 + 4], %f0
! 1 addresses covered

P1523: !_BSTC [13] (maybe <- 0x4080002a) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_102
nop

P1524: !_PREFETCH [8] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_103:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 3

P1525: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1526: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_103
nop

P1527: !_QWLD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_104:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_104
nop

P1528: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_105:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1529: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
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

P1530: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_105
nop

P1531: !_DWST [8] (maybe <- 0x1000014) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_106:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6 
stx %l6, [%i3 + 0]
add   %l4, 1, %l4

P1532: !_LD [4] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_106
nop

P1533: !_DWST [8] (maybe <- 0x4080002c) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_107:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]
loop_exit_2_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_107
nop

P1534: !_QWLD [15] (FP) (Loop entry) (Branch target of P1442)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_108:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
ba P1535
nop

TARGET1442:
ba RET1442
nop


P1535: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1536: !_LD [14] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_108
nop

P1537: !_CASX [5] (maybe <- 0x1000015) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_109:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
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

P1538: !_QWLD [7] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_109
nop

P1539: !_CAS [0] (maybe <- 0x1000016) (Int) (Loop entry) (LE) (Branch target of P1781)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_110:
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
add %i0, 4, %l6
lduwa [%l6] %asi, %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l7, %o5
casa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
ba P1540
nop

TARGET1781:
ba RET1781
nop


P1540: !_DWST [4] (maybe <- 0x1000017) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3 
stx %l3, [%i3 + 0]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_110
nop

P1541: !_PREFETCH [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_111:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 19
loop_exit_2_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_111
nop

P1542: !_LD [7] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_112:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1543: !_LD [3] (Int) (Loop exit) (Branch target of P1496)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_112
nop
ba P1544
nop

TARGET1496:
ba RET1496
nop


P1544: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_113:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1545: !_DWLD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_113
nop

P1546: !_PREFETCH [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_114:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 20

P1547: !_PREFETCH [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 1
loop_exit_2_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_114
nop

P1548: !_PREFETCH [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_115:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 17
loop_exit_2_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_115
nop

P1549: !_LD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_116:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_116
nop

P1550: !_ST [11] (maybe <- 0x4080002d) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_117:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 12 ]

P1551: !_LD [4] (Int) (NF)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1552: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_117
nop

P1553: !_LD [15] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_118:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P1554: !_LD [1] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1555: !_LD [9] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1555
nop
RET1555:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_118
nop

P1556: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_119:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1557: !_CAS [4] (maybe <- 0x1000018) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%o5], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1558: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_119
nop

P1559: !_BLD [7] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_120:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1559
nop
RET1559:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1560: !_DWLD [9] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1560
nop
RET1560:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1561: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_120
nop

P1562: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_121:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1563: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_121
nop

P1564: !_BST [2] (maybe <- 0x4080002e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_122:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
loop_exit_2_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_122
nop

P1565: !_PREFETCH [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_123:
prefetch [%i0 + 12], 16

P1566: !_LD [11] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1567: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_123
nop

P1568: !_CAS [0] (maybe <- 0x1000019) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_124:
add %i0, 4, %o5
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_124
nop

P1569: !_LD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_125:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_125
nop

P1570: !_LD [11] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_126:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1570
nop
RET1570:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1571: !_DWST [7] (maybe <- 0x40800030) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]

P1572: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_126
nop

P1573: !_ST [9] (maybe <- 0x100001a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_127:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1574: !_BLD [5] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_127
nop

P1575: !_ST [1] (maybe <- 0x40800031) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_128:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]
loop_exit_2_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_128
nop

P1576: !_PREFETCH [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_129:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 21
loop_exit_2_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_129
nop

P1577: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_130:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1578: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_130
nop

P1579: !_SWAP [11] (maybe <- 0x100001b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_131:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1580: !_LD [4] (Int) (Loop exit) (LE) (CBR)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1580
nop
RET1580:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_131
nop

P1581: !_ST [4] (maybe <- 0x40800032) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_132:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P1582: !_DWST [5] (maybe <- 0x40800033) (FP) (Loop exit)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]
loop_exit_2_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_132
nop

P1583: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_133:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1584: !_PREFETCH [2] (Int) (Loop exit) (Branch target of P1696)
prefetch [%i1 + 4], 2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_133
nop
ba P1585
nop

TARGET1696:
ba RET1696
nop


P1585: !_BSTC [6] (maybe <- 0x40800034) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_134:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_134
nop

P1586: !_PREFETCH [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_135:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 28

P1587: !_LD [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1588: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_135
nop

P1589: !_LD [7] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_136:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1589
nop
RET1589:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1590: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_136
nop

P1591: !_LD [0] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_137:
wr %g0, 0x88, %asi
lduwa [%i0 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1592: !_LD [14] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_137
nop

P1593: !_REPLACEMENT [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_138:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
loop_exit_2_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_138
nop

P1594: !_LD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_139:
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_139
nop

P1595: !_PREFETCH [1] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_140:
prefetch [%i0 + 12], 21
loop_exit_2_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_140
nop

P1596: !_SWAP [12] (maybe <- 0x100001c) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_141:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1597: !_LD [5] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P1598: !_LD [13] (Int) (Loop exit)
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_141
nop

P1599: !_BST [4] (maybe <- 0x40800036) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_142:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_142
nop

P1600: !_PREFETCH [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_143:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 4

P1601: !_PREFETCH [11] (Int) (Faults) (Loop exit) (Branch target of P1625)
prefetch [%g0], 4
loop_exit_2_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_143
nop
ba P1602
nop

TARGET1625:
ba RET1625
nop


P1602: !_DWLD [9] (FP) (Loop entry) (Loop exit) (Branch target of P1503)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_144:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_144
nop
ba P1603
nop

TARGET1503:
ba RET1503
nop


P1603: !_LD [11] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_145:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1603
nop
RET1603:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_145
nop

P1604: !_PREFETCH [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_146:
prefetch [%i0 + 12], 22

P1605: !_LD [8] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_146
nop

P1606: !_PREFETCH [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_147:
prefetch [%i1 + 4], 20

P1607: !_FLUSH [7] (Int) (Loop exit)
! Unsupported instruction
loop_exit_2_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_147
nop

P1608: !_CASX [8] (maybe <- 0x100001d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_148:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_148
nop

P1609: !_PREFETCH [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_149:
prefetch [%i1 + 4], 2

P1610: !_PREFETCH [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 19
loop_exit_2_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_149
nop

P1611: !_LD [13] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_150:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1612: !_LD [12] (Int) (Loop exit) (Branch target of P1473)
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_150
nop
ba P1613
nop

TARGET1473:
ba RET1473
nop


P1613: !_SWAP [11] (maybe <- 0x100001e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_151:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1614: !_DWLD [7] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P1615: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_151
nop

P1616: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_152:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1617: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_152
nop

P1618: !_LD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_153:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_153
nop

P1619: !_DWST [14] (maybe <- 0x40800038) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_154:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]
loop_exit_2_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_154
nop

P1620: !_BSTC [11] (maybe <- 0x40800039) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_155:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_155
nop

P1621: !_LD [5] (Int) (Loop entry) (Branch target of P1897)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_156:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1622
nop

TARGET1897:
ba RET1897
nop


P1622: !_LD [12] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1623: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_156
nop

P1624: !_ST [15] (maybe <- 0x100001f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_157:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1625: !_LD [4] (FP) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1625
nop
RET1625:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_157
nop

P1626: !_REPLACEMENT [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_158:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
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
loop_exit_2_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_158
nop

P1627: !_LD [2] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_159:
wr %g0, 0x82, %asi
lduwa [%i1 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1628: !_LD [13] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P1629: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_159
nop

P1630: !_CASX [13] (maybe <- 0x1000020) (Int) (Loop entry) (Loop exit) (Branch target of P1494)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_160:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_160
nop
ba P1631
nop

TARGET1494:
ba RET1494
nop


P1631: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_161:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1632: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_161
nop

P1633: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_162:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_162
nop

P1634: !_PREFETCH [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_163:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 21

P1635: !_PREFETCH [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 2
loop_exit_2_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_163
nop

P1636: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_164:
membar #StoreLoad
loop_exit_2_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_164
nop

P1637: !_FLUSH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_165:
! Unsupported instruction
loop_exit_2_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_165
nop

P1638: !_FLUSH [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_166:
! Unsupported instruction

P1639: !_BLD [2] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_166
nop

P1640: !_FLUSHI [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_167:
flush %g0 
loop_exit_2_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_167
nop

P1641: !_PREFETCH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_168:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 20
loop_exit_2_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_168
nop

P1642: !_QWLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_169:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_169
nop

P1643: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_170:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1644: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_170
nop

P1645: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_171:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1646: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_171
nop

P1647: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_172:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1648: !_LD [15] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_2_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_172
nop

P1649: !_BST [5] (maybe <- 0x4080003b) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_173:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1650: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1651: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_173
nop

P1652: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_174:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1653: !_LD [12] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_174
nop

P1654: !_ST [1] (maybe <- 0x4080003d) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_175:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]

P1655: !_QWST [12] (maybe <- 0x4080003e) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
loop_exit_2_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_175
nop

P1656: !_DWST [9] (maybe <- 0x40800040) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_176:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]
loop_exit_2_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_176
nop

P1657: !_FLUSH [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_177:
! Unsupported instruction

P1658: !_DWST [1] (maybe <- 0x1000021) (Int) (Loop exit)
mov %l4, %l3 
stx %l3, [%i0 + 8]
add   %l4, 1, %l4
loop_exit_2_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_177
nop

P1659: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_178:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1660: !_LD [15] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_178
nop

P1661: !_LD [4] (FP) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_179:
wr %g0, 0x82, %asi
lda    [%g0] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_179
nop

P1662: !_PREFETCH [14] (Int) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_180:
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 2
loop_exit_2_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_180
nop

P1663: !_PREFETCH [15] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_181:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 23

P1664: !_LD [13] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_181
nop

P1665: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_182:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_182
nop

P1666: !_ST [12] (maybe <- 0x40800041) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_183:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]
loop_exit_2_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_183
nop

P1667: !_LD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_184:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1668: !_CAS [12] (maybe <- 0x1000022) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %o5
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
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_184
nop

P1669: !_LD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_185:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_185
nop

P1670: !_BLD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_186:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_186
nop

P1671: !_DWST [8] (maybe <- 0x40800042) (FP) (Loop entry) (CBR) (Branch target of P1555)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_187:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1671
nop
RET1671:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

ba P1672
nop

TARGET1555:
ba RET1555
nop


P1672: !_PREFETCH [0] (Int) (Loop exit)
prefetch [%i0 + 4], 23
loop_exit_2_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_187
nop

P1673: !_QWST [0] (maybe <- 0x40800043) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_188:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]

P1674: !_FLUSH [13] (Int) (Loop exit)
! Unsupported instruction
loop_exit_2_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_188
nop

P1675: !_PREFETCH [2] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_189:
wr %g0, 0x88, %asi
prefetcha [%i1 + 4] %asi, 24

P1676: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1677: !_LD [1] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i0 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_189
nop

P1678: !_LD [8] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_190:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1679: !_REPLACEMENT [3] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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

P1680: !_LD [9] (Int) (Loop exit)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_190
nop

P1681: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_191:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 23
loop_exit_2_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_191
nop

P1682: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_192:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_192
nop

P1683: !_PREFETCH [3] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_193:
wr %g0, 0x82, %asi
prefetcha [%i1 + 12] %asi, 23
loop_exit_2_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_193
nop

P1684: !_LD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_194:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P1685: !_BST [11] (maybe <- 0x40800045) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_194
nop

P1686: !_LD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_195:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P1687: !_CASX [0] (maybe <- 0x1000023) (Int) (Loop exit)
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_195
nop

P1688: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_196:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1689: !_LD [12] (FP) (NF)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 4] %asi, %f0
! 1 addresses covered

P1690: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_196
nop

P1691: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_197:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1692: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_197
nop

P1693: !_ST [7] (maybe <- 0x40800047) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_198:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]

P1694: !_CAS [2] (maybe <- 0x1000024) (Int) (Loop exit) (CBR)
add %i1, 4, %l6
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1694
nop
RET1694:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_198
nop

P1695: !_REPLACEMENT [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_199:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P1696: !_PREFETCH [14] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1696
nop
RET1696:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_199
nop

P1697: !_LD [6] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_200:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P1698: !_DWST [2] (maybe <- 0x1000025) (Int) (Loop exit)
mov %l4, %o5 
stx %o5, [%i1 + 0]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_200
nop

P1699: !_LD [13] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_201:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1700: !_CASX [5] (maybe <- 0x1000026) (Int) (LE)
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
sllx %o5, 32, %o5
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldxa [%l7] %asi, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
! move %l3(upper) -> %o1(upper)
or %l3, %g0, %o1
mov  %l3, %l6
mov  %o5, %l3
casxa [%l7] %asi, %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srl %l3, 0, %l6
or %l6, %o1, %o1
! move %l3(upper) -> %o2(upper)
or %l3, %g0, %o2
add  %l4, 1, %l4

P1701: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_201
nop

P1702: !_LD [7] (Int) (Loop entry) (Branch target of P1801)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_202:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1703
nop

TARGET1801:
ba RET1801
nop


P1703: !_LD [4] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_202
nop

P1704: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_203:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1705: !_PREFETCH [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 17

P1706: !_LD [8] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_203
nop

P1707: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_204:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_204
nop

P1708: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_205:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1709: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_205
nop

P1710: !_LD [6] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_206:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1711: !_BSTC [7] (maybe <- 0x40800048) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_206
nop

P1712: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_207:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 16

P1713: !_PREFETCH [7] (Int) (NF) (Faults) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 31
loop_exit_2_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_207
nop

P1714: !_LD [0] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_208:
wr %g0, 0x82, %asi
lda    [%i0 + 4] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_208
nop

P1715: !_QWLD [10] (FP) (Loop entry) (Loop exit) (Branch target of P1983)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_209:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_209
nop
ba P1716
nop

TARGET1983:
ba RET1983
nop


P1716: !_LD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_210:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_210
nop

P1717: !_FLUSH [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_211:
! Unsupported instruction
loop_exit_2_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_211
nop

P1718: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_212:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1719: !_PREFETCH [15] (Int) (NF)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 29

P1720: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_212
nop

P1721: !_PREFETCH [15] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_213:
prefetch [%g0], 1
loop_exit_2_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_213
nop

P1722: !_PREFETCH [15] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_214:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 23

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1722
nop
RET1722:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_214
nop

P1723: !_BSTC [13] (maybe <- 0x4080004a) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_215:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1724: !_QWST [2] (maybe <- 0x4080004c) (FP) (Loop exit)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]
loop_exit_2_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_215
nop

P1725: !_QWST [4] (maybe <- 0x4080004e) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_216:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P1726: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1727: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_216
nop

P1728: !_REPLACEMENT [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_217:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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
loop_exit_2_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_217
nop

P1729: !_QWST [11] (maybe <- 0x40800050) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_218:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P1730: !_CASX [9] (maybe <- 0x1000027) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_218
nop

P1731: !_PREFETCH [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_219:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 2

P1732: !_LD [11] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1733: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_219
nop

P1734: !_ST [7] (maybe <- 0x40800052) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_220:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]

P1735: !_DWLD [13] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_220
nop

P1736: !_QWST [3] (maybe <- 0x40800053) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_221:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]

P1737: !_DWST [11] (maybe <- 0x40800055) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]
loop_exit_2_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_221
nop

P1738: !_PREFETCH [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_222:
prefetch [%i1 + 4], 0

P1739: !_PREFETCH [0] (Int) (Loop exit)
prefetch [%i0 + 4], 17
loop_exit_2_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_222
nop

P1740: !_FLUSH [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_223:
! Unsupported instruction
loop_exit_2_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_223
nop

P1741: !_PREFETCH [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_224:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 1
loop_exit_2_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_224
nop

P1742: !_CASX [7] (maybe <- 0x1000028) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_225:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_225
nop

P1743: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_226:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1744: !_BSTC [13] (maybe <- 0x40800056) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1745: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_226
nop

P1746: !_DWST [5] (maybe <- 0x1000029) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_227:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 8]
add   %l4, 1, %l4

P1747: !_ST [4] (maybe <- 0x100002a) (Int) (Loop exit)
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_2_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_227
nop

P1748: !_SWAP [2] (maybe <- 0x100002b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_228:
mov %l4, %o0
swap  [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1749: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_228
nop

P1750: !_LD [9] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_229:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1751: !_PREFETCH [0] (Int)
prefetch [%i0 + 4], 1

P1752: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_229
nop

P1753: !_DWST [5] (maybe <- 0x100002c) (Int) (Loop entry) (Loop exit) (Branch target of P1782)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_230:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4
loop_exit_2_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_230
nop
ba P1754
nop

TARGET1782:
ba RET1782
nop


P1754: !_PREFETCH [5] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_231:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 0
loop_exit_2_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_231
nop

P1755: !_ST [9] (maybe <- 0x100002d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_232:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P1756: !_PREFETCH [2] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%i1 + 4] %asi, 4
loop_exit_2_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_232
nop

P1757: !_PREFETCH [1] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_233:
wr %g0, 0x82, %asi
prefetcha [%i0 + 12] %asi, 2
loop_exit_2_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_233
nop

P1758: !_LD [6] (Int) (Loop entry) (Branch target of P1420)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_234:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1759
nop

TARGET1420:
ba RET1420
nop


P1759: !_SWAP [14] (maybe <- 0x100002e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6
swap  [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_234
nop

P1760: !_LD [15] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_235:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered

P1761: !_FLUSH [7] (Int) (Loop exit)
! Unsupported instruction
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_235
nop

P1762: !_QWST [5] (maybe <- 0x40800058) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_236:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_2_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_236
nop

P1763: !_BLD [10] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_237:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1763
nop
RET1763:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_237
nop

P1764: !_BSTC [7] (maybe <- 0x4080005a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_238:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_238
nop

P1765: !_PREFETCH [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_239:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 21
loop_exit_2_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_239
nop

P1766: !_QWLD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_240:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_240
nop

P1767: !_PREFETCH [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_241:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 23

P1768: !_LD [14] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_241
nop

P1769: !_BLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_242:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_242
nop

P1770: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_243:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1771: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_243
nop

P1772: !_PREFETCH [13] (Int) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_244:
prefetch [%g0], 16

P1773: !_BSTC [0] (maybe <- 0x4080005c) (FP) (Loop exit) (CBR)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1773
nop
RET1773:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_244
nop

P1774: !_LD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_245:
ld [%i1 + 12], %f0
! 1 addresses covered

P1775: !_LD [3] (FP) (Loop exit)
ld [%i1 + 12], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_245
nop

P1776: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_246:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_246
nop

P1777: !_LD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_247:
ld [%i1 + 12], %f0
! 1 addresses covered

P1778: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_247
nop

P1779: !_PREFETCH [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_248:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 22
loop_exit_2_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_248
nop

P1780: !_FLUSH [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_249:
! Unsupported instruction

P1781: !_CAS [11] (maybe <- 0x100002f) (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1781
nop
RET1781:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_249
nop

P1782: !_LD [6] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_250:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1782
nop
RET1782:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1783: !_REPLACEMENT [3] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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

P1784: !_LD [14] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_250
nop

P1785: !_QWST [12] (maybe <- 0x4080005e) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_251:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

P1786: !_BST [7] (maybe <- 0x40800060) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_251
nop

P1787: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_252:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1788: !_REPLACEMENT [4] (Int)
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

P1789: !_LD [15] (Int) (Loop exit)
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_252
nop

P1790: !_LD [1] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_253:
wr %g0, 0x82, %asi
lduwa [%i0 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1791: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_253
nop

P1792: !_BST [4] (maybe <- 0x40800062) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_254:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1793: !_QWST [1] (maybe <- 0x40800064) (FP) (Loop exit)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
loop_exit_2_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_254
nop

P1794: !_LD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_255:
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_255
nop

P1795: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_256:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1796: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_256
nop

P1797: !_BLD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_257:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_257
nop

P1798: !_BSTC [8] (maybe <- 0x40800066) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_258:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1799: !_BSTC [9] (maybe <- 0x40800068) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_258
nop

P1800: !_LD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_259:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_259
nop

P1801: !_CAS [1] (maybe <- 0x1000030) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_260:
add %i0, 12, %o5
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

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1801
nop
RET1801:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_260
nop

P1802: !_PREFETCH [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_261:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 30
loop_exit_2_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_261
nop

P1803: !_BST [11] (maybe <- 0x4080006a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_262:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_262
nop

P1804: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_263:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1805: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_263
nop

P1806: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_264:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1807: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_264
nop

P1808: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_265:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_265
nop

P1809: !_REPLACEMENT [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_266:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
loop_exit_2_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_266
nop

P1810: !_LD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_267:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P1811: !_PREFETCH [1] (Int) (Loop exit)
prefetch [%i0 + 12], 22
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_267
nop

P1812: !_LD [13] (Int) (Loop entry) (Branch target of P1570)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_268:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1813
nop

TARGET1570:
ba RET1570
nop


P1813: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_268
nop

P1814: !_DWLD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_269:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1815: !_ST [3] (maybe <- 0x1000031) (Int)
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4

P1816: !_LD [5] (Int) (NF) (Loop exit) (CBR)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1816
nop
RET1816:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_269
nop

P1817: !_BST [6] (maybe <- 0x4080006c) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_270:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_270
nop

P1818: !_REPLACEMENT [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_271:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
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
loop_exit_2_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_271
nop

P1819: !_QWLD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_272:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_272
nop

P1820: !_LD [9] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_273:
wr %g0, 0x82, %asi
lduwa [%g0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1821: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_273
nop

P1822: !_QWST [9] (maybe <- 0x4080006e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_274:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_2_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_274
nop

P1823: !_QWST [2] (maybe <- 0x40800070) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_275:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]
loop_exit_2_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_275
nop

P1824: !_PREFETCH [15] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_276:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 1

P1825: !_BSTC [0] (maybe <- 0x40800072) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_2_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_276
nop

P1826: !_LD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_277:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_277
nop

P1827: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_278:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1828: !_BLD [12] (FP) (Loop exit) (Branch target of P1844)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_278
nop
ba P1829
nop

TARGET1844:
ba RET1844
nop


P1829: !_LD [4] (Int) (Loop entry) (CBR) (Branch target of P1603)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_279:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1829
nop
RET1829:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1830
nop

TARGET1603:
ba RET1603
nop


P1830: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1831: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_279
nop

P1832: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_280:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1833: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_280
nop

P1834: !_LD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_281:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_281
nop

P1835: !_CASX [11] (maybe <- 0x1000032) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_282:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_282
nop

P1836: !_FLUSH [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_283:
! Unsupported instruction

P1837: !_LD [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1838: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_283
nop

P1839: !_BLD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_284:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1840: !_REPLACEMENT [6] (Int) (Loop exit)
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
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_284
nop

P1841: !_LD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_285:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_285
nop

P1842: !_FLUSH [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_286:
! Unsupported instruction

P1843: !_FLUSH [6] (Int) (Loop exit)
! Unsupported instruction
loop_exit_2_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_286
nop

P1844: !_BST [10] (maybe <- 0x40800074) (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_287:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1844
nop
RET1844:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_287
nop

P1845: !_BST [11] (maybe <- 0x40800076) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_288:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_288
nop

P1846: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_289:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_289
nop

P1847: !_PREFETCH [12] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_290:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 22

P1848: !_PREFETCH [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 31
loop_exit_2_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_290
nop

P1849: !_QWST [3] (maybe <- 0x40800078) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_291:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]

P1850: !_PREFETCH [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 4
loop_exit_2_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_291
nop

P1851: !_LD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_292:
ld [%i1 + 4], %f0
! 1 addresses covered

P1852: !_BSTC [12] (maybe <- 0x4080007a) (FP) (Loop exit) (Branch target of P1938)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_292
nop
ba P1853
nop

TARGET1938:
ba RET1938
nop


P1853: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_293:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1854: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_293
nop

P1855: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_294:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1856: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_294
nop

P1857: !_DWLD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_295:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1858: !_LD [8] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P1859: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_295
nop

P1860: !_LD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_296:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_296
nop

P1861: !_PREFETCH [9] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_297:
wr %g0, 0x82, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 24
loop_exit_2_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_297
nop

P1862: !_QWLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_298:
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_298
nop

P1863: !_DWLD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_299:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1864: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_299
nop

P1865: !_LD [8] (FP) (NF) (Loop entry) (Loop exit) (Branch target of P1399)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_300:
wr %g0, 0x82, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 4] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_300
nop
ba P1866
nop

TARGET1399:
ba RET1399
nop


P1866: !_BLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_301:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_301
nop

P1867: !_PREFETCH [15] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_302:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 21
loop_exit_2_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_302
nop

P1868: !_LD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_303:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_303
nop

P1869: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_304:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1870: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_304
nop

P1871: !_BSTC [9] (maybe <- 0x4080007c) (FP) (Loop entry) (Loop exit) (Branch target of P1521)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_305:
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_305
nop
ba P1872
nop

TARGET1521:
ba RET1521
nop


P1872: !_LD [0] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_306:
wr %g0, 0x82, %asi
lduwa [%i0 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1873: !_SWAP [3] (maybe <- 0x1000033) (Int) (Loop exit) (LE)
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
swapa  [%i1 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_306
nop

P1874: !_LD [14] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_307:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P1875: !_LD [2] (FP) (Loop exit)
ld [%i1 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_307
nop

P1876: !_LD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_308:
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_308
nop

P1877: !_LD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_309:
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_309
nop

P1878: !_LD [5] (FP) (Loop entry) (Loop exit) (Branch target of P1829)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_310:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_310
nop
ba P1879
nop

TARGET1829:
ba RET1829
nop


P1879: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_311:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_311
nop

P1880: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_312:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1881: !_PREFETCH [12] (Int) (Faults) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 20
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_312
nop

P1882: !_SWAP [6] (maybe <- 0x1000034) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_313:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1883: !_DWST [3] (maybe <- 0x4080007e) (FP)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 8]

P1884: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_313
nop

P1885: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_314:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1886: !_LD [9] (Int) (Loop exit) (Branch target of P1423)
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_314
nop
ba P1887
nop

TARGET1423:
ba RET1423
nop


P1887: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_315:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_315
nop

P1888: !_BSTC [5] (maybe <- 0x4080007f) (FP) (Loop entry) (Loop exit) (Branch target of P1392)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_316:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_316
nop
ba P1889
nop

TARGET1392:
ba RET1392
nop


P1889: !_PREFETCH [4] (Int) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_317:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 23

P1890: !_DWLD [3] (FP) (Loop exit)
ldd [%i1 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_317
nop

P1891: !_DWLD [14] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_318:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0

P1892: !_LD [14] (Int)
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1893: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_318
nop

P1894: !_LD [11] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_319:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_319
nop

P1895: !_ST [12] (maybe <- 0x40800081) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_320:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P1896: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
loop_exit_2_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_320
nop

P1897: !_QWST [11] (maybe <- 0x40800082) (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_321:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1897
nop
RET1897:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_321
nop

P1898: !_REPLACEMENT [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_322:
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
loop_exit_2_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_322
nop

P1899: !_LD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_323:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_323
nop

P1900: !_CASX [4] (maybe <- 0x1000035) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_324:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1901: !_PREFETCH [8] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 21
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_324
nop

P1902: !_FLUSH [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_325:
! Unsupported instruction
loop_exit_2_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_325
nop

P1903: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_326:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1904: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_326
nop

P1905: !_CASX [8] (maybe <- 0x1000036) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_327:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_327
nop

P1906: !_QWLD [14] (FP) (Loop entry) (Loop exit) (CBR) (Branch target of P1921)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_328:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1906
nop
RET1906:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_328
nop
ba P1907
nop

TARGET1921:
ba RET1921
nop


P1907: !_FLUSH [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_329:
! Unsupported instruction
loop_exit_2_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_329
nop

P1908: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_330:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 23

P1909: !_BST [10] (maybe <- 0x40800084) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_330
nop

P1910: !_QWLD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_331:
ldq   [%i0 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_331
nop

P1911: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_332:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1912: !_BSTC [3] (maybe <- 0x40800086) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

P1913: !_LD [7] (Int) (Loop exit) (Branch target of P1722)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_332
nop
ba P1914
nop

TARGET1722:
ba RET1722
nop


P1914: !_BSTC [11] (maybe <- 0x40800088) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_333:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_333:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_333
nop

P1915: !_QWLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_334:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_334:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_334
nop

P1916: !_DWLD [1] (FP) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_335:
wr %g0, 0x82, %asi
ldda    [%g0] %asi, %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_335:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_335
nop

P1917: !_LD [11] (FP) (Loop entry) (Branch target of P1589)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_336:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
ba P1918
nop

TARGET1589:
ba RET1589
nop


P1918: !_PREFETCH [3] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%i1 + 12] %asi, 19
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_336:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_336
nop

P1919: !_BST [8] (maybe <- 0x4080008a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_337:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_337:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_337
nop

P1920: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_338:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1921: !_CASX [1] (maybe <- 0x1000037) (Int) (CBR) (Branch target of P1816)
add %i0, 8, %l7
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1921
nop
RET1921:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P1922
nop

TARGET1816:
ba RET1816
nop


P1922: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_338:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_338
nop

P1923: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_339:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_339:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_339
nop

P1924: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_340:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1925: !_CAS [0] (maybe <- 0x1000038) (Int)
add %i0, 4, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
mov %l4, %o1
cas [%l6], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1926: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_340:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_340
nop

P1927: !_FLUSH [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_341:
! Unsupported instruction
loop_exit_2_341:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_341
nop

P1928: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_342:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1929: !_CAS [12] (maybe <- 0x1000039) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%o5], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1930: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_342:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_342
nop

P1931: !_CASX [6] (maybe <- 0x100003a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_343:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_343:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_343
nop

P1932: !_BST [1] (maybe <- 0x4080008c) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_344:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

P1933: !_PREFETCH [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 4
loop_exit_2_344:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_344
nop

P1934: !_ST [12] (maybe <- 0x100003b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_345:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1935: !_PREFETCH [15] (Int) (NF) (Loop exit) (Branch target of P1475)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 20
loop_exit_2_345:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_345
nop
ba P1936
nop

TARGET1475:
ba RET1475
nop


P1936: !_SWAP [15] (maybe <- 0x100003c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_346:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1937: !_PREFETCH [5] (Int) (NF) (Faults)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 3

P1938: !_LD [0] (Int) (Loop exit) (CBR)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1938
nop
RET1938:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_346:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_346
nop

P1939: !_BST [8] (maybe <- 0x4080008e) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_347:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1940: !_REPLACEMENT [6] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1940
nop
RET1940:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_347:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_347
nop

P1941: !_BST [2] (maybe <- 0x40800090) (FP) (Loop entry) (Branch target of P1559)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_348:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
ba P1942
nop

TARGET1559:
ba RET1559
nop


P1942: !_DWST [11] (maybe <- 0x40800092) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]
loop_exit_2_348:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_348
nop

P1943: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_349:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1944: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_349:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_349
nop

P1945: !_PREFETCH [10] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_350:
prefetch [%g0], 2
loop_exit_2_350:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_350
nop

P1946: !_QWLD [0] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_351:
ldq   [%i0 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P1947: !_QWLD [12] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f32
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_351:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_351
nop

P1948: !_PREFETCH [11] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_352:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 4

P1949: !_LD [6] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_352:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_352
nop

P1950: !_LD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_353:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P1951: !_SWAP [9] (maybe <- 0x100003d) (Int)
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1952: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_353:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_353
nop

P1953: !_QWLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_354:
ldq   [%i1 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_354:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_354
nop

P1954: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_355:
membar #StoreLoad

P1955: !_PREFETCH [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 2
loop_exit_2_355:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_355
nop

P1956: !_PREFETCH [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_356:
prefetch [%i1 + 12], 21
loop_exit_2_356:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_356
nop

P1957: !_BST [9] (maybe <- 0x40800093) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_357:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1958: !_ST [6] (maybe <- 0x100003e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_2_357:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_357
nop

P1959: !_QWST [15] (maybe <- 0x40800095) (FP) (Loop entry) (Branch target of P1763)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_358:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
ba P1960
nop

TARGET1763:
ba RET1763
nop


P1960: !_LD [4] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_358:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_358
nop

P1961: !_PREFETCH [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_359:
prefetch [%i0 + 12], 0
loop_exit_2_359:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_359
nop

P1962: !_LD [11] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_360:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P1963: !_PREFETCH [9] (Int) (NF) (Faults) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 21
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_360:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_360
nop

P1964: !_LD [14] (Int) (NF) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_361:
wr %g0, 0x8a, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1965: !_PREFETCH [9] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 0

P1966: !_LD [9] (Int) (Loop exit)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_361:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_361
nop

P1967: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_362:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1968: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_362:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_362
nop

P1969: !_ST [12] (maybe <- 0x40800097) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_363:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
loop_exit_2_363:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_363
nop

P1970: !_BSTC [8] (maybe <- 0x40800098) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_364:
wr %g0, 0xe0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1971: !_PREFETCH [15] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 4
loop_exit_2_364:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_364
nop

P1972: !_PREFETCH [2] (Int) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_365:
prefetch [%g0], 0

P1973: !_BSTC [15] (maybe <- 0x4080009a) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_365:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_365
nop

P1974: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_366:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1975: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_366:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_366
nop

P1976: !_CASX [10] (maybe <- 0x100003f) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_367:
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
sllx %o5, 32, %o5
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
mov  %l3, %l6
mov  %o5, %l3
casxa [%i2] %asi, %l6, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_367:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_367
nop

P1977: !_SWAP [13] (maybe <- 0x1000040) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_368:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1977
nop
RET1977:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1978: !_LD [15] (Int) (Loop exit) (LE) (CBR)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1978
nop
RET1978:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_368:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_368
nop

P1979: !_REPLACEMENT [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_369:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
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
loop_exit_2_369:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_369
nop

P1980: !_PREFETCH [11] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_370:
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 0

P1981: !_QWLD [10] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_370:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_370
nop

P1982: !_FLUSH [11] (Int) (Loop entry) (Branch target of P1694)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_371:
! Unsupported instruction
ba P1983
nop

TARGET1694:
ba RET1694
nop


P1983: !_LD [8] (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1983
nop
RET1983:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1984: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_371:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_371
nop

P1985: !_LD [15] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_372:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1986: !_LD [10] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P1987: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_372:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_372
nop

P1988: !_DWST [7] (maybe <- 0x1000041) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_373:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4

P1989: !_PREFETCH [12] (Int) (Faults) (Loop exit) (LE)
wr %g0, 0x88, %asi
prefetcha [%g0] %asi, 4
loop_exit_2_373:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_373
nop

P1990: !_DWST [7] (maybe <- 0x4080009c) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_374:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]
loop_exit_2_374:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_374
nop

P1991: !_PREFETCH [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_375:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 3

P1992: !_LD [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1993: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_375:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_375
nop

P1994: !_REPLACEMENT [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_376:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
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
loop_exit_2_376:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_376
nop

P1995: !_QWLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_377:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_377:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_377
nop

P1996: !_LD [3] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_378:
wr %g0, 0x82, %asi
lduwa [%i1 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1997: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_378:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_378
nop

P1998: !_REPLACEMENT [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_379:
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

P1999: !_QWST [6] (maybe <- 0x4080009d) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_2_379:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_379
nop

P2000: !_ST [7] (maybe <- 0x1000042) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_380:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_2_380:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_380
nop

P2001: !_LD [15] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_381:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2002: !_ST [12] (maybe <- 0x1000043) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P2003: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_381:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_381
nop

P2004: !_BST [8] (maybe <- 0x4080009f) (FP) (Loop entry) (Loop exit) (Branch target of P1773)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_382:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_382:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_382
nop
ba P2005
nop

TARGET1773:
ba RET1773
nop


P2005: !_ST [14] (maybe <- 0x408000a1) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_383:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]
loop_exit_2_383:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_383
nop

P2006: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_384:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2007: !_PREFETCH [0] (Int)
prefetch [%i0 + 4], 21

P2008: !_LD [6] (Int) (Loop exit) (Branch target of P1404)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_384:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_384
nop
ba P2009
nop

TARGET1404:
ba RET1404
nop


P2009: !_DWST [14] (maybe <- 0x408000a2) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_385:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P2010: !_LD [2] (Int)
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2011: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_385:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_385
nop

P2012: !_DWST [1] (maybe <- 0x1000044) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_386:
mov %l4, %l7 
stx %l7, [%i0 + 8]
add   %l4, 1, %l4

P2013: !_LD [1] (FP) (Loop exit)
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_386:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_386
nop

P2014: !_BSTC [13] (maybe <- 0x408000a3) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_387:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2015: !_SWAP [10] (maybe <- 0x1000045) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2016: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_387:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_387
nop

P2017: !_CAS [8] (maybe <- 0x1000046) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_388:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_388:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_388
nop

P2018: !_LD [13] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_389:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P2019: !_LD [13] (FP) (Loop exit)
ld [%i2 + 12], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_389:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_389
nop

P2020: !_DWST [7] (maybe <- 0x1000047) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_390:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l6 
stx %l6, [%i3 + 8]
add   %l4, 1, %l4
loop_exit_2_390:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_390
nop

P2021: !_SWAP [0] (maybe <- 0x1000048) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_391:
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2022: !_LD [12] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2023: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_391:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_391
nop

P2024: !_MEMBAR (Int)
membar #StoreLoad

END_NODES2: ! Test instruction sequence for CPU 2 ends
sethi %hi(0xdead0e0f), %o5
or    %o5, %lo(0xdead0e0f), %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
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
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func3:
! 1000 (dynamic) instruction sequence begins
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
sethi %hi(0x03deade1), %l7
or    %l7, %lo(0x03deade1), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1800001), %l4
or    %l4, %lo(0x1800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x41000001), %l7
or    %l7, %lo(0x41000001), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x35800000), %l7
or    %l7, %lo(0x35800000), %l7
stw %l7, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x3406^4
sethi %hi(0x3406), %l0
or    %l0, %lo(0x3406), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES3: ! Test instruction sequence for CPU 3 begins

P2025: !_ST [4] (maybe <- 0x41000001) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_0:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
loop_exit_3_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_0
nop

P2026: !_BSTC [3] (maybe <- 0x41000002) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_1:
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

P2027: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2028: !_LD [13] (Int) (NF) (Faults) (Loop exit) (LE)
wr %g0, 0x8a, %asi
lduwa [%g0] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_1
nop

P2029: !_PREFETCH [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_2:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 1
loop_exit_3_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_2
nop

P2030: !_SWAP [7] (maybe <- 0x1800001) (Int) (Loop entry) (Branch target of P2151)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_3:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4
ba P2031
nop

TARGET2151:
ba RET2151
nop


P2031: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_3
nop

P2032: !_BST [9] (maybe <- 0x41000004) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_4:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_3_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_4
nop

P2033: !_FLUSH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_5:
! Unsupported instruction
loop_exit_3_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_5
nop

P2034: !_LD [12] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_6:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2034
nop
RET2034:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2035: !_LD [7] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_6
nop

P2036: !_DWST [15] (maybe <- 0x1800002) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_7:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7 
stx %l7, [%i3 + 8]
add   %l4, 1, %l4

P2037: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2038: !_LD [12] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_7
nop

P2039: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_8:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2040: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_8
nop

P2041: !_CASX [4] (maybe <- 0x1800003) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_9:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_9
nop

P2042: !_CAS [1] (maybe <- 0x1800004) (Int) (Loop entry) (Loop exit) (Branch target of P2461)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_10:
add %i0, 12, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_10
nop
ba P2043
nop

TARGET2461:
ba RET2461
nop


P2043: !_QWLD [2] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_11:
wr %g0, 0x82, %asi
ldqa  [%i1 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2044: !_LD [4] (FP) (Loop exit) (Branch target of P2492)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_3_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_11
nop
ba P2045
nop

TARGET2492:
ba RET2492
nop


P2045: !_QWLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_12:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_12
nop

P2046: !_CAS [10] (maybe <- 0x1800005) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_13:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_13
nop

P2047: !_CAS [6] (maybe <- 0x1800006) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_14:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_14
nop

P2048: !_PREFETCH [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_15:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 3

P2049: !_BSTC [10] (maybe <- 0x41000006) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_3_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_15
nop

P2050: !_PREFETCH [10] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_16:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 22

P2051: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2052: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_16
nop

P2053: !_DWLD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_17:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2054: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_17
nop

P2055: !_PREFETCH [14] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_18:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 26

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2055
nop
RET2055:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_3_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_18
nop

P2056: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_19:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2057: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_19
nop

P2058: !_BST [3] (maybe <- 0x41000008) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_20:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

P2059: !_LD [6] (Int) (NF)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2060: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_20
nop

P2061: !_BSTC [1] (maybe <- 0x4100000a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_21:
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_3_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_21
nop

P2062: !_LD [8] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_22:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2062
nop
RET2062:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2063: !_LD [1] (Int) (NF) (Loop exit) (LE) (CBR)
wr %g0, 0x8a, %asi
lduwa [%i0 + 12] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

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

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_22
nop

P2064: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_23:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2065: !_BST [6] (maybe <- 0x4100000c) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2066: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_23
nop

P2067: !_BLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_24:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_24
nop

P2068: !_PREFETCH [14] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_25:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 22

P2069: !_LD [4] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2070: !_LD [4] (Int) (Loop exit)
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_25
nop

P2071: !_PREFETCH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_26:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 4
loop_exit_3_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_26
nop

P2072: !_CASX [14] (maybe <- 0x1800007) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_27:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_27
nop

P2073: !_PREFETCH [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_28:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 0
loop_exit_3_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_28
nop

P2074: !_SWAP [4] (maybe <- 0x1800008) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_29:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2075: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_29
nop

P2076: !_CASX [8] (maybe <- 0x1800009) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_30:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2077: !_DWLD [15] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_30
nop

P2078: !_PREFETCH [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_31:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 16
loop_exit_3_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_31
nop

P2079: !_LD [8] (FP) (NF) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_32:
wr %g0, 0x82, %asi
lda    [%g0] %asi, %f0
! 1 addresses covered

P2080: !_LD [0] (FP) (Loop exit)
ld [%i0 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_32
nop

P2081: !_PREFETCH [2] (Int) (NF) (Loop entry) (Branch target of P2620)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_33:
wr %g0, 0x82, %asi
prefetcha [%i1 + 4] %asi, 3
ba P2082
nop

TARGET2620:
ba RET2620
nop


P2082: !_PREFETCH [2] (Int) (Faults) (Loop exit)
prefetch [%g0], 1
loop_exit_3_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_33
nop

P2083: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_34:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2084: !_LD [12] (FP)
ld [%i2 + 4], %f0
! 1 addresses covered

P2085: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_34
nop

P2086: !_ST [0] (maybe <- 0x4100000e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_35:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]
loop_exit_3_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_35
nop

P2087: !_PREFETCH [10] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_36:
prefetch [%g0], 4
loop_exit_3_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_36
nop

P2088: !_LD [7] (Int) (Loop entry) (LE) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_37:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2088
nop
RET2088:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2089: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_37
nop

P2090: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_38:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2091: !_LD [15] (Int) (Loop exit)
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_38
nop

P2092: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_39:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2093: !_LD [12] (Int) (Loop exit)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_39
nop

P2094: !_LD [15] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_40:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P2095: !_LD [9] (FP) (Loop exit) (Branch target of P2062)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_40
nop
ba P2096
nop

TARGET2062:
ba RET2062
nop


P2096: !_SWAP [15] (maybe <- 0x180000a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_41:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2097: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_41
nop

P2098: !_BLD [7] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_42:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2099: !_DWST [5] (maybe <- 0x4100000f) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_42
nop

P2100: !_CAS [5] (maybe <- 0x180000b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_43:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_43
nop

P2101: !_PREFETCH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_44:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 20
loop_exit_3_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_44
nop

P2102: !_QWLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_45:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_45
nop

P2103: !_PREFETCH [1] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_46:
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 31

P2104: !_CASX [11] (maybe <- 0x180000c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_46
nop

P2105: !_QWST [9] (maybe <- 0x41000010) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_47:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
loop_exit_3_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_47
nop

P2106: !_QWST [3] (maybe <- 0x41000012) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_48:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]

P2107: !_LD [11] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_48
nop

P2108: !_CAS [2] (maybe <- 0x180000d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_49:
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

P2109: !_CASX [5] (maybe <- 0x180000e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_49
nop

P2110: !_PREFETCH [2] (Int) (NF) (Faults) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_50:
wr %g0, 0x8a, %asi
prefetcha [%g0] %asi, 31
loop_exit_3_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_50
nop

P2111: !_LD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_51:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_51
nop

P2112: !_BLD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_52:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2113: !_PREFETCH [5] (Int) (NF) (Faults) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_52
nop

P2114: !_LD [4] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_53:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2115: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_53
nop

P2116: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_54:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2117: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_54
nop

P2118: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_55:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2119: !_LD [8] (Int) (Loop exit)
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_55
nop

P2120: !_PREFETCH [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_56:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 16

P2121: !_PREFETCH [13] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 18
loop_exit_3_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_56
nop

P2122: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_57:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2123: !_PREFETCH [5] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 16

P2124: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_57
nop

P2125: !_PREFETCH [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_58:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 2
loop_exit_3_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_58
nop

P2126: !_LD [4] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_59:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2127: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_59
nop

P2128: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_60:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2129: !_LD [12] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2129
nop
RET2129:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_60
nop

P2130: !_LD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_61:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2131: !_PREFETCH [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_61
nop

P2132: !_PREFETCH [11] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_62:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 23

P2133: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2134: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_62
nop

P2135: !_PREFETCH [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_63:
prefetch [%i1 + 4], 20
loop_exit_3_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_63
nop

P2136: !_PREFETCH [6] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_64:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 23
loop_exit_3_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_64
nop

P2137: !_ST [14] (maybe <- 0x41000014) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_65:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
loop_exit_3_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_65
nop

P2138: !_QWST [11] (maybe <- 0x41000015) (FP) (Loop entry) (Branch target of P2335)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_66:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
ba P2139
nop

TARGET2335:
ba RET2335
nop


P2139: !_PREFETCH [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 0
loop_exit_3_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_66
nop

P2140: !_DWLD [8] (Int) (NF) (Loop entry) (Branch target of P2055)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_67:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2141
nop

TARGET2055:
ba RET2055
nop


P2141: !_MEMBAR (Int)
membar #StoreLoad

P2142: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_67
nop

P2143: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_68:
prefetch [%i1 + 12], 21

P2144: !_LD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2145: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_68
nop

P2146: !_DWST [2] (maybe <- 0x180000f) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_69:
mov %l4, %l6 
stx %l6, [%i1 + 0]
add   %l4, 1, %l4

P2147: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2148: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_69
nop

P2149: !_LD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_70:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_70
nop

P2150: !_QWLD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_71:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2151: !_PREFETCH [15] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 20

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2151
nop
RET2151:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_71
nop

P2152: !_FLUSH [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_72:
! Unsupported instruction
loop_exit_3_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_72
nop

P2153: !_PREFETCH [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_73:
prefetch [%i1 + 4], 1
loop_exit_3_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_73
nop

P2154: !_PREFETCH [5] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_74:
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 2

P2155: !_BST [5] (maybe <- 0x41000017) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_3_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_74
nop

P2156: !_FLUSH [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_75:
! Unsupported instruction

P2157: !_CASX [4] (maybe <- 0x1800010) (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_75
nop

P2158: !_CASX [11] (maybe <- 0x1800011) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_76:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
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

P2159: !_LD [6] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_76
nop

P2160: !_PREFETCH [9] (Int) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_77:
prefetch [%g0], 19

P2161: !_BSTC [7] (maybe <- 0x41000019) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_3_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_77
nop

P2162: !_PREFETCH [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_78:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 3

P2163: !_DWST [2] (maybe <- 0x4100001b) (FP) (Loop exit)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 0]
loop_exit_3_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_78
nop

P2164: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_79:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2165: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_79
nop

P2166: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_80:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2167: !_LD [10] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2168: !_LD [4] (Int) (Loop exit)
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_80
nop

P2169: !_LD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_81:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_81
nop

P2170: !_LD [15] (FP) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_82:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered

P2171: !_LD [5] (FP) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_82
nop

P2172: !_SWAP [4] (maybe <- 0x1800012) (Int) (Loop entry) (Branch target of P2381)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_83:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4
ba P2173
nop

TARGET2381:
ba RET2381
nop


P2173: !_LD [10] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_83
nop

P2174: !_PREFETCH [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_84:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 29
loop_exit_3_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_84
nop

P2175: !_QWST [0] (maybe <- 0x4100001c) (FP) (Loop entry) (Branch target of P2192)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_85:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
ba P2176
nop

TARGET2192:
ba RET2192
nop


P2176: !_DWLD [15] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_85
nop

P2177: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_86:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2178: !_PREFETCH [2] (Int)
prefetch [%i1 + 4], 21

P2179: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_86
nop

P2180: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_87:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2181: !_BSTC [9] (maybe <- 0x4100001e) (FP) (Loop exit) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2181
nop
RET2181:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_87
nop

P2182: !_BLD [15] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_88:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2183: !_CASX [14] (maybe <- 0x1800013) (Int) (Loop exit)
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_88
nop

P2184: !_LD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_89:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_89
nop

P2185: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_90:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2186: !_BSTC [5] (maybe <- 0x41000020) (FP)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2187: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_90
nop

P2188: !_SWAP [8] (maybe <- 0x1800014) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_91:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2188
nop
RET2188:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2189: !_LD [5] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_91
nop

P2190: !_PREFETCH [11] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_92:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 20

P2191: !_CAS [1] (maybe <- 0x1800015) (Int) (Loop exit)
add %i0, 12, %l3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_92
nop

P2192: !_PREFETCH [6] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_93:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 29

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2192
nop
RET2192:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2193: !_CAS [13] (maybe <- 0x1800016) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_93
nop

P2194: !_PREFETCH [2] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_94:
wr %g0, 0x82, %asi
prefetcha [%i1 + 4] %asi, 2

P2195: !_DWLD [11] (Int) (NF) (CBR)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 8] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

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


P2196: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_94
nop

P2197: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_95:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2198: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_95
nop

P2199: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_96:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2200: !_CASX [9] (maybe <- 0x1800017) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
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

P2201: !_LD [6] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_96
nop

P2202: !_PREFETCH [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_97:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 23
loop_exit_3_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_97
nop

P2203: !_PREFETCH [6] (Int) (Faults) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_98:
wr %g0, 0x88, %asi
prefetcha [%g0] %asi, 0

P2204: !_DWST [12] (maybe <- 0x41000022) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]
loop_exit_3_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_98
nop

P2205: !_LD [1] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_99:
wr %g0, 0x82, %asi
lduwa [%i0 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2206: !_PREFETCH [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 4

P2207: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_99
nop

P2208: !_PREFETCH [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_100:
prefetch [%i1 + 12], 16
loop_exit_3_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_100
nop

P2209: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_101:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2210: !_REPLACEMENT [5] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P2211: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_101
nop

P2212: !_CASX [5] (maybe <- 0x1800018) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_102:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2213: !_SWAP [13] (maybe <- 0x1800019) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o2
swap  [%i2 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2214: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_102
nop

P2215: !_PREFETCH [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_103:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 21

P2216: !_LD [14] (Int) (Branch target of P2530)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2217
nop

TARGET2530:
ba RET2530
nop


P2217: !_LD [12] (Int) (Loop exit)
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_103
nop

P2218: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_104:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_104
nop

P2219: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_105:
prefetch [%i1 + 12], 24

P2220: !_PREFETCH [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 23
loop_exit_3_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_105
nop

P2221: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_106:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2222: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_106
nop

P2223: !_DWST [3] (maybe <- 0x180001a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_107:
mov %l4, %l3 
stx %l3, [%i1 + 8]
add   %l4, 1, %l4

P2224: !_LD [15] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2225: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_107
nop

P2226: !_BSTC [6] (maybe <- 0x41000023) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_108:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2227: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2228: !_LD [12] (Int) (Loop exit)
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_108
nop

P2229: !_CASX [3] (maybe <- 0x180001b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_109:
add %i1, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_109
nop

P2230: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_110:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 21
loop_exit_3_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_110
nop

P2231: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_111:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_111
nop

P2232: !_LD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_112:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2233: !_CASX [6] (maybe <- 0x180001c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_112
nop

P2234: !_BST [3] (maybe <- 0x41000025) (FP) (Loop entry) (Branch target of P2315)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_113:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
ba P2235
nop

TARGET2315:
ba RET2315
nop


P2235: !_BSTC [1] (maybe <- 0x41000027) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_3_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_113
nop

P2236: !_CASX [7] (maybe <- 0x180001d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_114:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_114
nop

P2237: !_ST [10] (maybe <- 0x180001e) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_115:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
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
stwa   %l3, [%i3 + 4] %asi
add   %l4, 1, %l4
loop_exit_3_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_115
nop

P2238: !_REPLACEMENT [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_116:
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

P2239: !_LD [0] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2240: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_116
nop

P2241: !_CAS [0] (maybe <- 0x180001f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_117:
add %i0, 4, %l6
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

P2242: !_SWAP [4] (maybe <- 0x1800020) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
swapa  [%i2 + 4] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2243: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_117
nop

P2244: !_PREFETCH [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_118:
prefetch [%i0 + 4], 3

P2245: !_PREFETCH [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 4
loop_exit_3_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_118
nop

P2246: !_BSTC [9] (maybe <- 0x41000029) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_119:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2247: !_QWST [12] (maybe <- 0x4100002b) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
loop_exit_3_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_119
nop

P2248: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_120:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2249: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_120
nop

P2250: !_SWAP [7] (maybe <- 0x1800021) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_121:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2251: !_LD [2] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i1 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_121
nop

P2252: !_BST [2] (maybe <- 0x4100002d) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_122:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
loop_exit_3_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_122
nop

P2253: !_LD [13] (Int) (Loop entry) (Branch target of P2429)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_123:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2254
nop

TARGET2429:
ba RET2429
nop


P2254: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_123
nop

P2255: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_124:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2256: !_LD [2] (Int) (Loop exit) (CBR)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2256
nop
RET2256:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_124
nop

P2257: !_BST [1] (maybe <- 0x4100002f) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_125:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

P2258: !_QWST [6] (maybe <- 0x41000031) (FP) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2258
nop
RET2258:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

loop_exit_3_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_125
nop

P2259: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_126:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2260: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_126
nop

P2261: !_DWST [1] (maybe <- 0x1800022) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_127:
mov %l4, %l6 
stx %l6, [%i0 + 8]
add   %l4, 1, %l4

P2262: !_BST [13] (maybe <- 0x41000033) (FP) (Loop exit) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2262
nop
RET2262:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_3_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_127
nop

P2263: !_DWST [6] (maybe <- 0x41000035) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_128:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]
loop_exit_3_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_128
nop

P2264: !_CASX [2] (maybe <- 0x1800023) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_129:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2265: !_PREFETCH [5] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_129
nop

P2266: !_LD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_130:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_130
nop

P2267: !_LD [11] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_131:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P2268: !_REPLACEMENT [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_131
nop

P2269: !_PREFETCH [3] (Int) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_132:
wr %g0, 0x82, %asi
prefetcha [%g0] %asi, 2
loop_exit_3_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_132
nop

P2270: !_BSTC [12] (maybe <- 0x41000036) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_133:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2271: !_LD [0] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2272: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_133
nop

P2273: !_DWST [1] (maybe <- 0x1800024) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_134:
mov %l4, %l3 
stx %l3, [%i0 + 8]
add   %l4, 1, %l4
loop_exit_3_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_134
nop

P2274: !_PREFETCH [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_135:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 4

P2275: !_CAS [12] (maybe <- 0x1800025) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_135
nop

P2276: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_136:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2277: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_136
nop

P2278: !_PREFETCH [3] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_137:
wr %g0, 0x82, %asi
prefetcha [%i1 + 12] %asi, 20
loop_exit_3_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_137
nop

P2279: !_DWST [13] (maybe <- 0x41000038) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_138:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]

P2280: !_PREFETCH [7] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 22
loop_exit_3_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_138
nop

P2281: !_DWST [15] (maybe <- 0x1800026) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_139:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l3 
stx %l3, [%i3 + 8]
add   %l4, 1, %l4
loop_exit_3_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_139
nop

P2282: !_PREFETCH [1] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_140:
prefetch [%i0 + 12], 22

P2283: !_ST [9] (maybe <- 0x1800027) (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2283
nop
RET2283:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_3_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_140
nop

P2284: !_LD [3] (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_141:
ld [%i1 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2284
nop
RET2284:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2285: !_CASX [12] (maybe <- 0x1800028) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_141
nop

P2286: !_REPLACEMENT [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_142:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
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

P2287: !_REPLACEMENT [15] (Int) (Loop exit)
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
loop_exit_3_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_142
nop

P2288: !_BLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_143:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_143
nop

P2289: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_144:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2290: !_LD [0] (FP)
ld [%i0 + 4], %f0
! 1 addresses covered

P2291: !_LD [6] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_144
nop

P2292: !_DWLD [7] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_145:
wr %g0, 0x82, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldxa [%i3 + 8] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2293: !_CAS [12] (maybe <- 0x1800029) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%o5], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2294: !_LD [7] (Int) (Loop exit)
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_145
nop

P2295: !_LD [2] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_146:
wr %g0, 0x82, %asi
lduwa [%i1 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2296: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_146
nop

P2297: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_147:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2298: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2299: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_147
nop

P2300: !_FLUSHI [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_148:
flush %g0 

P2301: !_DWLD [7] (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_148
nop

P2302: !_ST [11] (maybe <- 0x41000039) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_149:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 12 ]

P2303: !_REPLACEMENT [0] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
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
loop_exit_3_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_149
nop

P2304: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_150:
prefetch [%i1 + 12], 24

P2305: !_DWLD [7] (FP) (Loop exit) (Branch target of P2452)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_150
nop
ba P2306
nop

TARGET2452:
ba RET2452
nop


P2306: !_PREFETCH [5] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_151:
wr %g0, 0x82, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 20
loop_exit_3_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_151
nop

P2307: !_QWST [14] (maybe <- 0x4100003a) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_152:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]

P2308: !_REPLACEMENT [0] (Int) (Loop exit)
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
loop_exit_3_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_152
nop

P2309: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_153:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_153
nop

P2310: !_PREFETCH [10] (Int) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_154:
prefetch [%g0], 2

P2311: !_LD [14] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2312: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_154
nop

P2313: !_LD [11] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_155:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2313
nop
RET2313:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2314: !_LD [13] (FP) (NF)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 12] %asi, %f0
! 1 addresses covered

P2315: !_LD [6] (Int) (NF) (Loop exit) (CBR)
wr %g0, 0x82, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2315
nop
RET2315:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_155
nop

P2316: !_DWST [6] (maybe <- 0x4100003c) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_156:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]

P2317: !_QWLD [14] (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_156
nop

P2318: !_BLD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_157:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_157
nop

P2319: !_LD [15] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_158:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered

P2320: !_LD [2] (Int) (Branch target of P2654)
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2321
nop

TARGET2654:
ba RET2654
nop


P2321: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_158
nop

P2322: !_DWLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_159:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_159
nop

P2323: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_160:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_160
nop

P2324: !_CASX [2] (maybe <- 0x180002a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_161:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_161
nop

P2325: !_FLUSH [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_162:
! Unsupported instruction

P2326: !_LD [0] (Int) (Branch target of P2181)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2327
nop

TARGET2181:
ba RET2181
nop


P2327: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_162
nop

P2328: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_163:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2329: !_CASX [1] (maybe <- 0x180002b) (Int) (Loop exit)
add %i0, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_163
nop

P2330: !_LD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_164:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_164
nop

P2331: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_165:
membar #StoreLoad

P2332: !_LD [1] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2333: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_165
nop

P2334: !_QWST [11] (maybe <- 0x4100003d) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_166:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

P2335: !_SWAP [5] (maybe <- 0x180002c) (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2335
nop
RET2335:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2336: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_166
nop

P2337: !_LD [6] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_167:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2338: !_PREFETCH [3] (Int) (Loop exit)
prefetch [%i1 + 12], 2
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_167
nop

P2339: !_LD [7] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_168:
wr %g0, 0x82, %asi
lduwa [%g0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2340: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_168
nop

P2341: !_BLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_169:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_169
nop

P2342: !_PREFETCH [10] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_170:
prefetch [%g0], 1
loop_exit_3_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_170
nop

P2343: !_LD [11] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_171:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2344: !_PREFETCH [1] (Int)
prefetch [%i0 + 12], 3

P2345: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_171
nop

P2346: !_REPLACEMENT [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_172:
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
loop_exit_3_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_172
nop

P2347: !_LD [1] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_173:
ld [%i0 + 12], %f0
! 1 addresses covered

P2348: !_PREFETCH [4] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 23
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_173
nop

P2349: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_174:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2350: !_CAS [15] (maybe <- 0x180002d) (Int)
add %i2, 12, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2351: !_LD [9] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_174
nop

P2352: !_SWAP [13] (maybe <- 0x180002e) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_175:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2353: !_CAS [7] (maybe <- 0x180002f) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2354: !_LD [10] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_175
nop

P2355: !_DWLD [0] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_176:
ldd [%i0 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0

P2356: !_CASX [4] (maybe <- 0x1800030) (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_176
nop

P2357: !_LD [0] (Int) (Loop entry) (Branch target of P2421)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_177:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2358
nop

TARGET2421:
ba RET2421
nop


P2358: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_177
nop

P2359: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_178:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2360: !_LD [6] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_178
nop

P2361: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_179:
prefetch [%i1 + 12], 26

P2362: !_PREFETCH [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 21
loop_exit_3_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_179
nop

P2363: !_LD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_180:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_180
nop

P2364: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_181:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2365: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_181
nop

P2366: !_PREFETCH [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_182:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 20

P2367: !_LD [7] (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_182
nop

P2368: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_183:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2369: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_183
nop

P2370: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_184:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2371: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_184
nop

P2372: !_ST [4] (maybe <- 0x1800031) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_185:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_3_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_185
nop

P2373: !_QWST [6] (maybe <- 0x4100003f) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_186:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
loop_exit_3_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_186
nop

P2374: !_LD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_187:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_187
nop

P2375: !_BLD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_188:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_188
nop

P2376: !_LD [0] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_189:
wr %g0, 0x82, %asi
lduwa [%i0 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2377: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_189
nop

P2378: !_LD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_190:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_190
nop

P2379: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_191:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2380: !_REPLACEMENT [0] (Int)
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

P2381: !_LD [11] (Int) (NF) (Faults) (Loop exit) (CBR)
wr %g0, 0x82, %asi
lduwa [%g0] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2381
nop
RET2381:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_191
nop

P2382: !_BLD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_192:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2383: !_REPLACEMENT [8] (Int) (Loop exit)
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
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_192
nop

P2384: !_REPLACEMENT [2] (Int) (Loop entry) (Loop exit) (Branch target of P2579)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_193:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
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
loop_exit_3_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_193
nop
ba P2385
nop

TARGET2579:
ba RET2579
nop


P2385: !_LD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_194:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P2386: !_FLUSH [15] (Int) (Loop exit) (Branch target of P2262)
! Unsupported instruction
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_194
nop
ba P2387
nop

TARGET2262:
ba RET2262
nop


P2387: !_PREFETCH [5] (Int) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_195:
wr %g0, 0x82, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 4
loop_exit_3_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_195
nop

P2388: !_CASX [4] (maybe <- 0x1800032) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_196:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2389: !_PREFETCH [7] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 22
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_196
nop

P2390: !_PREFETCH [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_197:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 20
loop_exit_3_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_197
nop

P2391: !_FLUSH [1] (Int) (Loop entry) (Loop exit) (Branch target of P2418)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_198:
! Unsupported instruction
loop_exit_3_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_198
nop
ba P2392
nop

TARGET2418:
ba RET2418
nop


P2392: !_FLUSH [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_199:
! Unsupported instruction
loop_exit_3_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_199
nop

P2393: !_QWST [3] (maybe <- 0x41000041) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_200:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]
loop_exit_3_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_200
nop

P2394: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_201:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2395: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_201
nop

P2396: !_LD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_202:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_202
nop

P2397: !_PREFETCH [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_203:
prefetch [%i0 + 12], 20

P2398: !_DWST [6] (maybe <- 0x41000043) (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]
loop_exit_3_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_203
nop

P2399: !_REPLACEMENT [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_204:
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

P2400: !_ST [14] (maybe <- 0x1800033) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_3_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_204
nop

P2401: !_LD [4] (Int) (Loop entry) (Branch target of P2088)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_205:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2402
nop

TARGET2088:
ba RET2088
nop


P2402: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_205
nop

P2403: !_LD [7] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_206:
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2404: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_206
nop

P2405: !_PREFETCH [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_207:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 1

P2406: !_BSTC [5] (maybe <- 0x41000044) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_3_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_207
nop

P2407: !_LD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_208:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_208
nop

P2408: !_PREFETCH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_209:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 0
loop_exit_3_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_209
nop

P2409: !_LD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_210:
ld [%i1 + 12], %f0
! 1 addresses covered

P2410: !_PREFETCH [13] (Int) (Faults) (Loop exit)
prefetch [%g0], 2
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_210
nop

P2411: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_211:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_211
nop

P2412: !_DWST [2] (maybe <- 0x1800034) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_212:
mov %l4, %l7 
stx %l7, [%i1 + 0]
add   %l4, 1, %l4
loop_exit_3_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_212
nop

P2413: !_PREFETCH [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_213:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 3
loop_exit_3_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_213
nop

P2414: !_QWLD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_214:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_214
nop

P2415: !_CASX [9] (maybe <- 0x1800035) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_215:
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
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_215
nop

P2416: !_DWST [11] (maybe <- 0x1800036) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_216:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 8]
add   %l4, 1, %l4

P2417: !_LD [2] (Int)
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2418: !_LD [1] (Int) (Loop exit) (CBR)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2418
nop
RET2418:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_216
nop

P2419: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_217:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2420: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_217
nop

P2421: !_BST [9] (maybe <- 0x41000046) (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_218:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2421
nop
RET2421:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2422: !_BST [11] (maybe <- 0x41000048) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_3_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_218
nop

P2423: !_QWST [8] (maybe <- 0x4100004a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_219:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_3_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_219
nop

P2424: !_BSTC [13] (maybe <- 0x4100004c) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_220:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2425: !_DWLD [13] (Int)
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2426: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_220
nop

P2427: !_PREFETCH [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_221:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 1
loop_exit_3_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_221
nop

P2428: !_REPLACEMENT [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_222:
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
loop_exit_3_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_222
nop

P2429: !_BLD [2] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_223:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2429
nop
RET2429:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_223
nop

P2430: !_CASX [11] (maybe <- 0x1800037) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_224:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
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

P2431: !_PREFETCH [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 0
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_224
nop

P2432: !_LD [8] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_225:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2433: !_REPLACEMENT [13] (Int) (Loop exit)
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_225
nop

P2434: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_226:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 3
loop_exit_3_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_226
nop

P2435: !_LD [12] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_227:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 4] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_227
nop

P2436: !_DWST [6] (maybe <- 0x4100004e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_228:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]
loop_exit_3_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_228
nop

P2437: !_LD [10] (Int) (Loop entry) (Branch target of P2034)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_229:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2438
nop

TARGET2034:
ba RET2034
nop


P2438: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_229
nop

P2439: !_QWST [1] (maybe <- 0x4100004f) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_230:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
loop_exit_3_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_230
nop

P2440: !_LD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_231:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_231
nop

P2441: !_LD [0] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_232:
wr %g0, 0x82, %asi
lduwa [%i0 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2442: !_PREFETCH [2] (Int)
prefetch [%i1 + 4], 0

P2443: !_LD [12] (Int) (Loop exit) (Branch target of P2572)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_232
nop
ba P2444
nop

TARGET2572:
ba RET2572
nop


P2444: !_LD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_233:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_233
nop

P2445: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_234:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2446: !_LD [8] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2447: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_234
nop

P2448: !_PREFETCH [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_235:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 3

P2449: !_FLUSHI [10] (Int) (Loop exit)
flush %g0 
loop_exit_3_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_235
nop

P2450: !_PREFETCH [9] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_236:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 20
loop_exit_3_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_236
nop

P2451: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_237:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2452: !_LD [4] (FP) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2452
nop
RET2452:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2453: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_237
nop

P2454: !_DWLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_238:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_238
nop

P2455: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_239:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2456: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_239
nop

P2457: !_DWST [9] (maybe <- 0x41000051) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_240:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i3 + 8]

P2458: !_SWAP [3] (maybe <- 0x1800038) (Int)
mov %l4, %o0
swap  [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2459: !_LD [12] (Int) (Loop exit) (Branch target of P2313)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_240
nop
ba P2460
nop

TARGET2313:
ba RET2313
nop


P2460: !_PREFETCH [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_241:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 19

P2461: !_ST [3] (maybe <- 0x41000052) (FP) (Loop exit) (CBR)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 12 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2461
nop
RET2461:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_3_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_241
nop

P2462: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_242:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2463: !_CAS [8] (maybe <- 0x1800039) (Int)
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

P2464: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_242
nop

P2465: !_ST [4] (maybe <- 0x180003a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_243:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P2466: !_LD [3] (FP) (Loop exit)
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_243
nop

P2467: !_DWST [6] (maybe <- 0x180003b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_244:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 0]
add   %l4, 1, %l4

P2468: !_QWLD [9] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_244
nop

P2469: !_LD [11] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_245:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P2470: !_BSTC [11] (maybe <- 0x41000053) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_245
nop

P2471: !_DWST [14] (maybe <- 0x180003c) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_246:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o5 
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P2472: !_LD [2] (FP) (Loop exit) (Branch target of P2558)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 2 

sethi %hi(0x200000), %l7
sub   %i1, %l7, %i1
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

sethi %hi(0x200000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_246
nop
ba P2473
nop

TARGET2558:
ba RET2558
nop


P2473: !_REPLACEMENT [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_247:
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

P2474: !_PREFETCH [3] (Int) (Faults) (Loop exit)
prefetch [%g0], 3
loop_exit_3_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_247
nop

P2475: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_248:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_248
nop

P2476: !_PREFETCH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_249:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 2
loop_exit_3_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_249
nop

P2477: !_FLUSH [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_250:
! Unsupported instruction
loop_exit_3_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_250
nop

P2478: !_QWLD [14] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_251:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldqa  [%i2 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_251
nop

P2479: !_LD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_252:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P2480: !_BLD [6] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f1
fmovd %f34, %f18
fmovs %f19, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_3_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_252
nop

P2481: !_REPLACEMENT [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_253:
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
loop_exit_3_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_253
nop

P2482: !_LD [14] (Int) (NF) (Loop entry) (Branch target of P2188)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_254:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2483
nop

TARGET2188:
ba RET2188
nop


P2483: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_254
nop

P2484: !_LD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_255:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_255
nop

P2485: !_BST [11] (maybe <- 0x41000055) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_256:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2486: !_PREFETCH [11] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
prefetcha [%i3 + 12] %asi, 3
loop_exit_3_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_256
nop

P2487: !_REPLACEMENT [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_257:
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
loop_exit_3_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_257
nop

P2488: !_DWLD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_258:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2489: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_258
nop

P2490: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_259:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2491: !_LD [4] (Int) (Loop exit) (Branch target of P2591)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_259
nop
ba P2492
nop

TARGET2591:
ba RET2591
nop


P2492: !_DWLD [7] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_260:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2492
nop
RET2492:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2493: !_CASX [4] (maybe <- 0x180003d) (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_260
nop

P2494: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_261:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2495: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_261
nop

P2496: !_DWLD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_262:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_262
nop

P2497: !_REPLACEMENT [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_263:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
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
loop_exit_3_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_263
nop

P2498: !_PREFETCH [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_264:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 22

P2499: !_PREFETCH [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 21
loop_exit_3_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_264
nop

P2500: !_BLD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_265:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_265
nop

P2501: !_CAS [13] (maybe <- 0x180003e) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_266:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l3
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

P2502: !_LD [10] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_266
nop

P2503: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_267:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2504: !_LD [8] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_267
nop

P2505: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_268:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_268
nop

P2506: !_LD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_269:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_269
nop

P2507: !_ST [13] (maybe <- 0x180003f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_270:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P2508: !_LD [7] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_270
nop

P2509: !_LD [13] (FP) (Loop entry) (Branch target of P2283)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_271:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
ba P2510
nop

TARGET2283:
ba RET2283
nop


P2510: !_BST [0] (maybe <- 0x41000057) (FP) (Loop exit)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_271
nop

P2511: !_LD [3] (FP) (NF) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_272:
wr %g0, 0x82, %asi
lda    [%g0] %asi, %f0
! 1 addresses covered

P2512: !_CAS [12] (maybe <- 0x1800040) (Int) (Loop exit) (LE)
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
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduwa [%l3] %asi, %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l6, %l7
casa [%l3] %asi, %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_272
nop

P2513: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_273:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2514: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_273
nop

P2515: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_274:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2516: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_274
nop

P2517: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_275:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2518: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_275
nop

P2519: !_CAS [2] (maybe <- 0x1800041) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_276:
add %i1, 4, %l3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_276
nop

P2520: !_CAS [13] (maybe <- 0x1800042) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_277:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_277
nop

P2521: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_278:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_278
nop

P2522: !_BSTC [6] (maybe <- 0x41000059) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_279:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_3_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_279
nop

P2523: !_LD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_280:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2524: !_LD [9] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_280
nop

P2525: !_LD [0] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_281:
ld [%i0 + 4], %f0
! 1 addresses covered

P2526: !_CAS [6] (maybe <- 0x1800043) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
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
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_281
nop

P2527: !_LD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_282:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_282
nop

P2528: !_LD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_283:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2529: !_BST [9] (maybe <- 0x4100005b) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_283
nop

P2530: !_CAS [4] (maybe <- 0x1800044) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_284:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l7
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2530
nop
RET2530:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2531: !_LD [0] (FP) (Loop exit)
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_284
nop

P2532: !_PREFETCH [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_285:
prefetch [%i1 + 4], 28

P2533: !_CAS [9] (maybe <- 0x1800045) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_285
nop

P2534: !_LD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_286:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2535: !_BST [12] (maybe <- 0x4100005d) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_286
nop

P2536: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_287:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2537: !_REPLACEMENT [9] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P2538: !_LD [2] (Int) (Loop exit) (Branch target of P2284)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_287
nop
ba P2539
nop

TARGET2284:
ba RET2284
nop


P2539: !_REPLACEMENT [15] (Int) (Loop entry) (Loop exit) (Branch target of P2668)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_288:
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
loop_exit_3_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_288
nop
ba P2540
nop

TARGET2668:
ba RET2668
nop


P2540: !_PREFETCH [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_289:
prefetch [%i0 + 12], 3

P2541: !_DWLD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2542: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_289
nop

P2543: !_PREFETCH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_290:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 23
loop_exit_3_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_290
nop

P2544: !_FLUSH [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_291:
! Unsupported instruction

P2545: !_LD [8] (FP) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 4] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_291
nop

P2546: !_REPLACEMENT [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_292:
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
loop_exit_3_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_292
nop

P2547: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_293:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2548: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_293
nop

P2549: !_LD [5] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_294:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P2550: !_PREFETCH [6] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 4] %asi, 2
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_294
nop

P2551: !_PREFETCH [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_295:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 1

P2552: !_PREFETCH [5] (Int) (Faults) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 20
loop_exit_3_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_295
nop

P2553: !_BST [15] (maybe <- 0x4100005f) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_296:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2554: !_PREFETCH [14] (Int) (Loop exit)
prefetch [%i2 + 4], 1
loop_exit_3_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_296
nop

P2555: !_SWAP [2] (maybe <- 0x1800046) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_297:
mov %l4, %o0
swap  [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2556: !_DWST [1] (maybe <- 0x41000061) (FP)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 8]

P2557: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_297
nop

P2558: !_LD [3] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_298:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2558
nop
RET2558:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2559: !_QWST [2] (maybe <- 0x41000062) (FP)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i1 + 0]

P2560: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_298
nop

P2561: !_PREFETCH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_299:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 3
loop_exit_3_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_299
nop

P2562: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_300:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2563: !_LD [11] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P2564: !_LD [13] (Int) (NF) (Loop exit) (LE)
wr %g0, 0x8a, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_300
nop

P2565: !_LD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_301:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2566: !_BSTC [5] (maybe <- 0x41000064) (FP) (Loop exit)
wr %g0, 0xe0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_301
nop

P2567: !_PREFETCH [11] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_302:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 23

P2568: !_LD [13] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_302
nop

P2569: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_303:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2570: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_303
nop

P2571: !_BST [15] (maybe <- 0x41000066) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_304:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_3_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_304
nop

P2572: !_BLD [9] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_305:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

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


P2573: !_LD [7] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f2
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_3_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_305
nop

P2574: !_CAS [1] (maybe <- 0x1800047) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_306:
add %i0, 12, %l3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_306
nop

P2575: !_BST [9] (maybe <- 0x41000068) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_307:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_3_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_307
nop

P2576: !_QWST [14] (maybe <- 0x4100006a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_308:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
loop_exit_3_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_308
nop

P2577: !_REPLACEMENT [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_309:
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
loop_exit_3_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_309
nop

P2578: !_PREFETCH [13] (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_310:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 23
loop_exit_3_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_310
nop

P2579: !_DWST [2] (maybe <- 0x1800048) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_311:
mov %l4, %l6 
stx %l6, [%i1 + 0]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2579
nop
RET2579:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_3_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_311
nop

P2580: !_REPLACEMENT [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_312:
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
loop_exit_3_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_312
nop

P2581: !_BST [1] (maybe <- 0x4100006c) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_313:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_3_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_313
nop

P2582: !_LD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_314:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_314
nop

P2583: !_CAS [15] (maybe <- 0x1800049) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_315:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %l3
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

P2584: !_DWLD [5] (Int) (Branch target of P2063)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
ba P2585
nop

TARGET2063:
ba RET2063
nop


P2585: !_LD [5] (Int) (Loop exit)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_315
nop

P2586: !_CASX [15] (maybe <- 0x180004a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_316:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P2587: !_BST [4] (maybe <- 0x4100006e) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_316
nop

P2588: !_LD [10] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_317:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2589: !_PREFETCH [5] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 23
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_317
nop

P2590: !_LD [5] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_318:
wr %g0, 0x82, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lda    [%i2 + 12] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_318
nop

P2591: !_BLD [11] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_319:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2591
nop
RET2591:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2592: !_DWST [9] (maybe <- 0x41000070) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 8]
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_319
nop

P2593: !_LD [13] (FP) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_320:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered

P2594: !_DWST [15] (maybe <- 0x180004b) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o5 
stx %o5, [%i2 + 8]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_320
nop

P2595: !_CAS [12] (maybe <- 0x180004c) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_321:
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
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduwa [%l3] %asi, %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l6, %l7
casa [%l3] %asi, %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P2596: !_CASX [14] (maybe <- 0x180004d) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %o5
mov %l4, %o2
casx [%i2], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_321
nop

P2597: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_322:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2598: !_LD [13] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P2599: !_LD [13] (Int) (Loop exit) (Branch target of P2258)
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_322
nop
ba P2600
nop

TARGET2258:
ba RET2258
nop


P2600: !_LD [5] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_323:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2601: !_LD [4] (Int) (Loop exit)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_323
nop

P2602: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_324:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2603: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_324
nop

P2604: !_CASX [13] (maybe <- 0x180004e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_325:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2605: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2606: !_LD [9] (Int) (Loop exit)
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_325
nop

P2607: !_LD [15] (FP) (NF) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_326:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lda    [%i3 + 12] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_326
nop

P2608: !_PREFETCH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_327:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 0
loop_exit_3_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_327
nop

P2609: !_LD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_328:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2610: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_328
nop

P2611: !_BSTC [12] (maybe <- 0x41000071) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_329:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2612: !_CAS [1] (maybe <- 0x180004f) (Int) (Loop exit)
add %i0, 12, %l3
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_329
nop

P2613: !_QWLD [3] (FP) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_330:
wr %g0, 0x82, %asi
ldqa  [%i1 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2614: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_330
nop

P2615: !_LD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_331:
ld [%i1 + 4], %f0
! 1 addresses covered

P2616: !_FLUSH [12] (Int) (Loop exit)
! Unsupported instruction
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_331
nop

P2617: !_BST [4] (maybe <- 0x41000073) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_332:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2618: !_PREFETCH [10] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 4
loop_exit_3_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_332
nop

P2619: !_CAS [0] (maybe <- 0x1800050) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_333:
add %i0, 4, %o5
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_333:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_333
nop

P2620: !_LD [12] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_334:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2620
nop
RET2620:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2621: !_LD [5] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P2622: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_334:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_334
nop

P2623: !_DWLD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_335:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P2624: !_REPLACEMENT [1] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_335:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_335
nop

P2625: !_CAS [11] (maybe <- 0x1800051) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_336:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_336:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_336
nop

P2626: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_337:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_337:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_337
nop

P2627: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_338:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2628: !_QWST [10] (maybe <- 0x41000075) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

P2629: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_338:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_338
nop

P2630: !_LD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_339:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_339:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_339
nop

P2631: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_340:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2632: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_340:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_340
nop

P2633: !_DWLD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_341:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2634: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_341:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_341
nop

P2635: !_DWLD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_342:
ldx [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2636: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_342:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_342
nop

P2637: !_REPLACEMENT [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_343:
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

P2638: !_DWST [1] (maybe <- 0x41000077) (FP) (Loop exit)
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 8]
loop_exit_3_343:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_343
nop

P2639: !_CAS [9] (maybe <- 0x1800052) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_344:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_344:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_344
nop

P2640: !_CASX [10] (maybe <- 0x1800053) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_345:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2641: !_BSTC [10] (maybe <- 0x41000078) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_345:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_345
nop

P2642: !_PREFETCH [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_346:
prefetch [%i0 + 12], 21
loop_exit_3_346:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_346
nop

P2643: !_CASX [2] (maybe <- 0x1800054) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_347:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2644: !_CAS [4] (maybe <- 0x1800055) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_347:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_347
nop

P2645: !_FLUSH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_348:
! Unsupported instruction
loop_exit_3_348:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_348
nop

P2646: !_LD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_349:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_349:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_349
nop

P2647: !_PREFETCH [1] (Int) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_350:
prefetch [%i0 + 12], 20

P2648: !_LD [14] (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_350:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_350
nop

P2649: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_351:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2650: !_REPLACEMENT [2] (Int)
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

P2651: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_351:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_351
nop

P2652: !_LD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_352:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2653: !_CAS [13] (maybe <- 0x1800056) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
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
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_352:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_352
nop

P2654: !_DWLD [12] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_353:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2654
nop
RET2654:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_353:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_353
nop

P2655: !_PREFETCH [14] (Int) (Loop entry) (Branch target of P2195)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_354:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 22
ba P2656
nop

TARGET2195:
ba RET2195
nop


P2656: !_ST [12] (maybe <- 0x1800057) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_3_354:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_354
nop

P2657: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_355:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_355:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_355
nop

P2658: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_356:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2659: !_LD [2] (Int) (Loop exit) (Branch target of P2129)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_356:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_356
nop
ba P2660
nop

TARGET2129:
ba RET2129
nop


P2660: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_357:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2661: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_357:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_357
nop

P2662: !_DWLD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_358:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2663: !_LD [8] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2664: !_LD [4] (Int) (Loop exit) (Branch target of P2256)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_358:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_358
nop
ba P2665
nop

TARGET2256:
ba RET2256
nop


P2665: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_359:
prefetch [%i1 + 12], 20

P2666: !_PREFETCH [11] (Int) (NF) (Loop exit) (LE)
wr %g0, 0x8a, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 20
loop_exit_3_359:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_359
nop

P2667: !_PREFETCH [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_360:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 21

P2668: !_QWLD [15] (FP) (Loop exit) (CBR)
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2668
nop
RET2668:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_360:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_360
nop

P2669: !_MEMBAR (Int)
membar #StoreLoad

END_NODES3: ! Test instruction sequence for CPU 3 ends
sethi %hi(0xdead0e0f), %o5
or    %o5, %lo(0xdead0e0f), %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
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
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func4:
! 1000 (dynamic) instruction sequence begins
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
sethi %hi(0x04deade1), %l7
or    %l7, %lo(0x04deade1), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x2000001), %l4
or    %l4, %lo(0x2000001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x41800001), %l7
or    %l7, %lo(0x41800001), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x36000000), %l7
or    %l7, %lo(0x36000000), %l7
stw %l7, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x2a99^4
sethi %hi(0x2a99), %l0
or    %l0, %lo(0x2a99), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES4: ! Test instruction sequence for CPU 4 begins

P2670: !_LD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_0:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2671: !_PREFETCH [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_0
nop

P2672: !_PREFETCH [7] (Int) (NF) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_1:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 12] %asi, 23

P2673: !_PREFETCH [2] (Int) (Loop exit)
prefetch [%i1 + 4], 1
loop_exit_4_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_1
nop

P2674: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_2:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2675: !_BST [5] (maybe <- 0x41800001) (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_2
nop

P2676: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_3:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2677: !_LD [15] (FP)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P2678: !_LD [4] (Int) (NF) (Loop exit) (CBR)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

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

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_3
nop

P2679: !_LD [4] (FP) (NF) (Faults) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_4:
wr %g0, 0x82, %asi
lda    [%g0] %asi, %f0
! 1 addresses covered

P2680: !_QWLD [0] (FP) (Loop exit)
ldq   [%i0 + 0], %f32
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f1
fmovd %f34, %f18
fmovs %f19, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_4_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_4
nop

P2681: !_SWAP [6] (maybe <- 0x2000001) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_5:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2682: !_DWST [4] (maybe <- 0x2000002) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3 
stx %l3, [%i3 + 0]
add   %l4, 1, %l4

P2683: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_5
nop

P2684: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_6:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2685: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_6
nop

P2686: !_SWAP [0] (maybe <- 0x2000003) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_7:
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2687: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_7
nop

P2688: !_PREFETCH [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_8:
prefetch [%i0 + 4], 22

P2689: !_CAS [11] (maybe <- 0x2000004) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_8
nop

P2690: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_9:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2691: !_LD [13] (Int) (Loop exit)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_9
nop

P2692: !_LD [3] (Int) (Loop entry) (CBR) (Branch target of P2907)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_10:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2692
nop
RET2692:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P2693
nop

TARGET2907:
ba RET2907
nop


P2693: !_LD [11] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_10
nop

P2694: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_11:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_11
nop

P2695: !_LD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_12:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2696: !_DWLD [6] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2696
nop
RET2696:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2697: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_12
nop

P2698: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_13:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 26

P2699: !_LD [15] (Int) (Branch target of P2758)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2700
nop

TARGET2758:
ba RET2758
nop


P2700: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_13
nop

P2701: !_REPLACEMENT [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_14:
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
loop_exit_4_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_14
nop

P2702: !_QWST [10] (maybe <- 0x41800003) (FP) (Loop entry) (Loop exit) (Branch target of P2955)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_15:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_4_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_15
nop
ba P2703
nop

TARGET2955:
ba RET2955
nop


P2703: !_CASX [13] (maybe <- 0x2000005) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_16:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2704: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2705: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_4_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_16
nop

P2706: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_17:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2707: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_17
nop

P2708: !_SWAP [13] (maybe <- 0x2000006) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_18:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2709: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_18
nop

P2710: !_QWLD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_19:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldq   [%i2 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2711: !_LD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2712: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_19
nop

P2713: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_20:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2714: !_DWLD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_20
nop

P2715: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_21:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_21
nop

P2716: !_PREFETCH [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_22:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 22

P2717: !_BLD [1] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_22
nop

P2718: !_PREFETCH [1] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_23:
prefetch [%g0], 4
loop_exit_4_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_23
nop

P2719: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_24:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2720: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_24
nop

P2721: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_25:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2722: !_LD [3] (Int) (NF)
wr %g0, 0x82, %asi
lduwa [%i1 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2723: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_25
nop

P2724: !_PREFETCH [9] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_26:
prefetch [%g0], 16
loop_exit_4_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_26
nop

P2725: !_PREFETCH [5] (Int) (NF) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_27:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 4

P2726: !_LD [12] (FP) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lda    [%i3 + 4] %asi, %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_27
nop

P2727: !_LD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_28:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_28
nop

P2728: !_REPLACEMENT [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_29:
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
ld [%l3+4], %l6
st %l6, [%l3+4]

P2729: !_CAS [0] (maybe <- 0x2000007) (Int) (Loop exit)
add %i0, 4, %o5
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_29
nop

P2730: !_FLUSH [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_30:
! Unsupported instruction

P2731: !_PREFETCH [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 22
loop_exit_4_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_30
nop

P2732: !_PREFETCH [0] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_31:
wr %g0, 0x82, %asi
prefetcha [%i0 + 4] %asi, 4

P2733: !_PREFETCH [12] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 21
loop_exit_4_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_31
nop

P2734: !_LD [6] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_32:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2735: !_FLUSH [7] (Int)
! Unsupported instruction

P2736: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_32
nop

P2737: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_33:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2738: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_33
nop

P2739: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_34:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 3
loop_exit_4_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_34
nop

P2740: !_ST [13] (maybe <- 0x2000008) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_35:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_4_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_35
nop

P2741: !_LD [15] (Int) (Loop entry) (Branch target of P3284)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_36:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2742
nop

TARGET3284:
ba RET3284
nop


P2742: !_BSTC [3] (maybe <- 0x41800005) (FP)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

P2743: !_LD [14] (Int) (Loop exit)
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_36
nop

P2744: !_DWLD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_37:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_37
nop

P2745: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_38:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 28
loop_exit_4_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_38
nop

P2746: !_LD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_39:
ld [%i1 + 12], %f0
! 1 addresses covered

P2747: !_LD [2] (FP) (Loop exit)
ld [%i1 + 4], %f1
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_39
nop

P2748: !_LD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_40:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2749: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_40
nop

P2750: !_QWST [13] (maybe <- 0x41800007) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_41:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i2 + 0]
loop_exit_4_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_41
nop

P2751: !_ST [0] (maybe <- 0x2000009) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_42:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2752: !_REPLACEMENT [0] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
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
loop_exit_4_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_42
nop

P2753: !_LD [15] (FP) (Loop entry) (Branch target of P3040)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_43:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
ba P2754
nop

TARGET3040:
ba RET3040
nop


P2754: !_DWLD [3] (Int)
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2755: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_43
nop

P2756: !_REPLACEMENT [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_44:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
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
loop_exit_4_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_44
nop

P2757: !_QWLD [14] (FP) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_45:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldqa  [%i2 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2758: !_BSTC [8] (maybe <- 0x41800009) (FP) (Loop exit) (CBR)
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2758
nop
RET2758:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_45
nop

P2759: !_BSTC [0] (maybe <- 0x4180000b) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_46:
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

P2760: !_LD [3] (Int)
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2761: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_46
nop

P2762: !_LD [11] (FP) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_47:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 12] %asi, %f0
! 1 addresses covered

P2763: !_LD [2] (Int)
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2764: !_LD [6] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_47
nop

P2765: !_BLD [0] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_48:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2765
nop
RET2765:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_48
nop

P2766: !_QWLD [10] (FP) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_49:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldqa  [%i2 + 0] %asi, %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2767: !_BLD [7] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_49
nop

P2768: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_50:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2769: !_FLUSH [7] (Int)
! Unsupported instruction

P2770: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_50
nop

P2771: !_PREFETCH [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_51:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 18
loop_exit_4_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_51
nop

P2772: !_FLUSH [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_52:
! Unsupported instruction
loop_exit_4_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_52
nop

P2773: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_53:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2774: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_53
nop

P2775: !_BLD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_54:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2776: !_SWAP [9] (maybe <- 0x200000a) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %o0, %l7, %o5
srl %o5, 8, %o5
sll %o0, 8, %o0
and %o0, %l7, %o0
or %o0, %o5, %o0
srl %o0, 16, %o5
sll %o0, 16, %o0
srl %o0, 0, %o0
or %o0, %o5, %o0
swapa  [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2777: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_54
nop

P2778: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_55:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2779: !_LD [2] (FP)
ld [%i1 + 4], %f0
! 1 addresses covered

P2780: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_55
nop

P2781: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_56:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2782: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_56
nop

P2783: !_BST [12] (maybe <- 0x4180000d) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_57:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2784: !_CAS [6] (maybe <- 0x200000b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l7
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_57
nop

P2785: !_QWST [1] (maybe <- 0x4180000f) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_58:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]
loop_exit_4_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_58
nop

P2786: !_LD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_59:
ld [%i1 + 12], %f0
! 1 addresses covered

P2787: !_LD [15] (Int) (NF) (Faults)
wr %g0, 0x82, %asi
lduwa [%g0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2788: !_LD [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_59
nop

P2789: !_PREFETCH [14] (Int) (NF) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_60:
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 4] %asi, 22
loop_exit_4_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_60
nop

P2790: !_LD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_61:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2791: !_CAS [2] (maybe <- 0x200000c) (Int) (Loop exit)
add %i1, 4, %l6
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
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_61
nop

P2792: !_DWLD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_62:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0

P2793: !_CAS [10] (maybe <- 0x200000d) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_62
nop

P2794: !_REPLACEMENT [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_63:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P2795: !_DWLD [10] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_63
nop

P2796: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_64:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2797: !_LD [8] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_64
nop

P2798: !_DWST [14] (maybe <- 0x200000e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_65:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l3 
stx %l3, [%i3 + 0]
add   %l4, 1, %l4
loop_exit_4_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_65
nop

P2799: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_66:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 21
loop_exit_4_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_66
nop

P2800: !_PREFETCH [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_67:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 20
loop_exit_4_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_67
nop

P2801: !_LD [14] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_68:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2801
nop
RET2801:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2802: !_LD [8] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_68
nop

P2803: !_LD [15] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_69:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2803
nop
RET2803:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2804: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_69
nop

P2805: !_BSTC [8] (maybe <- 0x41800011) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_70:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2806: !_LD [2] (FP) (Loop exit)
ld [%i1 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_70
nop

P2807: !_DWLD [15] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_71:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P2808: !_BLD [14] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f1
fmovd %f34, %f18
fmovs %f19, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_4_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_71
nop

P2809: !_REPLACEMENT [7] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_72:
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2809
nop
RET2809:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2810: !_ST [7] (maybe <- 0x41800013) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]
loop_exit_4_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_72
nop

P2811: !_ST [15] (maybe <- 0x200000f) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_73:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2811
nop
RET2811:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2812: !_LD [12] (FP) (Loop exit) (Branch target of P2765)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_73
nop
ba P2813
nop

TARGET2765:
ba RET2765
nop


P2813: !_CASX [12] (maybe <- 0x2000010) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_74:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2814: !_BLD [11] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_74
nop

P2815: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_75:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_75
nop

P2816: !_LD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_76:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P2817: !_QWST [15] (maybe <- 0x41800014) (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_76
nop

P2818: !_CAS [11] (maybe <- 0x2000011) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_77:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_77
nop

P2819: !_LD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_78:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2820: !_LD [5] (Int)
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2821: !_LD [12] (Int) (NF) (Loop exit) (CBR)
wr %g0, 0x82, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2821
nop
RET2821:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_78
nop

P2822: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_79:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2823: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_79
nop

P2824: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_80:
prefetch [%i1 + 12], 28

P2825: !_BSTC [1] (maybe <- 0x41800016) (FP) (Loop exit)
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_4_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_80
nop

P2826: !_REPLACEMENT [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_81:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
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
loop_exit_4_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_81
nop

P2827: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_82:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2828: !_LD [11] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P2829: !_LD [11] (Int) (Loop exit)
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_82
nop

P2830: !_LD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_83:
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_83
nop

P2831: !_BST [1] (maybe <- 0x41800018) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_84:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_4_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_84
nop

P2832: !_PREFETCH [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_85:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 18
loop_exit_4_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_85
nop

P2833: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_86:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2834: !_PREFETCH [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 4

P2835: !_LD [12] (Int) (Loop exit) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2835
nop
RET2835:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_86
nop

P2836: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_87:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2837: !_PREFETCH [8] (Int) (Faults)
prefetch [%g0], 4

P2838: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_87
nop

P2839: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_88:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2840: !_LD [13] (Int) (Loop exit)
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_88
nop

P2841: !_LD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_89:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P2842: !_PREFETCH [12] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 17
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_89
nop

P2843: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_90:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2844: !_LD [1] (Int) (NF) (Loop exit)
wr %g0, 0x82, %asi
lduwa [%i0 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_90
nop

P2845: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_91:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2846: !_DWLD [5] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %f2
! 1 addresses covered
fmovs %f3, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_4_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_91
nop

P2847: !_PREFETCH [13] (Int) (Faults) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_92:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 22
loop_exit_4_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_92
nop

P2848: !_LD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_93:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_93
nop

P2849: !_LD [10] (FP) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_94:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lda    [%i2 + 4] %asi, %f0
! 1 addresses covered

P2850: !_BLD [5] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 2 addresses covered
fmovd %f32, %f18
fmovs %f19, %f1
fmovd %f34, %f18
fmovs %f19, %f2
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovs %f2, %f30
!--
loop_exit_4_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_94
nop

P2851: !_LD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_95:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P2852: !_LD [15] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2853: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_95
nop

P2854: !_BST [14] (maybe <- 0x4180001a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_96:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_4_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_96
nop

P2855: !_PREFETCH [12] (Int) (Faults) (Loop entry) (Branch target of P2821)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_97:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 20
ba P2856
nop

TARGET2821:
ba RET2821
nop


P2856: !_LD [13] (FP) (Loop exit)
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_97
nop

P2857: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_98:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2858: !_QWLD [9] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2859: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_98
nop

P2860: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_99:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2861: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_99
nop

P2862: !_REPLACEMENT [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_100:
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
loop_exit_4_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_100
nop

P2863: !_BSTC [8] (maybe <- 0x4180001c) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_101:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_4_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_101
nop

P2864: !_LD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_102:
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_102
nop

P2865: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_103:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2866: !_LD [12] (FP)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2867: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_103
nop

P2868: !_LD [14] (Int) (Loop entry) (Branch target of P2692)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_104:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2869
nop

TARGET2692:
ba RET2692
nop


P2869: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_104
nop

P2870: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_105:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2871: !_LD [9] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P2872: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_105
nop

P2873: !_QWLD [5] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_106:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldq   [%i3 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1

P2874: !_PREFETCH [15] (Int) (NF) (Faults) (Loop exit) (Branch target of P3331)
wr %g0, 0x82, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetcha [%i2 + 12] %asi, 22
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_106
nop
ba P2875
nop

TARGET3331:
ba RET3331
nop


P2875: !_ST [2] (maybe <- 0x4180001e) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_107:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 4 ]
loop_exit_4_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_107
nop

P2876: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_108:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_108
nop

P2877: !_BST [4] (maybe <- 0x4180001f) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_109:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2878: !_PREFETCH [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 2
loop_exit_4_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_109
nop

P2879: !_LD [5] (Int) (Loop entry) (Branch target of P2995)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_110:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2880
nop

TARGET2995:
ba RET2995
nop


P2880: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_110
nop

P2881: !_BLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_111:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_111
nop

P2882: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_112:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2883: !_DWLD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_112
nop

P2884: !_LD [2] (Int) (Loop entry) (Branch target of P3175)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_113:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2885
nop

TARGET3175:
ba RET3175
nop


P2885: !_LD [4] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_113
nop

P2886: !_BSTC [0] (maybe <- 0x41800021) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_114:
wr %g0, 0xe0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_4_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_114
nop

P2887: !_BSTC [15] (maybe <- 0x41800023) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_115:
wr %g0, 0xe0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2888: !_PREFETCH [3] (Int) (Loop exit)
prefetch [%i1 + 12], 22
loop_exit_4_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_115
nop

P2889: !_PREFETCH [8] (Int) (Loop entry) (Loop exit) (Branch target of P2678)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_116:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 3
loop_exit_4_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_116
nop
ba P2890
nop

TARGET2678:
ba RET2678
nop


P2890: !_CASX [7] (maybe <- 0x2000012) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_117:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_117
nop

P2891: !_LD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_118:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_118
nop

P2892: !_CASX [15] (maybe <- 0x2000013) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_119:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2893: !_DWST [13] (maybe <- 0x2000014) (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l6 
stx %l6, [%i2 + 8]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_119
nop

P2894: !_PREFETCH [3] (Int) (NF) (Faults) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_120:
wr %g0, 0x8a, %asi
prefetcha [%g0] %asi, 3

P2895: !_PREFETCH [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 21
loop_exit_4_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_120
nop

P2896: !_PREFETCH [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_121:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 18

P2897: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2898: !_LD [8] (Int) (Loop exit)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_121
nop

P2899: !_DWLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_122:
ldd [%i1 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_122
nop

P2900: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_123:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2901: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_123
nop

P2902: !_LD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_124:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_124
nop

P2903: !_PREFETCH [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_125:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 18

P2904: !_LD [13] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2905: !_LD [2] (Int) (Loop exit)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_125
nop

P2906: !_BST [0] (maybe <- 0x41800025) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_126:
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_4_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_126
nop

P2907: !_PREFETCH [2] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_127:
prefetch [%i1 + 4], 1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2907
nop
RET2907:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_4_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_127
nop

P2908: !_PREFETCH [14] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_128:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2908
nop
RET2908:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

loop_exit_4_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_128
nop

P2909: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_129:
prefetch [%i1 + 12], 4

P2910: !_LD [1] (FP) (Loop exit)
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_129
nop

P2911: !_PREFETCH [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_130:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 26
loop_exit_4_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_130
nop

P2912: !_FLUSH [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_131:
! Unsupported instruction
loop_exit_4_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_131
nop

P2913: !_QWST [1] (maybe <- 0x41800027) (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_132:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i0 + 0]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2913
nop
RET2913:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

loop_exit_4_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_132
nop

P2914: !_QWST [5] (maybe <- 0x41800029) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_133:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f23 
fmovs  %f16, %f23
fadds  %f16, %f17, %f16
stq %f20, [%i3 + 0]

P2915: !_QWLD [0] (FP) (Loop exit)
ldq   [%i0 + 0], %f0
! 2 addresses covered
fmovs %f1, %f0
fmovs %f3, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_133
nop

P2916: !_BST [14] (maybe <- 0x4180002b) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_134:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2917: !_BST [1] (maybe <- 0x4180002d) (FP) (Loop exit)
wr %g0, 0xf0, %asi
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_4_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_134
nop

P2918: !_PREFETCH [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_135:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 17

P2919: !_CASX [5] (maybe <- 0x2000015) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_135
nop

P2920: !_BSTC [11] (maybe <- 0x4180002f) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_136:
wr %g0, 0xe0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_4_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_136
nop

P2921: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_137:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2922: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_137
nop

P2923: !_DWLD [11] (Int) (NF) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_138:
wr %g0, 0x82, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 8] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2924: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_138
nop

P2925: !_BST [14] (maybe <- 0x41800031) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_139:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f33 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f35 
fmovd %f20, %f32
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovd %f20, %f34
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_4_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_139
nop

P2926: !_QWST [1] (maybe <- 0x41800033) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_140:
! preparing store val #0, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
fmovs  %f16, %f23
loop_exit_4_140:
