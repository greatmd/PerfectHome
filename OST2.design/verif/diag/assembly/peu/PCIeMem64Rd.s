/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: PCIeMem64Rd.s
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
#define PCIE_MEM64_OFFSET	0xc800000000

#define ENABLE_PCIE_LINK_TRAINING
#define MAIN_PAGE_HV_ALSO

#include "hboot.s"
#include "peu_defines.h"

! the default MEM64 OFFSET is 100000000. It is ORed with the base in the data section stmt
#define MEM64_BASE  mpeval(N2_PCIE_BASE_ADDR + MEM64_OFFSET_BASE_REG_DATA)

! a set of defines for which set each of the bits 39:32
#define MEM64_RD_ADR01 mpeval(MEM64_BASE | 0x0100000000 + 0x00)
#define MEM64_RD_ADR02 mpeval(MEM64_BASE | 0x0200000000 + 0x20)
#define MEM64_RD_ADR04 mpeval(MEM64_BASE | 0x0400000000 + 0x40)
#define MEM64_RD_ADR00 mpeval(MEM64_BASE | 0x0000000000 + 0x60)
		
#ifndef NO_SELF_CHECK
#define BNE_TEST_FAIL  bne	test_failed
#else
#define BNE_TEST_FAIL  nop
#endif
		
/************************************************************************
   Test case code start
 ************************************************************************/
.text
.global main

main:
        ta T_CHANGE_HPRIV
        nop

	! select a MEM address in PCI address range and transmit the command to NCU

	! 1 byte loads, all 16 offsets
	setx	MEM64_RD_ADR01, %g1, %g2
byte_os0:	
	nop     ! $EV trig_pc_d(1, @VA(.MAIN.byte_os0)) -> printf("\n byte_os0 \n")
	ldub	[%g2 + 0], %l0
	cmp	%l0, 0x10
	BNE_TEST_FAIL
	nop
byte_os1:
	ldub	[%g2 + 1], %l0
	cmp	%l0, 0x11
	BNE_TEST_FAIL
	nop
byte_os2:
	ldub	[%g2 + 2], %l0
	cmp	%l0, 0x12
	BNE_TEST_FAIL
	nop
byte_os3:
	ldub	[%g2 + 3], %l0
	cmp	%l0, 0x13
	BNE_TEST_FAIL
	nop
byte_os4:
	ldub	[%g2 + 4], %l0
	cmp	%l0, 0x14
	BNE_TEST_FAIL
	nop
byte_os5:
	ldub	[%g2 + 5], %l0
	cmp	%l0, 0x15
	BNE_TEST_FAIL
	nop
byte_os6:
	ldub	[%g2 + 6], %l0
	cmp	%l0, 0x16
	BNE_TEST_FAIL
	nop
byte_os7:
	ldub	[%g2 + 7], %l0
	cmp	%l0, 0x17
	BNE_TEST_FAIL
	nop
byte_os8:
	ldub	[%g2 + 8], %l0
	cmp	%l0, 0x18
	BNE_TEST_FAIL
	nop
byte_os9:
	ldub	[%g2 + 9], %l0
	cmp	%l0, 0x19
	BNE_TEST_FAIL
	nop
byte_os10:
	ldub	[%g2 + 10], %l0
	cmp	%l0, 0x1a
	BNE_TEST_FAIL
	nop
byte_os11:
	ldub	[%g2 + 11], %l0
	cmp	%l0, 0x1b
	BNE_TEST_FAIL
	nop
byte_os12:
	ldub	[%g2 + 12], %l0
	cmp	%l0, 0x1c
	BNE_TEST_FAIL
	nop
byte_os13:
	ldub	[%g2 + 13], %l0
	cmp	%l0, 0x1d
	BNE_TEST_FAIL
	nop
byte_os14:	
	ldub	[%g2 + 14], %l0
	cmp	%l0, 0x1e
	BNE_TEST_FAIL
	nop
byte_os15:	
	ldub	[%g2 + 15], %l0
	cmp	%l0, 0x1f
	BNE_TEST_FAIL
	nop
	
	! load half-word, 8 offsets within 16 bytes

	setx	MEM64_RD_ADR02, %g1, %g2
halfwd_os0:	
	nop     ! $EV trig_pc_d(1, @VA(.MAIN.halfwd_os0)) -> printf("\n halfwd_os0 \n")
	lduh	[%g2 + 0], %l0
	setx	0x2021, %g1, %g7
	cmp	%l0, %g7
	BNE_TEST_FAIL
	nop
halfwd_os2:	
	lduh	[%g2 + 2], %l0
	setx	0x2223, %g1, %g7
	cmp	%l0, %g7
	BNE_TEST_FAIL
	nop
halfwd_os4:	
	lduh	[%g2 + 4], %l0
	setx	0x2425, %g1, %g7
	cmp	%l0, %g7
	BNE_TEST_FAIL
	nop
halfwd_os6:	
	lduh	[%g2 + 6], %l0
	setx	0x2627, %g1, %g7
	cmp	%l0, %g7
	BNE_TEST_FAIL
	nop
halfwd_os8:
	lduh	[%g2 + 8], %l0
	setx	0x2829, %g1, %g7
	cmp	%l0, %g7
	BNE_TEST_FAIL
	nop
