/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: n2_tso_8talias_8t_1.s
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
#define REGION_SIZE_RTL (64 * 1024)
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


#define THREAD_COUNT 8
#define THREAD_STRIDE 1
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

#define ASI_BLOCK(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
        setx 0x060, tmp_reg1, tmp_reg2; \
        stxa %g0, [tmp_reg2] 0x38;

		
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
#define REGION1_ALIAS3_O 0x10000
#define REGION2_ALIAS3_O 0x20000
#define REGION3_ALIAS3_O 0x30000
#define REGION4_ALIAS3_O 0x40000
#define REGION5_ALIAS3_O 0x50000
#define REGION6_ALIAS3_O 0x60000
#define REGION7_ALIAS3_O 0x70000
#define REPLACEMENT0_ALIAS3_O 0x80000
#define REGION0_ALIAS2_O 0xc0000
#define REGION1_ALIAS2_O 0xd0000
#define REGION2_ALIAS2_O 0xe0000
#define REGION3_ALIAS2_O 0xf0000
#define REGION4_ALIAS2_O 0x100000
#define REGION5_ALIAS2_O 0x110000
#define REGION6_ALIAS2_O 0x120000
#define REGION7_ALIAS2_O 0x130000
#define REPLACEMENT0_ALIAS2_O 0x140000
#define REGION0_ALIAS1_O 0x180000
#define REGION1_ALIAS1_O 0x190000
#define REGION2_ALIAS1_O 0x1a0000
#define REGION3_ALIAS1_O 0x1b0000
#define REGION4_ALIAS1_O 0x1c0000
#define REGION5_ALIAS1_O 0x1d0000
#define REGION6_ALIAS1_O 0x1e0000
#define REGION7_ALIAS1_O 0x1f0000
#define REPLACEMENT0_ALIAS1_O 0x200000
#define REGION0_ALIAS0_O 0x240000
#define REGION1_ALIAS0_O 0x250000
#define REGION2_ALIAS0_O 0x260000
#define REGION3_ALIAS0_O 0x270000
#define REGION4_ALIAS0_O 0x280000
#define REGION5_ALIAS0_O 0x290000
#define REGION6_ALIAS0_O 0x2a0000
#define REGION7_ALIAS0_O 0x2b0000
#define REPLACEMENT0_ALIAS0_O 0x2c0000