halfwd_os10:	
	lduh	[%g2 + 10], %l0
	setx	0x2a2b, %g1, %g7
	cmp	%l0, %g7
	BNE_TEST_FAIL
	nop
halfwd_os12:	
	lduh	[%g2 + 12], %l0
	setx	0x2c2d, %g1, %g7
	cmp	%l0, %g7
	BNE_TEST_FAIL
	nop
halfwd_os14:	
	lduh	[%g2 + 14], %l0
	setx	0x2e2f, %g1, %g7
	cmp	%l0, %g7
	BNE_TEST_FAIL
	nop

	! Load word, 4 offsets within 16 bytes
	
	setx	MEM64_RD_ADR04, %g1, %g2
fullwd_os0:	
	nop     ! $EV trig_pc_d(1, @VA(.MAIN.fullwd_os0)) -> printf("\n fullwd_os0 \n")
	lduw	[%g2 + 0], %l1
	setx	0x40414243, %g1, %g4
	cmp	%l1, %g4
	BNE_TEST_FAIL
	nop
fullwd_os4:	
	lduw	[%g2 + 4], %l1
	setx	0x44454647, %g1, %g4
	cmp	%l1, %g4
	BNE_TEST_FAIL
	nop
fullwd_os8:	
	lduw	[%g2 + 8], %l1
	setx	0x48494a4b, %g1, %g4
	cmp	%l1, %g4
	BNE_TEST_FAIL
	nop
fullwd_os12:	
	lduw	[%g2 + 12], %l1
	setx	0x4c4d4e4f, %g1, %g4
	cmp	%l1, %g4
	BNE_TEST_FAIL
	nop

	! Load dword (8 bytes), 2 offsets within 16 bytes
	
	setx	MEM64_RD_ADR00, %g1, %g2
dblwd_os0:	
	nop     ! $EV trig_pc_d(1, @VA(.MAIN.dblwd_os0)) -> printf("\n dblwd_os0 \n")
	ldx	[%g2], %l0
	setx	0x5051525354555657, %g1, %g4
	cmp	%l0, %g4
	BNE_TEST_FAIL
	nop
dblwd_os8:	
	ldx	[%g2 + 8], %l0
	setx	0x58595a5b5c5d5e5f, %g1, %g5
	cmp	%l0, %g5
	BNE_TEST_FAIL
	nop
  
	ldx	[%g2 + 16], %l0
	cmp	%l0, %g4
	BNE_TEST_FAIL
	nop
  
	ldx	[%g2 + 24], %l0
	cmp	%l0, %g5
	BNE_TEST_FAIL
	nop
  
	
test_passed:
	EXIT_GOOD

test_failed:
	EXIT_BAD


/************************************************************************
   Test case data start
	DATA0 - DATA3 are expected pio fetch areas
	DATAa - DATAc are for diagnosing incorrect pio fetches
************************************************************************/

SECTION       .DATAa DATA_VA=0xC000000000
attr_data {     
      Name = .DATAa,
      hypervisor,
      compressimage
}
.data
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0
	.xword 0xc0c0c0c0c0c0c0c0

SECTION       .DATAb DATA_VA=0xC100000000
attr_data {     
      Name = .DATAb,
      hypervisor,
      compressimage
}
.data
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1
	.xword 0xc1c1c1c1c1c1c1c1

SECTION       .DATAc DATA_VA=0x0100000000
attr_data {     
      Name = .DATAc,
      hypervisor,
      compressimage
}
.data
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101
	.xword 0x0101010101010101

SECTION       .DATA0 DATA_VA=mpeval(MEM64_RD_ADR01 | PCIE_MEM64_OFFSET)
attr_data {     
      Name = .DATA0,
      hypervisor,
      compressimage
}
.data
	.xword 0x1011121314151617
	.xword 0x18191a1b1c1d1e1f
	.xword 0x1011121314151617
	.xword 0x18191a1b1c1d1e1f

SECTION       .DATA1 DATA_VA=mpeval(MEM64_RD_ADR02 | PCIE_MEM64_OFFSET)
attr_data {     
      Name = .DATA1,
      hypervisor,
      compressimage
}
.data
	.xword 0x2021222324252627
	.xword 0x28292a2b2c2d2e2f
	.xword 0x2021222324252627
	.xword 0x28292a2b2c2d2e2f

SECTION       .DATA2 DATA_VA=mpeval(MEM64_RD_ADR04 | PCIE_MEM64_OFFSET)
attr_data {     
      Name = .DATA2,
      hypervisor,
      compressimage
}
.data
	.xword 0x4041424344454647
	.xword 0x48494a4b4c4d4e4f
	.xword 0x4041424344454647
	.xword 0x48494a4b4c4d4e4f

SECTION       .DATA3 DATA_VA=mpeval(MEM64_RD_ADR00 | PCIE_MEM64_OFFSET)
attr_data {     
      Name = .DATA3,
      hypervisor,
      compressimage
}
.data
	.xword 0x5051525354555657
	.xword 0x58595a5b5c5d5e5f
	.xword 0x5051525354555657
	.xword 0x58595a5b5c5d5e5f

/************************************************************************/