#define USER_PAGE_CUSTOM_MAP
SECTION .MAIN TEXT_VA=0x1000000
attr_text {
	Name = .MAIN,
	VA=0x1000000,
	RA=0x130000000,
	PA=ra2pa(0x130000000,0),
part_0_ctx_nonzero_tsb_config_1,
 TTE_X=1,
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

SECTION region1_alias3_4 DATA_VA=0x6010000
attr_data {
	Name = region1_alias3_4,
	VA=0x6010000,
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

SECTION region2_alias3_4 DATA_VA=0x6020000
attr_data {
	Name = region2_alias3_4,
	VA=0x6020000,
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

SECTION region3_alias3_4 DATA_VA=0x6030000
attr_data {
	Name = region3_alias3_4,
	VA=0x6030000,
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

SECTION region4_alias3_4 DATA_VA=0x6040000
attr_data {
	Name = region4_alias3_4,
	VA=0x6040000,
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

SECTION region5_alias3_4 DATA_VA=0x6050000
attr_data {
	Name = region5_alias3_4,
	VA=0x6050000,
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

SECTION region6_alias3_4 DATA_VA=0x6060000
attr_data {
	Name = region6_alias3_4,
	VA=0x6060000,
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

SECTION region7_alias3_4 DATA_VA=0x6070000
attr_data {
	Name = region7_alias3_4,
	VA=0x6070000,
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

SECTION replacement0_alias3_4 DATA_VA=0x6080000
attr_data {
	Name = replacement0_alias3_4,
	VA=0x6080000,
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

SECTION replacement1_alias3_4 DATA_VA=0x6090000
attr_data {
	Name = replacement1_alias3_4,
	VA=0x6090000,
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

SECTION replacement2_alias3_4 DATA_VA=0x60a0000
attr_data {
	Name = replacement2_alias3_4,
	VA=0x60a0000,
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

SECTION replacement3_alias3_4 DATA_VA=0x60b0000
attr_data {
	Name = replacement3_alias3_4,
	VA=0x60b0000,
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

SECTION region0_alias2_4 DATA_VA=0x60c0000
attr_data {
	Name = region0_alias2_4,
	VA=0x60c0000,
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

SECTION region1_alias2_4 DATA_VA=0x60d0000
attr_data {
	Name = region1_alias2_4,
	VA=0x60d0000,
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

SECTION region2_alias2_4 DATA_VA=0x60e0000
attr_data {
	Name = region2_alias2_4,
	VA=0x60e0000,
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

SECTION region3_alias2_4 DATA_VA=0x60f0000
attr_data {
	Name = region3_alias2_4,
	VA=0x60f0000,
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

SECTION region4_alias2_4 DATA_VA=0x6100000
attr_data {
	Name = region4_alias2_4,
	VA=0x6100000,
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

SECTION region5_alias2_4 DATA_VA=0x6110000
attr_data {
	Name = region5_alias2_4,
	VA=0x6110000,
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

SECTION region6_alias2_4 DATA_VA=0x6120000
attr_data {
	Name = region6_alias2_4,
	VA=0x6120000,
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

SECTION region7_alias2_4 DATA_VA=0x6130000
attr_data {
	Name = region7_alias2_4,
	VA=0x6130000,
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

SECTION replacement0_alias2_4 DATA_VA=0x6140000
attr_data {
	Name = replacement0_alias2_4,
	VA=0x6140000,
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

SECTION replacement1_alias2_4 DATA_VA=0x6150000
attr_data {
	Name = replacement1_alias2_4,
	VA=0x6150000,
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

SECTION replacement2_alias2_4 DATA_VA=0x6160000
attr_data {
	Name = replacement2_alias2_4,
	VA=0x6160000,
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

SECTION replacement3_alias2_4 DATA_VA=0x6170000
attr_data {
	Name = replacement3_alias2_4,
	VA=0x6170000,
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

SECTION region0_alias1_4 DATA_VA=0x6180000
attr_data {
	Name = region0_alias1_4,
	VA=0x6180000,
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

SECTION region1_alias1_4 DATA_VA=0x6190000
attr_data {
	Name = region1_alias1_4,
	VA=0x6190000,
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

SECTION region2_alias1_4 DATA_VA=0x61a0000
attr_data {
	Name = region2_alias1_4,
	VA=0x61a0000,
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

SECTION region3_alias1_4 DATA_VA=0x61b0000
attr_data {
	Name = region3_alias1_4,
	VA=0x61b0000,
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

SECTION region4_alias1_4 DATA_VA=0x61c0000
attr_data {
	Name = region4_alias1_4,
	VA=0x61c0000,
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

SECTION region5_alias1_4 DATA_VA=0x61d0000
attr_data {
	Name = region5_alias1_4,
	VA=0x61d0000,
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

SECTION region6_alias1_4 DATA_VA=0x61e0000
attr_data {
	Name = region6_alias1_4,
	VA=0x61e0000,
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

SECTION region7_alias1_4 DATA_VA=0x61f0000
attr_data {
	Name = region7_alias1_4,
	VA=0x61f0000,
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

SECTION replacement0_alias1_4 DATA_VA=0x6200000
attr_data {
	Name = replacement0_alias1_4,
	VA=0x6200000,
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

SECTION replacement1_alias1_4 DATA_VA=0x6210000
attr_data {
	Name = replacement1_alias1_4,
	VA=0x6210000,
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

SECTION replacement2_alias1_4 DATA_VA=0x6220000
attr_data {
	Name = replacement2_alias1_4,
	VA=0x6220000,
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

SECTION replacement3_alias1_4 DATA_VA=0x6230000
attr_data {
	Name = replacement3_alias1_4,
	VA=0x6230000,
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

SECTION region0_alias0 DATA_VA=0x6240000
attr_data {
	Name = region0_alias0,
	VA=0x6240000,
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

SECTION region1_alias0 DATA_VA=0x6250000
attr_data {
	Name = region1_alias0,
	VA=0x6250000,
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

SECTION region2_alias0 DATA_VA=0x6260000
attr_data {
	Name = region2_alias0,
	VA=0x6260000,
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

SECTION region3_alias0 DATA_VA=0x6270000
attr_data {
	Name = region3_alias0,
	VA=0x6270000,
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

SECTION region4_alias0 DATA_VA=0x6280000
attr_data {
	Name = region4_alias0,
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
	TTE_W=1
	}

SECTION region5_alias0 DATA_VA=0x6290000
attr_data {
	Name = region5_alias0,
	VA=0x6290000,
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

SECTION region6_alias0 DATA_VA=0x62a0000
attr_data {
	Name = region6_alias0,
	VA=0x62a0000,
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

SECTION region7_alias0 DATA_VA=0x62b0000
attr_data {
	Name = region7_alias0,
	VA=0x62b0000,
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

SECTION replacement0_alias0 DATA_VA=0x62c0000
attr_data {
	Name = replacement0_alias0,
	VA=0x62c0000,
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

SECTION replacement1_alias0 DATA_VA=0x62d0000
attr_data {
	Name = replacement1_alias0,
	VA=0x62d0000,
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

SECTION replacement2_alias0 DATA_VA=0x62e0000
attr_data {
	Name = replacement2_alias0,
	VA=0x62e0000,
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

SECTION replacement3_alias0 DATA_VA=0x62f0000
attr_data {
	Name = replacement3_alias0,
	VA=0x62f0000,
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

SECTION region0_alias3_0 DATA_VA=0x6000000
attr_data {
	Name = region0_alias3_0,
	VA=0x6000000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region1_alias3_0 DATA_VA=0x6010000
attr_data {
	Name = region1_alias3_0,
	VA=0x6010000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region2_alias3_0 DATA_VA=0x6020000
attr_data {
	Name = region2_alias3_0,
	VA=0x6020000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region3_alias3_0 DATA_VA=0x6030000
attr_data {
	Name = region3_alias3_0,
	VA=0x6030000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region4_alias3_0 DATA_VA=0x6040000
attr_data {
	Name = region4_alias3_0,
	VA=0x6040000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region5_alias3_0 DATA_VA=0x6050000
attr_data {
	Name = region5_alias3_0,
	VA=0x6050000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region6_alias3_0 DATA_VA=0x6060000
attr_data {
	Name = region6_alias3_0,
	VA=0x6060000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region7_alias3_0 DATA_VA=0x6070000
attr_data {
	Name = region7_alias3_0,
	VA=0x6070000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement0_alias3_0 DATA_VA=0x6080000
attr_data {
	Name = replacement0_alias3_0,
	VA=0x6080000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement1_alias3_0 DATA_VA=0x6090000
attr_data {
	Name = replacement1_alias3_0,
	VA=0x6090000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement2_alias3_0 DATA_VA=0x60a0000
attr_data {
	Name = replacement2_alias3_0,
	VA=0x60a0000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement3_alias3_0 DATA_VA=0x60b0000
attr_data {
	Name = replacement3_alias3_0,
	VA=0x60b0000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region0_alias2_0 DATA_VA=0x60c0000
attr_data {
	Name = region0_alias2_0,
	VA=0x60c0000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region1_alias2_0 DATA_VA=0x60d0000
attr_data {
	Name = region1_alias2_0,
	VA=0x60d0000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region2_alias2_0 DATA_VA=0x60e0000
attr_data {
	Name = region2_alias2_0,
	VA=0x60e0000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region3_alias2_0 DATA_VA=0x60f0000
attr_data {
	Name = region3_alias2_0,
	VA=0x60f0000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region4_alias2_0 DATA_VA=0x6100000
attr_data {
	Name = region4_alias2_0,
	VA=0x6100000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region5_alias2_0 DATA_VA=0x6110000
attr_data {
	Name = region5_alias2_0,
	VA=0x6110000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region6_alias2_0 DATA_VA=0x6120000
attr_data {
	Name = region6_alias2_0,
	VA=0x6120000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region7_alias2_0 DATA_VA=0x6130000
attr_data {
	Name = region7_alias2_0,
	VA=0x6130000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement0_alias2_0 DATA_VA=0x6140000
attr_data {
	Name = replacement0_alias2_0,
	VA=0x6140000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement1_alias2_0 DATA_VA=0x6150000
attr_data {
	Name = replacement1_alias2_0,
	VA=0x6150000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement2_alias2_0 DATA_VA=0x6160000
attr_data {
	Name = replacement2_alias2_0,
	VA=0x6160000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement3_alias2_0 DATA_VA=0x6170000
attr_data {
	Name = replacement3_alias2_0,
	VA=0x6170000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region0_alias1_0 DATA_VA=0x6180000
attr_data {
	Name = region0_alias1_0,
	VA=0x6180000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region1_alias1_0 DATA_VA=0x6190000
attr_data {
	Name = region1_alias1_0,
	VA=0x6190000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region2_alias1_0 DATA_VA=0x61a0000
attr_data {
	Name = region2_alias1_0,
	VA=0x61a0000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region3_alias1_0 DATA_VA=0x61b0000
attr_data {
	Name = region3_alias1_0,
	VA=0x61b0000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region4_alias1_0 DATA_VA=0x61c0000
attr_data {
	Name = region4_alias1_0,
	VA=0x61c0000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region5_alias1_0 DATA_VA=0x61d0000
attr_data {
	Name = region5_alias1_0,
	VA=0x61d0000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region6_alias1_0 DATA_VA=0x61e0000
attr_data {
	Name = region6_alias1_0,
	VA=0x61e0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region7_alias1_0 DATA_VA=0x61f0000
attr_data {
	Name = region7_alias1_0,
	VA=0x61f0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement0_alias1_0 DATA_VA=0x6200000
attr_data {
	Name = replacement0_alias1_0,
	VA=0x6200000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement1_alias1_0 DATA_VA=0x6210000
attr_data {
	Name = replacement1_alias1_0,
	VA=0x6210000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement2_alias1_0 DATA_VA=0x6220000
attr_data {
	Name = replacement2_alias1_0,
	VA=0x6220000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement3_alias1_0 DATA_VA=0x6230000
attr_data {
	Name = replacement3_alias1_0,
	VA=0x6230000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region0_alias0_0 DATA_VA=0x6240000
attr_data {
	Name = region0_alias0_0,
	VA=0x6240000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region1_alias0_0 DATA_VA=0x6250000
attr_data {
	Name = region1_alias0_0,
	VA=0x6250000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region2_alias0_0 DATA_VA=0x6260000
attr_data {
	Name = region2_alias0_0,
	VA=0x6260000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region3_alias0_0 DATA_VA=0x6270000
attr_data {
	Name = region3_alias0_0,
	VA=0x6270000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region4_alias0_0 DATA_VA=0x6280000
attr_data {
	Name = region4_alias0_0,
	VA=0x6280000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region5_alias0_0 DATA_VA=0x6290000
attr_data {
	Name = region5_alias0_0,
	VA=0x6290000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region6_alias0_0 DATA_VA=0x62a0000
attr_data {
	Name = region6_alias0_0,
	VA=0x62a0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION region7_alias0_0 DATA_VA=0x62b0000
attr_data {
	Name = region7_alias0_0,
	VA=0x62b0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement0_alias0_0 DATA_VA=0x62c0000
attr_data {
	Name = replacement0_alias0_0,
	VA=0x62c0000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement1_alias0_0 DATA_VA=0x62d0000
attr_data {
	Name = replacement1_alias0_0,
	VA=0x62d0000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement2_alias0_0 DATA_VA=0x62e0000
attr_data {
	Name = replacement2_alias0_0,
	VA=0x62e0000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_zero_tsb_config_0,
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

SECTION replacement3_alias0_0 DATA_VA=0x62f0000
attr_data {
	Name = replacement3_alias0_0,
	VA=0x62f0000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_zero_tsb_config_0,
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
	set     REGION2_ALIAS0_START, %o2	! shared address 2
	set     REGION3_ALIAS0_START, %o3	! shared address 3
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

! Initialize LFSR to 0x3caf^4
sethi %hi(0x3caf), %l0
or    %l0, %lo(0x3caf), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES0: ! Test instruction sequence for CPU 0 begins

P1: !_BLD [30] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_0:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1
nop
RET1:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_0
nop

P2: !_BLD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_1:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P3: !_LD [9] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4: !_LD [0] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 0] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_1
nop

P5: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_2:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P6: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_2
nop

P7: !_LD [16] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_3:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_3
nop

P8: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_4:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_4
nop

P9: !_NOP (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_5:
nop

P10: !_BLD [24] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_5
nop

P11: !_DWLD [16] (Int) (Loop entry) (Loop exit) (Branch target of P230)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_6:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_6
nop
ba P12
nop

TARGET230:
ba RET230
nop


P12: !_DWLD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_7:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P13: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_7
nop

P14: !_CAS [23] (maybe <- 0x1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_8:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %l3
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
loop_exit_0_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_8
nop

P15: !_BLD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_9:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_9
nop

P16: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_10:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P17: !_LD [5] (Int) (Branch target of P451)
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P18
nop

TARGET451:
ba RET451
nop


P18: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_10
nop

P19: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_11:
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P20: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_11
nop

P21: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_12:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P22: !_BLD [23] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_12
nop

P23: !_CASX [24] (maybe <- 0x2) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_13:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_13
nop

P24: !_BST [24] (maybe <- 0x3f800001) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_14:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P25: !_LD [29] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P26: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_14
nop

P27: !_LD [25] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_15:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P28: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_15
nop

P29: !_ST [11] (maybe <- 0x4) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_16:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4
loop_exit_0_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_16
nop

P30: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_17:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P31: !_LD [19] (Int) (Loop exit)
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_17
nop

P32: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_18:
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P33: !_LD [8] (FP) (Branch target of P292)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
ba P34
nop

TARGET292:
ba RET292
nop


P34: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_18
nop

P35: !_SWAP [6] (maybe <- 0x5) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_19:
mov %l4, %o0
swap  [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P36: !_BLD [28] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P37: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_19
nop

P38: !_BLD [27] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_20:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P39: !_BLD [1] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_20
nop

P40: !_BLD [18] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_21:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P41: !_DWLD [17] (Int) (Loop exit)
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_21
nop

P42: !_BLD [11] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_22:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P43: !_BLD [14] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_22
nop

P44: !_DWLD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_23:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P45: !_DWLD [24] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P46: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_23
nop

P47: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_24:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P48: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_24
nop

P49: !_BLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_25:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_25
nop

P50: !_BLD [24] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_26:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P51: !_ST [5] (maybe <- 0x6) (Int) (Loop exit)
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_26
nop

P52: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_27:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P53: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_27
nop

P54: !_DWLD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_28:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P55: !_DWLD [31] (FP) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 32], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET55
nop
RET55:

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
loop_exit_0_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_28
nop

P56: !_CASX [25] (maybe <- 0x7) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_29:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_29
nop

P57: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_30:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P58: !_BSTC [24] (maybe <- 0x3f800005) (FP)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P59: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_30
nop

P60: !_LD [27] (Int) (Loop entry) (Branch target of P520)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_31:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P61
nop

TARGET520:
ba RET520
nop


P61: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_31
nop

P62: !_LD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_32:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P63: !_CAS [21] (maybe <- 0x9) (Int) (LE)
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
add %i2, 4, %l7
lduwa [%l7] %asi, %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
mov %o5, %o1
casa [%l7] %asi, %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P64: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_32
nop

P65: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_33:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P66: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_33
nop

P67: !_DWLD [24] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_34:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_34
nop

P68: !_BLD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_35:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_35
nop

P69: !_BLD [23] (FP) (Loop entry) (Branch target of P389)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_36:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P70
nop

TARGET389:
ba RET389
nop


P70: !_LD [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P71: !_LD [21] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_36
nop

P72: !_LD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_37:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P73: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_37
nop

P74: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_38:
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P75: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_38
nop

P76: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_39:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P77: !_LD [1] (Int) (Loop exit) (CBR)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET77
nop
RET77:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_39
nop

P78: !_CAS [28] (maybe <- 0xa) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_40:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i3], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P79: !_DWLD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_40
nop

P80: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_41:
membar #StoreLoad
loop_exit_0_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_41
nop

P81: !_BLD [16] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_42:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_42
nop

P82: !_DWLD [25] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_43:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P83: !_BLD [23] (FP) (Loop exit) (Branch target of P434)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_43
nop
ba P84
nop

TARGET434:
ba RET434
nop


P84: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_44:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P85: !_BLD [30] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P86: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_44
nop

P87: !_LD [27] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_45:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P88: !_DWLD [3] (FP)
ldd [%i0 + 32], %f0
! 1 addresses covered

P89: !_LD [27] (Int) (Loop exit)
lduw [%i2 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_45
nop

P90: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_46:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P91: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_46
nop

P92: !_BLD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_47:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_47
nop

P93: !_LD [25] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_48:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P94: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_48
nop

P95: !_LD [23] (FP) (Loop entry) (Branch target of P239)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_49:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 32], %f0
! 1 addresses covered
ba P96
nop

TARGET239:
ba RET239
nop


P96: !_DWLD [7] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
ldd [%i1 + 32], %f18
! 1 addresses covered
fmovs %f18, %f1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_49
nop

P97: !_NOP (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_50:
nop

P98: !_PREFETCH [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
prefetch [%i1 + 32], 1

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_50
nop

P99: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_51:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P100: !_CASX [7] (maybe <- 0xb) (Int) (Loop exit) (Branch target of P571)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
add %i1, 32, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
sllx %l4, 32, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_51
nop
ba P101
nop

TARGET571:
ba RET571
nop


P101: !_LD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_52:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P102: !_DWLD [3] (Int) (Loop exit)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_52
nop

P103: !_DWLD [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_53:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_53
nop

P104: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_54:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P105: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_54
nop

P106: !_DWLD [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_55:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_55
nop

P107: !_BLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_56:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_56
nop

P108: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_57:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P109: !_DWLD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_57
nop

P110: !_BLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_58:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_58
nop

P111: !_BLD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_59:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_59
nop

P112: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_60:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P113: !_LD [6] (Int) (Loop exit) (CBR)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET113
nop
RET113:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_60
nop

P114: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_61:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P115: !_LD [13] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_61
nop

P116: !_PREFETCH [18] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_62:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 1
loop_exit_0_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_62
nop

P117: !_LD [31] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_63:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 32], %f0
! 1 addresses covered

P118: !_LD [5] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P119: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_63
nop

P120: !_DWLD [17] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_64:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_64
nop

P121: !_LD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_65:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_65
nop

P122: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_66:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P123: !_BLD [26] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_66
nop

P124: !_LD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_67:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P125: !_LD [28] (Int) (Loop exit)
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_67
nop

P126: !_BLD [23] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_68:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P127: !_DWLD [31] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P128: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_68
nop

P129: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_69:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P130: !_DWLD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srl %o5, 0, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_69
nop

P131: !_BSTC [22] (maybe <- 0x3f800009) (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_70:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET131
nop
RET131:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P132: !_BLD [7] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_70
nop

P133: !_BLD [18] (FP) (Loop entry) (Branch target of P502)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_71:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P134
nop

TARGET502:
ba RET502
nop


P134: !_DWLD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_71
nop

P135: !_BLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_72:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_72
nop

P136: !_DWLD [16] (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_73:
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_73
nop

P137: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_74:
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P138: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_74
nop

P139: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_75:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P140: !_LD [10] (FP) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET140
nop
RET140:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P141: !_LD [10] (Int) (Loop exit)
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_75
nop

P142: !_LD [10] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_76:
wr %g0, 0x88, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P143: !_LD [8] (Int) (Loop exit)
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_76
nop

P144: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_77:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P145: !_BLD [22] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_77
nop

P146: !_BLD [22] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_78:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET146
nop
RET146:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P147: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P148: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_78
nop

P149: !_SWAP [3] (maybe <- 0xc) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_79:
mov %l4, %o0
swap  [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P150: !_DWLD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_79
nop

P151: !_CAS [5] (maybe <- 0xd) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_80:
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

P152: !_BLD [3] (FP) (Loop exit) (Branch target of P247)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_80
nop
ba P153
nop

TARGET247:
ba RET247
nop


P153: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_81:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P154: !_LD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_81
nop

P155: !_CASX [31] (maybe <- 0xe) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_82:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 32, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
sllx %l4, 32, %o1
casx [%l6], %l3, %o1
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

P156: !_DWLD [20] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_83:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P157: !_BLD [21] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_83
nop

P158: !_LD [25] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_84:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P159: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_84
nop

P160: !_CASX [15] (maybe <- 0xf) (Int) (Loop entry) (Loop exit) (LE) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_85:
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
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %l6
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET160
nop
RET160:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_85
nop

P161: !_DWLD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_86:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P162: !_BLD [6] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_86
nop

P163: !_CASX [27] (maybe <- 0x10) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_87:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
sllx %l4, 32, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P164: !_BLD [12] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_87
nop

P165: !_DWLD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_88:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P166: !_BLD [2] (FP) (Loop exit) (Branch target of P406)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_88
nop
ba P167
nop

TARGET406:
ba RET406
nop


P167: !_BLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_89:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_89
nop

P168: !_LD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_90:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P169: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P170: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_90
nop

P171: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_91:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P172: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_91
nop

P173: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_92:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P174: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_92
nop

P175: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_93:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P176: !_DWLD [28] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P177: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_93
nop

P178: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_94:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P179: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_94
nop

P180: !_DWLD [26] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_95:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P181: !_LD [15] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET181
nop
RET181:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_95
nop

P182: !_LD [24] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_96:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P183: !_LD [6] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_96
nop

P184: !_DWLD [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_97:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P185: !_LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P186: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_97
nop

P187: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_98:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P188: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_98
nop

P189: !_BLD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_99:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_99
nop

P190: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_100:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P191: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_100
nop

P192: !_BLD [20] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_101:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_101
nop

P193: !_NOP (Int) (Loop entry) (Branch target of P181)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_102:
nop
ba P194
nop

TARGET181:
ba RET181
nop


P194: !_BLD [22] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_102
nop

P195: !_BLD [0] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_103:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P196: !_LD [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P197: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_103
nop

P198: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_104:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P199: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P200: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_104
nop

P201: !_BLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_105:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_105
nop

P202: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_106:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P203: !_NOP (Int) (Loop exit)
nop
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_106
nop

P204: !_CASX [20] (maybe <- 0x11) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_107:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_107
nop

P205: !_DWLD [28] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_108:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_108
nop

P206: !_BLD [18] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_109:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P207: !_BLD [7] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_109
nop

P208: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_110:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_110
nop

P209: !_LD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_111:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P210: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_111
nop

P211: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_112:
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P212: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_112
nop

P213: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_113:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P214: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_113
nop

P215: !_DWLD [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_114:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_114
nop

P216: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_115:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P217: !_BLD [7] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_115
nop

P218: !_BLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_116:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_116
nop

P219: !_DWST [5] (maybe <- 0x13) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_117:
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i1 + 0]
add   %l4, 1, %l4
loop_exit_0_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_117
nop

P220: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_118:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P221: !_CASX [12] (maybe <- 0x15) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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

P222: !_LD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_118
nop

P223: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_119:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P224: !_BLD [30] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_119
nop

P225: !_DWLD [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_120:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_120
nop

P226: !_DWLD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_121:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P227: !_DWLD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o1
! move %o1(upper) -> %o1(upper)

P228: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_121
nop

P229: !_DWLD [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_122:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_122
nop

P230: !_CAS [11] (maybe <- 0x17) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_123:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 32, %o5
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
be,pn  %xcc, TARGET230
nop
RET230:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P231: !_DWLD [9] (Int) (Loop exit) (Branch target of P540)
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_123
nop
ba P232
nop

TARGET540:
ba RET540
nop


P232: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_124:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P233: !_DWLD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P234: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #2
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0x180000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_124
nop

P235: !_LD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_125:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P236: !_BLD [6] (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P237: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_125
nop

P238: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_126:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P239: !_DWLD [5] (Int) (Loop exit) (CBR)
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET239
nop
RET239:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_126
nop

P240: !_LD [24] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_127:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P241: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_127
nop

P242: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_128:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 1
loop_exit_0_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_128
nop

P243: !_DWST [29] (maybe <- 0x18) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_129:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i3 + 0]
add   %l4, 1, %l4
loop_exit_0_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_129
nop

P244: !_REPLACEMENT [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_130:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %o5
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

P245: !_BLD [6] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_130
nop

P246: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_131:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P247: !_LD [16] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET247
nop
RET247:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_131
nop

P248: !_REPLACEMENT [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_132:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %o5
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
loop_exit_0_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_132
nop

P249: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_133:
membar #StoreLoad
loop_exit_0_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_133
nop

P250: !_LD [17] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_134:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P251: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P252: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_134
nop

P253: !_DWLD [7] (Int) (Loop entry) (Branch target of P568)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_135:
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)
ba P254
nop

TARGET568:
ba RET568
nop


P254: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P255: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_135
nop

P256: !_LD [14] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_136:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET256
nop
RET256:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P257: !_BLD [16] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P258: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_136
nop

P259: !_ST [3] (maybe <- 0x1a) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_137:
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
stwa   %l6, [%i0 + 32] %asi
add   %l4, 1, %l4

P260: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P261: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_137
nop

P262: !_DWLD [7] (Int) (Loop entry) (Branch target of P1)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_138:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)
ba P263
nop

TARGET1:
ba RET1
nop


P263: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_138
nop

P264: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_139:
membar #StoreLoad
loop_exit_0_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_139
nop

P265: !_DWLD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_140:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P266: !_BLD [15] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_140
nop

P267: !_DWST [25] (maybe <- 0x1b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_141:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4
loop_exit_0_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_141
nop

P268: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_142:
membar #StoreLoad
loop_exit_0_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_142
nop

P269: !_LD [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_143:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P270: !_LD [1] (FP)
ld [%i0 + 4], %f0
! 1 addresses covered

P271: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_143
nop

P272: !_DWLD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_144:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P273: !_LD [2] (FP) (Loop exit)
ld [%i0 + 12], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_144
nop

P274: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_145:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P275: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_145
nop

P276: !_DWLD [29] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_146:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET276
nop
RET276:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_146
nop

P277: !_LD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_147:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P278: !_DWLD [17] (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET278
nop
RET278:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P279: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_147
nop

P280: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_148:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P281: !_REPLACEMENT [28] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %l6
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

P282: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_148
nop

P283: !_BLD [11] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_149:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P284: !_DWLD [20] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_149
nop

P285: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_150:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P286: !_REPLACEMENT [2] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x10000), %o5
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

P287: !_LD [6] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i1 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_150
nop

P288: !_LD [10] (Int) (Loop entry) (Branch target of P348)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_151:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P289
nop

TARGET348:
ba RET348
nop


P289: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_151
nop

P290: !_DWLD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_152:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P291: !_LD [5] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i1 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_152
nop

P292: !_DWLD [29] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_153:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET292
nop
RET292:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_153
nop

P293: !_CASX [20] (maybe <- 0x1d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_154:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P294: !_LD [20] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_154
nop

P295: !_BLD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_155:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_155
nop

P296: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_156:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_156
nop

P297: !_BLD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_157:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P298: !_DWLD [29] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_157
nop

P299: !_NOP (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_158:
nop
loop_exit_0_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_158
nop

P300: !_DWLD [23] (Int) (Loop entry) (Branch target of P160)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_159:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)
ba P301
nop

TARGET160:
ba RET160
nop


P301: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P302: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_159
nop

P303: !_DWLD [15] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_160:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 32], %f0
! 1 addresses covered

P304: !_ST [20] (maybe <- 0x1f) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_160
nop

P305: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_161:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P306: !_LD [26] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P307: !_LD [6] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_161
nop

P308: !_CAS [18] (maybe <- 0x20) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_162:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET308
nop
RET308:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P309: !_FLUSHI [30] (Int) (Loop exit)
flush %g0 
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_162
nop

P310: !_LD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_163:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_163
nop

P311: !_BLD [28] (FP) (Loop entry) (Branch target of P131)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_164:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P312
nop

TARGET131:
ba RET131
nop


P312: !_DWLD [8] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_164
nop

P313: !_BLD [20] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_165:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_165
nop

P314: !_DWLD [2] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_166:
ldd [%i0 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P315: !_BLD [17] (FP) (Loop exit) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
fmovd %f40, %f4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET315
nop
RET315:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_0_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_166
nop

P316: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_167:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P317: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_167
nop

P318: !_LD [10] (Int) (Loop entry) (Branch target of P637)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_168:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P319
nop

TARGET637:
ba RET637
nop


P319: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_168
nop

P320: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_169:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P321: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_169
nop

P322: !_DWLD [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_170:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_170
nop

P323: !_LD [3] (FP) (Loop entry) (Loop exit) (Branch target of P488)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_171:
ld [%i0 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_171
nop
ba P324
nop

TARGET488:
ba RET488
nop


P324: !_DWLD [28] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_172:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_172
nop

P325: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_173:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P326: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_173
nop

P327: !_PREFETCH [10] (Int) (Loop entry) (Loop exit) (Branch target of P528)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_174:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 1
loop_exit_0_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_174
nop
ba P328
nop

TARGET528:
ba RET528
nop


P328: !_LD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_175:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P329: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P330: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_175
nop

P331: !_BLD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_176:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_176
nop

P332: !_LD [17] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_177:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_177
nop

P333: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_178:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P334: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_178
nop

P335: !_LD [17] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_179:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P336: !_DWLD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_179
nop

P337: !_BLD [25] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_180:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_180
nop

P338: !_BLD [27] (FP) (Loop entry) (Loop exit) (Branch target of P447)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_181:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_181
nop
ba P339
nop

TARGET447:
ba RET447
nop


P339: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_182:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P340: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_182
nop

P341: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_183:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P342: !_BLD [27] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_183
nop

P343: !_NOP (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_184:
nop
loop_exit_0_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_184
nop

P344: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_185:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_185
nop

P345: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_186:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P346: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_186
nop

P347: !_BST [19] (maybe <- 0x3f80000d) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_187:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_0_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_187
nop

P348: !_DWLD [0] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_188:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET348
nop
RET348:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_188
nop

P349: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_189:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P350: !_DWLD [28] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_189
nop

P351: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_190:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P352: !_BLD [6] (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P353: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_190
nop

P354: !_BLD [18] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_191:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P355: !_BST [10] (maybe <- 0x3f800011) (FP) (Loop exit)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_191
nop

P356: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_192:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P357: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_192
nop

P358: !_ST [21] (maybe <- 0x21) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_193:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_0_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_193
nop

P359: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_194:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P360: !_REPLACEMENT [30] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %l6
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

P361: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_194
nop

P362: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_195:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_195
nop

P363: !_SWAP [11] (maybe <- 0x22) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_196:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P364: !_DWLD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 32], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_196
nop

P365: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_197:
membar #StoreLoad
loop_exit_0_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_197
nop

P366: !_BLD [21] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_198:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P367: !_DWLD [12] (Int) (Loop exit) (Branch target of P424)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_198
nop
ba P368
nop

TARGET424:
ba RET424
nop


P368: !_BLD [17] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_199:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_199
nop

P369: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_200:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P370: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_200
nop

P371: !_BST [11] (maybe <- 0x3f800015) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_201:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_0_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_201
nop

P372: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_202:
membar #StoreLoad

P373: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P374: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_202
nop

P375: !_BLD [18] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_203:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P376: !_DWLD [31] (FP) (Loop exit) (Branch target of P552)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 32], %f4
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_0_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_203
nop
ba P377
nop

TARGET552:
ba RET552
nop


P377: !_DWLD [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_204:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_204
nop

P378: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_205:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P379: !_DWLD [1] (Int) (Loop exit) (CBR)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET379
nop
RET379:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_205
nop

P380: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_206:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P381: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_206
nop

P382: !_BLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_207:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_207
nop

P383: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_208:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_208
nop

P384: !_BLD [29] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_209:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P385: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P386: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_209
nop

P387: !_BLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_210:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_210
nop

P388: !_LD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_211:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P389: !_LD [9] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET389
nop
RET389:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_211
nop

P390: !_BLD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_212:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_212
nop

P391: !_LD [29] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_213:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P392: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_213
nop

P393: !_DWLD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_214:
ldd [%i0 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P394: !_LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P395: !_LD [7] (Int) (Loop exit)
lduw [%i1 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_214
nop

P396: !_PREFETCH [18] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_215:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 1
loop_exit_0_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_215
nop

P397: !_LD [10] (Int) (Loop entry) (Branch target of P379)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_216:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P398
nop

TARGET379:
ba RET379
nop


P398: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_216
nop

P399: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_217:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_217
nop

P400: !_LD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_218:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P401: !_LD [3] (FP)
ld [%i0 + 32], %f0
! 1 addresses covered

P402: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
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

P403: !_DWLD [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_219:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_219
nop

P404: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_220:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P405: !_LD [18] (Int) (Loop exit)
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_220
nop

P406: !_LD [26] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_221:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET406
nop
RET406:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_221
nop

P407: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_222:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P408: !_DWLD [22] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_222
nop

P409: !_DWLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_223:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P410: !_DWLD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_223
nop

P411: !_BLD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_224:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_224
nop

P412: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_225:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P413: !_LD [7] (Int) (Loop exit)
lduw [%i1 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_225
nop

P414: !_LD [16] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_226:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_226
nop

P415: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_227:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P416: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_227
nop

P417: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_228:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P418: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_228
nop

P419: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_229:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P420: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_229
nop

P421: !_DWLD [24] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_230:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P422: !_BLD [28] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_230
nop

P423: !_BLD [25] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_231:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_231
nop

P424: !_BLD [3] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_232:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET424
nop
RET424:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_232
nop

P425: !_LD [29] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_233:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P426: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_233
nop

P427: !_BST [12] (maybe <- 0x3f800019) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_234:
wr %g0, 0xf0, %asi
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P428: !_LD [4] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P429: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_234
nop

P430: !_LD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_235:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered

P431: !_LD [5] (Int)
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P432: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_235
nop

P433: !_BLD [25] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_236:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P434: !_DWLD [9] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

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
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_236
nop

P435: !_BLD [11] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_237:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P436: !_LD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P437: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_237
nop

P438: !_ST [22] (maybe <- 0x23) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_238:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_0_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_238
nop

P439: !_LD [13] (FP) (Loop entry) (Branch target of P276)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_239:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
ba P440
nop

TARGET276:
ba RET276
nop


P440: !_PREFETCH [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 1
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_239
nop

P441: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_240:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P442: !_ST [9] (maybe <- 0x3f80001d) (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P443: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_240
nop

P444: !_ST [13] (maybe <- 0x24) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_241:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P445: !_NOP (Int) (Loop exit)
nop
loop_exit_0_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_241
nop

P446: !_BLD [18] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_242:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_242
nop

P447: !_BLD [10] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_243:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET447
nop
RET447:

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
loop_exit_0_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_243
nop

P448: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_244:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P449: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_244
nop

P450: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_245:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P451: !_BLD [7] (FP) (CBR)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET451
nop
RET451:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P452: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_245
nop

P453: !_DWLD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_246:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P454: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_246
nop

P455: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_247:
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P456: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_247
nop

P457: !_BLD [11] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_248:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P458: !_BLD [5] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_248
nop

P459: !_BLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_249:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_249
nop

P460: !_BLD [25] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_250:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P461: !_BLD [13] (FP) (Loop exit) (Branch target of P564)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_250
nop
ba P462
nop

TARGET564:
ba RET564
nop


P462: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_251:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P463: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_251
nop

P464: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_252:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P465: !_BLD [30] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_252
nop

P466: !_BLD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_253:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_253
nop

P467: !_DWLD [10] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_254:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P468: !_DWLD [29] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_254
nop

P469: !_DWLD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_255:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P470: !_BLD [20] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_255
nop

P471: !_BLD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_256:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P472: !_LD [25] (Int) (Branch target of P308)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P473
nop

TARGET308:
ba RET308
nop


P473: !_LD [30] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_256
nop

P474: !_BLD [20] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_257:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_257
nop

P475: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_258:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_258
nop

P476: !_BLD [19] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_259:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_259
nop

P477: !_BLD [28] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_260:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_260
nop

P478: !_LD [24] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_261:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P479: !_DWST [17] (maybe <- 0x25) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i2 + 0]
add   %l4, 1, %l4

P480: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_261
nop

P481: !_DWLD [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_262:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_262
nop

P482: !_BLD [3] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_263:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P483: !_DWLD [23] (FP) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 32], %f4
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_0_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_263
nop

P484: !_DWLD [17] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_264:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_264
nop

P485: !_DWLD [27] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_265:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 32], %f0
! 1 addresses covered

P486: !_CAS [31] (maybe <- 0x27) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %l6
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
loop_exit_0_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_265
nop

P487: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_266:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P488: !_BLD [30] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

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


P489: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_266
nop

P490: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_267:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_267
nop

P491: !_BLD [17] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_268:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P492: !_BST [29] (maybe <- 0x3f80001e) (FP) (Loop exit)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_268
nop

P493: !_DWLD [25] (Int) (Loop entry) (LE) (Branch target of P315)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_269:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 0] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
ba P494
nop

TARGET315:
ba RET315
nop


P494: !_CASX [21] (maybe <- 0x28) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_269
nop

P495: !_DWLD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_270:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P496: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_270
nop

P497: !_LD [29] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_271:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P498: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_271
nop

P499: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_272:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P500: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_272
nop

P501: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_273:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_273
nop

P502: !_DWLD [30] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_274:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET502
nop
RET502:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P503: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_274
nop

P504: !_BLD [7] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_275:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P505: !_DWLD [30] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P506: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #2
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0x180000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_275
nop

P507: !_LD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_276:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P508: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P509: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_276
nop

P510: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_277:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P511: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P512: !_LD [18] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_277
nop

P513: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_278:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P514: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_278
nop

P515: !_LD [25] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_279:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_279
nop

P516: !_BLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_280:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_280
nop

P517: !_BLD [10] (FP) (Loop entry) (Branch target of P554)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_281:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P518
nop

TARGET554:
ba RET554
nop


P518: !_DWLD [0] (Int) (Loop exit)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_281
nop

P519: !_DWLD [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_282:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_282
nop

P520: !_BLD [11] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_283:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET520
nop
RET520:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_283
nop

P521: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_284:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P522: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_284
nop

P523: !_BLD [19] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_285:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_285
nop

P524: !_DWLD [13] (Int) (Loop entry) (Branch target of P113)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_286:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
ba P525
nop

TARGET113:
ba RET113
nop


P525: !_BLD [25] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_286
nop

P526: !_LD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_287:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P527: !_DWLD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_287
nop

P528: !_DWST [17] (maybe <- 0x2a) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_288:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET528
nop
RET528:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_288
nop

P529: !_LD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_289:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P530: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_289
nop

P531: !_ST [24] (maybe <- 0x2c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_290:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P532: !_BLD [7] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_290
nop

P533: !_LD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_291:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P534: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_291
nop

P535: !_CAS [22] (maybe <- 0x2d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_292:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
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

P536: !_LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P537: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_292
nop

P538: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_293:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P539: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_293
nop

P540: !_ST [29] (maybe <- 0x2e) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_294:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET540
nop
RET540:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_294
nop

P541: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_295:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P542: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_295
nop

P543: !_PREFETCH [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_296:
prefetch [%i1 + 4], 1

P544: !_FLUSHI [26] (Int) (Loop exit)
flush %g0 
loop_exit_0_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_296
nop

P545: !_SWAP [17] (maybe <- 0x2f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_297:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P546: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P547: !_LD [28] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_297
nop

P548: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_298:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P549: !_DWLD [11] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_298
nop

P550: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_299:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P551: !_DWLD [8] (FP) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 0], %f4
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
!--
loop_exit_0_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_299
nop

P552: !_DWLD [31] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_300:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET552
nop
RET552:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P553: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_300
nop

P554: !_ST [25] (maybe <- 0x30) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_301:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET554
nop
RET554:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_301
nop

P555: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_302:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P556: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_302
nop

P557: !_CAS [20] (maybe <- 0x31) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_303:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_303
nop

P558: !_BLD [11] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_304:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P559: !_DWLD [13] (Int) (Loop exit) (Branch target of P140)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_304
nop
ba P560
nop

TARGET140:
ba RET140
nop


P560: !_BLD [6] (FP) (Loop entry) (Branch target of P278)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_305:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P561
nop

TARGET278:
ba RET278
nop


P561: !_BLD [2] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_305
nop

P562: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_306:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P563: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_306
nop

P564: !_BLD [3] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_307:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET564
nop
RET564:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_307
nop

P565: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_308:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P566: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_308
nop

P567: !_BLD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_309:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_309
nop

P568: !_LD [23] (Int) (Loop entry) (LE) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_310:
wr %g0, 0x88, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET568
nop
RET568:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P569: !_PREFETCH [6] (Int)
prefetch [%i1 + 12], 1

P570: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_310
nop

P571: !_BLD [4] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_311:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET571
nop
RET571:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P572: !_DWLD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_311
nop

P573: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_312:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P574: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_312
nop

P575: !_CASX [11] (maybe <- 0x32) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_313:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 32, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
sllx %l4, 32, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_313
nop

P576: !_BLD [19] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_314:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_314
nop

P577: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_315:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P578: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_315
nop

P579: !_NOP (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_316:
nop
loop_exit_0_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_316
nop

P580: !_DWLD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_317:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P581: !_DWLD [24] (Int)
ldx [%i2 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P582: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_317
nop

P583: !_DWLD [7] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_318:
wr %g0, 0x88, %asi
ldxa [%i1 + 32] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

P584: !_BLD [4] (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P585: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_318
nop

P586: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_319:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P587: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_319
nop

P588: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_320:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P589: !_DWLD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P590: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_320
nop

P591: !_BLD [20] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_321:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P592: !_LD [11] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P593: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_321
nop

P594: !_BLD [26] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_322:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_322
nop

P595: !_BLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_323:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_323
nop

P596: !_REPLACEMENT [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_324:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l3
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

P597: !_DWLD [4] (Int) (Loop exit)
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_324
nop

P598: !_LD [28] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_325:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P599: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_325
nop

P600: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_326:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_0_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_326
nop

P601: !_NOP (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_327:
nop
loop_exit_0_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_327
nop

P602: !_DWLD [15] (Int) (Loop entry) (Branch target of P77)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_328:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)
ba P603
nop

TARGET77:
ba RET77
nop


P603: !_LD [28] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_328
nop

P604: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_329:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P605: !_LD [0] (Int)
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P606: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_329
nop

P607: !_BLD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_330:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P608: !_DWLD [27] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 32], %f4
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_0_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_330
nop

P609: !_BLD [19] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_331:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P610: !_LD [12] (FP) (Loop exit) (Branch target of P55)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f4
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_0_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_331
nop
ba P611
nop

TARGET55:
ba RET55
nop


P611: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_332:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P612: !_LD [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P613: !_LD [6] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i1 + 12] %asi, %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_332
nop

P614: !_BSTC [8] (maybe <- 0x3f800022) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_333:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P615: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_333:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_333
nop

P616: !_CASX [18] (maybe <- 0x33) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_334:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
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

P617: !_DWLD [0] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
ldxa [%i0 + 0] %asi, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l7
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_334:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_334
nop

P618: !_DWLD [15] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_335:
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldxa [%i3 + 32] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0

P619: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_335:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_335
nop

P620: !_DWLD [12] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_336:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0

P621: !_LD [13] (Int)
lduw [%i3 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P622: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_336:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_336
nop

P623: !_REPLACEMENT [11] (Int) (Loop entry) (Loop exit) (Branch target of P146)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_337:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l3
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
loop_exit_0_337:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_337
nop
ba P624
nop

TARGET146:
ba RET146
nop


P624: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_338:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P625: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P626: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_338:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_338
nop

P627: !_DWLD [13] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_339:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 0] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0

P628: !_LD [27] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P629: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_339:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_339
nop

P630: !_LD [17] (FP) (Loop entry) (Loop exit) (Branch target of P256)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_340:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_340:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_340
nop
ba P631
nop

TARGET256:
ba RET256
nop


P631: !_DWLD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_341:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P632: !_BLD [8] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_341:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_341
nop

P633: !_SWAP [7] (maybe <- 0x34) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_342:
mov %l4, %o0
swap  [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P634: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_342:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_342
nop

P635: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_343:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P636: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P637: !_LD [27] (Int) (Loop exit) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET637
nop
RET637:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_343:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_343
nop

P638: !_BSTC [24] (maybe <- 0x3f800026) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_344:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P639: !_FLUSHI [3] (Int) (Loop exit)
flush %g0 
loop_exit_0_344:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_344
nop

P640: !_BLD [27] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_345:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P641: !_BLD [14] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_345:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_345
nop

P642: !_DWLD [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_346:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P643: !_LD [10] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P644: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
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

P645: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_347:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P646: !_DWLD [10] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srl %l6, 0, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_347:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_347
nop

P647: !_DWLD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_348:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P648: !_BLD [22] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
fmovd %f40, %f4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_0_348:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_348
nop

P649: !_DWST [28] (maybe <- 0x35) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_349:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
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
stxa %l6, [%i2 + 0 ] %asi
add   %l4, 1, %l4

P650: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_349:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_349
nop

P651: !_LD [3] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_350:
wr %g0, 0x88, %asi
lduwa [%i0 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P652: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_350:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_350
nop

P653: !_BLD [25] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_351:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P654: !_BLD [13] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_0_351:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_351
nop

P655: !_DWLD [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_352:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_352:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_352
nop

P656: !_LD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_353:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P657: !_BLD [22] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P658: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_0_353:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_353
nop

P659: !_MEMBAR (Int)
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

! Initialize LFSR to 0x228b^4
sethi %hi(0x228b), %l0
or    %l0, %lo(0x228b), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES1: ! Test instruction sequence for CPU 1 begins

P660: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_0:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_0
nop

P661: !_LD [24] (Int) (Loop entry) (Branch target of P989)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_1:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P662
nop

TARGET989:
ba RET989
nop


P662: !_LD [20] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET662
nop
RET662:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_1
nop

P663: !_BLD [16] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_2:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P664: !_LD [18] (Int)
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P665: !_LD [13] (Int) (Loop exit) (Branch target of P983)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_2
nop
ba P666
nop

TARGET983:
ba RET983
nop


P666: !_REPLACEMENT [30] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_3:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l3
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
loop_exit_1_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_3
nop

P667: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_4:
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P668: !_LD [12] (Int) (Loop exit) (Branch target of P831)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_4
nop
ba P669
nop

TARGET831:
ba RET831
nop


P669: !_SWAP [17] (maybe <- 0x800001) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_5:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P670: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_5
nop

P671: !_DWLD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_6:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P672: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_6
nop

P673: !_CASX [28] (maybe <- 0x800002) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_7:
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
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_7
nop

P674: !_BLD [0] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_8:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P675: !_FLUSHI [1] (Int) (Loop exit) (CBR)
flush %g0 

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

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_8
nop

P676: !_DWST [20] (maybe <- 0x800004) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_9:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i3 + 0]
add   %l4, 1, %l4
loop_exit_1_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_9
nop

P677: !_BLD [17] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_10:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P678: !_DWLD [3] (Int)
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P679: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_10
nop

P680: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_11:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P681: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_11
nop

P682: !_BST [21] (maybe <- 0x40000001) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_12:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P683: !_DWLD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P684: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_12
nop

P685: !_LD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_13:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P686: !_LD [30] (Int) (Loop exit)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_13
nop

P687: !_LD [26] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_14:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_14
nop

P688: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_15:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P689: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P690: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_15
nop

P691: !_BLD [19] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_16:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_16
nop

P692: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_17:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P693: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_17
nop

P694: !_BST [18] (maybe <- 0x40000005) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_18:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_18
nop

P695: !_DWST [16] (maybe <- 0x800006) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_19:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4
loop_exit_1_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_19
nop

P696: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_20:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P697: !_PREFETCH [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

P698: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_20
nop

P699: !_BLD [24] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_21:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P700: !_DWLD [6] (Int)
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P701: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_21
nop

P702: !_DWLD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_22:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P703: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_22
nop

P704: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_23:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P705: !_LD [29] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P706: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_23
nop

P707: !_LD [14] (Int) (Loop entry) (LE) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_24:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET707
nop
RET707:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P708: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P709: !_LD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_24
nop

P710: !_DWLD [18] (Int) (Loop entry) (Branch target of P1301)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_25:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P711
nop

TARGET1301:
ba RET1301
nop


P711: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_25
nop

P712: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_26:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P713: !_LD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P714: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_26
nop

P715: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_27:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P716: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P717: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_27
nop

P718: !_SWAP [22] (maybe <- 0x800008) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_28:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P719: !_DWLD [4] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 0], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P720: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_28
nop

P721: !_DWLD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_29:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldd [%i1 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_29
nop

P722: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_30:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P723: !_LD [2] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 12] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_30
nop

P724: !_DWLD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_31:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_31
nop

P725: !_DWLD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_32:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_32
nop

P726: !_LD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_33:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P727: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P728: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_33
nop

P729: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_34:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P730: !_DWLD [27] (Int) (Loop exit) (Branch target of P1116)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_34
nop
ba P731
nop

TARGET1116:
ba RET1116
nop


P731: !_CASX [4] (maybe <- 0x800009) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_35:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_35
nop

P732: !_ST [31] (maybe <- 0x80000b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_36:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P733: !_CAS [25] (maybe <- 0x80000c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
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
loop_exit_1_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_36
nop

P734: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_37:
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P735: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_37
nop

P736: !_SWAP [18] (maybe <- 0x80000d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_38:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P737: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P738: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_38
nop

P739: !_DWLD [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_39:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_39
nop

P740: !_BLD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_40:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_40
nop

P741: !_BLD [27] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_41:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_41
nop

P742: !_DWST [6] (maybe <- 0x80000e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_42:
mov %l4, %l3 
stx %l3, [%i1 + 8]
add   %l4, 1, %l4

P743: !_LD [15] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P744: !_LD [15] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i3 + 32] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_42
nop

P745: !_LD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_43:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P746: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_43
nop

P747: !_DWLD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_44:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P748: !_DWLD [18] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P749: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_44
nop

P750: !_LD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_45:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P751: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_45
nop

P752: !_DWLD [22] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_46:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_46
nop

P753: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_47:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P754: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_47
nop

P755: !_LD [29] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_48:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P756: !_LD [27] (Int) (Loop exit) (Branch target of P837)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_48
nop
ba P757
nop

TARGET837:
ba RET837
nop


P757: !_LD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_49:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P758: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_49
nop

P759: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_50:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_50
nop

P760: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_51:
membar #StoreLoad
loop_exit_1_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_51
nop

P761: !_DWLD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_52:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P762: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_52
nop

P763: !_LD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_53:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P764: !_LD [15] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_53
nop

P765: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_54:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P766: !_DWLD [6] (Int) (Loop exit)
ldx [%i1 + 8], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_54
nop

P767: !_BLD [28] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_55:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_55
nop

P768: !_LD [24] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_56:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P769: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_56
nop

P770: !_LD [23] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_57:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_57
nop

P771: !_DWLD [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_58:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_58
nop

P772: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_59:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P773: !_BLD [27] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_59
nop

P774: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_60:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P775: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_60
nop

P776: !_BSTC [3] (maybe <- 0x40000009) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_61:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_1_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_61
nop

P777: !_DWLD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_62:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P778: !_LD [6] (Int) (Loop exit) (CBR)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET778
nop
RET778:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_62
nop

P779: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_63:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P780: !_LD [14] (Int) (Loop exit) (Branch target of P1283)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_63
nop
ba P781
nop

TARGET1283:
ba RET1283
nop


P781: !_BLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_64:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_64
nop

P782: !_LD [26] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_65:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P783: !_PREFETCH [19] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 32], 1

P784: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_65
nop

P785: !_DWLD [26] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_66:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P786: !_CAS [12] (maybe <- 0x80000f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
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

P787: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_66
nop

P788: !_DWLD [3] (FP) (Loop entry) (CBR) (Branch target of P707)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_67:
ldd [%i0 + 32], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET788
nop
RET788:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

ba P789
nop

TARGET707:
ba RET707
nop


P789: !_BLD [3] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
fmovd %f40, %f4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_1_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_67
nop

P790: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_68:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P791: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_68
nop

P792: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_69:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_69
nop

P793: !_NOP (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_70:
nop

P794: !_BST [3] (maybe <- 0x4000000d) (FP) (Loop exit)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_1_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_70
nop

P795: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_71:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P796: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P797: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_71
nop

P798: !_BLD [17] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_72:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET798
nop
RET798:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P799: !_LD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P800: !_LD [17] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_72
nop

P801: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_73:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P802: !_BLD [19] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_73
nop

P803: !_BLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_74:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_74
nop

P804: !_BLD [4] (FP) (Loop entry) (Loop exit) (Branch target of P1054)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_75:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_75
nop
ba P805
nop

TARGET1054:
ba RET1054
nop


P805: !_DWLD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_76:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P806: !_DWLD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_76
nop

P807: !_BLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_77:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_77
nop

P808: !_FLUSHI [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_78:
flush %g0 
loop_exit_1_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_78
nop

P809: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_79:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P810: !_DWST [10] (maybe <- 0x800010) (Int) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o5 
stx %o5, [%i3 + 8]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET810
nop
RET810:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P811: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_79
nop

P812: !_BLD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_80:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P813: !_CASX [29] (maybe <- 0x800011) (Int) (Loop exit) (LE)
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
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i3] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_80
nop

P814: !_BLD [17] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_81:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P815: !_BLD [16] (FP) (Loop exit) (Branch target of P1057)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_81
nop
ba P816
nop

TARGET1057:
ba RET1057
nop


P816: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_82:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_82
nop

P817: !_BSTC [12] (maybe <- 0x40000011) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_83:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_83
nop

P818: !_DWLD [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_84:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_84
nop

P819: !_BLD [20] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_85:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P820: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_85
nop

P821: !_LD [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_86:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P822: !_CASX [13] (maybe <- 0x800013) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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

P823: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_86
nop

P824: !_LD [17] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_87:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

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


P825: !_SWAP [28] (maybe <- 0x800015) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o5
swap  [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_87
nop

P826: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_88:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P827: !_DWLD [12] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 2 addresses covered

P828: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_88
nop

P829: !_DWLD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_89:
ldd [%i0 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P830: !_REPLACEMENT [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %l3
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_89
nop

P831: !_DWLD [15] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_90:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET831
nop
RET831:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P832: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_90
nop

P833: !_DWLD [17] (Int) (Loop entry) (Branch target of P839)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_91:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
ba P834
nop

TARGET839:
ba RET839
nop


P834: !_LD [24] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P835: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_91
nop

P836: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_92:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P837: !_LD [21] (Int) (CBR) (Branch target of P1042)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET837
nop
RET837:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P838
nop

TARGET1042:
ba RET1042
nop


P838: !_LD [14] (Int) (Loop exit)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_92
nop

P839: !_BLD [22] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_93:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET839
nop
RET839:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_93
nop

P840: !_BST [22] (maybe <- 0x40000015) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_94:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_1_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_94
nop

P841: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_95:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P842: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_95
nop

P843: !_REPLACEMENT [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_96:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %l6
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

P844: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_96
nop

P845: !_DWLD [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_97:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_97
nop

P846: !_DWLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_98:
ldd [%i1 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_98
nop

P847: !_BLD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_99:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_99
nop

P848: !_LD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_100:
ld [%i0 + 32], %f0
! 1 addresses covered

P849: !_DWLD [31] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P850: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_100
nop

P851: !_LD [25] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_101:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

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


P852: !_LD [25] (Int) (Loop exit)
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_101
nop

P853: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_102:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P854: !_DWLD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_102
nop

P855: !_PREFETCH [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_103:
prefetch [%i0 + 4], 1

P856: !_NOP (Int) (Loop exit)
nop
loop_exit_1_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_103
nop

P857: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_104:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P858: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_104
nop

P859: !_CASX [3] (maybe <- 0x800016) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_105:
add %i0, 32, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
sllx %l4, 32, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_105
nop

P860: !_BLD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_106:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_106
nop

P861: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_107:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P862: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_107
nop

P863: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_108:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P864: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_108
nop

P865: !_BLD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_109:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_109
nop

P866: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_110:
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P867: !_LD [24] (Int) (Loop exit) (LE) (CBR) (Branch target of P662)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET867
nop
RET867:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_110
nop
ba P868
nop

TARGET662:
ba RET662
nop


P868: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_111:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P869: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P870: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_111
nop

P871: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_112:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P872: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P873: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_112
nop

P874: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_113:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P875: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_113
nop

P876: !_BLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_114:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_114
nop

P877: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_115:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_115
nop

P878: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_116:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P879: !_LD [12] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET879
nop
RET879:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P880: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_116
nop

P881: !_LD [16] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_117:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P882: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P883: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_117
nop

P884: !_DWLD [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_118:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_118
nop

P885: !_BLD [31] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_119:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P886: !_CAS [20] (maybe <- 0x800017) (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i2], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_119
nop

P887: !_BLD [1] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_120:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET887
nop
RET887:

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
loop_exit_1_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_120
nop

P888: !_BLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_121:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_121
nop

P889: !_BLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_122:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_122
nop

P890: !_PREFETCH [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_123:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 32], 1

P891: !_DWLD [31] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P892: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_123
nop

P893: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_124:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P894: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P895: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_124
nop

P896: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_125:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P897: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_125
nop

P898: !_DWLD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_126:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P899: !_BLD [23] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_126
nop

P900: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_127:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_127
nop

P901: !_DWLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_128:
ldd [%i0 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_128
nop

P902: !_DWST [19] (maybe <- 0x800018) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_129:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %l3 
sllx %l3, 32, %l3 
stx %l3, [%i3 + 32 ] 
add   %l4, 1, %l4

P903: !_LD [16] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_129
nop

P904: !_LD [30] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_130:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_130
nop

P905: !_LD [30] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_131:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_131
nop

P906: !_DWLD [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_132:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_132
nop

P907: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_133:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P908: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_133
nop

P909: !_BLD [28] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_134:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P910: !_BLD [14] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_134
nop

P911: !_LD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_135:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P912: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_135
nop

P913: !_BLD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_136:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_136
nop

P914: !_BLD [20] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_137:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P915: !_DWST [12] (maybe <- 0x800019) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i2 + 0]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_137
nop

P916: !_LD [25] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_138:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P917: !_BLD [7] (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P918: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_138
nop

P919: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_139:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P920: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_139
nop

P921: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_140:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P922: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_140
nop

P923: !_BLD [22] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_141:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P924: !_DWLD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P925: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_141
nop

P926: !_NOP (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_142:
nop

P927: !_BLD [9] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_142
nop

P928: !_DWLD [21] (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_143:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_143
nop

P929: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_144:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P930: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P931: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_144
nop

P932: !_LD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_145:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P933: !_LD [16] (Int) (Loop exit) (Branch target of P887)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_145
nop
ba P934
nop

TARGET887:
ba RET887
nop


P934: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_146:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P935: !_DWLD [2] (Int) (Loop exit)
ldx [%i0 + 8], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_146
nop

P936: !_LD [30] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_147:
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P937: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_147
nop

P938: !_DWLD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_148:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P939: !_BLD [2] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_148
nop

P940: !_BLD [21] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_149:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P941: !_DWLD [27] (Int) (Branch target of P1101)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)
ba P942
nop

TARGET1101:
ba RET1101
nop


P942: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_149
nop

P943: !_LD [24] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_150:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P944: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_150
nop

P945: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_151:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P946: !_BSTC [8] (maybe <- 0x40000019) (FP) (Loop exit)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_151
nop

P947: !_DWLD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_152:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P948: !_DWLD [5] (Int) (Loop exit)
ldx [%i1 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_152
nop

P949: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_153:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P950: !_BLD [1] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_153
nop

P951: !_REPLACEMENT [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_154:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x10000), %l6
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

P952: !_DWLD [0] (FP) (Loop exit)
ldd [%i0 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_154
nop

P953: !_CAS [2] (maybe <- 0x80001b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_155:
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

P954: !_DWLD [31] (Int) (Branch target of P788)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o1
! move %o1(upper) -> %o1(upper)
ba P955
nop

TARGET788:
ba RET788
nop


P955: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_155
nop

P956: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_156:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P957: !_SWAP [27] (maybe <- 0x80001c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P958: !_LD [24] (Int) (Loop exit)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_156
nop

P959: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_157:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P960: !_BLD [24] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET960
nop
RET960:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P961: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_157
nop

P962: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_158:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P963: !_LD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_158
nop

P964: !_BLD [20] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_159:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P965: !_DWLD [2] (Int)
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P966: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_159
nop

P967: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_160:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P968: !_LD [13] (Int) (Loop exit)
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_160
nop

P969: !_DWLD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_161:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P970: !_DWLD [6] (Int) (Loop exit)
ldx [%i1 + 8], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srl %l6, 0, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_161
nop

P971: !_DWLD [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_162:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_162
nop

P972: !_BLD [2] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_163:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P973: !_DWLD [30] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P974: !_LD [13] (Int) (Loop exit) (Branch target of P1090)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_163
nop
ba P975
nop

TARGET1090:
ba RET1090
nop


P975: !_BLD [6] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_164:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P976: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P977: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_164
nop

P978: !_BLD [31] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_165:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P979: !_LD [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P980: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_165
nop

P981: !_DWLD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_166:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_1_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_166
nop

P982: !_DWLD [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_167:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_167
nop

P983: !_DWLD [23] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_168:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET983
nop
RET983:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P984: !_LD [17] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P985: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_168
nop

P986: !_LD [29] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_169:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P987: !_DWLD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_169
nop

P988: !_PREFETCH [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_170:
prefetch [%i0 + 12], 1

P989: !_LD [16] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET989
nop
RET989:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P990: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_170
nop

P991: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_171:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P992: !_LD [29] (FP)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P993: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_171
nop

P994: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_172:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_172
nop

P995: !_BSTC [20] (maybe <- 0x4000001d) (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_173:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET995
nop
RET995:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P996: !_DWLD [30] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P997: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_173
nop

P998: !_DWLD [24] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_174:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P999: !_DWLD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_174
nop

P1000: !_REPLACEMENT [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_175:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x10000), %o5
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

P1001: !_LD [26] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1002: !_LD [27] (Int) (Loop exit)
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_175
nop

P1003: !_REPLACEMENT [19] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_176:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %l6
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
loop_exit_1_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_176
nop

P1004: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_177:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1005: !_LD [9] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1005
nop
RET1005:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_177
nop

P1006: !_ST [30] (maybe <- 0x80001d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_178:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1007: !_NOP (Int) (Loop exit)
nop
loop_exit_1_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_178
nop

P1008: !_BLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_179:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_179
nop

P1009: !_LD [12] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_180:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1010: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_180
nop

P1011: !_DWLD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_181:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1012: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_181
nop

P1013: !_CASX [21] (maybe <- 0x80001e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_182:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1014: !_BLD [3] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_182
nop

P1015: !_LD [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_183:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1016: !_LD [17] (Int) (Loop exit)
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_183
nop

P1017: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_184:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1018: !_DWLD [5] (Int)
ldx [%i1 + 0], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P1019: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_184
nop

P1020: !_BLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_185:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_185
nop

P1021: !_BLD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_186:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1022: !_LD [16] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1023: !_LD [18] (Int) (Loop exit) (LE) (Branch target of P995)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_186
nop
ba P1024
nop

TARGET995:
ba RET995
nop


P1024: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_187:
membar #StoreLoad
loop_exit_1_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_187
nop

P1025: !_BSTC [13] (maybe <- 0x40000021) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_188:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_188
nop

P1026: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_189:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1027: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_189
nop

P1028: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_190:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1029: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_190
nop

P1030: !_BLD [0] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_191:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1031: !_BLD [9] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_191
nop

P1032: !_DWLD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_192:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1033: !_LD [15] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_192
nop

P1034: !_BLD [19] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_193:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1034
nop
RET1034:

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
loop_exit_1_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_193
nop

P1035: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_194:
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1036: !_BST [19] (maybe <- 0x40000025) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1037: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_194
nop

P1038: !_LD [24] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_195:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1039: !_BLD [10] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1039
nop
RET1039:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1040: !_LD [10] (Int) (Loop exit) (Branch target of P1099)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_195
nop
ba P1041
nop

TARGET1099:
ba RET1099
nop


P1041: !_DWLD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_196:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1042: !_DWLD [9] (Int) (Loop exit) (CBR)
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1042
nop
RET1042:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_196
nop

P1043: !_LD [20] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_197:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1044: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_197
nop

P1045: !_REPLACEMENT [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_198:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %l7
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

P1046: !_DWLD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_198
nop

P1047: !_ST [12] (maybe <- 0x40000029) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_199:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P1048: !_DWLD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1049: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_199
nop

P1050: !_LD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_200:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1051: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1052: !_LD [13] (Int) (Loop exit)
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_200
nop

P1053: !_ST [31] (maybe <- 0x800020) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_201:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 32 ]
add   %l4, 1, %l4

P1054: !_BLD [23] (FP) (Loop exit) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1054
nop
RET1054:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_201
nop

P1055: !_BLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_202:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_202
nop

P1056: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_203:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1057: !_LD [14] (Int) (Loop exit) (CBR) (Branch target of P1243)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1057
nop
RET1057:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_203
nop
ba P1058
nop

TARGET1243:
ba RET1243
nop


P1058: !_DWLD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_204:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1059: !_LD [3] (Int) (Loop exit) (Branch target of P851)
lduw [%i0 + 32], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_204
nop
ba P1060
nop

TARGET851:
ba RET851
nop


P1060: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_205:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1061: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_205
nop

P1062: !_DWLD [7] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_206:
ldd [%i1 + 32], %f0
! 1 addresses covered

P1063: !_LD [6] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1064: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_206
nop

P1065: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_207:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1066: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_207
nop

P1067: !_LD [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_208:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1068: !_LD [18] (Int) (Loop exit)
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_208
nop

P1069: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_209:
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1070: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1071: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 32], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_209
nop

P1072: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_210:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_210
nop

P1073: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_211:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1074: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1075: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_211
nop

P1076: !_BLD [23] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_212:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1077: !_BLD [16] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_212
nop

P1078: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_213:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1079: !_LD [18] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P1080: !_LD [16] (Int) (Loop exit)
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_213
nop

P1081: !_DWLD [26] (Int) (Loop entry) (Branch target of P1189)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_214:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1082
nop

TARGET1189:
ba RET1189
nop


P1082: !_LD [16] (FP)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered

P1083: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_214
nop

P1084: !_LD [19] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_215:
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1085: !_DWLD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_215
nop

P1086: !_ST [28] (maybe <- 0x800021) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_216:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1087: !_DWLD [26] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 8] %asi, %l7
! move %l7(upper) -> %o0(upper)
or %l7, %g0, %o0

P1088: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_216
nop

P1089: !_DWLD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_217:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1090: !_BLD [28] (FP) (Loop exit) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1090
nop
RET1090:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_217
nop

P1091: !_BSTC [25] (maybe <- 0x4000002a) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_218:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_1_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_218
nop

P1092: !_CASX [28] (maybe <- 0x800022) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_219:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_219
nop

P1093: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_220:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1094: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_220
nop

P1095: !_DWLD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_221:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1096: !_DWLD [27] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o1
! move %o1(upper) -> %o1(upper)

P1097: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_221
nop

P1098: !_BLD [18] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_222:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_222
nop

P1099: !_LD [24] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_223:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1099
nop
RET1099:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1100: !_LD [7] (Int) (Loop exit)
lduw [%i1 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_223
nop

P1101: !_LD [30] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_224:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

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


P1102: !_NOP (Int)
nop

P1103: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_224
nop

P1104: !_DWLD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_225:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1105: !_LD [9] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1106: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_225
nop

P1107: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_226:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1108: !_BST [28] (maybe <- 0x4000002e) (FP)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1109: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_226
nop

P1110: !_BLD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_227:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1111: !_BLD [18] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_227
nop

P1112: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_228:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1113: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_228
nop

P1114: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_229:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1115: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_229
nop

P1116: !_BLD [13] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_230:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1116
nop
RET1116:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_230
nop

P1117: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_231:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1118: !_MEMBAR (Int)
membar #StoreLoad

P1119: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_231
nop

P1120: !_LD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_232:
ld [%i1 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_232
nop

P1121: !_CASX [9] (maybe <- 0x800024) (Int) (Loop entry) (Branch target of P1039)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_233:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P1122
nop

TARGET1039:
ba RET1039
nop


P1122: !_DWLD [30] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1123: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_233
nop

P1124: !_DWLD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_234:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1125: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_234
nop

P1126: !_DWLD [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_235:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_235
nop

P1127: !_DWLD [25] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_236:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_236
nop

P1128: !_LD [16] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_237:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_237
nop

P1129: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_238:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1130: !_BLD [16] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_238
nop

P1131: !_BLD [16] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_239:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1132: !_LD [25] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1133: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_239
nop

P1134: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_240:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1135: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_240
nop

P1136: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_241:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1137: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_241
nop

P1138: !_LD [0] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_242:
wr %g0, 0x88, %asi
lduwa [%i0 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1139: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_242
nop

P1140: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_243:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1141: !_LD [2] (Int) (Loop exit) (Branch target of P778)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_243
nop
ba P1142
nop

TARGET778:
ba RET778
nop


P1142: !_ST [25] (maybe <- 0x800026) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_244:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_1_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_244
nop

P1143: !_LD [11] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_245:
wr %g0, 0x88, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1144: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_245
nop

P1145: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_246:
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1146: !_DWLD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %l7
! move %l7(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l7, 32, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_246
nop

P1147: !_REPLACEMENT [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_247:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l6
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

P1148: !_DWLD [0] (Int) (Loop exit)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_247
nop

P1149: !_PREFETCH [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_248:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 1
loop_exit_1_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_248
nop

P1150: !_BLD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_249:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_249
nop

P1151: !_DWLD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_250:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1152: !_DWLD [9] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_250
nop

P1153: !_DWLD [24] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_251:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1154: !_DWLD [11] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o1
! move %o1(upper) -> %o1(upper)

P1155: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_251
nop

P1156: !_DWLD [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_252:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1157: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 32], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_252
nop

P1158: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_253:
membar #StoreLoad

P1159: !_DWLD [8] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_253
nop

P1160: !_PREFETCH [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_254:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 1

P1161: !_BLD [4] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_254
nop

P1162: !_DWLD [29] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_255:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_255
nop

P1163: !_BLD [23] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_256:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1164: !_CASX [12] (maybe <- 0x800027) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_256
nop

P1165: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_257:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1166: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_257
nop

P1167: !_BLD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_258:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_258
nop

P1168: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_259:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1169: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_259
nop

P1170: !_BST [25] (maybe <- 0x40000032) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_260:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1171: !_BLD [17] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_260
nop

P1172: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_261:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1173: !_BLD [2] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_1_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_261
nop

P1174: !_BLD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_262:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_262
nop

P1175: !_CAS [23] (maybe <- 0x800029) (Int) (Loop entry) (Loop exit) (Branch target of P1034)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_263:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 32, %l7
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
loop_exit_1_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_263
nop
ba P1176
nop

TARGET1034:
ba RET1034
nop


P1176: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_264:
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1177: !_DWLD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l7
! move %l7(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l7, 32, %l6
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P1178: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_264
nop

P1179: !_PREFETCH [30] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_265:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 1
loop_exit_1_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_265
nop

P1180: !_NOP (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_266:
nop

P1181: !_BLD [25] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_266
nop

P1182: !_BLD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_267:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1183: !_ST [4] (maybe <- 0x40000036) (FP) (Loop exit) (Branch target of P960)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 0 ]
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_267
nop
ba P1184
nop

TARGET960:
ba RET960
nop


P1184: !_DWLD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_268:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1185: !_BLD [8] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_268
nop

P1186: !_SWAP [29] (maybe <- 0x80002a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_269:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1187: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1188: !_LD [30] (Int) (Loop exit)
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_269
nop

P1189: !_SWAP [28] (maybe <- 0x80002b) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_270:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1189
nop
RET1189:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1190: !_BLD [31] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1191: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_270
nop

P1192: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_271:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1193: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_271
nop

P1194: !_DWLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_272:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P1195: !_LD [31] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1196: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_272
nop

P1197: !_BLD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_273:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1198: !_DWLD [5] (Int) (Loop exit)
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_273
nop

P1199: !_LD [29] (Int) (Loop entry) (Branch target of P867)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_274:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1200
nop

TARGET867:
ba RET867
nop


P1200: !_FLUSHI [20] (Int)
flush %g0 

P1201: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_274
nop

P1202: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_275:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1203: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_275
nop

P1204: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_276:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1205: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1206: !_LD [21] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_276
nop

P1207: !_LD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_277:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1208: !_LD [30] (Int) (Loop exit)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_277
nop

P1209: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_278:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1210: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_278
nop

P1211: !_LD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_279:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1212: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_279
nop

P1213: !_LD [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_280:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1214: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1215: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_280
nop

P1216: !_NOP (Int) (Loop entry) (Loop exit) (Branch target of P1267)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_281:
nop
loop_exit_1_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_281
nop
ba P1217
nop

TARGET1267:
ba RET1267
nop


P1217: !_DWLD [22] (Int) (Loop entry) (Branch target of P1309)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_282:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1218
nop

TARGET1309:
ba RET1309
nop


P1218: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_282
nop

P1219: !_LD [26] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_283:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1220: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_283
nop

P1221: !_CAS [17] (maybe <- 0x80002c) (Int) (Loop entry) (Loop exit) (Branch target of P824)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_284:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
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
loop_exit_1_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_284
nop
ba P1222
nop

TARGET824:
ba RET824
nop


P1222: !_LD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_285:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1223: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1224: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_285
nop

P1225: !_DWLD [25] (Int) (Loop entry) (Loop exit) (Branch target of P1005)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_286:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_286
nop
ba P1226
nop

TARGET1005:
ba RET1005
nop


P1226: !_BLD [30] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_287:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1227: !_LD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1228: !_LD [28] (Int) (Loop exit)
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_287
nop

P1229: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_288:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1230: !_DWLD [25] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P1231: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_288
nop

P1232: !_DWLD [24] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_289:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_289
nop

P1233: !_LD [8] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_290:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered

P1234: !_BLD [9] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
fmovd %f40, %f4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_1_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_290
nop

P1235: !_LD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_291:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1236: !_DWLD [7] (FP)
ldd [%i1 + 32], %f0
! 1 addresses covered

P1237: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_291
nop

P1238: !_BLD [19] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_292:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1239: !_LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1240: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_292
nop

P1241: !_LD [17] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_293:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1242: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_293
nop

P1243: !_DWLD [25] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_294:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1243
nop
RET1243:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1244: !_DWLD [10] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1245: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_294
nop

P1246: !_LD [25] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_295:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1247: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_295
nop

P1248: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_296:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1249: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1250: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_296
nop

P1251: !_BLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_297:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_297
nop

P1252: !_DWLD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_298:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1253: !_BLD [5] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_298
nop

P1254: !_CAS [20] (maybe <- 0x80002d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_299:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_299
nop

P1255: !_DWLD [6] (Int) (Loop entry) (LE) (Branch target of P879)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_300:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0x88, %asi
ldxa [%i1 + 8] %asi, %l7
! move %l7(upper) -> %o0(upper)
or %l7, %g0, %o0
ba P1256
nop

TARGET879:
ba RET879
nop


P1256: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_300
nop

P1257: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_301:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1258: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1259: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_301
nop

P1260: !_NOP (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_302:
nop

P1261: !_LD [29] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1262: !_LD [20] (Int) (Loop exit) (Branch target of P798)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_302
nop
ba P1263
nop

TARGET798:
ba RET798
nop


P1263: !_PREFETCH [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_303:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 32], 1

P1264: !_LD [2] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1265: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_303
nop

P1266: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_304:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1267: !_LD [3] (Int) (Loop exit) (CBR)
lduw [%i0 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1267
nop
RET1267:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_304
nop

P1268: !_LD [14] (Int) (Loop entry) (Branch target of P810)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_305:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1269
nop

TARGET810:
ba RET810
nop


P1269: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_305
nop

P1270: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_306:
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1271: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_306
nop

P1272: !_LD [27] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_307:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1273: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_307
nop

P1274: !_LD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_308:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_308
nop

P1275: !_DWLD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_309:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1276: !_DWLD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srl %l3, 0, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_309
nop

P1277: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_310:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1278: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_310
nop

P1279: !_LD [11] (Int) (Loop entry) (Branch target of P675)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_311:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1280
nop

TARGET675:
ba RET675
nop


P1280: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_311
nop

P1281: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_312:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1282: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1283: !_LD [16] (Int) (Loop exit) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1283
nop
RET1283:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_312
nop

P1284: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_313:
membar #StoreLoad
loop_exit_1_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_313
nop

P1285: !_CAS [18] (maybe <- 0x80002e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_314:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
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
loop_exit_1_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_314
nop

P1286: !_LD [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_315:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1287: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_315
nop

P1288: !_ST [14] (maybe <- 0x80002f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_316:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1289: !_LD [7] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1290: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_316
nop

P1291: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_317:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1292: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_317
nop

P1293: !_DWLD [17] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_318:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0

P1294: !_BLD [11] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_318
nop

P1295: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_319:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1296: !_DWLD [2] (Int)
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1297: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_319
nop

P1298: !_BLD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_320:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_320
nop

P1299: !_LD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_321:
ld [%i0 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_321
nop

P1300: !_LD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_322:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1301: !_LD [30] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1301
nop
RET1301:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_322
nop

P1302: !_DWLD [22] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_323:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 8] %asi, %l3
! move %l3(upper) -> %o0(upper)
or %l3, %g0, %o0

P1303: !_DWLD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srl %o5, 0, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_323
nop

P1304: !_DWLD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_324:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1305: !_BLD [1] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_1_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_324
nop

P1306: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_325:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1307: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_325
nop

P1308: !_DWLD [28] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_326:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_326
nop

P1309: !_MEMBAR (Int) (CBR)
membar #StoreLoad

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

! Initialize LFSR to 0x7bfa^4
sethi %hi(0x7bfa), %l0
or    %l0, %lo(0x7bfa), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES2: ! Test instruction sequence for CPU 2 begins

P1310: !_DWLD [16] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_0:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0

P1311: !_DWLD [29] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_0
nop

P1312: !_BLD [19] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_1:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_1
nop

P1313: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_2:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1314: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_2
nop

P1315: !_DWLD [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_3:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_3
nop

P1316: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_4:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_4
nop

P1317: !_DWLD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_5:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1318: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_5
nop

P1319: !_DWLD [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_6:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_6
nop

P1320: !_DWLD [13] (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_7:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 0] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_7
nop

P1321: !_LD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_8:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1322: !_DWLD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P1323: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 32], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_8
nop

P1324: !_DWLD [15] (Int) (Loop entry) (LE) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_9:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 32] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1324
nop
RET1324:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1325: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_9
nop

P1326: !_BLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_10:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_10
nop

P1327: !_LD [31] (Int) (Loop entry) (Branch target of P1579)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_11:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1328
nop

TARGET1579:
ba RET1579
nop


P1328: !_LD [14] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_11
nop

P1329: !_BLD [1] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_12:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1330: !_LD [21] (Int) (Branch target of P1740)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1331
nop

TARGET1740:
ba RET1740
nop


P1331: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_12
nop

P1332: !_CAS [24] (maybe <- 0x1000001) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_13:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
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

P1333: !_BLD [11] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_13
nop

P1334: !_LD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_14:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1335: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_14
nop

P1336: !_LD [4] (Int) (Loop entry) (Branch target of P1957)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_15:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1337
nop

TARGET1957:
ba RET1957
nop


P1337: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_15
nop

P1338: !_REPLACEMENT [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_16:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x10000), %l3
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
loop_exit_2_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_16
nop

P1339: !_BSTC [31] (maybe <- 0x40800001) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_17:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_17
nop

P1340: !_ST [8] (maybe <- 0x1000002) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_18:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1341: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1342: !_LD [16] (Int) (Loop exit)
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_18
nop

P1343: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_19:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1344: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_19
nop

P1345: !_DWLD [18] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_20:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P1346: !_LD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1347: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_20
nop

P1348: !_BLD [26] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_21:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_21
nop

P1349: !_DWLD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_22:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1350: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_22
nop

P1351: !_SWAP [24] (maybe <- 0x1000003) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_23:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1352: !_LD [24] (Int) (Loop exit)
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_23
nop

P1353: !_SWAP [16] (maybe <- 0x1000004) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_24:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1354: !_LD [28] (Int) (Loop exit) (Branch target of P1722)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_24
nop
ba P1355
nop

TARGET1722:
ba RET1722
nop


P1355: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_25:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1356: !_BLD [12] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_25
nop

P1357: !_BLD [19] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_26:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1358: !_BLD [18] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_26
nop

P1359: !_BLD [28] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_27:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1360: !_BLD [0] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_27
nop

P1361: !_LD [28] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_28:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1362: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_28
nop

P1363: !_DWLD [28] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_29:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_29
nop

P1364: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_30:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1365: !_LD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_30
nop

P1366: !_DWST [19] (maybe <- 0x1000005) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_31:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %l7 
sllx %l7, 32, %l7 
stx %l7, [%i3 + 32 ] 
add   %l4, 1, %l4

P1367: !_LD [3] (Int)
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1368: !_LD [30] (Int) (Loop exit) (Branch target of P1904)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_31
nop
ba P1369
nop

TARGET1904:
ba RET1904
nop


P1369: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_32:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1370: !_LD [27] (Int) (Loop exit) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1370
nop
RET1370:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_32
nop

P1371: !_SWAP [1] (maybe <- 0x1000006) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_33:
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1372: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_33
nop

P1373: !_LD [11] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_34:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1374: !_DWLD [29] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1375: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_34
nop

P1376: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_35:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1377: !_LD [20] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_35
nop

P1378: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_36:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1379: !_LD [1] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 4] %asi, %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_36
nop

P1380: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_37:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1381: !_DWLD [2] (Int) (Loop exit)
ldx [%i0 + 8], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srl %l7, 0, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_37
nop

P1382: !_LD [4] (Int) (Loop entry) (Branch target of P1455)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_38:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1383
nop

TARGET1455:
ba RET1455
nop


P1383: !_DWLD [24] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P1384: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_38
nop

P1385: !_BLD [26] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_39:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_39
nop

P1386: !_BLD [30] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_40:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_40
nop

P1387: !_BLD [28] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_41:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_41
nop

P1388: !_LD [8] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_42:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1389: !_DWLD [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1390: !_LD [7] (Int) (Loop exit)
lduw [%i1 + 32], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_42
nop

P1391: !_LD [10] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_43:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1391
nop
RET1391:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1392: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1393: !_LD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_43
nop

P1394: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_44:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_44
nop

P1395: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_45:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1396: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_45
nop

P1397: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_46:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1398: !_LD [31] (Int) (Loop exit) (Branch target of P1608)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_46
nop
ba P1399
nop

TARGET1608:
ba RET1608
nop


P1399: !_CASX [15] (maybe <- 0x1000007) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_47:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 32, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
sllx %l4, 32, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1400: !_DWLD [3] (Int)
ldx [%i0 + 32], %o2
! move %o2(upper) -> %o2(upper)

P1401: !_LD [6] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_47
nop

P1402: !_LD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_48:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1403: !_DWLD [1] (FP)
ldd [%i0 + 0], %f0
! 2 addresses covered

P1404: !_LD [7] (Int) (Loop exit)
lduw [%i1 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_48
nop

P1405: !_CAS [8] (maybe <- 0x1000008) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_49:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
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
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_49
nop

P1406: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_50:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1407: !_DWLD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1408: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_50
nop

P1409: !_DWLD [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_51:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_51
nop

P1410: !_BSTC [13] (maybe <- 0x40800005) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_52:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_2_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_52
nop

P1411: !_CASX [29] (maybe <- 0x1000009) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_53:
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_53
nop

P1412: !_SWAP [26] (maybe <- 0x100000b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_54:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1413: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_54
nop

P1414: !_DWLD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_55:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1415: !_BLD [3] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_55
nop

P1416: !_LD [29] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_56:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1416
nop
RET1416:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_56
nop

P1417: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_57:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1418: !_LD [19] (Int) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1418
nop
RET1418:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1419: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_57
nop

P1420: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_58:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1421: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_58
nop

P1422: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_59:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1423: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_59
nop

P1424: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_60:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1425: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_60
nop

P1426: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_61:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1427: !_LD [6] (Int) (Loop exit) (Branch target of P1812)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_61
nop
ba P1428
nop

TARGET1812:
ba RET1812
nop


P1428: !_BLD [6] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_62:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1429: !_BSTC [20] (maybe <- 0x40800009) (FP) (Loop exit) (Branch target of P1391)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_62
nop
ba P1430
nop

TARGET1391:
ba RET1391
nop


P1430: !_LD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_63:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1431: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_63
nop

P1432: !_BSTC [26] (maybe <- 0x4080000d) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_64:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_64
nop

P1433: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_65:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_65
nop

P1434: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_66:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1435: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1436: !_LD [6] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_66
nop

P1437: !_BLD [27] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_67:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_67
nop

P1438: !_LD [2] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_68:
wr %g0, 0x88, %asi
lduwa [%i0 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1439: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_68
nop

P1440: !_DWST [17] (maybe <- 0x40800011) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_69:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! preparing store val #1, next val will be in f21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i2 + 0]

P1441: !_DWLD [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1442: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_69
nop

P1443: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_70:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1444: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_70
nop

P1445: !_DWLD [20] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_71:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_71
nop

P1446: !_BLD [2] (FP) (Loop entry) (Branch target of P1786)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_72:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P1447
nop

TARGET1786:
ba RET1786
nop


P1447: !_CAS [27] (maybe <- 0x100000c) (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 32, %l7
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
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_72
nop

P1448: !_REPLACEMENT [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_73:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l7
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
loop_exit_2_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_73
nop

P1449: !_BLD [25] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_74:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1450: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1451: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_74
nop

P1452: !_BLD [0] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_75:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1453: !_BLD [14] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_75
nop

P1454: !_LD [28] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_76:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1455: !_LD [29] (Int) (Loop exit) (CBR)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1455
nop
RET1455:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_76
nop

P1456: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_77:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1457: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_77
nop

P1458: !_BLD [27] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_78:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_78
nop

P1459: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_79:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1460: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_79
nop

P1461: !_LD [20] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_80:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_80
nop

P1462: !_BSTC [23] (maybe <- 0x40800013) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_81:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_81
nop

P1463: !_BLD [24] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_82:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1464: !_BLD [28] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_82
nop

P1465: !_BLD [30] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_83:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1466: !_BLD [0] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_83
nop

P1467: !_LD [6] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_84:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ld [%i1 + 12], %f0
! 1 addresses covered

P1468: !_CASX [27] (maybe <- 0x100000d) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
sllx %l4, 32, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_84
nop

P1469: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_85:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1470: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_85
nop

P1471: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_86:
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1472: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_86
nop

P1473: !_DWLD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_87:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1474: !_DWLD [11] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o1
! move %o1(upper) -> %o1(upper)

P1475: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_87
nop

P1476: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_88:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1477: !_LD [11] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 32], %f0
! 1 addresses covered

P1478: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_88
nop

P1479: !_DWLD [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_89:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_89
nop

P1480: !_DWLD [23] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_90:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1480
nop
RET1480:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1481: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_90
nop

P1482: !_BLD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_91:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_91
nop

P1483: !_LD [16] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_92:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1484: !_LD [13] (Int) (Loop exit) (Branch target of P1538)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_92
nop
ba P1485
nop

TARGET1538:
ba RET1538
nop


P1485: !_DWLD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_93:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1486: !_PREFETCH [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 32], 1
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_93
nop

P1487: !_DWLD [4] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_94:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1487
nop
RET1487:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1488: !_DWLD [27] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 32], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_94
nop

P1489: !_LD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_95:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1490: !_LD [23] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_95
nop

P1491: !_LD [31] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_96:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_96
nop

P1492: !_BLD [22] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_97:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_97
nop

P1493: !_NOP (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_98:
nop
loop_exit_2_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_98
nop

P1494: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_99:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1495: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_99
nop

P1496: !_BLD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_100:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_100
nop

P1497: !_BLD [26] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_101:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_101
nop

P1498: !_CAS [23] (maybe <- 0x100000e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_102:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 32, %l7
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
loop_exit_2_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_102
nop

P1499: !_LD [28] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_103:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1499
nop
RET1499:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1500: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_103
nop

P1501: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_104:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1502: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_104
nop

P1503: !_LD [14] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_105:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1504: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
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

P1505: !_BLD [25] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_106:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_106
nop

P1506: !_DWLD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_107:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1507: !_DWLD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_107
nop

P1508: !_LD [17] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_108:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_108
nop

P1509: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_109:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1510: !_DWLD [7] (Int) (Loop exit)
ldx [%i1 + 32], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_109
nop

P1511: !_BLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_110:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_110
nop

P1512: !_DWLD [31] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_111:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_111
nop

P1513: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_112:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1514: !_MEMBAR (Int)
membar #StoreLoad

P1515: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_112
nop

P1516: !_LD [27] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_113:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_113
nop

P1517: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_114:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1518: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_114
nop

P1519: !_BLD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_115:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_115
nop

P1520: !_LD [20] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_116:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1520
nop
RET1520:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1521: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_116
nop

P1522: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_117:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1523: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_117
nop

P1524: !_LD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_118:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1525: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_118
nop

P1526: !_BLD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_119:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_119
nop

P1527: !_DWLD [3] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_120:
wr %g0, 0x88, %asi
ldxa [%i0 + 32] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1528: !_REPLACEMENT [28] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l7
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

P1529: !_LD [28] (Int) (Loop exit) (Branch target of P1520)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_120
nop
ba P1530
nop

TARGET1520:
ba RET1520
nop


P1530: !_LD [24] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_121:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered

P1531: !_LD [30] (Int) (Branch target of P1324)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1532
nop

TARGET1324:
ba RET1324
nop


P1532: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_121
nop

P1533: !_BLD [3] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_122:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_122
nop

P1534: !_DWLD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_123:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1535: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1536: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_123
nop

P1537: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_124:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1538: !_LD [29] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1538
nop
RET1538:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_124
nop

P1539: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_125:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1540: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_125
nop

P1541: !_BLD [0] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_126:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1542: !_BLD [24] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_126
nop

P1543: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_127:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1544: !_DWLD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %l6
or %l6, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1

P1545: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_127
nop

P1546: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_128:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1547: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_128
nop

P1548: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_129:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1549: !_BLD [6] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_129
nop

P1550: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_130:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1551: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1552: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_130
nop

P1553: !_BLD [22] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_131:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_131
nop

P1554: !_LD [30] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_132:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_132
nop

P1555: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_133:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1556: !_BLD [4] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1557: !_LD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_133
nop

P1558: !_ST [8] (maybe <- 0x100000f) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_134:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1559: !_LD [25] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_134
nop

P1560: !_ST [1] (maybe <- 0x1000010) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_135:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4
loop_exit_2_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_135
nop

P1561: !_DWLD [23] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_136:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_136
nop

P1562: !_CASX [4] (maybe <- 0x1000011) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_137:
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
ldxa [%i1] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
mov %l6, %l7
mov  %l3, %l6
casxa [%i1] %asi, %l7, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
add  %l4, 1, %l4

P1563: !_LD [30] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1563
nop
RET1563:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1564: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_137
nop

P1565: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_138:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1566: !_LD [29] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1566
nop
RET1566:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_138
nop

P1567: !_BLD [1] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_139:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1567
nop
RET1567:

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
loop_exit_2_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_139
nop

P1568: !_LD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_140:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1569: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1570: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_140
nop

P1571: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_141:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1572: !_LD [1] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_141
nop

P1573: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_142:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1574: !_BLD [9] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1574
nop
RET1574:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1575: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_142
nop

P1576: !_LD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_143:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1577: !_DWLD [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1

P1578: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_143
nop

P1579: !_DWLD [26] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_144:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1579
nop
RET1579:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1580: !_DWLD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_144
nop

P1581: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_145:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1582: !_DWST [12] (maybe <- 0x1000013) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P1583: !_LD [17] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1583
nop
RET1583:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_145
nop

P1584: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_146:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_146
nop

P1585: !_BLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_147:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_147
nop

P1586: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_148:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1587: !_DWLD [25] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_148
nop

P1588: !_DWLD [4] (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_149:
wr %g0, 0x88, %asi
ldxa [%i1 + 0] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_149
nop

P1589: !_DWLD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_150:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1590: !_LD [6] (Int)
lduw [%i1 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1591: !_LD [6] (Int) (Loop exit) (CBR)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1591
nop
RET1591:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_150
nop

P1592: !_ST [28] (maybe <- 0x1000015) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_151:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1593: !_ST [14] (maybe <- 0x40800017) (FP) (Loop exit) (Branch target of P1598)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 12 ]
loop_exit_2_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_151
nop
ba P1594
nop

TARGET1598:
ba RET1598
nop


P1594: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_152:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1595: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_152
nop

P1596: !_LD [27] (Int) (Loop entry) (Branch target of P1825)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_153:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1597
nop

TARGET1825:
ba RET1825
nop


P1597: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_153
nop

P1598: !_LD [9] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_154:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1598
nop
RET1598:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1599: !_LD [6] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_154
nop

P1600: !_DWLD [21] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_155:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_155
nop

P1601: !_BLD [23] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_156:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_156
nop

P1602: !_REPLACEMENT [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_157:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x10000), %l6
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

P1603: !_DWLD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_157
nop

P1604: !_ST [14] (maybe <- 0x1000016) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_158:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1605: !_LD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1606: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_158
nop

P1607: !_ST [7] (maybe <- 0x1000017) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_159:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
stw   %l4, [%i1 + 32 ]
add   %l4, 1, %l4

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_159
nop

P1608: !_LD [14] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_160:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1608
nop
RET1608:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1609: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1610: !_LD [15] (Int) (Loop exit)
lduw [%i2 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_160
nop

P1611: !_DWLD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_161:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1612: !_ST [4] (maybe <- 0x1000018) (Int)
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

P1613: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_161
nop

P1614: !_LD [25] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_162:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1615: !_BST [26] (maybe <- 0x40800018) (FP) (Branch target of P1927)
wr %g0, 0xf0, %asi
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
ba P1616
nop

TARGET1927:
ba RET1927
nop


P1616: !_LD [7] (Int) (Loop exit) (CBR)
lduw [%i1 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1616
nop
RET1616:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_162
nop

P1617: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_163:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1618: !_DWLD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_163
nop

P1619: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_164:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1620: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_164
nop

P1621: !_LD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_165:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1622: !_LD [7] (Int) (Loop exit)
lduw [%i1 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_165
nop

P1623: !_DWLD [7] (Int) (Loop entry) (CBR) (Branch target of P1706)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_166:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1623
nop
RET1623:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P1624
nop

TARGET1706:
ba RET1706
nop


P1624: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_166
nop

P1625: !_DWLD [29] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_167:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 2 addresses covered

P1626: !_DWLD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1627: !_LD [16] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_167
nop

P1628: !_BLD [7] (FP) (Loop entry) (Loop exit) (CBR) (Branch target of P1616)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_168:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1628
nop
RET1628:

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
loop_exit_2_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_168
nop
ba P1629
nop

TARGET1616:
ba RET1616
nop


P1629: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_169:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1630: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_169
nop

P1631: !_BLD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_170:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_170
nop

P1632: !_BLD [19] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_171:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1633: !_LD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1634: !_LD [21] (Int) (Loop exit)
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_171
nop

P1635: !_BLD [2] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_172:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1636: !_BLD [21] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_172
nop

P1637: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_173:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1638: !_PREFETCH [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 32], 1
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_173
nop

P1639: !_LD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_174:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1640: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1641: !_LD [29] (Int) (Loop exit) (CBR)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1641
nop
RET1641:

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
fmovd %f2, %f30
!--
loop_exit_2_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_174
nop

P1642: !_BLD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_175:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_175
nop

P1643: !_LD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_176:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1644: !_BLD [20] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1645: !_LD [5] (Int) (Loop exit) (Branch target of P1952)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_176
nop
ba P1646
nop

TARGET1952:
ba RET1952
nop


P1646: !_BLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_177:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_177
nop

P1647: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_178:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_178
nop

P1648: !_BLD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_179:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1649: !_DWLD [18] (Int) (Branch target of P1806)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1650
nop

TARGET1806:
ba RET1806
nop


P1650: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_179
nop

P1651: !_DWLD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_180:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1652: !_LD [21] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i2 + 4] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1653: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_180
nop

P1654: !_DWLD [22] (Int) (Loop entry) (Branch target of P1487)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_181:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1655
nop

TARGET1487:
ba RET1487
nop


P1655: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_181
nop

P1656: !_LD [24] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_182:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1657: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_182
nop

P1658: !_DWLD [21] (Int) (Loop entry) (Loop exit) (Branch target of P1623)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_183:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_183
nop
ba P1659
nop

TARGET1623:
ba RET1623
nop


P1659: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_184:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1660: !_LD [31] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 32] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_184
nop

P1661: !_BLD [25] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_185:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1662: !_LD [9] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f4
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_2_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_185
nop

P1663: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_186:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1664: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_186
nop

P1665: !_LD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_187:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1666: !_LD [15] (Int) (Loop exit) (Branch target of P1784)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_187
nop
ba P1667
nop

TARGET1784:
ba RET1784
nop


P1667: !_BLD [28] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_188:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_188
nop

P1668: !_BLD [12] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_189:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_189
nop

P1669: !_LD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_190:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1670: !_DWLD [9] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 2 addresses covered

P1671: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_190
nop

P1672: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_191:
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1673: !_DWLD [3] (Int) (Loop exit)
ldx [%i0 + 32], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_191
nop

P1674: !_BLD [20] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_192:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1675: !_BLD [19] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_192
nop

P1676: !_DWLD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_193:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1677: !_BLD [18] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_193
nop

P1678: !_BLD [30] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_194:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_194
nop

P1679: !_LD [16] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_195:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered

P1680: !_BLD [25] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
fmovd %f40, %f4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_2_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_195
nop

P1681: !_CAS [24] (maybe <- 0x1000019) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_196:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_196
nop

P1682: !_BLD [28] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_197:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1683: !_BLD [4] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_197
nop

P1684: !_BST [14] (maybe <- 0x4080001c) (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_198:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1684
nop
RET1684:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1685: !_BLD [21] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_198
nop

P1686: !_BLD [29] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_199:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1687: !_DWST [17] (maybe <- 0x100001a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l7 
add   %l4, 1, %l4
or %l7, %l4, %l7
stx %l7, [%i2 + 0]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_199
nop

P1688: !_DWLD [26] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_200:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1689: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_200
nop

P1690: !_DWLD [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_201:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_201
nop

P1691: !_LD [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_202:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1692: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_202
nop

P1693: !_ST [12] (maybe <- 0x100001c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_203:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_2_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_203
nop

P1694: !_BST [3] (maybe <- 0x40800020) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_204:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

P1695: !_LD [6] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1696: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_204
nop

P1697: !_DWLD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_205:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1698: !_LD [6] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_205
nop

P1699: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_206:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1700: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_206
nop

P1701: !_BLD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_207:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1702: !_DWLD [13] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_207
nop

P1703: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_208:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1704: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_208
nop

P1705: !_LD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_209:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1706: !_LD [8] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1706
nop
RET1706:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_209
nop

P1707: !_BLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_210:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_210
nop

P1708: !_BLD [29] (FP) (Loop entry) (Loop exit) (Branch target of P1684)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_211:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_211
nop
ba P1709
nop

TARGET1684:
ba RET1684
nop


P1709: !_BLD [19] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_212:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1710: !_BLD [10] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_212
nop

P1711: !_SWAP [3] (maybe <- 0x100001d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_213:
mov %l4, %o0
swap  [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1712: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_213
nop

P1713: !_BLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_214:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_214
nop

P1714: !_LD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_215:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1715: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1716: !_LD [17] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_215
nop

P1717: !_DWLD [25] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_216:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 2 addresses covered

P1718: !_BLD [27] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f2
fmovd %f34, %f18
fmovs %f19, %f4
fmovd %f40, %f18
fmovs %f18, %f5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
!--
loop_exit_2_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_216
nop

P1719: !_BLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_217:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_217
nop

P1720: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_218:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1721: !_DWLD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P1722: !_LD [3] (Int) (Loop exit) (CBR)
lduw [%i0 + 32], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1722
nop
RET1722:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_218
nop

P1723: !_DWLD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_219:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1724: !_FLUSHI [10] (Int)
flush %g0 

P1725: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_219
nop

P1726: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_220:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1727: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_220
nop

P1728: !_BLD [5] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_221:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_221
nop

P1729: !_BST [20] (maybe <- 0x40800024) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_222:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1730: !_LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1731: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_222
nop

P1732: !_LD [4] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_223:
ld [%i1 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_223
nop

P1733: !_BLD [20] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_224:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_224
nop

P1734: !_BSTC [27] (maybe <- 0x40800028) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_225:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_225
nop

P1735: !_BSTC [5] (maybe <- 0x4080002c) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_226:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

P1736: !_BLD [30] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_226
nop

P1737: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_227:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1738: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1739: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_227
nop

P1740: !_REPLACEMENT [31] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_228:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l3
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

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1740
nop
RET1740:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_228
nop

P1741: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_229:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1742: !_BLD [21] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_229
nop

P1743: !_FLUSHI [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_230:
flush %g0 

P1744: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1745: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_230
nop

P1746: !_DWLD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_231:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1747: !_DWLD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_231
nop

P1748: !_LD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_232:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1749: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_232
nop

P1750: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_233:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1751: !_LD [6] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_233
nop

P1752: !_ST [5] (maybe <- 0x100001e) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_234:
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
stwa   %l3, [%i1 + 4] %asi
add   %l4, 1, %l4
loop_exit_2_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_234
nop

P1753: !_CASX [8] (maybe <- 0x100001f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_235:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_235
nop

P1754: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_236:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1755: !_LD [6] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_236
nop

P1756: !_BSTC [6] (maybe <- 0x40800030) (FP) (Loop entry) (Branch target of P1953)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_237:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 
ba P1757
nop

TARGET1953:
ba RET1953
nop


P1757: !_LD [2] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1758: !_LD [7] (Int) (Loop exit)
lduw [%i1 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_237
nop

P1759: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_238:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1760: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_238
nop

P1761: !_PREFETCH [17] (Int) (Loop entry) (Branch target of P1416)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_239:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 1
ba P1762
nop

TARGET1416:
ba RET1416
nop


P1762: !_DWLD [27] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1763: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_239
nop

P1764: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_240:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1765: !_BLD [7] (FP) (Loop exit) (Branch target of P1641)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_240
nop
ba P1766
nop

TARGET1641:
ba RET1641
nop


P1766: !_BLD [9] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_241:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1767: !_DWLD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1768: !_LD [17] (Int) (Loop exit)
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_241
nop

P1769: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_242:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1770: !_DWLD [24] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_242
nop

P1771: !_DWLD [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_243:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_243
nop

P1772: !_BLD [27] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_244:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1773: !_DWLD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_244
nop

P1774: !_CASX [19] (maybe <- 0x1000021) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_245:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
sllx %l4, 32, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_245
nop

P1775: !_NOP (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_246:
nop

P1776: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1777: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_246
nop

P1778: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_247:
membar #StoreLoad
loop_exit_2_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_247
nop

P1779: !_NOP (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_248:
nop

P1780: !_BLD [11] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_248
nop

P1781: !_DWLD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_249:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1782: !_DWLD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_249
nop

P1783: !_BLD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_250:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1784: !_MEMBAR (Int) (Loop exit) (CBR)
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1784
nop
RET1784:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_250
nop

P1785: !_BLD [9] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_251:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1786: !_BLD [3] (FP) (Loop exit) (CBR) (Branch target of P1480)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1786
nop
RET1786:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_251
nop
ba P1787
nop

TARGET1480:
ba RET1480
nop


P1787: !_DWLD [23] (Int) (Loop entry) (Branch target of P1574)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_252:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)
ba P1788
nop

TARGET1574:
ba RET1574
nop


P1788: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_252
nop

P1789: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_253:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1790: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_253
nop

P1791: !_LD [0] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_254:
wr %g0, 0x88, %asi
lduwa [%i0 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1792: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_254
nop

P1793: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_255:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1794: !_LD [29] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_255
nop

P1795: !_SWAP [8] (maybe <- 0x1000022) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_256:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1796: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_256
nop

P1797: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_257:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_257
nop

P1798: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_258:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1799: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_258
nop

P1800: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_259:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1801: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_259
nop

P1802: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_260:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1803: !_LD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_260
nop

P1804: !_BSTC [5] (maybe <- 0x40800034) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_261:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

P1805: !_LD [6] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1806: !_LD [30] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1806
nop
RET1806:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_261
nop

P1807: !_DWLD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_262:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1808: !_DWLD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_262
nop

P1809: !_DWLD [4] (Int) (Loop entry) (Loop exit) (Branch target of P1566)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_263:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_263
nop
ba P1810
nop

TARGET1566:
ba RET1566
nop


P1810: !_BLD [17] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_264:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1811: !_LD [7] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1812: !_LD [27] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

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

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_264
nop

P1813: !_BLD [11] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_265:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1814: !_BLD [27] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_265
nop

P1815: !_BST [6] (maybe <- 0x40800038) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_266:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

P1816: !_LD [1] (Int) (CBR)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1816
nop
RET1816:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1817: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_266
nop

P1818: !_DWLD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_267:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1819: !_DWLD [12] (FP) (Loop exit) (Branch target of P1563)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 2 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_267
nop
ba P1820
nop

TARGET1563:
ba RET1563
nop


P1820: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_268:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1821: !_SWAP [29] (maybe <- 0x1000023) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1822: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_268
nop

P1823: !_BLD [26] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_269:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_269
nop

P1824: !_DWLD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_270:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1825: !_LD [30] (Int) (CBR)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1825
nop
RET1825:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1826: !_LD [9] (Int) (Loop exit) (Branch target of P1591)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_270
nop
ba P1827
nop

TARGET1591:
ba RET1591
nop


P1827: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_271:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1828: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1829: !_LD [19] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_271
nop

P1830: !_BLD [22] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_272:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1831: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_272
nop

P1832: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_273:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1833: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_273
nop

P1834: !_LD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_274:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1835: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_274
nop

P1836: !_DWLD [28] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_275:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_275
nop

P1837: !_BLD [30] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_276:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1838: !_BLD [10] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_276
nop

P1839: !_BLD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_277:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_277
nop

P1840: !_REPLACEMENT [20] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_278:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l7
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
loop_exit_2_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_278
nop

P1841: !_BLD [18] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_279:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_279
nop

P1842: !_LD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_280:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1843: !_LD [25] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_280
nop

P1844: !_DWLD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_281:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1845: !_DWLD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_281
nop

P1846: !_DWLD [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_282:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_282
nop

P1847: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_283:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1848: !_DWLD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1

P1849: !_LD [13] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_283
nop

P1850: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_284:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1851: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1852: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_284
nop

P1853: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_285:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1854: !_DWLD [26] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_285
nop

P1855: !_BLD [29] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_286:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1856: !_BLD [31] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_286
nop

P1857: !_ST [17] (maybe <- 0x4080003c) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_287:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
loop_exit_2_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_287
nop

P1858: !_LD [24] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_288:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1859: !_LD [17] (Int) (Loop exit) (Branch target of P1583)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_288
nop
ba P1860
nop

TARGET1583:
ba RET1583
nop


P1860: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_289:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1861: !_LD [17] (Int) (Loop exit) (LE) (CBR)
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1861
nop
RET1861:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_289
nop

P1862: !_BLD [23] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_290:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1863: !_DWLD [7] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1864: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_290
nop

P1865: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_291:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1866: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_291
nop

P1867: !_LD [23] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_292:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_292
nop

P1868: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_293:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1869: !_LD [5] (Int) (Loop exit) (Branch target of P1961)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_293
nop
ba P1870
nop

TARGET1961:
ba RET1961
nop


P1870: !_BLD [15] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_294:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_294
nop

P1871: !_BLD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_295:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1872: !_ST [7] (maybe <- 0x1000024) (Int) (Loop exit)
stw   %l4, [%i1 + 32 ]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_295
nop

P1873: !_LD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_296:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1874: !_DWLD [10] (Int) (Loop exit) (Branch target of P1816)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l6
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_296
nop
ba P1875
nop

TARGET1816:
ba RET1816
nop


P1875: !_DWLD [18] (Int) (Loop entry) (Branch target of P1567)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_297:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1876
nop

TARGET1567:
ba RET1567
nop


P1876: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1877: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_297
nop

P1878: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_298:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1879: !_DWLD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_298
nop

P1880: !_LD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_299:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1881: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1882: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_299
nop

P1883: !_DWLD [11] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_300:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 32], %f0
! 1 addresses covered

P1884: !_DWLD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_300
nop

P1885: !_DWLD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_301:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1886: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1887: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_301
nop

P1888: !_CASX [19] (maybe <- 0x1000025) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_302:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
sllx %l4, 32, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1889: !_REPLACEMENT [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %o5
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_302
nop

P1890: !_PREFETCH [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_303:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1
loop_exit_2_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_303
nop

P1891: !_BLD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_304:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_304
nop

P1892: !_LD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_305:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1893: !_FLUSHI [18] (Int)
flush %g0 

P1894: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_305
nop

P1895: !_DWLD [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_306:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_306
nop

P1896: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_307:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1897: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_307
nop

P1898: !_BLD [30] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_308:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_308
nop

P1899: !_LD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_309:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1900: !_BLD [29] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1901: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_309
nop

P1902: !_BSTC [15] (maybe <- 0x4080003d) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_310:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P1903: !_BST [14] (maybe <- 0x40800041) (FP) (Loop exit)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_2_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_310
nop

P1904: !_LD [22] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_311:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1904
nop
RET1904:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1905: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_311
nop

P1906: !_BLD [29] (FP) (Loop entry) (Loop exit) (Branch target of P1959)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_312:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_312
nop
ba P1907
nop

TARGET1959:
ba RET1959
nop


P1907: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_313:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1908: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_313
nop

P1909: !_DWLD [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_314:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_314
nop

P1910: !_NOP (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_315:
nop
loop_exit_2_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_315
nop

P1911: !_SWAP [22] (maybe <- 0x1000026) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_316:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1912: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_316
nop

P1913: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_317:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1914: !_BLD [13] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1915: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_317
nop

P1916: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_318:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1917: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_318
nop

P1918: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_319:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1919: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_319
nop

P1920: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_320:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1921: !_DWLD [5] (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldd [%i1 + 0], %f0
! 2 addresses covered

P1922: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_320
nop

P1923: !_DWLD [25] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_321:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_2_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_321
nop

P1924: !_BLD [28] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_322:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_322
nop

P1925: !_BLD [29] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_323:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1926: !_BLD [28] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_2_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_323
nop

P1927: !_BLD [0] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_324:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1927
nop
RET1927:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_324
nop

P1928: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_325:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1929: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_325
nop

P1930: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_326:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1931: !_BLD [0] (FP) (Branch target of P1628)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P1932
nop

TARGET1628:
ba RET1628
nop


P1932: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_326
nop

P1933: !_DWLD [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_327:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_327
nop

P1934: !_LD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_328:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1935: !_DWLD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_328
nop

P1936: !_BLD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_329:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_329
nop

P1937: !_DWST [17] (maybe <- 0x1000027) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_330:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
sllx %l4, 32, %l6 
add   %l4, 1, %l4
or %l6, %l4, %l6
stx %l6, [%i2 + 0]
add   %l4, 1, %l4

P1938: !_LD [9] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1939: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_330
nop

P1940: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_331:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1941: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_331
nop

P1942: !_REPLACEMENT [13] (Int) (Loop entry) (Loop exit) (Branch target of P1370)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_332:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x10000), %l3
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
loop_exit_2_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_332
nop
ba P1943
nop

TARGET1370:
ba RET1370
nop


P1943: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_333:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1944: !_BST [10] (maybe <- 0x40800045) (FP)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P1945: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_333:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_333
nop

P1946: !_DWLD [19] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_334:
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldxa [%i3 + 32] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0

P1947: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_334:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_334
nop

P1948: !_PREFETCH [29] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_335:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 1
loop_exit_2_335:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_335
nop

P1949: !_ST [15] (maybe <- 0x1000029) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_336:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 32 ]
add   %l4, 1, %l4
loop_exit_2_336:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_336
nop

P1950: !_LD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_337:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1951: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_337:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_337
nop

P1952: !_DWLD [25] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_338:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1952
nop
RET1952:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1953: !_ST [21] (maybe <- 0x100002a) (Int) (Loop exit) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1953
nop
RET1953:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_338:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_338
nop

P1954: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_339:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1955: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1956: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_2_339:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_339
nop

P1957: !_LD [14] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_340:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1957
nop
RET1957:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1958: !_REPLACEMENT [3] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l6
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
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_340:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_340
nop

P1959: !_LD [6] (FP) (Loop entry) (Loop exit) (CBR) (Branch target of P1499)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_341:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ld [%i1 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1959
nop
RET1959:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_341:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_341
nop
ba P1960
nop

TARGET1499:
ba RET1499
nop


P1960: !_LD [25] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_342:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1961: !_LD [4] (Int) (Loop exit) (CBR)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1961
nop
RET1961:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_342:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_342
nop

P1962: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_343:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1963: !_LD [18] (Int) (Loop exit) (Branch target of P1861)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_343:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_343
nop
ba P1964
nop

TARGET1861:
ba RET1861
nop


P1964: !_LD [20] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_344:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1965: !_LD [4] (Int) (Loop exit) (Branch target of P1418)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_344:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_344
nop
ba P1966
nop

TARGET1418:
ba RET1418
nop


P1966: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_345:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1967: !_LD [16] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered

P1968: !_LD [13] (Int) (Loop exit)
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_345:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_345
nop

P1969: !_LD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_346:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1970: !_SWAP [4] (maybe <- 0x100002b) (Int) (Loop exit)
mov %l4, %l7
swap  [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_346:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_346
nop

P1971: !_MEMBAR (Int)
membar #StoreLoad

END_NODES2: ! Test instruction sequence for CPU 2 ends
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
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

! Initialize LFSR to 0x2285^4
sethi %hi(0x2285), %l0
or    %l0, %lo(0x2285), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES3: ! Test instruction sequence for CPU 3 begins

P1972: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_0:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1973: !_BLD [24] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1974: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
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

P1975: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_1:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1976: !_DWLD [27] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %l3
! move %l3(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l3, 32, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_1
nop

P1977: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_2:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1978: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1979: !_LD [6] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #2
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0x180000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_2
nop

P1980: !_DWLD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_3:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1981: !_BLD [19] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1982: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_3
nop

P1983: !_BLD [15] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_4:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1984: !_LD [16] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1985: !_LD [6] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_4
nop

P1986: !_DWLD [4] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_5:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1986
nop
RET1986:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_5
nop

P1987: !_BLD [24] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_6:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1988: !_DWLD [3] (Int) (LE)
wr %g0, 0x88, %asi
ldxa [%i0 + 32] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0

P1989: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_6
nop

P1990: !_LD [29] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_7:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1991: !_LD [12] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered

P1992: !_LD [31] (Int) (Loop exit)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_7
nop

P1993: !_BLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_8:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_8
nop

P1994: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_9:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1995: !_ST [23] (maybe <- 0x1800001) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 32 ]
add   %l4, 1, %l4

P1996: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_9
nop

P1997: !_LD [20] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_10:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1998: !_BLD [26] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P1999: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_10
nop

P2000: !_DWLD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_11:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2001: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 32], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_11
nop

P2002: !_DWLD [28] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_12:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_12
nop

P2003: !_SWAP [30] (maybe <- 0x1800002) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_13:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2004: !_LD [8] (Int) (Loop exit) (Branch target of P2432)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_13
nop
ba P2005
nop

TARGET2432:
ba RET2432
nop


P2005: !_SWAP [11] (maybe <- 0x1800003) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_14:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2006: !_LD [26] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2006
nop
RET2006:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_14
nop

P2007: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_15:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2008: !_LD [18] (Int) (Loop exit) (Branch target of P2385)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_15
nop
ba P2009
nop

TARGET2385:
ba RET2385
nop


P2009: !_LD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_16:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
ld [%i1 + 0], %f0
! 1 addresses covered

P2010: !_BLD [9] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
fmovd %f40, %f4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_16
nop

P2011: !_NOP (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_17:
nop
loop_exit_3_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_17
nop

P2012: !_BLD [23] (FP) (Loop entry) (Branch target of P2441)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_18:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P2013
nop

TARGET2441:
ba RET2441
nop


P2013: !_DWLD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_18
nop

P2014: !_DWLD [25] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_19:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2015: !_LD [7] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2016: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_19
nop

P2017: !_DWST [22] (maybe <- 0x1800004) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_20:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l3 
stx %l3, [%i2 + 8]
add   %l4, 1, %l4
loop_exit_3_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_20
nop

P2018: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_21:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2019: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_21
nop

P2020: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_22:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2021: !_DWLD [19] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 32], %f0
! 1 addresses covered

P2022: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_22
nop

P2023: !_DWST [2] (maybe <- 0x1800005) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_23:
mov %l4, %l6 
stx %l6, [%i0 + 8]
add   %l4, 1, %l4
loop_exit_3_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_23
nop

P2024: !_LD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_24:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2025: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_24
nop

P2026: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_25:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2027: !_MEMBAR (Int)
membar #StoreLoad

P2028: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_25
nop

P2029: !_LD [17] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_26:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2030: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_26
nop

P2031: !_REPLACEMENT [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_27:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l3
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

P2032: !_DWLD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_27
nop

P2033: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_28:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2034: !_BLD [28] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_28
nop

P2035: !_BLD [18] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_29:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2036: !_NOP (Int) (Loop exit)
nop
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_29
nop

P2037: !_LD [29] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_30:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2038: !_LD [23] (Int) (Loop exit) (Branch target of P2455)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_30
nop
ba P2039
nop

TARGET2455:
ba RET2455
nop


P2039: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_31:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_31
nop

P2040: !_DWLD [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_32:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_32
nop

P2041: !_DWLD [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_33:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_33
nop

P2042: !_BSTC [20] (maybe <- 0x41000001) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_34:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_3_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_34
nop

P2043: !_DWLD [18] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_35:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_35
nop

P2044: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_36:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2045: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_36
nop

P2046: !_DWLD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_37:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2047: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_37
nop

P2048: !_CASX [15] (maybe <- 0x1800006) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_38:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 32, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
sllx %l4, 32, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_38
nop

P2049: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_39:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2050: !_BLD [12] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2051: !_LD [9] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_39
nop

P2052: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_40:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2053: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_40
nop

P2054: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_41:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2055: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_41
nop

P2056: !_BLD [6] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_42:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2057: !_ST [13] (maybe <- 0x1800007) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_42
nop

P2058: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_43:
membar #StoreLoad
loop_exit_3_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_43
nop

P2059: !_LD [20] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_44:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_44
nop

P2060: !_DWLD [11] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_45:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2060
nop
RET2060:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2061: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_45
nop

P2062: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_46:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2063: !_BLD [25] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2064: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_46
nop

P2065: !_DWLD [4] (Int) (Loop entry) (Branch target of P2296)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_47:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
ba P2066
nop

TARGET2296:
ba RET2296
nop


P2066: !_BLD [6] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_47
nop

P2067: !_DWLD [24] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_48:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2068: !_DWLD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o1
! move %o1(upper) -> %o1(upper)

P2069: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_48
nop

P2070: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_49:
membar #StoreLoad
loop_exit_3_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_49
nop

P2071: !_SWAP [29] (maybe <- 0x1800008) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_50:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2072: !_BLD [1] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2073: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_50
nop

P2074: !_LD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_51:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2075: !_ST [4] (maybe <- 0x1800009) (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

P2076: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_51
nop

P2077: !_ST [8] (maybe <- 0x180000a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_52:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_3_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_52
nop

P2078: !_LD [29] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_53:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2079: !_FLUSHI [5] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
flush %g0 

P2080: !_LD [24] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_53
nop

P2081: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_54:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_54
nop

P2082: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_55:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2083: !_CASX [15] (maybe <- 0x180000b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
sllx %l4, 32, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_55
nop

P2084: !_BLD [20] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_56:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2085: !_DWLD [28] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_56
nop

P2086: !_DWLD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_57:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2087: !_BLD [10] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2088: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_57
nop

P2089: !_BLD [13] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_58:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2090: !_BLD [2] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_58
nop

P2091: !_BLD [11] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_59:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2092: !_LD [2] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2093: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_59
nop

P2094: !_PREFETCH [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_60:
prefetch [%i0 + 0], 1

P2095: !_BLD [12] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_60
nop

P2096: !_LD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_61:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2097: !_DWLD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_61
nop

P2098: !_DWLD [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_62:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2099: !_LD [15] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2099
nop
RET2099:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_62
nop

P2100: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_63:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2101: !_NOP (Int)
nop

P2102: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_63
nop

P2103: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_64:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2104: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_64
nop

P2105: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_65:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2106: !_BLD [28] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_65
nop

P2107: !_CASX [21] (maybe <- 0x180000c) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_66:
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
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldxa [%i2] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
mov %l3, %l6
mov  %o5, %l3
casxa [%i2] %asi, %l6, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
add  %l4, 1, %l4

P2108: !_DWLD [3] (Int)
ldx [%i0 + 32], %o2
! move %o2(upper) -> %o2(upper)

P2109: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_66
nop

P2110: !_DWLD [27] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_67:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2 + 32] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0

P2111: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_67
nop

P2112: !_DWLD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_68:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2113: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_68
nop

P2114: !_CAS [15] (maybe <- 0x180000e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_69:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %l3
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
loop_exit_3_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_69
nop

P2115: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_70:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_70
nop

P2116: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_71:
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2117: !_BLD [9] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2117
nop
RET2117:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2118: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_71
nop

P2119: !_LD [8] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_72:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2119
nop
RET2119:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2120: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_72
nop

P2121: !_LD [8] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_73:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2122: !_BLD [27] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2123: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_73
nop

P2124: !_LD [9] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_74:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2124
nop
RET2124:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2125: !_DWLD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_74
nop

P2126: !_DWLD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_75:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2127: !_BLD [5] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_75
nop

P2128: !_BLD [29] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_76:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2129: !_BLD [11] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_76
nop

P2130: !_CAS [27] (maybe <- 0x180000f) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_77:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %l6
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

P2131: !_DWLD [1] (Int) (Loop exit)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_77
nop

P2132: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_78:
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2133: !_DWLD [24] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P2134: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_78
nop

P2135: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_79:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_79
nop

P2136: !_CAS [6] (maybe <- 0x1800010) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_80:
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

P2137: !_ST [7] (maybe <- 0x1800011) (Int) (Loop exit) (LE)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
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
stwa   %o5, [%i1 + 32] %asi
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_80
nop

P2138: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_81:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2139: !_MEMBAR (Int)
membar #StoreLoad

P2140: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_81
nop

P2141: !_LD [18] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_82:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2142: !_DWLD [27] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 32], %f0
! 1 addresses covered

P2143: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_82
nop

P2144: !_CASX [16] (maybe <- 0x1800012) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_83:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_83
nop

P2145: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_84:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2146: !_BLD [23] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_84
nop

P2147: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_85:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_85
nop

P2148: !_DWLD [2] (Int) (Loop entry) (Branch target of P2375)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_86:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2149
nop

TARGET2375:
ba RET2375
nop


P2149: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_86
nop

P2150: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_87:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2151: !_DWLD [28] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1

P2152: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_87
nop

P2153: !_BLD [25] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_88:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_88
nop

P2154: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_89:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2155: !_LD [6] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2156: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_89
nop

P2157: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_90:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2158: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2159: !_LD [7] (Int) (Loop exit) (Branch target of P2418)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_90
nop
ba P2160
nop

TARGET2418:
ba RET2418
nop


P2160: !_BLD [30] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_91:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2161: !_LD [26] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2162: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_91
nop

P2163: !_DWLD [17] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_92:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_92
nop

P2164: !_LD [28] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_93:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2165: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_93
nop

P2166: !_BLD [2] (FP) (Loop entry) (Branch target of P2060)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_94:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P2167
nop

TARGET2060:
ba RET2060
nop


P2167: !_DWLD [7] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2168: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_94
nop

P2169: !_BLD [23] (FP) (Loop entry) (Branch target of P2436)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_95:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P2170
nop

TARGET2436:
ba RET2436
nop


P2170: !_BLD [16] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_95
nop

P2171: !_BLD [30] (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_96:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2171
nop
RET2171:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2172: !_BLD [13] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_96
nop

P2173: !_LD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_97:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2174: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_97
nop

P2175: !_LD [29] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_98:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2176: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_98
nop

P2177: !_LD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_99:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2178: !_DWLD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2179: !_LD [27] (Int) (Loop exit) (Branch target of P2274)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_99
nop
ba P2180
nop

TARGET2274:
ba RET2274
nop


P2180: !_BLD [17] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_100:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_100
nop

P2181: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_101:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2182: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_101
nop

P2183: !_LD [6] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_102:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ld [%i1 + 12], %f0
! 1 addresses covered

P2184: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2185: !_LD [22] (Int) (Loop exit)
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

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_102
nop

P2186: !_DWLD [21] (Int) (Loop entry) (Branch target of P2354)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_103:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
ba P2187
nop

TARGET2354:
ba RET2354
nop


P2187: !_BLD [24] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_103
nop

P2188: !_MEMBAR (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_104:
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2188
nop
RET2188:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2189: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_104
nop

P2190: !_BLD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_105:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2191: !_BLD [5] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_105
nop

P2192: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_106:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2193: !_BLD [24] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_106
nop

P2194: !_BSTC [30] (maybe <- 0x41000005) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_107:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2195: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2196: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_107
nop

P2197: !_BLD [18] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_108:
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_108
nop

P2198: !_LD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_109:
ld [%i1 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_109
nop

P2199: !_BLD [17] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_110:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_110
nop

P2200: !_LD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_111:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2201: !_BLD [0] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2202: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_111
nop

P2203: !_BLD [27] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_112:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2204: !_REPLACEMENT [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x10000), %l3
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
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_112
nop

P2205: !_LD [29] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_113:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2206: !_LD [29] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_113
nop

P2207: !_PREFETCH [21] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_114:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1
loop_exit_3_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_114
nop

P2208: !_BLD [23] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_115:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2209: !_NOP (Int) (Loop exit)
nop
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_115
nop

P2210: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_116:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2211: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
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

P2212: !_LD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_117:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2213: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_117
nop

P2214: !_DWLD [17] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_118:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2215: !_LD [12] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2216: !_LD [13] (Int) (Loop exit)
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_118
nop

P2217: !_DWLD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_119:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2218: !_FLUSHI [4] (Int)
flush %g0 

P2219: !_LD [24] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_119
nop

P2220: !_BSTC [8] (maybe <- 0x41000009) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_120:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2221: !_DWLD [19] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2222: !_LD [29] (Int) (Loop exit) (Branch target of P2099)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_120
nop
ba P2223
nop

TARGET2099:
ba RET2099
nop


P2223: !_BLD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_121:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_121
nop

P2224: !_FLUSHI [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_122:
flush %g0 

P2225: !_BLD [5] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_122
nop

P2226: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_123:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2227: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_123
nop

P2228: !_DWLD [22] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_124:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2228
nop
RET2228:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2229: !_LD [25] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

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

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_124
nop

P2230: !_LD [24] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_125:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2231: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_125
nop

P2232: !_BLD [24] (FP) (Loop entry) (Branch target of P2523)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_126:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P2233
nop

TARGET2523:
ba RET2523
nop


P2233: !_ST [21] (maybe <- 0x1800014) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_126
nop

P2234: !_BLD [11] (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_127:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2234
nop
RET2234:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2235: !_BLD [20] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_127
nop

P2236: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_128:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2237: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_128
nop

P2238: !_NOP (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_129:
nop

P2239: !_LD [9] (Int) (Branch target of P2419)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2240
nop

TARGET2419:
ba RET2419
nop


P2240: !_LD [9] (Int) (Loop exit)
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_129
nop

P2241: !_DWLD [17] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_130:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 2 addresses covered

P2242: !_DWLD [4] (Int) (Loop exit)
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_130
nop

P2243: !_LD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_131:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2244: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_131
nop

P2245: !_DWLD [29] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_132:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_132
nop

P2246: !_DWLD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_133:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2247: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_133
nop

P2248: !_PREFETCH [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_134:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 32], 1

P2249: !_BLD [0] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_134
nop

P2250: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_135:
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2251: !_LD [25] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_135
nop

P2252: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_136:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2253: !_BLD [9] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2254: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_136
nop

P2255: !_SWAP [31] (maybe <- 0x1800015) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_137:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2256: !_DWLD [24] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2257: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_137
nop

P2258: !_BLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_138:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_138
nop

P2259: !_LD [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_139:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2260: !_DWLD [27] (Int) (Loop exit)
ldx [%i3 + 32], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_139
nop

P2261: !_CASX [4] (maybe <- 0x1800016) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_140:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_140
nop

P2262: !_DWLD [29] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_141:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2263: !_DWLD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_141
nop

P2264: !_BLD [2] (FP) (Loop entry) (Branch target of P2273)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_142:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P2265
nop

TARGET2273:
ba RET2273
nop


P2265: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2266: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_142
nop

P2267: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_143:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2268: !_BLD [3] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2269: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_143
nop

P2270: !_DWLD [24] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_144:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2271: !_CAS [11] (maybe <- 0x1800018) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 32, %l7
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_144
nop

P2272: !_LD [31] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_145:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2273: !_LD [31] (Int) (Loop exit) (CBR)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2273
nop
RET2273:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_145
nop

P2274: !_LD [9] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_146:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2274
nop
RET2274:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2275: !_DWLD [18] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P2276: !_LD [17] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_146
nop

P2277: !_DWLD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_147:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2278: !_DWLD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %l3
! move %l3(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l3, 32, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_147
nop

P2279: !_BSTC [12] (maybe <- 0x4100000d) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_148:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2280: !_BLD [2] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_148
nop

P2281: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_149:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2282: !_LD [10] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

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


P2283: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_149
nop

P2284: !_BLD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_150:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_150
nop

P2285: !_DWLD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_151:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2286: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_151
nop

P2287: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_152:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2288: !_BLD [17] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_152
nop

P2289: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_153:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2290: !_LD [29] (Int) (Loop exit)
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_153
nop

P2291: !_DWLD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_154:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2292: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_154
nop

P2293: !_LD [12] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_155:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2293
nop
RET2293:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2294: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_155
nop

P2295: !_BLD [14] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_156:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_156
nop

P2296: !_DWLD [9] (Int) (Loop entry) (CBR) (Branch target of P2561)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_157:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

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

ba P2297
nop

TARGET2561:
ba RET2561
nop


P2297: !_DWLD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_157
nop

P2298: !_BLD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_158:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_158
nop

P2299: !_DWST [5] (maybe <- 0x1800019) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_159:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
sllx %l4, 32, %l3 
add   %l4, 1, %l4
or %l3, %l4, %l3
stx %l3, [%i1 + 0]
add   %l4, 1, %l4

P2300: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2301: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_159
nop

P2302: !_BLD [22] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_160:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2303: !_DWLD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_160
nop

P2304: !_BLD [19] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_161:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_161
nop

P2305: !_REPLACEMENT [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_162:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %o5
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

P2306: !_BLD [2] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_162
nop

P2307: !_PREFETCH [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_163:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 1
loop_exit_3_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_163
nop

P2308: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_164:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_164
nop

P2309: !_DWLD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_165:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2310: !_LD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2311: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_165
nop

P2312: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_166:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2313: !_DWLD [6] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 8], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_166
nop

P2314: !_DWLD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_167:
ldd [%i0 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_167
nop

P2315: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_168:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2316: !_LD [11] (Int) (Loop exit)
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_168
nop

P2317: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_169:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2318: !_LD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2319: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_169
nop

P2320: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_170:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2321: !_LD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2322: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_170
nop

P2323: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_171:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2324: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_171
nop

P2325: !_PREFETCH [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_172:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 32], 1

P2326: !_CASX [6] (maybe <- 0x180001b) (Int) (Loop exit)
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
loop_exit_3_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_172
nop

P2327: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_173:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2328: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_173
nop

P2329: !_BLD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_174:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2330: !_LD [22] (FP) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f4
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_174
nop

P2331: !_NOP (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_175:
nop

P2332: !_BLD [10] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_175
nop

P2333: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_176:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2334: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_176
nop

P2335: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_177:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2336: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_177
nop

P2337: !_DWLD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_178:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2338: !_DWLD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %o5, 32, %l7
or %l7, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1

P2339: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_178
nop

P2340: !_FLUSHI [18] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_179:
flush %g0 
loop_exit_3_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_179
nop

P2341: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_180:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2342: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2343: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_180
nop

P2344: !_FLUSHI [4] (Int) (Loop entry) (Loop exit) (Branch target of P2171)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_181:
flush %g0 
loop_exit_3_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_181
nop
ba P2345
nop

TARGET2171:
ba RET2171
nop


P2345: !_DWLD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_182:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2346: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_182
nop

P2347: !_CAS [28] (maybe <- 0x180001c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_183:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P2348: !_DWLD [7] (Int) (CBR)
ldx [%i1 + 32], %o1
! move %o1(upper) -> %o1(upper)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2348
nop
RET2348:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2349: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_183
nop

P2350: !_REPLACEMENT [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_184:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %o5
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

P2351: !_DWLD [3] (FP) (Loop exit)
ldd [%i0 + 32], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_184
nop

P2352: !_DWLD [20] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_185:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0

P2353: !_LD [1] (FP) (Loop exit)
ld [%i0 + 4], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_185
nop

P2354: !_LD [30] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_186:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2354
nop
RET2354:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_186
nop

P2355: !_BLD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_187:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2356: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_187
nop

P2357: !_DWLD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_188:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2358: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_188
nop

P2359: !_REPLACEMENT [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_189:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %o5
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

P2360: !_SWAP [23] (maybe <- 0x180001d) (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
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
swapa  [%i3 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2361: !_LD [28] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_189
nop

P2362: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_190:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2363: !_BLD [21] (FP) (CBR)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2363
nop
RET2363:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2364: !_LD [13] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_190
nop

P2365: !_BSTC [20] (maybe <- 0x41000011) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_191:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_3_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_191
nop

P2366: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_192:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2367: !_LD [27] (Int) (Loop exit) (Branch target of P2006)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_192
nop
ba P2368
nop

TARGET2006:
ba RET2006
nop


P2368: !_BLD [11] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_193:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2369: !_DWLD [3] (Int)
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2370: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_193
nop

P2371: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_194:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2372: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_194
nop

P2373: !_BLD [26] (FP) (Loop entry) (Loop exit) (Branch target of P2293)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_195:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_195
nop
ba P2374
nop

TARGET2293:
ba RET2293
nop


P2374: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_196:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_196
nop

P2375: !_LD [4] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_197:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2375
nop
RET2375:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2376: !_LD [6] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_197
nop

P2377: !_LD [31] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_198:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 32], %f0
! 1 addresses covered

P2378: !_LD [3] (Int)
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2379: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_198
nop

P2380: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_199:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2381: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_199
nop

P2382: !_DWLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_200:
ldd [%i0 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_200
nop

P2383: !_BLD [16] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_201:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2384: !_LD [5] (FP) (Loop exit)
ld [%i1 + 4], %f4
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_3_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_201
nop

P2385: !_BLD [2] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_202:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2385
nop
RET2385:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_202
nop

P2386: !_DWLD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_203:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2387: !_DWLD [24] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P2388: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_203
nop

P2389: !_LD [25] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_204:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

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


P2390: !_DWLD [25] (Int)
ldx [%i2 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2391: !_LD [14] (Int) (Loop exit) (CBR) (Branch target of P2348)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2391
nop
RET2391:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_204
nop
ba P2392
nop

TARGET2348:
ba RET2348
nop


P2392: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_205:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2393: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_205
nop

P2394: !_BLD [23] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_206:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_206
nop

P2395: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_207:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2396: !_BLD [13] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_207
nop

P2397: !_DWLD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_208:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2398: !_BLD [15] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_208
nop

P2399: !_NOP (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_209:
nop
loop_exit_3_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_209
nop

P2400: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_210:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2401: !_BLD [30] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2402: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_210
nop

P2403: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_211:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2404: !_DWLD [3] (Int) (Loop exit)
ldx [%i0 + 32], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_211
nop

P2405: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_212:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2406: !_LD [9] (Int) (Loop exit) (Branch target of P2391)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_212
nop
ba P2407
nop

TARGET2391:
ba RET2391
nop


P2407: !_DWLD [20] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_213:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2408: !_DWLD [30] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2409: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_213
nop

P2410: !_DWLD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_214:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2411: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_214
nop

P2412: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_215:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2413: !_DWLD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_215
nop

P2414: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_216:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2415: !_DWLD [30] (Int) (Loop exit) (Branch target of P2228)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_216
nop
ba P2416
nop

TARGET2228:
ba RET2228
nop


P2416: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_217:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2417: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2418: !_LD [26] (Int) (Loop exit) (LE) (CBR)
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2418
nop
RET2418:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_217
nop

P2419: !_LD [17] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_218:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2419
nop
RET2419:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2420: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_218
nop

P2421: !_DWLD [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_219:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_219
nop

P2422: !_DWLD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_220:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldd [%i2 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_220
nop

P2423: !_BLD [20] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_221:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2424: !_LD [8] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f4
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_3_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_221
nop

P2425: !_SWAP [1] (maybe <- 0x180001e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_222:
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2426: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_222
nop

P2427: !_LD [8] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_223:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2427
nop
RET2427:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_223
nop

P2428: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_224:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2429: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_224
nop

P2430: !_BLD [18] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_225:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2431: !_DWLD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_225
nop

P2432: !_BLD [17] (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_226:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2432
nop
RET2432:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2433: !_DWLD [26] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2434: !_LD [27] (Int) (Loop exit)
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_226
nop

P2435: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_227:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2436: !_DWLD [0] (Int) (CBR)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2436
nop
RET2436:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2437: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_227
nop

P2438: !_BLD [16] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_228:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_228
nop

P2439: !_DWLD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_229:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2440: !_MEMBAR (Int)
membar #StoreLoad

P2441: !_LD [24] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2441
nop
RET2441:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_229
nop

P2442: !_BLD [1] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_230:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2443: !_DWLD [10] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2444: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_230
nop

P2445: !_LD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_231:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2446: !_LD [25] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_231
nop

P2447: !_LD [14] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_232:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2448: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_232
nop

P2449: !_BLD [17] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_233:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2450: !_DWLD [7] (Int)
ldx [%i1 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2451: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_233
nop

P2452: !_BSTC [5] (maybe <- 0x41000015) (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_234:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i1 + 0 ] %asi
membar #Sync 

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2452
nop
RET2452:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_3_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_234
nop

P2453: !_LD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_235:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2454: !_NOP (Int)
nop

P2455: !_LD [5] (Int) (Loop exit) (CBR) (Branch target of P2427)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2455
nop
RET2455:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_235
nop
ba P2456
nop

TARGET2427:
ba RET2427
nop


P2456: !_LD [8] (FP) (Loop entry) (Branch target of P2452)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_236:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered
ba P2457
nop

TARGET2452:
ba RET2452
nop


P2457: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_236
nop

P2458: !_BST [1] (maybe <- 0x41000019) (FP) (Loop entry) (Loop exit) (Branch target of P2537)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_237:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_3_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_237
nop
ba P2459
nop

TARGET2537:
ba RET2537
nop


P2459: !_DWLD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_238:
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2460: !_CAS [15] (maybe <- 0x180001f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 32, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2461: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_238
nop

P2462: !_DWLD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_239:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2463: !_BLD [7] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_239
nop

P2464: !_DWLD [31] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_240:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2464
nop
RET2464:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2465: !_CAS [29] (maybe <- 0x1800020) (Int) (LE)
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
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduwa [%l3] %asi, %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
mov %l6, %o1
casa [%l3] %asi, %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2466: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_240
nop

P2467: !_BLD [22] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_241:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_241
nop

P2468: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_242:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2469: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_242
nop

P2470: !_DWLD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_243:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2471: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_243
nop

P2472: !_DWLD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_244:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2473: !_LD [28] (Int) (Branch target of P2363)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
ba P2474
nop

TARGET2363:
ba RET2363
nop


P2474: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_244
nop

P2475: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_245:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2476: !_LD [14] (Int) (Loop exit)
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_245
nop

P2477: !_SWAP [0] (maybe <- 0x1800021) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_246:
mov %l4, %o0
swap  [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2478: !_BLD [5] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2479: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_246
nop

P2480: !_BSTC [23] (maybe <- 0x4100001d) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_247:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_3_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_247
nop

P2481: !_BLD [25] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_248:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_248
nop

P2482: !_LD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_249:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2483: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_249
nop

P2484: !_BLD [25] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_250:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2485: !_DWLD [10] (Int) (Branch target of P2282)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2486
nop

TARGET2282:
ba RET2282
nop


P2486: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_250
nop

P2487: !_LD [26] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_251:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2488: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_251
nop

P2489: !_SWAP [17] (maybe <- 0x1800022) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_252:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2490: !_DWLD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l7
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_252
nop

P2491: !_DWLD [20] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_253:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_253
nop

P2492: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_254:
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2493: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_254
nop

P2494: !_NOP (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_255:
nop

P2495: !_LD [30] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2496: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_255
nop

P2497: !_LD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_256:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2498: !_DWLD [1] (FP) (Branch target of P2557)
ldd [%i0 + 0], %f0
! 2 addresses covered
ba P2499
nop

TARGET2557:
ba RET2557
nop


P2499: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_256
nop

P2500: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_257:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2501: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_257
nop

P2502: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_258:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2503: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_258
nop

P2504: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_259:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2505: !_BLD [21] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2506: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_259
nop

P2507: !_LD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_260:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2508: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_260
nop

P2509: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_261:
membar #StoreLoad

P2510: !_BLD [21] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_261
nop

P2511: !_BST [30] (maybe <- 0x41000021) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_262:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
loop_exit_3_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_262
nop

P2512: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_263:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2513: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_263
nop

P2514: !_SWAP [12] (maybe <- 0x1800023) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_264:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2515: !_BLD [18] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2516: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_264
nop

P2517: !_BLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_265:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_265
nop

P2518: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_266:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2519: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2520: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_266
nop

P2521: !_DWLD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_267:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2522: !_LD [5] (Int) (Branch target of P2229)
lduw [%i1 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
ba P2523
nop

TARGET2229:
ba RET2229
nop


P2523: !_LD [8] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2523
nop
RET2523:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_267
nop

P2524: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_268:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2525: !_LD [31] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2526: !_LD [10] (Int) (Loop exit) (Branch target of P2464)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_268
nop
ba P2527
nop

TARGET2464:
ba RET2464
nop


P2527: !_BST [14] (maybe <- 0x41000025) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_269:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2528: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
loop_exit_3_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_269
nop

P2529: !_ST [4] (maybe <- 0x41000029) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_270:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 0 ]

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_270
nop

P2530: !_REPLACEMENT [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_271:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %l7
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

P2531: !_DWLD [0] (Int) (Loop exit)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_271
nop

P2532: !_FLUSHI [29] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_272:
flush %g0 

P2533: !_ST [3] (maybe <- 0x1800024) (Int) (Loop exit)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4
loop_exit_3_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_272
nop

P2534: !_DWLD [24] (Int) (Loop entry) (Branch target of P2234)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_273:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
ba P2535
nop

TARGET2234:
ba RET2234
nop


P2535: !_BLD [26] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_273
nop

P2536: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_274:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2537: !_LD [31] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2537
nop
RET2537:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_274
nop

P2538: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_275:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2539: !_DWLD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l3
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_275
nop

P2540: !_REPLACEMENT [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_276:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x10000), %o5
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

P2541: !_LD [31] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2542: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_276
nop

P2543: !_ST [9] (maybe <- 0x1800025) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_277:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_3_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_277
nop

P2544: !_BLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_278:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_278
nop

P2545: !_CAS [21] (maybe <- 0x1800026) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_279:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
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
loop_exit_3_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_279
nop

P2546: !_CASX [26] (maybe <- 0x1800027) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_280:
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
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
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
loop_exit_3_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_280
nop

P2547: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_281:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2548: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_281
nop

P2549: !_LD [31] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_282:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2550: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_282
nop

P2551: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_283:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2552: !_BSTC [31] (maybe <- 0x4100002a) (FP) (Loop exit)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_283
nop

P2553: !_DWLD [25] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_284:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_284
nop

P2554: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_285:
membar #StoreLoad

P2555: !_BLD [16] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_285
nop

P2556: !_DWLD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_286:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2557: !_LD [19] (Int) (Loop exit) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2557
nop
RET2557:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_286
nop

P2558: !_DWLD [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_287:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_287
nop

P2559: !_BLD [12] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_288:
wr %g0, 0xf0, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2560: !_ST [24] (maybe <- 0x1800028) (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_288
nop

P2561: !_DWLD [0] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_289:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2561
nop
RET2561:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_289
nop

P2562: !_SWAP [18] (maybe <- 0x1800029) (Int) (Loop entry) (Branch target of P2565)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_290:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
mov %l4, %o0
swap  [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4
ba P2563
nop

TARGET2565:
ba RET2565
nop


P2563: !_DWLD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2564: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_290
nop

P2565: !_DWLD [4] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_291:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2565
nop
RET2565:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2566: !_NOP (Int) (Loop exit)
nop
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_291
nop

P2567: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_292:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2568: !_LD [6] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_292
nop

P2569: !_LD [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_293:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2570: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_293
nop

P2571: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_294:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2572: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_294
nop

P2573: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_295:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2574: !_BLD [14] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2575: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_295
nop

P2576: !_SWAP [18] (maybe <- 0x180002a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_296:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
mov %l4, %o0
swap  [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2577: !_LD [21] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P2578: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_296
nop

P2579: !_BLD [9] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_297:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_297
nop

P2580: !_BLD [20] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_298:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2581: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_3_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_298
nop

P2582: !_DWLD [29] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_299:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2583: !_BLD [13] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_299
nop

P2584: !_LD [11] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_300:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2585: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_300
nop

P2586: !_LD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_301:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2587: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_301
nop

P2588: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_302:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2589: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_302
nop

P2590: !_BSTC [3] (maybe <- 0x4100002e) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_303:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 

P2591: !_DWLD [2] (Int) (LE)
wr %g0, 0x88, %asi
ldxa [%i0 + 8] %asi, %l6
! move %l6(upper) -> %o0(upper)
or %l6, %g0, %o0

P2592: !_LD [27] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_303
nop

P2593: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_304:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2594: !_BLD [2] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2595: !_LD [4] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #2
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0x180000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_304
nop

P2596: !_DWLD [15] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_305:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 32], %f0
! 1 addresses covered

P2597: !_DWLD [6] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2598: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_305
nop

P2599: !_DWLD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_306:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2600: !_LD [3] (Int) (Loop exit)
lduw [%i0 + 32], %l7
! move %l7(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_306
nop

P2601: !_PREFETCH [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_307:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 1
loop_exit_3_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_307
nop

P2602: !_BLD [28] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_308:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2603: !_BLD [7] (FP) (Loop exit) (Branch target of P2188)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_308
nop
ba P2604
nop

TARGET2188:
ba RET2188
nop


P2604: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_309:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2605: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_309
nop

P2606: !_BST [23] (maybe <- 0x41000032) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_310:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2607: !_LD [30] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2608: !_LD [18] (Int) (Loop exit) (Branch target of P2119)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_310
nop
ba P2609
nop

TARGET2119:
ba RET2119
nop


P2609: !_BLD [8] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_311:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_311
nop

P2610: !_LD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_312:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2611: !_BLD [4] (FP)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2612: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_312
nop

P2613: !_BLD [22] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_313:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2614: !_LD [22] (Int)
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2615: !_LD [2] (Int) (Loop exit) (Branch target of P2117)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_313
nop
ba P2616
nop

TARGET2117:
ba RET2117
nop


P2616: !_DWLD [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_314:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_314
nop

P2617: !_DWLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_315:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_3_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_315
nop

P2618: !_BLD [16] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_316:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_316
nop

P2619: !_DWLD [25] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_317:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_317
nop

P2620: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_318:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2621: !_BLD [15] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2622: !_LD [7] (Int) (Loop exit)
lduw [%i1 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_318
nop

P2623: !_CASX [5] (maybe <- 0x180002b) (Int) (Loop entry) (Branch target of P1986)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_319:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
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
ba P2624
nop

TARGET1986:
ba RET1986
nop


P2624: !_BLD [30] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_319
nop

P2625: !_BLD [4] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_320:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2626: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2627: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_320
nop

P2628: !_LD [30] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_321:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2629: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_321
nop

P2630: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_322:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2631: !_LD [20] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2632: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_322
nop

P2633: !_DWLD [12] (Int) (Loop entry) (Branch target of P2389)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_323:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
ba P2634
nop

TARGET2389:
ba RET2389
nop


P2634: !_LD [30] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2635: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_323
nop

P2636: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_324:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2637: !_DWLD [1] (Int) (Loop exit)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_324
nop

P2638: !_LD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_325:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2639: !_BLD [11] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2640: !_LD [30] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_3_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_325
nop

P2641: !_BLD [6] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_326:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_326
nop

P2642: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_327:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2643: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_327
nop

P2644: !_DWLD [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_328:
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_328
nop

P2645: !_BSTC [29] (maybe <- 0x41000036) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_329:
wr %g0, 0xe0, %asi
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 
loop_exit_3_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_329
nop

P2646: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_330:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2647: !_LD [15] (Int) (Loop exit) (Branch target of P2124)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_330
nop
ba P2648
nop

TARGET2124:
ba RET2124
nop


P2648: !_DWLD [15] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_331:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 32], %f0
! 1 addresses covered

P2649: !_LD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2650: !_LD [21] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_331
nop

P2651: !_LD [26] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_332:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2652: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_332
nop

P2653: !_MEMBAR (Int)
membar #StoreLoad

END_NODES3: ! Test instruction sequence for CPU 3 ends
sethi %hi(0xdead0e0f), %l6
or    %l6, %lo(0xdead0e0f), %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
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

! Initialize LFSR to 0x2200^4
sethi %hi(0x2200), %l0
or    %l0, %lo(0x2200), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES4: ! Test instruction sequence for CPU 4 begins

P2654: !_LD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_0:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2655: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_0
nop

P2656: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_1:
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2657: !_DWLD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P2658: !_LD [6] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_1
nop

P2659: !_DWLD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_2:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2660: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_2
nop

P2661: !_ST [8] (maybe <- 0x41800001) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_3:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P2662: !_DWLD [30] (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldd [%i2 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_3
nop

P2663: !_NOP (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_4:
nop

P2664: !_BLD [0] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_4
nop

P2665: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_5:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2666: !_BLD [8] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2667: !_LD [5] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_5
nop

P2668: !_BLD [22] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_6:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_6
nop

P2669: !_BLD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_7:
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2670: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_7
nop

P2671: !_DWLD [8] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_8:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2671
nop
RET2671:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_8
nop

P2672: !_BLD [28] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_9:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2673: !_BLD [17] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_4_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_9
nop

P2674: !_BLD [27] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_10:
wr %g0, 0xf0, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_10
nop

P2675: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_11:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2676: !_LD [19] (Int) (Loop exit)
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_11
nop

P2677: !_BLD [22] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_12:
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2678: !_BLD [21] (FP) (Loop exit)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_4_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_12
nop

P2679: !_LD [25] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_13:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2680: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_13
nop

P2681: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_14:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2682: !_LD [27] (Int) (Loop exit) (Branch target of P2671)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_14
nop
ba P2683
nop

TARGET2671:
ba RET2671
nop


P2683: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_15:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2684: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_15
nop

P2685: !_BLD [24] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_16:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_16
nop

P2686: !_DWLD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_17:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2687: !_LD [23] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 32] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2688: !_LD [15] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 32] %asi, %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_17
nop

P2689: !_BLD [19] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_18:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2690: !_DWLD [2] (Int)
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2691: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_18
nop

P2692: !_BLD [26] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_19:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2693: !_LD [28] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2694: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_19
nop

P2695: !_BLD [28] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_20:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_20
nop

P2696: !_BLD [20] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_21:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_21
nop

P2697: !_DWLD [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_22:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_22
nop

P2698: !_DWLD [0] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_23:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2698
nop
RET2698:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_23
nop

P2699: !_LD [27] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_24:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2700: !_LD [25] (Int) (Loop exit)
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_24
nop

P2701: !_BLD [5] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_25:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2702: !_BLD [14] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_25
nop

P2703: !_BLD [29] (FP) (Loop entry) (Branch target of P3102)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_26:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
ba P2704
nop

TARGET3102:
ba RET3102
nop


P2704: !_DWLD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2705: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_26
nop

P2706: !_LD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_27:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2707: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_27
nop

P2708: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_28:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2709: !_DWLD [4] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
ldx [%i1 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P2710: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_28
nop

P2711: !_BLD [30] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_29:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_29
nop

P2712: !_CASX [12] (maybe <- 0x2000001) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_30:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
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
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_30
nop

P2713: !_LD [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_31:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2714: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_31
nop

P2715: !_BSTC [24] (maybe <- 0x41800002) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_32:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i3 + 0 ] %asi
membar #Sync 

P2716: !_BLD [13] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_32
nop

P2717: !_LD [26] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_33:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2718: !_BST [28] (maybe <- 0x41800006) (FP)
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2719: !_LD [15] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2719
nop
RET2719:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_33
nop

P2720: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_34:
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2721: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_34
nop

P2722: !_DWLD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_35:
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P2723: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_35
nop

P2724: !_DWLD [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_36:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_36
nop

P2725: !_BLD [23] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_37:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2726: !_DWLD [28] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_37
nop

P2727: !_DWLD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_38:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2728: !_DWLD [25] (Int)
ldx [%i2 + 0], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1

P2729: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_38
nop

P2730: !_LD [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_39:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2731: !_BLD [23] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2732: !_LD [29] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_39
nop

P2733: !_DWLD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_40:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2734: !_LD [20] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2735: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_40
nop

P2736: !_BLD [1] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_41:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_41
nop

P2737: !_DWLD [22] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_42:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2737
nop
RET2737:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_42
nop

P2738: !_FLUSHI [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_43:
flush %g0 

P2739: !_BLD [29] (FP) (Loop exit) (Branch target of P2719)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_43
nop
ba P2740
nop

TARGET2719:
ba RET2719
nop


P2740: !_LD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_44:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2741: !_LD [24] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_44
nop

P2742: !_LD [10] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_45:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P2743: !_BLD [29] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f18
fmovs %f18, %f1
fmovs %f19, %f2
fmovd %f34, %f18
fmovs %f19, %f3
fmovd %f40, %f4
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovs %f4, %f30
!--
loop_exit_4_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_45
nop

P2744: !_NOP (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_46:
nop

P2745: !_DWLD [25] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldxa [%i3 + 0] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %o5
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_46
nop

P2746: !_BLD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_47:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_47
nop

P2747: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_48:
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2748: !_BLD [6] (FP)
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2749: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_48
nop

P2750: !_ST [18] (maybe <- 0x2000003) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_49:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P2751: !_BLD [6] (FP) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_49
nop

P2752: !_DWLD [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_50:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_50
nop

P2753: !_DWLD [21] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_51:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_51
nop

P2754: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_52:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2755: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_52
nop

P2756: !_LD [26] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_53:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2757: !_LD [18] (Int) (Loop exit) (Branch target of P3037)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
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
ba P2758
nop

TARGET3037:
ba RET3037
nop


P2758: !_DWLD [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_54:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_54
nop

P2759: !_DWLD [25] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_55:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2760: !_LD [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2761: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_55
nop

P2762: !_DWLD [28] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_56:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2763: !_BLD [30] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_56
nop

P2764: !_DWLD [29] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_57:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2765: !_CASX [0] (maybe <- 0x2000004) (Int) (Loop exit)
ldx [%i0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i0], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_4_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_57
nop

P2766: !_DWLD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_58:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2767: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_58
nop

P2768: !_BLD [14] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_59:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2769: !_BLD [9] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_4_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_59
nop

P2770: !_DWLD [30] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_60:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2771: !_LD [7] (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_60
nop

P2772: !_ST [24] (maybe <- 0x2000006) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_61:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_4_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_61
nop

P2773: !_BLD [8] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_62:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2774: !_BLD [22] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f32
membar #Sync 
! 4 addresses covered
fmovd %f32, %f4
fmovd %f34, %f18
fmovs %f19, %f6
fmovd %f40, %f18
fmovs %f18, %f7
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
!--
loop_exit_4_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_62
nop

P2775: !_BLD [31] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_63:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_63
nop

P2776: !_LD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_64:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2777: !_ST [0] (maybe <- 0x4180000a) (FP)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P2778: !_LD [6] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_64
nop

P2779: !_LD [10] (Int) (Loop entry) (Branch target of P3094)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_65:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2780
nop

TARGET3094:
ba RET3094
nop


P2780: !_BLD [17] (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2781: !_LD [3] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 32] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_65
nop

P2782: !_DWLD [6] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_66:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2782
nop
RET2782:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P2783: !_DWLD [29] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2784: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_66
nop

P2785: !_ST [31] (maybe <- 0x2000007) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_67:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2786: !_DWLD [16] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldd [%i3 + 0], %f0
! 2 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
!--
loop_exit_4_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_67
nop

P2787: !_LD [20] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_68:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2788: !_LD [21] (Int) (Loop exit)
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_68
nop

P2789: !_LD [5] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_69:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %l3
sub   %i1, %l3, %i1
wr %g0, 0x88, %asi
lduwa [%i1 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2790: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_69
nop

P2791: !_BLD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_70:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_70
nop

P2792: !_LD [27] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_71:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2793: !_BST [9] (maybe <- 0x4180000b) (FP)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i2 + 0 ] %asi
membar #Sync 

P2794: !_LD [10] (Int) (Loop exit)
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_71
nop

P2795: !_BLD [7] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_72:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 7 

sethi %hi(0xc0000), %l6
sub   %i1, %l6, %i1
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_72
nop

P2796: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_73:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_73
nop

P2797: !_DWLD [26] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_74:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2797
nop
RET2797:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2798: !_LD [15] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 32], %f0
! 1 addresses covered

P2799: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_4_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_74
nop

P2800: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_75:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2801: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_75
nop

P2802: !_DWLD [24] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_76:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_76
nop

P2803: !_LD [13] (Int) (Loop entry) (Branch target of P3161)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_77:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2804
nop

TARGET3161:
ba RET3161
nop


P2804: !_LD [31] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_77
nop

P2805: !_LD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_78:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2806: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_78
nop

P2807: !_BLD [18] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_79:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_79
nop

P2808: !_DWLD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_80:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2809: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_80
nop

P2810: !_BLD [2] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_81:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i0 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_81
nop

P2811: !_DWST [13] (maybe <- 0x2000008) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_82:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
sllx %l4, 32, %o5 
add   %l4, 1, %l4
or %o5, %l4, %o5
stx %o5, [%i3 + 0]
add   %l4, 1, %l4
loop_exit_4_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_82
nop

P2812: !_BLD [7] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_83:
wr %g0, 0xf0, %asi
membar #Sync 
ldda [%i1 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2813: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_83
nop

P2814: !_LD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_84:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2815: !_SWAP [27] (maybe <- 0x200000a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
mov %l4, %l7
swap  [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_84
nop

P2816: !_BLD [17] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_85:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2817: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2818: !_LD [17] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_85
nop

P2819: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_86:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 6 

sethi %hi(0xc0000), %l7
sub   %i1, %l7, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2820: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_86
nop

P2821: !_BLD [29] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_87:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_87
nop

P2822: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_88:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2823: !_LD [13] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2823
nop
RET2823:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_88
nop

P2824: !_DWLD [24] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_89:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_89
nop

P2825: !_DWLD [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_90:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2826: !_BLD [31] (FP) (Loop exit)
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_90
nop

P2827: !_BLD [24] (FP) (Loop entry) (Loop exit) (Branch target of P3071)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_91:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
membar #Sync 
ldda [%i2 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_91
nop
ba P2828
nop

TARGET3071:
ba RET3071
nop


P2828: !_DWLD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_92:
ldx [%i1 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2829: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 32], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_92
nop

P2830: !_DWLD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_93:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2831: !_LD [9] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2832: !_LD [6] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_93
nop

P2833: !_DWLD [24] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_94:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2834: !_DWLD [0] (Int) (Loop exit) (Branch target of P3210)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_94
nop
ba P2835
nop

TARGET3210:
ba RET3210
nop


P2835: !_BLD [18] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_95:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2836: !_DWST [15] (maybe <- 0x4180000f) (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 32]
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_95
nop

P2837: !_DWLD [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_96:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0xc0000), %o5
sub   %i1, %o5, %i1
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0xc0000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_4_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_96
nop

P2838: !_BST [0] (maybe <- 0x41800010) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_97:
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
! preparing store val #3, next val will be in f40 
fmovd %f20, %f34
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
fmovd %f20, %f40
membar #Sync 
stda %f32, [%i0 + 0 ] %asi
membar #Sync 
loop_exit_4_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_97
nop

P2839: !_BLD [11] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_98:
wr %g0, 0xf0, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3

P2840: !_DWLD [5] (Int) (Loop exit)
ldx [%i1 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_98
nop

P2841: !_DWLD [9] (Int) (Loop entry) (Loop exit) (Branch target of P2823)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_99:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_99
nop
ba P2842
nop

TARGET2823:
ba RET2823
nop


P2842: !_LD [31] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_100:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2843: !_LD [26] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_4_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_100
nop

P2844: !_DWLD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_101:
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2845: !_DWLD [21] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2845
nop
RET2845:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_4_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_101
nop

P2846: !_DWST [15] (maybe <- 0x200000b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_4_102:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
mov %l4, %l3 
sllx %l3, 32, %l3 
stx %l3, [%i2 + 32 ] 
add   %l4, 1, %l4
loop_exit_4_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_102
nop

P2847: !_BLD [31] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_4_103:
wr %g0, 0xf0, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
membar #Sync 
ldda [%i3 + 0] %asi, %f0
membar #Sync 
! 4 addresses covered
fmovs %f3, %f2
fmovs %f8, %f3
!---- flushing fp results buffer to %f30 ----
fmovd %f0, %f30
fmovd %f2, %f30
!--
loop_exit_4_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_4_103
nop

P2848: !_DWST [18] (maybe <- 0x200000c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2