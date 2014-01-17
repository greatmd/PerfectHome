/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: isa2_basic_fc4.s
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
.ident "FOCUSCASE: focus.pm,v 1.1 2003/04/23 17:53:39 somePerson Exp somePerson $ ./spc_basic_isa2.pl FOCUS_SEED=728761178"
.ident "BY rg131678 ON Mon Jul 14 13:41:19 CDT 2003"
.ident "Using Instruction Hash for Focus :$Id: isa2_basic_fc4.s,v 1.3 2007/07/05 21:59:33 drp Exp $"
#include "defines.h"
#include "nmacros.h"
#include "old_boot.s"

/************************************************************************
   Test case code start
 ************************************************************************/

.text
.global main

main:		/* test begin */


	ta	T_RD_THID
	mov	%o1, %l6
	umul	%l6, 256, %l7
	setx	DIAG_DATA_AREA, %g1, %g3
	add	%l7, %g3, %l7


	!# Initialize registers ..

	!# Global registers
	set	0x7,	%g1
	set	0x7,	%g2
	set	0x2,	%g3
	set	0xB,	%g4
	set	0xC,	%g5
	set	0x6,	%g6
	set	0x6,	%g7
	!# Input registers
	set	-0xE,	%i0
	set	-0x4,	%i1
	set	-0x1,	%i2
	set	-0x1,	%i3
	set	-0x1,	%i4
	set	-0xD,	%i5
	set	-0x6,	%i6
	set	-0x8,	%i7
	!# Local registers
	set	0x798D99CD,	%l0
	set	0x129D5294,	%l1
	set	0x7254B756,	%l2
	set	0x61B50F78,	%l3
	set	0x7E712A26,	%l4
	set	0x1322319E,	%l5
	set	0x31300E75,	%l6
	!# Output registers
	set	-0x067E,	%o0
	set	0x07C9,	%o1
	set	0x1752,	%o2
	set	0x1877,	%o3
	set	0x00E2,	%o4
	set	-0x16F8,	%o5
	set	0x09E6,	%o6
	set	0x0FD4,	%o7

	!# Float Registers
	INIT_TH_FP_REG(%l7, %f0, 0x55555555aaaaaaaa)
	INIT_TH_FP_REG(%l7, %f2, 0xaaaaaaaa55555555)
	INIT_TH_FP_REG(%l7, %f4, 0xfedcba9876543210)
	INIT_TH_FP_REG(%l7, %f6, 0x0123456789abcdef)
	INIT_TH_FP_REG(%l7, %f8, 0x55aa55aaff00ff00)
	INIT_TH_FP_REG(%l7, %f10, 0x1111111111111111)
	INIT_TH_FP_REG(%l7, %f12, 0x8888888888888888)
	INIT_TH_FP_REG(%l7, %f14, 0xfedcba9876543210)

	!# Execute some ALU ops ..

	ld	[%l7 + 0x2C],	%f11
	fmovrsgez	%g1,	%f6,	%f7
	fmovdvc	%xcc,	%f9,	%f9
	taddcctv	%g2,	0x14C6,	%l5
	brgez	%i7,	loop_1
	stw	%i3,	[%l7 + 0x48]
	fmovsa	%icc,	%f3,	%f4
	fmovde	%icc,	%f13,	%f12
loop_1:
	edge16ln	%o1,	%g4,	%o0
	andcc	%l0,	0x0781,	%o3
	bshuffle	%f12,	%f0,	%f6
	fmul8x16	%f5,	%f6,	%f8
	fpmerge	%f0,	%f9,	%f6
	ldx	[%l7 + 0x20],	%i4
	bleu,a,pn	%xcc,	loop_2
	std	%f0,	[%l7 + 0x50]
	or	%o4,	%g6,	%l3
	addc	%l2,	0x1BDB,	%i5
loop_2:
	ldsw	[%l7 + 0x44],	%i1
	fpsub16	%f0,	%f12,	%f10
	fmovsneg	%icc,	%f10,	%f0
	fnegd	%f8,	%f2
	te	%icc,	0x3
	xnorcc	%l1,	%o6,	%i6
	fnand	%f10,	%f8,	%f2
	ldsh	[%l7 + 0x34],	%o5
	umulcc	%g7,	0x1324,	%i2
	fbl	%fcc3,	loop_3
	ble,a,pn	%xcc,	loop_4
	pdist	%f8,	%f14,	%f0
	subcc	%g3,	%o7,	%i0
loop_3:
	lduw	[%l7 + 0x68],	%o2
loop_4:
	brlz	%l4,	loop_5
	ldx	[%l7 + 0x08],	%l6
	fpackfix	%f14,	%f7
	fsrc2s	%f10,	%f12
loop_5:
	brlez,a	%g1,	loop_6
	fmul8sux16	%f10,	%f14,	%f6
	fmovsvc	%icc,	%f0,	%f9
	bge	%icc,	loop_7
loop_6:
	edge32n	%g2,	%g5,	%i7
	fblg	%fcc3,	loop_8
	stx	%i3,	[%l7 + 0x70]
loop_7:
	movneg	%icc,	%l5,	%o1
	movcs	%icc,	%o0,	%g4
loop_8:
	bcc	%icc,	loop_9
	fmovsg	%icc,	%f10,	%f1
	ldsw	[%l7 + 0x38],	%o3
	tne	%icc,	0x2
loop_9:
	fmul8x16al	%f13,	%f2,	%f14
	tge	%icc,	0x0
	tn	%xcc,	0x0
	ldsh	[%l7 + 0x68],	%l0
	ldsh	[%l7 + 0x56],	%i4
	sth	%o4,	[%l7 + 0x14]
	popc	%g6,	%l3
	fmul8x16	%f12,	%f4,	%f0
	fmul8sux16	%f4,	%f2,	%f14
	fmovsne	%xcc,	%f7,	%f2
	fmovrsgez	%i5,	%f14,	%f6
	fbule	%fcc1,	loop_10
	orncc	%l2,	%i1,	%o6
	tgu	%icc,	0x3
	sethi	0x0022,	%i6
loop_10:
	fcmpd	%fcc2,	%f10,	%f14
	ldub	[%l7 + 0x3C],	%l1
	fnor	%f4,	%f8,	%f10
	fornot2s	%f4,	%f7,	%f5
	fmovscs	%icc,	%f12,	%f13
	fmovrsgez	%o5,	%f11,	%f12
	fbne,a	%fcc2,	loop_11
	udiv	%g7,	0x10C6,	%g3
	fmovrsne	%o7,	%f11,	%f12
	st	%f3,	[%l7 + 0x6C]
loop_11:
	fbo	%fcc1,	loop_12
	array32	%i0,	%i2,	%l4
	add	%l6,	0x028F,	%g1
	ldub	[%l7 + 0x0E],	%o2
loop_12:
	ldub	[%l7 + 0x69],	%g2
	lduw	[%l7 + 0x30],	%i7
	nop
	setx loop_13, %l0, %l1
	jmpl %l1, %i3
	stb	%l5,	[%l7 + 0x50]
	addcc	%o1,	%g5,	%o0
	array8	%g4,	%o3,	%i4
loop_13:
	nop
	setx loop_14, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	smul	%l0,	0x15C3,	%o4
	bcc	loop_15
	fmul8ulx16	%f14,	%f0,	%f4
loop_14:
	ta	%xcc,	0x0
	ldsh	[%l7 + 0x66],	%g6
loop_15:
	ldsw	[%l7 + 0x60],	%i5
	fmovda	%icc,	%f4,	%f7
	fbul	%fcc3,	loop_16
	fmovsn	%xcc,	%f4,	%f2
	sth	%l2,	[%l7 + 0x62]
	movle	%xcc,	%i1,	%o6
loop_16:
	stb	%l3,	[%l7 + 0x52]
	ldub	[%l7 + 0x44],	%l1
	fbuge,a	%fcc2,	loop_17
	fmovrsgez	%o5,	%f0,	%f1
	be	%icc,	loop_18
	ldub	[%l7 + 0x7C],	%i6
loop_17:
	udiv	%g3,	0x07B6,	%o7
	addccc	%g7,	0x1B14,	%i2
loop_18:
	ta	%icc,	0x7
	ld	[%l7 + 0x6C],	%f7
	fornot1s	%f9,	%f12,	%f8
	fzeros	%f4
	fmovdl	%icc,	%f10,	%f1
	bleu,a	%icc,	loop_19
	lduw	[%l7 + 0x58],	%i0
	for	%f14,	%f2,	%f2
	fpadd32	%f8,	%f10,	%f4
loop_19:
	fornot2s	%f5,	%f14,	%f10
	movne	%icc,	%l4,	%g1
	bcc	%xcc,	loop_20
	movgu	%icc,	%l6,	%g2
	fbu	%fcc0,	loop_21
	ld	[%l7 + 0x08],	%f3
loop_20:
	fblg	%fcc0,	loop_22
	lduh	[%l7 + 0x74],	%o2
loop_21:
	lduw	[%l7 + 0x30],	%i3
	movl	%xcc,	%l5,	%o1
loop_22:
	tle	%icc,	0x7
	st	%f11,	[%l7 + 0x6C]
	bvc,a,pn	%icc,	loop_23
	brlez,a	%g5,	loop_24
	ld	[%l7 + 0x60],	%f7
	fands	%f6,	%f13,	%f4
loop_23:
	bcc,a	%icc,	loop_25
loop_24:
	ldsw	[%l7 + 0x28],	%o0
	ldsh	[%l7 + 0x2E],	%i7
	ldub	[%l7 + 0x63],	%g4
loop_25:
	lduw	[%l7 + 0x34],	%o3
	faligndata	%f8,	%f8,	%f12
	bneg,pn	%xcc,	loop_26
	movleu	%icc,	%l0,	%i4
	andn	%g6,	%i5,	%l2
	edge8n	%i1,	%o4,	%o6
loop_26:
	ldub	[%l7 + 0x39],	%l1
	bne,a,pt	%xcc,	loop_27
	stb	%l3,	[%l7 + 0x7C]
	tl	%xcc,	0x7
	taddcctv	%o5,	0x06F8,	%g3
loop_27:
	fsrc2s	%f9,	%f15
	brlez	%o7,	loop_28
	lduw	[%l7 + 0x74],	%i6
	mova	%xcc,	%g7,	%i2
	std	%f10,	[%l7 + 0x40]
loop_28:
	add	%l4,	0x17E7,	%g1
	and	%l6,	0x0FCB,	%i0
	st	%f12,	[%l7 + 0x50]
	siam	0x3
	fbuge	%fcc2,	loop_29
	ldsw	[%l7 + 0x64],	%g2
	stb	%i3,	[%l7 + 0x1C]
	stx	%l5,	[%l7 + 0x68]
loop_29:
	fabsd	%f6,	%f12
	ldsw	[%l7 + 0x6C],	%o1
	fpack32	%f4,	%f14,	%f0
	fmovsa	%xcc,	%f4,	%f4
	edge16n	%o2,	%g5,	%i7
	edge8l	%g4,	%o3,	%l0
	edge16l	%i4,	%g6,	%o0
	ldub	[%l7 + 0x2A],	%l2
	addccc	%i5,	0x0BB3,	%o4
	xnor	%i1,	%l1,	%o6
	movg	%icc,	%l3,	%o5
	addc	%o7,	0x1C5A,	%i6
	taddcc	%g7,	0x0C7D,	%g3
	fcmpeq16	%f12,	%f0,	%l4
	ldub	[%l7 + 0x7E],	%g1
	fbue	%fcc1,	loop_30
	movneg	%icc,	%i2,	%l6
	fmovsg	%xcc,	%f7,	%f10
	fbu,a	%fcc1,	loop_31
loop_30:
	fmovsne	%xcc,	%f8,	%f11
	fba	%fcc2,	loop_32
	fmovdn	%xcc,	%f14,	%f6
loop_31:
	udivx	%g2,	0x1875,	%i0
	fnor	%f4,	%f10,	%f14
loop_32:
	fpack32	%f12,	%f2,	%f0
	fandnot1s	%f15,	%f0,	%f9
	sth	%i3,	[%l7 + 0x4E]
	ldx	[%l7 + 0x60],	%o1
	tn	%icc,	0x2
	ldx	[%l7 + 0x78],	%l5
	fmovsa	%icc,	%f13,	%f9
	fxnor	%f12,	%f14,	%f2
	subc	%o2,	%g5,	%i7
	fpadd16s	%f3,	%f4,	%f11
	movl	%xcc,	%o3,	%g4
	st	%f13,	[%l7 + 0x08]
	ld	[%l7 + 0x74],	%f2
	fmovdvs	%xcc,	%f6,	%f15
	lduw	[%l7 + 0x28],	%i4
	fpackfix	%f6,	%f15
	fmovrsgez	%g6,	%f11,	%f10
	ldsb	[%l7 + 0x5A],	%o0
	lduh	[%l7 + 0x42],	%l0
	edge8	%l2,	%o4,	%i5
	faligndata	%f2,	%f2,	%f0
	fmovrslz	%l1,	%f0,	%f0
	std	%f8,	[%l7 + 0x40]
	fbn,a	%fcc3,	loop_33
	fbue	%fcc1,	loop_34
	addc	%i1,	%o6,	%l3
	tl	%icc,	0x6
loop_33:
	stx	%o7,	[%l7 + 0x18]
loop_34:
	fmovrdgz	%o5,	%f12,	%f10
	fmovrslez	%i6,	%f3,	%f12
	fmovdneg	%xcc,	%f10,	%f9
	fbuge,a	%fcc2,	loop_35
	ldsb	[%l7 + 0x7E],	%g3
	movge	%icc,	%g7,	%l4
	stw	%i2,	[%l7 + 0x48]
loop_35:
	ld	[%l7 + 0x40],	%f11
	edge8n	%l6,	%g1,	%g2
	fnot1s	%f0,	%f13
	sethi	0x0F2F,	%i0
	fpackfix	%f12,	%f10
	stx	%o1,	[%l7 + 0x40]
	bshuffle	%f10,	%f14,	%f4
	fbl,a	%fcc2,	loop_36
	st	%f8,	[%l7 + 0x40]
	fpack32	%f10,	%f0,	%f14
	ldsw	[%l7 + 0x40],	%l5
loop_36:
	brlez,a	%i3,	loop_37
	brgz	%o2,	loop_38
	umul	%i7,	%g5,	%g4
	fpack16	%f4,	%f15
loop_37:
	fcmpne16	%f10,	%f0,	%i4
loop_38:
	fbug	%fcc3,	loop_39
	ldsw	[%l7 + 0x18],	%o3
	ldsw	[%l7 + 0x0C],	%g6
	ldd	[%l7 + 0x30],	%f6
loop_39:
	fbue,a	%fcc2,	loop_40
	movneg	%icc,	%l0,	%l2
	sth	%o0,	[%l7 + 0x36]
	bshuffle	%f10,	%f8,	%f0
loop_40:
	sra	%i5,	0x15,	%l1
	tleu	%xcc,	0x2
	movne	%xcc,	%o4,	%i1
	st	%f10,	[%l7 + 0x40]
	fmovde	%icc,	%f3,	%f8
	addccc	%o6,	%l3,	%o5
	movcc	%xcc,	%i6,	%g3
	move	%xcc,	%o7,	%l4
	ld	[%l7 + 0x40],	%f6
	sdivcc	%g7,	0x0C6F,	%l6
	fblg,a	%fcc2,	loop_41
	stb	%i2,	[%l7 + 0x5C]
	fandnot1s	%f15,	%f0,	%f2
	std	%f6,	[%l7 + 0x48]
loop_41:
	sethi	0x1273,	%g2
	smul	%g1,	%i0,	%o1
	fnegd	%f10,	%f6
	movrlz	%l5,	%i3,	%i7
	ldx	[%l7 + 0x78],	%g5
	fmovdl	%xcc,	%f14,	%f12
	lduh	[%l7 + 0x50],	%g4
	movl	%xcc,	%i4,	%o3
	ld	[%l7 + 0x4C],	%f1
	xnorcc	%g6,	%o2,	%l0
	stb	%o0,	[%l7 + 0x34]
	smulcc	%i5,	0x1BD7,	%l2
	edge16l	%l1,	%o4,	%o6
	movre	%i1,	%o5,	%i6
	ba,a	%icc,	loop_42
	edge16l	%l3,	%o7,	%l4
	fmuld8sux16	%f12,	%f15,	%f4
	siam	0x7
loop_42:
	orncc	%g3,	%l6,	%g7
	fandnot2s	%f2,	%f0,	%f4
	std	%f4,	[%l7 + 0x70]
	fxor	%f4,	%f0,	%f12
	fmovdn	%icc,	%f11,	%f14
	ldd	[%l7 + 0x38],	%f4
	fmuld8ulx16	%f6,	%f6,	%f12
	brgz	%g2,	loop_43
	fmovscs	%xcc,	%f4,	%f11
	std	%f12,	[%l7 + 0x48]
	lduw	[%l7 + 0x20],	%g1
loop_43:
	fmovdpos	%xcc,	%f11,	%f13
	stb	%i0,	[%l7 + 0x75]
	fmovdcs	%xcc,	%f3,	%f7
	fpadd32s	%f2,	%f2,	%f10
	ldsb	[%l7 + 0x35],	%i2
	stb	%l5,	[%l7 + 0x0C]
	ldub	[%l7 + 0x13],	%o1
	fcmple16	%f14,	%f6,	%i3
	bn,a,pt	%icc,	loop_44
	ld	[%l7 + 0x20],	%f6
	fmovsgu	%xcc,	%f7,	%f0
	udivcc	%i7,	0x1655,	%g5
loop_44:
	fmovrsgz	%i4,	%f11,	%f1
	ldd	[%l7 + 0x50],	%f4
	stx	%g4,	[%l7 + 0x08]
	fbge	%fcc2,	loop_45
	bvs,a	loop_46
	ldsh	[%l7 + 0x26],	%o3
	fbo	%fcc0,	loop_47
loop_45:
	fmovrse	%o2,	%f9,	%f5
loop_46:
	udivcc	%l0,	0x0909,	%o0
	movvc	%icc,	%g6,	%l2
loop_47:
	fmovsge	%icc,	%f2,	%f9
	bl,a	loop_48
	fsrc1	%f6,	%f2
	fbule,a	%fcc2,	loop_49
	tneg	%xcc,	0x2
loop_48:
	edge32n	%i5,	%l1,	%o4
	movn	%icc,	%o6,	%i1
loop_49:
	lduw	[%l7 + 0x24],	%o5
	tle	%icc,	0x4
	tvs	%xcc,	0x2
	st	%f3,	[%l7 + 0x24]
	stw	%i6,	[%l7 + 0x54]
	movrlez	%o7,	%l3,	%g3
	bn	%xcc,	loop_50
	stb	%l6,	[%l7 + 0x27]
	bl	%icc,	loop_51
	fcmpgt32	%f8,	%f6,	%g7
loop_50:
	andn	%g2,	0x0FE2,	%l4
	fmovdge	%xcc,	%f2,	%f4
loop_51:
	fone	%f4
	fpmerge	%f11,	%f4,	%f14
	lduw	[%l7 + 0x18],	%i0
	fmovrdlez	%g1,	%f2,	%f12
	bvs	loop_52
	fpmerge	%f13,	%f14,	%f0
	lduh	[%l7 + 0x40],	%l5
	ldsb	[%l7 + 0x0B],	%i2
loop_52:
	movne	%icc,	%o1,	%i7
	ldub	[%l7 + 0x5F],	%i3
	fpack16	%f10,	%f15
	ldd	[%l7 + 0x40],	%f6
	st	%f11,	[%l7 + 0x4C]
	fcmple16	%f4,	%f4,	%g5
	st	%f8,	[%l7 + 0x14]
	udivcc	%i4,	0x13AB,	%g4
	movge	%icc,	%o2,	%l0
	addcc	%o3,	%o0,	%l2
	fsrc2	%f14,	%f4
	fcmpeq32	%f0,	%f2,	%i5
	ld	[%l7 + 0x38],	%f10
	fnand	%f12,	%f14,	%f12
	fmovdvc	%xcc,	%f13,	%f6
	fnands	%f14,	%f10,	%f6
	bg,a,pn	%icc,	loop_53
	ta	%xcc,	0x0
	bpos,a,pt	%icc,	loop_54
	stb	%l1,	[%l7 + 0x65]
loop_53:
	std	%f0,	[%l7 + 0x18]
	lduw	[%l7 + 0x6C],	%o4
loop_54:
	umulcc	%g6,	0x02A9,	%i1
	ldsb	[%l7 + 0x5F],	%o5
	ldub	[%l7 + 0x3C],	%i6
	taddcctv	%o6,	0x0202,	%l3
	fble,a	%fcc3,	loop_55
	fmovrsgez	%o7,	%f12,	%f5
	fmuld8ulx16	%f5,	%f9,	%f12
	stx	%g3,	[%l7 + 0x10]
loop_55:
	fmul8x16au	%f15,	%f7,	%f0
	lduw	[%l7 + 0x34],	%l6
	fnors	%f8,	%f7,	%f7
	brlez,a	%g2,	loop_56
	udivcc	%l4,	0x0117,	%g7
	ldub	[%l7 + 0x3E],	%i0
	fand	%f2,	%f4,	%f6
loop_56:
	fmovdle	%xcc,	%f3,	%f14
	fmovs	%f15,	%f9
	fmovda	%icc,	%f7,	%f5
	sllx	%l5,	0x0D,	%g1
	edge8l	%o1,	%i7,	%i2
	lduh	[%l7 + 0x32],	%g5
	ldsh	[%l7 + 0x3A],	%i3
	edge32l	%g4,	%o2,	%i4
	fmovs	%f14,	%f12
	fpsub32	%f4,	%f2,	%f14
	fmovdgu	%icc,	%f0,	%f12
	array8	%l0,	%o3,	%o0
	fbne	%fcc1,	loop_57
	bgu,a,pt	%xcc,	loop_58
	subcc	%i5,	0x1C57,	%l2
	fmovscc	%xcc,	%f10,	%f14
loop_57:
	fcmpeq32	%f8,	%f8,	%l1
loop_58:
	stw	%g6,	[%l7 + 0x2C]
	fsrc2	%f14,	%f2
	fmovdpos	%icc,	%f15,	%f13
	movvs	%xcc,	%o4,	%o5
	tne	%icc,	0x1
	fbl,a	%fcc0,	loop_59
	fsrc1s	%f0,	%f11
	ldub	[%l7 + 0x5C],	%i6
	fone	%f14
loop_59:
	lduh	[%l7 + 0x78],	%i1
	fbn	%fcc2,	loop_60
	tsubcc	%o6,	0x1D47,	%l3
	fnegd	%f6,	%f10
	fnot2	%f4,	%f2
loop_60:
	bcs,a	%icc,	loop_61
	ldub	[%l7 + 0x2A],	%g3
	fmovsge	%xcc,	%f8,	%f12
	xor	%o7,	0x0C5F,	%g2
loop_61:
	sra	%l4,	%g7,	%l6
	fpmerge	%f10,	%f1,	%f4
	stb	%l5,	[%l7 + 0x0C]
	fmovspos	%xcc,	%f9,	%f14
	brlz,a	%i0,	loop_62
	fmovrslz	%o1,	%f13,	%f4
	fmul8x16	%f13,	%f10,	%f2
	addccc	%g1,	0x1443,	%i2
loop_62:
	fmuld8sux16	%f4,	%f8,	%f8
	brlz,a	%i7,	loop_63
	stx	%g5,	[%l7 + 0x58]
	addcc	%g4,	0x1FF1,	%o2
	siam	0x2
loop_63:
	tsubcc	%i4,	%i3,	%o3
	stb	%o0,	[%l7 + 0x1E]
	fmovsgu	%xcc,	%f11,	%f13
	ld	[%l7 + 0x58],	%f1
	ldx	[%l7 + 0x10],	%l0
	tl	%icc,	0x1
	ldsw	[%l7 + 0x08],	%l2
	ldd	[%l7 + 0x50],	%f12
	orcc	%l1,	0x17A4,	%i5
	fbge,a	%fcc1,	loop_64
	fornot2s	%f3,	%f5,	%f7
	lduw	[%l7 + 0x0C],	%g6
	fbule	%fcc2,	loop_65
loop_64:
	bvc,a	%xcc,	loop_66
	bne,a,pn	%icc,	loop_67
	ldd	[%l7 + 0x20],	%f2
loop_65:
	movrlz	%o5,	%i6,	%o4
loop_66:
	fpadd16	%f12,	%f12,	%f4
loop_67:
	fsrc1	%f4,	%f0
	std	%f0,	[%l7 + 0x70]
	fbue,a	%fcc0,	loop_68
	st	%f7,	[%l7 + 0x38]
	movrlez	%o6,	0x3D5,	%l3
	stx	%i1,	[%l7 + 0x20]
loop_68:
	movleu	%icc,	%o7,	%g2
	sth	%g3,	[%l7 + 0x0A]
	lduh	[%l7 + 0x7E],	%g7
	addc	%l6,	%l4,	%i0
	fornot1	%f8,	%f6,	%f14
	fsrc2s	%f14,	%f2
	ldub	[%l7 + 0x68],	%l5
	fnot1s	%f6,	%f13
	fnor	%f12,	%f2,	%f0
	ldsb	[%l7 + 0x1B],	%o1
	nop
	setx loop_69, %l0, %l1
	jmpl %l1, %g1
	fmovrsne	%i2,	%f1,	%f10
	fandnot2	%f8,	%f12,	%f6
	fmovsne	%xcc,	%f3,	%f13
loop_69:
	movleu	%icc,	%g5,	%g4
	fcmped	%fcc0,	%f6,	%f8
	ld	[%l7 + 0x30],	%f11
	nop
	setx loop_70, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fnot2	%f2,	%f10
	fmul8x16au	%f14,	%f13,	%f2
	stb	%i7,	[%l7 + 0x64]
loop_70:
	fnor	%f2,	%f2,	%f10
	subc	%i4,	0x1719,	%i3
	fmovdg	%xcc,	%f15,	%f13
	ldub	[%l7 + 0x78],	%o3
	bg,a	%xcc,	loop_71
	stw	%o2,	[%l7 + 0x28]
	stx	%l0,	[%l7 + 0x58]
	edge8ln	%l2,	%o0,	%i5
loop_71:
	fmovsa	%icc,	%f12,	%f9
	subcc	%g6,	0x0839,	%o5
	std	%f12,	[%l7 + 0x48]
	nop
	setx loop_72, %l0, %l1
	jmpl %l1, %i6
	ldsw	[%l7 + 0x5C],	%l1
	ldsh	[%l7 + 0x32],	%o6
	subcc	%o4,	0x14F7,	%l3
loop_72:
	sethi	0x18DA,	%o7
	array32	%g2,	%i1,	%g7
	fsrc2s	%f12,	%f10
	ldsw	[%l7 + 0x70],	%g3
	sth	%l4,	[%l7 + 0x5A]
	sth	%l6,	[%l7 + 0x2E]
	movgu	%xcc,	%l5,	%o1
	addcc	%g1,	%i2,	%i0
	sra	%g5,	%g4,	%i7
	stx	%i3,	[%l7 + 0x78]
	fnegs	%f7,	%f11
	movvs	%icc,	%o3,	%i4
	nop
	setx loop_73, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fcmpne32	%f14,	%f4,	%o2
	ldsw	[%l7 + 0x50],	%l0
	fnegd	%f0,	%f6
loop_73:
	fbe,a	%fcc2,	loop_74
	tsubcc	%l2,	0x0BD6,	%i5
	ldsh	[%l7 + 0x44],	%g6
	alignaddrl	%o0,	%i6,	%o5
loop_74:
	edge16	%l1,	%o4,	%o6
	fandnot2	%f2,	%f6,	%f10
	fmovdvc	%xcc,	%f14,	%f3
	ld	[%l7 + 0x58],	%f9
	addc	%o7,	%g2,	%l3
	fmovrdgez	%g7,	%f12,	%f8
	fornot1s	%f7,	%f2,	%f15
	stb	%i1,	[%l7 + 0x5B]
	ldsb	[%l7 + 0x30],	%g3
	pdist	%f2,	%f10,	%f14
	fmovsl	%icc,	%f4,	%f1
	fbe,a	%fcc3,	loop_75
	brlez	%l6,	loop_76
	ldd	[%l7 + 0x20],	%f8
	bshuffle	%f2,	%f4,	%f10
loop_75:
	ldsh	[%l7 + 0x1C],	%l5
loop_76:
	stx	%l4,	[%l7 + 0x30]
	brlez	%o1,	loop_77
	ldd	[%l7 + 0x28],	%f6
	udiv	%i2,	0x082A,	%g1
	edge8l	%i0,	%g4,	%g5
loop_77:
	lduh	[%l7 + 0x16],	%i3
	fandnot1	%f12,	%f8,	%f6
	edge8n	%o3,	%i4,	%i7
	ldx	[%l7 + 0x40],	%l0
	fnot2	%f8,	%f4
	ldsw	[%l7 + 0x10],	%o2
	lduw	[%l7 + 0x20],	%i5
	bne	loop_78
	nop
	setx loop_79, %l0, %l1
	jmpl %l1, %g6
	ldsw	[%l7 + 0x58],	%l2
	bn,a	%xcc,	loop_80
loop_78:
	fbo	%fcc2,	loop_81
loop_79:
	fmovrdgz	%o0,	%f2,	%f4
	ldd	[%l7 + 0x48],	%f10
loop_80:
	sth	%i6,	[%l7 + 0x4E]
loop_81:
	fmovrdgz	%l1,	%f2,	%f14
	fmovrdne	%o5,	%f4,	%f10
	fpsub16	%f14,	%f6,	%f12
	fornot1s	%f10,	%f0,	%f2
	bcc	%xcc,	loop_82
	brgz	%o6,	loop_83
	ldd	[%l7 + 0x10],	%f0
	ldub	[%l7 + 0x3E],	%o7
loop_82:
	fmovspos	%icc,	%f5,	%f11
loop_83:
	ldsh	[%l7 + 0x24],	%o4
	stw	%l3,	[%l7 + 0x60]
	smul	%g2,	0x161A,	%g7
	ldsb	[%l7 + 0x5D],	%g3
	andcc	%l6,	0x1111,	%l5
	edge16l	%i1,	%o1,	%i2
	tl	%xcc,	0x4
	fmovrsgz	%l4,	%f15,	%f0
	sdivcc	%i0,	0x0DF7,	%g4
	andncc	%g5,	%i3,	%g1
	bne,pt	%icc,	loop_84
	lduh	[%l7 + 0x18],	%i4
	fmovrdgez	%o3,	%f12,	%f0
	xnorcc	%i7,	%o2,	%i5
loop_84:
	std	%f8,	[%l7 + 0x10]
	ldx	[%l7 + 0x28],	%g6
	ldd	[%l7 + 0x20],	%f14
	st	%f6,	[%l7 + 0x44]
	fbul	%fcc3,	loop_85
	sll	%l0,	0x1E,	%o0
	fmuld8sux16	%f8,	%f8,	%f14
	ldsb	[%l7 + 0x0A],	%l2
loop_85:
	bge,pt	%xcc,	loop_86
	mova	%xcc,	%l1,	%i6
	sra	%o5,	0x15,	%o7
	udiv	%o6,	0x014F,	%l3
loop_86:
	movrgz	%g2,	0x184,	%o4
	fornot1s	%f12,	%f12,	%f2
	ldub	[%l7 + 0x5B],	%g7
	stb	%g3,	[%l7 + 0x54]
	for	%f14,	%f14,	%f4
	fbne	%fcc3,	loop_87
	nop
	setx loop_88, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldsb	[%l7 + 0x41],	%l6
	array32	%l5,	%i1,	%o1
loop_87:
	tgu	%icc,	0x0
loop_88:
	ldsb	[%l7 + 0x0C],	%i2
	sra	%i0,	%g4,	%l4
	udiv	%i3,	0x18E4,	%g5
	ldd	[%l7 + 0x40],	%f8
	brgez	%g1,	loop_89
	movgu	%xcc,	%i4,	%i7
	addccc	%o3,	%i5,	%g6
	fmovrde	%o2,	%f2,	%f12
loop_89:
	tle	%icc,	0x0
	fmovse	%icc,	%f10,	%f9
	st	%f1,	[%l7 + 0x64]
	call	loop_90
	stx	%o0,	[%l7 + 0x18]
	ldsw	[%l7 + 0x5C],	%l0
	ldsw	[%l7 + 0x20],	%l1
loop_90:
	fbl	%fcc3,	loop_91
	fmovdl	%icc,	%f11,	%f12
	srax	%i6,	%o5,	%o7
	fors	%f0,	%f15,	%f2
loop_91:
	ldsb	[%l7 + 0x21],	%o6
	ldd	[%l7 + 0x40],	%f4
	lduw	[%l7 + 0x2C],	%l2
	orn	%g2,	%l3,	%o4
	sth	%g7,	[%l7 + 0x0C]
	fabsd	%f2,	%f14
	st	%f13,	[%l7 + 0x48]
	call	loop_92
	xorcc	%g3,	0x0A89,	%l5
	xor	%i1,	%l6,	%i2
	st	%f9,	[%l7 + 0x78]
loop_92:
	lduw	[%l7 + 0x38],	%o1
	ldx	[%l7 + 0x48],	%i0
	fmovrdgz	%g4,	%f2,	%f12
	fbg	%fcc2,	loop_93
	fmovdle	%icc,	%f4,	%f12
	nop
	setx loop_94, %l0, %l1
	jmpl %l1, %l4
	fmovdneg	%xcc,	%f3,	%f12
loop_93:
	fnot1	%f10,	%f14
	fornot2	%f14,	%f8,	%f12
loop_94:
	fpack32	%f12,	%f8,	%f8
	andn	%i3,	%g1,	%g5
	call	loop_95
	fnot2s	%f1,	%f11
	fnegd	%f0,	%f8
	fpsub32	%f12,	%f0,	%f14
loop_95:
	fcmpeq16	%f2,	%f4,	%i7
	bl,a,pn	%icc,	loop_96
	fands	%f15,	%f2,	%f13
	fmovsn	%xcc,	%f14,	%f10
	movrlz	%o3,	0x0F8,	%i5
loop_96:
	ld	[%l7 + 0x6C],	%f14
	fornot2s	%f12,	%f12,	%f1
	ldub	[%l7 + 0x2E],	%g6
	fmovdg	%xcc,	%f15,	%f14
	srax	%i4,	%o0,	%l0
	fandnot2	%f2,	%f10,	%f8
	edge8	%l1,	%i6,	%o2
	andn	%o5,	%o7,	%l2
	bne	loop_97
	fmovrslz	%o6,	%f12,	%f11
	sdiv	%l3,	0x1DE5,	%o4
	mulscc	%g7,	0x0EBB,	%g3
loop_97:
	fmovrdlez	%l5,	%f12,	%f4
	orn	%g2,	%i1,	%l6
	fabss	%f13,	%f9
	fpadd32s	%f4,	%f7,	%f3
	alignaddrl	%i2,	%o1,	%g4
	fmovdge	%icc,	%f15,	%f3
	fxnors	%f0,	%f8,	%f14
	umulcc	%l4,	%i3,	%i0
	udiv	%g1,	0x1645,	%g5
	brlez	%i7,	loop_98
	std	%f8,	[%l7 + 0x50]
	ble,a	loop_99
	bpos,pt	%icc,	loop_100
loop_98:
	brnz	%i5,	loop_101
	mulx	%o3,	%i4,	%o0
loop_99:
	fcmpgt16	%f2,	%f2,	%l0
loop_100:
	fnot1	%f6,	%f12
loop_101:
	fmovdge	%icc,	%f1,	%f12
	fbuge	%fcc2,	loop_102
	fsrc1s	%f0,	%f8
	bn,a	loop_103
	fpadd16	%f0,	%f4,	%f2
loop_102:
	subc	%l1,	0x1077,	%i6
	fnot1	%f8,	%f8
loop_103:
	std	%f2,	[%l7 + 0x08]
	brlz	%g6,	loop_104
	lduh	[%l7 + 0x08],	%o5
	fmovdcc	%xcc,	%f5,	%f3
	stx	%o7,	[%l7 + 0x28]
loop_104:
	edge32ln	%l2,	%o6,	%o2
	udivcc	%o4,	0x0983,	%l3
	fmovse	%xcc,	%f8,	%f0
	movre	%g3,	%l5,	%g2
	subcc	%i1,	%g7,	%l6
	fand	%f6,	%f2,	%f12
	st	%f14,	[%l7 + 0x3C]
	st	%f11,	[%l7 + 0x2C]
	stb	%i2,	[%l7 + 0x4B]
	tg	%xcc,	0x5
	brz	%o1,	loop_105
	addcc	%g4,	0x00DA,	%i3
	sth	%i0,	[%l7 + 0x12]
	fmovdvc	%icc,	%f6,	%f12
loop_105:
	fbg,a	%fcc2,	loop_106
	std	%f2,	[%l7 + 0x28]
	tsubcctv	%l4,	%g1,	%i7
	movcc	%icc,	%g5,	%i5
loop_106:
	ldsb	[%l7 + 0x7C],	%o3
	fmovsleu	%icc,	%f6,	%f3
	fand	%f2,	%f4,	%f8
	ldub	[%l7 + 0x0A],	%i4
	fcmps	%fcc3,	%f6,	%f5
	tgu	%icc,	0x3
	fnot2s	%f15,	%f11
	fcmpeq16	%f4,	%f0,	%l0
	fbo	%fcc3,	loop_107
	fbn	%fcc1,	loop_108
	brlz	%l1,	loop_109
	ldx	[%l7 + 0x50],	%o0
loop_107:
	brz	%i6,	loop_110
loop_108:
	ld	[%l7 + 0x18],	%f0
loop_109:
	ldsw	[%l7 + 0x10],	%g6
	fornot2	%f10,	%f2,	%f0
loop_110:
	ldd	[%l7 + 0x50],	%f6
	addcc	%o5,	%l2,	%o6
	bneg	%xcc,	loop_111
	edge16n	%o2,	%o4,	%l3
	ldsb	[%l7 + 0x5E],	%o7
	fmovrdne	%g3,	%f6,	%f12
loop_111:
	ldub	[%l7 + 0x49],	%g2
	tne	%icc,	0x1
	bpos	%xcc,	loop_112
	udivx	%i1,	0x03F4,	%l5
	std	%f10,	[%l7 + 0x68]
	ldx	[%l7 + 0x20],	%l6
loop_112:
	fbg,a	%fcc0,	loop_113
	fcmpeq32	%f10,	%f4,	%i2
	bpos,a,pt	%icc,	loop_114
	fands	%f7,	%f1,	%f7
loop_113:
	movcc	%xcc,	%g7,	%g4
	fornot2s	%f10,	%f3,	%f5
loop_114:
	fmovsg	%icc,	%f7,	%f2
	fzeros	%f2
	tneg	%xcc,	0x3
	srlx	%i3,	%o1,	%i0
	fabss	%f8,	%f2
	fzeros	%f4
	fmovdvs	%icc,	%f15,	%f12
	or	%l4,	0x018D,	%i7
	nop
	setx loop_115, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	sth	%g1,	[%l7 + 0x22]
	movl	%xcc,	%g5,	%o3
	umulcc	%i4,	%l0,	%l1
loop_115:
	srl	%i5,	0x1B,	%i6
	addc	%o0,	%o5,	%g6
	ldx	[%l7 + 0x60],	%l2
	stw	%o2,	[%l7 + 0x08]
	fmovdcc	%xcc,	%f6,	%f12
	mulx	%o6,	%o4,	%o7
	fpadd32s	%f13,	%f0,	%f14
	fmovsneg	%icc,	%f1,	%f10
	fbo	%fcc0,	loop_116
	fcmpd	%fcc3,	%f14,	%f12
	fmovsg	%icc,	%f5,	%f10
	subcc	%l3,	0x1482,	%g3
loop_116:
	tvc	%icc,	0x2
	fmovdvs	%icc,	%f6,	%f3
	ldx	[%l7 + 0x50],	%g2
	orncc	%i1,	0x1AB1,	%l6
	fsrc1s	%f11,	%f1
	ldub	[%l7 + 0x6B],	%i2
	fmovrdne	%l5,	%f8,	%f10
	brlez,a	%g4,	loop_117
	movcc	%xcc,	%g7,	%i3
	tn	%xcc,	0x5
	fnot1	%f12,	%f2
loop_117:
	edge16ln	%o1,	%i0,	%l4
	ldub	[%l7 + 0x47],	%g1
	fmovsgu	%xcc,	%f5,	%f7
	tcc	%icc,	0x7
	fmovdn	%xcc,	%f13,	%f12
	ldsw	[%l7 + 0x2C],	%i7
	fbo,a	%fcc1,	loop_118
	ldx	[%l7 + 0x10],	%o3
	te	%icc,	0x6
	fand	%f6,	%f4,	%f8
loop_118:
	fornot2	%f12,	%f0,	%f2
	std	%f0,	[%l7 + 0x58]
	bcs,a	loop_119
	brnz,a	%g5,	loop_120
	stb	%i4,	[%l7 + 0x10]
	fmovrdgz	%l1,	%f4,	%f14
loop_119:
	sth	%i5,	[%l7 + 0x5A]
loop_120:
	mova	%icc,	%i6,	%o0
	ldsb	[%l7 + 0x66],	%l0
	stw	%o5,	[%l7 + 0x10]
	fone	%f6
	fbl,a	%fcc3,	loop_121
	fble,a	%fcc0,	loop_122
	ldsw	[%l7 + 0x4C],	%l2
	fmovdcc	%icc,	%f15,	%f11
loop_121:
	ldsw	[%l7 + 0x24],	%o2
loop_122:
	and	%g6,	0x1B14,	%o6
	fmovsge	%icc,	%f13,	%f13
	nop
	setx loop_123, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	edge8l	%o7,	%l3,	%g3
	fmovdcs	%xcc,	%f3,	%f8
	sth	%o4,	[%l7 + 0x6E]
loop_123:
	bgu,a	loop_124
	fpsub16	%f0,	%f0,	%f14
	fpack32	%f4,	%f4,	%f4
	fcmpeq16	%f14,	%f6,	%g2
loop_124:
	fcmped	%fcc0,	%f2,	%f6
	fmul8ulx16	%f2,	%f2,	%f10
	bcs,a,pt	%icc,	loop_125
	fpsub16	%f0,	%f10,	%f2
	st	%f0,	[%l7 + 0x08]
	sth	%i1,	[%l7 + 0x76]
loop_125:
	fnand	%f4,	%f2,	%f10
	fnegs	%f7,	%f3
	tcs	%icc,	0x4
	fone	%f12
	fbl,a	%fcc1,	loop_126
	fmovs	%f12,	%f4
	fbo	%fcc1,	loop_127
	std	%f4,	[%l7 + 0x20]
loop_126:
	fpsub32	%f8,	%f2,	%f12
	ldub	[%l7 + 0x32],	%i2
loop_127:
	ldsw	[%l7 + 0x40],	%l6
	fbu	%fcc3,	loop_128
	and	%g4,	0x1D55,	%l5
	ldx	[%l7 + 0x38],	%i3
	alignaddrl	%g7,	%i0,	%o1
loop_128:
	bvs,a	loop_129
	ld	[%l7 + 0x44],	%f8
	fmovdneg	%icc,	%f5,	%f3
	fmovsn	%icc,	%f8,	%f10
loop_129:
	fpadd32s	%f13,	%f1,	%f1
	tpos	%icc,	0x0
	udivx	%g1,	0x1319,	%l4
	fmovrdgz	%o3,	%f8,	%f6
	ldsh	[%l7 + 0x5A],	%i7
	fmovdn	%icc,	%f9,	%f9
	ldd	[%l7 + 0x70],	%f14
	fcmpgt32	%f2,	%f6,	%g5
	nop
	setx loop_130, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ld	[%l7 + 0x44],	%f2
	lduh	[%l7 + 0x50],	%i4
	stb	%l1,	[%l7 + 0x14]
loop_130:
	udiv	%i6,	0x04A3,	%i5
	addcc	%o0,	%l0,	%o5
	fmovdpos	%icc,	%f4,	%f9
	xorcc	%l2,	%g6,	%o6
	std	%f6,	[%l7 + 0x30]
	brgez,a	%o2,	loop_131
	lduh	[%l7 + 0x56],	%o7
	ldsh	[%l7 + 0x62],	%l3
	fcmpd	%fcc3,	%f4,	%f4
loop_131:
	fxnor	%f6,	%f6,	%f12
	bneg,a,pn	%icc,	loop_132
	fabsd	%f0,	%f4
	movcc	%icc,	%o4,	%g2
	ldd	[%l7 + 0x68],	%f2
loop_132:
	fmovde	%xcc,	%f7,	%f10
	sth	%i1,	[%l7 + 0x56]
	movgu	%icc,	%g3,	%l6
	fpsub16	%f8,	%f6,	%f2
	fmovrdlz	%i2,	%f10,	%f4
	bleu,a	%icc,	loop_133
	fmul8sux16	%f0,	%f12,	%f14
	tvs	%icc,	0x2
	add	%l5,	%g4,	%i3
loop_133:
	edge8n	%g7,	%o1,	%g1
	ldsb	[%l7 + 0x6C],	%l4
	smul	%o3,	%i0,	%i7
	fcmpgt16	%f14,	%f14,	%i4
	fmovdcc	%icc,	%f9,	%f15
	fbue	%fcc3,	loop_134
	fmuld8sux16	%f14,	%f2,	%f2
	fnor	%f10,	%f2,	%f10
	ldsb	[%l7 + 0x1E],	%l1
loop_134:
	fpadd16s	%f3,	%f7,	%f13
	bcc,a,pn	%icc,	loop_135
	ldsb	[%l7 + 0x08],	%g5
	lduh	[%l7 + 0x62],	%i6
	edge8n	%i5,	%l0,	%o0
loop_135:
	lduh	[%l7 + 0x24],	%l2
	fzeros	%f4
	srlx	%g6,	%o5,	%o2
	ldx	[%l7 + 0x58],	%o7
	fxor	%f12,	%f8,	%f4
	sth	%l3,	[%l7 + 0x7E]
	nop
	setx loop_136, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovsa	%xcc,	%f5,	%f5
	std	%f10,	[%l7 + 0x70]
	fmovsn	%xcc,	%f5,	%f3
loop_136:
	stw	%o6,	[%l7 + 0x0C]
	ld	[%l7 + 0x38],	%f12
	st	%f3,	[%l7 + 0x28]
	orncc	%o4,	%g2,	%i1
	st	%f12,	[%l7 + 0x58]
	bge,pn	%xcc,	loop_137
	ldsw	[%l7 + 0x40],	%g3
	taddcc	%l6,	0x04A7,	%i2
	bcc,a	%icc,	loop_138
loop_137:
	bshuffle	%f8,	%f10,	%f14
	stb	%g4,	[%l7 + 0x12]
	fmovrdgz	%i3,	%f6,	%f12
loop_138:
	fnor	%f4,	%f0,	%f6
	sth	%g7,	[%l7 + 0x6C]
	std	%f4,	[%l7 + 0x50]
	tcc	%xcc,	0x4
	sth	%o1,	[%l7 + 0x48]
	sll	%g1,	0x15,	%l5
	fxnors	%f9,	%f12,	%f14
	ldd	[%l7 + 0x48],	%f6
	andn	%l4,	0x055A,	%o3
	ld	[%l7 + 0x2C],	%f6
	stx	%i7,	[%l7 + 0x48]
	st	%f5,	[%l7 + 0x1C]
	ld	[%l7 + 0x0C],	%f3
	fornot1s	%f11,	%f10,	%f10
	array8	%i4,	%i0,	%g5
	fble,a	%fcc0,	loop_139
	std	%f10,	[%l7 + 0x30]
	tvc	%xcc,	0x6
	sth	%l1,	[%l7 + 0x16]
loop_139:
	ba	%icc,	loop_140
	ldd	[%l7 + 0x20],	%f12
	bvs,pn	%xcc,	loop_141
	sth	%i6,	[%l7 + 0x22]
loop_140:
	smulcc	%l0,	0x0005,	%i5
	fmovsvs	%xcc,	%f8,	%f1
loop_141:
	fmul8x16	%f0,	%f4,	%f8
	fpack32	%f2,	%f14,	%f12
	bleu,pt	%icc,	loop_142
	tge	%icc,	0x5
	fmovse	%xcc,	%f10,	%f14
	ld	[%l7 + 0x7C],	%f11
loop_142:
	bg,pn	%xcc,	loop_143
	fpackfix	%f8,	%f11
	addcc	%o0,	0x1A12,	%l2
	fble,a	%fcc1,	loop_144
loop_143:
	stb	%g6,	[%l7 + 0x54]
	tvc	%xcc,	0x0
	fcmpeq32	%f0,	%f0,	%o2
loop_144:
	fcmpne32	%f2,	%f0,	%o5
	fmovrslz	%o7,	%f13,	%f6
	ldsh	[%l7 + 0x7A],	%l3
	lduw	[%l7 + 0x30],	%o4
	fmovrdlez	%o6,	%f12,	%f14
	fabss	%f9,	%f2
	edge32l	%g2,	%i1,	%g3
	xor	%i2,	%g4,	%i3
	movcc	%icc,	%g7,	%l6
	std	%f4,	[%l7 + 0x30]
	taddcc	%o1,	0x1D07,	%l5
	stw	%l4,	[%l7 + 0x3C]
	movrlz	%g1,	%i7,	%o3
	tg	%icc,	0x5
	fpsub16s	%f4,	%f15,	%f5
	fpadd16	%f4,	%f12,	%f10
	fmovsne	%icc,	%f8,	%f1
	andn	%i0,	0x1ED9,	%g5
	fsrc1s	%f9,	%f7
	ldub	[%l7 + 0x11],	%l1
	fmovsl	%xcc,	%f14,	%f6
	movcc	%icc,	%i4,	%i6
	ba	%icc,	loop_145
	bshuffle	%f2,	%f10,	%f8
	ldsw	[%l7 + 0x4C],	%l0
	fble	%fcc2,	loop_146
loop_145:
	st	%f11,	[%l7 + 0x64]
	fandnot1	%f4,	%f10,	%f6
	and	%i5,	0x1607,	%l2
loop_146:
	tpos	%xcc,	0x0
	fone	%f6
	fmovdcc	%xcc,	%f2,	%f3
	fpadd16s	%f10,	%f6,	%f2
	movcs	%icc,	%g6,	%o0
	tne	%icc,	0x3
	ldd	[%l7 + 0x20],	%f2
	st	%f5,	[%l7 + 0x7C]
	stx	%o2,	[%l7 + 0x68]
	std	%f12,	[%l7 + 0x10]
	alignaddrl	%o5,	%l3,	%o7
	ldd	[%l7 + 0x48],	%f10
	fpadd32	%f2,	%f12,	%f0
	fmovda	%icc,	%f1,	%f13
	ldsb	[%l7 + 0x73],	%o4
	movn	%icc,	%o6,	%g2
	stb	%i1,	[%l7 + 0x39]
	te	%xcc,	0x7
	addc	%i2,	%g3,	%i3
	fmovdcc	%icc,	%f1,	%f10
	tg	%icc,	0x0
	edge32ln	%g4,	%l6,	%o1
	fbue,a	%fcc1,	loop_147
	fcmpd	%fcc2,	%f2,	%f6
	stx	%g7,	[%l7 + 0x28]
	stw	%l5,	[%l7 + 0x40]
loop_147:
	sth	%g1,	[%l7 + 0x14]
	fcmped	%fcc0,	%f4,	%f6
	and	%i7,	0x1CD7,	%o3
	fbe	%fcc0,	loop_148
	fbe,a	%fcc1,	loop_149
	movg	%icc,	%i0,	%g5
	st	%f11,	[%l7 + 0x38]
loop_148:
	fpadd16	%f8,	%f10,	%f2
loop_149:
	std	%f4,	[%l7 + 0x58]
	fbl,a	%fcc3,	loop_150
	fmul8sux16	%f10,	%f8,	%f6
	bvc,a,pn	%icc,	loop_151
	tne	%icc,	0x2
loop_150:
	fmovsvc	%icc,	%f4,	%f1
	faligndata	%f14,	%f6,	%f0
loop_151:
	fmovrslz	%l4,	%f8,	%f9
	pdist	%f0,	%f12,	%f4
	lduh	[%l7 + 0x4E],	%i4
	fmovsge	%icc,	%f2,	%f14
	fands	%f4,	%f8,	%f15
	stx	%l1,	[%l7 + 0x18]
	mova	%icc,	%l0,	%i5
	tcc	%xcc,	0x5
	ldub	[%l7 + 0x3D],	%l2
	fxnor	%f2,	%f12,	%f14
	tsubcc	%g6,	0x11CD,	%o0
	fmovdvc	%xcc,	%f9,	%f14
	alignaddr	%o2,	%i6,	%o5
	stb	%o7,	[%l7 + 0x08]
	or	%l3,	0x14AE,	%o6
	xor	%g2,	0x09BD,	%o4
	taddcc	%i2,	%i1,	%g3
	xnorcc	%i3,	%l6,	%g4
	bl,pn	%icc,	loop_152
	fabsd	%f10,	%f6
	ld	[%l7 + 0x48],	%f11
	or	%o1,	%l5,	%g7
loop_152:
	fmovrde	%i7,	%f2,	%f8
	fmovd	%f14,	%f2
	srlx	%g1,	0x0F,	%o3
	tge	%xcc,	0x5
	fandnot1s	%f2,	%f14,	%f0
	stb	%g5,	[%l7 + 0x5E]
	fcmpne32	%f2,	%f2,	%l4
	stx	%i0,	[%l7 + 0x58]
	lduh	[%l7 + 0x7A],	%l1
	ldsb	[%l7 + 0x29],	%i4
	sth	%i5,	[%l7 + 0x14]
	movgu	%xcc,	%l0,	%l2
	udivx	%o0,	0x1771,	%g6
	ldsb	[%l7 + 0x5F],	%o2
	sth	%o5,	[%l7 + 0x0C]
	fmul8x16	%f2,	%f2,	%f6
	fmovrsne	%o7,	%f0,	%f11
	stx	%i6,	[%l7 + 0x30]
	fbe,a	%fcc2,	loop_153
	bne,pt	%icc,	loop_154
	fmovrdne	%o6,	%f4,	%f10
	addccc	%g2,	%l3,	%i2
loop_153:
	fxors	%f15,	%f6,	%f4
loop_154:
	sdivx	%i1,	0x1BB1,	%o4
	sllx	%i3,	0x10,	%g3
	umulcc	%l6,	%g4,	%o1
	fpsub32	%f12,	%f14,	%f4
	fmovdleu	%xcc,	%f0,	%f9
	ldd	[%l7 + 0x40],	%f6
	fmovsgu	%icc,	%f12,	%f11
	fmovrdne	%g7,	%f2,	%f10
	fcmple32	%f0,	%f0,	%i7
	ble,pt	%xcc,	loop_155
	fmovrsgez	%l5,	%f11,	%f12
	fmul8x16	%f0,	%f14,	%f6
	smulcc	%o3,	%g1,	%l4
loop_155:
	ldx	[%l7 + 0x70],	%g5
	stw	%i0,	[%l7 + 0x24]
	movpos	%icc,	%l1,	%i4
	fmovdpos	%icc,	%f4,	%f9
	edge8	%i5,	%l2,	%o0
	brgez,a	%g6,	loop_156
	sra	%l0,	%o2,	%o7
	or	%i6,	%o5,	%g2
	tvc	%xcc,	0x7
loop_156:
	andn	%l3,	%i2,	%o6
	fcmpeq32	%f0,	%f6,	%i1
	edge32n	%i3,	%o4,	%g3
	bn	loop_157
	stw	%l6,	[%l7 + 0x08]
	ldsw	[%l7 + 0x7C],	%o1
	fmovdcc	%icc,	%f0,	%f14
loop_157:
	sdiv	%g4,	0x0BB9,	%g7
	ldsb	[%l7 + 0x2C],	%l5
	udivcc	%o3,	0x0DA5,	%g1
	fmovsleu	%xcc,	%f2,	%f2
	fmovdpos	%icc,	%f10,	%f9
	xorcc	%i7,	%g5,	%i0
	fpack32	%f10,	%f0,	%f2
	stb	%l4,	[%l7 + 0x50]
	std	%f0,	[%l7 + 0x30]
	movleu	%icc,	%i4,	%l1
	ldsw	[%l7 + 0x70],	%l2
	fxors	%f15,	%f3,	%f15
	ldd	[%l7 + 0x58],	%f6
	alignaddrl	%o0,	%i5,	%g6
	movge	%xcc,	%o2,	%o7
	edge8	%i6,	%o5,	%l0
	movne	%icc,	%l3,	%g2
	fornot2s	%f6,	%f15,	%f8
	ldub	[%l7 + 0x2E],	%i2
	orcc	%o6,	0x0F7D,	%i1
	edge16ln	%i3,	%g3,	%l6
	addccc	%o1,	0x04F2,	%o4
	fmovdleu	%xcc,	%f6,	%f15
	ldsh	[%l7 + 0x48],	%g4
	ldd	[%l7 + 0x30],	%f6
	nop
	setx loop_158, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	addccc	%g7,	%l5,	%g1
	nop
	setx loop_159, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	tle	%xcc,	0x4
loop_158:
	ldsb	[%l7 + 0x39],	%o3
	fone	%f2
loop_159:
	lduw	[%l7 + 0x7C],	%i7
	lduw	[%l7 + 0x4C],	%i0
	alignaddrl	%g5,	%i4,	%l1
	fmovsleu	%icc,	%f4,	%f11
	fexpand	%f3,	%f4
	ldub	[%l7 + 0x62],	%l2
	ldsh	[%l7 + 0x36],	%l4
	brgez,a	%i5,	loop_160
	fmovrsne	%o0,	%f1,	%f15
	fbo,a	%fcc3,	loop_161
	std	%f8,	[%l7 + 0x10]
loop_160:
	bpos,a,pt	%xcc,	loop_162
	lduh	[%l7 + 0x10],	%o2
loop_161:
	tge	%icc,	0x7
	mulx	%o7,	0x154F,	%g6
loop_162:
	andncc	%o5,	%l0,	%l3
	ta	%icc,	0x7
	stw	%g2,	[%l7 + 0x78]
	fmovdcc	%icc,	%f1,	%f4
	ldub	[%l7 + 0x4E],	%i2
	srlx	%o6,	0x04,	%i6
	fcmped	%fcc1,	%f14,	%f4
	fzero	%f10
	lduw	[%l7 + 0x18],	%i1
	ldsw	[%l7 + 0x48],	%g3
	ldsh	[%l7 + 0x20],	%i3
	fmovrsne	%o1,	%f15,	%f9
	lduh	[%l7 + 0x44],	%l6
	fpadd32s	%f6,	%f1,	%f4
	stx	%o4,	[%l7 + 0x30]
	fpack16	%f10,	%f14
	or	%g4,	0x1FD4,	%l5
	nop
	setx loop_163, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	srl	%g1,	%o3,	%i7
	ldd	[%l7 + 0x18],	%f0
	std	%f12,	[%l7 + 0x60]
loop_163:
	fpsub16	%f8,	%f10,	%f8
	fpsub32s	%f12,	%f0,	%f12
	fnegs	%f13,	%f8
	fblg	%fcc2,	loop_164
	tsubcc	%i0,	0x0001,	%g7
	lduw	[%l7 + 0x3C],	%g5
	taddcctv	%i4,	0x009B,	%l1
loop_164:
	ldub	[%l7 + 0x16],	%l2
	mulx	%l4,	0x09B3,	%i5
	ldsh	[%l7 + 0x32],	%o0
	nop
	setx loop_165, %l0, %l1
	jmpl %l1, %o2
	fone	%f4
	fornot1	%f0,	%f0,	%f2
	stw	%g6,	[%l7 + 0x54]
loop_165:
	ld	[%l7 + 0x1C],	%f13
	srlx	%o7,	%o5,	%l0
	movg	%icc,	%g2,	%i2
	fnegd	%f12,	%f2
	ldsw	[%l7 + 0x58],	%o6
	orncc	%l3,	%i1,	%i6
	ldx	[%l7 + 0x38],	%i3
	sth	%g3,	[%l7 + 0x3C]
	fmovsne	%xcc,	%f8,	%f14
	tg	%xcc,	0x2
	ldsb	[%l7 + 0x08],	%l6
	ble,a	%icc,	loop_166
	stw	%o4,	[%l7 + 0x08]
	bleu,a	loop_167
	ldsb	[%l7 + 0x5B],	%o1
loop_166:
	movrgez	%l5,	0x2F2,	%g1
	fmovd	%f14,	%f10
loop_167:
	std	%f14,	[%l7 + 0x28]
	movne	%icc,	%o3,	%g4
	fmovrsgez	%i0,	%f8,	%f5
	edge8	%i7,	%g5,	%g7
	fbule,a	%fcc1,	loop_168
	ldsw	[%l7 + 0x34],	%i4
	fmul8x16au	%f0,	%f3,	%f8
	ldd	[%l7 + 0x58],	%f14
loop_168:
	sth	%l2,	[%l7 + 0x7C]
	sll	%l4,	0x1F,	%l1
	movneg	%xcc,	%o0,	%i5
	nop
	setx loop_169, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	xorcc	%g6,	%o7,	%o5
	be,pn	%icc,	loop_170
	stx	%l0,	[%l7 + 0x58]
loop_169:
	st	%f6,	[%l7 + 0x78]
	fbug	%fcc2,	loop_171
loop_170:
	ldub	[%l7 + 0x6E],	%g2
	brgez,a	%i2,	loop_172
	pdist	%f2,	%f0,	%f2
loop_171:
	stx	%o6,	[%l7 + 0x08]
	taddcc	%l3,	%i1,	%o2
loop_172:
	ldsb	[%l7 + 0x6A],	%i3
	fmovsneg	%xcc,	%f6,	%f7
	fmovsne	%icc,	%f10,	%f4
	movneg	%icc,	%i6,	%l6
	fornot1s	%f9,	%f6,	%f11
	st	%f7,	[%l7 + 0x0C]
	fors	%f13,	%f12,	%f10
	bgu	loop_173
	sth	%o4,	[%l7 + 0x20]
	subc	%o1,	0x15EB,	%l5
	fors	%f1,	%f15,	%f5
loop_173:
	stw	%g3,	[%l7 + 0x34]
	fnand	%f4,	%f0,	%f14
	tsubcc	%o3,	%g1,	%i0
	lduw	[%l7 + 0x20],	%i7
	fsrc1	%f0,	%f2
	fbu	%fcc0,	loop_174
	lduw	[%l7 + 0x38],	%g4
	ldd	[%l7 + 0x68],	%f14
	fzeros	%f2
loop_174:
	ld	[%l7 + 0x7C],	%f6
	fpadd16	%f0,	%f4,	%f2
	fnands	%f5,	%f4,	%f12
	ldd	[%l7 + 0x40],	%f2
	std	%f12,	[%l7 + 0x50]
	movg	%xcc,	%g5,	%g7
	ta	%xcc,	0x5
	stb	%i4,	[%l7 + 0x7A]
	ldsh	[%l7 + 0x54],	%l2
	fnot1s	%f5,	%f14
	fbu	%fcc1,	loop_175
	fcmpeq32	%f8,	%f12,	%l1
	fbg,a	%fcc3,	loop_176
	ldd	[%l7 + 0x78],	%f14
loop_175:
	taddcctv	%l4,	%i5,	%g6
	fexpand	%f5,	%f8
loop_176:
	ldsh	[%l7 + 0x7A],	%o0
	fsrc2	%f14,	%f14
	fmovrslez	%o5,	%f15,	%f15
	lduw	[%l7 + 0x58],	%o7
	xnorcc	%g2,	%l0,	%o6
	fcmpeq16	%f0,	%f14,	%i2
	addccc	%i1,	%o2,	%l3
	bn,a	loop_177
	fnot2s	%f7,	%f10
	stw	%i6,	[%l7 + 0x5C]
	ldx	[%l7 + 0x78],	%i3
loop_177:
	ldx	[%l7 + 0x10],	%o4
	fexpand	%f3,	%f2
	xnorcc	%o1,	%l6,	%l5
	movcc	%xcc,	%o3,	%g3
	tge	%icc,	0x3
	smulcc	%g1,	%i7,	%g4
	ld	[%l7 + 0x44],	%f12
	stw	%g5,	[%l7 + 0x74]
	st	%f6,	[%l7 + 0x60]
	bcs	loop_178
	array16	%i0,	%i4,	%g7
	alignaddrl	%l2,	%l1,	%l4
	tle	%icc,	0x5
loop_178:
	fnot2s	%f9,	%f3
	fmul8ulx16	%f10,	%f14,	%f0
	movvc	%icc,	%g6,	%i5
	fmovscc	%icc,	%f5,	%f1
	st	%f5,	[%l7 + 0x74]
	fba,a	%fcc2,	loop_179
	lduw	[%l7 + 0x34],	%o0
	fbul	%fcc3,	loop_180
	fmuld8sux16	%f7,	%f12,	%f0
loop_179:
	nop
	setx loop_181, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	sra	%o5,	0x04,	%o7
loop_180:
	andncc	%l0,	%g2,	%o6
	st	%f9,	[%l7 + 0x7C]
loop_181:
	fmovrdlez	%i1,	%f6,	%f6
	sll	%i2,	0x13,	%l3
	fbn	%fcc2,	loop_182
	nop
	setx loop_183, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fnand	%f4,	%f12,	%f10
	lduh	[%l7 + 0x50],	%o2
loop_182:
	fmovsl	%xcc,	%f4,	%f13
loop_183:
	fpsub32s	%f12,	%f4,	%f7
	edge16ln	%i6,	%i3,	%o4
	ldsh	[%l7 + 0x1C],	%o1
	sth	%l5,	[%l7 + 0x6C]
	fbu,a	%fcc3,	loop_184
	bg,pn	%icc,	loop_185
	edge8	%l6,	%o3,	%g1
	movcc	%xcc,	%i7,	%g4
loop_184:
	fandnot2s	%f11,	%f11,	%f7
loop_185:
	xor	%g5,	0x13A4,	%i0
	stb	%i4,	[%l7 + 0x46]
	taddcc	%g7,	0x1504,	%l2
	fcmped	%fcc0,	%f4,	%f4
	tge	%xcc,	0x3
	movpos	%icc,	%g3,	%l1
	fnand	%f4,	%f10,	%f4
	array32	%g6,	%i5,	%l4
	xnor	%o5,	%o0,	%l0
	bvc,pt	%xcc,	loop_186
	fornot2	%f2,	%f4,	%f10
	fornot2s	%f12,	%f2,	%f9
	edge16ln	%g2,	%o7,	%i1
loop_186:
	fmovde	%xcc,	%f0,	%f15
	fnegs	%f1,	%f13
	fmovdle	%icc,	%f0,	%f15
	stx	%i2,	[%l7 + 0x40]
	lduh	[%l7 + 0x30],	%o6
	fba	%fcc2,	loop_187
	fpmerge	%f9,	%f6,	%f6
	std	%f6,	[%l7 + 0x70]
	std	%f2,	[%l7 + 0x50]
loop_187:
	bvs,a,pt	%icc,	loop_188
	mulscc	%o2,	%l3,	%i3
	alignaddr	%o4,	%o1,	%i6
	fmovdne	%xcc,	%f6,	%f3
loop_188:
	fmul8x16al	%f12,	%f2,	%f12
	fmovde	%xcc,	%f6,	%f0
	tcs	%icc,	0x5
	andn	%l6,	%l5,	%g1
	edge8	%o3,	%g4,	%i7
	fcmpeq16	%f12,	%f8,	%g5
	ld	[%l7 + 0x18],	%f1
	popc	%i4,	%i0
	brgez	%g7,	loop_189
	ldd	[%l7 + 0x40],	%f2
	fsrc1	%f4,	%f0
	ta	%xcc,	0x1
loop_189:
	move	%icc,	%l2,	%g3
	nop
	setx loop_190, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldsh	[%l7 + 0x6A],	%l1
	ld	[%l7 + 0x7C],	%f14
	andncc	%i5,	%g6,	%o5
loop_190:
	ldd	[%l7 + 0x30],	%f4
	bshuffle	%f4,	%f8,	%f6
	fpack32	%f6,	%f4,	%f12
	umulcc	%o0,	%l4,	%g2
	fmovrsgez	%o7,	%f3,	%f9
	array8	%i1,	%i2,	%o6
	ldd	[%l7 + 0x70],	%f10
	bne,pt	%icc,	loop_191
	tn	%icc,	0x3
	st	%f11,	[%l7 + 0x68]
	fbu	%fcc2,	loop_192
loop_191:
	fandnot2s	%f3,	%f2,	%f1
	fxors	%f1,	%f11,	%f12
	std	%f14,	[%l7 + 0x38]
loop_192:
	xnor	%o2,	0x05B9,	%l3
	xorcc	%i3,	%o4,	%l0
	ldsw	[%l7 + 0x24],	%o1
	ldsh	[%l7 + 0x56],	%i6
	movrgez	%l6,	%l5,	%g1
	std	%f6,	[%l7 + 0x18]
	brgez,a	%g4,	loop_193
	fpadd16	%f12,	%f12,	%f2
	movre	%o3,	0x2C1,	%i7
	fbug,a	%fcc3,	loop_194
loop_193:
	ldsh	[%l7 + 0x5C],	%g5
	fcmple16	%f12,	%f0,	%i0
	ldub	[%l7 + 0x0B],	%g7
loop_194:
	fornot2s	%f10,	%f6,	%f11
	fmovrdgez	%i4,	%f8,	%f14
	st	%f13,	[%l7 + 0x58]
	tneg	%xcc,	0x0
	stb	%g3,	[%l7 + 0x4A]
	ldub	[%l7 + 0x1B],	%l1
	nop
	setx loop_195, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	bneg,a	loop_196
	fnors	%f0,	%f11,	%f1
	bvc,a,pn	%icc,	loop_197
loop_195:
	fmovscs	%xcc,	%f13,	%f11
loop_196:
	faligndata	%f10,	%f14,	%f8
	fnegd	%f14,	%f4
loop_197:
	movl	%xcc,	%i5,	%g6
	brz	%o5,	loop_198
	ldsb	[%l7 + 0x2F],	%o0
	stx	%l2,	[%l7 + 0x58]
	edge32ln	%l4,	%g2,	%o7
loop_198:
	nop
	setx loop_199, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldub	[%l7 + 0x23],	%i2
	lduw	[%l7 + 0x08],	%o6
	bn,a,pt	%xcc,	loop_200
loop_199:
	bneg,pt	%icc,	loop_201
	fmovdvs	%icc,	%f4,	%f9
	edge8n	%o2,	%l3,	%i1
loop_200:
	nop
	setx loop_202, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_201:
	stw	%i3,	[%l7 + 0x68]
	sub	%o4,	0x04C4,	%o1
	stx	%i6,	[%l7 + 0x38]
loop_202:
	stx	%l0,	[%l7 + 0x10]
	fpadd32	%f2,	%f4,	%f0
	fcmpne32	%f8,	%f0,	%l6
	alignaddr	%g1,	%g4,	%l5
	fcmpne32	%f6,	%f4,	%i7
	subcc	%g5,	%o3,	%g7
	fmovsn	%xcc,	%f14,	%f13
	fcmpeq32	%f8,	%f6,	%i4
	ldx	[%l7 + 0x18],	%g3
	for	%f0,	%f14,	%f10
	tsubcctv	%i0,	0x1BF5,	%l1
	fmul8x16al	%f6,	%f5,	%f0
	fbule	%fcc3,	loop_203
	lduh	[%l7 + 0x16],	%i5
	brlez	%g6,	loop_204
	fxnor	%f6,	%f6,	%f8
loop_203:
	fpsub16s	%f13,	%f14,	%f9
	stx	%o5,	[%l7 + 0x50]
loop_204:
	fnegs	%f5,	%f3
	fmul8ulx16	%f14,	%f6,	%f0
	std	%f10,	[%l7 + 0x60]
	srl	%l2,	%o0,	%l4
	fpackfix	%f10,	%f9
	fxors	%f14,	%f2,	%f2
	call	loop_205
	lduw	[%l7 + 0x14],	%g2
	bgu	%icc,	loop_206
	fandnot2	%f6,	%f12,	%f0
loop_205:
	fmovsvs	%icc,	%f10,	%f8
	bcs	loop_207
loop_206:
	edge16	%o7,	%i2,	%o2
	fcmpeq16	%f14,	%f12,	%l3
	lduw	[%l7 + 0x20],	%o6
loop_207:
	lduw	[%l7 + 0x54],	%i3
	std	%f12,	[%l7 + 0x10]
	ldsh	[%l7 + 0x4A],	%o4
	ldsw	[%l7 + 0x4C],	%o1
	movcc	%xcc,	%i1,	%l0
	sdivx	%l6,	0x0061,	%i6
	move	%xcc,	%g1,	%l5
	ble	loop_208
	subccc	%i7,	0x0ABE,	%g4
	fnands	%f9,	%f0,	%f11
	ldx	[%l7 + 0x60],	%o3
loop_208:
	ble	loop_209
	ld	[%l7 + 0x20],	%f13
	fone	%f6
	movcs	%icc,	%g7,	%i4
loop_209:
	edge32ln	%g3,	%g5,	%l1
	edge8ln	%i5,	%g6,	%o5
	tcc	%icc,	0x7
	fnot2	%f2,	%f0
	ldsh	[%l7 + 0x2C],	%l2
	lduh	[%l7 + 0x66],	%i0
	lduh	[%l7 + 0x60],	%o0
	ldsh	[%l7 + 0x6E],	%g2
	ldsw	[%l7 + 0x48],	%l4
	fandnot1s	%f7,	%f2,	%f6
	fmovdle	%xcc,	%f3,	%f5
	fmovspos	%xcc,	%f12,	%f10
	tgu	%xcc,	0x4
	mulx	%o7,	%i2,	%o2
	tneg	%xcc,	0x7
	fmovsa	%icc,	%f2,	%f10
	ldsb	[%l7 + 0x0D],	%l3
	orn	%o6,	%o4,	%o1
	brlez,a	%i1,	loop_210
	fcmps	%fcc3,	%f10,	%f7
	nop
	setx loop_211, %l0, %l1
	jmpl %l1, %i3
	sth	%l6,	[%l7 + 0x5E]
loop_210:
	fbe,a	%fcc0,	loop_212
	tleu	%xcc,	0x0
loop_211:
	stb	%l0,	[%l7 + 0x5B]
	movle	%icc,	%i6,	%g1
loop_212:
	fmovscs	%xcc,	%f5,	%f14
	faligndata	%f10,	%f14,	%f6
	bshuffle	%f8,	%f0,	%f8
	fmovdvs	%icc,	%f6,	%f14
	sllx	%l5,	%g4,	%o3
	faligndata	%f12,	%f8,	%f10
	sth	%i7,	[%l7 + 0x1C]
	fxnor	%f12,	%f10,	%f14
	fpadd32s	%f2,	%f4,	%f1
	fmovrslez	%i4,	%f10,	%f1
	ldub	[%l7 + 0x76],	%g3
	bgu	loop_213
	sth	%g7,	[%l7 + 0x68]
	fbo,a	%fcc3,	loop_214
	movl	%icc,	%l1,	%g5
loop_213:
	fpack16	%f8,	%f3
	bcc,pt	%icc,	loop_215
loop_214:
	fmovrslz	%i5,	%f1,	%f1
	nop
	setx loop_216, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stx	%g6,	[%l7 + 0x38]
loop_215:
	std	%f0,	[%l7 + 0x58]
	fornot2	%f10,	%f6,	%f14
loop_216:
	fcmpd	%fcc3,	%f4,	%f8
	fmovsne	%icc,	%f9,	%f13
	ldsh	[%l7 + 0x4C],	%l2
	lduh	[%l7 + 0x2E],	%i0
	fcmpgt32	%f10,	%f4,	%o5
	bshuffle	%f2,	%f2,	%f2
	fnor	%f4,	%f10,	%f8
	movvs	%xcc,	%g2,	%o0
	fcmpne16	%f10,	%f12,	%o7
	fcmped	%fcc2,	%f14,	%f4
	fone	%f8
	fmovdcc	%icc,	%f8,	%f0
	fmovsvc	%icc,	%f8,	%f0
	fmul8sux16	%f14,	%f10,	%f6
	lduh	[%l7 + 0x20],	%i2
	tcc	%xcc,	0x0
	edge8n	%o2,	%l3,	%o6
	ldub	[%l7 + 0x7B],	%o4
	ld	[%l7 + 0x34],	%f2
	umul	%o1,	0x189E,	%l4
	fcmple16	%f12,	%f0,	%i1
	stw	%l6,	[%l7 + 0x38]
	fcmple32	%f8,	%f10,	%i3
	bcs,pt	%xcc,	loop_217
	fcmpes	%fcc2,	%f9,	%f4
	fornot2	%f2,	%f10,	%f10
	ble,a	loop_218
loop_217:
	bl,a	%xcc,	loop_219
	movre	%l0,	0x149,	%i6
	fmovdn	%xcc,	%f13,	%f2
loop_218:
	bcc,a	%xcc,	loop_220
loop_219:
	array8	%l5,	%g1,	%g4
	edge32ln	%o3,	%i7,	%g3
	movpos	%icc,	%g7,	%i4
loop_220:
	ldsh	[%l7 + 0x58],	%g5
	sth	%l1,	[%l7 + 0x14]
	bpos,a,pn	%xcc,	loop_221
	fbge	%fcc2,	loop_222
	fmovsne	%xcc,	%f11,	%f0
	edge32ln	%g6,	%i5,	%i0
loop_221:
	edge16n	%l2,	%o5,	%o0
loop_222:
	std	%f14,	[%l7 + 0x70]
	ldd	[%l7 + 0x68],	%f12
	fnot1	%f10,	%f12
	edge8n	%g2,	%i2,	%o7
	ldub	[%l7 + 0x14],	%l3
	ldub	[%l7 + 0x5A],	%o2
	edge8n	%o6,	%o4,	%l4
	movcs	%xcc,	%o1,	%i1
	tvc	%icc,	0x0
	lduw	[%l7 + 0x0C],	%l6
	movge	%xcc,	%i3,	%l0
	stb	%l5,	[%l7 + 0x55]
	fbue,a	%fcc3,	loop_223
	fmovda	%xcc,	%f15,	%f7
	ldsh	[%l7 + 0x3C],	%i6
	fnand	%f10,	%f4,	%f0
loop_223:
	stw	%g1,	[%l7 + 0x58]
	ble,pn	%xcc,	loop_224
	fmul8ulx16	%f4,	%f12,	%f14
	ldd	[%l7 + 0x18],	%f4
	fbo	%fcc3,	loop_225
loop_224:
	ldsb	[%l7 + 0x13],	%o3
	fmovdleu	%xcc,	%f10,	%f1
	nop
	setx loop_226, %l0, %l1
	jmpl %l1, %g4
loop_225:
	ldd	[%l7 + 0x10],	%f0
	ba,a	loop_227
	fbu,a	%fcc3,	loop_228
loop_226:
	ldsb	[%l7 + 0x58],	%i7
	fmovrslez	%g3,	%f4,	%f15
loop_227:
	ldub	[%l7 + 0x12],	%i4
loop_228:
	te	%xcc,	0x0
	lduw	[%l7 + 0x30],	%g5
	be,pt	%xcc,	loop_229
	faligndata	%f10,	%f12,	%f0
	ldsh	[%l7 + 0x1A],	%g7
	stx	%l1,	[%l7 + 0x50]
loop_229:
	std	%f0,	[%l7 + 0x48]
	bgu,a,pt	%xcc,	loop_230
	movrgez	%i5,	0x3E1,	%i0
	ld	[%l7 + 0x30],	%f10
	fmovrde	%l2,	%f4,	%f8
loop_230:
	fmuld8sux16	%f3,	%f0,	%f0
	lduh	[%l7 + 0x42],	%g6
	fmovdleu	%xcc,	%f10,	%f0
	fornot1	%f2,	%f2,	%f10
	stx	%o5,	[%l7 + 0x78]
	fmovdvc	%xcc,	%f14,	%f15
	stw	%g2,	[%l7 + 0x40]
	bcc	loop_231
	fmovdleu	%xcc,	%f1,	%f5
	lduw	[%l7 + 0x7C],	%o0
	ldsh	[%l7 + 0x0A],	%i2
loop_231:
	be,a	%xcc,	loop_232
	edge8l	%l3,	%o7,	%o6
	sethi	0x1792,	%o4
	lduw	[%l7 + 0x60],	%l4
loop_232:
	fbe,a	%fcc0,	loop_233
	fmovrdgez	%o1,	%f2,	%f12
	fmul8x16au	%f3,	%f10,	%f2
	srlx	%o2,	%i1,	%l6
loop_233:
	ldsw	[%l7 + 0x54],	%l0
	movrgez	%i3,	%i6,	%g1
	bvs,pt	%xcc,	loop_234
	fzero	%f8
	movrgez	%l5,	%o3,	%g4
	sth	%i7,	[%l7 + 0x28]
loop_234:
	bcc,a	%icc,	loop_235
	tsubcctv	%i4,	0x053B,	%g5
	fands	%f1,	%f15,	%f15
	brnz,a	%g3,	loop_236
loop_235:
	fpsub32s	%f3,	%f2,	%f2
	fmovdle	%icc,	%f10,	%f2
	subc	%g7,	%l1,	%i0
loop_236:
	fpack16	%f8,	%f0
	fand	%f2,	%f2,	%f8
	and	%l2,	0x0805,	%i5
	tsubcctv	%o5,	%g6,	%o0
	and	%g2,	0x098C,	%i2
	movvs	%icc,	%l3,	%o6
	stw	%o7,	[%l7 + 0x24]
	bge,a,pn	%icc,	loop_237
	std	%f8,	[%l7 + 0x08]
	stx	%o4,	[%l7 + 0x18]
	fbug	%fcc2,	loop_238
loop_237:
	sth	%o1,	[%l7 + 0x76]
	ldsb	[%l7 + 0x7B],	%l4
	fcmpgt16	%f10,	%f6,	%i1
loop_238:
	movpos	%xcc,	%l6,	%o2
	andcc	%l0,	0x0058,	%i3
	srl	%g1,	%l5,	%i6
	fpadd16s	%f15,	%f5,	%f14
	movleu	%icc,	%o3,	%g4
	fmovspos	%icc,	%f8,	%f8
	ldub	[%l7 + 0x5B],	%i7
	addccc	%g5,	0x0CA6,	%i4
	fandnot2	%f8,	%f14,	%f0
	add	%g3,	0x165A,	%l1
	fmul8x16	%f15,	%f2,	%f8
	fnegs	%f11,	%f8
	stb	%i0,	[%l7 + 0x11]
	edge8ln	%l2,	%i5,	%o5
	edge16l	%g7,	%o0,	%g6
	movgu	%xcc,	%i2,	%g2
	ba,a,pt	%icc,	loop_239
	lduh	[%l7 + 0x14],	%o6
	sth	%l3,	[%l7 + 0x1A]
	udivcc	%o7,	0x110B,	%o1
loop_239:
	ldub	[%l7 + 0x1E],	%l4
	ldx	[%l7 + 0x70],	%o4
	fnors	%f11,	%f5,	%f11
	movrgz	%i1,	%o2,	%l0
	stb	%i3,	[%l7 + 0x11]
	fmovdgu	%icc,	%f3,	%f14
	add	%l6,	%l5,	%i6
	movrne	%o3,	0x339,	%g4
	ldsh	[%l7 + 0x5A],	%g1
	fcmped	%fcc2,	%f2,	%f12
	stx	%i7,	[%l7 + 0x78]
	ldsh	[%l7 + 0x5C],	%g5
	fbge,a	%fcc2,	loop_240
	ldd	[%l7 + 0x18],	%f8
	sth	%g3,	[%l7 + 0x4E]
	taddcc	%i4,	0x1547,	%l1
loop_240:
	stb	%l2,	[%l7 + 0x0D]
	fpadd32s	%f7,	%f9,	%f3
	fmovsg	%xcc,	%f3,	%f9
	fmovspos	%icc,	%f14,	%f6
	ldx	[%l7 + 0x68],	%i0
	fcmps	%fcc3,	%f0,	%f6
	brnz	%i5,	loop_241
	ldub	[%l7 + 0x3C],	%g7
	fpsub32	%f2,	%f4,	%f2
	st	%f2,	[%l7 + 0x6C]
loop_241:
	bl,a,pt	%xcc,	loop_242
	orn	%o5,	0x0764,	%o0
	fabsd	%f6,	%f14
	ldub	[%l7 + 0x6E],	%i2
loop_242:
	lduh	[%l7 + 0x14],	%g6
	tn	%icc,	0x1
	and	%o6,	0x0B4F,	%g2
	edge32n	%l3,	%o7,	%o1
	lduh	[%l7 + 0x6A],	%l4
	stx	%i1,	[%l7 + 0x60]
	fcmple16	%f4,	%f6,	%o2
	fpack32	%f8,	%f10,	%f8
	smulcc	%o4,	0x13D0,	%l0
	ldub	[%l7 + 0x71],	%i3
	ldsb	[%l7 + 0x0C],	%l6
	fcmped	%fcc2,	%f0,	%f2
	bleu,a	%xcc,	loop_243
	stw	%l5,	[%l7 + 0x08]
	ldx	[%l7 + 0x38],	%o3
	sdivcc	%i6,	0x0439,	%g4
loop_243:
	orncc	%g1,	0x189C,	%g5
	stw	%g3,	[%l7 + 0x2C]
	lduw	[%l7 + 0x60],	%i7
	udivcc	%i4,	0x169D,	%l1
	fone	%f12
	bshuffle	%f2,	%f14,	%f0
	sra	%l2,	0x13,	%i5
	stb	%i0,	[%l7 + 0x56]
	movrgz	%o5,	0x2A7,	%o0
	tvs	%icc,	0x7
	ld	[%l7 + 0x1C],	%f2
	tcc	%icc,	0x2
	be	%icc,	loop_244
	movre	%i2,	%g6,	%o6
	addc	%g7,	%g2,	%l3
	fands	%f8,	%f14,	%f10
loop_244:
	sub	%o7,	%l4,	%i1
	fmovrdlz	%o1,	%f4,	%f8
	stx	%o2,	[%l7 + 0x48]
	stb	%o4,	[%l7 + 0x08]
	udivx	%i3,	0x0103,	%l6
	tcs	%icc,	0x6
	ld	[%l7 + 0x18],	%f0
	fmovd	%f2,	%f10
	add	%l0,	%l5,	%i6
	movvc	%icc,	%g4,	%o3
	subcc	%g5,	%g1,	%g3
	tpos	%xcc,	0x1
	stx	%i4,	[%l7 + 0x60]
	bl,a	%icc,	loop_245
	movvs	%icc,	%i7,	%l2
	fcmple32	%f8,	%f14,	%i5
	fcmpes	%fcc1,	%f10,	%f3
loop_245:
	sth	%i0,	[%l7 + 0x0A]
	bshuffle	%f0,	%f10,	%f12
	fmul8x16	%f15,	%f4,	%f10
	fbule,a	%fcc1,	loop_246
	lduw	[%l7 + 0x24],	%o5
	fbue	%fcc3,	loop_247
	movcc	%icc,	%l1,	%o0
loop_246:
	be,pt	%icc,	loop_248
	tn	%xcc,	0x6
loop_247:
	fmul8x16	%f11,	%f14,	%f8
	fcmped	%fcc0,	%f10,	%f2
loop_248:
	fandnot2	%f0,	%f6,	%f4
	udiv	%i2,	0x0B2B,	%g6
	fandnot1s	%f1,	%f8,	%f12
	bshuffle	%f0,	%f14,	%f0
	ldub	[%l7 + 0x11],	%o6
	sth	%g2,	[%l7 + 0x2A]
	fmovdle	%icc,	%f0,	%f4
	bpos,pt	%xcc,	loop_249
	fmovrsne	%g7,	%f12,	%f11
	fmovse	%xcc,	%f2,	%f11
	ldx	[%l7 + 0x50],	%o7
loop_249:
	lduw	[%l7 + 0x6C],	%l4
	movg	%icc,	%i1,	%l3
	edge16l	%o1,	%o4,	%o2
	movcc	%icc,	%l6,	%l0
	fpsub16	%f12,	%f0,	%f0
	fbule,a	%fcc3,	loop_250
	edge8l	%i3,	%l5,	%i6
	stw	%g4,	[%l7 + 0x4C]
	ble,a	loop_251
loop_250:
	ldsw	[%l7 + 0x54],	%o3
	fmul8sux16	%f14,	%f4,	%f6
	tsubcc	%g5,	0x08DC,	%g1
loop_251:
	tleu	%icc,	0x4
	smulcc	%i4,	0x0B35,	%g3
	sth	%i7,	[%l7 + 0x18]
	lduh	[%l7 + 0x32],	%i5
	fcmpes	%fcc3,	%f11,	%f11
	fmul8x16al	%f13,	%f13,	%f12
	fmovrsne	%l2,	%f12,	%f6
	bvc	loop_252
	fmovrdgz	%i0,	%f0,	%f8
	fcmps	%fcc2,	%f0,	%f14
	sllx	%o5,	%l1,	%i2
loop_252:
	fcmpeq32	%f8,	%f2,	%o0
	stx	%o6,	[%l7 + 0x58]
	fbug,a	%fcc1,	loop_253
	sub	%g2,	%g7,	%g6
	ta	%icc,	0x6
	movrgz	%l4,	0x096,	%i1
loop_253:
	stx	%l3,	[%l7 + 0x78]
	stx	%o1,	[%l7 + 0x28]
	ta	%xcc,	0x0
	subc	%o4,	%o7,	%l6
	movre	%l0,	0x069,	%i3
	fble,a	%fcc2,	loop_254
	st	%f12,	[%l7 + 0x08]
	fcmpgt16	%f2,	%f10,	%l5
	tcc	%icc,	0x2
loop_254:
	fmovsa	%icc,	%f5,	%f1
	ldx	[%l7 + 0x20],	%o2
	stw	%g4,	[%l7 + 0x40]
	sdivcc	%i6,	0x11C5,	%o3
	std	%f4,	[%l7 + 0x30]
	fmovrslz	%g1,	%f11,	%f15
	ldub	[%l7 + 0x0C],	%g5
	ble,a,pn	%icc,	loop_255
	fmovsneg	%icc,	%f10,	%f6
	lduh	[%l7 + 0x1A],	%g3
	lduw	[%l7 + 0x54],	%i4
loop_255:
	lduw	[%l7 + 0x4C],	%i7
	tg	%xcc,	0x0
	movn	%icc,	%i5,	%i0
	ldx	[%l7 + 0x78],	%l2
	ldsh	[%l7 + 0x34],	%l1
	fbue	%fcc1,	loop_256
	movrlz	%o5,	0x370,	%o0
	fmovdl	%icc,	%f3,	%f4
	st	%f1,	[%l7 + 0x10]
loop_256:
	tg	%xcc,	0x7
	std	%f8,	[%l7 + 0x60]
	orcc	%o6,	0x1BFF,	%g2
	fmovsn	%icc,	%f9,	%f6
	fmul8x16au	%f8,	%f0,	%f4
	sll	%g7,	%g6,	%i2
	fbule	%fcc1,	loop_257
	fmovsg	%xcc,	%f10,	%f11
	nop
	setx loop_258, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	movrlez	%l4,	%l3,	%o1
loop_257:
	fone	%f0
	std	%f14,	[%l7 + 0x08]
loop_258:
	stx	%i1,	[%l7 + 0x30]
	bvc	loop_259
	lduh	[%l7 + 0x7E],	%o7
	movle	%icc,	%o4,	%l0
	brgz	%l6,	loop_260
loop_259:
	sdiv	%l5,	0x1109,	%i3
	ldsh	[%l7 + 0x52],	%o2
	fpsub16	%f12,	%f12,	%f14
loop_260:
	mulscc	%g4,	%i6,	%g1
	subcc	%g5,	0x1AF4,	%g3
	fmovdg	%xcc,	%f3,	%f4
	ba,a,pn	%xcc,	loop_261
	fmovsa	%icc,	%f7,	%f0
	lduh	[%l7 + 0x2A],	%o3
	fornot2s	%f6,	%f6,	%f15
loop_261:
	tcc	%icc,	0x3
	subccc	%i7,	0x121E,	%i5
	sllx	%i4,	%l2,	%i0
	fmuld8sux16	%f12,	%f15,	%f14
	sth	%o5,	[%l7 + 0x42]
	sth	%l1,	[%l7 + 0x66]
	tgu	%xcc,	0x6
	xorcc	%o0,	%o6,	%g2
	popc	0x102B,	%g6
	brlz	%g7,	loop_262
	fcmpgt16	%f10,	%f12,	%l4
	ldsw	[%l7 + 0x50],	%i2
	fandnot2	%f14,	%f8,	%f14
loop_262:
	smulcc	%l3,	%i1,	%o7
	edge32l	%o4,	%l0,	%o1
	bge	%xcc,	loop_263
	fpsub32	%f6,	%f14,	%f4
	stb	%l5,	[%l7 + 0x24]
	smulcc	%l6,	%o2,	%g4
loop_263:
	fpsub16	%f0,	%f10,	%f10
	fpadd32	%f12,	%f6,	%f14
	edge8ln	%i6,	%i3,	%g5
	edge16n	%g1,	%o3,	%g3
	std	%f2,	[%l7 + 0x70]
	fpmerge	%f12,	%f8,	%f2
	fble	%fcc2,	loop_264
	edge16l	%i7,	%i5,	%l2
	xnor	%i0,	%i4,	%l1
	fmovsvs	%icc,	%f13,	%f6
loop_264:
	lduh	[%l7 + 0x12],	%o5
	st	%f1,	[%l7 + 0x6C]
	edge16ln	%o0,	%g2,	%o6
	fmovspos	%xcc,	%f13,	%f10
	edge8n	%g7,	%g6,	%l4
	std	%f10,	[%l7 + 0x60]
	fmul8x16al	%f15,	%f5,	%f0
	std	%f0,	[%l7 + 0x70]
	ldx	[%l7 + 0x18],	%i2
	nop
	setx loop_265, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	lduw	[%l7 + 0x30],	%i1
	tgu	%icc,	0x4
	ble,a,pn	%icc,	loop_266
loop_265:
	fmovdvc	%xcc,	%f8,	%f7
	fbul,a	%fcc3,	loop_267
	fmovdpos	%xcc,	%f5,	%f9
loop_266:
	fmovsneg	%icc,	%f7,	%f14
	fcmple16	%f10,	%f8,	%o7
loop_267:
	mova	%xcc,	%l3,	%o4
	movre	%l0,	%o1,	%l6
	ldd	[%l7 + 0x58],	%f14
	ldub	[%l7 + 0x62],	%o2
	fmovrdlez	%l5,	%f2,	%f2
	fbn	%fcc2,	loop_268
	fandnot1s	%f1,	%f0,	%f9
	alignaddr	%i6,	%g4,	%i3
	edge32n	%g1,	%o3,	%g5
loop_268:
	fmovdpos	%icc,	%f0,	%f12
	subccc	%i7,	0x17F7,	%i5
	sdivcc	%g3,	0x105D,	%i0
	ld	[%l7 + 0x58],	%f2
	ldsb	[%l7 + 0x39],	%i4
	bne,a	loop_269
	stx	%l2,	[%l7 + 0x28]
	fnands	%f8,	%f1,	%f10
	fmovsvc	%xcc,	%f1,	%f11
loop_269:
	subc	%l1,	0x1558,	%o0
	ldub	[%l7 + 0x6C],	%g2
	fcmple16	%f6,	%f6,	%o5
	lduh	[%l7 + 0x7A],	%g7
	ldsw	[%l7 + 0x24],	%g6
	call	loop_270
	nop
	setx loop_271, %l0, %l1
	jmpl %l1, %o6
	be,a	loop_272
	fpadd32	%f12,	%f10,	%f14
loop_270:
	orncc	%l4,	%i2,	%i1
loop_271:
	fands	%f13,	%f2,	%f8
loop_272:
	fxnors	%f8,	%f1,	%f13
	array16	%l3,	%o4,	%l0
	movl	%xcc,	%o1,	%l6
	sth	%o7,	[%l7 + 0x74]
	orncc	%o2,	0x073F,	%l5
	srlx	%i6,	0x1D,	%i3
	ld	[%l7 + 0x08],	%f6
	fxor	%f2,	%f8,	%f14
	fxors	%f13,	%f1,	%f5
	fbuge	%fcc1,	loop_273
	movl	%icc,	%g1,	%o3
	srlx	%g5,	%i7,	%i5
	sethi	0x151A,	%g4
loop_273:
	fabsd	%f8,	%f4
	fbue	%fcc0,	loop_274
	fmovrdgz	%g3,	%f0,	%f8
	taddcc	%i0,	0x1E19,	%i4
	sethi	0x0E71,	%l2
loop_274:
	fbge,a	%fcc3,	loop_275
	or	%o0,	0x187D,	%l1
	fmovrdlz	%g2,	%f2,	%f8
	ba,a	%xcc,	loop_276
loop_275:
	tg	%icc,	0x3
	ldsb	[%l7 + 0x14],	%o5
	fcmpgt16	%f0,	%f8,	%g7
loop_276:
	fpsub32	%f0,	%f6,	%f0
	fmovrdgez	%g6,	%f12,	%f14
	ldsb	[%l7 + 0x47],	%l4
	movge	%xcc,	%o6,	%i2
	sllx	%i1,	0x16,	%o4
	brlz	%l3,	loop_277
	fbge,a	%fcc3,	loop_278
	srax	%o1,	0x08,	%l6
	movleu	%icc,	%l0,	%o2
loop_277:
	ldsw	[%l7 + 0x3C],	%o7
loop_278:
	movle	%xcc,	%i6,	%l5
	edge8ln	%g1,	%i3,	%o3
	st	%f7,	[%l7 + 0x0C]
	sth	%i7,	[%l7 + 0x54]
	andncc	%i5,	%g5,	%g3
	tl	%icc,	0x4
	subc	%g4,	0x08A7,	%i0
	lduw	[%l7 + 0x24],	%i4
	smul	%o0,	%l2,	%l1
	movneg	%xcc,	%o5,	%g2
	orcc	%g6,	%l4,	%o6
	ldsw	[%l7 + 0x64],	%i2
	xorcc	%g7,	%o4,	%i1
	bcc,a,pt	%xcc,	loop_279
	array16	%o1,	%l6,	%l3
	std	%f14,	[%l7 + 0x18]
	or	%o2,	%o7,	%i6
loop_279:
	tpos	%icc,	0x3
	fmovdneg	%icc,	%f1,	%f14
	edge32n	%l5,	%g1,	%l0
	edge32n	%i3,	%i7,	%i5
	movgu	%icc,	%g5,	%g3
	fblg	%fcc1,	loop_280
	fmuld8sux16	%f7,	%f4,	%f6
	brnz,a	%o3,	loop_281
	fmovrdne	%i0,	%f6,	%f10
loop_280:
	fornot1	%f6,	%f4,	%f4
	and	%g4,	%o0,	%i4
loop_281:
	fand	%f10,	%f14,	%f8
	ldx	[%l7 + 0x50],	%l2
	stx	%l1,	[%l7 + 0x18]
	movvs	%xcc,	%g2,	%o5
	std	%f14,	[%l7 + 0x58]
	sth	%g6,	[%l7 + 0x64]
	ldub	[%l7 + 0x43],	%o6
	brlz,a	%l4,	loop_282
	fba	%fcc3,	loop_283
	fmovsneg	%icc,	%f10,	%f2
	fmovse	%icc,	%f2,	%f4
loop_282:
	fornot2	%f14,	%f10,	%f0
loop_283:
	orn	%i2,	0x104B,	%g7
	fmovrdlez	%i1,	%f0,	%f2
	edge32	%o4,	%o1,	%l3
	bvc,a	loop_284
	srl	%o2,	0x0E,	%l6
	fbn	%fcc1,	loop_285
	fmovrsgz	%o7,	%f4,	%f3
loop_284:
	array8	%l5,	%i6,	%l0
	lduh	[%l7 + 0x6E],	%i3
loop_285:
	fcmple32	%f2,	%f12,	%i7
	fabss	%f6,	%f11
	fmovrde	%g1,	%f10,	%f12
	fxnor	%f0,	%f4,	%f14
	movre	%i5,	0x024,	%g3
	fandnot1s	%f14,	%f12,	%f0
	ldd	[%l7 + 0x20],	%f12
	ldx	[%l7 + 0x10],	%o3
	bg,a,pn	%xcc,	loop_286
	fbug,a	%fcc0,	loop_287
	brgez	%g5,	loop_288
	fmovdvc	%icc,	%f7,	%f0
loop_286:
	xor	%g4,	0x0719,	%o0
loop_287:
	lduh	[%l7 + 0x2E],	%i4
loop_288:
	ldsh	[%l7 + 0x52],	%l2
	lduh	[%l7 + 0x0A],	%l1
	stb	%i0,	[%l7 + 0x3A]
	fornot1s	%f14,	%f9,	%f1
	bn,a,pt	%xcc,	loop_289
	fmovrsgz	%g2,	%f4,	%f4
	fpadd32	%f10,	%f8,	%f14
	std	%f4,	[%l7 + 0x58]
loop_289:
	or	%g6,	0x1DE6,	%o5
	ldd	[%l7 + 0x38],	%f2
	fpadd16	%f4,	%f12,	%f6
	sth	%l4,	[%l7 + 0x34]
	movvs	%icc,	%i2,	%g7
	fbne	%fcc1,	loop_290
	fmovdl	%icc,	%f14,	%f8
	ldsh	[%l7 + 0x7C],	%o6
	srl	%i1,	0x1A,	%o1
loop_290:
	fmovs	%f0,	%f8
	movre	%l3,	0x3E1,	%o4
	ldx	[%l7 + 0x10],	%l6
	st	%f2,	[%l7 + 0x24]
	fexpand	%f13,	%f8
	ldsb	[%l7 + 0x7C],	%o7
	ldd	[%l7 + 0x18],	%f6
	fbg,a	%fcc2,	loop_291
	ld	[%l7 + 0x2C],	%f2
	ldx	[%l7 + 0x20],	%l5
	fmovsa	%xcc,	%f3,	%f9
loop_291:
	sllx	%o2,	%i6,	%i3
	fblg,a	%fcc0,	loop_292
	lduh	[%l7 + 0x68],	%i7
	fmovdvc	%xcc,	%f1,	%f7
	fmul8x16al	%f6,	%f1,	%f0
loop_292:
	bn,pt	%xcc,	loop_293
	bge	%icc,	loop_294
	fornot2s	%f14,	%f11,	%f1
	fcmpd	%fcc3,	%f6,	%f0
loop_293:
	stb	%l0,	[%l7 + 0x77]
loop_294:
	stx	%g1,	[%l7 + 0x38]
	st	%f5,	[%l7 + 0x58]
	stw	%g3,	[%l7 + 0x6C]
	ldub	[%l7 + 0x51],	%o3
	tn	%xcc,	0x1
	fbug,a	%fcc2,	loop_295
	fmovrdgz	%g5,	%f14,	%f0
	stb	%g4,	[%l7 + 0x10]
	addcc	%i5,	%o0,	%i4
loop_295:
	fmovdneg	%icc,	%f1,	%f10
	ldsb	[%l7 + 0x60],	%l2
	ldub	[%l7 + 0x40],	%l1
	fmovrdlz	%i0,	%f12,	%f8
	edge16	%g6,	%o5,	%l4
	ldd	[%l7 + 0x38],	%f2
	fmovrdlz	%g2,	%f4,	%f2
	brz	%i2,	loop_296
	fandnot2	%f4,	%f2,	%f0
	umul	%g7,	%i1,	%o6
	fbug	%fcc0,	loop_297
loop_296:
	ldx	[%l7 + 0x08],	%o1
	srax	%l3,	%o4,	%o7
	fcmpeq16	%f4,	%f2,	%l5
loop_297:
	lduh	[%l7 + 0x6A],	%l6
	st	%f15,	[%l7 + 0x14]
	edge32ln	%i6,	%o2,	%i3
	sth	%i7,	[%l7 + 0x36]
	andncc	%l0,	%g1,	%o3
	ldsb	[%l7 + 0x3D],	%g5
	fcmple32	%f14,	%f14,	%g4
	mulx	%i5,	0x1CA1,	%g3
	bl	loop_298
	fmul8sux16	%f10,	%f14,	%f2
	sra	%i4,	0x0A,	%l2
	std	%f4,	[%l7 + 0x70]
loop_298:
	ldub	[%l7 + 0x43],	%o0
	fmovdn	%icc,	%f8,	%f8
	edge16ln	%i0,	%g6,	%o5
	sth	%l4,	[%l7 + 0x3C]
	fornot1s	%f7,	%f9,	%f3
	movg	%icc,	%g2,	%l1
	std	%f14,	[%l7 + 0x40]
	fmul8ulx16	%f10,	%f8,	%f6
	addccc	%i2,	%g7,	%i1
	ldsb	[%l7 + 0x10],	%o1
	bge,a,pt	%xcc,	loop_299
	tl	%icc,	0x7
	fmovrslz	%o6,	%f1,	%f13
	array8	%l3,	%o4,	%o7
loop_299:
	addccc	%l6,	0x128D,	%l5
	fornot1s	%f14,	%f14,	%f14
	ldsw	[%l7 + 0x38],	%i6
	bge	loop_300
	fmovspos	%icc,	%f3,	%f15
	array8	%o2,	%i7,	%i3
	move	%icc,	%g1,	%o3
loop_300:
	ldsh	[%l7 + 0x2E],	%g5
	fbge	%fcc1,	loop_301
	lduw	[%l7 + 0x10],	%l0
	st	%f10,	[%l7 + 0x68]
	tne	%xcc,	0x4
loop_301:
	fmovrslz	%i5,	%f12,	%f3
	ldd	[%l7 + 0x50],	%f12
	stb	%g3,	[%l7 + 0x63]
	ldsb	[%l7 + 0x5F],	%i4
	sll	%g4,	%o0,	%l2
	tcc	%icc,	0x1
	sll	%g6,	%o5,	%i0
	ldsb	[%l7 + 0x55],	%g2
	stx	%l1,	[%l7 + 0x30]
	fone	%f12
	sll	%l4,	%g7,	%i2
	fxor	%f0,	%f0,	%f2
	sra	%i1,	%o1,	%o6
	fcmpne16	%f10,	%f12,	%o4
	udivcc	%l3,	0x0914,	%l6
	orn	%o7,	%i6,	%l5
	mova	%icc,	%i7,	%o2
	fba	%fcc3,	loop_302
	stx	%i3,	[%l7 + 0x40]
	ldsh	[%l7 + 0x36],	%g1
	andcc	%o3,	%g5,	%l0
loop_302:
	ldd	[%l7 + 0x70],	%f6
	fnot2s	%f1,	%f6
	fpackfix	%f0,	%f10
	ldx	[%l7 + 0x20],	%g3
	fmovsneg	%icc,	%f8,	%f13
	stb	%i4,	[%l7 + 0x4C]
	fmuld8ulx16	%f2,	%f13,	%f4
	ldsh	[%l7 + 0x6C],	%g4
	brlez,a	%o0,	loop_303
	movn	%xcc,	%i5,	%l2
	fmovrsgez	%o5,	%f10,	%f1
	fmovdpos	%icc,	%f9,	%f0
loop_303:
	fmovda	%icc,	%f5,	%f10
	ldub	[%l7 + 0x5F],	%i0
	brgz,a	%g2,	loop_304
	stb	%l1,	[%l7 + 0x2C]
	edge32n	%l4,	%g6,	%g7
	movrlz	%i2,	0x336,	%o1
loop_304:
	lduh	[%l7 + 0x74],	%i1
	fcmpeq16	%f12,	%f6,	%o6
	bneg,a	loop_305
	ld	[%l7 + 0x1C],	%f6
	nop
	setx loop_306, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fnegd	%f2,	%f14
loop_305:
	brlz	%l3,	loop_307
	fmovse	%icc,	%f13,	%f5
loop_306:
	ldsb	[%l7 + 0x0A],	%o4
	ldsw	[%l7 + 0x60],	%l6
loop_307:
	edge16	%i6,	%l5,	%i7
	tl	%icc,	0x6
	sth	%o2,	[%l7 + 0x30]
	fpackfix	%f2,	%f12
	brgez,a	%o7,	loop_308
	fmovscs	%xcc,	%f2,	%f5
	stx	%g1,	[%l7 + 0x30]
	fba,a	%fcc2,	loop_309
loop_308:
	fmovdl	%icc,	%f8,	%f12
	fxnors	%f0,	%f13,	%f12
	movvs	%xcc,	%o3,	%i3
loop_309:
	fmovde	%icc,	%f6,	%f2
	fmovdcc	%icc,	%f15,	%f10
	tle	%icc,	0x1
	edge32	%g5,	%l0,	%i4
	tsubcc	%g3,	%o0,	%g4
	fone	%f10
	ta	%icc,	0x6
	fble,a	%fcc0,	loop_310
	movrlez	%l2,	%i5,	%i0
	ldd	[%l7 + 0x40],	%f2
	stb	%o5,	[%l7 + 0x22]
loop_310:
	fcmple16	%f10,	%f0,	%l1
	stw	%g2,	[%l7 + 0x18]
	ldd	[%l7 + 0x30],	%f6
	std	%f4,	[%l7 + 0x58]
	fmovs	%f9,	%f13
	fmovrdlz	%g6,	%f0,	%f10
	fpsub16	%f0,	%f6,	%f12
	ld	[%l7 + 0x30],	%f14
	lduw	[%l7 + 0x78],	%l4
	bvs,pn	%xcc,	loop_311
	fandnot1	%f0,	%f10,	%f4
	movl	%xcc,	%i2,	%g7
	movn	%icc,	%o1,	%o6
loop_311:
	fcmps	%fcc0,	%f15,	%f8
	ldd	[%l7 + 0x10],	%f4
	fnot1	%f8,	%f6
	fxors	%f10,	%f11,	%f5
	bgu,a,pn	%icc,	loop_312
	fands	%f5,	%f14,	%f10
	for	%f4,	%f10,	%f2
	bvc,a,pn	%icc,	loop_313
loop_312:
	fone	%f4
	bne,pt	%icc,	loop_314
	addcc	%i1,	0x161B,	%o4
loop_313:
	bleu,a	loop_315
	bn,a,pt	%xcc,	loop_316
loop_314:
	edge32ln	%l3,	%i6,	%l5
	movvs	%xcc,	%i7,	%l6
loop_315:
	tsubcc	%o2,	0x0B81,	%o7
loop_316:
	tcc	%xcc,	0x7
	movle	%xcc,	%g1,	%i3
	ldub	[%l7 + 0x41],	%g5
	tg	%xcc,	0x0
	ldsh	[%l7 + 0x24],	%l0
	srax	%o3,	0x19,	%g3
	umulcc	%i4,	0x1AB5,	%o0
	ld	[%l7 + 0x68],	%f3
	mulx	%g4,	%i5,	%l2
	ldsw	[%l7 + 0x28],	%i0
	movle	%icc,	%o5,	%l1
	ldub	[%l7 + 0x6B],	%g2
	bgu	loop_317
	edge16ln	%g6,	%i2,	%l4
	xnor	%o1,	%g7,	%o6
	fbuge,a	%fcc2,	loop_318
loop_317:
	fbl	%fcc3,	loop_319
	fba,a	%fcc0,	loop_320
	fmovdl	%icc,	%f3,	%f11
loop_318:
	fbge,a	%fcc0,	loop_321
loop_319:
	ldd	[%l7 + 0x50],	%f4
loop_320:
	fmovdcc	%xcc,	%f9,	%f8
	ldd	[%l7 + 0x60],	%f8
loop_321:
	tsubcctv	%o4,	0x1206,	%l3
	mulx	%i1,	0x00A9,	%l5
	mulx	%i7,	0x0819,	%i6
	fexpand	%f11,	%f0
	fmovse	%xcc,	%f13,	%f4
	ldsh	[%l7 + 0x76],	%l6
	edge8n	%o2,	%g1,	%i3
	fmovsge	%xcc,	%f1,	%f3
	mulx	%g5,	0x0C3E,	%o7
	sra	%l0,	%o3,	%g3
	sethi	0x0F8D,	%o0
	taddcctv	%g4,	%i4,	%i5
	fcmpeq32	%f8,	%f0,	%l2
	fsrc1s	%f10,	%f15
	stb	%o5,	[%l7 + 0x17]
	ldsh	[%l7 + 0x76],	%l1
	movrlz	%i0,	0x2CC,	%g2
	stb	%g6,	[%l7 + 0x51]
	ldd	[%l7 + 0x40],	%f8
	st	%f13,	[%l7 + 0x48]
	smulcc	%l4,	%o1,	%i2
	fmul8sux16	%f8,	%f12,	%f8
	fmul8ulx16	%f12,	%f8,	%f0
	fmovdcs	%icc,	%f5,	%f4
	ldsw	[%l7 + 0x54],	%o6
	ldsh	[%l7 + 0x1A],	%o4
	ldsb	[%l7 + 0x74],	%g7
	fpsub32	%f6,	%f10,	%f2
	fmovdl	%icc,	%f0,	%f0
	fcmps	%fcc3,	%f0,	%f10
	popc	%l3,	%l5
	fmovdleu	%icc,	%f5,	%f8
	srl	%i7,	%i1,	%i6
	addcc	%l6,	0x10A1,	%o2
	tneg	%icc,	0x7
	stb	%i3,	[%l7 + 0x13]
	ta	%xcc,	0x0
	std	%f14,	[%l7 + 0x50]
	ldx	[%l7 + 0x60],	%g1
	stx	%o7,	[%l7 + 0x20]
	array16	%g5,	%l0,	%o3
	move	%xcc,	%o0,	%g3
	bvc	loop_322
	brlz,a	%g4,	loop_323
	st	%f0,	[%l7 + 0x4C]
	call	loop_324
loop_322:
	sdivcc	%i4,	0x1ADC,	%i5
loop_323:
	faligndata	%f6,	%f4,	%f8
	std	%f2,	[%l7 + 0x10]
loop_324:
	alignaddr	%o5,	%l2,	%i0
	fmovsgu	%xcc,	%f6,	%f9
	lduh	[%l7 + 0x42],	%g2
	fmul8sux16	%f4,	%f0,	%f8
	ldd	[%l7 + 0x38],	%f6
	move	%xcc,	%l1,	%g6
	ldsw	[%l7 + 0x6C],	%l4
	bl,a,pt	%icc,	loop_325
	nop
	setx loop_326, %l0, %l1
	jmpl %l1, %i2
	subc	%o1,	0x01D0,	%o6
	ba,a,pt	%icc,	loop_327
loop_325:
	st	%f14,	[%l7 + 0x0C]
loop_326:
	tg	%xcc,	0x7
	fandnot1	%f10,	%f8,	%f8
loop_327:
	fmovrdlz	%o4,	%f0,	%f10
	fmovsl	%xcc,	%f4,	%f2
	movvc	%xcc,	%l3,	%g7
	xor	%i7,	0x1CB1,	%l5
	sth	%i1,	[%l7 + 0x7C]
	edge32	%l6,	%o2,	%i6
	fmovrdlez	%g1,	%f12,	%f8
	fnot2s	%f4,	%f5
	edge32n	%o7,	%g5,	%l0
	stw	%i3,	[%l7 + 0x1C]
	fzero	%f14
	movre	%o3,	0x056,	%g3
	fxnor	%f10,	%f2,	%f12
	st	%f2,	[%l7 + 0x78]
	addccc	%g4,	0x08BF,	%i4
	fmovscs	%xcc,	%f8,	%f11
	ldsh	[%l7 + 0x4A],	%o0
	bge,a	loop_328
	fcmpeq16	%f6,	%f0,	%i5
	stx	%o5,	[%l7 + 0x50]
	movn	%xcc,	%i0,	%g2
loop_328:
	bvc,a	loop_329
	bcc,a	loop_330
	fpadd32s	%f15,	%f2,	%f5
	fpadd16s	%f5,	%f5,	%f3
loop_329:
	smulcc	%l2,	%l1,	%g6
loop_330:
	fmovrdlz	%i2,	%f10,	%f4
	bl,a,pn	%xcc,	loop_331
	ldub	[%l7 + 0x5C],	%l4
	stb	%o6,	[%l7 + 0x40]
	lduw	[%l7 + 0x14],	%o4
loop_331:
	sth	%o1,	[%l7 + 0x4E]
	lduh	[%l7 + 0x0E],	%g7
	edge32n	%i7,	%l3,	%i1
	brlz	%l6,	loop_332
	bpos,a,pn	%xcc,	loop_333
	ldsw	[%l7 + 0x3C],	%l5
	tle	%icc,	0x3
loop_332:
	tleu	%xcc,	0x3
loop_333:
	fmovrde	%o2,	%f10,	%f0
	ldx	[%l7 + 0x50],	%g1
	ldd	[%l7 + 0x18],	%f10
	brgz,a	%i6,	loop_334
	ldsb	[%l7 + 0x3F],	%g5
	ba,a	loop_335
	movvc	%xcc,	%o7,	%l0
loop_334:
	lduh	[%l7 + 0x24],	%o3
	sth	%g3,	[%l7 + 0x3C]
loop_335:
	fbo	%fcc0,	loop_336
	ld	[%l7 + 0x08],	%f14
	lduw	[%l7 + 0x58],	%g4
	ldsw	[%l7 + 0x2C],	%i4
loop_336:
	orn	%i3,	%i5,	%o5
	stw	%o0,	[%l7 + 0x34]
	stx	%g2,	[%l7 + 0x40]
	fmul8x16al	%f4,	%f1,	%f8
	tvc	%icc,	0x2
	tl	%icc,	0x4
	st	%f4,	[%l7 + 0x4C]
	fmovsne	%xcc,	%f1,	%f6
	sth	%i0,	[%l7 + 0x54]
	st	%f11,	[%l7 + 0x70]
	bcs,a	%xcc,	loop_337
	sllx	%l1,	%g6,	%l2
	bvs,a,pt	%icc,	loop_338
	ldx	[%l7 + 0x38],	%i2
loop_337:
	brnz	%l4,	loop_339
	fbul,a	%fcc0,	loop_340
loop_338:
	fmovrse	%o6,	%f9,	%f3
	fmovrdlez	%o4,	%f12,	%f2
loop_339:
	edge8l	%o1,	%g7,	%i7
loop_340:
	fones	%f4
	fbu	%fcc0,	loop_341
	fnot1	%f0,	%f6
	fpack16	%f6,	%f7
	edge32ln	%i1,	%l3,	%l6
loop_341:
	fmovdcs	%icc,	%f12,	%f13
	tcs	%icc,	0x6
	ldsb	[%l7 + 0x1A],	%o2
	fxors	%f5,	%f10,	%f2
	stb	%g1,	[%l7 + 0x25]
	brnz	%l5,	loop_342
	sth	%g5,	[%l7 + 0x60]
	lduh	[%l7 + 0x0C],	%i6
	ba,a	loop_343
loop_342:
	brlez,a	%l0,	loop_344
	tsubcctv	%o7,	0x09AA,	%o3
	fabss	%f10,	%f6
loop_343:
	ldsb	[%l7 + 0x42],	%g3
loop_344:
	fbg,a	%fcc0,	loop_345
	fbl	%fcc1,	loop_346
	fblg	%fcc2,	loop_347
	stb	%g4,	[%l7 + 0x45]
loop_345:
	fpack32	%f8,	%f4,	%f14
loop_346:
	stx	%i4,	[%l7 + 0x48]
loop_347:
	ldub	[%l7 + 0x0A],	%i5
	sub	%o5,	%i3,	%o0
	fcmps	%fcc0,	%f11,	%f2
	fcmpd	%fcc1,	%f8,	%f14
	ldsb	[%l7 + 0x5D],	%i0
	ldub	[%l7 + 0x71],	%l1
	lduw	[%l7 + 0x6C],	%g2
	lduh	[%l7 + 0x3C],	%g6
	ld	[%l7 + 0x10],	%f5
	st	%f6,	[%l7 + 0x44]
	sra	%l2,	%l4,	%i2
	movvc	%icc,	%o6,	%o4
	movcc	%icc,	%g7,	%o1
	ldub	[%l7 + 0x41],	%i1
	and	%i7,	%l3,	%o2
	fpadd32	%f6,	%f4,	%f4
	fbne,a	%fcc3,	loop_348
	fmovscs	%icc,	%f10,	%f5
	ldsb	[%l7 + 0x75],	%l6
	andn	%g1,	%l5,	%g5
loop_348:
	ld	[%l7 + 0x08],	%f5
	edge8ln	%l0,	%i6,	%o3
	fbne,a	%fcc0,	loop_349
	fbuge	%fcc1,	loop_350
	ldsb	[%l7 + 0x3F],	%g3
	sub	%o7,	0x0B66,	%i4
loop_349:
	fmovsleu	%icc,	%f5,	%f6
loop_350:
	movrlz	%g4,	0x124,	%i5
	fnot1s	%f2,	%f6
	addc	%o5,	%o0,	%i0
	umulcc	%l1,	0x19EC,	%i3
	fmovdne	%icc,	%f0,	%f9
	orcc	%g2,	%g6,	%l4
	st	%f10,	[%l7 + 0x58]
	sth	%l2,	[%l7 + 0x7A]
	st	%f11,	[%l7 + 0x10]
	smul	%i2,	%o6,	%o4
	fmovdcs	%xcc,	%f14,	%f7
	ldsb	[%l7 + 0x50],	%o1
	fmovdneg	%icc,	%f4,	%f10
	addcc	%g7,	%i7,	%l3
	ldsb	[%l7 + 0x08],	%i1
	xnor	%l6,	%o2,	%l5
	bge,a,pt	%icc,	loop_351
	fnegs	%f11,	%f8
	tgu	%icc,	0x0
	std	%f6,	[%l7 + 0x30]
loop_351:
	bpos,pn	%icc,	loop_352
	ldx	[%l7 + 0x28],	%g5
	fmovrdne	%l0,	%f10,	%f4
	edge32n	%g1,	%i6,	%o3
loop_352:
	srax	%g3,	0x09,	%o7
	fmovdvs	%icc,	%f10,	%f13
	tvc	%icc,	0x1
	ldsh	[%l7 + 0x46],	%i4
	fpack32	%f12,	%f4,	%f2
	or	%i5,	%g4,	%o5
	and	%o0,	%l1,	%i0
	fmovdge	%icc,	%f13,	%f13
	movleu	%icc,	%i3,	%g2
	ldsb	[%l7 + 0x0A],	%l4
	ldub	[%l7 + 0x75],	%l2
	fmovdle	%xcc,	%f8,	%f6
	stw	%i2,	[%l7 + 0x0C]
	st	%f15,	[%l7 + 0x0C]
	fbl	%fcc1,	loop_353
	fsrc2	%f0,	%f0
	andncc	%o6,	%o4,	%g6
	lduw	[%l7 + 0x08],	%o1
loop_353:
	fpadd32s	%f11,	%f15,	%f14
	fnegs	%f15,	%f6
	edge8n	%i7,	%l3,	%i1
	movrne	%l6,	%g7,	%l5
	tne	%icc,	0x1
	brgez	%o2,	loop_354
	fcmpgt32	%f14,	%f6,	%l0
	fcmpgt32	%f2,	%f0,	%g1
	std	%f0,	[%l7 + 0x60]
loop_354:
	edge8n	%g5,	%o3,	%g3
	fbg,a	%fcc2,	loop_355
	tle	%icc,	0x5
	fmovsn	%xcc,	%f5,	%f9
	fpsub16	%f8,	%f12,	%f6
loop_355:
	fcmpes	%fcc1,	%f2,	%f2
	fmovsvs	%icc,	%f3,	%f2
	sth	%i6,	[%l7 + 0x54]
	ble,a	loop_356
	fmovdge	%xcc,	%f12,	%f6
	fmovdvs	%xcc,	%f6,	%f14
	for	%f14,	%f14,	%f6
loop_356:
	stb	%o7,	[%l7 + 0x0E]
	or	%i4,	%g4,	%o5
	fpack16	%f8,	%f13
	array16	%i5,	%l1,	%o0
	sdiv	%i3,	0x052A,	%i0
	st	%f7,	[%l7 + 0x3C]
	brgez,a	%l4,	loop_357
	ldsh	[%l7 + 0x14],	%l2
	movne	%icc,	%i2,	%o6
	ldub	[%l7 + 0x75],	%o4
loop_357:
	fmuld8ulx16	%f15,	%f3,	%f4
	ldd	[%l7 + 0x40],	%f10
	fmovdge	%xcc,	%f7,	%f10
	bne,a	%icc,	loop_358
	tle	%xcc,	0x1
	fmovsgu	%icc,	%f3,	%f12
	ldsw	[%l7 + 0x58],	%g6
loop_358:
	ldsh	[%l7 + 0x38],	%g2
	sdivcc	%i7,	0x1F3D,	%o1
	pdist	%f0,	%f8,	%f12
	ld	[%l7 + 0x78],	%f0
	edge8ln	%l3,	%l6,	%i1
	sra	%g7,	0x0F,	%l5
	edge32n	%l0,	%g1,	%o2
	movcc	%icc,	%g5,	%o3
	fcmpes	%fcc3,	%f10,	%f0
	movge	%xcc,	%i6,	%o7
	st	%f2,	[%l7 + 0x1C]
	movleu	%icc,	%g3,	%i4
	fpsub16	%f0,	%f12,	%f2
	fpadd32s	%f4,	%f15,	%f9
	sllx	%g4,	0x11,	%i5
	srax	%l1,	0x14,	%o5
	fexpand	%f5,	%f0
	nop
	setx loop_359, %l0, %l1
	jmpl %l1, %i3
	andcc	%o0,	0x0E5B,	%i0
	subcc	%l2,	%l4,	%i2
	ldub	[%l7 + 0x6F],	%o4
loop_359:
	fpsub16	%f14,	%f14,	%f12
	move	%icc,	%o6,	%g2
	fmovdneg	%icc,	%f2,	%f5
	umul	%g6,	%i7,	%o1
	sethi	0x0EF8,	%l6
	udivx	%l3,	0x1E1F,	%i1
	movrne	%l5,	0x1A2,	%l0
	sdivx	%g7,	0x0245,	%g1
	fmovsvs	%icc,	%f3,	%f12
	srlx	%o2,	%o3,	%i6
	pdist	%f6,	%f2,	%f12
	fmovrse	%o7,	%f13,	%f10
	bg,a,pn	%xcc,	loop_360
	array32	%g5,	%g3,	%g4
	tl	%xcc,	0x7
	brz,a	%i4,	loop_361
loop_360:
	movl	%icc,	%i5,	%l1
	bg,a	%icc,	loop_362
	sdiv	%i3,	0x10FA,	%o5
loop_361:
	fmovspos	%icc,	%f11,	%f5
	ldd	[%l7 + 0x08],	%f4
loop_362:
	sth	%o0,	[%l7 + 0x48]
	ldub	[%l7 + 0x54],	%i0
	fors	%f15,	%f12,	%f4
	tsubcc	%l4,	%i2,	%o4
	lduh	[%l7 + 0x42],	%o6
	pdist	%f2,	%f12,	%f6
	fmovsvc	%icc,	%f7,	%f6
	fmovdcc	%xcc,	%f10,	%f6
	lduw	[%l7 + 0x68],	%l2
	ldsw	[%l7 + 0x6C],	%g6
	ldsw	[%l7 + 0x30],	%i7
	fmovdvs	%xcc,	%f7,	%f15
	lduw	[%l7 + 0x64],	%g2
	std	%f4,	[%l7 + 0x40]
	faligndata	%f10,	%f10,	%f14
	lduh	[%l7 + 0x32],	%o1
	fbg	%fcc0,	loop_363
	brnz	%l6,	loop_364
	ld	[%l7 + 0x5C],	%f5
	bne,a	loop_365
loop_363:
	tne	%icc,	0x0
loop_364:
	edge16	%l3,	%l5,	%i1
	fcmpne32	%f14,	%f6,	%g7
loop_365:
	bneg,a	loop_366
	ldd	[%l7 + 0x10],	%f0
	lduw	[%l7 + 0x10],	%l0
	ldd	[%l7 + 0x48],	%f2
loop_366:
	fmovdge	%xcc,	%f13,	%f0
	fnor	%f8,	%f10,	%f2
	std	%f8,	[%l7 + 0x10]
	brgz,a	%o2,	loop_367
	fxnor	%f4,	%f14,	%f12
	fpsub16s	%f11,	%f12,	%f15
	ldx	[%l7 + 0x78],	%g1
loop_367:
	fbuge,a	%fcc3,	loop_368
	tcc	%xcc,	0x6
	bvc,a	loop_369
	srl	%o3,	0x1D,	%o7
loop_368:
	stx	%g5,	[%l7 + 0x68]
	ldd	[%l7 + 0x68],	%f0
loop_369:
	fblg,a	%fcc0,	loop_370
	ldsw	[%l7 + 0x38],	%g3
	andcc	%i6,	%g4,	%i5
	fpsub32	%f0,	%f4,	%f6
loop_370:
	ldx	[%l7 + 0x40],	%i4
	bleu,a,pt	%xcc,	loop_371
	fmovse	%xcc,	%f6,	%f5
	fandnot2	%f10,	%f4,	%f6
	ldsb	[%l7 + 0x18],	%i3
loop_371:
	ldsb	[%l7 + 0x7D],	%o5
	fzero	%f8
	st	%f8,	[%l7 + 0x6C]
	fble,a	%fcc2,	loop_372
	st	%f12,	[%l7 + 0x3C]
	array16	%o0,	%i0,	%l4
	fors	%f9,	%f4,	%f8
loop_372:
	lduh	[%l7 + 0x3E],	%i2
	add	%o4,	%o6,	%l1
	nop
	setx loop_373, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ld	[%l7 + 0x6C],	%f10
	tg	%icc,	0x2
	pdist	%f8,	%f8,	%f4
loop_373:
	fmovsne	%icc,	%f15,	%f10
	ld	[%l7 + 0x28],	%f13
	movrgez	%l2,	0x396,	%g6
	st	%f4,	[%l7 + 0x2C]
	xnorcc	%i7,	%o1,	%g2
	fpadd16	%f4,	%f6,	%f4
	ldd	[%l7 + 0x58],	%f10
	sll	%l3,	%l6,	%l5
	movgu	%icc,	%g7,	%l0
	or	%o2,	0x073A,	%g1
	orncc	%o3,	0x1C62,	%o7
	tne	%xcc,	0x7
	st	%f9,	[%l7 + 0x60]
	udiv	%g5,	0x0DB5,	%g3
	fxnors	%f12,	%f6,	%f8
	orcc	%i6,	%i1,	%g4
	fsrc1s	%f4,	%f13
	subcc	%i5,	0x1568,	%i3
	stb	%o5,	[%l7 + 0x53]
	fmovsn	%xcc,	%f9,	%f12
	fbuge	%fcc2,	loop_374
	orcc	%o0,	%i4,	%l4
	movrne	%i2,	%i0,	%o4
	ldsw	[%l7 + 0x70],	%l1
loop_374:
	be	%xcc,	loop_375
	ld	[%l7 + 0x48],	%f5
	xor	%l2,	%g6,	%i7
	fpmerge	%f9,	%f3,	%f14
loop_375:
	for	%f4,	%f2,	%f10
	edge8l	%o6,	%g2,	%l3
	fmovsneg	%icc,	%f13,	%f2
	brgez	%o1,	loop_376
	fbge	%fcc2,	loop_377
	stw	%l5,	[%l7 + 0x54]
	srl	%g7,	%l6,	%o2
loop_376:
	xnor	%l0,	0x066A,	%g1
loop_377:
	bvc,a	loop_378
	fnegd	%f12,	%f4
	std	%f14,	[%l7 + 0x70]
	ldd	[%l7 + 0x20],	%f0
loop_378:
	sdivcc	%o7,	0x1685,	%g5
	bneg,pt	%xcc,	loop_379
	ldsw	[%l7 + 0x2C],	%g3
	fble	%fcc1,	loop_380
	edge16n	%o3,	%i1,	%i6
loop_379:
	movrlez	%i5,	%i3,	%g4
	ldsh	[%l7 + 0x12],	%o0
loop_380:
	fcmpgt32	%f6,	%f12,	%o5
	tge	%xcc,	0x0
	tgu	%icc,	0x2
	fmovdpos	%xcc,	%f13,	%f13
	fmovsl	%icc,	%f9,	%f13
	stw	%l4,	[%l7 + 0x28]
	siam	0x0
	fbge	%fcc2,	loop_381
	fpsub32	%f2,	%f14,	%f12
	fbl	%fcc3,	loop_382
	stw	%i4,	[%l7 + 0x44]
loop_381:
	bl	loop_383
	ldx	[%l7 + 0x48],	%i2
loop_382:
	fbue	%fcc1,	loop_384
	fmovd	%f14,	%f14
loop_383:
	array16	%i0,	%l1,	%o4
	st	%f7,	[%l7 + 0x4C]
loop_384:
	ldx	[%l7 + 0x20],	%g6
	ldd	[%l7 + 0x50],	%f14
	nop
	setx loop_385, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	stb	%l2,	[%l7 + 0x61]
	lduh	[%l7 + 0x18],	%o6
	bleu,pt	%icc,	loop_386
loop_385:
	bvs	%xcc,	loop_387
	fbne,a	%fcc1,	loop_388
	ldsh	[%l7 + 0x16],	%i7
loop_386:
	nop
	setx loop_389, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_387:
	fbue	%fcc0,	loop_390
loop_388:
	ldsw	[%l7 + 0x18],	%l3
	fpsub32	%f6,	%f2,	%f10
loop_389:
	xorcc	%g2,	0x146E,	%l5
loop_390:
	umul	%g7,	0x1FEC,	%l6
	fmovdl	%xcc,	%f4,	%f12
	movvs	%xcc,	%o2,	%o1
	ldsb	[%l7 + 0x1E],	%g1
	be,a	%xcc,	loop_391
	ldub	[%l7 + 0x08],	%l0
	sethi	0x0203,	%g5
	fbge,a	%fcc0,	loop_392
loop_391:
	lduw	[%l7 + 0x5C],	%g3
	stb	%o7,	[%l7 + 0x55]
	movgu	%icc,	%o3,	%i1
loop_392:
	ld	[%l7 + 0x20],	%f8
	ldub	[%l7 + 0x6D],	%i5
	umulcc	%i6,	0x0341,	%i3
	fcmpgt32	%f2,	%f4,	%g4
	or	%o0,	0x0F67,	%o5
	fbe,a	%fcc0,	loop_393
	ldd	[%l7 + 0x18],	%f2
	ldub	[%l7 + 0x13],	%l4
	movl	%xcc,	%i2,	%i4
loop_393:
	addcc	%l1,	0x1FF0,	%i0
	fmul8ulx16	%f4,	%f4,	%f0
	bl,a,pn	%xcc,	loop_394
	andncc	%o4,	%g6,	%l2
	fmovsgu	%xcc,	%f9,	%f1
	nop
	setx loop_395, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_394:
	pdist	%f6,	%f6,	%f10
	stx	%o6,	[%l7 + 0x20]
	fcmple16	%f14,	%f8,	%l3
loop_395:
	fmovdg	%xcc,	%f0,	%f6
	fmul8x16au	%f2,	%f5,	%f12
	ldub	[%l7 + 0x44],	%g2
	brgz,a	%l5,	loop_396
	bcc,a	%xcc,	loop_397
	umul	%i7,	%g7,	%o2
	fpsub16s	%f9,	%f5,	%f0
loop_396:
	sth	%o1,	[%l7 + 0x10]
loop_397:
	brnz	%l6,	loop_398
	fmovdcs	%icc,	%f4,	%f4
	bleu,a,pt	%xcc,	loop_399
	tvs	%icc,	0x7
loop_398:
	fmovsl	%icc,	%f2,	%f9
	st	%f3,	[%l7 + 0x2C]
loop_399:
	ldd	[%l7 + 0x48],	%f0
	be,a,pn	%xcc,	loop_400
	movvs	%xcc,	%l0,	%g5
	move	%icc,	%g3,	%o7
	call	loop_401
loop_400:
	std	%f6,	[%l7 + 0x28]
	lduh	[%l7 + 0x32],	%o3
	fabss	%f13,	%f12
loop_401:
	movneg	%icc,	%g1,	%i5
	fmovdl	%xcc,	%f2,	%f10
	fmovscs	%xcc,	%f4,	%f2
	tcs	%xcc,	0x7
	ld	[%l7 + 0x7C],	%f10
	stw	%i6,	[%l7 + 0x70]
	ble,a	loop_402
	call	loop_403
	nop
	setx loop_404, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fbuge,a	%fcc3,	loop_405
loop_402:
	pdist	%f2,	%f8,	%f8
loop_403:
	udiv	%i1,	0x0FE0,	%g4
loop_404:
	fxors	%f15,	%f13,	%f2
loop_405:
	fmul8x16	%f8,	%f0,	%f14
	ble	%icc,	loop_406
	fcmped	%fcc3,	%f10,	%f4
	fnegs	%f10,	%f3
	lduw	[%l7 + 0x6C],	%o0
loop_406:
	fmovda	%icc,	%f11,	%f11
	movrlez	%i3,	%o5,	%l4
	fmovrse	%i2,	%f14,	%f0
	fbue	%fcc3,	loop_407
	andcc	%l1,	%i0,	%i4
	stx	%g6,	[%l7 + 0x50]
	fornot2s	%f0,	%f9,	%f9
loop_407:
	fsrc1	%f8,	%f6
	movl	%xcc,	%o4,	%l2
	fcmpd	%fcc2,	%f14,	%f14
	lduh	[%l7 + 0x20],	%o6
	fcmps	%fcc3,	%f2,	%f13
	fmovrdgez	%g2,	%f6,	%f10
	tvs	%icc,	0x2
	bcs,a,pt	%xcc,	loop_408
	xor	%l3,	0x0D7B,	%i7
	movle	%xcc,	%g7,	%l5
	mulx	%o1,	%l6,	%o2
loop_408:
	tn	%icc,	0x5
	fpsub16	%f12,	%f4,	%f0
	lduh	[%l7 + 0x70],	%l0
	stb	%g3,	[%l7 + 0x6B]
	movrgez	%g5,	0x383,	%o3
	fmovde	%icc,	%f1,	%f2
	fornot2s	%f6,	%f2,	%f11
	bn,a,pt	%icc,	loop_409
	movcc	%icc,	%o7,	%g1
	fornot2	%f14,	%f12,	%f6
	fmovdn	%icc,	%f7,	%f13
loop_409:
	fmovdn	%icc,	%f7,	%f2
	movrgz	%i6,	%i1,	%g4
	ldsb	[%l7 + 0x73],	%i5
	edge32	%i3,	%o0,	%o5
	nop
	setx loop_410, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	and	%i2,	0x1E4B,	%l4
	ldsb	[%l7 + 0x35],	%l1
	ld	[%l7 + 0x38],	%f0
loop_410:
	fsrc1s	%f0,	%f13
	sth	%i4,	[%l7 + 0x7C]
	bcc,a	%xcc,	loop_411
	st	%f1,	[%l7 + 0x38]
	fnot1	%f6,	%f12
	ldx	[%l7 + 0x08],	%g6
loop_411:
	fandnot1	%f10,	%f4,	%f0
	fmovdneg	%icc,	%f10,	%f14
	tle	%xcc,	0x1
	sth	%o4,	[%l7 + 0x30]
	addc	%l2,	0x04A8,	%o6
	bge,a,pt	%icc,	loop_412
	tsubcc	%i0,	%l3,	%g2
	umul	%g7,	%l5,	%i7
	srax	%l6,	%o2,	%o1
loop_412:
	taddcctv	%l0,	%g5,	%o3
	fbu	%fcc2,	loop_413
	tne	%xcc,	0x0
	movrne	%g3,	%g1,	%i6
	tvs	%xcc,	0x2
loop_413:
	bshuffle	%f10,	%f10,	%f14
	sll	%o7,	%i1,	%i5
	st	%f6,	[%l7 + 0x30]
	ldd	[%l7 + 0x78],	%f0
	lduh	[%l7 + 0x68],	%g4
	movl	%xcc,	%i3,	%o0
	fbule	%fcc2,	loop_414
	movle	%icc,	%i2,	%l4
	umulcc	%l1,	%o5,	%g6
	ldsb	[%l7 + 0x63],	%o4
loop_414:
	be,a,pt	%icc,	loop_415
	fandnot1	%f8,	%f6,	%f6
	fble,a	%fcc1,	loop_416
	fbge,a	%fcc2,	loop_417
loop_415:
	fmovsne	%xcc,	%f5,	%f11
	ld	[%l7 + 0x20],	%f11
loop_416:
	fandnot1s	%f4,	%f5,	%f10
loop_417:
	andcc	%l2,	0x05EE,	%o6
	xor	%i4,	%l3,	%i0
	ldx	[%l7 + 0x40],	%g2
	lduh	[%l7 + 0x6E],	%g7
	edge8ln	%i7,	%l5,	%o2
	fmovscs	%icc,	%f9,	%f1
	xnorcc	%l6,	%l0,	%o1
	ldsb	[%l7 + 0x1B],	%o3
	ld	[%l7 + 0x68],	%f0
	fmovse	%xcc,	%f14,	%f9
	stw	%g5,	[%l7 + 0x64]
	lduh	[%l7 + 0x78],	%g1
	faligndata	%f14,	%f14,	%f8
	fmul8x16	%f14,	%f8,	%f14
	fmovdpos	%xcc,	%f9,	%f13
	movvs	%icc,	%g3,	%i6
	fmovdne	%xcc,	%f12,	%f4
	stw	%i1,	[%l7 + 0x40]
	fmovdvc	%icc,	%f12,	%f15
	stx	%i5,	[%l7 + 0x78]
	tpos	%icc,	0x2
	fmovsvs	%icc,	%f12,	%f9
	fpackfix	%f2,	%f14
	fnot2s	%f13,	%f9
	fcmpgt32	%f2,	%f6,	%o7
	fmovscs	%icc,	%f10,	%f11
	edge16	%i3,	%g4,	%o0
	tne	%xcc,	0x1
	bvs,a	loop_418
	fmovrsne	%l4,	%f13,	%f9
	fbu,a	%fcc1,	loop_419
	ldsb	[%l7 + 0x4B],	%l1
loop_418:
	andn	%o5,	0x0B68,	%g6
	bneg,pn	%icc,	loop_420
loop_419:
	ldx	[%l7 + 0x10],	%i2
	lduw	[%l7 + 0x7C],	%o4
	tgu	%xcc,	0x5
loop_420:
	siam	0x0
	stb	%o6,	[%l7 + 0x47]
	movvc	%icc,	%i4,	%l3
	std	%f12,	[%l7 + 0x28]
	srlx	%i0,	%g2,	%l2
	ldsh	[%l7 + 0x5C],	%i7
	ldx	[%l7 + 0x40],	%g7
	bpos,a	loop_421
	fmovscc	%icc,	%f12,	%f2
	umul	%l5,	%l6,	%l0
	lduw	[%l7 + 0x28],	%o1
loop_421:
	orcc	%o3,	0x1BA4,	%o2
	fbe	%fcc2,	loop_422
	fmovdle	%icc,	%f14,	%f10
	bleu	%xcc,	loop_423
	st	%f5,	[%l7 + 0x24]
loop_422:
	bl	loop_424
	fcmpgt32	%f12,	%f10,	%g5
loop_423:
	be	loop_425
	andncc	%g3,	%g1,	%i1
loop_424:
	nop
	setx loop_426, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	pdist	%f2,	%f12,	%f6
loop_425:
	for	%f12,	%f8,	%f4
	fbl,a	%fcc2,	loop_427
loop_426:
	movneg	%xcc,	%i6,	%o7
	orcc	%i3,	0x14F9,	%g4
	bne,pn	%xcc,	loop_428
loop_427:
	ldsb	[%l7 + 0x5D],	%i5
	fnands	%f12,	%f14,	%f3
	edge8	%l4,	%l1,	%o0
loop_428:
	fxnor	%f10,	%f2,	%f10
	fmovrdgez	%g6,	%f12,	%f10
	ldd	[%l7 + 0x50],	%f14
	fbg,a	%fcc2,	loop_429
	sth	%o5,	[%l7 + 0x16]
	alignaddrl	%o4,	%o6,	%i2
	movpos	%xcc,	%l3,	%i0
loop_429:
	fbug,a	%fcc2,	loop_430
	brlez	%i4,	loop_431
	sth	%l2,	[%l7 + 0x70]
	fmovrdne	%g2,	%f4,	%f14
loop_430:
	fnor	%f14,	%f8,	%f8
loop_431:
	ldd	[%l7 + 0x78],	%f2
	array8	%i7,	%l5,	%l6
	nop
	setx loop_432, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldub	[%l7 + 0x09],	%g7
	srax	%o1,	%o3,	%l0
	fbe,a	%fcc1,	loop_433
loop_432:
	lduw	[%l7 + 0x58],	%g5
	bne,a,pt	%icc,	loop_434
	tge	%icc,	0x0
loop_433:
	fmul8ulx16	%f10,	%f14,	%f10
	orn	%o2,	%g1,	%i1
loop_434:
	ld	[%l7 + 0x0C],	%f0
	fmovdle	%icc,	%f10,	%f8
	edge32ln	%g3,	%i6,	%o7
	stb	%i3,	[%l7 + 0x51]
	ldx	[%l7 + 0x48],	%g4
	fmovrse	%l4,	%f1,	%f3
	tge	%xcc,	0x2
	fnegd	%f10,	%f14
	edge32n	%i5,	%o0,	%l1
	ldub	[%l7 + 0x52],	%g6
	lduw	[%l7 + 0x58],	%o4
	fbug	%fcc2,	loop_435
	fcmpne16	%f8,	%f8,	%o5
	alignaddrl	%i2,	%o6,	%l3
	pdist	%f14,	%f0,	%f12
loop_435:
	fand	%f0,	%f0,	%f14
	ldd	[%l7 + 0x30],	%f12
	fcmple16	%f12,	%f12,	%i4
	fbne,a	%fcc0,	loop_436
	stw	%l2,	[%l7 + 0x20]
	bvs	loop_437
	add	%g2,	0x0777,	%i7
loop_436:
	alignaddrl	%l5,	%l6,	%g7
	bcs	%xcc,	loop_438
loop_437:
	edge8ln	%i0,	%o1,	%l0
	edge8l	%g5,	%o3,	%o2
	tgu	%icc,	0x2
loop_438:
	orn	%g1,	%i1,	%i6
	stb	%o7,	[%l7 + 0x2A]
	fmovs	%f4,	%f7
	fmovsleu	%xcc,	%f4,	%f1
	edge8	%i3,	%g4,	%l4
	xorcc	%g3,	%i5,	%o0
	fmovsneg	%xcc,	%f4,	%f11
	tgu	%icc,	0x2
	edge8n	%g6,	%o4,	%o5
	fxnor	%f12,	%f8,	%f2
	ldd	[%l7 + 0x20],	%f10
	fnot1s	%f14,	%f11
	mulscc	%i2,	%o6,	%l3
	tl	%xcc,	0x3
	sllx	%i4,	%l2,	%g2
	bvc,a	%icc,	loop_439
	fbl,a	%fcc2,	loop_440
	fmovrsne	%l1,	%f11,	%f8
	tcc	%xcc,	0x6
loop_439:
	movpos	%icc,	%i7,	%l6
loop_440:
	edge32	%g7,	%i0,	%o1
	stw	%l5,	[%l7 + 0x10]
	fbne,a	%fcc1,	loop_441
	srax	%g5,	0x14,	%o3
	movrgz	%o2,	0x1DA,	%l0
	ldsw	[%l7 + 0x7C],	%g1
loop_441:
	bgu	%xcc,	loop_442
	stb	%i1,	[%l7 + 0x7E]
	movrgez	%i6,	0x330,	%o7
	fpack32	%f0,	%f12,	%f0
loop_442:
	fcmpgt16	%f0,	%f14,	%g4
	fpadd32s	%f9,	%f6,	%f9
	movn	%xcc,	%l4,	%i3
	fsrc1	%f0,	%f8
	ld	[%l7 + 0x18],	%f0
	fmovsleu	%xcc,	%f8,	%f1
	fba,a	%fcc0,	loop_443
	sth	%g3,	[%l7 + 0x2C]
	edge32l	%o0,	%g6,	%i5
	fnegs	%f14,	%f13
loop_443:
	fmovdpos	%xcc,	%f9,	%f12
	stx	%o5,	[%l7 + 0x78]
	fpadd32	%f6,	%f2,	%f6
	stb	%i2,	[%l7 + 0x7B]
	movn	%xcc,	%o6,	%l3
	alignaddrl	%o4,	%l2,	%g2
	tleu	%icc,	0x3
	srax	%i4,	%i7,	%l6
	ldsh	[%l7 + 0x62],	%l1
	fmovdcc	%xcc,	%f0,	%f2
	fbue	%fcc0,	loop_444
	sth	%i0,	[%l7 + 0x5A]
	ldd	[%l7 + 0x40],	%f2
	sdivcc	%g7,	0x0EF2,	%l5
loop_444:
	fcmpgt32	%f8,	%f8,	%o1
	stw	%o3,	[%l7 + 0x78]
	for	%f14,	%f10,	%f14
	ldsh	[%l7 + 0x20],	%o2
	tpos	%xcc,	0x0
	fxnor	%f2,	%f0,	%f14
	tsubcc	%g5,	%g1,	%l0
	ld	[%l7 + 0x28],	%f14
	movrlz	%i6,	0x104,	%i1
	andcc	%g4,	%l4,	%i3
	ldsb	[%l7 + 0x34],	%o7
	fcmpgt32	%f4,	%f2,	%g3
	addc	%o0,	%i5,	%g6
	fpack16	%f6,	%f4
	alignaddrl	%o5,	%o6,	%l3
	lduh	[%l7 + 0x2E],	%i2
	tgu	%xcc,	0x2
	fmovscc	%xcc,	%f4,	%f13
	fnot1s	%f13,	%f10
	fmovdleu	%icc,	%f13,	%f1
	lduw	[%l7 + 0x78],	%l2
	ble,pn	%xcc,	loop_445
	fandnot2s	%f8,	%f5,	%f14
	orcc	%g2,	0x0053,	%o4
	lduh	[%l7 + 0x70],	%i7
loop_445:
	fpmerge	%f4,	%f4,	%f2
	fandnot2	%f12,	%f4,	%f8
	tge	%xcc,	0x6
	fmovsle	%xcc,	%f8,	%f3
	fxors	%f2,	%f15,	%f4
	stx	%l6,	[%l7 + 0x08]
	fmovdcs	%xcc,	%f2,	%f6
	stx	%i4,	[%l7 + 0x20]
	bge	loop_446
	ldx	[%l7 + 0x30],	%i0
	nop
	setx loop_447, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovrslz	%g7,	%f8,	%f12
loop_446:
	ldub	[%l7 + 0x2F],	%l5
	fmovdneg	%icc,	%f10,	%f13
loop_447:
	fcmpeq16	%f8,	%f6,	%l1
	movg	%icc,	%o3,	%o2
	fpack16	%f2,	%f6
	ldd	[%l7 + 0x40],	%f6
	fmul8x16	%f5,	%f8,	%f6
	brz	%o1,	loop_448
	bg,a	%xcc,	loop_449
	srl	%g5,	%g1,	%i6
	sdivcc	%l0,	0x131E,	%g4
loop_448:
	fmovsg	%xcc,	%f2,	%f12
loop_449:
	fnegd	%f2,	%f6
	fmovscs	%icc,	%f13,	%f12
	ldx	[%l7 + 0x40],	%i1
	std	%f6,	[%l7 + 0x68]
	ldd	[%l7 + 0x10],	%f0
	movvs	%icc,	%i3,	%o7
	brlz,a	%l4,	loop_450
	fmovdcc	%xcc,	%f0,	%f0
	stx	%g3,	[%l7 + 0x70]
	fmovrdne	%i5,	%f14,	%f2
loop_450:
	ldx	[%l7 + 0x18],	%g6
	fcmped	%fcc1,	%f0,	%f0
	fbg,a	%fcc3,	loop_451
	fpadd16s	%f11,	%f12,	%f13
	nop
	setx loop_452, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fxnors	%f15,	%f8,	%f0
loop_451:
	tle	%xcc,	0x0
	fpadd32s	%f5,	%f15,	%f3
loop_452:
	movcc	%xcc,	%o5,	%o6
	movl	%xcc,	%l3,	%o0
	ldx	[%l7 + 0x58],	%l2
	mova	%xcc,	%g2,	%i2
	fmovsleu	%icc,	%f14,	%f9
	siam	0x1
	ldsb	[%l7 + 0x37],	%i7
	move	%icc,	%l6,	%o4
	tle	%icc,	0x1
	fmovspos	%icc,	%f6,	%f6
	movrlez	%i4,	0x189,	%i0
	lduh	[%l7 + 0x5A],	%g7
	edge32l	%l1,	%o3,	%l5
	fands	%f14,	%f4,	%f6
	sth	%o2,	[%l7 + 0x76]
	fpadd16s	%f11,	%f11,	%f14
	tcs	%icc,	0x2
	andncc	%o1,	%g1,	%i6
	xnor	%g5,	%g4,	%l0
	fmovdvc	%xcc,	%f14,	%f2
	lduh	[%l7 + 0x42],	%i3
	ble,pt	%xcc,	loop_453
	bvs,a,pt	%icc,	loop_454
	lduh	[%l7 + 0x36],	%o7
	fmovsne	%xcc,	%f8,	%f10
loop_453:
	fpadd16	%f12,	%f6,	%f6
loop_454:
	tsubcc	%i1,	%l4,	%i5
	bg,a	loop_455
	edge8	%g6,	%g3,	%o5
	orncc	%l3,	0x0A13,	%o6
	ldsh	[%l7 + 0x70],	%l2
loop_455:
	xnor	%o0,	%g2,	%i2
	bge,a,pn	%xcc,	loop_456
	mulx	%i7,	0x0B7B,	%l6
	add	%o4,	0x1F3B,	%i4
	ldub	[%l7 + 0x74],	%g7
loop_456:
	tl	%xcc,	0x2
	ldub	[%l7 + 0x56],	%i0
	fcmpgt32	%f12,	%f0,	%l1
	fone	%f2
	addccc	%o3,	0x0BF0,	%o2
	srlx	%l5,	%g1,	%o1
	fnors	%f6,	%f6,	%f4
	and	%i6,	0x0F40,	%g4
	ldsh	[%l7 + 0x32],	%g5
	fbuge	%fcc2,	loop_457
	ldd	[%l7 + 0x38],	%f8
	smulcc	%i3,	%o7,	%l0
	st	%f0,	[%l7 + 0x58]
loop_457:
	std	%f2,	[%l7 + 0x60]
	ldsh	[%l7 + 0x10],	%l4
	fmovsvs	%icc,	%f4,	%f5
	std	%f8,	[%l7 + 0x18]
	bleu,a,pt	%xcc,	loop_458
	edge16l	%i5,	%i1,	%g6
	fpack32	%f2,	%f12,	%f0
	stx	%g3,	[%l7 + 0x10]
loop_458:
	movvs	%xcc,	%l3,	%o5
	fbul	%fcc3,	loop_459
	sth	%l2,	[%l7 + 0x70]
	array8	%o6,	%g2,	%i2
	sethi	0x1387,	%o0
loop_459:
	sth	%l6,	[%l7 + 0x16]
	andncc	%i7,	%i4,	%o4
	fcmpes	%fcc0,	%f12,	%f6
	call	loop_460
	ble,a	%icc,	loop_461
	be,pt	%icc,	loop_462
	ldx	[%l7 + 0x08],	%g7
loop_460:
	fmul8sux16	%f0,	%f12,	%f2
loop_461:
	ldsw	[%l7 + 0x40],	%i0
loop_462:
	fnot1	%f4,	%f4
	fcmpne16	%f10,	%f6,	%l1
	ldsw	[%l7 + 0x18],	%o3
	srl	%o2,	0x02,	%g1
	fnors	%f3,	%f6,	%f11
	bl	%xcc,	loop_463
	ldsh	[%l7 + 0x42],	%o1
	movgu	%icc,	%i6,	%l5
	xnor	%g5,	%g4,	%o7
loop_463:
	fbug,a	%fcc1,	loop_464
	fmovsvc	%xcc,	%f0,	%f12
	andncc	%l0,	%l4,	%i5
	std	%f6,	[%l7 + 0x40]
loop_464:
	sth	%i1,	[%l7 + 0x20]
	fbul	%fcc0,	loop_465
	tcs	%xcc,	0x2
	srlx	%i3,	0x1E,	%g6
	te	%xcc,	0x5
loop_465:
	st	%f12,	[%l7 + 0x5C]
	fbu	%fcc3,	loop_466
	movrlez	%g3,	%l3,	%o5
	movgu	%icc,	%o6,	%l2
	lduh	[%l7 + 0x52],	%i2
loop_466:
	mulscc	%o0,	%l6,	%i7
	pdist	%f6,	%f4,	%f2
	stw	%g2,	[%l7 + 0x2C]
	tg	%icc,	0x4
	addcc	%i4,	%o4,	%g7
	std	%f0,	[%l7 + 0x08]
	movleu	%xcc,	%l1,	%i0
	xor	%o3,	%g1,	%o2
	call	loop_467
	addccc	%i6,	%o1,	%l5
	brlez,a	%g4,	loop_468
	fzeros	%f6
loop_467:
	ldd	[%l7 + 0x58],	%f6
	fcmpeq32	%f14,	%f4,	%g5
loop_468:
	tn	%xcc,	0x1
	bl,pn	%icc,	loop_469
	fbne,a	%fcc2,	loop_470
	ldx	[%l7 + 0x68],	%o7
	st	%f12,	[%l7 + 0x10]
loop_469:
	ld	[%l7 + 0x40],	%f3
loop_470:
	ble,a,pn	%xcc,	loop_471
	brgz,a	%l4,	loop_472
	brgez,a	%i5,	loop_473
	smul	%l0,	%i1,	%i3
loop_471:
	stx	%g3,	[%l7 + 0x58]
loop_472:
	xnorcc	%l3,	0x1ED0,	%g6
loop_473:
	ld	[%l7 + 0x60],	%f15
	fcmpeq32	%f8,	%f2,	%o5
	ba	loop_474
	fmovdneg	%icc,	%f10,	%f15
	edge16ln	%o6,	%i2,	%l2
	movvc	%xcc,	%o0,	%l6
loop_474:
	fmovrslz	%i7,	%f11,	%f3
	fcmple32	%f6,	%f2,	%g2
	fmovrdlz	%o4,	%f8,	%f4
	tn	%icc,	0x0
	ba	%xcc,	loop_475
	fnor	%f0,	%f10,	%f2
	fmul8x16al	%f11,	%f6,	%f10
	ldsw	[%l7 + 0x64],	%i4
loop_475:
	stw	%g7,	[%l7 + 0x28]
	stx	%l1,	[%l7 + 0x60]
	edge8l	%o3,	%g1,	%i0
	movrne	%o2,	%i6,	%l5
	std	%f6,	[%l7 + 0x08]
	movneg	%icc,	%o1,	%g4
	fbn,a	%fcc1,	loop_476
	fpack32	%f10,	%f0,	%f6
	ldx	[%l7 + 0x28],	%g5
	lduh	[%l7 + 0x52],	%l4
loop_476:
	fmovdneg	%icc,	%f5,	%f11
	fbne	%fcc2,	loop_477
	edge16n	%i5,	%l0,	%i1
	fba	%fcc0,	loop_478
	fmovdle	%icc,	%f11,	%f10
loop_477:
	stx	%o7,	[%l7 + 0x48]
	fsrc1	%f4,	%f6
loop_478:
	fnand	%f6,	%f4,	%f14
	fmovd	%f14,	%f4
	fmovdle	%icc,	%f2,	%f3
	movl	%xcc,	%g3,	%l3
	ldd	[%l7 + 0x28],	%f8
	fmovrde	%g6,	%f0,	%f14
	fmovsvc	%xcc,	%f1,	%f14
	tleu	%icc,	0x2
	fnot1s	%f2,	%f14
	mulx	%i3,	%o5,	%i2
	orncc	%l2,	%o6,	%l6
	fmovsge	%xcc,	%f8,	%f1
	movvs	%icc,	%o0,	%i7
	fmul8ulx16	%f4,	%f8,	%f14
	ld	[%l7 + 0x48],	%f0
	ldsb	[%l7 + 0x75],	%o4
	std	%f10,	[%l7 + 0x68]
	st	%f14,	[%l7 + 0x60]
	fmuld8sux16	%f7,	%f2,	%f10
	fcmple32	%f14,	%f4,	%g2
	ldx	[%l7 + 0x10],	%g7
	movrlz	%i4,	%o3,	%l1
	fexpand	%f12,	%f8
	stw	%i0,	[%l7 + 0x0C]
	fand	%f8,	%f12,	%f10
	xor	%o2,	0x0465,	%g1
	ldub	[%l7 + 0x75],	%i6
	addcc	%o1,	0x09B8,	%l5
	fmovsle	%xcc,	%f13,	%f2
	ldsw	[%l7 + 0x20],	%g5
	stw	%l4,	[%l7 + 0x6C]
	ldx	[%l7 + 0x58],	%i5
	ldsb	[%l7 + 0x3F],	%g4
	ldsh	[%l7 + 0x5C],	%l0
	fmuld8sux16	%f15,	%f3,	%f2
	fmovsvc	%icc,	%f10,	%f4
	bgu	loop_479
	ldsh	[%l7 + 0x6E],	%o7
	stw	%g3,	[%l7 + 0x0C]
	xor	%i1,	%g6,	%i3
loop_479:
	stw	%o5,	[%l7 + 0x3C]
	array16	%i2,	%l2,	%l3
	fnot1s	%f13,	%f10
	fmovrsne	%o6,	%f6,	%f3
	lduw	[%l7 + 0x60],	%l6
	fbge	%fcc2,	loop_480
	bg,pt	%xcc,	loop_481
	fmovrdlz	%o0,	%f14,	%f10
	edge16	%o4,	%g2,	%g7
loop_480:
	lduw	[%l7 + 0x34],	%i4
loop_481:
	fbne,a	%fcc3,	loop_482
	alignaddr	%o3,	%i7,	%i0
	bgu	%xcc,	loop_483
	std	%f0,	[%l7 + 0x68]
loop_482:
	ldsb	[%l7 + 0x2E],	%l1
	nop
	setx loop_484, %l0, %l1
	jmpl %l1, %o2
loop_483:
	fbo,a	%fcc1,	loop_485
	fbul	%fcc1,	loop_486
	bg,a,pt	%xcc,	loop_487
loop_484:
	sth	%i6,	[%l7 + 0x70]
loop_485:
	be,a,pt	%icc,	loop_488
loop_486:
	nop
	setx loop_489, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_487:
	or	%o1,	0x1D6A,	%l5
	fmovdgu	%xcc,	%f12,	%f2
loop_488:
	bg,a,pt	%xcc,	loop_490
loop_489:
	sdivx	%g5,	0x108E,	%g1
	ldsb	[%l7 + 0x28],	%l4
	fsrc2s	%f9,	%f3
loop_490:
	fpadd32	%f0,	%f6,	%f6
	fmovsne	%icc,	%f13,	%f14
	bne,a	loop_491
	addccc	%i5,	%l0,	%o7
	movcc	%xcc,	%g4,	%i1
	lduw	[%l7 + 0x58],	%g3
loop_491:
	orcc	%g6,	0x1ECB,	%i3
	tsubcctv	%i2,	%l2,	%l3
	movg	%icc,	%o5,	%o6
	fmovsne	%icc,	%f10,	%f2
	lduw	[%l7 + 0x34],	%o0
	fmovdcs	%xcc,	%f2,	%f12
	edge8	%l6,	%o4,	%g7
	fpadd16	%f2,	%f6,	%f14
	ldub	[%l7 + 0x15],	%i4
	fmovspos	%icc,	%f15,	%f1
	fmuld8sux16	%f9,	%f8,	%f10
	fand	%f14,	%f8,	%f2
	ld	[%l7 + 0x58],	%f14
	bgu,pt	%xcc,	loop_492
	stw	%o3,	[%l7 + 0x70]
	ldx	[%l7 + 0x70],	%g2
	umul	%i7,	%l1,	%o2
loop_492:
	ld	[%l7 + 0x60],	%f10
	edge16ln	%i6,	%o1,	%l5
	fsrc2s	%f8,	%f15
	sdiv	%i0,	0x0547,	%g1
	lduw	[%l7 + 0x18],	%l4
	fsrc2	%f6,	%f0
	lduh	[%l7 + 0x12],	%g5
	ldsb	[%l7 + 0x1E],	%i5
	bneg	loop_493
	st	%f3,	[%l7 + 0x34]
	movpos	%xcc,	%o7,	%g4
	popc	%l0,	%g3
loop_493:
	sdivx	%i1,	0x1FC1,	%i3
	fbn	%fcc1,	loop_494
	fmovda	%xcc,	%f10,	%f10
	sethi	0x1E99,	%g6
	ldsh	[%l7 + 0x44],	%i2
loop_494:
	ldx	[%l7 + 0x50],	%l3
	fnot2s	%f2,	%f13
	ldsh	[%l7 + 0x66],	%o5
	ldx	[%l7 + 0x28],	%l2
	movl	%icc,	%o0,	%o6
	lduh	[%l7 + 0x52],	%o4
	sub	%l6,	%g7,	%o3
	udivcc	%g2,	0x180B,	%i4
	fcmple32	%f4,	%f10,	%i7
	fexpand	%f4,	%f2
	ldx	[%l7 + 0x08],	%o2
	tvc	%icc,	0x6
	fbe	%fcc2,	loop_495
	orncc	%l1,	0x1F21,	%o1
	fnot2	%f0,	%f8
	bpos,a	%icc,	loop_496
loop_495:
	fabss	%f5,	%f0
	fmovrdlez	%l5,	%f12,	%f0
	fabsd	%f0,	%f0
loop_496:
	ldub	[%l7 + 0x46],	%i6
	fandnot1s	%f1,	%f5,	%f13
	edge8ln	%i0,	%g1,	%g5
	ldd	[%l7 + 0x50],	%f14
	fblg,a	%fcc0,	loop_497
	movne	%icc,	%l4,	%i5
	edge8l	%o7,	%l0,	%g3
	ldsh	[%l7 + 0x62],	%i1
loop_497:
	fmovsne	%xcc,	%f9,	%f15
	lduh	[%l7 + 0x72],	%g4
	fsrc1s	%f4,	%f7
	subc	%g6,	0x07CE,	%i2
	fmul8x16al	%f11,	%f10,	%f8
	fmovdcs	%icc,	%f11,	%f6
	sth	%l3,	[%l7 + 0x30]
	edge16l	%o5,	%i3,	%o0
	fmovdcs	%xcc,	%f8,	%f9
	stw	%o6,	[%l7 + 0x3C]
	bg,pt	%icc,	loop_498
	alignaddr	%l2,	%l6,	%g7
	andncc	%o3,	%g2,	%i4
	tg	%icc,	0x2
loop_498:
	fpsub16	%f8,	%f12,	%f14
	st	%f12,	[%l7 + 0x7C]
	orcc	%o4,	0x1800,	%i7
	movcs	%icc,	%l1,	%o2
	tcc	%icc,	0x6
	ldsh	[%l7 + 0x44],	%o1
	tg	%xcc,	0x6
	st	%f6,	[%l7 + 0x34]
	fcmpes	%fcc0,	%f11,	%f0
	be,a	%icc,	loop_499
	fmovrse	%i6,	%f2,	%f15
	std	%f6,	[%l7 + 0x08]
	fxnor	%f0,	%f8,	%f8
loop_499:
	bn,pn	%icc,	loop_500
	bg,pt	%xcc,	loop_501
	ldsh	[%l7 + 0x6A],	%i0
	fmuld8sux16	%f5,	%f2,	%f8
loop_500:
	fpadd32s	%f10,	%f12,	%f8
loop_501:
	stb	%g1,	[%l7 + 0x28]
	srax	%g5,	0x13,	%l4
	lduh	[%l7 + 0x44],	%l5
	fmovdvs	%xcc,	%f5,	%f2
	ldsh	[%l7 + 0x4C],	%o7
	edge32n	%l0,	%i5,	%i1
	ldsb	[%l7 + 0x36],	%g3
	ldx	[%l7 + 0x68],	%g4
	array32	%g6,	%i2,	%l3
	fmovrdgez	%i3,	%f12,	%f14
	sethi	0x1A46,	%o5
	fnands	%f12,	%f10,	%f8
	fpackfix	%f14,	%f2
	stx	%o6,	[%l7 + 0x68]
	fmul8ulx16	%f14,	%f12,	%f0
	ldx	[%l7 + 0x40],	%l2
	stw	%o0,	[%l7 + 0x4C]
	ld	[%l7 + 0x40],	%f11
	array16	%l6,	%o3,	%g7
	stx	%g2,	[%l7 + 0x38]
	stx	%o4,	[%l7 + 0x50]
	fbo,a	%fcc2,	loop_502
	lduw	[%l7 + 0x0C],	%i7
	fmovrdne	%l1,	%f12,	%f8
	srax	%o2,	0x02,	%o1
loop_502:
	smul	%i4,	%i6,	%g1
	ldsb	[%l7 + 0x40],	%i0
	be	%xcc,	loop_503
	tneg	%xcc,	0x2
	array8	%g5,	%l5,	%o7
	fbug,a	%fcc3,	loop_504
loop_503:
	sdivcc	%l0,	0x1608,	%l4
	ld	[%l7 + 0x08],	%f3
	fmovsvc	%icc,	%f9,	%f12
loop_504:
	ldd	[%l7 + 0x10],	%f12
	sth	%i5,	[%l7 + 0x58]
	fmovspos	%icc,	%f0,	%f13
	fmovdl	%icc,	%f5,	%f10
	fbn,a	%fcc1,	loop_505
	subc	%g3,	0x0C40,	%g4
	udivcc	%g6,	0x05B3,	%i2
	brlez,a	%l3,	loop_506
loop_505:
	ldd	[%l7 + 0x30],	%f2
	tsubcc	%i1,	0x1A79,	%o5
	stx	%i3,	[%l7 + 0x68]
loop_506:
	ldub	[%l7 + 0x31],	%l2
	edge16n	%o6,	%o0,	%l6
	fbne,a	%fcc2,	loop_507
	fbo,a	%fcc1,	loop_508
	fmovda	%xcc,	%f14,	%f6
	bpos	%icc,	loop_509
loop_507:
	ble	%xcc,	loop_510
loop_508:
	subc	%o3,	0x0F9A,	%g7
	fbo,a	%fcc1,	loop_511
loop_509:
	fbule,a	%fcc0,	loop_512
loop_510:
	faligndata	%f10,	%f2,	%f8
	std	%f2,	[%l7 + 0x18]
loop_511:
	fsrc1	%f4,	%f14
loop_512:
	ldsb	[%l7 + 0x12],	%g2
	movcc	%icc,	%o4,	%i7
	fmovsa	%xcc,	%f1,	%f10
	tleu	%icc,	0x7
	andn	%o2,	0x0E8C,	%l1
	lduw	[%l7 + 0x34],	%i4
	fbuge,a	%fcc2,	loop_513
	ldsw	[%l7 + 0x28],	%o1
	stx	%i6,	[%l7 + 0x50]
	tne	%icc,	0x7
loop_513:
	fmovsneg	%xcc,	%f7,	%f11
	bl	loop_514
	ldd	[%l7 + 0x50],	%f2
	sth	%g1,	[%l7 + 0x1A]
	addcc	%g5,	0x1912,	%l5
loop_514:
	popc	0x04ED,	%i0
	fblg	%fcc0,	loop_515
	stb	%l0,	[%l7 + 0x78]
	bn,a,pn	%icc,	loop_516
	fmovrse	%l4,	%f4,	%f5
loop_515:
	fpackfix	%f6,	%f7
	fxnor	%f6,	%f14,	%f6
loop_516:
	tcc	%xcc,	0x4
	nop
	setx loop_517, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fcmpeq16	%f14,	%f4,	%i5
	srlx	%g3,	0x15,	%g4
	ldx	[%l7 + 0x08],	%o7
loop_517:
	fbn	%fcc3,	loop_518
	mova	%xcc,	%i2,	%l3
	movre	%g6,	%o5,	%i1
	std	%f8,	[%l7 + 0x20]
loop_518:
	ldsw	[%l7 + 0x2C],	%i3
	nop
	setx loop_519, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	lduh	[%l7 + 0x60],	%o6
	array16	%l2,	%l6,	%o3
	movpos	%xcc,	%o0,	%g7
loop_519:
	fmovdleu	%icc,	%f3,	%f15
	movne	%xcc,	%g2,	%i7
	ld	[%l7 + 0x18],	%f9
	brz,a	%o4,	loop_520
	fbn,a	%fcc2,	loop_521
	sub	%o2,	%l1,	%i4
	ldsb	[%l7 + 0x1A],	%o1
loop_520:
	nop
	setx loop_522, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_521:
	fnand	%f0,	%f14,	%f10
	call	loop_523
	fmovrsgz	%i6,	%f13,	%f15
loop_522:
	lduh	[%l7 + 0x60],	%g5
	nop
	setx loop_524, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_523:
	fmovdcc	%xcc,	%f11,	%f6
	ldd	[%l7 + 0x18],	%f4
	orncc	%l5,	%i0,	%g1
loop_524:
	andcc	%l0,	0x1085,	%i5
	fsrc2	%f4,	%f14
	fbug	%fcc2,	loop_525
	fbue	%fcc0,	loop_526
	fmovsn	%icc,	%f11,	%f12
	movcc	%icc,	%l4,	%g4
loop_525:
	fbge,a	%fcc1,	loop_527
loop_526:
	stx	%o7,	[%l7 + 0x78]
	fbe	%fcc2,	loop_528
	fxnor	%f6,	%f14,	%f10
loop_527:
	fmovsge	%xcc,	%f4,	%f13
	nop
	setx loop_529, %l0, %l1
	jmpl %l1, %i2
loop_528:
	fexpand	%f3,	%f6
	fmovdne	%xcc,	%f9,	%f11
	fmovrslez	%l3,	%f9,	%f9
loop_529:
	fmul8x16au	%f0,	%f9,	%f2
	fmovsgu	%xcc,	%f15,	%f10
	fsrc1s	%f0,	%f1
	fands	%f12,	%f5,	%f13
	movgu	%icc,	%g6,	%g3
	fcmple16	%f8,	%f12,	%o5
	fcmple16	%f14,	%f4,	%i1
	stw	%o6,	[%l7 + 0x4C]
	fmuld8ulx16	%f13,	%f3,	%f0
	fors	%f10,	%f5,	%f11
	bcc,pt	%xcc,	loop_530
	movrgz	%l2,	%i3,	%l6
	tgu	%icc,	0x5
	tle	%icc,	0x3
loop_530:
	tleu	%xcc,	0x0
	pdist	%f10,	%f2,	%f6
	brlez,a	%o0,	loop_531
	std	%f6,	[%l7 + 0x30]
	sdivx	%g7,	0x0DB7,	%g2
	ldd	[%l7 + 0x18],	%f0
loop_531:
	fcmpes	%fcc2,	%f7,	%f3
	fmovdl	%icc,	%f9,	%f9
	movl	%xcc,	%o3,	%i7
	nop
	setx loop_532, %l0, %l1
	jmpl %l1, %o4
	ldx	[%l7 + 0x08],	%l1
	tneg	%icc,	0x3
	srax	%i4,	%o2,	%i6
loop_532:
	fpsub32s	%f11,	%f14,	%f10
	fmovdleu	%xcc,	%f0,	%f4
	fxor	%f4,	%f2,	%f6
	fbe	%fcc1,	loop_533
	fmuld8sux16	%f8,	%f15,	%f12
	tge	%xcc,	0x2
	lduh	[%l7 + 0x56],	%o1
loop_533:
	fmovdne	%icc,	%f8,	%f8
	bn,a,pt	%icc,	loop_534
	ta	%xcc,	0x5
	fbg,a	%fcc0,	loop_535
	fands	%f14,	%f1,	%f10
loop_534:
	fnands	%f6,	%f14,	%f5
	fmovde	%icc,	%f3,	%f3
loop_535:
	edge32	%g5,	%l5,	%i0
	tne	%icc,	0x1
	movcs	%xcc,	%l0,	%i5
	ldsw	[%l7 + 0x54],	%l4
	fsrc1s	%f12,	%f5
	sdiv	%g1,	0x0B0A,	%o7
	fones	%f7
	movrgz	%i2,	%g4,	%l3
	fmovde	%xcc,	%f2,	%f6
	fands	%f6,	%f14,	%f4
	fmovsleu	%xcc,	%f12,	%f8
	nop
	setx loop_536, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldsh	[%l7 + 0x18],	%g3
	tsubcctv	%o5,	%g6,	%o6
	fpmerge	%f8,	%f3,	%f10
loop_536:
	smul	%i1,	%l2,	%l6
	bneg,a,pt	%xcc,	loop_537
	fpackfix	%f10,	%f8
	edge16n	%i3,	%g7,	%g2
	ldsw	[%l7 + 0x38],	%o3
loop_537:
	tleu	%icc,	0x2
	ld	[%l7 + 0x48],	%f3
	fandnot1	%f14,	%f2,	%f6
	mova	%icc,	%o0,	%o4
	fones	%f9
	ldsb	[%l7 + 0x58],	%i7
	xor	%l1,	%o2,	%i4
	movne	%icc,	%o1,	%i6
	sllx	%g5,	0x14,	%i0
	fmovdcc	%xcc,	%f10,	%f12
	bne,a,pt	%xcc,	loop_538
	ba,pt	%icc,	loop_539
	fmovdg	%xcc,	%f11,	%f14
	sll	%l5,	0x19,	%i5
loop_538:
	movrlez	%l4,	0x344,	%l0
loop_539:
	tg	%xcc,	0x2
	fandnot2s	%f1,	%f10,	%f2
	tpos	%xcc,	0x2
	brgez,a	%g1,	loop_540
	fmovspos	%icc,	%f2,	%f12
	ldsh	[%l7 + 0x6A],	%o7
	fmovdneg	%icc,	%f3,	%f8
loop_540:
	ldsh	[%l7 + 0x2C],	%i2
	ble,a,pn	%xcc,	loop_541
	fmovrdne	%g4,	%f2,	%f2
	lduh	[%l7 + 0x16],	%g3
	bne	%icc,	loop_542
loop_541:
	brlz	%l3,	loop_543
	brlz,a	%g6,	loop_544
	sethi	0x1267,	%o5
loop_542:
	stw	%i1,	[%l7 + 0x08]
loop_543:
	ldx	[%l7 + 0x30],	%o6
loop_544:
	nop
	setx loop_545, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fbge,a	%fcc1,	loop_546
	fbuge,a	%fcc1,	loop_547
	udiv	%l6,	0x17B9,	%l2
loop_545:
	stx	%g7,	[%l7 + 0x38]
loop_546:
	siam	0x5
loop_547:
	movleu	%xcc,	%g2,	%i3
	movre	%o3,	0x251,	%o0
	fpsub32s	%f13,	%f10,	%f9
	movneg	%icc,	%o4,	%i7
	ldd	[%l7 + 0x70],	%f6
	orn	%o2,	0x0EC8,	%i4
	ldx	[%l7 + 0x30],	%l1
	fxor	%f12,	%f0,	%f12
	fmul8x16	%f13,	%f2,	%f8
	fcmpes	%fcc2,	%f8,	%f11
	fbe	%fcc1,	loop_548
	sll	%o1,	%i6,	%i0
	bshuffle	%f14,	%f8,	%f4
	fmovrdgz	%g5,	%f4,	%f6
loop_548:
	ldsw	[%l7 + 0x0C],	%i5
	bn,pt	%xcc,	loop_549
	fsrc2	%f10,	%f14
	ld	[%l7 + 0x68],	%f14
	edge32	%l4,	%l0,	%l5
loop_549:
	sethi	0x09CE,	%o7
	fnands	%f5,	%f6,	%f7
	ldsb	[%l7 + 0x41],	%i2
	ldd	[%l7 + 0x50],	%f12
	fmul8x16	%f2,	%f14,	%f6
	lduh	[%l7 + 0x58],	%g4
	sth	%g1,	[%l7 + 0x3A]
	fpmerge	%f7,	%f1,	%f12
	te	%xcc,	0x1
	sdivx	%l3,	0x168F,	%g3
	edge16	%o5,	%i1,	%g6
	ld	[%l7 + 0x28],	%f2
	stw	%o6,	[%l7 + 0x14]
	tge	%icc,	0x4
	for	%f14,	%f12,	%f4
	fbe,a	%fcc3,	loop_550
	fmovdn	%xcc,	%f0,	%f13
	fbu	%fcc1,	loop_551
	fmovsne	%icc,	%f11,	%f2
loop_550:
	ldsw	[%l7 + 0x0C],	%l6
	st	%f7,	[%l7 + 0x7C]
loop_551:
	st	%f5,	[%l7 + 0x24]
	st	%f5,	[%l7 + 0x10]
	stb	%l2,	[%l7 + 0x0A]
	fmovda	%xcc,	%f10,	%f8
	ldsw	[%l7 + 0x10],	%g2
	edge16ln	%i3,	%g7,	%o3
	stw	%o4,	[%l7 + 0x08]
	stw	%o0,	[%l7 + 0x6C]
	fbue	%fcc0,	loop_552
	fbug,a	%fcc3,	loop_553
	xnorcc	%o2,	%i4,	%l1
	fandnot1	%f10,	%f4,	%f14
loop_552:
	movne	%xcc,	%i7,	%o1
loop_553:
	fzeros	%f0
	edge8ln	%i0,	%g5,	%i5
	srax	%i6,	%l4,	%l0
	fands	%f9,	%f8,	%f14
	array16	%l5,	%i2,	%o7
	array8	%g1,	%l3,	%g4
	ba,a	%icc,	loop_554
	stw	%o5,	[%l7 + 0x64]
	fmovsleu	%icc,	%f0,	%f15
	fpsub32s	%f2,	%f8,	%f7
loop_554:
	fmul8x16	%f1,	%f10,	%f4
	mulscc	%i1,	%g6,	%g3
	pdist	%f14,	%f0,	%f6
	and	%o6,	0x0448,	%l6
	edge32ln	%l2,	%i3,	%g2
	sll	%g7,	%o3,	%o0
	sllx	%o4,	0x09,	%i4
	tne	%icc,	0x6
	ldx	[%l7 + 0x28],	%l1
	fornot2s	%f1,	%f13,	%f15
	ldsw	[%l7 + 0x58],	%i7
	lduw	[%l7 + 0x68],	%o1
	edge32l	%i0,	%g5,	%i5
	xor	%i6,	0x0987,	%o2
	ldsw	[%l7 + 0x64],	%l0
	edge16ln	%l5,	%l4,	%o7
	tg	%xcc,	0x3
	fble,a	%fcc0,	loop_555
	fmovdneg	%icc,	%f3,	%f15
	movrlez	%i2,	0x0D1,	%g1
	fpsub32	%f6,	%f4,	%f10
loop_555:
	sth	%g4,	[%l7 + 0x2A]
	call	loop_556
	fcmpeq32	%f8,	%f8,	%l3
	st	%f13,	[%l7 + 0x5C]
	edge8ln	%i1,	%g6,	%o5
loop_556:
	subc	%o6,	%l6,	%l2
	ldsh	[%l7 + 0x76],	%g3
	ld	[%l7 + 0x38],	%f12
	movleu	%icc,	%g2,	%i3
	lduw	[%l7 + 0x3C],	%o3
	umulcc	%g7,	%o4,	%i4
	smulcc	%l1,	0x06DA,	%i7
	bcs,pn	%xcc,	loop_557
	stb	%o1,	[%l7 + 0x5F]
	fmovdvc	%icc,	%f10,	%f5
	stb	%o0,	[%l7 + 0x29]
loop_557:
	fpsub16s	%f15,	%f9,	%f11
	fpack16	%f14,	%f1
	and	%i0,	%i5,	%g5
	ldub	[%l7 + 0x18],	%i6
	fbu,a	%fcc1,	loop_558
	sth	%l0,	[%l7 + 0x72]
	bge	loop_559
	tle	%icc,	0x0
loop_558:
	subcc	%o2,	%l4,	%l5
	movl	%icc,	%o7,	%g1
loop_559:
	for	%f6,	%f2,	%f10
	edge32n	%g4,	%l3,	%i2
	taddcctv	%g6,	%i1,	%o6
	sth	%l6,	[%l7 + 0x60]
	edge8l	%l2,	%o5,	%g3
	movne	%icc,	%g2,	%o3
	ldsh	[%l7 + 0x46],	%i3
	fbne	%fcc0,	loop_560
	ldsh	[%l7 + 0x7C],	%g7
	sub	%o4,	%l1,	%i4
	srl	%i7,	%o0,	%o1
loop_560:
	stw	%i0,	[%l7 + 0x2C]
	ldsb	[%l7 + 0x7B],	%i5
	tne	%icc,	0x0
	ldsw	[%l7 + 0x44],	%g5
	tpos	%xcc,	0x4
	fandnot1s	%f12,	%f12,	%f9
	ldsw	[%l7 + 0x30],	%l0
	fmovspos	%icc,	%f13,	%f3
	stx	%i6,	[%l7 + 0x08]
	brlz,a	%o2,	loop_561
	for	%f6,	%f12,	%f6
	edge32ln	%l4,	%o7,	%l5
	xor	%g1,	0x0ED2,	%g4
loop_561:
	srl	%l3,	%g6,	%i2
	ldsb	[%l7 + 0x43],	%o6
	brnz	%l6,	loop_562
	stx	%i1,	[%l7 + 0x68]
	fzeros	%f9
	fxor	%f0,	%f10,	%f0
loop_562:
	lduh	[%l7 + 0x2E],	%l2
	stx	%g3,	[%l7 + 0x48]
	bcc,a,pn	%xcc,	loop_563
	lduh	[%l7 + 0x7C],	%g2
	ldx	[%l7 + 0x30],	%o5
	sth	%i3,	[%l7 + 0x16]
loop_563:
	mulscc	%o3,	0x003E,	%g7
	fmovsvc	%icc,	%f1,	%f9
	fmovdvs	%xcc,	%f1,	%f0
	andn	%l1,	0x0243,	%i4
	fbo	%fcc1,	loop_564
	fmovsleu	%icc,	%f9,	%f9
	fble,a	%fcc1,	loop_565
	st	%f7,	[%l7 + 0x7C]
loop_564:
	fmovrdlez	%i7,	%f2,	%f12
	movl	%xcc,	%o0,	%o1
loop_565:
	movrgez	%o4,	0x288,	%i5
	fnand	%f10,	%f14,	%f6
	ldub	[%l7 + 0x5A],	%i0
	srlx	%l0,	0x04,	%g5
	array32	%o2,	%i6,	%o7
	fnegs	%f13,	%f6
	sth	%l4,	[%l7 + 0x4E]
	movg	%icc,	%l5,	%g1
	fnegs	%f8,	%f3
	ldsb	[%l7 + 0x66],	%g4
	te	%xcc,	0x0
	movge	%xcc,	%l3,	%i2
	fblg	%fcc0,	loop_566
	fbg,a	%fcc1,	loop_567
	alignaddr	%g6,	%l6,	%i1
	fbge,a	%fcc3,	loop_568
loop_566:
	stw	%l2,	[%l7 + 0x08]
loop_567:
	fands	%f2,	%f14,	%f9
	fpadd16s	%f6,	%f13,	%f12
loop_568:
	ldub	[%l7 + 0x28],	%g3
	ldsw	[%l7 + 0x78],	%o6
	fmovrslez	%g2,	%f11,	%f12
	ld	[%l7 + 0x50],	%f5
	sll	%o5,	%i3,	%o3
	tcc	%icc,	0x0
	ldub	[%l7 + 0x10],	%g7
	movrlz	%i4,	0x2C9,	%l1
	ldsb	[%l7 + 0x6B],	%i7
	fmovsa	%xcc,	%f15,	%f12
	move	%xcc,	%o1,	%o4
	brz,a	%i5,	loop_569
	fand	%f4,	%f6,	%f4
	bcc,a,pt	%xcc,	loop_570
	ldsw	[%l7 + 0x3C],	%i0
loop_569:
	fpadd16	%f14,	%f10,	%f12
	udiv	%o0,	0x00EB,	%l0
loop_570:
	edge16ln	%g5,	%i6,	%o7
	ldd	[%l7 + 0x78],	%f8
	lduw	[%l7 + 0x44],	%l4
	fpsub32s	%f8,	%f15,	%f8
	fmuld8ulx16	%f13,	%f3,	%f6
	fmovdcc	%xcc,	%f5,	%f11
	fba,a	%fcc3,	loop_571
	alignaddrl	%l5,	%o2,	%g1
	ldsh	[%l7 + 0x16],	%l3
	fsrc2s	%f10,	%f3
loop_571:
	bl,a	loop_572
	fble,a	%fcc2,	loop_573
	fcmpgt32	%f14,	%f6,	%g4
	lduh	[%l7 + 0x10],	%i2
loop_572:
	movrne	%g6,	0x19E,	%l6
loop_573:
	fmovdgu	%icc,	%f11,	%f10
	bleu	loop_574
	st	%f14,	[%l7 + 0x58]
	andncc	%l2,	%g3,	%o6
	fbue,a	%fcc1,	loop_575
loop_574:
	ldsh	[%l7 + 0x16],	%g2
	addccc	%i1,	0x0568,	%i3
	fzero	%f2
loop_575:
	alignaddr	%o5,	%g7,	%i4
	ldd	[%l7 + 0x30],	%f0
	tcs	%icc,	0x7
	fcmpne32	%f2,	%f10,	%l1
	fmovsle	%icc,	%f15,	%f12
	stx	%i7,	[%l7 + 0x78]
	ldub	[%l7 + 0x61],	%o3
	andcc	%o4,	%i5,	%o1
	sth	%i0,	[%l7 + 0x28]
	edge32ln	%o0,	%l0,	%i6
	srl	%g5,	0x03,	%o7
	lduh	[%l7 + 0x10],	%l4
	std	%f12,	[%l7 + 0x10]
	srax	%l5,	%g1,	%l3
	fmovrsgez	%g4,	%f0,	%f2
	fbg	%fcc1,	loop_576
	fmovsle	%icc,	%f2,	%f2
	sdivcc	%i2,	0x08A7,	%g6
	edge16ln	%o2,	%l2,	%g3
loop_576:
	ld	[%l7 + 0x10],	%f5
	sra	%o6,	0x11,	%l6
	addc	%g2,	0x1482,	%i1
	movl	%icc,	%o5,	%g7
	movrlez	%i4,	%l1,	%i3
	st	%f6,	[%l7 + 0x70]
	fbg	%fcc2,	loop_577
	fbule,a	%fcc3,	loop_578
	bne,a	loop_579
	stx	%o3,	[%l7 + 0x28]
loop_577:
	movneg	%icc,	%o4,	%i7
loop_578:
	bcc	loop_580
loop_579:
	fbge	%fcc0,	loop_581
	sth	%o1,	[%l7 + 0x5E]
	ldsb	[%l7 + 0x6F],	%i0
loop_580:
	bg	%xcc,	loop_582
loop_581:
	ldx	[%l7 + 0x28],	%i5
	ldsb	[%l7 + 0x71],	%o0
	edge32n	%i6,	%l0,	%o7
loop_582:
	fbne,a	%fcc3,	loop_583
	fbug	%fcc0,	loop_584
	ble	loop_585
	ldsb	[%l7 + 0x3C],	%l4
loop_583:
	edge8l	%g5,	%l5,	%g1
loop_584:
	movneg	%xcc,	%g4,	%i2
loop_585:
	fcmpgt16	%f2,	%f14,	%l3
	fmovscc	%icc,	%f4,	%f4
	ldub	[%l7 + 0x53],	%o2
	fmovdneg	%icc,	%f9,	%f4
	ldsh	[%l7 + 0x7C],	%g6
	smul	%l2,	%g3,	%o6
	ldsb	[%l7 + 0x7B],	%l6
	ldd	[%l7 + 0x28],	%f4
	movrgez	%g2,	0x308,	%o5
	bge	loop_586
	fandnot1s	%f0,	%f13,	%f14
	bg,a,pn	%xcc,	loop_587
	ldsw	[%l7 + 0x54],	%g7
loop_586:
	fmovrdgez	%i1,	%f10,	%f12
	std	%f8,	[%l7 + 0x68]
loop_587:
	st	%f5,	[%l7 + 0x70]
	ble,pn	%xcc,	loop_588
	fmovscs	%icc,	%f5,	%f14
	tvc	%icc,	0x2
	fcmped	%fcc3,	%f0,	%f4
loop_588:
	taddcctv	%l1,	%i3,	%o3
	ld	[%l7 + 0x10],	%f6
	fnand	%f10,	%f10,	%f6
	popc	0x153D,	%o4
	st	%f15,	[%l7 + 0x70]
	lduh	[%l7 + 0x56],	%i4
	fcmple16	%f0,	%f14,	%i7
	ldx	[%l7 + 0x40],	%o1
	stw	%i5,	[%l7 + 0x48]
	tne	%xcc,	0x1
	nop
	setx loop_589, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fands	%f1,	%f0,	%f11
	stx	%o0,	[%l7 + 0x18]
	fors	%f0,	%f14,	%f1
loop_589:
	fcmpd	%fcc0,	%f6,	%f0
	ldx	[%l7 + 0x38],	%i6
	and	%l0,	%o7,	%i0
	lduw	[%l7 + 0x10],	%l4
	fmovse	%xcc,	%f9,	%f14
	fmovsvs	%xcc,	%f2,	%f13
	stb	%l5,	[%l7 + 0x68]
	tle	%icc,	0x0
	tn	%icc,	0x0
	lduh	[%l7 + 0x5A],	%g5
	stb	%g4,	[%l7 + 0x26]
	ld	[%l7 + 0x0C],	%f2
	fmul8sux16	%f2,	%f6,	%f6
	nop
	setx loop_590, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	smul	%i2,	%l3,	%g1
	fornot1	%f2,	%f10,	%f2
	ldsh	[%l7 + 0x5E],	%o2
loop_590:
	fpsub32	%f10,	%f2,	%f14
	bcc	%icc,	loop_591
	lduh	[%l7 + 0x6C],	%g6
	xnorcc	%g3,	0x1969,	%o6
	stx	%l6,	[%l7 + 0x10]
loop_591:
	ble	loop_592
	bn,a	%icc,	loop_593
	ldsw	[%l7 + 0x60],	%g2
	fmovsge	%xcc,	%f14,	%f8
loop_592:
	sdivcc	%l2,	0x0E34,	%o5
loop_593:
	st	%f2,	[%l7 + 0x34]
	fcmple32	%f10,	%f12,	%i1
	bne	%xcc,	loop_594
	ldd	[%l7 + 0x78],	%f12
	fmovsa	%xcc,	%f5,	%f0
	edge32ln	%g7,	%l1,	%i3
loop_594:
	ldd	[%l7 + 0x30],	%f8
	ldsw	[%l7 + 0x74],	%o4
	ldd	[%l7 + 0x08],	%f4
	ldd	[%l7 + 0x18],	%f12
	fmovdl	%icc,	%f10,	%f2
	ldd	[%l7 + 0x08],	%f8
	tneg	%xcc,	0x1
	fandnot1	%f10,	%f10,	%f14
	sth	%i4,	[%l7 + 0x56]
	tvs	%xcc,	0x2
	fzeros	%f12
	edge32l	%i7,	%o3,	%i5
	fmovdg	%icc,	%f14,	%f7
	smulcc	%o1,	%o0,	%l0
	ldub	[%l7 + 0x46],	%i6
	brgez,a	%i0,	loop_595
	tcc	%xcc,	0x3
	bg,a,pt	%xcc,	loop_596
	bvs	loop_597
loop_595:
	ldx	[%l7 + 0x48],	%o7
	fpadd16	%f4,	%f14,	%f14
loop_596:
	fpadd32	%f0,	%f6,	%f4
loop_597:
	std	%f4,	[%l7 + 0x68]
	bvs,pn	%xcc,	loop_598
	fmovrsgz	%l4,	%f4,	%f3
	fpack32	%f0,	%f12,	%f4
	movrne	%g5,	0x3B0,	%g4
loop_598:
	lduh	[%l7 + 0x18],	%l5
	fbne,a	%fcc3,	loop_599
	lduw	[%l7 + 0x24],	%l3
	lduh	[%l7 + 0x40],	%i2
	fcmpne32	%f4,	%f12,	%g1
loop_599:
	bleu,a	%icc,	loop_600
	stb	%g6,	[%l7 + 0x7D]
	addcc	%o2,	0x183B,	%o6
	tsubcctv	%l6,	%g2,	%l2
loop_600:
	fmovsvs	%xcc,	%f8,	%f3
	ldsb	[%l7 + 0x75],	%o5
	umul	%g3,	0x1E8E,	%i1
	ldsh	[%l7 + 0x58],	%g7
	lduh	[%l7 + 0x5E],	%l1
	fmovd	%f6,	%f4
	and	%i3,	%o4,	%i7
	fbe,a	%fcc0,	loop_601
	bvc	%xcc,	loop_602
	ta	%icc,	0x3
	lduh	[%l7 + 0x52],	%o3
loop_601:
	smul	%i5,	0x1A43,	%o1
loop_602:
	fbuge,a	%fcc3,	loop_603
	bn,a	%xcc,	loop_604
	udivx	%i4,	0x10E8,	%o0
	fble,a	%fcc2,	loop_605
loop_603:
	ldsw	[%l7 + 0x08],	%i6
loop_604:
	ld	[%l7 + 0x70],	%f0
	be,pn	%xcc,	loop_606
loop_605:
	array8	%i0,	%l0,	%o7
	ldub	[%l7 + 0x29],	%l4
	fabsd	%f10,	%f2
loop_606:
	fones	%f7
	ldsb	[%l7 + 0x16],	%g5
	tvc	%icc,	0x7
	addc	%g4,	0x0FE5,	%l5
	movrgez	%i2,	%l3,	%g6
	ta	%xcc,	0x3
	std	%f14,	[%l7 + 0x60]
	tge	%xcc,	0x1
	ldsh	[%l7 + 0x50],	%o2
	fnands	%f13,	%f7,	%f7
	fmovrse	%o6,	%f1,	%f5
	st	%f10,	[%l7 + 0x0C]
	ld	[%l7 + 0x2C],	%f7
	brgz,a	%l6,	loop_607
	ld	[%l7 + 0x78],	%f3
	fcmpeq16	%f8,	%f8,	%g1
	fands	%f12,	%f8,	%f7
loop_607:
	fbne,a	%fcc2,	loop_608
	fnegs	%f6,	%f4
	ldsw	[%l7 + 0x70],	%g2
	bpos	%xcc,	loop_609
loop_608:
	fbul,a	%fcc2,	loop_610
	fba,a	%fcc3,	loop_611
	alignaddr	%l2,	%g3,	%i1
loop_609:
	orn	%o5,	%g7,	%l1
loop_610:
	udivcc	%i3,	0x12BB,	%i7
loop_611:
	ldsh	[%l7 + 0x34],	%o4
	ldsh	[%l7 + 0x1A],	%i5
	edge32	%o1,	%i4,	%o0
	tcc	%icc,	0x3
	subcc	%i6,	0x1A55,	%i0
	fmovsleu	%xcc,	%f13,	%f14
	tvc	%xcc,	0x1
	sdivcc	%o3,	0x1275,	%l0
	movrgez	%o7,	%l4,	%g5
	lduh	[%l7 + 0x4C],	%g4
	orcc	%i2,	0x003A,	%l5
	fmovdgu	%xcc,	%f11,	%f12
	array8	%l3,	%g6,	%o6
	lduw	[%l7 + 0x14],	%l6
	ldsw	[%l7 + 0x64],	%g1
	fmul8x16	%f11,	%f8,	%f8
	tpos	%xcc,	0x6
	fnot2s	%f2,	%f10
	lduh	[%l7 + 0x44],	%o2
	subc	%g2,	%g3,	%l2
	ldx	[%l7 + 0x58],	%o5
	addc	%g7,	%i1,	%i3
	ldd	[%l7 + 0x08],	%f4
	faligndata	%f14,	%f10,	%f0
	fxors	%f4,	%f7,	%f10
	movrgz	%l1,	0x027,	%i7
	fcmpeq32	%f2,	%f0,	%o4
	ldd	[%l7 + 0x70],	%f6
	tvc	%xcc,	0x6
	fnegs	%f10,	%f14
	ld	[%l7 + 0x34],	%f10
	fnands	%f1,	%f3,	%f13
	sethi	0x0C43,	%o1
	fmovrsgez	%i4,	%f0,	%f13
	ldd	[%l7 + 0x10],	%f12
	popc	0x1823,	%o0
	bpos	loop_612
	sdivx	%i5,	0x12A8,	%i6
	sub	%o3,	%i0,	%l0
	lduh	[%l7 + 0x38],	%o7
loop_612:
	brz	%l4,	loop_613
	fmovdl	%xcc,	%f5,	%f9
	fors	%f1,	%f12,	%f8
	edge16l	%g4,	%g5,	%l5
loop_613:
	ldx	[%l7 + 0x78],	%l3
	bneg,pt	%xcc,	loop_614
	bn,pt	%xcc,	loop_615
	stw	%g6,	[%l7 + 0x10]
	fcmps	%fcc1,	%f4,	%f5
loop_614:
	fmovdle	%xcc,	%f0,	%f2
loop_615:
	movrne	%i2,	%l6,	%g1
	bvs,a,pn	%icc,	loop_616
	fmovdvc	%icc,	%f11,	%f12
	fpadd32s	%f4,	%f2,	%f12
	fmovrslez	%o6,	%f12,	%f8
loop_616:
	ldd	[%l7 + 0x38],	%f4
	fbuge	%fcc3,	loop_617
	fnot2	%f14,	%f6
	xorcc	%o2,	%g3,	%g2
	ldsb	[%l7 + 0x11],	%l2
loop_617:
	ldd	[%l7 + 0x40],	%f8
	taddcctv	%g7,	%o5,	%i3
	bcs,a,pn	%xcc,	loop_618
	fone	%f14
	nop
	setx loop_619, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	lduw	[%l7 + 0x3C],	%l1
loop_618:
	stb	%i7,	[%l7 + 0x10]
	ldx	[%l7 + 0x58],	%o4
loop_619:
	fcmps	%fcc1,	%f1,	%f13
	tle	%xcc,	0x4
	ldx	[%l7 + 0x68],	%o1
	bcc,a,pn	%xcc,	loop_620
	fmovse	%xcc,	%f2,	%f5
	fbne,a	%fcc3,	loop_621
	bvs	%icc,	loop_622
loop_620:
	bne,a	%xcc,	loop_623
	bl,pt	%xcc,	loop_624
loop_621:
	fornot1	%f2,	%f8,	%f14
loop_622:
	fcmpes	%fcc0,	%f0,	%f13
loop_623:
	fpmerge	%f6,	%f11,	%f10
loop_624:
	fmovdl	%xcc,	%f5,	%f14
	fbo,a	%fcc2,	loop_625
	bl,a	%icc,	loop_626
	fpmerge	%f14,	%f2,	%f12
	ldd	[%l7 + 0x10],	%f10
loop_625:
	fornot1s	%f15,	%f10,	%f4
loop_626:
	brz	%i1,	loop_627
	bneg,pn	%icc,	loop_628
	umul	%i4,	%i5,	%o0
	stx	%i6,	[%l7 + 0x18]
loop_627:
	lduh	[%l7 + 0x50],	%o3
loop_628:
	ldd	[%l7 + 0x38],	%f10
	tpos	%xcc,	0x6
	andcc	%l0,	0x12B8,	%i0
	tg	%icc,	0x5
	fcmpgt32	%f14,	%f4,	%o7
	fnor	%f4,	%f10,	%f6
	fxors	%f14,	%f9,	%f6
	movpos	%xcc,	%g4,	%l4
	fands	%f8,	%f1,	%f10
	brnz,a	%g5,	loop_629
	fbue,a	%fcc1,	loop_630
	lduh	[%l7 + 0x0C],	%l5
	std	%f6,	[%l7 + 0x58]
loop_629:
	ldx	[%l7 + 0x10],	%l3
loop_630:
	sdiv	%g6,	0x1D74,	%i2
	fpack16	%f0,	%f3
	tvs	%xcc,	0x2
	ldub	[%l7 + 0x77],	%g1
	ldsb	[%l7 + 0x34],	%l6
	edge16n	%o2,	%o6,	%g3
	bl,a	loop_631
	tvc	%xcc,	0x2
	st	%f11,	[%l7 + 0x44]
	fnegs	%f4,	%f4
loop_631:
	tgu	%xcc,	0x3
	movrlz	%g2,	0x156,	%l2
	fcmpeq32	%f0,	%f6,	%g7
	fmovrse	%o5,	%f1,	%f2
	fands	%f5,	%f13,	%f1
	fcmpeq32	%f6,	%f6,	%l1
	std	%f0,	[%l7 + 0x78]
	edge32ln	%i7,	%i3,	%o1
	tg	%xcc,	0x3
	stb	%i1,	[%l7 + 0x33]
	ldd	[%l7 + 0x28],	%f0
	fmovrslz	%o4,	%f0,	%f6
	ld	[%l7 + 0x38],	%f9
	fbule	%fcc3,	loop_632
	tcc	%icc,	0x5
	fxnor	%f6,	%f2,	%f14
	std	%f0,	[%l7 + 0x10]
loop_632:
	fmovscs	%icc,	%f9,	%f10
	ldd	[%l7 + 0x08],	%f0
	fzero	%f4
	fmovrse	%i5,	%f15,	%f1
	stx	%i4,	[%l7 + 0x78]
	ldsw	[%l7 + 0x7C],	%i6
	sth	%o0,	[%l7 + 0x7E]
	fpadd16	%f8,	%f10,	%f8
	fmovsleu	%icc,	%f3,	%f9
	std	%f4,	[%l7 + 0x50]
	fmovdcs	%xcc,	%f4,	%f1
	edge32l	%l0,	%o3,	%i0
	movn	%icc,	%g4,	%o7
	ld	[%l7 + 0x4C],	%f1
	fmovrde	%l4,	%f6,	%f8
	bgu,a	loop_633
	ldx	[%l7 + 0x28],	%l5
	edge16	%l3,	%g6,	%i2
	taddcc	%g1,	%l6,	%g5
loop_633:
	edge32ln	%o2,	%o6,	%g2
	st	%f8,	[%l7 + 0x70]
	tneg	%xcc,	0x7
	fpackfix	%f2,	%f7
	fbe,a	%fcc3,	loop_634
	movle	%xcc,	%l2,	%g7
	fpadd16s	%f6,	%f8,	%f10
	movl	%xcc,	%o5,	%l1
loop_634:
	st	%f6,	[%l7 + 0x74]
	ldx	[%l7 + 0x50],	%i7
	st	%f8,	[%l7 + 0x78]
	fmovsle	%icc,	%f0,	%f0
	bcs	%icc,	loop_635
	fnors	%f12,	%f3,	%f14
	fmul8sux16	%f14,	%f14,	%f10
	ldsw	[%l7 + 0x10],	%i3
loop_635:
	fmovsl	%icc,	%f1,	%f8
	ldd	[%l7 + 0x10],	%f4
	fnegd	%f6,	%f6
	std	%f6,	[%l7 + 0x18]
	tleu	%icc,	0x5
	fornot1	%f14,	%f6,	%f0
	fbue	%fcc0,	loop_636
	lduw	[%l7 + 0x24],	%g3
	movvs	%xcc,	%i1,	%o4
	fmovsgu	%xcc,	%f4,	%f3
loop_636:
	stx	%i5,	[%l7 + 0x18]
	sth	%i4,	[%l7 + 0x50]
	sdivcc	%o1,	0x18E2,	%o0
	tge	%icc,	0x0
	sllx	%l0,	0x05,	%i6
	stb	%i0,	[%l7 + 0x4E]
	ldub	[%l7 + 0x08],	%g4
	stw	%o3,	[%l7 + 0x3C]
	mulx	%o7,	0x154B,	%l5
	fbe	%fcc3,	loop_637
	be	%xcc,	loop_638
	fxor	%f8,	%f10,	%f2
	add	%l4,	0x00A6,	%g6
loop_637:
	andcc	%i2,	%g1,	%l3
loop_638:
	bcc,a,pn	%xcc,	loop_639
	lduw	[%l7 + 0x50],	%g5
	ble,a,pn	%xcc,	loop_640
	ldsh	[%l7 + 0x28],	%l6
loop_639:
	st	%f6,	[%l7 + 0x48]
	st	%f4,	[%l7 + 0x68]
loop_640:
	fblg,a	%fcc1,	loop_641
	std	%f12,	[%l7 + 0x48]
	ble,a,pn	%xcc,	loop_642
	lduw	[%l7 + 0x70],	%o6
loop_641:
	tl	%xcc,	0x7
	stx	%g2,	[%l7 + 0x50]
loop_642:
	fpadd16	%f4,	%f4,	%f4
	ldsh	[%l7 + 0x1A],	%l2
	fmovscc	%icc,	%f8,	%f9
	fbue	%fcc3,	loop_643
	tcc	%icc,	0x0
	tge	%xcc,	0x4
	fbule,a	%fcc0,	loop_644
loop_643:
	fbuge	%fcc0,	loop_645
	ldd	[%l7 + 0x50],	%f12
	tne	%icc,	0x5
loop_644:
	edge8n	%g7,	%o2,	%l1
loop_645:
	stb	%i7,	[%l7 + 0x4D]
	movge	%xcc,	%i3,	%g3
	ldsb	[%l7 + 0x5A],	%i1
	fblg	%fcc0,	loop_646
	st	%f1,	[%l7 + 0x28]
	fbo	%fcc1,	loop_647
	fcmpes	%fcc2,	%f6,	%f6
loop_646:
	bg,a,pn	%xcc,	loop_648
	fmovsne	%icc,	%f3,	%f8
loop_647:
	edge8ln	%o4,	%o5,	%i5
	nop
	setx loop_649, %l0, %l1
	jmpl %l1, %o1
loop_648:
	movrlez	%o0,	%i4,	%l0
	fcmpgt16	%f10,	%f8,	%i0
	ldsh	[%l7 + 0x64],	%i6
loop_649:
	tl	%icc,	0x1
	fmovrde	%g4,	%f12,	%f0
	movpos	%xcc,	%o7,	%o3
	stx	%l4,	[%l7 + 0x60]
	bgu,pt	%icc,	loop_650
	lduh	[%l7 + 0x16],	%g6
	stb	%l5,	[%l7 + 0x1D]
	or	%g1,	0x008D,	%l3
loop_650:
	sth	%g5,	[%l7 + 0x66]
	bne,a,pt	%xcc,	loop_651
	fmovrse	%i2,	%f10,	%f7
	fabss	%f0,	%f1
	st	%f6,	[%l7 + 0x28]
loop_651:
	addc	%l6,	0x09DC,	%g2
	ldsh	[%l7 + 0x5E],	%l2
	bcc,a	%icc,	loop_652
	lduw	[%l7 + 0x2C],	%o6
	smul	%g7,	%o2,	%l1
	tpos	%icc,	0x5
loop_652:
	stx	%i7,	[%l7 + 0x60]
	move	%xcc,	%g3,	%i1
	movg	%xcc,	%o4,	%o5
	brlez	%i3,	loop_653
	fmovrdlez	%o1,	%f10,	%f12
	tgu	%xcc,	0x1
	std	%f0,	[%l7 + 0x68]
loop_653:
	fmovsleu	%xcc,	%f2,	%f6
	fnands	%f0,	%f12,	%f7
	movgu	%icc,	%i5,	%i4
	fsrc1	%f10,	%f10
	st	%f3,	[%l7 + 0x54]
	lduh	[%l7 + 0x24],	%l0
	fabsd	%f14,	%f8
	movneg	%xcc,	%i0,	%i6
	fmovrsne	%g4,	%f0,	%f1
	ldsb	[%l7 + 0x14],	%o7
	fcmped	%fcc0,	%f0,	%f14
	fmuld8sux16	%f2,	%f14,	%f0
	fornot1	%f14,	%f8,	%f2
	ldsw	[%l7 + 0x1C],	%o0
	stx	%l4,	[%l7 + 0x20]
	fnot1	%f14,	%f10
	movleu	%xcc,	%g6,	%l5
	st	%f8,	[%l7 + 0x68]
	fnors	%f6,	%f14,	%f14
	fmovrslz	%g1,	%f14,	%f3
	bn,a,pn	%xcc,	loop_654
	fbuge	%fcc2,	loop_655
	andn	%l3,	0x03C4,	%o3
	ldsb	[%l7 + 0x62],	%i2
loop_654:
	fandnot1s	%f15,	%f13,	%f11
loop_655:
	nop
	setx loop_656, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fornot2s	%f12,	%f9,	%f5
	andncc	%l6,	%g5,	%l2
	nop
	setx loop_657, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_656:
	tneg	%icc,	0x4
	ldd	[%l7 + 0x40],	%f6
	fcmpne16	%f12,	%f0,	%o6
loop_657:
	subccc	%g7,	0x1E7D,	%o2
	brlez	%l1,	loop_658
	bvc,pn	%icc,	loop_659
	for	%f14,	%f0,	%f0
	fcmpd	%fcc3,	%f10,	%f2
loop_658:
	fmovdg	%icc,	%f4,	%f8
loop_659:
	sth	%i7,	[%l7 + 0x44]
	movge	%icc,	%g3,	%i1
	fmovrsne	%g2,	%f6,	%f6
	bvc	loop_660
	bl	loop_661
	ldub	[%l7 + 0x7B],	%o5
	fsrc2s	%f7,	%f10
loop_660:
	fabss	%f5,	%f10
loop_661:
	fble	%fcc2,	loop_662
	fzeros	%f14
	xnorcc	%o4,	%i3,	%o1
	std	%f0,	[%l7 + 0x58]
loop_662:
	bcs,a	%xcc,	loop_663
	fcmpgt32	%f10,	%f2,	%i4
	fcmpgt16	%f4,	%f6,	%i5
	st	%f13,	[%l7 + 0x08]
loop_663:
	ldd	[%l7 + 0x78],	%f8
	fmovdvs	%icc,	%f9,	%f2
	fcmpd	%fcc3,	%f8,	%f12
	ldsw	[%l7 + 0x08],	%i0
	orncc	%l0,	%g4,	%o7
	umulcc	%i6,	0x006F,	%o0
	fcmple32	%f12,	%f6,	%g6
	fabsd	%f14,	%f0
	fmovrslez	%l5,	%f0,	%f8
	ldd	[%l7 + 0x48],	%f10
	sth	%l4,	[%l7 + 0x36]
	addcc	%l3,	%g1,	%i2
	array16	%l6,	%g5,	%l2
	ble,a	%icc,	loop_664
	fcmpgt16	%f2,	%f0,	%o3
	std	%f10,	[%l7 + 0x48]
	ldsb	[%l7 + 0x1A],	%o6
loop_664:
	ldsw	[%l7 + 0x68],	%g7
	ldsw	[%l7 + 0x18],	%o2
	std	%f12,	[%l7 + 0x68]
	fmovrslez	%i7,	%f5,	%f10
	fmul8x16al	%f1,	%f4,	%f2
	lduw	[%l7 + 0x54],	%g3
	fnot2	%f2,	%f2
	ldsh	[%l7 + 0x44],	%i1
	fmul8ulx16	%f14,	%f0,	%f0
	add	%l1,	0x128F,	%o5
	stw	%g2,	[%l7 + 0x1C]
	udiv	%i3,	0x1B83,	%o4
	fble,a	%fcc0,	loop_665
	bvs,a,pn	%icc,	loop_666
	mulscc	%i4,	0x06A3,	%o1
	sth	%i5,	[%l7 + 0x36]
loop_665:
	ldx	[%l7 + 0x08],	%l0
loop_666:
	fsrc1	%f12,	%f6
	fornot2s	%f6,	%f2,	%f8
	fnands	%f2,	%f11,	%f10
	stw	%g4,	[%l7 + 0x48]
	fmovrde	%i0,	%f14,	%f12
	movrgz	%i6,	%o7,	%g6
	ld	[%l7 + 0x08],	%f12
	fand	%f10,	%f0,	%f14
	array8	%l5,	%o0,	%l3
	fmovrse	%g1,	%f9,	%f8
	stw	%i2,	[%l7 + 0x50]
	tleu	%xcc,	0x6
	fcmpeq16	%f2,	%f12,	%l4
	edge32	%l6,	%l2,	%o3
	nop
	setx loop_667, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovrsne	%g5,	%f1,	%f5
	stw	%o6,	[%l7 + 0x68]
	call	loop_668
loop_667:
	fmovrdne	%g7,	%f2,	%f2
	tcc	%icc,	0x1
	sth	%i7,	[%l7 + 0x60]
loop_668:
	addcc	%o2,	%i1,	%l1
	movleu	%xcc,	%o5,	%g3
	ldub	[%l7 + 0x08],	%g2
	fpackfix	%f8,	%f14
	fxors	%f10,	%f15,	%f9
	tle	%icc,	0x6
	stb	%o4,	[%l7 + 0x0E]
	tsubcctv	%i3,	%i4,	%i5
	fpsub16	%f4,	%f14,	%f4
	movvc	%xcc,	%o1,	%g4
	fbu,a	%fcc2,	loop_669
	std	%f14,	[%l7 + 0x08]
	fones	%f5
	ldd	[%l7 + 0x10],	%f12
loop_669:
	stw	%l0,	[%l7 + 0x58]
	fxnors	%f2,	%f11,	%f3
	fcmpgt32	%f12,	%f4,	%i6
	fpsub16s	%f11,	%f15,	%f7
	fxnor	%f6,	%f10,	%f6
	tgu	%icc,	0x1
	ba	%xcc,	loop_670
	fblg,a	%fcc1,	loop_671
	brlez,a	%i0,	loop_672
	ldx	[%l7 + 0x08],	%g6
loop_670:
	movle	%xcc,	%l5,	%o0
loop_671:
	fpadd32s	%f11,	%f0,	%f14
loop_672:
	srlx	%o7,	%l3,	%i2
	stw	%g1,	[%l7 + 0x10]
	fpadd32	%f14,	%f12,	%f0
	fmuld8ulx16	%f3,	%f11,	%f8
	movn	%xcc,	%l4,	%l6
	move	%icc,	%l2,	%o3
	edge16	%g5,	%o6,	%g7
	fornot2s	%f9,	%f13,	%f15
	fpadd16s	%f6,	%f9,	%f7
	ldd	[%l7 + 0x20],	%f2
	te	%icc,	0x6
	tcs	%icc,	0x7
	sth	%i7,	[%l7 + 0x12]
	sth	%o2,	[%l7 + 0x4C]
	fcmpne16	%f10,	%f4,	%i1
	bne,pn	%icc,	loop_673
	fmovscc	%icc,	%f7,	%f6
	bn	loop_674
	tne	%xcc,	0x2
loop_673:
	array8	%o5,	%l1,	%g2
	ldx	[%l7 + 0x30],	%o4
loop_674:
	edge32	%i3,	%g3,	%i5
	fbul	%fcc3,	loop_675
	fcmpgt16	%f10,	%f12,	%i4
	array16	%g4,	%l0,	%o1
	fnot1	%f0,	%f12
loop_675:
	ldsh	[%l7 + 0x6C],	%i0
	orncc	%i6,	0x0ED0,	%g6
	edge8n	%o0,	%o7,	%l5
	andn	%l3,	%i2,	%l4
	brlez	%g1,	loop_676
	std	%f14,	[%l7 + 0x30]
	bcc,pt	%xcc,	loop_677
	taddcctv	%l2,	%o3,	%l6
loop_676:
	stb	%g5,	[%l7 + 0x5D]
	fmul8x16al	%f1,	%f14,	%f0
loop_677:
	movge	%xcc,	%o6,	%g7
	sdivx	%o2,	0x17BF,	%i7
	movvc	%xcc,	%i1,	%l1
	ldx	[%l7 + 0x58],	%g2
	std	%f2,	[%l7 + 0x40]
	stb	%o5,	[%l7 + 0x53]
	subcc	%o4,	%i3,	%i5
	stx	%i4,	[%l7 + 0x50]
	fabss	%f14,	%f10
	fone	%f6
	ld	[%l7 + 0x24],	%f11
	sdivcc	%g3,	0x078F,	%g4
	fnegd	%f8,	%f8
	stb	%o1,	[%l7 + 0x75]
	ld	[%l7 + 0x70],	%f3
	ld	[%l7 + 0x40],	%f9
	fnot2	%f0,	%f0
	movpos	%icc,	%i0,	%i6
	xorcc	%l0,	%g6,	%o0
	fmovdle	%icc,	%f4,	%f1
	xnor	%l5,	0x0EF2,	%o7
	fmovrdlez	%i2,	%f14,	%f14
	fmovdpos	%xcc,	%f11,	%f15
	fsrc2	%f6,	%f14
	movrne	%l4,	%g1,	%l3
	fpsub16s	%f14,	%f14,	%f3
	brgz	%l2,	loop_678
	fbu,a	%fcc3,	loop_679
	ldsw	[%l7 + 0x68],	%l6
	sth	%g5,	[%l7 + 0x08]
loop_678:
	ld	[%l7 + 0x1C],	%f2
loop_679:
	bpos,a,pn	%icc,	loop_680
	fabss	%f12,	%f4
	array32	%o6,	%g7,	%o2
	addccc	%i7,	%i1,	%l1
loop_680:
	xnorcc	%g2,	%o5,	%o4
	fone	%f6
	fmovdpos	%icc,	%f3,	%f8
	stw	%i3,	[%l7 + 0x34]
	ldd	[%l7 + 0x68],	%f2
	st	%f6,	[%l7 + 0x40]
	ldub	[%l7 + 0x18],	%i5
	fornot1s	%f2,	%f1,	%f13
	ldx	[%l7 + 0x50],	%i4
	fmovrdlz	%g3,	%f14,	%f14
	fmovdl	%icc,	%f8,	%f7
	movgu	%icc,	%g4,	%o3
	stw	%o1,	[%l7 + 0x30]
	edge16l	%i6,	%i0,	%l0
	pdist	%f0,	%f4,	%f0
	umulcc	%g6,	0x06BD,	%l5
	fbge	%fcc3,	loop_681
	sth	%o7,	[%l7 + 0x36]
	sdiv	%o0,	0x1389,	%l4
	bpos,pt	%xcc,	loop_682
loop_681:
	lduw	[%l7 + 0x0C],	%i2
	array32	%g1,	%l2,	%l6
	fornot1	%f0,	%f10,	%f14
loop_682:
	lduw	[%l7 + 0x54],	%g5
	edge8n	%l3,	%g7,	%o6
	stw	%o2,	[%l7 + 0x30]
	fpsub16s	%f3,	%f15,	%f7
	ble,a	loop_683
	fxnors	%f15,	%f10,	%f10
	fnor	%f4,	%f12,	%f8
	fmovdl	%icc,	%f5,	%f12
loop_683:
	fba,a	%fcc0,	loop_684
	fpackfix	%f6,	%f11
	bn,a,pt	%xcc,	loop_685
	stx	%i1,	[%l7 + 0x08]
loop_684:
	ld	[%l7 + 0x2C],	%f14
	fmovsvc	%icc,	%f5,	%f3
loop_685:
	sdiv	%l1,	0x1CAA,	%g2
	srl	%o5,	0x13,	%i7
	fornot2s	%f6,	%f12,	%f0
	movleu	%xcc,	%i3,	%o4
	ldub	[%l7 + 0x54],	%i4
	ble,pn	%icc,	loop_686
	ldx	[%l7 + 0x50],	%g3
	ldd	[%l7 + 0x28],	%f6
	stw	%i5,	[%l7 + 0x60]
loop_686:
	movrlez	%o3,	%g4,	%o1
	movgu	%icc,	%i0,	%l0
	fmovrdgez	%i6,	%f8,	%f0
	and	%g6,	%l5,	%o0
	fblg,a	%fcc0,	loop_687
	movg	%xcc,	%o7,	%l4
	brnz,a	%i2,	loop_688
	tne	%icc,	0x2
loop_687:
	stx	%l2,	[%l7 + 0x78]
	nop
	setx loop_689, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_688:
	move	%xcc,	%g1,	%l6
	andcc	%l3,	0x0D51,	%g5
	movne	%icc,	%g7,	%o6
loop_689:
	bcc,a,pt	%icc,	loop_690
	lduh	[%l7 + 0x36],	%i1
	smulcc	%o2,	0x111A,	%g2
	orncc	%l1,	%o5,	%i7
loop_690:
	ld	[%l7 + 0x58],	%f7
	xor	%i3,	0x1824,	%i4
	fbg	%fcc3,	loop_691
	tsubcctv	%g3,	0x180B,	%i5
	bgu,a,pt	%xcc,	loop_692
	tpos	%xcc,	0x1
loop_691:
	subc	%o3,	0x14D1,	%g4
	bneg,a	%xcc,	loop_693
loop_692:
	stx	%o4,	[%l7 + 0x70]
	fmovspos	%icc,	%f0,	%f13
	tge	%icc,	0x6
loop_693:
	smul	%i0,	0x1A23,	%o1
	bleu,pt	%xcc,	loop_694
	bcs	%icc,	loop_695
	ldsh	[%l7 + 0x18],	%i6
	bn,pt	%icc,	loop_696
loop_694:
	stx	%g6,	[%l7 + 0x60]
loop_695:
	std	%f14,	[%l7 + 0x10]
	fbl,a	%fcc0,	loop_697
loop_696:
	movrlez	%l5,	%l0,	%o0
	fnegd	%f8,	%f10
	stx	%o7,	[%l7 + 0x30]
loop_697:
	ldsw	[%l7 + 0x78],	%i2
	bneg,a,pn	%icc,	loop_698
	fxnors	%f14,	%f11,	%f3
	std	%f4,	[%l7 + 0x50]
	stb	%l4,	[%l7 + 0x53]
loop_698:
	fmovrsgz	%g1,	%f0,	%f9
	te	%xcc,	0x3
	fmul8ulx16	%f10,	%f4,	%f12
	sdiv	%l2,	0x088A,	%l3
	udiv	%l6,	0x027D,	%g7
	fbe	%fcc0,	loop_699
	lduh	[%l7 + 0x24],	%g5
	lduh	[%l7 + 0x24],	%i1
	ldsh	[%l7 + 0x22],	%o6
loop_699:
	ldsb	[%l7 + 0x3D],	%g2
	fpsub16	%f14,	%f14,	%f8
	fpmerge	%f1,	%f14,	%f4
	fxnor	%f0,	%f2,	%f12
	addcc	%o2,	%l1,	%i7
	tsubcctv	%o5,	0x178C,	%i4
	be	%icc,	loop_700
	alignaddr	%g3,	%i3,	%i5
	brgez,a	%o3,	loop_701
	fbu	%fcc0,	loop_702
loop_700:
	ldsh	[%l7 + 0x40],	%o4
	fcmple32	%f12,	%f6,	%g4
loop_701:
	lduh	[%l7 + 0x34],	%o1
loop_702:
	mova	%xcc,	%i6,	%i0
	sethi	0x02C3,	%g6
	fmovdl	%icc,	%f4,	%f14
	stx	%l0,	[%l7 + 0x58]
	fbn,a	%fcc0,	loop_703
	fzeros	%f1
	fpadd16	%f4,	%f6,	%f2
	movleu	%xcc,	%o0,	%l5
loop_703:
	fbule	%fcc3,	loop_704
	stx	%i2,	[%l7 + 0x70]
	stx	%o7,	[%l7 + 0x30]
	lduh	[%l7 + 0x48],	%l4
loop_704:
	xnorcc	%l2,	%g1,	%l3
	fbue,a	%fcc1,	loop_705
	movl	%icc,	%l6,	%g5
	smulcc	%i1,	%g7,	%g2
	tneg	%icc,	0x1
loop_705:
	tl	%icc,	0x0
	ldub	[%l7 + 0x16],	%o2
	fpadd32s	%f1,	%f15,	%f14
	tpos	%icc,	0x7
	fmul8x16au	%f7,	%f6,	%f6
	fbuge	%fcc0,	loop_706
	ldx	[%l7 + 0x28],	%o6
	fabsd	%f2,	%f14
	ldx	[%l7 + 0x68],	%i7
loop_706:
	fxnors	%f9,	%f4,	%f1
	fpadd16s	%f7,	%f12,	%f5
	taddcc	%o5,	0x1ABB,	%l1
	faligndata	%f4,	%f14,	%f0
	bn,pn	%xcc,	loop_707
	edge32n	%g3,	%i4,	%i3
	stw	%i5,	[%l7 + 0x1C]
	ldub	[%l7 + 0x14],	%o4
loop_707:
	subc	%o3,	0x05ED,	%g4
	movrlez	%o1,	0x18F,	%i6
	lduh	[%l7 + 0x46],	%g6
	lduh	[%l7 + 0x3A],	%i0
	lduw	[%l7 + 0x44],	%l0
	bn,a	loop_708
	srax	%o0,	%l5,	%o7
	fpsub32	%f12,	%f14,	%f2
	alignaddrl	%i2,	%l4,	%l2
loop_708:
	fbe	%fcc3,	loop_709
	fmovdle	%icc,	%f11,	%f8
	edge32ln	%l3,	%l6,	%g1
	ldx	[%l7 + 0x40],	%g5
loop_709:
	std	%f2,	[%l7 + 0x50]
	srlx	%g7,	%i1,	%g2
	smulcc	%o6,	%i7,	%o2
	ldsh	[%l7 + 0x3C],	%o5
	xorcc	%g3,	0x114B,	%i4
	fcmped	%fcc2,	%f0,	%f0
	movne	%xcc,	%l1,	%i3
	stb	%i5,	[%l7 + 0x39]
	bn,a	%xcc,	loop_710
	array16	%o3,	%g4,	%o4
	fmul8x16au	%f2,	%f2,	%f8
	tpos	%icc,	0x7
loop_710:
	fbuge	%fcc2,	loop_711
	fmovscc	%xcc,	%f7,	%f15
	std	%f10,	[%l7 + 0x08]
	sth	%i6,	[%l7 + 0x5C]
loop_711:
	fbu,a	%fcc1,	loop_712
	ldsh	[%l7 + 0x66],	%o1
	fsrc1	%f4,	%f2
	fpackfix	%f10,	%f13
loop_712:
	udiv	%i0,	0x1E7C,	%l0
	bleu	loop_713
	orn	%g6,	0x000E,	%o0
	lduw	[%l7 + 0x7C],	%l5
	udivx	%o7,	0x1803,	%i2
loop_713:
	fbe,a	%fcc1,	loop_714
	fmovdn	%xcc,	%f5,	%f7
	fbe	%fcc2,	loop_715
	fmovsg	%xcc,	%f12,	%f0
loop_714:
	fmovdcs	%icc,	%f9,	%f14
	movneg	%icc,	%l4,	%l2
loop_715:
	fandnot1	%f12,	%f4,	%f0
	call	loop_716
	fmovdvc	%icc,	%f9,	%f15
	movge	%icc,	%l3,	%g1
	mova	%xcc,	%g5,	%l6
loop_716:
	edge32	%i1,	%g2,	%o6
	fcmped	%fcc0,	%f2,	%f4
	std	%f4,	[%l7 + 0x48]
	ldd	[%l7 + 0x58],	%f14
	fble	%fcc0,	loop_717
	fmovdcs	%icc,	%f7,	%f14
	stw	%g7,	[%l7 + 0x14]
	st	%f9,	[%l7 + 0x30]
loop_717:
	st	%f5,	[%l7 + 0x6C]
	lduh	[%l7 + 0x1C],	%o2
	bgu,a	%icc,	loop_718
	fmovdcs	%xcc,	%f6,	%f7
	pdist	%f14,	%f6,	%f2
	ldd	[%l7 + 0x60],	%f0
loop_718:
	stx	%i7,	[%l7 + 0x50]
	tneg	%icc,	0x4
	udivx	%o5,	0x0DA9,	%i4
	fmovdn	%icc,	%f2,	%f5
	stw	%g3,	[%l7 + 0x1C]
	fzero	%f14
	fornot1	%f6,	%f6,	%f6
	movrgz	%i3,	0x0EC,	%l1
	fcmpeq32	%f8,	%f14,	%i5
	ldub	[%l7 + 0x7D],	%o3
	fmovdpos	%icc,	%f6,	%f14
	stw	%g4,	[%l7 + 0x64]
	lduw	[%l7 + 0x0C],	%o4
	lduh	[%l7 + 0x7A],	%o1
	stw	%i6,	[%l7 + 0x10]
	addcc	%l0,	0x0C21,	%i0
	fbl	%fcc1,	loop_719
	tvs	%icc,	0x4
	std	%f4,	[%l7 + 0x40]
	fpadd16s	%f8,	%f13,	%f1
loop_719:
	stw	%o0,	[%l7 + 0x68]
	fxors	%f6,	%f3,	%f4
	std	%f0,	[%l7 + 0x48]
	fmovdle	%icc,	%f4,	%f8
	fpmerge	%f7,	%f3,	%f8
	sth	%g6,	[%l7 + 0x22]
	fmovdleu	%icc,	%f10,	%f10
	fmovrslz	%l5,	%f5,	%f11
	sdivx	%i2,	0x1590,	%o7
	smulcc	%l4,	%l2,	%g1
	fmovsn	%xcc,	%f3,	%f3
	fone	%f6
	orcc	%g5,	%l6,	%i1
	fandnot2	%f12,	%f10,	%f10
	bcs	loop_720
	movrgz	%l3,	0x2D4,	%g2
	fmovse	%xcc,	%f11,	%f5
	tvs	%xcc,	0x4
loop_720:
	ldsb	[%l7 + 0x33],	%o6
	pdist	%f4,	%f8,	%f8
	fbl,a	%fcc2,	loop_721
	lduw	[%l7 + 0x10],	%o2
	fmovspos	%xcc,	%f15,	%f2
	for	%f12,	%f12,	%f14
loop_721:
	fbug	%fcc0,	loop_722
	fmovrdgz	%g7,	%f2,	%f0
	movcc	%xcc,	%i7,	%i4
	std	%f12,	[%l7 + 0x28]
loop_722:
	fxor	%f4,	%f6,	%f12
	ldx	[%l7 + 0x10],	%o5
	ld	[%l7 + 0x08],	%f2
	movgu	%xcc,	%i3,	%g3
	ldx	[%l7 + 0x18],	%l1
	fmovdl	%icc,	%f13,	%f2
	fcmpeq16	%f0,	%f0,	%i5
	fzero	%f0
	fmovdleu	%xcc,	%f5,	%f9
	fmovd	%f6,	%f10
	andncc	%g4,	%o3,	%o1
	stx	%o4,	[%l7 + 0x60]
	lduw	[%l7 + 0x74],	%l0
	fand	%f8,	%f14,	%f4
	xorcc	%i0,	%o0,	%i6
	subcc	%g6,	0x0A76,	%l5
	edge32n	%i2,	%o7,	%l2
	stb	%l4,	[%l7 + 0x78]
	ldub	[%l7 + 0x28],	%g5
	fmovdne	%xcc,	%f10,	%f5
	ldub	[%l7 + 0x0E],	%l6
	fmovsge	%xcc,	%f13,	%f4
	stx	%i1,	[%l7 + 0x50]
	fmovs	%f4,	%f7
	tleu	%xcc,	0x0
	fbuge,a	%fcc0,	loop_723
	alignaddrl	%g1,	%g2,	%o6
	tsubcc	%l3,	0x0861,	%o2
	movne	%icc,	%i7,	%i4
loop_723:
	orcc	%g7,	0x0621,	%o5
	tsubcc	%i3,	%g3,	%l1
	fbl	%fcc0,	loop_724
	fmovsa	%icc,	%f7,	%f2
	mulscc	%i5,	0x0D2B,	%o3
	ldsb	[%l7 + 0x2B],	%o1
loop_724:
	lduw	[%l7 + 0x58],	%o4
	ble,a	loop_725
	fnot1	%f2,	%f14
	movcc	%xcc,	%l0,	%i0
	bshuffle	%f14,	%f14,	%f4
loop_725:
	lduh	[%l7 + 0x0C],	%g4
	std	%f10,	[%l7 + 0x10]
	movn	%xcc,	%o0,	%i6
	lduw	[%l7 + 0x38],	%l5
	ldsb	[%l7 + 0x65],	%i2
	stw	%o7,	[%l7 + 0x38]
	ld	[%l7 + 0x30],	%f5
	call	loop_726
	std	%f0,	[%l7 + 0x10]
	fpadd16	%f8,	%f2,	%f2
	sth	%l2,	[%l7 + 0x78]
loop_726:
	ldsw	[%l7 + 0x48],	%l4
	fcmpne16	%f12,	%f12,	%g5
	std	%f4,	[%l7 + 0x10]
	fors	%f2,	%f5,	%f10
	fmovrdne	%g6,	%f6,	%f4
	fmovdleu	%icc,	%f13,	%f10
	stw	%l6,	[%l7 + 0x38]
	fors	%f4,	%f9,	%f5
	bshuffle	%f8,	%f14,	%f0
	sdivcc	%g1,	0x1CFD,	%i1
	be,pn	%icc,	loop_727
	ldsw	[%l7 + 0x2C],	%g2
	fxnor	%f8,	%f6,	%f14
	fexpand	%f1,	%f2
loop_727:
	mulx	%l3,	%o2,	%o6
	stw	%i4,	[%l7 + 0x78]
	stx	%i7,	[%l7 + 0x10]
	tn	%icc,	0x2
	movgu	%icc,	%o5,	%i3
	sdivx	%g7,	0x05CB,	%l1
	fbg	%fcc0,	loop_728
	stw	%g3,	[%l7 + 0x40]
	faligndata	%f14,	%f2,	%f10
	stw	%i5,	[%l7 + 0x24]
loop_728:
	fcmpeq16	%f2,	%f14,	%o1
	fpadd32	%f10,	%f2,	%f14
	fxnors	%f15,	%f15,	%f2
	fmovscs	%icc,	%f14,	%f14
	xnor	%o3,	%l0,	%i0
	ldd	[%l7 + 0x58],	%f8
	fbuge	%fcc1,	loop_729
	bvs,a	%icc,	loop_730
	fbuge	%fcc1,	loop_731
	ldd	[%l7 + 0x08],	%f14
loop_729:
	ldsw	[%l7 + 0x38],	%g4
loop_730:
	movcc	%icc,	%o4,	%o0
loop_731:
	fmul8x16au	%f11,	%f8,	%f2
	brz	%l5,	loop_732
	lduh	[%l7 + 0x24],	%i6
	ldsw	[%l7 + 0x38],	%o7
	lduh	[%l7 + 0x20],	%i2
loop_732:
	fpack32	%f12,	%f4,	%f4
	fbu,a	%fcc0,	loop_733
	tgu	%icc,	0x4
	movle	%xcc,	%l4,	%l2
	st	%f13,	[%l7 + 0x20]
loop_733:
	nop
	setx loop_734, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fones	%f0
	st	%f2,	[%l7 + 0x5C]
	brgez	%g6,	loop_735
loop_734:
	tsubcc	%l6,	0x153C,	%g5
	edge16ln	%g1,	%g2,	%i1
	sdiv	%l3,	0x0222,	%o2
loop_735:
	fmovdcs	%xcc,	%f8,	%f0
	lduh	[%l7 + 0x24],	%i4
	fmovsleu	%xcc,	%f8,	%f11
	brz,a	%o6,	loop_736
	lduh	[%l7 + 0x0E],	%o5
	std	%f14,	[%l7 + 0x58]
	bcc,a	%icc,	loop_737
loop_736:
	taddcctv	%i3,	%i7,	%g7
	fcmpes	%fcc2,	%f3,	%f4
	movrlz	%g3,	%i5,	%l1
loop_737:
	move	%icc,	%o3,	%l0
	ld	[%l7 + 0x14],	%f12
	te	%xcc,	0x4
	tg	%icc,	0x5
	fxor	%f12,	%f14,	%f0
	ldd	[%l7 + 0x10],	%f10
	fors	%f2,	%f15,	%f14
	fcmpd	%fcc0,	%f0,	%f4
	movvc	%xcc,	%i0,	%g4
	st	%f7,	[%l7 + 0x10]
	xnor	%o1,	0x136D,	%o0
	ldsb	[%l7 + 0x7C],	%o4
	fba	%fcc0,	loop_738
	movrlz	%l5,	0x094,	%o7
	ldsh	[%l7 + 0x46],	%i2
	lduh	[%l7 + 0x7A],	%i6
loop_738:
	movrlez	%l4,	0x3D5,	%g6
	fmovs	%f3,	%f0
	stx	%l2,	[%l7 + 0x60]
	array16	%l6,	%g5,	%g1
	fxnor	%f6,	%f6,	%f4
	fpadd16s	%f5,	%f3,	%f8
	std	%f10,	[%l7 + 0x48]
	sra	%g2,	0x0F,	%i1
	fnot1	%f8,	%f10
	sdivcc	%o2,	0x163C,	%i4
	fbl,a	%fcc1,	loop_739
	fmovdvc	%icc,	%f13,	%f1
	fmul8x16al	%f13,	%f12,	%f6
	fbne,a	%fcc2,	loop_740
loop_739:
	fnors	%f10,	%f2,	%f0
	std	%f4,	[%l7 + 0x38]
	sth	%o6,	[%l7 + 0x50]
loop_740:
	st	%f13,	[%l7 + 0x7C]
	fmovrde	%o5,	%f10,	%f10
	te	%xcc,	0x1
	andcc	%i3,	0x1A85,	%l3
	nop
	setx loop_741, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	movre	%i7,	0x19D,	%g3
	sethi	0x0ADC,	%g7
	fbe,a	%fcc0,	loop_742
loop_741:
	fmovse	%icc,	%f0,	%f14
	umulcc	%i5,	0x0624,	%l1
	tle	%icc,	0x4
loop_742:
	fpadd32s	%f7,	%f6,	%f14
	lduw	[%l7 + 0x20],	%l0
	bne,a	%xcc,	loop_743
	movneg	%xcc,	%i0,	%o3
	tg	%xcc,	0x6
	ldd	[%l7 + 0x78],	%f6
loop_743:
	tg	%icc,	0x4
	fsrc1	%f4,	%f12
	add	%o1,	0x12C8,	%o0
	fmovsl	%xcc,	%f11,	%f5
	ldsh	[%l7 + 0x68],	%o4
	movrlz	%l5,	0x0FC,	%o7
	fmul8x16au	%f10,	%f9,	%f10
	fxnors	%f0,	%f14,	%f3
	fmovsge	%xcc,	%f9,	%f9
	fblg,a	%fcc0,	loop_744
	bg	loop_745
	bcc,pt	%xcc,	loop_746
	fzero	%f12
loop_744:
	ld	[%l7 + 0x54],	%f8
loop_745:
	lduw	[%l7 + 0x78],	%i2
loop_746:
	stw	%i6,	[%l7 + 0x24]
	fpmerge	%f14,	%f7,	%f12
	fmovrdne	%l4,	%f12,	%f14
	fbul	%fcc1,	loop_747
	fandnot2	%f8,	%f14,	%f14
	for	%f8,	%f10,	%f0
	fnands	%f4,	%f2,	%f13
loop_747:
	stb	%g4,	[%l7 + 0x44]
	fcmpeq16	%f8,	%f10,	%l2
	fsrc1	%f2,	%f12
	stw	%g6,	[%l7 + 0x44]
	fornot1s	%f8,	%f11,	%f8
	tpos	%icc,	0x3
	fmovsvs	%xcc,	%f9,	%f8
	array8	%l6,	%g1,	%g5
	ld	[%l7 + 0x54],	%f15
	fmovdne	%xcc,	%f5,	%f9
	taddcc	%i1,	%g2,	%i4
	ldd	[%l7 + 0x78],	%f6
	add	%o6,	%o5,	%i3
	umul	%l3,	0x0D90,	%i7
	std	%f2,	[%l7 + 0x78]
	stb	%g3,	[%l7 + 0x26]
	tpos	%icc,	0x1
	fmul8x16	%f3,	%f10,	%f0
	lduh	[%l7 + 0x7A],	%g7
	fmovsvc	%xcc,	%f0,	%f11
	bcs,a	%icc,	loop_748
	fsrc1	%f14,	%f6
	stx	%o2,	[%l7 + 0x50]
	nop
	setx loop_749, %l0, %l1
	jmpl %l1, %i5
loop_748:
	st	%f2,	[%l7 + 0x20]
	orn	%l1,	%l0,	%o3
	fba,a	%fcc0,	loop_750
loop_749:
	ble,a,pt	%xcc,	loop_751
	bpos,a,pt	%xcc,	loop_752
	popc	%o1,	%i0
loop_750:
	ldsb	[%l7 + 0x20],	%o0
loop_751:
	ldx	[%l7 + 0x08],	%o4
loop_752:
	fpackfix	%f12,	%f15
	stb	%o7,	[%l7 + 0x39]
	ba,a	%icc,	loop_753
	ld	[%l7 + 0x7C],	%f8
	fblg	%fcc3,	loop_754
	fbule,a	%fcc2,	loop_755
loop_753:
	fmovsge	%xcc,	%f5,	%f11
	ldx	[%l7 + 0x10],	%i2
loop_754:
	ta	%xcc,	0x5
loop_755:
	fmovdpos	%xcc,	%f9,	%f14
	bn,a,pn	%xcc,	loop_756
	fmovdl	%xcc,	%f5,	%f11
	stw	%i6,	[%l7 + 0x34]
	sth	%l5,	[%l7 + 0x24]
loop_756:
	ldd	[%l7 + 0x48],	%f14
	subcc	%l4,	%g4,	%g6
	movrgz	%l6,	%l2,	%g5
	edge32l	%i1,	%g2,	%g1
	fnand	%f8,	%f0,	%f12
	stw	%i4,	[%l7 + 0x50]
	fbge,a	%fcc2,	loop_757
	taddcctv	%o5,	%i3,	%l3
	fandnot1	%f12,	%f14,	%f4
	lduw	[%l7 + 0x58],	%o6
loop_757:
	std	%f0,	[%l7 + 0x30]
	fcmpgt16	%f12,	%f4,	%g3
	tn	%icc,	0x2
	ldsw	[%l7 + 0x08],	%g7
	ldub	[%l7 + 0x09],	%i7
	be	%xcc,	loop_758
	ldsw	[%l7 + 0x30],	%i5
	movg	%icc,	%l1,	%o2
	fmovdne	%xcc,	%f10,	%f3
loop_758:
	ldx	[%l7 + 0x20],	%l0
	movne	%icc,	%o3,	%i0
	stb	%o0,	[%l7 + 0x39]
	fpack32	%f12,	%f14,	%f4
	fabss	%f6,	%f6
	fcmple16	%f14,	%f4,	%o4
	fmovspos	%icc,	%f0,	%f5
	fnot1	%f0,	%f12
	sth	%o7,	[%l7 + 0x62]
	stw	%i2,	[%l7 + 0x74]
	xnorcc	%i6,	%o1,	%l4
	movrgz	%g4,	0x316,	%l5
	fabss	%f11,	%f1
	ldub	[%l7 + 0x42],	%g6
	ldsb	[%l7 + 0x6D],	%l2
	fmovscs	%xcc,	%f8,	%f0
	fands	%f14,	%f1,	%f9
	ld	[%l7 + 0x38],	%f6
	fcmpeq16	%f2,	%f14,	%g5
	fpsub16s	%f11,	%f11,	%f1
	array16	%i1,	%l6,	%g2
	fabsd	%f0,	%f6
	brgez,a	%g1,	loop_759
	brgz,a	%o5,	loop_760
	fbuge,a	%fcc2,	loop_761
	fmovse	%icc,	%f2,	%f7
loop_759:
	fmovsvc	%xcc,	%f14,	%f3
loop_760:
	fpmerge	%f4,	%f13,	%f10
loop_761:
	fpadd16	%f4,	%f14,	%f6
	movrgz	%i4,	%l3,	%i3
	fmovrdgz	%o6,	%f2,	%f2
	bcs,a	loop_762
	fxnor	%f0,	%f4,	%f14
	tl	%xcc,	0x3
	smul	%g3,	%i7,	%i5
loop_762:
	edge8l	%g7,	%o2,	%l1
	fmovdl	%xcc,	%f6,	%f15
	movgu	%xcc,	%l0,	%o3
	fmovd	%f12,	%f6
	fmovrslz	%o0,	%f13,	%f13
	fmovsn	%xcc,	%f10,	%f13
	st	%f0,	[%l7 + 0x60]
	fnands	%f14,	%f9,	%f13
	pdist	%f10,	%f10,	%f0
	fone	%f4
	orncc	%o4,	%i0,	%o7
	ldub	[%l7 + 0x7E],	%i6
	fba	%fcc3,	loop_763
	ldsh	[%l7 + 0x28],	%o1
	sllx	%l4,	%i2,	%l5
	lduw	[%l7 + 0x14],	%g6
loop_763:
	sth	%g4,	[%l7 + 0x1E]
	addccc	%l2,	%i1,	%g5
	array32	%l6,	%g2,	%o5
	ldsb	[%l7 + 0x41],	%g1
	fcmpgt32	%f12,	%f12,	%l3
	stb	%i4,	[%l7 + 0x75]
	fcmple32	%f0,	%f10,	%o6
	bge,pt	%icc,	loop_764
	fcmpd	%fcc0,	%f14,	%f2
	ldsh	[%l7 + 0x0A],	%i3
	fmovsvs	%xcc,	%f3,	%f15
loop_764:
	fbule,a	%fcc1,	loop_765
	movrgz	%g3,	0x394,	%i5
	fmovrslez	%i7,	%f5,	%f1
	ldub	[%l7 + 0x53],	%g7
loop_765:
	tcc	%xcc,	0x7
	xorcc	%o2,	0x0657,	%l1
	fmovsleu	%icc,	%f15,	%f11
	fzero	%f10
	ldd	[%l7 + 0x18],	%f2
	brz	%o3,	loop_766
	orncc	%l0,	%o0,	%o4
	lduw	[%l7 + 0x20],	%o7
	bne,a,pt	%xcc,	loop_767
loop_766:
	ld	[%l7 + 0x7C],	%f15
	taddcctv	%i6,	%i0,	%o1
	fcmpeq32	%f8,	%f10,	%l4
loop_767:
	bshuffle	%f0,	%f4,	%f0
	ldsb	[%l7 + 0x2A],	%i2
	lduw	[%l7 + 0x6C],	%g6
	bge,a,pn	%icc,	loop_768
	fmul8x16au	%f5,	%f3,	%f6
	lduh	[%l7 + 0x34],	%g4
	lduh	[%l7 + 0x22],	%l5
loop_768:
	fmovdl	%xcc,	%f4,	%f4
	fmovdl	%xcc,	%f0,	%f11
	edge8ln	%i1,	%g5,	%l6
	fnot1s	%f1,	%f6
	lduh	[%l7 + 0x20],	%g2
	tvs	%icc,	0x0
	ldsw	[%l7 + 0x58],	%o5
	fmovsvc	%icc,	%f10,	%f4
	ba,a,pn	%xcc,	loop_769
	bl,pn	%xcc,	loop_770
	tcs	%xcc,	0x7
	ldsb	[%l7 + 0x09],	%l2
loop_769:
	edge16l	%g1,	%l3,	%i4
loop_770:
	bpos,a,pn	%xcc,	loop_771
	bvs,a	loop_772
	fsrc1s	%f4,	%f15
	fabss	%f5,	%f13
loop_771:
	fmovdg	%xcc,	%f10,	%f0
loop_772:
	ld	[%l7 + 0x34],	%f2
	udivx	%i3,	0x0D35,	%g3
	bg	loop_773
	sth	%o6,	[%l7 + 0x42]
	te	%xcc,	0x0
	stw	%i5,	[%l7 + 0x50]
loop_773:
	fnot1s	%f15,	%f14
	sdivcc	%g7,	0x0E95,	%i7
	bcs,a	loop_774
	array8	%o2,	%l1,	%o3
	movneg	%icc,	%l0,	%o0
	fbug,a	%fcc2,	loop_775
loop_774:
	movn	%xcc,	%o7,	%o4
	lduw	[%l7 + 0x64],	%i6
	fbl	%fcc0,	loop_776
loop_775:
	std	%f14,	[%l7 + 0x10]
	te	%xcc,	0x6
	fnot2	%f14,	%f6
loop_776:
	brlez	%i0,	loop_777
	sub	%l4,	0x16DE,	%i2
	ba,a	%icc,	loop_778
	bvs,a,pn	%xcc,	loop_779
loop_777:
	movneg	%icc,	%g6,	%g4
	fbo	%fcc1,	loop_780
loop_778:
	ta	%icc,	0x3
loop_779:
	fornot1s	%f1,	%f1,	%f0
	st	%f4,	[%l7 + 0x50]
loop_780:
	lduh	[%l7 + 0x7E],	%o1
	fpadd32	%f2,	%f14,	%f4
	tneg	%icc,	0x1
	sdivx	%i1,	0x0C17,	%l5
	movrlz	%g5,	0x272,	%g2
	fbug	%fcc1,	loop_781
	stb	%o5,	[%l7 + 0x67]
	andn	%l6,	0x1669,	%g1
	ldx	[%l7 + 0x30],	%l2
loop_781:
	fmovrsgz	%i4,	%f9,	%f15
	movleu	%icc,	%i3,	%g3
	edge8n	%l3,	%o6,	%i5
	tg	%xcc,	0x4
	ldd	[%l7 + 0x10],	%f2
	ldsh	[%l7 + 0x0C],	%i7
	stw	%o2,	[%l7 + 0x5C]
	fabss	%f14,	%f8
	popc	0x1FC1,	%l1
	xnorcc	%g7,	0x0358,	%l0
	edge16l	%o3,	%o0,	%o4
	stw	%o7,	[%l7 + 0x58]
	mulscc	%i6,	%l4,	%i0
	fmovrslez	%g6,	%f11,	%f3
	ldx	[%l7 + 0x78],	%g4
	lduh	[%l7 + 0x36],	%o1
	xor	%i1,	0x140F,	%l5
	addcc	%g5,	0x098F,	%g2
	movrne	%o5,	%i2,	%g1
	fnors	%f6,	%f2,	%f13
	ba	%xcc,	loop_782
	mova	%xcc,	%l2,	%i4
	fbge	%fcc3,	loop_783
	edge8ln	%i3,	%l6,	%g3
loop_782:
	ldub	[%l7 + 0x10],	%o6
	movvs	%xcc,	%l3,	%i5
loop_783:
	ldsh	[%l7 + 0x16],	%i7
	fbuge	%fcc3,	loop_784
	srlx	%l1,	%g7,	%o2
	mova	%icc,	%o3,	%o0
	fbul	%fcc1,	loop_785
loop_784:
	ld	[%l7 + 0x64],	%f5
	fmovscc	%xcc,	%f2,	%f12
	fmovdle	%icc,	%f4,	%f8
loop_785:
	fmul8x16	%f4,	%f8,	%f8
	ta	%xcc,	0x4
	fpadd32	%f2,	%f2,	%f10
	be,pt	%xcc,	loop_786
	fbue	%fcc3,	loop_787
	fmovdge	%xcc,	%f12,	%f0
	srlx	%o4,	%o7,	%i6
loop_786:
	ld	[%l7 + 0x58],	%f11
loop_787:
	sll	%l0,	%l4,	%i0
	edge16l	%g4,	%g6,	%i1
	fones	%f2
	tne	%xcc,	0x4
	ldsb	[%l7 + 0x3E],	%o1
	edge16n	%g5,	%g2,	%o5
	ldub	[%l7 + 0x33],	%l5
	lduw	[%l7 + 0x6C],	%g1
	fmul8x16au	%f7,	%f7,	%f0
	movrlez	%l2,	0x362,	%i2
	fors	%f8,	%f8,	%f7
	tsubcc	%i3,	0x1004,	%l6
	popc	%i4,	%g3
	ldx	[%l7 + 0x78],	%l3
	sub	%o6,	%i7,	%i5
	orcc	%g7,	%o2,	%l1
	sth	%o3,	[%l7 + 0x4E]
	fmovdl	%icc,	%f10,	%f11
	xnorcc	%o4,	0x1BD3,	%o7
	ldsh	[%l7 + 0x12],	%i6
	ldsw	[%l7 + 0x34],	%l0
	popc	%l4,	%i0
	fabsd	%f12,	%f14
	fcmpeq32	%f0,	%f2,	%o0
	fnot1	%f14,	%f0
	taddcc	%g6,	%i1,	%g4
	fmovse	%xcc,	%f1,	%f6
	std	%f10,	[%l7 + 0x08]
	fmovscc	%xcc,	%f2,	%f12
	fabss	%f7,	%f9
	fnegs	%f11,	%f3
	sra	%o1,	0x11,	%g2
	ldx	[%l7 + 0x20],	%g5
	ldsb	[%l7 + 0x7E],	%l5
	subcc	%o5,	%l2,	%i2
	movne	%xcc,	%g1,	%l6
	std	%f4,	[%l7 + 0x58]
	ldx	[%l7 + 0x50],	%i3
	array8	%i4,	%g3,	%o6
	ld	[%l7 + 0x5C],	%f7
	fmul8x16al	%f12,	%f14,	%f12
	stw	%l3,	[%l7 + 0x2C]
	fpsub16	%f12,	%f0,	%f4
	lduh	[%l7 + 0x38],	%i5
	fbne,a	%fcc3,	loop_788
	tcc	%icc,	0x1
	stb	%i7,	[%l7 + 0x39]
	orncc	%g7,	0x1B87,	%o2
loop_788:
	move	%xcc,	%o3,	%o4
	ldsw	[%l7 + 0x14],	%o7
	movrgez	%l1,	%l0,	%i6
	fmovspos	%icc,	%f15,	%f2
	fmovde	%xcc,	%f12,	%f1
	st	%f0,	[%l7 + 0x18]
	ldsh	[%l7 + 0x6C],	%i0
	ldx	[%l7 + 0x58],	%l4
	be	loop_789
	fornot1s	%f8,	%f15,	%f9
	fmovdleu	%icc,	%f8,	%f8
	ldsw	[%l7 + 0x38],	%o0
loop_789:
	nop
	setx loop_790, %l0, %l1
	jmpl %l1, %g6
	ldub	[%l7 + 0x55],	%g4
	subcc	%o1,	0x0928,	%i1
	brlz	%g2,	loop_791
loop_790:
	movge	%xcc,	%g5,	%o5
	fand	%f4,	%f0,	%f8
	fnands	%f3,	%f11,	%f7
loop_791:
	ba,a	%icc,	loop_792
	fandnot1	%f4,	%f8,	%f6
	movne	%icc,	%l2,	%l5
	ldsw	[%l7 + 0x28],	%g1
loop_792:
	movgu	%xcc,	%l6,	%i3
	tn	%icc,	0x6
	edge16ln	%i4,	%g3,	%i2
	lduh	[%l7 + 0x3C],	%o6
	ldd	[%l7 + 0x10],	%f0
	subcc	%i5,	%l3,	%g7
	movn	%xcc,	%i7,	%o3
	fmovrdlez	%o4,	%f10,	%f4
	movge	%icc,	%o2,	%l1
	smul	%l0,	0x1524,	%i6
	and	%i0,	%l4,	%o7
	srlx	%o0,	0x1D,	%g6
	faligndata	%f6,	%f6,	%f10
	edge16l	%o1,	%i1,	%g2
	mova	%xcc,	%g4,	%o5
	srl	%l2,	%l5,	%g5
	tg	%icc,	0x4
	srax	%g1,	%i3,	%i4
	ldsb	[%l7 + 0x41],	%g3
	stb	%l6,	[%l7 + 0x5A]
	fmovsneg	%icc,	%f6,	%f11
	ldd	[%l7 + 0x48],	%f4
	mova	%icc,	%i2,	%o6
	ldsb	[%l7 + 0x3D],	%l3
	stb	%i5,	[%l7 + 0x44]
	fpsub32s	%f2,	%f5,	%f8
	tvc	%icc,	0x1
	fandnot2	%f12,	%f12,	%f2
	bpos,pn	%xcc,	loop_793
	ldsb	[%l7 + 0x4C],	%i7
	mulscc	%o3,	0x1514,	%o4
	ldd	[%l7 + 0x18],	%f12
loop_793:
	std	%f8,	[%l7 + 0x48]
	movrne	%g7,	%o2,	%l1
	st	%f3,	[%l7 + 0x70]
	ld	[%l7 + 0x1C],	%f3
	movg	%icc,	%i6,	%i0
	fors	%f0,	%f9,	%f0
	tg	%xcc,	0x6
	fxors	%f14,	%f12,	%f12
	fbl,a	%fcc0,	loop_794
	sth	%l4,	[%l7 + 0x34]
	array32	%o7,	%o0,	%l0
	ldd	[%l7 + 0x70],	%f4
loop_794:
	ldd	[%l7 + 0x58],	%f6
	fnors	%f12,	%f12,	%f14
	ldsb	[%l7 + 0x0D],	%o1
	mulscc	%g6,	0x1D0B,	%i1
	fcmpes	%fcc1,	%f2,	%f15
	for	%f6,	%f12,	%f8
	movn	%icc,	%g4,	%o5
	ldsh	[%l7 + 0x2C],	%l2
	tl	%xcc,	0x7
	bcs	loop_795
	ldsb	[%l7 + 0x2B],	%l5
	brnz,a	%g2,	loop_796
	smulcc	%g1,	0x1F4F,	%i3
loop_795:
	bg,a	%xcc,	loop_797
	sll	%i4,	%g3,	%l6
loop_796:
	fpack16	%f14,	%f9
	edge8l	%g5,	%o6,	%i2
loop_797:
	brlez,a	%l3,	loop_798
	lduh	[%l7 + 0x46],	%i5
	tcc	%icc,	0x1
	fone	%f0
loop_798:
	fcmpes	%fcc2,	%f12,	%f10
	ldsh	[%l7 + 0x62],	%i7
	fnot2s	%f5,	%f2
	stb	%o3,	[%l7 + 0x19]
	sth	%o4,	[%l7 + 0x38]
	ld	[%l7 + 0x54],	%f7
	fbe,a	%fcc3,	loop_799
	alignaddr	%o2,	%g7,	%i6
	fxnor	%f8,	%f8,	%f4
	edge16l	%i0,	%l1,	%o7
loop_799:
	fands	%f15,	%f6,	%f12
	ldub	[%l7 + 0x66],	%l4
	ldsw	[%l7 + 0x48],	%l0
	fmovscc	%icc,	%f15,	%f11
	add	%o0,	%o1,	%g6
	fsrc1	%f14,	%f12
	edge16	%g4,	%i1,	%o5
	ldub	[%l7 + 0x41],	%l2
	movrlz	%l5,	%g1,	%i3
	fcmpeq16	%f10,	%f8,	%i4
	edge8	%g3,	%l6,	%g2
	fbl,a	%fcc1,	loop_800
	movn	%icc,	%g5,	%o6
	fcmpeq32	%f14,	%f4,	%i2
	fbne	%fcc3,	loop_801
loop_800:
	stw	%l3,	[%l7 + 0x70]
	xor	%i7,	%o3,	%i5
	ld	[%l7 + 0x68],	%f4
loop_801:
	pdist	%f14,	%f2,	%f2
	st	%f4,	[%l7 + 0x64]
	ldd	[%l7 + 0x78],	%f0
	nop
	setx loop_802, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovsa	%icc,	%f8,	%f14
	movn	%icc,	%o2,	%o4
	std	%f10,	[%l7 + 0x18]
loop_802:
	fbge,a	%fcc2,	loop_803
	ldx	[%l7 + 0x28],	%g7
	fbul	%fcc3,	loop_804
	tle	%xcc,	0x5
loop_803:
	addcc	%i0,	0x101F,	%i6
	fcmped	%fcc2,	%f6,	%f12
loop_804:
	ldsb	[%l7 + 0x7D],	%l1
	fbuge,a	%fcc2,	loop_805
	ldsb	[%l7 + 0x0B],	%o7
	lduw	[%l7 + 0x74],	%l0
	tleu	%xcc,	0x0
loop_805:
	st	%f3,	[%l7 + 0x38]
	movrgz	%o0,	0x05C,	%l4
	sra	%o1,	%g4,	%i1
	nop
	setx loop_806, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	sll	%g6,	0x08,	%o5
	fmovdcs	%xcc,	%f3,	%f9
	fmul8ulx16	%f2,	%f2,	%f6
loop_806:
	brlez	%l2,	loop_807
	umul	%g1,	0x1D5A,	%i3
	sth	%l5,	[%l7 + 0x70]
	udiv	%g3,	0x005D,	%i4
loop_807:
	fmovsne	%xcc,	%f11,	%f0
	fmovrsgez	%g2,	%f13,	%f13
	std	%f2,	[%l7 + 0x68]
	bneg,a	loop_808
	std	%f2,	[%l7 + 0x50]
	movle	%xcc,	%l6,	%o6
	fmovs	%f15,	%f5
loop_808:
	bne,a	loop_809
	smulcc	%g5,	%l3,	%i7
	fmovdl	%icc,	%f1,	%f11
	xnorcc	%i2,	0x107F,	%i5
loop_809:
	std	%f8,	[%l7 + 0x50]
	bge,a	%xcc,	loop_810
	fabss	%f13,	%f12
	lduw	[%l7 + 0x7C],	%o2
	ld	[%l7 + 0x10],	%f2
loop_810:
	nop
	setx loop_811, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	stb	%o3,	[%l7 + 0x48]
	fcmpd	%fcc1,	%f14,	%f2
	ldsb	[%l7 + 0x2A],	%o4
loop_811:
	andcc	%g7,	%i6,	%i0
	movrgez	%o7,	%l1,	%l0
	ldx	[%l7 + 0x48],	%l4
	smulcc	%o1,	%o0,	%i1
	brgez	%g4,	loop_812
	fmovsvs	%icc,	%f15,	%f14
	sethi	0x0986,	%o5
	sth	%l2,	[%l7 + 0x3E]
loop_812:
	stw	%g1,	[%l7 + 0x54]
	st	%f15,	[%l7 + 0x14]
	ldsw	[%l7 + 0x48],	%g6
	st	%f11,	[%l7 + 0x18]
	ta	%icc,	0x0
	or	%l5,	0x1B6E,	%i3
	ldsb	[%l7 + 0x1A],	%i4
	movrgz	%g3,	%g2,	%l6
	fcmpgt16	%f2,	%f0,	%o6
	bge,a,pn	%icc,	loop_813
	ldx	[%l7 + 0x48],	%l3
	ldsw	[%l7 + 0x38],	%g5
	fone	%f12
loop_813:
	alignaddrl	%i2,	%i5,	%i7
	bshuffle	%f0,	%f14,	%f0
	ldd	[%l7 + 0x48],	%f4
	orncc	%o3,	0x1AAC,	%o4
	tcs	%xcc,	0x1
	fcmpgt32	%f14,	%f4,	%g7
	fbug	%fcc0,	loop_814
	stx	%i6,	[%l7 + 0x18]
	fnot2	%f12,	%f4
	edge16n	%o2,	%i0,	%l1
loop_814:
	xorcc	%l0,	%o7,	%o1
	orcc	%l4,	0x10D6,	%o0
	st	%f10,	[%l7 + 0x28]
	lduw	[%l7 + 0x58],	%i1
	tn	%xcc,	0x6
	fmovscs	%icc,	%f5,	%f7
	fmovrdgz	%o5,	%f2,	%f12
	lduw	[%l7 + 0x7C],	%g4
	fcmps	%fcc3,	%f8,	%f4
	ldsw	[%l7 + 0x54],	%l2
	bvs,a,pn	%icc,	loop_815
	fnor	%f2,	%f8,	%f8
	std	%f12,	[%l7 + 0x18]
	umulcc	%g6,	%g1,	%l5
loop_815:
	stw	%i4,	[%l7 + 0x20]
	st	%f11,	[%l7 + 0x5C]
	ldsh	[%l7 + 0x6A],	%g3
	fmovdcc	%icc,	%f10,	%f6
	ldx	[%l7 + 0x70],	%g2
	umulcc	%l6,	%o6,	%i3
	fmovrdne	%l3,	%f14,	%f4
	st	%f10,	[%l7 + 0x58]
	sll	%g5,	%i5,	%i7
	movrne	%i2,	%o3,	%g7
	stw	%i6,	[%l7 + 0x60]
	fsrc1	%f8,	%f12
	sll	%o2,	%i0,	%o4
	ldsb	[%l7 + 0x39],	%l1
	fxnors	%f0,	%f0,	%f1
	fxors	%f11,	%f9,	%f6
	edge16n	%o7,	%o1,	%l4
	movgu	%icc,	%l0,	%i1
	movgu	%icc,	%o5,	%o0
	brgez,a	%l2,	loop_816
	brnz,a	%g4,	loop_817
	fsrc1s	%f15,	%f5
	edge16l	%g1,	%l5,	%g6
loop_816:
	ba,a	loop_818
loop_817:
	faligndata	%f12,	%f8,	%f2
	fmovdneg	%xcc,	%f4,	%f1
	st	%f6,	[%l7 + 0x14]
loop_818:
	fbug,a	%fcc3,	loop_819
	array8	%i4,	%g3,	%l6
	ldx	[%l7 + 0x20],	%o6
	fmovse	%xcc,	%f2,	%f13
loop_819:
	fmovrsgz	%g2,	%f5,	%f3
	tcs	%xcc,	0x4
	std	%f2,	[%l7 + 0x08]
	udiv	%i3,	0x075D,	%g5
	fnor	%f12,	%f12,	%f4
	ldsh	[%l7 + 0x5A],	%i5
	subccc	%i7,	%l3,	%o3
	ldx	[%l7 + 0x58],	%i2
	fcmple16	%f6,	%f4,	%i6
	lduh	[%l7 + 0x58],	%o2
	ldsb	[%l7 + 0x2B],	%i0
	ldsw	[%l7 + 0x60],	%o4
	tpos	%xcc,	0x7
	stx	%g7,	[%l7 + 0x70]
	sth	%o7,	[%l7 + 0x24]
	ldd	[%l7 + 0x18],	%f6
	fmovrdlez	%o1,	%f8,	%f0
	movrlz	%l4,	%l0,	%l1
	mova	%icc,	%o5,	%o0
	movcc	%icc,	%i1,	%l2
	fcmple32	%f8,	%f6,	%g4
	ldd	[%l7 + 0x78],	%f10
	movneg	%xcc,	%l5,	%g6
	stx	%i4,	[%l7 + 0x50]
	tsubcctv	%g3,	0x039A,	%l6
	ldsw	[%l7 + 0x0C],	%o6
	ldd	[%l7 + 0x48],	%f12
	fmovrdgz	%g2,	%f6,	%f10
	fcmpes	%fcc1,	%f7,	%f12
	fmovsleu	%xcc,	%f14,	%f8
	sdivcc	%g1,	0x1E0E,	%g5
	stw	%i3,	[%l7 + 0x40]
	fmul8x16au	%f8,	%f7,	%f10
	mulx	%i7,	0x0479,	%l3
	subccc	%i5,	%i2,	%i6
	std	%f8,	[%l7 + 0x78]
	sth	%o2,	[%l7 + 0x62]
	ldd	[%l7 + 0x38],	%f10
	fbl	%fcc2,	loop_820
	bl	%icc,	loop_821
	movn	%xcc,	%o3,	%o4
	movl	%xcc,	%g7,	%o7
loop_820:
	alignaddr	%i0,	%o1,	%l0
loop_821:
	nop
	setx loop_822, %l0, %l1
	jmpl %l1, %l1
	movleu	%xcc,	%l4,	%o0
	ldsh	[%l7 + 0x44],	%i1
	movle	%xcc,	%l2,	%g4
loop_822:
	ldub	[%l7 + 0x6C],	%l5
	stw	%g6,	[%l7 + 0x78]
	lduw	[%l7 + 0x78],	%o5
	tn	%xcc,	0x3
	brgz,a	%i4,	loop_823
	andncc	%g3,	%l6,	%o6
	movgu	%icc,	%g2,	%g5
	fxors	%f13,	%f11,	%f4
loop_823:
	fsrc1s	%f14,	%f5
	fsrc1	%f12,	%f0
	edge8n	%i3,	%i7,	%g1
	fpackfix	%f2,	%f10
	orncc	%l3,	%i5,	%i6
	udivcc	%i2,	0x0E76,	%o3
	ldd	[%l7 + 0x20],	%f6
	ldsh	[%l7 + 0x3A],	%o4
	stx	%o2,	[%l7 + 0x40]
	tvc	%xcc,	0x3
	fcmps	%fcc2,	%f14,	%f7
	tvs	%xcc,	0x5
	edge16	%g7,	%i0,	%o7
	stx	%o1,	[%l7 + 0x08]
	fabss	%f9,	%f9
	bl,pn	%icc,	loop_824
	fmovsvc	%icc,	%f6,	%f1
	ldd	[%l7 + 0x58],	%f14
	sth	%l0,	[%l7 + 0x68]
loop_824:
	ldsw	[%l7 + 0x78],	%l4
	lduw	[%l7 + 0x74],	%o0
	ldsh	[%l7 + 0x58],	%i1
	lduw	[%l7 + 0x44],	%l1
	or	%g4,	0x0236,	%l2
	fabsd	%f10,	%f6
	sth	%l5,	[%l7 + 0x1E]
	ldsw	[%l7 + 0x78],	%g6
	umul	%o5,	0x0984,	%g3
	ldsb	[%l7 + 0x25],	%l6
	fmovrsgez	%i4,	%f9,	%f11
	stb	%g2,	[%l7 + 0x5E]
	fblg	%fcc1,	loop_825
	lduw	[%l7 + 0x18],	%g5
	stx	%o6,	[%l7 + 0x70]
	andn	%i3,	0x0C1D,	%i7
loop_825:
	fcmpne32	%f2,	%f0,	%g1
	movre	%l3,	%i6,	%i5
	ldsh	[%l7 + 0x76],	%i2
	bg,pn	%xcc,	loop_826
	movleu	%icc,	%o3,	%o2
	fmovdge	%icc,	%f4,	%f14
	popc	%o4,	%g7
loop_826:
	tn	%xcc,	0x2
	edge8ln	%o7,	%i0,	%l0
	lduh	[%l7 + 0x60],	%o1
	fmovde	%icc,	%f1,	%f1
	fmovrse	%l4,	%f3,	%f8
	ldsb	[%l7 + 0x13],	%i1
	or	%o0,	%g4,	%l1
	fmovdn	%icc,	%f6,	%f6
	ldsb	[%l7 + 0x14],	%l2
	andcc	%g6,	%o5,	%l5
	ldsb	[%l7 + 0x4E],	%l6
	stx	%g3,	[%l7 + 0x30]
	stx	%g2,	[%l7 + 0x18]
	ld	[%l7 + 0x2C],	%f7
	ldd	[%l7 + 0x78],	%f10
	ldx	[%l7 + 0x50],	%i4
	fnot2	%f8,	%f4
	fmovrde	%o6,	%f14,	%f2
	ldsb	[%l7 + 0x4D],	%g5
	fbne	%fcc0,	loop_827
	brnz,a	%i7,	loop_828
	fors	%f5,	%f10,	%f14
	fmul8ulx16	%f6,	%f2,	%f14
loop_827:
	ldsw	[%l7 + 0x60],	%i3
loop_828:
	call	loop_829
	ldsb	[%l7 + 0x0E],	%l3
	fabss	%f0,	%f6
	movcs	%xcc,	%g1,	%i6
loop_829:
	fnot2s	%f6,	%f14
	tcs	%xcc,	0x5
	movle	%icc,	%i2,	%o3
	movneg	%icc,	%i5,	%o4
	orcc	%g7,	%o2,	%o7
	movl	%xcc,	%i0,	%o1
	ldsb	[%l7 + 0x37],	%l0
	fcmpgt16	%f4,	%f0,	%l4
	sth	%i1,	[%l7 + 0x3A]
	sll	%o0,	%g4,	%l1
	tpos	%xcc,	0x3
	bgu,a,pn	%xcc,	loop_830
	orn	%l2,	0x150F,	%g6
	lduw	[%l7 + 0x20],	%l5
	fbe	%fcc1,	loop_831
loop_830:
	fpadd32s	%f3,	%f2,	%f9
	fmovda	%xcc,	%f3,	%f8
	movvc	%icc,	%l6,	%g3
loop_831:
	fornot1	%f2,	%f4,	%f0
	std	%f4,	[%l7 + 0x20]
	fones	%f1
	fpsub32s	%f5,	%f2,	%f6
	edge32n	%g2,	%o5,	%i4
	ldsh	[%l7 + 0x54],	%g5
	st	%f11,	[%l7 + 0x34]
	fmovdne	%icc,	%f10,	%f5
	fbue,a	%fcc0,	loop_832
	fcmpeq32	%f4,	%f12,	%i7
	fands	%f1,	%f4,	%f2
	ldsb	[%l7 + 0x5A],	%i3
loop_832:
	fcmpd	%fcc3,	%f14,	%f8
	fmul8x16	%f12,	%f2,	%f10
	tn	%xcc,	0x2
	fbge,a	%fcc0,	loop_833
	fnands	%f7,	%f15,	%f9
	ta	%icc,	0x6
	add	%l3,	0x14D1,	%g1
loop_833:
	lduh	[%l7 + 0x42],	%o6
	fmovdpos	%icc,	%f0,	%f3
	ldx	[%l7 + 0x10],	%i2
	lduh	[%l7 + 0x3E],	%o3
	tn	%icc,	0x2
	fmovrdgz	%i5,	%f0,	%f8
	lduh	[%l7 + 0x6C],	%o4
	fpmerge	%f6,	%f6,	%f0
	stw	%i6,	[%l7 + 0x7C]
	fcmple32	%f4,	%f10,	%g7
	fbu,a	%fcc2,	loop_834
	bleu,pn	%xcc,	loop_835
	fmuld8ulx16	%f0,	%f14,	%f4
	tgu	%icc,	0x7
loop_834:
	andcc	%o2,	0x1DE5,	%o7
loop_835:
	stb	%i0,	[%l7 + 0x37]
	edge32n	%l0,	%o1,	%l4
	lduh	[%l7 + 0x12],	%o0
	fsrc1s	%f13,	%f8
	ldd	[%l7 + 0x28],	%f10
	popc	%g4,	%l1
	stx	%i1,	[%l7 + 0x78]
	and	%g6,	0x1368,	%l2
	tvc	%xcc,	0x3
	brgz	%l6,	loop_836
	ldsw	[%l7 + 0x14],	%g3
	movpos	%xcc,	%l5,	%g2
	lduw	[%l7 + 0x2C],	%o5
loop_836:
	sth	%g5,	[%l7 + 0x0E]
	srlx	%i7,	%i4,	%i3
	fpadd16	%f4,	%f12,	%f0
	tsubcc	%l3,	%g1,	%o6
	ble,a,pn	%xcc,	loop_837
	stb	%o3,	[%l7 + 0x18]
	fpack32	%f6,	%f0,	%f12
	bgu,pt	%icc,	loop_838
loop_837:
	fpadd32s	%f13,	%f1,	%f1
	tg	%icc,	0x2
	pdist	%f10,	%f4,	%f10
loop_838:
	tpos	%icc,	0x2
	lduw	[%l7 + 0x74],	%i5
	ldsb	[%l7 + 0x12],	%o4
	fpsub32	%f10,	%f12,	%f4
	fcmped	%fcc3,	%f4,	%f10
	ldx	[%l7 + 0x10],	%i2
	fcmpeq32	%f14,	%f0,	%i6
	ldsw	[%l7 + 0x1C],	%g7
	edge32	%o7,	%i0,	%l0
	addccc	%o2,	%l4,	%o0
	fmovsa	%icc,	%f15,	%f14
	fnot2s	%f13,	%f4
	std	%f10,	[%l7 + 0x70]
	alignaddr	%o1,	%l1,	%i1
	sdivx	%g4,	0x0B8F,	%g6
	fone	%f2
	fble,a	%fcc0,	loop_839
	subc	%l6,	%l2,	%g3
	fmovsge	%xcc,	%f8,	%f14
	fpadd32	%f2,	%f6,	%f2
loop_839:
	or	%l5,	%g2,	%g5
	fexpand	%f9,	%f4
	ldsb	[%l7 + 0x77],	%i7
	bge	%xcc,	loop_840
	sth	%i4,	[%l7 + 0x76]
	fnands	%f4,	%f9,	%f7
	sll	%o5,	%l3,	%g1
loop_840:
	tle	%xcc,	0x2
	movrgz	%i3,	%o6,	%i5
	taddcctv	%o4,	0x0DA9,	%i2
	fnot1s	%f3,	%f1
	fnegd	%f10,	%f14
	edge32	%i6,	%o3,	%g7
	sll	%i0,	0x08,	%o7
	edge32n	%o2,	%l0,	%o0
	fmovsn	%xcc,	%f4,	%f8
	andcc	%l4,	%l1,	%o1
	and	%i1,	%g4,	%l6
	be,a,pn	%xcc,	loop_841
	fzero	%f6
	fmovrsne	%g6,	%f13,	%f13
	stw	%l2,	[%l7 + 0x78]
loop_841:
	stx	%l5,	[%l7 + 0x38]
	nop
	setx loop_842, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	srl	%g2,	%g3,	%i7
	movrgez	%g5,	%i4,	%l3
	ldsb	[%l7 + 0x09],	%o5
loop_842:
	brz	%g1,	loop_843
	subc	%o6,	0x0626,	%i3
	ldx	[%l7 + 0x78],	%o4
	fmovrslez	%i2,	%f12,	%f14
loop_843:
	ldsh	[%l7 + 0x58],	%i5
	srax	%o3,	0x1A,	%g7
	nop
	setx loop_844, %l0, %l1
	jmpl %l1, %i6
	stb	%i0,	[%l7 + 0x0D]
	fandnot1	%f2,	%f8,	%f4
	fandnot1	%f8,	%f12,	%f2
loop_844:
	fmovse	%icc,	%f15,	%f14
	tleu	%xcc,	0x1
	nop
	setx loop_845, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldsh	[%l7 + 0x6A],	%o2
	for	%f4,	%f2,	%f14
	fmovsgu	%xcc,	%f9,	%f5
loop_845:
	sth	%o7,	[%l7 + 0x72]
	fnot2s	%f9,	%f3
	srl	%l0,	0x05,	%o0
	fmovdcc	%xcc,	%f7,	%f12
	fmovspos	%icc,	%f0,	%f3
	std	%f0,	[%l7 + 0x70]
	ldd	[%l7 + 0x78],	%f14
	ld	[%l7 + 0x08],	%f1
	array8	%l4,	%o1,	%l1
	brlez	%i1,	loop_846
	fandnot2s	%f12,	%f12,	%f1
	fmovdgu	%xcc,	%f1,	%f9
	ldd	[%l7 + 0x08],	%f4
loop_846:
	or	%g4,	0x04AF,	%l6
	fpmerge	%f0,	%f14,	%f14
	fpsub16s	%f5,	%f7,	%f7
	stw	%g6,	[%l7 + 0x24]
	fornot2s	%f3,	%f8,	%f2
	movle	%icc,	%l2,	%g2
	fmovsleu	%xcc,	%f1,	%f15
	fmovrdgz	%g3,	%f14,	%f12
	addccc	%l5,	0x1770,	%g5
	ta	%xcc,	0x5
	movne	%xcc,	%i4,	%i7
	movre	%o5,	0x29C,	%l3
	tcs	%icc,	0x6
	fmovsleu	%icc,	%f12,	%f15
	fcmpne32	%f12,	%f2,	%g1
	xor	%o6,	%i3,	%o4
	andn	%i2,	%i5,	%g7
	fmovdgu	%xcc,	%f8,	%f14
	ld	[%l7 + 0x68],	%f5
	fcmpeq16	%f12,	%f4,	%o3
	stw	%i6,	[%l7 + 0x3C]
	fcmple16	%f4,	%f10,	%o2
	fmovsn	%icc,	%f0,	%f15
	stx	%o7,	[%l7 + 0x10]
	bshuffle	%f12,	%f6,	%f8
	lduw	[%l7 + 0x54],	%l0
	ldd	[%l7 + 0x30],	%f14
	edge8n	%o0,	%i0,	%o1
	fmovdl	%xcc,	%f15,	%f9
	stb	%l4,	[%l7 + 0x26]
	fnot2s	%f12,	%f11
	fexpand	%f5,	%f6
	fmovs	%f15,	%f0
	smul	%l1,	0x0946,	%i1
	fbne,a	%fcc3,	loop_847
	orcc	%l6,	0x1E87,	%g6
	fmul8x16al	%f5,	%f7,	%f14
	fbug,a	%fcc2,	loop_848
loop_847:
	fble	%fcc1,	loop_849
	addc	%l2,	0x09FE,	%g2
	movge	%icc,	%g3,	%g4
loop_848:
	addccc	%g5,	%l5,	%i4
loop_849:
	sdivx	%i7,	0x0C26,	%l3
	fsrc1	%f6,	%f6
	pdist	%f2,	%f2,	%f4
	tle	%xcc,	0x5
	ldsh	[%l7 + 0x64],	%o5
	bne,pn	%icc,	loop_850
	brz	%o6,	loop_851
	fone	%f12
	and	%i3,	%g1,	%o4
loop_850:
	edge16ln	%i2,	%i5,	%g7
loop_851:
	edge16	%i6,	%o3,	%o7
	te	%xcc,	0x0
	udiv	%l0,	0x0C89,	%o2
	bg,a,pt	%xcc,	loop_852
	fnegs	%f2,	%f2
	fmovrsne	%o0,	%f6,	%f8
	stb	%o1,	[%l7 + 0x7A]
loop_852:
	fxnor	%f6,	%f6,	%f10
	popc	%i0,	%l1
	fbo,a	%fcc2,	loop_853
	ldsh	[%l7 + 0x3E],	%i1
	alignaddr	%l6,	%g6,	%l2
	bshuffle	%f0,	%f12,	%f0
loop_853:
	fbg	%fcc2,	loop_854
	fcmpeq32	%f14,	%f0,	%l4
	bvs,a,pt	%icc,	loop_855
	std	%f2,	[%l7 + 0x18]
loop_854:
	ld	[%l7 + 0x34],	%f3
	ldsh	[%l7 + 0x26],	%g2
loop_855:
	ldsh	[%l7 + 0x4C],	%g3
	xnorcc	%g4,	0x037E,	%g5
	fbul,a	%fcc2,	loop_856
	lduh	[%l7 + 0x6A],	%l5
	fbug,a	%fcc1,	loop_857
	lduh	[%l7 + 0x6E],	%i4
loop_856:
	fmovdvs	%xcc,	%f12,	%f2
	tne	%xcc,	0x4
loop_857:
	call	loop_858
	fbue,a	%fcc0,	loop_859
	movge	%xcc,	%l3,	%o5
	st	%f15,	[%l7 + 0x14]
loop_858:
	fmovrslez	%o6,	%f14,	%f6
loop_859:
	fbge	%fcc1,	loop_860
	stx	%i3,	[%l7 + 0x40]
	fandnot2s	%f9,	%f13,	%f5
	lduh	[%l7 + 0x34],	%i7
loop_860:
	movg	%icc,	%g1,	%o4
	st	%f1,	[%l7 + 0x34]
	taddcctv	%i2,	0x015E,	%i5
	bneg	%icc,	loop_861
	ldub	[%l7 + 0x51],	%i6
	tleu	%icc,	0x0
	stb	%o3,	[%l7 + 0x24]
loop_861:
	st	%f1,	[%l7 + 0x18]
	fbge	%fcc1,	loop_862
	ldsw	[%l7 + 0x78],	%o7
	lduw	[%l7 + 0x58],	%g7
	fmovrse	%l0,	%f0,	%f6
loop_862:
	edge16ln	%o2,	%o1,	%o0
	tcc	%xcc,	0x3
	fors	%f11,	%f10,	%f6
	movgu	%xcc,	%l1,	%i0
	edge16n	%i1,	%g6,	%l2
	movge	%xcc,	%l4,	%g2
	fnot2s	%f11,	%f10
	fbue,a	%fcc1,	loop_863
	fmovrdgz	%l6,	%f0,	%f6
	stb	%g3,	[%l7 + 0x62]
	fornot2s	%f4,	%f7,	%f11
loop_863:
	movrlz	%g5,	%l5,	%g4
	srax	%i4,	%o5,	%l3
	movvc	%icc,	%i3,	%i7
	xnor	%o6,	%o4,	%i2
	ldsb	[%l7 + 0x6D],	%g1
	fors	%f6,	%f14,	%f7
	tl	%xcc,	0x1
	stx	%i5,	[%l7 + 0x70]
	and	%o3,	%i6,	%o7
	xor	%g7,	%o2,	%l0
	fabsd	%f4,	%f0
	fpsub32	%f10,	%f8,	%f8
	fmovsleu	%icc,	%f7,	%f4
	movn	%icc,	%o0,	%o1
	fzero	%f0
	lduh	[%l7 + 0x10],	%i0
	ld	[%l7 + 0x60],	%f3
	fbu	%fcc3,	loop_864
	edge16ln	%l1,	%g6,	%i1
	orcc	%l2,	0x14A2,	%l4
	bleu	loop_865
loop_864:
	fxnors	%f12,	%f7,	%f1
	ldd	[%l7 + 0x28],	%f8
	fbge	%fcc0,	loop_866
loop_865:
	nop
	setx loop_867, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldub	[%l7 + 0x7D],	%g2
	fba,a	%fcc1,	loop_868
loop_866:
	brlz	%l6,	loop_869
loop_867:
	stx	%g5,	[%l7 + 0x30]
	lduw	[%l7 + 0x0C],	%l5
loop_868:
	bl	loop_870
loop_869:
	fmovsgu	%icc,	%f14,	%f5
	ldub	[%l7 + 0x51],	%g3
	fornot1	%f2,	%f2,	%f6
loop_870:
	sth	%g4,	[%l7 + 0x54]
	alignaddr	%o5,	%l3,	%i3
	alignaddrl	%i4,	%o6,	%o4
	movne	%icc,	%i7,	%g1
	fcmpne32	%f2,	%f2,	%i5
	taddcc	%o3,	%i6,	%i2
	lduh	[%l7 + 0x60],	%o7
	ldsb	[%l7 + 0x6A],	%g7
	fsrc2s	%f2,	%f7
	call	loop_871
	orcc	%o2,	%o0,	%o1
	movrlz	%i0,	%l1,	%g6
	brz	%l0,	loop_872
loop_871:
	and	%l2,	0x1114,	%i1
	stw	%g2,	[%l7 + 0x3C]
	fmovscc	%xcc,	%f0,	%f8
loop_872:
	stb	%l4,	[%l7 + 0x62]
	fcmpes	%fcc1,	%f6,	%f8
	ldsb	[%l7 + 0x1A],	%g5
	array8	%l6,	%g3,	%g4
	edge8	%o5,	%l3,	%i3
	st	%f12,	[%l7 + 0x28]
	ldx	[%l7 + 0x28],	%l5
	srlx	%i4,	%o4,	%i7
	stx	%g1,	[%l7 + 0x48]
	edge8l	%o6,	%i5,	%o3
	fbe	%fcc3,	loop_873
	te	%xcc,	0x2
	fors	%f0,	%f11,	%f15
	ldsh	[%l7 + 0x26],	%i6
loop_873:
	be,a,pt	%xcc,	loop_874
	st	%f1,	[%l7 + 0x30]
	fbuge	%fcc2,	loop_875
	ld	[%l7 + 0x60],	%f6
loop_874:
	fmovsvc	%xcc,	%f9,	%f8
	ldsb	[%l7 + 0x44],	%o7
loop_875:
	umulcc	%g7,	%o2,	%i2
	movneg	%xcc,	%o1,	%o0
	fzeros	%f13
	edge16	%i0,	%g6,	%l1
	movne	%xcc,	%l2,	%i1
	fcmple32	%f8,	%f4,	%g2
	fbule	%fcc0,	loop_876
	fzeros	%f6
	fbn	%fcc3,	loop_877
	sdivx	%l4,	0x0725,	%g5
loop_876:
	fpackfix	%f6,	%f0
	bcs,pt	%icc,	loop_878
loop_877:
	fmovrdgz	%l0,	%f4,	%f0
	stw	%g3,	[%l7 + 0x78]
	sdivx	%l6,	0x041C,	%o5
loop_878:
	fmovspos	%xcc,	%f7,	%f13
	ld	[%l7 + 0x3C],	%f12
	edge32n	%l3,	%i3,	%g4
	st	%f7,	[%l7 + 0x68]
	fbg	%fcc3,	loop_879
	ld	[%l7 + 0x28],	%f8
	fmovdvc	%icc,	%f9,	%f3
	sdivcc	%i4,	0x1A0E,	%o4
loop_879:
	edge8ln	%l5,	%g1,	%i7
	fmovrde	%i5,	%f14,	%f14
	fbue	%fcc1,	loop_880
	fnors	%f1,	%f9,	%f11
	st	%f15,	[%l7 + 0x28]
	fxors	%f11,	%f13,	%f11
loop_880:
	te	%xcc,	0x0
	stb	%o3,	[%l7 + 0x5D]
	fcmpne32	%f8,	%f8,	%i6
	std	%f8,	[%l7 + 0x58]
	fmovrse	%o7,	%f9,	%f9
	umul	%g7,	%o2,	%o6
	umul	%o1,	%o0,	%i2
	xorcc	%g6,	0x1A5C,	%i0
	fmovrsgz	%l2,	%f9,	%f7
	fba	%fcc3,	loop_881
	fble	%fcc3,	loop_882
	lduw	[%l7 + 0x50],	%l1
	fpack16	%f10,	%f4
loop_881:
	movl	%icc,	%i1,	%l4
loop_882:
	ldub	[%l7 + 0x79],	%g2
	fbne	%fcc0,	loop_883
	tg	%icc,	0x5
	fmovsleu	%icc,	%f7,	%f10
	lduw	[%l7 + 0x68],	%g5
loop_883:
	fnot2s	%f7,	%f9
	ta	%icc,	0x0
	fpsub16	%f6,	%f4,	%f0
	bcc,a,pt	%icc,	loop_884
	ldx	[%l7 + 0x30],	%l0
	ldub	[%l7 + 0x7D],	%l6
	ldd	[%l7 + 0x48],	%f12
loop_884:
	tge	%xcc,	0x7
	nop
	setx loop_885, %l0, %l1
	jmpl %l1, %o5
	sdiv	%g3,	0x0AA3,	%l3
	alignaddr	%i3,	%i4,	%g4
	fnegd	%f2,	%f12
loop_885:
	fbg,a	%fcc3,	loop_886
	fsrc1	%f8,	%f14
	edge32n	%l5,	%g1,	%i7
	lduw	[%l7 + 0x30],	%o4
loop_886:
	ldsb	[%l7 + 0x0B],	%o3
	fmovdcc	%icc,	%f8,	%f13
	ldsw	[%l7 + 0x50],	%i6
	addcc	%o7,	0x0AA9,	%g7
	tvs	%xcc,	0x2
	edge16l	%o2,	%o6,	%o1
	bvc,a	%icc,	loop_887
	ldsb	[%l7 + 0x75],	%o0
	fmovspos	%icc,	%f7,	%f0
	fbul	%fcc0,	loop_888
loop_887:
	array32	%i5,	%g6,	%i0
	fabss	%f15,	%f2
	sth	%l2,	[%l7 + 0x70]
loop_888:
	ldd	[%l7 + 0x20],	%f12
	ldub	[%l7 + 0x4C],	%i2
	tvs	%icc,	0x5
	lduw	[%l7 + 0x08],	%i1
	call	loop_889
	sth	%l1,	[%l7 + 0x58]
	fcmpes	%fcc3,	%f1,	%f14
	ldsw	[%l7 + 0x48],	%g2
loop_889:
	fmovsvc	%icc,	%f6,	%f9
	st	%f6,	[%l7 + 0x10]
	fmovda	%icc,	%f12,	%f12
	fmul8x16au	%f14,	%f10,	%f14
	ldsh	[%l7 + 0x46],	%g5
	stx	%l4,	[%l7 + 0x38]
	stx	%l6,	[%l7 + 0x20]
	movcs	%xcc,	%l0,	%g3
	ldd	[%l7 + 0x70],	%f10
	movrne	%l3,	0x124,	%i3
	bne,pt	%icc,	loop_890
	fmul8x16au	%f8,	%f12,	%f2
	ldsh	[%l7 + 0x18],	%o5
	fmovdle	%xcc,	%f11,	%f15
loop_890:
	ldsw	[%l7 + 0x2C],	%i4
	ld	[%l7 + 0x68],	%f4
	movn	%icc,	%l5,	%g1
	ldsw	[%l7 + 0x70],	%g4
	bpos,pn	%xcc,	loop_891
	movne	%xcc,	%o4,	%o3
	tg	%icc,	0x5
	stb	%i6,	[%l7 + 0x29]
loop_891:
	ldsw	[%l7 + 0x14],	%i7
	fcmpeq16	%f12,	%f14,	%o7
	subc	%g7,	0x100B,	%o2
	ldd	[%l7 + 0x68],	%f12
	fpsub32s	%f10,	%f11,	%f12
	ldsw	[%l7 + 0x74],	%o6
	fmovscc	%xcc,	%f5,	%f15
	alignaddr	%o1,	%i5,	%g6
	movleu	%icc,	%i0,	%o0
	fmovsg	%xcc,	%f15,	%f9
	edge8ln	%i2,	%l2,	%l1
	fmovsgu	%xcc,	%f10,	%f7
	fxor	%f12,	%f0,	%f12
	fnegs	%f8,	%f2
	fsrc1	%f4,	%f12
	fcmpd	%fcc2,	%f12,	%f0
	fmul8ulx16	%f12,	%f8,	%f8
	fnand	%f6,	%f14,	%f10
	fmovrdlz	%i1,	%f8,	%f10
	xorcc	%g5,	0x08DD,	%l4
	nop
	setx loop_892, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldx	[%l7 + 0x20],	%l6
	tleu	%icc,	0x4
	sllx	%l0,	0x1A,	%g3
loop_892:
	andncc	%g2,	%l3,	%i3
	ldsw	[%l7 + 0x58],	%i4
	fmovrsne	%l5,	%f9,	%f10
	movge	%xcc,	%o5,	%g1
	lduw	[%l7 + 0x44],	%o4
	fmuld8ulx16	%f3,	%f10,	%f10
	fmovsvc	%icc,	%f5,	%f11
	ldx	[%l7 + 0x48],	%o3
	st	%f0,	[%l7 + 0x34]
	bpos,pt	%icc,	loop_893
	ldx	[%l7 + 0x78],	%g4
	stx	%i7,	[%l7 + 0x48]
	lduh	[%l7 + 0x66],	%i6
loop_893:
	sdiv	%o7,	0x071F,	%o2
	fmovspos	%icc,	%f14,	%f5
	fcmps	%fcc1,	%f6,	%f6
	lduw	[%l7 + 0x68],	%o6
	fcmps	%fcc2,	%f1,	%f14
	fbul,a	%fcc0,	loop_894
	lduw	[%l7 + 0x0C],	%o1
	fcmpes	%fcc3,	%f15,	%f4
	ldsb	[%l7 + 0x18],	%i5
loop_894:
	fbul	%fcc0,	loop_895
	xnorcc	%g6,	%i0,	%o0
	fnand	%f0,	%f14,	%f8
	fmovrdlz	%i2,	%f14,	%f14
loop_895:
	stb	%l2,	[%l7 + 0x33]
	fmovsvs	%xcc,	%f9,	%f13
	fmovrdne	%l1,	%f4,	%f4
	fpack16	%f0,	%f15
	std	%f10,	[%l7 + 0x38]
	ldub	[%l7 + 0x37],	%i1
	bgu	loop_896
	fbule,a	%fcc0,	loop_897
	fzero	%f0
	nop
	setx loop_898, %l0, %l1
	jmpl %l1, %g5
loop_896:
	ldsw	[%l7 + 0x64],	%l4
loop_897:
	orn	%g7,	0x18B4,	%l0
	fnegs	%f3,	%f5
loop_898:
	brgz,a	%g3,	loop_899
	ldd	[%l7 + 0x70],	%f8
	taddcc	%l6,	%g2,	%l3
	fsrc1	%f12,	%f10
loop_899:
	nop
	setx loop_900, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	lduh	[%l7 + 0x0C],	%i3
	fmul8x16al	%f15,	%f10,	%f0
	fnors	%f8,	%f3,	%f6
loop_900:
	nop
	setx loop_901, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	xnorcc	%l5,	0x094D,	%i4
	sth	%o5,	[%l7 + 0x12]
	fmovsvs	%icc,	%f11,	%f5
loop_901:
	fsrc2	%f14,	%f14
	fmovrse	%g1,	%f2,	%f12
	fmovdneg	%xcc,	%f10,	%f10
	movleu	%xcc,	%o3,	%g4
	bgu,a,pn	%icc,	loop_902
	fmovspos	%xcc,	%f6,	%f2
	edge8	%i7,	%i6,	%o4
	fmovsa	%xcc,	%f13,	%f6
loop_902:
	ble,pn	%icc,	loop_903
	lduh	[%l7 + 0x7C],	%o7
	or	%o2,	0x0D7E,	%o6
	stw	%i5,	[%l7 + 0x08]
loop_903:
	fbge	%fcc3,	loop_904
	fpadd32s	%f6,	%f1,	%f4
	subc	%g6,	0x18B6,	%i0
	fmovrslz	%o0,	%f5,	%f14
loop_904:
	fone	%f2
	bg,pn	%xcc,	loop_905
	std	%f10,	[%l7 + 0x28]
	fmul8sux16	%f6,	%f8,	%f8
	bvs	%xcc,	loop_906
loop_905:
	bpos,a,pn	%icc,	loop_907
	ta	%icc,	0x7
	sth	%o1,	[%l7 + 0x40]
loop_906:
	ld	[%l7 + 0x2C],	%f2
loop_907:
	and	%l2,	%l1,	%i2
	fpsub16	%f12,	%f6,	%f0
	fbul	%fcc3,	loop_908
	udiv	%g5,	0x13F8,	%i1
	nop
	setx loop_909, %l0, %l1
	jmpl %l1, %g7
	sethi	0x0FE7,	%l4
loop_908:
	movneg	%xcc,	%g3,	%l6
	fpack16	%f12,	%f15
loop_909:
	fnegs	%f9,	%f5
	xorcc	%g2,	%l0,	%i3
	tne	%xcc,	0x3
	stx	%l5,	[%l7 + 0x38]
	fands	%f7,	%f12,	%f10
	fand	%f10,	%f14,	%f14
	fsrc1	%f0,	%f0
	stb	%i4,	[%l7 + 0x20]
	tneg	%xcc,	0x4
	tvs	%icc,	0x4
	brz	%o5,	loop_910
	bleu	%icc,	loop_911
	st	%f3,	[%l7 + 0x20]
	ldsw	[%l7 + 0x14],	%g1
loop_910:
	bl,a,pn	%icc,	loop_912
loop_911:
	std	%f2,	[%l7 + 0x70]
	fmovsa	%xcc,	%f15,	%f10
	fcmps	%fcc1,	%f15,	%f12
loop_912:
	stb	%o3,	[%l7 + 0x77]
	nop
	setx loop_913, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fnot1	%f0,	%f2
	fmovscc	%xcc,	%f1,	%f11
	stx	%g4,	[%l7 + 0x30]
loop_913:
	edge16ln	%i7,	%l3,	%o4
	subc	%i6,	0x1A40,	%o7
	fba	%fcc3,	loop_914
	fmovspos	%icc,	%f13,	%f13
	edge8ln	%o6,	%i5,	%o2
	ldsw	[%l7 + 0x0C],	%g6
loop_914:
	fmovdl	%icc,	%f13,	%f9
	udivx	%i0,	0x1CDC,	%o1
	sth	%l2,	[%l7 + 0x2E]
	std	%f10,	[%l7 + 0x18]
	udivx	%o0,	0x125B,	%l1
	fmovsne	%xcc,	%f8,	%f8
	movvs	%icc,	%i2,	%g5
	movrlez	%g7,	0x31D,	%i1
	brlez,a	%l4,	loop_915
	ldsw	[%l7 + 0x14],	%g3
	fmuld8ulx16	%f7,	%f14,	%f6
	siam	0x4
loop_915:
	fcmpne32	%f2,	%f10,	%g2
	ldsw	[%l7 + 0x54],	%l6
	ldx	[%l7 + 0x28],	%i3
	array8	%l5,	%i4,	%o5
	or	%g1,	0x1B20,	%o3
	nop
	setx loop_916, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldsh	[%l7 + 0x36],	%g4
	fmovdleu	%icc,	%f4,	%f4
	move	%icc,	%i7,	%l3
loop_916:
	ldx	[%l7 + 0x18],	%l0
	sth	%o4,	[%l7 + 0x14]
	ldsw	[%l7 + 0x78],	%o7
	fmovsn	%xcc,	%f9,	%f11
	and	%i6,	0x05D5,	%i5
	stw	%o6,	[%l7 + 0x78]
	sdiv	%o2,	0x0B64,	%i0
	alignaddr	%g6,	%o1,	%l2
	fmovdneg	%xcc,	%f11,	%f13
	umul	%l1,	0x06D0,	%o0
	st	%f8,	[%l7 + 0x54]
	stb	%i2,	[%l7 + 0x53]
	fmovrdlz	%g7,	%f0,	%f4
	fmovsn	%icc,	%f0,	%f5
	ldsw	[%l7 + 0x28],	%i1
	movge	%icc,	%g5,	%g3
	smulcc	%l4,	0x0BBA,	%g2
	xor	%i3,	0x1470,	%l5
	fmul8x16au	%f12,	%f13,	%f12
	fmovscs	%icc,	%f14,	%f15
	bvs,pn	%xcc,	loop_917
	ldub	[%l7 + 0x1D],	%l6
	fmul8sux16	%f2,	%f14,	%f2
	lduw	[%l7 + 0x3C],	%o5
loop_917:
	fnot1s	%f9,	%f6
	fcmpd	%fcc2,	%f10,	%f12
	fpadd32s	%f8,	%f0,	%f14
	tvc	%xcc,	0x2
	lduh	[%l7 + 0x4A],	%i4
	fmovdne	%xcc,	%f15,	%f14
	fbug,a	%fcc1,	loop_918
	orncc	%o3,	0x11BC,	%g4
	tsubcc	%g1,	%i7,	%l0
	mova	%icc,	%o4,	%l3
loop_918:
	fbg	%fcc1,	loop_919
	std	%f14,	[%l7 + 0x58]
	tvc	%xcc,	0x2
	edge8ln	%o7,	%i6,	%o6
loop_919:
	sdivcc	%i5,	0x1215,	%i0
	stb	%o2,	[%l7 + 0x67]
	lduw	[%l7 + 0x20],	%o1
	stb	%g6,	[%l7 + 0x1A]
	st	%f11,	[%l7 + 0x4C]
	fmul8x16au	%f1,	%f9,	%f2
	lduh	[%l7 + 0x4C],	%l2
	taddcctv	%o0,	%l1,	%g7
	fmovrslz	%i1,	%f11,	%f10
	fbo,a	%fcc3,	loop_920
	tcs	%xcc,	0x1
	fmovsl	%xcc,	%f4,	%f10
	fmovdneg	%icc,	%f12,	%f15
loop_920:
	edge32n	%i2,	%g3,	%l4
	tpos	%icc,	0x2
	ld	[%l7 + 0x4C],	%f2
	sth	%g2,	[%l7 + 0x70]
	umulcc	%g5,	0x1D75,	%i3
	bvc,pn	%icc,	loop_921
	movrlz	%l5,	0x01B,	%o5
	fpadd32s	%f11,	%f10,	%f4
	bge,a,pn	%icc,	loop_922
loop_921:
	fblg	%fcc2,	loop_923
	sub	%l6,	%o3,	%i4
	ldub	[%l7 + 0x2F],	%g4
loop_922:
	ldsb	[%l7 + 0x1E],	%i7
loop_923:
	movl	%xcc,	%g1,	%o4
	brlz	%l0,	loop_924
	fabsd	%f2,	%f0
	ldx	[%l7 + 0x50],	%o7
	andn	%i6,	%o6,	%i5
loop_924:
	lduh	[%l7 + 0x64],	%l3
	smulcc	%o2,	0x1C84,	%i0
	tpos	%icc,	0x3
	orn	%g6,	0x1CB5,	%l2
	mova	%xcc,	%o1,	%l1
	fbul	%fcc3,	loop_925
	tsubcc	%o0,	%g7,	%i1
	tg	%xcc,	0x2
	tleu	%xcc,	0x3
loop_925:
	ldd	[%l7 + 0x70],	%f6
	ldub	[%l7 + 0x49],	%g3
	lduw	[%l7 + 0x6C],	%i2
	ldub	[%l7 + 0x32],	%g2
	move	%xcc,	%g5,	%i3
	stb	%l5,	[%l7 + 0x37]
	ldd	[%l7 + 0x30],	%f8
	bg,a,pn	%xcc,	loop_926
	fcmpes	%fcc2,	%f3,	%f3
	fmovs	%f13,	%f6
	fpsub16s	%f10,	%f3,	%f15
loop_926:
	faligndata	%f6,	%f0,	%f4
	udiv	%l4,	0x07BC,	%l6
	edge8	%o5,	%o3,	%i4
	ldd	[%l7 + 0x78],	%f4
	sllx	%g4,	0x0E,	%g1
	subcc	%o4,	%i7,	%l0
	ldub	[%l7 + 0x43],	%o7
	fornot1	%f6,	%f4,	%f2
	fbe	%fcc3,	loop_927
	ldub	[%l7 + 0x2A],	%o6
	fmovdcs	%icc,	%f14,	%f3
	andcc	%i5,	%i6,	%l3
loop_927:
	ldd	[%l7 + 0x68],	%f14
	udivcc	%o2,	0x005B,	%i0
	stw	%l2,	[%l7 + 0x7C]
	fornot1	%f10,	%f10,	%f0
	edge32ln	%g6,	%o1,	%o0
	nop
	setx loop_928, %l0, %l1
	jmpl %l1, %g7
	ldx	[%l7 + 0x08],	%i1
	brlz	%g3,	loop_929
	ldsh	[%l7 + 0x34],	%l1
loop_928:
	fcmpgt16	%f2,	%f12,	%i2
	fcmple16	%f6,	%f8,	%g5
loop_929:
	move	%icc,	%g2,	%l5
	fpadd32	%f2,	%f6,	%f0
	ldub	[%l7 + 0x5E],	%i3
	tpos	%icc,	0x0
	movcc	%icc,	%l4,	%o5
	fmul8x16au	%f4,	%f8,	%f8
	brgez,a	%o3,	loop_930
	st	%f0,	[%l7 + 0x70]
	fmul8ulx16	%f12,	%f6,	%f0
	stw	%i4,	[%l7 + 0x30]
loop_930:
	fmovse	%xcc,	%f10,	%f3
	movre	%g4,	0x045,	%l6
	fcmpd	%fcc0,	%f6,	%f6
	fmovsvs	%xcc,	%f12,	%f13
	tle	%xcc,	0x4
	fandnot1	%f4,	%f0,	%f4
	fmovrdlz	%o4,	%f0,	%f4
	fone	%f14
	fands	%f7,	%f8,	%f10
	udiv	%i7,	0x0BAE,	%l0
	fsrc1s	%f11,	%f2
	xnorcc	%g1,	0x15CC,	%o6
	ldsh	[%l7 + 0x2C],	%i5
	bl,pt	%icc,	loop_931
	fmul8x16al	%f15,	%f7,	%f10
	st	%f2,	[%l7 + 0x50]
	fpadd32	%f6,	%f8,	%f4
loop_931:
	edge8	%o7,	%i6,	%l3
	te	%icc,	0x6
	udivcc	%o2,	0x1BEA,	%l2
	lduw	[%l7 + 0x0C],	%i0
	fmovda	%icc,	%f10,	%f11
	lduh	[%l7 + 0x60],	%g6
	or	%o0,	%g7,	%o1
	fmovdn	%icc,	%f10,	%f9
	fnot2	%f0,	%f0
	ldd	[%l7 + 0x48],	%f0
	ldub	[%l7 + 0x50],	%g3
	movne	%icc,	%l1,	%i1
	stb	%g5,	[%l7 + 0x70]
	movcs	%icc,	%g2,	%l5
	edge8ln	%i2,	%i3,	%l4
	ldsb	[%l7 + 0x75],	%o5
	fbl,a	%fcc3,	loop_932
	ld	[%l7 + 0x40],	%f8
	fxor	%f12,	%f4,	%f4
	ldd	[%l7 + 0x50],	%f10
loop_932:
	xnor	%o3,	%i4,	%g4
	fcmpes	%fcc3,	%f15,	%f9
	tpos	%icc,	0x3
	bvs,a	%icc,	loop_933
	ba,a	loop_934
	edge8	%l6,	%i7,	%o4
	movl	%xcc,	%l0,	%o6
loop_933:
	brlez,a	%g1,	loop_935
loop_934:
	fone	%f2
	ldsw	[%l7 + 0x44],	%o7
	fandnot1s	%f7,	%f11,	%f10
loop_935:
	sth	%i6,	[%l7 + 0x0E]
	fpsub32s	%f13,	%f4,	%f15
	fbe,a	%fcc2,	loop_936
	movre	%i5,	%l3,	%o2
	stb	%i0,	[%l7 + 0x1F]
	ldd	[%l7 + 0x40],	%f10
loop_936:
	fand	%f14,	%f0,	%f0
	edge32l	%l2,	%o0,	%g6
	be,a	%icc,	loop_937
	fone	%f4
	movg	%icc,	%o1,	%g3
	fabss	%f11,	%f14
loop_937:
	fbug	%fcc3,	loop_938
	movvc	%xcc,	%l1,	%i1
	fnot2	%f2,	%f0
	tle	%xcc,	0x0
loop_938:
	fnor	%f4,	%f6,	%f2
	fbn,a	%fcc2,	loop_939
	fbg,a	%fcc0,	loop_940
	st	%f14,	[%l7 + 0x74]
	fnand	%f12,	%f0,	%f12
loop_939:
	ldub	[%l7 + 0x0A],	%g5
loop_940:
	lduh	[%l7 + 0x58],	%g7
	ldub	[%l7 + 0x78],	%l5
	lduw	[%l7 + 0x44],	%i2
	sth	%i3,	[%l7 + 0x24]
	andn	%l4,	0x1CA2,	%g2
	movneg	%icc,	%o5,	%o3
	fmovspos	%xcc,	%f13,	%f13
	fzeros	%f12
	addccc	%g4,	%i4,	%i7
	std	%f8,	[%l7 + 0x20]
	fcmps	%fcc2,	%f1,	%f10
	edge32n	%l6,	%o4,	%l0
	brlz,a	%o6,	loop_941
	te	%xcc,	0x4
	fbule,a	%fcc0,	loop_942
	umul	%g1,	0x0801,	%i6
loop_941:
	sth	%o7,	[%l7 + 0x34]
	ldd	[%l7 + 0x78],	%f10
loop_942:
	edge16l	%l3,	%o2,	%i0
	sub	%i5,	%o0,	%l2
	fmovrdlez	%g6,	%f8,	%f12
	lduh	[%l7 + 0x14],	%g3
	fpack32	%f4,	%f14,	%f10
	bl,a	%xcc,	loop_943
	stb	%o1,	[%l7 + 0x65]
	fmovsge	%icc,	%f7,	%f5
	ldsw	[%l7 + 0x40],	%l1
loop_943:
	fbg	%fcc0,	loop_944
	sra	%i1,	0x04,	%g7
	sdivcc	%l5,	0x1536,	%i2
	std	%f10,	[%l7 + 0x50]
loop_944:
	alignaddr	%g5,	%l4,	%i3
	or	%o5,	0x0594,	%g2
	ldub	[%l7 + 0x29],	%g4
	subcc	%i4,	0x0796,	%o3
	alignaddrl	%i7,	%o4,	%l6
	fpadd16s	%f13,	%f3,	%f15
	edge16ln	%o6,	%g1,	%i6
	stw	%l0,	[%l7 + 0x64]
	fornot1	%f10,	%f12,	%f14
	umulcc	%o7,	%l3,	%o2
	fbuge	%fcc1,	loop_945
	fcmpne16	%f14,	%f6,	%i0
	alignaddrl	%i5,	%l2,	%o0
	st	%f2,	[%l7 + 0x78]
loop_945:
	fble,a	%fcc1,	loop_946
	ld	[%l7 + 0x38],	%f11
	edge16n	%g6,	%g3,	%o1
	ldsh	[%l7 + 0x28],	%i1
loop_946:
	ldsb	[%l7 + 0x13],	%l1
	faligndata	%f6,	%f2,	%f12
	bneg,a	%icc,	loop_947
	stb	%g7,	[%l7 + 0x57]
	ble	loop_948
	fbo,a	%fcc1,	loop_949
loop_947:
	tneg	%xcc,	0x0
	fmovsge	%xcc,	%f6,	%f14
loop_948:
	ldsw	[%l7 + 0x74],	%i2
loop_949:
	fnegs	%f7,	%f6
	fmovsge	%xcc,	%f8,	%f7
	ba,pt	%xcc,	loop_950
	andn	%l5,	0x1E0C,	%g5
	sth	%i3,	[%l7 + 0x54]
	fpsub16	%f12,	%f4,	%f12
loop_950:
	brgez	%l4,	loop_951
	lduw	[%l7 + 0x4C],	%o5
	edge32n	%g2,	%g4,	%i4
	movvs	%icc,	%o3,	%o4
loop_951:
	brlz,a	%l6,	loop_952
	fcmple16	%f6,	%f6,	%i7
	fmovs	%f0,	%f8
	fpadd16	%f4,	%f4,	%f0
loop_952:
	fands	%f11,	%f5,	%f1
	ldx	[%l7 + 0x40],	%g1
	srax	%o6,	%i6,	%o7
	fabsd	%f12,	%f0
	brgez,a	%l3,	loop_953
	ld	[%l7 + 0x28],	%f3
	tsubcc	%o2,	0x1EC1,	%i0
	edge8	%l0,	%l2,	%o0
loop_953:
	andcc	%g6,	%g3,	%i5
	ldx	[%l7 + 0x20],	%i1
	lduw	[%l7 + 0x28],	%l1
	lduh	[%l7 + 0x3A],	%g7
	sth	%o1,	[%l7 + 0x22]
	movrlz	%i2,	%g5,	%l5
	movcc	%icc,	%i3,	%l4
	xorcc	%g2,	%g4,	%o5
	fmovdle	%xcc,	%f9,	%f12
	bcs,a	%xcc,	loop_954
	fabsd	%f0,	%f12
	fnot2s	%f0,	%f3
	movvc	%xcc,	%o3,	%o4
loop_954:
	mulx	%l6,	0x082C,	%i7
	array8	%i4,	%g1,	%o6
	stw	%o7,	[%l7 + 0x7C]
	ldx	[%l7 + 0x48],	%l3
	edge16	%i6,	%o2,	%l0
	fpsub32s	%f6,	%f5,	%f13
	tpos	%icc,	0x3
	fbug	%fcc2,	loop_955
	tge	%icc,	0x7
	fnot1s	%f11,	%f10
	smul	%l2,	0x1E07,	%o0
loop_955:
	brgez	%g6,	loop_956
	sdivcc	%i0,	0x021B,	%i5
	ldsh	[%l7 + 0x0E],	%g3
	te	%xcc,	0x7
loop_956:
	for	%f4,	%f4,	%f0
	lduh	[%l7 + 0x2E],	%l1
	brlz,a	%i1,	loop_957
	array8	%o1,	%g7,	%g5
	bneg,a,pn	%xcc,	loop_958
	fbl,a	%fcc2,	loop_959
loop_957:
	edge32n	%i2,	%l5,	%i3
	ldsb	[%l7 + 0x10],	%l4
loop_958:
	st	%f0,	[%l7 + 0x68]
loop_959:
	fcmpeq16	%f2,	%f14,	%g4
	tsubcctv	%o5,	0x13B4,	%g2
	fcmple32	%f8,	%f10,	%o3
	te	%xcc,	0x6
	srl	%o4,	%l6,	%i4
	fsrc1s	%f5,	%f14
	fmovsa	%xcc,	%f11,	%f0
	stx	%i7,	[%l7 + 0x18]
	stx	%g1,	[%l7 + 0x08]
	mulscc	%o7,	0x0816,	%l3
	fbne	%fcc2,	loop_960
	fbge	%fcc2,	loop_961
	bcs,a	%xcc,	loop_962
	movrgez	%i6,	0x2A5,	%o2
loop_960:
	fmovspos	%icc,	%f6,	%f2
loop_961:
	lduh	[%l7 + 0x78],	%o6
loop_962:
	std	%f4,	[%l7 + 0x20]
	fmuld8ulx16	%f3,	%f3,	%f2
	fbg,a	%fcc2,	loop_963
	fpack16	%f14,	%f8
	lduh	[%l7 + 0x0C],	%l0
	ldub	[%l7 + 0x0A],	%l2
loop_963:
	ldub	[%l7 + 0x2F],	%g6
	movge	%icc,	%o0,	%i5
	ld	[%l7 + 0x14],	%f13
	ldsw	[%l7 + 0x6C],	%i0
	movl	%xcc,	%g3,	%i1
	fcmps	%fcc1,	%f8,	%f12
	stb	%o1,	[%l7 + 0x39]
	fcmple32	%f6,	%f8,	%g7
	ldsb	[%l7 + 0x4D],	%l1
	fmovrsgez	%g5,	%f5,	%f11
	alignaddrl	%i2,	%i3,	%l4
	fand	%f0,	%f4,	%f6
	fxnor	%f14,	%f10,	%f2
	movl	%xcc,	%g4,	%o5
	fmovdvs	%icc,	%f15,	%f6
	stw	%l5,	[%l7 + 0x3C]
	tvs	%xcc,	0x5
	srl	%g2,	%o3,	%l6
	movre	%i4,	%o4,	%g1
	move	%icc,	%o7,	%l3
	bvs	loop_964
	sth	%i7,	[%l7 + 0x34]
	stb	%o2,	[%l7 + 0x51]
	std	%f12,	[%l7 + 0x50]
loop_964:
	fones	%f10
	fnor	%f0,	%f6,	%f10
	bne,a	%icc,	loop_965
	fmovdneg	%xcc,	%f12,	%f2
	movpos	%xcc,	%i6,	%o6
	fbl	%fcc3,	loop_966
loop_965:
	orn	%l2,	%g6,	%o0
	fcmpgt16	%f0,	%f14,	%l0
	ldsh	[%l7 + 0x46],	%i0
loop_966:
	nop
	setx loop_967, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	udiv	%g3,	0x0B96,	%i1
	stb	%i5,	[%l7 + 0x3B]
	st	%f5,	[%l7 + 0x50]
loop_967:
	movne	%xcc,	%o1,	%g7
	ldx	[%l7 + 0x50],	%g5
	stb	%l1,	[%l7 + 0x54]
	ldsw	[%l7 + 0x70],	%i3
	mulscc	%i2,	%l4,	%o5
	fzero	%f8
	bne,a	%icc,	loop_968
	brlez	%l5,	loop_969
	fmovrdlez	%g2,	%f8,	%f8
	ldsh	[%l7 + 0x08],	%o3
loop_968:
	fmovsvs	%icc,	%f2,	%f11
loop_969:
	siam	0x1
	stb	%g4,	[%l7 + 0x43]
	stw	%l6,	[%l7 + 0x70]
	fmovdn	%icc,	%f9,	%f4
	brgez,a	%o4,	loop_970
	movrlez	%g1,	0x132,	%i4
	srl	%o7,	0x08,	%i7
	fmovrsgz	%o2,	%f2,	%f10
loop_970:
	srax	%i6,	0x01,	%o6
	ld	[%l7 + 0x30],	%f5
	bgu,pt	%xcc,	loop_971
	fbul,a	%fcc1,	loop_972
	fmovrsne	%l3,	%f1,	%f13
	fornot1s	%f14,	%f8,	%f6
loop_971:
	orncc	%g6,	0x1BE9,	%l2
loop_972:
	fmovrdne	%o0,	%f6,	%f8
	fandnot1s	%f7,	%f0,	%f12
	fpsub32	%f4,	%f4,	%f0
	ldub	[%l7 + 0x0C],	%i0
	fxnor	%f4,	%f14,	%f2
	ble	loop_973
	fmul8x16al	%f1,	%f7,	%f12
	lduh	[%l7 + 0x1A],	%l0
	alignaddr	%g3,	%i5,	%o1
loop_973:
	tge	%icc,	0x5
	ld	[%l7 + 0x44],	%f8
	fmovdn	%xcc,	%f11,	%f7
	movpos	%xcc,	%g7,	%g5
	fmovrslz	%i1,	%f6,	%f5
	fnot2s	%f9,	%f8
	brnz,a	%l1,	loop_974
	ld	[%l7 + 0x4C],	%f5
	movcc	%icc,	%i3,	%i2
	ldub	[%l7 + 0x3D],	%o5
loop_974:
	ld	[%l7 + 0x0C],	%f10
	fmovdle	%icc,	%f11,	%f15
	subccc	%l5,	0x1E43,	%l4
	xnorcc	%o3,	%g2,	%l6
	fmovd	%f2,	%f14
	stw	%g4,	[%l7 + 0x24]
	fmovsleu	%icc,	%f6,	%f0
	fmovrdlz	%o4,	%f0,	%f0
	fnot1s	%f8,	%f9
	edge32l	%i4,	%o7,	%g1
	fbne,a	%fcc3,	loop_975
	fcmpne32	%f14,	%f12,	%o2
	call	loop_976
	stx	%i6,	[%l7 + 0x10]
loop_975:
	fzero	%f14
	bl,pt	%icc,	loop_977
loop_976:
	bge,a	loop_978
	andn	%o6,	0x009D,	%i7
	fcmpes	%fcc1,	%f3,	%f5
loop_977:
	fmovs	%f4,	%f6
loop_978:
	ldd	[%l7 + 0x70],	%f4
	brnz,a	%g6,	loop_979
	fmuld8sux16	%f10,	%f6,	%f0
	tle	%icc,	0x0
	ldsw	[%l7 + 0x40],	%l3
loop_979:
	fpsub16s	%f10,	%f10,	%f9
	fandnot2	%f14,	%f10,	%f10
	ble,a,pt	%xcc,	loop_980
	ldub	[%l7 + 0x67],	%l2
	fbue	%fcc0,	loop_981
	movrne	%o0,	0x373,	%l0
loop_980:
	lduw	[%l7 + 0x10],	%i0
	movvc	%xcc,	%g3,	%i5
loop_981:
	taddcctv	%o1,	0x1EC5,	%g7
	movgu	%xcc,	%g5,	%i1
	fmovrslez	%l1,	%f5,	%f0
	movrgz	%i3,	0x3C1,	%i2
	ldub	[%l7 + 0x1C],	%l5
	fmovda	%icc,	%f3,	%f6
	fmovsvc	%icc,	%f1,	%f9
	subcc	%l4,	%o3,	%g2
	fpsub32s	%f5,	%f3,	%f2
	fpadd32s	%f5,	%f9,	%f12
	stb	%l6,	[%l7 + 0x5A]
	fblg,a	%fcc1,	loop_982
	ldd	[%l7 + 0x30],	%f4
	fmovsne	%icc,	%f6,	%f5
	taddcctv	%g4,	0x0050,	%o4
loop_982:
	ldx	[%l7 + 0x28],	%i4
	fornot1	%f8,	%f2,	%f6
	movge	%xcc,	%o7,	%o5
	tl	%icc,	0x2
	fbl,a	%fcc3,	loop_983
	xnorcc	%o2,	0x1303,	%i6
	brlz,a	%g1,	loop_984
	fmovdvc	%xcc,	%f1,	%f1
loop_983:
	fnor	%f6,	%f12,	%f14
	lduh	[%l7 + 0x1E],	%o6
loop_984:
	movrgz	%g6,	%l3,	%l2
	smul	%o0,	%i7,	%l0
	movcc	%icc,	%i0,	%i5
	edge8	%g3,	%g7,	%o1
	sth	%i1,	[%l7 + 0x2C]
	ldx	[%l7 + 0x30],	%g5
	fmovde	%xcc,	%f8,	%f8
	fmovsgu	%xcc,	%f9,	%f15
	ldsw	[%l7 + 0x2C],	%l1
	ldsb	[%l7 + 0x2F],	%i3
	tpos	%icc,	0x5
	fmovsleu	%icc,	%f11,	%f10
	fmovsl	%xcc,	%f4,	%f9
	bne,a	loop_985
	bvc	%icc,	loop_986
	ldx	[%l7 + 0x28],	%i2
	fors	%f8,	%f12,	%f6
loop_985:
	stb	%l4,	[%l7 + 0x60]
loop_986:
	fexpand	%f1,	%f2
	sllx	%l5,	%o3,	%l6
	ldsw	[%l7 + 0x0C],	%g2
	tcs	%xcc,	0x0
	ldd	[%l7 + 0x20],	%f12
	pdist	%f10,	%f12,	%f6
	fbule,a	%fcc2,	loop_987
	std	%f10,	[%l7 + 0x38]
	fcmple16	%f12,	%f14,	%g4
	fsrc1	%f0,	%f2
loop_987:
	ld	[%l7 + 0x14],	%f10
	ld	[%l7 + 0x6C],	%f12
	brlez,a	%i4,	loop_988
	ldx	[%l7 + 0x70],	%o4
	ldsh	[%l7 + 0x68],	%o5
	tvc	%xcc,	0x4
loop_988:
	fmovdneg	%xcc,	%f10,	%f14
	umulcc	%o7,	%i6,	%g1
	fzeros	%f7
	fcmpd	%fcc2,	%f0,	%f8
	fnegs	%f0,	%f6
	tpos	%icc,	0x6
	fmovrsne	%o6,	%f9,	%f9
	fbl	%fcc0,	loop_989
	fzeros	%f4
	tsubcc	%o2,	0x1A45,	%g6
	edge32l	%l2,	%l3,	%i7
loop_989:
	nop
	setx loop_990, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovdle	%xcc,	%f12,	%f2
	stx	%o0,	[%l7 + 0x10]
	lduh	[%l7 + 0x7E],	%i0
loop_990:
	fcmpgt32	%f12,	%f14,	%l0
	ld	[%l7 + 0x54],	%f5
	std	%f12,	[%l7 + 0x70]
	fmul8x16	%f8,	%f10,	%f2
	mulx	%i5,	0x1195,	%g3
	fexpand	%f4,	%f6
	movl	%xcc,	%g7,	%i1
	tne	%icc,	0x4
	fmovdgu	%icc,	%f13,	%f8
	srax	%g5,	%o1,	%i3
	stx	%i2,	[%l7 + 0x68]
	udiv	%l4,	0x0B56,	%l1
	fcmped	%fcc3,	%f12,	%f4
	std	%f14,	[%l7 + 0x38]
	ldd	[%l7 + 0x60],	%f10
	movg	%icc,	%o3,	%l6
	fmovdl	%xcc,	%f3,	%f4
	alignaddr	%g2,	%g4,	%l5
	ldx	[%l7 + 0x20],	%o4
	tn	%icc,	0x5
	fpsub32s	%f10,	%f2,	%f8
	lduh	[%l7 + 0x28],	%i4
	fpack32	%f8,	%f4,	%f6
	fmovdl	%icc,	%f5,	%f7
	movn	%icc,	%o5,	%o7
	ba,a	loop_991
	taddcc	%g1,	%i6,	%o6
	tleu	%xcc,	0x2
	fmovdneg	%icc,	%f8,	%f11
loop_991:
	ldx	[%l7 + 0x78],	%o2
	movgu	%icc,	%l2,	%g6
	fbn	%fcc0,	loop_992
	fnand	%f8,	%f14,	%f8
	mova	%xcc,	%i7,	%l3
	tne	%xcc,	0x4
loop_992:
	nop
	setx loop_993, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	sth	%o0,	[%l7 + 0x58]
	fmovsle	%icc,	%f11,	%f11
	sth	%i0,	[%l7 + 0x52]
loop_993:
	fblg,a	%fcc3,	loop_994
	movg	%icc,	%i5,	%l0
	mulx	%g3,	0x015F,	%i1
	stx	%g7,	[%l7 + 0x48]
loop_994:
	stb	%o1,	[%l7 + 0x7C]
	faligndata	%f10,	%f12,	%f4
	bcc,pt	%xcc,	loop_995
	sdivx	%i3,	0x1C51,	%g5
	fnegs	%f0,	%f8
	sdivcc	%i2,	0x0471,	%l1
loop_995:
	fmovspos	%icc,	%f14,	%f9
	stw	%o3,	[%l7 + 0x20]
	edge32	%l4,	%l6,	%g2
	fcmpne16	%f10,	%f8,	%l5
	fzeros	%f15
	ldsb	[%l7 + 0x66],	%o4
	stb	%i4,	[%l7 + 0x1B]
	movg	%xcc,	%o5,	%g4
	ldub	[%l7 + 0x44],	%o7
	ldub	[%l7 + 0x12],	%i6
	ldub	[%l7 + 0x6E],	%g1
	fandnot2s	%f11,	%f7,	%f3
	movleu	%xcc,	%o6,	%l2
	andncc	%o2,	%g6,	%i7
	ta	%icc,	0x2
	edge16n	%l3,	%o0,	%i0
	edge8n	%i5,	%g3,	%l0
	umulcc	%i1,	0x1FAD,	%g7
	fxnor	%f10,	%f6,	%f12
	fornot2s	%f15,	%f5,	%f13
	tn	%icc,	0x3
	st	%f6,	[%l7 + 0x48]
	udiv	%i3,	0x1252,	%g5
	fxor	%f4,	%f2,	%f10
	fmovdge	%xcc,	%f8,	%f14
	ldx	[%l7 + 0x18],	%o1
	fsrc2	%f6,	%f2
	subccc	%l1,	%i2,	%o3
	lduh	[%l7 + 0x64],	%l4
	stw	%g2,	[%l7 + 0x2C]
	taddcc	%l6,	0x0D12,	%o4
	fmovdvs	%icc,	%f5,	%f4
	edge32	%i4,	%l5,	%o5
	bcs,a,pn	%icc,	loop_996
	sth	%o7,	[%l7 + 0x1A]
	movcc	%xcc,	%g4,	%g1
	fmovrslz	%i6,	%f1,	%f6
loop_996:
	ldsb	[%l7 + 0x69],	%l2
	movn	%icc,	%o6,	%g6
	fmovda	%xcc,	%f10,	%f9
	ld	[%l7 + 0x60],	%f0
	fors	%f1,	%f13,	%f4
	movleu	%xcc,	%o2,	%i7
	subccc	%l3,	0x1D7A,	%i0
	bvc,pt	%icc,	loop_997
	nop
	setx loop_998, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmuld8ulx16	%f14,	%f9,	%f10
	fmovsgu	%icc,	%f15,	%f15
loop_997:
	tpos	%xcc,	0x1
loop_998:
	movleu	%xcc,	%o0,	%g3
	fmovsgu	%icc,	%f14,	%f12
	stw	%l0,	[%l7 + 0x64]
	ldd	[%l7 + 0x08],	%f6
	bgu,a	%icc,	loop_999
	fsrc1	%f6,	%f6
	ld	[%l7 + 0x0C],	%f6
	fmovrsne	%i5,	%f3,	%f8
loop_999:
	fsrc1	%f12,	%f0
	fornot2s	%f10,	%f14,	%f4
	stx	%g7,	[%l7 + 0x58]
	ldsb	[%l7 + 0x36],	%i1
	fzeros	%f9
	fbuge,a	%fcc1,	loop_1000
	tsubcc	%i3,	%g5,	%o1
	stx	%l1,	[%l7 + 0x60]
	ldx	[%l7 + 0x48],	%i2
loop_1000:
	fbn	%fcc0,	loop_1001
	fcmpeq16	%f12,	%f10,	%o3
	sethi	0x03E3,	%l4
	fmovdcs	%icc,	%f7,	%f9
loop_1001:
	tne	%xcc,	0x7
	std	%f10,	[%l7 + 0x48]
	udivx	%g2,	0x0ABF,	%o4
	fbne	%fcc1,	loop_1002
	tcs	%icc,	0x6
	ldsh	[%l7 + 0x7A],	%l6
	fmovrdne	%i4,	%f14,	%f10
loop_1002:
	ldsw	[%l7 + 0x38],	%l5
	fcmpeq32	%f2,	%f8,	%o5
	fand	%f6,	%f12,	%f14
	fbl	%fcc3,	loop_1003
	ldd	[%l7 + 0x48],	%f8
	ldx	[%l7 + 0x10],	%g4
	array16	%g1,	%i6,	%l2
loop_1003:
	brlez	%o6,	loop_1004
	array16	%o7,	%g6,	%i7
	fmovdge	%icc,	%f3,	%f7
	stw	%l3,	[%l7 + 0x18]
loop_1004:
	brnz	%o2,	loop_1005
	fmovrsgz	%i0,	%f4,	%f7
	fmovdvc	%xcc,	%f4,	%f5
	fmovd	%f4,	%f10
loop_1005:
	edge32l	%g3,	%o0,	%i5
	fbue	%fcc0,	loop_1006
	fmovse	%icc,	%f6,	%f1
	stw	%l0,	[%l7 + 0x10]
	fmovsl	%xcc,	%f0,	%f8
loop_1006:
	ldsw	[%l7 + 0x18],	%g7
	lduw	[%l7 + 0x5C],	%i1
	ldsh	[%l7 + 0x38],	%g5
	fmovspos	%icc,	%f10,	%f1
	fcmpes	%fcc2,	%f13,	%f13
	ldd	[%l7 + 0x08],	%f12
	umul	%i3,	0x1B10,	%o1
	lduw	[%l7 + 0x1C],	%l1
	fbue,a	%fcc0,	loop_1007
	fzeros	%f9
	srax	%i2,	0x0F,	%o3
	brnz	%g2,	loop_1008
loop_1007:
	orncc	%l4,	0x1708,	%o4
	fbule	%fcc0,	loop_1009
	st	%f12,	[%l7 + 0x08]
loop_1008:
	edge16ln	%l6,	%i4,	%o5
	sethi	0x18EB,	%g4
loop_1009:
	fbuge,a	%fcc3,	loop_1010
	bne,a	%icc,	loop_1011
	smul	%g1,	0x06E6,	%i6
	fabss	%f13,	%f9
loop_1010:
	fmovsa	%xcc,	%f9,	%f12
loop_1011:
	edge16	%l5,	%o6,	%l2
	brnz,a	%g6,	loop_1012
	fpmerge	%f15,	%f5,	%f12
	stw	%o7,	[%l7 + 0x3C]
	bneg,pn	%xcc,	loop_1013
loop_1012:
	std	%f0,	[%l7 + 0x08]
	sth	%i7,	[%l7 + 0x0C]
	bvs,a	loop_1014
loop_1013:
	stx	%l3,	[%l7 + 0x48]
	tleu	%icc,	0x1
	srl	%i0,	0x11,	%g3
loop_1014:
	ldsb	[%l7 + 0x19],	%o2
	fpack32	%f12,	%f8,	%f10
	fcmps	%fcc1,	%f8,	%f1
	lduh	[%l7 + 0x76],	%o0
	fpadd16	%f14,	%f14,	%f2
	addc	%i5,	%g7,	%i1
	lduw	[%l7 + 0x7C],	%l0
	sth	%i3,	[%l7 + 0x48]
	brgz	%o1,	loop_1015
	ldd	[%l7 + 0x78],	%f6
	tsubcctv	%l1,	%i2,	%g5
	edge8n	%o3,	%g2,	%l4
loop_1015:
	fmuld8ulx16	%f0,	%f7,	%f14
	fmovdg	%icc,	%f7,	%f10
	stx	%o4,	[%l7 + 0x60]
	ld	[%l7 + 0x70],	%f3
	bshuffle	%f14,	%f6,	%f8
	movcc	%icc,	%i4,	%l6
	edge16ln	%g4,	%g1,	%i6
	edge8	%l5,	%o5,	%l2
	fcmped	%fcc2,	%f10,	%f2
	sub	%o6,	%o7,	%i7
	fxor	%f2,	%f6,	%f4
	ldsb	[%l7 + 0x32],	%g6
	movre	%l3,	0x29B,	%g3
	fmovdl	%icc,	%f15,	%f4
	be,pn	%icc,	loop_1016
	fbug	%fcc2,	loop_1017
	stx	%i0,	[%l7 + 0x10]
	fbu,a	%fcc1,	loop_1018
loop_1016:
	tleu	%icc,	0x4
loop_1017:
	movge	%xcc,	%o0,	%i5
	ldsw	[%l7 + 0x68],	%o2
loop_1018:
	fbule	%fcc0,	loop_1019
	ldd	[%l7 + 0x20],	%f6
	ldsb	[%l7 + 0x76],	%i1
	bpos,pt	%icc,	loop_1020
loop_1019:
	addc	%l0,	0x11E6,	%i3
	fxnor	%f12,	%f4,	%f12
	fmovdcc	%icc,	%f6,	%f10
loop_1020:
	ldx	[%l7 + 0x48],	%o1
	stw	%g7,	[%l7 + 0x0C]
	movpos	%xcc,	%i2,	%l1
	bvc,a	%xcc,	loop_1021
	fcmped	%fcc1,	%f2,	%f0
	movl	%xcc,	%g5,	%g2
	edge8n	%l4,	%o4,	%o3
loop_1021:
	stb	%i4,	[%l7 + 0x19]
	std	%f12,	[%l7 + 0x08]
	bgu,a	loop_1022
	sth	%g4,	[%l7 + 0x76]
	stx	%l6,	[%l7 + 0x78]
	movn	%icc,	%g1,	%l5
loop_1022:
	sth	%i6,	[%l7 + 0x4A]
	brlz,a	%l2,	loop_1023
	ldsb	[%l7 + 0x54],	%o6
	stx	%o7,	[%l7 + 0x78]
	ldsh	[%l7 + 0x18],	%i7
loop_1023:
	siam	0x3
	edge16n	%o5,	%l3,	%g3
	ldd	[%l7 + 0x20],	%f8
	fmovsgu	%icc,	%f9,	%f7
	stb	%g6,	[%l7 + 0x23]
	stb	%i0,	[%l7 + 0x5A]
	and	%o0,	0x1F07,	%o2
	udiv	%i1,	0x09DF,	%i5
	std	%f0,	[%l7 + 0x68]
	brlez	%i3,	loop_1024
	fcmps	%fcc3,	%f5,	%f15
	fands	%f11,	%f2,	%f5
	fcmps	%fcc2,	%f4,	%f13
loop_1024:
	edge16n	%l0,	%g7,	%o1
	movcs	%icc,	%l1,	%g5
	stb	%i2,	[%l7 + 0x6A]
	movne	%xcc,	%g2,	%l4
	std	%f6,	[%l7 + 0x58]
	fbne,a	%fcc3,	loop_1025
	fmovs	%f15,	%f5
	ldsb	[%l7 + 0x5A],	%o4
	stb	%i4,	[%l7 + 0x7B]
loop_1025:
	stw	%g4,	[%l7 + 0x6C]
	movge	%xcc,	%l6,	%g1
	alignaddrl	%o3,	%l5,	%l2
	fxor	%f6,	%f0,	%f14
	fmovsleu	%xcc,	%f13,	%f5
	fnot1s	%f1,	%f10
	ldsb	[%l7 + 0x0A],	%o6
	fmuld8sux16	%f7,	%f5,	%f6
	fmovsneg	%icc,	%f8,	%f3
	fsrc1s	%f3,	%f0
	ldub	[%l7 + 0x0C],	%i6
	fmuld8sux16	%f14,	%f2,	%f12
	fmovs	%f15,	%f1
	movg	%icc,	%i7,	%o5
	fmovde	%icc,	%f9,	%f5
	smul	%l3,	%o7,	%g6
	nop
	setx loop_1026, %l0, %l1
	jmpl %l1, %i0
	srax	%o0,	%g3,	%i1
	fnor	%f8,	%f4,	%f6
	lduw	[%l7 + 0x54],	%i5
loop_1026:
	fnors	%f9,	%f5,	%f10
	brnz	%o2,	loop_1027
	fmovsne	%icc,	%f15,	%f11
	sth	%l0,	[%l7 + 0x1E]
	fmuld8ulx16	%f13,	%f7,	%f4
loop_1027:
	fcmple32	%f6,	%f6,	%i3
	fmovs	%f1,	%f0
	ldsh	[%l7 + 0x60],	%o1
	fbu	%fcc3,	loop_1028
	orncc	%g7,	0x1DB2,	%l1
	fands	%f6,	%f3,	%f8
	ldsh	[%l7 + 0x5E],	%i2
loop_1028:
	fmovrdne	%g5,	%f12,	%f0
	ldub	[%l7 + 0x11],	%l4
	udiv	%o4,	0x1460,	%g2
	edge8n	%g4,	%i4,	%l6
	andn	%o3,	0x03FB,	%l5
	fpadd32s	%f5,	%f5,	%f6
	stx	%g1,	[%l7 + 0x50]
	tle	%xcc,	0x5
	movg	%xcc,	%l2,	%i6
	ld	[%l7 + 0x34],	%f2
	std	%f14,	[%l7 + 0x78]
	fba	%fcc3,	loop_1029
	stb	%i7,	[%l7 + 0x47]
	movvc	%icc,	%o5,	%o6
	sth	%l3,	[%l7 + 0x78]
loop_1029:
	std	%f10,	[%l7 + 0x50]
	ba	%xcc,	loop_1030
	fors	%f10,	%f10,	%f10
	fmovsl	%icc,	%f6,	%f1
	tleu	%xcc,	0x4
loop_1030:
	edge8l	%g6,	%i0,	%o0
	ldsb	[%l7 + 0x3E],	%g3
	ldd	[%l7 + 0x38],	%f4
	fmuld8ulx16	%f8,	%f1,	%f2
	nop
	setx loop_1031, %l0, %l1
	jmpl %l1, %i1
	edge32n	%i5,	%o2,	%o7
	fmovscs	%xcc,	%f14,	%f15
	fnors	%f12,	%f10,	%f3
loop_1031:
	fpsub32s	%f15,	%f14,	%f1
	stx	%l0,	[%l7 + 0x58]
	movl	%icc,	%i3,	%o1
	stb	%l1,	[%l7 + 0x43]
	stb	%i2,	[%l7 + 0x39]
	sth	%g5,	[%l7 + 0x28]
	fsrc2	%f12,	%f8
	stw	%l4,	[%l7 + 0x50]
	fnand	%f0,	%f14,	%f2
	nop
	setx loop_1032, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	orcc	%g7,	0x1E4C,	%o4
	xor	%g2,	%g4,	%i4
	stb	%o3,	[%l7 + 0x61]
loop_1032:
	fsrc2	%f4,	%f12
	bcc,pn	%icc,	loop_1033
	fmovsl	%xcc,	%f2,	%f4
	fmovda	%xcc,	%f10,	%f13
	ldub	[%l7 + 0x6C],	%l5
loop_1033:
	taddcctv	%l6,	%g1,	%l2
	umulcc	%i7,	0x15C9,	%o5
	xorcc	%i6,	%l3,	%o6
	fmovdg	%icc,	%f0,	%f7
	fmul8ulx16	%f12,	%f2,	%f8
	fornot2	%f14,	%f0,	%f12
	ldd	[%l7 + 0x18],	%f6
	te	%xcc,	0x4
	movne	%xcc,	%i0,	%g6
	bvs,a	%icc,	loop_1034
	fpadd16	%f2,	%f14,	%f2
	sdiv	%o0,	0x1349,	%g3
	move	%icc,	%i5,	%i1
loop_1034:
	fmuld8ulx16	%f12,	%f5,	%f4
	ldsh	[%l7 + 0x46],	%o7
	fmovdn	%icc,	%f15,	%f11
	smul	%o2,	0x1122,	%i3
	fcmps	%fcc1,	%f1,	%f10
	edge32n	%o1,	%l1,	%i2
	fnot1	%f0,	%f4
	fble,a	%fcc1,	loop_1035
	ldub	[%l7 + 0x09],	%l0
	movl	%icc,	%g5,	%g7
	edge16n	%l4,	%o4,	%g2
loop_1035:
	std	%f0,	[%l7 + 0x38]
	fmovrse	%i4,	%f1,	%f13
	array16	%g4,	%l5,	%o3
	stb	%g1,	[%l7 + 0x63]
	sethi	0x1597,	%l2
	movcc	%icc,	%i7,	%l6
	movrne	%i6,	%o5,	%o6
	andncc	%i0,	%l3,	%o0
	fbl	%fcc0,	loop_1036
	fbl	%fcc1,	loop_1037
	fmovdleu	%xcc,	%f1,	%f9
	movrgez	%g3,	0x227,	%g6
loop_1036:
	xor	%i5,	0x1CDE,	%i1
loop_1037:
	tcc	%icc,	0x3
	stx	%o7,	[%l7 + 0x58]
	ldsh	[%l7 + 0x34],	%o2
	fba,a	%fcc2,	loop_1038
	stw	%i3,	[%l7 + 0x20]
	lduh	[%l7 + 0x5C],	%o1
	umul	%i2,	%l1,	%l0
loop_1038:
	movgu	%icc,	%g5,	%g7
	move	%icc,	%l4,	%g2
	fmovs	%f1,	%f11
	fmovrse	%o4,	%f13,	%f9
	fmul8x16au	%f1,	%f11,	%f0
	fmul8x16au	%f0,	%f2,	%f14
	ldx	[%l7 + 0x30],	%g4
	ldub	[%l7 + 0x5B],	%l5
	move	%xcc,	%i4,	%g1
	ldx	[%l7 + 0x18],	%o3
	fmovse	%xcc,	%f13,	%f9
	ldsb	[%l7 + 0x0C],	%i7
	fmovdleu	%xcc,	%f12,	%f3
	ldsw	[%l7 + 0x68],	%l6
	fpsub32	%f8,	%f6,	%f6
	movvc	%icc,	%l2,	%i6
	fmovrdlez	%o5,	%f4,	%f2
	sdivx	%i0,	0x1C1A,	%o6
	bgu,pt	%xcc,	loop_1039
	fmovrsne	%o0,	%f0,	%f7
	taddcctv	%l3,	%g6,	%i5
	ldd	[%l7 + 0x30],	%f4
loop_1039:
	ldsb	[%l7 + 0x2E],	%i1
	movle	%xcc,	%g3,	%o2
	ldsh	[%l7 + 0x14],	%o7
	lduw	[%l7 + 0x24],	%i3
	fmovse	%xcc,	%f14,	%f11
	std	%f0,	[%l7 + 0x78]
	movre	%o1,	%i2,	%l1
	array16	%g5,	%g7,	%l4
	movg	%icc,	%g2,	%l0
	ldsb	[%l7 + 0x68],	%g4
	st	%f0,	[%l7 + 0x28]
	add	%o4,	0x0E25,	%i4
	edge16ln	%g1,	%o3,	%l5
	ldx	[%l7 + 0x20],	%l6
	fnands	%f2,	%f7,	%f8
	bg	loop_1040
	bl	%xcc,	loop_1041
	bvs,a	loop_1042
	stw	%l2,	[%l7 + 0x78]
loop_1040:
	sth	%i7,	[%l7 + 0x7A]
loop_1041:
	fmovs	%f0,	%f13
loop_1042:
	array16	%o5,	%i6,	%i0
	move	%xcc,	%o0,	%l3
	fmovsleu	%xcc,	%f10,	%f0
	fnot2	%f10,	%f12
	bvs,pt	%icc,	loop_1043
	popc	0x0539,	%o6
	fble,a	%fcc1,	loop_1044
	fpadd32	%f0,	%f4,	%f10
loop_1043:
	stw	%g6,	[%l7 + 0x64]
	lduw	[%l7 + 0x44],	%i5
loop_1044:
	be	%xcc,	loop_1045
	fbue,a	%fcc2,	loop_1046
	lduh	[%l7 + 0x7A],	%g3
	fsrc1	%f10,	%f4
loop_1045:
	fmovrslez	%i1,	%f4,	%f13
loop_1046:
	andn	%o7,	%i3,	%o1
	and	%o2,	0x1A8E,	%l1
	st	%f14,	[%l7 + 0x0C]
	fmovdvs	%icc,	%f15,	%f8
	ldx	[%l7 + 0x70],	%g5
	st	%f13,	[%l7 + 0x2C]
	bneg,a	%icc,	loop_1047
	stx	%i2,	[%l7 + 0x38]
	lduw	[%l7 + 0x68],	%g7
	fcmple16	%f6,	%f2,	%g2
loop_1047:
	fmovrsgz	%l4,	%f12,	%f1
	fcmpne16	%f6,	%f4,	%l0
	std	%f14,	[%l7 + 0x48]
	stb	%g4,	[%l7 + 0x1F]
	st	%f14,	[%l7 + 0x34]
	fmovrslz	%i4,	%f14,	%f7
	lduh	[%l7 + 0x2C],	%g1
	sdivcc	%o4,	0x1FA8,	%l5
	fcmps	%fcc3,	%f1,	%f11
	fandnot1	%f0,	%f8,	%f6
	movre	%l6,	0x221,	%o3
	ldsb	[%l7 + 0x53],	%l2
	fxnor	%f6,	%f10,	%f4
	fmovsneg	%icc,	%f9,	%f4
	bvs	loop_1048
	fornot1	%f8,	%f0,	%f2
	fcmpeq32	%f6,	%f12,	%o5
	array16	%i6,	%i7,	%i0
loop_1048:
	andcc	%o0,	%o6,	%g6
	fbn	%fcc3,	loop_1049
	bleu	loop_1050
	nop
	setx loop_1051, %l0, %l1
	jmpl %l1, %i5
	edge16n	%l3,	%i1,	%g3
loop_1049:
	movgu	%xcc,	%o7,	%i3
loop_1050:
	smulcc	%o2,	%l1,	%o1
loop_1051:
	brz	%g5,	loop_1052
	lduw	[%l7 + 0x78],	%i2
	umul	%g2,	0x029D,	%l4
	edge8	%l0,	%g7,	%i4
loop_1052:
	st	%f1,	[%l7 + 0x44]
	ldub	[%l7 + 0x72],	%g1
	fmovsleu	%xcc,	%f10,	%f13
	fzero	%f4
	lduw	[%l7 + 0x74],	%o4
	tvc	%xcc,	0x4
	nop
	setx loop_1053, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	movrne	%g4,	%l5,	%l6
	edge8ln	%l2,	%o3,	%o5
	std	%f4,	[%l7 + 0x40]
loop_1053:
	movpos	%xcc,	%i6,	%i0
	brz	%o0,	loop_1054
	fsrc1	%f10,	%f6
	fba	%fcc2,	loop_1055
	fandnot1s	%f2,	%f12,	%f13
loop_1054:
	fmuld8sux16	%f13,	%f8,	%f0
	movneg	%xcc,	%i7,	%g6
loop_1055:
	brgez	%o6,	loop_1056
	bcc,pn	%xcc,	loop_1057
	std	%f8,	[%l7 + 0x50]
	srax	%i5,	0x01,	%l3
loop_1056:
	fmovdleu	%icc,	%f8,	%f14
loop_1057:
	stx	%g3,	[%l7 + 0x50]
	ld	[%l7 + 0x50],	%f3
	fbul	%fcc0,	loop_1058
	tl	%icc,	0x4
	fcmple16	%f2,	%f0,	%i1
	bneg,a	loop_1059
loop_1058:
	sub	%o7,	%o2,	%i3
	bneg	%xcc,	loop_1060
	tcc	%xcc,	0x2
loop_1059:
	ldx	[%l7 + 0x60],	%o1
	udivx	%l1,	0x028D,	%i2
loop_1060:
	udivcc	%g5,	0x04DE,	%g2
	fsrc2s	%f8,	%f3
	fmovscs	%icc,	%f10,	%f12
	tleu	%xcc,	0x7
	fbuge,a	%fcc0,	loop_1061
	mulx	%l0,	%g7,	%l4
	fmovsneg	%icc,	%f13,	%f1
	andncc	%g1,	%o4,	%i4
loop_1061:
	te	%xcc,	0x7
	movl	%xcc,	%g4,	%l5
	lduh	[%l7 + 0x7A],	%l6
	edge8ln	%o3,	%o5,	%i6
	edge32	%l2,	%i0,	%o0
	fornot1	%f2,	%f8,	%f2
	stx	%g6,	[%l7 + 0x68]
	fnor	%f6,	%f0,	%f10
	st	%f2,	[%l7 + 0x48]
	lduw	[%l7 + 0x20],	%i7
	ldsw	[%l7 + 0x74],	%o6
	tg	%icc,	0x7
	fpsub32	%f14,	%f6,	%f14
	fornot1s	%f2,	%f8,	%f0
	brlz,a	%l3,	loop_1062
	edge32l	%i5,	%i1,	%o7
	sdivcc	%g3,	0x0DD9,	%o2
	stb	%i3,	[%l7 + 0x1D]
loop_1062:
	ldd	[%l7 + 0x10],	%f14
	fone	%f10
	ba,a,pn	%xcc,	loop_1063
	srlx	%o1,	%l1,	%i2
	bcc	%icc,	loop_1064
	popc	%g5,	%l0
loop_1063:
	fabsd	%f4,	%f4
	brz,a	%g7,	loop_1065
loop_1064:
	fmovrdgez	%g2,	%f12,	%f2
	fmovdcs	%xcc,	%f8,	%f6
	edge8ln	%g1,	%l4,	%o4
loop_1065:
	fpmerge	%f10,	%f3,	%f6
	fornot2s	%f7,	%f14,	%f13
	fmul8sux16	%f0,	%f0,	%f10
	fnot2	%f8,	%f6
	subcc	%g4,	0x0868,	%i4
	ldd	[%l7 + 0x28],	%f6
	stw	%l5,	[%l7 + 0x40]
	fornot1s	%f12,	%f10,	%f13
	ldx	[%l7 + 0x08],	%o3
	ldx	[%l7 + 0x30],	%o5
	fbn	%fcc0,	loop_1066
	nop
	setx loop_1067, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	bneg	%xcc,	loop_1068
	fmovsle	%xcc,	%f6,	%f15
loop_1066:
	bshuffle	%f0,	%f8,	%f10
loop_1067:
	tcc	%icc,	0x6
loop_1068:
	tne	%icc,	0x2
	st	%f1,	[%l7 + 0x38]
	ldd	[%l7 + 0x60],	%f8
	stx	%l6,	[%l7 + 0x40]
	fmovsge	%icc,	%f10,	%f5
	fcmple16	%f4,	%f12,	%i6
	nop
	setx loop_1069, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	st	%f6,	[%l7 + 0x1C]
	tvs	%icc,	0x4
	fcmple16	%f6,	%f4,	%i0
loop_1069:
	umulcc	%l2,	0x19AE,	%o0
	sth	%i7,	[%l7 + 0x5C]
	fnands	%f15,	%f0,	%f7
	stb	%g6,	[%l7 + 0x77]
	stx	%l3,	[%l7 + 0x70]
	fnor	%f8,	%f8,	%f12
	ldub	[%l7 + 0x4A],	%i5
	popc	%i1,	%o6
	sdivx	%o7,	0x0864,	%o2
	stw	%g3,	[%l7 + 0x60]
	umulcc	%i3,	0x1423,	%o1
	ldub	[%l7 + 0x76],	%i2
	fsrc2	%f10,	%f10
	tvc	%xcc,	0x0
	xnorcc	%l1,	0x1013,	%g5
	ldsw	[%l7 + 0x78],	%l0
	movvs	%xcc,	%g7,	%g1
	movn	%xcc,	%g2,	%o4
	fpack16	%f12,	%f9
	fmovde	%icc,	%f3,	%f3
	faligndata	%f14,	%f14,	%f6
	edge8l	%l4,	%g4,	%l5
	ldub	[%l7 + 0x79],	%o3
	edge16	%i4,	%o5,	%i6
	udivcc	%i0,	0x0143,	%l6
	andn	%o0,	%i7,	%g6
	bvs,a,pt	%icc,	loop_1070
	fmovscc	%icc,	%f5,	%f4
	brnz	%l3,	loop_1071
	movleu	%xcc,	%l2,	%i5
loop_1070:
	ble,a	loop_1072
	stx	%i1,	[%l7 + 0x48]
loop_1071:
	fcmpgt16	%f0,	%f14,	%o6
	fbo	%fcc1,	loop_1073
loop_1072:
	fnors	%f1,	%f5,	%f13
	fornot1	%f10,	%f6,	%f0
	fmovrsgez	%o7,	%f12,	%f7
loop_1073:
	fmul8x16	%f12,	%f10,	%f14
	std	%f10,	[%l7 + 0x58]
	lduw	[%l7 + 0x20],	%g3
	movle	%icc,	%o2,	%o1
	st	%f14,	[%l7 + 0x24]
	fzero	%f2
	fmovsleu	%icc,	%f12,	%f1
	stx	%i2,	[%l7 + 0x60]
	fmovde	%xcc,	%f9,	%f4
	mova	%xcc,	%l1,	%g5
	fmovrsgez	%l0,	%f6,	%f5
	fmovdge	%xcc,	%f6,	%f5
	fmovd	%f0,	%f6
	fmovdgu	%icc,	%f12,	%f15
	ldsw	[%l7 + 0x08],	%i3
	tsubcctv	%g7,	0x0071,	%g2
	fpadd16	%f4,	%f12,	%f8
	be,a,pt	%icc,	loop_1074
	addcc	%o4,	0x0C6B,	%l4
	tneg	%xcc,	0x1
	tle	%xcc,	0x6
loop_1074:
	movrgez	%g1,	%l5,	%o3
	fmovrse	%g4,	%f9,	%f12
	stx	%o5,	[%l7 + 0x20]
	ld	[%l7 + 0x5C],	%f9
	bshuffle	%f8,	%f0,	%f2
	fones	%f11
	ld	[%l7 + 0x1C],	%f14
	tgu	%icc,	0x4
	movgu	%xcc,	%i4,	%i6
	taddcctv	%l6,	0x0677,	%o0
	ldsh	[%l7 + 0x74],	%i0
	fandnot1s	%f5,	%f0,	%f8
	st	%f12,	[%l7 + 0x14]
	tsubcctv	%i7,	%g6,	%l2
	edge8ln	%l3,	%i5,	%i1
	be,a	loop_1075
	fmovrdlez	%o7,	%f14,	%f4
	umulcc	%o6,	%o2,	%g3
	tge	%icc,	0x2
loop_1075:
	std	%f4,	[%l7 + 0x58]
	fnot1	%f4,	%f12
	ldx	[%l7 + 0x10],	%o1
	st	%f12,	[%l7 + 0x24]
	xnor	%i2,	%g5,	%l0
	movgu	%xcc,	%i3,	%l1
	stw	%g7,	[%l7 + 0x5C]
	fbu,a	%fcc2,	loop_1076
	ld	[%l7 + 0x0C],	%f6
	andcc	%o4,	%g2,	%l4
	fmovsge	%xcc,	%f12,	%f6
loop_1076:
	fabss	%f13,	%f11
	fmovrsgez	%g1,	%f12,	%f2
	fbe,a	%fcc1,	loop_1077
	ldx	[%l7 + 0x70],	%o3
	fbl	%fcc2,	loop_1078
	fmul8ulx16	%f2,	%f8,	%f12
loop_1077:
	stw	%l5,	[%l7 + 0x20]
	st	%f11,	[%l7 + 0x50]
loop_1078:
	std	%f8,	[%l7 + 0x28]
	fands	%f15,	%f1,	%f3
	fcmped	%fcc3,	%f0,	%f14
	stw	%g4,	[%l7 + 0x10]
	array16	%i4,	%o5,	%i6
	fmovrde	%o0,	%f8,	%f0
	nop
	setx loop_1079, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	pdist	%f2,	%f6,	%f6
	movcc	%icc,	%i0,	%i7
	ldd	[%l7 + 0x40],	%f14
loop_1079:
	edge32n	%l6,	%g6,	%l3
	st	%f13,	[%l7 + 0x2C]
	fnegd	%f12,	%f0
	fmovdgu	%xcc,	%f12,	%f14
	nop
	setx loop_1080, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	andcc	%i5,	%l2,	%o7
	edge8l	%i1,	%o6,	%g3
	movpos	%xcc,	%o1,	%i2
loop_1080:
	fnot2	%f2,	%f8
	bl,pt	%icc,	loop_1081
	fpmerge	%f12,	%f4,	%f14
	ldd	[%l7 + 0x40],	%f12
	st	%f6,	[%l7 + 0x74]
loop_1081:
	brgz,a	%o2,	loop_1082
	movl	%xcc,	%l0,	%i3
	ldsh	[%l7 + 0x14],	%l1
	fmul8ulx16	%f4,	%f14,	%f8
loop_1082:
	tle	%icc,	0x2
	subccc	%g5,	0x0CC8,	%g7
	fnot2s	%f1,	%f14
	fand	%f10,	%f8,	%f8
	fbuge	%fcc0,	loop_1083
	stw	%g2,	[%l7 + 0x20]
	fabsd	%f4,	%f2
	fbuge	%fcc2,	loop_1084
loop_1083:
	mulx	%l4,	0x143E,	%o4
	lduh	[%l7 + 0x52],	%g1
	fmovrdne	%l5,	%f6,	%f14
loop_1084:
	add	%g4,	0x04F5,	%i4
	edge8ln	%o5,	%o3,	%i6
	movrgz	%i0,	0x29A,	%o0
	ldsw	[%l7 + 0x78],	%l6
	fmovdne	%xcc,	%f15,	%f0
	fbne,a	%fcc1,	loop_1085
	move	%icc,	%i7,	%l3
	fmul8ulx16	%f10,	%f12,	%f4
	fmovsvs	%icc,	%f13,	%f6
loop_1085:
	sth	%i5,	[%l7 + 0x08]
	lduh	[%l7 + 0x6E],	%g6
	fpadd32s	%f13,	%f6,	%f8
	ldx	[%l7 + 0x08],	%l2
	st	%f12,	[%l7 + 0x30]
	xnorcc	%i1,	%o7,	%g3
	stx	%o1,	[%l7 + 0x50]
	movcs	%icc,	%o6,	%i2
	brlez	%o2,	loop_1086
	fmovs	%f1,	%f0
	ldx	[%l7 + 0x08],	%l0
	ldsb	[%l7 + 0x16],	%l1
loop_1086:
	mova	%xcc,	%i3,	%g7
	fpadd16	%f4,	%f0,	%f6
	mulscc	%g5,	0x0DF0,	%g2
	lduw	[%l7 + 0x7C],	%l4
	fcmpgt32	%f0,	%f4,	%g1
	ld	[%l7 + 0x30],	%f10
	edge8l	%l5,	%g4,	%o4
	ld	[%l7 + 0x74],	%f5
	movvc	%xcc,	%o5,	%i4
	lduh	[%l7 + 0x7C],	%o3
	fbul	%fcc3,	loop_1087
	orcc	%i0,	%i6,	%o0
	fones	%f13
	stb	%l6,	[%l7 + 0x0B]
loop_1087:
	orncc	%l3,	0x1D84,	%i5
	edge8l	%i7,	%l2,	%i1
	fpsub32s	%f7,	%f8,	%f2
	ldsw	[%l7 + 0x78],	%g6
	fcmpgt32	%f12,	%f8,	%o7
	fpack16	%f12,	%f9
	udiv	%g3,	0x082E,	%o6
	ba,a	loop_1088
	ld	[%l7 + 0x3C],	%f13
	fmul8sux16	%f6,	%f0,	%f6
	taddcc	%o1,	0x0F9E,	%o2
loop_1088:
	fmovsvs	%xcc,	%f4,	%f0
	bn	%icc,	loop_1089
	ld	[%l7 + 0x40],	%f3
	subc	%l0,	%i2,	%l1
	brlez,a	%g7,	loop_1090
loop_1089:
	bgu,a	%icc,	loop_1091
	movre	%g5,	%g2,	%l4
	fcmpne32	%f8,	%f6,	%g1
loop_1090:
	fpadd16	%f14,	%f10,	%f10
loop_1091:
	ldsb	[%l7 + 0x67],	%l5
	fpsub16	%f10,	%f2,	%f6
	tsubcc	%g4,	%o4,	%i3
	xnor	%o5,	%i4,	%o3
	fsrc2s	%f13,	%f13
	orn	%i6,	%i0,	%o0
	brz	%l3,	loop_1092
	ldd	[%l7 + 0x50],	%f10
	sth	%l6,	[%l7 + 0x5E]
	fpadd16	%f6,	%f12,	%f10
loop_1092:
	tg	%xcc,	0x7
	std	%f14,	[%l7 + 0x40]
	tcs	%icc,	0x4
	brgez,a	%i5,	loop_1093
	sth	%l2,	[%l7 + 0x74]
	popc	0x1A27,	%i1
	lduw	[%l7 + 0x2C],	%i7
loop_1093:
	movrne	%g6,	0x3F2,	%o7
	fxnor	%f2,	%f12,	%f4
	fnor	%f8,	%f12,	%f4
	stb	%g3,	[%l7 + 0x6D]
	sth	%o1,	[%l7 + 0x6A]
	stb	%o6,	[%l7 + 0x4A]
	movrlez	%l0,	%o2,	%l1
	udivcc	%g7,	0x0F2F,	%i2
	bgu,pt	%xcc,	loop_1094
	srax	%g2,	%g5,	%g1
	fcmpne16	%f0,	%f6,	%l4
	sdivx	%l5,	0x0D88,	%o4
loop_1094:
	stb	%g4,	[%l7 + 0x58]
	fbue,a	%fcc2,	loop_1095
	ldd	[%l7 + 0x30],	%f6
	st	%f8,	[%l7 + 0x54]
	sdiv	%o5,	0x11BE,	%i4
loop_1095:
	be,a	loop_1096
	fmovrdgez	%i3,	%f0,	%f0
	sth	%i6,	[%l7 + 0x30]
	movneg	%xcc,	%i0,	%o0
loop_1096:
	fnand	%f0,	%f0,	%f2
	fpadd16	%f6,	%f6,	%f6
	fmovsg	%icc,	%f14,	%f6
	fcmpeq32	%f0,	%f12,	%l3
	fnands	%f9,	%f6,	%f1
	fmovda	%icc,	%f2,	%f4
	fand	%f8,	%f14,	%f4
	edge32ln	%l6,	%i5,	%o3
	fmovsl	%icc,	%f0,	%f12
	fxnor	%f8,	%f4,	%f4
	fexpand	%f6,	%f6
	fmovdgu	%xcc,	%f6,	%f14
	ldsw	[%l7 + 0x48],	%i1
	lduw	[%l7 + 0x08],	%l2
	orncc	%g6,	0x1A87,	%i7
	std	%f14,	[%l7 + 0x58]
	xor	%g3,	0x164C,	%o1
	ldsh	[%l7 + 0x4E],	%o7
	movrne	%l0,	%o6,	%l1
	fcmpne32	%f14,	%f14,	%o2
	stx	%g7,	[%l7 + 0x78]
	fandnot1s	%f11,	%f1,	%f0
	taddcc	%g2,	0x013E,	%g5
	fmovsle	%xcc,	%f14,	%f6
	fmovdleu	%xcc,	%f13,	%f9
	fbu	%fcc2,	loop_1097
	sdiv	%i2,	0x1EC2,	%l4
	ldd	[%l7 + 0x50],	%f4
	fsrc2	%f2,	%f0
loop_1097:
	edge8n	%l5,	%g1,	%o4
	edge32	%o5,	%i4,	%g4
	fbl,a	%fcc1,	loop_1098
	sth	%i6,	[%l7 + 0x12]
	stw	%i0,	[%l7 + 0x50]
	brlez,a	%i3,	loop_1099
loop_1098:
	fpadd16s	%f8,	%f3,	%f4
	sth	%o0,	[%l7 + 0x48]
	andcc	%l3,	0x06A7,	%l6
loop_1099:
	movcs	%xcc,	%i5,	%o3
	addcc	%i1,	%g6,	%l2
	ldd	[%l7 + 0x68],	%f10
	taddcctv	%g3,	0x12DA,	%o1
	popc	%i7,	%l0
	fcmpeq16	%f4,	%f10,	%o6
	movrlz	%l1,	%o7,	%g7
	sdivx	%o2,	0x04B1,	%g5
	fpadd16	%f12,	%f14,	%f12
	tsubcc	%i2,	%g2,	%l5
	siam	0x0
	brz,a	%l4,	loop_1100
	sdivx	%g1,	0x09F8,	%o5
	std	%f8,	[%l7 + 0x38]
	bge,a	loop_1101
loop_1100:
	bn,pn	%xcc,	loop_1102
	stb	%o4,	[%l7 + 0x09]
	mulx	%g4,	%i4,	%i0
loop_1101:
	fmovdge	%icc,	%f3,	%f14
loop_1102:
	fmovsle	%xcc,	%f3,	%f15
	ldsh	[%l7 + 0x2A],	%i6
	tleu	%xcc,	0x0
	edge32ln	%i3,	%l3,	%o0
	fmovrsgz	%i5,	%f12,	%f2
	lduw	[%l7 + 0x28],	%l6
	st	%f11,	[%l7 + 0x2C]
	nop
	setx loop_1103, %l0, %l1
	jmpl %l1, %o3
	fcmpne32	%f12,	%f14,	%i1
	ldub	[%l7 + 0x6C],	%l2
	ldub	[%l7 + 0x45],	%g3
loop_1103:
	ld	[%l7 + 0x54],	%f11
	ldsw	[%l7 + 0x1C],	%g6
	lduh	[%l7 + 0x66],	%o1
	fnands	%f6,	%f8,	%f9
	st	%f0,	[%l7 + 0x64]
	call	loop_1104
	tsubcc	%i7,	0x014E,	%o6
	st	%f12,	[%l7 + 0x2C]
	fmovdcs	%icc,	%f14,	%f11
loop_1104:
	fmul8x16	%f8,	%f12,	%f8
	ldsb	[%l7 + 0x24],	%l1
	stw	%l0,	[%l7 + 0x70]
	ld	[%l7 + 0x5C],	%f2
	movg	%icc,	%g7,	%o7
	srl	%g5,	%o2,	%i2
	std	%f0,	[%l7 + 0x08]
	edge16l	%l5,	%g2,	%g1
	array16	%l4,	%o4,	%o5
	fcmpgt16	%f12,	%f4,	%g4
	movrlez	%i4,	%i0,	%i3
	edge32n	%l3,	%o0,	%i6
	mova	%xcc,	%i5,	%o3
	fbl	%fcc2,	loop_1105
	fmovdvs	%icc,	%f7,	%f14
	tpos	%xcc,	0x0
	lduh	[%l7 + 0x34],	%i1
loop_1105:
	taddcctv	%l6,	%l2,	%g6
	ldub	[%l7 + 0x28],	%o1
	stx	%i7,	[%l7 + 0x38]
	stw	%g3,	[%l7 + 0x3C]
	fmovdne	%xcc,	%f15,	%f15
	ldd	[%l7 + 0x48],	%f0
	fmovdpos	%xcc,	%f4,	%f0
	edge32n	%o6,	%l0,	%g7
	fcmpne16	%f0,	%f4,	%l1
	movleu	%icc,	%o7,	%g5
	bneg	loop_1106
	ldx	[%l7 + 0x48],	%o2
	fmovscs	%icc,	%f12,	%f15
	bneg,a,pt	%icc,	loop_1107
loop_1106:
	fmovsvc	%icc,	%f15,	%f15
	lduh	[%l7 + 0x5C],	%i2
	brnz	%g2,	loop_1108
loop_1107:
	stb	%l5,	[%l7 + 0x30]
	udivcc	%l4,	0x1623,	%o4
	fmovdleu	%icc,	%f1,	%f3
loop_1108:
	fornot1s	%f2,	%f15,	%f1
	sdiv	%g1,	0x0358,	%g4
	stb	%o5,	[%l7 + 0x16]
	fcmpgt32	%f0,	%f4,	%i4
	fpsub32s	%f15,	%f6,	%f0
	andncc	%i3,	%l3,	%o0
	sdivx	%i0,	0x17D4,	%i6
	fcmpes	%fcc1,	%f7,	%f14
	fmovrdgz	%o3,	%f10,	%f14
	lduh	[%l7 + 0x46],	%i1
	stx	%l6,	[%l7 + 0x48]
	fmovdcc	%xcc,	%f6,	%f4
	fblg	%fcc0,	loop_1109
	fmovdg	%xcc,	%f13,	%f12
	st	%f6,	[%l7 + 0x20]
	stb	%i5,	[%l7 + 0x67]
loop_1109:
	stb	%l2,	[%l7 + 0x7F]
	sdivx	%o1,	0x01DE,	%g6
	lduh	[%l7 + 0x5C],	%i7
	fbul	%fcc0,	loop_1110
	fnands	%f1,	%f9,	%f8
	ldsb	[%l7 + 0x26],	%g3
	movre	%o6,	%g7,	%l1
loop_1110:
	lduw	[%l7 + 0x10],	%o7
	std	%f6,	[%l7 + 0x30]
	lduw	[%l7 + 0x28],	%g5
	tcs	%xcc,	0x1
	ldx	[%l7 + 0x08],	%o2
	ldsh	[%l7 + 0x58],	%l0
	lduw	[%l7 + 0x24],	%i2
	stb	%l5,	[%l7 + 0x30]
	fornot2s	%f8,	%f15,	%f14
	and	%g2,	%l4,	%o4
	movle	%xcc,	%g1,	%o5
	stx	%i4,	[%l7 + 0x38]
	addccc	%g4,	0x1EFC,	%l3
	fmovspos	%icc,	%f13,	%f3
	bn	loop_1111
	ldub	[%l7 + 0x28],	%o0
	array32	%i3,	%i6,	%i0
	ldsh	[%l7 + 0x58],	%i1
loop_1111:
	ld	[%l7 + 0x50],	%f1
	fba	%fcc3,	loop_1112
	udiv	%l6,	0x1D9B,	%i5
	fnegd	%f10,	%f14
	fcmpeq16	%f8,	%f6,	%l2
loop_1112:
	ldsb	[%l7 + 0x0E],	%o3
	movcc	%icc,	%g6,	%o1
	ld	[%l7 + 0x2C],	%f8
	lduw	[%l7 + 0x60],	%i7
	fmovscc	%xcc,	%f8,	%f3
	fmovrslz	%g3,	%f0,	%f3
	stw	%g7,	[%l7 + 0x20]
	ldub	[%l7 + 0x6D],	%l1
	bge,pn	%icc,	loop_1113
	fandnot2	%f12,	%f6,	%f10
	subccc	%o7,	%g5,	%o6
	st	%f2,	[%l7 + 0x58]
loop_1113:
	fcmpes	%fcc0,	%f15,	%f14
	ldd	[%l7 + 0x78],	%f4
	ldsw	[%l7 + 0x4C],	%o2
	array32	%i2,	%l0,	%l5
	bvs,a	loop_1114
	std	%f6,	[%l7 + 0x40]
	fmovsg	%icc,	%f8,	%f11
	ldx	[%l7 + 0x48],	%l4
loop_1114:
	ba,pn	%icc,	loop_1115
	array8	%g2,	%g1,	%o4
	fbue,a	%fcc3,	loop_1116
	fmul8sux16	%f8,	%f12,	%f4
loop_1115:
	ldx	[%l7 + 0x40],	%i4
	ldd	[%l7 + 0x08],	%f0
loop_1116:
	tsubcc	%o5,	0x062B,	%g4
	tgu	%xcc,	0x3
	fmul8sux16	%f10,	%f14,	%f10
	fcmpd	%fcc3,	%f10,	%f14
	ldsb	[%l7 + 0x5E],	%l3
	mova	%icc,	%i3,	%o0
	orncc	%i0,	%i1,	%i6
	ldx	[%l7 + 0x38],	%i5
	edge16n	%l6,	%o3,	%l2
	bleu,a	%xcc,	loop_1117
	ldub	[%l7 + 0x61],	%g6
	fpsub16	%f12,	%f8,	%f8
	fmovde	%icc,	%f11,	%f1
loop_1117:
	lduh	[%l7 + 0x08],	%i7
	be,pt	%icc,	loop_1118
	lduh	[%l7 + 0x16],	%g3
	fnegd	%f14,	%f10
	fxor	%f10,	%f14,	%f4
loop_1118:
	bgu	loop_1119
	lduw	[%l7 + 0x08],	%o1
	ldd	[%l7 + 0x08],	%f0
	sub	%g7,	0x0E2D,	%o7
loop_1119:
	ldub	[%l7 + 0x66],	%g5
	edge8ln	%o6,	%l1,	%i2
	fpack32	%f10,	%f14,	%f4
	call	loop_1120
	nop
	setx loop_1121, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmuld8ulx16	%f1,	%f8,	%f8
	fcmple16	%f10,	%f12,	%l0
loop_1120:
	sth	%o2,	[%l7 + 0x7E]
loop_1121:
	fmul8sux16	%f8,	%f4,	%f14
	fmovsge	%icc,	%f7,	%f7
	mova	%icc,	%l5,	%g2
	lduh	[%l7 + 0x1E],	%l4
	nop
	setx loop_1122, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldsh	[%l7 + 0x3C],	%o4
	ldx	[%l7 + 0x10],	%i4
	bneg,pt	%xcc,	loop_1123
loop_1122:
	movpos	%icc,	%g1,	%o5
	subc	%g4,	0x09BF,	%i3
	stb	%l3,	[%l7 + 0x17]
loop_1123:
	ldub	[%l7 + 0x5F],	%i0
	fnot1s	%f13,	%f13
	tl	%xcc,	0x1
	edge16l	%o0,	%i1,	%i5
	fnegs	%f1,	%f2
	lduw	[%l7 + 0x64],	%l6
	ldx	[%l7 + 0x10],	%o3
	movn	%icc,	%i6,	%l2
	sll	%i7,	0x17,	%g3
	movleu	%xcc,	%o1,	%g6
	tpos	%xcc,	0x6
	fmovdvs	%icc,	%f7,	%f14
	movle	%xcc,	%g7,	%g5
	sth	%o7,	[%l7 + 0x68]
	ldsb	[%l7 + 0x0A],	%o6
	fabsd	%f4,	%f14
	movrgz	%i2,	0x2DC,	%l0
	edge8ln	%o2,	%l1,	%g2
	andncc	%l4,	%o4,	%i4
	edge16	%l5,	%o5,	%g1
	fmovdge	%icc,	%f4,	%f7
	edge8n	%i3,	%g4,	%i0
	fzeros	%f1
	fba	%fcc1,	loop_1124
	faligndata	%f8,	%f12,	%f2
	ldsb	[%l7 + 0x29],	%l3
	fnegd	%f14,	%f10
loop_1124:
	movle	%icc,	%i1,	%o0
	fmuld8sux16	%f11,	%f7,	%f2
	tge	%xcc,	0x7
	std	%f12,	[%l7 + 0x10]
	edge8ln	%i5,	%l6,	%i6
	mova	%xcc,	%l2,	%o3
	movneg	%xcc,	%i7,	%g3
	fpmerge	%f7,	%f14,	%f0
	stw	%g6,	[%l7 + 0x50]
	movgu	%icc,	%g7,	%g5
	fmovrdlez	%o7,	%f2,	%f14
	stx	%o6,	[%l7 + 0x28]
	edge16	%o1,	%i2,	%l0
	nop
	setx loop_1125, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fpsub32	%f14,	%f8,	%f12
	fbne	%fcc1,	loop_1126
	move	%xcc,	%o2,	%g2
loop_1125:
	tge	%xcc,	0x2
	srl	%l1,	0x0B,	%o4
loop_1126:
	bge,pn	%xcc,	loop_1127
	lduh	[%l7 + 0x6C],	%i4
	lduw	[%l7 + 0x6C],	%l4
	ldsh	[%l7 + 0x7C],	%o5
loop_1127:
	movrlez	%g1,	0x034,	%i3
	st	%f6,	[%l7 + 0x14]
	fmovdcs	%xcc,	%f6,	%f8
	fmovdneg	%xcc,	%f8,	%f4
	fpsub32s	%f11,	%f1,	%f12
	brlez,a	%g4,	loop_1128
	fnot1s	%f3,	%f1
	fmovdvs	%xcc,	%f4,	%f9
	fors	%f14,	%f4,	%f13
loop_1128:
	ldsh	[%l7 + 0x08],	%l5
	mova	%icc,	%l3,	%i0
	fcmpeq16	%f14,	%f6,	%o0
	ba,a,pt	%icc,	loop_1129
	ldsb	[%l7 + 0x52],	%i5
	fpsub16	%f2,	%f6,	%f6
	bvs,a	loop_1130
loop_1129:
	fmovrse	%i1,	%f12,	%f9
	lduh	[%l7 + 0x32],	%l6
	sth	%i6,	[%l7 + 0x62]
loop_1130:
	addc	%o3,	%i7,	%l2
	bl	loop_1131
	ld	[%l7 + 0x0C],	%f15
	srl	%g6,	%g3,	%g5
	siam	0x5
loop_1131:
	fcmps	%fcc0,	%f14,	%f10
	lduw	[%l7 + 0x6C],	%o7
	fmovdn	%icc,	%f15,	%f13
	ldsh	[%l7 + 0x12],	%g7
	fmovsle	%xcc,	%f13,	%f10
	fxors	%f7,	%f6,	%f14
	fpadd32s	%f9,	%f13,	%f15
	movge	%xcc,	%o6,	%o1
	ldd	[%l7 + 0x70],	%f4
	fmovse	%icc,	%f11,	%f14
	brnz,a	%i2,	loop_1132
	fzero	%f6
	stx	%o2,	[%l7 + 0x30]
	edge16	%l0,	%g2,	%o4
loop_1132:
	edge16l	%i4,	%l1,	%o5
	stw	%g1,	[%l7 + 0x78]
	tsubcctv	%i3,	%l4,	%l5
	srlx	%l3,	%i0,	%g4
	ldsb	[%l7 + 0x32],	%o0
	fblg	%fcc0,	loop_1133
	fpadd32	%f6,	%f10,	%f2
	movge	%xcc,	%i1,	%l6
	bge	%icc,	loop_1134
loop_1133:
	fnot2s	%f6,	%f12
	stw	%i5,	[%l7 + 0x18]
	movn	%xcc,	%i6,	%i7
loop_1134:
	fzeros	%f0
	fabss	%f4,	%f7
	fpackfix	%f12,	%f4
	brgez,a	%l2,	loop_1135
	stx	%o3,	[%l7 + 0x10]
	stb	%g3,	[%l7 + 0x51]
	fmovrdne	%g6,	%f14,	%f14
loop_1135:
	and	%o7,	0x1BC8,	%g7
	fbo	%fcc0,	loop_1136
	edge8	%o6,	%g5,	%i2
	ldx	[%l7 + 0x58],	%o1
	ld	[%l7 + 0x44],	%f3
loop_1136:
	fpmerge	%f7,	%f12,	%f0
	fors	%f15,	%f7,	%f9
	fbo,a	%fcc2,	loop_1137
	lduh	[%l7 + 0x0E],	%o2
	lduw	[%l7 + 0x64],	%l0
	te	%xcc,	0x6
loop_1137:
	tl	%xcc,	0x6
	fmovdne	%icc,	%f12,	%f6
	bleu,pn	%icc,	loop_1138
	brlz,a	%g2,	loop_1139
	fmovdvc	%icc,	%f12,	%f1
	andn	%o4,	0x1D66,	%i4
loop_1138:
	fmovsle	%icc,	%f5,	%f8
loop_1139:
	fmul8x16au	%f14,	%f14,	%f14
	stb	%o5,	[%l7 + 0x46]
	fmovsg	%xcc,	%f12,	%f6
	stx	%g1,	[%l7 + 0x08]
	fmovrdlez	%i3,	%f8,	%f0
	std	%f12,	[%l7 + 0x78]
	smul	%l1,	0x060E,	%l4
	fmovdcc	%xcc,	%f3,	%f11
	ld	[%l7 + 0x6C],	%f9
	ldsb	[%l7 + 0x21],	%l5
	stx	%i0,	[%l7 + 0x78]
	bvs,a,pt	%xcc,	loop_1140
	bne,a,pn	%xcc,	loop_1141
	fmovrdlz	%g4,	%f6,	%f0
	fcmped	%fcc2,	%f2,	%f6
loop_1140:
	fmovdpos	%xcc,	%f0,	%f10
loop_1141:
	fabss	%f2,	%f1
	srlx	%l3,	%o0,	%l6
	fzero	%f10
	stw	%i5,	[%l7 + 0x28]
	fors	%f4,	%f4,	%f12
	fnands	%f14,	%f15,	%f14
	udivx	%i1,	0x0E67,	%i7
	ld	[%l7 + 0x0C],	%f10
	alignaddr	%l2,	%i6,	%o3
	fmovrdlz	%g6,	%f6,	%f8
	umul	%o7,	0x195C,	%g7
	ldd	[%l7 + 0x48],	%f14
	ld	[%l7 + 0x10],	%f1
	fbul	%fcc1,	loop_1142
	tleu	%xcc,	0x4
	stw	%g3,	[%l7 + 0x44]
	std	%f6,	[%l7 + 0x58]
loop_1142:
	movre	%o6,	0x0D3,	%g5
	ldsw	[%l7 + 0x2C],	%o1
	ldsw	[%l7 + 0x2C],	%i2
	fcmpeq16	%f6,	%f0,	%o2
	stw	%l0,	[%l7 + 0x78]
	andcc	%o4,	%g2,	%i4
	ba	%xcc,	loop_1143
	fbo,a	%fcc1,	loop_1144
	smul	%g1,	0x0531,	%o5
	fzeros	%f4
loop_1143:
	sth	%i3,	[%l7 + 0x56]
loop_1144:
	sdiv	%l1,	0x1AF7,	%l5
	fpack16	%f14,	%f5
	lduh	[%l7 + 0x70],	%l4
	fxnor	%f0,	%f8,	%f8
	fmovrsgez	%g4,	%f13,	%f10
	ldx	[%l7 + 0x20],	%l3
	andcc	%i0,	%l6,	%o0
	lduw	[%l7 + 0x70],	%i5
	andncc	%i7,	%i1,	%i6
	movpos	%xcc,	%o3,	%g6
	fmovdge	%icc,	%f9,	%f5
	sth	%o7,	[%l7 + 0x6C]
	subc	%g7,	%l2,	%o6
	faligndata	%f0,	%f8,	%f10
	fmovdgu	%icc,	%f2,	%f3
	fpack16	%f0,	%f7
	ldsb	[%l7 + 0x53],	%g5
	st	%f8,	[%l7 + 0x48]
	lduh	[%l7 + 0x54],	%o1
	ldsw	[%l7 + 0x2C],	%g3
	lduh	[%l7 + 0x28],	%o2
	sth	%l0,	[%l7 + 0x4A]
	brgz	%o4,	loop_1145
	tgu	%xcc,	0x1
	fpsub16	%f4,	%f4,	%f10
	fands	%f11,	%f2,	%f7
loop_1145:
	edge16ln	%i2,	%g2,	%g1
	ldsw	[%l7 + 0x08],	%i4
	fabsd	%f2,	%f6
	edge16n	%i3,	%l1,	%o5
	fbo	%fcc0,	loop_1146
	ldsb	[%l7 + 0x4B],	%l5
	fpadd32	%f2,	%f6,	%f10
	fpack16	%f8,	%f8
loop_1146:
	bgu,pt	%icc,	loop_1147
	sth	%g4,	[%l7 + 0x74]
	fands	%f1,	%f11,	%f1
	movcc	%icc,	%l3,	%i0
loop_1147:
	ld	[%l7 + 0x48],	%f12
	st	%f8,	[%l7 + 0x30]
	sllx	%l4,	0x15,	%l6
	tl	%xcc,	0x0
	smulcc	%i5,	%i7,	%o0
	fmovsvs	%icc,	%f13,	%f3
	fmovdvs	%xcc,	%f9,	%f15
	fbl,a	%fcc3,	loop_1148
	brlez,a	%i6,	loop_1149
	bl,pt	%xcc,	loop_1150
	udiv	%i1,	0x1CA7,	%o3
loop_1148:
	fmovsge	%xcc,	%f3,	%f7
loop_1149:
	ldsb	[%l7 + 0x6E],	%o7
loop_1150:
	ldsw	[%l7 + 0x70],	%g6
	fmuld8sux16	%f3,	%f0,	%f0
	udiv	%g7,	0x13B5,	%o6
	fabsd	%f2,	%f12
	umul	%g5,	%l2,	%o1
	bl	loop_1151
	ba,a,pt	%xcc,	loop_1152
	ldd	[%l7 + 0x38],	%f0
	add	%g3,	%o2,	%o4
loop_1151:
	lduh	[%l7 + 0x62],	%i2
loop_1152:
	ldsw	[%l7 + 0x48],	%g2
	fmuld8ulx16	%f5,	%f9,	%f12
	fmovrdne	%g1,	%f14,	%f0
	fmovda	%xcc,	%f10,	%f12
	sllx	%i4,	0x07,	%i3
	ldx	[%l7 + 0x08],	%l1
	stb	%l0,	[%l7 + 0x0C]
	ldx	[%l7 + 0x20],	%l5
	fmovda	%xcc,	%f14,	%f3
	bg	%icc,	loop_1153
	fbule	%fcc3,	loop_1154
	bvs,a	loop_1155
	movpos	%icc,	%g4,	%l3
loop_1153:
	array16	%i0,	%l4,	%l6
loop_1154:
	add	%i5,	0x1F0C,	%o5
loop_1155:
	fmovdcc	%icc,	%f1,	%f5
	movne	%icc,	%o0,	%i6
	fmovdvc	%xcc,	%f10,	%f14
	mulx	%i1,	%i7,	%o7
	ldd	[%l7 + 0x38],	%f4
	fmul8sux16	%f0,	%f6,	%f0
	ba,a,pn	%icc,	loop_1156
	tn	%xcc,	0x5
	std	%f8,	[%l7 + 0x30]
	sth	%g6,	[%l7 + 0x58]
loop_1156:
	stx	%g7,	[%l7 + 0x60]
	umulcc	%o3,	0x0573,	%o6
	fmovrdgz	%l2,	%f0,	%f0
	fblg	%fcc3,	loop_1157
	fxnors	%f10,	%f6,	%f14
	umulcc	%g5,	0x05DD,	%g3
	fmovrdgz	%o2,	%f6,	%f6
loop_1157:
	brz	%o4,	loop_1158
	lduh	[%l7 + 0x3A],	%o1
	fpadd16	%f6,	%f0,	%f12
	fxnor	%f0,	%f0,	%f6
loop_1158:
	stb	%i2,	[%l7 + 0x25]
	fornot1	%f12,	%f2,	%f4
	alignaddrl	%g1,	%g2,	%i3
	fnors	%f1,	%f2,	%f0
	fnor	%f2,	%f10,	%f10
	fmovrdne	%i4,	%f14,	%f4
	and	%l1,	0x1840,	%l0
	fandnot2s	%f0,	%f10,	%f9
	fones	%f1
	ld	[%l7 + 0x48],	%f4
	movrne	%g4,	0x064,	%l5
	fmovrsgez	%l3,	%f13,	%f13
	ldd	[%l7 + 0x18],	%f2
	stw	%i0,	[%l7 + 0x38]
	bshuffle	%f6,	%f2,	%f6
	movvc	%xcc,	%l6,	%l4
	lduw	[%l7 + 0x4C],	%i5
	orncc	%o5,	0x0D80,	%o0
	ldsh	[%l7 + 0x7A],	%i6
	fxor	%f14,	%f14,	%f0
	tle	%icc,	0x0
	ldsh	[%l7 + 0x54],	%i7
	srlx	%i1,	0x10,	%g6
	fandnot1	%f6,	%f12,	%f2
	fmovdgu	%icc,	%f2,	%f7
	bne	loop_1159
	tsubcctv	%o7,	%g7,	%o3
	fsrc1s	%f1,	%f2
	fmovsvs	%xcc,	%f15,	%f9
loop_1159:
	mulx	%o6,	%l2,	%g5
	subc	%g3,	%o4,	%o1
	fmovdleu	%icc,	%f7,	%f3
	fbo,a	%fcc1,	loop_1160
	ldsb	[%l7 + 0x31],	%i2
	fbne,a	%fcc2,	loop_1161
	lduw	[%l7 + 0x0C],	%g1
loop_1160:
	fmovde	%xcc,	%f4,	%f5
	lduw	[%l7 + 0x18],	%o2
loop_1161:
	fmul8x16au	%f4,	%f10,	%f12
	movn	%icc,	%g2,	%i4
	fbul	%fcc1,	loop_1162
	movg	%xcc,	%i3,	%l0
	tn	%icc,	0x7
	orn	%g4,	%l5,	%l1
loop_1162:
	fsrc2	%f14,	%f2
	ldsb	[%l7 + 0x23],	%i0
	tn	%icc,	0x1
	umulcc	%l6,	%l3,	%i5
	bg,pt	%xcc,	loop_1163
	orcc	%l4,	%o5,	%i6
	fmuld8ulx16	%f3,	%f4,	%f14
	fba,a	%fcc1,	loop_1164
loop_1163:
	ldub	[%l7 + 0x51],	%i7
	sth	%i1,	[%l7 + 0x46]
	ba,pt	%icc,	loop_1165
loop_1164:
	xnorcc	%o0,	0x18D9,	%o7
	add	%g7,	0x1974,	%g6
	fnot1s	%f3,	%f14
loop_1165:
	ld	[%l7 + 0x10],	%f11
	fxnor	%f10,	%f0,	%f2
	orcc	%o3,	%o6,	%g5
	lduh	[%l7 + 0x3E],	%g3
	fpack16	%f6,	%f5
	movrgez	%o4,	0x082,	%l2
	fnegd	%f6,	%f8
	bshuffle	%f8,	%f4,	%f14
	bvc,pn	%xcc,	loop_1166
	bcs,pn	%xcc,	loop_1167
	bg	%icc,	loop_1168
	fmovsleu	%xcc,	%f9,	%f10
loop_1166:
	fcmpne16	%f6,	%f4,	%o1
loop_1167:
	ldx	[%l7 + 0x18],	%g1
loop_1168:
	fcmpne16	%f0,	%f6,	%o2
	tle	%icc,	0x6
	fmul8x16al	%f5,	%f1,	%f0
	taddcc	%g2,	0x150A,	%i4
	ldx	[%l7 + 0x18],	%i3
	fornot2	%f10,	%f2,	%f4
	fxor	%f10,	%f0,	%f12
	orcc	%l0,	0x0CA8,	%g4
	stw	%l5,	[%l7 + 0x54]
	tle	%xcc,	0x5
	fmovsn	%icc,	%f2,	%f6
	mova	%xcc,	%l1,	%i0
	ldub	[%l7 + 0x13],	%i2
	stb	%l3,	[%l7 + 0x49]
	fbge	%fcc1,	loop_1169
	ldd	[%l7 + 0x10],	%f10
	stx	%l6,	[%l7 + 0x30]
	st	%f8,	[%l7 + 0x2C]
loop_1169:
	fba,a	%fcc3,	loop_1170
	ldub	[%l7 + 0x22],	%i5
	sllx	%o5,	0x1B,	%l4
	fmovda	%xcc,	%f5,	%f2
loop_1170:
	stx	%i7,	[%l7 + 0x68]
	fnors	%f10,	%f14,	%f10
	ldsb	[%l7 + 0x42],	%i6
	tn	%icc,	0x7
	fzeros	%f7
	fmul8x16	%f1,	%f8,	%f10
	ldub	[%l7 + 0x79],	%o0
	nop
	setx loop_1171, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	sth	%o7,	[%l7 + 0x6C]
	ldsh	[%l7 + 0x0C],	%i1
	bvs,a,pt	%icc,	loop_1172
loop_1171:
	fornot2	%f8,	%f10,	%f2
	lduh	[%l7 + 0x54],	%g7
	nop
	setx loop_1173, %l0, %l1
	jmpl %l1, %g6
loop_1172:
	ldd	[%l7 + 0x48],	%f12
	lduh	[%l7 + 0x78],	%o3
	ba,a	loop_1174
loop_1173:
	fcmpne16	%f12,	%f14,	%g5
	st	%f11,	[%l7 + 0x0C]
	fmovdpos	%icc,	%f8,	%f3
loop_1174:
	movvc	%xcc,	%o6,	%g3
	fnot1	%f4,	%f10
	be	%xcc,	loop_1175
	andncc	%l2,	%o1,	%o4
	andcc	%g1,	0x0D05,	%o2
	fcmple32	%f0,	%f14,	%i4
loop_1175:
	fbu	%fcc1,	loop_1176
	ldsw	[%l7 + 0x18],	%g2
	fmovdgu	%icc,	%f11,	%f14
	srlx	%l0,	%i3,	%g4
loop_1176:
	lduh	[%l7 + 0x7A],	%l5
	fnegs	%f14,	%f6
	fmovscc	%icc,	%f12,	%f15
	ldsb	[%l7 + 0x5A],	%i0
	bgu,a,pn	%xcc,	loop_1177
	udivx	%i2,	0x0466,	%l1
	sra	%l3,	%l6,	%i5
	fmovscs	%icc,	%f13,	%f6
loop_1177:
	subccc	%l4,	%i7,	%i6
	lduw	[%l7 + 0x20],	%o0
	ld	[%l7 + 0x28],	%f6
	movvc	%xcc,	%o7,	%o5
	stb	%g7,	[%l7 + 0x78]
	stb	%i1,	[%l7 + 0x17]
	st	%f8,	[%l7 + 0x40]
	movle	%icc,	%g6,	%g5
	ldsb	[%l7 + 0x55],	%o3
	lduh	[%l7 + 0x6C],	%o6
	tge	%xcc,	0x1
	tsubcctv	%g3,	%l2,	%o4
	edge16l	%g1,	%o2,	%o1
	xnorcc	%i4,	%g2,	%l0
	for	%f10,	%f2,	%f8
	sth	%g4,	[%l7 + 0x32]
	ldsb	[%l7 + 0x29],	%l5
	lduh	[%l7 + 0x46],	%i3
	edge32l	%i0,	%l1,	%l3
	sth	%i2,	[%l7 + 0x12]
	stx	%i5,	[%l7 + 0x48]
	fpadd32	%f14,	%f4,	%f14
	fnegs	%f14,	%f0
	tgu	%icc,	0x5
	st	%f13,	[%l7 + 0x5C]
	ldsw	[%l7 + 0x14],	%l6
	edge32n	%i7,	%i6,	%l4
	fmovdn	%xcc,	%f8,	%f1
	fabsd	%f2,	%f6
	fbn	%fcc0,	loop_1178
	st	%f0,	[%l7 + 0x48]
	ld	[%l7 + 0x18],	%f0
	movvc	%icc,	%o0,	%o7
loop_1178:
	sdivcc	%g7,	0x068F,	%o5
	ldsw	[%l7 + 0x14],	%i1
	st	%f14,	[%l7 + 0x08]
	stx	%g5,	[%l7 + 0x68]
	ld	[%l7 + 0x78],	%f9
	tleu	%xcc,	0x4
	fand	%f6,	%f14,	%f14
	tleu	%icc,	0x4
	fnands	%f5,	%f6,	%f11
	stx	%g6,	[%l7 + 0x48]
	st	%f12,	[%l7 + 0x0C]
	fpadd32s	%f0,	%f12,	%f3
	stw	%o3,	[%l7 + 0x58]
	fmovdle	%icc,	%f1,	%f13
	fbn,a	%fcc1,	loop_1179
	fnot1s	%f8,	%f9
	fsrc1s	%f11,	%f5
	movneg	%xcc,	%o6,	%g3
loop_1179:
	movl	%xcc,	%l2,	%g1
	lduw	[%l7 + 0x48],	%o4
	st	%f2,	[%l7 + 0x14]
	bneg,a,pt	%icc,	loop_1180
	bl,a	loop_1181
	stx	%o2,	[%l7 + 0x40]
	movne	%xcc,	%o1,	%i4
loop_1180:
	fpadd16s	%f6,	%f11,	%f7
loop_1181:
	fmovs	%f10,	%f9
	fmovsvc	%icc,	%f7,	%f1
	bgu,a,pt	%xcc,	loop_1182
	ldd	[%l7 + 0x38],	%f8
	tpos	%icc,	0x3
	ldsw	[%l7 + 0x20],	%g2
loop_1182:
	addc	%l0,	0x0618,	%g4
	fmovscs	%icc,	%f0,	%f7
	fmovsn	%icc,	%f11,	%f5
	lduw	[%l7 + 0x48],	%l5
	umul	%i0,	%l1,	%i3
	stx	%i2,	[%l7 + 0x30]
	fmovsvc	%xcc,	%f3,	%f10
	fmovdcs	%xcc,	%f9,	%f6
	fandnot1	%f2,	%f2,	%f0
	fcmpne16	%f8,	%f2,	%i5
	fexpand	%f4,	%f14
	fmovdvc	%icc,	%f10,	%f11
	bneg,a	loop_1183
	bshuffle	%f2,	%f6,	%f8
	stx	%l3,	[%l7 + 0x50]
	addcc	%l6,	0x13E9,	%i6
loop_1183:
	ldx	[%l7 + 0x50],	%l4
	ld	[%l7 + 0x74],	%f4
	fmovda	%icc,	%f13,	%f7
	fmovsge	%icc,	%f1,	%f3
	ldsw	[%l7 + 0x68],	%i7
	edge32n	%o0,	%g7,	%o5
	andn	%o7,	%i1,	%g5
	movge	%xcc,	%o3,	%g6
	xor	%g3,	%o6,	%g1
	fmovs	%f7,	%f7
	fmovsa	%xcc,	%f11,	%f6
	stx	%l2,	[%l7 + 0x50]
	mova	%xcc,	%o4,	%o2
	fsrc1	%f2,	%f12
	edge8n	%o1,	%i4,	%l0
	array8	%g2,	%g4,	%i0
	orcc	%l5,	%i3,	%l1
	fmovsg	%icc,	%f11,	%f1
	bneg,a,pn	%xcc,	loop_1184
	faligndata	%f0,	%f8,	%f10
	be	%xcc,	loop_1185
	movrgz	%i5,	0x0FB,	%l3
loop_1184:
	fpack32	%f8,	%f10,	%f0
	st	%f3,	[%l7 + 0x6C]
loop_1185:
	tcc	%icc,	0x1
	edge8l	%l6,	%i6,	%l4
	fbo,a	%fcc3,	loop_1186
	brlez,a	%i2,	loop_1187
	fmovsneg	%icc,	%f11,	%f6
	movcc	%xcc,	%i7,	%o0
loop_1186:
	fbl	%fcc0,	loop_1188
loop_1187:
	fmovda	%xcc,	%f15,	%f0
	movrlez	%o5,	%o7,	%i1
	edge32ln	%g5,	%g7,	%g6
loop_1188:
	ldx	[%l7 + 0x68],	%o3
	tcs	%icc,	0x7
	ldub	[%l7 + 0x31],	%o6
	sdiv	%g1,	0x188F,	%g3
	lduh	[%l7 + 0x70],	%o4
	ldsb	[%l7 + 0x13],	%l2
	ba,a	%icc,	loop_1189
	lduw	[%l7 + 0x24],	%o2
	movne	%icc,	%o1,	%i4
	tsubcctv	%l0,	0x11F5,	%g4
loop_1189:
	orncc	%g2,	%i0,	%i3
	ldsb	[%l7 + 0x7A],	%l1
	ldsh	[%l7 + 0x52],	%i5
	call	loop_1190
	edge32n	%l3,	%l5,	%l6
	fpsub32	%f10,	%f2,	%f0
	st	%f13,	[%l7 + 0x78]
loop_1190:
	addc	%l4,	%i2,	%i6
	ta	%xcc,	0x5
	nop
	setx loop_1191, %l0, %l1
	jmpl %l1, %i7
	sdivx	%o5,	0x0D22,	%o0
	fpsub32s	%f2,	%f9,	%f5
	sth	%o7,	[%l7 + 0x32]
loop_1191:
	edge8n	%i1,	%g5,	%g7
	ldx	[%l7 + 0x68],	%g6
	fmovsge	%xcc,	%f6,	%f12
	mulx	%o6,	%o3,	%g1
	brgz	%g3,	loop_1192
	bl	%icc,	loop_1193
	stw	%o4,	[%l7 + 0x60]
	fpadd16	%f14,	%f2,	%f6
loop_1192:
	addc	%o2,	%l2,	%i4
loop_1193:
	ld	[%l7 + 0x58],	%f12
	bcs,pn	%xcc,	loop_1194
	umulcc	%o1,	0x166C,	%l0
	fmovrdgz	%g4,	%f4,	%f14
	fcmple16	%f14,	%f0,	%g2
loop_1194:
	sdivx	%i0,	0x00A0,	%i3
	fmovsne	%xcc,	%f11,	%f6
	fmovsa	%icc,	%f1,	%f8
	fpsub16s	%f10,	%f7,	%f13
	lduw	[%l7 + 0x44],	%l1
	srax	%l3,	%l5,	%i5
	ldsw	[%l7 + 0x24],	%l6
	ldub	[%l7 + 0x53],	%l4
	stb	%i6,	[%l7 + 0x38]
	edge32l	%i2,	%o5,	%i7
	fone	%f2
	ldd	[%l7 + 0x20],	%f8
	addcc	%o7,	0x03B5,	%i1
	sth	%o0,	[%l7 + 0x0A]
	be	%xcc,	loop_1195
	fmovdvc	%xcc,	%f7,	%f5
	sllx	%g5,	0x04,	%g7
	std	%f10,	[%l7 + 0x30]
loop_1195:
	lduw	[%l7 + 0x74],	%o6
	tn	%icc,	0x3
	fmovscs	%icc,	%f12,	%f14
	fcmpne16	%f6,	%f14,	%o3
	call	loop_1196
	ldd	[%l7 + 0x38],	%f6
	stb	%g6,	[%l7 + 0x4B]
	fble	%fcc3,	loop_1197
loop_1196:
	stw	%g1,	[%l7 + 0x68]
	st	%f8,	[%l7 + 0x20]
	ldd	[%l7 + 0x50],	%f4
loop_1197:
	ldub	[%l7 + 0x5F],	%o4
	te	%icc,	0x6
	fmovse	%xcc,	%f10,	%f2
	fbn	%fcc1,	loop_1198
	ldd	[%l7 + 0x20],	%f4
	ldub	[%l7 + 0x0D],	%g3
	fmovdge	%xcc,	%f4,	%f3
loop_1198:
	fandnot1	%f6,	%f2,	%f8
	ldx	[%l7 + 0x38],	%l2
	fbe	%fcc0,	loop_1199
	fzeros	%f15
	fpsub32	%f4,	%f10,	%f10
	and	%o2,	%o1,	%l0
loop_1199:
	fcmpgt16	%f2,	%f0,	%i4
	fxors	%f7,	%f10,	%f9
	ble,pn	%icc,	loop_1200
	movgu	%icc,	%g4,	%g2
	fmovdle	%icc,	%f1,	%f2
	fmul8sux16	%f8,	%f12,	%f10
loop_1200:
	movrlez	%i3,	0x300,	%i0
	brlez	%l3,	loop_1201
	fzeros	%f6
	fpsub32	%f8,	%f2,	%f2
	lduw	[%l7 + 0x3C],	%l5
loop_1201:
	siam	0x4
	fmovsle	%icc,	%f1,	%f6
	ldub	[%l7 + 0x1A],	%i5
	ldsh	[%l7 + 0x38],	%l6
	ldsw	[%l7 + 0x10],	%l1
	tpos	%icc,	0x5
	ldsb	[%l7 + 0x6C],	%i6
	lduw	[%l7 + 0x0C],	%l4
	ld	[%l7 + 0x44],	%f11
	fmovda	%icc,	%f7,	%f8
	sdivcc	%o5,	0x15BD,	%i2
	alignaddr	%i7,	%o7,	%o0
	fmovspos	%icc,	%f2,	%f6
	fmovsneg	%icc,	%f0,	%f1
	stb	%i1,	[%l7 + 0x48]
	bcc,pt	%icc,	loop_1202
	orncc	%g5,	0x0021,	%o6
	tl	%xcc,	0x6
	fcmped	%fcc2,	%f14,	%f10
loop_1202:
	alignaddr	%g7,	%g6,	%o3
	ldsw	[%l7 + 0x40],	%g1
	tge	%icc,	0x1
	and	%g3,	0x0C24,	%o4
	xor	%o2,	0x1C56,	%o1
	nop
	setx loop_1203, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fpadd32	%f2,	%f0,	%f12
	lduw	[%l7 + 0x20],	%l0
	fmovsle	%xcc,	%f9,	%f12
loop_1203:
	tneg	%icc,	0x5
	sth	%i4,	[%l7 + 0x76]
	ldsb	[%l7 + 0x49],	%g4
	fbl	%fcc3,	loop_1204
	bleu,a	%xcc,	loop_1205
	lduw	[%l7 + 0x10],	%l2
	popc	0x0240,	%g2
loop_1204:
	edge32ln	%i0,	%l3,	%i3
loop_1205:
	stx	%l5,	[%l7 + 0x20]
	fnands	%f10,	%f8,	%f12
	xorcc	%l6,	0x054E,	%l1
	edge16	%i6,	%i5,	%l4
	ldd	[%l7 + 0x60],	%f10
	brgz,a	%o5,	loop_1206
	addccc	%i7,	%o7,	%o0
	fbo,a	%fcc3,	loop_1207
	ldx	[%l7 + 0x30],	%i2
loop_1206:
	fmovdne	%xcc,	%f12,	%f15
	fcmpne32	%f8,	%f6,	%i1
loop_1207:
	lduw	[%l7 + 0x54],	%o6
	fzeros	%f6
	bn,a,pn	%xcc,	loop_1208
	fbn,a	%fcc2,	loop_1209
	fpack32	%f4,	%f12,	%f0
	ble	loop_1210
loop_1208:
	xnorcc	%g7,	%g5,	%g6
loop_1209:
	fornot2	%f4,	%f6,	%f2
	ldx	[%l7 + 0x70],	%o3
loop_1210:
	stb	%g3,	[%l7 + 0x6B]
	stx	%g1,	[%l7 + 0x08]
	bleu,a	loop_1211
	te	%icc,	0x3
	fmovsn	%xcc,	%f6,	%f3
	movg	%xcc,	%o4,	%o2
loop_1211:
	fornot1	%f14,	%f10,	%f12
	movleu	%xcc,	%o1,	%l0
	andcc	%i4,	%l2,	%g4
	ldsh	[%l7 + 0x0A],	%g2
	fmovsl	%icc,	%f8,	%f9
	brgez	%l3,	loop_1212
	orncc	%i3,	%l5,	%l6
	tvs	%xcc,	0x1
	ldub	[%l7 + 0x2B],	%i0
loop_1212:
	stb	%i6,	[%l7 + 0x68]
	stw	%i5,	[%l7 + 0x40]
	fnor	%f2,	%f2,	%f14
	st	%f6,	[%l7 + 0x6C]
	edge32l	%l4,	%l1,	%o5
	fnand	%f10,	%f14,	%f10
	fnegd	%f8,	%f2
	fmovde	%xcc,	%f9,	%f10
	sra	%i7,	%o7,	%i2
	fpsub16s	%f8,	%f0,	%f13
	lduh	[%l7 + 0x16],	%i1
	umulcc	%o0,	0x15D7,	%o6
	array16	%g7,	%g5,	%o3
	ldsb	[%l7 + 0x65],	%g3
	fmovrsgz	%g1,	%f3,	%f13
	st	%f11,	[%l7 + 0x58]
	srlx	%o4,	0x09,	%o2
	sth	%o1,	[%l7 + 0x76]
	stb	%g6,	[%l7 + 0x2A]
	te	%xcc,	0x5
	lduw	[%l7 + 0x74],	%i4
	tn	%icc,	0x7
	fornot1	%f2,	%f14,	%f12
	st	%f8,	[%l7 + 0x4C]
	lduh	[%l7 + 0x68],	%l0
	array32	%l2,	%g2,	%g4
	fmul8x16al	%f9,	%f10,	%f0
	fbug	%fcc3,	loop_1213
	std	%f6,	[%l7 + 0x10]
	tg	%xcc,	0x2
	bleu,pt	%xcc,	loop_1214
loop_1213:
	movvs	%icc,	%i3,	%l5
	movneg	%icc,	%l6,	%l3
	sethi	0x044D,	%i0
loop_1214:
	fornot2	%f4,	%f14,	%f12
	call	loop_1215
	fandnot1	%f2,	%f12,	%f4
	ldx	[%l7 + 0x18],	%i6
	ldsh	[%l7 + 0x4C],	%l4
loop_1215:
	movle	%icc,	%l1,	%o5
	fcmpd	%fcc1,	%f14,	%f12
	edge8l	%i5,	%o7,	%i2
	fbne,a	%fcc0,	loop_1216
	edge32ln	%i7,	%i1,	%o0
	call	loop_1217
	stw	%g7,	[%l7 + 0x58]
loop_1216:
	ldsb	[%l7 + 0x49],	%g5
	ldsw	[%l7 + 0x64],	%o3
loop_1217:
	edge32	%g3,	%o6,	%g1
	ldd	[%l7 + 0x68],	%f8
	stw	%o4,	[%l7 + 0x6C]
	orncc	%o2,	%g6,	%i4
	srax	%l0,	%l2,	%o1
	std	%f14,	[%l7 + 0x20]
	smulcc	%g2,	0x17FD,	%i3
	fpsub32	%f10,	%f4,	%f14
	movgu	%icc,	%l5,	%l6
	fmovrslez	%l3,	%f11,	%f5
	fbe	%fcc0,	loop_1218
	brlz	%g4,	loop_1219
	fbu	%fcc2,	loop_1220
	addccc	%i0,	0x04BF,	%i6
loop_1218:
	brlz	%l1,	loop_1221
loop_1219:
	fmovs	%f8,	%f4
loop_1220:
	fmovdneg	%icc,	%f0,	%f13
	bvs	loop_1222
loop_1221:
	fmovdge	%xcc,	%f10,	%f9
	fcmpes	%fcc2,	%f4,	%f7
	fmovsvs	%icc,	%f3,	%f12
loop_1222:
	lduw	[%l7 + 0x18],	%l4
	fandnot2s	%f12,	%f5,	%f12
	ldd	[%l7 + 0x18],	%f8
	edge16n	%o5,	%o7,	%i5
	ldd	[%l7 + 0x30],	%f6
	fmovrdgez	%i7,	%f8,	%f2
	ldsh	[%l7 + 0x12],	%i1
	movge	%icc,	%o0,	%i2
	bcc,a,pn	%xcc,	loop_1223
	taddcctv	%g5,	%o3,	%g3
	ldub	[%l7 + 0x65],	%g7
	fmovsneg	%xcc,	%f14,	%f14
loop_1223:
	mova	%icc,	%o6,	%g1
	edge32	%o4,	%g6,	%o2
	bcc,a	%icc,	loop_1224
	stw	%i4,	[%l7 + 0x50]
	array16	%l2,	%o1,	%l0
	bvc,a	%xcc,	loop_1225
loop_1224:
	fmovdg	%xcc,	%f0,	%f15
	ldub	[%l7 + 0x5C],	%i3
	addccc	%l5,	0x10A7,	%l6
loop_1225:
	fmuld8ulx16	%f0,	%f11,	%f4
	ldub	[%l7 + 0x0E],	%l3
	addccc	%g2,	%i0,	%g4
	fpack32	%f10,	%f8,	%f2
	fmul8sux16	%f12,	%f8,	%f2
	fpadd16	%f6,	%f0,	%f8
	stb	%l1,	[%l7 + 0x63]
	ldd	[%l7 + 0x68],	%f12
	fxors	%f14,	%f12,	%f13
	fsrc1	%f0,	%f2
	ld	[%l7 + 0x64],	%f14
	tn	%xcc,	0x2
	array8	%l4,	%i6,	%o7
	ba	%icc,	loop_1226
	fbe	%fcc2,	loop_1227
	fnor	%f2,	%f0,	%f14
	ldsw	[%l7 + 0x5C],	%i5
loop_1226:
	edge32l	%o5,	%i7,	%i1
loop_1227:
	bshuffle	%f0,	%f6,	%f2
	xor	%i2,	%g5,	%o3
	tl	%icc,	0x1
	movneg	%xcc,	%g3,	%o0
	ldx	[%l7 + 0x18],	%g7
	fpadd16	%f2,	%f6,	%f0
	fcmpne16	%f0,	%f4,	%g1
	ldsh	[%l7 + 0x3A],	%o6
	orn	%g6,	0x1967,	%o2
	fmovdge	%icc,	%f2,	%f4
	movneg	%icc,	%i4,	%l2
	andncc	%o4,	%o1,	%i3
	fabss	%f3,	%f12
	fbule,a	%fcc1,	loop_1228
	bleu	%xcc,	loop_1229
	fmovrslez	%l5,	%f12,	%f2
	fba	%fcc1,	loop_1230
loop_1228:
	fmovrslz	%l6,	%f4,	%f6
loop_1229:
	fmovrdlez	%l3,	%f12,	%f0
	fabss	%f12,	%f9
loop_1230:
	fmovrsgz	%l0,	%f14,	%f7
	fabsd	%f4,	%f6
	ldsb	[%l7 + 0x6A],	%g2
	std	%f12,	[%l7 + 0x20]
	fmul8sux16	%f2,	%f2,	%f4
	fmovsneg	%icc,	%f8,	%f12
	sll	%i0,	%l1,	%g4
	fpack32	%f6,	%f8,	%f6
	fmovrse	%l4,	%f5,	%f12
	st	%f8,	[%l7 + 0x10]
	stx	%o7,	[%l7 + 0x38]
	fxor	%f12,	%f14,	%f10
	fmovdg	%xcc,	%f15,	%f11
	ldsb	[%l7 + 0x57],	%i5
	fbul,a	%fcc3,	loop_1231
	bne,pt	%xcc,	loop_1232
	fone	%f12
	fcmpes	%fcc0,	%f7,	%f8
loop_1231:
	fcmple16	%f12,	%f0,	%o5
loop_1232:
	st	%f11,	[%l7 + 0x64]
	edge32ln	%i7,	%i1,	%i6
	stb	%i2,	[%l7 + 0x36]
	sllx	%o3,	0x07,	%g3
	edge32	%g5,	%g7,	%o0
	edge16ln	%g1,	%o6,	%g6
	fmovdn	%xcc,	%f6,	%f0
	fmovsne	%xcc,	%f7,	%f10
	bshuffle	%f0,	%f12,	%f0
	fmovsa	%icc,	%f15,	%f0
	st	%f7,	[%l7 + 0x30]
	andcc	%o2,	%i4,	%o4
	fmovscs	%xcc,	%f5,	%f0
	fmovdpos	%icc,	%f3,	%f14
	array16	%o1,	%i3,	%l2
	ldsw	[%l7 + 0x6C],	%l6
	fbu	%fcc3,	loop_1233
	fzeros	%f5
	fpmerge	%f2,	%f10,	%f6
	stx	%l5,	[%l7 + 0x60]
loop_1233:
	brgz,a	%l3,	loop_1234
	fxor	%f2,	%f6,	%f8
	fandnot1s	%f9,	%f14,	%f9
	stw	%g2,	[%l7 + 0x1C]
loop_1234:
	udiv	%i0,	0x067C,	%l0
	or	%g4,	0x1613,	%l4
	fbule	%fcc3,	loop_1235
	fcmpne32	%f6,	%f10,	%o7
	tleu	%xcc,	0x1
	ldub	[%l7 + 0x46],	%l1
loop_1235:
	bleu,a,pn	%xcc,	loop_1236
	edge32n	%i5,	%o5,	%i1
	pdist	%f6,	%f8,	%f6
	stw	%i7,	[%l7 + 0x70]
loop_1236:
	array32	%i6,	%i2,	%g3
	andncc	%o3,	%g7,	%o0
	orn	%g1,	0x11AE,	%o6
	edge8	%g6,	%g5,	%i4
	fmovdle	%icc,	%f10,	%f1
	taddcc	%o2,	0x1889,	%o4
	lduw	[%l7 + 0x6C],	%i3
	subccc	%o1,	%l2,	%l6
	std	%f12,	[%l7 + 0x28]
	move	%icc,	%l5,	%l3
	lduw	[%l7 + 0x28],	%i0
	fandnot2s	%f3,	%f6,	%f5
	fone	%f10
	ba,a	%icc,	loop_1237
	fors	%f10,	%f1,	%f4
	movre	%g2,	%l0,	%l4
	bg,a,pt	%xcc,	loop_1238
loop_1237:
	edge16	%o7,	%l1,	%g4
	fmovsneg	%icc,	%f12,	%f2
	nop
	setx loop_1239, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_1238:
	fmovrsgez	%o5,	%f7,	%f14
	fble,a	%fcc0,	loop_1240
	stb	%i5,	[%l7 + 0x18]
loop_1239:
	fmovsvc	%xcc,	%f2,	%f0
	bcs,pn	%xcc,	loop_1241
loop_1240:
	ldsh	[%l7 + 0x20],	%i7
	and	%i6,	0x0C20,	%i1
	tleu	%xcc,	0x6
loop_1241:
	ba,a,pt	%xcc,	loop_1242
	fmovrde	%i2,	%f4,	%f2
	fmovrdgez	%o3,	%f14,	%f14
	ld	[%l7 + 0x20],	%f4
loop_1242:
	stx	%g7,	[%l7 + 0x58]
	stb	%o0,	[%l7 + 0x74]
	lduh	[%l7 + 0x5E],	%g1
	fbn,a	%fcc1,	loop_1243
	std	%f12,	[%l7 + 0x38]
	fmovs	%f15,	%f9
	std	%f4,	[%l7 + 0x38]
loop_1243:
	stw	%g3,	[%l7 + 0x50]
	stw	%o6,	[%l7 + 0x78]
	sll	%g5,	%g6,	%i4
	fors	%f0,	%f9,	%f5
	fmovsn	%xcc,	%f7,	%f12
	movpos	%icc,	%o4,	%o2
	fmovdne	%xcc,	%f3,	%f8
	tn	%icc,	0x1
	fcmpes	%fcc3,	%f5,	%f3
	or	%i3,	%l2,	%l6
	stb	%o1,	[%l7 + 0x29]
	st	%f7,	[%l7 + 0x78]
	ldsh	[%l7 + 0x08],	%l3
	fmovdleu	%xcc,	%f11,	%f8
	fmovrdgz	%l5,	%f10,	%f6
	movl	%icc,	%g2,	%l0
	fmovsvc	%xcc,	%f14,	%f9
	fmovscs	%icc,	%f1,	%f15
	xnorcc	%i0,	0x04EC,	%o7
	ldub	[%l7 + 0x47],	%l1
	fmovde	%icc,	%f12,	%f1
	fmovsl	%icc,	%f5,	%f13
	fmovrse	%l4,	%f8,	%f0
	lduw	[%l7 + 0x68],	%o5
	fbul	%fcc2,	loop_1244
	stw	%g4,	[%l7 + 0x2C]
	tpos	%xcc,	0x3
	brz	%i7,	loop_1245
loop_1244:
	fbue	%fcc3,	loop_1246
	brz,a	%i5,	loop_1247
	fmovrsgez	%i6,	%f7,	%f7
loop_1245:
	fmovdgu	%xcc,	%f15,	%f14
loop_1246:
	fmovrse	%i1,	%f1,	%f5
loop_1247:
	stw	%i2,	[%l7 + 0x50]
	stx	%g7,	[%l7 + 0x08]
	lduh	[%l7 + 0x46],	%o3
	bcs,a,pt	%icc,	loop_1248
	bshuffle	%f2,	%f0,	%f14
	fsrc1s	%f6,	%f12
	ldub	[%l7 + 0x72],	%o0
loop_1248:
	fmovdcc	%xcc,	%f2,	%f1
	tge	%icc,	0x4
	movleu	%xcc,	%g3,	%g1
	ld	[%l7 + 0x50],	%f11
	orncc	%g5,	%o6,	%g6
	fmul8sux16	%f0,	%f8,	%f0
	tpos	%xcc,	0x5
	edge32	%o4,	%o2,	%i4
	st	%f7,	[%l7 + 0x2C]
	fsrc1	%f12,	%f6
	fmovdvs	%icc,	%f0,	%f5
	nop
	setx loop_1249, %l0, %l1
	jmpl %l1, %i3
	ldd	[%l7 + 0x10],	%f6
	fmovrse	%l6,	%f11,	%f11
	bvs,a,pn	%icc,	loop_1250
loop_1249:
	andn	%o1,	%l2,	%l3
	tge	%icc,	0x7
	lduh	[%l7 + 0x24],	%g2
loop_1250:
	ldsh	[%l7 + 0x6A],	%l5
	fmovdgu	%xcc,	%f7,	%f7
	xor	%i0,	0x16EA,	%o7
	ld	[%l7 + 0x4C],	%f11
	mova	%xcc,	%l1,	%l4
	fbule,a	%fcc1,	loop_1251
	ldsh	[%l7 + 0x54],	%l0
	stb	%g4,	[%l7 + 0x67]
	tsubcc	%o5,	0x1F6A,	%i7
loop_1251:
	edge16ln	%i6,	%i1,	%i5
	bg,a	loop_1252
	stb	%g7,	[%l7 + 0x51]
	edge16ln	%i2,	%o0,	%o3
	orcc	%g3,	%g1,	%g5
loop_1252:
	movvs	%xcc,	%o6,	%o4
	sethi	0x199B,	%g6
	fxors	%f4,	%f10,	%f1
	bneg,a,pt	%icc,	loop_1253
	umulcc	%i4,	%i3,	%l6
	fbu	%fcc3,	loop_1254
	fmovsle	%xcc,	%f3,	%f14
loop_1253:
	lduh	[%l7 + 0x70],	%o1
	fnot2s	%f12,	%f0
loop_1254:
	ldub	[%l7 + 0x79],	%l2
	fnors	%f11,	%f3,	%f14
	tgu	%icc,	0x2
	movrgez	%l3,	0x2F7,	%g2
	ldsh	[%l7 + 0x44],	%o2
	fnot1s	%f3,	%f14
	ldsw	[%l7 + 0x28],	%i0
	fbge,a	%fcc1,	loop_1255
	ldsb	[%l7 + 0x65],	%o7
	fmul8sux16	%f0,	%f14,	%f2
	tsubcc	%l5,	0x114D,	%l4
loop_1255:
	ld	[%l7 + 0x50],	%f5
	andn	%l1,	0x0EC4,	%l0
	stw	%o5,	[%l7 + 0x50]
	andcc	%i7,	%g4,	%i1
	orcc	%i5,	%i6,	%i2
	fcmple16	%f10,	%f10,	%g7
	orcc	%o0,	%o3,	%g3
	sra	%g5,	%g1,	%o6
	sethi	0x00B5,	%o4
	call	loop_1256
	lduh	[%l7 + 0x22],	%i4
	stx	%i3,	[%l7 + 0x70]
	smulcc	%l6,	0x0252,	%o1
loop_1256:
	ldsb	[%l7 + 0x7A],	%l2
	and	%l3,	%g6,	%o2
	ldsw	[%l7 + 0x4C],	%i0
	fbu,a	%fcc3,	loop_1257
	tne	%xcc,	0x2
	tleu	%icc,	0x7
	tpos	%icc,	0x3
loop_1257:
	udiv	%o7,	0x0151,	%l5
	fbo,a	%fcc1,	loop_1258
	fmovsle	%xcc,	%f6,	%f12
	fmovd	%f8,	%f6
	te	%xcc,	0x6
loop_1258:
	st	%f0,	[%l7 + 0x20]
	fmovsgu	%icc,	%f9,	%f14
	tleu	%icc,	0x4
	edge32ln	%g2,	%l4,	%l1
	tsubcctv	%l0,	0x072D,	%i7
	bvc,pn	%xcc,	loop_1259
	xnor	%g4,	%i1,	%o5
	move	%xcc,	%i6,	%i5
	fcmpes	%fcc2,	%f4,	%f7
loop_1259:
	udivcc	%i2,	0x14BD,	%o0
	lduw	[%l7 + 0x58],	%o3
	mulx	%g3,	%g5,	%g1
	movne	%xcc,	%g7,	%o6
	xor	%o4,	%i4,	%i3
	xorcc	%l6,	0x11E9,	%l2
	ldx	[%l7 + 0x50],	%l3
	sth	%g6,	[%l7 + 0x3E]
	movneg	%xcc,	%o1,	%i0
	fmovdvs	%icc,	%f12,	%f2
	tsubcctv	%o2,	%l5,	%o7
	fmovdneg	%xcc,	%f10,	%f8
	fmovsg	%xcc,	%f2,	%f7
	stx	%l4,	[%l7 + 0x50]
	stb	%l1,	[%l7 + 0x18]
	sth	%l0,	[%l7 + 0x74]
	tvc	%icc,	0x6
	ldd	[%l7 + 0x70],	%f10
	lduw	[%l7 + 0x7C],	%g2
	fmovdpos	%xcc,	%f12,	%f15
	add	%i7,	0x03EC,	%i1
	edge16	%g4,	%o5,	%i5
	srlx	%i2,	0x1B,	%i6
	ldd	[%l7 + 0x38],	%f12
	fmovsneg	%icc,	%f0,	%f11
	andncc	%o0,	%g3,	%o3
	sll	%g5,	%g1,	%g7
	popc	%o6,	%o4
	ldx	[%l7 + 0x48],	%i3
	bge,a,pn	%icc,	loop_1260
	fmul8x16au	%f14,	%f12,	%f4
	stx	%l6,	[%l7 + 0x50]
	fandnot1	%f0,	%f12,	%f0
loop_1260:
	ld	[%l7 + 0x7C],	%f7
	std	%f14,	[%l7 + 0x70]
	std	%f8,	[%l7 + 0x40]
	fbo,a	%fcc2,	loop_1261
	stb	%l2,	[%l7 + 0x58]
	ldd	[%l7 + 0x28],	%f0
	fmovse	%xcc,	%f1,	%f1
loop_1261:
	nop
	setx loop_1262, %l0, %l1
	jmpl %l1, %i4
	movneg	%icc,	%g6,	%l3
	fmovspos	%icc,	%f12,	%f13
	movl	%icc,	%i0,	%o1
loop_1262:
	mulx	%l5,	%o7,	%l4
	fmovdgu	%icc,	%f8,	%f9
	fbne	%fcc1,	loop_1263
	fmovsvs	%icc,	%f8,	%f15
	fpsub32s	%f3,	%f5,	%f9
	stx	%l1,	[%l7 + 0x20]
loop_1263:
	ldx	[%l7 + 0x60],	%o2
	fmovdg	%xcc,	%f0,	%f0
	bcs,pn	%xcc,	loop_1264
	fmovsgu	%xcc,	%f0,	%f1
	ld	[%l7 + 0x18],	%f1
	fmovsg	%icc,	%f15,	%f6
loop_1264:
	ldsw	[%l7 + 0x78],	%g2
	fmovdg	%xcc,	%f15,	%f7
	movge	%xcc,	%l0,	%i7
	stx	%g4,	[%l7 + 0x20]
	movne	%xcc,	%i1,	%i5
	std	%f4,	[%l7 + 0x30]
	fmovdgu	%xcc,	%f10,	%f13
	or	%i2,	0x1BD3,	%o5
	ldsh	[%l7 + 0x08],	%o0
	stb	%g3,	[%l7 + 0x0B]
	fbuge,a	%fcc1,	loop_1265
	fmovdn	%xcc,	%f5,	%f0
	ldd	[%l7 + 0x30],	%f10
	edge32l	%o3,	%g5,	%i6
loop_1265:
	array32	%g7,	%g1,	%o4
	fmovrsne	%i3,	%f12,	%f4
	movcs	%xcc,	%l6,	%o6
	fcmpeq32	%f14,	%f8,	%l2
	ldsw	[%l7 + 0x24],	%i4
	fcmpes	%fcc1,	%f2,	%f12
	st	%f10,	[%l7 + 0x44]
	fpadd16s	%f12,	%f6,	%f2
	ldx	[%l7 + 0x68],	%g6
	fbu,a	%fcc3,	loop_1266
	tg	%xcc,	0x5
	sdiv	%i0,	0x1208,	%l3
	alignaddr	%o1,	%o7,	%l5
loop_1266:
	st	%f14,	[%l7 + 0x20]
	edge8ln	%l4,	%o2,	%g2
	ldsh	[%l7 + 0x0C],	%l0
	fandnot2s	%f5,	%f12,	%f8
	tl	%xcc,	0x7
	srax	%i7,	0x02,	%l1
	taddcctv	%g4,	0x0105,	%i5
	fmovsvs	%xcc,	%f15,	%f6
	stx	%i1,	[%l7 + 0x60]
	movvc	%xcc,	%o5,	%i2
	movl	%xcc,	%g3,	%o0
	stw	%o3,	[%l7 + 0x58]
	std	%f8,	[%l7 + 0x08]
	xorcc	%g5,	0x0F6A,	%i6
	std	%f2,	[%l7 + 0x40]
	lduh	[%l7 + 0x6E],	%g1
	movcs	%icc,	%g7,	%i3
	fone	%f8
	fmovsneg	%icc,	%f14,	%f2
	fxors	%f8,	%f0,	%f6
	ld	[%l7 + 0x60],	%f2
	fandnot1	%f10,	%f2,	%f12
	ldsb	[%l7 + 0x12],	%l6
	fnors	%f4,	%f15,	%f12
	std	%f2,	[%l7 + 0x78]
	fpack32	%f10,	%f0,	%f14
	fmovdle	%icc,	%f0,	%f11
	movrne	%o4,	%o6,	%i4
	and	%g6,	%l2,	%l3
	ld	[%l7 + 0x1C],	%f13
	fmovdvs	%icc,	%f14,	%f7
	call	loop_1267
	call	loop_1268
	fbn,a	%fcc3,	loop_1269
	ldsh	[%l7 + 0x08],	%o1
loop_1267:
	fabss	%f14,	%f8
loop_1268:
	stx	%i0,	[%l7 + 0x28]
loop_1269:
	fmovrde	%o7,	%f14,	%f2
	sethi	0x0BE9,	%l4
	fmovsvc	%icc,	%f15,	%f3
	stb	%o2,	[%l7 + 0x2F]
	ldd	[%l7 + 0x50],	%f12
	ldd	[%l7 + 0x38],	%f6
	ldsw	[%l7 + 0x20],	%g2
	be,a,pn	%xcc,	loop_1270
	edge16ln	%l0,	%l5,	%l1
	fmovrdgz	%i7,	%f8,	%f8
	ldub	[%l7 + 0x35],	%g4
loop_1270:
	and	%i5,	0x1DD5,	%o5
	xnorcc	%i2,	%g3,	%i1
	movl	%icc,	%o3,	%g5
	fcmpne32	%f0,	%f6,	%o0
	sth	%g1,	[%l7 + 0x0C]
	fbo	%fcc2,	loop_1271
	lduw	[%l7 + 0x24],	%g7
	fcmpes	%fcc2,	%f5,	%f2
	ld	[%l7 + 0x44],	%f15
loop_1271:
	ldsw	[%l7 + 0x0C],	%i6
	tsubcctv	%l6,	%o4,	%o6
	stb	%i3,	[%l7 + 0x2E]
	sra	%i4,	0x03,	%g6
	fmovrdgez	%l3,	%f6,	%f6
	ld	[%l7 + 0x50],	%f14
	lduh	[%l7 + 0x4C],	%l2
	ldub	[%l7 + 0x3A],	%i0
	ldd	[%l7 + 0x10],	%f14
	ldsb	[%l7 + 0x46],	%o1
	fba	%fcc0,	loop_1272
	fcmpeq32	%f14,	%f0,	%o7
	stx	%l4,	[%l7 + 0x70]
	addc	%g2,	%l0,	%o2
loop_1272:
	edge16l	%l5,	%l1,	%i7
	sth	%i5,	[%l7 + 0x44]
	bvc,a	%icc,	loop_1273
	fbug,a	%fcc0,	loop_1274
	fmovda	%xcc,	%f8,	%f15
	fbul,a	%fcc1,	loop_1275
loop_1273:
	fmovspos	%icc,	%f8,	%f11
loop_1274:
	addccc	%g4,	%o5,	%g3
	stw	%i2,	[%l7 + 0x70]
loop_1275:
	edge32ln	%o3,	%g5,	%o0
	ldx	[%l7 + 0x50],	%g1
	stx	%g7,	[%l7 + 0x30]
	edge8n	%i6,	%i1,	%o4
	fsrc1	%f0,	%f10
	ldx	[%l7 + 0x18],	%o6
	bneg	loop_1276
	stw	%l6,	[%l7 + 0x48]
	nop
	setx loop_1277, %l0, %l1
	jmpl %l1, %i3
	bvc,a	loop_1278
loop_1276:
	fmovdpos	%xcc,	%f12,	%f8
	addcc	%g6,	0x03C0,	%l3
loop_1277:
	lduw	[%l7 + 0x28],	%i4
loop_1278:
	lduw	[%l7 + 0x08],	%l2
	brz	%o1,	loop_1279
	movvc	%icc,	%i0,	%o7
	movrlez	%g2,	%l4,	%o2
	sub	%l0,	0x1439,	%l5
loop_1279:
	fexpand	%f14,	%f2
	ldd	[%l7 + 0x38],	%f2
	st	%f12,	[%l7 + 0x6C]
	ld	[%l7 + 0x2C],	%f10
	stx	%l1,	[%l7 + 0x78]
	fandnot2	%f14,	%f2,	%f6
	ld	[%l7 + 0x14],	%f4
	and	%i7,	%g4,	%o5
	stx	%i5,	[%l7 + 0x60]
	ldsw	[%l7 + 0x68],	%i2
	bg,a,pt	%icc,	loop_1280
	lduh	[%l7 + 0x42],	%g3
	ldd	[%l7 + 0x40],	%f4
	sllx	%g5,	%o0,	%o3
loop_1280:
	fmovdne	%icc,	%f14,	%f9
	ldub	[%l7 + 0x39],	%g1
	tne	%icc,	0x6
	fbo,a	%fcc3,	loop_1281
	ldx	[%l7 + 0x78],	%g7
	lduh	[%l7 + 0x32],	%i1
	fxor	%f10,	%f14,	%f8
loop_1281:
	ldsb	[%l7 + 0x7A],	%o4
	fmovrslz	%i6,	%f2,	%f14
	lduw	[%l7 + 0x74],	%l6
	taddcctv	%i3,	%o6,	%l3
	fsrc1s	%f13,	%f6
	ldub	[%l7 + 0x57],	%i4
	lduh	[%l7 + 0x2E],	%l2
	brgez	%o1,	loop_1282
	fmovrsgez	%i0,	%f9,	%f6
	for	%f6,	%f6,	%f0
	fornot2s	%f1,	%f12,	%f11
loop_1282:
	ldd	[%l7 + 0x48],	%f6
	fsrc1	%f14,	%f2
	tvc	%xcc,	0x4
	stx	%g6,	[%l7 + 0x20]
	fcmpeq32	%f0,	%f4,	%g2
	fmovrdne	%o7,	%f8,	%f4
	fornot1s	%f14,	%f9,	%f4
	add	%o2,	0x1568,	%l4
	lduw	[%l7 + 0x74],	%l0
	fmovrdgez	%l1,	%f14,	%f4
	sub	%l5,	%i7,	%o5
	stb	%g4,	[%l7 + 0x5A]
	ldx	[%l7 + 0x10],	%i5
	udivcc	%g3,	0x098C,	%i2
	fone	%f12
	fmovsl	%icc,	%f15,	%f1
	movpos	%icc,	%g5,	%o3
	andcc	%g1,	%o0,	%g7
	srax	%i1,	%o4,	%l6
	ldsh	[%l7 + 0x2A],	%i3
	edge32l	%o6,	%i6,	%i4
	ldsw	[%l7 + 0x1C],	%l3
	tcs	%xcc,	0x0
	brlz	%o1,	loop_1283
	movle	%icc,	%l2,	%i0
	ldsb	[%l7 + 0x7D],	%g2
	bn	%xcc,	loop_1284
loop_1283:
	fmovdgu	%icc,	%f11,	%f10
	lduh	[%l7 + 0x56],	%o7
	std	%f6,	[%l7 + 0x70]
loop_1284:
	tsubcc	%o2,	%g6,	%l0
	fands	%f13,	%f10,	%f4
	fsrc2s	%f12,	%f0
	fzero	%f8
	fmovsne	%icc,	%f10,	%f8
	tn	%xcc,	0x0
	sdivx	%l4,	0x0318,	%l5
	addc	%i7,	%o5,	%l1
	fnot2s	%f9,	%f1
	ld	[%l7 + 0x24],	%f15
	movl	%icc,	%g4,	%g3
	fornot1	%f0,	%f2,	%f6
	tsubcctv	%i2,	%g5,	%i5
	array32	%g1,	%o0,	%g7
	edge32	%i1,	%o4,	%l6
	ldub	[%l7 + 0x12],	%i3
	bvs,pn	%xcc,	loop_1285
	fpadd16s	%f10,	%f5,	%f5
	movvs	%icc,	%o6,	%o3
	nop
	setx loop_1286, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_1285:
	fmovdvs	%icc,	%f13,	%f1
	ldsb	[%l7 + 0x08],	%i4
	ldub	[%l7 + 0x44],	%i6
loop_1286:
	mulscc	%o1,	%l2,	%l3
	ldx	[%l7 + 0x18],	%g2
	fabss	%f13,	%f5
	fbul	%fcc3,	loop_1287
	andn	%i0,	%o7,	%g6
	ldsh	[%l7 + 0x1A],	%l0
	st	%f7,	[%l7 + 0x48]
loop_1287:
	fsrc2	%f10,	%f0
	bn,pt	%icc,	loop_1288
	fmovsvc	%xcc,	%f10,	%f1
	fmovse	%xcc,	%f4,	%f4
	fpadd16s	%f3,	%f9,	%f5
loop_1288:
	stx	%l4,	[%l7 + 0x30]
	fbul,a	%fcc1,	loop_1289
	udivx	%l5,	0x1DBA,	%i7
	stw	%o2,	[%l7 + 0x50]
	faligndata	%f14,	%f12,	%f4
loop_1289:
	fmul8x16al	%f0,	%f3,	%f8
	fmovrsgez	%o5,	%f0,	%f1
	ldd	[%l7 + 0x78],	%f8
	sth	%g4,	[%l7 + 0x2E]
	tle	%xcc,	0x3
	std	%f12,	[%l7 + 0x38]
	std	%f8,	[%l7 + 0x60]
	ldsb	[%l7 + 0x34],	%g3
	mulscc	%l1,	%g5,	%i5
	fpsub32s	%f1,	%f4,	%f13
	tcc	%xcc,	0x5
	ld	[%l7 + 0x40],	%f2
	stx	%i2,	[%l7 + 0x48]
	xorcc	%o0,	0x1A70,	%g1
	brlez	%i1,	loop_1290
	ldx	[%l7 + 0x78],	%g7
	ldub	[%l7 + 0x08],	%l6
	movneg	%xcc,	%i3,	%o6
loop_1290:
	lduh	[%l7 + 0x08],	%o3
	mova	%icc,	%o4,	%i4
	fnot2	%f4,	%f12
	taddcctv	%o1,	%i6,	%l3
	xnorcc	%l2,	%i0,	%g2
	sdivx	%g6,	0x086B,	%l0
	fnot2	%f10,	%f2
	std	%f0,	[%l7 + 0x68]
	fba,a	%fcc0,	loop_1291
	fba,a	%fcc2,	loop_1292
	fmuld8sux16	%f3,	%f7,	%f10
	ldd	[%l7 + 0x68],	%f8
loop_1291:
	ldsb	[%l7 + 0x1B],	%o7
loop_1292:
	stx	%l5,	[%l7 + 0x48]
	movrgz	%i7,	%o2,	%l4
	tneg	%xcc,	0x1
	bleu	loop_1293
	movrgz	%o5,	%g3,	%l1
	tpos	%icc,	0x2
	fbu	%fcc1,	loop_1294
loop_1293:
	edge8l	%g4,	%i5,	%i2
	tg	%icc,	0x6
	ldx	[%l7 + 0x18],	%g5
loop_1294:
	fnegs	%f8,	%f15
	ldsh	[%l7 + 0x14],	%g1
	ldx	[%l7 + 0x28],	%o0
	ldub	[%l7 + 0x7B],	%i1
	fmovrde	%l6,	%f8,	%f14
	edge32n	%i3,	%o6,	%g7
	edge8l	%o4,	%i4,	%o3
	fpackfix	%f0,	%f6
	std	%f2,	[%l7 + 0x38]
	lduw	[%l7 + 0x18],	%o1
	ldsw	[%l7 + 0x10],	%l3
	ldub	[%l7 + 0x75],	%l2
	tl	%icc,	0x7
	fornot2	%f0,	%f14,	%f14
	sth	%i6,	[%l7 + 0x4A]
	sdivx	%i0,	0x10B0,	%g6
	lduw	[%l7 + 0x50],	%l0
	fandnot2	%f0,	%f12,	%f4
	sth	%g2,	[%l7 + 0x5E]
	sth	%l5,	[%l7 + 0x4A]
	ldd	[%l7 + 0x30],	%f6
	addc	%i7,	0x033C,	%o7
	tleu	%xcc,	0x3
	sub	%l4,	0x005E,	%o2
	bge	loop_1295
	fornot2	%f6,	%f0,	%f12
	st	%f15,	[%l7 + 0x74]
	ldsw	[%l7 + 0x74],	%g3
loop_1295:
	ldsh	[%l7 + 0x22],	%l1
	tsubcc	%g4,	%o5,	%i5
	fnor	%f2,	%f14,	%f6
	lduw	[%l7 + 0x68],	%g5
	fnors	%f6,	%f14,	%f9
	udivx	%i2,	0x1C37,	%o0
	sll	%g1,	0x19,	%l6
	or	%i1,	0x097C,	%o6
	array8	%i3,	%o4,	%g7
	fbug	%fcc1,	loop_1296
	stb	%i4,	[%l7 + 0x42]
	mulscc	%o3,	%l3,	%o1
	array8	%l2,	%i6,	%i0
loop_1296:
	tcs	%xcc,	0x5
	srlx	%g6,	0x1A,	%l0
	ld	[%l7 + 0x40],	%f14
	bvs	%icc,	loop_1297
	edge8	%g2,	%l5,	%i7
	fmovsgu	%xcc,	%f1,	%f13
	ldub	[%l7 + 0x65],	%o7
loop_1297:
	stb	%l4,	[%l7 + 0x5F]
	addc	%o2,	0x00DB,	%l1
	andn	%g3,	%g4,	%o5
	tge	%xcc,	0x5
	fpack16	%f8,	%f4
	brlz,a	%g5,	loop_1298
	array8	%i5,	%o0,	%i2
	ldd	[%l7 + 0x48],	%f2
	srax	%g1,	0x0E,	%l6
loop_1298:
	ld	[%l7 + 0x2C],	%f5
	taddcc	%i1,	0x1EFA,	%i3
	fmovrdne	%o6,	%f14,	%f6
	ldx	[%l7 + 0x10],	%o4
	movrgz	%i4,	%o3,	%l3
	brnz	%o1,	loop_1299
	ld	[%l7 + 0x64],	%f0
	bn,pt	%xcc,	loop_1300
	ldub	[%l7 + 0x0B],	%l2
loop_1299:
	ldx	[%l7 + 0x28],	%g7
	ldsw	[%l7 + 0x24],	%i6
loop_1300:
	lduh	[%l7 + 0x22],	%i0
	st	%f9,	[%l7 + 0x60]
	ldx	[%l7 + 0x10],	%g6
	fbug,a	%fcc3,	loop_1301
	move	%icc,	%l0,	%l5
	lduh	[%l7 + 0x26],	%g2
	fmul8sux16	%f12,	%f8,	%f4
loop_1301:
	fxor	%f2,	%f6,	%f6
	fnors	%f2,	%f11,	%f0
	fmovdl	%xcc,	%f6,	%f9
	ldsb	[%l7 + 0x19],	%i7
	fsrc2	%f4,	%f12
	movn	%xcc,	%l4,	%o7
	fmovspos	%xcc,	%f11,	%f1
	fands	%f0,	%f5,	%f5
	stb	%l1,	[%l7 + 0x11]
	ldsb	[%l7 + 0x59],	%g3
	movg	%xcc,	%g4,	%o5
	tcs	%icc,	0x3
	movl	%xcc,	%o2,	%g5
	brnz,a	%i5,	loop_1302
	nop
	setx loop_1303, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovsn	%xcc,	%f0,	%f1
	fbuge	%fcc1,	loop_1304
loop_1302:
	movn	%icc,	%i2,	%o0
loop_1303:
	fandnot2	%f14,	%f12,	%f0
	tcc	%xcc,	0x1
loop_1304:
	addccc	%g1,	0x0A62,	%i1
	fbuge	%fcc0,	loop_1305
	fmovdn	%icc,	%f15,	%f7
	smulcc	%l6,	%i3,	%o4
	fmovdn	%icc,	%f5,	%f15
loop_1305:
	udivcc	%i4,	0x0BDA,	%o6
	fnors	%f2,	%f0,	%f4
	add	%o3,	%o1,	%l3
	brgz	%g7,	loop_1306
	stw	%i6,	[%l7 + 0x7C]
	edge8	%l2,	%g6,	%l0
	brgz	%i0,	loop_1307
loop_1306:
	fmovdgu	%icc,	%f12,	%f4
	brgez	%g2,	loop_1308
	fnot2	%f2,	%f0
loop_1307:
	ldsw	[%l7 + 0x3C],	%l5
	bcc,a	%xcc,	loop_1309
loop_1308:
	be,a,pn	%icc,	loop_1310
	edge8l	%i7,	%l4,	%l1
	fnegs	%f14,	%f3
loop_1309:
	fmul8ulx16	%f12,	%f2,	%f12
loop_1310:
	xnor	%o7,	%g3,	%g4
	stx	%o2,	[%l7 + 0x48]
	mova	%xcc,	%g5,	%o5
	call	loop_1311
	fxors	%f13,	%f11,	%f14
	fmovsvs	%icc,	%f0,	%f15
	fpack32	%f12,	%f2,	%f12
loop_1311:
	edge32	%i2,	%o0,	%g1
	stw	%i1,	[%l7 + 0x2C]
	ldub	[%l7 + 0x34],	%l6
	tleu	%xcc,	0x5
	ldsh	[%l7 + 0x40],	%i5
	fmovrdlez	%i3,	%f4,	%f14
	stx	%o4,	[%l7 + 0x18]
	st	%f9,	[%l7 + 0x4C]
	fmovdg	%icc,	%f2,	%f9
	stw	%o6,	[%l7 + 0x30]
	fmovrde	%i4,	%f2,	%f10
	and	%o3,	%l3,	%g7
	fbuge,a	%fcc2,	loop_1312
	subc	%o1,	%i6,	%l2
	tneg	%icc,	0x4
	std	%f8,	[%l7 + 0x10]
loop_1312:
	fpsub16	%f8,	%f2,	%f4
	tge	%icc,	0x0
	nop
	setx loop_1313, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fxnors	%f8,	%f10,	%f1
	ldd	[%l7 + 0x50],	%f8
	fone	%f2
loop_1313:
	stx	%l0,	[%l7 + 0x78]
	edge16ln	%g6,	%g2,	%i0
	fmovdgu	%icc,	%f4,	%f10
	fmovsge	%icc,	%f9,	%f8
	andn	%l5,	%i7,	%l4
	subccc	%o7,	0x0F91,	%g3
	fnot1	%f0,	%f10
	orn	%l1,	%g4,	%g5
	array32	%o5,	%o2,	%i2
	fpack16	%f10,	%f3
	brlez	%g1,	loop_1314
	fornot1s	%f1,	%f4,	%f2
	fbg	%fcc3,	loop_1315
	movn	%icc,	%i1,	%o0
loop_1314:
	fmovsle	%icc,	%f8,	%f3
	stb	%l6,	[%l7 + 0x1E]
loop_1315:
	ldx	[%l7 + 0x58],	%i3
	fsrc2	%f6,	%f2
	ldsb	[%l7 + 0x34],	%i5
	fnands	%f15,	%f13,	%f0
	fmovrde	%o6,	%f2,	%f6
	lduh	[%l7 + 0x3A],	%i4
	ldub	[%l7 + 0x09],	%o4
	edge8n	%o3,	%l3,	%g7
	movrne	%o1,	0x2D6,	%l2
	brlz	%l0,	loop_1316
	fmul8x16al	%f3,	%f9,	%f12
	srax	%i6,	0x04,	%g2
	fmovsneg	%icc,	%f5,	%f10
loop_1316:
	fba,a	%fcc1,	loop_1317
	te	%xcc,	0x4
	ldd	[%l7 + 0x40],	%f4
	tl	%xcc,	0x2
loop_1317:
	ldx	[%l7 + 0x38],	%g6
	fbl	%fcc1,	loop_1318
	sra	%l5,	%i7,	%i0
	movle	%icc,	%l4,	%o7
	fmovdl	%xcc,	%f2,	%f1
loop_1318:
	fcmpeq32	%f8,	%f12,	%l1
	fmovdl	%xcc,	%f15,	%f5
	smul	%g4,	%g3,	%g5
	subc	%o5,	0x1952,	%i2
	ta	%xcc,	0x5
	fmovdl	%xcc,	%f12,	%f3
	ldsb	[%l7 + 0x44],	%g1
	ldsb	[%l7 + 0x1E],	%i1
	fbug	%fcc0,	loop_1319
	srlx	%o2,	%o0,	%l6
	fzero	%f10
	fxor	%f14,	%f6,	%f4
loop_1319:
	std	%f8,	[%l7 + 0x60]
	nop
	setx loop_1320, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovrsgez	%i5,	%f10,	%f2
	smulcc	%o6,	%i3,	%o4
	bgu	loop_1321
loop_1320:
	stx	%i4,	[%l7 + 0x58]
	fmovrdgz	%o3,	%f12,	%f8
	ta	%xcc,	0x2
loop_1321:
	movle	%xcc,	%l3,	%g7
	fbn,a	%fcc2,	loop_1322
	alignaddr	%o1,	%l0,	%l2
	sra	%g2,	0x15,	%i6
	tsubcctv	%g6,	%i7,	%i0
loop_1322:
	or	%l5,	0x19DE,	%l4
	stx	%l1,	[%l7 + 0x10]
	lduh	[%l7 + 0x26],	%g4
	fmovrdgz	%g3,	%f12,	%f14
	edge16	%g5,	%o5,	%o7
	fones	%f12
	tn	%icc,	0x1
	xnorcc	%i2,	%i1,	%g1
	tsubcc	%o0,	%l6,	%o2
	sub	%o6,	%i5,	%i3
	stb	%o4,	[%l7 + 0x60]
	bleu,pn	%xcc,	loop_1323
	bpos,a,pn	%xcc,	loop_1324
	xorcc	%o3,	%i4,	%l3
	fpadd32	%f12,	%f10,	%f8
loop_1323:
	fandnot2s	%f9,	%f15,	%f3
loop_1324:
	fcmpes	%fcc3,	%f4,	%f15
	edge32l	%g7,	%o1,	%l0
	popc	%l2,	%i6
	st	%f0,	[%l7 + 0x50]
	std	%f12,	[%l7 + 0x18]
	movneg	%icc,	%g2,	%i7
	tleu	%icc,	0x5
	for	%f14,	%f6,	%f4
	movgu	%icc,	%g6,	%i0
	std	%f14,	[%l7 + 0x30]
	xnorcc	%l5,	0x15C3,	%l4
	bleu	loop_1325
	stx	%g4,	[%l7 + 0x20]
	tge	%icc,	0x7
	tgu	%xcc,	0x0
loop_1325:
	ldx	[%l7 + 0x68],	%g3
	bl,a	loop_1326
	ldsw	[%l7 + 0x40],	%l1
	array16	%g5,	%o7,	%o5
	fxor	%f0,	%f4,	%f6
loop_1326:
	fcmple16	%f0,	%f12,	%i1
	fmovrdne	%g1,	%f4,	%f6
	fpackfix	%f0,	%f3
	fmovrde	%i2,	%f2,	%f12
	stw	%o0,	[%l7 + 0x10]
	sth	%l6,	[%l7 + 0x7A]
	and	%o2,	0x171C,	%i5
	tpos	%icc,	0x6
	bl,pn	%xcc,	loop_1327
	st	%f7,	[%l7 + 0x0C]
	addccc	%i3,	%o4,	%o6
	stw	%i4,	[%l7 + 0x0C]
loop_1327:
	bl,a	%xcc,	loop_1328
	srax	%o3,	0x03,	%g7
	movcs	%xcc,	%l3,	%l0
	array16	%l2,	%i6,	%o1
loop_1328:
	fmuld8sux16	%f12,	%f10,	%f12
	fmovdge	%icc,	%f4,	%f7
	lduh	[%l7 + 0x36],	%g2
	fbu	%fcc2,	loop_1329
	lduh	[%l7 + 0x12],	%i7
	movrgez	%g6,	0x02A,	%l5
	movle	%icc,	%l4,	%g4
loop_1329:
	fmovdneg	%xcc,	%f7,	%f3
	fmovde	%icc,	%f9,	%f3
	ta	%icc,	0x1
	fnegs	%f2,	%f5
	fnors	%f12,	%f9,	%f3
	lduh	[%l7 + 0x1E],	%g3
	fnot1	%f0,	%f2
	fbu	%fcc0,	loop_1330
	fcmpes	%fcc1,	%f2,	%f2
	fmovdn	%xcc,	%f10,	%f1
	xnorcc	%l1,	%i0,	%o7
loop_1330:
	fexpand	%f5,	%f0
	xnor	%g5,	0x0C64,	%i1
	tleu	%xcc,	0x3
	addc	%o5,	0x163F,	%i2
	std	%f0,	[%l7 + 0x40]
	stb	%g1,	[%l7 + 0x64]
	addc	%o0,	0x12DA,	%o2
	fmul8x16	%f14,	%f2,	%f10
	fnegs	%f7,	%f13
	ldd	[%l7 + 0x40],	%f2
	fxnor	%f0,	%f8,	%f0
	ldd	[%l7 + 0x60],	%f8
	lduw	[%l7 + 0x14],	%l6
	fmovsne	%xcc,	%f10,	%f6
	tge	%xcc,	0x3
	stb	%i5,	[%l7 + 0x39]
	ldd	[%l7 + 0x38],	%f2
	udivx	%i3,	0x0D12,	%o4
	bne	%xcc,	loop_1331
	stx	%o6,	[%l7 + 0x28]
	fmovdn	%icc,	%f9,	%f5
	nop
	setx loop_1332, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_1331:
	fcmpeq16	%f8,	%f12,	%i4
	xnor	%g7,	%o3,	%l0
	fexpand	%f7,	%f14
loop_1332:
	tg	%xcc,	0x4
	std	%f4,	[%l7 + 0x38]
	fpadd32s	%f13,	%f6,	%f13
	fmovsle	%xcc,	%f10,	%f4
	lduw	[%l7 + 0x1C],	%l3
	srl	%l2,	0x10,	%i6
	ldsh	[%l7 + 0x14],	%g2
	sethi	0x036D,	%o1
	fcmpne16	%f0,	%f8,	%g6
	siam	0x7
	nop
	setx loop_1333, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	lduh	[%l7 + 0x72],	%i7
	lduh	[%l7 + 0x38],	%l4
	lduh	[%l7 + 0x58],	%l5
loop_1333:
	fmovrslez	%g3,	%f6,	%f11
	popc	0x0499,	%g4
	udivcc	%i0,	0x076C,	%o7
	stx	%l1,	[%l7 + 0x08]
	fbge,a	%fcc2,	loop_1334
	fnot1	%f8,	%f8
	stw	%i1,	[%l7 + 0x1C]
	andncc	%g5,	%o5,	%i2
loop_1334:
	ldx	[%l7 + 0x78],	%o0
	move	%icc,	%o2,	%l6
	fand	%f4,	%f12,	%f14
	fmovs	%f3,	%f6
	fcmple32	%f8,	%f0,	%g1
	fbe	%fcc3,	loop_1335
	ble,a	%xcc,	loop_1336
	fmovsle	%icc,	%f13,	%f6
	fcmpgt32	%f14,	%f4,	%i5
loop_1335:
	move	%xcc,	%i3,	%o6
loop_1336:
	fmovrsne	%i4,	%f15,	%f11
	lduw	[%l7 + 0x28],	%g7
	tsubcc	%o4,	0x14D1,	%o3
	fmovscc	%icc,	%f2,	%f2
	ldsh	[%l7 + 0x12],	%l0
	tgu	%xcc,	0x3
	umulcc	%l3,	%i6,	%l2
	ldd	[%l7 + 0x50],	%f2
	bshuffle	%f0,	%f14,	%f2
	ldsw	[%l7 + 0x30],	%g2
	orn	%g6,	%o1,	%l4
	stb	%l5,	[%l7 + 0x61]
	movleu	%xcc,	%g3,	%g4
	movg	%xcc,	%i7,	%i0
	fmuld8ulx16	%f15,	%f10,	%f4
	fmovrde	%o7,	%f10,	%f12
	fmovdvc	%xcc,	%f8,	%f8
	fbn	%fcc2,	loop_1337
	fnegd	%f14,	%f4
	fpsub16	%f14,	%f10,	%f10
	edge16	%i1,	%g5,	%o5
loop_1337:
	sethi	0x1133,	%l1
	alignaddr	%o0,	%o2,	%l6
	addc	%g1,	0x1C44,	%i2
	movrlz	%i5,	0x31F,	%i3
	array8	%i4,	%o6,	%o4
	fcmpes	%fcc1,	%f15,	%f10
	fpack16	%f8,	%f1
	lduh	[%l7 + 0x12],	%g7
	ldsb	[%l7 + 0x62],	%l0
	fbge,a	%fcc3,	loop_1338
	fmovdne	%icc,	%f9,	%f8
	movleu	%xcc,	%l3,	%i6
	ldx	[%l7 + 0x30],	%l2
loop_1338:
	smulcc	%g2,	%g6,	%o3
	lduw	[%l7 + 0x70],	%l4
	fnor	%f12,	%f2,	%f4
	or	%l5,	0x0FEE,	%g3
	fnands	%f12,	%f13,	%f8
	fpack32	%f14,	%f14,	%f2
	stx	%o1,	[%l7 + 0x70]
	fmovrslz	%g4,	%f11,	%f3
	alignaddr	%i0,	%i7,	%o7
	ba,pn	%icc,	loop_1339
	fmovsne	%xcc,	%f9,	%f14
	movle	%icc,	%g5,	%o5
	srl	%i1,	%l1,	%o2
loop_1339:
	edge8n	%o0,	%l6,	%g1
	fandnot2s	%f6,	%f2,	%f2
	ldsh	[%l7 + 0x6C],	%i2
	ld	[%l7 + 0x2C],	%f6
	bgu,a	%icc,	loop_1340
	fmovdvc	%xcc,	%f0,	%f1
	sdivx	%i5,	0x0D5E,	%i4
	fcmpes	%fcc2,	%f3,	%f10
loop_1340:
	fmovdgu	%icc,	%f2,	%f8
	ldx	[%l7 + 0x48],	%o6
	ldsb	[%l7 + 0x4B],	%i3
	stw	%o4,	[%l7 + 0x48]
	fbl,a	%fcc1,	loop_1341
	fnor	%f0,	%f2,	%f14
	bleu,a,pn	%xcc,	loop_1342
	ld	[%l7 + 0x78],	%f6
loop_1341:
	fmovdvs	%xcc,	%f9,	%f3
	movge	%xcc,	%g7,	%l3
loop_1342:
	fcmple32	%f2,	%f4,	%i6
	xor	%l2,	0x08F8,	%g2
	ldd	[%l7 + 0x60],	%f8
	edge32n	%g6,	%o3,	%l4
	bshuffle	%f10,	%f2,	%f12
	stb	%l5,	[%l7 + 0x45]
	nop
	setx loop_1343, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fone	%f6
	te	%icc,	0x2
	fmovrdlz	%g3,	%f6,	%f2
loop_1343:
	fbe,a	%fcc2,	loop_1344
	sra	%l0,	%g4,	%i0
	fmovrsgez	%o1,	%f13,	%f15
	and	%o7,	0x108F,	%g5
loop_1344:
	brnz,a	%o5,	loop_1345
	fornot1	%f12,	%f2,	%f2
	alignaddrl	%i1,	%i7,	%l1
	orcc	%o0,	%l6,	%g1
loop_1345:
	subc	%i2,	0x1C4D,	%i5
	lduh	[%l7 + 0x78],	%o2
	edge16l	%o6,	%i4,	%i3
	edge16ln	%g7,	%l3,	%o4
	fmovsgu	%icc,	%f0,	%f0
	lduw	[%l7 + 0x40],	%i6
	fbn,a	%fcc3,	loop_1346
	udivx	%g2,	0x0142,	%l2
	fmovdge	%xcc,	%f0,	%f7
	fornot1s	%f1,	%f3,	%f3
loop_1346:
	stw	%g6,	[%l7 + 0x24]
	fmovsvc	%icc,	%f12,	%f0
	be,a,pn	%xcc,	loop_1347
	fabss	%f13,	%f11
	udiv	%o3,	0x1809,	%l4
	movcs	%xcc,	%l5,	%l0
loop_1347:
	lduh	[%l7 + 0x2E],	%g3
	fnegs	%f14,	%f12
	bne,a	%icc,	loop_1348
	stx	%i0,	[%l7 + 0x68]
	lduw	[%l7 + 0x70],	%o1
	std	%f12,	[%l7 + 0x78]
loop_1348:
	fmovdl	%xcc,	%f6,	%f4
	call	loop_1349
	array16	%o7,	%g5,	%o5
	add	%i1,	0x04C9,	%g4
	movcc	%icc,	%i7,	%o0
loop_1349:
	fmovdvs	%icc,	%f2,	%f0
	fble,a	%fcc2,	loop_1350
	stw	%l1,	[%l7 + 0x20]
	xnorcc	%l6,	0x13F6,	%i2
	stx	%i5,	[%l7 + 0x30]
loop_1350:
	stb	%g1,	[%l7 + 0x4D]
	bvs,a	loop_1351
	edge32ln	%o6,	%o2,	%i4
	tvc	%icc,	0x6
	bcc,pt	%xcc,	loop_1352
loop_1351:
	edge8ln	%i3,	%g7,	%l3
	fmovsne	%xcc,	%f14,	%f2
	ldsh	[%l7 + 0x34],	%o4
loop_1352:
	fmovdcc	%icc,	%f5,	%f14
	fmovdl	%icc,	%f8,	%f10
	ldsw	[%l7 + 0x44],	%i6
	siam	0x2
	ldsh	[%l7 + 0x64],	%l2
	fbue,a	%fcc2,	loop_1353
	movleu	%icc,	%g6,	%g2
	lduh	[%l7 + 0x74],	%o3
	fmovda	%xcc,	%f1,	%f15
loop_1353:
	movne	%xcc,	%l5,	%l4
	bg	%icc,	loop_1354
	lduw	[%l7 + 0x20],	%l0
	ld	[%l7 + 0x40],	%f1
	st	%f11,	[%l7 + 0x6C]
loop_1354:
	fbule,a	%fcc2,	loop_1355
	ldsh	[%l7 + 0x70],	%g3
	addc	%o1,	0x06DA,	%o7
	fba,a	%fcc0,	loop_1356
loop_1355:
	movg	%icc,	%i0,	%g5
	fba	%fcc0,	loop_1357
	fmovrde	%o5,	%f4,	%f10
loop_1356:
	faligndata	%f4,	%f14,	%f10
	lduw	[%l7 + 0x2C],	%g4
loop_1357:
	ldsb	[%l7 + 0x34],	%i7
	fmovsle	%xcc,	%f5,	%f4
	fmovsl	%icc,	%f8,	%f14
	std	%f0,	[%l7 + 0x78]
	bshuffle	%f12,	%f4,	%f4
	addc	%o0,	0x1097,	%l1
	xor	%i1,	%i2,	%l6
	tg	%xcc,	0x4
	fmovsl	%icc,	%f7,	%f13
	fcmpgt32	%f10,	%f6,	%g1
	stx	%i5,	[%l7 + 0x58]
	fabsd	%f6,	%f14
	ld	[%l7 + 0x10],	%f4
	ta	%icc,	0x6
	bvc,pt	%xcc,	loop_1358
	fmul8ulx16	%f14,	%f0,	%f6
	sth	%o6,	[%l7 + 0x38]
	fmovrse	%i4,	%f8,	%f1
loop_1358:
	ldub	[%l7 + 0x6B],	%o2
	fbn	%fcc0,	loop_1359
	stb	%i3,	[%l7 + 0x65]
	bn,a	%icc,	loop_1360
	brgz	%l3,	loop_1361
loop_1359:
	stx	%g7,	[%l7 + 0x40]
	taddcc	%i6,	0x1194,	%o4
loop_1360:
	fmovrde	%g6,	%f12,	%f8
loop_1361:
	edge8l	%g2,	%l2,	%l5
	fbne,a	%fcc3,	loop_1362
	st	%f9,	[%l7 + 0x68]
	fnot2	%f2,	%f6
	fbuge	%fcc3,	loop_1363
loop_1362:
	fmul8x16au	%f8,	%f11,	%f10
	sth	%o3,	[%l7 + 0x7E]
	st	%f10,	[%l7 + 0x48]
loop_1363:
	ldsw	[%l7 + 0x08],	%l0
	fmovdneg	%xcc,	%f15,	%f10
	srax	%l4,	%o1,	%g3
	ldsh	[%l7 + 0x4C],	%o7
	lduw	[%l7 + 0x24],	%i0
	stb	%o5,	[%l7 + 0x75]
	stb	%g4,	[%l7 + 0x51]
	fors	%f12,	%f15,	%f9
	fones	%f9
	lduh	[%l7 + 0x7E],	%i7
	fbue	%fcc2,	loop_1364
	bpos,a,pn	%icc,	loop_1365
	fbule	%fcc3,	loop_1366
	ldsb	[%l7 + 0x3A],	%g5
loop_1364:
	popc	0x1C17,	%l1
loop_1365:
	and	%i1,	%i2,	%o0
loop_1366:
	bshuffle	%f2,	%f6,	%f4
	fmovs	%f1,	%f13
	stx	%g1,	[%l7 + 0x20]
	brnz,a	%l6,	loop_1367
	fbn	%fcc3,	loop_1368
	ldub	[%l7 + 0x76],	%o6
	fcmple32	%f14,	%f12,	%i4
loop_1367:
	fmovdvs	%icc,	%f14,	%f5
loop_1368:
	tcc	%icc,	0x4
	addc	%i5,	0x01DB,	%o2
	tn	%icc,	0x7
	movvs	%xcc,	%l3,	%i3
	srax	%i6,	0x11,	%g7
	addccc	%g6,	0x14B7,	%o4
	movrgez	%g2,	0x260,	%l2
	fcmpd	%fcc1,	%f10,	%f6
	xor	%o3,	0x007F,	%l5
	fbg	%fcc2,	loop_1369
	ta	%xcc,	0x1
	tl	%xcc,	0x4
	movne	%xcc,	%l4,	%o1
loop_1369:
	ldx	[%l7 + 0x50],	%g3
	fbe	%fcc1,	loop_1370
	st	%f7,	[%l7 + 0x64]
	fcmpne32	%f6,	%f2,	%l0
	ldd	[%l7 + 0x60],	%f2
loop_1370:
	movn	%icc,	%o7,	%o5
	edge8ln	%g4,	%i0,	%i7
	edge16l	%g5,	%i1,	%i2
	add	%o0,	%l1,	%g1
	bleu	%icc,	loop_1371
	fandnot2s	%f1,	%f14,	%f3
	ldsh	[%l7 + 0x42],	%l6
	fbg	%fcc2,	loop_1372
loop_1371:
	fmovrsne	%i4,	%f0,	%f5
	array8	%i5,	%o6,	%l3
	ldd	[%l7 + 0x18],	%f2
loop_1372:
	brz	%i3,	loop_1373
	addc	%o2,	0x16B7,	%g7
	stb	%i6,	[%l7 + 0x11]
	fbo,a	%fcc1,	loop_1374
loop_1373:
	tge	%xcc,	0x4
	movrne	%g6,	0x3A3,	%g2
	movcs	%xcc,	%l2,	%o3
loop_1374:
	fandnot1	%f8,	%f12,	%f10
	ldsw	[%l7 + 0x58],	%o4
	st	%f0,	[%l7 + 0x40]
	ldsh	[%l7 + 0x54],	%l4
	ldub	[%l7 + 0x21],	%o1
	fbge,a	%fcc3,	loop_1375
	be,pt	%icc,	loop_1376
	ldsh	[%l7 + 0x6C],	%l5
	ldx	[%l7 + 0x70],	%g3
loop_1375:
	stw	%o7,	[%l7 + 0x08]
loop_1376:
	stw	%o5,	[%l7 + 0x6C]
	fbug	%fcc2,	loop_1377
	brlez	%l0,	loop_1378
	nop
	setx loop_1379, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovdg	%xcc,	%f11,	%f1
loop_1377:
	stw	%g4,	[%l7 + 0x58]
loop_1378:
	tl	%xcc,	0x4
loop_1379:
	sth	%i0,	[%l7 + 0x22]
	ldub	[%l7 + 0x4F],	%i7
	ldsw	[%l7 + 0x28],	%i1
	tpos	%xcc,	0x3
	sethi	0x0C69,	%g5
	udivcc	%i2,	0x00F7,	%l1
	st	%f4,	[%l7 + 0x30]
	srax	%g1,	%o0,	%l6
	ldx	[%l7 + 0x58],	%i5
	fmovsg	%xcc,	%f3,	%f2
	bcs,a	%xcc,	loop_1380
	ldub	[%l7 + 0x1F],	%i4
	addccc	%l3,	%o6,	%i3
	stb	%o2,	[%l7 + 0x56]
loop_1380:
	fmovdneg	%icc,	%f14,	%f7
	stx	%i6,	[%l7 + 0x08]
	ldsb	[%l7 + 0x58],	%g6
	st	%f10,	[%l7 + 0x74]
	fmovdleu	%icc,	%f10,	%f10
	fpadd32	%f0,	%f2,	%f14
	ldsb	[%l7 + 0x55],	%g7
	fbo	%fcc1,	loop_1381
	fcmpne32	%f4,	%f12,	%l2
	ld	[%l7 + 0x60],	%f9
	fmovse	%icc,	%f0,	%f11
loop_1381:
	fnegd	%f6,	%f12
	fbo,a	%fcc3,	loop_1382
	movre	%g2,	0x289,	%o3
	edge8ln	%o4,	%l4,	%l5
	tgu	%icc,	0x0
loop_1382:
	fmovdvc	%xcc,	%f11,	%f14
	ldd	[%l7 + 0x60],	%f6
	edge8l	%o1,	%o7,	%o5
	sth	%l0,	[%l7 + 0x0E]
	ldsh	[%l7 + 0x1E],	%g4
	fmovrdne	%g3,	%f10,	%f10
	ldx	[%l7 + 0x08],	%i0
	edge16	%i7,	%i1,	%g5
	ldsb	[%l7 + 0x21],	%l1
	stx	%i2,	[%l7 + 0x28]
	faligndata	%f10,	%f14,	%f14
	fbo	%fcc3,	loop_1383
	fmovda	%xcc,	%f13,	%f1
	xorcc	%g1,	%l6,	%i5
	fmovscc	%icc,	%f11,	%f15
loop_1383:
	brgz,a	%o0,	loop_1384
	tge	%xcc,	0x1
	movg	%xcc,	%l3,	%i4
	fcmple32	%f12,	%f0,	%o6
loop_1384:
	fornot1s	%f3,	%f10,	%f2
	fmovsgu	%icc,	%f13,	%f7
	array8	%i3,	%o2,	%g6
	call	loop_1385
	fmovsvc	%xcc,	%f11,	%f10
	fmovdl	%icc,	%f5,	%f7
	ldub	[%l7 + 0x52],	%g7
loop_1385:
	orncc	%l2,	%g2,	%o3
	ldd	[%l7 + 0x70],	%f8
	fpadd32	%f10,	%f6,	%f2
	stb	%i6,	[%l7 + 0x40]
	fpack16	%f4,	%f9
	brlez	%l4,	loop_1386
	fxors	%f10,	%f2,	%f12
	addcc	%l5,	%o1,	%o7
	stx	%o4,	[%l7 + 0x38]
loop_1386:
	fmul8sux16	%f10,	%f12,	%f4
	stx	%l0,	[%l7 + 0x58]
	sethi	0x12A2,	%g4
	lduw	[%l7 + 0x4C],	%g3
	fmovrslz	%i0,	%f1,	%f0
	stx	%i7,	[%l7 + 0x18]
	tg	%icc,	0x4
	lduw	[%l7 + 0x70],	%i1
	tcs	%icc,	0x6
	subc	%g5,	0x1E8B,	%o5
	fmul8ulx16	%f6,	%f8,	%f0
	fmuld8ulx16	%f5,	%f10,	%f4
	and	%l1,	%g1,	%l6
	ldsh	[%l7 + 0x08],	%i5
	fpack16	%f0,	%f11
	fpackfix	%f0,	%f8
	fba	%fcc1,	loop_1387
	edge8	%o0,	%l3,	%i4
	fbug	%fcc3,	loop_1388
	array8	%i2,	%i3,	%o6
loop_1387:
	fxors	%f13,	%f14,	%f9
	nop
	setx loop_1389, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_1388:
	bshuffle	%f14,	%f0,	%f4
	stb	%o2,	[%l7 + 0x1F]
	alignaddrl	%g7,	%g6,	%g2
loop_1389:
	stw	%o3,	[%l7 + 0x18]
	fmul8x16au	%f0,	%f1,	%f10
	edge16n	%l2,	%i6,	%l4
	fxor	%f0,	%f0,	%f12
	stb	%l5,	[%l7 + 0x27]
	ldx	[%l7 + 0x08],	%o1
	fmovrslez	%o7,	%f7,	%f4
	bl,a,pt	%icc,	loop_1390
	movle	%xcc,	%l0,	%g4
	addc	%g3,	0x1020,	%i0
	fmovdcc	%icc,	%f12,	%f1
loop_1390:
	fmovdcs	%xcc,	%f1,	%f6
	bl	%xcc,	loop_1391
	stx	%o4,	[%l7 + 0x68]
	ldsw	[%l7 + 0x68],	%i7
	fpack16	%f4,	%f3
loop_1391:
	fabss	%f1,	%f1
	lduh	[%l7 + 0x4E],	%g5
	edge16n	%o5,	%l1,	%i1
	stb	%l6,	[%l7 + 0x26]
	ldsb	[%l7 + 0x20],	%g1
	fmovrdlez	%i5,	%f2,	%f0
	ldsb	[%l7 + 0x10],	%o0
	tvc	%icc,	0x2
	lduh	[%l7 + 0x26],	%l3
	ldx	[%l7 + 0x48],	%i4
	std	%f14,	[%l7 + 0x50]
	fsrc1	%f4,	%f14
	fxnor	%f14,	%f4,	%f0
	fmovrslz	%i3,	%f0,	%f8
	fabsd	%f0,	%f2
	fpsub16	%f2,	%f2,	%f4
	lduw	[%l7 + 0x70],	%o6
	fbge	%fcc3,	loop_1392
	ld	[%l7 + 0x78],	%f10
	lduh	[%l7 + 0x6E],	%o2
	fbge	%fcc0,	loop_1393
loop_1392:
	fmovde	%icc,	%f15,	%f6
	srl	%g7,	%i2,	%g2
	fmovrdgz	%g6,	%f0,	%f14
loop_1393:
	lduh	[%l7 + 0x0A],	%l2
	fmovrdgz	%i6,	%f4,	%f6
	ldsb	[%l7 + 0x70],	%o3
	lduw	[%l7 + 0x3C],	%l5
	ldsw	[%l7 + 0x34],	%l4
	mulx	%o1,	%o7,	%l0
	ld	[%l7 + 0x44],	%f15
	ld	[%l7 + 0x2C],	%f14
	movvs	%icc,	%g3,	%i0
	fsrc2s	%f14,	%f3
	ldsb	[%l7 + 0x24],	%g4
	ldx	[%l7 + 0x50],	%o4
	ba,pn	%xcc,	loop_1394
	fcmple32	%f8,	%f0,	%i7
	fxors	%f7,	%f7,	%f10
	fmovsl	%xcc,	%f0,	%f8
loop_1394:
	bge	%icc,	loop_1395
	orncc	%o5,	%l1,	%i1
	orn	%g5,	0x040F,	%l6
	fpsub32	%f14,	%f0,	%f2
loop_1395:
	edge32	%i5,	%g1,	%o0
	siam	0x4
	fbg	%fcc0,	loop_1396
	fbe,a	%fcc2,	loop_1397
	st	%f5,	[%l7 + 0x38]
	fnand	%f14,	%f10,	%f10
loop_1396:
	movre	%i4,	0x0A4,	%i3
loop_1397:
	bvs,pt	%icc,	loop_1398
	sub	%l3,	0x07DE,	%o6
	sth	%o2,	[%l7 + 0x66]
	ld	[%l7 + 0x5C],	%f14
loop_1398:
	movrlez	%i2,	%g2,	%g7
	fbo,a	%fcc3,	loop_1399
	tcs	%icc,	0x1
	bne,a,pn	%xcc,	loop_1400
	fpadd32s	%f0,	%f1,	%f0
loop_1399:
	ldd	[%l7 + 0x08],	%f8
	fmovdge	%icc,	%f13,	%f6
loop_1400:
	movrlz	%g6,	0x03E,	%l2
	fone	%f0
	nop
	setx loop_1401, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fbl	%fcc3,	loop_1402
	lduh	[%l7 + 0x3C],	%i6
	ldsb	[%l7 + 0x09],	%l5
loop_1401:
	ldub	[%l7 + 0x74],	%o3
loop_1402:
	movrne	%o1,	0x37C,	%l4
	movcs	%icc,	%o7,	%g3
	st	%f4,	[%l7 + 0x60]
	stx	%l0,	[%l7 + 0x50]
	ldd	[%l7 + 0x60],	%f14
	fblg	%fcc0,	loop_1403
	subc	%g4,	%o4,	%i0
	fpadd16s	%f10,	%f0,	%f15
	ldx	[%l7 + 0x10],	%i7
loop_1403:
	srax	%l1,	0x0B,	%i1
	fmovdle	%icc,	%f10,	%f6
	ba,a,pt	%xcc,	loop_1404
	fbl	%fcc0,	loop_1405
	fexpand	%f15,	%f8
	call	loop_1406
loop_1404:
	fmovrslz	%o5,	%f12,	%f14
loop_1405:
	bvc,pn	%icc,	loop_1407
	fors	%f8,	%f15,	%f0
loop_1406:
	edge16ln	%g5,	%i5,	%l6
	fbue,a	%fcc3,	loop_1408
loop_1407:
	udiv	%g1,	0x17C6,	%i4
	fbge	%fcc3,	loop_1409
	addcc	%o0,	%i3,	%o6
loop_1408:
	bge	%xcc,	loop_1410
	ldx	[%l7 + 0x78],	%l3
loop_1409:
	edge16ln	%o2,	%g2,	%g7
	ldub	[%l7 + 0x5C],	%i2
loop_1410:
	fble,a	%fcc1,	loop_1411
	ld	[%l7 + 0x48],	%f2
	ldx	[%l7 + 0x68],	%g6
	fmovde	%icc,	%f6,	%f13
loop_1411:
	sth	%i6,	[%l7 + 0x32]
	tcs	%icc,	0x4
	fmuld8ulx16	%f6,	%f13,	%f10
	xnor	%l2,	0x00C4,	%o3
	fcmpeq16	%f0,	%f2,	%l5
	fsrc1s	%f6,	%f6
	bvs	%icc,	loop_1412
	stw	%l4,	[%l7 + 0x18]
	addccc	%o1,	0x19CB,	%o7
	st	%f8,	[%l7 + 0x44]
loop_1412:
	bcs	%icc,	loop_1413
	ldsb	[%l7 + 0x5E],	%l0
	lduh	[%l7 + 0x7A],	%g3
	fcmpne16	%f10,	%f2,	%g4
loop_1413:
	ldsb	[%l7 + 0x30],	%o4
	stw	%i7,	[%l7 + 0x2C]
	st	%f1,	[%l7 + 0x70]
	lduh	[%l7 + 0x60],	%i0
	fcmpes	%fcc0,	%f4,	%f1
	ldsw	[%l7 + 0x1C],	%i1
	ldd	[%l7 + 0x10],	%f2
	bpos,a	loop_1414
	bpos,pn	%icc,	loop_1415
	movl	%icc,	%l1,	%g5
	fbo	%fcc3,	loop_1416
loop_1414:
	fpsub32	%f14,	%f8,	%f6
loop_1415:
	edge32l	%o5,	%i5,	%g1
	tsubcc	%l6,	%o0,	%i3
loop_1416:
	ldd	[%l7 + 0x70],	%f0
	movrgz	%o6,	%i4,	%o2
	fnegd	%f6,	%f0
	ldsb	[%l7 + 0x3B],	%g2
	ld	[%l7 + 0x50],	%f2
	subccc	%l3,	0x0E53,	%g7
	ldsb	[%l7 + 0x17],	%g6
	brgez,a	%i6,	loop_1417
	mulx	%l2,	0x0177,	%o3
	fnot2s	%f5,	%f12
	ldsh	[%l7 + 0x7C],	%i2
loop_1417:
	edge8	%l5,	%l4,	%o1
	std	%f14,	[%l7 + 0x10]
	ldsh	[%l7 + 0x7C],	%l0
	movleu	%xcc,	%o7,	%g4
	ldsb	[%l7 + 0x26],	%o4
	sth	%i7,	[%l7 + 0x54]
	xor	%g3,	0x1B98,	%i0
	ldub	[%l7 + 0x6F],	%l1
	edge32	%i1,	%g5,	%o5
	tg	%icc,	0x4
	fornot2	%f14,	%f10,	%f10
	lduh	[%l7 + 0x78],	%g1
	fsrc1s	%f15,	%f10
	fmovd	%f8,	%f0
	sdivx	%i5,	0x1BB9,	%l6
	fmovrse	%o0,	%f14,	%f0
	std	%f0,	[%l7 + 0x68]
	st	%f7,	[%l7 + 0x3C]
	stb	%o6,	[%l7 + 0x57]
	movleu	%xcc,	%i4,	%o2
	fnot1	%f0,	%f14
	fmuld8ulx16	%f7,	%f11,	%f10
	fba,a	%fcc2,	loop_1418
	st	%f2,	[%l7 + 0x0C]
	orn	%i3,	%g2,	%g7
	std	%f12,	[%l7 + 0x18]
loop_1418:
	fxors	%f1,	%f11,	%f14
	and	%l3,	0x0F9D,	%g6
	bneg,a	loop_1419
	fmovdle	%xcc,	%f8,	%f15
	ldd	[%l7 + 0x78],	%f8
	stw	%l2,	[%l7 + 0x1C]
loop_1419:
	movl	%xcc,	%o3,	%i2
	ldd	[%l7 + 0x30],	%f2
	brlz	%l5,	loop_1420
	pdist	%f8,	%f4,	%f2
	std	%f10,	[%l7 + 0x18]
	fmovdvc	%xcc,	%f15,	%f2
loop_1420:
	ldsh	[%l7 + 0x76],	%l4
	xnorcc	%o1,	%i6,	%l0
	fcmpeq16	%f10,	%f2,	%o7
	stx	%g4,	[%l7 + 0x40]
	bl,pn	%icc,	loop_1421
	tcs	%icc,	0x4
	fbue	%fcc0,	loop_1422
	std	%f6,	[%l7 + 0x48]
loop_1421:
	fbule,a	%fcc0,	loop_1423
	movpos	%icc,	%o4,	%g3
loop_1422:
	lduw	[%l7 + 0x24],	%i7
	ldsw	[%l7 + 0x40],	%i0
loop_1423:
	std	%f14,	[%l7 + 0x30]
	ldd	[%l7 + 0x38],	%f8
	fpsub16	%f6,	%f14,	%f2
	smul	%l1,	%g5,	%o5
	ldsw	[%l7 + 0x4C],	%g1
	sth	%i1,	[%l7 + 0x24]
	movcs	%xcc,	%l6,	%i5
	fpadd16	%f6,	%f6,	%f12
	fbule,a	%fcc0,	loop_1424
	movleu	%xcc,	%o6,	%o0
	stw	%o2,	[%l7 + 0x4C]
	stb	%i3,	[%l7 + 0x14]
loop_1424:
	fmovrdgez	%i4,	%f4,	%f14
	srl	%g7,	%g2,	%l3
	fornot2s	%f14,	%f7,	%f13
	fba	%fcc0,	loop_1425
	fcmple32	%f14,	%f0,	%l2
	mulscc	%g6,	%i2,	%o3
	alignaddrl	%l4,	%o1,	%l5
loop_1425:
	for	%f0,	%f14,	%f12
	lduw	[%l7 + 0x68],	%l0
	fmovs	%f15,	%f9
	fornot1	%f2,	%f0,	%f4
	fxnor	%f8,	%f12,	%f10
	fcmpgt32	%f4,	%f6,	%o7
	ldub	[%l7 + 0x4D],	%i6
	ldx	[%l7 + 0x78],	%o4
	edge8	%g3,	%g4,	%i7
	fmovdgu	%icc,	%f9,	%f13
	fpackfix	%f10,	%f5
	fandnot2	%f6,	%f12,	%f8
	stb	%i0,	[%l7 + 0x0D]
	ldsw	[%l7 + 0x2C],	%l1
	fmovsvc	%icc,	%f10,	%f2
	ldub	[%l7 + 0x36],	%g5
	fnors	%f14,	%f2,	%f3
	st	%f2,	[%l7 + 0x70]
	fbul	%fcc3,	loop_1426
	fsrc2s	%f12,	%f4
	fexpand	%f7,	%f4
	tvs	%icc,	0x5
loop_1426:
	fmovsge	%icc,	%f7,	%f2
	ld	[%l7 + 0x1C],	%f11
	fmovdvs	%xcc,	%f11,	%f2
	stb	%o5,	[%l7 + 0x63]
	ldub	[%l7 + 0x3E],	%g1
	movre	%l6,	0x0C0,	%i5
	addcc	%o6,	0x13D4,	%o0
	edge16	%i1,	%i3,	%i4
	ldsw	[%l7 + 0x0C],	%g7
	fmovsle	%icc,	%f0,	%f10
	bl,a	%icc,	loop_1427
	brgez	%o2,	loop_1428
	fmovdneg	%xcc,	%f13,	%f10
	brlz,a	%g2,	loop_1429
loop_1427:
	udiv	%l3,	0x1D45,	%g6
loop_1428:
	ld	[%l7 + 0x14],	%f1
	subc	%l2,	0x12E0,	%i2
loop_1429:
	sub	%o3,	0x0492,	%o1
	sdivcc	%l4,	0x1EE5,	%l5
	ldsw	[%l7 + 0x4C],	%o7
	fnot1s	%f1,	%f2
	andcc	%l0,	0x1BD9,	%i6
	bgu,pn	%xcc,	loop_1430
	fmovda	%icc,	%f6,	%f7
	ld	[%l7 + 0x08],	%f15
	std	%f12,	[%l7 + 0x40]
loop_1430:
	ldsw	[%l7 + 0x68],	%o4
	edge16l	%g3,	%i7,	%g4
	movvc	%icc,	%l1,	%i0
	stb	%o5,	[%l7 + 0x78]
	lduw	[%l7 + 0x10],	%g1
	ldsw	[%l7 + 0x24],	%l6
	edge16ln	%i5,	%o6,	%g5
	udivcc	%o0,	0x0243,	%i1
	addccc	%i4,	0x19DA,	%g7
	fbg	%fcc0,	loop_1431
	tgu	%xcc,	0x5
	lduh	[%l7 + 0x44],	%i3
	be,a,pt	%xcc,	loop_1432
loop_1431:
	fornot1	%f4,	%f2,	%f6
	ldsw	[%l7 + 0x74],	%o2
	umul	%l3,	0x16E9,	%g2
loop_1432:
	ldub	[%l7 + 0x7C],	%g6
	fbue	%fcc1,	loop_1433
	edge8l	%i2,	%l2,	%o1
	fmovsge	%xcc,	%f2,	%f8
	addccc	%o3,	0x1E8C,	%l4
loop_1433:
	fmovrdlez	%l5,	%f4,	%f10
	fmovsge	%xcc,	%f9,	%f13
	lduh	[%l7 + 0x4A],	%l0
	ldub	[%l7 + 0x25],	%o7
	stx	%o4,	[%l7 + 0x68]
	lduw	[%l7 + 0x10],	%g3
	ba,pn	%xcc,	loop_1434
	edge32n	%i7,	%i6,	%l1
	ldsb	[%l7 + 0x39],	%i0
	fandnot2	%f6,	%f14,	%f8
loop_1434:
	ldsw	[%l7 + 0x24],	%o5
	fcmped	%fcc3,	%f14,	%f8
	umul	%g1,	%g4,	%l6
	ld	[%l7 + 0x38],	%f4
	fmovsvc	%xcc,	%f0,	%f9
	bshuffle	%f2,	%f14,	%f0
	stb	%o6,	[%l7 + 0x6F]
	ldsh	[%l7 + 0x46],	%g5
	fmovd	%f14,	%f2
	ldub	[%l7 + 0x32],	%o0
	fzeros	%f1
	fmul8sux16	%f4,	%f12,	%f0
	ldsw	[%l7 + 0x74],	%i5
	lduw	[%l7 + 0x34],	%i4
	fpack32	%f12,	%f4,	%f10
	fbuge,a	%fcc0,	loop_1435
	fandnot2s	%f9,	%f12,	%f7
	sdivx	%g7,	0x1F67,	%i3
	fmovsl	%icc,	%f8,	%f0
loop_1435:
	ldx	[%l7 + 0x30],	%i1
	sth	%o2,	[%l7 + 0x54]
	fblg	%fcc1,	loop_1436
	ldx	[%l7 + 0x28],	%l3
	ldsb	[%l7 + 0x28],	%g6
	fbge	%fcc3,	loop_1437
loop_1436:
	lduh	[%l7 + 0x7C],	%i2
	sth	%g2,	[%l7 + 0x58]
	tg	%xcc,	0x7
loop_1437:
	andcc	%l2,	%o3,	%l4
	subccc	%o1,	0x0231,	%l0
	xnor	%l5,	%o4,	%g3
	ldub	[%l7 + 0x0A],	%i7
	fmovrdlez	%o7,	%f2,	%f2
	movle	%icc,	%l1,	%i0
	fmovrde	%i6,	%f6,	%f14
	fbuge	%fcc1,	loop_1438
	sth	%g1,	[%l7 + 0x32]
	fmovscc	%xcc,	%f10,	%f1
	lduw	[%l7 + 0x28],	%g4
loop_1438:
	fmovse	%icc,	%f10,	%f4
	mulx	%o5,	%o6,	%l6
	fcmpeq32	%f6,	%f6,	%o0
	xnorcc	%i5,	0x1603,	%i4
	edge16n	%g5,	%g7,	%i1
	sth	%i3,	[%l7 + 0x52]
	and	%l3,	%o2,	%i2
	movrgz	%g6,	%l2,	%o3
	std	%f14,	[%l7 + 0x38]
	array32	%l4,	%g2,	%l0
	fmul8x16al	%f10,	%f1,	%f4
	fble	%fcc2,	loop_1439
	stx	%l5,	[%l7 + 0x60]
	fnor	%f10,	%f2,	%f14
	std	%f4,	[%l7 + 0x40]
loop_1439:
	edge16ln	%o4,	%o1,	%i7
	bne	loop_1440
	st	%f14,	[%l7 + 0x3C]
	sllx	%g3,	0x11,	%l1
	ta	%icc,	0x6
loop_1440:
	fmuld8sux16	%f9,	%f13,	%f6
	movvs	%xcc,	%o7,	%i0
	srl	%i6,	%g1,	%o5
	alignaddr	%g4,	%o6,	%l6
	te	%icc,	0x3
	st	%f2,	[%l7 + 0x1C]
	sth	%i5,	[%l7 + 0x1E]
	ldsw	[%l7 + 0x50],	%o0
	andncc	%i4,	%g7,	%g5
	fmovdcs	%icc,	%f12,	%f5
	bn,a,pn	%xcc,	loop_1441
	xnor	%i1,	%l3,	%i3
	orcc	%o2,	0x0385,	%i2
	fbo,a	%fcc0,	loop_1442
loop_1441:
	st	%f3,	[%l7 + 0x60]
	te	%icc,	0x3
	alignaddrl	%l2,	%g6,	%l4
loop_1442:
	fbu,a	%fcc3,	loop_1443
	st	%f11,	[%l7 + 0x38]
	ldsw	[%l7 + 0x0C],	%g2
	tcs	%icc,	0x2
loop_1443:
	movle	%icc,	%o3,	%l0
	fcmpgt16	%f4,	%f6,	%l5
	fmovsg	%icc,	%f10,	%f5
	ld	[%l7 + 0x18],	%f8
	siam	0x4
	bcc	%icc,	loop_1444
	sth	%o4,	[%l7 + 0x0C]
	sll	%o1,	0x1D,	%i7
	ldd	[%l7 + 0x60],	%f12
loop_1444:
	edge16n	%g3,	%o7,	%i0
	ldsh	[%l7 + 0x52],	%i6
	stx	%l1,	[%l7 + 0x48]
	fmovdvs	%icc,	%f8,	%f6
	stx	%g1,	[%l7 + 0x28]
	stx	%o5,	[%l7 + 0x68]
	movre	%o6,	%l6,	%g4
	fmovsneg	%icc,	%f9,	%f5
	stx	%i5,	[%l7 + 0x38]
	xorcc	%i4,	%g7,	%g5
	bne,a,pt	%icc,	loop_1445
	lduw	[%l7 + 0x20],	%i1
	bg	loop_1446
	nop
	setx loop_1447, %l0, %l1
	jmpl %l1, %o0
loop_1445:
	ldx	[%l7 + 0x28],	%l3
	ldsh	[%l7 + 0x5C],	%o2
loop_1446:
	fornot2	%f14,	%f2,	%f8
loop_1447:
	fornot1	%f8,	%f2,	%f14
	edge32l	%i2,	%i3,	%l2
	fblg,a	%fcc3,	loop_1448
	bleu,a	loop_1449
	ldd	[%l7 + 0x18],	%f8
	std	%f2,	[%l7 + 0x10]
loop_1448:
	fcmple32	%f0,	%f2,	%g6
loop_1449:
	tleu	%icc,	0x5
	ldub	[%l7 + 0x5F],	%l4
	tl	%xcc,	0x0
	fmovrdlez	%g2,	%f6,	%f14
	bvc	%icc,	loop_1450
	ldx	[%l7 + 0x18],	%o3
	brz	%l0,	loop_1451
	edge8l	%o4,	%o1,	%i7
loop_1450:
	fmovrdlz	%l5,	%f14,	%f10
	edge8n	%o7,	%g3,	%i6
loop_1451:
	brgz	%l1,	loop_1452
	movg	%xcc,	%g1,	%i0
	ldsw	[%l7 + 0x20],	%o6
	mova	%icc,	%l6,	%o5
loop_1452:
	fbn	%fcc2,	loop_1453
	fmuld8sux16	%f1,	%f11,	%f8
	tg	%icc,	0x5
	tcc	%icc,	0x4
loop_1453:
	stb	%i5,	[%l7 + 0x37]
	mulscc	%g4,	%g7,	%i4
	brz	%g5,	loop_1454
	lduh	[%l7 + 0x6A],	%i1
	fpadd32s	%f11,	%f14,	%f7
	fmovsvc	%icc,	%f10,	%f1
loop_1454:
	fcmpeq16	%f0,	%f8,	%l3
	ldd	[%l7 + 0x60],	%f0
	fmovsvc	%icc,	%f9,	%f2
	tne	%icc,	0x1
	st	%f11,	[%l7 + 0x28]
	sth	%o2,	[%l7 + 0x46]
	fabsd	%f10,	%f10
	movrgz	%o0,	%i3,	%i2
	fbe,a	%fcc0,	loop_1455
	fxnors	%f5,	%f8,	%f10
	fandnot1	%f6,	%f10,	%f2
	fmovdpos	%icc,	%f10,	%f12
loop_1455:
	ldsw	[%l7 + 0x10],	%g6
	tvc	%icc,	0x7
	move	%xcc,	%l2,	%g2
	fmovrsgez	%o3,	%f9,	%f4
	fmovspos	%xcc,	%f3,	%f6
	pdist	%f12,	%f2,	%f12
	ldsh	[%l7 + 0x70],	%l4
	array32	%o4,	%o1,	%l0
	stw	%i7,	[%l7 + 0x74]
	fbl,a	%fcc0,	loop_1456
	sth	%l5,	[%l7 + 0x26]
	ldd	[%l7 + 0x78],	%f12
	fmuld8ulx16	%f13,	%f14,	%f10
loop_1456:
	ta	%xcc,	0x6
	taddcctv	%g3,	%i6,	%o7
	nop
	setx loop_1457, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stw	%g1,	[%l7 + 0x28]
	edge8l	%l1,	%o6,	%i0
	fpack32	%f0,	%f0,	%f6
loop_1457:
	fmul8x16al	%f4,	%f14,	%f12
	ldd	[%l7 + 0x40],	%f0
	fpsub32s	%f2,	%f0,	%f7
	tn	%xcc,	0x4
	bne,a	%icc,	loop_1458
	andn	%o5,	%i5,	%g4
	fcmpne32	%f10,	%f6,	%g7
	lduh	[%l7 + 0x0A],	%i4
loop_1458:
	ldsh	[%l7 + 0x3E],	%l6
	sth	%g5,	[%l7 + 0x20]
	movle	%icc,	%i1,	%l3
	bg,a,pn	%xcc,	loop_1459
	sth	%o2,	[%l7 + 0x74]
	ld	[%l7 + 0x68],	%f7
	stw	%i3,	[%l7 + 0x18]
loop_1459:
	ldd	[%l7 + 0x58],	%f10
	fmovsge	%xcc,	%f5,	%f5
	tg	%icc,	0x7
	fmovdleu	%icc,	%f6,	%f1
	fsrc2	%f2,	%f10
	ldd	[%l7 + 0x38],	%f12
	udivx	%i2,	0x0ABC,	%o0
	fmovsvc	%xcc,	%f15,	%f8
	sethi	0x0587,	%l2
	fmovsg	%xcc,	%f5,	%f1
	fmovsleu	%xcc,	%f9,	%f1
	fandnot1	%f8,	%f0,	%f6
	stx	%g2,	[%l7 + 0x78]
	stx	%o3,	[%l7 + 0x70]
	lduh	[%l7 + 0x5C],	%l4
	movle	%xcc,	%g6,	%o1
	ldsw	[%l7 + 0x10],	%l0
	edge16n	%i7,	%l5,	%o4
	stx	%i6,	[%l7 + 0x78]
	stw	%o7,	[%l7 + 0x54]
	lduh	[%l7 + 0x60],	%g1
	fnegs	%f11,	%f0
	fbne	%fcc0,	loop_1460
	ldd	[%l7 + 0x30],	%f4
	movn	%icc,	%g3,	%l1
	fmovrdgez	%o6,	%f4,	%f0
loop_1460:
	stb	%i0,	[%l7 + 0x79]
	lduw	[%l7 + 0x48],	%i5
	fpsub32s	%f14,	%f15,	%f10
	mulscc	%o5,	0x0EAE,	%g4
	ldub	[%l7 + 0x15],	%g7
	std	%f6,	[%l7 + 0x30]
	brgez	%l6,	loop_1461
	fornot2	%f14,	%f12,	%f2
	stw	%g5,	[%l7 + 0x68]
	sth	%i4,	[%l7 + 0x12]
loop_1461:
	addc	%i1,	%l3,	%o2
	stb	%i3,	[%l7 + 0x63]
	lduw	[%l7 + 0x54],	%i2
	fbne,a	%fcc0,	loop_1462
	ldx	[%l7 + 0x70],	%o0
	movge	%icc,	%l2,	%g2
	tcc	%icc,	0x2
loop_1462:
	bcs,a	loop_1463
	sra	%l4,	0x1C,	%o3
	fandnot2s	%f11,	%f13,	%f10
	tne	%xcc,	0x0
loop_1463:
	ldsh	[%l7 + 0x36],	%g6
	movrlz	%l0,	%o1,	%i7
	bvs,a,pt	%icc,	loop_1464
	fbn	%fcc0,	loop_1465
	addccc	%l5,	%o4,	%o7
	ldx	[%l7 + 0x68],	%g1
loop_1464:
	std	%f4,	[%l7 + 0x68]
loop_1465:
	st	%f15,	[%l7 + 0x5C]
	fmul8x16au	%f10,	%f10,	%f14
	edge16ln	%i6,	%l1,	%o6
	ldx	[%l7 + 0x60],	%g3
	bvc,a	loop_1466
	st	%f7,	[%l7 + 0x24]
	lduh	[%l7 + 0x60],	%i0
	fcmpeq32	%f4,	%f6,	%i5
loop_1466:
	movgu	%xcc,	%g4,	%g7
	movle	%icc,	%o5,	%g5
	lduw	[%l7 + 0x1C],	%l6
	fbul,a	%fcc2,	loop_1467
	bleu,a	%icc,	loop_1468
	tneg	%icc,	0x2
	fpadd32s	%f1,	%f11,	%f3
loop_1467:
	fmuld8ulx16	%f14,	%f13,	%f10
loop_1468:
	bleu,a,pn	%icc,	loop_1469
	ldub	[%l7 + 0x59],	%i1
	sth	%i4,	[%l7 + 0x10]
	addc	%o2,	0x0E6D,	%l3
loop_1469:
	te	%xcc,	0x5
	fpmerge	%f14,	%f7,	%f10
	bvc,a,pn	%icc,	loop_1470
	fmovdpos	%icc,	%f0,	%f15
	sllx	%i2,	0x19,	%o0
	sll	%l2,	0x17,	%i3
loop_1470:
	ldub	[%l7 + 0x2A],	%g2
	andcc	%o3,	%g6,	%l4
	stb	%l0,	[%l7 + 0x7E]
	fcmpgt16	%f10,	%f12,	%i7
	movrne	%l5,	0x1BA,	%o1
	nop
	setx loop_1471, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	bgu,a,pn	%icc,	loop_1472
	movne	%icc,	%o7,	%g1
	fbo	%fcc3,	loop_1473
loop_1471:
	fmovsl	%xcc,	%f9,	%f15
loop_1472:
	ld	[%l7 + 0x6C],	%f1
	edge8ln	%i6,	%l1,	%o4
loop_1473:
	st	%f8,	[%l7 + 0x78]
	fandnot1	%f12,	%f0,	%f10
	fnot1	%f12,	%f6
	fcmple32	%f6,	%f0,	%o6
	fandnot2	%f0,	%f12,	%f4
	movg	%xcc,	%i0,	%i5
	fmovsa	%xcc,	%f12,	%f10
	fbge	%fcc3,	loop_1474
	fsrc2s	%f6,	%f2
	movrlez	%g4,	%g7,	%o5
	movleu	%xcc,	%g5,	%g3
loop_1474:
	movge	%icc,	%l6,	%i4
	movvs	%icc,	%o2,	%i1
	fxnors	%f10,	%f10,	%f6
	ldsw	[%l7 + 0x48],	%l3
	ble,a	loop_1475
	sdiv	%i2,	0x1BA2,	%l2
	st	%f1,	[%l7 + 0x4C]
	fmovdneg	%icc,	%f7,	%f1
loop_1475:
	nop
	setx loop_1476, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldsh	[%l7 + 0x42],	%i3
	fone	%f8
	tpos	%xcc,	0x2
loop_1476:
	tcc	%xcc,	0x0
	fpadd32s	%f3,	%f2,	%f15
	stx	%g2,	[%l7 + 0x78]
	taddcc	%o3,	%o0,	%g6
	lduw	[%l7 + 0x1C],	%l0
	andn	%l4,	0x1444,	%l5
	movgu	%xcc,	%i7,	%o7
	fmovsn	%icc,	%f13,	%f0
	fnot2s	%f5,	%f8
	movneg	%icc,	%o1,	%i6
	fpsub16	%f0,	%f4,	%f8
	alignaddr	%g1,	%o4,	%o6
	fcmpes	%fcc1,	%f14,	%f6
	fones	%f5
	stb	%i0,	[%l7 + 0x1D]
	edge8n	%l1,	%i5,	%g4
	fmovdle	%icc,	%f7,	%f1
	movn	%icc,	%o5,	%g7
	alignaddrl	%g5,	%l6,	%i4
	fmovd	%f0,	%f2
	movcc	%icc,	%g3,	%i1
	fornot1	%f2,	%f0,	%f6
	tcc	%icc,	0x1
	ldub	[%l7 + 0x1C],	%l3
	sra	%i2,	%o2,	%i3
	fandnot2s	%f9,	%f4,	%f5
	fnands	%f14,	%f0,	%f3
	fmovrsne	%l2,	%f13,	%f3
	std	%f2,	[%l7 + 0x60]
	movrne	%o3,	0x3AD,	%o0
	stx	%g2,	[%l7 + 0x48]
	ldsb	[%l7 + 0x2F],	%l0
	subcc	%g6,	0x04A6,	%l5
	std	%f12,	[%l7 + 0x48]
	smulcc	%l4,	0x0EE5,	%o7
	movrlez	%i7,	%o1,	%g1
	fsrc2	%f14,	%f0
	movge	%xcc,	%o4,	%o6
	ldsw	[%l7 + 0x10],	%i6
	ldsb	[%l7 + 0x3F],	%i0
	tge	%xcc,	0x7
	tvc	%xcc,	0x0
	fmovspos	%icc,	%f9,	%f11
	bn,a	%icc,	loop_1477
	fxors	%f13,	%f15,	%f13
	st	%f9,	[%l7 + 0x34]
	edge32l	%i5,	%g4,	%l1
loop_1477:
	stb	%g7,	[%l7 + 0x76]
	lduw	[%l7 + 0x5C],	%g5
	tle	%icc,	0x6
	st	%f15,	[%l7 + 0x44]
	ldsh	[%l7 + 0x46],	%l6
	ldx	[%l7 + 0x78],	%o5
	tcc	%xcc,	0x7
	movge	%icc,	%i4,	%g3
	fcmpeq16	%f12,	%f12,	%l3
	st	%f4,	[%l7 + 0x6C]
	sth	%i1,	[%l7 + 0x5A]
	bvc,a,pt	%xcc,	loop_1478
	fandnot1	%f6,	%f14,	%f0
	fornot1	%f6,	%f8,	%f14
	fmovrslez	%o2,	%f12,	%f10
loop_1478:
	add	%i2,	%l2,	%o3
	or	%i3,	%g2,	%l0
	std	%f12,	[%l7 + 0x10]
	tle	%xcc,	0x5
	nop
	setx loop_1479, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldsw	[%l7 + 0x44],	%g6
	st	%f3,	[%l7 + 0x28]
	ble,pn	%xcc,	loop_1480
loop_1479:
	sethi	0x1465,	%o0
	stb	%l4,	[%l7 + 0x17]
	fabss	%f2,	%f10
loop_1480:
	bpos,a,pt	%icc,	loop_1481
	tvs	%xcc,	0x6
	siam	0x5
	fmovsg	%xcc,	%f9,	%f2
loop_1481:
	edge32n	%l5,	%i7,	%o7
	lduw	[%l7 + 0x48],	%o1
	move	%icc,	%g1,	%o4
	fmovsg	%xcc,	%f12,	%f3
	ldd	[%l7 + 0x48],	%f12
	taddcc	%o6,	0x0976,	%i6
	movrgez	%i0,	%i5,	%l1
	fbg	%fcc3,	loop_1482
	ldsw	[%l7 + 0x54],	%g4
	edge8n	%g5,	%l6,	%g7
	fpackfix	%f0,	%f2
loop_1482:
	st	%f6,	[%l7 + 0x3C]
	fmul8x16	%f0,	%f6,	%f12
	brnz	%i4,	loop_1483
	ldsb	[%l7 + 0x65],	%o5
	tn	%icc,	0x4
	fandnot2	%f14,	%f6,	%f4
loop_1483:
	stw	%l3,	[%l7 + 0x20]
	movvc	%icc,	%i1,	%o2
	fba,a	%fcc2,	loop_1484
	fcmpgt32	%f2,	%f0,	%g3
	fmovdgu	%icc,	%f9,	%f7
	fcmpeq32	%f12,	%f6,	%l2
loop_1484:
	fxnor	%f6,	%f12,	%f8
	tneg	%xcc,	0x6
	ldsh	[%l7 + 0x62],	%o3
	array8	%i3,	%i2,	%g2
	fand	%f2,	%f6,	%f0
	bpos	%icc,	loop_1485
	tn	%xcc,	0x4
	fbul,a	%fcc2,	loop_1486
	fnor	%f12,	%f12,	%f0
loop_1485:
	stb	%l0,	[%l7 + 0x28]
	fexpand	%f13,	%f10
loop_1486:
	sdiv	%o0,	0x1AA6,	%l4
	tsubcctv	%l5,	0x031D,	%g6
	lduw	[%l7 + 0x70],	%o7
	movrgez	%i7,	%o1,	%g1
	bne,a,pt	%icc,	loop_1487
	ldsb	[%l7 + 0x2A],	%o4
	std	%f14,	[%l7 + 0x28]
	ldsw	[%l7 + 0x4C],	%o6
loop_1487:
	fpackfix	%f6,	%f4
	ldsh	[%l7 + 0x44],	%i6
	fcmple16	%f2,	%f0,	%i0
	fmovsg	%icc,	%f9,	%f8
	be,a,pn	%icc,	loop_1488
	taddcctv	%i5,	%g4,	%g5
	ldsw	[%l7 + 0x30],	%l1
	fbge	%fcc0,	loop_1489
loop_1488:
	std	%f0,	[%l7 + 0x58]
	sdivx	%l6,	0x04B0,	%i4
	fornot1s	%f14,	%f10,	%f15
loop_1489:
	tle	%icc,	0x2
	stx	%g7,	[%l7 + 0x08]
	lduw	[%l7 + 0x5C],	%o5
	movneg	%xcc,	%i1,	%o2
	ldub	[%l7 + 0x2A],	%l3
	fnot2s	%f0,	%f2
	fmovdne	%icc,	%f13,	%f14
	ldsh	[%l7 + 0x3E],	%g3
	ldd	[%l7 + 0x08],	%f4
	fand	%f8,	%f8,	%f0
	movge	%xcc,	%o3,	%i3
	ld	[%l7 + 0x24],	%f9
	smul	%l2,	%i2,	%l0
	stx	%g2,	[%l7 + 0x28]
	and	%l4,	%o0,	%g6
	fzero	%f12
	ldx	[%l7 + 0x38],	%l5
	fexpand	%f8,	%f12
	fones	%f12
	ldsb	[%l7 + 0x2B],	%o7
	edge8l	%o1,	%g1,	%i7
	sra	%o4,	%i6,	%i0
	stx	%i5,	[%l7 + 0x50]
	bshuffle	%f14,	%f6,	%f10
	fmovsne	%icc,	%f7,	%f6
	edge8l	%g4,	%g5,	%l1
	fmovrslez	%l6,	%f4,	%f15
	fsrc2s	%f14,	%f13
	srax	%o6,	%i4,	%o5
	fcmps	%fcc1,	%f10,	%f5
	st	%f7,	[%l7 + 0x5C]
	bvc,a	%icc,	loop_1490
	fbue	%fcc2,	loop_1491
	std	%f0,	[%l7 + 0x60]
	fbne	%fcc3,	loop_1492
loop_1490:
	fbn,a	%fcc3,	loop_1493
loop_1491:
	stx	%i1,	[%l7 + 0x58]
	andn	%g7,	%l3,	%g3
loop_1492:
	nop
	setx loop_1494, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_1493:
	ldx	[%l7 + 0x08],	%o3
	fpadd32s	%f9,	%f15,	%f3
	ldsh	[%l7 + 0x54],	%o2
loop_1494:
	fmovdge	%icc,	%f6,	%f6
	fmovdge	%xcc,	%f2,	%f11
	call	loop_1495
	lduh	[%l7 + 0x3A],	%i3
	fmovrdgz	%i2,	%f10,	%f14
	fzero	%f0
loop_1495:
	fnot1	%f6,	%f0
	fbl	%fcc2,	loop_1496
	umulcc	%l2,	0x0D61,	%g2
	fmovsvc	%icc,	%f11,	%f13
	fmovse	%icc,	%f3,	%f15
loop_1496:
	fmovse	%icc,	%f9,	%f7
	lduh	[%l7 + 0x10],	%l4
	fpsub32	%f14,	%f4,	%f0
	fmovrdgz	%l0,	%f4,	%f10
	fabsd	%f12,	%f10
	stb	%g6,	[%l7 + 0x61]
	edge8ln	%o0,	%o7,	%o1
	std	%f6,	[%l7 + 0x78]
	tleu	%xcc,	0x7
	bl,a	%icc,	loop_1497
	fmovspos	%xcc,	%f5,	%f4
	bne,a	loop_1498
	lduh	[%l7 + 0x08],	%g1
loop_1497:
	fmovscc	%xcc,	%f14,	%f2
	edge16l	%i7,	%l5,	%o4
loop_1498:
	tle	%icc,	0x5
	bcs,pn	%icc,	loop_1499
	umul	%i0,	0x1C78,	%i6
	fnot1s	%f8,	%f9
	movrlz	%i5,	%g4,	%g5
loop_1499:
	tgu	%icc,	0x5
	fmovdn	%xcc,	%f14,	%f3
	edge32	%l1,	%l6,	%o6
	xorcc	%i4,	%o5,	%g7
	fsrc2s	%f9,	%f2
	bvc	loop_1500
	bvs,a	%icc,	loop_1501
	fmovsgu	%xcc,	%f15,	%f11
	movrne	%i1,	0x367,	%g3
loop_1500:
	ldd	[%l7 + 0x68],	%f4
loop_1501:
	brlz	%l3,	loop_1502
	tsubcc	%o2,	0x00DA,	%o3
	std	%f0,	[%l7 + 0x30]
	taddcc	%i2,	0x1D78,	%l2
loop_1502:
	xor	%g2,	%l4,	%i3
	std	%f12,	[%l7 + 0x18]
	lduw	[%l7 + 0x68],	%l0
	fbug,a	%fcc0,	loop_1503
	bl	loop_1504
	mulx	%o0,	%o7,	%o1
	movcs	%icc,	%g1,	%i7
loop_1503:
	ldsh	[%l7 + 0x26],	%g6
loop_1504:
	ldd	[%l7 + 0x50],	%f14
	fmovsg	%xcc,	%f2,	%f0
	sth	%o4,	[%l7 + 0x78]
	lduh	[%l7 + 0x42],	%l5
	fcmpes	%fcc2,	%f6,	%f15
	ldd	[%l7 + 0x50],	%f10
	bg,pn	%icc,	loop_1505
	udiv	%i0,	0x1B68,	%i6
	fmul8x16	%f7,	%f0,	%f12
	stw	%g4,	[%l7 + 0x54]
loop_1505:
	udivx	%g5,	0x0518,	%i5
	edge8l	%l6,	%l1,	%i4
	edge16n	%o5,	%g7,	%i1
	fmovdneg	%xcc,	%f5,	%f6
	fpadd32	%f12,	%f2,	%f6
	ldsw	[%l7 + 0x1C],	%g3
	fmovspos	%icc,	%f4,	%f4
	tvc	%icc,	0x6
	sllx	%l3,	%o6,	%o2
	edge16	%i2,	%o3,	%l2
	st	%f0,	[%l7 + 0x24]
	bge,pn	%icc,	loop_1506
	std	%f12,	[%l7 + 0x40]
	edge8l	%g2,	%i3,	%l4
	fble	%fcc2,	loop_1507
loop_1506:
	nop
	setx loop_1508, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	edge8l	%l0,	%o7,	%o0
	ld	[%l7 + 0x4C],	%f8
loop_1507:
	ldsb	[%l7 + 0x63],	%g1
loop_1508:
	bge,a	%xcc,	loop_1509
	bleu,a,pn	%xcc,	loop_1510
	lduw	[%l7 + 0x48],	%o1
	popc	0x1920,	%i7
loop_1509:
	ld	[%l7 + 0x10],	%f11
loop_1510:
	std	%f14,	[%l7 + 0x60]
	fpackfix	%f10,	%f0
	nop
	setx loop_1511, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	tcc	%icc,	0x4
	srl	%o4,	%g6,	%l5
	ld	[%l7 + 0x0C],	%f4
loop_1511:
	sth	%i6,	[%l7 + 0x70]
	fmovd	%f12,	%f0
	fmovsleu	%icc,	%f4,	%f1
	fbne,a	%fcc0,	loop_1512
	faligndata	%f12,	%f12,	%f4
	movn	%xcc,	%g4,	%g5
	bge,a	loop_1513
loop_1512:
	fmovspos	%icc,	%f9,	%f4
	edge16l	%i0,	%i5,	%l1
	orncc	%i4,	0x1E8B,	%o5
loop_1513:
	st	%f9,	[%l7 + 0x2C]
	fors	%f12,	%f9,	%f12
	tle	%icc,	0x5
	lduh	[%l7 + 0x36],	%g7
	udiv	%i1,	0x0FBA,	%g3
	movleu	%xcc,	%l6,	%l3
	tvc	%icc,	0x0
	addccc	%o2,	0x0657,	%o6
	ldub	[%l7 + 0x3B],	%i2
	lduh	[%l7 + 0x78],	%l2
	ba,a	%xcc,	loop_1514
	fabsd	%f12,	%f10
	sth	%g2,	[%l7 + 0x72]
	fmuld8sux16	%f6,	%f5,	%f0
loop_1514:
	fbn,a	%fcc3,	loop_1515
	taddcctv	%i3,	%l4,	%l0
	ldsb	[%l7 + 0x4C],	%o3
	fmovsge	%icc,	%f10,	%f3
loop_1515:
	ldsb	[%l7 + 0x64],	%o7
	ldx	[%l7 + 0x60],	%g1
	edge16n	%o0,	%o1,	%i7
	ldsb	[%l7 + 0x08],	%g6
	ldsb	[%l7 + 0x76],	%o4
	ld	[%l7 + 0x0C],	%f12
	sth	%l5,	[%l7 + 0x44]
	ldsb	[%l7 + 0x5A],	%i6
	brgez	%g5,	loop_1516
	fmul8x16au	%f14,	%f13,	%f6
	bshuffle	%f6,	%f10,	%f14
	sll	%g4,	0x19,	%i0
loop_1516:
	fcmpne16	%f2,	%f8,	%i5
	st	%f12,	[%l7 + 0x6C]
	sdivx	%i4,	0x1DEA,	%o5
	fmovsg	%icc,	%f3,	%f13
	stx	%g7,	[%l7 + 0x18]
	ldub	[%l7 + 0x31],	%i1
	fbe,a	%fcc1,	loop_1517
	movg	%xcc,	%g3,	%l1
	fmovda	%xcc,	%f7,	%f3
	fexpand	%f4,	%f4
loop_1517:
	fnands	%f1,	%f10,	%f4
	fpadd16s	%f1,	%f12,	%f5
	fmovdl	%xcc,	%f14,	%f9
	fmovdvc	%xcc,	%f11,	%f3
	fpsub16	%f14,	%f12,	%f0
	edge16ln	%l6,	%o2,	%l3
	ld	[%l7 + 0x30],	%f12
	ld	[%l7 + 0x48],	%f15
	fxnor	%f0,	%f10,	%f8
	sth	%o6,	[%l7 + 0x18]
	fmovscs	%icc,	%f7,	%f7
	ldx	[%l7 + 0x58],	%l2
	fxor	%f2,	%f12,	%f0
	std	%f6,	[%l7 + 0x58]
	fmovdpos	%xcc,	%f3,	%f13
	bge	loop_1518
	movvc	%icc,	%g2,	%i3
	lduh	[%l7 + 0x16],	%i2
	fblg,a	%fcc3,	loop_1519
loop_1518:
	fsrc2s	%f11,	%f9
	std	%f8,	[%l7 + 0x68]
	fcmpne16	%f4,	%f10,	%l4
loop_1519:
	fmul8ulx16	%f14,	%f2,	%f0
	sth	%o3,	[%l7 + 0x58]
	ldd	[%l7 + 0x48],	%f0
	tne	%xcc,	0x5
	udiv	%o7,	0x02B8,	%g1
	std	%f4,	[%l7 + 0x78]
	fcmps	%fcc1,	%f6,	%f6
	ld	[%l7 + 0x48],	%f8
	fble	%fcc0,	loop_1520
	move	%xcc,	%o0,	%o1
	fcmped	%fcc2,	%f2,	%f4
	lduw	[%l7 + 0x60],	%i7
loop_1520:
	ble	%xcc,	loop_1521
	ldsw	[%l7 + 0x08],	%g6
	ldsh	[%l7 + 0x60],	%l0
	umul	%l5,	0x07F2,	%o4
loop_1521:
	fcmpgt32	%f4,	%f2,	%g5
	ldd	[%l7 + 0x48],	%f10
	tvs	%icc,	0x2
	lduw	[%l7 + 0x20],	%i6
	lduh	[%l7 + 0x60],	%i0
	tne	%xcc,	0x3
	lduw	[%l7 + 0x64],	%g4
	fmovdleu	%icc,	%f8,	%f7
	ldsb	[%l7 + 0x26],	%i4
	nop
	setx loop_1522, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldub	[%l7 + 0x50],	%i5
	sdiv	%g7,	0x0765,	%o5
	ldsb	[%l7 + 0x43],	%i1
loop_1522:
	fmovsg	%icc,	%f5,	%f6
	std	%f8,	[%l7 + 0x18]
	fba	%fcc3,	loop_1523
	ble	%icc,	loop_1524
	fones	%f2
	stw	%l1,	[%l7 + 0x60]
loop_1523:
	fmul8ulx16	%f0,	%f14,	%f14
loop_1524:
	ldub	[%l7 + 0x50],	%g3
	array32	%o2,	%l6,	%o6
	tcc	%xcc,	0x0
	fmovsvc	%xcc,	%f1,	%f3
	movge	%icc,	%l2,	%g2
	movrlz	%l3,	0x227,	%i2
	fsrc1	%f12,	%f10
	sub	%i3,	0x1C8A,	%o3
	fxor	%f4,	%f4,	%f6
	fbn	%fcc2,	loop_1525
	ldd	[%l7 + 0x48],	%f4
	fmul8ulx16	%f4,	%f4,	%f14
	edge8l	%l4,	%g1,	%o0
loop_1525:
	fmovdvc	%icc,	%f6,	%f7
	stw	%o1,	[%l7 + 0x34]
	fmovdneg	%icc,	%f11,	%f6
	movrgz	%o7,	%i7,	%l0
	movcc	%xcc,	%g6,	%l5
	brnz,a	%o4,	loop_1526
	orn	%i6,	%i0,	%g4
	tn	%icc,	0x5
	fmovsneg	%xcc,	%f14,	%f12
loop_1526:
	fcmpne16	%f12,	%f2,	%i4
	faligndata	%f6,	%f4,	%f12
	tcc	%icc,	0x3
	ta	%xcc,	0x1
	fornot2s	%f3,	%f13,	%f15
	fcmple32	%f0,	%f2,	%g5
	fsrc2s	%f12,	%f2
	smulcc	%i5,	%o5,	%g7
	udivcc	%i1,	0x1827,	%g3
	movl	%xcc,	%l1,	%l6
	fmovscs	%xcc,	%f0,	%f12
	ldsb	[%l7 + 0x47],	%o6
	bpos,a,pt	%xcc,	loop_1527
	fmovs	%f7,	%f6
	srax	%l2,	0x1C,	%o2
	fcmpeq32	%f12,	%f14,	%g2
loop_1527:
	fnot1s	%f2,	%f13
	fmovspos	%xcc,	%f15,	%f0
	fbu	%fcc1,	loop_1528
	fmovsle	%icc,	%f14,	%f12
	umul	%i2,	0x0B9C,	%l3
	fmovd	%f12,	%f0
loop_1528:
	fbl,a	%fcc0,	loop_1529
	popc	0x0CE9,	%o3
	fandnot1	%f8,	%f14,	%f12
	sth	%i3,	[%l7 + 0x2E]
loop_1529:
	sra	%l4,	0x1F,	%g1
	alignaddr	%o1,	%o7,	%o0
	xnor	%i7,	%l0,	%g6
	std	%f4,	[%l7 + 0x60]
	srax	%l5,	0x1D,	%o4
	stw	%i6,	[%l7 + 0x20]
	ldsh	[%l7 + 0x78],	%g4
	sth	%i0,	[%l7 + 0x26]
	xorcc	%i4,	0x1632,	%g5
	fbule,a	%fcc0,	loop_1530
	sra	%o5,	0x04,	%i5
	st	%f8,	[%l7 + 0x2C]
	fsrc1	%f8,	%f8
loop_1530:
	sdivx	%i1,	0x1659,	%g3
	edge8	%l1,	%g7,	%o6
	addcc	%l6,	%o2,	%l2
	stw	%g2,	[%l7 + 0x1C]
	std	%f4,	[%l7 + 0x40]
	orncc	%i2,	%l3,	%o3
	fandnot2	%f2,	%f12,	%f8
	ldd	[%l7 + 0x40],	%f10
	tl	%icc,	0x2
	fsrc1	%f8,	%f6
	st	%f10,	[%l7 + 0x54]
	bleu,a,pn	%xcc,	loop_1531
	or	%l4,	%i3,	%o1
	sth	%g1,	[%l7 + 0x52]
	lduh	[%l7 + 0x6C],	%o7
loop_1531:
	ld	[%l7 + 0x68],	%f13
	st	%f5,	[%l7 + 0x7C]
	movge	%icc,	%i7,	%o0
	fbe,a	%fcc0,	loop_1532
	bneg,a,pn	%xcc,	loop_1533
	lduh	[%l7 + 0x64],	%g6
	stb	%l0,	[%l7 + 0x12]
loop_1532:
	stb	%l5,	[%l7 + 0x26]
loop_1533:
	fblg	%fcc1,	loop_1534
	edge8l	%i6,	%o4,	%i0
	srax	%i4,	%g4,	%o5
	fmovrse	%g5,	%f1,	%f14
loop_1534:
	mulscc	%i5,	0x16AF,	%i1
	fmovrdgz	%g3,	%f2,	%f0
	ldd	[%l7 + 0x30],	%f4
	move	%icc,	%l1,	%g7
	ld	[%l7 + 0x18],	%f4
	ldsb	[%l7 + 0x1E],	%o6
	ldx	[%l7 + 0x08],	%o2
	sll	%l2,	0x1F,	%l6
	ldx	[%l7 + 0x28],	%g2
	ldsb	[%l7 + 0x56],	%i2
	movle	%icc,	%o3,	%l4
	fmovdl	%icc,	%f0,	%f5
	ldd	[%l7 + 0x58],	%f12
	nop
	setx loop_1535, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldsh	[%l7 + 0x68],	%i3
	movpos	%icc,	%o1,	%l3
	stx	%g1,	[%l7 + 0x40]
loop_1535:
	fmovdg	%xcc,	%f8,	%f8
	brlz	%o7,	loop_1536
	ldx	[%l7 + 0x30],	%i7
	bge,pt	%xcc,	loop_1537
	fbl,a	%fcc0,	loop_1538
loop_1536:
	st	%f12,	[%l7 + 0x54]
	fmovscc	%icc,	%f6,	%f14
loop_1537:
	tle	%xcc,	0x7
loop_1538:
	ld	[%l7 + 0x38],	%f15
	movvc	%icc,	%o0,	%g6
	movcs	%xcc,	%l5,	%i6
	edge16	%l0,	%o4,	%i0
	fbue,a	%fcc3,	loop_1539
	std	%f8,	[%l7 + 0x50]
	fand	%f12,	%f2,	%f14
	bshuffle	%f12,	%f8,	%f0
loop_1539:
	fmovsne	%icc,	%f15,	%f14
	fbge	%fcc3,	loop_1540
	movcc	%icc,	%g4,	%i4
	movre	%o5,	%g5,	%i1
	bcs,pn	%xcc,	loop_1541
loop_1540:
	bpos,a,pt	%icc,	loop_1542
	tvs	%icc,	0x3
	stw	%i5,	[%l7 + 0x4C]
loop_1541:
	bpos	%xcc,	loop_1543
loop_1542:
	fones	%f7
	fmovdcs	%xcc,	%f2,	%f15
	fcmple32	%f4,	%f8,	%g3
loop_1543:
	ldub	[%l7 + 0x59],	%l1
	lduw	[%l7 + 0x14],	%o6
	lduh	[%l7 + 0x58],	%g7
	tsubcc	%o2,	%l2,	%l6
	mulx	%i2,	%o3,	%l4
	ldx	[%l7 + 0x20],	%i3
	subc	%g2,	0x1DB1,	%o1
	fbne,a	%fcc2,	loop_1544
	nop
	setx loop_1545, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	st	%f11,	[%l7 + 0x48]
	tpos	%xcc,	0x3
loop_1544:
	movg	%icc,	%g1,	%o7
loop_1545:
	add	%l3,	0x01E5,	%o0
	nop
	setx loop_1546, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	movpos	%icc,	%i7,	%g6
	ldd	[%l7 + 0x78],	%f12
	std	%f10,	[%l7 + 0x30]
loop_1546:
	fxors	%f13,	%f7,	%f14
	xnorcc	%i6,	0x04B3,	%l0
	fmul8x16	%f13,	%f10,	%f4
	stb	%o4,	[%l7 + 0x78]
	fsrc2s	%f4,	%f7
	fbue	%fcc3,	loop_1547
	fsrc1	%f12,	%f4
	fnot2	%f0,	%f14
	fmovsneg	%icc,	%f13,	%f13
loop_1547:
	edge32	%l5,	%g4,	%i0
	fpadd32s	%f15,	%f11,	%f12
	siam	0x3
	mulscc	%i4,	%o5,	%i1
	bleu,a,pt	%xcc,	loop_1548
	te	%icc,	0x4
	lduw	[%l7 + 0x08],	%i5
	fbule,a	%fcc2,	loop_1549
loop_1548:
	tneg	%xcc,	0x6
	lduw	[%l7 + 0x14],	%g3
	fnor	%f12,	%f12,	%f0
loop_1549:
	fabss	%f8,	%f11
	movl	%icc,	%g5,	%l1
	fone	%f14
	fcmpgt32	%f10,	%f6,	%g7
	movle	%icc,	%o2,	%l2
	fmovdgu	%icc,	%f10,	%f0
	fmovdne	%icc,	%f9,	%f0
	ldsh	[%l7 + 0x26],	%l6
	bcs	loop_1550
	edge8	%i2,	%o6,	%o3
	tsubcc	%i3,	%l4,	%g2
	sub	%g1,	%o1,	%l3
loop_1550:
	ldx	[%l7 + 0x08],	%o7
	fpack32	%f12,	%f12,	%f2
	bneg,a	%icc,	loop_1551
	stw	%o0,	[%l7 + 0x70]
	orn	%i7,	0x050F,	%i6
	fcmpne32	%f14,	%f8,	%l0
loop_1551:
	movl	%xcc,	%o4,	%g6
	stb	%g4,	[%l7 + 0x24]
	fxor	%f8,	%f14,	%f4
	movne	%xcc,	%i0,	%l5
	fcmpgt16	%f4,	%f4,	%o5
	lduh	[%l7 + 0x7C],	%i4
	movle	%xcc,	%i5,	%i1
	movcs	%icc,	%g3,	%l1
	smul	%g7,	%g5,	%l2
	umul	%l6,	0x0844,	%i2
	fbul	%fcc3,	loop_1552
	umul	%o6,	%o3,	%i3
	tsubcc	%o2,	0x1CC4,	%g2
	stw	%g1,	[%l7 + 0x50]
loop_1552:
	be	%icc,	loop_1553
	fnors	%f6,	%f6,	%f13
	fcmple32	%f8,	%f12,	%l4
	brlez	%o1,	loop_1554
loop_1553:
	lduw	[%l7 + 0x34],	%o7
	tn	%icc,	0x5
	bneg,a	loop_1555
loop_1554:
	fornot2	%f0,	%f12,	%f0
	fmovde	%icc,	%f7,	%f8
	tn	%icc,	0x4
loop_1555:
	lduh	[%l7 + 0x16],	%l3
	bshuffle	%f4,	%f12,	%f14
	stw	%i7,	[%l7 + 0x64]
	array16	%i6,	%o0,	%l0
	movne	%xcc,	%o4,	%g6
	brgz	%g4,	loop_1556
	fpadd32	%f4,	%f2,	%f10
	bcs,a	loop_1557
	fabss	%f15,	%f11
loop_1556:
	fmovdn	%icc,	%f10,	%f15
	and	%i0,	%l5,	%o5
loop_1557:
	te	%icc,	0x7
	tle	%icc,	0x2
	tsubcctv	%i4,	%i5,	%g3
	sra	%i1,	0x0F,	%g7
	fpsub32	%f4,	%f0,	%f4
	ldub	[%l7 + 0x62],	%l1
	ta	%icc,	0x7
	std	%f14,	[%l7 + 0x20]
	fpadd16s	%f14,	%f6,	%f0
	tn	%xcc,	0x5
	fmovdl	%xcc,	%f10,	%f10
	movcc	%icc,	%l2,	%g5
	smul	%i2,	%o6,	%o3
	lduw	[%l7 + 0x10],	%l6
	fnegd	%f8,	%f8
	movleu	%icc,	%i3,	%o2
	stw	%g1,	[%l7 + 0x4C]
	fmovsgu	%xcc,	%f3,	%f13
	array16	%l4,	%o1,	%o7
	lduw	[%l7 + 0x24],	%l3
	fmovsg	%xcc,	%f12,	%f13
	fpsub16s	%f3,	%f6,	%f8
	std	%f8,	[%l7 + 0x50]
	fornot1	%f10,	%f6,	%f14
	fmovrdlz	%g2,	%f6,	%f0
	ldsb	[%l7 + 0x46],	%i6
	ldx	[%l7 + 0x38],	%o0
	ldx	[%l7 + 0x48],	%i7
	tneg	%icc,	0x6
	movrne	%o4,	%g6,	%g4
	fcmpeq32	%f8,	%f8,	%i0
	stx	%l0,	[%l7 + 0x10]
	subc	%o5,	%i4,	%i5
	tpos	%icc,	0x3
	fxnor	%f10,	%f6,	%f14
	ldx	[%l7 + 0x10],	%l5
	bneg,pn	%xcc,	loop_1558
	ld	[%l7 + 0x0C],	%f5
	ldx	[%l7 + 0x78],	%i1
	fmovrdgez	%g3,	%f10,	%f14
loop_1558:
	fmovsneg	%xcc,	%f4,	%f1
	brz,a	%l1,	loop_1559
	fxnor	%f0,	%f10,	%f8
	bg,pn	%xcc,	loop_1560
	fbul,a	%fcc1,	loop_1561
loop_1559:
	ldd	[%l7 + 0x78],	%f12
	fmul8x16au	%f15,	%f12,	%f12
loop_1560:
	fandnot2	%f2,	%f0,	%f8
loop_1561:
	st	%f1,	[%l7 + 0x3C]
	alignaddrl	%l2,	%g5,	%i2
	lduw	[%l7 + 0x68],	%o6
	fors	%f10,	%f12,	%f11
	ld	[%l7 + 0x14],	%f5
	ldd	[%l7 + 0x10],	%f12
	movrgz	%o3,	%g7,	%i3
	fabss	%f7,	%f6
	srax	%o2,	%g1,	%l4
	fsrc2s	%f8,	%f7
	tg	%icc,	0x6
	nop
	setx loop_1562, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fxors	%f5,	%f5,	%f15
	ldsw	[%l7 + 0x2C],	%o1
	fcmpgt32	%f2,	%f2,	%l6
loop_1562:
	ld	[%l7 + 0x74],	%f10
	stx	%o7,	[%l7 + 0x38]
	movre	%l3,	%i6,	%o0
	taddcctv	%i7,	%g2,	%o4
	nop
	setx loop_1563, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	udivx	%g6,	0x07B5,	%i0
	fmovdneg	%xcc,	%f12,	%f3
	fxors	%f7,	%f14,	%f9
loop_1563:
	movpos	%xcc,	%g4,	%o5
	stb	%l0,	[%l7 + 0x75]
	ldx	[%l7 + 0x50],	%i4
	sth	%l5,	[%l7 + 0x3A]
	fmovsvc	%xcc,	%f0,	%f9
	brlez,a	%i1,	loop_1564
	fsrc2s	%f8,	%f11
	ld	[%l7 + 0x34],	%f12
	udiv	%g3,	0x05A3,	%l1
loop_1564:
	subcc	%l2,	%g5,	%i5
	xor	%o6,	0x15C7,	%o3
	fmul8ulx16	%f12,	%f10,	%f12
	movrlz	%g7,	%i3,	%o2
	stb	%i2,	[%l7 + 0x2F]
	tl	%xcc,	0x0
	lduh	[%l7 + 0x70],	%g1
	fmovscs	%icc,	%f0,	%f2
	tsubcctv	%l4,	%l6,	%o1
	st	%f6,	[%l7 + 0x0C]
	stx	%o7,	[%l7 + 0x38]
	smulcc	%l3,	%i6,	%o0
	fmuld8sux16	%f10,	%f12,	%f0
	edge32l	%g2,	%o4,	%i7
	bge,a,pt	%xcc,	loop_1565
	movcc	%xcc,	%g6,	%g4
	tsubcc	%o5,	0x0498,	%i0
	andncc	%i4,	%l0,	%i1
loop_1565:
	ldsh	[%l7 + 0x60],	%g3
	fcmple32	%f0,	%f10,	%l5
	tvc	%xcc,	0x5
	fors	%f9,	%f11,	%f11
	lduw	[%l7 + 0x70],	%l2
	faligndata	%f12,	%f2,	%f8
	fxnor	%f14,	%f8,	%f8
	movcs	%icc,	%l1,	%i5
	nop
	setx loop_1566, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovsge	%icc,	%f12,	%f14
	sth	%g5,	[%l7 + 0x60]
	movgu	%xcc,	%o3,	%g7
loop_1566:
	edge16l	%o6,	%o2,	%i2
	sth	%g1,	[%l7 + 0x58]
	fmovrslz	%l4,	%f13,	%f12
	edge8n	%i3,	%o1,	%l6
	fandnot2s	%f7,	%f3,	%f7
	nop
	setx loop_1567, %l0, %l1
	jmpl %l1, %o7
	fnot2s	%f4,	%f14
	movle	%xcc,	%l3,	%i6
	be,pn	%icc,	loop_1568
loop_1567:
	ldd	[%l7 + 0x60],	%f6
	movle	%xcc,	%o0,	%o4
	std	%f0,	[%l7 + 0x28]
loop_1568:
	ldx	[%l7 + 0x08],	%i7
	fmovrsgez	%g2,	%f6,	%f3
	fmovrdgz	%g4,	%f4,	%f0
	st	%f5,	[%l7 + 0x68]
	fbo	%fcc3,	loop_1569
	brnz	%g6,	loop_1570
	fandnot1	%f4,	%f6,	%f0
	st	%f9,	[%l7 + 0x58]
loop_1569:
	brgez	%i0,	loop_1571
loop_1570:
	fors	%f7,	%f12,	%f1
	bge,a,pn	%xcc,	loop_1572
	fmovdcc	%xcc,	%f6,	%f4
loop_1571:
	fpadd32	%f12,	%f8,	%f0
	addccc	%o5,	0x124A,	%i4
loop_1572:
	srl	%i1,	%g3,	%l5
	fcmple16	%f14,	%f4,	%l2
	tvs	%icc,	0x4
	fbule	%fcc1,	loop_1573
	ldsh	[%l7 + 0x3A],	%l1
	stw	%l0,	[%l7 + 0x20]
	fmovdvs	%xcc,	%f1,	%f15
loop_1573:
	fpack16	%f10,	%f1
	fmovdl	%xcc,	%f8,	%f11
	edge8	%i5,	%g5,	%g7
	sth	%o6,	[%l7 + 0x54]
	ld	[%l7 + 0x1C],	%f12
	edge8n	%o3,	%o2,	%g1
	umul	%l4,	%i3,	%o1
	fornot2s	%f13,	%f6,	%f11
	edge16l	%l6,	%o7,	%i2
	movpos	%icc,	%i6,	%o0
	std	%f2,	[%l7 + 0x60]
	fbuge	%fcc2,	loop_1574
	fmul8x16al	%f10,	%f9,	%f6
	fbg	%fcc1,	loop_1575
	fmovsg	%xcc,	%f10,	%f15
loop_1574:
	std	%f8,	[%l7 + 0x30]
	ldd	[%l7 + 0x30],	%f10
loop_1575:
	edge16n	%o4,	%i7,	%g2
	fmovsa	%icc,	%f12,	%f10
	fnands	%f12,	%f4,	%f3
	stx	%g4,	[%l7 + 0x78]
	stb	%g6,	[%l7 + 0x0C]
	lduw	[%l7 + 0x60],	%i0
	std	%f8,	[%l7 + 0x48]
	stx	%l3,	[%l7 + 0x30]
	ldsw	[%l7 + 0x2C],	%i4
	tpos	%icc,	0x2
	fmul8x16al	%f11,	%f4,	%f14
	fnors	%f11,	%f7,	%f13
	pdist	%f0,	%f2,	%f6
	udivcc	%i1,	0x1611,	%g3
	fmovdg	%xcc,	%f12,	%f0
	srax	%o5,	%l5,	%l2
	edge8	%l1,	%l0,	%g5
	fmul8sux16	%f6,	%f0,	%f14
	st	%f0,	[%l7 + 0x40]
	xor	%g7,	0x073F,	%o6
	call	loop_1576
	stb	%i5,	[%l7 + 0x7B]
	ldx	[%l7 + 0x40],	%o3
	ldub	[%l7 + 0x31],	%g1
loop_1576:
	tge	%icc,	0x5
	orncc	%o2,	%i3,	%o1
	fbug,a	%fcc0,	loop_1577
	st	%f12,	[%l7 + 0x38]
	bg,a,pt	%icc,	loop_1578
	array16	%l4,	%o7,	%l6
loop_1577:
	fmovdcc	%icc,	%f3,	%f4
	smul	%i6,	0x0579,	%o0
loop_1578:
	st	%f2,	[%l7 + 0x1C]
	fornot1s	%f4,	%f15,	%f0
	fcmpes	%fcc1,	%f3,	%f3
	array8	%o4,	%i7,	%i2
	movrgz	%g2,	0x211,	%g6
	subc	%i0,	%g4,	%i4
	bge,a	loop_1579
	fnor	%f0,	%f8,	%f0
	fmovdg	%xcc,	%f7,	%f8
	fmovdge	%icc,	%f14,	%f11
loop_1579:
	movne	%icc,	%i1,	%l3
	stb	%g3,	[%l7 + 0x68]
	smul	%l5,	%l2,	%l1
	fmovsl	%icc,	%f7,	%f5
	std	%f8,	[%l7 + 0x68]
	edge8n	%o5,	%l0,	%g5
	sth	%g7,	[%l7 + 0x6C]
	fmovdn	%icc,	%f10,	%f9
	tneg	%icc,	0x2
	sth	%i5,	[%l7 + 0x7A]
	fmovdg	%icc,	%f10,	%f14
	lduh	[%l7 + 0x3C],	%o3
	bcc	loop_1580
	bgu,pn	%icc,	loop_1581
	fbge	%fcc1,	loop_1582
	sth	%o6,	[%l7 + 0x22]
loop_1580:
	fornot2	%f4,	%f10,	%f10
loop_1581:
	fsrc2s	%f10,	%f13
loop_1582:
	fornot2s	%f4,	%f13,	%f5
	subc	%o2,	0x04AD,	%g1
	bneg,pn	%xcc,	loop_1583
	and	%i3,	0x0508,	%l4
	fandnot1	%f2,	%f6,	%f14
	ta	%xcc,	0x7
loop_1583:
	stb	%o1,	[%l7 + 0x2A]
	fones	%f2
	fmovsneg	%icc,	%f6,	%f7
	fmul8x16al	%f5,	%f12,	%f14
	xorcc	%l6,	0x1360,	%o7
	std	%f2,	[%l7 + 0x08]
	stx	%i6,	[%l7 + 0x30]
	edge32n	%o0,	%i7,	%o4
	brlz,a	%i2,	loop_1584
	movg	%icc,	%g6,	%g2
	fmovsl	%icc,	%f15,	%f7
	fxors	%f2,	%f6,	%f6
loop_1584:
	fzero	%f0
	ldub	[%l7 + 0x3E],	%i0
	sllx	%g4,	0x01,	%i1
	nop
	setx loop_1585, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	subcc	%i4,	%l3,	%g3
	st	%f8,	[%l7 + 0x24]
	tsubcc	%l2,	0x1664,	%l5
loop_1585:
	sll	%o5,	0x0A,	%l0
	movn	%icc,	%l1,	%g5
	fbn,a	%fcc1,	loop_1586
	fmul8x16au	%f10,	%f8,	%f10
	ldsh	[%l7 + 0x22],	%i5
	udiv	%g7,	0x0F4D,	%o6
loop_1586:
	bne,a,pn	%icc,	loop_1587
	andn	%o3,	0x0944,	%o2
	fbu,a	%fcc0,	loop_1588
	ldsb	[%l7 + 0x4C],	%g1
loop_1587:
	edge32l	%i3,	%o1,	%l6
	lduw	[%l7 + 0x7C],	%l4
loop_1588:
	lduw	[%l7 + 0x44],	%i6
	sth	%o0,	[%l7 + 0x44]
	ldsb	[%l7 + 0x4B],	%o7
	array8	%o4,	%i7,	%i2
	fbule,a	%fcc2,	loop_1589
	ldub	[%l7 + 0x55],	%g6
	fzeros	%f0
	fmovse	%icc,	%f7,	%f4
loop_1589:
	ldsw	[%l7 + 0x74],	%i0
	fxnors	%f0,	%f9,	%f8
	fmovdge	%xcc,	%f15,	%f8
	te	%icc,	0x3
	stw	%g2,	[%l7 + 0x68]
	taddcc	%g4,	%i4,	%l3
	fandnot1	%f0,	%f10,	%f4
	ldsw	[%l7 + 0x70],	%i1
	std	%f10,	[%l7 + 0x10]
	ldsb	[%l7 + 0x32],	%l2
	lduh	[%l7 + 0x58],	%g3
	tcs	%xcc,	0x1
	fmovdpos	%xcc,	%f15,	%f10
	bshuffle	%f0,	%f2,	%f10
	stb	%o5,	[%l7 + 0x31]
	ldsw	[%l7 + 0x58],	%l0
	bgu,a	%xcc,	loop_1590
	movcs	%xcc,	%l5,	%l1
	edge16l	%i5,	%g5,	%o6
	bleu,a	loop_1591
loop_1590:
	fbl	%fcc3,	loop_1592
	fmovrsgez	%o3,	%f4,	%f5
	ldx	[%l7 + 0x28],	%g7
loop_1591:
	and	%o2,	0x1AAB,	%i3
loop_1592:
	nop
	setx loop_1593, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldsw	[%l7 + 0x50],	%g1
	fpsub32	%f14,	%f6,	%f8
	movvc	%xcc,	%o1,	%l6
loop_1593:
	lduw	[%l7 + 0x30],	%l4
	edge8	%i6,	%o7,	%o4
	edge16l	%i7,	%o0,	%i2
	addc	%g6,	%g2,	%g4
	fbo,a	%fcc2,	loop_1594
	bn,a,pt	%icc,	loop_1595
	movre	%i0,	0x0AB,	%l3
	stw	%i1,	[%l7 + 0x10]
loop_1594:
	fpack32	%f8,	%f2,	%f6
loop_1595:
	brz,a	%l2,	loop_1596
	movcs	%xcc,	%g3,	%o5
	edge16l	%l0,	%l5,	%l1
	brgz	%i5,	loop_1597
loop_1596:
	fbue	%fcc2,	loop_1598
	fbue	%fcc1,	loop_1599
	st	%f14,	[%l7 + 0x08]
loop_1597:
	fba	%fcc3,	loop_1600
loop_1598:
	sra	%g5,	%i4,	%o3
loop_1599:
	bleu	loop_1601
	lduh	[%l7 + 0x74],	%g7
loop_1600:
	and	%o6,	%o2,	%g1
	stb	%i3,	[%l7 + 0x41]
loop_1601:
	ldsh	[%l7 + 0x3E],	%o1
	fzeros	%f3
	fnot1s	%f10,	%f11
	fbl,a	%fcc2,	loop_1602
	udivcc	%l6,	0x0974,	%i6
	edge16l	%o7,	%o4,	%l4
	ta	%xcc,	0x0
loop_1602:
	ldub	[%l7 + 0x7B],	%i7
	brlz,a	%o0,	loop_1603
	fmovrslz	%g6,	%f14,	%f4
	lduh	[%l7 + 0x0A],	%g2
	bleu,a,pn	%xcc,	loop_1604
loop_1603:
	fpadd32	%f12,	%f8,	%f10
	stb	%i2,	[%l7 + 0x15]
	fmovrsne	%i0,	%f6,	%f1
loop_1604:
	ldsb	[%l7 + 0x2E],	%l3
	movle	%xcc,	%g4,	%l2
	nop
	setx loop_1605, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	edge32n	%g3,	%o5,	%l0
	bg,pt	%icc,	loop_1606
	edge32l	%l5,	%i1,	%l1
loop_1605:
	sth	%i5,	[%l7 + 0x12]
	fabss	%f7,	%f0
loop_1606:
	std	%f0,	[%l7 + 0x50]
	fmuld8sux16	%f8,	%f7,	%f6
	alignaddr	%g5,	%o3,	%g7
	ldsh	[%l7 + 0x0C],	%o6
	fcmpeq16	%f12,	%f6,	%o2
	fnors	%f2,	%f7,	%f14
	tn	%xcc,	0x4
	sdivx	%g1,	0x107E,	%i4
	fsrc1s	%f9,	%f7
	tl	%xcc,	0x6
	subc	%o1,	0x0D5D,	%i3
	ldsw	[%l7 + 0x5C],	%i6
	fmovrslz	%l6,	%f12,	%f13
	array32	%o4,	%l4,	%o7
	movle	%xcc,	%o0,	%g6
	movneg	%icc,	%i7,	%i2
	bcc,a	%xcc,	loop_1607
	srax	%g2,	%l3,	%g4
	mova	%icc,	%l2,	%g3
	ldx	[%l7 + 0x40],	%i0
loop_1607:
	fpackfix	%f12,	%f0
	fcmps	%fcc0,	%f4,	%f15
	xorcc	%o5,	%l0,	%l5
	bvc,a	%xcc,	loop_1608
	fnor	%f14,	%f8,	%f14
	movvs	%xcc,	%l1,	%i1
	ldsb	[%l7 + 0x44],	%i5
loop_1608:
	ldsh	[%l7 + 0x16],	%g5
	bgu	loop_1609
	fmovdneg	%xcc,	%f1,	%f2
	andn	%g7,	%o6,	%o3
	fmovsg	%icc,	%f11,	%f5
loop_1609:
	tne	%icc,	0x3
	te	%icc,	0x4
	fnot2s	%f7,	%f0
	ldsw	[%l7 + 0x24],	%o2
	addccc	%i4,	0x169C,	%o1
	alignaddr	%i3,	%g1,	%l6
	move	%xcc,	%o4,	%l4
	ldub	[%l7 + 0x67],	%o7
	fandnot2s	%f12,	%f8,	%f14
	movre	%i6,	0x171,	%g6
	ldsw	[%l7 + 0x34],	%o0
	fmovdne	%icc,	%f7,	%f10
	stb	%i2,	[%l7 + 0x47]
	ldub	[%l7 + 0x44],	%i7
	sth	%g2,	[%l7 + 0x60]
	fone	%f14
	fzeros	%f4
	fsrc2	%f8,	%f8
	fpadd32	%f6,	%f14,	%f6
	fmovrse	%l3,	%f9,	%f0
	fmovscs	%xcc,	%f10,	%f7
	ldsw	[%l7 + 0x1C],	%l2
	fbg,a	%fcc1,	loop_1610
	fmovrslz	%g4,	%f8,	%f3
	ldsh	[%l7 + 0x44],	%g3
	ldsb	[%l7 + 0x6B],	%i0
loop_1610:
	fmovscs	%icc,	%f9,	%f3
	nop
	setx loop_1611, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	brlz,a	%o5,	loop_1612
	fmovrdgz	%l0,	%f12,	%f2
	bvs	%icc,	loop_1613
loop_1611:
	lduh	[%l7 + 0x7C],	%l1
loop_1612:
	tge	%xcc,	0x1
	bshuffle	%f0,	%f6,	%f10
loop_1613:
	movg	%icc,	%i1,	%l5
	fmovscs	%icc,	%f15,	%f4
	umul	%i5,	0x0CEC,	%g5
	fmovrdne	%g7,	%f0,	%f2
	nop
	setx loop_1614, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fcmpne16	%f4,	%f12,	%o3
	fmul8x16al	%f15,	%f12,	%f0
	fbo,a	%fcc0,	loop_1615
loop_1614:
	fmovsa	%icc,	%f8,	%f8
	fmul8sux16	%f12,	%f2,	%f2
	ld	[%l7 + 0x3C],	%f7
loop_1615:
	sth	%o2,	[%l7 + 0x34]
	fand	%f8,	%f2,	%f12
	ldx	[%l7 + 0x18],	%o6
	fmovd	%f6,	%f8
	ldx	[%l7 + 0x50],	%o1
	fmovrslz	%i3,	%f1,	%f8
	ld	[%l7 + 0x0C],	%f9
	fbne	%fcc1,	loop_1616
	sth	%i4,	[%l7 + 0x0E]
	orcc	%l6,	%o4,	%g1
	bne	loop_1617
loop_1616:
	fornot1s	%f10,	%f12,	%f10
	bn,pn	%icc,	loop_1618
	ldd	[%l7 + 0x18],	%f6
loop_1617:
	ld	[%l7 + 0x14],	%f7
	fmuld8sux16	%f12,	%f6,	%f6
loop_1618:
	ld	[%l7 + 0x60],	%f6
	mova	%icc,	%o7,	%l4
	fmovscs	%icc,	%f15,	%f1
	fble	%fcc3,	loop_1619
	ldd	[%l7 + 0x10],	%f10
	ldx	[%l7 + 0x20],	%i6
	std	%f0,	[%l7 + 0x38]
loop_1619:
	ldd	[%l7 + 0x68],	%f12
	fmovdpos	%icc,	%f6,	%f12
	taddcc	%o0,	0x0FE3,	%i2
	mova	%xcc,	%i7,	%g2
	te	%xcc,	0x0
	fmuld8ulx16	%f1,	%f4,	%f4
	movge	%icc,	%l3,	%g6
	sllx	%l2,	%g3,	%i0
	sdivx	%g4,	0x03D4,	%o5
	std	%f6,	[%l7 + 0x68]
	for	%f10,	%f0,	%f14
	fbe,a	%fcc0,	loop_1620
	udivcc	%l0,	0x1025,	%i1
	stw	%l5,	[%l7 + 0x60]
	ld	[%l7 + 0x2C],	%f12
loop_1620:
	sth	%l1,	[%l7 + 0x32]
	fcmps	%fcc1,	%f13,	%f12
	fmul8x16al	%f14,	%f12,	%f2
	sth	%g5,	[%l7 + 0x56]
	fmovrslez	%i5,	%f3,	%f6
	fmovdvs	%xcc,	%f6,	%f11
	addc	%o3,	%g7,	%o2
	fnor	%f2,	%f0,	%f12
	fblg	%fcc3,	loop_1621
	fnands	%f5,	%f1,	%f10
	movrgz	%o1,	0x00B,	%o6
	sth	%i4,	[%l7 + 0x38]
loop_1621:
	nop
	setx loop_1622, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldsb	[%l7 + 0x36],	%l6
	fcmple16	%f4,	%f6,	%o4
	edge16	%g1,	%o7,	%l4
loop_1622:
	tgu	%icc,	0x3
	sth	%i6,	[%l7 + 0x32]
	fmul8x16al	%f6,	%f0,	%f4
	stw	%o0,	[%l7 + 0x68]
	addccc	%i3,	0x17FB,	%i2
	bcc,a,pt	%xcc,	loop_1623
	fsrc2	%f10,	%f4
	lduh	[%l7 + 0x70],	%i7
	fpadd16s	%f7,	%f14,	%f6
loop_1623:
	fmovsg	%icc,	%f8,	%f10
	sth	%g2,	[%l7 + 0x50]
	nop
	setx loop_1624, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fones	%f11
	ldsb	[%l7 + 0x6D],	%g6
	sth	%l2,	[%l7 + 0x6E]
loop_1624:
	fbo	%fcc2,	loop_1625
	movrlz	%l3,	0x3DD,	%i0
	fmovrdlez	%g3,	%f0,	%f10
	tpos	%xcc,	0x7
loop_1625:
	bgu	%xcc,	loop_1626
	brgez	%g4,	loop_1627
	fandnot2s	%f14,	%f2,	%f14
	bgu,a	loop_1628
loop_1626:
	ldsb	[%l7 + 0x79],	%l0
loop_1627:
	fpackfix	%f10,	%f9
	tn	%xcc,	0x5
loop_1628:
	srlx	%i1,	0x02,	%o5
	brlz,a	%l1,	loop_1629
	fcmpgt32	%f4,	%f4,	%g5
	fcmps	%fcc0,	%f8,	%f13
	bpos,a	loop_1630
loop_1629:
	subccc	%i5,	0x11FB,	%l5
	bne	loop_1631
	sdivcc	%g7,	0x145C,	%o2
loop_1630:
	sdiv	%o1,	0x0736,	%o6
	stw	%o3,	[%l7 + 0x0C]
loop_1631:
	umulcc	%l6,	0x145E,	%o4
	bge,a,pn	%xcc,	loop_1632
	tleu	%icc,	0x6
	tgu	%icc,	0x2
	fbne	%fcc0,	loop_1633
loop_1632:
	sdiv	%g1,	0x062A,	%o7
	udivx	%i4,	0x06B0,	%i6
	fornot1	%f2,	%f8,	%f10
loop_1633:
	fxor	%f10,	%f2,	%f12
	fpadd16	%f6,	%f14,	%f2
	udiv	%o0,	0x08FE,	%l4
	fmovda	%icc,	%f14,	%f5
	sth	%i3,	[%l7 + 0x62]
	bcc,a,pn	%xcc,	loop_1634
	lduh	[%l7 + 0x0A],	%i2
	fmovrslez	%g2,	%f1,	%f4
	fcmpgt32	%f14,	%f4,	%g6
loop_1634:
	mulscc	%l2,	%l3,	%i7
	fxors	%f14,	%f2,	%f11
	fsrc2s	%f3,	%f2
	stb	%g3,	[%l7 + 0x34]
	udivx	%i0,	0x1D69,	%g4
	stx	%l0,	[%l7 + 0x60]
	fmuld8sux16	%f14,	%f9,	%f14
	ldx	[%l7 + 0x68],	%o5
	fmovrse	%l1,	%f1,	%f11
	brz	%g5,	loop_1635
	lduw	[%l7 + 0x40],	%i1
	fpadd32s	%f1,	%f15,	%f7
	orncc	%l5,	0x15EE,	%i5
loop_1635:
	st	%f14,	[%l7 + 0x7C]
	fmovrslz	%o2,	%f12,	%f12
	fnegd	%f4,	%f12
	tge	%icc,	0x4
	fble	%fcc3,	loop_1636
	sth	%o1,	[%l7 + 0x72]
	bge	%icc,	loop_1637
	fsrc1	%f8,	%f0
loop_1636:
	fmul8sux16	%f10,	%f2,	%f6
	bgu,a,pn	%icc,	loop_1638
loop_1637:
	ta	%icc,	0x2
	bvs	%icc,	loop_1639
	fand	%f6,	%f4,	%f14
loop_1638:
	sth	%g7,	[%l7 + 0x36]
	fones	%f9
loop_1639:
	ldub	[%l7 + 0x6F],	%o6
	fcmpne32	%f0,	%f2,	%o3
	fsrc2s	%f15,	%f15
	fnot2	%f6,	%f2
	fmovdvc	%xcc,	%f11,	%f12
	st	%f5,	[%l7 + 0x44]
	lduw	[%l7 + 0x28],	%o4
	movcs	%icc,	%l6,	%o7
	fmovspos	%xcc,	%f1,	%f1
	ldsh	[%l7 + 0x1A],	%i4
	ldd	[%l7 + 0x08],	%f0
	fble	%fcc1,	loop_1640
	fand	%f10,	%f8,	%f0
	fsrc1s	%f9,	%f12
	fmovdleu	%icc,	%f6,	%f14
loop_1640:
	fandnot1s	%f5,	%f4,	%f2
	stw	%g1,	[%l7 + 0x24]
	sth	%o0,	[%l7 + 0x68]
	ldx	[%l7 + 0x40],	%l4
	ldub	[%l7 + 0x3F],	%i6
	fmovdn	%icc,	%f6,	%f15
	sra	%i2,	%g2,	%i3
	fcmple16	%f10,	%f2,	%g6
	fbne	%fcc3,	loop_1641
	ldub	[%l7 + 0x47],	%l2
	tcc	%xcc,	0x1
	faligndata	%f2,	%f12,	%f12
loop_1641:
	fmul8x16	%f13,	%f8,	%f0
	call	loop_1642
	fpsub16	%f0,	%f14,	%f12
	tgu	%icc,	0x0
	ldsh	[%l7 + 0x14],	%i7
loop_1642:
	fmovdleu	%xcc,	%f1,	%f4
	std	%f0,	[%l7 + 0x60]
	fors	%f10,	%f0,	%f13
	sub	%l3,	%i0,	%g4
	brgz,a	%g3,	loop_1643
	ld	[%l7 + 0x44],	%f9
	smul	%o5,	%l0,	%l1
	tl	%icc,	0x4
loop_1643:
	tn	%xcc,	0x3
	edge8l	%i1,	%g5,	%l5
	fxnors	%f9,	%f1,	%f14
	movre	%i5,	0x161,	%o2
	sth	%g7,	[%l7 + 0x52]
	stw	%o6,	[%l7 + 0x70]
	fmovdneg	%icc,	%f10,	%f2
	ldx	[%l7 + 0x28],	%o3
	bneg	loop_1644
	fmovrdne	%o4,	%f12,	%f10
	fpsub32	%f8,	%f14,	%f2
	fmovdl	%icc,	%f1,	%f3
loop_1644:
	array32	%l6,	%o1,	%i4
	fmovs	%f3,	%f2
	ldub	[%l7 + 0x67],	%g1
	sdivcc	%o0,	0x1A97,	%l4
	xnorcc	%i6,	0x0A9D,	%o7
	lduh	[%l7 + 0x10],	%g2
	tcs	%icc,	0x3
	fmovdleu	%icc,	%f4,	%f15
	fzero	%f6
	fmovdl	%xcc,	%f9,	%f2
	ldsb	[%l7 + 0x48],	%i3
	bneg,a	loop_1645
	andn	%i2,	0x0D90,	%l2
	fmovsgu	%xcc,	%f15,	%f2
	fsrc1s	%f8,	%f11
loop_1645:
	stw	%i7,	[%l7 + 0x20]
	stx	%l3,	[%l7 + 0x18]
	fmovrdne	%i0,	%f10,	%f2
	tge	%xcc,	0x7
	fmovdle	%xcc,	%f14,	%f3
	fcmpes	%fcc2,	%f8,	%f3
	ldd	[%l7 + 0x08],	%f10
	sethi	0x0B1C,	%g6
	tvc	%xcc,	0x0
	fabss	%f10,	%f15
	stb	%g3,	[%l7 + 0x3A]
	addcc	%g4,	0x0BED,	%l0
	nop
	setx loop_1646, %l0, %l1
	jmpl %l1, %o5
	xorcc	%i1,	%g5,	%l1
	fandnot2	%f2,	%f0,	%f10
	ldsb	[%l7 + 0x3D],	%i5
loop_1646:
	fmul8x16au	%f3,	%f6,	%f4
	be,a,pt	%icc,	loop_1647
	ldx	[%l7 + 0x18],	%l5
	fmul8sux16	%f14,	%f12,	%f10
	ldsb	[%l7 + 0x45],	%o2
loop_1647:
	stx	%o6,	[%l7 + 0x48]
	addccc	%g7,	0x1D26,	%o4
	movleu	%xcc,	%l6,	%o3
	brgez	%i4,	loop_1648
	fmovsg	%icc,	%f7,	%f15
	movvs	%icc,	%o1,	%g1
	orcc	%o0,	%i6,	%o7
loop_1648:
	lduw	[%l7 + 0x0C],	%l4
	array8	%g2,	%i2,	%i3
	subccc	%l2,	0x1615,	%i7
	bne,a	%xcc,	loop_1649
	umulcc	%i0,	%g6,	%l3
	stb	%g4,	[%l7 + 0x2C]
	ldx	[%l7 + 0x08],	%l0
loop_1649:
	fexpand	%f6,	%f14
	xnor	%o5,	0x07D2,	%g3
	fmovrslez	%i1,	%f13,	%f1
	bn,a,pn	%xcc,	loop_1650
	fmovrdlez	%l1,	%f8,	%f6
	fpack16	%f8,	%f7
	edge8l	%i5,	%g5,	%l5
loop_1650:
	ldsw	[%l7 + 0x3C],	%o2
	fmul8x16au	%f2,	%f9,	%f14
	tcc	%xcc,	0x4
	bn,pn	%xcc,	loop_1651
	fnor	%f6,	%f8,	%f8
	ldsh	[%l7 + 0x1C],	%g7
	fmovsge	%xcc,	%f3,	%f2
loop_1651:
	brgz,a	%o6,	loop_1652
	std	%f14,	[%l7 + 0x58]
	ldsh	[%l7 + 0x4E],	%l6
	addccc	%o3,	%i4,	%o4
loop_1652:
	udivx	%g1,	0x0522,	%o1
	xnor	%o0,	0x0880,	%i6
	bl	loop_1653
	ta	%xcc,	0x5
	bn,pt	%icc,	loop_1654
	fzeros	%f9
loop_1653:
	fbo,a	%fcc3,	loop_1655
	fpackfix	%f14,	%f14
loop_1654:
	bneg,a,pn	%xcc,	loop_1656
	fnot1	%f8,	%f14
loop_1655:
	fbg	%fcc2,	loop_1657
	ba,a	loop_1658
loop_1656:
	movne	%icc,	%l4,	%g2
	fnand	%f0,	%f8,	%f14
loop_1657:
	ldsw	[%l7 + 0x7C],	%o7
loop_1658:
	xorcc	%i2,	%l2,	%i3
	brlez	%i0,	loop_1659
	mulscc	%i7,	0x08A9,	%g6
	sth	%g4,	[%l7 + 0x1E]
	orn	%l0,	0x1443,	%l3
loop_1659:
	udiv	%g3,	0x1273,	%o5
	ldx	[%l7 + 0x68],	%i1
	ldx	[%l7 + 0x48],	%i5
	fmovsne	%xcc,	%f1,	%f0
	edge8	%g5,	%l1,	%l5
	movrgez	%o2,	%g7,	%o6
	bgu,pt	%xcc,	loop_1660
	edge16ln	%l6,	%i4,	%o3
	fandnot2s	%f12,	%f0,	%f1
	fpsub32s	%f13,	%f2,	%f0
loop_1660:
	fba,a	%fcc1,	loop_1661
	tsubcc	%o4,	%g1,	%o1
	xnorcc	%o0,	0x192E,	%i6
	movvs	%xcc,	%l4,	%g2
loop_1661:
	ld	[%l7 + 0x14],	%f13
	fxnor	%f14,	%f12,	%f6
	srl	%o7,	%l2,	%i2
	fnegd	%f14,	%f12
	tle	%xcc,	0x1
	fpmerge	%f6,	%f10,	%f0
	ld	[%l7 + 0x38],	%f12
	ldub	[%l7 + 0x21],	%i0
	andn	%i7,	%g6,	%i3
	tg	%icc,	0x4
	ldsw	[%l7 + 0x7C],	%g4
	fmovspos	%icc,	%f1,	%f15
	addcc	%l0,	0x166B,	%g3
	fcmpne32	%f4,	%f2,	%l3
	stx	%o5,	[%l7 + 0x30]
	fones	%f10
	movle	%xcc,	%i5,	%g5
	subc	%i1,	%l1,	%l5
	ldsh	[%l7 + 0x42],	%o2
	sllx	%o6,	%g7,	%i4
	fnot1	%f12,	%f8
	addcc	%o3,	%l6,	%o4
	fmovrsgez	%o1,	%f4,	%f8
	ldsh	[%l7 + 0x5A],	%g1
	fmovdl	%icc,	%f3,	%f15
	tg	%icc,	0x4
	fbe	%fcc0,	loop_1662
	ldsb	[%l7 + 0x5C],	%i6
	lduw	[%l7 + 0x38],	%l4
	movneg	%icc,	%o0,	%g2
loop_1662:
	fones	%f4
	udivcc	%o7,	0x1A7D,	%l2
	fpadd32	%f14,	%f0,	%f0
	stb	%i2,	[%l7 + 0x67]
	fble	%fcc1,	loop_1663
	fcmpeq16	%f8,	%f2,	%i0
	tne	%icc,	0x0
	stx	%i7,	[%l7 + 0x48]
loop_1663:
	bge,a	loop_1664
	stb	%i3,	[%l7 + 0x65]
	ldsh	[%l7 + 0x7C],	%g6
	edge8n	%g4,	%g3,	%l3
loop_1664:
	fmovsle	%icc,	%f9,	%f6
	srax	%o5,	0x17,	%l0
	brgz	%g5,	loop_1665
	std	%f12,	[%l7 + 0x20]
	stw	%i1,	[%l7 + 0x44]
	ldsh	[%l7 + 0x6A],	%i5
loop_1665:
	te	%icc,	0x6
	fcmps	%fcc1,	%f15,	%f7
	tcs	%xcc,	0x2
	movrgz	%l5,	%l1,	%o2
	stb	%o6,	[%l7 + 0x77]
	orcc	%g7,	0x09DE,	%i4
	ldsw	[%l7 + 0x38],	%l6
	fmovdcc	%xcc,	%f14,	%f13
	subccc	%o4,	0x0310,	%o1
	fmul8ulx16	%f8,	%f0,	%f0
	tneg	%icc,	0x1
	fmovrsgz	%o3,	%f7,	%f10
	ldsb	[%l7 + 0x26],	%i6
	fpack32	%f0,	%f12,	%f4
	st	%f3,	[%l7 + 0x48]
	fmovrde	%l4,	%f8,	%f14
	ta	%icc,	0x1
	movg	%xcc,	%o0,	%g1
	fmovdvc	%icc,	%f4,	%f8
	ld	[%l7 + 0x30],	%f13
	stb	%o7,	[%l7 + 0x63]
	brz,a	%l2,	loop_1666
	ldd	[%l7 + 0x68],	%f14
	lduw	[%l7 + 0x5C],	%i2
	ta	%icc,	0x7
loop_1666:
	edge16l	%g2,	%i0,	%i3
	ldx	[%l7 + 0x78],	%i7
	subccc	%g6,	0x1597,	%g3
	umul	%g4,	0x1D71,	%o5
	movgu	%icc,	%l0,	%g5
	movrgez	%l3,	0x35F,	%i5
	lduw	[%l7 + 0x40],	%i1
	fbge	%fcc3,	loop_1667
	fbug,a	%fcc2,	loop_1668
	subc	%l5,	%o2,	%l1
	st	%f4,	[%l7 + 0x64]
loop_1667:
	fmovda	%icc,	%f12,	%f9
loop_1668:
	andn	%g7,	0x0823,	%i4
	fmovrslez	%l6,	%f6,	%f12
	fmovscc	%xcc,	%f13,	%f13
	xnorcc	%o4,	%o6,	%o1
	stx	%o3,	[%l7 + 0x50]
	movgu	%icc,	%i6,	%l4
	fcmpne32	%f12,	%f2,	%g1
	xnor	%o0,	0x1F83,	%o7
	tleu	%xcc,	0x0
	ldsb	[%l7 + 0x20],	%i2
	andn	%g2,	%l2,	%i3
	tl	%xcc,	0x2
	lduw	[%l7 + 0x18],	%i0
	ldd	[%l7 + 0x58],	%f8
	xnorcc	%g6,	%g3,	%i7
	be,a,pt	%xcc,	loop_1669
	tg	%icc,	0x4
	stb	%o5,	[%l7 + 0x1E]
	ld	[%l7 + 0x24],	%f14
loop_1669:
	ldsw	[%l7 + 0x1C],	%l0
	fbne,a	%fcc0,	loop_1670
	lduh	[%l7 + 0x20],	%g4
	fmovsgu	%icc,	%f15,	%f14
	srl	%l3,	%g5,	%i1
loop_1670:
	fmovrdlez	%i5,	%f14,	%f14
	fxnors	%f14,	%f2,	%f13
	alignaddrl	%l5,	%o2,	%l1
	ld	[%l7 + 0x4C],	%f9
	or	%i4,	%l6,	%o4
	edge32l	%o6,	%o1,	%o3
	movrgez	%i6,	%l4,	%g1
	tsubcctv	%o0,	%g7,	%o7
	std	%f6,	[%l7 + 0x08]
	add	%g2,	0x111B,	%i2
	bcc,a,pt	%xcc,	loop_1671
	call	loop_1672
	movpos	%icc,	%l2,	%i3
	fble,a	%fcc3,	loop_1673
loop_1671:
	edge8n	%g6,	%g3,	%i7
loop_1672:
	lduh	[%l7 + 0x4A],	%o5
	orcc	%l0,	0x156E,	%i0
loop_1673:
	fbn,a	%fcc2,	loop_1674
	stw	%g4,	[%l7 + 0x38]
	xnorcc	%l3,	0x0644,	%g5
	orcc	%i5,	0x04D4,	%i1
loop_1674:
	for	%f8,	%f0,	%f12
	tle	%xcc,	0x5
	bn,pt	%icc,	loop_1675
	fabss	%f5,	%f15
	fcmpne32	%f0,	%f2,	%o2
	subc	%l5,	0x18F8,	%l1
loop_1675:
	fmovdvc	%icc,	%f3,	%f1
	movrne	%i4,	%l6,	%o4
	fbe	%fcc3,	loop_1676
	bpos,pt	%icc,	loop_1677
	fmovse	%icc,	%f11,	%f0
	tn	%icc,	0x2
loop_1676:
	subccc	%o1,	0x170D,	%o3
loop_1677:
	fmovrdgez	%i6,	%f2,	%f12
	fors	%f1,	%f13,	%f4
	fmovdle	%xcc,	%f6,	%f10
	tl	%icc,	0x4
	fornot2s	%f5,	%f2,	%f12
	fmul8x16	%f10,	%f6,	%f6
	mova	%xcc,	%l4,	%g1
	stb	%o6,	[%l7 + 0x54]
	movge	%xcc,	%g7,	%o0
	and	%o7,	%i2,	%g2
	fmovsleu	%icc,	%f2,	%f7
	fbe	%fcc0,	loop_1678
	ldsw	[%l7 + 0x78],	%i3
	fmovsle	%icc,	%f7,	%f15
	fcmpd	%fcc1,	%f14,	%f0
loop_1678:
	ldx	[%l7 + 0x78],	%g6
	fmovsgu	%xcc,	%f2,	%f3
	faligndata	%f4,	%f12,	%f12
	bleu	%icc,	loop_1679
	fornot1s	%f11,	%f8,	%f3
	ldx	[%l7 + 0x30],	%g3
	ldsb	[%l7 + 0x6E],	%l2
loop_1679:
	lduw	[%l7 + 0x68],	%o5
	fmovdneg	%xcc,	%f1,	%f13
	bgu	loop_1680
	andncc	%l0,	%i0,	%i7
	fnand	%f4,	%f2,	%f8
	lduh	[%l7 + 0x08],	%g4
loop_1680:
	bcc	loop_1681
	ldsw	[%l7 + 0x14],	%l3
	brgez	%g5,	loop_1682
	movrgez	%i5,	0x3E4,	%i1
loop_1681:
	edge8l	%o2,	%l5,	%l1
	ldx	[%l7 + 0x18],	%i4
loop_1682:
	movl	%icc,	%o4,	%l6
	mova	%xcc,	%o3,	%i6
	ldd	[%l7 + 0x10],	%f2
	fandnot2s	%f15,	%f12,	%f4
	tle	%icc,	0x6
	ldub	[%l7 + 0x0B],	%o1
	fmovda	%xcc,	%f7,	%f13
	stx	%g1,	[%l7 + 0x70]
	edge32n	%o6,	%g7,	%l4
	xor	%o7,	0x0511,	%o0
	sth	%g2,	[%l7 + 0x7C]
	ldub	[%l7 + 0x62],	%i2
	ldx	[%l7 + 0x50],	%g6
	fmovsg	%icc,	%f13,	%f0
	std	%f12,	[%l7 + 0x50]
	te	%xcc,	0x3
	fmovdl	%xcc,	%f13,	%f2
	udivcc	%g3,	0x074F,	%l2
	srl	%o5,	0x13,	%l0
	sth	%i3,	[%l7 + 0x54]
	ldsh	[%l7 + 0x4E],	%i0
	udivcc	%i7,	0x18CE,	%l3
	fones	%f13
	mulx	%g4,	%g5,	%i5
	stw	%i1,	[%l7 + 0x3C]
	std	%f0,	[%l7 + 0x10]
	srax	%l5,	0x15,	%l1
	ldsb	[%l7 + 0x0A],	%o2
	fpmerge	%f6,	%f9,	%f8
	movge	%xcc,	%i4,	%o4
	edge32l	%l6,	%i6,	%o1
	ldub	[%l7 + 0x0D],	%o3
	ldsw	[%l7 + 0x60],	%o6
	mova	%xcc,	%g1,	%g7
	fsrc2	%f12,	%f0
	brz	%o7,	loop_1683
	fandnot1	%f14,	%f10,	%f12
	ldd	[%l7 + 0x70],	%f8
	sdiv	%l4,	0x0AF8,	%o0
loop_1683:
	udiv	%i2,	0x0800,	%g2
	tpos	%xcc,	0x7
	nop
	setx loop_1684, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	bvc	%xcc,	loop_1685
	for	%f10,	%f12,	%f12
	edge8l	%g6,	%l2,	%o5
loop_1684:
	array8	%g3,	%i3,	%l0
loop_1685:
	fpackfix	%f4,	%f14
	subccc	%i0,	%l3,	%i7
	sth	%g5,	[%l7 + 0x1A]
	fmovdcs	%icc,	%f10,	%f7
	ble	loop_1686
	ldd	[%l7 + 0x38],	%f12
	stx	%i5,	[%l7 + 0x48]
	sethi	0x131C,	%g4
loop_1686:
	mova	%icc,	%l5,	%i1
	fone	%f6
	fmovdcs	%xcc,	%f15,	%f12
	ldsh	[%l7 + 0x18],	%l1
	popc	0x0ACC,	%o2
	stw	%o4,	[%l7 + 0x60]
	tne	%icc,	0x2
	ld	[%l7 + 0x58],	%f14
	udivx	%l6,	0x0531,	%i6
	tne	%xcc,	0x6
	ble,a	loop_1687
	mulscc	%o1,	0x07D0,	%o3
	sth	%o6,	[%l7 + 0x36]
	fnot1	%f14,	%f12
loop_1687:
	movrgez	%i4,	%g1,	%o7
	tneg	%icc,	0x6
	fmovdneg	%xcc,	%f9,	%f4
	ldsw	[%l7 + 0x08],	%g7
	andn	%o0,	%l4,	%g2
	bge,a,pn	%icc,	loop_1688
	fpsub16s	%f2,	%f11,	%f12
	movne	%xcc,	%g6,	%l2
	ldsw	[%l7 + 0x08],	%i2
loop_1688:
	subcc	%o5,	%g3,	%l0
	taddcctv	%i0,	0x1684,	%i3
	fbuge	%fcc0,	loop_1689
	fmovrsgez	%l3,	%f11,	%f3
	fandnot2	%f6,	%f6,	%f12
	sth	%g5,	[%l7 + 0x7E]
loop_1689:
	tg	%icc,	0x7
	fnot1	%f4,	%f10
	movn	%icc,	%i7,	%g4
	fones	%f12
	stx	%i5,	[%l7 + 0x78]
	nop
	setx loop_1690, %l0, %l1
	jmpl %l1, %l5
	lduw	[%l7 + 0x50],	%l1
	ld	[%l7 + 0x70],	%f10
	fnand	%f2,	%f8,	%f4
loop_1690:
	fnor	%f6,	%f0,	%f12
	fbue	%fcc3,	loop_1691
	fmul8ulx16	%f4,	%f0,	%f0
	fbe	%fcc0,	loop_1692
	ldub	[%l7 + 0x36],	%i1
loop_1691:
	movne	%xcc,	%o2,	%l6
	fmovrslz	%i6,	%f15,	%f6
loop_1692:
	edge32n	%o1,	%o3,	%o4
	xnorcc	%o6,	0x1B89,	%i4
	fbe,a	%fcc0,	loop_1693
	smul	%o7,	%g1,	%o0
	fmul8x16	%f15,	%f2,	%f10
	fandnot1s	%f3,	%f11,	%f15
loop_1693:
	sth	%g7,	[%l7 + 0x7C]
	ldsw	[%l7 + 0x28],	%g2
	sth	%g6,	[%l7 + 0x14]
	lduh	[%l7 + 0x0A],	%l2
	bge	loop_1694
	ldub	[%l7 + 0x0E],	%l4
	stw	%i2,	[%l7 + 0x08]
	tl	%xcc,	0x5
loop_1694:
	ldd	[%l7 + 0x10],	%f4
	tsubcctv	%g3,	0x1F0C,	%l0
	ld	[%l7 + 0x3C],	%f4
	fbu,a	%fcc3,	loop_1695
	fcmpgt16	%f4,	%f0,	%i0
	fmovsge	%xcc,	%f9,	%f15
	fbg,a	%fcc2,	loop_1696
loop_1695:
	ldsb	[%l7 + 0x55],	%i3
	std	%f0,	[%l7 + 0x18]
	fmul8x16au	%f3,	%f14,	%f0
loop_1696:
	andcc	%l3,	0x06E8,	%g5
	movrlz	%o5,	0x395,	%g4
	fxor	%f8,	%f0,	%f0
	lduw	[%l7 + 0x10],	%i7
	srax	%i5,	0x0B,	%l1
	std	%f8,	[%l7 + 0x30]
	ldd	[%l7 + 0x30],	%f14
	fmovdne	%xcc,	%f8,	%f9
	lduw	[%l7 + 0x68],	%i1
	subccc	%o2,	0x0F0B,	%l6
	orncc	%l5,	0x000F,	%i6
	fmovsne	%icc,	%f15,	%f8
	move	%icc,	%o1,	%o4
	faligndata	%f12,	%f2,	%f8
	edge32ln	%o6,	%i4,	%o3
	stx	%o7,	[%l7 + 0x40]
	st	%f10,	[%l7 + 0x68]
	fandnot2s	%f2,	%f5,	%f1
	tne	%xcc,	0x1
	edge32	%g1,	%o0,	%g7
	fsrc1s	%f7,	%f8
	movrne	%g2,	0x36B,	%l2
	fmovsl	%icc,	%f3,	%f0
	fmovdle	%xcc,	%f4,	%f12
	sll	%l4,	0x04,	%g6
	st	%f9,	[%l7 + 0x50]
	fpsub16	%f6,	%f6,	%f10
	array8	%i2,	%l0,	%g3
	fba,a	%fcc3,	loop_1697
	fmovda	%icc,	%f9,	%f5
	fcmpeq32	%f2,	%f14,	%i0
	bl,a,pn	%xcc,	loop_1698
loop_1697:
	stw	%l3,	[%l7 + 0x44]
	sth	%i3,	[%l7 + 0x46]
	fnands	%f1,	%f12,	%f9
loop_1698:
	edge32	%o5,	%g5,	%i7
	ldsw	[%l7 + 0x44],	%i5
	fbue	%fcc3,	loop_1699
	ldsw	[%l7 + 0x68],	%l1
	ldd	[%l7 + 0x58],	%f4
	orcc	%g4,	0x155D,	%o2
loop_1699:
	fandnot2s	%f11,	%f9,	%f4
	sll	%i1,	0x03,	%l5
	ldsw	[%l7 + 0x08],	%l6
	fpackfix	%f12,	%f9
	ta	%xcc,	0x3
	movvs	%xcc,	%o1,	%i6
	ldx	[%l7 + 0x48],	%o6
	edge8n	%i4,	%o4,	%o3
	lduw	[%l7 + 0x0C],	%g1
	xnorcc	%o0,	%g7,	%g2
	umul	%l2,	%l4,	%g6
	fbne,a	%fcc0,	loop_1700
	stw	%o7,	[%l7 + 0x08]
	ldsb	[%l7 + 0x4C],	%l0
	ldub	[%l7 + 0x4A],	%g3
loop_1700:
	ble	%xcc,	loop_1701
	lduw	[%l7 + 0x2C],	%i0
	fones	%f14
	xnor	%l3,	0x00ED,	%i2
loop_1701:
	tleu	%icc,	0x0
	taddcc	%o5,	%i3,	%i7
	xor	%g5,	%i5,	%l1
	array32	%o2,	%i1,	%g4
	fmovrsne	%l5,	%f7,	%f5
	fbe,a	%fcc2,	loop_1702
	ldsw	[%l7 + 0x40],	%o1
	fbn	%fcc3,	loop_1703
	fmul8ulx16	%f4,	%f14,	%f12
loop_1702:
	fble,a	%fcc1,	loop_1704
	stx	%l6,	[%l7 + 0x28]
loop_1703:
	array8	%o6,	%i4,	%i6
	fbe	%fcc3,	loop_1705
loop_1704:
	fmul8ulx16	%f2,	%f14,	%f4
	lduw	[%l7 + 0x0C],	%o3
	tn	%icc,	0x3
loop_1705:
	fmovrse	%g1,	%f3,	%f6
	edge16n	%o0,	%g7,	%o4
	fmovsg	%xcc,	%f8,	%f10
	fpadd32s	%f7,	%f6,	%f6
	fbu	%fcc1,	loop_1706
	fsrc2s	%f3,	%f11
	move	%icc,	%g2,	%l2
	fmul8sux16	%f4,	%f14,	%f10
loop_1706:
	ldub	[%l7 + 0x17],	%g6
	brlz	%o7,	loop_1707
	fnegs	%f6,	%f15
	stx	%l4,	[%l7 + 0x28]
	fbue	%fcc2,	loop_1708
loop_1707:
	subcc	%l0,	0x1D83,	%i0
	fmul8sux16	%f2,	%f14,	%f14
	sllx	%l3,	%i2,	%g3
loop_1708:
	udivcc	%i3,	0x197C,	%o5
	tge	%icc,	0x7
	ba	loop_1709
	fnot1	%f14,	%f12
	tvc	%xcc,	0x5
	sth	%g5,	[%l7 + 0x5A]
loop_1709:
	fmovsl	%icc,	%f7,	%f4
	addccc	%i7,	0x1BFB,	%l1
	fbul	%fcc2,	loop_1710
	or	%o2,	0x183C,	%i5
	sethi	0x032A,	%i1
	sth	%g4,	[%l7 + 0x56]
loop_1710:
	tn	%xcc,	0x2
	ldsh	[%l7 + 0x22],	%l5
	st	%f12,	[%l7 + 0x68]
	fmovdcc	%icc,	%f1,	%f10
	tcc	%xcc,	0x3
	ldx	[%l7 + 0x68],	%o1
	fone	%f14
	udivcc	%l6,	0x14A1,	%o6
	ldsh	[%l7 + 0x0E],	%i6
	fcmpne16	%f0,	%f6,	%o3
	add	%i4,	%o0,	%g1
	stb	%g7,	[%l7 + 0x50]
	bcc,a,pt	%xcc,	loop_1711
	tn	%xcc,	0x3
	tge	%xcc,	0x3
	lduh	[%l7 + 0x58],	%g2
loop_1711:
	ldx	[%l7 + 0x08],	%o4
	fmovrde	%g6,	%f12,	%f10
	movrlz	%l2,	0x090,	%l4
	movrlz	%o7,	0x300,	%l0
	ld	[%l7 + 0x30],	%f12
	ldsw	[%l7 + 0x68],	%l3
	stb	%i2,	[%l7 + 0x22]
	fcmpeq32	%f14,	%f14,	%g3
	sdivx	%i0,	0x1935,	%i3
	fmovrslz	%o5,	%f4,	%f9
	ldsb	[%l7 + 0x37],	%i7
	and	%l1,	0x1E50,	%o2
	fbg	%fcc1,	loop_1712
	fbo	%fcc1,	loop_1713
	array32	%g5,	%i5,	%g4
	ldsh	[%l7 + 0x2E],	%l5
loop_1712:
	ldsb	[%l7 + 0x74],	%i1
loop_1713:
	sra	%l6,	%o6,	%o1
	brnz,a	%i6,	loop_1714
	add	%o3,	0x01D6,	%i4
	fmul8x16au	%f8,	%f11,	%f2
	tle	%xcc,	0x3
loop_1714:
	fmovsvc	%icc,	%f9,	%f9
	fmovsneg	%icc,	%f9,	%f0
	edge8ln	%o0,	%g7,	%g1
	tgu	%xcc,	0x0
	ldub	[%l7 + 0x1B],	%g2
	tl	%icc,	0x6
	srlx	%g6,	%l2,	%l4
	ldsb	[%l7 + 0x3F],	%o4
	ldsb	[%l7 + 0x65],	%l0
	movrlez	%o7,	0x1E9,	%i2
	fmovdpos	%icc,	%f15,	%f5
	fmovrsgz	%g3,	%f1,	%f15
	bg,a	%xcc,	loop_1715
	fmovdleu	%xcc,	%f0,	%f15
	fnors	%f3,	%f0,	%f2
	tge	%icc,	0x1
loop_1715:
	stw	%i0,	[%l7 + 0x10]
	lduh	[%l7 + 0x44],	%l3
	ldx	[%l7 + 0x78],	%o5
	stb	%i3,	[%l7 + 0x70]
	tl	%xcc,	0x0
	ldd	[%l7 + 0x18],	%f4
	movle	%icc,	%l1,	%i7
	bvs,a,pn	%xcc,	loop_1716
	fbul	%fcc0,	loop_1717
	fsrc1s	%f15,	%f2
	ldub	[%l7 + 0x34],	%g5
loop_1716:
	st	%f2,	[%l7 + 0x5C]
loop_1717:
	fandnot1s	%f4,	%f4,	%f12
	fsrc2	%f4,	%f10
	orn	%i5,	0x1A72,	%o2
	ldsb	[%l7 + 0x5C],	%l5
	bne,a,pn	%xcc,	loop_1718
	fmovdn	%xcc,	%f0,	%f3
	stx	%i1,	[%l7 + 0x68]
	st	%f15,	[%l7 + 0x70]
loop_1718:
	udivcc	%g4,	0x05BA,	%o6
	fmovsgu	%icc,	%f3,	%f1
	fpmerge	%f15,	%f7,	%f12
	fmovrse	%l6,	%f15,	%f13
	fpsub32	%f12,	%f2,	%f4
	te	%icc,	0x1
	stx	%o1,	[%l7 + 0x58]
	movg	%icc,	%i6,	%i4
	sth	%o0,	[%l7 + 0x46]
	movrne	%o3,	%g7,	%g1
	fbuge,a	%fcc3,	loop_1719
	fandnot2s	%f1,	%f11,	%f12
	fcmple32	%f4,	%f10,	%g6
	std	%f12,	[%l7 + 0x40]
loop_1719:
	ldx	[%l7 + 0x68],	%g2
	fbn	%fcc2,	loop_1720
	fnegs	%f1,	%f9
	fmovda	%icc,	%f4,	%f13
	edge16l	%l2,	%o4,	%l4
loop_1720:
	tvc	%icc,	0x1
	bge	%icc,	loop_1721
	fmovrsgz	%o7,	%f13,	%f13
	smul	%l0,	0x04D5,	%i2
	fbue	%fcc0,	loop_1722
loop_1721:
	ldd	[%l7 + 0x08],	%f12
	fpsub16s	%f8,	%f4,	%f5
	fbl,a	%fcc3,	loop_1723
loop_1722:
	movcc	%icc,	%i0,	%l3
	udivcc	%g3,	0x05C3,	%o5
	bvs,pn	%icc,	loop_1724
loop_1723:
	ldx	[%l7 + 0x78],	%i3
	fzeros	%f6
	std	%f4,	[%l7 + 0x50]
loop_1724:
	srl	%l1,	%g5,	%i7
	nop
	setx loop_1725, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	move	%icc,	%i5,	%l5
	nop
	setx loop_1726, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	umulcc	%o2,	0x036C,	%i1
loop_1725:
	stw	%g4,	[%l7 + 0x70]
	ba,a,pn	%icc,	loop_1727
loop_1726:
	edge32n	%l6,	%o6,	%i6
	fabsd	%f8,	%f4
	tg	%xcc,	0x4
loop_1727:
	ldsb	[%l7 + 0x7B],	%i4
	fcmpeq16	%f2,	%f8,	%o0
	stx	%o1,	[%l7 + 0x40]
	fmul8x16au	%f15,	%f2,	%f14
	fmovde	%icc,	%f3,	%f3
	fcmps	%fcc1,	%f11,	%f8
	ldx	[%l7 + 0x18],	%g7
	sth	%g1,	[%l7 + 0x30]
	smulcc	%o3,	%g2,	%l2
	stx	%o4,	[%l7 + 0x50]
	st	%f3,	[%l7 + 0x60]
	fbule	%fcc0,	loop_1728
	ldsb	[%l7 + 0x29],	%g6
	fmovsgu	%xcc,	%f0,	%f8
	sth	%l4,	[%l7 + 0x44]
loop_1728:
	ldx	[%l7 + 0x28],	%o7
	fmovrde	%l0,	%f6,	%f10
	fmovdcc	%xcc,	%f2,	%f8
	ldub	[%l7 + 0x3F],	%i2
	call	loop_1729
	or	%i0,	0x17BE,	%l3
	fmovsle	%xcc,	%f15,	%f13
	bneg,a,pn	%xcc,	loop_1730
loop_1729:
	sub	%g3,	0x0F5F,	%i3
	fcmpes	%fcc1,	%f7,	%f4
	fmovdn	%xcc,	%f11,	%f15
loop_1730:
	fmul8ulx16	%f6,	%f14,	%f8
	ldsh	[%l7 + 0x40],	%o5
	fzeros	%f12
	fcmple32	%f12,	%f4,	%g5
	ldx	[%l7 + 0x08],	%i7
	ldsw	[%l7 + 0x0C],	%l1
	tl	%xcc,	0x4
	fcmped	%fcc1,	%f14,	%f2
	fmovdvc	%xcc,	%f0,	%f15
	fmovdl	%xcc,	%f2,	%f10
	fcmped	%fcc3,	%f12,	%f0
	alignaddr	%i5,	%o2,	%l5
	ld	[%l7 + 0x18],	%f3
	bvs,a	loop_1731
	movcc	%xcc,	%i1,	%l6
	edge16	%o6,	%i6,	%g4
	bshuffle	%f4,	%f2,	%f6
loop_1731:
	fmovdneg	%xcc,	%f10,	%f13
	bpos,a,pt	%icc,	loop_1732
	addc	%o0,	0x0EA5,	%i4
	std	%f8,	[%l7 + 0x38]
	array16	%o1,	%g1,	%g7
loop_1732:
	sdiv	%g2,	0x01C1,	%l2
	lduh	[%l7 + 0x38],	%o3
	ldsb	[%l7 + 0x4A],	%o4
	ldsb	[%l7 + 0x48],	%g6
	fpack32	%f14,	%f14,	%f12
	ldd	[%l7 + 0x58],	%f2
	smul	%l4,	0x1E9C,	%l0
	lduw	[%l7 + 0x10],	%i2
	fbul	%fcc1,	loop_1733
	edge16n	%o7,	%i0,	%l3
	xnorcc	%g3,	%i3,	%g5
	pdist	%f2,	%f6,	%f10
loop_1733:
	fsrc1	%f4,	%f14
	ldsh	[%l7 + 0x10],	%o5
	fxnors	%f3,	%f15,	%f0
	bneg,a,pn	%xcc,	loop_1734
	stb	%l1,	[%l7 + 0x47]
	fmovsa	%xcc,	%f10,	%f6
	movvc	%xcc,	%i5,	%o2
loop_1734:
	fnors	%f14,	%f13,	%f5
	bgu,pt	%xcc,	loop_1735
	xnorcc	%l5,	%i1,	%i7
	edge8	%o6,	%l6,	%i6
	movrgez	%g4,	%o0,	%o1
loop_1735:
	lduw	[%l7 + 0x70],	%g1
	nop
	setx loop_1736, %l0, %l1
	jmpl %l1, %i4
	sth	%g7,	[%l7 + 0x7E]
	st	%f3,	[%l7 + 0x20]
	sll	%g2,	%l2,	%o3
loop_1736:
	fbule	%fcc2,	loop_1737
	taddcctv	%g6,	0x0D00,	%o4
	fcmpne16	%f8,	%f14,	%l0
	ble,pn	%xcc,	loop_1738
loop_1737:
	ldub	[%l7 + 0x51],	%i2
	xor	%l4,	0x149C,	%i0
	ldub	[%l7 + 0x55],	%l3
loop_1738:
	ldsb	[%l7 + 0x0C],	%g3
	brnz,a	%o7,	loop_1739
	movleu	%xcc,	%g5,	%o5
	fbne,a	%fcc0,	loop_1740
	add	%l1,	0x173C,	%i3
loop_1739:
	fcmpes	%fcc0,	%f3,	%f13
	sth	%o2,	[%l7 + 0x1C]
loop_1740:
	fmovsneg	%xcc,	%f6,	%f7
	tcc	%xcc,	0x7
	fors	%f13,	%f1,	%f5
	edge16l	%i5,	%i1,	%l5
	fxnor	%f6,	%f12,	%f2
	ld	[%l7 + 0x7C],	%f1
	fnor	%f14,	%f4,	%f10
	tgu	%icc,	0x4
	brgez,a	%o6,	loop_1741
	fcmpes	%fcc3,	%f15,	%f2
	fbge	%fcc3,	loop_1742
	movleu	%icc,	%i7,	%l6
loop_1741:
	sth	%g4,	[%l7 + 0x5C]
	fbg	%fcc2,	loop_1743
loop_1742:
	array16	%o0,	%o1,	%i6
	umul	%i4,	0x077E,	%g1
	bn,pt	%xcc,	loop_1744
loop_1743:
	sth	%g2,	[%l7 + 0x24]
	ldsb	[%l7 + 0x22],	%l2
	edge16	%o3,	%g7,	%o4
loop_1744:
	movge	%xcc,	%g6,	%l0
	st	%f6,	[%l7 + 0x74]
	stx	%i2,	[%l7 + 0x40]
	ba,pn	%icc,	loop_1745
	movleu	%icc,	%i0,	%l4
	st	%f14,	[%l7 + 0x50]
	nop
	setx loop_1746, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_1745:
	fnot2s	%f14,	%f12
	fsrc1s	%f1,	%f15
	fmovdcs	%xcc,	%f9,	%f0
loop_1746:
	fbule,a	%fcc2,	loop_1747
	srax	%g3,	0x10,	%o7
	ldd	[%l7 + 0x70],	%f12
	fmovrsgz	%g5,	%f15,	%f1
loop_1747:
	alignaddrl	%o5,	%l3,	%l1
	tg	%icc,	0x3
	stx	%o2,	[%l7 + 0x28]
	brgz	%i3,	loop_1748
	edge32	%i5,	%i1,	%o6
	ld	[%l7 + 0x58],	%f15
	lduw	[%l7 + 0x14],	%l5
loop_1748:
	fandnot2s	%f13,	%f2,	%f10
	fnand	%f8,	%f12,	%f12
	lduw	[%l7 + 0x34],	%i7
	taddcctv	%l6,	%g4,	%o0
	nop
	setx loop_1749, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fpadd16s	%f8,	%f2,	%f0
	ldd	[%l7 + 0x58],	%f10
	movrlez	%i6,	%i4,	%o1
loop_1749:
	fpack16	%f0,	%f10
	stb	%g1,	[%l7 + 0x37]
	fmovrslz	%l2,	%f11,	%f4
	fone	%f8
	fmovde	%xcc,	%f8,	%f12
	ldub	[%l7 + 0x21],	%o3
	edge32	%g7,	%g2,	%g6
	fnand	%f0,	%f4,	%f10
	tg	%icc,	0x7
	edge32ln	%l0,	%i2,	%i0
	fpsub16	%f4,	%f4,	%f8
	stb	%o4,	[%l7 + 0x14]
	fbn,a	%fcc3,	loop_1750
	tvc	%icc,	0x5
	ldd	[%l7 + 0x28],	%f12
	be,pt	%icc,	loop_1751
loop_1750:
	brlez,a	%l4,	loop_1752
	array8	%o7,	%g3,	%g5
	subcc	%l3,	%l1,	%o5
loop_1751:
	addc	%o2,	%i5,	%i1
loop_1752:
	tleu	%icc,	0x7
	taddcctv	%i3,	%o6,	%i7
	edge16ln	%l6,	%g4,	%l5
	edge32l	%i6,	%o0,	%i4
	fcmpeq16	%f14,	%f8,	%g1
	edge16n	%o1,	%o3,	%g7
	fxnor	%f8,	%f12,	%f8
	sth	%l2,	[%l7 + 0x7E]
	fmovdge	%xcc,	%f11,	%f9
	fmovsleu	%xcc,	%f14,	%f2
	ldsw	[%l7 + 0x7C],	%g2
	bleu	loop_1753
	popc	%l0,	%g6
	movleu	%icc,	%i2,	%o4
	sth	%l4,	[%l7 + 0x0C]
loop_1753:
	addcc	%i0,	0x1F2D,	%o7
	fmovrdne	%g5,	%f0,	%f8
	fbe,a	%fcc0,	loop_1754
	fmovscc	%icc,	%f7,	%f12
	andn	%l3,	0x1041,	%l1
	sdivcc	%g3,	0x0A29,	%o5
loop_1754:
	tvs	%xcc,	0x5
	fabss	%f4,	%f9
	edge16ln	%o2,	%i5,	%i1
	fxors	%f1,	%f11,	%f8
	add	%i3,	%i7,	%o6
	fba,a	%fcc2,	loop_1755
	sdiv	%l6,	0x12A2,	%l5
	fba	%fcc3,	loop_1756
	edge8n	%g4,	%o0,	%i4
loop_1755:
	brnz,a	%i6,	loop_1757
	movcs	%icc,	%o1,	%g1
loop_1756:
	ldsw	[%l7 + 0x18],	%g7
	bcc,a	loop_1758
loop_1757:
	fornot1s	%f5,	%f14,	%f2
	ldsw	[%l7 + 0x20],	%o3
	fmovrdgez	%g2,	%f12,	%f10
loop_1758:
	movcs	%icc,	%l2,	%g6
	ldub	[%l7 + 0x1D],	%l0
	ldd	[%l7 + 0x30],	%f8
	tn	%icc,	0x5
	fmovsl	%icc,	%f14,	%f9
	fble	%fcc3,	loop_1759
	ldx	[%l7 + 0x08],	%o4
	fbul	%fcc2,	loop_1760
	nop
	setx loop_1761, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_1759:
	fmovdvc	%icc,	%f2,	%f11
	lduw	[%l7 + 0x60],	%l4
loop_1760:
	movne	%icc,	%i0,	%o7
loop_1761:
	nop
	setx loop_1762, %l0, %l1
	jmpl %l1, %g5
	fnands	%f14,	%f5,	%f15
	lduh	[%l7 + 0x24],	%i2
	taddcc	%l3,	%g3,	%l1
loop_1762:
	movg	%xcc,	%o2,	%i5
	ldx	[%l7 + 0x70],	%o5
	fornot2s	%f15,	%f2,	%f10
	fnot2	%f4,	%f10
	ld	[%l7 + 0x64],	%f6
	array8	%i1,	%i3,	%o6
	addcc	%i7,	0x18F6,	%l6
	fmovrsgz	%g4,	%f0,	%f14
	tne	%xcc,	0x2
	ldsw	[%l7 + 0x40],	%l5
	brgz,a	%i4,	loop_1763
	fmovrdne	%i6,	%f4,	%f6
	fmovdn	%icc,	%f4,	%f13
	fcmpd	%fcc0,	%f4,	%f0
loop_1763:
	fmovsgu	%icc,	%f1,	%f13
	brlez,a	%o1,	loop_1764
	ldsh	[%l7 + 0x52],	%g1
	fcmpne32	%f12,	%f8,	%o0
	ldsb	[%l7 + 0x49],	%g7
loop_1764:
	sub	%g2,	0x1D63,	%o3
	bgu	loop_1765
	fmul8x16	%f1,	%f6,	%f12
	movgu	%xcc,	%g6,	%l2
	fble,a	%fcc1,	loop_1766
loop_1765:
	nop
	setx loop_1767, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldsb	[%l7 + 0x1B],	%o4
	ldx	[%l7 + 0x60],	%l4
loop_1766:
	fand	%f14,	%f8,	%f10
loop_1767:
	fmovdvc	%icc,	%f9,	%f13
	udivcc	%l0,	0x1399,	%i0
	smulcc	%o7,	0x03F1,	%i2
	fmovdneg	%icc,	%f8,	%f5
	fmovdle	%icc,	%f2,	%f2
	bne,a	%xcc,	loop_1768
	srlx	%g5,	%l3,	%l1
	fbuge	%fcc1,	loop_1769
	ldub	[%l7 + 0x4F],	%o2
loop_1768:
	ta	%xcc,	0x5
	stb	%g3,	[%l7 + 0x0D]
loop_1769:
	tvs	%icc,	0x7
	movpos	%xcc,	%i5,	%o5
	stx	%i1,	[%l7 + 0x08]
	add	%i3,	0x1EA9,	%i7
	fmovsn	%xcc,	%f9,	%f1
	lduh	[%l7 + 0x42],	%l6
	fbule	%fcc1,	loop_1770
	fmovrdgez	%g4,	%f8,	%f8
	fabss	%f0,	%f5
	fnot2s	%f8,	%f6
loop_1770:
	fmul8sux16	%f2,	%f0,	%f12
	taddcc	%o6,	%l5,	%i4
	tpos	%icc,	0x4
	fabsd	%f2,	%f8
	stw	%o1,	[%l7 + 0x08]
	bpos,a,pn	%icc,	loop_1771
	srlx	%i6,	0x05,	%o0
	stx	%g1,	[%l7 + 0x40]
	ldd	[%l7 + 0x60],	%f0
loop_1771:
	stx	%g2,	[%l7 + 0x50]
	fpadd32	%f10,	%f8,	%f4
	fmovde	%icc,	%f12,	%f10
	ldd	[%l7 + 0x78],	%f6
	brlez	%o3,	loop_1772
	ld	[%l7 + 0x54],	%f10
	tneg	%icc,	0x4
	fbge,a	%fcc1,	loop_1773
loop_1772:
	orn	%g7,	0x1BAD,	%g6
	ldub	[%l7 + 0x35],	%o4
	and	%l4,	0x0A75,	%l2
loop_1773:
	nop
	setx loop_1774, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	alignaddrl	%l0,	%i0,	%o7
	sra	%g5,	%l3,	%l1
	fmovdleu	%icc,	%f12,	%f8
loop_1774:
	tsubcc	%i2,	%g3,	%o2
	fmovrdgz	%o5,	%f10,	%f8
	st	%f8,	[%l7 + 0x14]
	tn	%xcc,	0x4
	fnot2s	%f6,	%f7
	fbg	%fcc0,	loop_1775
	ldx	[%l7 + 0x10],	%i1
	stx	%i5,	[%l7 + 0x78]
	lduw	[%l7 + 0x44],	%i7
loop_1775:
	fabsd	%f8,	%f2
	be,a,pt	%icc,	loop_1776
	st	%f15,	[%l7 + 0x68]
	bcs,a	%icc,	loop_1777
	bpos,pn	%icc,	loop_1778
loop_1776:
	fbuge,a	%fcc0,	loop_1779
	sth	%l6,	[%l7 + 0x34]
loop_1777:
	srl	%g4,	0x1E,	%i3
loop_1778:
	edge16	%l5,	%o6,	%o1
loop_1779:
	lduw	[%l7 + 0x34],	%i4
	and	%o0,	0x0CEE,	%g1
	popc	0x1E3C,	%g2
	tcs	%xcc,	0x4
	ldsw	[%l7 + 0x78],	%i6
	fcmpes	%fcc3,	%f12,	%f4
	xnorcc	%g7,	%g6,	%o3
	move	%icc,	%o4,	%l4
	call	loop_1780
	sub	%l0,	0x1E4D,	%i0
	and	%o7,	%g5,	%l2
	bpos,a,pt	%icc,	loop_1781
loop_1780:
	ldsw	[%l7 + 0x24],	%l1
	fble,a	%fcc2,	loop_1782
	stw	%i2,	[%l7 + 0x6C]
loop_1781:
	fmovsle	%icc,	%f11,	%f2
	fmovrde	%l3,	%f4,	%f8
loop_1782:
	std	%f14,	[%l7 + 0x70]
	fmovscc	%icc,	%f12,	%f2
	sth	%o2,	[%l7 + 0x54]
	orcc	%g3,	%i1,	%o5
	ldub	[%l7 + 0x43],	%i5
	stx	%i7,	[%l7 + 0x30]
	fmovdleu	%icc,	%f7,	%f5
	fsrc2	%f0,	%f10
	ldx	[%l7 + 0x30],	%g4
	fmovrsne	%i3,	%f2,	%f7
	tgu	%xcc,	0x3
	fpadd16	%f4,	%f2,	%f6
	fmovsa	%icc,	%f1,	%f10
	stw	%l5,	[%l7 + 0x14]
	ldd	[%l7 + 0x08],	%f8
	alignaddr	%l6,	%o1,	%i4
	fand	%f0,	%f2,	%f6
	alignaddrl	%o6,	%o0,	%g1
	fmovrslz	%i6,	%f1,	%f0
	edge32n	%g7,	%g2,	%g6
	popc	0x1342,	%o3
	edge16n	%o4,	%l4,	%i0
	stx	%l0,	[%l7 + 0x18]
	subcc	%o7,	0x0DAA,	%g5
	fmovdvc	%icc,	%f5,	%f1
	xor	%l2,	0x026A,	%l1
	subccc	%l3,	%o2,	%g3
	fand	%f0,	%f8,	%f4
	fpadd16s	%f11,	%f11,	%f0
	ldd	[%l7 + 0x48],	%f8
	ldd	[%l7 + 0x68],	%f8
	edge8ln	%i2,	%i1,	%o5
	udiv	%i5,	0x1C9C,	%i7
	alignaddr	%g4,	%i3,	%l6
	fpsub32s	%f8,	%f12,	%f1
	movrgz	%l5,	%i4,	%o1
	lduw	[%l7 + 0x40],	%o6
	ldsb	[%l7 + 0x50],	%o0
	ldsb	[%l7 + 0x6A],	%i6
	fbg,a	%fcc3,	loop_1783
	fcmps	%fcc2,	%f2,	%f12
	edge8l	%g1,	%g7,	%g6
	bgu,a,pn	%xcc,	loop_1784
loop_1783:
	fones	%f7
	ldsw	[%l7 + 0x10],	%g2
	fmovrsgz	%o4,	%f10,	%f0
loop_1784:
	ldx	[%l7 + 0x08],	%o3
	ldub	[%l7 + 0x46],	%l4
	brlez	%i0,	loop_1785
	fmovsvc	%icc,	%f5,	%f12
	for	%f2,	%f14,	%f2
	fsrc1s	%f14,	%f9
loop_1785:
	movle	%icc,	%l0,	%o7
	fmovsg	%icc,	%f12,	%f8
	or	%g5,	%l1,	%l3
	fbl	%fcc0,	loop_1786
	stw	%l2,	[%l7 + 0x1C]
	ldub	[%l7 + 0x6C],	%g3
	tpos	%icc,	0x5
loop_1786:
	movrlez	%i2,	%i1,	%o5
	ldub	[%l7 + 0x57],	%i5
	fcmpeq16	%f6,	%f4,	%o2
	fcmpeq16	%f6,	%f0,	%i7
	umulcc	%g4,	0x0B99,	%l6
	ld	[%l7 + 0x38],	%f1
	ld	[%l7 + 0x2C],	%f15
	addcc	%i3,	0x168D,	%l5
	fbug,a	%fcc1,	loop_1787
	fnot1s	%f15,	%f1
	srlx	%i4,	0x18,	%o1
	fornot2	%f0,	%f4,	%f8
loop_1787:
	fmovrse	%o6,	%f14,	%f12
	tle	%icc,	0x4
	fmovrsgz	%o0,	%f5,	%f13
	ldsh	[%l7 + 0x64],	%g1
	move	%xcc,	%g7,	%i6
	andn	%g6,	0x0895,	%o4
	srl	%g2,	0x16,	%l4
	sra	%o3,	%l0,	%i0
	std	%f0,	[%l7 + 0x10]
	ldsw	[%l7 + 0x70],	%o7
	tvs	%xcc,	0x4
	fmul8x16al	%f2,	%f9,	%f6
	ldub	[%l7 + 0x0C],	%l1
	or	%g5,	0x1A6A,	%l3
	edge16ln	%g3,	%l2,	%i2
	ldsh	[%l7 + 0x36],	%o5
	fmovdvc	%icc,	%f8,	%f6
	ldd	[%l7 + 0x50],	%f0
	fmovrslez	%i1,	%f11,	%f3
	sth	%o2,	[%l7 + 0x2E]
	bpos,pt	%icc,	loop_1788
	fmuld8sux16	%f12,	%f13,	%f14
	tl	%xcc,	0x1
	movvs	%icc,	%i7,	%g4
loop_1788:
	fpadd16	%f0,	%f0,	%f12
	stb	%l6,	[%l7 + 0x66]
	fmovsleu	%icc,	%f14,	%f12
	fmovrdne	%i3,	%f0,	%f2
	udivcc	%l5,	0x1EB8,	%i4
	ldsh	[%l7 + 0x68],	%o1
	mova	%icc,	%o6,	%o0
	ldx	[%l7 + 0x08],	%g1
	stx	%g7,	[%l7 + 0x18]
	taddcc	%i5,	%g6,	%i6
	smul	%o4,	%g2,	%l4
	ldsw	[%l7 + 0x28],	%o3
	lduh	[%l7 + 0x16],	%i0
	ldx	[%l7 + 0x28],	%l0
	fmul8x16al	%f1,	%f0,	%f10
	addcc	%l1,	0x096F,	%g5
	ldsw	[%l7 + 0x64],	%o7
	fmovsle	%xcc,	%f8,	%f9
	sth	%l3,	[%l7 + 0x30]
	fmul8sux16	%f8,	%f10,	%f12
	ldd	[%l7 + 0x50],	%f14
	std	%f4,	[%l7 + 0x38]
	tsubcc	%l2,	%g3,	%i2
	lduh	[%l7 + 0x14],	%o5
	stw	%i1,	[%l7 + 0x68]
	andn	%i7,	%o2,	%l6
	move	%xcc,	%i3,	%g4
	std	%f6,	[%l7 + 0x28]
	stb	%i4,	[%l7 + 0x3B]
	fzeros	%f0
	ldsw	[%l7 + 0x68],	%o1
	ldsh	[%l7 + 0x22],	%o6
	ldub	[%l7 + 0x33],	%l5
	tleu	%xcc,	0x5
	stb	%g1,	[%l7 + 0x1A]
	fmovrdne	%g7,	%f2,	%f6
	fcmped	%fcc2,	%f0,	%f10
	fandnot1s	%f12,	%f15,	%f5
	ldd	[%l7 + 0x58],	%f10
	movpos	%icc,	%i5,	%g6
	add	%i6,	%o4,	%g2
	fand	%f14,	%f6,	%f6
	fmovda	%icc,	%f8,	%f7
	fone	%f10
	bneg	%icc,	loop_1789
	edge16ln	%o0,	%l4,	%i0
	smulcc	%l0,	%o3,	%l1
	fnot2s	%f9,	%f2
loop_1789:
	sub	%o7,	%l3,	%g5
	fmovrdgez	%g3,	%f12,	%f12
	lduw	[%l7 + 0x24],	%i2
	fba	%fcc3,	loop_1790
	fmovsa	%icc,	%f12,	%f12
	add	%l2,	%o5,	%i1
	orn	%o2,	0x1B18,	%i7
loop_1790:
	ldsb	[%l7 + 0x70],	%i3
	sllx	%l6,	0x1B,	%g4
	fmuld8sux16	%f8,	%f4,	%f0
	bshuffle	%f4,	%f2,	%f14
	stb	%o1,	[%l7 + 0x6F]
	bl,pn	%icc,	loop_1791
	lduh	[%l7 + 0x2E],	%i4
	std	%f2,	[%l7 + 0x68]
	fmovdl	%xcc,	%f14,	%f9
loop_1791:
	subcc	%o6,	0x0223,	%l5
	ld	[%l7 + 0x10],	%f9
	fpack16	%f0,	%f4
	std	%f8,	[%l7 + 0x48]
	fmul8x16al	%f1,	%f11,	%f12
	taddcctv	%g7,	0x1913,	%i5
	nop
	setx loop_1792, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fnot2s	%f4,	%f8
	smul	%g1,	%g6,	%o4
	fmovrsgez	%i6,	%f7,	%f5
loop_1792:
	brgz	%o0,	loop_1793
	smul	%l4,	0x14C6,	%g2
	movvc	%icc,	%l0,	%o3
	andn	%i0,	%o7,	%l1
loop_1793:
	fmovdl	%icc,	%f0,	%f5
	tsubcctv	%l3,	%g5,	%g3
	sll	%i2,	%o5,	%l2
	stx	%i1,	[%l7 + 0x60]
	ldub	[%l7 + 0x29],	%i7
	fblg,a	%fcc1,	loop_1794
	stw	%i3,	[%l7 + 0x44]
	std	%f0,	[%l7 + 0x38]
	addcc	%l6,	%o2,	%o1
loop_1794:
	ldx	[%l7 + 0x48],	%i4
	tneg	%xcc,	0x4
	stx	%o6,	[%l7 + 0x28]
	ldd	[%l7 + 0x20],	%f0
	lduh	[%l7 + 0x44],	%g4
	ldsw	[%l7 + 0x7C],	%l5
	orncc	%i5,	0x0023,	%g7
	ldsw	[%l7 + 0x48],	%g6
	tpos	%xcc,	0x3
	brgez,a	%g1,	loop_1795
	fpack16	%f14,	%f7
	lduh	[%l7 + 0x20],	%o4
	sth	%i6,	[%l7 + 0x50]
loop_1795:
	array8	%l4,	%g2,	%l0
	ldsw	[%l7 + 0x74],	%o0
	brlez,a	%o3,	loop_1796
	fones	%f8
	fblg,a	%fcc2,	loop_1797
	tvc	%icc,	0x7
loop_1796:
	ld	[%l7 + 0x58],	%f2
	fandnot2	%f14,	%f10,	%f10
loop_1797:
	st	%f7,	[%l7 + 0x4C]
	bvs,a	loop_1798
	fmovspos	%xcc,	%f7,	%f3
	edge8ln	%i0,	%l1,	%l3
	for	%f6,	%f4,	%f2
loop_1798:
	lduw	[%l7 + 0x20],	%o7
	ldd	[%l7 + 0x20],	%f6
	fbo,a	%fcc2,	loop_1799
	fxors	%f11,	%f6,	%f4
	brgez	%g3,	loop_1800
	fmovdne	%xcc,	%f14,	%f11
loop_1799:
	fcmped	%fcc1,	%f0,	%f12
	sethi	0x19F7,	%g5
loop_1800:
	andncc	%i2,	%o5,	%l2
	tleu	%icc,	0x7
	bvs	loop_1801
	fsrc1s	%f10,	%f8
	tge	%icc,	0x7
	stx	%i7,	[%l7 + 0x10]
loop_1801:
	sethi	0x0564,	%i1
	fabsd	%f14,	%f8
	addc	%l6,	0x13B6,	%i3
	st	%f6,	[%l7 + 0x38]
	fone	%f12
	fandnot1	%f8,	%f12,	%f4
	ldd	[%l7 + 0x20],	%f0
	edge32n	%o1,	%o2,	%o6
	fbul,a	%fcc2,	loop_1802
	edge8n	%g4,	%i4,	%l5
	bgu,pt	%icc,	loop_1803
	nop
	setx loop_1804, %l0, %l1
	jmpl %l1, %g7
loop_1802:
	tgu	%icc,	0x4
	alignaddrl	%i5,	%g6,	%g1
loop_1803:
	andn	%i6,	0x0467,	%l4
loop_1804:
	srax	%g2,	%l0,	%o0
	and	%o3,	0x1314,	%i0
	fbue	%fcc1,	loop_1805
	mova	%xcc,	%l1,	%l3
	fmovsneg	%icc,	%f4,	%f2
	fmovsne	%xcc,	%f9,	%f4
loop_1805:
	bg	%icc,	loop_1806
	fmovscc	%xcc,	%f15,	%f15
	addc	%o4,	%o7,	%g3
	array16	%g5,	%o5,	%l2
loop_1806:
	add	%i2,	%i7,	%l6
	movne	%icc,	%i1,	%o1
	ldsw	[%l7 + 0x5C],	%i3
	fbo	%fcc2,	loop_1807
	fmuld8sux16	%f6,	%f11,	%f2
	ta	%icc,	0x5
	stx	%o2,	[%l7 + 0x70]
loop_1807:
	fbg	%fcc2,	loop_1808
	nop
	setx loop_1809, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovdn	%xcc,	%f2,	%f2
	sdiv	%o6,	0x0D8F,	%i4
loop_1808:
	st	%f5,	[%l7 + 0x6C]
loop_1809:
	movleu	%icc,	%l5,	%g7
	tpos	%xcc,	0x7
	stw	%g4,	[%l7 + 0x20]
	udiv	%i5,	0x0A1B,	%g6
	fmovrdlez	%g1,	%f0,	%f4
	smulcc	%i6,	%g2,	%l4
	brgez,a	%l0,	loop_1810
	ld	[%l7 + 0x08],	%f11
	bl,a,pt	%icc,	loop_1811
	xorcc	%o3,	%o0,	%i0
loop_1810:
	ldx	[%l7 + 0x58],	%l1
	ldub	[%l7 + 0x17],	%l3
loop_1811:
	fpack32	%f12,	%f14,	%f4
	andn	%o4,	%o7,	%g5
	sth	%o5,	[%l7 + 0x38]
	fpmerge	%f5,	%f13,	%f10
	fmovsa	%xcc,	%f14,	%f11
	fabss	%f9,	%f10
	stx	%g3,	[%l7 + 0x78]
	fblg,a	%fcc2,	loop_1812
	fmovdcs	%icc,	%f2,	%f7
	fbug,a	%fcc1,	loop_1813
	fpack32	%f6,	%f12,	%f14
loop_1812:
	bge	%icc,	loop_1814
	udivx	%l2,	0x107B,	%i7
loop_1813:
	fbl,a	%fcc3,	loop_1815
	tcc	%icc,	0x0
loop_1814:
	bcs,a,pn	%icc,	loop_1816
	movle	%icc,	%l6,	%i2
loop_1815:
	stx	%i1,	[%l7 + 0x38]
	orcc	%i3,	%o2,	%o6
loop_1816:
	ldsw	[%l7 + 0x78],	%o1
	ldd	[%l7 + 0x30],	%f8
	fpackfix	%f0,	%f10
	ldsw	[%l7 + 0x68],	%l5
	ld	[%l7 + 0x18],	%f4
	sll	%i4,	0x07,	%g7
	faligndata	%f14,	%f14,	%f4
	sll	%g4,	%g6,	%i5
	brnz	%i6,	loop_1817
	fmovscs	%icc,	%f5,	%f10
	fabsd	%f12,	%f0
	fmovdle	%xcc,	%f6,	%f14
loop_1817:
	fmovdpos	%icc,	%f4,	%f11
	subc	%g1,	0x0C53,	%g2
	fmovscs	%icc,	%f10,	%f5
	sth	%l4,	[%l7 + 0x5E]
	ldsh	[%l7 + 0x60],	%l0
	sdivx	%o3,	0x1A58,	%o0
	mulx	%l1,	0x16DE,	%l3
	fabss	%f6,	%f15
	movrgz	%o4,	0x20A,	%i0
	ldsw	[%l7 + 0x18],	%g5
	fnegs	%f0,	%f9
	fbu	%fcc3,	loop_1818
	st	%f11,	[%l7 + 0x54]
	st	%f6,	[%l7 + 0x5C]
	std	%f4,	[%l7 + 0x20]
loop_1818:
	fbe,a	%fcc2,	loop_1819
	fmovrde	%o7,	%f12,	%f10
	fble	%fcc0,	loop_1820
	fpadd32s	%f14,	%f7,	%f0
loop_1819:
	stb	%o5,	[%l7 + 0x52]
	stb	%g3,	[%l7 + 0x3C]
loop_1820:
	fmuld8sux16	%f4,	%f11,	%f2
	ldsw	[%l7 + 0x5C],	%i7
	sdiv	%l6,	0x1CD3,	%l2
	ldsb	[%l7 + 0x5B],	%i1
	ldd	[%l7 + 0x10],	%f6
	stb	%i3,	[%l7 + 0x6A]
	ldsh	[%l7 + 0x08],	%i2
	ldsh	[%l7 + 0x56],	%o2
	fxnors	%f7,	%f0,	%f11
	fmovsleu	%icc,	%f11,	%f4
	lduh	[%l7 + 0x48],	%o1
	ldsh	[%l7 + 0x18],	%l5
	stb	%i4,	[%l7 + 0x24]
	fmovdvs	%xcc,	%f0,	%f10
	fblg,a	%fcc2,	loop_1821
	fmovdvs	%icc,	%f2,	%f6
	ldsh	[%l7 + 0x38],	%o6
	fcmpeq32	%f10,	%f12,	%g4
loop_1821:
	brgz	%g6,	loop_1822
	fmovscc	%xcc,	%f8,	%f1
	ldd	[%l7 + 0x38],	%f4
	ldub	[%l7 + 0x71],	%g7
loop_1822:
	edge16l	%i6,	%i5,	%g2
	fpmerge	%f1,	%f10,	%f12
	tge	%xcc,	0x1
	fmuld8ulx16	%f2,	%f5,	%f8
	array16	%g1,	%l0,	%l4
	fbu,a	%fcc0,	loop_1823
	sdivx	%o3,	0x118A,	%o0
	sdiv	%l1,	0x1F44,	%l3
	ldsh	[%l7 + 0x0C],	%i0
loop_1823:
	andncc	%g5,	%o4,	%o7
	fands	%f13,	%f7,	%f14
	fmovrdlz	%g3,	%f0,	%f8
	std	%f14,	[%l7 + 0x78]
	ldub	[%l7 + 0x5D],	%o5
	fone	%f10
	fcmps	%fcc1,	%f10,	%f5
	fexpand	%f15,	%f12
	fcmpgt32	%f12,	%f14,	%i7
	addcc	%l6,	%i1,	%i3
	nop
	setx loop_1824, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovdn	%icc,	%f6,	%f5
	ldsh	[%l7 + 0x5E],	%l2
	sth	%o2,	[%l7 + 0x32]
loop_1824:
	fmovdcs	%icc,	%f0,	%f2
	andcc	%o1,	0x1880,	%l5
	fmovsvc	%xcc,	%f2,	%f4
	mova	%icc,	%i4,	%o6
	sdivx	%i2,	0x1A22,	%g4
	brlez	%g6,	loop_1825
	ldsb	[%l7 + 0x0D],	%g7
	addc	%i5,	0x0C4C,	%g2
	nop
	setx loop_1826, %l0, %l1
	jmpl %l1, %g1
loop_1825:
	fmovrdlz	%l0,	%f4,	%f2
	fmovrsgez	%l4,	%f11,	%f8
	ldx	[%l7 + 0x68],	%i6
loop_1826:
	taddcctv	%o3,	0x15AC,	%l1
	fmovrslez	%l3,	%f8,	%f11
	lduh	[%l7 + 0x20],	%o0
	tvs	%icc,	0x0
	call	loop_1827
	fcmpeq16	%f12,	%f14,	%i0
	ldsw	[%l7 + 0x6C],	%o4
	ldx	[%l7 + 0x78],	%o7
loop_1827:
	lduw	[%l7 + 0x68],	%g5
	fmul8ulx16	%f14,	%f14,	%f4
	movneg	%xcc,	%g3,	%o5
	brgez	%i7,	loop_1828
	fmovdvs	%xcc,	%f2,	%f12
	ldd	[%l7 + 0x08],	%f8
	fmovse	%xcc,	%f5,	%f7
loop_1828:
	bcc,a,pt	%xcc,	loop_1829
	movgu	%xcc,	%l6,	%i3
	fcmpne16	%f2,	%f10,	%i1
	fmovdge	%xcc,	%f9,	%f13
loop_1829:
	srl	%o2,	%l2,	%l5
	movg	%xcc,	%o1,	%o6
	edge8ln	%i2,	%i4,	%g4
	tg	%icc,	0x6
	st	%f1,	[%l7 + 0x4C]
	fsrc1	%f8,	%f12
	addc	%g6,	0x01A3,	%g7
	fpackfix	%f0,	%f6
	and	%g2,	0x1F9D,	%i5
	srlx	%g1,	%l0,	%i6
	lduh	[%l7 + 0x50],	%l4
	bvs,a,pt	%xcc,	loop_1830
	bvs	loop_1831
	stx	%o3,	[%l7 + 0x10]
	edge32	%l1,	%l3,	%o0
loop_1830:
	fmovse	%xcc,	%f11,	%f6
loop_1831:
	ldsb	[%l7 + 0x0E],	%i0
	ldsw	[%l7 + 0x58],	%o4
	ldsh	[%l7 + 0x14],	%o7
	brlez,a	%g5,	loop_1832
	edge8l	%o5,	%g3,	%l6
	ldsb	[%l7 + 0x5A],	%i7
	lduh	[%l7 + 0x2C],	%i1
loop_1832:
	ldd	[%l7 + 0x60],	%f8
	fba	%fcc0,	loop_1833
	ldsh	[%l7 + 0x7C],	%o2
	fmovde	%xcc,	%f10,	%f12
	fmovs	%f8,	%f8
loop_1833:
	sth	%l2,	[%l7 + 0x74]
	fcmpgt32	%f10,	%f2,	%l5
	ldub	[%l7 + 0x37],	%i3
	tleu	%icc,	0x0
	fmovrdgz	%o6,	%f10,	%f14
	fmovdneg	%xcc,	%f5,	%f13
	array16	%o1,	%i4,	%i2
	fmovsvs	%icc,	%f13,	%f8
	fpsub32	%f8,	%f12,	%f12
	tneg	%xcc,	0x1
	taddcc	%g4,	%g6,	%g7
	movrgz	%i5,	%g1,	%g2
	ldx	[%l7 + 0x78],	%i6
	addcc	%l0,	%o3,	%l4
	nop
	setx loop_1834, %l0, %l1
	jmpl %l1, %l3
	ldsb	[%l7 + 0x48],	%o0
	ld	[%l7 + 0x10],	%f14
	edge32	%l1,	%o4,	%o7
loop_1834:
	bl	loop_1835
	fcmpne16	%f8,	%f12,	%i0
	ldsh	[%l7 + 0x6E],	%g5
	fmovrdlez	%o5,	%f4,	%f12
loop_1835:
	fblg,a	%fcc2,	loop_1836
	fbug,a	%fcc2,	loop_1837
	sra	%g3,	0x16,	%i7
	fmovrsgez	%i1,	%f3,	%f7
loop_1836:
	ldsb	[%l7 + 0x7C],	%o2
loop_1837:
	tge	%icc,	0x5
	tleu	%xcc,	0x7
	edge8	%l6,	%l5,	%l2
	stw	%o6,	[%l7 + 0x18]
	fsrc1	%f6,	%f8
	bl	loop_1838
	st	%f2,	[%l7 + 0x54]
	fxnors	%f7,	%f13,	%f14
	brnz,a	%i3,	loop_1839
loop_1838:
	ldd	[%l7 + 0x28],	%f14
	fmovdn	%xcc,	%f2,	%f9
	movg	%icc,	%i4,	%i2
loop_1839:
	ldsw	[%l7 + 0x54],	%o1
	stx	%g6,	[%l7 + 0x08]
	fmovrdgez	%g7,	%f6,	%f0
	taddcctv	%i5,	%g1,	%g4
	lduw	[%l7 + 0x54],	%g2
	udivx	%l0,	0x166E,	%o3
	andcc	%i6,	%l3,	%o0
	fmuld8sux16	%f15,	%f12,	%f12
	mova	%icc,	%l4,	%o4
	fxor	%f14,	%f14,	%f10
	std	%f2,	[%l7 + 0x30]
	bn	loop_1840
	fnot1s	%f11,	%f9
	lduh	[%l7 + 0x60],	%l1
	stb	%i0,	[%l7 + 0x6F]
loop_1840:
	fmovsvc	%xcc,	%f13,	%f1
	and	%g5,	%o5,	%g3
	call	loop_1841
	smul	%i7,	0x0E43,	%i1
	tne	%icc,	0x4
	fmovsneg	%icc,	%f1,	%f12
loop_1841:
	sra	%o7,	0x16,	%l6
	st	%f4,	[%l7 + 0x28]
	fpadd32s	%f15,	%f5,	%f2
	mulscc	%o2,	%l5,	%l2
	fmovsge	%icc,	%f4,	%f10
	movl	%xcc,	%o6,	%i4
	or	%i2,	%i3,	%o1
	sth	%g6,	[%l7 + 0x74]
	fbule	%fcc1,	loop_1842
	ld	[%l7 + 0x0C],	%f3
	srax	%g7,	%g1,	%g4
	fmovsvs	%icc,	%f5,	%f2
loop_1842:
	fmovdneg	%xcc,	%f9,	%f11
	fmovsgu	%icc,	%f13,	%f6
	fnands	%f12,	%f9,	%f9
	movl	%xcc,	%i5,	%g2
	movvs	%xcc,	%o3,	%l0
	tvs	%icc,	0x6
	lduw	[%l7 + 0x48],	%i6
	movne	%xcc,	%l3,	%o0
	tle	%xcc,	0x6
	std	%f2,	[%l7 + 0x08]
	std	%f10,	[%l7 + 0x10]
	ldsh	[%l7 + 0x72],	%o4
	fcmpgt16	%f14,	%f4,	%l1
	fbe,a	%fcc1,	loop_1843
	lduw	[%l7 + 0x1C],	%i0
	fcmple16	%f6,	%f4,	%l4
	st	%f6,	[%l7 + 0x18]
loop_1843:
	addcc	%o5,	0x17B3,	%g5
	sth	%g3,	[%l7 + 0x12]
	edge32l	%i1,	%o7,	%l6
	fsrc2	%f2,	%f2
	ldsw	[%l7 + 0x68],	%o2
	andncc	%l5,	%l2,	%i7
	array32	%i4,	%i2,	%i3
	array8	%o6,	%g6,	%o1
	ldx	[%l7 + 0x78],	%g1
	lduh	[%l7 + 0x5C],	%g4
	fxnor	%f0,	%f4,	%f12
	tneg	%xcc,	0x5
	nop
	setx loop_1844, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fxors	%f2,	%f7,	%f10
	udivx	%i5,	0x120F,	%g2
	tsubcc	%o3,	%l0,	%g7
loop_1844:
	fmovrdlez	%l3,	%f12,	%f4
	array32	%i6,	%o4,	%o0
	sth	%i0,	[%l7 + 0x38]
	movrlz	%l4,	%o5,	%g5
	ldsb	[%l7 + 0x15],	%g3
	tcc	%icc,	0x7
	fandnot2	%f12,	%f4,	%f2
	fmovsvc	%xcc,	%f13,	%f12
	ldd	[%l7 + 0x70],	%f14
	bge,pn	%icc,	loop_1845
	fbue,a	%fcc0,	loop_1846
	lduw	[%l7 + 0x08],	%l1
	movrgz	%i1,	0x200,	%l6
loop_1845:
	movcc	%icc,	%o7,	%l5
loop_1846:
	mulx	%o2,	%i7,	%l2
	ldsh	[%l7 + 0x32],	%i4
	st	%f5,	[%l7 + 0x60]
	sdivx	%i3,	0x1D9F,	%o6
	lduh	[%l7 + 0x70],	%i2
	ld	[%l7 + 0x38],	%f9
	ldx	[%l7 + 0x70],	%o1
	bne,pt	%icc,	loop_1847
	fbg,a	%fcc2,	loop_1848
	sth	%g6,	[%l7 + 0x4C]
	tl	%icc,	0x7
loop_1847:
	fbu	%fcc0,	loop_1849
loop_1848:
	movvc	%xcc,	%g1,	%i5
	ldsb	[%l7 + 0x11],	%g2
	mova	%icc,	%o3,	%g4
loop_1849:
	st	%f7,	[%l7 + 0x08]
	ldsh	[%l7 + 0x54],	%l0
	nop
	setx loop_1850, %l0, %l1
	jmpl %l1, %g7
	st	%f3,	[%l7 + 0x30]
	fxor	%f10,	%f8,	%f4
	tneg	%icc,	0x7
loop_1850:
	bgu	%icc,	loop_1851
	fmovdl	%icc,	%f5,	%f1
	ldsw	[%l7 + 0x7C],	%i6
	fnors	%f9,	%f14,	%f0
loop_1851:
	taddcc	%l3,	%o4,	%i0
	tneg	%xcc,	0x6
	tneg	%icc,	0x5
	fblg	%fcc1,	loop_1852
	bvc	%icc,	loop_1853
	fmovdgu	%xcc,	%f14,	%f14
	tge	%xcc,	0x6
loop_1852:
	fabss	%f11,	%f14
loop_1853:
	tl	%xcc,	0x3
	call	loop_1854
	ldub	[%l7 + 0x4F],	%o0
	std	%f4,	[%l7 + 0x10]
	lduh	[%l7 + 0x34],	%l4
loop_1854:
	fcmpes	%fcc2,	%f2,	%f13
	sth	%g5,	[%l7 + 0x22]
	edge32	%g3,	%o5,	%l1
	fmovdg	%icc,	%f4,	%f14
	bvc,a,pt	%xcc,	loop_1855
	fbu	%fcc1,	loop_1856
	stb	%l6,	[%l7 + 0x45]
	ld	[%l7 + 0x38],	%f13
loop_1855:
	fzero	%f8
loop_1856:
	srl	%o7,	0x07,	%l5
	fmovdcc	%icc,	%f11,	%f7
	umul	%o2,	%i1,	%i7
	lduh	[%l7 + 0x56],	%l2
	fmul8x16al	%f8,	%f11,	%f4
	st	%f2,	[%l7 + 0x58]
	fmul8x16al	%f4,	%f5,	%f14
	std	%f2,	[%l7 + 0x10]
	fxor	%f10,	%f0,	%f2
	fpack16	%f12,	%f15
	movle	%icc,	%i4,	%o6
	fsrc2	%f0,	%f12
	movrlez	%i2,	%o1,	%i3
	fbne,a	%fcc1,	loop_1857
	tge	%icc,	0x0
	ldsh	[%l7 + 0x36],	%g1
	fone	%f8
loop_1857:
	fandnot2	%f0,	%f0,	%f12
	lduh	[%l7 + 0x56],	%g6
	fmovdge	%xcc,	%f7,	%f1
	brz	%i5,	loop_1858
	fsrc2s	%f10,	%f4
	stb	%o3,	[%l7 + 0x39]
	ldsh	[%l7 + 0x4C],	%g4
loop_1858:
	tge	%icc,	0x2
	lduh	[%l7 + 0x6C],	%g2
	fbne	%fcc0,	loop_1859
	movpos	%xcc,	%l0,	%i6
	tsubcc	%l3,	0x0371,	%g7
	sth	%o4,	[%l7 + 0x2C]
loop_1859:
	bg,pn	%xcc,	loop_1860
	fmovsneg	%xcc,	%f11,	%f3
	ldd	[%l7 + 0x50],	%f10
	sll	%o0,	%l4,	%g5
loop_1860:
	ldx	[%l7 + 0x28],	%g3
	mulx	%i0,	%o5,	%l6
	fnegd	%f2,	%f10
	fmovdvs	%xcc,	%f6,	%f10
	bpos,a,pt	%xcc,	loop_1861
	ldsw	[%l7 + 0x2C],	%l1
	fzeros	%f6
	array32	%l5,	%o2,	%o7
loop_1861:
	tne	%icc,	0x4
	add	%i1,	%i7,	%i4
	sth	%l2,	[%l7 + 0x7E]
	ble,a	%xcc,	loop_1862
	fmovdcs	%icc,	%f0,	%f12
	fmovs	%f15,	%f0
	ldsh	[%l7 + 0x78],	%i2
loop_1862:
	for	%f8,	%f6,	%f4
	srlx	%o1,	0x03,	%o6
	ldsh	[%l7 + 0x7E],	%g1
	movpos	%xcc,	%g6,	%i3
	edge8n	%o3,	%g4,	%i5
	fnot2s	%f0,	%f12
	lduh	[%l7 + 0x12],	%l0
	ldub	[%l7 + 0x68],	%i6
	mulx	%g2,	%g7,	%l3
	lduw	[%l7 + 0x28],	%o0
	fbule,a	%fcc1,	loop_1863
	fmovse	%icc,	%f13,	%f5
	ldsb	[%l7 + 0x27],	%l4
	tl	%xcc,	0x3
loop_1863:
	stx	%o4,	[%l7 + 0x60]
	fblg,a	%fcc2,	loop_1864
	stb	%g5,	[%l7 + 0x52]
	nop
	setx loop_1865, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovsgu	%xcc,	%f6,	%f11
loop_1864:
	movrgez	%i0,	0x38E,	%o5
	fmovdne	%xcc,	%f4,	%f7
loop_1865:
	fmovrdlz	%l6,	%f6,	%f2
	udivcc	%l1,	0x1E87,	%g3
	brlz,a	%l5,	loop_1866
	stb	%o7,	[%l7 + 0x48]
	orncc	%i1,	0x1743,	%i7
	stw	%i4,	[%l7 + 0x1C]
loop_1866:
	stw	%o2,	[%l7 + 0x68]
	fblg	%fcc2,	loop_1867
	fornot2	%f4,	%f14,	%f4
	fnor	%f0,	%f0,	%f14
	fmovdg	%icc,	%f4,	%f3
loop_1867:
	brnz,a	%i2,	loop_1868
	ldsb	[%l7 + 0x7A],	%l2
	lduh	[%l7 + 0x46],	%o1
	move	%xcc,	%o6,	%g6
loop_1868:
	udiv	%i3,	0x1194,	%o3
	fnot1	%f6,	%f2
	fnand	%f2,	%f4,	%f4
	ldsh	[%l7 + 0x24],	%g4
	ldub	[%l7 + 0x6C],	%i5
	fbo	%fcc1,	loop_1869
	ldsw	[%l7 + 0x44],	%l0
	movle	%icc,	%i6,	%g2
	brlz	%g7,	loop_1870
loop_1869:
	fmovsvs	%icc,	%f4,	%f11
	fmovdne	%icc,	%f3,	%f1
	fmovda	%xcc,	%f9,	%f11
loop_1870:
	bn,a,pt	%icc,	loop_1871
	ldub	[%l7 + 0x68],	%g1
	ba,a	%xcc,	loop_1872
	stx	%o0,	[%l7 + 0x50]
loop_1871:
	fmovs	%f14,	%f5
	bl	loop_1873
loop_1872:
	sth	%l3,	[%l7 + 0x50]
	movrlez	%l4,	%o4,	%i0
	sllx	%g5,	0x05,	%l6
loop_1873:
	st	%f6,	[%l7 + 0x50]
	udiv	%l1,	0x0BE4,	%g3
	stx	%o5,	[%l7 + 0x28]
	brgez	%o7,	loop_1874
	fmovda	%xcc,	%f7,	%f8
	movrne	%i1,	0x2F5,	%i7
	ldx	[%l7 + 0x60],	%l5
loop_1874:
	fmul8ulx16	%f4,	%f12,	%f10
	stb	%i4,	[%l7 + 0x4B]
	fmul8x16al	%f7,	%f1,	%f2
	fnor	%f14,	%f6,	%f6
	mulscc	%o2,	%l2,	%i2
	st	%f9,	[%l7 + 0x08]
	fmovs	%f13,	%f8
	std	%f2,	[%l7 + 0x40]
	tle	%icc,	0x3
	edge8n	%o6,	%o1,	%i3
	lduh	[%l7 + 0x74],	%g6
	fpack16	%f8,	%f3
	lduh	[%l7 + 0x46],	%g4
	ldd	[%l7 + 0x20],	%f0
	fmul8x16au	%f1,	%f13,	%f12
	fxnor	%f0,	%f2,	%f2
	sdivx	%i5,	0x1FBB,	%l0
	fpmerge	%f1,	%f14,	%f10
	tcc	%xcc,	0x2
	tsubcc	%i6,	%g2,	%o3
	bvc	%xcc,	loop_1875
	bcc,pn	%icc,	loop_1876
	fand	%f10,	%f12,	%f4
	ldsb	[%l7 + 0x13],	%g1
loop_1875:
	fpackfix	%f4,	%f6
loop_1876:
	fbne,a	%fcc1,	loop_1877
	brlez,a	%o0,	loop_1878
	fbn,a	%fcc3,	loop_1879
	fcmped	%fcc3,	%f4,	%f12
loop_1877:
	ldd	[%l7 + 0x58],	%f6
loop_1878:
	fornot1s	%f10,	%f1,	%f2
loop_1879:
	std	%f4,	[%l7 + 0x30]
	std	%f6,	[%l7 + 0x08]
	bpos	loop_1880
	ldsb	[%l7 + 0x18],	%g7
	stb	%l4,	[%l7 + 0x08]
	fnot2	%f8,	%f2
loop_1880:
	sth	%o4,	[%l7 + 0x7C]
	fornot2s	%f0,	%f12,	%f13
	xnor	%i0,	0x1436,	%l3
	be,a	loop_1881
	ldsb	[%l7 + 0x6A],	%l6
	fbul	%fcc2,	loop_1882
	move	%xcc,	%l1,	%g3
loop_1881:
	fzeros	%f8
	fmovrsgz	%g5,	%f4,	%f7
loop_1882:
	for	%f14,	%f2,	%f4
	edge8n	%o7,	%o5,	%i1
	st	%f4,	[%l7 + 0x70]
	addccc	%l5,	0x1D57,	%i4
	tne	%xcc,	0x1
	tl	%xcc,	0x2
	fpadd32	%f4,	%f8,	%f0
	fxor	%f2,	%f10,	%f6
	xnor	%o2,	0x1DB0,	%l2
	sth	%i2,	[%l7 + 0x10]
	fmovdl	%xcc,	%f6,	%f14
	fones	%f3
	add	%o6,	%i7,	%o1
	addccc	%i3,	%g4,	%g6
	brlz	%i5,	loop_1883
	edge32	%i6,	%l0,	%o3
	fmovsleu	%xcc,	%f11,	%f7
	ldub	[%l7 + 0x64],	%g2
loop_1883:
	fmovrsgez	%o0,	%f12,	%f7
	ldx	[%l7 + 0x28],	%g1
	ld	[%l7 + 0x28],	%f13
	ldx	[%l7 + 0x50],	%l4
	fcmpd	%fcc1,	%f8,	%f0
	alignaddrl	%o4,	%g7,	%l3
	siam	0x1
	ldsb	[%l7 + 0x35],	%l6
	fornot2	%f4,	%f0,	%f12
	ldx	[%l7 + 0x20],	%l1
	tge	%xcc,	0x4
	fbne,a	%fcc3,	loop_1884
	fmovrslez	%g3,	%f12,	%f14
	stx	%g5,	[%l7 + 0x18]
	stx	%i0,	[%l7 + 0x68]
loop_1884:
	te	%xcc,	0x1
	stb	%o7,	[%l7 + 0x62]
	brgez	%i1,	loop_1885
	brgz	%o5,	loop_1886
	tle	%xcc,	0x6
	stx	%l5,	[%l7 + 0x38]
loop_1885:
	addccc	%i4,	%l2,	%o2
loop_1886:
	ldub	[%l7 + 0x45],	%i2
	popc	%o6,	%i7
	ldx	[%l7 + 0x08],	%o1
	tne	%xcc,	0x7
	fnot1s	%f4,	%f5
	fmovsvs	%xcc,	%f10,	%f11
	movrlez	%g4,	0x196,	%i3
	te	%icc,	0x4
	ldsw	[%l7 + 0x58],	%i5
	lduw	[%l7 + 0x4C],	%i6
	ldsh	[%l7 + 0x40],	%l0
	umul	%o3,	%g6,	%o0
	nop
	setx loop_1887, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovrdgz	%g1,	%f0,	%f10
	ldx	[%l7 + 0x70],	%l4
	fbu,a	%fcc0,	loop_1888
loop_1887:
	sth	%g2,	[%l7 + 0x3E]
	stb	%g7,	[%l7 + 0x3A]
	xorcc	%o4,	0x061C,	%l6
loop_1888:
	edge8n	%l3,	%l1,	%g3
	fnegd	%f4,	%f2
	fmovscs	%icc,	%f5,	%f3
	lduh	[%l7 + 0x46],	%g5
	ldsw	[%l7 + 0x08],	%i0
	ldd	[%l7 + 0x68],	%f10
	ldub	[%l7 + 0x2B],	%o7
	std	%f12,	[%l7 + 0x10]
	fbu,a	%fcc0,	loop_1889
	fmovrslez	%i1,	%f4,	%f0
	ldsw	[%l7 + 0x10],	%o5
	st	%f7,	[%l7 + 0x50]
loop_1889:
	fmovsvs	%icc,	%f12,	%f15
	fmul8x16	%f14,	%f6,	%f4
	bne,pn	%icc,	loop_1890
	fcmped	%fcc0,	%f6,	%f2
	tcc	%xcc,	0x6
	andn	%l5,	0x0564,	%l2
loop_1890:
	fands	%f0,	%f10,	%f10
	edge32l	%o2,	%i2,	%i4
	fnegd	%f6,	%f2
	ldub	[%l7 + 0x1F],	%o6
	xorcc	%o1,	%g4,	%i7
	fmovrslz	%i5,	%f3,	%f7
	ldsb	[%l7 + 0x08],	%i3
	ldd	[%l7 + 0x30],	%f14
	stx	%i6,	[%l7 + 0x60]
	ldsh	[%l7 + 0x30],	%o3
	fmovscs	%xcc,	%f15,	%f12
	fandnot2s	%f10,	%f1,	%f0
	fnot1s	%f11,	%f6
	alignaddr	%l0,	%o0,	%g6
	st	%f5,	[%l7 + 0x3C]
	std	%f2,	[%l7 + 0x08]
	fmovrsne	%g1,	%f5,	%f7
	tg	%xcc,	0x2
	movge	%xcc,	%g2,	%g7
	sth	%l4,	[%l7 + 0x1E]
	bcs,a	loop_1891
	mulx	%l6,	%l3,	%l1
	movgu	%icc,	%g3,	%o4
	fbule,a	%fcc1,	loop_1892
loop_1891:
	std	%f10,	[%l7 + 0x40]
	fornot2	%f12,	%f14,	%f8
	brlez,a	%i0,	loop_1893
loop_1892:
	fandnot2s	%f11,	%f8,	%f13
	ldsh	[%l7 + 0x72],	%o7
	ldub	[%l7 + 0x18],	%i1
loop_1893:
	fcmpes	%fcc3,	%f10,	%f12
	array8	%g5,	%o5,	%l2
	ldx	[%l7 + 0x48],	%o2
	fors	%f9,	%f3,	%f1
	fmovrdlez	%l5,	%f8,	%f6
	fabss	%f0,	%f5
	fmul8x16al	%f3,	%f12,	%f8
	taddcctv	%i2,	%i4,	%o1
	fmovdvc	%xcc,	%f12,	%f14
	fmovrde	%o6,	%f10,	%f0
	sllx	%i7,	%g4,	%i3
	fmovrdne	%i6,	%f0,	%f0
	edge8l	%o3,	%l0,	%i5
	ldx	[%l7 + 0x58],	%g6
	stx	%o0,	[%l7 + 0x20]
	be,a,pn	%icc,	loop_1894
	tg	%xcc,	0x5
	std	%f2,	[%l7 + 0x60]
	fnors	%f9,	%f13,	%f13
loop_1894:
	ldsb	[%l7 + 0x1B],	%g2
	or	%g1,	%g7,	%l4
	xorcc	%l3,	%l1,	%l6
	ldx	[%l7 + 0x10],	%g3
	fcmple32	%f0,	%f4,	%o4
	mulx	%o7,	0x1434,	%i1
	bl,a,pn	%xcc,	loop_1895
	fbe,a	%fcc0,	loop_1896
	sllx	%g5,	0x0E,	%o5
	tleu	%xcc,	0x4
loop_1895:
	fmovscs	%icc,	%f1,	%f7
loop_1896:
	stx	%l2,	[%l7 + 0x18]
	ldsh	[%l7 + 0x68],	%i0
	be,pn	%xcc,	loop_1897
	ldx	[%l7 + 0x20],	%o2
	ble,pt	%xcc,	loop_1898
	movcs	%icc,	%l5,	%i2
loop_1897:
	stb	%o1,	[%l7 + 0x49]
	st	%f10,	[%l7 + 0x54]
loop_1898:
	ldsb	[%l7 + 0x40],	%o6
	movrne	%i7,	%i4,	%g4
	ldx	[%l7 + 0x10],	%i3
	fcmpne16	%f10,	%f6,	%i6
	nop
	setx loop_1899, %l0, %l1
	jmpl %l1, %l0
	edge16ln	%o3,	%g6,	%o0
	fmovd	%f6,	%f2
	fmovsvs	%xcc,	%f15,	%f15
loop_1899:
	addcc	%g2,	%i5,	%g1
	bleu,a	loop_1900
	ldx	[%l7 + 0x78],	%l4
	fmovrdlz	%l3,	%f10,	%f2
	fandnot2	%f10,	%f12,	%f8
loop_1900:
	brgez,a	%g7,	loop_1901
	bgu,a,pt	%xcc,	loop_1902
	fcmpeq16	%f10,	%f14,	%l6
	brlz,a	%g3,	loop_1903
loop_1901:
	ldsh	[%l7 + 0x6E],	%l1
loop_1902:
	edge16ln	%o7,	%i1,	%g5
	fble,a	%fcc0,	loop_1904
loop_1903:
	fpmerge	%f1,	%f2,	%f6
	fbue,a	%fcc2,	loop_1905
	and	%o4,	0x0503,	%o5
loop_1904:
	fbge	%fcc1,	loop_1906
	brlez,a	%i0,	loop_1907
loop_1905:
	st	%f11,	[%l7 + 0x34]
	tneg	%xcc,	0x7
loop_1906:
	fmovdl	%xcc,	%f13,	%f10
loop_1907:
	ldsw	[%l7 + 0x24],	%o2
	fbe,a	%fcc2,	loop_1908
	movg	%icc,	%l5,	%i2
	lduw	[%l7 + 0x40],	%o1
	bshuffle	%f14,	%f0,	%f4
loop_1908:
	fmovdge	%icc,	%f12,	%f9
	fors	%f1,	%f6,	%f0
	fmovrsgz	%o6,	%f1,	%f0
	edge32	%i7,	%l2,	%g4
	fcmped	%fcc1,	%f4,	%f14
	brgez	%i4,	loop_1909
	ldub	[%l7 + 0x76],	%i3
	fandnot2s	%f1,	%f7,	%f6
	add	%l0,	0x1C2C,	%o3
loop_1909:
	fones	%f1
	array8	%g6,	%o0,	%i6
	fbuge,a	%fcc2,	loop_1910
	fble	%fcc3,	loop_1911
	tsubcctv	%g2,	%g1,	%i5
	be,a	loop_1912
loop_1910:
	fba	%fcc3,	loop_1913
loop_1911:
	fcmps	%fcc2,	%f15,	%f1
	subcc	%l3,	%l4,	%g7
loop_1912:
	fnot2s	%f10,	%f1
loop_1913:
	fxnor	%f8,	%f4,	%f4
	fmovsvc	%icc,	%f12,	%f7
	ldsb	[%l7 + 0x67],	%g3
	ldx	[%l7 + 0x68],	%l6
	brgz,a	%o7,	loop_1914
	fmovsge	%xcc,	%f4,	%f14
	orncc	%i1,	%g5,	%l1
	fmovsgu	%xcc,	%f8,	%f12
loop_1914:
	fsrc2s	%f0,	%f2
	fmovrdne	%o5,	%f0,	%f4
	brlz,a	%i0,	loop_1915
	andcc	%o4,	%l5,	%o2
	sth	%o1,	[%l7 + 0x74]
	or	%i2,	0x104A,	%o6
loop_1915:
	ldsh	[%l7 + 0x32],	%i7
	fands	%f14,	%f9,	%f11
	smulcc	%l2,	%i4,	%i3
	st	%f3,	[%l7 + 0x18]
	tcs	%xcc,	0x5
	fcmpgt32	%f8,	%f14,	%l0
	fmovdgu	%xcc,	%f5,	%f5
	fblg	%fcc1,	loop_1916
	ldub	[%l7 + 0x6C],	%o3
	fmovrsne	%g6,	%f10,	%f15
	fmovrdlez	%g4,	%f14,	%f4
loop_1916:
	movvc	%xcc,	%i6,	%o0
	ldub	[%l7 + 0x5F],	%g2
	fbu,a	%fcc0,	loop_1917
	ldub	[%l7 + 0x24],	%g1
	lduh	[%l7 + 0x50],	%l3
	ldd	[%l7 + 0x50],	%f2
loop_1917:
	stw	%l4,	[%l7 + 0x20]
	xorcc	%g7,	0x0B2B,	%i5
	fcmpd	%fcc3,	%f8,	%f2
	ldsh	[%l7 + 0x5E],	%l6
	ldub	[%l7 + 0x70],	%g3
	ldsw	[%l7 + 0x50],	%o7
	movg	%xcc,	%i1,	%l1
	movcc	%icc,	%o5,	%i0
	nop
	setx loop_1918, %l0, %l1
	jmpl %l1, %g5
	fpadd16	%f12,	%f0,	%f8
	stw	%o4,	[%l7 + 0x30]
	brnz,a	%l5,	loop_1919
loop_1918:
	fmovspos	%icc,	%f12,	%f14
	fmovdl	%xcc,	%f3,	%f15
	fmovsvs	%icc,	%f9,	%f3
loop_1919:
	fmovdn	%xcc,	%f11,	%f10
	orncc	%o1,	%i2,	%o6
	tg	%xcc,	0x6
	ldx	[%l7 + 0x40],	%i7
	fmovdne	%xcc,	%f10,	%f10
	fandnot1	%f12,	%f14,	%f2
	lduw	[%l7 + 0x2C],	%l2
	subc	%i4,	0x11B2,	%i3
	sdivx	%l0,	0x0306,	%o3
	fxors	%f14,	%f12,	%f6
	fcmpeq32	%f0,	%f12,	%g6
	ldx	[%l7 + 0x68],	%o2
	fbul	%fcc3,	loop_1920
	brnz	%i6,	loop_1921
	fcmpes	%fcc2,	%f3,	%f10
	ldd	[%l7 + 0x78],	%f6
loop_1920:
	movn	%icc,	%o0,	%g2
loop_1921:
	sdivx	%g1,	0x028E,	%g4
	alignaddrl	%l4,	%l3,	%g7
	bcc,a	loop_1922
	call	loop_1923
	ldx	[%l7 + 0x78],	%i5
	stb	%l6,	[%l7 + 0x54]
loop_1922:
	fmovrdgz	%o7,	%f2,	%f8
loop_1923:
	edge8ln	%g3,	%i1,	%l1
	fmovde	%xcc,	%f2,	%f6
	bcc,a,pt	%xcc,	loop_1924
	fmuld8sux16	%f3,	%f6,	%f12
	movre	%i0,	%g5,	%o4
	nop
	setx loop_1925, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_1924:
	fabss	%f3,	%f0
	xnor	%o5,	%o1,	%i2
	sll	%o6,	0x04,	%l5
loop_1925:
	fnot2	%f14,	%f0
	bn,a,pn	%xcc,	loop_1926
	bvs,a,pt	%icc,	loop_1927
	fmuld8sux16	%f4,	%f3,	%f12
	movle	%icc,	%i7,	%l2
loop_1926:
	brlez,a	%i4,	loop_1928
loop_1927:
	add	%i3,	0x180D,	%l0
	fandnot2	%f14,	%f14,	%f0
	ldd	[%l7 + 0x40],	%f10
loop_1928:
	fpack16	%f0,	%f7
	movre	%g6,	0x113,	%o2
	fmovsle	%xcc,	%f8,	%f5
	fpsub32s	%f5,	%f15,	%f13
	fcmped	%fcc3,	%f10,	%f8
	ldsb	[%l7 + 0x15],	%i6
	tpos	%icc,	0x4
	fmovdcs	%xcc,	%f15,	%f10
	bcs	%xcc,	loop_1929
	fpackfix	%f4,	%f7
	fpsub32	%f0,	%f4,	%f14
	ldsb	[%l7 + 0x42],	%o3
loop_1929:
	stb	%o0,	[%l7 + 0x61]
	ldsh	[%l7 + 0x30],	%g1
	sth	%g4,	[%l7 + 0x0C]
	srl	%l4,	%g2,	%l3
	st	%f12,	[%l7 + 0x48]
	srl	%i5,	%l6,	%g7
	ldsh	[%l7 + 0x5C],	%g3
	nop
	setx loop_1930, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovrsgz	%o7,	%f10,	%f1
	stw	%i1,	[%l7 + 0x0C]
	fpadd32	%f6,	%f10,	%f14
loop_1930:
	fbe,a	%fcc0,	loop_1931
	ld	[%l7 + 0x50],	%f13
	ldsb	[%l7 + 0x2F],	%l1
	sethi	0x0B0F,	%g5
loop_1931:
	ldsb	[%l7 + 0x58],	%o4
	edge8n	%o5,	%i0,	%i2
	ldx	[%l7 + 0x70],	%o6
	lduh	[%l7 + 0x48],	%o1
	tsubcc	%l5,	%i7,	%l2
	movrgez	%i3,	%i4,	%l0
	add	%o2,	%i6,	%o3
	stw	%g6,	[%l7 + 0x78]
	bg,a	loop_1932
	fpadd32s	%f1,	%f1,	%f3
	fmovdvc	%xcc,	%f14,	%f14
	ldsw	[%l7 + 0x3C],	%o0
loop_1932:
	ld	[%l7 + 0x34],	%f3
	mulx	%g4,	%g1,	%l4
	bcc,a,pn	%xcc,	loop_1933
	umul	%l3,	0x1D36,	%g2
	umul	%i5,	%l6,	%g7
	fbule,a	%fcc0,	loop_1934
loop_1933:
	array16	%o7,	%i1,	%l1
	fmovdle	%icc,	%f12,	%f3
	smul	%g3,	%o4,	%g5
loop_1934:
	fbg	%fcc3,	loop_1935
	fmovdpos	%icc,	%f3,	%f12
	ldub	[%l7 + 0x5E],	%i0
	ldsb	[%l7 + 0x67],	%i2
loop_1935:
	sub	%o5,	0x1095,	%o6
	ldd	[%l7 + 0x08],	%f4
	bne	%xcc,	loop_1936
	add	%o1,	%l5,	%i7
	fornot1	%f2,	%f4,	%f0
	subc	%l2,	%i3,	%l0
loop_1936:
	edge32	%i4,	%o2,	%i6
	movcc	%xcc,	%g6,	%o0
	srlx	%g4,	0x1F,	%g1
	ldsb	[%l7 + 0x25],	%o3
	movrne	%l3,	0x0F6,	%g2
	fpsub32	%f12,	%f10,	%f2
	stx	%l4,	[%l7 + 0x40]
	array16	%l6,	%i5,	%g7
	ldx	[%l7 + 0x38],	%o7
	edge32ln	%l1,	%g3,	%o4
	stx	%i1,	[%l7 + 0x70]
	nop
	setx loop_1937, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fbul,a	%fcc3,	loop_1938
	be	loop_1939
	sdivcc	%i0,	0x06D7,	%g5
loop_1937:
	lduw	[%l7 + 0x10],	%o5
loop_1938:
	fmovrsgz	%o6,	%f6,	%f13
loop_1939:
	lduh	[%l7 + 0x38],	%i2
	fandnot2	%f12,	%f14,	%f0
	stb	%l5,	[%l7 + 0x4A]
	stb	%i7,	[%l7 + 0x6D]
	sllx	%o1,	%i3,	%l0
	ldsw	[%l7 + 0x2C],	%i4
	fnand	%f14,	%f8,	%f4
	brgez	%l2,	loop_1940
	fandnot2s	%f2,	%f12,	%f12
	fcmpne32	%f12,	%f12,	%o2
	stx	%i6,	[%l7 + 0x40]
loop_1940:
	fmovscc	%xcc,	%f7,	%f7
	fmovdvc	%xcc,	%f14,	%f12
	fmovrsgez	%g6,	%f3,	%f1
	ld	[%l7 + 0x78],	%f11
	ldx	[%l7 + 0x70],	%g4
	fones	%f15
	udivcc	%o0,	0x0C2A,	%o3
	fbne,a	%fcc0,	loop_1941
	taddcctv	%l3,	%g2,	%g1
	stb	%l6,	[%l7 + 0x50]
	addcc	%i5,	%g7,	%l4
loop_1941:
	ld	[%l7 + 0x7C],	%f6
	array8	%o7,	%l1,	%g3
	and	%i1,	%i0,	%g5
	fpack16	%f6,	%f8
	ldsh	[%l7 + 0x4C],	%o4
	tneg	%xcc,	0x2
	fmovsg	%icc,	%f15,	%f3
	fbuge	%fcc2,	loop_1942
	ba,pt	%xcc,	loop_1943
	fnor	%f4,	%f2,	%f4
	ldd	[%l7 + 0x60],	%f14
loop_1942:
	fbne	%fcc0,	loop_1944
loop_1943:
	alignaddr	%o5,	%i2,	%o6
	fnot2	%f0,	%f2
	fmovscc	%xcc,	%f3,	%f9
loop_1944:
	ldd	[%l7 + 0x58],	%f2
	ldub	[%l7 + 0x2D],	%l5
	movrlz	%o1,	0x00F,	%i3
	fsrc2	%f4,	%f14
	ldsb	[%l7 + 0x5A],	%i7
	alignaddr	%i4,	%l0,	%o2
	sub	%i6,	0x07ED,	%g6
	fors	%f13,	%f10,	%f0
	ld	[%l7 + 0x3C],	%f5
	lduh	[%l7 + 0x2E],	%l2
	ld	[%l7 + 0x64],	%f7
	stw	%o0,	[%l7 + 0x60]
	bvs,a,pt	%xcc,	loop_1945
	fmovrslz	%g4,	%f14,	%f4
	ldsw	[%l7 + 0x54],	%l3
	tpos	%icc,	0x5
loop_1945:
	tcs	%icc,	0x1
	movrne	%o3,	0x20B,	%g1
	ld	[%l7 + 0x44],	%f6
	stw	%l6,	[%l7 + 0x38]
	tge	%icc,	0x1
	ldsw	[%l7 + 0x30],	%g2
	fones	%f9
	move	%xcc,	%g7,	%l4
	st	%f0,	[%l7 + 0x78]
	fcmpeq16	%f4,	%f14,	%o7
	ldub	[%l7 + 0x2F],	%i5
	fornot1s	%f10,	%f1,	%f2
	fcmpeq32	%f6,	%f8,	%g3
	std	%f8,	[%l7 + 0x18]
	stx	%i1,	[%l7 + 0x18]
	stx	%i0,	[%l7 + 0x70]
	subcc	%l1,	%g5,	%o5
	srlx	%o4,	0x03,	%i2
	fmovrslez	%l5,	%f1,	%f3
	ldsh	[%l7 + 0x46],	%o1
	fbu	%fcc3,	loop_1946
	fsrc2	%f4,	%f6
	lduw	[%l7 + 0x6C],	%i3
	fmovsvs	%icc,	%f3,	%f4
loop_1946:
	sth	%o6,	[%l7 + 0x28]
	fcmpne32	%f8,	%f12,	%i4
	ldub	[%l7 + 0x4B],	%l0
	ldub	[%l7 + 0x29],	%o2
	ldd	[%l7 + 0x08],	%f14
	fmovdpos	%icc,	%f1,	%f15
	smulcc	%i6,	%g6,	%l2
	fones	%f7
	stb	%i7,	[%l7 + 0x71]
	fpadd32	%f8,	%f6,	%f10
	addc	%o0,	0x16F1,	%g4
	array32	%l3,	%o3,	%g1
	faligndata	%f10,	%f8,	%f4
	ldsw	[%l7 + 0x5C],	%g2
	fcmpne32	%f14,	%f12,	%g7
	fbue,a	%fcc3,	loop_1947
	subc	%l6,	0x0139,	%o7
	stw	%l4,	[%l7 + 0x34]
	fmovrdlz	%g3,	%f8,	%f14
loop_1947:
	ldx	[%l7 + 0x48],	%i1
	ldsw	[%l7 + 0x28],	%i0
	alignaddr	%i5,	%l1,	%o5
	fpackfix	%f4,	%f1
	edge8	%o4,	%g5,	%i2
	st	%f6,	[%l7 + 0x34]
	subc	%o1,	0x1242,	%i3
	stx	%o6,	[%l7 + 0x40]
	edge16n	%i4,	%l5,	%o2
	fabss	%f7,	%f15
	brgez	%l0,	loop_1948
	fmovrsgz	%i6,	%f14,	%f1
	edge8	%l2,	%g6,	%i7
	te	%xcc,	0x0
loop_1948:
	move	%icc,	%g4,	%l3
	fnegs	%f9,	%f3
	fmovda	%xcc,	%f9,	%f8
	faligndata	%f0,	%f4,	%f8
	tg	%icc,	0x1
	fpmerge	%f6,	%f15,	%f12
	fmul8x16	%f14,	%f0,	%f14
	movl	%xcc,	%o0,	%o3
	fmovrdlez	%g1,	%f12,	%f4
	faligndata	%f0,	%f2,	%f10
	fmovsgu	%xcc,	%f0,	%f12
	tsubcc	%g2,	%l6,	%g7
	fnegd	%f12,	%f10
	fmovda	%xcc,	%f6,	%f1
	fmovrdgez	%l4,	%f4,	%f8
	subcc	%g3,	%o7,	%i0
	lduw	[%l7 + 0x7C],	%i1
	tvs	%icc,	0x6
	fpsub16	%f6,	%f8,	%f0
	ldsh	[%l7 + 0x7E],	%l1
	fmovsn	%xcc,	%f12,	%f15
	fbl	%fcc0,	loop_1949
	bleu,a,pn	%icc,	loop_1950
	fbo	%fcc1,	loop_1951
	move	%icc,	%o5,	%i5
loop_1949:
	fmovrse	%g5,	%f14,	%f3
loop_1950:
	std	%f0,	[%l7 + 0x48]
loop_1951:
	fmul8ulx16	%f14,	%f2,	%f2
	fnegd	%f2,	%f14
	stb	%o4,	[%l7 + 0x09]
	ldsw	[%l7 + 0x3C],	%i2
	stb	%o1,	[%l7 + 0x47]
	edge16ln	%o6,	%i4,	%i3
	lduh	[%l7 + 0x5A],	%o2
	ldub	[%l7 + 0x2F],	%l0
	addc	%i6,	0x064C,	%l5
	ld	[%l7 + 0x10],	%f15
	smul	%g6,	%l2,	%g4
	bgu	%xcc,	loop_1952
	pdist	%f8,	%f2,	%f8
	ldsw	[%l7 + 0x28],	%l3
	fnegd	%f8,	%f10
loop_1952:
	ldsh	[%l7 + 0x56],	%o0
	movg	%icc,	%i7,	%o3
	fexpand	%f10,	%f2
	fble,a	%fcc0,	loop_1953
	bcc	%xcc,	loop_1954
	fpack32	%f0,	%f12,	%f0
	bge,a	loop_1955
loop_1953:
	ldsw	[%l7 + 0x6C],	%g2
loop_1954:
	ld	[%l7 + 0x38],	%f9
	ldsb	[%l7 + 0x71],	%l6
loop_1955:
	call	loop_1956
	xnor	%g7,	%l4,	%g1
	st	%f5,	[%l7 + 0x18]
	bg,a,pt	%icc,	loop_1957
loop_1956:
	edge16	%g3,	%o7,	%i0
	ldsh	[%l7 + 0x08],	%i1
	bn,pn	%icc,	loop_1958
loop_1957:
	nop
	setx loop_1959, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldsh	[%l7 + 0x52],	%o5
	ldd	[%l7 + 0x28],	%f12
loop_1958:
	mulx	%l1,	0x111E,	%g5
loop_1959:
	ldd	[%l7 + 0x40],	%f4
	fmovda	%icc,	%f13,	%f7
	bvs,pt	%icc,	loop_1960
	fcmpne16	%f8,	%f8,	%i5
	stx	%o4,	[%l7 + 0x68]
	fmovda	%xcc,	%f12,	%f15
loop_1960:
	popc	0x19C6,	%i2
	andn	%o1,	%o6,	%i3
	fmovsvc	%icc,	%f3,	%f7
	bneg,a	loop_1961
	fmovse	%icc,	%f1,	%f5
	stw	%o2,	[%l7 + 0x4C]
	brgz	%l0,	loop_1962
loop_1961:
	std	%f6,	[%l7 + 0x40]
	ldsh	[%l7 + 0x30],	%i6
	ldsw	[%l7 + 0x08],	%l5
loop_1962:
	brlz,a	%i4,	loop_1963
	fmovrslz	%l2,	%f0,	%f0
	ld	[%l7 + 0x24],	%f4
	fmuld8sux16	%f3,	%f11,	%f0
loop_1963:
	ldsh	[%l7 + 0x08],	%g6
	fbn,a	%fcc1,	loop_1964
	ldd	[%l7 + 0x78],	%f14
	andcc	%g4,	%l3,	%o0
	stb	%o3,	[%l7 + 0x44]
loop_1964:
	bleu,a	%icc,	loop_1965
	ldx	[%l7 + 0x60],	%g2
	alignaddr	%l6,	%g7,	%i7
	bneg,a,pt	%icc,	loop_1966
loop_1965:
	bleu,a,pn	%xcc,	loop_1967
	stw	%g1,	[%l7 + 0x14]
	nop
	setx loop_1968, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_1966:
	fmovdl	%icc,	%f11,	%f2
loop_1967:
	movrlez	%g3,	0x2F0,	%o7
	std	%f6,	[%l7 + 0x70]
loop_1968:
	lduw	[%l7 + 0x40],	%l4
	fornot1s	%f15,	%f15,	%f12
	edge16l	%i1,	%i0,	%o5
	xorcc	%g5,	0x191D,	%l1
	bl,a	loop_1969
	ba,a	%xcc,	loop_1970
	fmuld8sux16	%f14,	%f2,	%f10
	edge8ln	%o4,	%i5,	%o1
loop_1969:
	bge	%xcc,	loop_1971
loop_1970:
	add	%i2,	%i3,	%o6
	fsrc1s	%f12,	%f5
	alignaddr	%l0,	%i6,	%o2
loop_1971:
	fnot1	%f2,	%f4
	popc	0x1DEE,	%i4
	fcmpne16	%f8,	%f14,	%l2
	udivcc	%g6,	0x0E92,	%g4
	movleu	%xcc,	%l5,	%l3
	umulcc	%o0,	%o3,	%g2
	fmovdn	%xcc,	%f5,	%f10
	movrne	%l6,	0x19A,	%g7
	tvc	%xcc,	0x0
	fmul8sux16	%f4,	%f12,	%f10
	fmovs	%f2,	%f3
	ldsb	[%l7 + 0x67],	%i7
	fornot1	%f10,	%f6,	%f14
	fxnors	%f5,	%f13,	%f12
	std	%f0,	[%l7 + 0x50]
	bcs,pt	%xcc,	loop_1972
	alignaddr	%g1,	%g3,	%o7
	lduh	[%l7 + 0x0A],	%l4
	std	%f6,	[%l7 + 0x68]
loop_1972:
	srlx	%i0,	%o5,	%g5
	ldsb	[%l7 + 0x50],	%l1
	fmovsa	%icc,	%f8,	%f5
	subcc	%o4,	0x0513,	%i1
	edge32	%o1,	%i5,	%i3
	xor	%o6,	%l0,	%i2
	fmovdgu	%icc,	%f13,	%f1
	fbule,a	%fcc3,	loop_1973
	brnz,a	%o2,	loop_1974
	lduh	[%l7 + 0x3C],	%i6
	ldsh	[%l7 + 0x1A],	%i4
loop_1973:
	fnor	%f8,	%f6,	%f0
loop_1974:
	fmovsvs	%icc,	%f14,	%f5
	pdist	%f14,	%f4,	%f12
	fmovrdgz	%g6,	%f14,	%f14
	ldsw	[%l7 + 0x38],	%l2
	stb	%l5,	[%l7 + 0x74]
	bcs,pn	%xcc,	loop_1975
	edge16n	%l3,	%o0,	%g4
	sllx	%g2,	%l6,	%g7
	movgu	%icc,	%i7,	%o3
loop_1975:
	fmovrdlz	%g1,	%f6,	%f4
	fbl	%fcc0,	loop_1976
	tle	%xcc,	0x1
	fornot1s	%f9,	%f2,	%f7
	ldsh	[%l7 + 0x6E],	%o7
loop_1976:
	fcmpd	%fcc3,	%f8,	%f12
	bneg,a	loop_1977
	sllx	%g3,	%i0,	%o5
	lduw	[%l7 + 0x38],	%l4
	ble	%icc,	loop_1978
loop_1977:
	be,a,pt	%xcc,	loop_1979
	stw	%l1,	[%l7 + 0x24]
	st	%f9,	[%l7 + 0x4C]
loop_1978:
	fxor	%f0,	%f8,	%f12
loop_1979:
	movvc	%icc,	%g5,	%i1
	move	%xcc,	%o1,	%o4
	fpadd16s	%f2,	%f6,	%f6
	ldd	[%l7 + 0x70],	%f6
	mova	%xcc,	%i5,	%i3
	edge8	%l0,	%i2,	%o6
	std	%f14,	[%l7 + 0x08]
	bl,a	loop_1980
	fcmpd	%fcc1,	%f14,	%f0
	fbne,a	%fcc0,	loop_1981
	ldx	[%l7 + 0x68],	%i6
loop_1980:
	stw	%o2,	[%l7 + 0x58]
	fbl,a	%fcc3,	loop_1982
loop_1981:
	fbu	%fcc3,	loop_1983
	fmovsneg	%xcc,	%f8,	%f15
	stx	%g6,	[%l7 + 0x48]
loop_1982:
	udiv	%i4,	0x1405,	%l2
loop_1983:
	fmovdleu	%xcc,	%f0,	%f13
	fmovdne	%xcc,	%f1,	%f0
	fnegs	%f12,	%f2
	edge32ln	%l5,	%l3,	%o0
	movvc	%xcc,	%g4,	%l6
	ldsw	[%l7 + 0x78],	%g7
	fors	%f4,	%f14,	%f3
	movcc	%icc,	%i7,	%g2
	ldsb	[%l7 + 0x40],	%o3
	andncc	%o7,	%g1,	%i0
	fbu,a	%fcc0,	loop_1984
	fpadd16	%f8,	%f8,	%f2
	sllx	%g3,	%l4,	%l1
	ldd	[%l7 + 0x10],	%f10
loop_1984:
	udivcc	%o5,	0x092C,	%i1
	movre	%g5,	%o4,	%o1
	fabsd	%f6,	%f12
	std	%f10,	[%l7 + 0x58]
	sub	%i5,	0x0E3E,	%i3
	fexpand	%f12,	%f0
	stb	%i2,	[%l7 + 0x09]
	for	%f14,	%f10,	%f4
	stx	%o6,	[%l7 + 0x50]
	stx	%i6,	[%l7 + 0x40]
	sth	%l0,	[%l7 + 0x6C]
	std	%f14,	[%l7 + 0x08]
	fmovsleu	%icc,	%f10,	%f12
	fbl	%fcc2,	loop_1985
	edge16	%o2,	%g6,	%i4
	bg	loop_1986
	movne	%icc,	%l2,	%l3
loop_1985:
	brgz,a	%l5,	loop_1987
	fnot1	%f4,	%f2
loop_1986:
	umul	%o0,	0x07BB,	%g4
	addc	%l6,	0x1926,	%g7
loop_1987:
	fpsub16	%f0,	%f14,	%f14
	bl,a,pt	%xcc,	loop_1988
	fbg	%fcc2,	loop_1989
	ldsh	[%l7 + 0x38],	%g2
	fmovsg	%xcc,	%f10,	%f2
loop_1988:
	stx	%o3,	[%l7 + 0x38]
loop_1989:
	edge32	%i7,	%g1,	%i0
	smulcc	%o7,	0x1BE5,	%l4
	fmovspos	%icc,	%f3,	%f3
	bcs,a	%icc,	loop_1990
	tneg	%icc,	0x3
	fcmps	%fcc3,	%f4,	%f9
	addccc	%g3,	%l1,	%i1
loop_1990:
	bcs	loop_1991
	st	%f13,	[%l7 + 0x34]
	movn	%xcc,	%g5,	%o5
	fmovrslz	%o1,	%f3,	%f1
loop_1991:
	fcmpgt32	%f4,	%f12,	%i5
	lduh	[%l7 + 0x5A],	%i3
	bgu,pn	%xcc,	loop_1992
	fmovdcc	%icc,	%f7,	%f7
	fmovdl	%icc,	%f12,	%f0
	ldsh	[%l7 + 0x52],	%i2
loop_1992:
	alignaddrl	%o4,	%i6,	%o6
	ldd	[%l7 + 0x40],	%f12
	fsrc2	%f0,	%f14
	orncc	%l0,	%o2,	%g6
	movcc	%icc,	%l2,	%l3
	faligndata	%f6,	%f2,	%f10
	movre	%i4,	0x182,	%l5
	fbue,a	%fcc1,	loop_1993
	for	%f12,	%f8,	%f6
	stx	%g4,	[%l7 + 0x28]
	fmovsleu	%icc,	%f8,	%f3
loop_1993:
	brgez,a	%o0,	loop_1994
	movl	%icc,	%g7,	%g2
	nop
	setx loop_1995, %l0, %l1
	jmpl %l1, %l6
	ldx	[%l7 + 0x40],	%o3
loop_1994:
	srlx	%g1,	0x00,	%i7
	xorcc	%o7,	%i0,	%g3
loop_1995:
	movcc	%xcc,	%l4,	%l1
	tl	%icc,	0x3
	ldsb	[%l7 + 0x57],	%i1
	fmovdge	%xcc,	%f15,	%f11
	ld	[%l7 + 0x40],	%f4
	bneg,pn	%icc,	loop_1996
	fsrc1	%f4,	%f14
	st	%f2,	[%l7 + 0x24]
	udiv	%g5,	0x0D81,	%o1
loop_1996:
	fnegs	%f13,	%f5
	fbe	%fcc3,	loop_1997
	udiv	%o5,	0x1130,	%i5
	stx	%i2,	[%l7 + 0x50]
	fmovsl	%xcc,	%f2,	%f10
loop_1997:
	ldub	[%l7 + 0x3C],	%o4
	stx	%i6,	[%l7 + 0x20]
	stw	%o6,	[%l7 + 0x74]
	sth	%l0,	[%l7 + 0x16]
	fcmped	%fcc2,	%f10,	%f14
	std	%f6,	[%l7 + 0x48]
	ldx	[%l7 + 0x30],	%o2
	fbue	%fcc2,	loop_1998
	udivx	%g6,	0x1B4D,	%i3
	movneg	%icc,	%l3,	%i4
	fmovrde	%l2,	%f2,	%f14
loop_1998:
	tpos	%icc,	0x3
	std	%f12,	[%l7 + 0x48]
	fbu,a	%fcc0,	loop_1999
	fmovrdlez	%g4,	%f8,	%f4
	edge8ln	%l5,	%o0,	%g7
	stx	%l6,	[%l7 + 0x70]
loop_1999:
	sethi	0x00B9,	%g2
	bshuffle	%f6,	%f8,	%f6
	sth	%g1,	[%l7 + 0x0C]
	edge8l	%o3,	%o7,	%i7
	fmovde	%icc,	%f12,	%f10
	lduw	[%l7 + 0x38],	%g3
	fcmpeq32	%f0,	%f0,	%l4
	ldub	[%l7 + 0x20],	%i0
	movne	%icc,	%i1,	%l1
	fbe	%fcc3,	loop_2000
	for	%f2,	%f2,	%f6
	lduw	[%l7 + 0x2C],	%g5
	ldsh	[%l7 + 0x50],	%o5
loop_2000:
	fand	%f8,	%f12,	%f0
	udivcc	%i5,	0x0774,	%i2
	fmovdcc	%xcc,	%f13,	%f13
	ld	[%l7 + 0x14],	%f4
	ldub	[%l7 + 0x59],	%o1
	fmovrsne	%o4,	%f6,	%f2
	fzeros	%f0
	ldx	[%l7 + 0x18],	%i6
	fmovsg	%xcc,	%f12,	%f1
	fnot2	%f0,	%f4
	tne	%xcc,	0x3
	fbne,a	%fcc2,	loop_2001
	fmovdge	%icc,	%f13,	%f9
	brlz,a	%l0,	loop_2002
	sth	%o2,	[%l7 + 0x3C]
loop_2001:
	tne	%xcc,	0x1
	fmovrsgez	%g6,	%f4,	%f0
loop_2002:
	brgz	%o6,	loop_2003
	fcmped	%fcc3,	%f6,	%f0
	sdiv	%l3,	0x1DB7,	%i4
	fmovdcs	%xcc,	%f14,	%f1
loop_2003:
	edge8n	%i3,	%g4,	%l2
	lduw	[%l7 + 0x58],	%l5
	fmul8x16au	%f5,	%f2,	%f4
	add	%o0,	0x0652,	%l6
	fpackfix	%f6,	%f5
	fmovsvs	%icc,	%f10,	%f14
	fxors	%f2,	%f12,	%f0
	and	%g7,	%g2,	%o3
	ldsb	[%l7 + 0x43],	%g1
	fmul8x16al	%f13,	%f9,	%f0
	ldub	[%l7 + 0x48],	%i7
	edge8	%g3,	%o7,	%i0
	movrgez	%l4,	0x121,	%l1
	std	%f12,	[%l7 + 0x70]
	fmuld8ulx16	%f0,	%f6,	%f12
	lduw	[%l7 + 0x78],	%g5
	tpos	%xcc,	0x2
	lduw	[%l7 + 0x20],	%o5
	alignaddrl	%i1,	%i5,	%o1
	ldub	[%l7 + 0x2B],	%i2
	ldx	[%l7 + 0x68],	%o4
	ldx	[%l7 + 0x20],	%l0
	te	%icc,	0x3
	ldd	[%l7 + 0x50],	%f14
	ldx	[%l7 + 0x70],	%o2
	ldd	[%l7 + 0x78],	%f2
	sdivcc	%g6,	0x1D46,	%o6
	nop
	setx loop_2004, %l0, %l1
	jmpl %l1, %i6
	fmul8x16al	%f13,	%f14,	%f0
	array32	%l3,	%i4,	%i3
	ldd	[%l7 + 0x78],	%f6
loop_2004:
	ldub	[%l7 + 0x0D],	%l2
	or	%g4,	%l5,	%l6
	fmovrslez	%g7,	%f0,	%f8
	fmovdle	%icc,	%f10,	%f0
	ldsh	[%l7 + 0x60],	%g2
	tsubcctv	%o0,	0x02FA,	%o3
	udivcc	%i7,	0x1E7F,	%g3
	fzeros	%f5
	fnegd	%f0,	%f14
	edge16ln	%o7,	%i0,	%l4
	edge8ln	%g1,	%l1,	%g5
	fpadd32s	%f5,	%f15,	%f4
	sdiv	%o5,	0x088A,	%i1
	ldsh	[%l7 + 0x5E],	%o1
	fors	%f15,	%f11,	%f1
	fbu,a	%fcc0,	loop_2005
	fornot1s	%f13,	%f3,	%f0
	brz	%i5,	loop_2006
	brnz	%i2,	loop_2007
loop_2005:
	brgez,a	%o4,	loop_2008
	fxnors	%f9,	%f2,	%f15
loop_2006:
	movl	%xcc,	%o2,	%l0
loop_2007:
	ld	[%l7 + 0x64],	%f8
loop_2008:
	ldsb	[%l7 + 0x38],	%o6
	std	%f0,	[%l7 + 0x30]
	andncc	%i6,	%l3,	%g6
	sub	%i4,	0x185D,	%i3
	call	loop_2009
	addc	%l2,	0x0741,	%l5
	fmovsle	%xcc,	%f13,	%f7
	ldsh	[%l7 + 0x70],	%g4
loop_2009:
	bge,a	loop_2010
	ld	[%l7 + 0x50],	%f13
	fzero	%f0
	sra	%l6,	%g7,	%o0
loop_2010:
	bgu	%icc,	loop_2011
	ble,pn	%icc,	loop_2012
	ldsb	[%l7 + 0x4B],	%o3
	fandnot1s	%f13,	%f0,	%f2
loop_2011:
	subccc	%i7,	0x17EF,	%g3
loop_2012:
	fbu	%fcc0,	loop_2013
	tl	%xcc,	0x4
	tle	%icc,	0x1
	smulcc	%g2,	0x1BA7,	%o7
loop_2013:
	fornot1	%f4,	%f10,	%f2
	fbue	%fcc1,	loop_2014
	subcc	%l4,	0x18E1,	%g1
	edge32n	%i0,	%g5,	%l1
	ldsw	[%l7 + 0x24],	%i1
loop_2014:
	fmuld8sux16	%f15,	%f15,	%f4
	fmovdcs	%icc,	%f10,	%f12
	movn	%icc,	%o5,	%o1
	stb	%i5,	[%l7 + 0x14]
	sth	%o4,	[%l7 + 0x24]
	fornot1	%f8,	%f12,	%f14
	fmovde	%xcc,	%f9,	%f2
	stx	%o2,	[%l7 + 0x08]
	fmovrdlez	%l0,	%f10,	%f8
	alignaddrl	%i2,	%o6,	%l3
	movvc	%icc,	%g6,	%i4
	fbo,a	%fcc3,	loop_2015
	subccc	%i6,	0x0F2C,	%l2
	sllx	%i3,	0x09,	%g4
	edge8n	%l6,	%l5,	%o0
loop_2015:
	fbule,a	%fcc0,	loop_2016
	ld	[%l7 + 0x28],	%f5
	brlz	%o3,	loop_2017
	sdiv	%i7,	0x06FC,	%g3
loop_2016:
	movneg	%icc,	%g7,	%g2
	fmovse	%xcc,	%f1,	%f4
loop_2017:
	movne	%icc,	%l4,	%g1
	fcmpeq32	%f0,	%f0,	%i0
	stb	%o7,	[%l7 + 0x64]
	pdist	%f6,	%f4,	%f14
	movgu	%xcc,	%l1,	%g5
	ldsw	[%l7 + 0x44],	%o5
	smulcc	%i1,	0x0A4C,	%i5
	ldsw	[%l7 + 0x34],	%o4
	smul	%o2,	%o1,	%i2
	stx	%o6,	[%l7 + 0x20]
	fcmple32	%f6,	%f10,	%l3
	st	%f6,	[%l7 + 0x14]
	lduh	[%l7 + 0x7E],	%l0
	fmovsneg	%xcc,	%f3,	%f6
	ld	[%l7 + 0x44],	%f2
	fbue,a	%fcc2,	loop_2018
	umulcc	%g6,	0x1CCE,	%i6
	ld	[%l7 + 0x18],	%f12
	stx	%l2,	[%l7 + 0x60]
loop_2018:
	tn	%icc,	0x2
	tcs	%xcc,	0x1
	call	loop_2019
	fxnor	%f14,	%f12,	%f0
	udivcc	%i3,	0x0D5C,	%g4
	taddcctv	%i4,	0x008C,	%l6
loop_2019:
	fmovsn	%icc,	%f8,	%f0
	lduh	[%l7 + 0x5C],	%o0
	sll	%o3,	%l5,	%g3
	ldsh	[%l7 + 0x6E],	%i7
	fmovde	%xcc,	%f3,	%f12
	fbge	%fcc0,	loop_2020
	ldd	[%l7 + 0x50],	%f12
	fmovrslz	%g2,	%f13,	%f0
	ldsb	[%l7 + 0x2E],	%l4
loop_2020:
	ldub	[%l7 + 0x34],	%g7
	tcc	%icc,	0x5
	fmovdl	%icc,	%f15,	%f13
	fmovdpos	%xcc,	%f9,	%f11
	bpos	loop_2021
	stx	%g1,	[%l7 + 0x48]
	ldsh	[%l7 + 0x68],	%o7
	fcmpd	%fcc1,	%f8,	%f8
loop_2021:
	fnot1s	%f2,	%f13
	sth	%l1,	[%l7 + 0x38]
	udivcc	%i0,	0x0594,	%o5
	sllx	%g5,	%i1,	%o4
	fmovsl	%xcc,	%f5,	%f13
	fabsd	%f0,	%f6
	smul	%i5,	%o2,	%o1
	movge	%xcc,	%o6,	%i2
	tcc	%xcc,	0x1
	fmovsneg	%xcc,	%f15,	%f1
	tgu	%icc,	0x1
	bpos,a	%icc,	loop_2022
	movne	%xcc,	%l0,	%l3
	ld	[%l7 + 0x44],	%f5
	bneg,pt	%xcc,	loop_2023
loop_2022:
	fpsub32s	%f8,	%f11,	%f9
	array16	%g6,	%l2,	%i3
	udivcc	%g4,	0x0AA7,	%i4
loop_2023:
	orcc	%l6,	%i6,	%o0
	fmovsg	%icc,	%f2,	%f7
	ldd	[%l7 + 0x10],	%f6
	fmovse	%xcc,	%f12,	%f9
	stx	%o3,	[%l7 + 0x48]
	fnot1	%f10,	%f10
	fornot2s	%f14,	%f3,	%f7
	tsubcc	%l5,	%g3,	%g2
	xor	%l4,	0x070E,	%i7
	lduw	[%l7 + 0x68],	%g7
	fmul8x16au	%f15,	%f7,	%f14
	sth	%g1,	[%l7 + 0x22]
	stb	%o7,	[%l7 + 0x51]
	sdivcc	%l1,	0x1C1C,	%i0
	mulx	%o5,	%g5,	%i1
	ldub	[%l7 + 0x2C],	%o4
	bcc,a,pn	%icc,	loop_2024
	fbu	%fcc3,	loop_2025
	orcc	%i5,	%o1,	%o2
	movne	%icc,	%i2,	%o6
loop_2024:
	ldsh	[%l7 + 0x16],	%l3
loop_2025:
	fandnot2	%f2,	%f4,	%f2
	fxor	%f2,	%f6,	%f4
	st	%f11,	[%l7 + 0x08]
	stw	%l0,	[%l7 + 0x74]
	fmovdge	%xcc,	%f13,	%f3
	fbe	%fcc3,	loop_2026
	fmul8x16	%f9,	%f2,	%f6
	ldsw	[%l7 + 0x08],	%g6
	tge	%icc,	0x0
loop_2026:
	edge8	%i3,	%l2,	%g4
	srlx	%i4,	%i6,	%l6
	stx	%o0,	[%l7 + 0x60]
	lduw	[%l7 + 0x1C],	%l5
	pdist	%f4,	%f2,	%f14
	fmovsgu	%xcc,	%f1,	%f12
	ldub	[%l7 + 0x1C],	%o3
	call	loop_2027
	fsrc2	%f10,	%f0
	fpadd16	%f12,	%f4,	%f14
	fcmps	%fcc2,	%f1,	%f0
loop_2027:
	bpos	%icc,	loop_2028
	fmovsn	%icc,	%f3,	%f5
	fmovdcc	%xcc,	%f7,	%f0
	st	%f8,	[%l7 + 0x0C]
loop_2028:
	ldsb	[%l7 + 0x26],	%g3
	stb	%l4,	[%l7 + 0x25]
	fmovda	%xcc,	%f8,	%f4
	brlez,a	%i7,	loop_2029
	fnot2	%f6,	%f8
	fmovdg	%icc,	%f7,	%f6
	movl	%xcc,	%g2,	%g1
loop_2029:
	fxnor	%f12,	%f12,	%f10
	tsubcc	%g7,	%o7,	%l1
	ldsh	[%l7 + 0x7C],	%o5
	std	%f4,	[%l7 + 0x50]
	ldub	[%l7 + 0x2C],	%i0
	sethi	0x0A9E,	%i1
	ldub	[%l7 + 0x17],	%o4
	movpos	%xcc,	%g5,	%i5
	tsubcctv	%o1,	%o2,	%i2
	brlz	%l3,	loop_2030
	fmuld8ulx16	%f10,	%f10,	%f10
	udivcc	%o6,	0x1DC4,	%g6
	movvc	%xcc,	%i3,	%l0
loop_2030:
	fnegs	%f3,	%f4
	fzero	%f6
	nop
	setx loop_2031, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	bcs,a,pn	%icc,	loop_2032
	taddcctv	%g4,	0x15C5,	%l2
	udiv	%i6,	0x1AD9,	%i4
loop_2031:
	fmovsa	%xcc,	%f15,	%f7
loop_2032:
	fpack32	%f2,	%f10,	%f2
	tge	%xcc,	0x6
	fbuge,a	%fcc3,	loop_2033
	umulcc	%l6,	0x0FD5,	%o0
	stx	%o3,	[%l7 + 0x38]
	pdist	%f4,	%f6,	%f2
loop_2033:
	fbl	%fcc2,	loop_2034
	ldx	[%l7 + 0x20],	%g3
	ldsw	[%l7 + 0x78],	%l4
	edge32n	%l5,	%i7,	%g2
loop_2034:
	st	%f6,	[%l7 + 0x78]
	movrgez	%g7,	0x333,	%o7
	fzero	%f12
	ld	[%l7 + 0x1C],	%f9
	brlz,a	%l1,	loop_2035
	ldsw	[%l7 + 0x74],	%o5
	pdist	%f0,	%f12,	%f14
	addccc	%i0,	%g1,	%i1
loop_2035:
	fblg	%fcc1,	loop_2036
	movrgz	%o4,	%i5,	%g5
	fpadd32s	%f10,	%f9,	%f6
	movrlz	%o2,	%o1,	%i2
loop_2036:
	ldsh	[%l7 + 0x28],	%o6
	fcmple32	%f10,	%f4,	%g6
	fbo,a	%fcc1,	loop_2037
	fmovrsgez	%i3,	%f5,	%f10
	addccc	%l3,	0x0AAD,	%g4
	ldsw	[%l7 + 0x78],	%l0
loop_2037:
	addccc	%l2,	%i6,	%i4
	fbn	%fcc2,	loop_2038
	st	%f6,	[%l7 + 0x3C]
	srl	%o0,	0x1F,	%o3
	ldsb	[%l7 + 0x77],	%l6
loop_2038:
	fones	%f9
	stb	%g3,	[%l7 + 0x20]
	stx	%l4,	[%l7 + 0x70]
	fmovsvs	%xcc,	%f10,	%f14
	fmovs	%f1,	%f11
	movrlz	%i7,	0x3CA,	%l5
	array8	%g7,	%o7,	%g2
	fpadd32	%f14,	%f0,	%f12
	fmovrdgez	%o5,	%f0,	%f0
	be,pt	%icc,	loop_2039
	lduw	[%l7 + 0x7C],	%l1
	lduw	[%l7 + 0x34],	%i0
	fmovrse	%g1,	%f14,	%f3
loop_2039:
	sdivcc	%o4,	0x075A,	%i1
	fandnot2	%f14,	%f8,	%f12
	bge,a,pn	%icc,	loop_2040
	addccc	%g5,	0x0B02,	%i5
	fmovdg	%xcc,	%f13,	%f15
	stx	%o1,	[%l7 + 0x70]
loop_2040:
	fbu	%fcc0,	loop_2041
	fornot1s	%f12,	%f2,	%f8
	tcc	%icc,	0x5
	addccc	%o2,	%i2,	%o6
loop_2041:
	fbl,a	%fcc0,	loop_2042
	ldx	[%l7 + 0x08],	%g6
	fmovs	%f13,	%f5
	udivx	%l3,	0x0264,	%i3
loop_2042:
	fmovdgu	%xcc,	%f1,	%f3
	sth	%l0,	[%l7 + 0x6A]
	edge16	%g4,	%l2,	%i6
	taddcc	%o0,	%i4,	%o3
	stx	%l6,	[%l7 + 0x70]
	ldd	[%l7 + 0x30],	%f0
	lduh	[%l7 + 0x32],	%g3
	stb	%i7,	[%l7 + 0x4D]
	fpsub16	%f14,	%f0,	%f14
	fcmpne16	%f0,	%f0,	%l4
	taddcctv	%l5,	%o7,	%g7
	bvc	loop_2043
	bne,a	loop_2044
	orcc	%g2,	0x0651,	%o5
	fbuge,a	%fcc0,	loop_2045
loop_2043:
	brgez,a	%i0,	loop_2046
loop_2044:
	stx	%g1,	[%l7 + 0x78]
	ldd	[%l7 + 0x60],	%f4
loop_2045:
	brz,a	%o4,	loop_2047
loop_2046:
	fnot2s	%f13,	%f0
	fornot2s	%f8,	%f14,	%f15
	fcmpne32	%f0,	%f4,	%l1
loop_2047:
	fbul	%fcc3,	loop_2048
	edge32	%i1,	%g5,	%i5
	sdivcc	%o1,	0x0195,	%o2
	ldx	[%l7 + 0x48],	%i2
loop_2048:
	ldsw	[%l7 + 0x7C],	%g6
	fmovdge	%xcc,	%f11,	%f2
	array16	%l3,	%o6,	%l0
	fmovsgu	%xcc,	%f7,	%f11
	fmovs	%f6,	%f8
	fmovdcc	%icc,	%f15,	%f5
	tne	%xcc,	0x2
	fpadd16s	%f12,	%f5,	%f6
	ldsb	[%l7 + 0x46],	%g4
	bleu,a,pn	%xcc,	loop_2049
	edge32	%i3,	%l2,	%i6
	sth	%o0,	[%l7 + 0x7E]
	call	loop_2050
loop_2049:
	ld	[%l7 + 0x40],	%f4
	nop
	setx loop_2051, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	smulcc	%i4,	0x06F4,	%l6
loop_2050:
	nop
	setx loop_2052, %l0, %l1
	jmpl %l1, %o3
	fba	%fcc1,	loop_2053
loop_2051:
	xor	%i7,	0x1D36,	%g3
	sllx	%l5,	0x0B,	%o7
loop_2052:
	fmovsa	%icc,	%f6,	%f4
loop_2053:
	bge	%icc,	loop_2054
	brgz	%l4,	loop_2055
	ldx	[%l7 + 0x10],	%g2
	udivcc	%o5,	0x0C29,	%i0
loop_2054:
	st	%f13,	[%l7 + 0x40]
loop_2055:
	fmovdcc	%xcc,	%f13,	%f8
	fandnot2	%f6,	%f6,	%f4
	movrlez	%g7,	%g1,	%o4
	edge16	%l1,	%i1,	%g5
	fmovrdgez	%i5,	%f2,	%f0
	fmovspos	%xcc,	%f12,	%f13
	movre	%o2,	0x1D7,	%o1
	fsrc1s	%f2,	%f0
	fmovsn	%xcc,	%f2,	%f2
	st	%f0,	[%l7 + 0x74]
	fbue	%fcc2,	loop_2056
	fmovs	%f7,	%f3
	call	loop_2057
	ldsw	[%l7 + 0x0C],	%g6
loop_2056:
	umul	%l3,	%o6,	%i2
	bn	%icc,	loop_2058
loop_2057:
	fcmped	%fcc3,	%f0,	%f8
	ldsw	[%l7 + 0x64],	%g4
	ldsw	[%l7 + 0x24],	%i3
loop_2058:
	tne	%icc,	0x6
	edge8n	%l2,	%l0,	%o0
	fands	%f11,	%f13,	%f2
	sra	%i4,	%l6,	%i6
	alignaddr	%o3,	%i7,	%l5
	orcc	%o7,	%l4,	%g3
	fmovrslz	%g2,	%f1,	%f3
	lduh	[%l7 + 0x5A],	%o5
	ldd	[%l7 + 0x58],	%f10
	sdiv	%i0,	0x0807,	%g7
	fcmpne16	%f10,	%f0,	%o4
	stx	%g1,	[%l7 + 0x38]
	tne	%icc,	0x4
	bpos,a,pn	%icc,	loop_2059
	bpos,a	loop_2060
	orncc	%i1,	0x1AC4,	%g5
	movleu	%xcc,	%l1,	%i5
loop_2059:
	sll	%o2,	%o1,	%l3
loop_2060:
	te	%xcc,	0x6
	st	%f4,	[%l7 + 0x70]
	fbug,a	%fcc3,	loop_2061
	fmovsvs	%icc,	%f13,	%f0
	std	%f0,	[%l7 + 0x08]
	fnot1	%f0,	%f6
loop_2061:
	fzero	%f12
	ldsh	[%l7 + 0x32],	%g6
	fbu	%fcc3,	loop_2062
	edge16	%i2,	%g4,	%i3
	stx	%l2,	[%l7 + 0x78]
	fmul8x16al	%f12,	%f2,	%f6
loop_2062:
	ldsh	[%l7 + 0x08],	%o6
	srl	%l0,	0x0A,	%i4
	bgu,a,pn	%xcc,	loop_2063
	edge16n	%o0,	%i6,	%l6
	orcc	%o3,	0x1177,	%l5
	std	%f8,	[%l7 + 0x08]
loop_2063:
	brgez,a	%o7,	loop_2064
	lduw	[%l7 + 0x40],	%l4
	fmovdleu	%xcc,	%f15,	%f10
	movn	%icc,	%g3,	%g2
loop_2064:
	taddcctv	%i7,	%i0,	%g7
	fmovdneg	%xcc,	%f7,	%f2
	fbne	%fcc3,	loop_2065
	tcs	%xcc,	0x3
	fmovsl	%icc,	%f12,	%f10
	stb	%o4,	[%l7 + 0x5B]
loop_2065:
	lduw	[%l7 + 0x14],	%g1
	ldsh	[%l7 + 0x64],	%i1
	fmovdvs	%icc,	%f0,	%f9
	ldsb	[%l7 + 0x28],	%o5
	smulcc	%g5,	0x0C89,	%l1
	std	%f4,	[%l7 + 0x38]
	lduw	[%l7 + 0x34],	%o2
	taddcc	%o1,	0x0957,	%i5
	fcmple32	%f0,	%f6,	%g6
	add	%i2,	%g4,	%l3
	stx	%i3,	[%l7 + 0x60]
	ldx	[%l7 + 0x68],	%o6
	std	%f14,	[%l7 + 0x78]
	stb	%l2,	[%l7 + 0x12]
	nop
	setx loop_2066, %l0, %l1
	jmpl %l1, %l0
	fmul8x16al	%f4,	%f14,	%f2
	fcmpne32	%f12,	%f10,	%o0
	fmovsvs	%xcc,	%f8,	%f6
loop_2066:
	fcmpeq32	%f14,	%f10,	%i4
	lduh	[%l7 + 0x34],	%l6
	fsrc2	%f4,	%f6
	stx	%o3,	[%l7 + 0x18]
	movg	%xcc,	%i6,	%o7
	ldub	[%l7 + 0x28],	%l4
	addc	%l5,	0x0997,	%g2
	fornot1	%f8,	%f2,	%f2
	edge16l	%g3,	%i0,	%i7
	siam	0x4
	ldsh	[%l7 + 0x0E],	%o4
	movrgz	%g7,	0x368,	%i1
	movrgz	%g1,	%g5,	%l1
	fmovrslez	%o5,	%f4,	%f3
	edge16ln	%o1,	%i5,	%o2
	bgu,a,pn	%icc,	loop_2067
	stb	%g6,	[%l7 + 0x50]
	fmovdge	%icc,	%f9,	%f13
	fxor	%f0,	%f4,	%f14
loop_2067:
	fpsub32s	%f12,	%f5,	%f7
	stb	%g4,	[%l7 + 0x35]
	fcmpeq16	%f10,	%f12,	%i2
	fmovse	%xcc,	%f12,	%f9
	taddcc	%i3,	0x10ED,	%o6
	movvc	%icc,	%l3,	%l2
	sub	%o0,	0x133B,	%i4
	add	%l0,	0x1FC7,	%l6
	ldsb	[%l7 + 0x65],	%o3
	sethi	0x0623,	%o7
	movrgz	%i6,	%l4,	%g2
	lduh	[%l7 + 0x40],	%l5
	ldub	[%l7 + 0x14],	%i0
	fornot1	%f6,	%f14,	%f12
	be,a	loop_2068
	fxor	%f4,	%f4,	%f14
	umulcc	%g3,	0x0EFA,	%o4
	movne	%xcc,	%g7,	%i1
loop_2068:
	fandnot2s	%f4,	%f12,	%f5
	ldsw	[%l7 + 0x30],	%i7
	fnand	%f0,	%f14,	%f10
	ldsw	[%l7 + 0x28],	%g1
	brz,a	%l1,	loop_2069
	ld	[%l7 + 0x58],	%f13
	ldd	[%l7 + 0x40],	%f14
	fmovrsgez	%g5,	%f12,	%f6
loop_2069:
	edge16	%o5,	%i5,	%o1
	fmovrslez	%o2,	%f14,	%f6
	fpsub32s	%f12,	%f4,	%f15
	ldsw	[%l7 + 0x4C],	%g6
	srlx	%i2,	0x0A,	%i3
	lduh	[%l7 + 0x50],	%g4
	ble	loop_2070
	lduh	[%l7 + 0x76],	%l3
	fzero	%f14
	edge16	%l2,	%o0,	%o6
loop_2070:
	std	%f4,	[%l7 + 0x38]
	edge8l	%l0,	%l6,	%i4
	fmovspos	%xcc,	%f4,	%f13
	tcs	%icc,	0x5
	sth	%o7,	[%l7 + 0x20]
	fxnors	%f15,	%f9,	%f8
	for	%f2,	%f10,	%f2
	lduh	[%l7 + 0x60],	%o3
	stx	%l4,	[%l7 + 0x28]
	fmovrdlz	%i6,	%f10,	%f4
	fandnot2	%f4,	%f14,	%f4
	movge	%xcc,	%l5,	%g2
	std	%f8,	[%l7 + 0x08]
	stx	%g3,	[%l7 + 0x20]
	edge16	%o4,	%i0,	%g7
	xnorcc	%i7,	%i1,	%g1
	fbn	%fcc1,	loop_2071
	fxnors	%f7,	%f3,	%f11
	movne	%xcc,	%l1,	%o5
	std	%f12,	[%l7 + 0x50]
loop_2071:
	movrlez	%i5,	%g5,	%o2
	stx	%g6,	[%l7 + 0x30]
	stx	%i2,	[%l7 + 0x20]
	ldd	[%l7 + 0x58],	%f14
	subcc	%i3,	%g4,	%o1
	bge,pn	%icc,	loop_2072
	ldsh	[%l7 + 0x3E],	%l3
	stw	%o0,	[%l7 + 0x4C]
	movcs	%icc,	%o6,	%l2
loop_2072:
	fmovsvs	%icc,	%f10,	%f11
	fbug	%fcc3,	loop_2073
	st	%f12,	[%l7 + 0x64]
	stx	%l0,	[%l7 + 0x78]
	movrgez	%l6,	%i4,	%o7
loop_2073:
	fmovdpos	%icc,	%f0,	%f5
	stb	%o3,	[%l7 + 0x42]
	bpos,a	loop_2074
	sdivx	%i6,	0x0845,	%l5
	sub	%l4,	%g3,	%o4
	sth	%g2,	[%l7 + 0x58]
loop_2074:
	fabsd	%f8,	%f8
	ldsw	[%l7 + 0x74],	%i0
	edge16ln	%g7,	%i1,	%g1
	ld	[%l7 + 0x7C],	%f14
	ldsb	[%l7 + 0x15],	%i7
	move	%icc,	%l1,	%i5
	fbo	%fcc2,	loop_2075
	fmul8sux16	%f12,	%f6,	%f12
	fand	%f2,	%f2,	%f8
	ldx	[%l7 + 0x08],	%g5
loop_2075:
	fmovdle	%icc,	%f4,	%f4
	fmovsle	%xcc,	%f0,	%f15
	mulscc	%o2,	%g6,	%i2
	movvc	%xcc,	%o5,	%i3
	bcc,pn	%icc,	loop_2076
	fmovda	%xcc,	%f14,	%f0
	addc	%o1,	%g4,	%l3
	fxnors	%f14,	%f11,	%f9
loop_2076:
	stx	%o6,	[%l7 + 0x78]
	ldsw	[%l7 + 0x58],	%o0
	ldsh	[%l7 + 0x30],	%l2
	fba	%fcc1,	loop_2077
	fpsub16s	%f15,	%f4,	%f11
	ldsh	[%l7 + 0x4A],	%l6
	fpack16	%f8,	%f10
loop_2077:
	sth	%l0,	[%l7 + 0x28]
	sth	%i4,	[%l7 + 0x30]
	bn,pt	%icc,	loop_2078
	lduh	[%l7 + 0x0E],	%o3
	fornot1	%f4,	%f10,	%f0
	edge8n	%o7,	%l5,	%i6
loop_2078:
	fble	%fcc0,	loop_2079
	brgz,a	%g3,	loop_2080
	tneg	%icc,	0x1
	ldd	[%l7 + 0x48],	%f10
loop_2079:
	st	%f14,	[%l7 + 0x18]
loop_2080:
	fpack32	%f14,	%f14,	%f12
	stw	%l4,	[%l7 + 0x34]
	fpadd16s	%f15,	%f11,	%f7
	fbo	%fcc0,	loop_2081
	ldx	[%l7 + 0x38],	%o4
	edge8ln	%i0,	%g2,	%i1
	sth	%g1,	[%l7 + 0x0C]
loop_2081:
	ldsb	[%l7 + 0x4D],	%i7
	bn,a	loop_2082
	lduw	[%l7 + 0x10],	%g7
	stx	%l1,	[%l7 + 0x10]
	fpsub32s	%f1,	%f6,	%f11
loop_2082:
	ldsh	[%l7 + 0x6E],	%g5
	stb	%o2,	[%l7 + 0x57]
	fmovscc	%xcc,	%f12,	%f0
	move	%icc,	%g6,	%i2
	tpos	%icc,	0x5
	fnor	%f14,	%f4,	%f10
	ld	[%l7 + 0x4C],	%f6
	lduw	[%l7 + 0x78],	%i5
	movrlz	%i3,	0x08A,	%o5
	fxnors	%f4,	%f11,	%f5
	tl	%xcc,	0x6
	smul	%g4,	0x1526,	%o1
	ldub	[%l7 + 0x20],	%o6
	ldsb	[%l7 + 0x5C],	%l3
	alignaddr	%o0,	%l6,	%l2
	fmovda	%icc,	%f14,	%f5
	fmovrdgz	%i4,	%f14,	%f8
	fmovdl	%icc,	%f4,	%f6
	stx	%l0,	[%l7 + 0x58]
	edge16	%o7,	%l5,	%o3
	tne	%xcc,	0x2
	fbne	%fcc0,	loop_2083
	std	%f6,	[%l7 + 0x08]
	movle	%xcc,	%i6,	%l4
	bn,pt	%icc,	loop_2084
loop_2083:
	movrlz	%g3,	%o4,	%g2
	movl	%xcc,	%i0,	%i1
	ldsh	[%l7 + 0x70],	%i7
loop_2084:
	sllx	%g1,	0x11,	%g7
	mova	%xcc,	%g5,	%l1
	bcc,a	loop_2085
	fmovdn	%xcc,	%f2,	%f2
	fmovdg	%icc,	%f4,	%f6
	ta	%xcc,	0x2
loop_2085:
	std	%f0,	[%l7 + 0x28]
	bg,a	loop_2086
	edge16n	%o2,	%g6,	%i2
	fble	%fcc3,	loop_2087
	stx	%i5,	[%l7 + 0x08]
loop_2086:
	st	%f1,	[%l7 + 0x40]
	fxor	%f14,	%f10,	%f2
loop_2087:
	ldsh	[%l7 + 0x3E],	%o5
	fzeros	%f15
	taddcc	%i3,	0x1437,	%g4
	movrgez	%o1,	0x18D,	%l3
	ldx	[%l7 + 0x78],	%o6
	ldub	[%l7 + 0x25],	%l6
	fmovsg	%icc,	%f2,	%f11
	stw	%l2,	[%l7 + 0x64]
	movrlez	%o0,	0x2E5,	%l0
	movleu	%xcc,	%o7,	%l5
	tgu	%icc,	0x1
	fmovda	%icc,	%f12,	%f10
	fnot2s	%f0,	%f0
	std	%f14,	[%l7 + 0x08]
	fpack16	%f10,	%f14
	array32	%o3,	%i6,	%i4
	sll	%g3,	0x1F,	%l4
	fornot2	%f4,	%f6,	%f4
	fornot1	%f12,	%f0,	%f8
	fbge,a	%fcc1,	loop_2088
	fmovrdlez	%g2,	%f14,	%f14
	fbule	%fcc1,	loop_2089
	subc	%i0,	0x0FDF,	%i1
loop_2088:
	fpadd16s	%f5,	%f5,	%f1
	fcmps	%fcc1,	%f10,	%f3
loop_2089:
	fmovsg	%xcc,	%f12,	%f4
	fornot1	%f2,	%f14,	%f10
	ldx	[%l7 + 0x28],	%i7
	stb	%o4,	[%l7 + 0x7B]
	std	%f8,	[%l7 + 0x68]
	movle	%icc,	%g1,	%g7
	tleu	%icc,	0x7
	mulscc	%l1,	%o2,	%g6
	lduw	[%l7 + 0x58],	%g5
	tvc	%xcc,	0x0
	ldx	[%l7 + 0x50],	%i5
	edge8	%o5,	%i3,	%i2
	subc	%o1,	0x1043,	%g4
	udivx	%l3,	0x0E7B,	%o6
	ldsw	[%l7 + 0x14],	%l6
	bg,a,pn	%xcc,	loop_2090
	ldd	[%l7 + 0x60],	%f4
	st	%f4,	[%l7 + 0x0C]
	fcmpne16	%f6,	%f8,	%o0
loop_2090:
	fmovdne	%icc,	%f3,	%f13
	lduh	[%l7 + 0x0C],	%l0
	ldsb	[%l7 + 0x33],	%o7
	tsubcc	%l5,	%o3,	%l2
	srl	%i6,	%i4,	%g3
	ldub	[%l7 + 0x5B],	%l4
	fmovrsgez	%i0,	%f11,	%f7
	lduh	[%l7 + 0x1A],	%i1
	tg	%icc,	0x6
	fcmpes	%fcc1,	%f8,	%f3
	ldd	[%l7 + 0x78],	%f8
	brnz,a	%i7,	loop_2091
	fmovdvc	%icc,	%f13,	%f5
	fnot1	%f10,	%f8
	ldsh	[%l7 + 0x2A],	%g2
loop_2091:
	udivcc	%o4,	0x146F,	%g1
	call	loop_2092
	ldsh	[%l7 + 0x50],	%l1
	fcmpes	%fcc2,	%f14,	%f11
	fmovdge	%xcc,	%f5,	%f1
loop_2092:
	sethi	0x0EE4,	%g7
	edge8	%o2,	%g6,	%g5
	smulcc	%o5,	%i3,	%i5
	fsrc1	%f14,	%f6
	brgz	%i2,	loop_2093
	std	%f8,	[%l7 + 0x50]
	fmovrde	%g4,	%f2,	%f0
	bcs	%xcc,	loop_2094
loop_2093:
	sth	%l3,	[%l7 + 0x2E]
	movrlz	%o6,	0x158,	%o1
	andn	%o0,	0x0C17,	%l6
loop_2094:
	ta	%icc,	0x3
	fmovsvc	%icc,	%f7,	%f15
	fmuld8ulx16	%f8,	%f13,	%f2
	stx	%o7,	[%l7 + 0x40]
	bg	loop_2095
	xnor	%l5,	0x03AD,	%l0
	andncc	%o3,	%l2,	%i6
	edge8ln	%g3,	%i4,	%l4
loop_2095:
	tneg	%xcc,	0x6
	fmovsle	%xcc,	%f8,	%f8
	array16	%i0,	%i1,	%i7
	lduw	[%l7 + 0x54],	%o4
	addc	%g2,	0x0181,	%l1
	ldx	[%l7 + 0x08],	%g7
	fnor	%f0,	%f14,	%f8
	sdivcc	%g1,	0x0D58,	%g6
	ldd	[%l7 + 0x20],	%f12
	movpos	%icc,	%g5,	%o2
	ldd	[%l7 + 0x38],	%f6
	tcs	%xcc,	0x5
	fmovrsne	%i3,	%f14,	%f15
	and	%i5,	0x0985,	%i2
	sth	%o5,	[%l7 + 0x56]
	bl,pt	%icc,	loop_2096
	fornot2	%f6,	%f14,	%f10
	fors	%f6,	%f9,	%f1
	addccc	%l3,	0x002C,	%o6
loop_2096:
	fors	%f10,	%f6,	%f11
	tcs	%icc,	0x4
	tne	%xcc,	0x2
	brgz,a	%g4,	loop_2097
	ldd	[%l7 + 0x50],	%f4
	st	%f11,	[%l7 + 0x30]
	nop
	setx loop_2098, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_2097:
	fpsub32	%f8,	%f2,	%f12
	fcmped	%fcc1,	%f2,	%f12
	fnot1	%f2,	%f14
loop_2098:
	fpadd32s	%f6,	%f12,	%f12
	stb	%o0,	[%l7 + 0x58]
	st	%f9,	[%l7 + 0x4C]
	edge16n	%o1,	%l6,	%o7
	fbne,a	%fcc3,	loop_2099
	ba,a	loop_2100
	stb	%l0,	[%l7 + 0x0D]
	movleu	%icc,	%o3,	%l2
loop_2099:
	ldd	[%l7 + 0x08],	%f14
loop_2100:
	nop
	setx loop_2101, %l0, %l1
	jmpl %l1, %l5
	lduw	[%l7 + 0x48],	%i6
	fandnot1	%f8,	%f6,	%f12
	subccc	%i4,	%l4,	%i0
loop_2101:
	srl	%i1,	0x18,	%i7
	fsrc1	%f2,	%f10
	ldd	[%l7 + 0x48],	%f0
	ldub	[%l7 + 0x15],	%o4
	stx	%g3,	[%l7 + 0x50]
	fmovdn	%xcc,	%f12,	%f4
	addcc	%g2,	0x0137,	%l1
	faligndata	%f8,	%f14,	%f0
	stx	%g7,	[%l7 + 0x38]
	fmovspos	%xcc,	%f15,	%f5
	ldub	[%l7 + 0x75],	%g6
	mulscc	%g1,	%o2,	%i3
	stx	%i5,	[%l7 + 0x40]
	fbn,a	%fcc0,	loop_2102
	movl	%icc,	%g5,	%i2
	movl	%icc,	%l3,	%o5
	fmovsa	%icc,	%f8,	%f4
loop_2102:
	fzeros	%f15
	st	%f6,	[%l7 + 0x58]
	fmovrsgz	%g4,	%f6,	%f5
	faligndata	%f14,	%f14,	%f10
	fornot1s	%f7,	%f10,	%f7
	fnot2	%f6,	%f12
	fnor	%f4,	%f0,	%f8
	call	loop_2103
	fbule	%fcc3,	loop_2104
	std	%f4,	[%l7 + 0x10]
	fmovdgu	%xcc,	%f14,	%f12
loop_2103:
	sllx	%o6,	0x02,	%o1
loop_2104:
	fnot1	%f0,	%f0
	stw	%o0,	[%l7 + 0x08]
	stx	%o7,	[%l7 + 0x60]
	fmovdpos	%xcc,	%f11,	%f11
	tg	%icc,	0x7
	taddcc	%l6,	0x045A,	%l0
	fmovrdgez	%l2,	%f8,	%f8
	ble,a	loop_2105
	fmovrdgz	%l5,	%f2,	%f12
	fbl	%fcc2,	loop_2106
	fnand	%f6,	%f2,	%f2
loop_2105:
	fmovd	%f6,	%f0
	sll	%o3,	0x09,	%i4
loop_2106:
	fpack32	%f10,	%f4,	%f10
	fcmpgt32	%f12,	%f2,	%i6
	udivcc	%i0,	0x0D48,	%l4
	umulcc	%i1,	%i7,	%g3
	fnands	%f12,	%f1,	%f6
	movvc	%icc,	%g2,	%o4
	fsrc1s	%f12,	%f7
	tcs	%icc,	0x1
	array16	%g7,	%g6,	%g1
	ldx	[%l7 + 0x18],	%o2
	fnegd	%f0,	%f4
	st	%f0,	[%l7 + 0x58]
	smul	%i3,	0x04C7,	%i5
	be,a,pn	%xcc,	loop_2107
	fpsub32	%f2,	%f10,	%f2
	fmovrdne	%l1,	%f6,	%f2
	fsrc1	%f4,	%f8
loop_2107:
	nop
	setx loop_2108, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	std	%f2,	[%l7 + 0x60]
	fmovsge	%xcc,	%f9,	%f3
	fpack32	%f8,	%f2,	%f6
loop_2108:
	sth	%g5,	[%l7 + 0x3C]
	fnot1	%f12,	%f0
	orcc	%i2,	%l3,	%g4
	fabss	%f9,	%f14
	array16	%o5,	%o6,	%o1
	bvs,a,pt	%xcc,	loop_2109
	tg	%icc,	0x5
	fmovdne	%icc,	%f8,	%f1
	fzero	%f4
loop_2109:
	fmovsvc	%xcc,	%f5,	%f5
	add	%o0,	%o7,	%l0
	fand	%f0,	%f4,	%f14
	edge32l	%l6,	%l2,	%o3
	bne,a,pt	%xcc,	loop_2110
	fbe	%fcc3,	loop_2111
	movrlez	%i4,	0x2E1,	%i6
	ldub	[%l7 + 0x61],	%i0
loop_2110:
	fpsub16s	%f2,	%f15,	%f14
loop_2111:
	fmovrslz	%l5,	%f6,	%f0
	tne	%icc,	0x7
	ldsh	[%l7 + 0x70],	%l4
	fandnot2	%f0,	%f8,	%f14
	fbl	%fcc3,	loop_2112
	std	%f2,	[%l7 + 0x48]
	ldsb	[%l7 + 0x47],	%i1
	ldub	[%l7 + 0x23],	%i7
loop_2112:
	fcmpes	%fcc0,	%f9,	%f9
	movpos	%xcc,	%g3,	%o4
	ldub	[%l7 + 0x64],	%g2
	stx	%g7,	[%l7 + 0x78]
	edge8	%g6,	%g1,	%i3
	fand	%f10,	%f6,	%f6
	ldsh	[%l7 + 0x50],	%o2
	ldsw	[%l7 + 0x24],	%i5
	stw	%g5,	[%l7 + 0x78]
	movge	%xcc,	%l1,	%l3
	fnand	%f14,	%f2,	%f4
	xorcc	%g4,	%i2,	%o5
	stw	%o1,	[%l7 + 0x64]
	tpos	%xcc,	0x2
	fmovrde	%o6,	%f14,	%f6
	lduh	[%l7 + 0x22],	%o7
	fmovdpos	%icc,	%f10,	%f4
	fmovsne	%icc,	%f0,	%f2
	mulscc	%l0,	%o0,	%l6
	st	%f1,	[%l7 + 0x18]
	std	%f10,	[%l7 + 0x70]
	tcs	%xcc,	0x2
	fmovspos	%icc,	%f3,	%f1
	smulcc	%o3,	0x1109,	%i4
	std	%f4,	[%l7 + 0x50]
	fmovdg	%icc,	%f12,	%f6
	fcmps	%fcc3,	%f1,	%f1
	fcmpes	%fcc2,	%f12,	%f12
	tneg	%xcc,	0x7
	fmul8ulx16	%f8,	%f4,	%f6
	fandnot1	%f12,	%f6,	%f6
	orn	%l2,	0x1EFC,	%i0
	smul	%l5,	0x0657,	%l4
	edge32n	%i6,	%i1,	%g3
	fone	%f10
	fcmpd	%fcc1,	%f10,	%f10
	subcc	%i7,	0x18D5,	%g2
	fblg,a	%fcc3,	loop_2113
	fpack32	%f4,	%f12,	%f14
	for	%f2,	%f0,	%f4
	fone	%f12
loop_2113:
	lduh	[%l7 + 0x26],	%o4
	stw	%g7,	[%l7 + 0x7C]
	move	%xcc,	%g1,	%g6
	movrgez	%o2,	%i5,	%i3
	fcmpeq32	%f10,	%f6,	%g5
	fbne,a	%fcc3,	loop_2114
	ldd	[%l7 + 0x18],	%f14
	fpadd16s	%f14,	%f7,	%f7
	ldsw	[%l7 + 0x24],	%l3
loop_2114:
	addccc	%g4,	%i2,	%l1
	fmuld8ulx16	%f10,	%f14,	%f8
	move	%xcc,	%o1,	%o6
	ldub	[%l7 + 0x41],	%o7
	popc	0x1FBD,	%o5
	fmovdvs	%icc,	%f5,	%f15
	fpadd16	%f4,	%f4,	%f0
	stb	%l0,	[%l7 + 0x18]
	brgez,a	%o0,	loop_2115
	fnors	%f15,	%f2,	%f1
	lduw	[%l7 + 0x60],	%l6
	fmovdleu	%icc,	%f1,	%f8
loop_2115:
	movre	%i4,	%l2,	%i0
	stw	%l5,	[%l7 + 0x78]
	st	%f6,	[%l7 + 0x60]
	std	%f2,	[%l7 + 0x48]
	fmovde	%xcc,	%f4,	%f0
	udiv	%l4,	0x04FF,	%i6
	movrlez	%i1,	%o3,	%i7
	bg,a,pn	%xcc,	loop_2116
	ldsb	[%l7 + 0x7D],	%g3
	fxors	%f3,	%f15,	%f2
	stw	%o4,	[%l7 + 0x6C]
loop_2116:
	smul	%g2,	%g7,	%g1
	stw	%g6,	[%l7 + 0x14]
	tpos	%xcc,	0x4
	stx	%o2,	[%l7 + 0x60]
	sth	%i3,	[%l7 + 0x7A]
	tg	%icc,	0x6
	lduw	[%l7 + 0x70],	%g5
	orn	%i5,	%l3,	%i2
	smul	%g4,	%l1,	%o1
	tpos	%xcc,	0x3
	fbg,a	%fcc1,	loop_2117
	fmul8x16al	%f2,	%f2,	%f10
	brnz,a	%o7,	loop_2118
	popc	%o6,	%l0
loop_2117:
	sub	%o5,	0x04E7,	%l6
	fcmpne32	%f14,	%f2,	%i4
loop_2118:
	ldsh	[%l7 + 0x7E],	%l2
	fcmped	%fcc3,	%f14,	%f6
	ldsw	[%l7 + 0x20],	%i0
	ble,a	loop_2119
	brz,a	%l5,	loop_2120
	fbuge	%fcc0,	loop_2121
	brgz,a	%l4,	loop_2122
loop_2119:
	lduw	[%l7 + 0x68],	%o0
loop_2120:
	andn	%i6,	0x16E6,	%i1
loop_2121:
	fmovrdgez	%i7,	%f0,	%f10
loop_2122:
	bpos	%icc,	loop_2123
	fpack32	%f12,	%f6,	%f6
	nop
	setx loop_2124, %l0, %l1
	jmpl %l1, %o3
	movg	%icc,	%g3,	%o4
loop_2123:
	edge8n	%g2,	%g7,	%g1
	fpadd32	%f14,	%f4,	%f8
loop_2124:
	ldub	[%l7 + 0x0A],	%o2
	st	%f1,	[%l7 + 0x68]
	tcc	%icc,	0x7
	fmovda	%icc,	%f1,	%f9
	std	%f6,	[%l7 + 0x60]
	ldsw	[%l7 + 0x10],	%i3
	movvc	%xcc,	%g5,	%g6
	fnands	%f10,	%f11,	%f4
	udivx	%l3,	0x0F73,	%i5
	sdivcc	%g4,	0x057D,	%i2
	fnands	%f1,	%f15,	%f3
	fbg	%fcc2,	loop_2125
	fcmpgt32	%f8,	%f0,	%o1
	movneg	%xcc,	%o7,	%l1
	fbo	%fcc1,	loop_2126
loop_2125:
	brz	%o6,	loop_2127
	tcs	%icc,	0x4
	srax	%l0,	0x07,	%o5
loop_2126:
	pdist	%f12,	%f2,	%f10
loop_2127:
	fpmerge	%f5,	%f6,	%f8
	ldsb	[%l7 + 0x55],	%i4
	ld	[%l7 + 0x18],	%f8
	fpadd32s	%f6,	%f9,	%f10
	pdist	%f10,	%f8,	%f0
	tge	%icc,	0x0
	alignaddrl	%l2,	%i0,	%l5
	fbl,a	%fcc1,	loop_2128
	fmul8x16al	%f9,	%f3,	%f6
	lduh	[%l7 + 0x68],	%l4
	movneg	%xcc,	%o0,	%l6
loop_2128:
	bcc,pt	%xcc,	loop_2129
	mulscc	%i1,	0x0060,	%i6
	bleu,a	loop_2130
	pdist	%f10,	%f6,	%f4
loop_2129:
	lduw	[%l7 + 0x38],	%i7
	fmovdgu	%xcc,	%f3,	%f3
loop_2130:
	bvs,pt	%xcc,	loop_2131
	ldsw	[%l7 + 0x1C],	%o3
	std	%f4,	[%l7 + 0x20]
	for	%f12,	%f10,	%f4
loop_2131:
	ldsb	[%l7 + 0x0D],	%o4
	ldsh	[%l7 + 0x44],	%g3
	ldsh	[%l7 + 0x16],	%g7
	edge32ln	%g2,	%g1,	%i3
	fmovdneg	%xcc,	%f5,	%f2
	fmovscc	%xcc,	%f5,	%f8
	stx	%o2,	[%l7 + 0x18]
	edge32n	%g6,	%l3,	%i5
	lduh	[%l7 + 0x48],	%g5
	tsubcc	%i2,	%o1,	%g4
	fmovrdlez	%o7,	%f8,	%f8
	std	%f0,	[%l7 + 0x68]
	subcc	%o6,	%l1,	%l0
	bcs,a,pt	%xcc,	loop_2132
	mulx	%i4,	%o5,	%i0
	fpackfix	%f12,	%f9
	movrlz	%l5,	0x0C3,	%l4
loop_2132:
	stb	%o0,	[%l7 + 0x7A]
	stx	%l2,	[%l7 + 0x10]
	xor	%l6,	%i1,	%i7
	fmovsn	%xcc,	%f15,	%f9
	movneg	%xcc,	%i6,	%o3
	fmovspos	%icc,	%f3,	%f6
	fcmpeq16	%f14,	%f10,	%g3
	ldd	[%l7 + 0x48],	%f10
	xnor	%o4,	0x1B76,	%g7
	ldx	[%l7 + 0x10],	%g2
	srlx	%i3,	0x1F,	%o2
	srlx	%g6,	0x18,	%l3
	fmovrsne	%i5,	%f12,	%f10
	mova	%xcc,	%g5,	%g1
	fbg	%fcc1,	loop_2133
	bshuffle	%f4,	%f12,	%f10
	taddcc	%i2,	0x0402,	%g4
	fnegd	%f2,	%f14
loop_2133:
	ldx	[%l7 + 0x28],	%o7
	ld	[%l7 + 0x2C],	%f15
	addc	%o1,	%l1,	%o6
	faligndata	%f4,	%f0,	%f12
	fmul8x16au	%f2,	%f6,	%f4
	xnorcc	%i4,	0x019F,	%l0
	fble	%fcc2,	loop_2134
	fpack16	%f2,	%f15
	fabsd	%f0,	%f0
	fbuge	%fcc3,	loop_2135
loop_2134:
	fpack16	%f6,	%f6
	ldsh	[%l7 + 0x60],	%i0
	tg	%icc,	0x1
loop_2135:
	fandnot2	%f6,	%f0,	%f10
	lduw	[%l7 + 0x30],	%o5
	st	%f14,	[%l7 + 0x50]
	ldd	[%l7 + 0x28],	%f14
	lduw	[%l7 + 0x48],	%l5
	ldub	[%l7 + 0x0A],	%o0
	tsubcc	%l2,	%l4,	%i1
	ba,a	loop_2136
	fmovse	%xcc,	%f11,	%f2
	movgu	%icc,	%i7,	%l6
	fmovdcs	%xcc,	%f8,	%f5
loop_2136:
	nop
	setx loop_2137, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ta	%xcc,	0x1
	ldsh	[%l7 + 0x2C],	%o3
	stb	%i6,	[%l7 + 0x15]
loop_2137:
	ldx	[%l7 + 0x60],	%o4
	movrgez	%g3,	%g7,	%g2
	ldsb	[%l7 + 0x62],	%o2
	brgz,a	%i3,	loop_2138
	fmovsge	%icc,	%f0,	%f12
	movrne	%g6,	%l3,	%g5
	lduh	[%l7 + 0x40],	%i5
loop_2138:
	fmovrslez	%i2,	%f7,	%f10
	fbo	%fcc0,	loop_2139
	fmovscc	%icc,	%f0,	%f14
	siam	0x2
	fxors	%f14,	%f2,	%f11
loop_2139:
	st	%f5,	[%l7 + 0x2C]
	fandnot1s	%f0,	%f4,	%f0
	fmovdle	%icc,	%f15,	%f12
	fpack32	%f14,	%f14,	%f4
	stb	%g1,	[%l7 + 0x11]
	edge32	%g4,	%o1,	%o7
	ld	[%l7 + 0x1C],	%f7
	tg	%xcc,	0x5
	ldx	[%l7 + 0x50],	%l1
	fcmpgt32	%f6,	%f14,	%o6
	umul	%i4,	0x183D,	%l0
	orncc	%i0,	0x0814,	%l5
	fnand	%f10,	%f14,	%f4
	tsubcc	%o0,	0x1431,	%o5
	fmovde	%icc,	%f5,	%f7
	ldub	[%l7 + 0x7F],	%l4
	ldsh	[%l7 + 0x14],	%l2
	xnor	%i7,	0x0653,	%l6
	fsrc2	%f6,	%f2
	tpos	%icc,	0x2
	fmovdg	%icc,	%f8,	%f4
	fmovsne	%icc,	%f5,	%f1
	movle	%icc,	%o3,	%i1
	bg,a	%xcc,	loop_2140
	array16	%o4,	%g3,	%g7
	sdiv	%g2,	0x0914,	%o2
	subcc	%i6,	%i3,	%l3
loop_2140:
	fbue	%fcc1,	loop_2141
	ld	[%l7 + 0x78],	%f6
	fnegs	%f8,	%f5
	fpadd32s	%f12,	%f0,	%f14
loop_2141:
	stx	%g6,	[%l7 + 0x58]
	for	%f10,	%f4,	%f12
	fzeros	%f11
	fmovscs	%xcc,	%f9,	%f6
	fsrc1	%f14,	%f14
	tne	%icc,	0x1
	fble	%fcc2,	loop_2142
	alignaddrl	%i5,	%i2,	%g5
	fcmpgt16	%f6,	%f10,	%g4
	umulcc	%g1,	0x124A,	%o1
loop_2142:
	fcmpne16	%f0,	%f0,	%l1
	fmovda	%xcc,	%f6,	%f15
	stb	%o6,	[%l7 + 0x7D]
	tne	%icc,	0x5
	brlz	%o7,	loop_2143
	subcc	%l0,	0x170D,	%i0
	udivx	%i4,	0x0AC7,	%l5
	ldd	[%l7 + 0x40],	%f4
loop_2143:
	tg	%xcc,	0x6
	fnot1s	%f3,	%f10
	array16	%o0,	%l4,	%o5
	fmovrsgz	%i7,	%f11,	%f7
	lduh	[%l7 + 0x4E],	%l2
	std	%f12,	[%l7 + 0x30]
	ldub	[%l7 + 0x78],	%l6
	st	%f1,	[%l7 + 0x64]
	fbu,a	%fcc2,	loop_2144
	move	%xcc,	%i1,	%o3
	edge8n	%o4,	%g7,	%g2
	tcc	%xcc,	0x7
loop_2144:
	fxor	%f2,	%f2,	%f12
	fzeros	%f11
	fornot2s	%f1,	%f11,	%f13
	bne,a	loop_2145
	nop
	setx loop_2146, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldsb	[%l7 + 0x4E],	%o2
	tl	%xcc,	0x3
loop_2145:
	fmul8ulx16	%f4,	%f4,	%f14
loop_2146:
	tge	%xcc,	0x6
	fnor	%f12,	%f10,	%f12
	fpsub16s	%f3,	%f8,	%f4
	ldsw	[%l7 + 0x70],	%i6
	fbge	%fcc0,	loop_2147
	movcc	%icc,	%g3,	%i3
	fmuld8sux16	%f11,	%f5,	%f4
	srlx	%g6,	0x04,	%i5
loop_2147:
	fabsd	%f8,	%f6
	ldsb	[%l7 + 0x71],	%i2
	ldx	[%l7 + 0x70],	%l3
	mulx	%g5,	0x03E6,	%g1
	edge32l	%g4,	%o1,	%o6
	st	%f3,	[%l7 + 0x70]
	bcs	loop_2148
	ldsw	[%l7 + 0x24],	%o7
	fbue,a	%fcc2,	loop_2149
	ld	[%l7 + 0x68],	%f1
loop_2148:
	popc	%l0,	%i0
	ldx	[%l7 + 0x20],	%i4
loop_2149:
	fors	%f13,	%f9,	%f13
	fpackfix	%f10,	%f7
	ta	%icc,	0x3
	fnot2	%f8,	%f0
	bn,a,pn	%xcc,	loop_2150
	alignaddr	%l1,	%l5,	%l4
	lduh	[%l7 + 0x66],	%o5
	ldub	[%l7 + 0x16],	%i7
loop_2150:
	andn	%o0,	0x1B60,	%l2
	orn	%l6,	0x1556,	%i1
	stx	%o3,	[%l7 + 0x38]
	movpos	%xcc,	%o4,	%g7
	st	%f5,	[%l7 + 0x0C]
	nop
	setx loop_2151, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ld	[%l7 + 0x6C],	%f10
	nop
	setx loop_2152, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmul8ulx16	%f10,	%f2,	%f4
loop_2151:
	andncc	%g2,	%o2,	%g3
	array8	%i6,	%g6,	%i3
loop_2152:
	ld	[%l7 + 0x50],	%f1
	ldsb	[%l7 + 0x72],	%i5
	tle	%xcc,	0x2
	std	%f2,	[%l7 + 0x78]
	movgu	%xcc,	%i2,	%g5
	fmovdgu	%icc,	%f2,	%f15
	st	%f1,	[%l7 + 0x50]
	std	%f12,	[%l7 + 0x38]
	te	%icc,	0x3
	fmuld8sux16	%f13,	%f2,	%f8
	fbu	%fcc0,	loop_2153
	fbne,a	%fcc3,	loop_2154
	fones	%f6
	brz,a	%g1,	loop_2155
loop_2153:
	ldsh	[%l7 + 0x62],	%l3
loop_2154:
	lduw	[%l7 + 0x34],	%g4
	fmovrde	%o1,	%f0,	%f8
loop_2155:
	st	%f2,	[%l7 + 0x24]
	ldsb	[%l7 + 0x09],	%o6
	sdiv	%l0,	0x084E,	%o7
	fsrc1s	%f8,	%f13
	std	%f2,	[%l7 + 0x28]
	fmovdne	%xcc,	%f13,	%f10
	edge8ln	%i0,	%l1,	%i4
	array8	%l4,	%l5,	%o5
	ldsb	[%l7 + 0x74],	%o0
	fnors	%f12,	%f9,	%f0
	tsubcctv	%l2,	%l6,	%i1
	fmovrsne	%o3,	%f4,	%f12
	fpsub16s	%f1,	%f3,	%f13
	lduh	[%l7 + 0x54],	%o4
	movrgz	%g7,	0x393,	%i7
	edge32	%o2,	%g2,	%i6
	fandnot2	%f2,	%f0,	%f4
	brz	%g3,	loop_2156
	mulx	%i3,	0x0DD8,	%g6
	bgu,a	%xcc,	loop_2157
	stb	%i5,	[%l7 + 0x09]
loop_2156:
	lduw	[%l7 + 0x54],	%g5
	stb	%i2,	[%l7 + 0x50]
loop_2157:
	fbg	%fcc0,	loop_2158
	edge16l	%l3,	%g1,	%g4
	addcc	%o6,	%o1,	%l0
	fmovsg	%icc,	%f14,	%f6
loop_2158:
	sll	%i0,	%l1,	%i4
	taddcc	%o7,	%l5,	%l4
	fbne	%fcc3,	loop_2159
	fnegs	%f7,	%f11
	st	%f8,	[%l7 + 0x14]
	ble,a	%icc,	loop_2160
loop_2159:
	fbule	%fcc0,	loop_2161
	fornot1s	%f1,	%f6,	%f15
	tcc	%icc,	0x6
loop_2160:
	stb	%o5,	[%l7 + 0x74]
loop_2161:
	fornot1	%f12,	%f6,	%f14
	sth	%l2,	[%l7 + 0x7C]
	std	%f10,	[%l7 + 0x78]
	tsubcctv	%l6,	%i1,	%o0
	fsrc2s	%f9,	%f1
	udivx	%o4,	0x1E3D,	%o3
	fandnot1s	%f12,	%f6,	%f8
	smulcc	%g7,	0x1128,	%i7
	ldsb	[%l7 + 0x0A],	%g2
	std	%f14,	[%l7 + 0x60]
	fand	%f2,	%f2,	%f12
	fmul8ulx16	%f12,	%f4,	%f4
	ldx	[%l7 + 0x58],	%o2
	fbu,a	%fcc3,	loop_2162
	fmovsneg	%xcc,	%f3,	%f11
	edge16	%g3,	%i6,	%i3
	brgez	%i5,	loop_2163
loop_2162:
	fones	%f1
	st	%f2,	[%l7 + 0x34]
	fnegs	%f10,	%f8
loop_2163:
	for	%f10,	%f6,	%f14
	sub	%g6,	%i2,	%l3
	fmovrde	%g1,	%f8,	%f10
	brz,a	%g4,	loop_2164
	movge	%xcc,	%o6,	%g5
	ldsb	[%l7 + 0x72],	%l0
	tvs	%icc,	0x6
loop_2164:
	fmovdn	%xcc,	%f13,	%f7
	ba	loop_2165
	movcs	%icc,	%o1,	%l1
	edge8l	%i4,	%o7,	%l5
	popc	%l4,	%i0
loop_2165:
	ld	[%l7 + 0x54],	%f14
	bpos,a	%xcc,	loop_2166
	fmovdne	%icc,	%f11,	%f8
	lduw	[%l7 + 0x68],	%l2
	brz	%o5,	loop_2167
loop_2166:
	fmovda	%icc,	%f5,	%f7
	fmovde	%xcc,	%f6,	%f11
	lduw	[%l7 + 0x48],	%l6
loop_2167:
	tvs	%icc,	0x2
	ld	[%l7 + 0x28],	%f5
	fmovsneg	%icc,	%f15,	%f2
	add	%i1,	0x0801,	%o0
	fpack16	%f10,	%f0
	fornot2	%f6,	%f0,	%f6
	sra	%o4,	%g7,	%o3
	fmovsneg	%icc,	%f7,	%f8
	fors	%f15,	%f0,	%f1
	fmovsle	%icc,	%f9,	%f14
	mulscc	%g2,	0x0E3C,	%o2
	fmovsg	%icc,	%f10,	%f8
	udivcc	%g3,	0x08C9,	%i7
	fpadd32s	%f7,	%f2,	%f10
	movrgez	%i3,	%i6,	%g6
	ld	[%l7 + 0x50],	%f13
	tsubcctv	%i5,	%i2,	%g1
	lduw	[%l7 + 0x54],	%l3
	sub	%o6,	%g5,	%g4
	brnz	%l0,	loop_2168
	andn	%l1,	0x1E44,	%o1
	ldsh	[%l7 + 0x18],	%o7
	st	%f9,	[%l7 + 0x68]
loop_2168:
	ld	[%l7 + 0x78],	%f0
	fmovsne	%icc,	%f2,	%f12
	tl	%xcc,	0x1
	sub	%i4,	0x1C31,	%l5
	lduh	[%l7 + 0x36],	%l4
	brgez	%l2,	loop_2169
	sth	%i0,	[%l7 + 0x42]
	sth	%o5,	[%l7 + 0x6E]
	fmovrslz	%i1,	%f11,	%f9
loop_2169:
	ldx	[%l7 + 0x70],	%l6
	movre	%o0,	0x05D,	%o4
	fcmpd	%fcc3,	%f10,	%f12
	nop
	setx loop_2170, %l0, %l1
	jmpl %l1, %g7
	ldx	[%l7 + 0x18],	%o3
	fba,a	%fcc1,	loop_2171
	ldsh	[%l7 + 0x5E],	%g2
loop_2170:
	st	%f9,	[%l7 + 0x6C]
	edge8n	%g3,	%o2,	%i3
loop_2171:
	bcs,a	%icc,	loop_2172
	tneg	%icc,	0x7
	brgez,a	%i7,	loop_2173
	ldx	[%l7 + 0x20],	%i6
loop_2172:
	lduw	[%l7 + 0x50],	%g6
	fmovsne	%icc,	%f1,	%f14
loop_2173:
	std	%f2,	[%l7 + 0x78]
	fandnot2	%f8,	%f14,	%f12
	udivcc	%i5,	0x1BE6,	%i2
	bvc,a	%icc,	loop_2174
	te	%icc,	0x1
	array16	%l3,	%g1,	%g5
	fbl	%fcc1,	loop_2175
loop_2174:
	ta	%xcc,	0x6
	brnz,a	%g4,	loop_2176
	bg	loop_2177
loop_2175:
	ldsw	[%l7 + 0x58],	%o6
	stx	%l1,	[%l7 + 0x48]
loop_2176:
	std	%f6,	[%l7 + 0x48]
loop_2177:
	fabsd	%f10,	%f2
	brgz,a	%l0,	loop_2178
	udivx	%o7,	0x0372,	%i4
	orn	%l5,	%l4,	%o1
	fbule,a	%fcc3,	loop_2179
loop_2178:
	std	%f4,	[%l7 + 0x70]
	ldub	[%l7 + 0x2C],	%i0
	fands	%f2,	%f2,	%f15
loop_2179:
	brlez,a	%o5,	loop_2180
	fors	%f8,	%f12,	%f3
	ldsb	[%l7 + 0x44],	%l2
	srl	%i1,	0x10,	%l6
loop_2180:
	movcs	%xcc,	%o0,	%o4
	stb	%o3,	[%l7 + 0x75]
	ldx	[%l7 + 0x20],	%g7
	fsrc1	%f4,	%f6
	fpadd16s	%f15,	%f12,	%f3
	ld	[%l7 + 0x50],	%f0
	fbl	%fcc3,	loop_2181
	ldsb	[%l7 + 0x18],	%g3
	fpsub16s	%f6,	%f1,	%f10
	fcmpeq16	%f6,	%f12,	%o2
loop_2181:
	bg,a	%xcc,	loop_2182
	stx	%i3,	[%l7 + 0x40]
	tvs	%icc,	0x6
	tsubcctv	%i7,	0x1678,	%i6
loop_2182:
	edge16n	%g6,	%g2,	%i5
	ldsw	[%l7 + 0x60],	%l3
	ldd	[%l7 + 0x30],	%f6
	sdiv	%g1,	0x0F5A,	%g5
	bl,a,pn	%xcc,	loop_2183
	stb	%i2,	[%l7 + 0x2A]
	fmovrsgez	%g4,	%f8,	%f14
	fmovrsgez	%l1,	%f3,	%f3
loop_2183:
	movn	%icc,	%o6,	%l0
	stx	%o7,	[%l7 + 0x60]
	ldsb	[%l7 + 0x64],	%i4
	brgz	%l5,	loop_2184
	edge16ln	%o1,	%l4,	%o5
	ld	[%l7 + 0x60],	%f15
	fmovdneg	%xcc,	%f10,	%f9
loop_2184:
	fmovrdne	%l2,	%f8,	%f8
	bshuffle	%f4,	%f0,	%f2
	brz	%i1,	loop_2185
	movgu	%xcc,	%i0,	%l6
	fcmpne32	%f0,	%f14,	%o0
	sth	%o3,	[%l7 + 0x6A]
loop_2185:
	fmovde	%icc,	%f3,	%f0
	ldsw	[%l7 + 0x20],	%o4
	fmovsne	%icc,	%f14,	%f4
	ldsh	[%l7 + 0x1C],	%g3
	ld	[%l7 + 0x0C],	%f13
	mulscc	%g7,	%o2,	%i3
	ldsh	[%l7 + 0x12],	%i7
	stw	%g6,	[%l7 + 0x0C]
	fmovsge	%icc,	%f14,	%f0
	sdiv	%i6,	0x139E,	%i5
	fxors	%f14,	%f5,	%f5
	fcmped	%fcc1,	%f8,	%f12
	fnors	%f3,	%f4,	%f0
	fmovsg	%xcc,	%f13,	%f14
	movre	%g2,	0x090,	%l3
	fnors	%f5,	%f9,	%f7
	std	%f14,	[%l7 + 0x28]
	fbuge,a	%fcc3,	loop_2186
	sth	%g1,	[%l7 + 0x34]
	brlz	%i2,	loop_2187
	fsrc1s	%f7,	%f9
loop_2186:
	fmovrdne	%g4,	%f10,	%f4
	tle	%xcc,	0x5
loop_2187:
	srax	%l1,	%g5,	%o6
	xnorcc	%l0,	%i4,	%o7
	fnands	%f11,	%f14,	%f4
	xnorcc	%o1,	%l4,	%o5
	srax	%l5,	0x0E,	%l2
	fpadd32	%f4,	%f0,	%f12
	ldsh	[%l7 + 0x72],	%i1
	fxor	%f6,	%f6,	%f4
	fmovsvs	%icc,	%f11,	%f1
	stw	%i0,	[%l7 + 0x08]
	ldub	[%l7 + 0x36],	%l6
	udivcc	%o0,	0x1948,	%o3
	bn,a,pn	%xcc,	loop_2188
	fpsub32	%f0,	%f6,	%f14
	addcc	%o4,	%g7,	%o2
	fmovrsgz	%i3,	%f4,	%f1
loop_2188:
	movrgez	%g3,	0x3E1,	%i7
	ldsw	[%l7 + 0x08],	%i6
	fcmple32	%f6,	%f2,	%g6
	fmovsvc	%icc,	%f10,	%f1
	addccc	%g2,	0x0969,	%i5
	edge8l	%l3,	%g1,	%g4
	fexpand	%f2,	%f12
	fmovdne	%xcc,	%f7,	%f10
	std	%f2,	[%l7 + 0x68]
	stw	%i2,	[%l7 + 0x68]
	stx	%g5,	[%l7 + 0x68]
	edge16	%l1,	%o6,	%i4
	fmovdl	%xcc,	%f11,	%f12
	movn	%xcc,	%l0,	%o7
	lduh	[%l7 + 0x2E],	%o1
	fmovd	%f12,	%f8
	ld	[%l7 + 0x48],	%f13
	movvc	%xcc,	%o5,	%l5
	st	%f1,	[%l7 + 0x38]
	fba,a	%fcc2,	loop_2189
	fpsub32	%f12,	%f8,	%f6
	tg	%xcc,	0x2
	edge8	%l2,	%i1,	%i0
loop_2189:
	fbule	%fcc1,	loop_2190
	fmovscc	%icc,	%f9,	%f9
	ldx	[%l7 + 0x40],	%l6
	fmovdl	%icc,	%f15,	%f8
loop_2190:
	te	%xcc,	0x2
	lduw	[%l7 + 0x24],	%o0
	ldx	[%l7 + 0x18],	%o3
	std	%f8,	[%l7 + 0x50]
	ta	%xcc,	0x2
	ld	[%l7 + 0x7C],	%f14
	subccc	%l4,	%o4,	%g7
	fnand	%f14,	%f6,	%f12
	fmuld8sux16	%f0,	%f14,	%f10
	tle	%xcc,	0x0
	fandnot2	%f10,	%f0,	%f14
	fcmpgt16	%f2,	%f14,	%i3
	ldd	[%l7 + 0x40],	%f2
	andncc	%o2,	%g3,	%i7
	tle	%icc,	0x1
	fbge,a	%fcc0,	loop_2191
	move	%xcc,	%i6,	%g6
	ldsh	[%l7 + 0x70],	%g2
	srlx	%l3,	%i5,	%g4
loop_2191:
	fbuge	%fcc3,	loop_2192
	fcmple32	%f8,	%f6,	%i2
	fzeros	%f7
	fcmpes	%fcc3,	%f14,	%f10
loop_2192:
	movgu	%xcc,	%g5,	%l1
	stx	%o6,	[%l7 + 0x50]
	bl	%icc,	loop_2193
	fmovsgu	%icc,	%f8,	%f5
	lduh	[%l7 + 0x68],	%g1
	ldd	[%l7 + 0x60],	%f2
loop_2193:
	call	loop_2194
	fpadd32s	%f2,	%f3,	%f1
	ldub	[%l7 + 0x7E],	%l0
	fsrc1	%f2,	%f2
loop_2194:
	fmuld8sux16	%f15,	%f8,	%f8
	lduh	[%l7 + 0x08],	%o7
	stw	%o1,	[%l7 + 0x68]
	te	%xcc,	0x7
	fexpand	%f2,	%f4
	mulscc	%o5,	%l5,	%l2
	lduh	[%l7 + 0x3C],	%i4
	pdist	%f0,	%f12,	%f0
	fmovdl	%xcc,	%f1,	%f8
	fmovsl	%xcc,	%f9,	%f6
	bcc,a,pn	%icc,	loop_2195
	fmovde	%icc,	%f4,	%f9
	ldsh	[%l7 + 0x62],	%i1
	st	%f11,	[%l7 + 0x10]
loop_2195:
	edge32ln	%i0,	%o0,	%o3
	fpadd16	%f4,	%f8,	%f6
	fbe,a	%fcc3,	loop_2196
	tcs	%xcc,	0x6
	lduh	[%l7 + 0x0E],	%l6
	bge,pt	%icc,	loop_2197
loop_2196:
	ldx	[%l7 + 0x70],	%o4
	xor	%l4,	%g7,	%i3
	stx	%g3,	[%l7 + 0x40]
loop_2197:
	fmovdleu	%xcc,	%f14,	%f14
	edge32ln	%i7,	%i6,	%g6
	bn,a,pn	%icc,	loop_2198
	movle	%xcc,	%g2,	%l3
	stx	%i5,	[%l7 + 0x38]
	xor	%g4,	0x1B99,	%o2
loop_2198:
	fmovrdlez	%g5,	%f12,	%f12
	fmul8x16au	%f9,	%f4,	%f14
	ldsw	[%l7 + 0x7C],	%l1
	stx	%i2,	[%l7 + 0x10]
	fornot1	%f10,	%f6,	%f10
	andn	%o6,	0x1D77,	%g1
	ldsw	[%l7 + 0x20],	%l0
	fpsub32	%f2,	%f6,	%f4
	bg,a	%icc,	loop_2199
	nop
	setx loop_2200, %l0, %l1
	jmpl %l1, %o1
	movpos	%xcc,	%o7,	%l5
	ldsb	[%l7 + 0x3C],	%l2
loop_2199:
	movre	%o5,	0x0F1,	%i1
loop_2200:
	stw	%i0,	[%l7 + 0x54]
	andn	%i4,	0x1F5C,	%o0
	fcmpeq32	%f8,	%f0,	%o3
	lduw	[%l7 + 0x68],	%o4
	movg	%xcc,	%l4,	%g7
	popc	%i3,	%g3
	subc	%i7,	0x1E26,	%l6
	ldd	[%l7 + 0x48],	%f12
	tcc	%icc,	0x6
	for	%f12,	%f12,	%f12
	st	%f0,	[%l7 + 0x38]
	bn,a	%icc,	loop_2201
	be,pn	%xcc,	loop_2202
	lduh	[%l7 + 0x20],	%i6
	std	%f8,	[%l7 + 0x20]
loop_2201:
	be,pt	%icc,	loop_2203
loop_2202:
	fcmple16	%f10,	%f10,	%g6
	for	%f12,	%f6,	%f4
	xnorcc	%g2,	0x0614,	%l3
loop_2203:
	ba,a,pt	%xcc,	loop_2204
	fsrc1	%f14,	%f2
	nop
	setx loop_2205, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	lduw	[%l7 + 0x68],	%i5
loop_2204:
	tle	%icc,	0x6
	movre	%g4,	%o2,	%g5
loop_2205:
	mulscc	%l1,	%o6,	%g1
	subcc	%l0,	%i2,	%o1
	fxnor	%f12,	%f4,	%f14
	taddcctv	%l5,	0x1931,	%l2
	fmovrdgz	%o5,	%f14,	%f14
	fmuld8ulx16	%f9,	%f15,	%f4
	fmovspos	%xcc,	%f11,	%f11
	mulscc	%o7,	%i0,	%i4
	srlx	%o0,	0x11,	%i1
	bpos,a	loop_2206
	faligndata	%f14,	%f2,	%f10
	fpsub32s	%f7,	%f6,	%f9
	bvs,a	loop_2207
loop_2206:
	fmovdg	%xcc,	%f3,	%f5
	fmovrslez	%o4,	%f2,	%f0
	subc	%o3,	%g7,	%l4
loop_2207:
	fnot1	%f10,	%f12
	fba	%fcc3,	loop_2208
	fmul8ulx16	%f12,	%f14,	%f10
	brlez,a	%g3,	loop_2209
	sllx	%i3,	%l6,	%i7
loop_2208:
	fmul8sux16	%f12,	%f10,	%f0
	array16	%i6,	%g2,	%l3
loop_2209:
	lduh	[%l7 + 0x20],	%i5
	fpmerge	%f4,	%f12,	%f12
	std	%f6,	[%l7 + 0x40]
	st	%f0,	[%l7 + 0x50]
	movne	%icc,	%g6,	%o2
	orncc	%g4,	%g5,	%o6
	array8	%g1,	%l0,	%l1
	sdivx	%i2,	0x0EEE,	%l5
	xnor	%o1,	%o5,	%o7
	tvs	%icc,	0x1
	fnors	%f7,	%f14,	%f5
	ldd	[%l7 + 0x38],	%f10
	std	%f4,	[%l7 + 0x30]
	sth	%i0,	[%l7 + 0x12]
	ldub	[%l7 + 0x32],	%l2
	fbo,a	%fcc3,	loop_2210
	std	%f14,	[%l7 + 0x18]
	andncc	%i4,	%i1,	%o4
	fpack16	%f14,	%f12
loop_2210:
	bshuffle	%f10,	%f4,	%f0
	fcmpeq32	%f10,	%f2,	%o0
	ldsw	[%l7 + 0x64],	%g7
	taddcctv	%o3,	%g3,	%i3
	tsubcc	%l4,	0x1D8C,	%l6
	fnot1	%f10,	%f6
	fcmpes	%fcc3,	%f13,	%f14
	lduh	[%l7 + 0x56],	%i6
	fcmple32	%f10,	%f0,	%g2
	sth	%l3,	[%l7 + 0x7E]
	fble	%fcc3,	loop_2211
	std	%f2,	[%l7 + 0x30]
	fmovs	%f3,	%f9
	stx	%i5,	[%l7 + 0x08]
loop_2211:
	fmovrde	%i7,	%f6,	%f12
	fbo	%fcc1,	loop_2212
	edge8	%g6,	%o2,	%g4
	bgu	loop_2213
	te	%xcc,	0x2
loop_2212:
	andcc	%g5,	0x0E36,	%g1
	fbule	%fcc0,	loop_2214
loop_2213:
	fmovdge	%icc,	%f9,	%f11
	ld	[%l7 + 0x28],	%f6
	addcc	%l0,	0x0BA3,	%l1
loop_2214:
	stx	%i2,	[%l7 + 0x78]
	ldub	[%l7 + 0x31],	%o6
	ldx	[%l7 + 0x10],	%l5
	sth	%o5,	[%l7 + 0x58]
	fmovdne	%xcc,	%f14,	%f15
	fcmple16	%f10,	%f4,	%o7
	smul	%o1,	%i0,	%i4
	ldd	[%l7 + 0x68],	%f2
	movpos	%xcc,	%l2,	%i1
	fpadd32	%f4,	%f10,	%f10
	ldx	[%l7 + 0x10],	%o0
	fmovdleu	%icc,	%f7,	%f0
	fornot2s	%f3,	%f4,	%f3
	fornot2	%f2,	%f2,	%f12
	andcc	%g7,	%o3,	%g3
	fbue	%fcc2,	loop_2215
	brlez	%o4,	loop_2216
	fbul	%fcc2,	loop_2217
	fmovd	%f4,	%f6
loop_2215:
	fnegs	%f1,	%f12
loop_2216:
	tcc	%icc,	0x0
loop_2217:
	fsrc2	%f2,	%f10
	ldx	[%l7 + 0x58],	%i3
	stx	%l6,	[%l7 + 0x18]
	fmovs	%f3,	%f10
	edge16ln	%l4,	%g2,	%l3
	ldd	[%l7 + 0x60],	%f14
	fzeros	%f11
	std	%f12,	[%l7 + 0x28]
	ldsb	[%l7 + 0x18],	%i6
	orcc	%i7,	0x1D25,	%g6
	subcc	%i5,	0x07E5,	%o2
	ldsw	[%l7 + 0x4C],	%g4
	udivx	%g5,	0x19B3,	%g1
	movrlez	%l1,	0x23B,	%i2
	call	loop_2218
	andncc	%o6,	%l5,	%l0
	fmovdg	%xcc,	%f2,	%f5
	stb	%o5,	[%l7 + 0x2A]
loop_2218:
	ldd	[%l7 + 0x58],	%f6
	fmovscs	%icc,	%f11,	%f12
	ldub	[%l7 + 0x5E],	%o1
	sll	%i0,	%o7,	%l2
	brgz,a	%i4,	loop_2219
	sth	%o0,	[%l7 + 0x64]
	fmovs	%f12,	%f11
	andn	%i1,	%g7,	%g3
loop_2219:
	fpsub16s	%f8,	%f13,	%f5
	lduw	[%l7 + 0x3C],	%o3
	tn	%icc,	0x0
	be,pn	%xcc,	loop_2220
	sllx	%i3,	%l6,	%l4
	fmovsl	%icc,	%f5,	%f5
	subc	%g2,	0x0410,	%o4
loop_2220:
	fmovsle	%xcc,	%f0,	%f5
	edge32n	%i6,	%i7,	%l3
	fbule	%fcc3,	loop_2221
	xnor	%g6,	0x0E76,	%i5
	ldub	[%l7 + 0x2C],	%o2
	subcc	%g5,	%g1,	%l1
loop_2221:
	edge32l	%i2,	%g4,	%l5
	movvc	%xcc,	%o6,	%o5
	fpadd16	%f0,	%f4,	%f6
	ldsh	[%l7 + 0x64],	%l0
	movpos	%xcc,	%i0,	%o1
	fba	%fcc1,	loop_2222
	fnands	%f7,	%f4,	%f3
	fcmpne32	%f0,	%f4,	%o7
	fabss	%f5,	%f11
loop_2222:
	fcmpgt16	%f12,	%f0,	%i4
	fnors	%f11,	%f14,	%f7
	fbl,a	%fcc1,	loop_2223
	edge32l	%o0,	%l2,	%g7
	ldub	[%l7 + 0x3B],	%i1
	tle	%icc,	0x5
loop_2223:
	ldx	[%l7 + 0x28],	%o3
	ldsw	[%l7 + 0x78],	%g3
	movrgz	%i3,	0x0E7,	%l4
	ldsb	[%l7 + 0x1E],	%l6
	fblg,a	%fcc3,	loop_2224
	sth	%g2,	[%l7 + 0x2A]
	fpsub32	%f2,	%f12,	%f14
	std	%f12,	[%l7 + 0x28]
loop_2224:
	and	%o4,	%i7,	%l3
	tgu	%xcc,	0x7
	fmovsl	%icc,	%f8,	%f11
	tleu	%xcc,	0x0
	ldsw	[%l7 + 0x60],	%g6
	ld	[%l7 + 0x10],	%f5
	stw	%i6,	[%l7 + 0x44]
	ldub	[%l7 + 0x4B],	%o2
	std	%f0,	[%l7 + 0x18]
	sll	%i5,	%g5,	%l1
	stx	%g1,	[%l7 + 0x28]
	fcmped	%fcc1,	%f6,	%f4
	ldsh	[%l7 + 0x5A],	%g4
	mulscc	%l5,	%o6,	%i2
	sdivx	%l0,	0x1DF8,	%o5
	ldx	[%l7 + 0x60],	%i0
	fxnors	%f0,	%f11,	%f5
	stw	%o7,	[%l7 + 0x28]
	fnot2	%f0,	%f0
	stb	%o1,	[%l7 + 0x4E]
	ldub	[%l7 + 0x09],	%o0
	stx	%i4,	[%l7 + 0x70]
	tvs	%xcc,	0x5
	fmovdpos	%icc,	%f14,	%f8
	stx	%l2,	[%l7 + 0x70]
	bg	%icc,	loop_2225
	fmovdneg	%icc,	%f15,	%f3
	lduw	[%l7 + 0x50],	%g7
	ldsh	[%l7 + 0x12],	%i1
loop_2225:
	nop
	setx loop_2226, %l0, %l1
	jmpl %l1, %o3
	tneg	%xcc,	0x7
	st	%f3,	[%l7 + 0x40]
	std	%f12,	[%l7 + 0x40]
loop_2226:
	fmovsa	%icc,	%f2,	%f9
	stb	%g3,	[%l7 + 0x38]
	orncc	%l4,	0x1A39,	%l6
	movrlz	%i3,	%o4,	%i7
	fmovs	%f8,	%f14
	tg	%icc,	0x2
	fbo	%fcc1,	loop_2227
	fmovdneg	%xcc,	%f7,	%f12
	andncc	%g2,	%l3,	%g6
	subccc	%o2,	%i5,	%i6
loop_2227:
	fnot1s	%f14,	%f15
	ldsh	[%l7 + 0x6C],	%l1
	fnot1	%f6,	%f14
	srax	%g1,	0x13,	%g5
	fmovrdne	%l5,	%f6,	%f12
	subccc	%o6,	0x01BC,	%i2
	std	%f4,	[%l7 + 0x10]
	ldsw	[%l7 + 0x2C],	%l0
	ldsb	[%l7 + 0x7B],	%o5
	st	%f13,	[%l7 + 0x08]
	fandnot2s	%f8,	%f13,	%f5
	fpackfix	%f14,	%f11
	brgz,a	%g4,	loop_2228
	ldub	[%l7 + 0x56],	%i0
	ld	[%l7 + 0x14],	%f10
	fba,a	%fcc2,	loop_2229
loop_2228:
	udivx	%o1,	0x0E0D,	%o7
	stb	%i4,	[%l7 + 0x35]
	movcs	%xcc,	%l2,	%g7
loop_2229:
	std	%f2,	[%l7 + 0x30]
	fmovsa	%xcc,	%f4,	%f9
	lduh	[%l7 + 0x0E],	%i1
	edge8	%o0,	%o3,	%l4
	fnot1	%f4,	%f0
	bleu,pt	%xcc,	loop_2230
	ldub	[%l7 + 0x0C],	%l6
	bge,a	loop_2231
	fmovspos	%xcc,	%f0,	%f12
loop_2230:
	fmovsgu	%xcc,	%f11,	%f4
	lduw	[%l7 + 0x10],	%g3
loop_2231:
	smul	%i3,	%o4,	%i7
	fsrc2	%f6,	%f0
	sdivx	%l3,	0x07ED,	%g2
	bg,a,pt	%icc,	loop_2232
	fmovsvs	%icc,	%f7,	%f10
	stb	%g6,	[%l7 + 0x7A]
	call	loop_2233
loop_2232:
	bneg,pt	%xcc,	loop_2234
	movrgez	%i5,	%i6,	%o2
	ldx	[%l7 + 0x20],	%l1
loop_2233:
	stw	%g5,	[%l7 + 0x24]
loop_2234:
	movrgz	%l5,	0x2BC,	%o6
	fpmerge	%f1,	%f4,	%f12
	ld	[%l7 + 0x38],	%f8
	fornot1	%f14,	%f4,	%f2
	ldsb	[%l7 + 0x2A],	%i2
	movrlz	%g1,	0x35D,	%o5
	fxor	%f12,	%f14,	%f12
	ldx	[%l7 + 0x68],	%g4
	ldsw	[%l7 + 0x48],	%i0
	ldd	[%l7 + 0x38],	%f10
	movvc	%icc,	%o1,	%o7
	movvs	%xcc,	%l0,	%i4
	fmul8sux16	%f10,	%f2,	%f4
	tsubcc	%l2,	0x14C8,	%g7
	fxors	%f11,	%f7,	%f3
	movcs	%icc,	%i1,	%o0
	fble	%fcc1,	loop_2235
	andcc	%o3,	%l4,	%g3
	nop
	setx loop_2236, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovdle	%xcc,	%f3,	%f3
loop_2235:
	te	%icc,	0x1
	sllx	%l6,	%i3,	%i7
loop_2236:
	st	%f12,	[%l7 + 0x10]
	sdiv	%o4,	0x1034,	%l3
	fbl,a	%fcc0,	loop_2237
	fbul,a	%fcc1,	loop_2238
	ldub	[%l7 + 0x32],	%g2
	brgez	%g6,	loop_2239
loop_2237:
	fmovsgu	%icc,	%f2,	%f12
loop_2238:
	ldsh	[%l7 + 0x46],	%i5
	movl	%xcc,	%i6,	%l1
loop_2239:
	ld	[%l7 + 0x50],	%f10
	fmovdcc	%xcc,	%f11,	%f6
	st	%f3,	[%l7 + 0x6C]
	stw	%g5,	[%l7 + 0x44]
	stx	%l5,	[%l7 + 0x60]
	std	%f10,	[%l7 + 0x40]
	sub	%o6,	%o2,	%i2
	stw	%g1,	[%l7 + 0x30]
	stw	%o5,	[%l7 + 0x60]
	fblg	%fcc2,	loop_2240
	stw	%g4,	[%l7 + 0x60]
	ld	[%l7 + 0x3C],	%f9
	tcs	%icc,	0x4
loop_2240:
	ldd	[%l7 + 0x50],	%f12
	std	%f8,	[%l7 + 0x60]
	call	loop_2241
	sdivcc	%i0,	0x0A21,	%o1
	movcs	%icc,	%l0,	%i4
	tsubcctv	%o7,	%l2,	%g7
loop_2241:
	movcc	%icc,	%o0,	%i1
	lduw	[%l7 + 0x54],	%o3
	movneg	%icc,	%g3,	%l6
	stw	%i3,	[%l7 + 0x34]
	edge32l	%i7,	%l4,	%o4
	ldub	[%l7 + 0x43],	%l3
	movrgez	%g6,	0x17C,	%g2
	fpsub32s	%f9,	%f11,	%f2
	fmovsgu	%icc,	%f6,	%f4
	nop
	setx loop_2242, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	tl	%xcc,	0x0
	xor	%i6,	0x0D3B,	%i5
	smul	%g5,	%l1,	%o6
loop_2242:
	lduw	[%l7 + 0x74],	%l5
	sth	%o2,	[%l7 + 0x34]
	edge32	%i2,	%o5,	%g1
	fpsub32s	%f1,	%f1,	%f1
	lduh	[%l7 + 0x36],	%i0
	ld	[%l7 + 0x18],	%f11
	fbue	%fcc2,	loop_2243
	stw	%g4,	[%l7 + 0x70]
	stb	%o1,	[%l7 + 0x19]
	sdiv	%l0,	0x13E3,	%i4
loop_2243:
	fmovse	%icc,	%f3,	%f3
	tcc	%icc,	0x7
	stx	%l2,	[%l7 + 0x60]
	smul	%g7,	%o0,	%i1
	bpos,a,pt	%xcc,	loop_2244
	subc	%o3,	%o7,	%g3
	movle	%icc,	%i3,	%l6
	xnorcc	%i7,	0x10AA,	%o4
loop_2244:
	fpack32	%f10,	%f12,	%f0
	srax	%l3,	%g6,	%l4
	brlz,a	%g2,	loop_2245
	addcc	%i6,	%g5,	%l1
	fcmpeq16	%f6,	%f2,	%i5
	srax	%l5,	%o6,	%o2
loop_2245:
	stw	%o5,	[%l7 + 0x28]
	fmovrsgez	%g1,	%f15,	%f7
	std	%f0,	[%l7 + 0x30]
	movvs	%xcc,	%i2,	%i0
	fmovscc	%icc,	%f0,	%f9
	alignaddr	%g4,	%l0,	%o1
	fnot1s	%f10,	%f9
	fbl,a	%fcc2,	loop_2246
	fpadd32	%f6,	%f4,	%f2
	ldsh	[%l7 + 0x54],	%l2
	fmovdgu	%xcc,	%f2,	%f6
loop_2246:
	fmovdneg	%icc,	%f5,	%f9
	fpsub16	%f8,	%f0,	%f14
	andn	%g7,	%i4,	%i1
	andcc	%o3,	0x13DB,	%o7
	st	%f14,	[%l7 + 0x5C]
	stb	%g3,	[%l7 + 0x70]
	bn,a	loop_2247
	ld	[%l7 + 0x5C],	%f14
	ld	[%l7 + 0x54],	%f2
	stx	%i3,	[%l7 + 0x30]
loop_2247:
	fxors	%f0,	%f3,	%f8
	fmul8x16	%f1,	%f12,	%f0
	fpadd16	%f0,	%f0,	%f4
	lduw	[%l7 + 0x08],	%l6
	ldub	[%l7 + 0x28],	%i7
	edge32	%o0,	%o4,	%l3
	movrgez	%l4,	%g2,	%i6
	fandnot1	%f0,	%f0,	%f8
	ld	[%l7 + 0x40],	%f0
	xor	%g5,	0x06E9,	%l1
	ldsw	[%l7 + 0x18],	%g6
	ldx	[%l7 + 0x28],	%i5
	stx	%l5,	[%l7 + 0x78]
	udivcc	%o2,	0x0F61,	%o5
	movleu	%xcc,	%o6,	%i2
	fmovsvc	%xcc,	%f13,	%f7
	fpack32	%f2,	%f2,	%f4
	xorcc	%i0,	0x01E9,	%g4
	fmovrsgz	%g1,	%f12,	%f13
	ldsw	[%l7 + 0x30],	%o1
	tle	%icc,	0x2
	stx	%l2,	[%l7 + 0x50]
	ldub	[%l7 + 0x7E],	%g7
	fmul8x16	%f3,	%f12,	%f14
	addc	%i4,	%l0,	%o3
	tvc	%icc,	0x4
	popc	0x158C,	%i1
	bgu,pn	%icc,	loop_2248
	ldsh	[%l7 + 0x76],	%o7
	fpsub32s	%f1,	%f7,	%f14
	movrlez	%i3,	%g3,	%l6
loop_2248:
	fcmpne16	%f10,	%f4,	%o0
	ldsb	[%l7 + 0x12],	%i7
	udivcc	%o4,	0x0BF3,	%l4
	fnot1	%f0,	%f2
	umul	%l3,	0x10AF,	%g2
	bne,a,pn	%xcc,	loop_2249
	brgz,a	%i6,	loop_2250
	lduh	[%l7 + 0x76],	%l1
	movrne	%g6,	0x215,	%g5
loop_2249:
	tne	%icc,	0x6
loop_2250:
	fnor	%f14,	%f4,	%f2
	stb	%l5,	[%l7 + 0x5C]
	brnz	%i5,	loop_2251
	fmul8x16	%f1,	%f10,	%f8
	tpos	%icc,	0x6
	stw	%o2,	[%l7 + 0x20]
loop_2251:
	fbn	%fcc2,	loop_2252
	xnor	%o5,	0x0D4A,	%o6
	fbn,a	%fcc1,	loop_2253
	brlz	%i2,	loop_2254
loop_2252:
	ldsw	[%l7 + 0x74],	%g4
	fnands	%f6,	%f3,	%f0
loop_2253:
	movrgez	%g1,	%o1,	%i0
loop_2254:
	ldx	[%l7 + 0x78],	%l2
	stb	%i4,	[%l7 + 0x4F]
	be,pt	%icc,	loop_2255
	ld	[%l7 + 0x24],	%f4
	stx	%l0,	[%l7 + 0x28]
	movgu	%xcc,	%o3,	%g7
loop_2255:
	ld	[%l7 + 0x3C],	%f6
	ldsh	[%l7 + 0x3C],	%i1
	nop
	setx loop_2256, %l0, %l1
	jmpl %l1, %o7
	fcmpne16	%f8,	%f4,	%i3
	fbg	%fcc0,	loop_2257
	fmul8sux16	%f6,	%f2,	%f12
loop_2256:
	tne	%icc,	0x7
	fmovs	%f10,	%f5
loop_2257:
	stw	%g3,	[%l7 + 0x10]
	add	%o0,	0x0B07,	%i7
	fnot1	%f14,	%f2
	call	loop_2258
	std	%f4,	[%l7 + 0x50]
	addcc	%o4,	0x0896,	%l6
	array8	%l4,	%l3,	%i6
loop_2258:
	fmovdneg	%icc,	%f11,	%f15
	fxnor	%f14,	%f10,	%f2
	ble,a,pn	%xcc,	loop_2259
	fmovsgu	%icc,	%f9,	%f10
	tgu	%xcc,	0x7
	faligndata	%f12,	%f10,	%f2
loop_2259:
	fmovdg	%icc,	%f14,	%f12
	fbg	%fcc2,	loop_2260
	lduw	[%l7 + 0x0C],	%g2
	st	%f2,	[%l7 + 0x0C]
	fmovsl	%xcc,	%f11,	%f4
loop_2260:
	ldd	[%l7 + 0x20],	%f4
	fnot1s	%f6,	%f14
	stb	%g6,	[%l7 + 0x29]
	ldd	[%l7 + 0x28],	%f8
	fcmpgt32	%f14,	%f6,	%g5
	ldd	[%l7 + 0x40],	%f14
	movn	%icc,	%l1,	%i5
	ldub	[%l7 + 0x10],	%l5
	tge	%xcc,	0x6
	sth	%o2,	[%l7 + 0x40]
	fnor	%f6,	%f0,	%f2
	fpack16	%f12,	%f1
	ldsb	[%l7 + 0x7D],	%o5
	udiv	%i2,	0x1D01,	%o6
	move	%icc,	%g4,	%g1
	fsrc1s	%f4,	%f12
	brgez	%i0,	loop_2261
	fble	%fcc3,	loop_2262
	ld	[%l7 + 0x64],	%f10
	edge16n	%l2,	%i4,	%l0
loop_2261:
	movrgz	%o3,	%o1,	%g7
loop_2262:
	stx	%o7,	[%l7 + 0x68]
	sth	%i1,	[%l7 + 0x70]
	movrgez	%g3,	%o0,	%i7
	call	loop_2263
	tcs	%icc,	0x2
	stw	%i3,	[%l7 + 0x4C]
	popc	0x0509,	%o4
loop_2263:
	fbg	%fcc1,	loop_2264
	fmovdge	%xcc,	%f14,	%f6
	ldd	[%l7 + 0x38],	%f0
	fbe	%fcc0,	loop_2265
loop_2264:
	fmovd	%f0,	%f8
	bne,a	loop_2266
	edge32l	%l4,	%l6,	%i6
loop_2265:
	fpadd32s	%f3,	%f8,	%f3
	fcmple16	%f6,	%f14,	%g2
loop_2266:
	fabsd	%f4,	%f4
	edge32	%g6,	%l3,	%l1
	fmovrse	%g5,	%f9,	%f8
	fmovsa	%icc,	%f11,	%f11
	fcmps	%fcc1,	%f13,	%f5
	fsrc2	%f14,	%f6
	andncc	%l5,	%o2,	%i5
	movcs	%icc,	%o5,	%i2
	stx	%g4,	[%l7 + 0x58]
	fmuld8sux16	%f1,	%f7,	%f8
	sth	%o6,	[%l7 + 0x52]
	stx	%g1,	[%l7 + 0x48]
	tvs	%icc,	0x7
	ld	[%l7 + 0x4C],	%f7
	fmovde	%xcc,	%f13,	%f4
	srax	%l2,	%i0,	%l0
	fsrc1	%f10,	%f0
	fbg	%fcc2,	loop_2267
	mulx	%i4,	0x0F94,	%o3
	fnegd	%f2,	%f12
	sth	%o1,	[%l7 + 0x3C]
loop_2267:
	edge16	%o7,	%i1,	%g7
	xor	%o0,	0x0ECE,	%i7
	edge8n	%g3,	%i3,	%o4
	fnot1	%f0,	%f14
	stb	%l4,	[%l7 + 0x4B]
	fbue,a	%fcc0,	loop_2268
	tsubcc	%i6,	0x1568,	%l6
	fcmple32	%f10,	%f4,	%g2
	fmuld8sux16	%f13,	%f2,	%f0
loop_2268:
	st	%f0,	[%l7 + 0x08]
	ldsh	[%l7 + 0x22],	%g6
	fmovde	%xcc,	%f6,	%f0
	st	%f5,	[%l7 + 0x0C]
	ldsh	[%l7 + 0x3E],	%l3
	ldsh	[%l7 + 0x3E],	%g5
	fandnot1	%f2,	%f12,	%f6
	edge8	%l5,	%o2,	%i5
	fmovsleu	%xcc,	%f6,	%f15
	srax	%o5,	%i2,	%g4
	tn	%xcc,	0x2
	bge,pt	%icc,	loop_2269
	movrgez	%l1,	%o6,	%g1
	edge16	%l2,	%l0,	%i4
	fandnot1	%f0,	%f2,	%f10
loop_2269:
	stx	%i0,	[%l7 + 0x78]
	fnegd	%f4,	%f2
	or	%o3,	%o7,	%i1
	andn	%o1,	%g7,	%o0
	fmovrdlz	%g3,	%f0,	%f0
	fnand	%f12,	%f6,	%f6
	fnegd	%f8,	%f14
	fones	%f8
	fcmpgt32	%f2,	%f12,	%i7
	smul	%o4,	%i3,	%l4
	tcs	%icc,	0x6
	fornot2	%f12,	%f6,	%f4
	stx	%l6,	[%l7 + 0x78]
	fmovrse	%i6,	%f14,	%f2
	fnegd	%f2,	%f12
	subcc	%g6,	0x1D0D,	%g2
	sll	%g5,	%l5,	%l3
	fone	%f2
	edge32l	%i5,	%o5,	%o2
	sdiv	%i2,	0x0D6C,	%g4
	fands	%f3,	%f1,	%f14
	sll	%o6,	%l1,	%g1
	fnot2s	%f8,	%f6
	array8	%l0,	%l2,	%i0
	array8	%i4,	%o3,	%o7
	tge	%xcc,	0x3
	edge16ln	%i1,	%o1,	%o0
	fsrc1	%f10,	%f10
	fmovsle	%xcc,	%f6,	%f6
	ldsb	[%l7 + 0x6B],	%g7
	fmovsvc	%icc,	%f15,	%f7
	std	%f8,	[%l7 + 0x68]
	st	%f8,	[%l7 + 0x24]
	fbe,a	%fcc3,	loop_2270
	fexpand	%f0,	%f12
	ldsb	[%l7 + 0x78],	%i7
	fbe	%fcc1,	loop_2271
loop_2270:
	fmovrdgez	%o4,	%f8,	%f8
	smul	%g3,	%l4,	%l6
	movle	%icc,	%i6,	%g6
loop_2271:
	sdivcc	%i3,	0x0F8B,	%g5
	lduw	[%l7 + 0x68],	%g2
	fmovdvc	%xcc,	%f12,	%f11
	fmovrdgz	%l5,	%f12,	%f0
	nop
	setx loop_2272, %l0, %l1
	jmpl %l1, %i5
	fnot1s	%f10,	%f14
	movl	%xcc,	%o5,	%l3
	brlez	%i2,	loop_2273
loop_2272:
	edge8ln	%o2,	%g4,	%o6
	std	%f8,	[%l7 + 0x20]
	edge8ln	%l1,	%l0,	%g1
loop_2273:
	fandnot2	%f10,	%f14,	%f2
	tle	%icc,	0x0
	smul	%l2,	0x0357,	%i0
	faligndata	%f10,	%f2,	%f6
	fmovsneg	%xcc,	%f0,	%f4
	stw	%o3,	[%l7 + 0x58]
	st	%f9,	[%l7 + 0x3C]
	brz	%i4,	loop_2274
	fmovdcs	%xcc,	%f12,	%f10
	umulcc	%o7,	0x00C7,	%o1
	ldd	[%l7 + 0x68],	%f8
loop_2274:
	sllx	%i1,	%o0,	%i7
	fmovs	%f14,	%f7
	fmovsne	%icc,	%f8,	%f3
	fxnors	%f8,	%f12,	%f2
	udiv	%g7,	0x0DF7,	%o4
	fbuge,a	%fcc3,	loop_2275
	movn	%xcc,	%g3,	%l4
	fble	%fcc3,	loop_2276
	fmovdg	%icc,	%f6,	%f10
loop_2275:
	addcc	%l6,	0x1D17,	%i6
	movrgez	%g6,	0x19A,	%g5
loop_2276:
	ldsw	[%l7 + 0x34],	%i3
	fbne	%fcc1,	loop_2277
	fabsd	%f2,	%f6
	fcmpes	%fcc0,	%f12,	%f11
	ldub	[%l7 + 0x5D],	%g2
loop_2277:
	bgu,a,pt	%xcc,	loop_2278
	array32	%l5,	%o5,	%i5
	nop
	setx loop_2279, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	udiv	%l3,	0x094D,	%o2
loop_2278:
	edge16l	%i2,	%g4,	%l1
	fbge,a	%fcc1,	loop_2280
loop_2279:
	movcc	%icc,	%o6,	%g1
	edge32	%l2,	%i0,	%o3
	ldsw	[%l7 + 0x44],	%i4
loop_2280:
	fmovrsgz	%l0,	%f4,	%f11
	movre	%o7,	%o1,	%o0
	fmovsgu	%icc,	%f1,	%f9
	stw	%i7,	[%l7 + 0x24]
	addcc	%i1,	%g7,	%g3
	fxnors	%f5,	%f2,	%f8
	fmovda	%icc,	%f6,	%f6
	fmovdvs	%xcc,	%f1,	%f6
	ldd	[%l7 + 0x60],	%f2
	fmovscc	%icc,	%f14,	%f14
	bcs,pt	%xcc,	loop_2281
	fpack16	%f8,	%f1
	edge16l	%l4,	%o4,	%l6
	umul	%g6,	%g5,	%i6
loop_2281:
	mova	%icc,	%g2,	%i3
	nop
	setx loop_2282, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stx	%o5,	[%l7 + 0x30]
	orcc	%l5,	%l3,	%o2
	st	%f11,	[%l7 + 0x30]
loop_2282:
	subcc	%i5,	0x1BE1,	%g4
	stb	%i2,	[%l7 + 0x0C]
	addcc	%o6,	0x169D,	%g1
	fmovdle	%icc,	%f6,	%f4
	fmovsvs	%icc,	%f15,	%f7
	fabsd	%f0,	%f6
	fmovspos	%xcc,	%f14,	%f4
	fnot2	%f14,	%f12
	fmovdcs	%xcc,	%f9,	%f7
	fble,a	%fcc2,	loop_2283
	edge8l	%l1,	%l2,	%i0
	movne	%icc,	%o3,	%i4
	fsrc1	%f2,	%f12
loop_2283:
	fbge	%fcc1,	loop_2284
	stx	%o7,	[%l7 + 0x20]
	ldsb	[%l7 + 0x64],	%o1
	srlx	%l0,	0x05,	%o0
loop_2284:
	std	%f2,	[%l7 + 0x60]
	movcc	%icc,	%i7,	%g7
	fsrc1s	%f10,	%f0
	lduw	[%l7 + 0x08],	%g3
	edge16ln	%l4,	%o4,	%i1
	ldsb	[%l7 + 0x56],	%g6
	st	%f5,	[%l7 + 0x3C]
	fpackfix	%f8,	%f13
	array16	%l6,	%g5,	%i6
	ldx	[%l7 + 0x58],	%i3
	ld	[%l7 + 0x20],	%f9
	fmovde	%icc,	%f10,	%f0
	fbge	%fcc2,	loop_2285
	movcc	%icc,	%g2,	%l5
	movrlz	%l3,	%o2,	%i5
	ld	[%l7 + 0x28],	%f14
loop_2285:
	ldx	[%l7 + 0x48],	%o5
	fbul	%fcc0,	loop_2286
	fsrc2s	%f10,	%f3
	fmovdge	%icc,	%f10,	%f3
	for	%f4,	%f12,	%f2
loop_2286:
	ldsb	[%l7 + 0x66],	%g4
	fmovs	%f5,	%f11
	sll	%i2,	0x06,	%g1
	edge16ln	%o6,	%l2,	%l1
	ldsh	[%l7 + 0x26],	%o3
	fmovsneg	%xcc,	%f10,	%f11
	fpadd16s	%f9,	%f3,	%f14
	fnor	%f10,	%f12,	%f12
	edge8ln	%i4,	%i0,	%o7
	tne	%xcc,	0x3
	xorcc	%o1,	%o0,	%l0
	fmovdn	%xcc,	%f4,	%f0
	movrgez	%i7,	0x377,	%g7
	ldsw	[%l7 + 0x14],	%g3
	fone	%f14
	brlez	%l4,	loop_2287
	fsrc1s	%f4,	%f4
	sethi	0x0D96,	%o4
	tne	%xcc,	0x4
loop_2287:
	andncc	%i1,	%l6,	%g6
	srax	%i6,	0x09,	%i3
	fmovdge	%xcc,	%f11,	%f8
	movleu	%icc,	%g5,	%l5
	fnegd	%f6,	%f2
	fmovdvs	%xcc,	%f4,	%f0
	fmul8x16au	%f4,	%f12,	%f14
	addc	%l3,	0x0E4F,	%o2
	fmovscs	%icc,	%f9,	%f11
	fbue,a	%fcc2,	loop_2288
	fabss	%f14,	%f3
	smulcc	%g2,	0x0B77,	%i5
	std	%f4,	[%l7 + 0x50]
loop_2288:
	fmovrdne	%g4,	%f4,	%f12
	ldd	[%l7 + 0x70],	%f6
	ta	%icc,	0x5
	fmovsgu	%icc,	%f0,	%f7
	or	%o5,	0x1EAE,	%i2
	ldsh	[%l7 + 0x5C],	%o6
	popc	0x1231,	%g1
	fmovdge	%icc,	%f10,	%f13
	sth	%l1,	[%l7 + 0x78]
	tneg	%icc,	0x6
	ldsh	[%l7 + 0x54],	%l2
	fpsub32s	%f4,	%f6,	%f15
	edge8l	%o3,	%i0,	%o7
	stb	%i4,	[%l7 + 0x33]
	stx	%o0,	[%l7 + 0x68]
	ldx	[%l7 + 0x48],	%o1
	lduh	[%l7 + 0x4C],	%l0
	fmuld8ulx16	%f3,	%f5,	%f12
	lduw	[%l7 + 0x08],	%g7
	tn	%xcc,	0x0
	xorcc	%i7,	0x10F7,	%l4
	edge8	%g3,	%o4,	%i1
	fmul8ulx16	%f12,	%f6,	%f4
	stw	%g6,	[%l7 + 0x24]
	fcmpne16	%f14,	%f8,	%i6
	fmovrdgz	%i3,	%f10,	%f4
	fornot1	%f12,	%f4,	%f10
	umulcc	%g5,	%l5,	%l3
	fmovdgu	%xcc,	%f10,	%f10
	fmovscc	%xcc,	%f10,	%f14
	fbo	%fcc0,	loop_2289
	ldsw	[%l7 + 0x58],	%o2
	lduh	[%l7 + 0x66],	%l6
	fxor	%f14,	%f2,	%f0
loop_2289:
	fpadd16	%f14,	%f12,	%f10
	bg	%xcc,	loop_2290
	subccc	%i5,	0x1EFA,	%g2
	ldsh	[%l7 + 0x6C],	%g4
	taddcctv	%i2,	0x1BA1,	%o5
loop_2290:
	fmovdneg	%xcc,	%f13,	%f14
	lduh	[%l7 + 0x74],	%o6
	edge16ln	%g1,	%l2,	%l1
	smul	%o3,	%i0,	%o7
	fbe	%fcc3,	loop_2291
	fcmpes	%fcc2,	%f2,	%f14
	fmovsneg	%xcc,	%f3,	%f10
	stx	%i4,	[%l7 + 0x40]
loop_2291:
	tn	%xcc,	0x1
	pdist	%f4,	%f6,	%f14
	fmovdgu	%icc,	%f12,	%f15
	fandnot2s	%f8,	%f0,	%f2
	tcs	%xcc,	0x4
	fnot1s	%f12,	%f5
	xnor	%o0,	%o1,	%l0
	st	%f1,	[%l7 + 0x70]
	fbule,a	%fcc0,	loop_2292
	fexpand	%f2,	%f12
	brlez,a	%g7,	loop_2293
	ld	[%l7 + 0x18],	%f12
loop_2292:
	fmuld8ulx16	%f8,	%f7,	%f2
	movvc	%icc,	%i7,	%l4
loop_2293:
	fmul8x16al	%f5,	%f12,	%f2
	brlez,a	%g3,	loop_2294
	stx	%i1,	[%l7 + 0x68]
	ldsh	[%l7 + 0x2E],	%o4
	ldd	[%l7 + 0x10],	%f4
loop_2294:
	subc	%g6,	%i3,	%g5
	stb	%i6,	[%l7 + 0x3C]
	std	%f6,	[%l7 + 0x18]
	fbne	%fcc2,	loop_2295
	fbue	%fcc2,	loop_2296
	lduw	[%l7 + 0x58],	%l5
	ldsb	[%l7 + 0x55],	%o2
loop_2295:
	stw	%l6,	[%l7 + 0x20]
loop_2296:
	fmovdl	%icc,	%f6,	%f8
	fbo,a	%fcc3,	loop_2297
	tn	%xcc,	0x7
	bpos,a	loop_2298
	ld	[%l7 + 0x5C],	%f6
loop_2297:
	bgu,a,pn	%icc,	loop_2299
	fandnot1s	%f6,	%f13,	%f9
loop_2298:
	fnegd	%f4,	%f12
	tl	%icc,	0x6
loop_2299:
	fones	%f15
	fnor	%f12,	%f12,	%f6
	call	loop_2300
	edge32	%i5,	%l3,	%g2
	siam	0x1
	movl	%xcc,	%g4,	%o5
loop_2300:
	bneg,a,pt	%icc,	loop_2301
	fone	%f4
	fblg	%fcc2,	loop_2302
	fsrc1	%f2,	%f0
loop_2301:
	tsubcctv	%i2,	%o6,	%g1
	edge16	%l1,	%l2,	%o3
loop_2302:
	smul	%o7,	%i4,	%i0
	fpack16	%f0,	%f0
	lduw	[%l7 + 0x44],	%o0
	srl	%o1,	%g7,	%i7
	brgz	%l4,	loop_2303
	fblg,a	%fcc1,	loop_2304
	fnands	%f12,	%f2,	%f0
	sethi	0x1A92,	%g3
loop_2303:
	ldsw	[%l7 + 0x58],	%i1
loop_2304:
	edge16n	%l0,	%g6,	%o4
	stb	%g5,	[%l7 + 0x1B]
	udivx	%i3,	0x12A6,	%i6
	stb	%o2,	[%l7 + 0x7D]
	umulcc	%l5,	%l6,	%l3
	stw	%i5,	[%l7 + 0x38]
	movrgz	%g4,	%o5,	%g2
	tg	%icc,	0x1
	fmovsvs	%icc,	%f0,	%f0
	tsubcc	%o6,	%g1,	%l1
	fnand	%f14,	%f10,	%f6
	fbu,a	%fcc0,	loop_2305
	fpsub16s	%f5,	%f0,	%f13
	fbug,a	%fcc0,	loop_2306
	std	%f10,	[%l7 + 0x30]
loop_2305:
	stb	%i2,	[%l7 + 0x3F]
	fpadd16s	%f5,	%f11,	%f2
loop_2306:
	lduh	[%l7 + 0x26],	%l2
	fmovdn	%icc,	%f12,	%f8
	fmovdvc	%xcc,	%f15,	%f10
	fpsub16	%f6,	%f4,	%f10
	ldsh	[%l7 + 0x1C],	%o7
	fandnot2s	%f9,	%f4,	%f13
	edge32l	%i4,	%i0,	%o3
	stb	%o0,	[%l7 + 0x3F]
	bcs,pn	%icc,	loop_2307
	fornot1s	%f15,	%f4,	%f5
	siam	0x1
	andn	%o1,	%g7,	%i7
loop_2307:
	tpos	%xcc,	0x7
	faligndata	%f8,	%f0,	%f14
	fmovsa	%xcc,	%f5,	%f6
	xnor	%l4,	%i1,	%g3
	ldx	[%l7 + 0x70],	%l0
	lduw	[%l7 + 0x0C],	%o4
	fmovdpos	%icc,	%f2,	%f7
	sth	%g6,	[%l7 + 0x1E]
	fmovdcc	%xcc,	%f11,	%f0
	movvc	%xcc,	%g5,	%i6
	mova	%icc,	%i3,	%o2
	xnor	%l6,	0x0EAF,	%l3
	fbu	%fcc2,	loop_2308
	sethi	0x0546,	%l5
	orncc	%g4,	0x0FD8,	%i5
	fmovdvs	%icc,	%f7,	%f4
loop_2308:
	add	%g2,	%o5,	%g1
	bn,a,pt	%xcc,	loop_2309
	ldsh	[%l7 + 0x1C],	%o6
	fpadd32s	%f11,	%f10,	%f14
	stw	%i2,	[%l7 + 0x10]
loop_2309:
	fnor	%f12,	%f6,	%f12
	ld	[%l7 + 0x30],	%f4
	lduh	[%l7 + 0x22],	%l2
	movrne	%o7,	%l1,	%i0
	ldsb	[%l7 + 0x0B],	%i4
	fnands	%f7,	%f0,	%f6
	edge16n	%o0,	%o3,	%o1
	ldsb	[%l7 + 0x75],	%i7
	bvs,pt	%icc,	loop_2310
	movrgez	%l4,	%g7,	%g3
	fba	%fcc3,	loop_2311
	fcmpne16	%f2,	%f6,	%l0
loop_2310:
	smul	%o4,	%g6,	%i1
	bn,a	%xcc,	loop_2312
loop_2311:
	fpsub16s	%f15,	%f10,	%f7
	fbu	%fcc1,	loop_2313
	tvc	%icc,	0x3
loop_2312:
	fmovdne	%xcc,	%f9,	%f0
	fmovspos	%icc,	%f15,	%f4
loop_2313:
	fbug	%fcc1,	loop_2314
	fnor	%f4,	%f14,	%f10
	addcc	%g5,	%i3,	%i6
	fnor	%f14,	%f12,	%f4
loop_2314:
	call	loop_2315
	stw	%l6,	[%l7 + 0x50]
	bleu,a	loop_2316
	sllx	%l3,	0x1F,	%o2
loop_2315:
	fmovdcc	%icc,	%f6,	%f3
	fmovdl	%xcc,	%f5,	%f1
loop_2316:
	stb	%g4,	[%l7 + 0x16]
	nop
	setx loop_2317, %l0, %l1
	jmpl %l1, %l5
	fbue	%fcc2,	loop_2318
	fnot1s	%f14,	%f14
	subc	%g2,	0x06A6,	%o5
loop_2317:
	fornot2s	%f3,	%f12,	%f3
loop_2318:
	fbe,a	%fcc0,	loop_2319
	fbl,a	%fcc3,	loop_2320
	movrlz	%i5,	%o6,	%g1
	subcc	%l2,	%o7,	%i2
loop_2319:
	movcs	%icc,	%l1,	%i4
loop_2320:
	srax	%o0,	%o3,	%i0
	fbul	%fcc2,	loop_2321
	fcmpgt32	%f12,	%f0,	%o1
	fmovrdgz	%i7,	%f4,	%f4
	movg	%xcc,	%g7,	%g3
loop_2321:
	fmovrdgez	%l0,	%f4,	%f2
	fmovdn	%xcc,	%f9,	%f15
	movrgz	%o4,	0x0D3,	%l4
	lduw	[%l7 + 0x44],	%i1
	tvc	%icc,	0x2
	array16	%g5,	%i3,	%i6
	fnot1s	%f3,	%f9
	popc	%g6,	%l6
	and	%o2,	%l3,	%l5
	fblg	%fcc3,	loop_2322
	ldub	[%l7 + 0x1F],	%g2
	fpadd16	%f14,	%f4,	%f10
	fbne	%fcc3,	loop_2323
loop_2322:
	stb	%o5,	[%l7 + 0x31]
	taddcc	%g4,	0x0046,	%i5
	fcmpgt16	%f2,	%f8,	%o6
loop_2323:
	fbue	%fcc2,	loop_2324
	fexpand	%f15,	%f10
	fcmps	%fcc3,	%f11,	%f2
	fmovsneg	%xcc,	%f2,	%f4
loop_2324:
	bl	%icc,	loop_2325
	fmovrslz	%l2,	%f12,	%f11
	ld	[%l7 + 0x24],	%f12
	sra	%g1,	0x1C,	%o7
loop_2325:
	ld	[%l7 + 0x18],	%f0
	lduh	[%l7 + 0x08],	%l1
	fbug,a	%fcc1,	loop_2326
	fbug	%fcc3,	loop_2327
	ldsh	[%l7 + 0x66],	%i4
	fbg,a	%fcc1,	loop_2328
loop_2326:
	alignaddr	%o0,	%o3,	%i0
loop_2327:
	ldub	[%l7 + 0x46],	%o1
	add	%i7,	%i2,	%g3
loop_2328:
	fnot2	%f4,	%f10
	ldx	[%l7 + 0x68],	%g7
	bleu,a,pn	%xcc,	loop_2329
	fmovdg	%xcc,	%f3,	%f14
	movrgez	%l0,	%l4,	%i1
	orncc	%o4,	0x0EFB,	%i3
loop_2329:
	ldsb	[%l7 + 0x5E],	%i6
	ldub	[%l7 + 0x19],	%g5
	stb	%g6,	[%l7 + 0x36]
	edge8n	%o2,	%l3,	%l5
	ldub	[%l7 + 0x31],	%g2
	fnot2s	%f14,	%f7
	fcmpd	%fcc1,	%f10,	%f8
	fcmped	%fcc1,	%f4,	%f10
	fmovrse	%o5,	%f15,	%f5
	ldsh	[%l7 + 0x5A],	%g4
	st	%f2,	[%l7 + 0x68]
	ldd	[%l7 + 0x60],	%f12
	fmovdgu	%xcc,	%f5,	%f8
	fmovsneg	%icc,	%f13,	%f12
	fmovsvs	%xcc,	%f10,	%f14
	fnor	%f4,	%f8,	%f6
	fmuld8sux16	%f4,	%f8,	%f2
	tl	%xcc,	0x7
	ld	[%l7 + 0x08],	%f8
	movgu	%icc,	%l6,	%i5
	fmovsleu	%icc,	%f15,	%f4
	movl	%xcc,	%o6,	%l2
	taddcc	%g1,	%o7,	%l1
	fpack32	%f10,	%f2,	%f14
	tcs	%xcc,	0x0
	fmovscc	%xcc,	%f15,	%f10
	fbul	%fcc1,	loop_2330
	edge16	%i4,	%o0,	%i0
	lduh	[%l7 + 0x16],	%o1
	fsrc2s	%f6,	%f1
loop_2330:
	bge,pt	%xcc,	loop_2331
	ldd	[%l7 + 0x58],	%f6
	movgu	%icc,	%o3,	%i7
	fpsub32s	%f2,	%f10,	%f0
loop_2331:
	edge8	%i2,	%g7,	%g3
	std	%f10,	[%l7 + 0x08]
	ld	[%l7 + 0x30],	%f15
	bne,pn	%icc,	loop_2332
	fblg	%fcc0,	loop_2333
	fmovdcc	%xcc,	%f2,	%f1
	fmul8sux16	%f2,	%f0,	%f4
loop_2332:
	bleu,a	loop_2334
loop_2333:
	movneg	%icc,	%l0,	%i1
	fpack16	%f10,	%f12
	ldd	[%l7 + 0x68],	%f8
loop_2334:
	movl	%xcc,	%o4,	%l4
	and	%i3,	%i6,	%g5
	subccc	%o2,	0x12D0,	%g6
	lduh	[%l7 + 0x64],	%l5
	ldd	[%l7 + 0x60],	%f8
	movrgez	%g2,	%o5,	%g4
	fnegs	%f7,	%f8
	fcmpgt32	%f2,	%f4,	%l3
	for	%f6,	%f10,	%f0
	subc	%l6,	%i5,	%o6
	fornot2s	%f4,	%f6,	%f15
	ldsh	[%l7 + 0x1E],	%l2
	fmovrdlez	%g1,	%f0,	%f0
	ld	[%l7 + 0x3C],	%f4
	ldsb	[%l7 + 0x3F],	%o7
	fmovrslez	%l1,	%f1,	%f7
	nop
	setx loop_2335, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	std	%f6,	[%l7 + 0x78]
	mulscc	%i4,	0x11BD,	%i0
	fmovsgu	%xcc,	%f15,	%f0
loop_2335:
	taddcc	%o1,	%o0,	%o3
	tcc	%icc,	0x5
	ldsw	[%l7 + 0x14],	%i2
	bvc,a	%icc,	loop_2336
	lduh	[%l7 + 0x42],	%g7
	fone	%f4
	srlx	%i7,	0x14,	%l0
loop_2336:
	bpos,pt	%icc,	loop_2337
	brgz	%g3,	loop_2338
	bleu,a	loop_2339
	fnegs	%f3,	%f13
loop_2337:
	fmul8ulx16	%f0,	%f14,	%f12
loop_2338:
	edge8l	%i1,	%o4,	%l4
loop_2339:
	fmovrsgz	%i3,	%f8,	%f11
	lduw	[%l7 + 0x10],	%i6
	edge8l	%g5,	%g6,	%o2
	tcs	%xcc,	0x1
	fmovsneg	%xcc,	%f6,	%f1
	lduw	[%l7 + 0x4C],	%l5
	movrgz	%g2,	%o5,	%g4
	umul	%l6,	0x0D6A,	%l3
	fcmpes	%fcc0,	%f10,	%f8
	mulx	%i5,	0x0D5A,	%o6
	lduw	[%l7 + 0x2C],	%l2
	fpadd16	%f6,	%f4,	%f10
	addccc	%o7,	%l1,	%i4
	sth	%i0,	[%l7 + 0x7A]
	fmovsvc	%icc,	%f9,	%f7
	tne	%xcc,	0x2
	lduw	[%l7 + 0x2C],	%g1
	stx	%o0,	[%l7 + 0x70]
	stb	%o1,	[%l7 + 0x6C]
	mova	%icc,	%i2,	%g7
	fcmpeq16	%f2,	%f8,	%i7
	fbge	%fcc0,	loop_2340
	st	%f7,	[%l7 + 0x30]
	brz,a	%o3,	loop_2341
	fmovrdlez	%l0,	%f10,	%f10
loop_2340:
	stw	%g3,	[%l7 + 0x50]
	stw	%o4,	[%l7 + 0x10]
loop_2341:
	tne	%icc,	0x2
	fmovsneg	%xcc,	%f7,	%f15
	fabss	%f12,	%f10
	fmovd	%f10,	%f2
	bne,a	loop_2342
	fmovsge	%xcc,	%f10,	%f10
	edge32ln	%i1,	%l4,	%i3
	fnot1s	%f6,	%f8
loop_2342:
	edge8	%i6,	%g6,	%g5
	ldsb	[%l7 + 0x7E],	%o2
	xnorcc	%l5,	0x0202,	%o5
	lduw	[%l7 + 0x44],	%g2
	ldd	[%l7 + 0x20],	%f8
	sllx	%g4,	%l3,	%i5
	fpadd16s	%f11,	%f4,	%f13
	fors	%f2,	%f6,	%f14
	move	%icc,	%l6,	%o6
	fmovspos	%xcc,	%f12,	%f6
	bg,pt	%icc,	loop_2343
	fbug	%fcc0,	loop_2344
	udivx	%l2,	0x0EA6,	%l1
	st	%f2,	[%l7 + 0x38]
loop_2343:
	mulscc	%o7,	0x08A1,	%i4
loop_2344:
	fcmpeq32	%f6,	%f12,	%g1
	movre	%i0,	%o0,	%o1
	fnands	%f14,	%f9,	%f0
	sth	%i2,	[%l7 + 0x18]
	sth	%g7,	[%l7 + 0x38]
	stb	%o3,	[%l7 + 0x0B]
	sth	%l0,	[%l7 + 0x10]
	ldub	[%l7 + 0x16],	%i7
	addcc	%g3,	%o4,	%l4
	fmovdg	%xcc,	%f14,	%f13
	fmovrslez	%i1,	%f6,	%f10
	fmovrsgz	%i3,	%f14,	%f8
	bpos,a,pt	%icc,	loop_2345
	fmovda	%icc,	%f8,	%f13
	lduw	[%l7 + 0x24],	%i6
	popc	0x1D41,	%g5
loop_2345:
	movneg	%xcc,	%o2,	%g6
	fcmple32	%f8,	%f0,	%l5
	fandnot2	%f14,	%f6,	%f12
	edge8ln	%o5,	%g4,	%g2
	fpsub16s	%f6,	%f6,	%f1
	ldx	[%l7 + 0x10],	%l3
	lduh	[%l7 + 0x42],	%l6
	st	%f3,	[%l7 + 0x50]
	fnand	%f12,	%f0,	%f6
	te	%icc,	0x5
	movcs	%icc,	%o6,	%l2
	movre	%l1,	%i5,	%i4
	ldsw	[%l7 + 0x64],	%g1
	edge32l	%i0,	%o7,	%o0
	std	%f4,	[%l7 + 0x58]
	stx	%i2,	[%l7 + 0x40]
	tpos	%icc,	0x3
	ldsb	[%l7 + 0x24],	%g7
	or	%o3,	0x1C1C,	%l0
	fnegs	%f6,	%f10
	movvs	%xcc,	%i7,	%o1
	fandnot1s	%f10,	%f11,	%f0
	movcs	%xcc,	%o4,	%l4
	andncc	%i1,	%i3,	%g3
	nop
	setx loop_2346, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	lduh	[%l7 + 0x2C],	%g5
	ldsh	[%l7 + 0x1C],	%i6
	fmovsge	%xcc,	%f13,	%f0
loop_2346:
	sub	%g6,	%l5,	%o2
	fmul8ulx16	%f4,	%f0,	%f14
	fmovsle	%xcc,	%f4,	%f5
	movleu	%xcc,	%o5,	%g2
	ldx	[%l7 + 0x60],	%l3
	fmovd	%f12,	%f14
	array32	%g4,	%l6,	%l2
	tl	%xcc,	0x5
	fmovdleu	%icc,	%f1,	%f3
	ldd	[%l7 + 0x58],	%f4
	fxors	%f14,	%f5,	%f2
	stw	%l1,	[%l7 + 0x60]
	stb	%o6,	[%l7 + 0x41]
	addc	%i5,	%g1,	%i0
	fmovsn	%icc,	%f10,	%f14
	fandnot1	%f2,	%f2,	%f0
	fblg,a	%fcc0,	loop_2347
	stw	%o7,	[%l7 + 0x3C]
	tvs	%icc,	0x6
	fnand	%f14,	%f12,	%f2
loop_2347:
	movg	%xcc,	%i4,	%i2
	ldd	[%l7 + 0x40],	%f0
	ldsh	[%l7 + 0x1C],	%g7
	ldub	[%l7 + 0x4B],	%o0
	fmovs	%f15,	%f4
	ldx	[%l7 + 0x18],	%o3
	sdivcc	%l0,	0x1D01,	%i7
	ld	[%l7 + 0x78],	%f10
	bshuffle	%f4,	%f10,	%f0
	movvc	%xcc,	%o1,	%o4
	ldsw	[%l7 + 0x74],	%l4
	movrlz	%i1,	%g3,	%i3
	sra	%i6,	0x13,	%g6
	movle	%icc,	%g5,	%l5
	te	%icc,	0x3
	movvc	%icc,	%o5,	%o2
	ldub	[%l7 + 0x1E],	%g2
	tge	%xcc,	0x0
	movrne	%g4,	0x011,	%l6
	bvc	loop_2348
	mova	%xcc,	%l2,	%l3
	lduw	[%l7 + 0x38],	%o6
	sth	%i5,	[%l7 + 0x72]
loop_2348:
	edge16	%l1,	%i0,	%o7
	fexpand	%f3,	%f12
	movrlz	%i4,	%g1,	%g7
	edge32	%i2,	%o0,	%o3
	fmovsne	%icc,	%f3,	%f15
	ldub	[%l7 + 0x7D],	%i7
	fsrc2	%f0,	%f8
	fba	%fcc1,	loop_2349
	st	%f1,	[%l7 + 0x4C]
	stb	%l0,	[%l7 + 0x32]
	sth	%o1,	[%l7 + 0x58]
loop_2349:
	fmovrdne	%l4,	%f6,	%f8
	ldsb	[%l7 + 0x67],	%o4
	ldsw	[%l7 + 0x7C],	%g3
	bleu,a	%xcc,	loop_2350
	fabsd	%f4,	%f10
	lduw	[%l7 + 0x5C],	%i3
	for	%f0,	%f8,	%f10
loop_2350:
	srl	%i1,	%i6,	%g6
	srlx	%g5,	0x1F,	%o5
	tpos	%xcc,	0x1
	nop
	setx loop_2351, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fsrc1s	%f0,	%f14
	brnz	%l5,	loop_2352
	st	%f0,	[%l7 + 0x3C]
loop_2351:
	ld	[%l7 + 0x70],	%f4
	fmovsvs	%icc,	%f9,	%f12
loop_2352:
	std	%f4,	[%l7 + 0x10]
	tl	%icc,	0x7
	fmovdle	%xcc,	%f15,	%f0
	bleu,a	%icc,	loop_2353
	tl	%icc,	0x0
	fbg	%fcc3,	loop_2354
	fbue	%fcc0,	loop_2355
loop_2353:
	lduh	[%l7 + 0x1C],	%g2
	nop
	setx loop_2356, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_2354:
	sth	%o2,	[%l7 + 0x36]
loop_2355:
	array32	%l6,	%g4,	%l2
	umul	%l3,	%o6,	%i5
loop_2356:
	ldx	[%l7 + 0x30],	%l1
	movne	%icc,	%i0,	%o7
	movg	%icc,	%g1,	%g7
	ldsb	[%l7 + 0x20],	%i2
	ldsb	[%l7 + 0x59],	%i4
	ldsw	[%l7 + 0x5C],	%o0
	taddcctv	%o3,	0x0D51,	%i7
	fsrc1	%f4,	%f0
	movneg	%icc,	%o1,	%l4
	ldsh	[%l7 + 0x2A],	%o4
	lduw	[%l7 + 0x64],	%g3
	orn	%l0,	%i3,	%i1
	fandnot1s	%f5,	%f9,	%f12
	andcc	%g6,	%i6,	%g5
	fmovrsne	%l5,	%f2,	%f7
	ldsw	[%l7 + 0x2C],	%g2
	or	%o2,	%o5,	%g4
	fbule	%fcc0,	loop_2357
	array8	%l6,	%l3,	%o6
	bvc,a	%xcc,	loop_2358
	fcmpgt16	%f6,	%f12,	%i5
loop_2357:
	pdist	%f4,	%f6,	%f8
	stb	%l2,	[%l7 + 0x42]
loop_2358:
	stw	%l1,	[%l7 + 0x18]
	fbug,a	%fcc2,	loop_2359
	taddcctv	%o7,	%i0,	%g7
	fbue	%fcc0,	loop_2360
	be,a	%icc,	loop_2361
loop_2359:
	std	%f8,	[%l7 + 0x38]
	fnot2s	%f9,	%f1
loop_2360:
	movrne	%i2,	0x365,	%i4
loop_2361:
	stw	%g1,	[%l7 + 0x48]
	fabsd	%f8,	%f8
	st	%f1,	[%l7 + 0x4C]
	te	%xcc,	0x2
	andncc	%o0,	%i7,	%o3
	array32	%o1,	%l4,	%o4
	sra	%l0,	0x1B,	%g3
	sth	%i3,	[%l7 + 0x22]
	fandnot1s	%f13,	%f1,	%f14
	fmovsvc	%icc,	%f15,	%f3
	fmovdge	%xcc,	%f6,	%f15
	tg	%xcc,	0x4
	fnor	%f0,	%f4,	%f2
	fmul8x16al	%f0,	%f15,	%f0
	fmul8x16	%f4,	%f14,	%f6
	sth	%g6,	[%l7 + 0x22]
	movrlez	%i6,	%i1,	%g5
	fandnot1s	%f6,	%f6,	%f6
	fmovrslez	%l5,	%f15,	%f0
	xnor	%g2,	0x0F95,	%o5
	ldsh	[%l7 + 0x5E],	%o2
	ldsw	[%l7 + 0x1C],	%l6
	fmovdcs	%xcc,	%f9,	%f4
	st	%f4,	[%l7 + 0x30]
	alignaddrl	%g4,	%o6,	%l3
	ldub	[%l7 + 0x17],	%l2
	fandnot1s	%f15,	%f0,	%f5
	and	%l1,	%i5,	%i0
	fmovdgu	%icc,	%f11,	%f11
	fpsub32	%f8,	%f0,	%f14
	fzero	%f14
	fmovsne	%icc,	%f15,	%f9
	movre	%g7,	%i2,	%i4
	taddcc	%o7,	0x18B7,	%g1
	ldsh	[%l7 + 0x70],	%o0
	add	%i7,	%o3,	%o1
	fxnors	%f3,	%f11,	%f1
	ldsw	[%l7 + 0x7C],	%o4
	fcmpeq32	%f6,	%f8,	%l0
	umul	%g3,	%l4,	%i3
	ldsh	[%l7 + 0x6C],	%g6
	ld	[%l7 + 0x38],	%f11
	taddcctv	%i1,	%g5,	%l5
	andcc	%i6,	%o5,	%g2
	ldsb	[%l7 + 0x3B],	%l6
	fones	%f5
	fmovrsgez	%g4,	%f10,	%f11
	fornot1	%f14,	%f12,	%f12
	fpsub16	%f0,	%f2,	%f4
	fblg,a	%fcc3,	loop_2362
	ldsb	[%l7 + 0x74],	%o2
	tneg	%icc,	0x7
	fbu	%fcc0,	loop_2363
loop_2362:
	fmovrslz	%l3,	%f14,	%f3
	ldd	[%l7 + 0x78],	%f10
	stb	%l2,	[%l7 + 0x63]
loop_2363:
	movn	%icc,	%l1,	%o6
	fcmped	%fcc3,	%f10,	%f14
	stb	%i0,	[%l7 + 0x2B]
	fcmpne16	%f12,	%f4,	%g7
	ld	[%l7 + 0x38],	%f10
	fmovsneg	%icc,	%f9,	%f4
	movrne	%i5,	0x263,	%i4
	fands	%f12,	%f2,	%f4
	alignaddrl	%i2,	%g1,	%o0
	sdivcc	%i7,	0x1DBD,	%o3
	fsrc1s	%f3,	%f14
	fpack16	%f6,	%f13
	fmovsn	%icc,	%f15,	%f4
	bcs,a,pn	%icc,	loop_2364
	fpsub32s	%f11,	%f0,	%f2
	tvs	%icc,	0x6
	stx	%o1,	[%l7 + 0x20]
loop_2364:
	fmovrslez	%o7,	%f8,	%f14
	fbule	%fcc3,	loop_2365
	smulcc	%o4,	0x1B47,	%l0
	tg	%xcc,	0x0
	sllx	%l4,	%g3,	%g6
loop_2365:
	fba	%fcc2,	loop_2366
	movpos	%icc,	%i1,	%i3
	fmul8x16	%f8,	%f2,	%f8
	andn	%l5,	%g5,	%o5
loop_2366:
	fmovsvs	%icc,	%f5,	%f1
	fpack16	%f6,	%f12
	ldx	[%l7 + 0x48],	%g2
	fors	%f13,	%f3,	%f4
	ldd	[%l7 + 0x38],	%f12
	sth	%l6,	[%l7 + 0x16]
	movvc	%icc,	%g4,	%o2
	lduh	[%l7 + 0x7E],	%l3
	sth	%l2,	[%l7 + 0x2C]
	movcc	%icc,	%l1,	%i6
	srlx	%o6,	0x03,	%i0
	ldsh	[%l7 + 0x6C],	%i5
	alignaddr	%g7,	%i2,	%i4
	fcmple32	%f8,	%f8,	%g1
	st	%f8,	[%l7 + 0x2C]
	fblg	%fcc3,	loop_2367
	fmovsne	%xcc,	%f0,	%f6
	fornot1	%f6,	%f6,	%f10
	fnot2s	%f6,	%f4
loop_2367:
	sth	%o0,	[%l7 + 0x6A]
	fmovrdgz	%o3,	%f12,	%f14
	and	%o1,	%o7,	%o4
	umulcc	%l0,	0x1C4A,	%l4
	fmovsle	%icc,	%f14,	%f6
	stw	%g3,	[%l7 + 0x1C]
	ldub	[%l7 + 0x3F],	%i7
	fmul8x16	%f12,	%f8,	%f6
	tvs	%xcc,	0x7
	call	loop_2368
	lduw	[%l7 + 0x4C],	%i1
	fsrc1	%f8,	%f2
	sth	%i3,	[%l7 + 0x1A]
loop_2368:
	fmovrsgez	%l5,	%f11,	%f5
	fmovsn	%xcc,	%f3,	%f7
	xorcc	%g6,	0x1A7D,	%o5
	mulscc	%g2,	%l6,	%g4
	xorcc	%g5,	0x0C5E,	%o2
	stw	%l3,	[%l7 + 0x34]
	bvc,a,pt	%xcc,	loop_2369
	ldsb	[%l7 + 0x7E],	%l1
	fsrc2	%f10,	%f0
	ta	%xcc,	0x0
loop_2369:
	addc	%i6,	0x09A2,	%o6
	lduh	[%l7 + 0x6C],	%i0
	stb	%l2,	[%l7 + 0x72]
	fnor	%f8,	%f4,	%f0
	fornot2s	%f0,	%f14,	%f2
	movrlez	%i5,	0x04C,	%g7
	stb	%i2,	[%l7 + 0x0C]
	sth	%i4,	[%l7 + 0x22]
	std	%f6,	[%l7 + 0x50]
	fandnot1	%f10,	%f2,	%f12
	sth	%o0,	[%l7 + 0x1E]
	fmovscs	%xcc,	%f11,	%f3
	fones	%f11
	ld	[%l7 + 0x34],	%f5
	fone	%f12
	fnegs	%f13,	%f11
	fcmple32	%f8,	%f0,	%g1
	faligndata	%f4,	%f0,	%f4
	fmovdneg	%icc,	%f6,	%f13
	bg,a	%xcc,	loop_2370
	sth	%o3,	[%l7 + 0x30]
	fmovsgu	%xcc,	%f6,	%f11
	fsrc2s	%f12,	%f0
loop_2370:
	nop
	setx loop_2371, %l0, %l1
	jmpl %l1, %o7
	stb	%o1,	[%l7 + 0x23]
	fnegd	%f4,	%f2
	fmovsvs	%xcc,	%f4,	%f2
loop_2371:
	sethi	0x09A9,	%l0
	andcc	%o4,	0x0D95,	%g3
	movrlez	%l4,	0x00D,	%i7
	tleu	%icc,	0x7
	brgez	%i1,	loop_2372
	stb	%l5,	[%l7 + 0x15]
	ldsb	[%l7 + 0x17],	%g6
	add	%i3,	%o5,	%l6
loop_2372:
	fmovdn	%icc,	%f11,	%f4
	fxors	%f11,	%f1,	%f11
	fnot1s	%f2,	%f10
	array32	%g2,	%g5,	%o2
	addccc	%l3,	0x15BE,	%g4
	ldub	[%l7 + 0x40],	%l1
	ldub	[%l7 + 0x6A],	%o6
	stx	%i0,	[%l7 + 0x60]
	fmovdcs	%xcc,	%f9,	%f6
	fnegs	%f4,	%f9
	faligndata	%f2,	%f2,	%f12
	sdivcc	%i6,	0x13BD,	%l2
	fzeros	%f15
	fnot1s	%f7,	%f3
	movrlez	%g7,	%i2,	%i5
	smulcc	%o0,	0x0ADF,	%i4
	fbul	%fcc3,	loop_2373
	bleu,a	loop_2374
	ld	[%l7 + 0x60],	%f9
	stx	%g1,	[%l7 + 0x10]
loop_2373:
	stw	%o3,	[%l7 + 0x30]
loop_2374:
	fzeros	%f4
	smul	%o7,	0x01DA,	%o1
	fbule,a	%fcc2,	loop_2375
	stw	%o4,	[%l7 + 0x50]
	fmovdn	%xcc,	%f6,	%f3
	xnor	%g3,	%l0,	%i7
loop_2375:
	fmul8ulx16	%f12,	%f4,	%f8
	brlz,a	%i1,	loop_2376
	fmovsge	%icc,	%f5,	%f7
	call	loop_2377
	fmovspos	%icc,	%f11,	%f11
loop_2376:
	bne	loop_2378
	fones	%f1
loop_2377:
	fnor	%f10,	%f12,	%f0
	fmovrsgz	%l5,	%f10,	%f10
loop_2378:
	smulcc	%g6,	%l4,	%i3
	xor	%o5,	%g2,	%g5
	fmovdne	%xcc,	%f6,	%f4
	tleu	%icc,	0x5
	ldsb	[%l7 + 0x36],	%l6
	stw	%o2,	[%l7 + 0x78]
	tcc	%icc,	0x4
	smulcc	%l3,	0x1F95,	%l1
	fors	%f3,	%f0,	%f12
	fone	%f0
	lduw	[%l7 + 0x2C],	%o6
	ldub	[%l7 + 0x28],	%i0
	tcc	%icc,	0x1
	edge8n	%g4,	%i6,	%g7
	edge16n	%l2,	%i5,	%i2
	be,a	%xcc,	loop_2379
	nop
	setx loop_2380, %l0, %l1
	jmpl %l1, %i4
	bvc,a,pt	%icc,	loop_2381
	ldsb	[%l7 + 0x33],	%o0
loop_2379:
	fsrc1	%f8,	%f12
loop_2380:
	tsubcctv	%g1,	0x194B,	%o7
loop_2381:
	lduh	[%l7 + 0x20],	%o3
	fbo	%fcc0,	loop_2382
	bvs,a	loop_2383
	nop
	setx loop_2384, %l0, %l1
	jmpl %l1, %o4
	brgz	%g3,	loop_2385
loop_2382:
	edge8n	%l0,	%o1,	%i1
loop_2383:
	edge8	%i7,	%g6,	%l4
loop_2384:
	edge32n	%i3,	%o5,	%g2
loop_2385:
	stb	%l5,	[%l7 + 0x0E]
	ldsb	[%l7 + 0x79],	%g5
	fmovrsgez	%o2,	%f1,	%f9
	movneg	%icc,	%l6,	%l3
	edge8l	%l1,	%o6,	%i0
	fcmpne32	%f4,	%f8,	%g4
	ldx	[%l7 + 0x50],	%g7
	fbe	%fcc1,	loop_2386
	fnor	%f14,	%f4,	%f12
	ldsw	[%l7 + 0x4C],	%i6
	fpackfix	%f6,	%f6
loop_2386:
	stx	%l2,	[%l7 + 0x78]
	mulscc	%i5,	%i2,	%i4
	movrgez	%o0,	0x193,	%g1
	fbug,a	%fcc2,	loop_2387
	for	%f6,	%f14,	%f10
	mova	%xcc,	%o3,	%o7
	tge	%icc,	0x4
loop_2387:
	ld	[%l7 + 0x60],	%f7
	tneg	%icc,	0x7
	fexpand	%f4,	%f6
	lduh	[%l7 + 0x1A],	%g3
	ldx	[%l7 + 0x20],	%o4
	ldx	[%l7 + 0x78],	%l0
	std	%f10,	[%l7 + 0x78]
	ldsw	[%l7 + 0x78],	%o1
	fnor	%f10,	%f0,	%f14
	srlx	%i1,	0x0F,	%g6
	fnor	%f12,	%f0,	%f10
	fmovrslz	%i7,	%f5,	%f5
	alignaddr	%i3,	%o5,	%g2
	ldsh	[%l7 + 0x54],	%l5
	fmovrdlz	%l4,	%f0,	%f14
	addcc	%g5,	%o2,	%l3
	edge16n	%l6,	%o6,	%l1
	fsrc1s	%f3,	%f13
	fabss	%f5,	%f12
	movneg	%icc,	%g4,	%i0
	call	loop_2388
	addccc	%g7,	%l2,	%i5
	addccc	%i6,	0x04CC,	%i4
	sth	%i2,	[%l7 + 0x62]
loop_2388:
	tpos	%xcc,	0x3
	ld	[%l7 + 0x50],	%f8
	ldsb	[%l7 + 0x38],	%o0
	fnegd	%f6,	%f12
	std	%f10,	[%l7 + 0x78]
	edge8n	%g1,	%o3,	%o7
	addc	%o4,	0x17F6,	%l0
	fmovrdlez	%o1,	%f8,	%f8
	fpadd32	%f14,	%f10,	%f12
	movrlz	%g3,	0x1A1,	%i1
	fsrc1	%f0,	%f12
	ldsw	[%l7 + 0x3C],	%g6
	bg,pn	%xcc,	loop_2389
	fmovrse	%i7,	%f14,	%f9
	fmuld8ulx16	%f9,	%f5,	%f6
	stx	%o5,	[%l7 + 0x20]
loop_2389:
	stw	%i3,	[%l7 + 0x6C]
	st	%f4,	[%l7 + 0x34]
	fandnot2s	%f2,	%f7,	%f14
	stw	%l5,	[%l7 + 0x44]
	ldsb	[%l7 + 0x5C],	%l4
	orn	%g2,	0x092C,	%g5
	stx	%o2,	[%l7 + 0x08]
	subcc	%l6,	%l3,	%o6
	edge16n	%g4,	%i0,	%l1
	for	%f2,	%f10,	%f6
	fmovs	%f8,	%f7
	fmovsgu	%icc,	%f3,	%f3
	te	%icc,	0x0
	edge32	%l2,	%i5,	%i6
	fmovrdgez	%g7,	%f10,	%f8
	xorcc	%i2,	0x0CDA,	%i4
	fmovsl	%xcc,	%f2,	%f2
	fabss	%f9,	%f7
	movn	%icc,	%o0,	%g1
	addc	%o7,	%o4,	%o3
	sdivx	%o1,	0x16B0,	%l0
	std	%f6,	[%l7 + 0x18]
	fcmpd	%fcc2,	%f10,	%f2
	ldsh	[%l7 + 0x1A],	%g3
	ld	[%l7 + 0x18],	%f11
	fnot1	%f12,	%f8
	edge16l	%i1,	%i7,	%g6
	bg	%xcc,	loop_2390
	tleu	%icc,	0x3
	fxnors	%f3,	%f1,	%f2
	stb	%o5,	[%l7 + 0x23]
loop_2390:
	taddcc	%i3,	0x02DA,	%l5
	ldub	[%l7 + 0x53],	%g2
	ta	%icc,	0x5
	brz,a	%g5,	loop_2391
	fnot2	%f12,	%f2
	brlz	%l4,	loop_2392
	fmovse	%icc,	%f14,	%f7
loop_2391:
	stb	%o2,	[%l7 + 0x35]
	fcmple32	%f12,	%f14,	%l3
loop_2392:
	lduh	[%l7 + 0x32],	%l6
	array8	%o6,	%i0,	%l1
	ldub	[%l7 + 0x75],	%g4
	bcs,a	loop_2393
	fcmple32	%f10,	%f8,	%l2
	ldsb	[%l7 + 0x54],	%i6
	stx	%i5,	[%l7 + 0x40]
loop_2393:
	fbule,a	%fcc1,	loop_2394
	bleu	%xcc,	loop_2395
	bn,pt	%icc,	loop_2396
	sdiv	%i2,	0x0FEC,	%i4
loop_2394:
	ldub	[%l7 + 0x51],	%g7
loop_2395:
	tpos	%xcc,	0x0
loop_2396:
	bn	loop_2397
	ldx	[%l7 + 0x30],	%o0
	fabsd	%f12,	%f12
	subc	%g1,	%o4,	%o3
loop_2397:
	movn	%icc,	%o7,	%l0
	tpos	%icc,	0x4
	movne	%xcc,	%o1,	%g3
	fmovdcs	%icc,	%f15,	%f3
	nop
	setx loop_2398, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovsneg	%xcc,	%f15,	%f0
	fpmerge	%f2,	%f6,	%f4
	movgu	%icc,	%i1,	%i7
loop_2398:
	fcmpd	%fcc3,	%f8,	%f2
	movpos	%icc,	%o5,	%i3
	ldub	[%l7 + 0x44],	%l5
	xorcc	%g2,	%g6,	%g5
	movge	%xcc,	%l4,	%l3
	stw	%l6,	[%l7 + 0x30]
	array32	%o2,	%i0,	%o6
	ldd	[%l7 + 0x18],	%f12
	ldub	[%l7 + 0x13],	%g4
	fcmps	%fcc2,	%f14,	%f12
	stx	%l2,	[%l7 + 0x30]
	stw	%l1,	[%l7 + 0x10]
	movcc	%xcc,	%i5,	%i2
	fsrc2	%f2,	%f2
	nop
	setx loop_2399, %l0, %l1
	jmpl %l1, %i4
	xor	%g7,	%i6,	%o0
	ldsw	[%l7 + 0x4C],	%o4
	ldub	[%l7 + 0x23],	%g1
loop_2399:
	stb	%o3,	[%l7 + 0x7E]
	fabsd	%f4,	%f14
	movpos	%xcc,	%l0,	%o1
	array8	%o7,	%i1,	%g3
	ldub	[%l7 + 0x2B],	%i7
	fble,a	%fcc2,	loop_2400
	stx	%i3,	[%l7 + 0x08]
	fba,a	%fcc1,	loop_2401
	fnot2	%f2,	%f14
loop_2400:
	fcmped	%fcc3,	%f2,	%f12
	fnand	%f6,	%f8,	%f0
loop_2401:
	ldsb	[%l7 + 0x43],	%l5
	tleu	%xcc,	0x4
	edge32	%g2,	%g6,	%g5
	sllx	%o5,	%l4,	%l6
	movne	%xcc,	%o2,	%l3
	sth	%i0,	[%l7 + 0x14]
	edge16n	%o6,	%g4,	%l1
	fcmpgt32	%f6,	%f8,	%i5
	alignaddrl	%i2,	%i4,	%l2
	ldd	[%l7 + 0x30],	%f14
	bgu,a	%xcc,	loop_2402
	fbe	%fcc1,	loop_2403
	fmovdgu	%icc,	%f15,	%f0
	fmovrsgz	%g7,	%f4,	%f1
loop_2402:
	xorcc	%i6,	%o0,	%o4
loop_2403:
	fpack16	%f14,	%f2
	addc	%o3,	%g1,	%l0
	brz	%o7,	loop_2404
	ldd	[%l7 + 0x18],	%f0
	fzero	%f6
	stx	%o1,	[%l7 + 0x78]
loop_2404:
	brz,a	%g3,	loop_2405
	stx	%i1,	[%l7 + 0x50]
	st	%f1,	[%l7 + 0x20]
	be,a	loop_2406
loop_2405:
	ldsw	[%l7 + 0x70],	%i7
	fmovsvs	%xcc,	%f3,	%f5
	st	%f15,	[%l7 + 0x20]
loop_2406:
	bvc,a	%icc,	loop_2407
	nop
	setx loop_2408, %l0, %l1
	jmpl %l1, %i3
	fnot1s	%f3,	%f13
	orncc	%g2,	%l5,	%g6
loop_2407:
	bvc,a,pn	%icc,	loop_2409
loop_2408:
	fmovspos	%icc,	%f2,	%f1
	fmovrde	%o5,	%f10,	%f12
	movre	%l4,	%l6,	%o2
loop_2409:
	fmovrde	%g5,	%f12,	%f0
	ldsw	[%l7 + 0x48],	%i0
	st	%f15,	[%l7 + 0x4C]
	fmovde	%icc,	%f10,	%f15
	fbug	%fcc3,	loop_2410
	ldsb	[%l7 + 0x3C],	%o6
	nop
	setx loop_2411, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stw	%g4,	[%l7 + 0x10]
loop_2410:
	faligndata	%f0,	%f0,	%f4
	tcs	%xcc,	0x4
loop_2411:
	fnot1s	%f2,	%f10
	pdist	%f10,	%f6,	%f14
	be,pt	%icc,	loop_2412
	brgz	%l3,	loop_2413
	ldsw	[%l7 + 0x20],	%i5
	sth	%l1,	[%l7 + 0x0E]
loop_2412:
	fmovrslez	%i2,	%f5,	%f9
loop_2413:
	fnot2	%f0,	%f12
	edge32n	%l2,	%g7,	%i6
	fmovse	%xcc,	%f8,	%f13
	movle	%icc,	%i4,	%o4
	fnors	%f6,	%f10,	%f2
	fmuld8sux16	%f1,	%f0,	%f12
	edge16ln	%o0,	%g1,	%l0
	stb	%o3,	[%l7 + 0x37]
	fornot2s	%f6,	%f10,	%f12
	tleu	%xcc,	0x4
	ldsh	[%l7 + 0x34],	%o7
	fmovrdlz	%o1,	%f8,	%f8
	edge8	%g3,	%i7,	%i3
	fmovdge	%xcc,	%f11,	%f4
	faligndata	%f0,	%f2,	%f0
	fmovsneg	%icc,	%f8,	%f14
	fbg	%fcc0,	loop_2414
	fnot2	%f4,	%f12
	edge32l	%g2,	%l5,	%g6
	xor	%i1,	0x1341,	%o5
loop_2414:
	tvs	%icc,	0x7
	fbn	%fcc3,	loop_2415
	ldub	[%l7 + 0x79],	%l6
	stx	%l4,	[%l7 + 0x70]
	ldx	[%l7 + 0x70],	%g5
loop_2415:
	stb	%o2,	[%l7 + 0x51]
	srlx	%i0,	%g4,	%o6
	fbo,a	%fcc0,	loop_2416
	lduw	[%l7 + 0x08],	%l3
	fornot2	%f6,	%f0,	%f2
	lduh	[%l7 + 0x14],	%l1
loop_2416:
	ldx	[%l7 + 0x40],	%i5
	srl	%i2,	0x09,	%l2
	move	%xcc,	%g7,	%i6
	tge	%icc,	0x7
	tcs	%icc,	0x5
	orcc	%o4,	0x02B3,	%i4
	tcs	%xcc,	0x0
	ldub	[%l7 + 0x7E],	%g1
	st	%f8,	[%l7 + 0x38]
	fcmpeq32	%f4,	%f8,	%l0
	fmovrse	%o0,	%f12,	%f12
	srlx	%o3,	0x0A,	%o1
	bcs,pn	%icc,	loop_2417
	pdist	%f12,	%f14,	%f4
	fmovrdgez	%o7,	%f14,	%f0
	nop
	setx loop_2418, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_2417:
	movle	%xcc,	%g3,	%i7
	stb	%i3,	[%l7 + 0x67]
	ld	[%l7 + 0x5C],	%f4
loop_2418:
	bl,pt	%icc,	loop_2419
	sth	%l5,	[%l7 + 0x66]
	subcc	%g6,	0x0102,	%i1
	lduw	[%l7 + 0x3C],	%o5
loop_2419:
	ldx	[%l7 + 0x20],	%l6
	lduh	[%l7 + 0x26],	%g2
	sub	%g5,	%o2,	%i0
	stw	%g4,	[%l7 + 0x5C]
	tsubcctv	%o6,	0x0401,	%l3
	fmuld8ulx16	%f14,	%f7,	%f14
	fbl,a	%fcc1,	loop_2420
	fmul8x16	%f3,	%f4,	%f8
	fcmpne16	%f6,	%f12,	%l1
	fands	%f6,	%f7,	%f15
loop_2420:
	ld	[%l7 + 0x70],	%f9
	sra	%i5,	%l4,	%i2
	movn	%icc,	%g7,	%i6
	fornot1s	%f10,	%f13,	%f15
	std	%f0,	[%l7 + 0x50]
	fandnot2	%f2,	%f6,	%f0
	lduh	[%l7 + 0x2A],	%l2
	ldsh	[%l7 + 0x48],	%o4
	ta	%xcc,	0x7
	fmovsleu	%icc,	%f0,	%f6
	fmovrse	%i4,	%f6,	%f15
	ldx	[%l7 + 0x10],	%g1
	sdivx	%o0,	0x1B61,	%o3
	fbug,a	%fcc1,	loop_2421
	std	%f0,	[%l7 + 0x28]
	fba	%fcc3,	loop_2422
	sdiv	%l0,	0x14BD,	%o1
loop_2421:
	ldsw	[%l7 + 0x3C],	%g3
	fmovrdgez	%i7,	%f14,	%f14
loop_2422:
	fpadd16	%f12,	%f2,	%f6
	ld	[%l7 + 0x0C],	%f0
	bg	%xcc,	loop_2423
	fmovdvs	%icc,	%f4,	%f8
	movgu	%icc,	%i3,	%l5
	fba,a	%fcc0,	loop_2424
loop_2423:
	xnorcc	%g6,	%o7,	%o5
	ta	%icc,	0x1
	brz,a	%i1,	loop_2425
loop_2424:
	ldd	[%l7 + 0x60],	%f14
	ldx	[%l7 + 0x40],	%l6
	addcc	%g2,	0x0C97,	%g5
loop_2425:
	fmuld8sux16	%f13,	%f5,	%f0
	brlez	%o2,	loop_2426
	st	%f8,	[%l7 + 0x10]
	sethi	0x0471,	%i0
	ldub	[%l7 + 0x1E],	%g4
loop_2426:
	fnegd	%f8,	%f10
	tpos	%icc,	0x4
	ld	[%l7 + 0x4C],	%f15
	sethi	0x1BAF,	%l3
	ldd	[%l7 + 0x18],	%f2
	taddcctv	%l1,	%o6,	%i5
	fzero	%f10
	ld	[%l7 + 0x08],	%f3
	subcc	%i2,	0x1960,	%l4
	stb	%i6,	[%l7 + 0x70]
	ldsw	[%l7 + 0x28],	%l2
	edge8n	%g7,	%o4,	%g1
	ldsh	[%l7 + 0x66],	%o0
	orncc	%i4,	%l0,	%o3
	fnor	%f0,	%f0,	%f14
	stb	%o1,	[%l7 + 0x13]
	move	%icc,	%i7,	%i3
	fcmple32	%f4,	%f6,	%l5
	lduh	[%l7 + 0x1E],	%g6
	tsubcctv	%o7,	0x073C,	%g3
	std	%f8,	[%l7 + 0x10]
	bneg	loop_2427
	bne	%icc,	loop_2428
	ldsh	[%l7 + 0x4A],	%i1
	fpadd16s	%f6,	%f7,	%f11
loop_2427:
	ldsh	[%l7 + 0x70],	%o5
loop_2428:
	taddcctv	%l6,	%g2,	%o2
	fmovdn	%icc,	%f1,	%f2
	fmovrdlez	%i0,	%f8,	%f6
	movle	%icc,	%g5,	%l3
	ldub	[%l7 + 0x62],	%g4
	bgu	loop_2429
	alignaddr	%l1,	%i5,	%i2
	srlx	%l4,	0x12,	%o6
	fzero	%f6
loop_2429:
	fmovsle	%icc,	%f2,	%f10
	stb	%l2,	[%l7 + 0x3C]
	movrlz	%g7,	0x209,	%o4
	fmovrdne	%g1,	%f0,	%f6
	ldd	[%l7 + 0x48],	%f4
	std	%f12,	[%l7 + 0x78]
	udivx	%o0,	0x0207,	%i4
	ldsh	[%l7 + 0x48],	%i6
	sth	%o3,	[%l7 + 0x5C]
	sth	%l0,	[%l7 + 0x2E]
	nop
	setx loop_2430, %l0, %l1
	jmpl %l1, %i7
	ldd	[%l7 + 0x58],	%f12
	fmovsg	%icc,	%f10,	%f14
	std	%f4,	[%l7 + 0x60]
loop_2430:
	ldub	[%l7 + 0x6F],	%o1
	stx	%i3,	[%l7 + 0x48]
	movrgz	%g6,	%l5,	%o7
	std	%f12,	[%l7 + 0x20]
	fornot1	%f4,	%f10,	%f4
	fmovse	%icc,	%f6,	%f13
	fmovd	%f14,	%f4
	fba	%fcc2,	loop_2431
	st	%f1,	[%l7 + 0x70]
	stw	%g3,	[%l7 + 0x20]
	brlz	%o5,	loop_2432
loop_2431:
	bneg,pt	%xcc,	loop_2433
	ldsb	[%l7 + 0x77],	%i1
	fandnot1	%f4,	%f6,	%f8
loop_2432:
	fmovsge	%xcc,	%f0,	%f9
loop_2433:
	fzero	%f10
	ldsb	[%l7 + 0x2A],	%g2
	stw	%l6,	[%l7 + 0x7C]
	umulcc	%o2,	0x1302,	%i0
	andncc	%l3,	%g5,	%g4
	fbg,a	%fcc2,	loop_2434
	fand	%f10,	%f10,	%f6
	st	%f14,	[%l7 + 0x78]
	fxor	%f2,	%f4,	%f0
loop_2434:
	brnz,a	%i5,	loop_2435
	fmovsneg	%icc,	%f1,	%f6
	fones	%f11
	edge16	%l1,	%l4,	%o6
loop_2435:
	edge8l	%l2,	%g7,	%o4
	brz,a	%g1,	loop_2436
	fcmped	%fcc3,	%f8,	%f2
	tgu	%icc,	0x4
	fmovsa	%icc,	%f2,	%f9
loop_2436:
	fmovdn	%xcc,	%f0,	%f11
	ldsw	[%l7 + 0x64],	%i2
	brnz,a	%i4,	loop_2437
	fxors	%f9,	%f8,	%f8
	fmovspos	%xcc,	%f2,	%f1
	fbl	%fcc3,	loop_2438
loop_2437:
	fmovdcc	%xcc,	%f15,	%f0
	nop
	setx loop_2439, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	mulx	%o0,	%i6,	%o3
loop_2438:
	movg	%xcc,	%l0,	%o1
	edge16n	%i3,	%g6,	%l5
loop_2439:
	edge32l	%i7,	%g3,	%o5
	bg,a	%icc,	loop_2440
	xorcc	%i1,	%o7,	%l6
	fmovrsgez	%o2,	%f6,	%f11
	sethi	0x05A4,	%i0
loop_2440:
	ldd	[%l7 + 0x48],	%f14
	fmovrde	%l3,	%f0,	%f14
	ldx	[%l7 + 0x58],	%g2
	ldx	[%l7 + 0x08],	%g4
	fnot1	%f8,	%f14
	fxors	%f8,	%f2,	%f2
	stw	%g5,	[%l7 + 0x08]
	move	%xcc,	%i5,	%l1
	fzero	%f2
	andcc	%o6,	%l4,	%l2
	fcmple32	%f10,	%f8,	%o4
	tn	%icc,	0x0
	ldsw	[%l7 + 0x54],	%g1
	fmovsgu	%icc,	%f4,	%f15
	lduw	[%l7 + 0x18],	%g7
	fnegs	%f1,	%f11
	fmovsneg	%xcc,	%f4,	%f7
	sth	%i4,	[%l7 + 0x38]
	brlz,a	%o0,	loop_2441
	fmovrdlez	%i6,	%f4,	%f12
	std	%f0,	[%l7 + 0x18]
	sdivcc	%i2,	0x181E,	%l0
loop_2441:
	fbl	%fcc1,	loop_2442
	addcc	%o1,	0x1500,	%i3
	stw	%g6,	[%l7 + 0x24]
	ldsb	[%l7 + 0x54],	%o3
loop_2442:
	lduh	[%l7 + 0x0E],	%l5
	bg	%xcc,	loop_2443
	std	%f10,	[%l7 + 0x70]
	ldub	[%l7 + 0x0F],	%i7
	ta	%icc,	0x0
loop_2443:
	ldd	[%l7 + 0x38],	%f8
	or	%o5,	%g3,	%i1
	bl,pn	%icc,	loop_2444
	xnor	%l6,	0x01A3,	%o7
	ldsb	[%l7 + 0x6B],	%i0
	ldub	[%l7 + 0x76],	%l3
loop_2444:
	fmovdn	%icc,	%f3,	%f13
	fbe,a	%fcc3,	loop_2445
	fmul8x16au	%f2,	%f12,	%f12
	fmovscc	%xcc,	%f1,	%f2
	fba,a	%fcc3,	loop_2446
loop_2445:
	edge32l	%g2,	%g4,	%o2
	smul	%i5,	0x0203,	%l1
	tpos	%icc,	0x3
loop_2446:
	std	%f2,	[%l7 + 0x58]
	edge32	%o6,	%l4,	%l2
	subc	%g5,	%g1,	%o4
	nop
	setx loop_2447, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovsneg	%xcc,	%f14,	%f0
	fmovrse	%i4,	%f4,	%f0
	st	%f0,	[%l7 + 0x50]
loop_2447:
	ldsh	[%l7 + 0x2A],	%g7
	edge32l	%i6,	%o0,	%i2
	array32	%o1,	%l0,	%g6
	fmovscc	%icc,	%f4,	%f0
	ld	[%l7 + 0x38],	%f0
	fxnors	%f10,	%f10,	%f3
	edge32ln	%i3,	%l5,	%i7
	stw	%o3,	[%l7 + 0x14]
	srlx	%o5,	0x06,	%i1
	movgu	%icc,	%l6,	%o7
	mova	%xcc,	%i0,	%g3
	te	%xcc,	0x4
	fbue	%fcc3,	loop_2448
	fmovsge	%xcc,	%f6,	%f13
	fmovsa	%icc,	%f15,	%f9
	sra	%l3,	%g4,	%o2
loop_2448:
	stx	%g2,	[%l7 + 0x28]
	movleu	%icc,	%l1,	%i5
	ldsh	[%l7 + 0x2E],	%o6
	bvc,a,pt	%xcc,	loop_2449
	fmovdneg	%icc,	%f7,	%f6
	smul	%l2,	%g5,	%l4
	ldsb	[%l7 + 0x15],	%o4
loop_2449:
	std	%f2,	[%l7 + 0x60]
	fmovsleu	%xcc,	%f0,	%f2
	edge8l	%i4,	%g7,	%g1
	fbul,a	%fcc0,	loop_2450
	st	%f5,	[%l7 + 0x18]
	fmovrslez	%o0,	%f3,	%f8
	ldsh	[%l7 + 0x28],	%i6
loop_2450:
	xor	%i2,	0x1A00,	%l0
	ldd	[%l7 + 0x38],	%f8
	fmul8x16au	%f10,	%f14,	%f8
	fandnot1	%f0,	%f12,	%f8
	sth	%o1,	[%l7 + 0x44]
	brlz,a	%i3,	loop_2451
	ldd	[%l7 + 0x20],	%f6
	popc	0x0F9A,	%g6
	movpos	%xcc,	%l5,	%i7
loop_2451:
	fmovrslz	%o5,	%f1,	%f0
	xorcc	%i1,	0x01EB,	%o3
	sdiv	%o7,	0x11C6,	%i0
	fbge,a	%fcc1,	loop_2452
	std	%f14,	[%l7 + 0x58]
	movne	%icc,	%g3,	%l3
	ldsh	[%l7 + 0x3A],	%l6
loop_2452:
	fandnot2	%f6,	%f2,	%f0
	fpadd16	%f14,	%f14,	%f10
	tne	%xcc,	0x5
	movle	%icc,	%o2,	%g2
	fbge	%fcc3,	loop_2453
	bleu,a,pt	%icc,	loop_2454
	bvs,a,pt	%icc,	loop_2455
	fmovsne	%icc,	%f4,	%f0
loop_2453:
	brgz,a	%l1,	loop_2456
loop_2454:
	mova	%icc,	%g4,	%o6
loop_2455:
	udiv	%l2,	0x0549,	%g5
	lduh	[%l7 + 0x2C],	%i5
loop_2456:
	subccc	%o4,	%i4,	%l4
	brlz,a	%g7,	loop_2457
	stb	%g1,	[%l7 + 0x2E]
	fcmpeq16	%f14,	%f0,	%i6
	fabsd	%f14,	%f0
loop_2457:
	xnor	%i2,	%o0,	%o1
	lduw	[%l7 + 0x7C],	%i3
	fmovsn	%icc,	%f13,	%f2
	movrgez	%l0,	%g6,	%i7
	fmovdleu	%icc,	%f2,	%f1
	fmovrde	%l5,	%f4,	%f2
	fmovrdlez	%o5,	%f14,	%f8
	srlx	%i1,	0x1A,	%o7
	lduh	[%l7 + 0x2E],	%i0
	std	%f4,	[%l7 + 0x68]
	ldsb	[%l7 + 0x6F],	%g3
	fcmps	%fcc1,	%f5,	%f15
	ldsb	[%l7 + 0x2B],	%o3
	tvs	%icc,	0x7
	fmovdg	%icc,	%f9,	%f2
	lduw	[%l7 + 0x78],	%l6
	ldsb	[%l7 + 0x40],	%o2
	fcmps	%fcc0,	%f4,	%f8
	subc	%g2,	0x12C9,	%l3
	fxnors	%f13,	%f5,	%f3
	fmovsne	%icc,	%f4,	%f10
	sth	%l1,	[%l7 + 0x30]
	tg	%icc,	0x2
	tgu	%xcc,	0x2
	fbne	%fcc1,	loop_2458
	bgu	loop_2459
	ld	[%l7 + 0x40],	%f9
	fmovrsgez	%o6,	%f4,	%f7
loop_2458:
	srlx	%l2,	0x02,	%g4
loop_2459:
	fmovdne	%xcc,	%f3,	%f14
	fmovdneg	%xcc,	%f1,	%f11
	sdiv	%g5,	0x1D8C,	%o4
	nop
	setx loop_2460, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ble,a	loop_2461
	ldd	[%l7 + 0x40],	%f12
	ldsh	[%l7 + 0x44],	%i4
loop_2460:
	mulx	%l4,	0x17E9,	%g7
loop_2461:
	ldsh	[%l7 + 0x7C],	%i5
	fmovsa	%icc,	%f12,	%f10
	st	%f12,	[%l7 + 0x70]
	bcs	%icc,	loop_2462
	te	%icc,	0x2
	fmovdcc	%icc,	%f2,	%f0
	movne	%xcc,	%i6,	%i2
loop_2462:
	movrne	%g1,	0x215,	%o1
	be,a	%icc,	loop_2463
	fandnot1s	%f4,	%f1,	%f3
	tgu	%xcc,	0x0
	ba,pn	%icc,	loop_2464
loop_2463:
	sllx	%i3,	0x07,	%l0
	fbge,a	%fcc2,	loop_2465
	fornot2s	%f14,	%f13,	%f8
loop_2464:
	ldd	[%l7 + 0x20],	%f4
	sdiv	%g6,	0x1B17,	%i7
loop_2465:
	for	%f0,	%f4,	%f4
	ldd	[%l7 + 0x08],	%f6
	stx	%l5,	[%l7 + 0x48]
	sdivx	%o5,	0x0C27,	%o0
	fnor	%f0,	%f4,	%f8
	subccc	%i1,	0x1BCA,	%o7
	stx	%i0,	[%l7 + 0x48]
	edge8l	%g3,	%l6,	%o2
	fbg	%fcc1,	loop_2466
	ldsw	[%l7 + 0x54],	%o3
	andn	%l3,	0x13BA,	%g2
	udivcc	%o6,	0x0D9C,	%l1
loop_2466:
	alignaddrl	%l2,	%g5,	%o4
	fmovde	%xcc,	%f11,	%f6
	fxnors	%f15,	%f9,	%f14
	brgez	%g4,	loop_2467
	xorcc	%l4,	0x11B7,	%g7
	tcs	%icc,	0x7
	udivcc	%i5,	0x0AE1,	%i6
loop_2467:
	movne	%xcc,	%i4,	%g1
	ldsb	[%l7 + 0x4C],	%o1
	stb	%i3,	[%l7 + 0x4F]
	ldub	[%l7 + 0x1A],	%i2
	lduw	[%l7 + 0x78],	%l0
	ld	[%l7 + 0x40],	%f14
	taddcc	%g6,	0x0F26,	%l5
	array32	%o5,	%i7,	%i1
	fpsub32	%f4,	%f10,	%f14
	ldsw	[%l7 + 0x18],	%o0
	ld	[%l7 + 0x14],	%f2
	fmovse	%xcc,	%f11,	%f13
	movcc	%xcc,	%o7,	%i0
	edge8n	%g3,	%o2,	%l6
	fmovs	%f9,	%f15
	andcc	%o3,	%l3,	%g2
	std	%f4,	[%l7 + 0x78]
	stw	%o6,	[%l7 + 0x24]
	bshuffle	%f8,	%f12,	%f12
	fbge,a	%fcc0,	loop_2468
	srax	%l1,	0x08,	%l2
	stx	%o4,	[%l7 + 0x38]
	addcc	%g4,	0x0393,	%g5
loop_2468:
	fnegd	%f2,	%f6
	fcmpgt16	%f4,	%f10,	%l4
	movneg	%xcc,	%g7,	%i5
	fmovsleu	%xcc,	%f5,	%f6
	fbn	%fcc3,	loop_2469
	fandnot2s	%f11,	%f10,	%f5
	stx	%i6,	[%l7 + 0x68]
	sllx	%i4,	%o1,	%i3
loop_2469:
	bvc	loop_2470
	edge16l	%g1,	%i2,	%g6
	sra	%l5,	%l0,	%o5
	std	%f6,	[%l7 + 0x70]
loop_2470:
	fmovsle	%icc,	%f10,	%f9
	fmovrdgez	%i7,	%f0,	%f4
	fbuge,a	%fcc2,	loop_2471
	tsubcctv	%o0,	%i1,	%i0
	fmovdvc	%icc,	%f8,	%f12
	xnorcc	%o7,	%g3,	%o2
loop_2471:
	ldub	[%l7 + 0x64],	%o3
	edge8l	%l6,	%l3,	%g2
	fandnot2	%f4,	%f0,	%f4
	tneg	%icc,	0x1
	movrne	%l1,	0x2EA,	%o6
	fxors	%f12,	%f1,	%f10
	be,a	loop_2472
	tvc	%icc,	0x5
	tvc	%xcc,	0x6
	fpack32	%f4,	%f8,	%f14
loop_2472:
	ld	[%l7 + 0x68],	%f3
	fcmped	%fcc1,	%f4,	%f14
	tsubcc	%o4,	0x1EB4,	%l2
	fandnot1s	%f5,	%f8,	%f5
	brgez	%g5,	loop_2473
	fmovsl	%xcc,	%f10,	%f15
	movrlez	%l4,	0x027,	%g7
	bge,pn	%icc,	loop_2474
loop_2473:
	movge	%icc,	%i5,	%i6
	mulscc	%g4,	0x0B91,	%i4
	ldsw	[%l7 + 0x2C],	%i3
loop_2474:
	stx	%g1,	[%l7 + 0x58]
	bvc,a,pt	%icc,	loop_2475
	fbo,a	%fcc0,	loop_2476
	fmovspos	%icc,	%f12,	%f7
	lduw	[%l7 + 0x10],	%i2
loop_2475:
	brnz,a	%g6,	loop_2477
loop_2476:
	fzeros	%f0
	stx	%o1,	[%l7 + 0x58]
	ldd	[%l7 + 0x40],	%f10
loop_2477:
	ldx	[%l7 + 0x10],	%l5
	fmul8x16	%f6,	%f14,	%f4
	stx	%l0,	[%l7 + 0x70]
	fbg,a	%fcc3,	loop_2478
	fmuld8ulx16	%f0,	%f6,	%f12
	fmovrdgez	%i7,	%f4,	%f2
	ldsh	[%l7 + 0x62],	%o5
loop_2478:
	fmovdleu	%xcc,	%f5,	%f3
	fbge	%fcc3,	loop_2479
	fmovsge	%xcc,	%f1,	%f8
	udivcc	%i1,	0x115C,	%o0
	fmovsle	%icc,	%f0,	%f3
loop_2479:
	edge8n	%i0,	%o7,	%o2
	fbue	%fcc3,	loop_2480
	fmovrdgz	%g3,	%f0,	%f2
	ldsh	[%l7 + 0x4C],	%o3
	ld	[%l7 + 0x60],	%f8
loop_2480:
	tl	%icc,	0x7
	alignaddrl	%l3,	%g2,	%l1
	fones	%f13
	fmovscc	%xcc,	%f0,	%f11
	movg	%icc,	%o6,	%o4
	for	%f12,	%f8,	%f2
	movvc	%xcc,	%l6,	%g5
	ldx	[%l7 + 0x58],	%l4
	tgu	%icc,	0x0
	fmovdcc	%icc,	%f0,	%f8
	xorcc	%l2,	0x01AA,	%g7
	tvs	%icc,	0x6
	fmovrdgez	%i6,	%f8,	%f0
	fcmped	%fcc3,	%f14,	%f2
	lduw	[%l7 + 0x48],	%g4
	nop
	setx loop_2481, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldx	[%l7 + 0x10],	%i4
	fbug	%fcc3,	loop_2482
	udiv	%i5,	0x1657,	%i3
loop_2481:
	fbne	%fcc0,	loop_2483
	fnot2	%f4,	%f10
loop_2482:
	ldsw	[%l7 + 0x70],	%g1
	fnand	%f10,	%f4,	%f0
loop_2483:
	smul	%i2,	%g6,	%l5
	fcmpd	%fcc0,	%f8,	%f8
	stb	%o1,	[%l7 + 0x1F]
	taddcctv	%l0,	%i7,	%o5
	stx	%i1,	[%l7 + 0x58]
	fmovdg	%xcc,	%f14,	%f9
	fpsub16	%f6,	%f10,	%f12
	ldsb	[%l7 + 0x38],	%i0
	stw	%o7,	[%l7 + 0x5C]
	fmovdle	%xcc,	%f10,	%f4
	fornot1s	%f2,	%f8,	%f1
	be,pt	%xcc,	loop_2484
	fpadd32s	%f7,	%f9,	%f9
	tne	%icc,	0x0
	lduh	[%l7 + 0x76],	%o2
loop_2484:
	mova	%icc,	%g3,	%o3
	ldsh	[%l7 + 0x16],	%l3
	tl	%icc,	0x7
	fmovdgu	%xcc,	%f9,	%f11
	edge16l	%o0,	%g2,	%l1
	fbne	%fcc0,	loop_2485
	bcs,a	loop_2486
	lduw	[%l7 + 0x0C],	%o4
	st	%f5,	[%l7 + 0x7C]
loop_2485:
	sth	%l6,	[%l7 + 0x4E]
loop_2486:
	std	%f14,	[%l7 + 0x40]
	ldub	[%l7 + 0x6E],	%o6
	fmovdgu	%icc,	%f8,	%f0
	stw	%g5,	[%l7 + 0x0C]
	fcmpgt32	%f8,	%f2,	%l4
	for	%f12,	%f4,	%f14
	edge32n	%g7,	%i6,	%l2
	stw	%g4,	[%l7 + 0x28]
	brz	%i4,	loop_2487
	brz,a	%i3,	loop_2488
	tcs	%icc,	0x6
	fcmpne16	%f4,	%f10,	%i5
loop_2487:
	fnors	%f5,	%f4,	%f0
loop_2488:
	stb	%i2,	[%l7 + 0x42]
	fbuge,a	%fcc0,	loop_2489
	bn	loop_2490
	brlz	%g6,	loop_2491
	lduh	[%l7 + 0x48],	%g1
loop_2489:
	stx	%o1,	[%l7 + 0x18]
loop_2490:
	edge8ln	%l5,	%l0,	%i7
loop_2491:
	movrne	%i1,	0x3FF,	%o5
	for	%f12,	%f12,	%f12
	fxnors	%f13,	%f9,	%f8
	std	%f14,	[%l7 + 0x50]
	ldx	[%l7 + 0x28],	%i0
	bge,pn	%icc,	loop_2492
	fbe	%fcc2,	loop_2493
	ldsw	[%l7 + 0x58],	%o2
	fmovscs	%icc,	%f0,	%f6
loop_2492:
	fbn,a	%fcc0,	loop_2494
loop_2493:
	bgu	%xcc,	loop_2495
	tcc	%xcc,	0x6
	tcc	%icc,	0x2
loop_2494:
	lduh	[%l7 + 0x76],	%g3
loop_2495:
	std	%f2,	[%l7 + 0x70]
	lduw	[%l7 + 0x14],	%o7
	fbul	%fcc1,	loop_2496
	ldsh	[%l7 + 0x3E],	%o3
	brlz,a	%o0,	loop_2497
	ldsb	[%l7 + 0x12],	%l3
loop_2496:
	ldsw	[%l7 + 0x30],	%l1
	fxnor	%f2,	%f0,	%f8
loop_2497:
	fmovrslez	%g2,	%f2,	%f0
	ldsh	[%l7 + 0x62],	%o4
	fmuld8ulx16	%f9,	%f11,	%f10
	ldsh	[%l7 + 0x64],	%l6
	fcmpne16	%f4,	%f10,	%o6
	array32	%l4,	%g7,	%g5
	and	%l2,	0x11CF,	%i6
	umul	%g4,	%i3,	%i5
	ld	[%l7 + 0x54],	%f4
	ldx	[%l7 + 0x40],	%i4
	fbl,a	%fcc1,	loop_2498
	lduh	[%l7 + 0x3C],	%i2
	fmovdle	%icc,	%f11,	%f10
	mulx	%g6,	%g1,	%o1
loop_2498:
	smul	%l0,	%l5,	%i7
	edge32l	%i1,	%o5,	%o2
	edge8	%g3,	%o7,	%o3
	fmovsvs	%xcc,	%f10,	%f15
	mulx	%o0,	0x0A90,	%i0
	mova	%icc,	%l1,	%l3
	fmovsa	%xcc,	%f4,	%f0
	andcc	%o4,	0x0158,	%g2
	tne	%icc,	0x3
	fba	%fcc2,	loop_2499
	fblg,a	%fcc2,	loop_2500
	xorcc	%l6,	0x1489,	%l4
	add	%g7,	0x01D9,	%o6
loop_2499:
	tne	%xcc,	0x5
loop_2500:
	ld	[%l7 + 0x30],	%f12
	bn	%xcc,	loop_2501
	fornot2	%f6,	%f12,	%f10
	lduh	[%l7 + 0x70],	%g5
	brgez,a	%i6,	loop_2502
loop_2501:
	ldx	[%l7 + 0x50],	%g4
	stx	%i3,	[%l7 + 0x48]
	fandnot2s	%f4,	%f15,	%f5
loop_2502:
	fcmpne16	%f4,	%f2,	%i5
	udiv	%l2,	0x0FBC,	%i4
	fpsub32s	%f6,	%f14,	%f5
	fmovsge	%xcc,	%f9,	%f10
	srax	%g6,	%i2,	%o1
	fcmpne16	%f6,	%f10,	%g1
	fmovdpos	%icc,	%f0,	%f13
	stw	%l5,	[%l7 + 0x08]
	fba,a	%fcc1,	loop_2503
	fandnot2s	%f11,	%f2,	%f1
	addc	%l0,	0x1D04,	%i7
	stw	%o5,	[%l7 + 0x64]
loop_2503:
	lduh	[%l7 + 0x56],	%o2
	fmovrdne	%i1,	%f12,	%f8
	bcs,pt	%icc,	loop_2504
	addc	%o7,	%g3,	%o0
	stx	%i0,	[%l7 + 0x68]
	lduh	[%l7 + 0x1E],	%l1
loop_2504:
	orcc	%o3,	0x05FE,	%l3
	fbo,a	%fcc3,	loop_2505
	fmovrdne	%g2,	%f2,	%f12
	fsrc1	%f14,	%f0
	fbne	%fcc2,	loop_2506
loop_2505:
	te	%xcc,	0x1
	bneg,pt	%xcc,	loop_2507
	fpsub32	%f8,	%f12,	%f4
loop_2506:
	edge16	%o4,	%l4,	%g7
	lduw	[%l7 + 0x7C],	%l6
loop_2507:
	fnor	%f14,	%f10,	%f4
	fsrc1s	%f1,	%f14
	lduw	[%l7 + 0x60],	%g5
	stx	%i6,	[%l7 + 0x60]
	stw	%o6,	[%l7 + 0x2C]
	ldsb	[%l7 + 0x6D],	%i3
	fpadd32	%f2,	%f10,	%f10
	sth	%g4,	[%l7 + 0x28]
	fornot2	%f14,	%f14,	%f12
	stw	%i5,	[%l7 + 0x5C]
	array8	%l2,	%i4,	%g6
	ldd	[%l7 + 0x30],	%f10
	fornot1	%f0,	%f0,	%f12
	lduw	[%l7 + 0x54],	%o1
	edge8	%g1,	%i2,	%l0
	ldd	[%l7 + 0x38],	%f12
	sth	%i7,	[%l7 + 0x68]
	be,a,pt	%xcc,	loop_2508
	edge8ln	%o5,	%l5,	%i1
	fmovsleu	%icc,	%f0,	%f11
	movvs	%icc,	%o2,	%o7
loop_2508:
	bvs,pn	%xcc,	loop_2509
	ble,pt	%icc,	loop_2510
	nop
	setx loop_2511, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovsl	%xcc,	%f14,	%f3
loop_2509:
	lduw	[%l7 + 0x4C],	%o0
loop_2510:
	fmovdcc	%xcc,	%f11,	%f5
loop_2511:
	edge16	%i0,	%g3,	%o3
	fmovrdgz	%l3,	%f2,	%f8
	tpos	%xcc,	0x7
	ldx	[%l7 + 0x48],	%g2
	fmovdvs	%icc,	%f7,	%f0
	tcc	%xcc,	0x5
	ldub	[%l7 + 0x53],	%o4
	ldd	[%l7 + 0x10],	%f12
	fpadd16s	%f2,	%f10,	%f7
	lduw	[%l7 + 0x24],	%l4
	fnot2s	%f8,	%f1
	ldsb	[%l7 + 0x5B],	%l1
	fmovscc	%icc,	%f5,	%f8
	bvs,a,pn	%xcc,	loop_2512
	ldub	[%l7 + 0x33],	%l6
	std	%f4,	[%l7 + 0x30]
	fmul8x16au	%f11,	%f11,	%f2
loop_2512:
	udiv	%g7,	0x102E,	%i6
	lduw	[%l7 + 0x20],	%o6
	tneg	%xcc,	0x2
	ldx	[%l7 + 0x50],	%g5
	add	%g4,	%i3,	%l2
	lduh	[%l7 + 0x2A],	%i5
	ldsw	[%l7 + 0x3C],	%i4
	fsrc2s	%f0,	%f15
	stb	%g6,	[%l7 + 0x4B]
	fsrc2	%f4,	%f4
	fbe,a	%fcc1,	loop_2513
	fornot2s	%f15,	%f10,	%f12
	fmovsvs	%xcc,	%f2,	%f2
	udivx	%g1,	0x1FEF,	%o1
loop_2513:
	fbge,a	%fcc0,	loop_2514
	ldsb	[%l7 + 0x65],	%i2
	xor	%l0,	0x065B,	%i7
	subc	%l5,	0x0405,	%o5
loop_2514:
	fmovde	%icc,	%f8,	%f0
	stb	%i1,	[%l7 + 0x6A]
	lduw	[%l7 + 0x0C],	%o7
	fcmpeq16	%f14,	%f14,	%o2
	ldx	[%l7 + 0x68],	%o0
	fnand	%f4,	%f8,	%f2
	fcmple16	%f4,	%f0,	%g3
	fnot1	%f14,	%f10
	ldsh	[%l7 + 0x1E],	%o3
	edge32n	%i0,	%l3,	%g2
	lduw	[%l7 + 0x5C],	%o4
	fmovdpos	%xcc,	%f4,	%f7
	st	%f15,	[%l7 + 0x18]
	movneg	%icc,	%l1,	%l6
	st	%f9,	[%l7 + 0x70]
	ld	[%l7 + 0x10],	%f4
	fmul8x16au	%f11,	%f2,	%f14
	ldsw	[%l7 + 0x54],	%l4
	bvs	%icc,	loop_2515
	fnot1	%f14,	%f10
	ld	[%l7 + 0x50],	%f13
	siam	0x0
loop_2515:
	sub	%g7,	0x169A,	%o6
	lduw	[%l7 + 0x34],	%g5
	fmovscc	%xcc,	%f13,	%f7
	stw	%i6,	[%l7 + 0x20]
	alignaddrl	%g4,	%i3,	%i5
	sth	%l2,	[%l7 + 0x1E]
	xnorcc	%i4,	%g1,	%o1
	fmovrde	%i2,	%f4,	%f0
	ldd	[%l7 + 0x20],	%f10
	orcc	%l0,	%i7,	%g6
	subc	%o5,	%l5,	%i1
	fble,a	%fcc1,	loop_2516
	mova	%icc,	%o7,	%o2
	ldsh	[%l7 + 0x40],	%g3
	taddcc	%o0,	0x045D,	%i0
loop_2516:
	addc	%o3,	%g2,	%o4
	ldx	[%l7 + 0x20],	%l1
	st	%f13,	[%l7 + 0x58]
	lduw	[%l7 + 0x78],	%l6
	movle	%xcc,	%l3,	%g7
	stb	%o6,	[%l7 + 0x2D]
	fnegs	%f14,	%f9
	fmovrsgz	%g5,	%f8,	%f12
	fbuge	%fcc1,	loop_2517
	mulx	%l4,	%i6,	%i3
	orn	%g4,	%l2,	%i4
	edge16l	%g1,	%i5,	%o1
loop_2517:
	fmovscs	%icc,	%f2,	%f2
	movn	%xcc,	%l0,	%i2
	fmovsgu	%xcc,	%f15,	%f12
	sdivcc	%g6,	0x130A,	%i7
	nop
	setx loop_2518, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	edge16n	%l5,	%o5,	%i1
	fbo,a	%fcc2,	loop_2519
	brlz,a	%o7,	loop_2520
loop_2518:
	bshuffle	%f12,	%f0,	%f12
	fmul8x16au	%f12,	%f0,	%f4
loop_2519:
	sth	%g3,	[%l7 + 0x50]
loop_2520:
	fmovsle	%icc,	%f12,	%f9
	stw	%o2,	[%l7 + 0x4C]
	fmuld8ulx16	%f14,	%f8,	%f4
	ldsb	[%l7 + 0x1E],	%o0
	fabsd	%f8,	%f6
	bneg	loop_2521
	fbe,a	%fcc2,	loop_2522
	fbule	%fcc3,	loop_2523
	bgu,a,pn	%icc,	loop_2524
loop_2521:
	fbne,a	%fcc2,	loop_2525
loop_2522:
	ldx	[%l7 + 0x68],	%o3
loop_2523:
	fsrc1s	%f9,	%f2
loop_2524:
	fxor	%f8,	%f6,	%f4
loop_2525:
	taddcc	%g2,	%o4,	%i0
	addccc	%l6,	0x168D,	%l1
	taddcctv	%g7,	0x06C5,	%l3
	tcc	%xcc,	0x5
	fabss	%f2,	%f8
	fmovsgu	%xcc,	%f1,	%f8
	popc	%o6,	%l4
	std	%f6,	[%l7 + 0x38]
	orncc	%g5,	0x1D16,	%i3
	bne,a	%xcc,	loop_2526
	sra	%i6,	0x01,	%l2
	fsrc2s	%f8,	%f5
	lduh	[%l7 + 0x1A],	%g4
loop_2526:
	bg,pt	%xcc,	loop_2527
	movge	%icc,	%g1,	%i5
	fmul8sux16	%f12,	%f8,	%f2
	fmovse	%icc,	%f13,	%f11
loop_2527:
	fmovde	%icc,	%f0,	%f11
	orncc	%o1,	0x024E,	%i4
	tl	%icc,	0x7
	ldub	[%l7 + 0x1A],	%l0
	movne	%xcc,	%i2,	%i7
	fmovdvc	%xcc,	%f5,	%f2
	orcc	%l5,	%o5,	%g6
	fmovsleu	%icc,	%f14,	%f12
	add	%i1,	0x0156,	%g3
	stb	%o7,	[%l7 + 0x30]
	tsubcctv	%o2,	%o0,	%o3
	sth	%g2,	[%l7 + 0x0C]
	ta	%icc,	0x2
	orcc	%o4,	0x1558,	%i0
	tcs	%icc,	0x1
	sra	%l6,	0x08,	%l1
	fmovsvc	%xcc,	%f8,	%f4
	movcc	%xcc,	%g7,	%o6
	fmuld8sux16	%f7,	%f7,	%f6
	ld	[%l7 + 0x1C],	%f6
	brlez,a	%l4,	loop_2528
	movrne	%l3,	0x2D3,	%g5
	fmovdne	%icc,	%f11,	%f9
	nop
	setx loop_2529, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_2528:
	movrlz	%i3,	%i6,	%l2
	lduh	[%l7 + 0x64],	%g4
	fexpand	%f0,	%f0
loop_2529:
	array8	%g1,	%o1,	%i5
	ldsh	[%l7 + 0x70],	%l0
	tn	%xcc,	0x4
	edge8ln	%i2,	%i7,	%l5
	std	%f4,	[%l7 + 0x50]
	fornot1s	%f0,	%f14,	%f15
	ldd	[%l7 + 0x68],	%f4
	ldsh	[%l7 + 0x16],	%o5
	stw	%i4,	[%l7 + 0x6C]
	fone	%f4
	movneg	%icc,	%g6,	%i1
	ldsh	[%l7 + 0x38],	%g3
	edge16n	%o7,	%o0,	%o3
	add	%g2,	0x0F7D,	%o4
	fbo,a	%fcc2,	loop_2530
	fmovdvc	%icc,	%f4,	%f13
	stb	%o2,	[%l7 + 0x20]
	bcs,a,pn	%icc,	loop_2531
loop_2530:
	fmovrdlz	%l6,	%f14,	%f4
	fmovdne	%xcc,	%f15,	%f9
	fmovsvs	%xcc,	%f7,	%f12
loop_2531:
	st	%f0,	[%l7 + 0x30]
	stb	%i0,	[%l7 + 0x1A]
	edge32n	%g7,	%o6,	%l1
	fbe,a	%fcc1,	loop_2532
	movneg	%icc,	%l3,	%g5
	ldsb	[%l7 + 0x32],	%i3
	ldub	[%l7 + 0x7A],	%i6
loop_2532:
	fornot2s	%f13,	%f2,	%f14
	fmovrdgez	%l4,	%f10,	%f12
	ldd	[%l7 + 0x78],	%f4
	fbe	%fcc3,	loop_2533
	bge,a,pn	%xcc,	loop_2534
	andncc	%g4,	%l2,	%g1
	ldsb	[%l7 + 0x3C],	%o1
loop_2533:
	ldsh	[%l7 + 0x60],	%l0
loop_2534:
	fmovsleu	%xcc,	%f2,	%f6
	bpos,a,pt	%xcc,	loop_2535
	edge32n	%i2,	%i5,	%i7
	edge16ln	%o5,	%l5,	%i4
	movne	%icc,	%g6,	%i1
loop_2535:
	brz	%g3,	loop_2536
	fmovdpos	%xcc,	%f15,	%f0
	fexpand	%f0,	%f0
	ldsw	[%l7 + 0x28],	%o0
loop_2536:
	fmovs	%f11,	%f8
	fbn	%fcc3,	loop_2537
	lduh	[%l7 + 0x4E],	%o7
	ble	%icc,	loop_2538
	lduw	[%l7 + 0x18],	%o3
loop_2537:
	fnot1	%f2,	%f8
	tl	%xcc,	0x5
loop_2538:
	lduh	[%l7 + 0x72],	%g2
	stx	%o4,	[%l7 + 0x78]
	lduh	[%l7 + 0x5E],	%l6
	mova	%xcc,	%i0,	%o2
	ldsh	[%l7 + 0x0A],	%g7
	ldub	[%l7 + 0x52],	%l1
	fands	%f15,	%f3,	%f0
	fmovrdlez	%l3,	%f12,	%f0
	bl,a,pt	%icc,	loop_2539
	fmovsg	%xcc,	%f8,	%f5
	ld	[%l7 + 0x28],	%f9
	ldx	[%l7 + 0x38],	%o6
loop_2539:
	fpsub32s	%f14,	%f1,	%f3
	addcc	%i3,	0x1757,	%i6
	ldub	[%l7 + 0x48],	%g5
	srax	%g4,	%l4,	%g1
	stx	%l2,	[%l7 + 0x18]
	fmovda	%xcc,	%f7,	%f9
	movrgez	%l0,	0x10D,	%i2
	st	%f9,	[%l7 + 0x40]
	bcc	loop_2540
	fpadd16s	%f8,	%f10,	%f15
	st	%f4,	[%l7 + 0x08]
	brz	%i5,	loop_2541
loop_2540:
	movne	%xcc,	%i7,	%o5
	ldx	[%l7 + 0x50],	%o1
	std	%f12,	[%l7 + 0x40]
loop_2541:
	bvc,a,pn	%icc,	loop_2542
	fmovdn	%xcc,	%f13,	%f0
	fcmpgt16	%f0,	%f12,	%l5
	fmovdg	%icc,	%f2,	%f14
loop_2542:
	fmovdneg	%icc,	%f2,	%f14
	stb	%i4,	[%l7 + 0x7A]
	lduw	[%l7 + 0x0C],	%g6
	fones	%f1
	ldsh	[%l7 + 0x4A],	%i1
	fornot1	%f14,	%f14,	%f2
	stb	%o0,	[%l7 + 0x60]
	stx	%g3,	[%l7 + 0x48]
	fornot1	%f12,	%f8,	%f6
	fcmple16	%f6,	%f0,	%o7
	ld	[%l7 + 0x2C],	%f13
	ldsb	[%l7 + 0x7B],	%o3
	fmovsa	%icc,	%f5,	%f5
	lduh	[%l7 + 0x52],	%g2
	ldd	[%l7 + 0x58],	%f2
	ldx	[%l7 + 0x28],	%o4
	fmovrsne	%l6,	%f5,	%f1
	ldsb	[%l7 + 0x23],	%i0
	fmovsneg	%xcc,	%f2,	%f0
	ldsw	[%l7 + 0x7C],	%g7
	fnegd	%f6,	%f8
	fnor	%f8,	%f14,	%f4
	fba,a	%fcc1,	loop_2543
	stb	%l1,	[%l7 + 0x6E]
	fmovrdgez	%l3,	%f6,	%f10
	ldub	[%l7 + 0x29],	%o2
loop_2543:
	movrlz	%o6,	0x16F,	%i3
	edge32	%i6,	%g5,	%l4
	ldd	[%l7 + 0x28],	%f6
	ldub	[%l7 + 0x7B],	%g4
	fpsub32	%f12,	%f2,	%f6
	ldx	[%l7 + 0x58],	%l2
	movpos	%icc,	%g1,	%i2
	ld	[%l7 + 0x34],	%f2
	tvc	%icc,	0x5
	ldsh	[%l7 + 0x58],	%l0
	ldub	[%l7 + 0x0A],	%i5
	std	%f0,	[%l7 + 0x60]
	lduh	[%l7 + 0x6E],	%o5
	srlx	%i7,	0x0E,	%l5
	fmovrsgz	%i4,	%f12,	%f13
	fcmpgt16	%f14,	%f12,	%o1
	stw	%i1,	[%l7 + 0x24]
	stb	%g6,	[%l7 + 0x4E]
	st	%f13,	[%l7 + 0x24]
	movl	%xcc,	%g3,	%o7
	std	%f12,	[%l7 + 0x68]
	brgz,a	%o0,	loop_2544
	bcs	loop_2545
	lduw	[%l7 + 0x50],	%o3
	fandnot2	%f4,	%f8,	%f14
loop_2544:
	fmovrse	%g2,	%f9,	%f11
loop_2545:
	stb	%o4,	[%l7 + 0x0F]
	array8	%i0,	%l6,	%l1
	srax	%l3,	0x19,	%o2
	nop
	setx loop_2546, %l0, %l1
	jmpl %l1, %g7
	ldsh	[%l7 + 0x5C],	%i3
	brlz	%i6,	loop_2547
	fsrc2s	%f14,	%f15
loop_2546:
	sdiv	%g5,	0x01BF,	%o6
	brlz,a	%g4,	loop_2548
loop_2547:
	brlz,a	%l4,	loop_2549
	addccc	%l2,	%i2,	%g1
	ldsh	[%l7 + 0x50],	%i5
loop_2548:
	ldsb	[%l7 + 0x66],	%o5
loop_2549:
	smulcc	%l0,	%l5,	%i7
	fbne	%fcc0,	loop_2550
	ldd	[%l7 + 0x48],	%f8
	ldd	[%l7 + 0x10],	%f2
	stb	%i4,	[%l7 + 0x22]
loop_2550:
	stx	%i1,	[%l7 + 0x68]
	edge16	%o1,	%g6,	%g3
	ldsh	[%l7 + 0x5C],	%o0
	fnot2	%f4,	%f10
	movneg	%icc,	%o7,	%o3
	sth	%o4,	[%l7 + 0x2C]
	orncc	%g2,	0x152C,	%i0
	for	%f10,	%f8,	%f2
	st	%f6,	[%l7 + 0x50]
	fmovsl	%icc,	%f4,	%f15
	orcc	%l6,	%l3,	%o2
	fxnors	%f13,	%f15,	%f15
	fbl	%fcc1,	loop_2551
	orcc	%g7,	0x1371,	%l1
	brlz,a	%i3,	loop_2552
	std	%f10,	[%l7 + 0x30]
loop_2551:
	fmovsle	%icc,	%f15,	%f7
	bpos,a,pt	%xcc,	loop_2553
loop_2552:
	orn	%g5,	%o6,	%i6
	movrgez	%l4,	0x0BA,	%l2
	ldx	[%l7 + 0x70],	%g4
loop_2553:
	lduw	[%l7 + 0x18],	%i2
	array32	%i5,	%o5,	%l0
	fabss	%f11,	%f6
	bpos,a	%icc,	loop_2554
	ldx	[%l7 + 0x10],	%g1
	fsrc1s	%f14,	%f9
	fzero	%f4
loop_2554:
	ldsb	[%l7 + 0x10],	%l5
	stw	%i7,	[%l7 + 0x1C]
	ble,a	loop_2555
	edge16ln	%i1,	%i4,	%g6
	fornot2s	%f7,	%f6,	%f12
	fmuld8ulx16	%f6,	%f4,	%f10
loop_2555:
	fsrc1s	%f4,	%f2
	orncc	%o1,	%o0,	%o7
	fmovdvc	%icc,	%f11,	%f14
	fabsd	%f10,	%f14
	srlx	%o3,	%o4,	%g2
	stw	%g3,	[%l7 + 0x44]
	andncc	%l6,	%i0,	%l3
	tpos	%xcc,	0x5
	array32	%g7,	%l1,	%o2
	mulscc	%g5,	0x1FC2,	%o6
	ldub	[%l7 + 0x2E],	%i3
	ldsh	[%l7 + 0x3A],	%i6
	xnor	%l2,	%l4,	%g4
	fbule	%fcc2,	loop_2556
	bcs	loop_2557
	edge32n	%i2,	%o5,	%l0
	nop
	setx loop_2558, %l0, %l1
	jmpl %l1, %i5
loop_2556:
	edge8ln	%l5,	%g1,	%i1
loop_2557:
	movcc	%xcc,	%i4,	%g6
	sub	%o1,	%o0,	%o7
loop_2558:
	fnands	%f0,	%f6,	%f15
	movrgz	%i7,	%o3,	%g2
	fmovdpos	%icc,	%f15,	%f8
	ldub	[%l7 + 0x2A],	%g3
	fba,a	%fcc0,	loop_2559
	lduw	[%l7 + 0x74],	%o4
	nop
	setx loop_2560, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	st	%f7,	[%l7 + 0x1C]
loop_2559:
	ldsb	[%l7 + 0x25],	%i0
	fones	%f12
loop_2560:
	andn	%l3,	0x1B59,	%l6
	lduw	[%l7 + 0x68],	%g7
	tne	%icc,	0x3
	fsrc1	%f8,	%f6
	fnands	%f5,	%f2,	%f13
	fcmpeq16	%f6,	%f8,	%o2
	sra	%l1,	%g5,	%i3
	st	%f9,	[%l7 + 0x0C]
	ldsh	[%l7 + 0x5C],	%o6
	brlez	%l2,	loop_2561
	ldsb	[%l7 + 0x15],	%l4
	tl	%xcc,	0x6
	movrne	%g4,	0x11F,	%i6
loop_2561:
	alignaddr	%i2,	%l0,	%i5
	tsubcc	%l5,	%g1,	%i1
	fmovdcc	%xcc,	%f9,	%f8
	fmovdge	%xcc,	%f9,	%f14
	movgu	%icc,	%o5,	%i4
	ld	[%l7 + 0x44],	%f8
	fmovs	%f6,	%f5
	fnot1s	%f6,	%f7
	fmovrsgez	%o1,	%f10,	%f11
	udivx	%o0,	0x1F30,	%o7
	brgz	%i7,	loop_2562
	st	%f14,	[%l7 + 0x40]
	fxnors	%f12,	%f9,	%f1
	fxnor	%f2,	%f8,	%f2
loop_2562:
	fmovrsne	%g6,	%f10,	%f10
	fcmple16	%f14,	%f8,	%g2
	bneg,a,pt	%xcc,	loop_2563
	fcmpne16	%f4,	%f12,	%o3
	umul	%o4,	%i0,	%g3
	fmovde	%icc,	%f3,	%f12
loop_2563:
	fbule	%fcc1,	loop_2564
	fmovrdgz	%l3,	%f14,	%f12
	fmul8x16al	%f9,	%f0,	%f12
	fnot1	%f6,	%f10
loop_2564:
	movcc	%xcc,	%g7,	%l6
	stb	%o2,	[%l7 + 0x21]
	movgu	%xcc,	%g5,	%l1
	bge,pt	%icc,	loop_2565
	tvs	%xcc,	0x2
	fpadd32	%f8,	%f10,	%f14
	ldsw	[%l7 + 0x24],	%i3
loop_2565:
	fmovsgu	%xcc,	%f1,	%f9
	fsrc1	%f6,	%f10
	bgu	loop_2566
	sra	%l2,	%l4,	%g4
	stw	%o6,	[%l7 + 0x44]
	stw	%i6,	[%l7 + 0x70]
loop_2566:
	ba,a,pt	%xcc,	loop_2567
	ldub	[%l7 + 0x14],	%i2
	brlz,a	%i5,	loop_2568
	stb	%l0,	[%l7 + 0x14]
loop_2567:
	brnz,a	%l5,	loop_2569
	fxnor	%f10,	%f6,	%f14
loop_2568:
	fbug	%fcc0,	loop_2570
	call	loop_2571
loop_2569:
	bvc,a,pt	%xcc,	loop_2572
	fsrc2s	%f3,	%f9
loop_2570:
	taddcc	%i1,	%o5,	%i4
loop_2571:
	faligndata	%f8,	%f6,	%f2
loop_2572:
	fors	%f12,	%f5,	%f11
	fornot1	%f4,	%f2,	%f12
	std	%f12,	[%l7 + 0x38]
	stx	%o1,	[%l7 + 0x30]
	fbe	%fcc3,	loop_2573
	tgu	%xcc,	0x4
	fbn,a	%fcc0,	loop_2574
	lduw	[%l7 + 0x08],	%o0
loop_2573:
	smulcc	%o7,	0x0117,	%i7
	st	%f8,	[%l7 + 0x34]
loop_2574:
	xnorcc	%g6,	%g2,	%o3
	sth	%g1,	[%l7 + 0x0E]
	udivcc	%i0,	0x12A9,	%g3
	bcs,pn	%xcc,	loop_2575
	fbule,a	%fcc2,	loop_2576
	fmul8x16al	%f14,	%f15,	%f0
	fbg,a	%fcc3,	loop_2577
loop_2575:
	sdivx	%l3,	0x14E7,	%o4
loop_2576:
	edge32l	%l6,	%g7,	%g5
	mulx	%l1,	0x0620,	%o2
loop_2577:
	stw	%l2,	[%l7 + 0x18]
	stb	%l4,	[%l7 + 0x1B]
	ldub	[%l7 + 0x7C],	%g4
	fbe	%fcc2,	loop_2578
	siam	0x0
	fmovda	%xcc,	%f3,	%f14
	array16	%o6,	%i6,	%i2
loop_2578:
	ldd	[%l7 + 0x08],	%f8
	fbn,a	%fcc2,	loop_2579
	movvc	%icc,	%i3,	%l0
	movcs	%icc,	%i5,	%l5
	fble,a	%fcc2,	loop_2580
loop_2579:
	fmovrsgz	%o5,	%f13,	%f9
	tl	%icc,	0x1
	fandnot2	%f4,	%f4,	%f2
loop_2580:
	fmovdle	%xcc,	%f0,	%f6
	movvs	%xcc,	%i4,	%i1
	lduw	[%l7 + 0x34],	%o1
	movpos	%xcc,	%o7,	%o0
	fmovsvs	%icc,	%f4,	%f13
	stw	%g6,	[%l7 + 0x5C]
	brz	%i7,	loop_2581
	fpadd16	%f8,	%f8,	%f8
	fandnot2s	%f3,	%f4,	%f0
	fpsub16s	%f7,	%f3,	%f0
loop_2581:
	fmul8x16al	%f1,	%f10,	%f10
	fornot1	%f0,	%f4,	%f8
	subcc	%o3,	0x1D45,	%g2
	ldsw	[%l7 + 0x5C],	%g1
	fcmpes	%fcc2,	%f9,	%f9
	fmul8x16al	%f5,	%f10,	%f12
	ldsw	[%l7 + 0x14],	%g3
	addcc	%i0,	%o4,	%l3
	sra	%l6,	0x0C,	%g7
	fbe,a	%fcc1,	loop_2582
	fpack16	%f8,	%f10
	fmovrslz	%l1,	%f7,	%f12
	ldd	[%l7 + 0x08],	%f8
loop_2582:
	st	%f10,	[%l7 + 0x48]
	fmovdge	%xcc,	%f9,	%f3
	addc	%g5,	0x1847,	%l2
	nop
	setx loop_2583, %l0, %l1
	jmpl %l1, %o2
	fxor	%f6,	%f12,	%f8
	bneg,a,pn	%xcc,	loop_2584
	orncc	%g4,	%l4,	%o6
loop_2583:
	mulscc	%i6,	%i2,	%i3
	tvc	%xcc,	0x5
loop_2584:
	fmovse	%xcc,	%f1,	%f5
	std	%f12,	[%l7 + 0x68]
	ldd	[%l7 + 0x28],	%f0
	movcc	%icc,	%i5,	%l5
	edge32	%l0,	%o5,	%i4
	mova	%xcc,	%o1,	%o7
	taddcctv	%o0,	0x184B,	%i1
	fbge,a	%fcc2,	loop_2585
	lduw	[%l7 + 0x2C],	%i7
	addc	%o3,	%g2,	%g6
	stx	%g3,	[%l7 + 0x48]
loop_2585:
	fsrc2	%f8,	%f12
	ldsh	[%l7 + 0x5A],	%i0
	tge	%icc,	0x4
	ld	[%l7 + 0x0C],	%f6
	fmovdvs	%icc,	%f12,	%f2
	stb	%g1,	[%l7 + 0x15]
	ldsw	[%l7 + 0x44],	%o4
	st	%f4,	[%l7 + 0x2C]
	brgez,a	%l6,	loop_2586
	fpsub32s	%f15,	%f13,	%f13
	sllx	%g7,	0x07,	%l3
	ldsb	[%l7 + 0x09],	%g5
loop_2586:
	tvs	%xcc,	0x4
	tn	%icc,	0x0
	fmul8x16al	%f15,	%f14,	%f12
	ta	%icc,	0x3
	fmul8ulx16	%f4,	%f0,	%f4
	be	loop_2587
	sth	%l1,	[%l7 + 0x74]
	add	%l2,	0x03D3,	%o2
	fnot1s	%f14,	%f1
loop_2587:
	sethi	0x0B73,	%g4
	stx	%o6,	[%l7 + 0x30]
	fmuld8sux16	%f3,	%f12,	%f2
	fcmpeq16	%f14,	%f6,	%i6
	tne	%xcc,	0x3
	fornot1s	%f3,	%f3,	%f0
	smulcc	%l4,	%i3,	%i2
	fpsub16s	%f14,	%f4,	%f9
	st	%f15,	[%l7 + 0x1C]
	brlz	%i5,	loop_2588
	umulcc	%l0,	0x0539,	%l5
	ldd	[%l7 + 0x30],	%f6
	stx	%i4,	[%l7 + 0x58]
loop_2588:
	std	%f10,	[%l7 + 0x68]
	orn	%o1,	%o5,	%o7
	ldx	[%l7 + 0x28],	%i1
	movgu	%icc,	%i7,	%o0
	st	%f13,	[%l7 + 0x74]
	stw	%o3,	[%l7 + 0x34]
	movrlez	%g2,	0x360,	%g3
	tneg	%xcc,	0x4
	fors	%f1,	%f13,	%f14
	fsrc1	%f14,	%f14
	fbule,a	%fcc1,	loop_2589
	brlez	%g6,	loop_2590
	ba,pt	%xcc,	loop_2591
	stb	%g1,	[%l7 + 0x13]
loop_2589:
	ba,pn	%icc,	loop_2592
loop_2590:
	brlz,a	%o4,	loop_2593
loop_2591:
	st	%f4,	[%l7 + 0x6C]
	fexpand	%f9,	%f6
loop_2592:
	subcc	%i0,	%l6,	%l3
loop_2593:
	nop
	setx loop_2594, %l0, %l1
	jmpl %l1, %g5
	movne	%icc,	%l1,	%l2
	udivcc	%g7,	0x05E8,	%o2
	tneg	%xcc,	0x0
loop_2594:
	fbug,a	%fcc1,	loop_2595
	or	%g4,	%i6,	%o6
	ldx	[%l7 + 0x70],	%i3
	xnorcc	%i2,	0x0FA3,	%l4
loop_2595:
	fcmped	%fcc2,	%f6,	%f0
	andn	%l0,	0x023B,	%i5
	bl,pt	%xcc,	loop_2596
	fnot1s	%f9,	%f5
	fmul8sux16	%f14,	%f14,	%f12
	sth	%l5,	[%l7 + 0x24]
loop_2596:
	fmovrdlz	%i4,	%f0,	%f4
	taddcc	%o1,	%o7,	%o5
	movrlez	%i7,	%i1,	%o3
	ldsw	[%l7 + 0x38],	%o0
	sdivcc	%g2,	0x199C,	%g3
	fxors	%f7,	%f13,	%f1
	movrgez	%g6,	%g1,	%o4
	movge	%icc,	%i0,	%l3
	be,a	%xcc,	loop_2597
	edge8n	%l6,	%g5,	%l1
	stw	%g7,	[%l7 + 0x48]
	andcc	%l2,	0x1D41,	%g4
loop_2597:
	fmovdneg	%xcc,	%f2,	%f8
	fandnot2	%f4,	%f4,	%f10
	stx	%i6,	[%l7 + 0x38]
	xor	%o6,	%i3,	%o2
	lduw	[%l7 + 0x18],	%l4
	brgz,a	%l0,	loop_2598
	sllx	%i2,	%l5,	%i5
	edge32n	%i4,	%o7,	%o5
	edge8ln	%o1,	%i7,	%i1
loop_2598:
	stb	%o0,	[%l7 + 0x70]
	ld	[%l7 + 0x34],	%f3
	bg	%xcc,	loop_2599
	tvc	%xcc,	0x3
	fbue	%fcc1,	loop_2600
	edge16	%o3,	%g3,	%g6
loop_2599:
	fsrc2	%f12,	%f4
	xnor	%g2,	0x1EFA,	%g1
loop_2600:
	addc	%o4,	0x1C25,	%l3
	fcmpd	%fcc3,	%f12,	%f0
	ldd	[%l7 + 0x48],	%f8
	fmul8ulx16	%f12,	%f0,	%f6
	ld	[%l7 + 0x1C],	%f6
	fmovdge	%icc,	%f5,	%f9
	stb	%i0,	[%l7 + 0x15]
	fones	%f6
	ldub	[%l7 + 0x0B],	%l6
	fmovdleu	%xcc,	%f4,	%f11
	udivcc	%l1,	0x131A,	%g7
	srlx	%g5,	0x0A,	%g4
	fbge	%fcc0,	loop_2601
	subc	%l2,	%o6,	%i6
	ldsb	[%l7 + 0x0A],	%o2
	fblg	%fcc2,	loop_2602
loop_2601:
	taddcc	%l4,	0x0832,	%l0
	srlx	%i2,	0x12,	%l5
	fmovscs	%icc,	%f0,	%f1
loop_2602:
	ld	[%l7 + 0x38],	%f11
	fmul8x16al	%f3,	%f13,	%f2
	ldd	[%l7 + 0x10],	%f4
	popc	0x1E8C,	%i5
	ldd	[%l7 + 0x60],	%f14
	add	%i3,	0x0D85,	%i4
	fmovrdlez	%o5,	%f6,	%f12
	lduw	[%l7 + 0x24],	%o7
	fmovsl	%icc,	%f12,	%f4
	fbug,a	%fcc0,	loop_2603
	nop
	setx loop_2604, %l0, %l1
	jmpl %l1, %o1
	fmovdge	%xcc,	%f9,	%f5
	movgu	%icc,	%i1,	%o0
loop_2603:
	ldsb	[%l7 + 0x3D],	%i7
loop_2604:
	movge	%xcc,	%o3,	%g6
	smul	%g2,	%g3,	%g1
	fblg,a	%fcc2,	loop_2605
	edge16	%l3,	%i0,	%l6
	brgez,a	%o4,	loop_2606
	ldsh	[%l7 + 0x46],	%g7
loop_2605:
	for	%f12,	%f4,	%f10
	fblg	%fcc3,	loop_2607
loop_2606:
	ldx	[%l7 + 0x40],	%g5
	ldd	[%l7 + 0x48],	%f10
	fnot1s	%f4,	%f1
loop_2607:
	movleu	%icc,	%l1,	%l2
	fors	%f3,	%f0,	%f9
	stb	%o6,	[%l7 + 0x66]
	fmovrsne	%i6,	%f6,	%f1
	fmovsa	%xcc,	%f13,	%f6
	mulscc	%o2,	%l4,	%l0
	ble,a	loop_2608
	brnz,a	%i2,	loop_2609
	fcmps	%fcc3,	%f6,	%f1
	ldsw	[%l7 + 0x48],	%l5
loop_2608:
	std	%f2,	[%l7 + 0x10]
loop_2609:
	bneg,a,pn	%xcc,	loop_2610
	fmovdcc	%icc,	%f7,	%f11
	movleu	%xcc,	%g4,	%i5
	ldsb	[%l7 + 0x69],	%i3
loop_2610:
	ldsb	[%l7 + 0x0D],	%i4
	fnand	%f10,	%f12,	%f4
	stx	%o5,	[%l7 + 0x78]
	faligndata	%f6,	%f14,	%f0
	fpadd16s	%f14,	%f4,	%f2
	lduw	[%l7 + 0x78],	%o1
	edge16n	%i1,	%o7,	%o0
	movg	%icc,	%i7,	%g6
	fpsub16s	%f13,	%f9,	%f7
	be,a	%xcc,	loop_2611
	ldsw	[%l7 + 0x2C],	%o3
	alignaddrl	%g3,	%g2,	%l3
	movn	%icc,	%g1,	%i0
loop_2611:
	umulcc	%o4,	0x1601,	%l6
	stw	%g7,	[%l7 + 0x10]
	stx	%g5,	[%l7 + 0x58]
	fmovsvc	%xcc,	%f12,	%f2
	fnand	%f14,	%f14,	%f14
	std	%f14,	[%l7 + 0x08]
	fsrc2	%f0,	%f14
	sth	%l1,	[%l7 + 0x46]
	fexpand	%f7,	%f12
	fbug,a	%fcc0,	loop_2612
	movvs	%xcc,	%l2,	%o6
	mulscc	%i6,	0x10D8,	%o2
	fmovrde	%l0,	%f2,	%f12
loop_2612:
	fands	%f5,	%f3,	%f1
	movre	%l4,	0x0C1,	%l5
	st	%f12,	[%l7 + 0x58]
	edge32ln	%i2,	%g4,	%i3
	lduh	[%l7 + 0x14],	%i4
	edge32ln	%i5,	%o1,	%i1
	edge16ln	%o7,	%o5,	%i7
	fmovrdgez	%g6,	%f6,	%f0
	fba	%fcc3,	loop_2613
	fmovdge	%xcc,	%f12,	%f10
	ldub	[%l7 + 0x33],	%o3
	fnegd	%f14,	%f8
loop_2613:
	fmovdn	%icc,	%f1,	%f12
	nop
	setx loop_2614, %l0, %l1
	jmpl %l1, %g3
	bvs,a,pt	%xcc,	loop_2615
	brgz	%g2,	loop_2616
	fmovse	%xcc,	%f3,	%f13
loop_2614:
	ldsw	[%l7 + 0x54],	%o0
loop_2615:
	fmovscs	%icc,	%f12,	%f14
loop_2616:
	fbuge,a	%fcc2,	loop_2617
	fmovspos	%xcc,	%f9,	%f13
	fmovdcs	%xcc,	%f10,	%f13
	subcc	%l3,	%g1,	%i0
loop_2617:
	tcc	%icc,	0x1
	fzero	%f2
	std	%f12,	[%l7 + 0x60]
	fbl,a	%fcc1,	loop_2618
	fnot1	%f14,	%f12
	movre	%o4,	%l6,	%g7
	fabss	%f13,	%f13
loop_2618:
	sth	%l1,	[%l7 + 0x34]
	ldsh	[%l7 + 0x6C],	%g5
	lduh	[%l7 + 0x1C],	%o6
	std	%f8,	[%l7 + 0x28]
	fmovrdne	%i6,	%f12,	%f12
	std	%f0,	[%l7 + 0x08]
	fbne,a	%fcc2,	loop_2619
	ldsh	[%l7 + 0x34],	%l2
	ldsh	[%l7 + 0x24],	%l0
	nop
	setx loop_2620, %l0, %l1
	jmpl %l1, %o2
loop_2619:
	fnands	%f6,	%f4,	%f15
	tcc	%icc,	0x5
	mova	%icc,	%l4,	%i2
loop_2620:
	xorcc	%g4,	0x1AC1,	%i3
	bshuffle	%f12,	%f8,	%f12
	bl,pn	%icc,	loop_2621
	ldub	[%l7 + 0x12],	%l5
	stb	%i4,	[%l7 + 0x46]
	sth	%o1,	[%l7 + 0x30]
loop_2621:
	sth	%i1,	[%l7 + 0x3A]
	movcs	%icc,	%i5,	%o5
	sth	%i7,	[%l7 + 0x2A]
	sth	%o7,	[%l7 + 0x46]
	movge	%xcc,	%g6,	%o3
	stw	%g3,	[%l7 + 0x64]
	mulx	%o0,	0x0FE6,	%g2
	fmuld8sux16	%f5,	%f8,	%f12
	lduw	[%l7 + 0x1C],	%l3
	ldd	[%l7 + 0x38],	%f10
	movrne	%g1,	0x159,	%i0
	edge8	%l6,	%g7,	%o4
	fcmpgt16	%f10,	%f2,	%g5
	bn	loop_2622
	movneg	%icc,	%l1,	%o6
	movrlez	%i6,	%l0,	%l2
	edge16	%l4,	%o2,	%i2
loop_2622:
	stw	%i3,	[%l7 + 0x24]
	fmovrdgez	%l5,	%f4,	%f0
	bgu,pn	%icc,	loop_2623
	edge16	%i4,	%g4,	%i1
	lduw	[%l7 + 0x10],	%o1
	xorcc	%i5,	0x0E98,	%o5
loop_2623:
	srax	%i7,	0x07,	%g6
	fabsd	%f6,	%f2
	bg,a	%xcc,	loop_2624
	srlx	%o7,	%o3,	%o0
	te	%xcc,	0x3
	brgz	%g2,	loop_2625
loop_2624:
	fnors	%f0,	%f1,	%f15
	orn	%l3,	0x1268,	%g1
	subcc	%i0,	%g3,	%l6
loop_2625:
	fmovs	%f1,	%f13
	movgu	%icc,	%g7,	%g5
	taddcctv	%o4,	%o6,	%l1
	fandnot2s	%f13,	%f2,	%f14
	lduw	[%l7 + 0x68],	%l0
	fcmple32	%f12,	%f12,	%i6
	movg	%xcc,	%l4,	%l2
	array32	%i2,	%o2,	%l5
	fmovdle	%xcc,	%f8,	%f8
	fmovdcc	%icc,	%f13,	%f8
	fabss	%f11,	%f2
	sllx	%i4,	0x05,	%i3
	fmovsg	%xcc,	%f11,	%f3
	ldx	[%l7 + 0x08],	%i1
	ldsh	[%l7 + 0x10],	%o1
	and	%g4,	0x0BC6,	%i5
	fandnot2	%f2,	%f12,	%f0
	tvc	%xcc,	0x2
	fxnors	%f4,	%f9,	%f10
	popc	0x06CE,	%o5
	stw	%i7,	[%l7 + 0x5C]
	ld	[%l7 + 0x44],	%f11
	andn	%g6,	%o7,	%o0
	ldsw	[%l7 + 0x28],	%o3
	lduw	[%l7 + 0x30],	%l3
	movn	%icc,	%g1,	%g2
	st	%f11,	[%l7 + 0x50]
	ldsw	[%l7 + 0x54],	%i0
	fmovrsgz	%l6,	%f10,	%f3
	fnot2s	%f1,	%f12
	fpmerge	%f15,	%f14,	%f4
	sllx	%g3,	%g5,	%o4
	xor	%o6,	0x176A,	%l1
	movleu	%xcc,	%l0,	%g7
	stw	%i6,	[%l7 + 0x70]
	ldd	[%l7 + 0x70],	%f8
	st	%f13,	[%l7 + 0x5C]
	fandnot2s	%f11,	%f6,	%f6
	ldx	[%l7 + 0x40],	%l4
	lduw	[%l7 + 0x2C],	%i2
	movneg	%icc,	%o2,	%l5
	stw	%i4,	[%l7 + 0x74]
	fcmple32	%f0,	%f12,	%i3
	call	loop_2626
	brlz,a	%i1,	loop_2627
	ldd	[%l7 + 0x30],	%f6
	stw	%o1,	[%l7 + 0x0C]
loop_2626:
	fcmple16	%f6,	%f0,	%l2
loop_2627:
	add	%g4,	%i5,	%o5
	ld	[%l7 + 0x18],	%f6
	fmovdvc	%xcc,	%f1,	%f14
	fcmpd	%fcc3,	%f2,	%f12
	bl,pn	%icc,	loop_2628
	fmovrse	%i7,	%f8,	%f14
	movpos	%icc,	%o7,	%g6
	fzeros	%f8
loop_2628:
	fmovsg	%icc,	%f13,	%f1
	fcmpd	%fcc0,	%f6,	%f12
	lduw	[%l7 + 0x4C],	%o0
	fmovsl	%icc,	%f9,	%f6
	fabsd	%f12,	%f6
	fornot1s	%f4,	%f9,	%f14
	movvc	%icc,	%l3,	%o3
	fornot2s	%f12,	%f6,	%f11
	bneg,a,pt	%xcc,	loop_2629
	sth	%g1,	[%l7 + 0x4E]
	fmovdgu	%icc,	%f0,	%f6
	ldub	[%l7 + 0x35],	%g2
loop_2629:
	fmovsgu	%icc,	%f0,	%f1
	fmovdle	%icc,	%f6,	%f8
	fmovsgu	%icc,	%f6,	%f2
	fmovsneg	%icc,	%f14,	%f4
	stb	%i0,	[%l7 + 0x47]
	std	%f2,	[%l7 + 0x70]
	stx	%g3,	[%l7 + 0x20]
	sra	%l6,	0x07,	%o4
	andncc	%g5,	%o6,	%l0
	fmovdge	%xcc,	%f11,	%f8
	ldsw	[%l7 + 0x24],	%l1
	brnz	%g7,	loop_2630
	movpos	%icc,	%i6,	%l4
	fcmped	%fcc3,	%f6,	%f10
	edge16n	%i2,	%l5,	%o2
loop_2630:
	bcc,pn	%xcc,	loop_2631
	ldsh	[%l7 + 0x4A],	%i3
	fmovrdlz	%i4,	%f6,	%f10
	stw	%o1,	[%l7 + 0x0C]
loop_2631:
	sth	%i1,	[%l7 + 0x0E]
	srlx	%g4,	%l2,	%i5
	tvc	%xcc,	0x5
	andn	%i7,	%o5,	%g6
	bne,a	loop_2632
	fmovrdgz	%o7,	%f10,	%f4
	stx	%o0,	[%l7 + 0x78]
	ld	[%l7 + 0x44],	%f7
loop_2632:
	taddcctv	%o3,	0x03A8,	%l3
	fbl,a	%fcc1,	loop_2633
	ldsb	[%l7 + 0x3D],	%g1
	fmovdne	%xcc,	%f12,	%f14
	fones	%f6
loop_2633:
	fornot1	%f6,	%f12,	%f10
	ldsw	[%l7 + 0x3C],	%g2
	fmovdcc	%xcc,	%f4,	%f14
	fmovrslez	%i0,	%f10,	%f13
	srlx	%l6,	%g3,	%g5
	ld	[%l7 + 0x30],	%f2
	fxnor	%f0,	%f6,	%f6
	bg,pn	%icc,	loop_2634
	srl	%o6,	0x19,	%l0
	ld	[%l7 + 0x34],	%f14
	edge32l	%o4,	%g7,	%l1
loop_2634:
	bcs,a	loop_2635
	tn	%icc,	0x0
	fandnot2	%f10,	%f6,	%f8
	and	%l4,	%i6,	%i2
loop_2635:
	sth	%l5,	[%l7 + 0x36]
	fpmerge	%f11,	%f12,	%f14
	ldd	[%l7 + 0x10],	%f8
	fornot1	%f2,	%f8,	%f4
	brz,a	%o2,	loop_2636
	fandnot2s	%f0,	%f10,	%f5
	sth	%i3,	[%l7 + 0x1E]
	movg	%xcc,	%i4,	%o1
loop_2636:
	sth	%g4,	[%l7 + 0x2A]
	lduh	[%l7 + 0x7E],	%l2
	for	%f4,	%f8,	%f0
	ldd	[%l7 + 0x08],	%f0
	fmul8ulx16	%f4,	%f12,	%f10
	lduw	[%l7 + 0x1C],	%i1
	fmovspos	%icc,	%f0,	%f4
	movgu	%icc,	%i7,	%i5
	fnegs	%f10,	%f15
	sth	%o5,	[%l7 + 0x1C]
	movrgz	%g6,	0x1A4,	%o0
	movvc	%xcc,	%o3,	%l3
	bleu,a	%icc,	loop_2637
	movrgz	%g1,	%o7,	%i0
	movg	%icc,	%g2,	%g3
	tvc	%xcc,	0x1
loop_2637:
	ldsw	[%l7 + 0x4C],	%l6
	fmovs	%f9,	%f11
	edge32	%g5,	%l0,	%o4
	sth	%o6,	[%l7 + 0x16]
	orcc	%l1,	0x16B2,	%l4
	ble,pt	%xcc,	loop_2638
	st	%f9,	[%l7 + 0x44]
	fble	%fcc3,	loop_2639
	fmovdge	%icc,	%f7,	%f11
loop_2638:
	bvs,pt	%xcc,	loop_2640
	sth	%g7,	[%l7 + 0x0C]
loop_2639:
	tcc	%icc,	0x2
	stw	%i2,	[%l7 + 0x40]
loop_2640:
	fone	%f10
	andcc	%i6,	%o2,	%i3
	tpos	%xcc,	0x7
	fsrc1	%f0,	%f14
	nop
	setx loop_2641, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	nop
	setx loop_2642, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	lduw	[%l7 + 0x64],	%l5
	fcmpeq32	%f4,	%f12,	%o1
loop_2641:
	fmovde	%icc,	%f11,	%f15
loop_2642:
	bcc	%icc,	loop_2643
	fmovrsne	%g4,	%f7,	%f1
	fornot1s	%f1,	%f9,	%f15
	stw	%i4,	[%l7 + 0x7C]
loop_2643:
	fxor	%f10,	%f2,	%f4
	add	%l2,	%i1,	%i5
	ldsb	[%l7 + 0x15],	%o5
	be,a	loop_2644
	tle	%icc,	0x0
	lduw	[%l7 + 0x44],	%g6
	edge32	%i7,	%o3,	%l3
loop_2644:
	ldx	[%l7 + 0x50],	%g1
	fmovsl	%xcc,	%f14,	%f11
	fzero	%f10
	andn	%o7,	0x1935,	%i0
	fbug,a	%fcc1,	loop_2645
	sth	%g2,	[%l7 + 0x4A]
	fmovdn	%icc,	%f10,	%f14
	nop
	setx loop_2646, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_2645:
	stw	%o0,	[%l7 + 0x78]
	fcmpgt32	%f12,	%f2,	%l6
	movg	%xcc,	%g5,	%g3
loop_2646:
	lduw	[%l7 + 0x24],	%l0
	fxnor	%f8,	%f4,	%f12
	ldd	[%l7 + 0x30],	%f10
	movrlz	%o4,	0x3DD,	%l1
	fbule,a	%fcc3,	loop_2647
	ldub	[%l7 + 0x6E],	%l4
	fmovdcc	%xcc,	%f7,	%f11
	lduw	[%l7 + 0x2C],	%o6
loop_2647:
	stb	%g7,	[%l7 + 0x6A]
	fbu,a	%fcc2,	loop_2648
	fmovdcs	%xcc,	%f3,	%f1
	fmovda	%xcc,	%f12,	%f13
	fmovdleu	%icc,	%f6,	%f14
loop_2648:
	st	%f1,	[%l7 + 0x5C]
	te	%icc,	0x2
	stw	%i6,	[%l7 + 0x48]
	ldx	[%l7 + 0x38],	%o2
	te	%icc,	0x6
	tvs	%icc,	0x4
	orncc	%i3,	%i2,	%l5
	fbn,a	%fcc0,	loop_2649
	ldsw	[%l7 + 0x50],	%o1
	ldx	[%l7 + 0x48],	%i4
	std	%f8,	[%l7 + 0x20]
loop_2649:
	ld	[%l7 + 0x18],	%f14
	fmovscc	%icc,	%f3,	%f15
	fmuld8sux16	%f6,	%f14,	%f4
	ld	[%l7 + 0x20],	%f3
	fble	%fcc0,	loop_2650
	fbne,a	%fcc1,	loop_2651
	array32	%l2,	%i1,	%i5
	edge32ln	%g4,	%g6,	%o5
loop_2650:
	tcc	%icc,	0x1
loop_2651:
	brlez,a	%i7,	loop_2652
	movvc	%icc,	%o3,	%l3
	ldd	[%l7 + 0x50],	%f12
	tg	%xcc,	0x0
loop_2652:
	std	%f8,	[%l7 + 0x78]
	fnand	%f12,	%f12,	%f6
	fmovsge	%icc,	%f5,	%f5
	lduh	[%l7 + 0x7C],	%g1
	fpadd16s	%f12,	%f6,	%f9
	move	%icc,	%i0,	%g2
	ldd	[%l7 + 0x38],	%f0
	fnot2s	%f8,	%f15
	bn,pt	%icc,	loop_2653
	lduh	[%l7 + 0x16],	%o0
	ldsb	[%l7 + 0x3E],	%l6
	tsubcc	%g5,	%o7,	%l0
loop_2653:
	std	%f14,	[%l7 + 0x60]
	fabss	%f8,	%f9
	lduw	[%l7 + 0x38],	%o4
	movle	%xcc,	%g3,	%l1
	subccc	%o6,	%l4,	%i6
	fpack16	%f8,	%f12
	sth	%g7,	[%l7 + 0x18]
	ldd	[%l7 + 0x18],	%f4
	bl,pn	%icc,	loop_2654
	stw	%i3,	[%l7 + 0x40]
	ldx	[%l7 + 0x70],	%o2
	fmovrse	%i2,	%f0,	%f5
loop_2654:
	fpsub16	%f12,	%f14,	%f14
	sth	%l5,	[%l7 + 0x1E]
	fmul8x16	%f9,	%f14,	%f4
	stb	%i4,	[%l7 + 0x30]
	fabsd	%f0,	%f2
	stb	%l2,	[%l7 + 0x4E]
	ldx	[%l7 + 0x60],	%o1
	subccc	%i1,	0x1F9E,	%i5
	ldsb	[%l7 + 0x66],	%g4
	ld	[%l7 + 0x70],	%f10
	nop
	setx loop_2655, %l0, %l1
	jmpl %l1, %o5
	ld	[%l7 + 0x1C],	%f3
	nop
	setx loop_2656, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fand	%f14,	%f12,	%f0
loop_2655:
	fmovrdlz	%i7,	%f6,	%f6
	fcmpes	%fcc0,	%f14,	%f12
loop_2656:
	ble,a,pt	%xcc,	loop_2657
	fbu	%fcc1,	loop_2658
	bshuffle	%f0,	%f4,	%f4
	ldub	[%l7 + 0x3F],	%g6
loop_2657:
	bneg,pt	%icc,	loop_2659
loop_2658:
	alignaddrl	%o3,	%l3,	%i0
	xnor	%g2,	%g1,	%l6
	andcc	%o0,	0x094E,	%g5
loop_2659:
	movcc	%icc,	%l0,	%o7
	fpack32	%f2,	%f12,	%f4
	lduw	[%l7 + 0x3C],	%g3
	fba	%fcc1,	loop_2660
	ldd	[%l7 + 0x58],	%f2
	lduw	[%l7 + 0x6C],	%o4
	srl	%o6,	0x02,	%l1
loop_2660:
	edge8	%i6,	%l4,	%g7
	be,a	%xcc,	loop_2661
	stb	%o2,	[%l7 + 0x77]
	tge	%xcc,	0x5
	fmul8x16	%f14,	%f2,	%f2
loop_2661:
	ldsh	[%l7 + 0x30],	%i3
	movrgz	%l5,	%i2,	%l2
	bne	%icc,	loop_2662
	bvs,pn	%icc,	loop_2663
	siam	0x4
	ldx	[%l7 + 0x18],	%i4
loop_2662:
	fxnors	%f2,	%f10,	%f13
loop_2663:
	ldsh	[%l7 + 0x24],	%i1
	stb	%i5,	[%l7 + 0x09]
	edge32	%o1,	%o5,	%g4
	fpackfix	%f2,	%f2
	udiv	%i7,	0x1CB4,	%o3
	bn,a	loop_2664
	fbl,a	%fcc2,	loop_2665
	brlez,a	%g6,	loop_2666
	sra	%i0,	0x03,	%l3
loop_2664:
	ld	[%l7 + 0x14],	%f15
loop_2665:
	fpsub16	%f0,	%f4,	%f8
loop_2666:
	lduh	[%l7 + 0x24],	%g2
	tvc	%icc,	0x6
	stw	%g1,	[%l7 + 0x3C]
	brlez	%l6,	loop_2667
	ba	%xcc,	loop_2668
	orcc	%o0,	0x0B68,	%g5
	bgu,a,pn	%xcc,	loop_2669
loop_2667:
	fsrc1s	%f4,	%f7
loop_2668:
	fandnot1s	%f10,	%f2,	%f1
	ba,pn	%icc,	loop_2670
loop_2669:
	fnot1	%f14,	%f2
	edge8n	%o7,	%g3,	%o4
	lduw	[%l7 + 0x48],	%o6
loop_2670:
	fmovdcs	%icc,	%f8,	%f1
	addc	%l1,	%l0,	%i6
	fzero	%f10
	sll	%l4,	0x0F,	%g7
	fpadd16	%f12,	%f14,	%f10
	brlez	%o2,	loop_2671
	orn	%i3,	%i2,	%l2
	udivx	%i4,	0x0B59,	%i1
	ldd	[%l7 + 0x60],	%f2
loop_2671:
	bcc,a,pn	%xcc,	loop_2672
	fandnot2s	%f5,	%f10,	%f11
	lduw	[%l7 + 0x24],	%l5
	addc	%o1,	%i5,	%g4
loop_2672:
	movpos	%icc,	%o5,	%i7
	stw	%o3,	[%l7 + 0x14]
	stb	%i0,	[%l7 + 0x4B]
	lduh	[%l7 + 0x62],	%l3
	fbn	%fcc0,	loop_2673
	lduw	[%l7 + 0x0C],	%g6
	st	%f8,	[%l7 + 0x28]
	be,pn	%icc,	loop_2674
loop_2673:
	ldsw	[%l7 + 0x38],	%g1
	ld	[%l7 + 0x7C],	%f15
	fmovrsne	%l6,	%f1,	%f9
loop_2674:
	fabsd	%f14,	%f4
	fmovda	%xcc,	%f8,	%f6
	sth	%o0,	[%l7 + 0x34]
	ldd	[%l7 + 0x30],	%f4
	udivcc	%g5,	0x1070,	%o7
	ldub	[%l7 + 0x17],	%g3
	orn	%o4,	%g2,	%o6
	brz	%l0,	loop_2675
	ldx	[%l7 + 0x30],	%l1
	bvs,a,pn	%icc,	loop_2676
	ldsb	[%l7 + 0x3A],	%i6
loop_2675:
	fbue	%fcc3,	loop_2677
	fbn	%fcc1,	loop_2678
loop_2676:
	fmovdge	%xcc,	%f2,	%f2
	faligndata	%f14,	%f2,	%f2
loop_2677:
	fxor	%f6,	%f14,	%f12
loop_2678:
	ldub	[%l7 + 0x2B],	%l4
	smulcc	%g7,	%i3,	%i2
	fcmpeq32	%f0,	%f0,	%l2
	edge16	%i4,	%i1,	%o2
	fmovdge	%icc,	%f14,	%f2
	fmovscc	%xcc,	%f7,	%f8
	fornot1	%f12,	%f0,	%f10
	taddcc	%l5,	%i5,	%o1
	st	%f2,	[%l7 + 0x48]
	fbe	%fcc3,	loop_2679
	movrlz	%g4,	%o5,	%o3
	tpos	%xcc,	0x0
	ldub	[%l7 + 0x15],	%i7
loop_2679:
	fmovdle	%xcc,	%f8,	%f6
	fpackfix	%f2,	%f2
	sdivx	%i0,	0x13A2,	%g6
	alignaddr	%l3,	%g1,	%o0
	fmuld8ulx16	%f4,	%f0,	%f8
	ldsw	[%l7 + 0x1C],	%g5
	st	%f12,	[%l7 + 0x40]
	fbug,a	%fcc0,	loop_2680
	lduh	[%l7 + 0x2C],	%l6
	fmovsge	%xcc,	%f6,	%f14
	fmovsgu	%xcc,	%f3,	%f7
loop_2680:
	ldx	[%l7 + 0x70],	%g3
	lduw	[%l7 + 0x30],	%o7
	fabss	%f2,	%f6
	lduh	[%l7 + 0x22],	%o4
	bneg,a	%icc,	loop_2681
	ldd	[%l7 + 0x38],	%f12
	sra	%g2,	%l0,	%o6
	ldx	[%l7 + 0x50],	%l1
loop_2681:
	tgu	%xcc,	0x1
	sdiv	%l4,	0x1159,	%i6
	fands	%f7,	%f2,	%f13
	smulcc	%i3,	0x028F,	%g7
	fsrc1	%f12,	%f4
	lduw	[%l7 + 0x2C],	%i2
	ldub	[%l7 + 0x64],	%l2
	brgez	%i1,	loop_2682
	fmovsle	%xcc,	%f8,	%f7
	add	%i4,	0x02A4,	%o2
	sra	%l5,	0x19,	%i5
loop_2682:
	fcmpd	%fcc2,	%f2,	%f12
	fabsd	%f8,	%f8
	movneg	%xcc,	%o1,	%g4
	fmovsvs	%icc,	%f3,	%f3
	fmovsa	%xcc,	%f12,	%f5
	mulx	%o5,	0x00FF,	%i7
	ldd	[%l7 + 0x50],	%f6
	fcmped	%fcc3,	%f14,	%f12
	fmuld8ulx16	%f9,	%f7,	%f8
	movrgez	%o3,	%g6,	%i0
	ldx	[%l7 + 0x10],	%g1
	fmovrsne	%o0,	%f15,	%f2
	tle	%xcc,	0x3
	st	%f1,	[%l7 + 0x60]
	fmovdge	%xcc,	%f13,	%f10
	tvc	%icc,	0x6
	ldx	[%l7 + 0x28],	%l3
	nop
	setx loop_2683, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmul8ulx16	%f10,	%f4,	%f14
	ld	[%l7 + 0x48],	%f4
	ldub	[%l7 + 0x4B],	%l6
loop_2683:
	mova	%xcc,	%g3,	%g5
	tg	%icc,	0x7
	bl,a,pt	%xcc,	loop_2684
	movrne	%o7,	0x258,	%o4
	fandnot2	%f6,	%f14,	%f6
	tsubcc	%g2,	0x10B6,	%o6
loop_2684:
	fornot2s	%f6,	%f13,	%f2
	fmovscc	%xcc,	%f4,	%f11
	sth	%l1,	[%l7 + 0x2A]
	fsrc1	%f14,	%f2
	movrlez	%l0,	%l4,	%i3
	ldd	[%l7 + 0x20],	%f10
	ldsb	[%l7 + 0x44],	%g7
	call	loop_2685
	ldsw	[%l7 + 0x40],	%i2
	fpadd16	%f8,	%f6,	%f10
	st	%f15,	[%l7 + 0x38]
loop_2685:
	movneg	%icc,	%l2,	%i6
	andn	%i4,	%i1,	%l5
	add	%o2,	0x1F87,	%i5
	fpadd16	%f0,	%f12,	%f12
	fmovdgu	%icc,	%f11,	%f7
	st	%f1,	[%l7 + 0x38]
	st	%f14,	[%l7 + 0x68]
	fpadd16s	%f5,	%f3,	%f0
	bgu,a	%xcc,	loop_2686
	fandnot2s	%f9,	%f6,	%f0
	ldsh	[%l7 + 0x16],	%o1
	stw	%o5,	[%l7 + 0x68]
loop_2686:
	xnor	%i7,	%g4,	%g6
	fpack16	%f6,	%f5
	std	%f4,	[%l7 + 0x60]
	bg,a	loop_2687
	ldx	[%l7 + 0x28],	%o3
	bshuffle	%f6,	%f2,	%f12
	fbule,a	%fcc2,	loop_2688
loop_2687:
	fmovsg	%icc,	%f11,	%f11
	edge8n	%i0,	%g1,	%l3
	nop
	setx loop_2689, %l0, %l1
	jmpl %l1, %o0
loop_2688:
	add	%l6,	%g3,	%g5
	fmovrdne	%o4,	%f14,	%f2
	fnot1	%f14,	%f14
loop_2689:
	fcmple16	%f6,	%f2,	%o7
	std	%f6,	[%l7 + 0x58]
	ldd	[%l7 + 0x30],	%f8
	tne	%xcc,	0x2
	sth	%g2,	[%l7 + 0x48]
	movrlz	%l1,	%o6,	%l4
	fpack16	%f2,	%f2
	fbule	%fcc3,	loop_2690
	lduw	[%l7 + 0x7C],	%l0
	std	%f4,	[%l7 + 0x48]
	fba,a	%fcc3,	loop_2691
loop_2690:
	fpmerge	%f14,	%f5,	%f14
	fmovsvs	%xcc,	%f2,	%f3
	nop
	setx loop_2692, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_2691:
	ld	[%l7 + 0x24],	%f9
	fbe,a	%fcc1,	loop_2693
	fmovsne	%xcc,	%f11,	%f10
loop_2692:
	fmovrdgz	%i3,	%f14,	%f14
	ld	[%l7 + 0x08],	%f9
loop_2693:
	fcmpd	%fcc1,	%f4,	%f0
	ldsb	[%l7 + 0x76],	%i2
	ldsb	[%l7 + 0x36],	%l2
	movgu	%xcc,	%g7,	%i6
	fba	%fcc0,	loop_2694
	bgu	%xcc,	loop_2695
	tle	%icc,	0x0
	for	%f14,	%f2,	%f12
loop_2694:
	lduw	[%l7 + 0x0C],	%i1
loop_2695:
	fmovscc	%icc,	%f11,	%f4
	fxnor	%f2,	%f0,	%f6
	be,a	%xcc,	loop_2696
	sth	%l5,	[%l7 + 0x5C]
	fbue,a	%fcc2,	loop_2697
	udivcc	%i4,	0x198F,	%i5
loop_2696:
	bleu,pn	%xcc,	loop_2698
	fpadd16s	%f3,	%f2,	%f14
loop_2697:
	movrne	%o2,	0x32E,	%o5
	fmovrsgez	%o1,	%f11,	%f8
loop_2698:
	fcmple32	%f10,	%f8,	%i7
	fmovsne	%xcc,	%f15,	%f1
	lduh	[%l7 + 0x08],	%g6
	ldsb	[%l7 + 0x63],	%o3
	tgu	%xcc,	0x5
	ldsh	[%l7 + 0x10],	%g4
	fmovdvs	%icc,	%f7,	%f13
	fmul8x16al	%f6,	%f13,	%f14
	movl	%xcc,	%g1,	%l3
	subccc	%o0,	0x15E8,	%i0
	fmovdvs	%xcc,	%f12,	%f14
	ldd	[%l7 + 0x28],	%f8
	edge16	%l6,	%g5,	%g3
	ldsb	[%l7 + 0x7B],	%o4
	ldub	[%l7 + 0x74],	%g2
	st	%f4,	[%l7 + 0x44]
	nop
	setx loop_2699, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	st	%f12,	[%l7 + 0x58]
	brlz,a	%l1,	loop_2700
	smulcc	%o7,	%o6,	%l0
loop_2699:
	fcmpne32	%f2,	%f12,	%i3
	addc	%l4,	%l2,	%i2
loop_2700:
	fbule	%fcc3,	loop_2701
	fbug,a	%fcc1,	loop_2702
	fbo,a	%fcc0,	loop_2703
	fmovde	%xcc,	%f12,	%f11
loop_2701:
	bvs	%xcc,	loop_2704
loop_2702:
	bneg	loop_2705
loop_2703:
	edge8l	%i6,	%i1,	%g7
	ld	[%l7 + 0x30],	%f0
loop_2704:
	fmovscs	%xcc,	%f11,	%f8
loop_2705:
	stx	%l5,	[%l7 + 0x50]
	fmovscc	%icc,	%f7,	%f9
	andncc	%i4,	%o2,	%i5
	fmovdcs	%icc,	%f4,	%f10
	fsrc2s	%f7,	%f10
	tgu	%xcc,	0x6
	fbue,a	%fcc1,	loop_2706
	sth	%o1,	[%l7 + 0x58]
	brnz,a	%o5,	loop_2707
	mova	%icc,	%g6,	%o3
loop_2706:
	fpadd32s	%f15,	%f0,	%f4
	fmovrsgez	%i7,	%f13,	%f13
loop_2707:
	fmovdle	%icc,	%f4,	%f4
	lduw	[%l7 + 0x08],	%g4
	ldub	[%l7 + 0x0C],	%l3
	fmovscc	%icc,	%f13,	%f5
	fmovdcs	%xcc,	%f13,	%f7
	ldsh	[%l7 + 0x0E],	%g1
	xorcc	%o0,	0x167C,	%i0
	ldx	[%l7 + 0x68],	%g5
	fnot2	%f14,	%f12
	brgez	%g3,	loop_2708
	add	%o4,	%l6,	%g2
	ldsb	[%l7 + 0x2D],	%l1
	nop
	setx loop_2709, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_2708:
	fxor	%f14,	%f8,	%f10
	umul	%o6,	0x0E33,	%o7
	fmovdneg	%xcc,	%f14,	%f15
loop_2709:
	fandnot1s	%f4,	%f11,	%f5
	brz,a	%i3,	loop_2710
	lduw	[%l7 + 0x2C],	%l4
	ldub	[%l7 + 0x33],	%l2
	xorcc	%l0,	0x16C5,	%i2
loop_2710:
	ld	[%l7 + 0x50],	%f9
	ldx	[%l7 + 0x30],	%i6
	ldub	[%l7 + 0x6B],	%i1
	edge8n	%g7,	%l5,	%o2
	alignaddrl	%i5,	%o1,	%o5
	sth	%g6,	[%l7 + 0x18]
	ldx	[%l7 + 0x28],	%i4
	fnot1s	%f1,	%f7
	fmovdvc	%xcc,	%f15,	%f3
	ldd	[%l7 + 0x78],	%f12
	fpsub16s	%f12,	%f8,	%f7
	sdiv	%i7,	0x13CB,	%g4
	nop
	setx loop_2711, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldd	[%l7 + 0x78],	%f10
	fmovsge	%xcc,	%f3,	%f6
	stb	%o3,	[%l7 + 0x55]
loop_2711:
	ldd	[%l7 + 0x20],	%f8
	umulcc	%g1,	%l3,	%o0
	orn	%g5,	%g3,	%o4
	ldsw	[%l7 + 0x54],	%l6
	andn	%i0,	%l1,	%o6
	fbne	%fcc2,	loop_2712
	nop
	setx loop_2713, %l0, %l1
	jmpl %l1, %g2
	fmovdleu	%xcc,	%f11,	%f6
	fmovd	%f8,	%f2
loop_2712:
	sethi	0x07B0,	%o7
loop_2713:
	fblg	%fcc0,	loop_2714
	fba,a	%fcc0,	loop_2715
	fornot1	%f2,	%f4,	%f10
	bgu	%icc,	loop_2716
loop_2714:
	movge	%icc,	%l4,	%l2
loop_2715:
	fbg	%fcc2,	loop_2717
	fabss	%f11,	%f8
loop_2716:
	fors	%f8,	%f12,	%f5
	fmovrslez	%i3,	%f1,	%f2
loop_2717:
	add	%l0,	0x077A,	%i6
	tle	%icc,	0x1
	lduh	[%l7 + 0x30],	%i2
	tsubcctv	%i1,	%l5,	%g7
	fbuge	%fcc3,	loop_2718
	fone	%f4
	fbg,a	%fcc1,	loop_2719
	std	%f12,	[%l7 + 0x48]
loop_2718:
	tsubcc	%o2,	%i5,	%o5
	fmul8x16au	%f5,	%f0,	%f0
loop_2719:
	fxors	%f12,	%f15,	%f0
	brlz,a	%o1,	loop_2720
	fpsub32	%f12,	%f14,	%f10
	stx	%i4,	[%l7 + 0x28]
	ldub	[%l7 + 0x6C],	%i7
loop_2720:
	ldsh	[%l7 + 0x44],	%g6
	sdivcc	%g4,	0x02AD,	%o3
	st	%f12,	[%l7 + 0x24]
	movvs	%xcc,	%g1,	%o0
	st	%f13,	[%l7 + 0x14]
	fmovs	%f1,	%f8
	xorcc	%g5,	0x0DDC,	%g3
	movleu	%icc,	%o4,	%l3
	udiv	%i0,	0x02EA,	%l1
	stb	%l6,	[%l7 + 0x21]
	ldub	[%l7 + 0x3F],	%o6
	array8	%o7,	%l4,	%g2
	fmovdne	%xcc,	%f0,	%f1
	st	%f5,	[%l7 + 0x14]
	fbne,a	%fcc2,	loop_2721
	mulx	%i3,	0x0B2A,	%l2
	fbg,a	%fcc3,	loop_2722
	ldd	[%l7 + 0x58],	%f12
loop_2721:
	edge16	%i6,	%l0,	%i1
	stw	%i2,	[%l7 + 0x64]
loop_2722:
	stb	%g7,	[%l7 + 0x19]
	tne	%icc,	0x7
	fmuld8sux16	%f11,	%f13,	%f2
	fone	%f14
	lduw	[%l7 + 0x28],	%l5
	tcc	%icc,	0x6
	addccc	%i5,	0x1B88,	%o5
	lduh	[%l7 + 0x68],	%o2
	addccc	%o1,	0x0D16,	%i7
	orn	%g6,	0x1E59,	%i4
	fxors	%f14,	%f9,	%f2
	sll	%g4,	%o3,	%g1
	sllx	%o0,	0x1D,	%g5
	move	%xcc,	%g3,	%l3
	movl	%xcc,	%i0,	%l1
	sth	%l6,	[%l7 + 0x3C]
	fbue,a	%fcc0,	loop_2723
	tvc	%icc,	0x5
	stw	%o6,	[%l7 + 0x70]
	tpos	%xcc,	0x2
loop_2723:
	fcmpeq16	%f14,	%f12,	%o4
	and	%l4,	%o7,	%i3
	fxors	%f0,	%f12,	%f12
	fmovsa	%icc,	%f14,	%f11
	ld	[%l7 + 0x40],	%f0
	fpack16	%f8,	%f1
	movrne	%l2,	0x0E5,	%i6
	tn	%icc,	0x7
	fmovrse	%g2,	%f14,	%f8
	lduh	[%l7 + 0x32],	%l0
	movcs	%xcc,	%i1,	%i2
	nop
	setx loop_2724, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	bn,a,pn	%icc,	loop_2725
	fnegd	%f14,	%f4
	fnot2s	%f14,	%f10
loop_2724:
	fcmpd	%fcc1,	%f2,	%f10
loop_2725:
	ldub	[%l7 + 0x6C],	%g7
	stb	%l5,	[%l7 + 0x7C]
	sdiv	%i5,	0x043C,	%o5
	fmovsg	%icc,	%f6,	%f15
	fmovrslz	%o2,	%f12,	%f1
	tgu	%xcc,	0x3
	fnot2	%f10,	%f6
	movrlz	%i7,	0x0C2,	%g6
	tcc	%icc,	0x7
	taddcctv	%i4,	%o1,	%g4
	bge	loop_2726
	fmovdpos	%xcc,	%f4,	%f15
	tpos	%xcc,	0x2
	fcmpeq16	%f6,	%f0,	%o3
loop_2726:
	ble,pn	%xcc,	loop_2727
	fones	%f9
	bg,pn	%xcc,	loop_2728
	movleu	%xcc,	%o0,	%g5
loop_2727:
	fmuld8ulx16	%f1,	%f4,	%f14
	sth	%g3,	[%l7 + 0x1E]
loop_2728:
	fmovs	%f10,	%f10
	stw	%l3,	[%l7 + 0x0C]
	stw	%i0,	[%l7 + 0x6C]
	fands	%f0,	%f5,	%f7
	stx	%g1,	[%l7 + 0x30]
	movleu	%xcc,	%l6,	%l1
	stx	%o6,	[%l7 + 0x78]
	fcmpes	%fcc2,	%f8,	%f9
	movne	%xcc,	%o4,	%l4
	sth	%o7,	[%l7 + 0x48]
	bgu,a	%icc,	loop_2729
	fandnot1s	%f6,	%f0,	%f6
	fnors	%f9,	%f2,	%f11
	fmovde	%icc,	%f9,	%f3
loop_2729:
	ldx	[%l7 + 0x38],	%i3
	subc	%l2,	%i6,	%l0
	movge	%xcc,	%g2,	%i1
	pdist	%f8,	%f4,	%f2
	fcmpd	%fcc0,	%f6,	%f4
	ldd	[%l7 + 0x08],	%f12
	andncc	%g7,	%i2,	%i5
	fbe,a	%fcc0,	loop_2730
	udiv	%l5,	0x0319,	%o5
	xnorcc	%o2,	%g6,	%i4
	stw	%o1,	[%l7 + 0x10]
loop_2730:
	lduh	[%l7 + 0x52],	%i7
	movn	%xcc,	%o3,	%o0
	movleu	%xcc,	%g5,	%g3
	fpadd16	%f6,	%f8,	%f6
	fxor	%f8,	%f12,	%f2
	tsubcc	%g4,	0x0768,	%l3
	edge8n	%i0,	%g1,	%l6
	fmovdle	%xcc,	%f9,	%f9
	fcmpes	%fcc1,	%f7,	%f9
	movgu	%icc,	%o6,	%o4
	bgu	%icc,	loop_2731
	popc	%l4,	%o7
	stw	%l1,	[%l7 + 0x54]
	lduw	[%l7 + 0x48],	%l2
loop_2731:
	fpadd32s	%f9,	%f0,	%f10
	ld	[%l7 + 0x18],	%f15
	fble,a	%fcc3,	loop_2732
	movrgez	%i6,	0x351,	%i3
	fnands	%f4,	%f2,	%f8
	movgu	%icc,	%g2,	%i1
loop_2732:
	fcmpes	%fcc1,	%f12,	%f15
	ldsh	[%l7 + 0x76],	%g7
	ldd	[%l7 + 0x58],	%f8
	udiv	%i2,	0x044D,	%i5
	ldd	[%l7 + 0x58],	%f14
	bcs,a,pt	%icc,	loop_2733
	fmovdge	%icc,	%f9,	%f4
	fba	%fcc1,	loop_2734
	fandnot1s	%f1,	%f14,	%f13
loop_2733:
	addccc	%l0,	0x0D93,	%l5
	tvc	%xcc,	0x0
loop_2734:
	ldd	[%l7 + 0x78],	%f8
	movgu	%xcc,	%o5,	%o2
	ldsb	[%l7 + 0x68],	%g6
	faligndata	%f0,	%f2,	%f0
	fmovdcc	%xcc,	%f13,	%f12
	fcmpeq32	%f12,	%f0,	%i4
	bne,a,pn	%xcc,	loop_2735
	array32	%o1,	%i7,	%o3
	fcmps	%fcc2,	%f9,	%f13
	udiv	%g5,	0x1360,	%o0
loop_2735:
	tl	%icc,	0x0
	movrlz	%g4,	%g3,	%i0
	fbg	%fcc1,	loop_2736
	fmovsleu	%xcc,	%f14,	%f2
	bn,a,pn	%xcc,	loop_2737
	fmovdneg	%xcc,	%f13,	%f12
loop_2736:
	lduw	[%l7 + 0x14],	%g1
	fbne,a	%fcc1,	loop_2738
loop_2737:
	brlz,a	%l6,	loop_2739
	siam	0x0
	srlx	%l3,	0x04,	%o6
loop_2738:
	movvc	%icc,	%o4,	%l4
loop_2739:
	fmovrsne	%o7,	%f7,	%f6
	call	loop_2740
	umulcc	%l1,	%i6,	%l2
	stb	%i3,	[%l7 + 0x1B]
	ldsb	[%l7 + 0x56],	%g2
loop_2740:
	movleu	%icc,	%g7,	%i1
	fmovdvc	%icc,	%f10,	%f3
	sth	%i2,	[%l7 + 0x12]
	fmovscc	%icc,	%f13,	%f10
	lduh	[%l7 + 0x68],	%l0
	fnot2	%f0,	%f12
	sdivcc	%i5,	0x149C,	%o5
	ldx	[%l7 + 0x10],	%o2
	fmul8sux16	%f14,	%f14,	%f12
	stw	%l5,	[%l7 + 0x50]
	edge16	%i4,	%o1,	%i7
	fmovrslez	%o3,	%f2,	%f2
	ldx	[%l7 + 0x68],	%g5
	movvs	%icc,	%o0,	%g6
	ldub	[%l7 + 0x37],	%g3
	std	%f12,	[%l7 + 0x40]
	fpsub32	%f6,	%f14,	%f4
	fnands	%f10,	%f11,	%f7
	ldx	[%l7 + 0x48],	%i0
	fpmerge	%f2,	%f15,	%f10
	fabss	%f10,	%f8
	ldsb	[%l7 + 0x74],	%g4
	stx	%g1,	[%l7 + 0x68]
	tn	%icc,	0x0
	be	loop_2741
	fmul8x16	%f0,	%f10,	%f8
	ldx	[%l7 + 0x08],	%l3
	edge8ln	%l6,	%o6,	%l4
loop_2741:
	fmovrsgez	%o7,	%f3,	%f8
	fmovdcs	%icc,	%f15,	%f6
	movrgez	%l1,	0x1F8,	%o4
	fandnot2s	%f3,	%f4,	%f6
	fmovscc	%xcc,	%f14,	%f15
	brgz,a	%i6,	loop_2742
	sth	%i3,	[%l7 + 0x7C]
	mulscc	%g2,	%l2,	%i1
	edge32	%i2,	%g7,	%l0
loop_2742:
	sdiv	%i5,	0x144B,	%o5
	subcc	%o2,	0x12CC,	%l5
	stw	%o1,	[%l7 + 0x48]
	ld	[%l7 + 0x40],	%f15
	sethi	0x00D2,	%i7
	ldx	[%l7 + 0x60],	%o3
	ldd	[%l7 + 0x08],	%f14
	stx	%g5,	[%l7 + 0x18]
	fcmpgt16	%f12,	%f10,	%i4
	alignaddr	%o0,	%g3,	%i0
	movcc	%xcc,	%g6,	%g1
	sth	%l3,	[%l7 + 0x54]
	std	%f6,	[%l7 + 0x60]
	edge32	%g4,	%l6,	%o6
	tsubcctv	%o7,	0x1A5C,	%l4
	movleu	%xcc,	%o4,	%i6
	ldd	[%l7 + 0x70],	%f10
	stx	%l1,	[%l7 + 0x48]
	tsubcctv	%i3,	0x19C5,	%l2
	ldsb	[%l7 + 0x7A],	%g2
	xor	%i2,	%i1,	%g7
	stb	%i5,	[%l7 + 0x11]
	fmovde	%icc,	%f11,	%f10
	fbule,a	%fcc2,	loop_2743
	ldd	[%l7 + 0x10],	%f8
	sdivcc	%o5,	0x13CF,	%o2
	fmovsneg	%icc,	%f1,	%f6
loop_2743:
	bvc,a	loop_2744
	stw	%l5,	[%l7 + 0x28]
	movcs	%icc,	%l0,	%o1
	fmuld8sux16	%f12,	%f2,	%f8
loop_2744:
	edge32n	%o3,	%i7,	%i4
	fmovscs	%icc,	%f9,	%f8
	stb	%o0,	[%l7 + 0x32]
	fmovrse	%g5,	%f9,	%f8
	subccc	%i0,	%g6,	%g3
	fmul8sux16	%f10,	%f4,	%f6
	fbue,a	%fcc1,	loop_2745
	fbule	%fcc3,	loop_2746
	fnot1	%f10,	%f8
	ld	[%l7 + 0x68],	%f13
loop_2745:
	ld	[%l7 + 0x20],	%f8
loop_2746:
	tcc	%xcc,	0x4
	tleu	%xcc,	0x4
	mulscc	%g1,	%g4,	%l3
	siam	0x4
	lduh	[%l7 + 0x08],	%o6
	fmovsa	%xcc,	%f8,	%f12
	sdiv	%o7,	0x1033,	%l4
	and	%l6,	0x09CC,	%o4
	fbuge,a	%fcc1,	loop_2747
	fble	%fcc1,	loop_2748
	bcs	%xcc,	loop_2749
	fcmpne16	%f2,	%f14,	%l1
loop_2747:
	movne	%xcc,	%i3,	%l2
loop_2748:
	stb	%g2,	[%l7 + 0x16]
loop_2749:
	edge16	%i2,	%i6,	%g7
	fcmpes	%fcc1,	%f5,	%f2
	ldd	[%l7 + 0x08],	%f12
	st	%f2,	[%l7 + 0x4C]
	ldd	[%l7 + 0x78],	%f4
	fone	%f6
	fbule,a	%fcc3,	loop_2750
	sll	%i5,	0x18,	%o5
	sllx	%i1,	0x02,	%o2
	tpos	%xcc,	0x3
loop_2750:
	fsrc2s	%f1,	%f10
	bg,a,pt	%xcc,	loop_2751
	fbe	%fcc2,	loop_2752
	fandnot2s	%f7,	%f10,	%f7
	brgez,a	%l5,	loop_2753
loop_2751:
	fbe,a	%fcc0,	loop_2754
loop_2752:
	sllx	%o1,	%l0,	%o3
	andn	%i4,	%i7,	%o0
loop_2753:
	tleu	%icc,	0x3
loop_2754:
	movle	%xcc,	%g5,	%i0
	movpos	%icc,	%g6,	%g1
	smulcc	%g3,	0x18A0,	%l3
	brnz	%g4,	loop_2755
	edge16ln	%o6,	%o7,	%l6
	ldsb	[%l7 + 0x08],	%o4
	ldsw	[%l7 + 0x54],	%l4
loop_2755:
	ld	[%l7 + 0x78],	%f1
	fpadd16	%f14,	%f10,	%f10
	fcmpes	%fcc1,	%f5,	%f8
	fmovdpos	%xcc,	%f11,	%f1
	lduw	[%l7 + 0x7C],	%l1
	ldx	[%l7 + 0x68],	%l2
	bshuffle	%f12,	%f8,	%f6
	edge8l	%g2,	%i2,	%i3
	fmovrsgz	%g7,	%f3,	%f2
	fandnot2	%f2,	%f6,	%f4
	fbuge	%fcc1,	loop_2756
	bgu	%xcc,	loop_2757
	ldsb	[%l7 + 0x1D],	%i5
	ldd	[%l7 + 0x20],	%f6
loop_2756:
	udiv	%i6,	0x1081,	%i1
loop_2757:
	st	%f14,	[%l7 + 0x6C]
	fmovse	%xcc,	%f11,	%f11
	fmovsne	%xcc,	%f8,	%f7
	tne	%xcc,	0x2
	fmovrdne	%o5,	%f10,	%f10
	fcmple32	%f2,	%f10,	%o2
	fmovdle	%icc,	%f1,	%f1
	fbl,a	%fcc1,	loop_2758
	fxnors	%f8,	%f10,	%f14
	subc	%l5,	%o1,	%o3
	ldsw	[%l7 + 0x34],	%l0
loop_2758:
	fmovdg	%icc,	%f0,	%f4
	fpsub32s	%f5,	%f9,	%f14
	fbue	%fcc0,	loop_2759
	ble	loop_2760
	fnegd	%f0,	%f2
	ldsw	[%l7 + 0x3C],	%i4
loop_2759:
	tgu	%xcc,	0x3
loop_2760:
	fmovsneg	%xcc,	%f12,	%f1
	ld	[%l7 + 0x34],	%f2
	lduh	[%l7 + 0x56],	%o0
	alignaddrl	%g5,	%i0,	%g6
	fbul,a	%fcc1,	loop_2761
	fmovdne	%xcc,	%f2,	%f12
	fbne,a	%fcc3,	loop_2762
	movleu	%xcc,	%i7,	%g3
loop_2761:
	fmovsne	%xcc,	%f15,	%f15
	st	%f8,	[%l7 + 0x5C]
loop_2762:
	fmovrdgez	%l3,	%f6,	%f10
	ldx	[%l7 + 0x10],	%g1
	fnor	%f6,	%f10,	%f2
	std	%f0,	[%l7 + 0x28]
	ldsh	[%l7 + 0x54],	%o6
	taddcc	%g4,	%l6,	%o7
	movg	%icc,	%l4,	%l1
	sethi	0x0985,	%o4
	edge32	%g2,	%l2,	%i3
	fandnot2	%f2,	%f8,	%f4
	movrne	%g7,	%i2,	%i6
	fmovsa	%icc,	%f5,	%f7
	lduh	[%l7 + 0x6A],	%i1
	stb	%i5,	[%l7 + 0x4C]
	fmul8x16au	%f5,	%f11,	%f2
	tcc	%icc,	0x2
	fbuge	%fcc2,	loop_2763
	fmovsvs	%icc,	%f13,	%f11
	ldd	[%l7 + 0x10],	%f0
	edge8	%o2,	%o5,	%o1
loop_2763:
	ldsw	[%l7 + 0x5C],	%o3
	fble,a	%fcc2,	loop_2764
	tsubcc	%l0,	%l5,	%i4
	lduw	[%l7 + 0x54],	%g5
	popc	0x06BC,	%o0
loop_2764:
	sll	%i0,	%g6,	%g3
	fmovsl	%xcc,	%f1,	%f4
	movrgz	%i7,	%g1,	%o6
	ld	[%l7 + 0x34],	%f8
	for	%f4,	%f0,	%f8
	ldsw	[%l7 + 0x6C],	%g4
	fmovdgu	%xcc,	%f4,	%f1
	stw	%l6,	[%l7 + 0x08]
	edge8	%o7,	%l4,	%l3
	stx	%l1,	[%l7 + 0x38]
	stx	%g2,	[%l7 + 0x30]
	movneg	%xcc,	%o4,	%i3
	fmovdleu	%xcc,	%f12,	%f11
	tsubcctv	%g7,	%l2,	%i2
	ldub	[%l7 + 0x57],	%i1
	andcc	%i5,	%i6,	%o2
	fpadd32s	%f8,	%f10,	%f15
	fmovdneg	%icc,	%f5,	%f15
	fmovrsgz	%o1,	%f7,	%f9
	fsrc2s	%f4,	%f11
	fmovrslez	%o5,	%f9,	%f15
	tcs	%icc,	0x6
	ldsw	[%l7 + 0x58],	%l0
	ldd	[%l7 + 0x18],	%f14
	fones	%f15
	edge16n	%o3,	%i4,	%g5
	stx	%o0,	[%l7 + 0x50]
	be,a	loop_2765
	bpos,pn	%icc,	loop_2766
	tcs	%xcc,	0x0
	fnot1s	%f0,	%f1
loop_2765:
	xorcc	%l5,	%g6,	%i0
loop_2766:
	tne	%icc,	0x6
	fmovsge	%xcc,	%f10,	%f10
	fmovdcc	%xcc,	%f0,	%f9
	ldsb	[%l7 + 0x36],	%g3
	ldsw	[%l7 + 0x2C],	%i7
	fmovsleu	%icc,	%f10,	%f10
	fmovdgu	%icc,	%f13,	%f12
	stw	%g1,	[%l7 + 0x0C]
	ldsw	[%l7 + 0x3C],	%o6
	fexpand	%f10,	%f12
	ldsb	[%l7 + 0x48],	%l6
	and	%g4,	%l4,	%o7
	fbe	%fcc3,	loop_2767
	ldub	[%l7 + 0x1D],	%l1
	fmuld8sux16	%f11,	%f1,	%f6
	st	%f0,	[%l7 + 0x50]
loop_2767:
	fmovrdlez	%g2,	%f14,	%f0
	ldsw	[%l7 + 0x54],	%o4
	ldub	[%l7 + 0x3C],	%i3
	tsubcc	%g7,	%l2,	%i2
	fbue,a	%fcc3,	loop_2768
	ld	[%l7 + 0x5C],	%f4
	fmovsl	%xcc,	%f15,	%f10
	fbn	%fcc1,	loop_2769
loop_2768:
	brgez,a	%i1,	loop_2770
	brz,a	%l3,	loop_2771
	ldsh	[%l7 + 0x18],	%i5
loop_2769:
	ldsb	[%l7 + 0x74],	%o2
loop_2770:
	movrgez	%i6,	%o5,	%o1
loop_2771:
	ldsw	[%l7 + 0x08],	%o3
	movneg	%xcc,	%l0,	%i4
	movvs	%icc,	%o0,	%l5
	lduw	[%l7 + 0x78],	%g5
	stb	%g6,	[%l7 + 0x34]
	ldub	[%l7 + 0x0F],	%g3
	stb	%i7,	[%l7 + 0x7C]
	tgu	%icc,	0x1
	bgu,pt	%icc,	loop_2772
	brgz	%i0,	loop_2773
	udiv	%g1,	0x04C9,	%o6
	bvs,pn	%xcc,	loop_2774
loop_2772:
	ldd	[%l7 + 0x30],	%f4
loop_2773:
	fmovdleu	%icc,	%f8,	%f12
	tneg	%icc,	0x4
loop_2774:
	brgez,a	%l6,	loop_2775
	fmovrdgz	%l4,	%f8,	%f4
	array32	%o7,	%l1,	%g4
	fmovrsgz	%o4,	%f1,	%f0
loop_2775:
	movvc	%icc,	%i3,	%g7
	movneg	%xcc,	%l2,	%i2
	ldsw	[%l7 + 0x34],	%g2
	addccc	%i1,	%l3,	%i5
	fandnot2	%f6,	%f8,	%f12
	mulx	%o2,	%o5,	%o1
	movvs	%icc,	%i6,	%o3
	fmovsge	%icc,	%f4,	%f5
	srax	%l0,	%o0,	%l5
	bshuffle	%f0,	%f12,	%f10
	ldsh	[%l7 + 0x54],	%g5
	fnors	%f11,	%f14,	%f9
	movne	%xcc,	%g6,	%i4
	fandnot2s	%f6,	%f12,	%f13
	array32	%i7,	%g3,	%g1
	ldx	[%l7 + 0x08],	%i0
	array16	%o6,	%l4,	%o7
	fcmpgt32	%f8,	%f2,	%l1
	edge8n	%l6,	%o4,	%i3
	lduw	[%l7 + 0x34],	%g7
	addccc	%l2,	0x0577,	%g4
	smul	%i2,	%i1,	%g2
	ldsw	[%l7 + 0x6C],	%l3
	sdiv	%i5,	0x12F4,	%o2
	mulx	%o1,	0x1861,	%i6
	st	%f12,	[%l7 + 0x38]
	edge32l	%o3,	%l0,	%o0
	ldub	[%l7 + 0x34],	%o5
	fpack16	%f0,	%f6
	ldsw	[%l7 + 0x38],	%l5
	stx	%g5,	[%l7 + 0x18]
	orn	%g6,	%i4,	%i7
	fbge	%fcc1,	loop_2776
	movrne	%g1,	%i0,	%g3
	movcs	%xcc,	%l4,	%o6
	fnands	%f7,	%f13,	%f8
loop_2776:
	stx	%o7,	[%l7 + 0x50]
	fcmple32	%f8,	%f0,	%l1
	tne	%icc,	0x0
	fxors	%f9,	%f11,	%f0
	fmul8x16al	%f10,	%f11,	%f14
	bpos,a	loop_2777
	ldx	[%l7 + 0x28],	%l6
	fors	%f12,	%f8,	%f7
	fandnot2	%f0,	%f6,	%f14
loop_2777:
	ld	[%l7 + 0x34],	%f3
	movne	%xcc,	%i3,	%g7
	fpadd16s	%f11,	%f6,	%f1
	std	%f10,	[%l7 + 0x18]
	fpadd32s	%f12,	%f7,	%f6
	tne	%xcc,	0x3
	ldd	[%l7 + 0x28],	%f4
	ldx	[%l7 + 0x70],	%l2
	fxor	%f14,	%f2,	%f14
	fmovse	%icc,	%f3,	%f5
	tne	%icc,	0x4
	faligndata	%f10,	%f10,	%f12
	lduh	[%l7 + 0x54],	%o4
	subc	%g4,	0x09F9,	%i1
	fmovrslz	%g2,	%f1,	%f1
	move	%icc,	%l3,	%i2
	udivx	%i5,	0x0F72,	%o2
	andncc	%i6,	%o3,	%o1
	fandnot1	%f6,	%f4,	%f14
	lduw	[%l7 + 0x34],	%l0
	edge16	%o0,	%l5,	%o5
	udiv	%g6,	0x0A25,	%g5
	fmovdne	%xcc,	%f5,	%f4
	xnor	%i4,	%g1,	%i0
	fzero	%f14
	bgu,a	loop_2778
	fand	%f4,	%f14,	%f12
	fmuld8sux16	%f13,	%f10,	%f6
	fcmpeq16	%f12,	%f10,	%g3
loop_2778:
	fnand	%f0,	%f0,	%f12
	fmovrse	%l4,	%f3,	%f4
	fpackfix	%f2,	%f0
	ldx	[%l7 + 0x50],	%o6
	tleu	%xcc,	0x1
	tsubcc	%i7,	%o7,	%l1
	fbue,a	%fcc0,	loop_2779
	udivcc	%i3,	0x0D79,	%l6
	tneg	%xcc,	0x4
	brlez	%g7,	loop_2780
loop_2779:
	lduw	[%l7 + 0x08],	%l2
	lduw	[%l7 + 0x14],	%o4
	movne	%xcc,	%g4,	%i1
loop_2780:
	fpadd32s	%f3,	%f15,	%f1
	bl,a,pt	%icc,	loop_2781
	std	%f14,	[%l7 + 0x50]
	st	%f3,	[%l7 + 0x28]
	fzero	%f10
loop_2781:
	fxors	%f14,	%f13,	%f12
	edge32ln	%l3,	%g2,	%i2
	edge16	%o2,	%i6,	%o3
	sth	%i5,	[%l7 + 0x26]
	std	%f0,	[%l7 + 0x70]
	stw	%l0,	[%l7 + 0x7C]
	fmovdcc	%xcc,	%f13,	%f0
	tcc	%icc,	0x6
	fbge	%fcc3,	loop_2782
	popc	%o0,	%o1
	brlez,a	%l5,	loop_2783
	bl,a	%icc,	loop_2784
loop_2782:
	fabsd	%f6,	%f6
	fbge	%fcc0,	loop_2785
loop_2783:
	lduw	[%l7 + 0x28],	%o5
loop_2784:
	subccc	%g5,	0x0CCA,	%i4
	st	%f0,	[%l7 + 0x08]
loop_2785:
	bneg,a	%xcc,	loop_2786
	edge8ln	%g1,	%i0,	%g3
	edge16l	%g6,	%o6,	%i7
	ldd	[%l7 + 0x68],	%f14
loop_2786:
	ldsw	[%l7 + 0x14],	%o7
	fnegd	%f12,	%f10
	fmovd	%f10,	%f10
	fmovsge	%icc,	%f0,	%f6
	fmovscs	%xcc,	%f9,	%f6
	stx	%l4,	[%l7 + 0x20]
	fmovsleu	%xcc,	%f15,	%f9
	fnot2s	%f1,	%f0
	ldx	[%l7 + 0x30],	%l1
	std	%f14,	[%l7 + 0x10]
	movre	%l6,	%i3,	%l2
	stx	%o4,	[%l7 + 0x18]
	taddcc	%g4,	0x11C7,	%g7
	stb	%i1,	[%l7 + 0x27]
	ldsw	[%l7 + 0x44],	%l3
	edge16l	%g2,	%o2,	%i6
	tpos	%icc,	0x6
	fcmpes	%fcc1,	%f1,	%f1
	ldub	[%l7 + 0x37],	%o3
	fmovdge	%icc,	%f12,	%f12
	tvc	%xcc,	0x6
	fornot2	%f2,	%f2,	%f8
	tge	%icc,	0x1
	fmovrdgez	%i2,	%f2,	%f0
	fmovdle	%icc,	%f7,	%f9
	stw	%l0,	[%l7 + 0x68]
	stb	%o0,	[%l7 + 0x21]
	fbuge	%fcc0,	loop_2787
	ldsb	[%l7 + 0x73],	%o1
	bne,pt	%icc,	loop_2788
	fmovdvc	%xcc,	%f8,	%f14
loop_2787:
	fzeros	%f10
	movg	%icc,	%l5,	%i5
loop_2788:
	fcmpeq16	%f4,	%f6,	%o5
	xnorcc	%i4,	%g1,	%i0
	edge32n	%g5,	%g6,	%o6
	edge32ln	%g3,	%i7,	%l4
	ld	[%l7 + 0x68],	%f3
	taddcc	%o7,	0x03C5,	%l1
	udivcc	%l6,	0x18D7,	%l2
	andn	%o4,	%i3,	%g7
	stx	%i1,	[%l7 + 0x08]
	bg	%xcc,	loop_2789
	ld	[%l7 + 0x1C],	%f12
	brlez,a	%l3,	loop_2790
	bpos,a,pn	%icc,	loop_2791
loop_2789:
	stb	%g4,	[%l7 + 0x3A]
	nop
	setx loop_2792, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_2790:
	pdist	%f10,	%f10,	%f2
loop_2791:
	fmovdleu	%xcc,	%f0,	%f14
	fsrc1	%f12,	%f4
loop_2792:
	ldub	[%l7 + 0x24],	%o2
	std	%f12,	[%l7 + 0x28]
	lduw	[%l7 + 0x20],	%i6
	std	%f0,	[%l7 + 0x70]
	movrlz	%o3,	0x01D,	%i2
	movrlez	%g2,	0x02D,	%o0
	fcmped	%fcc2,	%f12,	%f6
	brlez	%o1,	loop_2793
	bvs,pt	%icc,	loop_2794
	fblg	%fcc2,	loop_2795
	fbuge,a	%fcc0,	loop_2796
loop_2793:
	fbl,a	%fcc2,	loop_2797
loop_2794:
	brgz	%l5,	loop_2798
loop_2795:
	brlez,a	%l0,	loop_2799
loop_2796:
	fabsd	%f10,	%f8
loop_2797:
	ba,a	%icc,	loop_2800
loop_2798:
	edge32	%i5,	%i4,	%o5
loop_2799:
	movcs	%xcc,	%i0,	%g1
	bcc,pn	%icc,	loop_2801
loop_2800:
	bpos,a	%icc,	loop_2802
	fpsub32s	%f10,	%f1,	%f3
	ld	[%l7 + 0x78],	%f12
loop_2801:
	fbg	%fcc1,	loop_2803
loop_2802:
	ba,pt	%icc,	loop_2804
	fzeros	%f15
	std	%f8,	[%l7 + 0x10]
loop_2803:
	fmovdne	%icc,	%f6,	%f2
loop_2804:
	fcmpgt16	%f14,	%f6,	%g6
	movgu	%icc,	%o6,	%g5
	fmuld8sux16	%f3,	%f11,	%f4
	fmovd	%f14,	%f0
	fand	%f6,	%f12,	%f6
	stx	%g3,	[%l7 + 0x28]
	fbul,a	%fcc0,	loop_2805
	fble	%fcc1,	loop_2806
	xorcc	%i7,	%o7,	%l1
	fcmple16	%f8,	%f2,	%l6
loop_2805:
	ldsh	[%l7 + 0x14],	%l4
loop_2806:
	stw	%o4,	[%l7 + 0x38]
	tleu	%xcc,	0x7
	stx	%l2,	[%l7 + 0x60]
	fmovrslz	%i3,	%f9,	%f14
	tcc	%xcc,	0x4
	fmovsl	%icc,	%f15,	%f7
	addc	%i1,	0x13B7,	%l3
	bge	loop_2807
	ldd	[%l7 + 0x60],	%f10
	fmovrdlz	%g7,	%f8,	%f12
	fnegs	%f2,	%f10
loop_2807:
	taddcc	%o2,	%g4,	%o3
	ta	%icc,	0x0
	fmovse	%icc,	%f2,	%f3
	bgu,a,pt	%icc,	loop_2808
	edge8l	%i6,	%i2,	%o0
	fmovse	%xcc,	%f8,	%f5
	fbge	%fcc1,	loop_2809
loop_2808:
	fpadd32s	%f8,	%f14,	%f15
	fbge	%fcc0,	loop_2810
	tvs	%xcc,	0x7
loop_2809:
	edge8l	%g2,	%l5,	%l0
	movrgez	%i5,	0x062,	%i4
loop_2810:
	ta	%icc,	0x0
	lduh	[%l7 + 0x70],	%o1
	fbuge,a	%fcc3,	loop_2811
	ldx	[%l7 + 0x40],	%o5
	stw	%g1,	[%l7 + 0x18]
	stw	%i0,	[%l7 + 0x20]
loop_2811:
	fba,a	%fcc0,	loop_2812
	sdiv	%o6,	0x147C,	%g5
	movrgez	%g3,	0x0FE,	%g6
	fmovdleu	%xcc,	%f1,	%f9
loop_2812:
	stw	%o7,	[%l7 + 0x44]
	fmovrsne	%l1,	%f9,	%f12
	nop
	setx loop_2813, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	movne	%xcc,	%i7,	%l4
	ldd	[%l7 + 0x38],	%f6
	stx	%o4,	[%l7 + 0x60]
loop_2813:
	bl	%icc,	loop_2814
	fmovdge	%icc,	%f11,	%f3
	alignaddrl	%l2,	%l6,	%i1
	edge16l	%i3,	%l3,	%g7
loop_2814:
	fabsd	%f6,	%f12
	fmovdg	%icc,	%f11,	%f14
	addccc	%g4,	%o3,	%o2
	andncc	%i6,	%o0,	%i2
	edge32ln	%l5,	%l0,	%g2
	sll	%i4,	%o1,	%i5
	lduw	[%l7 + 0x48],	%g1
	sllx	%i0,	%o5,	%g5
	array32	%g3,	%g6,	%o7
	ldsb	[%l7 + 0x55],	%l1
	andncc	%o6,	%i7,	%o4
	ld	[%l7 + 0x1C],	%f11
	fmovsl	%icc,	%f5,	%f3
	sllx	%l4,	0x04,	%l2
	ldsb	[%l7 + 0x1D],	%i1
	tl	%xcc,	0x6
	call	loop_2815
	ld	[%l7 + 0x10],	%f9
	ldd	[%l7 + 0x08],	%f14
	fmovdle	%icc,	%f12,	%f3
loop_2815:
	xnor	%i3,	0x1B5A,	%l3
	sth	%l6,	[%l7 + 0x10]
	sdivx	%g7,	0x0A16,	%o3
	ldsb	[%l7 + 0x17],	%o2
	bgu,a	%xcc,	loop_2816
	edge16n	%g4,	%o0,	%i6
	fmovda	%icc,	%f13,	%f15
	stb	%l5,	[%l7 + 0x60]
loop_2816:
	fmul8sux16	%f10,	%f4,	%f6
	udiv	%l0,	0x0EEF,	%i2
	fmovsa	%xcc,	%f14,	%f10
	ta	%xcc,	0x0
	fbo	%fcc3,	loop_2817
	nop
	setx loop_2818, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovscc	%icc,	%f0,	%f11
	ld	[%l7 + 0x60],	%f11
loop_2817:
	stw	%g2,	[%l7 + 0x60]
loop_2818:
	fpsub32s	%f4,	%f5,	%f5
	fmovsne	%xcc,	%f12,	%f3
	stw	%o1,	[%l7 + 0x28]
	sth	%i5,	[%l7 + 0x72]
	st	%f4,	[%l7 + 0x5C]
	ldub	[%l7 + 0x45],	%g1
	fsrc2	%f2,	%f0
	ldd	[%l7 + 0x20],	%f2
	fsrc1	%f12,	%f0
	fcmpeq32	%f0,	%f4,	%i0
	edge8ln	%i4,	%o5,	%g5
	edge16	%g6,	%o7,	%l1
	array16	%o6,	%g3,	%i7
	movrlz	%l4,	%o4,	%l2
	fsrc2s	%f0,	%f15
	fmovsvc	%xcc,	%f6,	%f6
	fmovsn	%icc,	%f5,	%f15
	fpadd16s	%f0,	%f13,	%f5
	stx	%i1,	[%l7 + 0x18]
	fmovsneg	%xcc,	%f9,	%f6
	nop
	setx loop_2819, %l0, %l1
	jmpl %l1, %i3
	fpack16	%f14,	%f14
	fnors	%f5,	%f9,	%f10
	lduw	[%l7 + 0x0C],	%l6
loop_2819:
	fmovsneg	%xcc,	%f9,	%f9
	edge32ln	%l3,	%o3,	%g7
	tne	%icc,	0x3
	nop
	setx loop_2820, %l0, %l1
	jmpl %l1, %o2
	fbn	%fcc2,	loop_2821
	ba,a,pn	%xcc,	loop_2822
	fbul	%fcc1,	loop_2823
loop_2820:
	tcs	%icc,	0x6
loop_2821:
	fones	%f9
loop_2822:
	stw	%o0,	[%l7 + 0x74]
loop_2823:
	stw	%g4,	[%l7 + 0x24]
	fcmpne16	%f6,	%f4,	%i6
	tsubcctv	%l0,	0x1EA1,	%i2
	fmovrdne	%l5,	%f14,	%f14
	bl,a,pn	%xcc,	loop_2824
	tneg	%xcc,	0x2
	fnot2s	%f4,	%f3
	ldsb	[%l7 + 0x0E],	%o1
loop_2824:
	stw	%i5,	[%l7 + 0x30]
	subcc	%g1,	%i0,	%g2
	fbul	%fcc2,	loop_2825
	sethi	0x1D4D,	%o5
	movvs	%icc,	%g5,	%g6
	fbne	%fcc1,	loop_2826
loop_2825:
	movrgez	%o7,	%i4,	%l1
	fandnot2	%f10,	%f4,	%f12
	sth	%g3,	[%l7 + 0x74]
loop_2826:
	fzero	%f12
	std	%f2,	[%l7 + 0x40]
	alignaddrl	%o6,	%i7,	%l4
	fabsd	%f10,	%f8
	fbe	%fcc1,	loop_2827
	movrgez	%l2,	0x24D,	%o4
	movle	%xcc,	%i3,	%l6
	brgez,a	%l3,	loop_2828
loop_2827:
	fzero	%f2
	bg,a	%icc,	loop_2829
	fpsub16	%f6,	%f4,	%f8
loop_2828:
	fmovrdgz	%o3,	%f2,	%f12
	xnorcc	%g7,	0x0E06,	%o2
loop_2829:
	subccc	%i1,	%g4,	%o0
	ldub	[%l7 + 0x44],	%l0
	ldx	[%l7 + 0x60],	%i2
	stx	%l5,	[%l7 + 0x70]
	lduh	[%l7 + 0x44],	%i6
	fnot2s	%f2,	%f10
	fmovrdgz	%o1,	%f0,	%f6
	edge8ln	%g1,	%i5,	%g2
	bne,a,pt	%xcc,	loop_2830
	fone	%f6
	stx	%i0,	[%l7 + 0x08]
	fpack16	%f4,	%f6
loop_2830:
	movrlz	%o5,	0x026,	%g6
	fbg,a	%fcc0,	loop_2831
	ldub	[%l7 + 0x23],	%o7
	lduw	[%l7 + 0x40],	%i4
	fmovda	%icc,	%f3,	%f4
loop_2831:
	array32	%l1,	%g3,	%g5
	tsubcc	%i7,	0x1FCD,	%l4
	brz,a	%o6,	loop_2832
	tcc	%icc,	0x1
	ldsw	[%l7 + 0x64],	%o4
	fornot2s	%f2,	%f10,	%f3
loop_2832:
	stx	%i3,	[%l7 + 0x60]
	movrlz	%l6,	%l3,	%l2
	ba,pn	%xcc,	loop_2833
	stw	%o3,	[%l7 + 0x48]
	fmovrsne	%g7,	%f14,	%f1
	fmovd	%f10,	%f14
loop_2833:
	fpack32	%f4,	%f6,	%f0
	umul	%i1,	%o2,	%g4
	fmovdle	%xcc,	%f4,	%f14
	sdivx	%o0,	0x18DA,	%i2
	ldsw	[%l7 + 0x10],	%l0
	tcs	%icc,	0x1
	fmovdcs	%xcc,	%f15,	%f0
	umulcc	%l5,	0x10D0,	%o1
	ld	[%l7 + 0x0C],	%f15
	udivx	%g1,	0x01E1,	%i6
	fmovdle	%xcc,	%f6,	%f8
	lduh	[%l7 + 0x52],	%g2
	fmovse	%icc,	%f2,	%f11
	fmovdn	%icc,	%f1,	%f7
	tgu	%xcc,	0x6
	mova	%xcc,	%i0,	%o5
	fbug	%fcc2,	loop_2834
	andncc	%g6,	%o7,	%i4
	movvs	%xcc,	%i5,	%g3
	fandnot2	%f2,	%f10,	%f8
loop_2834:
	fpsub16s	%f14,	%f8,	%f4
	fpackfix	%f14,	%f9
	ldx	[%l7 + 0x28],	%g5
	movrgz	%i7,	0x36A,	%l4
	lduw	[%l7 + 0x20],	%o6
	bge,pt	%xcc,	loop_2835
	fbg,a	%fcc2,	loop_2836
	alignaddr	%o4,	%l1,	%l6
	stw	%l3,	[%l7 + 0x2C]
loop_2835:
	lduw	[%l7 + 0x10],	%l2
loop_2836:
	movrgez	%i3,	0x28B,	%g7
	fpsub32s	%f10,	%f9,	%f7
	faligndata	%f0,	%f4,	%f4
	ldub	[%l7 + 0x56],	%i1
	ba,a	loop_2837
	fbu,a	%fcc0,	loop_2838
	stx	%o3,	[%l7 + 0x18]
	st	%f10,	[%l7 + 0x34]
loop_2837:
	fbuge	%fcc3,	loop_2839
loop_2838:
	mulx	%g4,	0x1020,	%o2
	stb	%o0,	[%l7 + 0x3E]
	tneg	%icc,	0x3
loop_2839:
	smul	%l0,	%i2,	%l5
	bg,pt	%icc,	loop_2840
	orncc	%o1,	%g1,	%g2
	sub	%i6,	0x0A0A,	%i0
	fpsub32	%f8,	%f4,	%f10
loop_2840:
	sth	%g6,	[%l7 + 0x18]
	lduw	[%l7 + 0x50],	%o5
	sub	%i4,	0x198B,	%i5
	umulcc	%o7,	0x1D67,	%g3
	lduh	[%l7 + 0x44],	%i7
	fmovde	%icc,	%f7,	%f7
	subcc	%g5,	0x1AFD,	%o6
	te	%xcc,	0x4
	ldsh	[%l7 + 0x1A],	%l4
	movcs	%xcc,	%o4,	%l6
	fnors	%f15,	%f12,	%f1
	xnorcc	%l1,	0x0900,	%l3
	fsrc1	%f10,	%f14
	movrne	%i3,	%g7,	%l2
	subccc	%i1,	0x13E9,	%o3
	st	%f4,	[%l7 + 0x0C]
	pdist	%f8,	%f2,	%f12
	smul	%o2,	%g4,	%l0
	fpsub32s	%f15,	%f13,	%f7
	addccc	%o0,	0x12BF,	%l5
	sth	%o1,	[%l7 + 0x50]
	tcc	%icc,	0x4
	fxnors	%f10,	%f5,	%f4
	movcc	%icc,	%i2,	%g1
	ldsb	[%l7 + 0x78],	%g2
	movcc	%icc,	%i0,	%g6
	be,a	%icc,	loop_2841
	tl	%xcc,	0x6
	ldd	[%l7 + 0x50],	%f6
	movrlz	%i6,	%o5,	%i5
loop_2841:
	brgez	%o7,	loop_2842
	fba	%fcc2,	loop_2843
	ldsh	[%l7 + 0x4A],	%g3
	fmovdleu	%icc,	%f5,	%f10
loop_2842:
	fmovdneg	%icc,	%f5,	%f3
loop_2843:
	fbul	%fcc1,	loop_2844
	fornot1s	%f4,	%f9,	%f4
	lduw	[%l7 + 0x20],	%i7
	ld	[%l7 + 0x24],	%f10
loop_2844:
	bpos	loop_2845
	movrne	%i4,	0x0DC,	%o6
	tl	%icc,	0x6
	and	%g5,	%l4,	%o4
loop_2845:
	fnot2	%f10,	%f10
	ldsb	[%l7 + 0x3E],	%l6
	bgu,pn	%xcc,	loop_2846
	ldsh	[%l7 + 0x70],	%l3
	fmovdge	%xcc,	%f11,	%f13
	ldd	[%l7 + 0x50],	%f12
loop_2846:
	be,pt	%icc,	loop_2847
	std	%f8,	[%l7 + 0x48]
	fornot1	%f2,	%f2,	%f0
	sra	%i3,	%l1,	%l2
loop_2847:
	fbg	%fcc0,	loop_2848
	fnot2s	%f13,	%f11
	fmovsneg	%xcc,	%f0,	%f14
	nop
	setx loop_2849, %l0, %l1
	jmpl %l1, %i1
loop_2848:
	subc	%o3,	0x146D,	%o2
	taddcctv	%g4,	0x057F,	%g7
	fbul	%fcc2,	loop_2850
loop_2849:
	movrlez	%l0,	0x17F,	%o0
	fmovsgu	%xcc,	%f7,	%f10
	ld	[%l7 + 0x74],	%f11
loop_2850:
	sth	%o1,	[%l7 + 0x38]
	ldub	[%l7 + 0x54],	%l5
	std	%f8,	[%l7 + 0x78]
	stw	%i2,	[%l7 + 0x70]
	bcc,a,pn	%icc,	loop_2851
	fmovsn	%icc,	%f5,	%f5
	fnegs	%f3,	%f13
	ldsh	[%l7 + 0x18],	%g1
loop_2851:
	brnz	%i0,	loop_2852
	fmovse	%icc,	%f2,	%f3
	nop
	setx loop_2853, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	for	%f2,	%f6,	%f8
loop_2852:
	fpadd32	%f4,	%f0,	%f8
	alignaddr	%g6,	%g2,	%o5
loop_2853:
	bshuffle	%f4,	%f6,	%f0
	fbn	%fcc1,	loop_2854
	fmovrsne	%i6,	%f13,	%f1
	fandnot2	%f2,	%f12,	%f14
	ldsh	[%l7 + 0x4C],	%o7
loop_2854:
	fpsub16	%f0,	%f2,	%f10
	addc	%i5,	%g3,	%i4
	fnot1s	%f12,	%f4
	add	%i7,	0x0C91,	%o6
	fmovscc	%icc,	%f1,	%f12
	ldub	[%l7 + 0x5C],	%l4
	ldsw	[%l7 + 0x64],	%g5
	lduw	[%l7 + 0x14],	%o4
	bg	loop_2855
	stw	%l3,	[%l7 + 0x08]
	fble,a	%fcc1,	loop_2856
	movvs	%xcc,	%i3,	%l6
loop_2855:
	fpsub16	%f14,	%f8,	%f12
	ldsb	[%l7 + 0x2F],	%l1
loop_2856:
	movcs	%xcc,	%i1,	%l2
	fcmpgt16	%f12,	%f12,	%o2
	ldub	[%l7 + 0x1C],	%g4
	siam	0x6
	fmovrslz	%g7,	%f12,	%f8
	ldsb	[%l7 + 0x7E],	%o3
	smulcc	%l0,	0x133A,	%o0
	popc	%o1,	%l5
	ld	[%l7 + 0x3C],	%f4
	ldsw	[%l7 + 0x1C],	%i2
	movrgz	%i0,	0x141,	%g6
	tn	%xcc,	0x6
	lduw	[%l7 + 0x54],	%g1
	lduh	[%l7 + 0x5C],	%g2
	fpackfix	%f12,	%f12
	udivcc	%i6,	0x0594,	%o7
	edge32	%o5,	%i5,	%g3
	brlez	%i7,	loop_2857
	addcc	%o6,	0x0FE1,	%l4
	fcmpne16	%f14,	%f2,	%g5
	tg	%xcc,	0x2
loop_2857:
	edge8	%i4,	%l3,	%o4
	fabss	%f4,	%f6
	fble	%fcc1,	loop_2858
	std	%f4,	[%l7 + 0x08]
	tn	%xcc,	0x7
	xnor	%i3,	0x1040,	%l6
loop_2858:
	ldx	[%l7 + 0x20],	%l1
	stw	%i1,	[%l7 + 0x34]
	ldsh	[%l7 + 0x0E],	%o2
	move	%xcc,	%l2,	%g7
	lduh	[%l7 + 0x5A],	%g4
	fmovsvs	%xcc,	%f13,	%f9
	move	%icc,	%l0,	%o3
	ldub	[%l7 + 0x33],	%o1
	fexpand	%f7,	%f10
	std	%f0,	[%l7 + 0x10]
	be,pn	%xcc,	loop_2859
	stw	%o0,	[%l7 + 0x58]
	sdivcc	%l5,	0x1F67,	%i2
	fcmps	%fcc0,	%f5,	%f7
loop_2859:
	stw	%i0,	[%l7 + 0x0C]
	fcmpne16	%f6,	%f14,	%g6
	stx	%g1,	[%l7 + 0x28]
	fbue	%fcc0,	loop_2860
	be,a	loop_2861
	stb	%i6,	[%l7 + 0x3F]
	fxors	%f7,	%f5,	%f6
loop_2860:
	bn,a	%xcc,	loop_2862
loop_2861:
	ldsh	[%l7 + 0x3E],	%o7
	ldub	[%l7 + 0x3C],	%o5
	st	%f15,	[%l7 + 0x20]
loop_2862:
	lduw	[%l7 + 0x5C],	%i5
	ba,pn	%icc,	loop_2863
	ldx	[%l7 + 0x38],	%g3
	xnor	%i7,	0x1601,	%o6
	brgz	%g2,	loop_2864
loop_2863:
	ld	[%l7 + 0x68],	%f7
	umul	%g5,	%i4,	%l3
	sdivx	%l4,	0x0FFF,	%i3
loop_2864:
	bleu,a,pt	%xcc,	loop_2865
	bl,pt	%xcc,	loop_2866
	ldd	[%l7 + 0x70],	%f12
	fbge,a	%fcc0,	loop_2867
loop_2865:
	fones	%f14
loop_2866:
	bvs	%xcc,	loop_2868
	fbue,a	%fcc3,	loop_2869
loop_2867:
	mulscc	%l6,	%o4,	%l1
	tn	%icc,	0x2
loop_2868:
	fmovrdlz	%i1,	%f0,	%f6
loop_2869:
	edge16n	%o2,	%g7,	%g4
	tne	%xcc,	0x5
	fmovspos	%icc,	%f10,	%f8
	brgez,a	%l2,	loop_2870
	ld	[%l7 + 0x30],	%f7
	tgu	%xcc,	0x3
	fmovdcs	%icc,	%f4,	%f5
loop_2870:
	std	%f14,	[%l7 + 0x20]
	brnz,a	%l0,	loop_2871
	fba	%fcc2,	loop_2872
	ldsw	[%l7 + 0x10],	%o3
	fbl,a	%fcc0,	loop_2873
loop_2871:
	fabss	%f1,	%f3
loop_2872:
	ld	[%l7 + 0x54],	%f1
	stx	%o1,	[%l7 + 0x40]
loop_2873:
	fpack32	%f10,	%f6,	%f8
	ld	[%l7 + 0x34],	%f7
	bvs,pt	%icc,	loop_2874
	fmovrdlez	%l5,	%f12,	%f4
	fmovde	%icc,	%f15,	%f12
	fmovsa	%icc,	%f6,	%f12
loop_2874:
	brz	%o0,	loop_2875
	fmovsneg	%icc,	%f15,	%f4
	stb	%i2,	[%l7 + 0x74]
	stw	%i0,	[%l7 + 0x3C]
loop_2875:
	fbn,a	%fcc2,	loop_2876
	lduw	[%l7 + 0x20],	%g1
	brgez	%i6,	loop_2877
	std	%f8,	[%l7 + 0x38]
loop_2876:
	fcmpd	%fcc2,	%f8,	%f6
	fornot2s	%f8,	%f10,	%f2
loop_2877:
	ldsh	[%l7 + 0x4C],	%o7
	array8	%o5,	%g6,	%i5
	std	%f14,	[%l7 + 0x18]
	nop
	setx loop_2878, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stx	%g3,	[%l7 + 0x08]
	faligndata	%f4,	%f12,	%f14
	movleu	%icc,	%o6,	%i7
loop_2878:
	edge16ln	%g2,	%i4,	%g5
	ldsb	[%l7 + 0x53],	%l3
	fmovdl	%xcc,	%f3,	%f0
	stx	%i3,	[%l7 + 0x50]
	fmovsne	%xcc,	%f12,	%f5
	fmovse	%icc,	%f14,	%f12
	edge8	%l4,	%o4,	%l6
	fmovrsgez	%l1,	%f6,	%f6
	movrlez	%i1,	0x3F5,	%g7
	sub	%g4,	0x1865,	%o2
	te	%xcc,	0x5
	te	%icc,	0x5
	stx	%l2,	[%l7 + 0x70]
	alignaddr	%l0,	%o3,	%l5
	edge8n	%o1,	%o0,	%i2
	movre	%g1,	%i6,	%o7
	ldub	[%l7 + 0x29],	%i0
	ldx	[%l7 + 0x48],	%g6
	sethi	0x184B,	%o5
	fbe,a	%fcc2,	loop_2879
	fbn,a	%fcc2,	loop_2880
	lduh	[%l7 + 0x5E],	%g3
	udivx	%o6,	0x1C5B,	%i5
loop_2879:
	fbule,a	%fcc1,	loop_2881
loop_2880:
	std	%f2,	[%l7 + 0x60]
	bvs,a	%xcc,	loop_2882
	fpack16	%f12,	%f9
loop_2881:
	fcmpeq32	%f6,	%f0,	%i7
	fcmpne32	%f6,	%f0,	%i4
loop_2882:
	edge8n	%g2,	%l3,	%g5
	ldsh	[%l7 + 0x50],	%i3
	lduh	[%l7 + 0x38],	%o4
	fcmple32	%f4,	%f0,	%l6
	edge32l	%l1,	%l4,	%g7
	bcc	loop_2883
	subc	%g4,	%i1,	%l2
	popc	0x15BB,	%l0
	stw	%o3,	[%l7 + 0x4C]
loop_2883:
	umulcc	%l5,	0x1423,	%o1
	ldsh	[%l7 + 0x70],	%o0
	edge16	%o2,	%i2,	%i6
	fcmple32	%f8,	%f10,	%o7
	fmovrsgz	%i0,	%f9,	%f8
	ldsw	[%l7 + 0x44],	%g6
	smul	%g1,	%o5,	%g3
	lduh	[%l7 + 0x54],	%i5
	movrgz	%i7,	0x3CE,	%o6
	fmovsleu	%xcc,	%f3,	%f2
	orncc	%i4,	%g2,	%l3
	sth	%g5,	[%l7 + 0x38]
	ldsh	[%l7 + 0x78],	%i3
	fsrc2s	%f6,	%f2
	brgz	%l6,	loop_2884
	lduw	[%l7 + 0x18],	%l1
	stb	%l4,	[%l7 + 0x7F]
	xorcc	%o4,	0x07A1,	%g7
loop_2884:
	siam	0x6
	addcc	%g4,	%i1,	%l0
	tleu	%xcc,	0x4
	fmovdne	%icc,	%f2,	%f6
	ldsw	[%l7 + 0x0C],	%o3
	sub	%l5,	%o1,	%l2
	stb	%o0,	[%l7 + 0x1D]
	lduh	[%l7 + 0x36],	%i2
	fbue,a	%fcc0,	loop_2885
	fmovsgu	%xcc,	%f9,	%f4
	movpos	%xcc,	%i6,	%o7
	ldub	[%l7 + 0x47],	%o2
loop_2885:
	fbug	%fcc3,	loop_2886
	xnorcc	%i0,	%g1,	%o5
	fmovrdlz	%g3,	%f0,	%f12
	bne,pt	%icc,	loop_2887
loop_2886:
	fmovsa	%xcc,	%f13,	%f7
	ldx	[%l7 + 0x60],	%g6
	fmovd	%f2,	%f2
loop_2887:
	ldsb	[%l7 + 0x28],	%i7
	ldsh	[%l7 + 0x72],	%i5
	fmovse	%xcc,	%f1,	%f2
	add	%i4,	0x01AC,	%o6
	fmovsvc	%icc,	%f3,	%f2
	std	%f14,	[%l7 + 0x28]
	fcmpne16	%f2,	%f4,	%l3
	fandnot1s	%f2,	%f15,	%f6
	fmovsvs	%icc,	%f10,	%f0
	smulcc	%g2,	%i3,	%g5
	tgu	%icc,	0x7
	fbug,a	%fcc1,	loop_2888
	movvs	%xcc,	%l6,	%l1
	bcs,a	%icc,	loop_2889
	ldsb	[%l7 + 0x7F],	%o4
loop_2888:
	fnands	%f1,	%f0,	%f11
	lduh	[%l7 + 0x0C],	%g7
loop_2889:
	nop
	setx loop_2890, %l0, %l1
	jmpl %l1, %g4
	fmul8x16au	%f10,	%f14,	%f10
	movcs	%xcc,	%i1,	%l0
	be,a	loop_2891
loop_2890:
	lduw	[%l7 + 0x4C],	%l4
	std	%f4,	[%l7 + 0x78]
	subcc	%l5,	0x0618,	%o1
loop_2891:
	movgu	%xcc,	%l2,	%o3
	fabsd	%f4,	%f12
	srlx	%o0,	0x1E,	%i6
	taddcctv	%i2,	%o2,	%o7
	fnot1s	%f13,	%f12
	fandnot1s	%f8,	%f5,	%f12
	tge	%icc,	0x5
	tn	%icc,	0x5
	mulscc	%i0,	0x0276,	%g1
	mova	%xcc,	%g3,	%o5
	fpadd32s	%f5,	%f6,	%f7
	fbu	%fcc2,	loop_2892
	ldub	[%l7 + 0x73],	%i7
	orncc	%i5,	0x1769,	%g6
	movrgez	%o6,	0x303,	%l3
loop_2892:
	fcmps	%fcc1,	%f13,	%f2
	ld	[%l7 + 0x5C],	%f8
	fmovd	%f8,	%f12
	st	%f8,	[%l7 + 0x34]
	fcmpgt16	%f2,	%f8,	%g2
	fmovdcs	%icc,	%f15,	%f5
	nop
	setx loop_2893, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	srlx	%i4,	0x1A,	%g5
	edge8ln	%l6,	%l1,	%i3
	orcc	%o4,	%g7,	%g4
loop_2893:
	fexpand	%f2,	%f12
	umul	%l0,	%l4,	%l5
	for	%f2,	%f6,	%f14
	stw	%o1,	[%l7 + 0x08]
	std	%f4,	[%l7 + 0x68]
	xnorcc	%l2,	0x0DEE,	%i1
	add	%o3,	0x0658,	%o0
	fmovspos	%icc,	%f8,	%f15
	lduw	[%l7 + 0x70],	%i6
	ldsw	[%l7 + 0x14],	%o2
	ldx	[%l7 + 0x50],	%i2
	xorcc	%o7,	%g1,	%g3
	lduh	[%l7 + 0x4E],	%o5
	fexpand	%f13,	%f10
	st	%f2,	[%l7 + 0x28]
	fpack32	%f8,	%f14,	%f0
	orncc	%i0,	%i5,	%g6
	mova	%xcc,	%o6,	%l3
	fmovspos	%icc,	%f1,	%f6
	ldd	[%l7 + 0x10],	%f10
	fbne	%fcc3,	loop_2894
	fmovdle	%xcc,	%f9,	%f3
	movge	%icc,	%i7,	%g2
	std	%f10,	[%l7 + 0x38]
loop_2894:
	lduh	[%l7 + 0x2C],	%i4
	tleu	%xcc,	0x2
	fbule	%fcc3,	loop_2895
	fpsub32s	%f9,	%f13,	%f6
	tgu	%icc,	0x7
	ldub	[%l7 + 0x50],	%g5
loop_2895:
	tpos	%xcc,	0x7
	fcmps	%fcc1,	%f3,	%f2
	fcmpeq32	%f8,	%f14,	%l6
	edge8n	%i3,	%o4,	%l1
	fbl,a	%fcc1,	loop_2896
	fmovscs	%icc,	%f11,	%f11
	siam	0x4
	ldsw	[%l7 + 0x14],	%g7
loop_2896:
	be,pt	%xcc,	loop_2897
	ba,pn	%xcc,	loop_2898
	ldx	[%l7 + 0x20],	%l0
	movle	%icc,	%l4,	%g4
loop_2897:
	fmovs	%f11,	%f9
loop_2898:
	brgz,a	%l5,	loop_2899
	fmuld8sux16	%f7,	%f0,	%f10
	umul	%o1,	%l2,	%i1
	fexpand	%f7,	%f0
loop_2899:
	or	%o3,	%o0,	%o2
	std	%f10,	[%l7 + 0x58]
	sdivx	%i6,	0x0AC8,	%i2
	edge8	%g1,	%o7,	%g3
	xorcc	%o5,	%i0,	%i5
	xnor	%g6,	0x19B2,	%l3
	ldsw	[%l7 + 0x50],	%o6
	ldsb	[%l7 + 0x2C],	%i7
	pdist	%f8,	%f14,	%f0
	movgu	%xcc,	%g2,	%i4
	edge8l	%g5,	%i3,	%o4
	bne,pt	%icc,	loop_2900
	std	%f10,	[%l7 + 0x30]
	stx	%l6,	[%l7 + 0x08]
	siam	0x6
loop_2900:
	udivx	%g7,	0x1153,	%l0
	movvs	%icc,	%l1,	%l4
	fbul,a	%fcc0,	loop_2901
	bgu,a	%xcc,	loop_2902
	addc	%l5,	0x0041,	%o1
	fbul	%fcc3,	loop_2903
loop_2901:
	ldd	[%l7 + 0x28],	%f4
loop_2902:
	st	%f8,	[%l7 + 0x34]
	fnor	%f2,	%f6,	%f2
loop_2903:
	taddcc	%g4,	0x019F,	%l2
	fnot2	%f14,	%f6
	taddcc	%i1,	%o3,	%o0
	mulscc	%o2,	0x1017,	%i6
	ldub	[%l7 + 0x17],	%i2
	mulx	%o7,	%g3,	%o5
	brgz	%g1,	loop_2904
	stb	%i5,	[%l7 + 0x1F]
	fpadd16	%f14,	%f8,	%f8
	ld	[%l7 + 0x10],	%f15
loop_2904:
	stw	%g6,	[%l7 + 0x30]
	fmovrslez	%i0,	%f14,	%f2
	fcmpes	%fcc2,	%f9,	%f7
	faligndata	%f2,	%f2,	%f0
	tleu	%xcc,	0x6
	std	%f8,	[%l7 + 0x20]
	tn	%icc,	0x3
	bl	loop_2905
	fpadd16s	%f6,	%f11,	%f10
	ld	[%l7 + 0x14],	%f11
	ldx	[%l7 + 0x40],	%l3
loop_2905:
	ldsh	[%l7 + 0x44],	%i7
	fones	%f1
	brgz,a	%g2,	loop_2906
	fmovdgu	%icc,	%f4,	%f11
	fsrc1s	%f9,	%f5
	fmuld8ulx16	%f12,	%f12,	%f6
loop_2906:
	fbe	%fcc1,	loop_2907
	fpmerge	%f0,	%f14,	%f2
	fbg	%fcc3,	loop_2908
	fbne,a	%fcc1,	loop_2909
loop_2907:
	fmuld8sux16	%f5,	%f12,	%f0
	ldsh	[%l7 + 0x30],	%o6
loop_2908:
	stw	%i4,	[%l7 + 0x38]
loop_2909:
	fcmpeq32	%f2,	%f12,	%i3
	fnegd	%f14,	%f2
	ldub	[%l7 + 0x0C],	%g5
	lduw	[%l7 + 0x60],	%o4
	edge8ln	%l6,	%l0,	%g7
	ldd	[%l7 + 0x50],	%f2
	fpsub16	%f2,	%f8,	%f14
	fmovd	%f14,	%f8
	fornot2s	%f1,	%f0,	%f9
	ldub	[%l7 + 0x7C],	%l4
	movgu	%xcc,	%l1,	%o1
	fmovsvc	%icc,	%f10,	%f13
	fmovrdgz	%g4,	%f12,	%f8
	movge	%xcc,	%l2,	%l5
	edge32ln	%i1,	%o0,	%o3
	mulx	%o2,	%i6,	%i2
	movleu	%xcc,	%g3,	%o7
	sth	%o5,	[%l7 + 0x40]
	ldsb	[%l7 + 0x15],	%g1
	sth	%g6,	[%l7 + 0x20]
	std	%f12,	[%l7 + 0x10]
	tcc	%xcc,	0x7
	fmovsl	%icc,	%f12,	%f13
	tsubcc	%i5,	0x006F,	%i0
	tvs	%xcc,	0x3
	movvs	%icc,	%i7,	%l3
	ldsw	[%l7 + 0x10],	%o6
	fmul8x16au	%f4,	%f13,	%f14
	bneg,a	%icc,	loop_2910
	fcmpeq32	%f6,	%f6,	%g2
	ldsw	[%l7 + 0x4C],	%i4
	ldsh	[%l7 + 0x48],	%g5
loop_2910:
	fmovrsgz	%i3,	%f14,	%f15
	ldx	[%l7 + 0x08],	%l6
	stx	%l0,	[%l7 + 0x68]
	ldsb	[%l7 + 0x47],	%g7
	st	%f12,	[%l7 + 0x60]
	fnot2	%f8,	%f14
	fmovrdlez	%l4,	%f6,	%f2
	faligndata	%f2,	%f8,	%f14
	xnor	%o4,	%l1,	%o1
	subcc	%g4,	0x1B06,	%l5
	taddcc	%i1,	0x0AA5,	%o0
	edge32l	%o3,	%l2,	%o2
	std	%f2,	[%l7 + 0x68]
	ldsw	[%l7 + 0x18],	%i6
	tne	%icc,	0x7
	fxors	%f7,	%f2,	%f8
	bvs	%icc,	loop_2911
	smulcc	%g3,	%i2,	%o5
	stx	%g1,	[%l7 + 0x40]
	fmovrdne	%g6,	%f12,	%f2
loop_2911:
	tleu	%xcc,	0x7
	movvs	%xcc,	%i5,	%i0
	ldd	[%l7 + 0x60],	%f6
	lduh	[%l7 + 0x3E],	%i7
	movcc	%icc,	%o7,	%o6
	lduh	[%l7 + 0x22],	%l3
	ldsw	[%l7 + 0x6C],	%i4
	fmovrsgez	%g5,	%f15,	%f13
	fmovsle	%xcc,	%f9,	%f14
	fbule,a	%fcc1,	loop_2912
	fmovsn	%xcc,	%f2,	%f12
	ld	[%l7 + 0x40],	%f2
	fmuld8ulx16	%f15,	%f8,	%f6
loop_2912:
	ta	%xcc,	0x2
	array8	%g2,	%i3,	%l6
	movvs	%icc,	%l0,	%l4
	ldd	[%l7 + 0x60],	%f14
	brgez	%g7,	loop_2913
	fbug	%fcc1,	loop_2914
	or	%o4,	0x05B2,	%o1
	andncc	%g4,	%l5,	%l1
loop_2913:
	edge32l	%o0,	%i1,	%l2
loop_2914:
	brz	%o3,	loop_2915
	edge16n	%o2,	%g3,	%i6
	orncc	%i2,	%o5,	%g1
	ldsh	[%l7 + 0x5C],	%i5
loop_2915:
	sth	%i0,	[%l7 + 0x12]
	ldsh	[%l7 + 0x40],	%g6
	bne,a,pn	%xcc,	loop_2916
	fxnor	%f4,	%f6,	%f6
	movcc	%icc,	%o7,	%i7
	nop
	setx loop_2917, %l0, %l1
	jmpl %l1, %l3
loop_2916:
	st	%f3,	[%l7 + 0x50]
	fpack32	%f14,	%f4,	%f0
	array16	%i4,	%g5,	%g2
loop_2917:
	ld	[%l7 + 0x44],	%f1
	edge32	%o6,	%i3,	%l6
	fnand	%f14,	%f14,	%f10
	fmovdle	%icc,	%f12,	%f1
	fbge,a	%fcc2,	loop_2918
	ba,a	%icc,	loop_2919
	ldsw	[%l7 + 0x10],	%l0
	sth	%l4,	[%l7 + 0x62]
loop_2918:
	fsrc1	%f6,	%f4
loop_2919:
	fmovsgu	%xcc,	%f8,	%f1
	andcc	%o4,	0x043B,	%g7
	mova	%xcc,	%o1,	%g4
	tgu	%icc,	0x7
	lduw	[%l7 + 0x30],	%l1
	sth	%l5,	[%l7 + 0x1C]
	fmovdleu	%icc,	%f11,	%f0
	fmovscc	%icc,	%f7,	%f9
	movrgz	%i1,	0x3E7,	%l2
	std	%f14,	[%l7 + 0x68]
	tleu	%icc,	0x3
	fnand	%f8,	%f4,	%f2
	fmovrslz	%o0,	%f4,	%f13
	bge,a,pt	%icc,	loop_2920
	lduw	[%l7 + 0x50],	%o3
	fblg	%fcc3,	loop_2921
	array32	%g3,	%o2,	%i2
loop_2920:
	lduw	[%l7 + 0x08],	%o5
	lduw	[%l7 + 0x08],	%i6
loop_2921:
	brgez	%i5,	loop_2922
	tleu	%xcc,	0x7
	ldsh	[%l7 + 0x4A],	%g1
	movrne	%g6,	0x1D2,	%o7
loop_2922:
	fone	%f4
	fands	%f8,	%f1,	%f2
	fpsub16	%f12,	%f14,	%f4
	std	%f10,	[%l7 + 0x40]
	fandnot2	%f12,	%f12,	%f0
	ld	[%l7 + 0x3C],	%f9
	std	%f6,	[%l7 + 0x38]
	ldsw	[%l7 + 0x28],	%i7
	array16	%i0,	%l3,	%g5
	fcmple16	%f10,	%f14,	%g2
	edge16ln	%i4,	%i3,	%o6
	ldub	[%l7 + 0x72],	%l6
	fbo,a	%fcc0,	loop_2923
	ble,pt	%xcc,	loop_2924
	subc	%l4,	0x1042,	%o4
	te	%icc,	0x6
loop_2923:
	ldd	[%l7 + 0x18],	%f12
loop_2924:
	srlx	%g7,	%l0,	%o1
	stw	%l1,	[%l7 + 0x38]
	ldd	[%l7 + 0x20],	%f10
	smulcc	%g4,	%i1,	%l2
	fnors	%f14,	%f9,	%f1
	lduh	[%l7 + 0x48],	%l5
	brgz	%o3,	loop_2925
	edge8l	%o0,	%o2,	%g3
	ldx	[%l7 + 0x30],	%i2
	srax	%o5,	0x00,	%i6
loop_2925:
	udivcc	%g1,	0x0EEB,	%i5
	fnors	%f9,	%f7,	%f15
	std	%f8,	[%l7 + 0x30]
	andn	%o7,	0x03EE,	%i7
	fmovsne	%icc,	%f2,	%f2
	fnegd	%f8,	%f4
	nop
	setx loop_2926, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	tn	%icc,	0x5
	nop
	setx loop_2927, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fblg	%fcc0,	loop_2928
loop_2926:
	tleu	%icc,	0x4
	sth	%g6,	[%l7 + 0x12]
loop_2927:
	fbuge	%fcc3,	loop_2929
loop_2928:
	stx	%i0,	[%l7 + 0x30]
	tne	%xcc,	0x0
	fbg	%fcc0,	loop_2930
loop_2929:
	add	%l3,	%g5,	%g2
	fbue,a	%fcc1,	loop_2931
	movg	%icc,	%i4,	%o6
loop_2930:
	fmovsvs	%icc,	%f15,	%f7
	ldsh	[%l7 + 0x08],	%i3
loop_2931:
	fba	%fcc0,	loop_2932
	fcmpd	%fcc1,	%f8,	%f8
	fbge,a	%fcc3,	loop_2933
	movrgz	%l4,	%l6,	%o4
loop_2932:
	fpadd32s	%f1,	%f6,	%f7
	ldub	[%l7 + 0x3C],	%g7
loop_2933:
	fors	%f6,	%f6,	%f15
	faligndata	%f0,	%f4,	%f10
	brz	%l0,	loop_2934
	st	%f7,	[%l7 + 0x0C]
	stb	%l1,	[%l7 + 0x3F]
	movg	%icc,	%g4,	%o1
loop_2934:
	edge16l	%i1,	%l5,	%l2
	edge32	%o0,	%o3,	%o2
	ldd	[%l7 + 0x50],	%f12
	fbge,a	%fcc2,	loop_2935
	edge8l	%i2,	%o5,	%i6
	fcmpes	%fcc3,	%f13,	%f11
	ldd	[%l7 + 0x10],	%f4
loop_2935:
	ldsh	[%l7 + 0x2C],	%g3
	fpadd32s	%f3,	%f0,	%f4
	fmovrdgez	%g1,	%f6,	%f12
	or	%o7,	%i5,	%g6
	ldsb	[%l7 + 0x0E],	%i0
	stb	%i7,	[%l7 + 0x3E]
	fpadd32	%f12,	%f12,	%f12
	fmovd	%f10,	%f6
	movleu	%xcc,	%l3,	%g5
	ldx	[%l7 + 0x50],	%i4
	fsrc1	%f8,	%f4
	fblg	%fcc1,	loop_2936
	std	%f6,	[%l7 + 0x78]
	fcmple32	%f2,	%f0,	%g2
	brgez	%o6,	loop_2937
loop_2936:
	movvc	%icc,	%l4,	%l6
	bcc,pn	%xcc,	loop_2938
	movrlz	%i3,	%o4,	%g7
loop_2937:
	fbule	%fcc2,	loop_2939
	ldsb	[%l7 + 0x4B],	%l0
loop_2938:
	movrgez	%l1,	%o1,	%g4
	xor	%l5,	0x169C,	%i1
loop_2939:
	fornot1s	%f4,	%f11,	%f0
	brgz,a	%l2,	loop_2940
	array8	%o0,	%o3,	%o2
	fbl,a	%fcc0,	loop_2941
	fbne	%fcc1,	loop_2942
loop_2940:
	fmovrsgz	%i2,	%f9,	%f15
	movne	%icc,	%i6,	%o5
loop_2941:
	sth	%g1,	[%l7 + 0x10]
loop_2942:
	fnot1	%f12,	%f6
	smul	%o7,	0x17BB,	%i5
	fmovs	%f12,	%f2
	ldsb	[%l7 + 0x54],	%g3
	stb	%i0,	[%l7 + 0x4B]
	umul	%g6,	0x1579,	%l3
	tcc	%icc,	0x4
	ldd	[%l7 + 0x08],	%f2
	ldub	[%l7 + 0x1D],	%g5
	brnz,a	%i7,	loop_2943
	ldx	[%l7 + 0x78],	%i4
	stx	%g2,	[%l7 + 0x40]
	fpsub32s	%f2,	%f11,	%f3
loop_2943:
	fnand	%f6,	%f10,	%f14
	array16	%l4,	%o6,	%l6
	udiv	%o4,	0x0183,	%i3
	brz	%l0,	loop_2944
	mulx	%l1,	0x11A7,	%g7
	fmovsvc	%xcc,	%f3,	%f3
	edge16l	%o1,	%g4,	%i1
loop_2944:
	fmovdgu	%xcc,	%f2,	%f2
	fbue	%fcc1,	loop_2945
	fmovdleu	%icc,	%f4,	%f12
	brgz,a	%l2,	loop_2946
	subc	%o0,	0x0EDC,	%o3
loop_2945:
	movvc	%xcc,	%l5,	%o2
	fmovsa	%xcc,	%f5,	%f8
loop_2946:
	ldsw	[%l7 + 0x74],	%i2
	ldx	[%l7 + 0x58],	%i6
	fsrc1	%f4,	%f14
	fbne	%fcc1,	loop_2947
	fcmpgt16	%f10,	%f0,	%g1
	subc	%o7,	0x004F,	%i5
	ldub	[%l7 + 0x13],	%o5
loop_2947:
	std	%f0,	[%l7 + 0x20]
	orn	%i0,	0x19FC,	%g3
	udivx	%l3,	0x028F,	%g6
	fmovdle	%xcc,	%f7,	%f10
	move	%icc,	%g5,	%i4
	fbul,a	%fcc1,	loop_2948
	fornot1s	%f3,	%f10,	%f12
	brgz	%i7,	loop_2949
	bshuffle	%f2,	%f12,	%f4
loop_2948:
	movvc	%icc,	%l4,	%o6
	fornot1	%f14,	%f8,	%f10
loop_2949:
	fnegs	%f3,	%f5
	fmovdn	%xcc,	%f8,	%f6
	fmovdle	%xcc,	%f6,	%f2
	ldd	[%l7 + 0x38],	%f0
	bgu,a,pn	%xcc,	loop_2950
	fcmps	%fcc1,	%f1,	%f7
	movne	%xcc,	%l6,	%o4
	sdivcc	%g2,	0x014D,	%i3
loop_2950:
	fandnot2	%f8,	%f0,	%f14
	fcmpes	%fcc3,	%f4,	%f14
	sth	%l1,	[%l7 + 0x66]
	movl	%xcc,	%g7,	%o1
	srax	%g4,	%l0,	%l2
	tn	%xcc,	0x2
	movpos	%xcc,	%o0,	%i1
	tleu	%icc,	0x7
	sth	%o3,	[%l7 + 0x0E]
	ld	[%l7 + 0x28],	%f10
	lduw	[%l7 + 0x50],	%o2
	stb	%l5,	[%l7 + 0x0C]
	fmovsvc	%icc,	%f2,	%f8
	ld	[%l7 + 0x74],	%f10
	fcmpeq32	%f4,	%f0,	%i2
	stx	%g1,	[%l7 + 0x18]
	fbn	%fcc2,	loop_2951
	bvc,a	%xcc,	loop_2952
	lduh	[%l7 + 0x62],	%i6
	bleu,pt	%xcc,	loop_2953
loop_2951:
	movle	%xcc,	%o7,	%o5
loop_2952:
	stx	%i5,	[%l7 + 0x50]
	taddcc	%i0,	%g3,	%g6
loop_2953:
	bne	%icc,	loop_2954
	fmovdcc	%xcc,	%f3,	%f0
	fmovdneg	%xcc,	%f8,	%f14
	udivcc	%l3,	0x1A37,	%i4
loop_2954:
	sth	%g5,	[%l7 + 0x10]
	fmovrdlez	%l4,	%f2,	%f8
	nop
	setx loop_2955, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fornot1	%f10,	%f4,	%f2
	st	%f4,	[%l7 + 0x1C]
	fbu	%fcc0,	loop_2956
loop_2955:
	fxor	%f2,	%f10,	%f10
	fba,a	%fcc2,	loop_2957
	subccc	%i7,	0x12B0,	%l6
loop_2956:
	ble,pn	%icc,	loop_2958
	fxnor	%f12,	%f2,	%f10
loop_2957:
	te	%icc,	0x0
	fcmpes	%fcc3,	%f4,	%f0
loop_2958:
	ldsb	[%l7 + 0x36],	%o4
	tl	%icc,	0x6
	std	%f8,	[%l7 + 0x20]
	fmovrslez	%g2,	%f1,	%f4
	ldsw	[%l7 + 0x60],	%o6
	fbne,a	%fcc2,	loop_2959
	stw	%i3,	[%l7 + 0x64]
	sllx	%l1,	%g7,	%g4
	fxor	%f14,	%f10,	%f0
loop_2959:
	alignaddrl	%l0,	%l2,	%o1
	ldsh	[%l7 + 0x3A],	%i1
	ble	loop_2960
	udivx	%o0,	0x0382,	%o3
	tvs	%xcc,	0x2
	bneg,a,pn	%xcc,	loop_2961
loop_2960:
	call	loop_2962
	fnegs	%f15,	%f4
	ldx	[%l7 + 0x20],	%o2
loop_2961:
	srax	%l5,	%i2,	%g1
loop_2962:
	fmovse	%xcc,	%f8,	%f14
	fmovsl	%icc,	%f12,	%f14
	fbo	%fcc0,	loop_2963
	movg	%icc,	%i6,	%o7
	movrlz	%o5,	0x163,	%i5
	fmovsa	%icc,	%f8,	%f0
loop_2963:
	ldsw	[%l7 + 0x14],	%i0
	mulx	%g6,	0x0910,	%g3
	sethi	0x110B,	%i4
	fmovspos	%xcc,	%f3,	%f10
	smulcc	%g5,	0x1932,	%l3
	fmul8x16	%f12,	%f14,	%f10
	sth	%i7,	[%l7 + 0x60]
	fmovsgu	%xcc,	%f4,	%f3
	fsrc2	%f8,	%f4
	movrgez	%l4,	0x26A,	%o4
	ld	[%l7 + 0x18],	%f4
	mulscc	%g2,	%o6,	%l6
	sdiv	%i3,	0x06F7,	%l1
	movpos	%icc,	%g4,	%g7
	fnand	%f2,	%f8,	%f14
	mulscc	%l2,	0x1FEA,	%l0
	fsrc2s	%f3,	%f11
	ble,pt	%xcc,	loop_2964
	fmovdvs	%xcc,	%f3,	%f0
	ldd	[%l7 + 0x58],	%f14
	fmuld8sux16	%f2,	%f10,	%f4
loop_2964:
	ldsh	[%l7 + 0x7A],	%o1
	movne	%xcc,	%i1,	%o0
	fsrc1	%f2,	%f2
	fmovdl	%xcc,	%f2,	%f15
	stx	%o2,	[%l7 + 0x58]
	fmovrdgez	%o3,	%f12,	%f14
	fmovsvs	%icc,	%f12,	%f7
	fmovdne	%xcc,	%f8,	%f5
	edge32ln	%l5,	%g1,	%i6
	umulcc	%i2,	0x1ADF,	%o7
	fbo	%fcc3,	loop_2965
	stx	%o5,	[%l7 + 0x10]
	fmovrdlz	%i5,	%f6,	%f2
	movcs	%icc,	%g6,	%i0
loop_2965:
	bl	%xcc,	loop_2966
	bneg,pn	%icc,	loop_2967
	edge8	%i4,	%g3,	%g5
	sra	%i7,	0x15,	%l4
loop_2966:
	ba,pn	%icc,	loop_2968
loop_2967:
	fones	%f6
	edge8l	%o4,	%l3,	%o6
	ld	[%l7 + 0x74],	%f8
loop_2968:
	fcmple32	%f12,	%f6,	%l6
	ldsw	[%l7 + 0x34],	%g2
	tcs	%icc,	0x5
	andncc	%i3,	%g4,	%g7
	fmovdge	%xcc,	%f1,	%f14
	ld	[%l7 + 0x70],	%f12
	addccc	%l1,	0x0310,	%l0
	movcs	%icc,	%o1,	%l2
	bg,a	%xcc,	loop_2969
	siam	0x2
	movrlz	%i1,	%o0,	%o3
	st	%f0,	[%l7 + 0x70]
loop_2969:
	fmovrdlz	%l5,	%f10,	%f12
	lduw	[%l7 + 0x5C],	%o2
	be	%xcc,	loop_2970
	ld	[%l7 + 0x20],	%f11
	bgu,a	%icc,	loop_2971
	std	%f8,	[%l7 + 0x28]
loop_2970:
	bleu	loop_2972
	brlez,a	%g1,	loop_2973
loop_2971:
	stb	%i6,	[%l7 + 0x6E]
	std	%f2,	[%l7 + 0x78]
loop_2972:
	ldsh	[%l7 + 0x7A],	%i2
loop_2973:
	nop
	setx loop_2974, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stb	%o5,	[%l7 + 0x5C]
	bvs,pn	%icc,	loop_2975
	bl	loop_2976
loop_2974:
	ldd	[%l7 + 0x70],	%f14
	ta	%xcc,	0x1
loop_2975:
	fzero	%f14
loop_2976:
	ldd	[%l7 + 0x58],	%f0
	edge32	%o7,	%g6,	%i0
	lduw	[%l7 + 0x44],	%i4
	lduw	[%l7 + 0x5C],	%g3
	fcmped	%fcc3,	%f10,	%f14
	fnot2	%f10,	%f12
	alignaddr	%i5,	%i7,	%l4
	fba,a	%fcc3,	loop_2977
	fmovdle	%xcc,	%f5,	%f6
	ldx	[%l7 + 0x30],	%o4
	be	loop_2978
loop_2977:
	ldsw	[%l7 + 0x68],	%g5
	addcc	%o6,	%l6,	%l3
	sdivx	%i3,	0x05D4,	%g2
loop_2978:
	edge32	%g4,	%l1,	%g7
	taddcctv	%o1,	0x158B,	%l0
	tleu	%icc,	0x1
	andcc	%i1,	%o0,	%o3
	fnot1s	%f10,	%f8
	pdist	%f12,	%f14,	%f10
	ldsb	[%l7 + 0x59],	%l5
	sth	%l2,	[%l7 + 0x3E]
	edge32	%g1,	%o2,	%i6
	stb	%i2,	[%l7 + 0x45]
	popc	%o7,	%g6
	sllx	%o5,	0x12,	%i0
	smulcc	%i4,	%i5,	%i7
	ldd	[%l7 + 0x18],	%f4
	udivcc	%g3,	0x03D1,	%l4
	lduh	[%l7 + 0x12],	%o4
	movg	%xcc,	%g5,	%o6
	fmovrdlez	%l3,	%f8,	%f14
	tg	%icc,	0x3
	xor	%l6,	0x1233,	%i3
	fmovdpos	%icc,	%f14,	%f6
	fcmpgt32	%f8,	%f4,	%g2
	addcc	%l1,	%g7,	%o1
	fpadd16	%f2,	%f6,	%f6
	fmovspos	%icc,	%f2,	%f13
	stw	%l0,	[%l7 + 0x6C]
	fandnot2s	%f13,	%f4,	%f11
	movpos	%xcc,	%g4,	%i1
	fpadd32s	%f10,	%f8,	%f8
	movge	%xcc,	%o3,	%o0
	fbu,a	%fcc1,	loop_2979
	fnot1	%f14,	%f6
	addccc	%l2,	%g1,	%o2
	orncc	%l5,	0x12F4,	%i2
loop_2979:
	fmovsne	%icc,	%f4,	%f4
	fands	%f2,	%f5,	%f12
	fmovsvs	%xcc,	%f4,	%f15
	movrne	%i6,	%o7,	%g6
	tleu	%icc,	0x3
	st	%f5,	[%l7 + 0x2C]
	lduw	[%l7 + 0x5C],	%i0
	fmovrdne	%o5,	%f8,	%f6
	alignaddr	%i5,	%i4,	%g3
	fpadd16s	%f0,	%f7,	%f10
	lduw	[%l7 + 0x5C],	%i7
	srlx	%o4,	%l4,	%o6
	ldsw	[%l7 + 0x4C],	%l3
	bvc,a,pt	%icc,	loop_2980
	fpadd16	%f6,	%f8,	%f8
	edge16n	%l6,	%g5,	%i3
	fmovrde	%g2,	%f14,	%f4
loop_2980:
	alignaddrl	%l1,	%g7,	%l0
	ldx	[%l7 + 0x28],	%o1
	sdiv	%i1,	0x0A37,	%o3
	bshuffle	%f6,	%f6,	%f8
	fnot2s	%f5,	%f0
	bleu,a	%icc,	loop_2981
	taddcctv	%g4,	0x1242,	%l2
	ldx	[%l7 + 0x78],	%o0
	movrgez	%g1,	0x08D,	%o2
loop_2981:
	sth	%i2,	[%l7 + 0x34]
	fmovse	%xcc,	%f5,	%f6
	bleu	%xcc,	loop_2982
	udiv	%i6,	0x1848,	%l5
	fmovsvs	%xcc,	%f15,	%f3
	stx	%g6,	[%l7 + 0x40]
loop_2982:
	ldd	[%l7 + 0x58],	%f12
	movg	%icc,	%i0,	%o5
	tvs	%xcc,	0x2
	ld	[%l7 + 0x78],	%f11
	tl	%xcc,	0x7
	movpos	%icc,	%i5,	%i4
	edge16n	%o7,	%g3,	%o4
	lduw	[%l7 + 0x40],	%l4
	std	%f0,	[%l7 + 0x38]
	lduw	[%l7 + 0x38],	%o6
	tge	%icc,	0x6
	tcs	%icc,	0x5
	fxors	%f1,	%f6,	%f11
	smul	%i7,	0x0EE7,	%l6
	fbu,a	%fcc1,	loop_2983
	ld	[%l7 + 0x78],	%f8
	mulx	%g5,	%l3,	%g2
	nop
	setx loop_2984, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_2983:
	smul	%l1,	0x0058,	%g7
	fmovrdlez	%i3,	%f14,	%f2
	fbn,a	%fcc3,	loop_2985
loop_2984:
	alignaddrl	%l0,	%o1,	%o3
	movne	%xcc,	%i1,	%g4
	ldsw	[%l7 + 0x70],	%l2
loop_2985:
	fblg,a	%fcc3,	loop_2986
	st	%f8,	[%l7 + 0x38]
	stw	%g1,	[%l7 + 0x44]
	andn	%o2,	%o0,	%i6
loop_2986:
	fbn	%fcc0,	loop_2987
	subc	%i2,	%g6,	%i0
	ldx	[%l7 + 0x70],	%l5
	for	%f4,	%f4,	%f8
loop_2987:
	sdivcc	%i5,	0x1002,	%i4
	ld	[%l7 + 0x10],	%f15
	bl,a,pt	%icc,	loop_2988
	ldsw	[%l7 + 0x6C],	%o5
	siam	0x1
	xor	%o7,	%g3,	%l4
loop_2988:
	lduw	[%l7 + 0x68],	%o4
	edge16ln	%i7,	%o6,	%l6
	fbe,a	%fcc3,	loop_2989
	sth	%l3,	[%l7 + 0x7C]
	stb	%g2,	[%l7 + 0x62]
	xorcc	%l1,	0x1B6B,	%g7
loop_2989:
	movleu	%icc,	%i3,	%g5
	te	%icc,	0x0
	lduw	[%l7 + 0x48],	%o1
	ldd	[%l7 + 0x50],	%f0
	siam	0x7
	stb	%l0,	[%l7 + 0x4C]
	bgu,a	%icc,	loop_2990
	ldsw	[%l7 + 0x44],	%o3
	stw	%g4,	[%l7 + 0x74]
	lduw	[%l7 + 0x34],	%i1
loop_2990:
	array16	%l2,	%o2,	%o0
	sth	%g1,	[%l7 + 0x3A]
	stx	%i6,	[%l7 + 0x60]
	alignaddr	%g6,	%i0,	%i2
	bpos,a,pt	%icc,	loop_2991
	tvs	%xcc,	0x4
	movl	%icc,	%l5,	%i4
	fandnot1	%f0,	%f6,	%f12
loop_2991:
	std	%f2,	[%l7 + 0x58]
	ldsh	[%l7 + 0x28],	%o5
	stw	%o7,	[%l7 + 0x48]
	fpmerge	%f6,	%f0,	%f14
	tvc	%icc,	0x0
	brz,a	%g3,	loop_2992
	sdiv	%l4,	0x1059,	%o4
	fmuld8ulx16	%f3,	%f5,	%f2
	ldsw	[%l7 + 0x1C],	%i5
loop_2992:
	nop
	setx loop_2993, %l0, %l1
	jmpl %l1, %i7
	ldsw	[%l7 + 0x38],	%l6
	siam	0x5
	ldsb	[%l7 + 0x3E],	%l3
loop_2993:
	sth	%g2,	[%l7 + 0x3A]
	fornot1s	%f3,	%f7,	%f12
	stw	%o6,	[%l7 + 0x50]
	fmovdg	%xcc,	%f2,	%f8
	fbne	%fcc2,	loop_2994
	fmovsge	%xcc,	%f3,	%f12
	ldsh	[%l7 + 0x78],	%l1
	fxnors	%f9,	%f6,	%f2
loop_2994:
	move	%icc,	%g7,	%g5
	orncc	%o1,	0x137C,	%l0
	ldx	[%l7 + 0x40],	%i3
	fmovs	%f7,	%f2
	movg	%icc,	%g4,	%o3
	orcc	%l2,	%o2,	%o0
	std	%f8,	[%l7 + 0x38]
	fnegs	%f2,	%f5
	movg	%xcc,	%i1,	%g1
	ldx	[%l7 + 0x10],	%g6
	stx	%i6,	[%l7 + 0x68]
	fmovde	%xcc,	%f4,	%f1
	fmovda	%icc,	%f4,	%f3
	addc	%i2,	0x176E,	%i0
	fcmpeq32	%f12,	%f0,	%i4
	alignaddrl	%o5,	%o7,	%g3
	ldsb	[%l7 + 0x52],	%l5
	fandnot2	%f8,	%f8,	%f2
	edge32n	%o4,	%i5,	%l4
	smul	%i7,	0x0907,	%l3
	taddcc	%l6,	%g2,	%l1
	fbe	%fcc0,	loop_2995
	fmovsa	%xcc,	%f9,	%f4
	movrlz	%o6,	0x275,	%g7
	ba,a,pn	%icc,	loop_2996
loop_2995:
	bneg	%icc,	loop_2997
	fbn	%fcc1,	loop_2998
	ldsw	[%l7 + 0x58],	%o1
loop_2996:
	fornot1s	%f0,	%f2,	%f5
loop_2997:
	stw	%l0,	[%l7 + 0x78]
loop_2998:
	fcmpes	%fcc1,	%f0,	%f8
	ldub	[%l7 + 0x28],	%g5
	fmovse	%icc,	%f11,	%f2
	fcmple32	%f8,	%f0,	%g4
	move	%icc,	%o3,	%l2
	fmovdle	%xcc,	%f10,	%f15
	ldsh	[%l7 + 0x7C],	%i3
	tsubcctv	%o0,	%i1,	%g1
	fcmpes	%fcc2,	%f4,	%f2
	fpadd16s	%f1,	%f5,	%f3
	fcmpeq32	%f12,	%f2,	%g6
	fbug	%fcc1,	loop_2999
	fpadd32s	%f11,	%f7,	%f13
	fmovdvc	%icc,	%f13,	%f11
	sdivcc	%i6,	0x0EA4,	%o2
loop_2999:
	ldd	[%l7 + 0x18],	%f14
	lduw	[%l7 + 0x08],	%i0
	stw	%i4,	[%l7 + 0x3C]
	movg	%xcc,	%i2,	%o5
	ldsw	[%l7 + 0x30],	%g3
	ldub	[%l7 + 0x0C],	%o7
	umulcc	%o4,	0x1DF9,	%i5
	fmovsgu	%xcc,	%f15,	%f3
	sdiv	%l4,	0x0355,	%i7
	tcc	%xcc,	0x0
	umulcc	%l3,	0x0487,	%l6
	ldsb	[%l7 + 0x17],	%l5
	fmovspos	%icc,	%f7,	%f10
	fsrc1s	%f5,	%f6
	ldsh	[%l7 + 0x22],	%g2
	fnot2s	%f6,	%f15
	stx	%l1,	[%l7 + 0x60]
	lduw	[%l7 + 0x64],	%o6
	ldsw	[%l7 + 0x44],	%o1
	fmovdg	%xcc,	%f3,	%f8
	tcs	%icc,	0x4
	stx	%g7,	[%l7 + 0x60]
	fmovrsgez	%l0,	%f13,	%f11
	fmovsn	%xcc,	%f12,	%f9
	movle	%icc,	%g4,	%o3
	std	%f12,	[%l7 + 0x08]
	fcmple16	%f0,	%f6,	%l2
	fmovde	%icc,	%f3,	%f6
	ld	[%l7 + 0x34],	%f3
	array8	%g5,	%o0,	%i1
	bvc,a,pt	%xcc,	loop_3000
	movl	%xcc,	%g1,	%g6
	bne,a	%xcc,	loop_3001
	fbge	%fcc1,	loop_3002
loop_3000:
	andcc	%i3,	0x17E6,	%i6
	tcc	%xcc,	0x6
loop_3001:
	fmovrdgez	%o2,	%f14,	%f14
loop_3002:
	stw	%i0,	[%l7 + 0x20]
	ldx	[%l7 + 0x38],	%i4
	ld	[%l7 + 0x34],	%f15
	addcc	%o5,	0x094B,	%i2
	fsrc2s	%f3,	%f5
	srl	%o7,	0x01,	%g3
	fbu	%fcc2,	loop_3003
	stw	%o4,	[%l7 + 0x08]
	fmovsl	%icc,	%f14,	%f10
	brgez	%i5,	loop_3004
loop_3003:
	fnand	%f4,	%f2,	%f6
	fmovsgu	%icc,	%f1,	%f7
	subccc	%i7,	%l4,	%l3
loop_3004:
	st	%f10,	[%l7 + 0x2C]
	sub	%l6,	%l5,	%l1
	faligndata	%f2,	%f6,	%f6
	ldub	[%l7 + 0x52],	%g2
	fmul8sux16	%f4,	%f14,	%f6
	call	loop_3005
	bvs,a	%icc,	loop_3006
	lduw	[%l7 + 0x74],	%o6
	fornot1	%f6,	%f8,	%f14
loop_3005:
	fbn	%fcc0,	loop_3007
loop_3006:
	fmul8x16	%f2,	%f10,	%f2
	call	loop_3008
	ld	[%l7 + 0x60],	%f2
loop_3007:
	taddcc	%g7,	0x1ACA,	%o1
	array16	%g4,	%l0,	%l2
loop_3008:
	stx	%g5,	[%l7 + 0x20]
	fcmpes	%fcc2,	%f0,	%f9
	ldsh	[%l7 + 0x16],	%o3
	movrlez	%i1,	0x163,	%g1
	ba	loop_3009
	ldx	[%l7 + 0x48],	%o0
	edge32n	%g6,	%i3,	%i6
	fbn,a	%fcc3,	loop_3010
loop_3009:
	ld	[%l7 + 0x0C],	%f15
	addc	%i0,	%o2,	%i4
	bcc,a,pt	%xcc,	loop_3011
loop_3010:
	bg	%icc,	loop_3012
	bleu,pn	%xcc,	loop_3013
	bvs,pn	%xcc,	loop_3014
loop_3011:
	tsubcctv	%i2,	%o5,	%g3
loop_3012:
	bg	%icc,	loop_3015
loop_3013:
	ldub	[%l7 + 0x3E],	%o4
loop_3014:
	lduw	[%l7 + 0x70],	%o7
	lduh	[%l7 + 0x30],	%i7
loop_3015:
	subc	%i5,	%l3,	%l6
	fbuge,a	%fcc2,	loop_3016
	tge	%xcc,	0x5
	stx	%l5,	[%l7 + 0x28]
	fnor	%f4,	%f10,	%f2
loop_3016:
	lduh	[%l7 + 0x1A],	%l1
	fmovrdgz	%g2,	%f4,	%f10
	fnegd	%f8,	%f10
	fsrc1	%f8,	%f6
	stw	%o6,	[%l7 + 0x0C]
	edge16l	%l4,	%g7,	%o1
	fands	%f1,	%f4,	%f3
	andn	%g4,	%l2,	%l0
	fandnot1s	%f2,	%f10,	%f10
	ldsb	[%l7 + 0x42],	%g5
	xnor	%o3,	0x1FF7,	%g1
	movvs	%xcc,	%o0,	%i1
	ldub	[%l7 + 0x6E],	%i3
	ldd	[%l7 + 0x68],	%f4
	sdivx	%g6,	0x1491,	%i0
	ldsb	[%l7 + 0x60],	%o2
	tpos	%xcc,	0x3
	bgu,a	loop_3017
	addccc	%i6,	0x0E65,	%i4
	tn	%icc,	0x3
	stw	%o5,	[%l7 + 0x08]
loop_3017:
	fpadd32s	%f7,	%f9,	%f8
	ldsw	[%l7 + 0x28],	%i2
	fbul	%fcc0,	loop_3018
	bleu,pn	%xcc,	loop_3019
	stb	%g3,	[%l7 + 0x6B]
	edge16n	%o4,	%o7,	%i7
loop_3018:
	udivx	%i5,	0x1356,	%l6
loop_3019:
	lduw	[%l7 + 0x74],	%l5
	edge8l	%l3,	%g2,	%l1
	lduw	[%l7 + 0x38],	%l4
	alignaddrl	%g7,	%o6,	%o1
	mulx	%g4,	0x1BE0,	%l2
	fmul8x16al	%f14,	%f9,	%f0
	stx	%l0,	[%l7 + 0x40]
	and	%g5,	0x07A2,	%g1
	ldx	[%l7 + 0x58],	%o0
	fbo,a	%fcc2,	loop_3020
	fnot1s	%f2,	%f11
	brlez,a	%i1,	loop_3021
	ta	%xcc,	0x6
loop_3020:
	fpack16	%f6,	%f10
	stb	%o3,	[%l7 + 0x2F]
loop_3021:
	movvs	%xcc,	%i3,	%i0
	fmovrdgez	%o2,	%f12,	%f10
	fpsub32	%f14,	%f0,	%f4
	edge16l	%g6,	%i6,	%o5
	fble	%fcc3,	loop_3022
	fpack16	%f10,	%f5
	mova	%icc,	%i4,	%i2
	movrgez	%o4,	0x013,	%o7
loop_3022:
	ldub	[%l7 + 0x62],	%i7
	fmovrsgz	%i5,	%f11,	%f7
	ld	[%l7 + 0x40],	%f10
	bcc,a	loop_3023
	lduh	[%l7 + 0x12],	%l6
	fpsub16	%f10,	%f8,	%f0
	stb	%g3,	[%l7 + 0x17]
loop_3023:
	fcmple16	%f8,	%f2,	%l3
	fmovdne	%icc,	%f5,	%f1
	fpsub16	%f14,	%f8,	%f8
	tvc	%icc,	0x7
	fmovsgu	%xcc,	%f5,	%f14
	fmovda	%xcc,	%f12,	%f7
	srlx	%g2,	%l1,	%l4
	fpadd16	%f6,	%f2,	%f10
	ldd	[%l7 + 0x28],	%f12
	for	%f8,	%f0,	%f6
	fmovdn	%icc,	%f0,	%f15
	lduw	[%l7 + 0x48],	%l5
	fandnot1	%f14,	%f4,	%f12
	ldd	[%l7 + 0x58],	%f8
	fxnor	%f2,	%f0,	%f12
	fexpand	%f6,	%f2
	nop
	setx loop_3024, %l0, %l1
	jmpl %l1, %g7
	fcmpgt32	%f2,	%f14,	%o6
	fcmps	%fcc1,	%f7,	%f5
	fbne	%fcc1,	loop_3025
loop_3024:
	lduw	[%l7 + 0x58],	%g4
	edge16n	%o1,	%l0,	%g5
	ldub	[%l7 + 0x7D],	%g1
loop_3025:
	edge32n	%l2,	%i1,	%o3
	bn,pt	%xcc,	loop_3026
	stw	%i3,	[%l7 + 0x1C]
	sdivcc	%o0,	0x093F,	%i0
	ldsw	[%l7 + 0x30],	%o2
loop_3026:
	ld	[%l7 + 0x10],	%f1
	srax	%g6,	0x03,	%i6
	lduh	[%l7 + 0x2E],	%i4
	fbe	%fcc2,	loop_3027
	ldx	[%l7 + 0x50],	%o5
	fmovrdgez	%o4,	%f14,	%f0
	and	%i2,	%o7,	%i7
loop_3027:
	fmovde	%icc,	%f13,	%f3
	fmovrsgez	%i5,	%f14,	%f15
	fmovrslz	%l6,	%f15,	%f14
	ldub	[%l7 + 0x6A],	%l3
	bleu,pn	%icc,	loop_3028
	fmovdn	%xcc,	%f12,	%f2
	andncc	%g3,	%g2,	%l1
	fones	%f11
loop_3028:
	fnot2	%f2,	%f8
	movre	%l5,	0x1F6,	%g7
	fand	%f8,	%f12,	%f0
	fabsd	%f12,	%f8
	sra	%o6,	%g4,	%o1
	stw	%l0,	[%l7 + 0x4C]
	edge16n	%g5,	%l4,	%l2
	movl	%icc,	%g1,	%o3
	ldsw	[%l7 + 0x50],	%i3
	tpos	%icc,	0x5
	fbne,a	%fcc2,	loop_3029
	fmovdn	%xcc,	%f5,	%f15
	movneg	%icc,	%o0,	%i0
	lduh	[%l7 + 0x7C],	%i1
loop_3029:
	fmovrslez	%o2,	%f3,	%f1
	smul	%i6,	0x0B5E,	%i4
	ldsw	[%l7 + 0x58],	%o5
	fpack32	%f2,	%f2,	%f10
	st	%f12,	[%l7 + 0x34]
	ble,pn	%icc,	loop_3030
	brlz,a	%o4,	loop_3031
	edge8n	%g6,	%i2,	%o7
	brz	%i5,	loop_3032
loop_3030:
	stx	%i7,	[%l7 + 0x78]
loop_3031:
	movvc	%xcc,	%l3,	%l6
	edge8n	%g3,	%g2,	%l1
loop_3032:
	lduw	[%l7 + 0x20],	%g7
	fmovdcc	%icc,	%f2,	%f15
	movvc	%xcc,	%l5,	%g4
	edge32ln	%o1,	%l0,	%g5
	ld	[%l7 + 0x78],	%f4
	fmovdvs	%icc,	%f2,	%f8
	ldsh	[%l7 + 0x20],	%o6
	ldsw	[%l7 + 0x44],	%l2
	fmovdneg	%icc,	%f11,	%f14
	orcc	%g1,	0x1A4D,	%o3
	fmul8x16au	%f2,	%f11,	%f10
	fmovs	%f7,	%f7
	ta	%xcc,	0x0
	tneg	%icc,	0x0
	ldub	[%l7 + 0x47],	%i3
	fmovdl	%icc,	%f3,	%f7
	stx	%l4,	[%l7 + 0x58]
	be,a,pt	%icc,	loop_3033
	lduh	[%l7 + 0x2E],	%i0
	std	%f6,	[%l7 + 0x78]
	bvs,a	loop_3034
loop_3033:
	ldx	[%l7 + 0x48],	%o0
	bvs,a,pn	%icc,	loop_3035
	bshuffle	%f8,	%f4,	%f12
loop_3034:
	movl	%xcc,	%i1,	%i6
	xor	%i4,	0x0857,	%o5
loop_3035:
	fmovsle	%icc,	%f6,	%f8
	ta	%icc,	0x3
	fbu,a	%fcc2,	loop_3036
	ldsh	[%l7 + 0x6E],	%o2
	fpsub16s	%f2,	%f5,	%f15
	bshuffle	%f8,	%f12,	%f12
loop_3036:
	std	%f0,	[%l7 + 0x60]
	st	%f1,	[%l7 + 0x4C]
	movrgz	%g6,	0x10C,	%o4
	fmovrdlez	%i2,	%f4,	%f4
	fmovscs	%xcc,	%f9,	%f7
	fsrc1s	%f4,	%f9
	fnegs	%f11,	%f6
	ldx	[%l7 + 0x08],	%o7
	lduw	[%l7 + 0x48],	%i5
	fnot2s	%f1,	%f14
	ldub	[%l7 + 0x65],	%i7
	fmovsle	%xcc,	%f5,	%f13
	fmovdge	%xcc,	%f5,	%f8
	fpsub16	%f4,	%f10,	%f8
	ldsh	[%l7 + 0x7E],	%l6
	fmovrsgz	%l3,	%f8,	%f2
	tvc	%xcc,	0x5
	fcmpes	%fcc1,	%f9,	%f14
	bge	loop_3037
	st	%f9,	[%l7 + 0x7C]
	fbu	%fcc0,	loop_3038
	fblg	%fcc2,	loop_3039
loop_3037:
	fmovdvs	%xcc,	%f5,	%f4
	fbo,a	%fcc0,	loop_3040
loop_3038:
	ldsh	[%l7 + 0x44],	%g3
loop_3039:
	movrgez	%g2,	0x050,	%g7
	ldsw	[%l7 + 0x18],	%l1
loop_3040:
	std	%f6,	[%l7 + 0x38]
	fmovsa	%xcc,	%f14,	%f8
	fmovdneg	%xcc,	%f1,	%f15
	stw	%g4,	[%l7 + 0x08]
	fbuge	%fcc0,	loop_3041
	fbne,a	%fcc3,	loop_3042
	orncc	%l5,	0x0136,	%o1
	sth	%l0,	[%l7 + 0x60]
loop_3041:
	fzero	%f0
loop_3042:
	std	%f2,	[%l7 + 0x08]
	fnors	%f8,	%f1,	%f9
	taddcctv	%o6,	%g5,	%l2
	xnorcc	%o3,	0x19DA,	%i3
	stb	%l4,	[%l7 + 0x41]
	movl	%xcc,	%g1,	%o0
	ldsh	[%l7 + 0x12],	%i0
	edge8	%i1,	%i4,	%o5
	ldub	[%l7 + 0x1D],	%o2
	movcc	%xcc,	%g6,	%i6
	taddcc	%o4,	%i2,	%i5
	movrlez	%o7,	0x387,	%i7
	nop
	setx loop_3043, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fandnot2s	%f10,	%f14,	%f0
	fmovdcc	%icc,	%f0,	%f13
	fones	%f8
loop_3043:
	or	%l3,	%l6,	%g3
	fzero	%f14
	bn	%icc,	loop_3044
	fcmpne16	%f10,	%f14,	%g2
	smulcc	%g7,	%g4,	%l5
	fcmpes	%fcc1,	%f10,	%f9
loop_3044:
	edge16n	%o1,	%l0,	%l1
	fcmpd	%fcc3,	%f4,	%f2
	bneg,a	loop_3045
	fbu	%fcc2,	loop_3046
	fmovdvc	%xcc,	%f5,	%f12
	smulcc	%o6,	%g5,	%o3
loop_3045:
	array16	%i3,	%l2,	%g1
loop_3046:
	fpadd32s	%f14,	%f10,	%f7
	st	%f13,	[%l7 + 0x10]
	fmovsl	%xcc,	%f8,	%f11
	movvc	%xcc,	%o0,	%i0
	andn	%l4,	0x1144,	%i4
	tpos	%xcc,	0x2
	fmovrsgz	%i1,	%f9,	%f12
	move	%icc,	%o5,	%o2
	fmul8x16	%f3,	%f8,	%f14
	edge16ln	%g6,	%i6,	%i2
	movvc	%icc,	%o4,	%i5
	stx	%i7,	[%l7 + 0x58]
	fabss	%f15,	%f3
	sth	%l3,	[%l7 + 0x0E]
	movpos	%xcc,	%o7,	%l6
	fbge	%fcc1,	loop_3047
	fcmple32	%f14,	%f6,	%g3
	fcmpne32	%f8,	%f10,	%g7
	udiv	%g2,	0x1009,	%l5
loop_3047:
	tpos	%icc,	0x4
	fmul8x16al	%f13,	%f5,	%f10
	andn	%g4,	0x0273,	%l0
	lduw	[%l7 + 0x18],	%l1
	fors	%f0,	%f9,	%f0
	lduh	[%l7 + 0x7A],	%o1
	fsrc2s	%f15,	%f6
	ldd	[%l7 + 0x10],	%f10
	fors	%f2,	%f11,	%f15
	movrne	%g5,	%o3,	%o6
	tne	%xcc,	0x7
	tvc	%icc,	0x2
	brlz,a	%i3,	loop_3048
	fmovda	%xcc,	%f8,	%f3
	sdivx	%g1,	0x1419,	%l2
	call	loop_3049
loop_3048:
	alignaddrl	%o0,	%i0,	%l4
	ldub	[%l7 + 0x28],	%i4
	bcs	%xcc,	loop_3050
loop_3049:
	fmovsle	%icc,	%f0,	%f5
	fbne,a	%fcc0,	loop_3051
	xorcc	%o5,	0x0E3F,	%o2
loop_3050:
	srlx	%g6,	0x13,	%i1
	sth	%i6,	[%l7 + 0x3A]
loop_3051:
	fbul,a	%fcc3,	loop_3052
	taddcc	%o4,	%i2,	%i7
	fmovrse	%i5,	%f10,	%f11
	ld	[%l7 + 0x1C],	%f3
loop_3052:
	addccc	%l3,	%l6,	%g3
	stw	%o7,	[%l7 + 0x44]
	sub	%g7,	0x19EF,	%g2
	edge32	%g4,	%l5,	%l0
	udivx	%o1,	0x016F,	%g5
	tcc	%xcc,	0x4
	fmovrse	%o3,	%f1,	%f4
	ldsb	[%l7 + 0x73],	%l1
	sdivcc	%o6,	0x0DBA,	%g1
	fpmerge	%f9,	%f9,	%f10
	fornot2s	%f10,	%f11,	%f5
	fbe,a	%fcc1,	loop_3053
	fbn,a	%fcc0,	loop_3054
	movrlez	%i3,	0x019,	%o0
	fzeros	%f6
loop_3053:
	ld	[%l7 + 0x5C],	%f7
loop_3054:
	udivcc	%l2,	0x1046,	%i0
	fmovrsgz	%l4,	%f6,	%f13
	fmovse	%xcc,	%f15,	%f8
	fmovdvs	%xcc,	%f4,	%f12
	sth	%o5,	[%l7 + 0x36]
	stx	%i4,	[%l7 + 0x30]
	fmul8x16	%f6,	%f10,	%f12
	movneg	%icc,	%o2,	%g6
	edge16	%i1,	%o4,	%i6
	sth	%i7,	[%l7 + 0x5E]
	te	%xcc,	0x5
	fabsd	%f14,	%f8
	faligndata	%f2,	%f10,	%f8
	edge32l	%i2,	%i5,	%l3
	edge16	%l6,	%g3,	%o7
	ld	[%l7 + 0x54],	%f9
	movrgez	%g2,	%g7,	%g4
	lduw	[%l7 + 0x3C],	%l0
	sll	%l5,	0x10,	%o1
	ldub	[%l7 + 0x6E],	%o3
	fbuge,a	%fcc0,	loop_3055
	be,pt	%icc,	loop_3056
	tsubcctv	%g5,	0x1A73,	%o6
	ldub	[%l7 + 0x36],	%l1
loop_3055:
	fpackfix	%f10,	%f10
loop_3056:
	ldsb	[%l7 + 0x6E],	%g1
	bvc	%xcc,	loop_3057
	fmovsle	%xcc,	%f10,	%f6
	st	%f5,	[%l7 + 0x2C]
	std	%f8,	[%l7 + 0x38]
loop_3057:
	call	loop_3058
	bcc	loop_3059
	ldd	[%l7 + 0x58],	%f4
	fbg,a	%fcc2,	loop_3060
loop_3058:
	mulscc	%i3,	%l2,	%i0
loop_3059:
	addc	%l4,	0x06E0,	%o5
	fpackfix	%f6,	%f1
loop_3060:
	movrlz	%o0,	0x1B3,	%o2
	stb	%i4,	[%l7 + 0x13]
	stx	%i1,	[%l7 + 0x70]
	sethi	0x1205,	%o4
	fbule,a	%fcc3,	loop_3061
	fnegs	%f8,	%f14
	popc	%g6,	%i7
	fmovsa	%icc,	%f4,	%f7
loop_3061:
	fandnot1	%f14,	%f4,	%f10
	tsubcctv	%i6,	%i5,	%i2
	bne	%icc,	loop_3062
	bvs,pn	%xcc,	loop_3063
	ldd	[%l7 + 0x68],	%f10
	movle	%xcc,	%l3,	%g3
loop_3062:
	fcmpes	%fcc3,	%f8,	%f12
loop_3063:
	ldsw	[%l7 + 0x2C],	%o7
	fmovrdlz	%g2,	%f14,	%f12
	bpos,pt	%xcc,	loop_3064
	movvs	%icc,	%g7,	%g4
	popc	%l6,	%l0
	ld	[%l7 + 0x10],	%f10
loop_3064:
	edge32	%l5,	%o3,	%g5
	ldsb	[%l7 + 0x2C],	%o6
	edge32l	%o1,	%l1,	%i3
	brgez,a	%l2,	loop_3065
	popc	%i0,	%g1
	tpos	%xcc,	0x3
	movge	%icc,	%o5,	%o0
loop_3065:
	fabss	%f13,	%f11
	fbn,a	%fcc1,	loop_3066
	fabss	%f8,	%f1
	stw	%l4,	[%l7 + 0x28]
	brz,a	%o2,	loop_3067
loop_3066:
	std	%f4,	[%l7 + 0x68]
	ld	[%l7 + 0x30],	%f3
	ld	[%l7 + 0x38],	%f3
loop_3067:
	movge	%xcc,	%i1,	%i4
	fble	%fcc0,	loop_3068
	st	%f9,	[%l7 + 0x3C]
	tneg	%icc,	0x4
	fandnot1s	%f4,	%f5,	%f1
loop_3068:
	fnand	%f8,	%f6,	%f10
	fmovrsgz	%o4,	%f15,	%f13
	std	%f6,	[%l7 + 0x48]
	sth	%i7,	[%l7 + 0x30]
	umulcc	%i6,	0x0C69,	%g6
	ldub	[%l7 + 0x26],	%i5
	fmovrsgez	%i2,	%f9,	%f11
	bg	loop_3069
	lduh	[%l7 + 0x0A],	%g3
	fmovse	%xcc,	%f6,	%f10
	brnz,a	%l3,	loop_3070
loop_3069:
	edge16	%g2,	%g7,	%g4
	fbe,a	%fcc1,	loop_3071
	stw	%l6,	[%l7 + 0x7C]
loop_3070:
	ba,a,pn	%xcc,	loop_3072
	fnot1s	%f11,	%f0
loop_3071:
	fmovde	%xcc,	%f14,	%f9
	st	%f7,	[%l7 + 0x44]
loop_3072:
	bshuffle	%f2,	%f0,	%f2
	bge,a	loop_3073
	ldsh	[%l7 + 0x28],	%o7
	stb	%l0,	[%l7 + 0x55]
	fbul	%fcc0,	loop_3074
loop_3073:
	fsrc2s	%f1,	%f9
	srax	%l5,	%g5,	%o3
	movrne	%o6,	%l1,	%i3
loop_3074:
	fmovscc	%xcc,	%f8,	%f5
	fmovdvs	%icc,	%f13,	%f10
	mulscc	%o1,	0x1F2C,	%l2
	sth	%g1,	[%l7 + 0x34]
	ldsw	[%l7 + 0x58],	%i0
	te	%icc,	0x2
	brlez	%o0,	loop_3075
	edge16	%l4,	%o2,	%o5
	tg	%icc,	0x0
	addc	%i4,	0x1B2E,	%i1
loop_3075:
	ldsb	[%l7 + 0x41],	%i7
	movl	%xcc,	%i6,	%o4
	subcc	%g6,	%i2,	%i5
	std	%f2,	[%l7 + 0x48]
	ldub	[%l7 + 0x43],	%g3
	sdivx	%l3,	0x00EE,	%g2
	sth	%g7,	[%l7 + 0x12]
	bgu,a,pt	%xcc,	loop_3076
	ldd	[%l7 + 0x40],	%f12
	ldx	[%l7 + 0x78],	%l6
	fands	%f5,	%f8,	%f2
loop_3076:
	fpsub32	%f2,	%f8,	%f0
	array16	%o7,	%g4,	%l5
	stb	%g5,	[%l7 + 0x41]
	fmovsl	%xcc,	%f14,	%f14
	ld	[%l7 + 0x10],	%f13
	fpsub32	%f2,	%f12,	%f12
	ldsw	[%l7 + 0x40],	%l0
	fnot1s	%f6,	%f14
	fcmpeq16	%f2,	%f0,	%o3
	fmovde	%icc,	%f14,	%f1
	sdivx	%o6,	0x1C25,	%l1
	sth	%o1,	[%l7 + 0x56]
	fmovspos	%icc,	%f1,	%f3
	fmovdcc	%icc,	%f7,	%f5
	mulx	%l2,	0x055E,	%i3
	sth	%i0,	[%l7 + 0x32]
	lduw	[%l7 + 0x44],	%o0
	fmovdvc	%xcc,	%f9,	%f4
	fpadd32s	%f10,	%f6,	%f12
	stx	%g1,	[%l7 + 0x60]
	lduw	[%l7 + 0x70],	%l4
	ld	[%l7 + 0x58],	%f5
	fnor	%f10,	%f6,	%f12
	fornot1	%f12,	%f6,	%f10
	fnors	%f2,	%f7,	%f3
	fbo,a	%fcc1,	loop_3077
	lduw	[%l7 + 0x74],	%o5
	lduh	[%l7 + 0x5C],	%i4
	sth	%i1,	[%l7 + 0x70]
loop_3077:
	fnand	%f0,	%f8,	%f8
	fmovrde	%i7,	%f6,	%f2
	for	%f12,	%f4,	%f2
	taddcctv	%o2,	%i6,	%g6
	lduw	[%l7 + 0x60],	%o4
	fmovsvs	%xcc,	%f2,	%f4
	ld	[%l7 + 0x60],	%f0
	fexpand	%f3,	%f12
	fbe,a	%fcc0,	loop_3078
	fcmps	%fcc1,	%f4,	%f0
	fmovrsgez	%i2,	%f1,	%f13
	ta	%xcc,	0x2
loop_3078:
	stw	%g3,	[%l7 + 0x60]
	fnand	%f14,	%f10,	%f14
	alignaddrl	%i5,	%g2,	%g7
	movre	%l3,	0x076,	%l6
	tsubcctv	%o7,	0x1927,	%g4
	stw	%g5,	[%l7 + 0x5C]
	ldsb	[%l7 + 0x48],	%l5
	umul	%l0,	0x0F67,	%o3
	ld	[%l7 + 0x50],	%f8
	fnegs	%f11,	%f11
	movle	%icc,	%o6,	%o1
	ldsw	[%l7 + 0x6C],	%l1
	edge16	%l2,	%i0,	%i3
	ldx	[%l7 + 0x68],	%o0
	fblg,a	%fcc1,	loop_3079
	fmul8ulx16	%f6,	%f14,	%f6
	edge32	%l4,	%o5,	%g1
	fmovdcc	%icc,	%f15,	%f14
loop_3079:
	ld	[%l7 + 0x2C],	%f0
	bpos,a,pt	%icc,	loop_3080
	fbg	%fcc2,	loop_3081
	st	%f7,	[%l7 + 0x30]
	st	%f6,	[%l7 + 0x10]
loop_3080:
	fones	%f6
loop_3081:
	fabsd	%f12,	%f10
	popc	0x1483,	%i4
	brgez	%i7,	loop_3082
	stw	%o2,	[%l7 + 0x50]
	movneg	%icc,	%i1,	%g6
	tl	%xcc,	0x0
loop_3082:
	edge32l	%o4,	%i2,	%i6
	ldsw	[%l7 + 0x20],	%i5
	edge16	%g2,	%g3,	%g7
	ldsw	[%l7 + 0x7C],	%l3
	fnand	%f14,	%f2,	%f2
	tvc	%xcc,	0x3
	fbule,a	%fcc3,	loop_3083
	nop
	setx loop_3084, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	array16	%l6,	%o7,	%g4
	bvs,pt	%icc,	loop_3085
loop_3083:
	fsrc1s	%f14,	%f8
loop_3084:
	edge8n	%l5,	%l0,	%o3
	ldx	[%l7 + 0x10],	%g5
loop_3085:
	stw	%o6,	[%l7 + 0x64]
	taddcc	%o1,	0x098E,	%l1
	bg,pt	%xcc,	loop_3086
	ble,pn	%icc,	loop_3087
	be,a,pn	%xcc,	loop_3088
	ldub	[%l7 + 0x22],	%i0
loop_3086:
	nop
	setx loop_3089, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_3087:
	tleu	%icc,	0x4
loop_3088:
	fcmpeq16	%f14,	%f4,	%i3
	move	%icc,	%o0,	%l4
loop_3089:
	edge16n	%l2,	%g1,	%i4
	bgu	loop_3090
	movvc	%xcc,	%i7,	%o5
	fmovsvs	%xcc,	%f0,	%f12
	or	%o2,	%i1,	%o4
loop_3090:
	srlx	%i2,	0x0D,	%i6
	lduh	[%l7 + 0x42],	%g6
	fcmpes	%fcc3,	%f4,	%f6
	ldsb	[%l7 + 0x20],	%i5
	fmovrdgz	%g3,	%f14,	%f14
	tl	%icc,	0x0
	fmovrde	%g2,	%f6,	%f12
	stx	%g7,	[%l7 + 0x50]
	bne,pn	%xcc,	loop_3091
	stx	%l6,	[%l7 + 0x38]
	tsubcctv	%l3,	0x1708,	%g4
	ldd	[%l7 + 0x60],	%f12
loop_3091:
	fone	%f8
	movvs	%icc,	%o7,	%l0
	ld	[%l7 + 0x34],	%f5
	sdivcc	%l5,	0x11FD,	%o3
	fors	%f7,	%f3,	%f6
	mova	%icc,	%o6,	%g5
	fmovda	%xcc,	%f3,	%f4
	mulscc	%o1,	%l1,	%i3
	ld	[%l7 + 0x68],	%f12
	st	%f8,	[%l7 + 0x7C]
	st	%f8,	[%l7 + 0x68]
	st	%f0,	[%l7 + 0x68]
	fors	%f7,	%f7,	%f12
	fpadd32	%f6,	%f12,	%f14
	stx	%i0,	[%l7 + 0x48]
	movvs	%icc,	%l4,	%l2
	ldx	[%l7 + 0x10],	%g1
	lduh	[%l7 + 0x7E],	%o0
	or	%i7,	0x03D7,	%i4
	fmovrsgez	%o2,	%f9,	%f15
	fxnors	%f13,	%f9,	%f12
	fmovscs	%icc,	%f3,	%f5
	brnz,a	%i1,	loop_3092
	bg,a	loop_3093
	ldx	[%l7 + 0x08],	%o5
	movle	%icc,	%o4,	%i6
loop_3092:
	fmovsgu	%icc,	%f5,	%f7
loop_3093:
	fblg,a	%fcc0,	loop_3094
	tcs	%xcc,	0x0
	fcmpne32	%f8,	%f0,	%g6
	movne	%xcc,	%i5,	%i2
loop_3094:
	tsubcctv	%g2,	%g7,	%g3
	st	%f0,	[%l7 + 0x44]
	bvc,a,pn	%xcc,	loop_3095
	brgz	%l3,	loop_3096
	alignaddr	%g4,	%o7,	%l6
	array16	%l0,	%o3,	%l5
loop_3095:
	ld	[%l7 + 0x28],	%f12
loop_3096:
	sdivx	%o6,	0x12EC,	%g5
	fmovdneg	%xcc,	%f0,	%f9
	fcmple16	%f0,	%f0,	%l1
	fmovsn	%icc,	%f2,	%f8
	edge8n	%o1,	%i0,	%i3
	fmovrdgz	%l2,	%f4,	%f0
	stb	%g1,	[%l7 + 0x6E]
	ldsw	[%l7 + 0x70],	%l4
	edge16n	%i7,	%i4,	%o2
	movn	%icc,	%i1,	%o0
	bl,a	loop_3097
	ba	loop_3098
	fone	%f12
	fmovde	%icc,	%f3,	%f0
loop_3097:
	ldsw	[%l7 + 0x0C],	%o5
loop_3098:
	sdivcc	%i6,	0x1030,	%g6
	fornot2s	%f10,	%f2,	%f3
	st	%f13,	[%l7 + 0x48]
	fxnors	%f2,	%f6,	%f10
	edge32	%o4,	%i5,	%g2
	tn	%icc,	0x2
	st	%f3,	[%l7 + 0x58]
	xor	%g7,	0x089D,	%g3
	fmovdge	%xcc,	%f9,	%f8
	fsrc2s	%f2,	%f6
	fmovscs	%icc,	%f11,	%f13
	sth	%i2,	[%l7 + 0x76]
	fmul8x16al	%f5,	%f13,	%f2
	fmovsl	%xcc,	%f5,	%f0
	tg	%icc,	0x0
	mulx	%l3,	%g4,	%l6
	stw	%l0,	[%l7 + 0x60]
	bcc,a	%icc,	loop_3099
	ldsb	[%l7 + 0x48],	%o3
	fmovrde	%o7,	%f14,	%f8
	edge16	%o6,	%l5,	%l1
loop_3099:
	subccc	%o1,	0x1FE3,	%i0
	fmovs	%f6,	%f2
	sra	%i3,	0x1F,	%l2
	fandnot1s	%f4,	%f6,	%f12
	ldub	[%l7 + 0x22],	%g1
	fpsub16s	%f4,	%f14,	%f7
	fexpand	%f6,	%f8
	fones	%f10
	tleu	%icc,	0x6
	fmovspos	%xcc,	%f10,	%f0
	ldub	[%l7 + 0x7D],	%g5
	ldsw	[%l7 + 0x58],	%l4
	subcc	%i4,	0x1080,	%o2
	srlx	%i7,	%i1,	%o5
	orcc	%o0,	%g6,	%i6
	movn	%icc,	%i5,	%g2
	nop
	setx loop_3100, %l0, %l1
	jmpl %l1, %o4
	stb	%g3,	[%l7 + 0x1C]
	fmovse	%icc,	%f8,	%f0
	movrlez	%i2,	%g7,	%l3
loop_3100:
	lduh	[%l7 + 0x4C],	%l6
	st	%f7,	[%l7 + 0x50]
	ldsw	[%l7 + 0x44],	%g4
	fnot2	%f12,	%f10
	orn	%o3,	0x08BA,	%l0
	mova	%icc,	%o6,	%l5
	fmovsn	%xcc,	%f9,	%f11
	stw	%o7,	[%l7 + 0x68]
	tvs	%icc,	0x0
	lduh	[%l7 + 0x4C],	%o1
	ldd	[%l7 + 0x78],	%f8
	fmovrsne	%i0,	%f0,	%f9
	nop
	setx loop_3101, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	brlz,a	%i3,	loop_3102
	umul	%l2,	%g1,	%l1
	array32	%g5,	%l4,	%i4
loop_3101:
	movneg	%icc,	%o2,	%i1
loop_3102:
	sdivx	%i7,	0x190F,	%o0
	edge8	%o5,	%i6,	%i5
	bne,a	%xcc,	loop_3103
	movgu	%icc,	%g6,	%g2
	fmovscc	%xcc,	%f11,	%f10
	ldd	[%l7 + 0x08],	%f12
loop_3103:
	fsrc1s	%f0,	%f1
	for	%f0,	%f2,	%f12
	be,a,pn	%xcc,	loop_3104
	tl	%xcc,	0x5
	fmovda	%icc,	%f4,	%f13
	stb	%g3,	[%l7 + 0x69]
loop_3104:
	fornot2	%f6,	%f14,	%f6
	xorcc	%i2,	%g7,	%l3
	fpsub16s	%f11,	%f11,	%f3
	fornot1	%f8,	%f0,	%f0
	bn,a	%xcc,	loop_3105
	fmovsneg	%xcc,	%f0,	%f6
	brgz	%l6,	loop_3106
	fpack32	%f2,	%f8,	%f8
loop_3105:
	fmovrse	%o4,	%f8,	%f10
	fxor	%f8,	%f4,	%f2
loop_3106:
	movn	%icc,	%o3,	%g4
	movcc	%icc,	%o6,	%l0
	fmovsle	%icc,	%f6,	%f10
	bcs,pt	%xcc,	loop_3107
	ldd	[%l7 + 0x20],	%f6
	fmovsneg	%icc,	%f9,	%f10
	fmovdne	%icc,	%f9,	%f1
loop_3107:
	sra	%l5,	%o1,	%i0
	fpsub16	%f2,	%f0,	%f6
	udivcc	%i3,	0x0274,	%l2
	tleu	%icc,	0x3
	subccc	%o7,	0x13D0,	%g1
	fmovde	%icc,	%f3,	%f6
	stb	%l1,	[%l7 + 0x32]
	fblg	%fcc1,	loop_3108
	lduh	[%l7 + 0x3C],	%g5
	sll	%i4,	%o2,	%l4
	alignaddrl	%i1,	%o0,	%i7
loop_3108:
	stx	%o5,	[%l7 + 0x48]
	lduh	[%l7 + 0x24],	%i6
	fmovrdlez	%g6,	%f8,	%f14
	fmovdne	%xcc,	%f8,	%f7
	udivx	%g2,	0x19C3,	%i5
	tn	%icc,	0x2
	addccc	%g3,	0x07EB,	%g7
	fmul8x16	%f1,	%f8,	%f14
	fbug,a	%fcc0,	loop_3109
	fsrc1	%f4,	%f14
	sdiv	%l3,	0x05B6,	%i2
	andcc	%l6,	0x0058,	%o4
loop_3109:
	fmovrdne	%g4,	%f0,	%f0
	tle	%icc,	0x5
	fcmpd	%fcc1,	%f2,	%f8
	brz,a	%o3,	loop_3110
	movvs	%xcc,	%l0,	%l5
	std	%f8,	[%l7 + 0x08]
	fmovscs	%icc,	%f13,	%f14
loop_3110:
	lduh	[%l7 + 0x62],	%o6
	andn	%i0,	%o1,	%l2
	ldx	[%l7 + 0x10],	%i3
	te	%xcc,	0x4
	fmovrsne	%g1,	%f9,	%f10
	fbl,a	%fcc1,	loop_3111
	fxors	%f2,	%f6,	%f1
	move	%icc,	%o7,	%l1
	ldsw	[%l7 + 0x6C],	%i4
loop_3111:
	fmovrdgez	%g5,	%f0,	%f14
	ldsh	[%l7 + 0x38],	%l4
	pdist	%f0,	%f8,	%f4
	add	%i1,	%o2,	%o0
	addcc	%o5,	%i7,	%i6
	st	%f0,	[%l7 + 0x14]
	ldsh	[%l7 + 0x14],	%g6
	fmovdge	%icc,	%f1,	%f11
	fmovrslz	%g2,	%f0,	%f15
	stx	%i5,	[%l7 + 0x30]
	sth	%g3,	[%l7 + 0x3A]
	fmovsvc	%xcc,	%f14,	%f11
	edge16	%g7,	%l3,	%l6
	fxor	%f0,	%f10,	%f2
	subcc	%i2,	0x0228,	%g4
	bleu,a,pt	%xcc,	loop_3112
	fnot2	%f0,	%f6
	ldub	[%l7 + 0x70],	%o4
	xorcc	%o3,	0x03FF,	%l5
loop_3112:
	movvs	%xcc,	%o6,	%i0
	stb	%o1,	[%l7 + 0x1A]
	popc	%l2,	%l0
	bcc	%icc,	loop_3113
	bg,a,pn	%icc,	loop_3114
	ld	[%l7 + 0x68],	%f2
	smulcc	%g1,	0x1FD0,	%o7
loop_3113:
	fmovdleu	%icc,	%f15,	%f10
loop_3114:
	stb	%i3,	[%l7 + 0x3A]
	bcs,a	loop_3115
	stb	%l1,	[%l7 + 0x58]
	ldd	[%l7 + 0x28],	%f4
	fmovrdgz	%i4,	%f12,	%f10
loop_3115:
	ld	[%l7 + 0x5C],	%f15
	st	%f6,	[%l7 + 0x4C]
	brz	%g5,	loop_3116
	ldub	[%l7 + 0x10],	%l4
	st	%f7,	[%l7 + 0x2C]
	and	%o2,	%i1,	%o5
loop_3116:
	fbl,a	%fcc1,	loop_3117
	sra	%o0,	%i6,	%i7
	fbug	%fcc3,	loop_3118
	tleu	%xcc,	0x7
loop_3117:
	addc	%g6,	%g2,	%g3
	movrne	%g7,	0x106,	%l3
loop_3118:
	movvs	%icc,	%i5,	%l6
	popc	0x0865,	%g4
	nop
	setx loop_3119, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	sll	%i2,	0x1A,	%o4
	lduh	[%l7 + 0x58],	%l5
	sth	%o6,	[%l7 + 0x1A]
loop_3119:
	pdist	%f10,	%f10,	%f0
	ldsh	[%l7 + 0x52],	%i0
	nop
	setx loop_3120, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	xorcc	%o1,	0x05E1,	%l2
	bcc,pt	%xcc,	loop_3121
	ldx	[%l7 + 0x50],	%l0
loop_3120:
	fbne,a	%fcc1,	loop_3122
	stb	%g1,	[%l7 + 0x27]
loop_3121:
	st	%f5,	[%l7 + 0x0C]
	brgz,a	%o3,	loop_3123
loop_3122:
	stw	%o7,	[%l7 + 0x20]
	move	%xcc,	%i3,	%i4
	fbe,a	%fcc0,	loop_3124
loop_3123:
	ldx	[%l7 + 0x48],	%l1
	tsubcc	%g5,	%o2,	%i1
	fmovdg	%xcc,	%f8,	%f10
loop_3124:
	fmovrsgez	%o5,	%f13,	%f0
	stb	%l4,	[%l7 + 0x61]
	smul	%o0,	%i6,	%i7
	movne	%icc,	%g2,	%g3
	lduw	[%l7 + 0x10],	%g6
	std	%f6,	[%l7 + 0x70]
	stb	%l3,	[%l7 + 0x63]
	tg	%icc,	0x1
	ldsh	[%l7 + 0x38],	%i5
	fmovsleu	%icc,	%f7,	%f2
	fmovdg	%xcc,	%f6,	%f4
	tle	%icc,	0x6
	stb	%l6,	[%l7 + 0x09]
	fnot2s	%f12,	%f14
	stb	%g4,	[%l7 + 0x62]
	fpack32	%f12,	%f10,	%f8
	movl	%icc,	%g7,	%i2
	lduh	[%l7 + 0x50],	%l5
	st	%f13,	[%l7 + 0x2C]
	fbn	%fcc2,	loop_3125
	ld	[%l7 + 0x1C],	%f1
	movcc	%icc,	%o4,	%i0
	fpsub16s	%f12,	%f3,	%f15
loop_3125:
	std	%f0,	[%l7 + 0x68]
	sth	%o6,	[%l7 + 0x08]
	nop
	setx loop_3126, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldsh	[%l7 + 0x7E],	%o1
	array16	%l2,	%l0,	%o3
	fxnors	%f2,	%f12,	%f9
loop_3126:
	fcmps	%fcc0,	%f3,	%f10
	tne	%icc,	0x5
	std	%f14,	[%l7 + 0x78]
	fmul8x16al	%f11,	%f3,	%f4
	bneg,a	loop_3127
	fbl,a	%fcc2,	loop_3128
	movrgez	%o7,	0x260,	%i3
	movpos	%icc,	%i4,	%l1
loop_3127:
	popc	%g5,	%o2
loop_3128:
	fmul8x16	%f2,	%f14,	%f8
	fcmpeq32	%f10,	%f8,	%i1
	lduh	[%l7 + 0x34],	%g1
	fmovdgu	%icc,	%f9,	%f10
	movvs	%xcc,	%l4,	%o0
	ld	[%l7 + 0x5C],	%f15
	fmovsge	%icc,	%f0,	%f5
	edge8ln	%i6,	%i7,	%g2
	movrlez	%g3,	0x0C4,	%o5
	stb	%g6,	[%l7 + 0x4B]
	fcmpne16	%f0,	%f12,	%i5
	fxnors	%f10,	%f13,	%f6
	sllx	%l6,	0x0E,	%g4
	sth	%g7,	[%l7 + 0x12]
	tcs	%xcc,	0x4
	edge16l	%l3,	%i2,	%o4
	fpsub16s	%f11,	%f5,	%f14
	sth	%i0,	[%l7 + 0x5E]
	stw	%o6,	[%l7 + 0x48]
	fxnors	%f7,	%f11,	%f8
	ld	[%l7 + 0x40],	%f10
	bpos	%icc,	loop_3129
	sth	%o1,	[%l7 + 0x7A]
	fxnors	%f4,	%f8,	%f14
	fbn	%fcc1,	loop_3130
loop_3129:
	fblg	%fcc2,	loop_3131
	sub	%l2,	%l5,	%o3
	std	%f10,	[%l7 + 0x58]
loop_3130:
	fcmpgt16	%f8,	%f2,	%l0
loop_3131:
	fpack32	%f6,	%f2,	%f8
	ldsh	[%l7 + 0x6C],	%i3
	ldsb	[%l7 + 0x08],	%i4
	array16	%l1,	%g5,	%o7
	movcs	%xcc,	%i1,	%o2
	fmovrslez	%l4,	%f2,	%f13
	std	%f2,	[%l7 + 0x10]
	for	%f12,	%f2,	%f14
	fcmpgt16	%f10,	%f0,	%o0
	edge8	%i6,	%i7,	%g1
	fba,a	%fcc2,	loop_3132
	fmovdleu	%xcc,	%f6,	%f0
	tneg	%xcc,	0x0
	fcmple16	%f0,	%f8,	%g3
loop_3132:
	std	%f2,	[%l7 + 0x58]
	stx	%g2,	[%l7 + 0x40]
	fpadd32s	%f7,	%f12,	%f2
	fbg	%fcc0,	loop_3133
	tpos	%xcc,	0x1
	ldub	[%l7 + 0x54],	%g6
	movge	%xcc,	%o5,	%i5
loop_3133:
	stb	%l6,	[%l7 + 0x7E]
	bshuffle	%f8,	%f6,	%f0
	tleu	%icc,	0x1
	fmovrde	%g4,	%f12,	%f10
	ldd	[%l7 + 0x70],	%f10
	sub	%l3,	%g7,	%o4
	stb	%i2,	[%l7 + 0x0F]
	xnor	%i0,	%o1,	%o6
	fcmple32	%f4,	%f2,	%l2
	smul	%l5,	0x0835,	%o3
	std	%f4,	[%l7 + 0x18]
	xnor	%l0,	0x0208,	%i4
	bg	%xcc,	loop_3134
	edge32	%i3,	%l1,	%o7
	fpadd32s	%f8,	%f15,	%f2
	bne	loop_3135
loop_3134:
	fexpand	%f9,	%f14
	ldsw	[%l7 + 0x2C],	%i1
	mulscc	%g5,	%l4,	%o2
loop_3135:
	st	%f12,	[%l7 + 0x4C]
	ldub	[%l7 + 0x65],	%i6
	std	%f4,	[%l7 + 0x68]
	movrgz	%o0,	0x30E,	%i7
	std	%f14,	[%l7 + 0x50]
	fnot2s	%f13,	%f13
	ldsh	[%l7 + 0x20],	%g1
	sdiv	%g3,	0x0EED,	%g2
	lduw	[%l7 + 0x60],	%g6
	fble	%fcc3,	loop_3136
	stb	%o5,	[%l7 + 0x55]
	movrgz	%l6,	0x26B,	%i5
	stw	%l3,	[%l7 + 0x6C]
loop_3136:
	fcmpgt32	%f2,	%f8,	%g4
	ba,a	%xcc,	loop_3137
	tneg	%xcc,	0x4
	fandnot2	%f8,	%f14,	%f0
	std	%f10,	[%l7 + 0x78]
loop_3137:
	fmovd	%f6,	%f8
	lduw	[%l7 + 0x2C],	%o4
	fmovsleu	%xcc,	%f12,	%f4
	fbn	%fcc1,	loop_3138
	fmovdpos	%icc,	%f15,	%f5
	sth	%g7,	[%l7 + 0x40]
	fmovsleu	%xcc,	%f9,	%f1
loop_3138:
	fmovrsne	%i2,	%f14,	%f7
	ldx	[%l7 + 0x68],	%o1
	call	loop_3139
	fnor	%f0,	%f12,	%f10
	st	%f7,	[%l7 + 0x78]
	lduh	[%l7 + 0x24],	%o6
loop_3139:
	ldsw	[%l7 + 0x44],	%l2
	xnorcc	%i0,	0x1EDA,	%o3
	ldx	[%l7 + 0x38],	%l5
	std	%f12,	[%l7 + 0x40]
	ldsw	[%l7 + 0x0C],	%l0
	ld	[%l7 + 0x74],	%f10
	ldx	[%l7 + 0x08],	%i4
	ldx	[%l7 + 0x40],	%l1
	bg,a	%xcc,	loop_3140
	ldx	[%l7 + 0x18],	%i3
	addccc	%i1,	0x1391,	%o7
	tn	%icc,	0x7
loop_3140:
	ld	[%l7 + 0x48],	%f12
	fbg,a	%fcc1,	loop_3141
	fmul8x16	%f14,	%f12,	%f10
	fbul,a	%fcc2,	loop_3142
	addcc	%l4,	0x1F99,	%o2
loop_3141:
	stb	%g5,	[%l7 + 0x31]
	brgz,a	%i6,	loop_3143
loop_3142:
	fbue	%fcc1,	loop_3144
	taddcctv	%i7,	%o0,	%g3
	fmovdvs	%xcc,	%f15,	%f0
loop_3143:
	stb	%g2,	[%l7 + 0x4B]
loop_3144:
	xorcc	%g1,	%g6,	%l6
	udivcc	%o5,	0x0F01,	%l3
	popc	%g4,	%o4
	orcc	%g7,	%i2,	%o1
	movrlez	%o6,	%i5,	%l2
	smul	%i0,	0x0542,	%o3
	alignaddrl	%l0,	%i4,	%l1
	fbug,a	%fcc0,	loop_3145
	edge16	%i3,	%l5,	%i1
	fmovrslz	%o7,	%f4,	%f0
	and	%o2,	0x1C68,	%l4
loop_3145:
	edge16	%i6,	%i7,	%o0
	fcmpd	%fcc3,	%f14,	%f6
	fcmpne16	%f8,	%f0,	%g5
	fmovsn	%xcc,	%f9,	%f9
	ldsh	[%l7 + 0x46],	%g2
	std	%f8,	[%l7 + 0x50]
	fba,a	%fcc3,	loop_3146
	ldd	[%l7 + 0x70],	%f0
	lduh	[%l7 + 0x20],	%g3
	xnorcc	%g1,	%l6,	%g6
loop_3146:
	bcc,a,pn	%icc,	loop_3147
	ldub	[%l7 + 0x13],	%l3
	lduw	[%l7 + 0x3C],	%g4
	fmovdpos	%icc,	%f6,	%f14
loop_3147:
	alignaddrl	%o5,	%o4,	%g7
	tne	%icc,	0x2
	srlx	%o1,	0x18,	%i2
	fmovrde	%o6,	%f2,	%f6
	fbn,a	%fcc2,	loop_3148
	fmovsneg	%icc,	%f14,	%f11
	lduh	[%l7 + 0x5C],	%i5
	fcmped	%fcc1,	%f4,	%f8
loop_3148:
	andcc	%l2,	0x0DC6,	%o3
	ldsh	[%l7 + 0x3A],	%i0
	fands	%f15,	%f9,	%f9
	stw	%i4,	[%l7 + 0x54]
	fbo,a	%fcc2,	loop_3149
	lduw	[%l7 + 0x40],	%l0
	bcs,pt	%xcc,	loop_3150
	ld	[%l7 + 0x1C],	%f14
loop_3149:
	fmovdpos	%icc,	%f7,	%f9
	subc	%l1,	0x1EF1,	%l5
loop_3150:
	st	%f11,	[%l7 + 0x14]
	fmovsge	%icc,	%f6,	%f8
	stb	%i3,	[%l7 + 0x52]
	st	%f10,	[%l7 + 0x6C]
	brlz,a	%o7,	loop_3151
	fmuld8sux16	%f9,	%f12,	%f6
	stb	%i1,	[%l7 + 0x72]
	stb	%o2,	[%l7 + 0x6D]
loop_3151:
	array8	%i6,	%i7,	%o0
	fnegs	%f2,	%f5
	ldub	[%l7 + 0x24],	%g5
	fandnot2s	%f7,	%f11,	%f15
	fmul8sux16	%f6,	%f14,	%f2
	xorcc	%l4,	%g3,	%g2
	bl,a	%icc,	loop_3152
	bpos	%icc,	loop_3153
	fxor	%f2,	%f14,	%f10
	brgez,a	%g1,	loop_3154
loop_3152:
	edge8ln	%g6,	%l6,	%l3
loop_3153:
	tn	%icc,	0x4
	tsubcc	%o5,	%o4,	%g4
loop_3154:
	fmovdn	%xcc,	%f3,	%f9
	sth	%o1,	[%l7 + 0x6E]
	ld	[%l7 + 0x50],	%f7
	umul	%i2,	%o6,	%i5
	lduh	[%l7 + 0x38],	%l2
	fbge	%fcc2,	loop_3155
	ba,pn	%icc,	loop_3156
	brgz,a	%o3,	loop_3157
	fmovsl	%xcc,	%f0,	%f9
loop_3155:
	movcc	%xcc,	%i0,	%g7
loop_3156:
	brlz	%l0,	loop_3158
loop_3157:
	fbn	%fcc1,	loop_3159
	fmovde	%xcc,	%f2,	%f13
	udivx	%i4,	0x1EB3,	%l5
loop_3158:
	edge16n	%l1,	%o7,	%i1
loop_3159:
	fbule	%fcc2,	loop_3160
	xnorcc	%i3,	%o2,	%i6
	fpsub32	%f0,	%f12,	%f14
	tl	%icc,	0x1
loop_3160:
	fsrc2	%f8,	%f2
	ldub	[%l7 + 0x0D],	%o0
	fcmped	%fcc1,	%f2,	%f6
	fmovdcc	%xcc,	%f13,	%f7
	brnz	%i7,	loop_3161
	fmovdl	%xcc,	%f4,	%f7
	ld	[%l7 + 0x58],	%f10
	lduw	[%l7 + 0x6C],	%l4
loop_3161:
	lduh	[%l7 + 0x56],	%g5
	ldub	[%l7 + 0x50],	%g3
	lduh	[%l7 + 0x5A],	%g2
	fxor	%f4,	%f10,	%f14
	fmovdpos	%icc,	%f13,	%f6
	ta	%xcc,	0x4
	tpos	%icc,	0x7
	fmovd	%f14,	%f0
	std	%f8,	[%l7 + 0x50]
	edge16n	%g6,	%g1,	%l3
	fcmpgt16	%f2,	%f10,	%l6
	fcmpgt32	%f10,	%f12,	%o5
	ldub	[%l7 + 0x51],	%g4
	tvc	%icc,	0x3
	mova	%icc,	%o1,	%i2
	subccc	%o6,	0x0FC1,	%o4
	ldsh	[%l7 + 0x2E],	%l2
	udiv	%i5,	0x0AEE,	%i0
	movge	%xcc,	%o3,	%l0
	fbg	%fcc2,	loop_3162
	srl	%i4,	0x0A,	%l5
	ldub	[%l7 + 0x36],	%g7
	edge8n	%l1,	%o7,	%i3
loop_3162:
	fmovdle	%icc,	%f13,	%f1
	fmovsvs	%icc,	%f8,	%f2
	bgu,a,pt	%icc,	loop_3163
	fble,a	%fcc0,	loop_3164
	brnz,a	%o2,	loop_3165
	tneg	%xcc,	0x7
loop_3163:
	ldub	[%l7 + 0x6C],	%i1
loop_3164:
	stx	%i6,	[%l7 + 0x40]
loop_3165:
	fmovsle	%icc,	%f3,	%f8
	subc	%o0,	0x0099,	%l4
	ta	%icc,	0x1
	edge8n	%g5,	%g3,	%i7
	ldd	[%l7 + 0x18],	%f0
	stb	%g6,	[%l7 + 0x1F]
	fmovsvs	%xcc,	%f12,	%f5
	st	%f2,	[%l7 + 0x5C]
	brz	%g1,	loop_3166
	bge,pn	%icc,	loop_3167
	sth	%g2,	[%l7 + 0x5E]
	fmovrslez	%l3,	%f6,	%f5
loop_3166:
	smulcc	%o5,	0x0043,	%l6
loop_3167:
	fmovda	%icc,	%f5,	%f8
	fpackfix	%f8,	%f4
	bg,a	%icc,	loop_3168
	fmovsg	%icc,	%f2,	%f1
	fcmpgt16	%f0,	%f14,	%o1
	fpackfix	%f4,	%f6
loop_3168:
	fcmpd	%fcc0,	%f10,	%f6
	stw	%i2,	[%l7 + 0x60]
	bvs,pn	%xcc,	loop_3169
	brgz,a	%o6,	loop_3170
	fmovdneg	%xcc,	%f14,	%f1
	mulx	%o4,	0x147A,	%g4
loop_3169:
	ldsw	[%l7 + 0x3C],	%i5
loop_3170:
	mova	%xcc,	%l2,	%i0
	fandnot2	%f14,	%f4,	%f4
	tvc	%xcc,	0x7
	tle	%icc,	0x7
	fpack32	%f14,	%f14,	%f0
	st	%f13,	[%l7 + 0x60]
	ldub	[%l7 + 0x7E],	%o3
	bg,a,pt	%xcc,	loop_3171
	brlez,a	%l0,	loop_3172
	fones	%f2
	be,pt	%icc,	loop_3173
loop_3171:
	ldsb	[%l7 + 0x41],	%i4
loop_3172:
	tpos	%icc,	0x6
	bleu,pt	%xcc,	loop_3174
loop_3173:
	fmovsa	%icc,	%f8,	%f1
	st	%f15,	[%l7 + 0x70]
	tcs	%xcc,	0x7
loop_3174:
	fone	%f14
	fcmple16	%f14,	%f14,	%l5
	fmul8ulx16	%f10,	%f8,	%f2
	ldsw	[%l7 + 0x38],	%g7
	fnot2	%f0,	%f12
	ld	[%l7 + 0x18],	%f6
	tg	%icc,	0x1
	stw	%l1,	[%l7 + 0x60]
	sdiv	%i3,	0x1798,	%o7
	fmuld8ulx16	%f9,	%f2,	%f12
	ld	[%l7 + 0x5C],	%f5
	smul	%i1,	0x1868,	%i6
	fmovdn	%icc,	%f9,	%f8
	fsrc1s	%f4,	%f1
	fpsub16	%f14,	%f0,	%f14
	call	loop_3175
	stw	%o2,	[%l7 + 0x38]
	bl,pt	%icc,	loop_3176
	std	%f12,	[%l7 + 0x28]
loop_3175:
	fmovsleu	%xcc,	%f4,	%f2
	movge	%xcc,	%o0,	%l4
loop_3176:
	fmovdgu	%xcc,	%f8,	%f0
	stx	%g5,	[%l7 + 0x48]
	edge32	%i7,	%g3,	%g6
	ldx	[%l7 + 0x78],	%g1
	fbg,a	%fcc1,	loop_3177
	movre	%g2,	0x233,	%o5
	fcmped	%fcc2,	%f6,	%f0
	bg,a,pn	%icc,	loop_3178
loop_3177:
	stx	%l3,	[%l7 + 0x20]
	ldub	[%l7 + 0x6C],	%o1
	fmovde	%icc,	%f9,	%f9
loop_3178:
	bcc,a,pn	%xcc,	loop_3179
	addcc	%i2,	%o6,	%o4
	orcc	%l6,	%g4,	%l2
	std	%f0,	[%l7 + 0x08]
loop_3179:
	sethi	0x0D4F,	%i5
	tg	%xcc,	0x5
	fmovda	%icc,	%f2,	%f11
	fmovrslz	%i0,	%f0,	%f8
	bn	loop_3180
	lduw	[%l7 + 0x08],	%l0
	std	%f10,	[%l7 + 0x40]
	fpadd16s	%f5,	%f13,	%f0
loop_3180:
	fsrc1s	%f11,	%f9
	ldub	[%l7 + 0x18],	%o3
	edge8l	%i4,	%l5,	%l1
	fmovrsgez	%i3,	%f1,	%f12
	tge	%icc,	0x4
	ldx	[%l7 + 0x20],	%o7
	edge32n	%g7,	%i6,	%o2
	bge,a,pn	%icc,	loop_3181
	andncc	%i1,	%o0,	%l4
	lduh	[%l7 + 0x6A],	%i7
	fbn	%fcc1,	loop_3182
loop_3181:
	fbg	%fcc0,	loop_3183
	ldsb	[%l7 + 0x2D],	%g3
	fxnors	%f5,	%f0,	%f9
loop_3182:
	ldx	[%l7 + 0x78],	%g5
loop_3183:
	fbl,a	%fcc3,	loop_3184
	fbe,a	%fcc1,	loop_3185
	fornot1	%f2,	%f8,	%f2
	bneg,pt	%icc,	loop_3186
loop_3184:
	fexpand	%f15,	%f2
loop_3185:
	bvs,a,pn	%icc,	loop_3187
	ldsb	[%l7 + 0x19],	%g1
loop_3186:
	brlez,a	%g6,	loop_3188
	fbule,a	%fcc3,	loop_3189
loop_3187:
	andcc	%o5,	%l3,	%g2
	edge8l	%o1,	%o6,	%i2
loop_3188:
	fbn,a	%fcc0,	loop_3190
loop_3189:
	bge,a	%icc,	loop_3191
	tg	%xcc,	0x2
	ldsw	[%l7 + 0x1C],	%o4
loop_3190:
	fmovdleu	%xcc,	%f15,	%f2
loop_3191:
	bg,pt	%icc,	loop_3192
	mulx	%g4,	0x0721,	%l2
	brz,a	%i5,	loop_3193
	fbe	%fcc2,	loop_3194
loop_3192:
	fnegd	%f8,	%f8
	ldsh	[%l7 + 0x76],	%l6
loop_3193:
	ldsw	[%l7 + 0x60],	%l0
loop_3194:
	stx	%i0,	[%l7 + 0x60]
	stb	%i4,	[%l7 + 0x3C]
	fmovse	%icc,	%f2,	%f10
	ldsw	[%l7 + 0x7C],	%l5
	fpadd16s	%f0,	%f15,	%f2
	mulx	%o3,	0x1E7D,	%l1
	stx	%o7,	[%l7 + 0x38]
	nop
	setx loop_3195, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	lduw	[%l7 + 0x5C],	%g7
	std	%f2,	[%l7 + 0x28]
	fcmpgt16	%f0,	%f6,	%i3
loop_3195:
	tn	%icc,	0x5
	fmuld8sux16	%f15,	%f15,	%f6
	bvc,pn	%xcc,	loop_3196
	add	%o2,	0x10D3,	%i6
	std	%f8,	[%l7 + 0x48]
	stb	%i1,	[%l7 + 0x47]
loop_3196:
	te	%icc,	0x3
	fbo	%fcc1,	loop_3197
	ldd	[%l7 + 0x58],	%f2
	fmovsa	%xcc,	%f14,	%f5
	tcc	%xcc,	0x1
loop_3197:
	fmovrde	%l4,	%f12,	%f8
	fmovrsgez	%o0,	%f10,	%f2
	ldsb	[%l7 + 0x5B],	%g3
	stw	%g5,	[%l7 + 0x10]
	lduw	[%l7 + 0x10],	%g1
	stx	%i7,	[%l7 + 0x08]
	fnor	%f10,	%f14,	%f8
	fba	%fcc2,	loop_3198
	fpack16	%f14,	%f8
	ldsb	[%l7 + 0x32],	%o5
	ldsw	[%l7 + 0x0C],	%g6
loop_3198:
	movne	%xcc,	%l3,	%g2
	ldsb	[%l7 + 0x1A],	%o6
	sll	%o1,	%i2,	%o4
	fmuld8sux16	%f12,	%f1,	%f2
	ldsw	[%l7 + 0x48],	%l2
	edge16	%g4,	%l6,	%i5
	ld	[%l7 + 0x70],	%f6
	nop
	setx loop_3199, %l0, %l1
	jmpl %l1, %i0
	andn	%i4,	%l5,	%l0
	ldub	[%l7 + 0x3B],	%l1
	srlx	%o3,	%o7,	%g7
loop_3199:
	edge8	%o2,	%i6,	%i3
	fandnot2	%f6,	%f8,	%f8
	tgu	%icc,	0x3
	fcmpne16	%f2,	%f10,	%l4
	stx	%o0,	[%l7 + 0x70]
	udiv	%i1,	0x0C61,	%g5
	and	%g1,	%i7,	%o5
	fnot1s	%f7,	%f5
	movrlz	%g6,	%g3,	%g2
	lduh	[%l7 + 0x22],	%l3
	fornot2s	%f11,	%f7,	%f11
	st	%f12,	[%l7 + 0x68]
	stx	%o1,	[%l7 + 0x68]
	brnz,a	%o6,	loop_3200
	alignaddrl	%o4,	%i2,	%l2
	st	%f1,	[%l7 + 0x1C]
	movneg	%icc,	%g4,	%i5
loop_3200:
	bshuffle	%f12,	%f14,	%f4
	ta	%icc,	0x2
	stw	%l6,	[%l7 + 0x44]
	lduh	[%l7 + 0x66],	%i0
	tne	%xcc,	0x1
	stx	%i4,	[%l7 + 0x30]
	be,pt	%xcc,	loop_3201
	array8	%l0,	%l1,	%l5
	bpos,pt	%icc,	loop_3202
	ldsh	[%l7 + 0x42],	%o3
loop_3201:
	std	%f12,	[%l7 + 0x18]
	std	%f2,	[%l7 + 0x30]
loop_3202:
	fbg	%fcc1,	loop_3203
	movrlz	%o7,	0x214,	%o2
	orcc	%i6,	0x1E38,	%i3
	fands	%f7,	%f6,	%f11
loop_3203:
	nop
	setx loop_3204, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovda	%xcc,	%f15,	%f14
	popc	0x1971,	%l4
	ldub	[%l7 + 0x27],	%g7
loop_3204:
	fmovrse	%o0,	%f0,	%f8
	tsubcc	%g5,	0x0D4B,	%i1
	st	%f7,	[%l7 + 0x68]
	movge	%icc,	%i7,	%o5
	st	%f7,	[%l7 + 0x1C]
	ldx	[%l7 + 0x68],	%g6
	movrlez	%g1,	%g3,	%g2
	ldx	[%l7 + 0x08],	%l3
	tneg	%icc,	0x7
	fmovsle	%xcc,	%f3,	%f13
	stb	%o6,	[%l7 + 0x4A]
	fxors	%f11,	%f4,	%f13
	stw	%o1,	[%l7 + 0x20]
	ld	[%l7 + 0x64],	%f15
	ldub	[%l7 + 0x34],	%i2
	addc	%l2,	0x00C1,	%o4
	fbule	%fcc0,	loop_3205
	sdivcc	%g4,	0x0150,	%i5
	fbue,a	%fcc2,	loop_3206
	bge	loop_3207
loop_3205:
	xnorcc	%l6,	%i0,	%i4
	and	%l0,	0x0415,	%l1
loop_3206:
	bl	loop_3208
loop_3207:
	tleu	%icc,	0x5
	bne	loop_3209
	ldsb	[%l7 + 0x42],	%o3
loop_3208:
	fcmple16	%f14,	%f14,	%l5
	mulx	%o7,	%o2,	%i3
loop_3209:
	fbuge	%fcc2,	loop_3210
	fmovda	%xcc,	%f2,	%f11
	fmovsge	%icc,	%f5,	%f14
	brgez	%i6,	loop_3211
loop_3210:
	bne,pt	%icc,	loop_3212
	movvs	%xcc,	%g7,	%o0
	call	loop_3213
loop_3211:
	st	%f11,	[%l7 + 0x68]
loop_3212:
	movne	%icc,	%l4,	%g5
	tge	%icc,	0x5
loop_3213:
	subc	%i7,	%o5,	%g6
	add	%g1,	0x1B22,	%g3
	sdivx	%i1,	0x0F74,	%g2
	fmovsgu	%xcc,	%f0,	%f8
	lduh	[%l7 + 0x08],	%o6
	ldsb	[%l7 + 0x24],	%l3
	fmovsvs	%xcc,	%f14,	%f12
	stw	%i2,	[%l7 + 0x14]
	tcs	%xcc,	0x4
	ld	[%l7 + 0x54],	%f13
	ldx	[%l7 + 0x68],	%l2
	movrlez	%o1,	%g4,	%o4
	sth	%i5,	[%l7 + 0x64]
	mulx	%l6,	0x0F19,	%i4
	tvc	%icc,	0x0
	lduh	[%l7 + 0x70],	%i0
	stb	%l0,	[%l7 + 0x3A]
	std	%f10,	[%l7 + 0x50]
	edge16l	%o3,	%l5,	%l1
	fmovsle	%icc,	%f1,	%f10
	alignaddr	%o7,	%i3,	%i6
	bcc,pn	%xcc,	loop_3214
	movrgez	%g7,	%o0,	%o2
	orn	%l4,	0x189B,	%i7
	fpsub32	%f4,	%f6,	%f14
loop_3214:
	tg	%icc,	0x4
	edge16ln	%o5,	%g6,	%g1
	stb	%g5,	[%l7 + 0x14]
	fbe,a	%fcc3,	loop_3215
	brz	%g3,	loop_3216
	fblg	%fcc3,	loop_3217
	ldub	[%l7 + 0x70],	%g2
loop_3215:
	te	%xcc,	0x0
loop_3216:
	fnand	%f4,	%f0,	%f12
loop_3217:
	faligndata	%f12,	%f6,	%f2
	movpos	%icc,	%i1,	%l3
	lduw	[%l7 + 0x3C],	%i2
	tsubcctv	%l2,	0x1C15,	%o6
	tleu	%icc,	0x0
	bvs,pn	%xcc,	loop_3218
	ldsh	[%l7 + 0x14],	%o1
	ldsb	[%l7 + 0x0C],	%g4
	lduw	[%l7 + 0x64],	%i5
loop_3218:
	std	%f2,	[%l7 + 0x30]
	ldsb	[%l7 + 0x18],	%l6
	ld	[%l7 + 0x14],	%f1
	fbn	%fcc2,	loop_3219
	std	%f2,	[%l7 + 0x48]
	ldx	[%l7 + 0x08],	%i4
	alignaddr	%i0,	%l0,	%o3
loop_3219:
	stw	%o4,	[%l7 + 0x54]
	bneg,a	%icc,	loop_3220
	bvs	loop_3221
	fmovdpos	%icc,	%f9,	%f6
	fands	%f1,	%f6,	%f3
loop_3220:
	sethi	0x0311,	%l5
loop_3221:
	ldsb	[%l7 + 0x40],	%l1
	xnor	%o7,	0x1BB2,	%i6
	fmovdcs	%xcc,	%f15,	%f13
	st	%f2,	[%l7 + 0x64]
	movleu	%xcc,	%i3,	%o0
	fmovdneg	%xcc,	%f13,	%f3
	stb	%o2,	[%l7 + 0x6D]
	fornot1	%f6,	%f10,	%f6
	fornot2	%f14,	%f2,	%f0
	fcmple32	%f12,	%f4,	%l4
	fandnot2	%f4,	%f2,	%f12
	fmovdneg	%xcc,	%f7,	%f7
	fbne	%fcc0,	loop_3222
	fbl	%fcc0,	loop_3223
	tcc	%icc,	0x2
	stw	%i7,	[%l7 + 0x18]
loop_3222:
	taddcctv	%g7,	0x1651,	%o5
loop_3223:
	ta	%xcc,	0x4
	edge16	%g6,	%g5,	%g1
	bcs,a,pt	%icc,	loop_3224
	fmovrsgez	%g3,	%f1,	%f14
	tn	%xcc,	0x6
	ldsb	[%l7 + 0x48],	%g2
loop_3224:
	sethi	0x1E4D,	%i1
	fcmpeq32	%f4,	%f8,	%i2
	bg,a	loop_3225
	ldd	[%l7 + 0x10],	%f6
	nop
	setx loop_3226, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fbe	%fcc3,	loop_3227
loop_3225:
	fcmpeq16	%f8,	%f6,	%l2
	fbne	%fcc0,	loop_3228
loop_3226:
	edge16l	%o6,	%o1,	%g4
loop_3227:
	sethi	0x0513,	%i5
	movcs	%icc,	%l6,	%l3
loop_3228:
	lduh	[%l7 + 0x3A],	%i0
	std	%f14,	[%l7 + 0x70]
	sth	%l0,	[%l7 + 0x44]
	stw	%i4,	[%l7 + 0x0C]
	stx	%o3,	[%l7 + 0x50]
	fbu,a	%fcc1,	loop_3229
	nop
	setx loop_3230, %l0, %l1
	jmpl %l1, %l5
	movvs	%xcc,	%l1,	%o4
	stx	%o7,	[%l7 + 0x50]
loop_3229:
	ld	[%l7 + 0x50],	%f13
loop_3230:
	fble,a	%fcc2,	loop_3231
	fzero	%f10
	edge8l	%i3,	%o0,	%i6
	stw	%l4,	[%l7 + 0x2C]
loop_3231:
	stb	%o2,	[%l7 + 0x4F]
	tsubcc	%g7,	%i7,	%g6
	fnot2s	%f8,	%f7
	stx	%o5,	[%l7 + 0x48]
	fone	%f12
	std	%f0,	[%l7 + 0x28]
	fmovrdgz	%g5,	%f4,	%f14
	lduw	[%l7 + 0x38],	%g1
	movrne	%g2,	%i1,	%i2
	ldx	[%l7 + 0x48],	%l2
	ldub	[%l7 + 0x52],	%g3
	movgu	%xcc,	%o1,	%o6
	fbge	%fcc3,	loop_3232
	ld	[%l7 + 0x28],	%f7
	stb	%i5,	[%l7 + 0x72]
	umul	%l6,	0x136C,	%g4
loop_3232:
	stw	%l3,	[%l7 + 0x78]
	stw	%l0,	[%l7 + 0x38]
	edge8	%i4,	%i0,	%l5
	pdist	%f2,	%f0,	%f14
	fcmple16	%f8,	%f14,	%l1
	stw	%o3,	[%l7 + 0x78]
	sllx	%o7,	%i3,	%o4
	ldsw	[%l7 + 0x08],	%i6
	edge8n	%l4,	%o2,	%o0
	stw	%g7,	[%l7 + 0x54]
	sth	%g6,	[%l7 + 0x60]
	fxors	%f13,	%f13,	%f12
	be,a	%xcc,	loop_3233
	fbl,a	%fcc3,	loop_3234
	smulcc	%o5,	%i7,	%g5
	ldub	[%l7 + 0x25],	%g1
loop_3233:
	std	%f8,	[%l7 + 0x78]
loop_3234:
	bpos	loop_3235
	movg	%icc,	%i1,	%g2
	edge32n	%i2,	%g3,	%l2
	nop
	setx loop_3236, %l0, %l1
	jmpl %l1, %o1
loop_3235:
	fbue	%fcc0,	loop_3237
	fmovsneg	%icc,	%f0,	%f3
	tsubcctv	%o6,	0x1426,	%l6
loop_3236:
	fmovde	%xcc,	%f9,	%f2
loop_3237:
	edge8ln	%i5,	%l3,	%l0
	fmovsgu	%icc,	%f0,	%f2
	addc	%i4,	%i0,	%l5
	fmovsle	%icc,	%f7,	%f2
	stw	%g4,	[%l7 + 0x34]
	ble,a	loop_3238
	movvs	%icc,	%o3,	%o7
	fsrc2	%f6,	%f6
	fnot2s	%f11,	%f15
loop_3238:
	ldsb	[%l7 + 0x0E],	%l1
	stx	%i3,	[%l7 + 0x50]
	ldsw	[%l7 + 0x5C],	%o4
	tl	%icc,	0x1
	fbge	%fcc3,	loop_3239
	fmovdne	%icc,	%f7,	%f3
	ldsh	[%l7 + 0x6E],	%l4
	xnorcc	%o2,	0x14FF,	%o0
loop_3239:
	bvs,a	%icc,	loop_3240
	fandnot1	%f14,	%f14,	%f2
	fmovd	%f8,	%f8
	fand	%f12,	%f0,	%f0
loop_3240:
	stw	%g7,	[%l7 + 0x18]
	bcc	loop_3241
	taddcctv	%g6,	0x1DB4,	%o5
	fpsub16	%f8,	%f6,	%f2
	edge16l	%i6,	%g5,	%i7
loop_3241:
	fmovdne	%xcc,	%f3,	%f14
	call	loop_3242
	fmovdcc	%xcc,	%f2,	%f6
	edge8l	%g1,	%i1,	%i2
	edge32l	%g2,	%l2,	%g3
loop_3242:
	movrlz	%o6,	%o1,	%i5
	stb	%l3,	[%l7 + 0x6F]
	tpos	%xcc,	0x2
	edge16n	%l6,	%l0,	%i0
	fbge,a	%fcc0,	loop_3243
	mulscc	%l5,	0x129F,	%i4
	andcc	%g4,	%o3,	%o7
	fmovs	%f0,	%f14
loop_3243:
	edge16n	%i3,	%o4,	%l4
	fmovrslez	%l1,	%f0,	%f9
	ldd	[%l7 + 0x50],	%f2
	fmovsneg	%xcc,	%f9,	%f12
	subc	%o2,	%g7,	%g6
	movrlez	%o5,	0x3A5,	%o0
	std	%f14,	[%l7 + 0x38]
	tcc	%icc,	0x7
	be,pt	%xcc,	loop_3244
	ld	[%l7 + 0x5C],	%f7
	smul	%g5,	%i6,	%i7
	ldsh	[%l7 + 0x0C],	%g1
loop_3244:
	ldd	[%l7 + 0x18],	%f0
	tvc	%xcc,	0x4
	brlez,a	%i1,	loop_3245
	sdivx	%i2,	0x00AE,	%g2
	fexpand	%f3,	%f12
	call	loop_3246
loop_3245:
	ld	[%l7 + 0x0C],	%f8
	fnot1	%f12,	%f12
	fbule	%fcc3,	loop_3247
loop_3246:
	brnz	%l2,	loop_3248
	fcmpes	%fcc0,	%f8,	%f3
	taddcctv	%o6,	%o1,	%i5
loop_3247:
	lduh	[%l7 + 0x2E],	%g3
loop_3248:
	ldsb	[%l7 + 0x42],	%l3
	fpadd16	%f12,	%f12,	%f0
	ldsh	[%l7 + 0x0E],	%l0
	fnot2s	%f4,	%f13
	movrlz	%i0,	%l5,	%i4
	stb	%l6,	[%l7 + 0x72]
	st	%f6,	[%l7 + 0x7C]
	stw	%o3,	[%l7 + 0x50]
	bge,a,pn	%xcc,	loop_3249
	sth	%o7,	[%l7 + 0x6C]
	fmovdcc	%icc,	%f3,	%f7
	fbu	%fcc0,	loop_3250
loop_3249:
	st	%f0,	[%l7 + 0x74]
	and	%g4,	0x0BAE,	%o4
	fbu	%fcc2,	loop_3251
loop_3250:
	fornot2s	%f14,	%f6,	%f1
	ldsb	[%l7 + 0x33],	%i3
	st	%f0,	[%l7 + 0x7C]
loop_3251:
	fble	%fcc2,	loop_3252
	lduw	[%l7 + 0x44],	%l1
	movle	%xcc,	%l4,	%o2
	std	%f8,	[%l7 + 0x18]
loop_3252:
	fbo,a	%fcc2,	loop_3253
	fcmpd	%fcc0,	%f2,	%f4
	ldub	[%l7 + 0x4D],	%g6
	tsubcctv	%o5,	%o0,	%g7
loop_3253:
	edge16ln	%g5,	%i6,	%g1
	fmovsvs	%xcc,	%f3,	%f1
	ldsw	[%l7 + 0x70],	%i7
	fnot1	%f2,	%f8
	stb	%i1,	[%l7 + 0x34]
	bcc,pn	%icc,	loop_3254
	stw	%g2,	[%l7 + 0x78]
	bl,pt	%xcc,	loop_3255
	umul	%i2,	%o6,	%o1
loop_3254:
	fbn	%fcc3,	loop_3256
	ldub	[%l7 + 0x22],	%l2
loop_3255:
	ld	[%l7 + 0x64],	%f14
	fbul,a	%fcc1,	loop_3257
loop_3256:
	ldub	[%l7 + 0x44],	%i5
	fzeros	%f11
	stx	%l3,	[%l7 + 0x18]
loop_3257:
	sth	%l0,	[%l7 + 0x76]
	bge,pt	%icc,	loop_3258
	fnegs	%f4,	%f6
	stx	%g3,	[%l7 + 0x28]
	ldsh	[%l7 + 0x7A],	%l5
loop_3258:
	bgu,pn	%xcc,	loop_3259
	fmovdgu	%xcc,	%f6,	%f3
	fnands	%f11,	%f4,	%f6
	mulx	%i4,	0x1E51,	%i0
loop_3259:
	lduh	[%l7 + 0x34],	%o3
	fmovsvc	%icc,	%f0,	%f0
	sll	%l6,	%g4,	%o4
	stb	%i3,	[%l7 + 0x58]
	ldub	[%l7 + 0x5B],	%l1
	fcmpgt16	%f0,	%f14,	%l4
	fmovscc	%icc,	%f12,	%f3
	te	%icc,	0x2
	or	%o7,	0x1342,	%o2
	sth	%o5,	[%l7 + 0x46]
	ldub	[%l7 + 0x58],	%o0
	stw	%g6,	[%l7 + 0x08]
	sdivcc	%g5,	0x02C5,	%g7
	bcs,a,pt	%icc,	loop_3260
	tn	%icc,	0x0
	ldub	[%l7 + 0x61],	%g1
	fcmpne32	%f12,	%f12,	%i6
loop_3260:
	bne	loop_3261
	ba,pt	%icc,	loop_3262
	bne,pn	%xcc,	loop_3263
	fmovrdlez	%i7,	%f2,	%f0
loop_3261:
	tne	%icc,	0x6
loop_3262:
	ldsh	[%l7 + 0x44],	%i1
loop_3263:
	ldub	[%l7 + 0x3E],	%g2
	lduw	[%l7 + 0x0C],	%o6
	ldsh	[%l7 + 0x66],	%o1
	call	loop_3264
	orn	%l2,	0x17C8,	%i5
	fmovdge	%icc,	%f1,	%f14
	array16	%l3,	%i2,	%g3
loop_3264:
	fmovdl	%xcc,	%f7,	%f15
	bcc,a,pt	%icc,	loop_3265
	fmovrdlz	%l5,	%f10,	%f12
	stb	%i4,	[%l7 + 0x75]
	fmovda	%xcc,	%f3,	%f15
loop_3265:
	movle	%xcc,	%l0,	%i0
	fpmerge	%f8,	%f2,	%f14
	stb	%l6,	[%l7 + 0x43]
	movg	%icc,	%o3,	%o4
	orn	%i3,	0x002C,	%l1
	fandnot1	%f12,	%f10,	%f14
	fble,a	%fcc2,	loop_3266
	fmovdge	%xcc,	%f4,	%f6
	std	%f4,	[%l7 + 0x60]
	mulx	%g4,	0x1FDE,	%o7
loop_3266:
	fmovspos	%xcc,	%f9,	%f15
	udivcc	%l4,	0x02BF,	%o5
	brnz	%o2,	loop_3267
	fba	%fcc3,	loop_3268
	std	%f6,	[%l7 + 0x20]
	ldsh	[%l7 + 0x5A],	%g6
loop_3267:
	fpsub32	%f14,	%f8,	%f10
loop_3268:
	fmovdcs	%xcc,	%f12,	%f4
	sth	%g5,	[%l7 + 0x0C]
	stx	%o0,	[%l7 + 0x60]
	brlz	%g1,	loop_3269
	lduh	[%l7 + 0x2A],	%g7
	fnot2	%f0,	%f10
	fmovrsne	%i6,	%f4,	%f0
loop_3269:
	nop
	setx loop_3270, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	std	%f0,	[%l7 + 0x20]
	fand	%f12,	%f0,	%f2
	fmovsa	%xcc,	%f3,	%f12
loop_3270:
	st	%f6,	[%l7 + 0x14]
	ldub	[%l7 + 0x0A],	%i7
	ldsh	[%l7 + 0x2C],	%i1
	xorcc	%g2,	%o6,	%l2
	fmovsg	%xcc,	%f9,	%f12
	fbne	%fcc3,	loop_3271
	nop
	setx loop_3272, %l0, %l1
	jmpl %l1, %i5
	mova	%xcc,	%l3,	%o1
	fbn	%fcc3,	loop_3273
loop_3271:
	udivx	%i2,	0x1193,	%g3
loop_3272:
	alignaddrl	%l5,	%l0,	%i4
	ldsw	[%l7 + 0x14],	%l6
loop_3273:
	brz,a	%i0,	loop_3274
	add	%o3,	0x0054,	%i3
	stw	%o4,	[%l7 + 0x40]
	ldub	[%l7 + 0x44],	%g4
loop_3274:
	tcc	%xcc,	0x4
	fmovrdlez	%l1,	%f12,	%f4
	fmovrdlez	%l4,	%f8,	%f4
	andncc	%o5,	%o2,	%g6
	tne	%icc,	0x1
	movgu	%xcc,	%o7,	%o0
	fcmpne16	%f12,	%f12,	%g5
	subcc	%g7,	0x1B5A,	%i6
	ldsh	[%l7 + 0x0C],	%i7
	ldub	[%l7 + 0x2B],	%g1
	stb	%i1,	[%l7 + 0x2F]
	srax	%o6,	%g2,	%i5
	fmovda	%icc,	%f8,	%f15
	ldsh	[%l7 + 0x44],	%l3
	add	%o1,	0x0FE6,	%l2
	ldd	[%l7 + 0x38],	%f14
	ldub	[%l7 + 0x26],	%i2
	addcc	%l5,	%g3,	%i4
	bn,pn	%xcc,	loop_3275
	ldsh	[%l7 + 0x3A],	%l6
	movne	%xcc,	%i0,	%l0
	lduh	[%l7 + 0x4E],	%i3
loop_3275:
	fbug	%fcc1,	loop_3276
	fnand	%f10,	%f14,	%f14
	subccc	%o3,	%o4,	%l1
	tneg	%xcc,	0x3
loop_3276:
	edge16	%g4,	%o5,	%l4
	array16	%o2,	%o7,	%o0
	lduw	[%l7 + 0x78],	%g6
	stx	%g7,	[%l7 + 0x28]
	tgu	%icc,	0x0
	xor	%i6,	0x01BE,	%i7
	edge8n	%g5,	%g1,	%o6
	movle	%xcc,	%g2,	%i5
	bl	%xcc,	loop_3277
	stb	%i1,	[%l7 + 0x0D]
	sethi	0x116E,	%l3
	fcmpgt16	%f12,	%f4,	%o1
loop_3277:
	ldx	[%l7 + 0x68],	%l2
	fxnors	%f7,	%f8,	%f7
	fbo,a	%fcc3,	loop_3278
	edge16n	%l5,	%g3,	%i2
	fbule,a	%fcc0,	loop_3279
	st	%f8,	[%l7 + 0x78]
loop_3278:
	fmovscs	%icc,	%f1,	%f4
	fabss	%f7,	%f11
loop_3279:
	sethi	0x16C5,	%l6
	mulx	%i0,	%i4,	%i3
	subccc	%o3,	%o4,	%l0
	orcc	%g4,	0x0F13,	%l1
	lduw	[%l7 + 0x78],	%o5
	st	%f9,	[%l7 + 0x68]
	sdivx	%o2,	0x0286,	%l4
	fmovrdgez	%o0,	%f8,	%f10
	stb	%o7,	[%l7 + 0x58]
	edge32	%g6,	%g7,	%i7
	fone	%f12
	fmul8sux16	%f10,	%f0,	%f4
	fmul8x16al	%f10,	%f0,	%f12
	edge8n	%i6,	%g1,	%g5
	fbule	%fcc2,	loop_3280
	subccc	%g2,	0x1405,	%o6
	nop
	setx loop_3281, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	udiv	%i5,	0x1471,	%i1
loop_3280:
	stw	%l3,	[%l7 + 0x3C]
	fpadd16	%f4,	%f6,	%f4
loop_3281:
	fornot2	%f2,	%f2,	%f12
	fnand	%f0,	%f10,	%f4
	fbug	%fcc1,	loop_3282
	fmovrdlez	%l2,	%f10,	%f8
	std	%f12,	[%l7 + 0x20]
	fzeros	%f4
loop_3282:
	umulcc	%l5,	0x0415,	%g3
	sth	%i2,	[%l7 + 0x22]
	stw	%o1,	[%l7 + 0x30]
	edge8	%i0,	%i4,	%l6
	fpsub32s	%f1,	%f11,	%f6
	fxnors	%f3,	%f6,	%f7
	fmovdn	%icc,	%f8,	%f13
	edge8	%o3,	%o4,	%l0
	movrlz	%g4,	%i3,	%l1
	fpsub32s	%f10,	%f4,	%f12
	ldsw	[%l7 + 0x48],	%o5
	ldub	[%l7 + 0x13],	%o2
	for	%f2,	%f8,	%f6
	fmovdleu	%icc,	%f14,	%f9
	edge16l	%o0,	%o7,	%g6
	bcs,a,pt	%icc,	loop_3283
	sll	%l4,	%g7,	%i7
	fornot1s	%f15,	%f12,	%f5
	fcmpgt16	%f8,	%f10,	%i6
loop_3283:
	udivx	%g1,	0x1B56,	%g5
	movrgez	%o6,	%i5,	%i1
	fors	%f2,	%f15,	%f14
	subcc	%l3,	0x0F01,	%g2
	fble	%fcc3,	loop_3284
	array8	%l5,	%g3,	%l2
	fpadd16s	%f4,	%f9,	%f2
	fbe,a	%fcc1,	loop_3285
loop_3284:
	movrlez	%i2,	0x182,	%o1
	brlz	%i0,	loop_3286
	ldub	[%l7 + 0x15],	%l6
loop_3285:
	fmovrslz	%i4,	%f13,	%f2
	lduw	[%l7 + 0x30],	%o4
loop_3286:
	fexpand	%f3,	%f10
	fmovrdlz	%l0,	%f14,	%f10
	std	%f14,	[%l7 + 0x40]
	tcs	%icc,	0x7
	fandnot1	%f10,	%f2,	%f4
	fpsub32s	%f10,	%f3,	%f2
	fbul,a	%fcc3,	loop_3287
	stb	%o3,	[%l7 + 0x71]
	pdist	%f0,	%f10,	%f14
	ldub	[%l7 + 0x2D],	%g4
loop_3287:
	sdivx	%l1,	0x13FB,	%o5
	fbul,a	%fcc0,	loop_3288
	fbue,a	%fcc2,	loop_3289
	fmovsleu	%xcc,	%f3,	%f0
	fmovsgu	%xcc,	%f9,	%f15
loop_3288:
	fmovdneg	%icc,	%f3,	%f2
loop_3289:
	srax	%o2,	0x08,	%i3
	tpos	%xcc,	0x4
	fbe,a	%fcc0,	loop_3290
	edge8ln	%o0,	%o7,	%g6
	fandnot1	%f8,	%f8,	%f2
	srl	%l4,	0x02,	%g7
loop_3290:
	movneg	%icc,	%i6,	%i7
	brgz,a	%g5,	loop_3291
	brgz	%o6,	loop_3292
	fsrc1s	%f8,	%f9
	ldsw	[%l7 + 0x6C],	%i5
loop_3291:
	ld	[%l7 + 0x70],	%f12
loop_3292:
	lduh	[%l7 + 0x6E],	%i1
	subcc	%g1,	%l3,	%g2
	fand	%f6,	%f6,	%f12
	std	%f0,	[%l7 + 0x70]
	mulx	%g3,	0x05C2,	%l2
	ldsb	[%l7 + 0x18],	%l5
	tvs	%xcc,	0x4
	xor	%o1,	0x16DE,	%i2
	ldub	[%l7 + 0x18],	%l6
	fcmpeq32	%f10,	%f0,	%i0
	bleu	%xcc,	loop_3293
	fmuld8ulx16	%f6,	%f2,	%f2
	st	%f15,	[%l7 + 0x68]
	stw	%i4,	[%l7 + 0x3C]
loop_3293:
	tcc	%icc,	0x6
	nop
	setx loop_3294, %l0, %l1
	jmpl %l1, %o4
	tleu	%xcc,	0x2
	lduw	[%l7 + 0x34],	%l0
	andn	%g4,	%l1,	%o3
loop_3294:
	fbne,a	%fcc2,	loop_3295
	movrlz	%o2,	%o5,	%i3
	fpadd32	%f2,	%f2,	%f6
	fbuge	%fcc2,	loop_3296
loop_3295:
	te	%icc,	0x7
	stw	%o7,	[%l7 + 0x24]
	st	%f12,	[%l7 + 0x68]
loop_3296:
	st	%f11,	[%l7 + 0x48]
	fmovscc	%xcc,	%f13,	%f10
	fbuge	%fcc3,	loop_3297
	fxnors	%f7,	%f14,	%f14
	fornot1s	%f14,	%f11,	%f0
	lduw	[%l7 + 0x58],	%g6
loop_3297:
	fmovrsgz	%o0,	%f6,	%f13
	ldsw	[%l7 + 0x60],	%l4
	sub	%i6,	%g7,	%i7
	fmuld8sux16	%f8,	%f3,	%f10
	movg	%icc,	%g5,	%o6
	fones	%f1
	siam	0x4
	sdivx	%i5,	0x1AE6,	%g1
	stw	%i1,	[%l7 + 0x28]
	lduw	[%l7 + 0x70],	%l3
	edge32l	%g3,	%l2,	%l5
	fmovsne	%icc,	%f9,	%f0
	fnor	%f2,	%f8,	%f0
	sth	%g2,	[%l7 + 0x4A]
	bl,a,pn	%xcc,	loop_3298
	fone	%f2
	fbuge,a	%fcc3,	loop_3299
	addc	%i2,	0x1049,	%o1
loop_3298:
	ldsh	[%l7 + 0x24],	%i0
	fpadd16	%f14,	%f8,	%f0
loop_3299:
	fxnor	%f2,	%f14,	%f0
	std	%f6,	[%l7 + 0x78]
	fcmpes	%fcc2,	%f0,	%f15
	stw	%l6,	[%l7 + 0x40]
	movvc	%xcc,	%o4,	%i4
	sdiv	%l0,	0x0BB2,	%l1
	fpadd32s	%f4,	%f15,	%f8
	sth	%g4,	[%l7 + 0x0C]
	movl	%icc,	%o3,	%o2
	movleu	%xcc,	%i3,	%o7
	brnz	%g6,	loop_3300
	stw	%o5,	[%l7 + 0x78]
	fmovsge	%icc,	%f4,	%f9
	bneg,pt	%icc,	loop_3301
loop_3300:
	fmovd	%f2,	%f4
	udiv	%o0,	0x0A41,	%i6
	lduh	[%l7 + 0x10],	%g7
loop_3301:
	lduh	[%l7 + 0x3A],	%l4
	lduw	[%l7 + 0x58],	%g5
	sdivx	%o6,	0x1D3F,	%i5
	movrgez	%g1,	0x38C,	%i1
	fbo	%fcc2,	loop_3302
	xorcc	%i7,	%g3,	%l2
	mulx	%l3,	%l5,	%g2
	fcmped	%fcc3,	%f8,	%f10
loop_3302:
	subc	%o1,	0x1235,	%i2
	mulx	%i0,	%o4,	%l6
	popc	0x0009,	%i4
	lduh	[%l7 + 0x24],	%l0
	fbg,a	%fcc3,	loop_3303
	lduh	[%l7 + 0x6E],	%g4
	orcc	%o3,	%l1,	%i3
	fmovrse	%o7,	%f6,	%f11
loop_3303:
	fmovdl	%xcc,	%f5,	%f3
	fcmpes	%fcc3,	%f12,	%f14
	fbl	%fcc2,	loop_3304
	stw	%g6,	[%l7 + 0x38]
	movrgz	%o5,	%o0,	%o2
	siam	0x1
loop_3304:
	ldsh	[%l7 + 0x70],	%i6
	ldx	[%l7 + 0x10],	%g7
	bneg,a	loop_3305
	st	%f10,	[%l7 + 0x5C]
	fmovdvc	%xcc,	%f8,	%f1
	ldd	[%l7 + 0x20],	%f6
loop_3305:
	fxnors	%f0,	%f11,	%f6
	ldx	[%l7 + 0x40],	%l4
	movle	%xcc,	%o6,	%g5
	std	%f10,	[%l7 + 0x40]
	bcs,a	loop_3306
	orcc	%g1,	%i1,	%i5
	sub	%g3,	0x19C8,	%l2
	movrgez	%l3,	0x2B2,	%i7
loop_3306:
	stx	%l5,	[%l7 + 0x50]
	movrne	%o1,	%i2,	%g2
	call	loop_3307
	addccc	%i0,	0x1658,	%l6
	std	%f14,	[%l7 + 0x18]
	ldub	[%l7 + 0x26],	%i4
loop_3307:
	fmovsg	%icc,	%f9,	%f13
	bvs	loop_3308
	fmovdneg	%icc,	%f5,	%f8
	fmovdvc	%xcc,	%f10,	%f2
	fors	%f4,	%f11,	%f13
loop_3308:
	std	%f12,	[%l7 + 0x10]
	fba,a	%fcc2,	loop_3309
	movrlez	%o4,	0x3B1,	%g4
	ldsh	[%l7 + 0x7C],	%o3
	movpos	%xcc,	%l0,	%l1
loop_3309:
	edge16ln	%o7,	%i3,	%g6
	ldd	[%l7 + 0x70],	%f8
	sllx	%o5,	%o2,	%i6
	ldx	[%l7 + 0x48],	%g7
	tneg	%icc,	0x5
	sth	%o0,	[%l7 + 0x12]
	fcmpeq32	%f12,	%f2,	%o6
	ldd	[%l7 + 0x58],	%f6
	fmovsl	%xcc,	%f13,	%f15
	fsrc2	%f14,	%f6
	movl	%xcc,	%l4,	%g5
	fmovdg	%icc,	%f4,	%f11
	ldub	[%l7 + 0x09],	%g1
	tne	%xcc,	0x7
	ldsb	[%l7 + 0x5D],	%i1
	fnands	%f5,	%f14,	%f11
	movg	%xcc,	%i5,	%g3
	lduw	[%l7 + 0x1C],	%l2
	siam	0x3
	std	%f12,	[%l7 + 0x10]
	fbu,a	%fcc2,	loop_3310
	edge8n	%i7,	%l5,	%l3
	std	%f2,	[%l7 + 0x78]
	stx	%o1,	[%l7 + 0x68]
loop_3310:
	fcmps	%fcc3,	%f6,	%f2
	fcmpgt32	%f4,	%f2,	%g2
	std	%f8,	[%l7 + 0x50]
	fcmpes	%fcc3,	%f10,	%f5
	lduh	[%l7 + 0x34],	%i2
	fmovdn	%icc,	%f15,	%f7
	std	%f2,	[%l7 + 0x28]
	fmovdgu	%xcc,	%f8,	%f7
	srax	%i0,	0x15,	%i4
	movne	%icc,	%l6,	%o4
	ba,a	%xcc,	loop_3311
	fand	%f12,	%f12,	%f14
	fmul8x16au	%f12,	%f5,	%f10
	tne	%icc,	0x0
loop_3311:
	bvs,pn	%icc,	loop_3312
	ld	[%l7 + 0x50],	%f6
	movl	%icc,	%g4,	%l0
	fcmped	%fcc2,	%f4,	%f14
loop_3312:
	fbl,a	%fcc1,	loop_3313
	fmovrdgez	%o3,	%f10,	%f8
	stw	%o7,	[%l7 + 0x60]
	movvs	%xcc,	%i3,	%l1
loop_3313:
	fmovrslz	%g6,	%f8,	%f9
	tpos	%icc,	0x3
	std	%f12,	[%l7 + 0x10]
	ldsb	[%l7 + 0x55],	%o5
	edge8ln	%o2,	%i6,	%g7
	tl	%xcc,	0x0
	addccc	%o6,	%o0,	%g5
	fnot1s	%f9,	%f5
	umul	%g1,	%l4,	%i1
	movrlez	%g3,	0x3EB,	%l2
	lduw	[%l7 + 0x38],	%i5
	fzeros	%f8
	lduw	[%l7 + 0x24],	%i7
	fblg	%fcc1,	loop_3314
	ldsb	[%l7 + 0x0F],	%l5
	fpsub16	%f6,	%f4,	%f0
	fmovrdlez	%l3,	%f12,	%f4
loop_3314:
	tle	%icc,	0x6
	ldub	[%l7 + 0x55],	%o1
	fands	%f12,	%f1,	%f0
	brnz,a	%g2,	loop_3315
	fcmple32	%f0,	%f0,	%i0
	fnot2	%f10,	%f14
	lduh	[%l7 + 0x46],	%i2
loop_3315:
	be,pn	%xcc,	loop_3316
	ldsh	[%l7 + 0x6A],	%l6
	add	%i4,	%o4,	%g4
	be,a	loop_3317
loop_3316:
	fcmpeq32	%f2,	%f0,	%l0
	fmovrde	%o3,	%f2,	%f14
	andcc	%o7,	%l1,	%g6
loop_3317:
	fmovrse	%i3,	%f14,	%f3
	tneg	%icc,	0x6
	bvs	%xcc,	loop_3318
	lduw	[%l7 + 0x68],	%o5
	fbule	%fcc3,	loop_3319
	fmovdl	%icc,	%f10,	%f4
loop_3318:
	smul	%o2,	%i6,	%o6
	alignaddrl	%g7,	%g5,	%o0
loop_3319:
	fxnor	%f0,	%f8,	%f12
	std	%f2,	[%l7 + 0x18]
	umulcc	%l4,	0x1A3A,	%g1
	move	%icc,	%i1,	%l2
	addcc	%g3,	0x1F57,	%i5
	fnegs	%f0,	%f9
	fmovsle	%xcc,	%f7,	%f10
	fone	%f0
	ldd	[%l7 + 0x60],	%f12
	movleu	%xcc,	%l5,	%i7
	fmul8x16au	%f11,	%f6,	%f6
	edge32	%l3,	%o1,	%i0
	fmovrdgz	%g2,	%f8,	%f8
	be	loop_3320
	fcmple16	%f10,	%f6,	%i2
	ldsw	[%l7 + 0x2C],	%l6
	bleu,pt	%icc,	loop_3321
loop_3320:
	xor	%i4,	0x0073,	%g4
	fmovsn	%icc,	%f10,	%f2
	fbge	%fcc0,	loop_3322
loop_3321:
	tl	%icc,	0x5
	ldsh	[%l7 + 0x72],	%l0
	movn	%xcc,	%o4,	%o7
loop_3322:
	fmovsvc	%icc,	%f8,	%f5
	fpsub16	%f10,	%f2,	%f14
	fcmpd	%fcc2,	%f4,	%f4
	ld	[%l7 + 0x34],	%f3
	fbuge,a	%fcc3,	loop_3323
	lduh	[%l7 + 0x3E],	%l1
	faligndata	%f14,	%f12,	%f0
	umulcc	%g6,	0x19DE,	%o3
loop_3323:
	fmovrdlez	%o5,	%f0,	%f2
	bg	loop_3324
	bl,pn	%icc,	loop_3325
	fxnor	%f10,	%f14,	%f6
	fcmpgt16	%f2,	%f14,	%i3
loop_3324:
	stw	%i6,	[%l7 + 0x24]
loop_3325:
	ld	[%l7 + 0x14],	%f10
	brlz,a	%o6,	loop_3326
	sdivx	%o2,	0x0B68,	%g5
	ldx	[%l7 + 0x40],	%o0
	sth	%l4,	[%l7 + 0x24]
loop_3326:
	fcmpne16	%f8,	%f0,	%g1
	movpos	%icc,	%g7,	%i1
	fmovrdlez	%l2,	%f14,	%f12
	smulcc	%g3,	0x1A9D,	%l5
	movvc	%icc,	%i5,	%l3
	sth	%o1,	[%l7 + 0x14]
	sub	%i7,	0x1BC6,	%i0
	movcc	%xcc,	%g2,	%i2
	fmuld8ulx16	%f9,	%f8,	%f14
	ldx	[%l7 + 0x48],	%i4
	fmovrsgz	%l6,	%f12,	%f15
	udivcc	%g4,	0x1614,	%l0
	ld	[%l7 + 0x44],	%f13
	fxnors	%f4,	%f10,	%f14
	ldx	[%l7 + 0x18],	%o7
	st	%f4,	[%l7 + 0x44]
	stb	%l1,	[%l7 + 0x4B]
	sth	%o4,	[%l7 + 0x26]
	std	%f14,	[%l7 + 0x70]
	udiv	%o3,	0x096B,	%o5
	movg	%icc,	%i3,	%i6
	ldx	[%l7 + 0x70],	%o6
	fpadd16s	%f1,	%f6,	%f14
	array32	%o2,	%g6,	%o0
	alignaddrl	%l4,	%g1,	%g7
	orncc	%g5,	0x0C67,	%l2
	fmovrslez	%g3,	%f14,	%f9
	stx	%l5,	[%l7 + 0x48]
	fcmpgt16	%f14,	%f8,	%i1
	bneg,a,pn	%icc,	loop_3327
	movvs	%icc,	%i5,	%l3
	srax	%o1,	0x1A,	%i0
	ldd	[%l7 + 0x28],	%f0
loop_3327:
	tvs	%icc,	0x5
	movpos	%icc,	%i7,	%i2
	ldsh	[%l7 + 0x30],	%i4
	fbul	%fcc3,	loop_3328
	fpsub32s	%f6,	%f13,	%f2
	fnor	%f10,	%f12,	%f14
	bshuffle	%f10,	%f2,	%f10
loop_3328:
	ldsb	[%l7 + 0x61],	%l6
	movn	%xcc,	%g2,	%g4
	tvs	%xcc,	0x5
	edge32l	%o7,	%l0,	%o4
	fpsub16	%f14,	%f14,	%f8
	fbo,a	%fcc3,	loop_3329
	ldx	[%l7 + 0x18],	%l1
	fmul8x16	%f0,	%f10,	%f0
	tvc	%icc,	0x3
loop_3329:
	stb	%o3,	[%l7 + 0x3A]
	orcc	%i3,	%i6,	%o5
	stb	%o2,	[%l7 + 0x1D]
	ld	[%l7 + 0x3C],	%f11
	movcc	%icc,	%o6,	%g6
	fmovrdgez	%o0,	%f10,	%f14
	fbl,a	%fcc0,	loop_3330
	edge8ln	%l4,	%g1,	%g5
	fmovdge	%xcc,	%f3,	%f15
	tleu	%xcc,	0x5
loop_3330:
	fmovsle	%icc,	%f10,	%f12
	fmovda	%xcc,	%f1,	%f4
	orncc	%g7,	%l2,	%g3
	movge	%xcc,	%l5,	%i1
	movn	%icc,	%i5,	%o1
	bvs	loop_3331
	brnz	%l3,	loop_3332
	lduw	[%l7 + 0x4C],	%i7
	fmovdge	%icc,	%f7,	%f5
loop_3331:
	fmovdleu	%xcc,	%f15,	%f8
loop_3332:
	movgu	%icc,	%i2,	%i4
	sub	%i0,	0x0997,	%g2
	fba	%fcc1,	loop_3333
	std	%f12,	[%l7 + 0x50]
	ldd	[%l7 + 0x78],	%f6
	fbule	%fcc3,	loop_3334
loop_3333:
	siam	0x7
	fmovrslez	%l6,	%f10,	%f10
	lduh	[%l7 + 0x0C],	%g4
loop_3334:
	movvs	%xcc,	%l0,	%o7
	alignaddr	%l1,	%o3,	%o4
	st	%f0,	[%l7 + 0x6C]
	smulcc	%i6,	0x081F,	%o5
	fbug,a	%fcc1,	loop_3335
	ldsb	[%l7 + 0x60],	%i3
	fmovrdgz	%o2,	%f10,	%f4
	lduh	[%l7 + 0x5E],	%g6
loop_3335:
	fmovrsgez	%o0,	%f4,	%f0
	fpack16	%f2,	%f1
	fmovda	%xcc,	%f8,	%f7
	movgu	%xcc,	%o6,	%g1
	fand	%f6,	%f6,	%f2
	tleu	%icc,	0x3
	ldd	[%l7 + 0x30],	%f6
	movcc	%icc,	%l4,	%g5
	stx	%l2,	[%l7 + 0x20]
	bpos,a,pn	%xcc,	loop_3336
	sll	%g3,	%l5,	%i1
	fpackfix	%f0,	%f5
	nop
	setx loop_3337, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_3336:
	fmovdne	%icc,	%f2,	%f3
	fxnor	%f8,	%f4,	%f14
	std	%f0,	[%l7 + 0x20]
loop_3337:
	be,a	loop_3338
	ldsb	[%l7 + 0x1F],	%g7
	fnot2s	%f4,	%f6
	lduh	[%l7 + 0x1C],	%o1
loop_3338:
	stb	%l3,	[%l7 + 0x1F]
	sth	%i5,	[%l7 + 0x10]
	stb	%i2,	[%l7 + 0x65]
	tn	%xcc,	0x6
	fcmpeq16	%f2,	%f6,	%i7
	addccc	%i4,	%i0,	%g2
	fpack32	%f2,	%f0,	%f8
	fcmpeq32	%f2,	%f4,	%g4
	ldub	[%l7 + 0x12],	%l0
	fsrc2	%f12,	%f10
	std	%f12,	[%l7 + 0x70]
	tsubcc	%l6,	%o7,	%l1
	ble,a	loop_3339
	fmovsleu	%xcc,	%f11,	%f3
	fbne	%fcc1,	loop_3340
	lduw	[%l7 + 0x5C],	%o3
loop_3339:
	brgez,a	%i6,	loop_3341
	fmul8x16au	%f9,	%f2,	%f10
loop_3340:
	fmovrdgez	%o4,	%f6,	%f6
	stb	%i3,	[%l7 + 0x65]
loop_3341:
	mova	%xcc,	%o2,	%g6
	fmovdne	%icc,	%f8,	%f8
	fmul8x16	%f12,	%f2,	%f8
	lduw	[%l7 + 0x68],	%o5
	fornot1	%f12,	%f2,	%f4
	stw	%o6,	[%l7 + 0x2C]
	fcmpeq32	%f14,	%f6,	%g1
	fpadd16	%f8,	%f0,	%f0
	brlez,a	%l4,	loop_3342
	movgu	%xcc,	%o0,	%g5
	tg	%xcc,	0x5
	stw	%g3,	[%l7 + 0x24]
loop_3342:
	andcc	%l5,	0x1FE7,	%l2
	tg	%icc,	0x3
	fzeros	%f15
	edge32l	%g7,	%i1,	%l3
	array16	%i5,	%o1,	%i7
	fmovdle	%icc,	%f6,	%f2
	fand	%f8,	%f4,	%f10
	stx	%i2,	[%l7 + 0x10]
	te	%xcc,	0x3
	edge8n	%i4,	%i0,	%g2
	fpsub32s	%f0,	%f9,	%f7
	sdivcc	%g4,	0x04C2,	%l0
	sth	%o7,	[%l7 + 0x1C]
	ba,pt	%icc,	loop_3343
	ldub	[%l7 + 0x0C],	%l1
	fmovdvc	%xcc,	%f2,	%f8
	ldx	[%l7 + 0x70],	%o3
loop_3343:
	tpos	%icc,	0x6
	fmovsne	%icc,	%f5,	%f0
	sra	%l6,	0x0C,	%o4
	brz,a	%i3,	loop_3344
	fmovsgu	%icc,	%f5,	%f10
	fxnor	%f14,	%f6,	%f6
	fands	%f15,	%f2,	%f5
loop_3344:
	sra	%i6,	0x1D,	%o2
	fand	%f14,	%f6,	%f14
	fands	%f2,	%f1,	%f1
	bcc	%icc,	loop_3345
	edge8l	%g6,	%o6,	%g1
	fmovrdlez	%l4,	%f10,	%f0
	fbne,a	%fcc1,	loop_3346
loop_3345:
	be,a	loop_3347
	tneg	%icc,	0x0
	edge16	%o0,	%g5,	%o5
loop_3346:
	fpsub16s	%f1,	%f6,	%f5
loop_3347:
	sth	%l5,	[%l7 + 0x32]
	brz,a	%g3,	loop_3348
	bpos,pn	%xcc,	loop_3349
	stw	%g7,	[%l7 + 0x58]
	fbug,a	%fcc1,	loop_3350
loop_3348:
	st	%f8,	[%l7 + 0x30]
loop_3349:
	movcs	%xcc,	%l2,	%l3
	ldd	[%l7 + 0x30],	%f10
loop_3350:
	alignaddrl	%i5,	%o1,	%i7
	fmovdcs	%icc,	%f9,	%f10
	movcc	%icc,	%i2,	%i1
	std	%f14,	[%l7 + 0x50]
	fmovrdne	%i0,	%f0,	%f12
	stx	%g2,	[%l7 + 0x50]
	fmovdne	%icc,	%f7,	%f3
	st	%f1,	[%l7 + 0x30]
	fpadd32	%f6,	%f6,	%f6
	move	%xcc,	%g4,	%l0
	fmovse	%icc,	%f15,	%f8
	fcmple16	%f8,	%f8,	%o7
	fble	%fcc1,	loop_3351
	tleu	%xcc,	0x6
	ldsh	[%l7 + 0x12],	%l1
	st	%f4,	[%l7 + 0x1C]
loop_3351:
	fcmpes	%fcc0,	%f0,	%f6
	stb	%i4,	[%l7 + 0x76]
	orn	%o3,	0x1150,	%l6
	bl,pt	%xcc,	loop_3352
	sllx	%i3,	0x1F,	%o4
	movne	%xcc,	%o2,	%i6
	std	%f0,	[%l7 + 0x48]
loop_3352:
	orncc	%g6,	0x01E9,	%o6
	lduh	[%l7 + 0x42],	%l4
	edge8l	%g1,	%o0,	%g5
	tg	%xcc,	0x1
	brgz	%l5,	loop_3353
	fmovsa	%xcc,	%f7,	%f14
	fmovspos	%icc,	%f10,	%f3
	brlz	%o5,	loop_3354
loop_3353:
	fcmpeq16	%f8,	%f6,	%g3
	ldsb	[%l7 + 0x2A],	%l2
	stx	%l3,	[%l7 + 0x28]
loop_3354:
	fpsub32	%f8,	%f6,	%f14
	edge8ln	%g7,	%i5,	%o1
	lduw	[%l7 + 0x34],	%i7
	srax	%i2,	0x1F,	%i0
	fmovdcs	%icc,	%f12,	%f4
	add	%i1,	0x1A56,	%g2
	stb	%l0,	[%l7 + 0x55]
	edge8l	%o7,	%g4,	%l1
	udivcc	%i4,	0x0131,	%o3
	fbuge	%fcc1,	loop_3355
	ba	%icc,	loop_3356
	ldsw	[%l7 + 0x10],	%l6
	tvs	%icc,	0x3
loop_3355:
	be	loop_3357
loop_3356:
	sethi	0x1B4B,	%i3
	st	%f11,	[%l7 + 0x4C]
	smul	%o4,	%i6,	%g6
loop_3357:
	fmovde	%xcc,	%f11,	%f0
	fmovdn	%xcc,	%f5,	%f14
	lduw	[%l7 + 0x4C],	%o2
	st	%f4,	[%l7 + 0x20]
	ldsh	[%l7 + 0x4E],	%o6
	sdivx	%g1,	0x1C6C,	%l4
	udivcc	%o0,	0x0DAF,	%g5
	fexpand	%f14,	%f10
	sra	%o5,	%g3,	%l5
	bg,pn	%icc,	loop_3358
	fmovspos	%xcc,	%f0,	%f0
	fbo	%fcc1,	loop_3359
	st	%f9,	[%l7 + 0x10]
loop_3358:
	edge16l	%l2,	%l3,	%g7
	tcc	%icc,	0x5
loop_3359:
	ldsw	[%l7 + 0x08],	%i5
	sth	%o1,	[%l7 + 0x6A]
	bcs,a,pt	%xcc,	loop_3360
	movl	%icc,	%i2,	%i7
	edge32ln	%i1,	%i0,	%l0
	fmovrsne	%g2,	%f9,	%f2
loop_3360:
	stx	%g4,	[%l7 + 0x78]
	fsrc2	%f8,	%f8
	stw	%o7,	[%l7 + 0x0C]
	ldx	[%l7 + 0x18],	%i4
	fpackfix	%f14,	%f14
	stb	%l1,	[%l7 + 0x53]
	fnot2s	%f9,	%f15
	fpadd16s	%f15,	%f10,	%f7
	fmovrdne	%l6,	%f14,	%f14
	fmovrdgz	%o3,	%f4,	%f14
	be	%icc,	loop_3361
	fcmpne16	%f10,	%f8,	%i3
	lduh	[%l7 + 0x44],	%i6
	fmovrsne	%o4,	%f3,	%f3
loop_3361:
	fpadd32s	%f7,	%f15,	%f0
	ble,pt	%icc,	loop_3362
	fornot2	%f6,	%f2,	%f4
	fcmped	%fcc2,	%f8,	%f2
	stb	%o2,	[%l7 + 0x4E]
loop_3362:
	edge16ln	%o6,	%g6,	%g1
	mova	%icc,	%l4,	%o0
	fmovrsne	%g5,	%f13,	%f8
	stb	%g3,	[%l7 + 0x1A]
	bcs	loop_3363
	std	%f6,	[%l7 + 0x60]
	st	%f5,	[%l7 + 0x54]
	fba	%fcc0,	loop_3364
loop_3363:
	taddcc	%o5,	0x092E,	%l5
	edge16l	%l3,	%l2,	%i5
	bleu,pt	%icc,	loop_3365
loop_3364:
	lduh	[%l7 + 0x70],	%o1
	bge,a	%xcc,	loop_3366
	fandnot2	%f10,	%f2,	%f0
loop_3365:
	bcs	loop_3367
	bge	%icc,	loop_3368
loop_3366:
	bl,pt	%xcc,	loop_3369
	fmovs	%f1,	%f5
loop_3367:
	fmovdpos	%icc,	%f15,	%f9
loop_3368:
	sth	%i2,	[%l7 + 0x68]
loop_3369:
	lduw	[%l7 + 0x30],	%g7
	orncc	%i7,	%i0,	%l0
	srlx	%i1,	%g4,	%g2
	fmovs	%f1,	%f13
	fmovsvc	%icc,	%f0,	%f11
	st	%f3,	[%l7 + 0x68]
	movneg	%xcc,	%i4,	%l1
	array32	%l6,	%o3,	%i3
	ld	[%l7 + 0x08],	%f15
	nop
	setx loop_3370, %l0, %l1
	jmpl %l1, %i6
	subc	%o7,	%o4,	%o2
	fmovdgu	%icc,	%f3,	%f15
	fmovrdgz	%g6,	%f12,	%f8
loop_3370:
	fcmps	%fcc3,	%f4,	%f12
	mulscc	%o6,	%g1,	%o0
	tcs	%xcc,	0x2
	ldsh	[%l7 + 0x4C],	%g5
	fmovdl	%xcc,	%f5,	%f6
	movn	%icc,	%g3,	%o5
	fmovsle	%icc,	%f3,	%f0
	fnot1	%f4,	%f12
	tvc	%xcc,	0x6
	fmovsleu	%xcc,	%f12,	%f6
	bvs,a,pt	%icc,	loop_3371
	ble,a,pt	%xcc,	loop_3372
	fbge,a	%fcc2,	loop_3373
	lduw	[%l7 + 0x20],	%l5
loop_3371:
	st	%f6,	[%l7 + 0x20]
loop_3372:
	srax	%l4,	0x10,	%l3
loop_3373:
	fmovscs	%icc,	%f6,	%f8
	fnot1s	%f5,	%f0
	sub	%i5,	%l2,	%o1
	sth	%i2,	[%l7 + 0x4A]
	ldd	[%l7 + 0x40],	%f14
	fmovrdne	%g7,	%f10,	%f10
	tcs	%xcc,	0x0
	fnot2s	%f8,	%f9
	tsubcc	%i7,	0x14E1,	%i0
	fmovdleu	%xcc,	%f7,	%f0
	stw	%l0,	[%l7 + 0x70]
	fpsub16	%f2,	%f14,	%f12
	stb	%i1,	[%l7 + 0x7E]
	ldub	[%l7 + 0x13],	%g4
	addccc	%i4,	0x1691,	%g2
	fmul8ulx16	%f12,	%f6,	%f12
	movvs	%xcc,	%l1,	%l6
	ldub	[%l7 + 0x26],	%o3
	fcmps	%fcc3,	%f11,	%f9
	ldsh	[%l7 + 0x10],	%i3
	movn	%xcc,	%o7,	%i6
	ldsw	[%l7 + 0x7C],	%o4
	st	%f7,	[%l7 + 0x3C]
	ld	[%l7 + 0x6C],	%f15
	fnot1	%f14,	%f4
	fnot1	%f12,	%f4
	std	%f10,	[%l7 + 0x28]
	fnot1	%f0,	%f8
	fbuge,a	%fcc1,	loop_3374
	bvs,a,pn	%icc,	loop_3375
	fnors	%f2,	%f1,	%f9
	fmovscc	%icc,	%f15,	%f2
loop_3374:
	fone	%f12
loop_3375:
	fmovse	%xcc,	%f3,	%f12
	fmovdne	%icc,	%f5,	%f7
	tg	%icc,	0x0
	fbe,a	%fcc0,	loop_3376
	fcmple16	%f14,	%f4,	%o2
	fpadd16	%f4,	%f4,	%f10
	edge8ln	%g6,	%o6,	%o0
loop_3376:
	fpack32	%f2,	%f4,	%f4
	ldsh	[%l7 + 0x46],	%g1
	fandnot1	%f10,	%f4,	%f14
	tle	%xcc,	0x0
	sdiv	%g5,	0x0567,	%g3
	sth	%l5,	[%l7 + 0x66]
	ldsh	[%l7 + 0x54],	%l4
	fmovdn	%icc,	%f2,	%f12
	stx	%l3,	[%l7 + 0x28]
	bcs,a	loop_3377
	ldd	[%l7 + 0x50],	%f0
	siam	0x5
	ldsh	[%l7 + 0x50],	%o5
loop_3377:
	fmovrde	%i5,	%f6,	%f14
	lduw	[%l7 + 0x1C],	%o1
	fnot1	%f8,	%f6
	bne,pn	%xcc,	loop_3378
	popc	%i2,	%l2
	ld	[%l7 + 0x0C],	%f2
	lduw	[%l7 + 0x7C],	%g7
loop_3378:
	ldub	[%l7 + 0x7C],	%i0
	fbe	%fcc2,	loop_3379
	stb	%l0,	[%l7 + 0x3D]
	fpsub32s	%f6,	%f0,	%f11
	ldsw	[%l7 + 0x54],	%i1
loop_3379:
	edge32	%g4,	%i7,	%g2
	ld	[%l7 + 0x6C],	%f9
	fexpand	%f10,	%f4
	ld	[%l7 + 0x3C],	%f6
	mulx	%i4,	0x15C5,	%l1
	sdivcc	%l6,	0x1A13,	%o3
	fmovdpos	%xcc,	%f1,	%f4
	ldsh	[%l7 + 0x2E],	%o7
	alignaddr	%i3,	%o4,	%o2
	sethi	0x0E58,	%i6
	fmovrdlz	%g6,	%f2,	%f0
	brlez	%o6,	loop_3380
	fmovdcc	%xcc,	%f6,	%f14
	sll	%o0,	0x1C,	%g5
	ldsw	[%l7 + 0x08],	%g1
loop_3380:
	or	%g3,	%l5,	%l4
	be,pt	%icc,	loop_3381
	fmovspos	%icc,	%f13,	%f2
	orcc	%o5,	%l3,	%o1
	sdiv	%i5,	0x0066,	%i2
loop_3381:
	sllx	%g7,	0x0C,	%i0
	movpos	%icc,	%l0,	%i1
	taddcc	%g4,	%l2,	%i7
	ldsw	[%l7 + 0x7C],	%g2
	fmovsneg	%xcc,	%f4,	%f12
	bneg	loop_3382
	tpos	%icc,	0x1
	ldsb	[%l7 + 0x35],	%i4
	fcmpeq32	%f6,	%f8,	%l1
loop_3382:
	stx	%o3,	[%l7 + 0x40]
	ldd	[%l7 + 0x38],	%f6
	fmovdcs	%icc,	%f2,	%f0
	lduh	[%l7 + 0x7A],	%l6
	ldd	[%l7 + 0x50],	%f4
	fblg	%fcc0,	loop_3383
	fbug	%fcc1,	loop_3384
	fbn,a	%fcc1,	loop_3385
	sth	%i3,	[%l7 + 0x20]
loop_3383:
	fsrc1s	%f13,	%f7
loop_3384:
	sth	%o4,	[%l7 + 0x34]
loop_3385:
	sth	%o7,	[%l7 + 0x1A]
	fornot2	%f12,	%f2,	%f12
	stb	%o2,	[%l7 + 0x5B]
	movrgez	%g6,	0x08C,	%i6
	bleu,pn	%xcc,	loop_3386
	movcs	%xcc,	%o0,	%o6
	ldsw	[%l7 + 0x64],	%g1
	fpackfix	%f4,	%f14
loop_3386:
	fsrc2s	%f4,	%f4
	bne,pt	%xcc,	loop_3387
	fabss	%f14,	%f0
	fpsub16s	%f2,	%f9,	%f14
	fmovdneg	%xcc,	%f6,	%f4
loop_3387:
	mulscc	%g5,	0x15F6,	%l5
	st	%f4,	[%l7 + 0x10]
	fmovrdlz	%g3,	%f8,	%f8
	movcc	%icc,	%l4,	%o5
	fabsd	%f14,	%f0
	edge8l	%l3,	%o1,	%i2
	mulx	%i5,	%g7,	%l0
	fnot2s	%f2,	%f10
	lduw	[%l7 + 0x50],	%i1
	for	%f6,	%f10,	%f8
	edge16ln	%i0,	%l2,	%i7
	fnands	%f3,	%f3,	%f9
	be	loop_3388
	ldx	[%l7 + 0x50],	%g2
	orcc	%g4,	%i4,	%o3
	fnands	%f11,	%f12,	%f8
loop_3388:
	fcmpne32	%f14,	%f4,	%l1
	umulcc	%l6,	0x02C5,	%i3
	stw	%o7,	[%l7 + 0x38]
	tleu	%icc,	0x4
	edge8l	%o2,	%o4,	%i6
	ta	%xcc,	0x5
	sth	%o0,	[%l7 + 0x30]
	ldd	[%l7 + 0x50],	%f0
	subcc	%g6,	0x1D79,	%o6
	fnegs	%f13,	%f7
	nop
	setx loop_3389, %l0, %l1
	jmpl %l1, %g5
	st	%f11,	[%l7 + 0x3C]
	movpos	%xcc,	%g1,	%g3
	ldsh	[%l7 + 0x76],	%l5
loop_3389:
	move	%icc,	%o5,	%l4
	fpsub16	%f14,	%f8,	%f4
	lduw	[%l7 + 0x48],	%o1
	lduh	[%l7 + 0x4E],	%l3
	fandnot1	%f4,	%f10,	%f8
	fmuld8ulx16	%f1,	%f2,	%f14
	tleu	%xcc,	0x2
	stx	%i5,	[%l7 + 0x40]
	fxors	%f6,	%f11,	%f15
	movcs	%icc,	%i2,	%g7
	fzero	%f2
	alignaddr	%i1,	%l0,	%l2
	smulcc	%i0,	%i7,	%g4
	tvs	%icc,	0x2
	tge	%icc,	0x3
	movpos	%xcc,	%g2,	%i4
	bcs,a	loop_3390
	ldsh	[%l7 + 0x36],	%o3
	st	%f14,	[%l7 + 0x24]
	st	%f7,	[%l7 + 0x54]
loop_3390:
	ld	[%l7 + 0x64],	%f0
	ldub	[%l7 + 0x78],	%l6
	ldub	[%l7 + 0x31],	%i3
	umul	%l1,	0x1D72,	%o2
	movle	%icc,	%o4,	%o7
	fbn	%fcc0,	loop_3391
	movn	%xcc,	%o0,	%g6
	fble,a	%fcc3,	loop_3392
	ldsb	[%l7 + 0x23],	%o6
loop_3391:
	fbu,a	%fcc1,	loop_3393
	fbl	%fcc0,	loop_3394
loop_3392:
	fsrc1	%f10,	%f2
	ldsb	[%l7 + 0x13],	%i6
loop_3393:
	fbn,a	%fcc2,	loop_3395
loop_3394:
	mulscc	%g1,	%g5,	%l5
	ldx	[%l7 + 0x40],	%g3
	lduw	[%l7 + 0x68],	%l4
loop_3395:
	fmul8ulx16	%f8,	%f8,	%f8
	be	%xcc,	loop_3396
	fmovrse	%o5,	%f9,	%f15
	fmovd	%f10,	%f10
	ldsb	[%l7 + 0x50],	%l3
loop_3396:
	sth	%o1,	[%l7 + 0x50]
	fble	%fcc1,	loop_3397
	ld	[%l7 + 0x70],	%f10
	ld	[%l7 + 0x64],	%f2
	ble,a	loop_3398
loop_3397:
	fmovdcs	%icc,	%f13,	%f12
	tne	%xcc,	0x7
	sth	%i2,	[%l7 + 0x0A]
loop_3398:
	xor	%g7,	0x0CFA,	%i5
	fand	%f6,	%f2,	%f12
	fcmpd	%fcc0,	%f2,	%f8
	fmovdl	%icc,	%f0,	%f15
	fsrc2	%f6,	%f10
	andn	%i1,	%l2,	%l0
	movrgez	%i7,	0x022,	%i0
	ldub	[%l7 + 0x62],	%g4
	mulx	%g2,	%o3,	%l6
	st	%f4,	[%l7 + 0x70]
	movrgz	%i4,	0x28E,	%i3
	alignaddr	%l1,	%o4,	%o7
	or	%o0,	0x1B89,	%o2
	fpmerge	%f9,	%f9,	%f12
	udivcc	%o6,	0x18D2,	%i6
	stx	%g6,	[%l7 + 0x68]
	tgu	%xcc,	0x3
	sth	%g1,	[%l7 + 0x2E]
	mulx	%l5,	0x043F,	%g5
	movn	%icc,	%g3,	%o5
	umulcc	%l3,	0x03D6,	%l4
	fcmpeq16	%f0,	%f2,	%o1
	bvc	loop_3399
	xnor	%i2,	0x0E00,	%i5
	tn	%icc,	0x0
	fmovrdgz	%i1,	%f14,	%f6
loop_3399:
	fble	%fcc3,	loop_3400
	fsrc1	%f4,	%f6
	std	%f4,	[%l7 + 0x20]
	fmovs	%f6,	%f9
loop_3400:
	bne,pt	%icc,	loop_3401
	lduh	[%l7 + 0x16],	%g7
	lduw	[%l7 + 0x48],	%l0
	fba,a	%fcc0,	loop_3402
loop_3401:
	fornot2s	%f15,	%f3,	%f1
	sth	%i7,	[%l7 + 0x1A]
	fpmerge	%f12,	%f0,	%f14
loop_3402:
	ldx	[%l7 + 0x38],	%i0
	fcmpne32	%f6,	%f14,	%l2
	movre	%g2,	%o3,	%g4
	xnorcc	%l6,	%i4,	%l1
	movn	%icc,	%i3,	%o4
	fabsd	%f0,	%f14
	edge32l	%o0,	%o7,	%o6
	sth	%o2,	[%l7 + 0x4C]
	movcc	%xcc,	%i6,	%g6
	stx	%g1,	[%l7 + 0x20]
	umulcc	%g5,	0x0753,	%g3
	stw	%o5,	[%l7 + 0x60]
	fexpand	%f5,	%f8
	subccc	%l5,	0x0984,	%l3
	fmovdne	%icc,	%f14,	%f14
	fmovdl	%icc,	%f1,	%f0
	std	%f4,	[%l7 + 0x28]
	fmul8x16au	%f13,	%f0,	%f8
	fnors	%f2,	%f4,	%f10
	tsubcctv	%l4,	%o1,	%i2
	sub	%i1,	%g7,	%i5
	sth	%l0,	[%l7 + 0x36]
	te	%xcc,	0x4
	lduw	[%l7 + 0x10],	%i0
	sllx	%i7,	%l2,	%g2
	std	%f2,	[%l7 + 0x30]
	umul	%g4,	0x0FF6,	%o3
	ldd	[%l7 + 0x58],	%f2
	std	%f8,	[%l7 + 0x60]
	srl	%l6,	0x0A,	%i4
	brlez,a	%l1,	loop_3403
	movrlez	%i3,	%o0,	%o7
	fmovsgu	%icc,	%f4,	%f12
	ble,a,pt	%icc,	loop_3404
loop_3403:
	lduw	[%l7 + 0x58],	%o4
	pdist	%f10,	%f2,	%f14
	fcmpgt32	%f12,	%f8,	%o2
loop_3404:
	ldx	[%l7 + 0x20],	%i6
	fcmps	%fcc2,	%f11,	%f5
	addcc	%o6,	0x0439,	%g6
	fnor	%f0,	%f2,	%f4
	smulcc	%g5,	%g1,	%g3
	xor	%o5,	%l5,	%l3
	tvs	%xcc,	0x7
	fmovdcc	%icc,	%f0,	%f0
	fsrc1s	%f9,	%f10
	fsrc1	%f0,	%f14
	fones	%f8
	be	loop_3405
	sll	%o1,	%i2,	%i1
	movne	%xcc,	%g7,	%l4
	ldd	[%l7 + 0x20],	%f2
loop_3405:
	fmovsgu	%xcc,	%f10,	%f13
	movg	%icc,	%l0,	%i5
	subccc	%i7,	%i0,	%g2
	fzero	%f2
	movl	%xcc,	%l2,	%o3
	fcmpgt16	%f2,	%f14,	%l6
	fsrc1s	%f3,	%f4
	te	%xcc,	0x5
	ble	loop_3406
	st	%f13,	[%l7 + 0x4C]
	lduw	[%l7 + 0x70],	%g4
	fandnot1	%f6,	%f0,	%f10
loop_3406:
	ldsb	[%l7 + 0x30],	%l1
	ldsb	[%l7 + 0x0D],	%i3
	lduh	[%l7 + 0x2C],	%i4
	tl	%xcc,	0x2
	std	%f14,	[%l7 + 0x18]
	fmovsn	%xcc,	%f11,	%f3
	ldsw	[%l7 + 0x2C],	%o0
	stw	%o7,	[%l7 + 0x38]
	ld	[%l7 + 0x38],	%f12
	fbo	%fcc2,	loop_3407
	std	%f2,	[%l7 + 0x40]
	ba,a,pt	%icc,	loop_3408
	ldd	[%l7 + 0x48],	%f6
loop_3407:
	fmovsl	%icc,	%f3,	%f12
	srlx	%o4,	0x17,	%i6
loop_3408:
	ldsb	[%l7 + 0x70],	%o6
	st	%f2,	[%l7 + 0x58]
	tl	%icc,	0x1
	bgu	loop_3409
	ldsw	[%l7 + 0x30],	%o2
	fbn,a	%fcc3,	loop_3410
	array8	%g5,	%g1,	%g3
loop_3409:
	movge	%xcc,	%o5,	%l5
	ldsb	[%l7 + 0x43],	%g6
loop_3410:
	fmovdl	%icc,	%f15,	%f2
	edge16l	%l3,	%i2,	%o1
	stx	%i1,	[%l7 + 0x40]
	fble	%fcc3,	loop_3411
	stx	%l4,	[%l7 + 0x18]
	st	%f7,	[%l7 + 0x34]
	tpos	%icc,	0x2
loop_3411:
	fbue,a	%fcc2,	loop_3412
	sdiv	%g7,	0x0C4D,	%i5
	stb	%l0,	[%l7 + 0x0C]
	fpack32	%f2,	%f0,	%f12
loop_3412:
	sth	%i0,	[%l7 + 0x0C]
	tneg	%icc,	0x2
	stb	%i7,	[%l7 + 0x1E]
	fbne	%fcc3,	loop_3413
	sll	%g2,	0x0D,	%l2
	stw	%l6,	[%l7 + 0x54]
	fbue	%fcc3,	loop_3414
loop_3413:
	fmovrdlez	%o3,	%f0,	%f4
	fabsd	%f4,	%f6
	andncc	%l1,	%i3,	%g4
loop_3414:
	xorcc	%o0,	%o7,	%i4
	fsrc1s	%f5,	%f5
	fnand	%f6,	%f10,	%f8
	fnor	%f2,	%f14,	%f10
	edge8n	%o4,	%i6,	%o6
	umul	%g5,	0x1420,	%g1
	umul	%g3,	0x137F,	%o5
	edge16n	%l5,	%o2,	%l3
	ld	[%l7 + 0x2C],	%f9
	edge16	%i2,	%o1,	%i1
	edge16ln	%l4,	%g6,	%g7
	fblg,a	%fcc0,	loop_3415
	fmovda	%icc,	%f11,	%f5
	ldd	[%l7 + 0x60],	%f6
	orncc	%l0,	0x07CE,	%i0
loop_3415:
	stx	%i5,	[%l7 + 0x58]
	andcc	%g2,	0x101C,	%l2
	addc	%i7,	0x040B,	%l6
	fmovs	%f7,	%f5
	fmovse	%icc,	%f2,	%f4
	edge8n	%l1,	%i3,	%g4
	ldd	[%l7 + 0x68],	%f8
	stw	%o0,	[%l7 + 0x40]
	edge16l	%o7,	%o3,	%o4
	ldsb	[%l7 + 0x6C],	%i6
	tneg	%xcc,	0x7
	tne	%icc,	0x0
	bpos	%xcc,	loop_3416
	array16	%i4,	%o6,	%g1
	ld	[%l7 + 0x08],	%f14
	pdist	%f10,	%f2,	%f0
loop_3416:
	te	%xcc,	0x1
	std	%f10,	[%l7 + 0x20]
	alignaddrl	%g5,	%g3,	%l5
	movvc	%icc,	%o2,	%o5
	movvs	%xcc,	%l3,	%i2
	fbg	%fcc1,	loop_3417
	movrlz	%i1,	%o1,	%l4
	edge8ln	%g6,	%l0,	%g7
	edge8	%i0,	%i5,	%g2
loop_3417:
	stb	%l2,	[%l7 + 0x7B]
	fmovdg	%xcc,	%f8,	%f0
	fmovdne	%xcc,	%f14,	%f8
	edge32n	%i7,	%l6,	%l1
	fxor	%f8,	%f2,	%f6
	mulscc	%g4,	%o0,	%o7
	array8	%o3,	%i3,	%o4
	movn	%xcc,	%i4,	%o6
	array8	%i6,	%g1,	%g5
	fbuge,a	%fcc2,	loop_3418
	fbl	%fcc0,	loop_3419
	popc	%l5,	%o2
	tneg	%icc,	0x4
loop_3418:
	smulcc	%o5,	%l3,	%g3
loop_3419:
	ldsw	[%l7 + 0x34],	%i1
	addcc	%i2,	0x0943,	%l4
	umul	%g6,	0x1812,	%l0
	movle	%icc,	%g7,	%i0
	fble	%fcc2,	loop_3420
	brz	%i5,	loop_3421
	fpadd16	%f8,	%f14,	%f0
	lduw	[%l7 + 0x20],	%o1
loop_3420:
	movne	%xcc,	%g2,	%i7
loop_3421:
	array16	%l2,	%l6,	%l1
	siam	0x1
	ldx	[%l7 + 0x50],	%o0
	fabsd	%f2,	%f6
	alignaddr	%g4,	%o7,	%i3
	ldub	[%l7 + 0x4D],	%o4
	stb	%o3,	[%l7 + 0x1A]
	ldx	[%l7 + 0x48],	%o6
	fmovsvc	%xcc,	%f5,	%f14
	ldsw	[%l7 + 0x18],	%i6
	movpos	%icc,	%g1,	%i4
	stx	%g5,	[%l7 + 0x20]
	movneg	%xcc,	%o2,	%l5
	tl	%xcc,	0x6
	fand	%f6,	%f2,	%f10
	tvs	%xcc,	0x4
	movre	%o5,	0x3B1,	%l3
	fpadd16	%f8,	%f10,	%f10
	stw	%g3,	[%l7 + 0x34]
	sllx	%i2,	0x11,	%l4
	movcc	%icc,	%i1,	%l0
	fmovscs	%xcc,	%f14,	%f2
	fmovdgu	%xcc,	%f2,	%f3
	fbuge	%fcc1,	loop_3422
	fandnot2s	%f2,	%f1,	%f13
	stx	%g7,	[%l7 + 0x68]
	stw	%i0,	[%l7 + 0x30]
loop_3422:
	fbge,a	%fcc3,	loop_3423
	ldsh	[%l7 + 0x12],	%g6
	fornot2	%f0,	%f0,	%f8
	movneg	%xcc,	%i5,	%o1
loop_3423:
	fbn,a	%fcc0,	loop_3424
	movrgez	%i7,	%l2,	%g2
	mulx	%l1,	0x040A,	%l6
	bvc	loop_3425
loop_3424:
	edge8l	%g4,	%o0,	%o7
	movrgez	%i3,	0x3E5,	%o4
	fmul8x16al	%f5,	%f13,	%f6
loop_3425:
	fmovdg	%icc,	%f2,	%f15
	mova	%icc,	%o3,	%o6
	fmovdpos	%xcc,	%f5,	%f11
	andcc	%i6,	0x1F21,	%i4
	tle	%icc,	0x7
	fmovde	%icc,	%f8,	%f11
	array16	%g1,	%g5,	%o2
	fbu,a	%fcc2,	loop_3426
	xnor	%o5,	%l5,	%g3
	fbl,a	%fcc0,	loop_3427
	ldx	[%l7 + 0x68],	%i2
loop_3426:
	ldx	[%l7 + 0x58],	%l4
	stb	%l3,	[%l7 + 0x12]
loop_3427:
	fbug	%fcc0,	loop_3428
	fandnot2	%f4,	%f12,	%f12
	popc	0x1E33,	%i1
	movrlez	%g7,	0x001,	%l0
loop_3428:
	movcc	%xcc,	%i0,	%i5
	ldsw	[%l7 + 0x74],	%o1
	brlez,a	%g6,	loop_3429
	be	%icc,	loop_3430
	ldsb	[%l7 + 0x6E],	%i7
	movcc	%icc,	%l2,	%l1
loop_3429:
	fmovdvs	%icc,	%f10,	%f0
loop_3430:
	sethi	0x168F,	%l6
	ldsw	[%l7 + 0x54],	%g2
	stb	%o0,	[%l7 + 0x14]
	fmovdneg	%xcc,	%f2,	%f13
	fornot1s	%f4,	%f15,	%f4
	fbul,a	%fcc3,	loop_3431
	brgez	%g4,	loop_3432
	fzeros	%f3
	stw	%o7,	[%l7 + 0x38]
loop_3431:
	fmovrdgz	%o4,	%f8,	%f14
loop_3432:
	edge32l	%o3,	%i3,	%i6
	std	%f12,	[%l7 + 0x50]
	fmovsne	%icc,	%f9,	%f7
	fexpand	%f1,	%f10
	lduh	[%l7 + 0x66],	%o6
	ldsh	[%l7 + 0x4C],	%g1
	ldsb	[%l7 + 0x39],	%i4
	movleu	%xcc,	%o2,	%o5
	std	%f14,	[%l7 + 0x40]
	ldsw	[%l7 + 0x7C],	%g5
	bvc	loop_3433
	stw	%g3,	[%l7 + 0x0C]
	movre	%l5,	%l4,	%i2
	lduh	[%l7 + 0x46],	%i1
loop_3433:
	fand	%f4,	%f12,	%f2
	sll	%g7,	0x06,	%l3
	fcmps	%fcc1,	%f5,	%f8
	subccc	%l0,	0x07A1,	%i5
	stb	%i0,	[%l7 + 0x08]
	edge16ln	%g6,	%i7,	%l2
	fbu,a	%fcc1,	loop_3434
	ldsh	[%l7 + 0x56],	%o1
	fmovspos	%xcc,	%f9,	%f8
	fpsub16s	%f8,	%f11,	%f4
loop_3434:
	fnors	%f6,	%f5,	%f9
	lduw	[%l7 + 0x40],	%l1
	mulx	%g2,	%o0,	%l6
	stx	%g4,	[%l7 + 0x40]
	andncc	%o4,	%o3,	%o7
	movrgz	%i6,	%i3,	%g1
	fble,a	%fcc0,	loop_3435
	fmovrse	%i4,	%f1,	%f14
	edge32n	%o6,	%o2,	%g5
	fcmpne16	%f4,	%f0,	%o5
loop_3435:
	movn	%icc,	%g3,	%l5
	alignaddr	%l4,	%i2,	%g7
	ld	[%l7 + 0x34],	%f6
	fmovd	%f8,	%f12
	std	%f6,	[%l7 + 0x68]
	sethi	0x102C,	%i1
	stx	%l3,	[%l7 + 0x28]
	ld	[%l7 + 0x7C],	%f2
	tsubcctv	%i5,	%l0,	%g6
	movle	%xcc,	%i7,	%i0
	or	%l2,	0x0CE5,	%l1
	lduh	[%l7 + 0x3A],	%g2
	bcs	%xcc,	loop_3436
	te	%icc,	0x2
	and	%o1,	0x01E0,	%l6
	fsrc1	%f10,	%f12
loop_3436:
	stx	%g4,	[%l7 + 0x40]
	te	%xcc,	0x3
	sll	%o0,	%o4,	%o3
	stx	%o7,	[%l7 + 0x28]
	std	%f10,	[%l7 + 0x28]
	fcmple32	%f12,	%f2,	%i6
	ldsh	[%l7 + 0x50],	%g1
	lduw	[%l7 + 0x3C],	%i4
	fmovdne	%icc,	%f4,	%f3
	orcc	%o6,	0x0EF6,	%i3
	ldub	[%l7 + 0x1B],	%g5
	fmovdleu	%xcc,	%f13,	%f10
	fmovsl	%xcc,	%f15,	%f9
	ld	[%l7 + 0x14],	%f8
	be,pn	%xcc,	loop_3437
	fmovdg	%xcc,	%f10,	%f7
	ldx	[%l7 + 0x30],	%o5
	fornot2	%f0,	%f14,	%f14
loop_3437:
	fbe,a	%fcc0,	loop_3438
	fnegs	%f0,	%f7
	movrlz	%g3,	0x0FB,	%o2
	fnot2	%f10,	%f4
loop_3438:
	ldsb	[%l7 + 0x69],	%l4
	ldx	[%l7 + 0x08],	%i2
	lduw	[%l7 + 0x74],	%l5
	fbne,a	%fcc0,	loop_3439
	stx	%i1,	[%l7 + 0x18]
	edge32	%g7,	%l3,	%i5
	bpos,a	%xcc,	loop_3440
loop_3439:
	fpsub32s	%f10,	%f4,	%f14
	ldub	[%l7 + 0x13],	%g6
	brgz	%l0,	loop_3441
loop_3440:
	stb	%i7,	[%l7 + 0x0B]
	sth	%l2,	[%l7 + 0x36]
	stb	%l1,	[%l7 + 0x59]
loop_3441:
	ldub	[%l7 + 0x49],	%i0
	fmovdcc	%xcc,	%f5,	%f9
	fbo	%fcc3,	loop_3442
	subcc	%g2,	%o1,	%l6
	tgu	%icc,	0x2
	tpos	%xcc,	0x6
loop_3442:
	tge	%icc,	0x4
	fmovdle	%xcc,	%f14,	%f15
	lduw	[%l7 + 0x6C],	%o0
	fmovdvs	%xcc,	%f1,	%f2
	fmovsleu	%icc,	%f1,	%f1
	fmovsa	%xcc,	%f11,	%f1
	ldsh	[%l7 + 0x2A],	%o4
	stx	%g4,	[%l7 + 0x18]
	fandnot1s	%f8,	%f6,	%f4
	stb	%o7,	[%l7 + 0x19]
	std	%f6,	[%l7 + 0x30]
	fmovdle	%icc,	%f13,	%f1
	orncc	%o3,	0x0735,	%i6
	movrgez	%g1,	%o6,	%i4
	brgez,a	%i3,	loop_3443
	fbg,a	%fcc1,	loop_3444
	sth	%g5,	[%l7 + 0x3E]
	stx	%g3,	[%l7 + 0x68]
loop_3443:
	brz,a	%o2,	loop_3445
loop_3444:
	bneg,a,pn	%xcc,	loop_3446
	taddcc	%l4,	%o5,	%i2
	brgz,a	%i1,	loop_3447
loop_3445:
	fcmpeq16	%f14,	%f14,	%g7
loop_3446:
	xorcc	%l3,	%i5,	%g6
	ba,pn	%xcc,	loop_3448
loop_3447:
	std	%f0,	[%l7 + 0x50]
	nop
	setx loop_3449, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	st	%f11,	[%l7 + 0x28]
loop_3448:
	sth	%l0,	[%l7 + 0x7C]
	brgez	%i7,	loop_3450
loop_3449:
	fcmple32	%f0,	%f12,	%l5
	fbule,a	%fcc3,	loop_3451
	te	%icc,	0x1
loop_3450:
	brgz	%l1,	loop_3452
	fabss	%f8,	%f3
loop_3451:
	fmovrse	%i0,	%f9,	%f8
	srlx	%l2,	%g2,	%o1
loop_3452:
	bgu,a	%icc,	loop_3453
	fnegs	%f3,	%f1
	brgez	%o0,	loop_3454
	fmovd	%f10,	%f6
loop_3453:
	st	%f10,	[%l7 + 0x34]
	fmovsneg	%icc,	%f2,	%f10
loop_3454:
	lduw	[%l7 + 0x0C],	%o4
	te	%xcc,	0x6
	taddcctv	%l6,	%o7,	%o3
	stx	%i6,	[%l7 + 0x50]
	std	%f6,	[%l7 + 0x78]
	or	%g1,	%o6,	%g4
	movg	%xcc,	%i3,	%i4
	edge8ln	%g5,	%g3,	%l4
	stx	%o2,	[%l7 + 0x40]
	sth	%i2,	[%l7 + 0x70]
	tle	%icc,	0x7
	nop
	setx loop_3455, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldub	[%l7 + 0x7F],	%o5
	movre	%g7,	0x30C,	%l3
	ble	%icc,	loop_3456
loop_3455:
	sdivx	%i1,	0x1DBD,	%i5
	fmovsle	%icc,	%f8,	%f13
	fmovscc	%icc,	%f12,	%f5
loop_3456:
	fsrc2s	%f1,	%f13
	fmul8ulx16	%f8,	%f4,	%f8
	edge8ln	%g6,	%i7,	%l5
	addcc	%l1,	0x0E97,	%l0
	ldsw	[%l7 + 0x40],	%i0
	bleu	%xcc,	loop_3457
	ldsw	[%l7 + 0x30],	%g2
	fmovsn	%xcc,	%f3,	%f3
	bn,pn	%icc,	loop_3458
loop_3457:
	ldsh	[%l7 + 0x58],	%l2
	bg,pn	%xcc,	loop_3459
	fbne	%fcc1,	loop_3460
loop_3458:
	lduh	[%l7 + 0x0C],	%o0
	fornot2	%f4,	%f4,	%f8
loop_3459:
	movl	%xcc,	%o4,	%o1
loop_3460:
	udiv	%l6,	0x00AF,	%o3
	fone	%f6
	ldub	[%l7 + 0x44],	%i6
	st	%f7,	[%l7 + 0x64]
	fpsub32s	%f3,	%f15,	%f2
	ldub	[%l7 + 0x27],	%o7
	fbe,a	%fcc0,	loop_3461
	addc	%o6,	%g4,	%g1
	ldd	[%l7 + 0x10],	%f12
	fmovsne	%xcc,	%f3,	%f6
loop_3461:
	fnand	%f14,	%f8,	%f2
	fmovrsgez	%i4,	%f3,	%f2
	movvc	%xcc,	%g5,	%i3
	ldsw	[%l7 + 0x3C],	%l4
	ba,a	%xcc,	loop_3462
	fmovsg	%icc,	%f4,	%f1
	fnands	%f5,	%f9,	%f3
	fnot1	%f6,	%f10
loop_3462:
	movge	%xcc,	%o2,	%g3
	subccc	%o5,	%i2,	%l3
	ldsh	[%l7 + 0x1E],	%g7
	fcmple32	%f8,	%f2,	%i5
	tvc	%icc,	0x1
	andcc	%i1,	0x1C1E,	%g6
	edge32	%i7,	%l1,	%l0
	fmul8x16	%f5,	%f10,	%f10
	fbu,a	%fcc1,	loop_3463
	fblg	%fcc2,	loop_3464
	movge	%icc,	%i0,	%g2
	sll	%l2,	0x1E,	%l5
loop_3463:
	fbg	%fcc1,	loop_3465
loop_3464:
	brz,a	%o0,	loop_3466
	taddcctv	%o1,	%o4,	%o3
	fmovsleu	%xcc,	%f12,	%f13
loop_3465:
	lduw	[%l7 + 0x64],	%i6
loop_3466:
	subcc	%o7,	0x1256,	%o6
	ldd	[%l7 + 0x78],	%f12
	movne	%icc,	%g4,	%g1
	ldsb	[%l7 + 0x50],	%l6
	fmovsn	%xcc,	%f6,	%f3
	lduw	[%l7 + 0x44],	%g5
	orcc	%i4,	0x11E9,	%i3
	tsubcc	%o2,	%l4,	%g3
	xnorcc	%i2,	0x0F69,	%l3
	ld	[%l7 + 0x10],	%f0
	sth	%o5,	[%l7 + 0x5C]
	ldsh	[%l7 + 0x5A],	%g7
	fcmpd	%fcc3,	%f6,	%f6
	edge8ln	%i5,	%i1,	%g6
	ldd	[%l7 + 0x48],	%f10
	mulscc	%l1,	%i7,	%i0
	movleu	%icc,	%l0,	%l2
	ldsh	[%l7 + 0x3E],	%l5
	andn	%g2,	0x1EA4,	%o1
	nop
	setx loop_3467, %l0, %l1
	jmpl %l1, %o0
	fmovsa	%icc,	%f8,	%f8
	lduh	[%l7 + 0x08],	%o3
	ldsh	[%l7 + 0x3C],	%i6
loop_3467:
	nop
	setx loop_3468, %l0, %l1
	jmpl %l1, %o7
	fmovsgu	%icc,	%f10,	%f7
	sdiv	%o6,	0x0922,	%o4
	sth	%g1,	[%l7 + 0x44]
loop_3468:
	fmovrdne	%g4,	%f14,	%f6
	fbge	%fcc2,	loop_3469
	fcmpd	%fcc2,	%f0,	%f8
	fmovdn	%xcc,	%f15,	%f3
	bneg	loop_3470
loop_3469:
	ldsw	[%l7 + 0x40],	%g5
	fandnot1s	%f1,	%f6,	%f13
	smul	%l6,	%i3,	%i4
loop_3470:
	pdist	%f12,	%f2,	%f14
	fmul8ulx16	%f12,	%f6,	%f12
	stb	%o2,	[%l7 + 0x3F]
	xnor	%g3,	0x0D4E,	%l4
	movpos	%xcc,	%l3,	%i2
	fnot1	%f0,	%f0
	fsrc1	%f6,	%f12
	fxnor	%f0,	%f6,	%f4
	fcmpeq16	%f8,	%f0,	%o5
	fandnot1s	%f1,	%f0,	%f5
	addc	%i5,	0x152B,	%i1
	brnz	%g6,	loop_3471
	andn	%g7,	0x116F,	%l1
	ldub	[%l7 + 0x44],	%i7
	brz	%l0,	loop_3472
loop_3471:
	ldub	[%l7 + 0x56],	%i0
	fpsub32	%f10,	%f14,	%f6
	std	%f2,	[%l7 + 0x08]
loop_3472:
	sdivcc	%l5,	0x19B0,	%l2
	sll	%o1,	%o0,	%o3
	ld	[%l7 + 0x5C],	%f6
	fmovdvs	%icc,	%f11,	%f3
	fmovdle	%icc,	%f5,	%f6
	std	%f14,	[%l7 + 0x30]
	umul	%i6,	0x0F6C,	%g2
	stw	%o7,	[%l7 + 0x48]
	fblg,a	%fcc2,	loop_3473
	stw	%o6,	[%l7 + 0x6C]
	fexpand	%f14,	%f10
	tneg	%xcc,	0x6
loop_3473:
	stw	%g1,	[%l7 + 0x64]
	tle	%xcc,	0x5
	tvs	%xcc,	0x5
	fmovsge	%xcc,	%f3,	%f2
	faligndata	%f8,	%f8,	%f10
	orcc	%o4,	0x134F,	%g4
	fpadd16s	%f15,	%f12,	%f3
	alignaddrl	%l6,	%g5,	%i3
	ta	%xcc,	0x4
	movvs	%icc,	%o2,	%i4
	ldsw	[%l7 + 0x28],	%l4
	ld	[%l7 + 0x58],	%f11
	popc	0x1382,	%g3
	movvc	%icc,	%l3,	%o5
	bcc	%xcc,	loop_3474
	ta	%xcc,	0x0
	xnor	%i5,	0x17C2,	%i2
	fpsub16s	%f14,	%f4,	%f15
loop_3474:
	ldd	[%l7 + 0x78],	%f4
	mova	%xcc,	%g6,	%g7
	std	%f12,	[%l7 + 0x78]
	ldub	[%l7 + 0x72],	%i1
	tneg	%xcc,	0x7
	bgu	%icc,	loop_3475
	ldub	[%l7 + 0x58],	%i7
	ldsw	[%l7 + 0x50],	%l1
	tl	%xcc,	0x6
loop_3475:
	fpsub32	%f4,	%f14,	%f10
	fxnors	%f4,	%f5,	%f6
	srlx	%l0,	%l5,	%i0
	fnors	%f2,	%f3,	%f14
	movrne	%o1,	%l2,	%o3
	tvs	%xcc,	0x7
	edge8l	%i6,	%g2,	%o7
	brz,a	%o0,	loop_3476
	ldub	[%l7 + 0x2D],	%o6
	fabss	%f13,	%f11
	taddcc	%o4,	%g1,	%l6
loop_3476:
	nop
	setx loop_3477, %l0, %l1
	jmpl %l1, %g5
	sllx	%g4,	%i3,	%i4
	movle	%xcc,	%o2,	%l4
	ldsb	[%l7 + 0x1D],	%g3
loop_3477:
	fpadd16	%f6,	%f10,	%f12
	bvc,a	loop_3478
	fmul8sux16	%f12,	%f0,	%f6
	movrne	%l3,	0x206,	%o5
	lduh	[%l7 + 0x60],	%i2
loop_3478:
	smulcc	%g6,	%i5,	%i1
	ldub	[%l7 + 0x09],	%i7
	fcmple32	%f2,	%f14,	%g7
	stw	%l1,	[%l7 + 0x30]
	sth	%l5,	[%l7 + 0x2E]
	faligndata	%f0,	%f6,	%f10
	move	%xcc,	%l0,	%i0
	orn	%o1,	%o3,	%i6
	stb	%g2,	[%l7 + 0x18]
	fmovrslez	%o7,	%f10,	%f9
	fmuld8ulx16	%f1,	%f7,	%f6
	fmul8x16	%f7,	%f14,	%f4
	fmovspos	%icc,	%f12,	%f15
	fblg,a	%fcc3,	loop_3479
	fcmpne16	%f12,	%f4,	%l2
	fmul8ulx16	%f12,	%f6,	%f4
	fnot1s	%f11,	%f4
loop_3479:
	fbu	%fcc3,	loop_3480
	fmul8x16al	%f14,	%f9,	%f6
	sth	%o6,	[%l7 + 0x54]
	stw	%o0,	[%l7 + 0x24]
loop_3480:
	ldsw	[%l7 + 0x50],	%g1
	fcmpne32	%f12,	%f4,	%l6
	movrlez	%g5,	%g4,	%o4
	fmovse	%icc,	%f0,	%f13
	fmul8sux16	%f0,	%f12,	%f6
	tcs	%icc,	0x5
	tne	%xcc,	0x1
	edge8	%i3,	%i4,	%l4
	fnegs	%f0,	%f0
	fmovs	%f0,	%f15
	fcmpne32	%f14,	%f14,	%g3
	tvs	%xcc,	0x0
	fmovdle	%icc,	%f12,	%f6
	orn	%o2,	%l3,	%o5
	sth	%i2,	[%l7 + 0x32]
	ldub	[%l7 + 0x5B],	%g6
	fmovdleu	%icc,	%f1,	%f7
	orcc	%i5,	%i1,	%g7
	srlx	%l1,	0x17,	%l5
	fcmpne32	%f2,	%f8,	%i7
	st	%f14,	[%l7 + 0x54]
	lduh	[%l7 + 0x66],	%l0
	xorcc	%i0,	%o3,	%o1
	tsubcctv	%g2,	%o7,	%i6
	stb	%l2,	[%l7 + 0x45]
	ldsh	[%l7 + 0x0A],	%o0
	tleu	%xcc,	0x2
	sth	%o6,	[%l7 + 0x50]
	addcc	%l6,	0x1512,	%g1
	fpadd32	%f14,	%f12,	%f10
	tsubcctv	%g5,	%g4,	%i3
	fzero	%f14
	bge,pn	%xcc,	loop_3481
	lduh	[%l7 + 0x26],	%o4
	smulcc	%l4,	0x0A1A,	%i4
	add	%o2,	%g3,	%o5
loop_3481:
	fcmped	%fcc3,	%f12,	%f8
	brz	%i2,	loop_3482
	std	%f14,	[%l7 + 0x78]
	array8	%g6,	%l3,	%i5
	fcmple32	%f14,	%f8,	%g7
loop_3482:
	edge16l	%i1,	%l5,	%i7
	stb	%l1,	[%l7 + 0x40]
	ldx	[%l7 + 0x48],	%l0
	ldd	[%l7 + 0x30],	%f6
	lduh	[%l7 + 0x20],	%i0
	lduh	[%l7 + 0x52],	%o3
	stw	%o1,	[%l7 + 0x2C]
	xor	%o7,	0x16AB,	%g2
	bleu,a,pn	%xcc,	loop_3483
	bvs	loop_3484
	ldx	[%l7 + 0x68],	%l2
	std	%f10,	[%l7 + 0x20]
loop_3483:
	fmovdg	%icc,	%f12,	%f10
loop_3484:
	array16	%o0,	%i6,	%l6
	taddcctv	%o6,	0x0756,	%g5
	fzero	%f8
	andncc	%g1,	%i3,	%g4
	stw	%l4,	[%l7 + 0x48]
	fxnor	%f8,	%f0,	%f8
	bg,a	%xcc,	loop_3485
	tg	%icc,	0x6
	bn,pt	%xcc,	loop_3486
	lduw	[%l7 + 0x48],	%o4
loop_3485:
	movcc	%icc,	%o2,	%i4
	fblg	%fcc2,	loop_3487
loop_3486:
	bcc,a	%xcc,	loop_3488
	movg	%xcc,	%o5,	%g3
	ld	[%l7 + 0x40],	%f12
loop_3487:
	fpadd32	%f8,	%f0,	%f14
loop_3488:
	fnegd	%f12,	%f8
	taddcctv	%g6,	0x1E13,	%l3
	xnor	%i5,	%i2,	%i1
	sth	%g7,	[%l7 + 0x18]
	fandnot2	%f14,	%f12,	%f0
	subcc	%l5,	0x14EE,	%i7
	movcs	%xcc,	%l1,	%l0
	fmovsneg	%icc,	%f0,	%f11
	ldub	[%l7 + 0x51],	%o3
	fsrc2s	%f11,	%f3
	stx	%i0,	[%l7 + 0x40]
	movrne	%o7,	0x1A4,	%g2
	fcmpne32	%f0,	%f4,	%l2
	fcmpgt32	%f0,	%f10,	%o0
	ldd	[%l7 + 0x78],	%f0
	fsrc1s	%f14,	%f12
	ld	[%l7 + 0x78],	%f3
	ldsh	[%l7 + 0x4A],	%o1
	lduh	[%l7 + 0x0E],	%l6
	nop
	setx loop_3489, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	sth	%i6,	[%l7 + 0x1E]
	lduh	[%l7 + 0x78],	%g5
	move	%icc,	%g1,	%o6
loop_3489:
	fmovrslz	%g4,	%f0,	%f9
	ld	[%l7 + 0x08],	%f5
	fbul,a	%fcc1,	loop_3490
	stb	%l4,	[%l7 + 0x1C]
	alignaddr	%o4,	%o2,	%i3
	te	%xcc,	0x3
loop_3490:
	fpadd16	%f6,	%f2,	%f4
	stw	%i4,	[%l7 + 0x28]
	std	%f10,	[%l7 + 0x08]
	fcmple32	%f6,	%f10,	%o5
	umulcc	%g3,	0x133F,	%g6
	fbne	%fcc2,	loop_3491
	st	%f9,	[%l7 + 0x10]
	fmovdpos	%xcc,	%f2,	%f12
	bleu,a	loop_3492
loop_3491:
	ble,a,pn	%xcc,	loop_3493
	fnot1	%f0,	%f4
	stw	%l3,	[%l7 + 0x48]
loop_3492:
	fmovdge	%xcc,	%f13,	%f13
loop_3493:
	tl	%xcc,	0x3
	lduh	[%l7 + 0x54],	%i5
	ldd	[%l7 + 0x50],	%f12
	fmovdg	%icc,	%f10,	%f8
	brlz,a	%i1,	loop_3494
	xnor	%i2,	%g7,	%l5
	fmovscs	%icc,	%f12,	%f2
	fmovrse	%i7,	%f3,	%f1
loop_3494:
	xnor	%l0,	%o3,	%l1
	andncc	%o7,	%g2,	%l2
	tge	%icc,	0x7
	ldub	[%l7 + 0x47],	%o0
	bl,a	loop_3495
	fmuld8sux16	%f3,	%f15,	%f12
	mulx	%i0,	0x023F,	%o1
	fandnot2s	%f3,	%f4,	%f11
loop_3495:
	std	%f6,	[%l7 + 0x20]
	bshuffle	%f14,	%f12,	%f12
	movrne	%i6,	0x266,	%l6
	sth	%g5,	[%l7 + 0x58]
	andcc	%g1,	0x08F2,	%o6
	fabsd	%f14,	%f4
	fmovdvs	%xcc,	%f12,	%f5
	tpos	%icc,	0x4
	bgu	loop_3496
	orcc	%g4,	%l4,	%o4
	fmovsleu	%icc,	%f7,	%f11
	tgu	%xcc,	0x0
loop_3496:
	fmovrdne	%i3,	%f0,	%f0
	sllx	%i4,	0x15,	%o5
	fcmps	%fcc3,	%f0,	%f8
	fabsd	%f2,	%f0
	movle	%icc,	%o2,	%g6
	tl	%xcc,	0x6
	fands	%f6,	%f12,	%f6
	tneg	%xcc,	0x1
	fnot2	%f12,	%f10
	fmovdl	%xcc,	%f15,	%f1
	ldsw	[%l7 + 0x24],	%g3
	ldsw	[%l7 + 0x2C],	%i5
	std	%f8,	[%l7 + 0x10]
	ldub	[%l7 + 0x7F],	%i1
	movcs	%xcc,	%i2,	%l3
	std	%f14,	[%l7 + 0x30]
	fbu	%fcc0,	loop_3497
	addccc	%g7,	%i7,	%l0
	fbg	%fcc0,	loop_3498
	udivcc	%l5,	0x0E03,	%o3
loop_3497:
	ldsh	[%l7 + 0x18],	%l1
	std	%f6,	[%l7 + 0x08]
loop_3498:
	edge32n	%g2,	%l2,	%o0
	movrlez	%i0,	%o7,	%o1
	fone	%f0
	stb	%i6,	[%l7 + 0x34]
	fmul8x16al	%f0,	%f7,	%f14
	tgu	%icc,	0x4
	ldsb	[%l7 + 0x1A],	%g5
	ldub	[%l7 + 0x54],	%g1
	stw	%o6,	[%l7 + 0x20]
	stw	%l6,	[%l7 + 0x2C]
	call	loop_3499
	fmovdleu	%xcc,	%f15,	%f6
	st	%f3,	[%l7 + 0x58]
	fmul8x16	%f6,	%f0,	%f6
loop_3499:
	faligndata	%f12,	%f0,	%f4
	ld	[%l7 + 0x10],	%f13
	tg	%xcc,	0x1
	movvc	%xcc,	%l4,	%g4
	edge32n	%o4,	%i3,	%o5
	movcc	%xcc,	%i4,	%o2
	movcc	%xcc,	%g3,	%g6
	movn	%icc,	%i1,	%i5
	fmovsl	%icc,	%f3,	%f8
	xnorcc	%l3,	0x0C22,	%g7
	fmovde	%xcc,	%f15,	%f14
	tleu	%xcc,	0x0
	std	%f10,	[%l7 + 0x40]
	ldx	[%l7 + 0x60],	%i7
	fpadd32s	%f12,	%f15,	%f10
	fmovsvs	%icc,	%f8,	%f6
	st	%f13,	[%l7 + 0x10]
	fmovdge	%icc,	%f7,	%f7
	fexpand	%f2,	%f2
	stw	%i2,	[%l7 + 0x78]
	addcc	%l0,	0x0945,	%l5
	movge	%icc,	%l1,	%g2
	fpack16	%f0,	%f14
	std	%f8,	[%l7 + 0x48]
	fbge	%fcc0,	loop_3500
	nop
	setx loop_3501, %l0, %l1
	jmpl %l1, %l2
	subccc	%o3,	%o0,	%o7
	or	%i0,	0x1196,	%o1
loop_3500:
	stb	%i6,	[%l7 + 0x59]
loop_3501:
	stx	%g5,	[%l7 + 0x58]
	addccc	%o6,	0x0E31,	%l6
	fbl	%fcc0,	loop_3502
	fcmpne32	%f10,	%f4,	%g1
	tsubcc	%g4,	%l4,	%i3
	xnor	%o5,	%o4,	%o2
loop_3502:
	ldx	[%l7 + 0x68],	%i4
	movpos	%icc,	%g6,	%i1
	faligndata	%f2,	%f6,	%f14
	sth	%i5,	[%l7 + 0x3C]
	ldd	[%l7 + 0x08],	%f4
	tvc	%icc,	0x2
	tsubcc	%g3,	0x13EF,	%l3
	lduw	[%l7 + 0x7C],	%i7
	or	%i2,	0x0BB0,	%l0
	stx	%l5,	[%l7 + 0x28]
	bneg	loop_3503
	stx	%l1,	[%l7 + 0x10]
	stb	%g7,	[%l7 + 0x2C]
	fmovsne	%xcc,	%f10,	%f12
loop_3503:
	fones	%f0
	ldsb	[%l7 + 0x67],	%l2
	ldx	[%l7 + 0x28],	%o3
	nop
	setx loop_3504, %l0, %l1
	jmpl %l1, %g2
	ldsw	[%l7 + 0x58],	%o7
	fmovrse	%o0,	%f12,	%f2
	fpack16	%f0,	%f2
loop_3504:
	ldub	[%l7 + 0x45],	%o1
	bne,a,pt	%xcc,	loop_3505
	fbuge	%fcc3,	loop_3506
	ldsw	[%l7 + 0x3C],	%i0
	fnot2s	%f1,	%f13
loop_3505:
	brgz	%g5,	loop_3507
loop_3506:
	fornot1s	%f6,	%f7,	%f1
	fmovrse	%o6,	%f14,	%f7
	ldd	[%l7 + 0x08],	%f10
loop_3507:
	edge32	%l6,	%g1,	%i6
	brlez,a	%g4,	loop_3508
	tcs	%icc,	0x5
	fmovdge	%icc,	%f8,	%f8
	fcmped	%fcc0,	%f8,	%f8
loop_3508:
	stw	%l4,	[%l7 + 0x0C]
	movle	%icc,	%o5,	%o4
	sethi	0x03A8,	%i3
	fone	%f10
	fmovsvs	%icc,	%f0,	%f9
	fmovdge	%icc,	%f0,	%f6
	stb	%i4,	[%l7 + 0x6A]
	fmovscc	%icc,	%f10,	%f3
	bvc	%xcc,	loop_3509
	fsrc2	%f12,	%f8
	sllx	%o2,	%i1,	%g6
	tn	%icc,	0x1
loop_3509:
	movrne	%g3,	%l3,	%i5
	array32	%i7,	%i2,	%l0
	edge16l	%l1,	%g7,	%l5
	array16	%l2,	%o3,	%o7
	sth	%g2,	[%l7 + 0x24]
	fmovdle	%xcc,	%f5,	%f11
	edge8	%o1,	%i0,	%o0
	ldsw	[%l7 + 0x24],	%g5
	fmovrde	%l6,	%f8,	%f6
	bcc,a	%xcc,	loop_3510
	movge	%icc,	%o6,	%g1
	st	%f10,	[%l7 + 0x78]
	stb	%g4,	[%l7 + 0x6D]
loop_3510:
	ldub	[%l7 + 0x1A],	%l4
	andn	%i6,	%o4,	%i3
	fnands	%f3,	%f5,	%f13
	movpos	%icc,	%o5,	%i4
	movpos	%xcc,	%i1,	%g6
	fmovdle	%xcc,	%f7,	%f8
	orcc	%o2,	%g3,	%i5
	stx	%l3,	[%l7 + 0x38]
	tpos	%icc,	0x6
	orn	%i2,	%l0,	%l1
	ldd	[%l7 + 0x30],	%f14
	bg,a	%icc,	loop_3511
	ldsw	[%l7 + 0x3C],	%i7
	fmovrslz	%g7,	%f7,	%f8
	xnorcc	%l2,	%l5,	%o7
loop_3511:
	ldd	[%l7 + 0x18],	%f14
	ldsb	[%l7 + 0x6E],	%o3
	fmovrde	%o1,	%f10,	%f8
	fcmpeq32	%f12,	%f6,	%g2
	lduh	[%l7 + 0x66],	%o0
	brgez	%i0,	loop_3512
	std	%f6,	[%l7 + 0x10]
	ld	[%l7 + 0x14],	%f6
	fble,a	%fcc2,	loop_3513
loop_3512:
	movpos	%xcc,	%l6,	%o6
	fblg	%fcc1,	loop_3514
	fornot1	%f8,	%f8,	%f8
loop_3513:
	sdivx	%g5,	0x1062,	%g1
	te	%icc,	0x1
loop_3514:
	move	%icc,	%g4,	%l4
	nop
	setx loop_3515, %l0, %l1
	jmpl %l1, %i6
	std	%f12,	[%l7 + 0x50]
	fbne	%fcc1,	loop_3516
	tcc	%icc,	0x1
loop_3515:
	stb	%i3,	[%l7 + 0x34]
	fpsub32	%f2,	%f6,	%f6
loop_3516:
	fsrc1s	%f15,	%f4
	ldx	[%l7 + 0x38],	%o4
	fmuld8ulx16	%f5,	%f14,	%f8
	st	%f14,	[%l7 + 0x34]
	fandnot2	%f2,	%f10,	%f10
	fmovscc	%xcc,	%f1,	%f11
	fmovrde	%i4,	%f4,	%f14
	fcmpgt32	%f0,	%f12,	%i1
	subc	%g6,	%o5,	%g3
	ldsw	[%l7 + 0x30],	%i5
	srax	%o2,	%l3,	%i2
	fmovrsne	%l0,	%f14,	%f0
	ble,a,pn	%icc,	loop_3517
	std	%f14,	[%l7 + 0x20]
	fmovscs	%icc,	%f12,	%f3
	ldsh	[%l7 + 0x7A],	%i7
loop_3517:
	fnand	%f2,	%f8,	%f14
	brlz,a	%l1,	loop_3518
	ldsb	[%l7 + 0x46],	%l2
	ldsw	[%l7 + 0x20],	%l5
	fmovd	%f12,	%f2
loop_3518:
	tvc	%xcc,	0x0
	umul	%o7,	%o3,	%g7
	ldsb	[%l7 + 0x17],	%o1
	fmovdne	%xcc,	%f6,	%f7
	fbne,a	%fcc2,	loop_3519
	ldsw	[%l7 + 0x20],	%o0
	fmovsn	%icc,	%f0,	%f7
	fmovdvc	%xcc,	%f12,	%f4
loop_3519:
	fbn	%fcc2,	loop_3520
	stb	%g2,	[%l7 + 0x42]
	ldsb	[%l7 + 0x35],	%l6
	stb	%i0,	[%l7 + 0x2D]
loop_3520:
	fbue,a	%fcc2,	loop_3521
	fmovrslz	%o6,	%f7,	%f7
	fpsub32	%f12,	%f2,	%f14
	fandnot2	%f12,	%f8,	%f8
loop_3521:
	fornot2	%f0,	%f2,	%f2
	edge32n	%g5,	%g4,	%l4
	faligndata	%f10,	%f2,	%f2
	mova	%icc,	%g1,	%i3
	fcmpeq32	%f0,	%f4,	%i6
	movvs	%xcc,	%o4,	%i1
	fmovdleu	%xcc,	%f15,	%f3
	sth	%i4,	[%l7 + 0x2E]
	sdiv	%o5,	0x0FD0,	%g3
	fandnot2	%f8,	%f8,	%f2
	ldx	[%l7 + 0x78],	%i5
	fbe,a	%fcc1,	loop_3522
	fpsub32	%f2,	%f10,	%f6
	ldsh	[%l7 + 0x60],	%g6
	fpsub16	%f2,	%f10,	%f10
loop_3522:
	st	%f0,	[%l7 + 0x0C]
	fbo	%fcc0,	loop_3523
	fbe	%fcc1,	loop_3524
	sub	%l3,	%i2,	%o2
	ble,a	%xcc,	loop_3525
loop_3523:
	fcmpgt32	%f2,	%f8,	%i7
loop_3524:
	edge32n	%l1,	%l0,	%l2
	stw	%l5,	[%l7 + 0x40]
loop_3525:
	fbo	%fcc1,	loop_3526
	fpsub16	%f0,	%f8,	%f12
	bg,a	%icc,	loop_3527
	st	%f7,	[%l7 + 0x4C]
loop_3526:
	fnot1	%f0,	%f10
	stx	%o3,	[%l7 + 0x58]
loop_3527:
	fmovdn	%xcc,	%f11,	%f1
	fnot2	%f4,	%f0
	ldub	[%l7 + 0x0B],	%o7
	lduw	[%l7 + 0x20],	%g7
	fbu,a	%fcc2,	loop_3528
	movrlz	%o0,	0x0AF,	%g2
	ldsw	[%l7 + 0x70],	%o1
	fbo	%fcc0,	loop_3529
loop_3528:
	bcs	%icc,	loop_3530
	bpos,pn	%icc,	loop_3531
	taddcc	%i0,	0x03CB,	%o6
loop_3529:
	tpos	%icc,	0x3
loop_3530:
	for	%f4,	%f6,	%f14
loop_3531:
	siam	0x1
	stx	%g5,	[%l7 + 0x40]
	fmovdg	%xcc,	%f6,	%f2
	ldsb	[%l7 + 0x31],	%l6
	stw	%l4,	[%l7 + 0x54]
	edge16l	%g4,	%i3,	%g1
	mulscc	%o4,	%i6,	%i1
	movn	%icc,	%i4,	%o5
	and	%i5,	0x0B50,	%g6
	srax	%l3,	0x09,	%g3
	movrgz	%o2,	%i2,	%i7
	lduh	[%l7 + 0x10],	%l1
	addccc	%l0,	0x035C,	%l5
	fmovsneg	%icc,	%f10,	%f3
	fandnot1s	%f4,	%f8,	%f8
	sra	%o3,	%l2,	%o7
	fbul	%fcc2,	loop_3532
	ldsh	[%l7 + 0x10],	%g7
	orcc	%o0,	%g2,	%i0
	array32	%o6,	%o1,	%l6
loop_3532:
	movn	%icc,	%g5,	%l4
	ldsb	[%l7 + 0x64],	%i3
	orn	%g4,	%g1,	%i6
	sth	%i1,	[%l7 + 0x56]
	brz	%i4,	loop_3533
	fnor	%f12,	%f8,	%f2
	ldx	[%l7 + 0x78],	%o4
	fbg,a	%fcc3,	loop_3534
loop_3533:
	ld	[%l7 + 0x78],	%f4
	fmul8ulx16	%f0,	%f0,	%f14
	fxnor	%f0,	%f6,	%f12
loop_3534:
	bl,pn	%xcc,	loop_3535
	fcmpne32	%f10,	%f8,	%i5
	ldub	[%l7 + 0x6F],	%o5
	std	%f14,	[%l7 + 0x70]
loop_3535:
	brnz,a	%g6,	loop_3536
	ldd	[%l7 + 0x60],	%f12
	fpsub16s	%f5,	%f6,	%f8
	stx	%l3,	[%l7 + 0x30]
loop_3536:
	fmul8ulx16	%f14,	%f2,	%f10
	fmovdg	%icc,	%f11,	%f1
	bne	loop_3537
	fmovrdne	%o2,	%f2,	%f10
	tne	%xcc,	0x4
	fmovs	%f13,	%f10
loop_3537:
	ld	[%l7 + 0x38],	%f9
	sth	%i2,	[%l7 + 0x6C]
	edge8	%i7,	%g3,	%l1
	fcmpne32	%f12,	%f0,	%l5
	ldx	[%l7 + 0x20],	%l0
	movvc	%xcc,	%l2,	%o7
	and	%o3,	0x0EF9,	%o0
	movrgz	%g2,	0x148,	%g7
	bl	loop_3538
	nop
	setx loop_3539, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	tleu	%icc,	0x3
	ldsh	[%l7 + 0x20],	%o6
loop_3538:
	ldsh	[%l7 + 0x54],	%o1
loop_3539:
	fpsub32s	%f14,	%f13,	%f8
	call	loop_3540
	udiv	%l6,	0x0767,	%i0
	xnorcc	%g5,	0x0752,	%l4
	movn	%icc,	%i3,	%g4
loop_3540:
	fxnors	%f11,	%f11,	%f3
	movrgz	%i6,	%g1,	%i1
	ldx	[%l7 + 0x28],	%o4
	brlz	%i4,	loop_3541
	fzero	%f14
	srlx	%o5,	%i5,	%l3
	sth	%o2,	[%l7 + 0x66]
loop_3541:
	move	%icc,	%g6,	%i7
	subcc	%g3,	0x1316,	%i2
	sth	%l1,	[%l7 + 0x28]
	fsrc1s	%f11,	%f9
	fcmpgt32	%f8,	%f4,	%l5
	ldsh	[%l7 + 0x50],	%l0
	edge16n	%o7,	%o3,	%l2
	stx	%o0,	[%l7 + 0x40]
	edge32n	%g7,	%o6,	%o1
	fmovsle	%xcc,	%f3,	%f6
	fmovsne	%xcc,	%f1,	%f2
	fmovrsne	%g2,	%f13,	%f10
	ldsw	[%l7 + 0x0C],	%i0
	movvs	%icc,	%g5,	%l4
	bpos	%icc,	loop_3542
	stb	%i3,	[%l7 + 0x44]
	ba,a	%xcc,	loop_3543
	sra	%l6,	0x12,	%i6
loop_3542:
	and	%g4,	%i1,	%o4
	tvc	%icc,	0x5
loop_3543:
	ldub	[%l7 + 0x5E],	%g1
	ldd	[%l7 + 0x28],	%f8
	fpadd32	%f0,	%f12,	%f14
	sllx	%o5,	0x16,	%i4
	fbule	%fcc1,	loop_3544
	bneg	%xcc,	loop_3545
	stw	%l3,	[%l7 + 0x70]
	st	%f15,	[%l7 + 0x54]
loop_3544:
	fmovrdgz	%o2,	%f8,	%f12
loop_3545:
	stb	%i5,	[%l7 + 0x74]
	ldsb	[%l7 + 0x37],	%i7
	movgu	%icc,	%g6,	%g3
	sth	%l1,	[%l7 + 0x24]
	fmovsl	%icc,	%f0,	%f11
	smul	%i2,	%l0,	%l5
	movge	%xcc,	%o3,	%o7
	std	%f2,	[%l7 + 0x30]
	fzero	%f12
	tsubcc	%l2,	0x0236,	%g7
	fmovsleu	%icc,	%f2,	%f3
	bn,a,pn	%icc,	loop_3546
	bge,a,pn	%xcc,	loop_3547
	ldx	[%l7 + 0x38],	%o6
	andn	%o1,	0x1DF1,	%g2
loop_3546:
	stb	%i0,	[%l7 + 0x15]
loop_3547:
	fmovsle	%icc,	%f5,	%f12
	ldd	[%l7 + 0x18],	%f6
	fmovdvs	%icc,	%f10,	%f0
	movgu	%icc,	%o0,	%g5
	fmovrsne	%i3,	%f14,	%f4
	fmovdvc	%icc,	%f7,	%f8
	fmovsne	%icc,	%f8,	%f0
	ldsb	[%l7 + 0x47],	%l6
	array32	%l4,	%i6,	%g4
	movvs	%icc,	%o4,	%g1
	lduw	[%l7 + 0x44],	%o5
	fnands	%f3,	%f2,	%f10
	nop
	setx loop_3548, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	brz	%i4,	loop_3549
	edge32	%i1,	%l3,	%o2
	brgez,a	%i7,	loop_3550
loop_3548:
	fpsub32s	%f14,	%f4,	%f3
loop_3549:
	fornot1	%f6,	%f10,	%f8
	fmovse	%xcc,	%f4,	%f8
loop_3550:
	fmovrsne	%g6,	%f15,	%f11
	fmovrsgz	%i5,	%f0,	%f9
	ldsb	[%l7 + 0x3D],	%g3
	fmuld8sux16	%f14,	%f15,	%f8
	ldsb	[%l7 + 0x75],	%l1
	fone	%f0
	fmovsn	%icc,	%f5,	%f14
	movn	%icc,	%l0,	%l5
	brlez	%i2,	loop_3551
	fbl	%fcc0,	loop_3552
	fpsub32	%f0,	%f10,	%f12
	addccc	%o3,	0x01C9,	%l2
loop_3551:
	brgez,a	%g7,	loop_3553
loop_3552:
	sdivx	%o6,	0x17F8,	%o1
	lduh	[%l7 + 0x46],	%g2
	alignaddrl	%o7,	%o0,	%i0
loop_3553:
	fsrc2	%f10,	%f8
	umulcc	%i3,	0x017E,	%g5
	ldsb	[%l7 + 0x4B],	%l6
	ldsw	[%l7 + 0x68],	%i6
	ld	[%l7 + 0x18],	%f4
	ldd	[%l7 + 0x28],	%f14
	movrlez	%l4,	0x30A,	%g4
	fexpand	%f6,	%f2
	sra	%o4,	%o5,	%g1
	fcmpd	%fcc2,	%f4,	%f8
	st	%f0,	[%l7 + 0x50]
	move	%xcc,	%i4,	%l3
	fbn	%fcc1,	loop_3554
	tn	%icc,	0x6
	movrne	%i1,	%o2,	%g6
	fxors	%f12,	%f5,	%f7
loop_3554:
	stw	%i7,	[%l7 + 0x1C]
	fba,a	%fcc0,	loop_3555
	fmovsvs	%icc,	%f2,	%f15
	fmovsvc	%icc,	%f8,	%f13
	bl,a	loop_3556
loop_3555:
	fands	%f4,	%f13,	%f9
	ldx	[%l7 + 0x28],	%i5
	brgz,a	%g3,	loop_3557
loop_3556:
	sethi	0x133E,	%l0
	fmovrslez	%l5,	%f9,	%f10
	sth	%l1,	[%l7 + 0x64]
loop_3557:
	fmuld8ulx16	%f0,	%f2,	%f12
	nop
	setx loop_3558, %l0, %l1
	jmpl %l1, %i2
	fpack16	%f0,	%f10
	ble,a,pn	%xcc,	loop_3559
	fmovsge	%icc,	%f4,	%f12
loop_3558:
	movgu	%xcc,	%l2,	%g7
	lduh	[%l7 + 0x0C],	%o6
loop_3559:
	fmovrsgz	%o3,	%f5,	%f4
	fornot1s	%f11,	%f5,	%f2
	te	%icc,	0x6
	pdist	%f4,	%f0,	%f6
	stx	%g2,	[%l7 + 0x60]
	xnorcc	%o7,	0x18D5,	%o1
	std	%f6,	[%l7 + 0x70]
	fmovsleu	%xcc,	%f9,	%f11
	ldx	[%l7 + 0x38],	%o0
	fmovdg	%icc,	%f2,	%f3
	fmovrdlez	%i0,	%f6,	%f6
	edge8ln	%g5,	%i3,	%i6
	fandnot1s	%f6,	%f15,	%f14
	array16	%l4,	%g4,	%l6
	ldsb	[%l7 + 0x2B],	%o4
	st	%f15,	[%l7 + 0x78]
	ldx	[%l7 + 0x68],	%g1
	fcmpgt16	%f14,	%f0,	%i4
	umulcc	%l3,	%i1,	%o2
	tl	%xcc,	0x7
	std	%f4,	[%l7 + 0x38]
	addc	%o5,	%g6,	%i5
	st	%f14,	[%l7 + 0x30]
	bgu,pt	%xcc,	loop_3560
	sub	%g3,	0x0F4C,	%l0
	fcmped	%fcc0,	%f8,	%f10
	udiv	%l5,	0x0193,	%l1
loop_3560:
	tvs	%xcc,	0x3
	fmovdneg	%xcc,	%f14,	%f2
	brlez,a	%i7,	loop_3561
	ldsw	[%l7 + 0x38],	%i2
	nop
	setx loop_3562, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fnot1	%f10,	%f8
loop_3561:
	fmovdne	%icc,	%f9,	%f14
	ba,a	loop_3563
loop_3562:
	nop
	setx loop_3564, %l0, %l1
	jmpl %l1, %g7
	tge	%icc,	0x1
	edge32l	%o6,	%l2,	%g2
loop_3563:
	fandnot2s	%f14,	%f1,	%f5
loop_3564:
	fone	%f8
	ldsw	[%l7 + 0x60],	%o3
	edge8l	%o1,	%o7,	%i0
	sth	%g5,	[%l7 + 0x4E]
	ld	[%l7 + 0x6C],	%f12
	fnegd	%f12,	%f14
	brlez,a	%o0,	loop_3565
	tsubcc	%i3,	%l4,	%g4
	lduh	[%l7 + 0x60],	%i6
	srl	%l6,	0x09,	%o4
loop_3565:
	ldd	[%l7 + 0x60],	%f6
	stw	%g1,	[%l7 + 0x28]
	fmovsleu	%icc,	%f11,	%f11
	stx	%i4,	[%l7 + 0x38]
	lduw	[%l7 + 0x08],	%i1
	movvc	%icc,	%o2,	%o5
	sth	%g6,	[%l7 + 0x50]
	be,a	loop_3566
	lduh	[%l7 + 0x70],	%l3
	fabss	%f7,	%f2
	movl	%xcc,	%g3,	%l0
loop_3566:
	fexpand	%f11,	%f2
	lduh	[%l7 + 0x74],	%i5
	fmovdleu	%xcc,	%f0,	%f4
	lduw	[%l7 + 0x5C],	%l5
	nop
	setx loop_3567, %l0, %l1
	jmpl %l1, %l1
	fmovsge	%xcc,	%f3,	%f11
	tl	%icc,	0x2
	xor	%i7,	%i2,	%o6
loop_3567:
	ldd	[%l7 + 0x10],	%f10
	fmuld8ulx16	%f10,	%f1,	%f14
	fmovse	%icc,	%f9,	%f10
	fmovrdne	%l2,	%f0,	%f12
	ld	[%l7 + 0x70],	%f6
	fpackfix	%f0,	%f11
	edge32	%g7,	%o3,	%g2
	fornot1s	%f12,	%f4,	%f11
	addcc	%o7,	%o1,	%i0
	fmovsa	%icc,	%f14,	%f2
	add	%g5,	0x0EE1,	%o0
	fcmpes	%fcc3,	%f7,	%f10
	xor	%i3,	%l4,	%g4
	ldsb	[%l7 + 0x27],	%l6
	fsrc1s	%f11,	%f14
	sth	%o4,	[%l7 + 0x2E]
	ldd	[%l7 + 0x38],	%f6
	fmovsg	%icc,	%f1,	%f0
	lduh	[%l7 + 0x4E],	%i6
	sll	%i4,	0x00,	%g1
	fpsub32s	%f9,	%f8,	%f9
	lduw	[%l7 + 0x3C],	%o2
	lduh	[%l7 + 0x4C],	%i1
	fands	%f15,	%f8,	%f8
	addcc	%g6,	0x08A9,	%l3
	stb	%o5,	[%l7 + 0x55]
	edge16n	%l0,	%g3,	%i5
	stb	%l5,	[%l7 + 0x08]
	brlez,a	%i7,	loop_3568
	ldx	[%l7 + 0x28],	%l1
	fmovsgu	%icc,	%f10,	%f15
	fbu	%fcc0,	loop_3569
loop_3568:
	popc	%i2,	%l2
	fmovsneg	%xcc,	%f7,	%f4
	fbug,a	%fcc2,	loop_3570
loop_3569:
	ldsb	[%l7 + 0x79],	%o6
	ldx	[%l7 + 0x30],	%g7
	edge32ln	%o3,	%o7,	%o1
loop_3570:
	bvc,a	loop_3571
	ldsh	[%l7 + 0x3E],	%i0
	tge	%xcc,	0x0
	fbo	%fcc2,	loop_3572
loop_3571:
	stb	%g2,	[%l7 + 0x31]
	fmovsgu	%icc,	%f8,	%f4
	fmovdg	%icc,	%f15,	%f3
loop_3572:
	movg	%icc,	%g5,	%i3
	movcs	%icc,	%l4,	%g4
	fsrc2	%f6,	%f4
	tvc	%xcc,	0x3
	fmovsne	%icc,	%f2,	%f6
	fmovdpos	%xcc,	%f5,	%f13
	fbge,a	%fcc3,	loop_3573
	movn	%xcc,	%o0,	%o4
	stb	%i6,	[%l7 + 0x73]
	fand	%f12,	%f8,	%f2
loop_3573:
	fnot1s	%f14,	%f10
	fmovdcc	%icc,	%f6,	%f4
	ldd	[%l7 + 0x10],	%f4
	ldsb	[%l7 + 0x4B],	%i4
	stb	%g1,	[%l7 + 0x0F]
	lduh	[%l7 + 0x6E],	%l6
	orcc	%i1,	%o2,	%l3
	fsrc2s	%f14,	%f1
	fmul8ulx16	%f4,	%f4,	%f14
	movg	%icc,	%o5,	%l0
	sdiv	%g3,	0x00DE,	%g6
	fzeros	%f8
	fabss	%f8,	%f4
	lduw	[%l7 + 0x28],	%i5
	fnot1s	%f5,	%f15
	ldsb	[%l7 + 0x30],	%l5
	fcmpeq16	%f4,	%f10,	%l1
	std	%f12,	[%l7 + 0x70]
	sdivx	%i7,	0x054C,	%l2
	ld	[%l7 + 0x44],	%f1
	movrgz	%i2,	0x1B7,	%o6
	smul	%g7,	%o7,	%o3
	fnot2	%f8,	%f8
	st	%f3,	[%l7 + 0x3C]
	fcmpd	%fcc3,	%f10,	%f4
	bvc,pt	%xcc,	loop_3574
	nop
	setx loop_3575, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ba,pt	%icc,	loop_3576
	subcc	%i0,	0x0053,	%o1
loop_3574:
	nop
	setx loop_3577, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_3575:
	mulscc	%g2,	%g5,	%i3
loop_3576:
	ldd	[%l7 + 0x10],	%f10
	fcmpd	%fcc0,	%f4,	%f4
loop_3577:
	movge	%xcc,	%g4,	%l4
	fmul8sux16	%f10,	%f4,	%f6
	ldd	[%l7 + 0x58],	%f0
	ldx	[%l7 + 0x78],	%o0
	fcmpne16	%f10,	%f6,	%o4
	subccc	%i4,	%g1,	%l6
	edge16	%i6,	%i1,	%o2
	edge8l	%o5,	%l0,	%g3
	st	%f13,	[%l7 + 0x74]
	tpos	%xcc,	0x0
	fnors	%f10,	%f13,	%f6
	ldsw	[%l7 + 0x2C],	%l3
	fcmpgt32	%f14,	%f4,	%g6
	edge8l	%l5,	%l1,	%i5
	stw	%l2,	[%l7 + 0x48]
	fmul8x16	%f4,	%f8,	%f14
	std	%f4,	[%l7 + 0x40]
	bl,pt	%xcc,	loop_3578
	ld	[%l7 + 0x1C],	%f2
	movre	%i7,	%o6,	%i2
	nop
	setx loop_3579, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_3578:
	movcc	%icc,	%g7,	%o7
	faligndata	%f2,	%f6,	%f14
	lduh	[%l7 + 0x62],	%i0
loop_3579:
	tl	%xcc,	0x6
	fbue,a	%fcc1,	loop_3580
	fcmpgt32	%f2,	%f8,	%o3
	fones	%f8
	tcs	%xcc,	0x4
loop_3580:
	ldsb	[%l7 + 0x1A],	%o1
	fbule	%fcc0,	loop_3581
	fbuge,a	%fcc2,	loop_3582
	fnegs	%f9,	%f13
	brgez	%g5,	loop_3583
loop_3581:
	bleu,a	%icc,	loop_3584
loop_3582:
	fba	%fcc2,	loop_3585
	fmovrdgz	%g2,	%f12,	%f0
loop_3583:
	smulcc	%i3,	%g4,	%o0
loop_3584:
	fnot2	%f8,	%f4
loop_3585:
	fbuge	%fcc0,	loop_3586
	orncc	%o4,	%l4,	%g1
	sth	%i4,	[%l7 + 0x30]
	umulcc	%l6,	%i6,	%i1
loop_3586:
	sllx	%o5,	%l0,	%g3
	sth	%l3,	[%l7 + 0x76]
	sethi	0x1C7B,	%o2
	fbuge,a	%fcc0,	loop_3587
	fmuld8sux16	%f4,	%f14,	%f12
	fors	%f6,	%f2,	%f9
	ldub	[%l7 + 0x65],	%g6
loop_3587:
	stx	%l5,	[%l7 + 0x18]
	fmovsne	%xcc,	%f12,	%f0
	ldsw	[%l7 + 0x30],	%l1
	ble,a,pn	%xcc,	loop_3588
	add	%l2,	%i7,	%o6
	sth	%i5,	[%l7 + 0x26]
	udivx	%i2,	0x09AF,	%g7
loop_3588:
	fmovdcc	%xcc,	%f15,	%f3
	lduw	[%l7 + 0x50],	%i0
	bl,pn	%icc,	loop_3589
	edge16ln	%o3,	%o1,	%g5
	fbg,a	%fcc1,	loop_3590
	fmovdg	%xcc,	%f2,	%f2
loop_3589:
	ld	[%l7 + 0x44],	%f15
	fbue,a	%fcc2,	loop_3591
loop_3590:
	fble	%fcc1,	loop_3592
	ldsb	[%l7 + 0x6D],	%g2
	mulx	%o7,	0x19B7,	%i3
loop_3591:
	bleu,pt	%xcc,	loop_3593
loop_3592:
	edge8ln	%o0,	%g4,	%o4
	brnz,a	%g1,	loop_3594
	array16	%l4,	%l6,	%i4
loop_3593:
	ld	[%l7 + 0x2C],	%f15
	fone	%f12
loop_3594:
	fmovrdne	%i1,	%f6,	%f12
	lduw	[%l7 + 0x48],	%o5
	movrgez	%l0,	%g3,	%i6
	fmovdleu	%xcc,	%f0,	%f14
	fbn	%fcc0,	loop_3595
	fmovdpos	%icc,	%f9,	%f11
	fbe,a	%fcc2,	loop_3596
	ldd	[%l7 + 0x28],	%f8
loop_3595:
	fmovdleu	%icc,	%f13,	%f12
	st	%f2,	[%l7 + 0x60]
loop_3596:
	ldsb	[%l7 + 0x49],	%o2
	edge16ln	%l3,	%g6,	%l1
	fcmpeq32	%f14,	%f12,	%l2
	ldsw	[%l7 + 0x0C],	%i7
	fxnors	%f13,	%f3,	%f10
	bl,a,pn	%xcc,	loop_3597
	taddcctv	%l5,	0x01F6,	%o6
	ta	%xcc,	0x5
	ldub	[%l7 + 0x16],	%i5
loop_3597:
	movre	%i2,	%i0,	%g7
	andn	%o1,	0x1BAB,	%g5
	sra	%g2,	0x17,	%o3
	ldsb	[%l7 + 0x6A],	%o7
	for	%f0,	%f6,	%f12
	sll	%i3,	%g4,	%o0
	tcs	%xcc,	0x3
	fmovrse	%o4,	%f0,	%f11
	ldx	[%l7 + 0x58],	%g1
	fmovrslz	%l4,	%f8,	%f3
	fabss	%f3,	%f3
	sra	%l6,	%i1,	%o5
	stb	%l0,	[%l7 + 0x60]
	movrgez	%g3,	%i4,	%i6
	bn	loop_3598
	movg	%icc,	%l3,	%g6
	te	%icc,	0x3
	lduw	[%l7 + 0x48],	%o2
loop_3598:
	lduw	[%l7 + 0x48],	%l2
	fmovdle	%xcc,	%f4,	%f5
	edge32	%i7,	%l1,	%o6
	subccc	%l5,	%i5,	%i2
	fmovdn	%icc,	%f2,	%f12
	fone	%f14
	tsubcctv	%i0,	0x091A,	%g7
	srlx	%g5,	%o1,	%g2
	tl	%icc,	0x0
	edge16l	%o7,	%o3,	%g4
	fornot1	%f10,	%f10,	%f2
	ldsh	[%l7 + 0x6A],	%o0
	tn	%xcc,	0x5
	smulcc	%i3,	%o4,	%g1
	fbule,a	%fcc1,	loop_3599
	fpadd32s	%f5,	%f10,	%f11
	ldsw	[%l7 + 0x40],	%l6
	sdiv	%i1,	0x0A55,	%l4
loop_3599:
	movvc	%icc,	%o5,	%g3
	fble,a	%fcc3,	loop_3600
	fmovdg	%xcc,	%f4,	%f5
	std	%f12,	[%l7 + 0x30]
	movleu	%xcc,	%i4,	%i6
loop_3600:
	ba	%xcc,	loop_3601
	fmul8x16au	%f7,	%f5,	%f4
	fmovdge	%icc,	%f12,	%f8
	umulcc	%l0,	%g6,	%o2
loop_3601:
	sth	%l3,	[%l7 + 0x6E]
	fornot2s	%f3,	%f2,	%f15
	ldub	[%l7 + 0x71],	%i7
	fmovdne	%xcc,	%f5,	%f2
	movl	%xcc,	%l1,	%o6
	ldx	[%l7 + 0x10],	%l5
	sth	%l2,	[%l7 + 0x78]
	ldsh	[%l7 + 0x26],	%i2
	fnegs	%f8,	%f3
	addcc	%i0,	%g7,	%g5
	lduw	[%l7 + 0x28],	%i5
	bneg,a,pn	%icc,	loop_3602
	ta	%icc,	0x6
	fmovsn	%icc,	%f5,	%f15
	movgu	%icc,	%g2,	%o7
loop_3602:
	sll	%o3,	0x0A,	%g4
	alignaddrl	%o0,	%o1,	%o4
	lduh	[%l7 + 0x2E],	%g1
	srax	%i3,	%l6,	%i1
	ldsb	[%l7 + 0x58],	%o5
	fnot2	%f8,	%f4
	fbe	%fcc1,	loop_3603
	bge	%icc,	loop_3604
	movrlz	%l4,	%i4,	%g3
	taddcc	%i6,	0x0F89,	%l0
loop_3603:
	fandnot1	%f12,	%f2,	%f4
loop_3604:
	ldd	[%l7 + 0x58],	%f8
	sethi	0x13F6,	%g6
	fandnot1s	%f7,	%f8,	%f0
	udivcc	%o2,	0x0B40,	%l3
	andn	%i7,	0x175A,	%l1
	fmovrdgez	%l5,	%f10,	%f8
	ldsb	[%l7 + 0x28],	%l2
	ld	[%l7 + 0x48],	%f4
	popc	%o6,	%i0
	lduh	[%l7 + 0x60],	%i2
	fbue,a	%fcc2,	loop_3605
	xorcc	%g5,	%i5,	%g2
	movge	%xcc,	%o7,	%g7
	movvs	%icc,	%o3,	%g4
loop_3605:
	ldx	[%l7 + 0x48],	%o0
	fnand	%f12,	%f4,	%f12
	ldsw	[%l7 + 0x3C],	%o4
	fbge	%fcc2,	loop_3606
	nop
	setx loop_3607, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	st	%f11,	[%l7 + 0x2C]
	fnor	%f10,	%f14,	%f2
loop_3606:
	st	%f3,	[%l7 + 0x40]
loop_3607:
	movne	%xcc,	%o1,	%i3
	fbul	%fcc1,	loop_3608
	mulscc	%g1,	%l6,	%o5
	ldsh	[%l7 + 0x60],	%i1
	ldx	[%l7 + 0x68],	%l4
loop_3608:
	fcmpes	%fcc2,	%f10,	%f7
	sth	%g3,	[%l7 + 0x6C]
	movrlz	%i4,	0x23E,	%l0
	tgu	%xcc,	0x4
	fone	%f8
	ld	[%l7 + 0x08],	%f4
	edge32	%g6,	%o2,	%l3
	tsubcc	%i7,	%i6,	%l5
	ldub	[%l7 + 0x21],	%l1
	tneg	%xcc,	0x1
	ld	[%l7 + 0x58],	%f14
	lduh	[%l7 + 0x6A],	%o6
	fandnot2	%f4,	%f2,	%f4
	move	%icc,	%i0,	%i2
	brlz,a	%l2,	loop_3609
	array8	%g5,	%i5,	%o7
	movge	%icc,	%g7,	%g2
	movrlz	%o3,	%g4,	%o0
loop_3609:
	fzeros	%f14
	brlz,a	%o4,	loop_3610
	add	%o1,	0x1250,	%i3
	stw	%l6,	[%l7 + 0x74]
	orcc	%g1,	0x092E,	%o5
loop_3610:
	sdivx	%l4,	0x0982,	%i1
	ldx	[%l7 + 0x68],	%i4
	sdivcc	%g3,	0x076E,	%g6
	edge8l	%l0,	%o2,	%i7
	fnand	%f4,	%f8,	%f10
	movcs	%xcc,	%i6,	%l3
	ldub	[%l7 + 0x6D],	%l5
	ld	[%l7 + 0x28],	%f9
	ldd	[%l7 + 0x38],	%f2
	fmovrsne	%o6,	%f5,	%f0
	stb	%i0,	[%l7 + 0x48]
	alignaddrl	%i2,	%l2,	%l1
	edge16ln	%i5,	%o7,	%g5
	brlez,a	%g7,	loop_3611
	fmul8sux16	%f6,	%f2,	%f8
	fxnors	%f15,	%f7,	%f9
	bvs,pt	%icc,	loop_3612
loop_3611:
	xorcc	%o3,	0x1E2F,	%g4
	bvc,a,pn	%xcc,	loop_3613
	fmovdneg	%icc,	%f9,	%f6
loop_3612:
	addccc	%o0,	%o4,	%o1
	ldsh	[%l7 + 0x16],	%i3
loop_3613:
	fmovdleu	%icc,	%f5,	%f10
	ldsh	[%l7 + 0x34],	%l6
	fcmpne32	%f2,	%f4,	%g1
	andcc	%o5,	0x173B,	%g2
	st	%f13,	[%l7 + 0x20]
	movcs	%icc,	%l4,	%i4
	fbul	%fcc0,	loop_3614
	fornot1s	%f10,	%f0,	%f0
	fpadd32s	%f7,	%f2,	%f14
	ldsb	[%l7 + 0x7C],	%g3
loop_3614:
	bn,pt	%xcc,	loop_3615
	ldx	[%l7 + 0x58],	%i1
	lduh	[%l7 + 0x58],	%l0
	movvs	%xcc,	%g6,	%o2
loop_3615:
	ldsw	[%l7 + 0x2C],	%i7
	mova	%icc,	%i6,	%l5
	ldx	[%l7 + 0x10],	%l3
	stw	%i0,	[%l7 + 0x6C]
	movneg	%xcc,	%i2,	%l2
	fornot2s	%f1,	%f14,	%f5
	fmovrsgez	%o6,	%f4,	%f3
	fandnot1	%f14,	%f8,	%f0
	bshuffle	%f6,	%f14,	%f12
	movre	%l1,	0x1D3,	%i5
	fmovse	%icc,	%f0,	%f6
	fabsd	%f4,	%f10
	ldsw	[%l7 + 0x50],	%o7
	movg	%icc,	%g7,	%o3
	fmovda	%icc,	%f6,	%f9
	add	%g4,	0x16FA,	%o0
	fandnot1s	%f10,	%f4,	%f1
	fblg	%fcc1,	loop_3616
	movcc	%icc,	%g5,	%o4
	fmovsleu	%icc,	%f0,	%f1
	ld	[%l7 + 0x44],	%f12
loop_3616:
	lduh	[%l7 + 0x44],	%o1
	sdivcc	%l6,	0x11D9,	%g1
	fornot1	%f8,	%f4,	%f4
	ldsb	[%l7 + 0x0C],	%i3
	fmovsgu	%icc,	%f13,	%f4
	ldx	[%l7 + 0x08],	%g2
	stx	%o5,	[%l7 + 0x70]
	fmovdge	%xcc,	%f3,	%f6
	lduw	[%l7 + 0x58],	%i4
	fabss	%f8,	%f5
	std	%f0,	[%l7 + 0x20]
	subcc	%l4,	%g3,	%i1
	fnot2	%f8,	%f10
	ld	[%l7 + 0x78],	%f13
	brgz	%g6,	loop_3617
	fnands	%f13,	%f0,	%f0
	fmovde	%xcc,	%f11,	%f3
	bpos,pn	%xcc,	loop_3618
loop_3617:
	movrlez	%o2,	0x095,	%l0
	fmovrsne	%i7,	%f14,	%f4
	xorcc	%i6,	0x12F8,	%l3
loop_3618:
	ldub	[%l7 + 0x27],	%i0
	mova	%xcc,	%i2,	%l2
	smul	%l5,	0x00D5,	%o6
	movcs	%icc,	%l1,	%i5
	fzeros	%f0
	fmovdge	%icc,	%f11,	%f14
	fcmpd	%fcc0,	%f12,	%f2
	sllx	%o7,	%g7,	%o3
	fands	%f4,	%f1,	%f3
	bvs,pt	%icc,	loop_3619
	lduh	[%l7 + 0x14],	%o0
	brgez	%g4,	loop_3620
	stw	%g5,	[%l7 + 0x2C]
loop_3619:
	ldsw	[%l7 + 0x30],	%o4
	fmovscs	%icc,	%f11,	%f15
loop_3620:
	fble,a	%fcc0,	loop_3621
	tl	%xcc,	0x6
	xorcc	%l6,	%g1,	%i3
	lduw	[%l7 + 0x60],	%o1
loop_3621:
	fbge,a	%fcc0,	loop_3622
	lduw	[%l7 + 0x48],	%g2
	array8	%i4,	%o5,	%l4
	ldx	[%l7 + 0x10],	%g3
loop_3622:
	fbge,a	%fcc2,	loop_3623
	lduh	[%l7 + 0x2A],	%g6
	lduw	[%l7 + 0x20],	%o2
	fmovdneg	%icc,	%f1,	%f2
loop_3623:
	bn,a,pn	%xcc,	loop_3624
	fmovse	%xcc,	%f15,	%f6
	fmovsa	%icc,	%f3,	%f7
	ldd	[%l7 + 0x10],	%f6
loop_3624:
	fmul8ulx16	%f12,	%f8,	%f6
	fmovrdlez	%i1,	%f12,	%f8
	movpos	%xcc,	%l0,	%i6
	tvc	%xcc,	0x6
	ldsb	[%l7 + 0x08],	%l3
	xorcc	%i7,	%i0,	%l2
	or	%l5,	0x0693,	%o6
	srlx	%i2,	0x05,	%i5
	fmovscs	%icc,	%f8,	%f0
	ldub	[%l7 + 0x2E],	%l1
	ldd	[%l7 + 0x40],	%f6
	std	%f12,	[%l7 + 0x78]
	bvc,a	loop_3625
	fblg,a	%fcc2,	loop_3626
	or	%g7,	0x026E,	%o3
	bg,a	loop_3627
loop_3625:
	fcmpes	%fcc0,	%f7,	%f8
loop_3626:
	andn	%o0,	0x0D24,	%o7
	fmovsa	%xcc,	%f13,	%f6
loop_3627:
	stx	%g5,	[%l7 + 0x30]
	fble	%fcc3,	loop_3628
	stw	%g4,	[%l7 + 0x2C]
	tle	%xcc,	0x7
	fmovdle	%xcc,	%f12,	%f13
loop_3628:
	ldsw	[%l7 + 0x38],	%l6
	std	%f14,	[%l7 + 0x20]
	edge16n	%o4,	%i3,	%o1
	ldx	[%l7 + 0x40],	%g1
	fzeros	%f0
	ldub	[%l7 + 0x6E],	%g2
	udivcc	%i4,	0x1B59,	%l4
	fmovdneg	%icc,	%f6,	%f11
	fexpand	%f2,	%f4
	fmovrsgz	%g3,	%f8,	%f13
	udivx	%o5,	0x1618,	%o2
	fabsd	%f6,	%f14
	ldx	[%l7 + 0x60],	%g6
	fornot1	%f4,	%f6,	%f12
	edge32	%l0,	%i1,	%i6
	edge8	%i7,	%l3,	%l2
	brlz,a	%i0,	loop_3629
	te	%icc,	0x0
	edge8n	%l5,	%o6,	%i5
	fmovsgu	%xcc,	%f13,	%f3
loop_3629:
	fbo	%fcc3,	loop_3630
	ldsh	[%l7 + 0x26],	%i2
	fmovs	%f3,	%f5
	lduh	[%l7 + 0x3C],	%l1
loop_3630:
	bpos	%xcc,	loop_3631
	tleu	%xcc,	0x6
	ldx	[%l7 + 0x60],	%o3
	ldd	[%l7 + 0x10],	%f2
loop_3631:
	movcs	%icc,	%g7,	%o7
	ldub	[%l7 + 0x5D],	%o0
	fnegd	%f10,	%f14
	st	%f14,	[%l7 + 0x68]
	fcmpne16	%f6,	%f12,	%g4
	te	%xcc,	0x6
	srax	%g5,	%l6,	%i3
	fbo	%fcc0,	loop_3632
	stb	%o1,	[%l7 + 0x2E]
	tsubcc	%o4,	%g1,	%i4
	ldsh	[%l7 + 0x50],	%l4
loop_3632:
	sth	%g2,	[%l7 + 0x0E]
	tn	%icc,	0x3
	fcmpeq32	%f0,	%f10,	%g3
	std	%f14,	[%l7 + 0x78]
	subcc	%o2,	%o5,	%g6
	fbu,a	%fcc2,	loop_3633
	alignaddrl	%i1,	%i6,	%l0
	ldd	[%l7 + 0x30],	%f2
	fmovs	%f5,	%f15
loop_3633:
	udivx	%l3,	0x02ED,	%i7
	fandnot2	%f6,	%f14,	%f8
	stx	%l2,	[%l7 + 0x08]
	fcmpeq16	%f14,	%f4,	%l5
	ldx	[%l7 + 0x08],	%i0
	pdist	%f0,	%f12,	%f8
	sll	%o6,	%i2,	%i5
	fpack32	%f2,	%f8,	%f0
	lduh	[%l7 + 0x36],	%l1
	subcc	%o3,	%o7,	%g7
	movn	%icc,	%g4,	%g5
	fmovsg	%icc,	%f9,	%f4
	fcmped	%fcc0,	%f4,	%f4
	fcmpgt16	%f4,	%f8,	%l6
	fornot2	%f12,	%f6,	%f2
	add	%i3,	0x16CE,	%o1
	fmovrde	%o4,	%f4,	%f14
	taddcc	%g1,	%i4,	%l4
	fmovsvc	%xcc,	%f11,	%f9
	fcmps	%fcc3,	%f1,	%f7
	or	%o0,	0x1681,	%g3
	or	%g2,	%o5,	%g6
	ldsh	[%l7 + 0x5C],	%o2
	st	%f2,	[%l7 + 0x78]
	stb	%i6,	[%l7 + 0x77]
	bpos,a,pn	%icc,	loop_3634
	lduh	[%l7 + 0x4A],	%l0
	std	%f10,	[%l7 + 0x30]
	fbug	%fcc3,	loop_3635
loop_3634:
	fmovsn	%icc,	%f12,	%f1
	fbg	%fcc2,	loop_3636
	fmovd	%f4,	%f4
loop_3635:
	fmovsge	%xcc,	%f2,	%f0
	ba,pt	%xcc,	loop_3637
loop_3636:
	movneg	%xcc,	%l3,	%i1
	bcc	%xcc,	loop_3638
	movleu	%icc,	%l2,	%l5
loop_3637:
	te	%icc,	0x2
	ldx	[%l7 + 0x50],	%i0
loop_3638:
	fcmpgt32	%f14,	%f0,	%i7
	stb	%o6,	[%l7 + 0x57]
	fbge,a	%fcc0,	loop_3639
	movrgez	%i5,	0x232,	%i2
	tcs	%xcc,	0x6
	fnegs	%f2,	%f10
loop_3639:
	fcmple16	%f14,	%f14,	%l1
	brgz,a	%o7,	loop_3640
	fnegd	%f14,	%f14
	fzero	%f0
	xor	%g7,	0x1BA0,	%g4
loop_3640:
	fmovrslez	%g5,	%f10,	%f12
	bcc,pt	%xcc,	loop_3641
	ld	[%l7 + 0x74],	%f0
	std	%f0,	[%l7 + 0x08]
	fandnot2s	%f6,	%f0,	%f7
loop_3641:
	sdivx	%o3,	0x01CD,	%i3
	addc	%o1,	%l6,	%o4
	std	%f12,	[%l7 + 0x18]
	lduh	[%l7 + 0x3A],	%i4
	andn	%g1,	%o0,	%g3
	fornot1	%f12,	%f14,	%f14
	subcc	%g2,	%l4,	%g6
	fmuld8sux16	%f5,	%f3,	%f14
	smul	%o5,	%o2,	%i6
	be,pt	%icc,	loop_3642
	lduw	[%l7 + 0x54],	%l3
	stw	%i1,	[%l7 + 0x08]
	movn	%xcc,	%l0,	%l2
loop_3642:
	fornot2s	%f7,	%f3,	%f0
	ld	[%l7 + 0x74],	%f2
	bvs,a,pn	%icc,	loop_3643
	ld	[%l7 + 0x38],	%f8
	fnand	%f6,	%f8,	%f12
	smul	%l5,	%i7,	%o6
loop_3643:
	fmovrdlz	%i5,	%f8,	%f0
	ldsb	[%l7 + 0x1E],	%i0
	ldsb	[%l7 + 0x16],	%i2
	fbn,a	%fcc3,	loop_3644
	fcmpne32	%f2,	%f4,	%o7
	ldx	[%l7 + 0x58],	%l1
	fbuge,a	%fcc0,	loop_3645
loop_3644:
	stw	%g4,	[%l7 + 0x50]
	stb	%g5,	[%l7 + 0x66]
	st	%f11,	[%l7 + 0x4C]
loop_3645:
	std	%f14,	[%l7 + 0x40]
	fabsd	%f0,	%f10
	sth	%o3,	[%l7 + 0x3A]
	lduh	[%l7 + 0x22],	%g7
	std	%f6,	[%l7 + 0x70]
	fbne,a	%fcc2,	loop_3646
	fmovse	%xcc,	%f9,	%f14
	ld	[%l7 + 0x10],	%f10
	fmovdcs	%icc,	%f8,	%f5
loop_3646:
	fmovdge	%xcc,	%f0,	%f12
	ldx	[%l7 + 0x68],	%i3
	tvs	%xcc,	0x5
	fmovrdne	%o1,	%f8,	%f8
	srlx	%l6,	0x0F,	%i4
	movcc	%xcc,	%o4,	%g1
	ble,pt	%icc,	loop_3647
	umul	%g3,	0x0687,	%g2
	fbu,a	%fcc1,	loop_3648
	lduw	[%l7 + 0x08],	%o0
loop_3647:
	ba,pt	%icc,	loop_3649
	fbne,a	%fcc1,	loop_3650
loop_3648:
	movpos	%icc,	%g6,	%o5
	subccc	%o2,	0x05F6,	%i6
loop_3649:
	bshuffle	%f6,	%f12,	%f14
loop_3650:
	ldx	[%l7 + 0x78],	%l3
	fnegd	%f8,	%f10
	lduh	[%l7 + 0x72],	%i1
	fmovsgu	%xcc,	%f12,	%f12
	stb	%l0,	[%l7 + 0x2F]
	fcmpeq16	%f10,	%f10,	%l2
	std	%f12,	[%l7 + 0x68]
	fmul8x16au	%f6,	%f7,	%f10
	lduw	[%l7 + 0x08],	%l4
	std	%f10,	[%l7 + 0x28]
	movn	%xcc,	%i7,	%o6
	movleu	%xcc,	%i5,	%l5
	stw	%i0,	[%l7 + 0x14]
	st	%f4,	[%l7 + 0x54]
	bge,a,pn	%icc,	loop_3651
	tvs	%xcc,	0x1
	udivcc	%i2,	0x00D7,	%o7
	tcs	%icc,	0x4
loop_3651:
	movleu	%icc,	%l1,	%g5
	tne	%xcc,	0x0
	fmovdleu	%icc,	%f10,	%f5
	ldub	[%l7 + 0x2D],	%o3
	fmovdn	%xcc,	%f4,	%f8
	stb	%g7,	[%l7 + 0x15]
	sub	%i3,	0x068B,	%g4
	fbne,a	%fcc2,	loop_3652
	fmovdl	%xcc,	%f4,	%f5
	tle	%icc,	0x6
	lduh	[%l7 + 0x66],	%o1
loop_3652:
	fsrc2s	%f0,	%f9
	edge32l	%l6,	%o4,	%i4
	bcc,pt	%xcc,	loop_3653
	tvs	%xcc,	0x0
	movneg	%icc,	%g3,	%g1
	stx	%g2,	[%l7 + 0x28]
loop_3653:
	lduw	[%l7 + 0x64],	%g6
	fmovdl	%xcc,	%f2,	%f1
	fmovdpos	%icc,	%f0,	%f15
	fnot1s	%f14,	%f5
	stx	%o5,	[%l7 + 0x08]
	or	%o0,	0x0541,	%i6
	add	%o2,	0x00CD,	%l3
	movvc	%xcc,	%l0,	%i1
	mova	%icc,	%l4,	%l2
	fnot2s	%f1,	%f2
	fmuld8sux16	%f5,	%f1,	%f6
	tcc	%icc,	0x4
	fmuld8ulx16	%f10,	%f14,	%f14
	taddcctv	%i7,	%o6,	%i5
	bg,pt	%icc,	loop_3654
	te	%icc,	0x0
	bge,a	loop_3655
	alignaddr	%l5,	%i0,	%i2
loop_3654:
	ld	[%l7 + 0x40],	%f10
	alignaddr	%l1,	%o7,	%g5
loop_3655:
	ldx	[%l7 + 0x28],	%o3
	std	%f4,	[%l7 + 0x38]
	sdivx	%g7,	0x1AE8,	%g4
	ldd	[%l7 + 0x18],	%f10
	udiv	%o1,	0x1CFF,	%l6
	te	%xcc,	0x1
	fpmerge	%f5,	%f2,	%f2
	lduh	[%l7 + 0x4E],	%o4
	movleu	%xcc,	%i4,	%i3
	ldx	[%l7 + 0x10],	%g3
	ldd	[%l7 + 0x68],	%f8
	xnor	%g1,	%g2,	%g6
	stb	%o0,	[%l7 + 0x58]
	ldub	[%l7 + 0x64],	%o5
	ldub	[%l7 + 0x7A],	%i6
	fbuge	%fcc2,	loop_3656
	fmovsg	%icc,	%f12,	%f9
	bge	%xcc,	loop_3657
	taddcctv	%l3,	%o2,	%l0
loop_3656:
	ldub	[%l7 + 0x5E],	%i1
	tleu	%xcc,	0x6
loop_3657:
	ta	%xcc,	0x1
	fbge,a	%fcc3,	loop_3658
	ldx	[%l7 + 0x18],	%l2
	sth	%l4,	[%l7 + 0x48]
	fnor	%f10,	%f10,	%f2
loop_3658:
	ldsb	[%l7 + 0x6D],	%o6
	movpos	%xcc,	%i5,	%i7
	bcc,a	loop_3659
	move	%xcc,	%i0,	%l5
	fbne,a	%fcc2,	loop_3660
	std	%f8,	[%l7 + 0x58]
loop_3659:
	srl	%i2,	0x0C,	%o7
	fmovsn	%xcc,	%f7,	%f13
loop_3660:
	fmovsvc	%xcc,	%f5,	%f4
	addc	%l1,	%g5,	%o3
	edge32n	%g4,	%g7,	%o1
	std	%f12,	[%l7 + 0x30]
	fnors	%f9,	%f1,	%f12
	stw	%l6,	[%l7 + 0x10]
	fmovrdgez	%i4,	%f14,	%f4
	taddcc	%o4,	%g3,	%i3
	call	loop_3661
	movcc	%xcc,	%g1,	%g6
	be	loop_3662
	fmovrslz	%o0,	%f0,	%f13
loop_3661:
	st	%f11,	[%l7 + 0x0C]
	tl	%icc,	0x3
loop_3662:
	std	%f10,	[%l7 + 0x08]
	fmuld8ulx16	%f6,	%f11,	%f14
	ldsb	[%l7 + 0x0D],	%o5
	stb	%g2,	[%l7 + 0x36]
	sra	%l3,	0x15,	%i6
	lduh	[%l7 + 0x22],	%l0
	tvs	%icc,	0x6
	fandnot1	%f0,	%f6,	%f2
	fmovdgu	%icc,	%f14,	%f9
	ldsh	[%l7 + 0x60],	%i1
	movneg	%xcc,	%l2,	%l4
	ldd	[%l7 + 0x50],	%f4
	add	%o6,	%o2,	%i7
	ldub	[%l7 + 0x16],	%i5
	ld	[%l7 + 0x38],	%f2
	fmul8x16	%f1,	%f0,	%f10
	movle	%icc,	%i0,	%l5
	st	%f11,	[%l7 + 0x3C]
	smulcc	%i2,	%l1,	%o7
	fexpand	%f14,	%f12
	fbuge	%fcc2,	loop_3663
	smul	%o3,	%g5,	%g7
	sth	%g4,	[%l7 + 0x62]
	bge	%xcc,	loop_3664
loop_3663:
	tcc	%xcc,	0x4
	st	%f1,	[%l7 + 0x44]
	fandnot1s	%f12,	%f5,	%f2
loop_3664:
	fbl,a	%fcc0,	loop_3665
	fnand	%f12,	%f10,	%f8
	ldd	[%l7 + 0x10],	%f8
	fmovsvs	%icc,	%f3,	%f15
loop_3665:
	ldx	[%l7 + 0x20],	%l6
	bneg,pt	%icc,	loop_3666
	lduh	[%l7 + 0x36],	%i4
	fone	%f0
	stw	%o1,	[%l7 + 0x6C]
loop_3666:
	udiv	%o4,	0x07F9,	%i3
	fpadd32s	%f10,	%f8,	%f4
	ldsw	[%l7 + 0x6C],	%g3
	stb	%g6,	[%l7 + 0x77]
	fmovspos	%xcc,	%f12,	%f12
	ldsh	[%l7 + 0x28],	%o0
	st	%f5,	[%l7 + 0x2C]
	or	%o5,	0x1184,	%g2
	edge32n	%l3,	%i6,	%g1
	fmovsge	%icc,	%f3,	%f1
	bvc	%icc,	loop_3667
	edge16	%i1,	%l0,	%l4
	tne	%icc,	0x4
	tvc	%icc,	0x3
loop_3667:
	fsrc2	%f10,	%f12
	movleu	%xcc,	%l2,	%o6
	edge8	%i7,	%i5,	%i0
	stx	%l5,	[%l7 + 0x58]
	stx	%i2,	[%l7 + 0x50]
	ld	[%l7 + 0x38],	%f10
	fones	%f9
	movcs	%xcc,	%l1,	%o7
	srax	%o3,	%o2,	%g5
	movl	%icc,	%g7,	%g4
	ldub	[%l7 + 0x2A],	%l6
	mulx	%i4,	%o1,	%i3
	stb	%g3,	[%l7 + 0x3E]
	fnegd	%f10,	%f14
	fmovsvc	%icc,	%f9,	%f13
	ldsh	[%l7 + 0x1C],	%g6
	movvs	%icc,	%o4,	%o0
	ldsw	[%l7 + 0x4C],	%o5
	srlx	%g2,	%l3,	%g1
	stx	%i1,	[%l7 + 0x38]
	fmovsge	%xcc,	%f0,	%f5
	tcc	%xcc,	0x6
	stx	%l0,	[%l7 + 0x70]
	bvs,a,pn	%xcc,	loop_3668
	st	%f3,	[%l7 + 0x10]
	fbne,a	%fcc1,	loop_3669
	st	%f0,	[%l7 + 0x78]
loop_3668:
	fcmple16	%f10,	%f8,	%l4
	ldsb	[%l7 + 0x48],	%i6
loop_3669:
	fmul8sux16	%f4,	%f2,	%f8
	nop
	setx loop_3670, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	movleu	%xcc,	%o6,	%l2
	udivx	%i7,	0x1357,	%i5
	fmul8x16	%f4,	%f10,	%f6
loop_3670:
	fnegs	%f5,	%f0
	brlz,a	%l5,	loop_3671
	movrne	%i2,	%i0,	%l1
	fpackfix	%f4,	%f3
	fbu,a	%fcc2,	loop_3672
loop_3671:
	fmovrdgz	%o7,	%f12,	%f4
	nop
	setx loop_3673, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldx	[%l7 + 0x50],	%o2
loop_3672:
	movre	%g5,	%o3,	%g4
	stx	%l6,	[%l7 + 0x08]
loop_3673:
	fornot2s	%f7,	%f7,	%f1
	ldub	[%l7 + 0x16],	%i4
	fandnot1	%f8,	%f6,	%f6
	fmovrde	%g7,	%f10,	%f10
	lduh	[%l7 + 0x0A],	%o1
	ldsh	[%l7 + 0x76],	%i3
	ldsb	[%l7 + 0x7F],	%g3
	fmovs	%f9,	%f7
	fbue,a	%fcc1,	loop_3674
	fbo,a	%fcc3,	loop_3675
	bleu,a	loop_3676
	ld	[%l7 + 0x4C],	%f13
loop_3674:
	fmuld8ulx16	%f1,	%f14,	%f4
loop_3675:
	fmovrsgez	%o4,	%f15,	%f10
loop_3676:
	fbg,a	%fcc1,	loop_3677
	sdivx	%o0,	0x1351,	%g6
	sth	%g2,	[%l7 + 0x72]
	lduw	[%l7 + 0x14],	%l3
loop_3677:
	fbne	%fcc2,	loop_3678
	tneg	%xcc,	0x7
	fcmpd	%fcc0,	%f14,	%f10
	mulscc	%g1,	0x1C9A,	%i1
loop_3678:
	fsrc2	%f8,	%f12
	ldx	[%l7 + 0x68],	%o5
	fone	%f8
	bpos	%icc,	loop_3679
	ldd	[%l7 + 0x18],	%f2
	pdist	%f2,	%f14,	%f0
	array8	%l4,	%i6,	%l0
loop_3679:
	edge8l	%l2,	%o6,	%i5
	udivcc	%i7,	0x006E,	%l5
	tneg	%icc,	0x0
	sdiv	%i0,	0x1A09,	%l1
	tgu	%icc,	0x6
	fmovdn	%icc,	%f1,	%f8
	brgz	%o7,	loop_3680
	fbl,a	%fcc2,	loop_3681
	fnegd	%f4,	%f12
	fmovda	%icc,	%f14,	%f14
loop_3680:
	srax	%i2,	%g5,	%o2
loop_3681:
	bne	%xcc,	loop_3682
	edge8ln	%o3,	%g4,	%i4
	nop
	setx loop_3683, %l0, %l1
	jmpl %l1, %l6
	ldd	[%l7 + 0x28],	%f2
loop_3682:
	brz,a	%o1,	loop_3684
	bl,a	%xcc,	loop_3685
loop_3683:
	fbug,a	%fcc2,	loop_3686
	tg	%icc,	0x4
loop_3684:
	fsrc2s	%f9,	%f13
loop_3685:
	brz	%i3,	loop_3687
loop_3686:
	fpsub16s	%f4,	%f5,	%f1
	taddcc	%g7,	0x154C,	%o4
	stx	%g3,	[%l7 + 0x60]
loop_3687:
	edge32l	%g6,	%g2,	%o0
	tn	%xcc,	0x2
	fbe,a	%fcc3,	loop_3688
	fands	%f7,	%f5,	%f10
	stx	%l3,	[%l7 + 0x28]
	std	%f6,	[%l7 + 0x40]
loop_3688:
	tne	%xcc,	0x5
	array8	%g1,	%o5,	%l4
	taddcctv	%i6,	%l0,	%i1
	ldsb	[%l7 + 0x12],	%l2
	fnor	%f14,	%f14,	%f6
	ldsw	[%l7 + 0x30],	%o6
	fpadd32s	%f12,	%f3,	%f5
	umul	%i7,	%l5,	%i5
	stw	%i0,	[%l7 + 0x7C]
	stw	%l1,	[%l7 + 0x08]
	bn	loop_3689
	ldx	[%l7 + 0x68],	%o7
	fornot2	%f14,	%f2,	%f0
	pdist	%f6,	%f4,	%f12
loop_3689:
	ldsh	[%l7 + 0x44],	%i2
	stb	%g5,	[%l7 + 0x1D]
	tg	%xcc,	0x7
	fmovrslz	%o3,	%f3,	%f4
	bvc,a	%icc,	loop_3690
	fbul,a	%fcc2,	loop_3691
	fbge,a	%fcc0,	loop_3692
	fmovdvs	%icc,	%f5,	%f3
loop_3690:
	faligndata	%f10,	%f10,	%f12
loop_3691:
	sth	%g4,	[%l7 + 0x74]
loop_3692:
	ldx	[%l7 + 0x18],	%i4
	orcc	%o2,	%l6,	%o1
	tgu	%xcc,	0x1
	ld	[%l7 + 0x54],	%f14
	sdivcc	%i3,	0x17BD,	%g7
	tl	%icc,	0x3
	edge32	%o4,	%g6,	%g2
	smul	%o0,	0x18FB,	%g3
	fbn	%fcc1,	loop_3693
	bcs,a	loop_3694
	std	%f6,	[%l7 + 0x10]
	movg	%xcc,	%g1,	%l3
loop_3693:
	bge	loop_3695
loop_3694:
	ldx	[%l7 + 0x38],	%l4
	bn,a,pt	%icc,	loop_3696
	mova	%icc,	%o5,	%i6
loop_3695:
	ld	[%l7 + 0x2C],	%f12
	movrne	%l0,	%l2,	%o6
loop_3696:
	movleu	%xcc,	%i7,	%l5
	fble	%fcc1,	loop_3697
	fbl	%fcc0,	loop_3698
	fnot1s	%f3,	%f5
	fmovrde	%i5,	%f2,	%f4
loop_3697:
	edge16l	%i0,	%i1,	%o7
loop_3698:
	fxor	%f12,	%f4,	%f2
	std	%f8,	[%l7 + 0x28]
	xorcc	%i2,	0x17C8,	%g5
	ldsw	[%l7 + 0x34],	%o3
	fexpand	%f14,	%f10
	ldub	[%l7 + 0x4E],	%g4
	fmovspos	%xcc,	%f4,	%f3
	lduh	[%l7 + 0x68],	%l1
	movre	%i4,	0x24C,	%o2
	stb	%o1,	[%l7 + 0x33]
	movre	%i3,	0x05C,	%l6
	stx	%o4,	[%l7 + 0x30]
	movpos	%xcc,	%g6,	%g2
	fblg	%fcc2,	loop_3699
	edge8n	%o0,	%g7,	%g1
	sth	%l3,	[%l7 + 0x1C]
	stb	%g3,	[%l7 + 0x26]
loop_3699:
	fmovscc	%icc,	%f13,	%f5
	udivcc	%o5,	0x0EEE,	%l4
	stw	%l0,	[%l7 + 0x74]
	fmovrslz	%l2,	%f7,	%f6
	ldsh	[%l7 + 0x7C],	%o6
	stb	%i7,	[%l7 + 0x6E]
	subccc	%l5,	%i6,	%i5
	addc	%i0,	%i1,	%o7
	ldub	[%l7 + 0x73],	%i2
	fxors	%f5,	%f13,	%f3
	fmovrdne	%o3,	%f6,	%f2
	ldd	[%l7 + 0x38],	%f8
	fmovrsne	%g5,	%f1,	%f13
	fxors	%f7,	%f0,	%f13
	fbul,a	%fcc0,	loop_3700
	fnands	%f12,	%f11,	%f8
	sth	%l1,	[%l7 + 0x54]
	fmovde	%xcc,	%f7,	%f2
loop_3700:
	fmovsvc	%xcc,	%f10,	%f11
	add	%i4,	%g4,	%o2
	ldsb	[%l7 + 0x7E],	%i3
	fcmpgt16	%f12,	%f14,	%l6
	bg	loop_3701
	edge8l	%o1,	%o4,	%g2
	ldd	[%l7 + 0x38],	%f14
	tle	%xcc,	0x5
loop_3701:
	brgez,a	%o0,	loop_3702
	ldsw	[%l7 + 0x3C],	%g7
	fand	%f8,	%f0,	%f14
	movcs	%icc,	%g6,	%l3
loop_3702:
	fornot1s	%f4,	%f7,	%f0
	movre	%g3,	0x3BF,	%g1
	fnegs	%f13,	%f14
	movleu	%icc,	%o5,	%l0
	stb	%l2,	[%l7 + 0x16]
	sth	%l4,	[%l7 + 0x26]
	fmovrde	%i7,	%f6,	%f14
	fornot2	%f2,	%f8,	%f2
	ba,pn	%icc,	loop_3703
	fmovdgu	%icc,	%f1,	%f1
	fnegs	%f4,	%f9
	andn	%l5,	%i6,	%i5
loop_3703:
	std	%f14,	[%l7 + 0x08]
	fsrc1	%f6,	%f14
	ldsb	[%l7 + 0x09],	%o6
	ldx	[%l7 + 0x28],	%i1
	bpos	loop_3704
	fmovsne	%xcc,	%f8,	%f11
	fmul8x16al	%f2,	%f5,	%f0
	fpadd16	%f12,	%f8,	%f6
loop_3704:
	brnz	%o7,	loop_3705
	fornot1	%f8,	%f4,	%f4
	ldx	[%l7 + 0x48],	%i0
	fandnot2s	%f6,	%f10,	%f14
loop_3705:
	movg	%icc,	%o3,	%i2
	movrlez	%l1,	0x06E,	%g5
	lduh	[%l7 + 0x3A],	%g4
	addccc	%o2,	0x0538,	%i3
	fmul8x16au	%f13,	%f1,	%f0
	stb	%i4,	[%l7 + 0x2E]
	fzero	%f4
	fmovsge	%xcc,	%f11,	%f7
	sethi	0x063F,	%l6
	movvs	%icc,	%o4,	%o1
	fpsub16s	%f4,	%f12,	%f12
	fbuge,a	%fcc2,	loop_3706
	ba,a	%xcc,	loop_3707
	fabss	%f2,	%f15
	movcc	%xcc,	%o0,	%g2
loop_3706:
	fbl	%fcc2,	loop_3708
loop_3707:
	fmovrse	%g7,	%f8,	%f3
	fzeros	%f2
	ld	[%l7 + 0x3C],	%f11
loop_3708:
	sth	%l3,	[%l7 + 0x40]
	faligndata	%f10,	%f6,	%f0
	bcs,pn	%xcc,	loop_3709
	ldsb	[%l7 + 0x4D],	%g3
	lduw	[%l7 + 0x58],	%g6
	fmovsneg	%icc,	%f5,	%f9
loop_3709:
	movg	%xcc,	%o5,	%g1
	fbul	%fcc1,	loop_3710
	fmovrdne	%l0,	%f0,	%f0
	ldsw	[%l7 + 0x68],	%l4
	fcmps	%fcc3,	%f7,	%f3
loop_3710:
	bg,a,pn	%icc,	loop_3711
	ta	%xcc,	0x3
	fcmpeq32	%f6,	%f4,	%l2
	ld	[%l7 + 0x44],	%f5
loop_3711:
	array16	%i7,	%l5,	%i6
	ldx	[%l7 + 0x50],	%i5
	edge16ln	%o6,	%o7,	%i1
	pdist	%f14,	%f14,	%f6
	ldsb	[%l7 + 0x4F],	%o3
	fcmpne32	%f6,	%f2,	%i2
	fmuld8ulx16	%f5,	%f8,	%f14
	movrgez	%l1,	0x088,	%i0
	movvc	%icc,	%g4,	%g5
	st	%f15,	[%l7 + 0x30]
	bpos,a,pt	%icc,	loop_3712
	ldd	[%l7 + 0x08],	%f14
	fmovdle	%icc,	%f15,	%f5
	brnz,a	%i3,	loop_3713
loop_3712:
	fmovrdlez	%o2,	%f2,	%f0
	bgu,a	loop_3714
	sth	%l6,	[%l7 + 0x14]
loop_3713:
	movn	%icc,	%i4,	%o1
	ldsb	[%l7 + 0x5D],	%o4
loop_3714:
	ta	%xcc,	0x7
	fnot2s	%f15,	%f4
	ld	[%l7 + 0x3C],	%f14
	ldsb	[%l7 + 0x40],	%o0
	fmul8sux16	%f8,	%f2,	%f14
	ta	%xcc,	0x3
	ldub	[%l7 + 0x61],	%g7
	faligndata	%f0,	%f8,	%f14
	ldsw	[%l7 + 0x08],	%g2
	fmovsvs	%icc,	%f6,	%f3
	alignaddr	%l3,	%g6,	%o5
	std	%f14,	[%l7 + 0x48]
	fzeros	%f10
	fone	%f14
	fba,a	%fcc2,	loop_3715
	movleu	%xcc,	%g3,	%l0
	bcs	loop_3716
	brnz,a	%l4,	loop_3717
loop_3715:
	subc	%g1,	0x0F42,	%l2
	ldd	[%l7 + 0x70],	%f12
loop_3716:
	fzeros	%f2
loop_3717:
	smulcc	%i7,	%i6,	%i5
	stx	%l5,	[%l7 + 0x30]
	smul	%o6,	%o7,	%o3
	ldsw	[%l7 + 0x28],	%i1
	addccc	%i2,	0x1038,	%i0
	fmovdn	%icc,	%f9,	%f7
	ldx	[%l7 + 0x40],	%l1
	sub	%g5,	0x0F6F,	%i3
	lduh	[%l7 + 0x12],	%o2
	fmovdleu	%icc,	%f11,	%f6
	tge	%xcc,	0x0
	ldx	[%l7 + 0x08],	%l6
	edge32ln	%g4,	%i4,	%o1
	sll	%o0,	%o4,	%g2
	stb	%l3,	[%l7 + 0x59]
	fmovdcc	%xcc,	%f15,	%f6
	fpackfix	%f14,	%f13
	fnot2s	%f2,	%f6
	array32	%g6,	%o5,	%g7
	stw	%l0,	[%l7 + 0x18]
	fpack16	%f0,	%f12
	umulcc	%g3,	%l4,	%g1
	ble,a	loop_3718
	fmovda	%xcc,	%f14,	%f7
	srlx	%i7,	0x0B,	%l2
	xnorcc	%i5,	%l5,	%i6
loop_3718:
	fbuge,a	%fcc2,	loop_3719
	tn	%xcc,	0x7
	bge,a	loop_3720
	st	%f3,	[%l7 + 0x3C]
loop_3719:
	fmovrdlez	%o7,	%f12,	%f10
	movneg	%icc,	%o6,	%i1
loop_3720:
	movle	%xcc,	%o3,	%i2
	fandnot1s	%f10,	%f5,	%f14
	tg	%icc,	0x6
	bvc,pt	%icc,	loop_3721
	ldx	[%l7 + 0x18],	%i0
	tle	%icc,	0x4
	fpsub32s	%f13,	%f15,	%f0
loop_3721:
	fcmpd	%fcc2,	%f4,	%f4
	fornot2	%f4,	%f6,	%f2
	fmovrsne	%g5,	%f6,	%f4
	nop
	setx loop_3722, %l0, %l1
	jmpl %l1, %i3
	movrgez	%l1,	0x21C,	%l6
	stb	%o2,	[%l7 + 0x3A]
	orcc	%i4,	%o1,	%g4
loop_3722:
	stx	%o0,	[%l7 + 0x28]
	st	%f11,	[%l7 + 0x28]
	fors	%f10,	%f4,	%f8
	ldsb	[%l7 + 0x3E],	%o4
	lduh	[%l7 + 0x44],	%l3
	stw	%g6,	[%l7 + 0x08]
	lduh	[%l7 + 0x5E],	%o5
	and	%g2,	%g7,	%g3
	tg	%icc,	0x1
	udivx	%l4,	0x11BF,	%g1
	ldub	[%l7 + 0x21],	%l0
	fmovsvs	%icc,	%f0,	%f4
	edge16	%i7,	%i5,	%l5
	faligndata	%f14,	%f0,	%f12
	ldub	[%l7 + 0x60],	%l2
	or	%o7,	0x0447,	%o6
	fmovscc	%icc,	%f12,	%f0
	subc	%i6,	0x0C09,	%o3
	bleu,pn	%icc,	loop_3723
	movrgz	%i1,	0x025,	%i2
	fpackfix	%f10,	%f2
	fbge	%fcc2,	loop_3724
loop_3723:
	brz	%g5,	loop_3725
	ldx	[%l7 + 0x10],	%i0
	stx	%l1,	[%l7 + 0x68]
loop_3724:
	nop
	setx loop_3726, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_3725:
	fnot1s	%f5,	%f7
	bvs,a,pt	%xcc,	loop_3727
	fxors	%f13,	%f10,	%f2
loop_3726:
	fandnot1s	%f7,	%f12,	%f6
	movgu	%xcc,	%i3,	%l6
loop_3727:
	fbne,a	%fcc2,	loop_3728
	taddcctv	%i4,	0x0A10,	%o1
	siam	0x7
	mulx	%g4,	%o2,	%o4
loop_3728:
	call	loop_3729
	brnz	%l3,	loop_3730
	fmovscs	%icc,	%f9,	%f13
	stx	%o0,	[%l7 + 0x70]
loop_3729:
	lduh	[%l7 + 0x1E],	%g6
loop_3730:
	lduw	[%l7 + 0x20],	%g2
	ldx	[%l7 + 0x78],	%o5
	fmovda	%icc,	%f3,	%f11
	te	%icc,	0x6
	ldd	[%l7 + 0x38],	%f6
	edge16ln	%g7,	%g3,	%g1
	ldub	[%l7 + 0x2D],	%l4
	tsubcctv	%i7,	0x0015,	%i5
	ld	[%l7 + 0x1C],	%f14
	fbug	%fcc0,	loop_3731
	ld	[%l7 + 0x5C],	%f9
	fmovrsne	%l0,	%f8,	%f2
	orncc	%l5,	%o7,	%l2
loop_3731:
	fmovdl	%icc,	%f11,	%f11
	stb	%i6,	[%l7 + 0x7B]
	fnands	%f9,	%f8,	%f10
	bleu,a,pt	%xcc,	loop_3732
	bne,pn	%icc,	loop_3733
	addcc	%o3,	0x1EEB,	%o6
	fpadd16s	%f11,	%f1,	%f13
loop_3732:
	pdist	%f8,	%f4,	%f10
loop_3733:
	xor	%i2,	%i1,	%g5
	fbne,a	%fcc2,	loop_3734
	movle	%xcc,	%i0,	%l1
	bshuffle	%f10,	%f8,	%f2
	fmul8ulx16	%f14,	%f4,	%f12
loop_3734:
	umul	%l6,	0x1937,	%i3
	fmul8x16al	%f2,	%f5,	%f0
	std	%f6,	[%l7 + 0x50]
	array16	%i4,	%o1,	%o2
	stx	%o4,	[%l7 + 0x30]
	lduw	[%l7 + 0x24],	%l3
	tgu	%icc,	0x3
	srl	%g4,	%o0,	%g6
	stb	%g2,	[%l7 + 0x30]
	or	%o5,	0x1EA6,	%g3
	fpadd16	%f10,	%f2,	%f8
	lduh	[%l7 + 0x0C],	%g7
	stb	%g1,	[%l7 + 0x64]
	bgu,a	%icc,	loop_3735
	fcmpd	%fcc0,	%f6,	%f6
	movgu	%icc,	%i7,	%l4
	fble,a	%fcc2,	loop_3736
loop_3735:
	ba,a,pn	%xcc,	loop_3737
	ldsw	[%l7 + 0x08],	%i5
	fble,a	%fcc3,	loop_3738
loop_3736:
	fblg	%fcc0,	loop_3739
loop_3737:
	bl,pn	%icc,	loop_3740
	sth	%l5,	[%l7 + 0x2A]
loop_3738:
	fmovsleu	%icc,	%f4,	%f3
loop_3739:
	bneg	loop_3741
loop_3740:
	stx	%l0,	[%l7 + 0x58]
	fcmple16	%f12,	%f12,	%o7
	fors	%f9,	%f15,	%f2
loop_3741:
	lduw	[%l7 + 0x78],	%i6
	addccc	%o3,	%o6,	%l2
	bn,pn	%icc,	loop_3742
	std	%f8,	[%l7 + 0x60]
	sth	%i1,	[%l7 + 0x16]
	stw	%i2,	[%l7 + 0x1C]
loop_3742:
	fmovsn	%icc,	%f14,	%f11
	stx	%g5,	[%l7 + 0x30]
	st	%f4,	[%l7 + 0x6C]
	bg,a	%xcc,	loop_3743
	tne	%xcc,	0x6
	fcmpne32	%f10,	%f4,	%i0
	movge	%icc,	%l6,	%i3
loop_3743:
	fmovsa	%icc,	%f15,	%f11
	orncc	%i4,	%o1,	%l1
	tsubcc	%o4,	0x02EE,	%o2
	fbge,a	%fcc0,	loop_3744
	fmovdle	%xcc,	%f1,	%f0
	fbul,a	%fcc3,	loop_3745
	st	%f7,	[%l7 + 0x70]
loop_3744:
	fmovse	%xcc,	%f4,	%f14
	fbne	%fcc2,	loop_3746
loop_3745:
	alignaddrl	%l3,	%g4,	%g6
	stw	%g2,	[%l7 + 0x74]
	stw	%o5,	[%l7 + 0x50]
loop_3746:
	ldd	[%l7 + 0x20],	%f8
	fpadd32s	%f4,	%f8,	%f6
	move	%xcc,	%g3,	%o0
	andncc	%g1,	%i7,	%l4
	ldsb	[%l7 + 0x54],	%g7
	fbuge	%fcc0,	loop_3747
	fmovsn	%xcc,	%f6,	%f0
	fbne	%fcc1,	loop_3748
	fcmpgt32	%f4,	%f10,	%i5
loop_3747:
	bne,pn	%icc,	loop_3749
	std	%f4,	[%l7 + 0x40]
loop_3748:
	tcs	%icc,	0x7
	fnor	%f2,	%f8,	%f4
loop_3749:
	sll	%l0,	%o7,	%l5
	fmovdneg	%xcc,	%f7,	%f8
	fcmpes	%fcc0,	%f12,	%f6
	popc	%i6,	%o3
	movrgez	%l2,	0x154,	%o6
	nop
	setx loop_3750, %l0, %l1
	jmpl %l1, %i1
	fmovrslez	%g5,	%f14,	%f9
	ldsb	[%l7 + 0x21],	%i2
	srlx	%i0,	0x17,	%i3
loop_3750:
	fmul8x16	%f2,	%f8,	%f4
	fmovrslez	%i4,	%f12,	%f9
	fmovdg	%icc,	%f4,	%f10
	edge32	%o1,	%l6,	%o4
	xnorcc	%l1,	%l3,	%o2
	fba	%fcc1,	loop_3751
	stx	%g4,	[%l7 + 0x10]
	fxnor	%f8,	%f12,	%f10
	fbu,a	%fcc0,	loop_3752
loop_3751:
	ldsw	[%l7 + 0x2C],	%g2
	bge,pt	%icc,	loop_3753
	fxnor	%f12,	%f4,	%f10
loop_3752:
	fands	%f3,	%f6,	%f11
	fbuge	%fcc3,	loop_3754
loop_3753:
	brz	%g6,	loop_3755
	st	%f3,	[%l7 + 0x4C]
	fabsd	%f6,	%f10
loop_3754:
	bcc,a	loop_3756
loop_3755:
	fcmpeq32	%f6,	%f12,	%g3
	fnot2s	%f6,	%f9
	umulcc	%o0,	0x1AC9,	%g1
loop_3756:
	fcmpeq32	%f6,	%f8,	%o5
	fmovrsgz	%i7,	%f8,	%f7
	nop
	setx loop_3757, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	edge32	%g7,	%l4,	%l0
	fmovrslz	%i5,	%f12,	%f8
	bge,pt	%icc,	loop_3758
loop_3757:
	tne	%xcc,	0x4
	fbe,a	%fcc2,	loop_3759
	tg	%icc,	0x5
loop_3758:
	xnorcc	%o7,	%l5,	%i6
	fba,a	%fcc2,	loop_3760
loop_3759:
	ldsb	[%l7 + 0x37],	%o3
	fbuge	%fcc3,	loop_3761
	ld	[%l7 + 0x4C],	%f0
loop_3760:
	edge8	%o6,	%i1,	%l2
	tcc	%icc,	0x2
loop_3761:
	sth	%i2,	[%l7 + 0x22]
	fbuge	%fcc3,	loop_3762
	fba,a	%fcc3,	loop_3763
	fpack32	%f8,	%f0,	%f14
	stx	%i0,	[%l7 + 0x40]
loop_3762:
	movn	%icc,	%g5,	%i4
loop_3763:
	fandnot2	%f10,	%f14,	%f12
	fmovsl	%icc,	%f14,	%f0
	fnot2s	%f3,	%f11
	fmovda	%xcc,	%f9,	%f4
	tg	%icc,	0x1
	fmovscs	%icc,	%f1,	%f4
	ldx	[%l7 + 0x68],	%o1
	ldub	[%l7 + 0x6D],	%i3
	fpackfix	%f14,	%f14
	fmovde	%icc,	%f4,	%f5
	fzeros	%f11
	fxnors	%f13,	%f5,	%f12
	std	%f10,	[%l7 + 0x10]
	fmovrslz	%o4,	%f10,	%f2
	nop
	setx loop_3764, %l0, %l1
	jmpl %l1, %l6
	stx	%l3,	[%l7 + 0x38]
	alignaddr	%l1,	%g4,	%o2
	lduw	[%l7 + 0x2C],	%g2
loop_3764:
	taddcctv	%g3,	%o0,	%g1
	fmovdgu	%xcc,	%f9,	%f6
	fsrc2s	%f6,	%f9
	fbule	%fcc1,	loop_3765
	subccc	%g6,	0x0BDC,	%i7
	bleu,a	loop_3766
	brnz,a	%g7,	loop_3767
loop_3765:
	movl	%icc,	%o5,	%l0
	movge	%xcc,	%i5,	%l4
loop_3766:
	call	loop_3768
loop_3767:
	udivcc	%o7,	0x162F,	%l5
	fbule	%fcc2,	loop_3769
	fbule	%fcc2,	loop_3770
loop_3768:
	addcc	%i6,	%o3,	%i1
	bn,pt	%icc,	loop_3771
loop_3769:
	mulscc	%o6,	0x0247,	%i2
loop_3770:
	lduh	[%l7 + 0x62],	%l2
	fmovsl	%icc,	%f9,	%f15
loop_3771:
	ld	[%l7 + 0x44],	%f7
	array32	%g5,	%i4,	%i0
	fmovrdlz	%i3,	%f10,	%f10
	tvc	%xcc,	0x4
	ldsw	[%l7 + 0x5C],	%o4
	fmovrslez	%l6,	%f5,	%f10
	addcc	%o1,	%l3,	%g4
	stb	%o2,	[%l7 + 0x0A]
	fmovd	%f0,	%f4
	bcc,pt	%icc,	loop_3772
	array8	%g2,	%g3,	%o0
	fmovde	%icc,	%f0,	%f14
	fcmpgt32	%f14,	%f6,	%g1
loop_3772:
	taddcctv	%l1,	%g6,	%g7
	fmovrslz	%o5,	%f10,	%f9
	bcc,pt	%xcc,	loop_3773
	ldub	[%l7 + 0x0A],	%l0
	fmovspos	%xcc,	%f8,	%f9
	lduw	[%l7 + 0x0C],	%i7
loop_3773:
	edge16l	%i5,	%o7,	%l5
	fors	%f5,	%f11,	%f10
	addc	%l4,	0x126B,	%i6
	ba,a,pn	%xcc,	loop_3774
	stw	%o3,	[%l7 + 0x0C]
	ldsw	[%l7 + 0x3C],	%i1
	fnands	%f9,	%f3,	%f10
loop_3774:
	ldub	[%l7 + 0x13],	%o6
	fnor	%f6,	%f4,	%f4
	fsrc1	%f14,	%f8
	fcmps	%fcc1,	%f13,	%f12
	movge	%icc,	%l2,	%i2
	fnot2s	%f13,	%f1
	ldsw	[%l7 + 0x7C],	%g5
	addccc	%i0,	%i3,	%i4
	brgez	%o4,	loop_3775
	fmovda	%icc,	%f2,	%f10
	movre	%o1,	%l3,	%g4
	fmovdgu	%icc,	%f4,	%f11
loop_3775:
	smul	%o2,	%g2,	%l6
	edge32l	%o0,	%g1,	%l1
	sra	%g6,	%g3,	%o5
	siam	0x6
	fpsub32s	%f15,	%f0,	%f4
	fnot2s	%f2,	%f6
	bne,a	loop_3776
	bn,a,pt	%icc,	loop_3777
	ldsw	[%l7 + 0x58],	%l0
	fba,a	%fcc3,	loop_3778
loop_3776:
	add	%i7,	0x01E8,	%i5
loop_3777:
	ld	[%l7 + 0x64],	%f3
	movvs	%icc,	%o7,	%l5
loop_3778:
	ldsw	[%l7 + 0x18],	%g7
	stw	%l4,	[%l7 + 0x38]
	fzero	%f2
	brz,a	%i6,	loop_3779
	ldub	[%l7 + 0x36],	%o3
	std	%f4,	[%l7 + 0x78]
	stw	%i1,	[%l7 + 0x0C]
loop_3779:
	brz,a	%o6,	loop_3780
	fands	%f11,	%f1,	%f2
	fcmple32	%f0,	%f12,	%i2
	fxor	%f4,	%f10,	%f4
loop_3780:
	edge8	%g5,	%l2,	%i3
	movg	%icc,	%i4,	%i0
	fmovs	%f0,	%f13
	fmovsa	%xcc,	%f0,	%f0
	sub	%o1,	0x1F82,	%o4
	bcc,pt	%xcc,	loop_3781
	tcc	%xcc,	0x7
	ldd	[%l7 + 0x20],	%f8
	bgu	loop_3782
loop_3781:
	fcmple32	%f14,	%f2,	%l3
	bneg,a	loop_3783
	ldd	[%l7 + 0x78],	%f12
loop_3782:
	tcs	%xcc,	0x0
	lduw	[%l7 + 0x58],	%o2
loop_3783:
	bgu,pt	%xcc,	loop_3784
	ldub	[%l7 + 0x27],	%g4
	ldx	[%l7 + 0x10],	%g2
	bcc,a,pt	%icc,	loop_3785
loop_3784:
	brgez	%l6,	loop_3786
	ldsh	[%l7 + 0x7A],	%o0
	edge32l	%g1,	%l1,	%g6
loop_3785:
	edge32	%o5,	%l0,	%g3
loop_3786:
	fbl	%fcc2,	loop_3787
	fbn	%fcc2,	loop_3788
	lduh	[%l7 + 0x5E],	%i7
	fandnot1	%f10,	%f0,	%f0
loop_3787:
	movvc	%xcc,	%i5,	%o7
loop_3788:
	ldsh	[%l7 + 0x16],	%l5
	orn	%l4,	%i6,	%g7
	edge8ln	%o3,	%o6,	%i1
	stx	%g5,	[%l7 + 0x20]
	stx	%i2,	[%l7 + 0x38]
	stx	%l2,	[%l7 + 0x30]
	fmovdleu	%icc,	%f0,	%f13
	edge32l	%i3,	%i4,	%o1
	fcmple16	%f8,	%f2,	%o4
	brlz,a	%l3,	loop_3789
	stx	%i0,	[%l7 + 0x10]
	tsubcc	%g4,	%o2,	%g2
	nop
	setx loop_3790, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_3789:
	fpsub32	%f12,	%f12,	%f4
	stx	%l6,	[%l7 + 0x68]
	fmovsneg	%xcc,	%f4,	%f13
loop_3790:
	edge8l	%o0,	%g1,	%g6
	fmovdl	%xcc,	%f1,	%f13
	fbuge,a	%fcc1,	loop_3791
	movre	%l1,	0x2AE,	%o5
	sth	%l0,	[%l7 + 0x38]
	sdiv	%g3,	0x1093,	%i7
loop_3791:
	fbu,a	%fcc1,	loop_3792
	lduw	[%l7 + 0x3C],	%i5
	subccc	%l5,	0x1C1E,	%l4
	andncc	%i6,	%g7,	%o7
loop_3792:
	xor	%o3,	0x063C,	%i1
	tneg	%icc,	0x6
	movgu	%xcc,	%g5,	%i2
	addccc	%l2,	%o6,	%i4
	stb	%o1,	[%l7 + 0x32]
	fandnot2	%f4,	%f8,	%f0
	fmovdvs	%xcc,	%f1,	%f9
	fsrc1	%f6,	%f4
	fnor	%f10,	%f2,	%f10
	ldsb	[%l7 + 0x0C],	%i3
	andncc	%l3,	%o4,	%i0
	fnot1	%f0,	%f10
	fbul,a	%fcc3,	loop_3793
	fors	%f4,	%f5,	%f12
	fornot1	%f2,	%f2,	%f8
	fmovrdne	%g4,	%f0,	%f14
loop_3793:
	stw	%g2,	[%l7 + 0x1C]
	fone	%f10
	stw	%o2,	[%l7 + 0x4C]
	brgz	%o0,	loop_3794
	bleu,a	loop_3795
	st	%f14,	[%l7 + 0x18]
	fmovsvc	%xcc,	%f3,	%f0
loop_3794:
	fmovsgu	%xcc,	%f5,	%f0
loop_3795:
	alignaddr	%g1,	%l6,	%l1
	fmovscs	%icc,	%f3,	%f10
	fnegd	%f0,	%f14
	ld	[%l7 + 0x74],	%f1
	sll	%g6,	%l0,	%o5
	fmovsa	%icc,	%f5,	%f2
	bgu,pn	%icc,	loop_3796
	movg	%icc,	%i7,	%i5
	movvc	%xcc,	%g3,	%l4
	sth	%i6,	[%l7 + 0x62]
loop_3796:
	fbule	%fcc1,	loop_3797
	sdivcc	%g7,	0x1250,	%l5
	fcmped	%fcc0,	%f2,	%f12
	fmovrdlez	%o3,	%f14,	%f6
loop_3797:
	add	%o7,	0x059F,	%g5
	or	%i1,	0x00D6,	%l2
	fmovs	%f7,	%f13
	ldsw	[%l7 + 0x0C],	%i2
	fblg,a	%fcc0,	loop_3798
	bvc,pt	%xcc,	loop_3799
	addc	%i4,	0x05FC,	%o1
	fpsub16	%f0,	%f6,	%f6
loop_3798:
	fmovsge	%icc,	%f3,	%f7
loop_3799:
	mulx	%i3,	0x1E54,	%l3
	subc	%o6,	0x0646,	%o4
	fmovrslz	%g4,	%f5,	%f5
	stx	%g2,	[%l7 + 0x60]
	brlez,a	%o2,	loop_3800
	fbue,a	%fcc1,	loop_3801
	udivx	%o0,	0x066A,	%g1
	sll	%l6,	0x08,	%l1
loop_3800:
	std	%f4,	[%l7 + 0x50]
loop_3801:
	ldx	[%l7 + 0x40],	%i0
	mova	%icc,	%g6,	%o5
	fbne,a	%fcc2,	loop_3802
	movcs	%icc,	%i7,	%l0
	alignaddr	%g3,	%i5,	%i6
	sdivx	%l4,	0x1ED0,	%g7
loop_3802:
	fabss	%f7,	%f11
	fbule,a	%fcc2,	loop_3803
	xnorcc	%o3,	%l5,	%g5
	udiv	%o7,	0x08C8,	%i1
	array16	%l2,	%i4,	%i2
loop_3803:
	movvs	%icc,	%o1,	%i3
	fcmpgt32	%f0,	%f0,	%l3
	fmovrslz	%o4,	%f4,	%f13
	ldsh	[%l7 + 0x32],	%g4
	lduh	[%l7 + 0x7A],	%g2
	std	%f14,	[%l7 + 0x38]
	fandnot1s	%f2,	%f8,	%f10
	ld	[%l7 + 0x60],	%f11
	fabss	%f3,	%f5
	movleu	%xcc,	%o2,	%o0
	fmul8x16au	%f11,	%f5,	%f2
	udivx	%g1,	0x1F3B,	%o6
	ldx	[%l7 + 0x68],	%l6
	movcs	%xcc,	%l1,	%i0
	fmovrdne	%o5,	%f2,	%f0
	fsrc1s	%f15,	%f3
	ldsw	[%l7 + 0x1C],	%g6
	bneg,a	%xcc,	loop_3804
	fbu	%fcc0,	loop_3805
	bshuffle	%f14,	%f4,	%f4
	ldub	[%l7 + 0x61],	%l0
loop_3804:
	nop
	setx loop_3806, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_3805:
	bge,a	%icc,	loop_3807
	lduh	[%l7 + 0x44],	%i7
	fbl	%fcc3,	loop_3808
loop_3806:
	ldsh	[%l7 + 0x32],	%g3
loop_3807:
	fnands	%f1,	%f3,	%f12
	fcmple16	%f14,	%f10,	%i5
loop_3808:
	movl	%icc,	%i6,	%g7
	fbg,a	%fcc3,	loop_3809
	fzeros	%f5
	fzero	%f6
	fba,a	%fcc1,	loop_3810
loop_3809:
	sth	%o3,	[%l7 + 0x78]
	bge,a,pn	%xcc,	loop_3811
	xnor	%l4,	0x103C,	%g5
loop_3810:
	ldsw	[%l7 + 0x28],	%o7
	fblg	%fcc0,	loop_3812
loop_3811:
	fnegs	%f12,	%f15
	sth	%l5,	[%l7 + 0x16]
	fxnors	%f12,	%f8,	%f0
loop_3812:
	fsrc1s	%f3,	%f2
	alignaddrl	%l2,	%i4,	%i2
	ldx	[%l7 + 0x60],	%o1
	tcs	%xcc,	0x6
	stx	%i3,	[%l7 + 0x10]
	fands	%f7,	%f1,	%f11
	brgez,a	%l3,	loop_3813
	fbo,a	%fcc0,	loop_3814
	stx	%i1,	[%l7 + 0x28]
	nop
	setx loop_3815, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_3813:
	fba,a	%fcc1,	loop_3816
loop_3814:
	ldsb	[%l7 + 0x2C],	%g4
	ld	[%l7 + 0x30],	%f0
loop_3815:
	movge	%xcc,	%g2,	%o2
loop_3816:
	fsrc1s	%f1,	%f2
	sth	%o0,	[%l7 + 0x38]
	bvs,a	%xcc,	loop_3817
	edge32l	%o4,	%g1,	%l6
	fpack32	%f10,	%f2,	%f14
	pdist	%f8,	%f12,	%f14
loop_3817:
	fpsub32s	%f1,	%f10,	%f6
	edge16	%o6,	%i0,	%o5
	edge8n	%l1,	%g6,	%i7
	movre	%g3,	0x287,	%l0
	lduh	[%l7 + 0x26],	%i6
	fmovrse	%i5,	%f13,	%f4
	sra	%g7,	%o3,	%l4
	fmovdcs	%icc,	%f4,	%f0
	fmovdcs	%xcc,	%f1,	%f0
	fxnor	%f4,	%f2,	%f8
	fpadd32	%f2,	%f10,	%f12
	fornot1s	%f1,	%f9,	%f12
	movrgz	%o7,	%l5,	%g5
	st	%f5,	[%l7 + 0x38]
	sub	%l2,	0x184D,	%i2
	sth	%i4,	[%l7 + 0x68]
	movne	%icc,	%i3,	%l3
	bneg,a,pn	%xcc,	loop_3818
	fbue,a	%fcc1,	loop_3819
	brlez,a	%o1,	loop_3820
	sth	%g4,	[%l7 + 0x10]
loop_3818:
	bl,pt	%icc,	loop_3821
loop_3819:
	ld	[%l7 + 0x18],	%f11
loop_3820:
	nop
	setx loop_3822, %l0, %l1
	jmpl %l1, %i1
	ldd	[%l7 + 0x38],	%f6
loop_3821:
	brgz	%g2,	loop_3823
	ld	[%l7 + 0x74],	%f10
loop_3822:
	fnegs	%f14,	%f8
	fmovdpos	%icc,	%f5,	%f15
loop_3823:
	nop
	setx loop_3824, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	sth	%o0,	[%l7 + 0x32]
	fbul	%fcc0,	loop_3825
	fcmpd	%fcc2,	%f10,	%f12
loop_3824:
	lduh	[%l7 + 0x24],	%o2
	fornot2	%f6,	%f10,	%f12
loop_3825:
	ld	[%l7 + 0x0C],	%f2
	fba	%fcc2,	loop_3826
	edge8	%g1,	%l6,	%o6
	ldsh	[%l7 + 0x7A],	%i0
	ldub	[%l7 + 0x6F],	%o5
loop_3826:
	tl	%xcc,	0x0
	mulscc	%l1,	0x1AB5,	%g6
	tpos	%icc,	0x4
	ldx	[%l7 + 0x50],	%o4
	nop
	setx loop_3827, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stb	%g3,	[%l7 + 0x29]
	bgu,a,pt	%xcc,	loop_3828
	fbo	%fcc0,	loop_3829
loop_3827:
	fmovrslez	%i7,	%f0,	%f9
	movcc	%xcc,	%i6,	%i5
loop_3828:
	array32	%l0,	%o3,	%l4
loop_3829:
	ld	[%l7 + 0x48],	%f11
	ldd	[%l7 + 0x08],	%f4
	fornot1s	%f14,	%f4,	%f4
	stb	%o7,	[%l7 + 0x5C]
	ldsb	[%l7 + 0x3A],	%g7
	fmul8ulx16	%f12,	%f0,	%f8
	fmovdl	%icc,	%f10,	%f14
	fmovdle	%icc,	%f0,	%f9
	sth	%g5,	[%l7 + 0x58]
	xorcc	%l2,	%l5,	%i4
	fmul8ulx16	%f10,	%f4,	%f2
	fcmple16	%f2,	%f14,	%i2
	ldsh	[%l7 + 0x32],	%i3
	fnot1s	%f5,	%f0
	fbug	%fcc0,	loop_3830
	stw	%o1,	[%l7 + 0x2C]
	movl	%xcc,	%g4,	%l3
	fnot2	%f0,	%f12
loop_3830:
	fmovsgu	%icc,	%f11,	%f5
	fmovrdlez	%g2,	%f10,	%f10
	for	%f12,	%f14,	%f10
	fcmpgt16	%f2,	%f4,	%o0
	fbule	%fcc0,	loop_3831
	fmovdcs	%xcc,	%f13,	%f12
	brlz	%i1,	loop_3832
	mova	%xcc,	%o2,	%g1
loop_3831:
	stx	%o6,	[%l7 + 0x10]
	ldx	[%l7 + 0x50],	%i0
loop_3832:
	ldd	[%l7 + 0x38],	%f2
	fcmpgt32	%f6,	%f10,	%l6
	tle	%icc,	0x0
	fbg	%fcc0,	loop_3833
	fmuld8sux16	%f4,	%f2,	%f0
	fmovrdne	%l1,	%f4,	%f8
	ldsb	[%l7 + 0x58],	%g6
loop_3833:
	stb	%o5,	[%l7 + 0x3D]
	movleu	%xcc,	%g3,	%o4
	brgz,a	%i6,	loop_3834
	fmovrdgez	%i5,	%f2,	%f2
	movne	%icc,	%i7,	%l0
	tle	%xcc,	0x0
loop_3834:
	stw	%o3,	[%l7 + 0x1C]
	lduh	[%l7 + 0x34],	%l4
	stw	%o7,	[%l7 + 0x30]
	fmovsgu	%xcc,	%f13,	%f8
	bneg,a,pn	%xcc,	loop_3835
	siam	0x5
	fabsd	%f6,	%f12
	st	%f0,	[%l7 + 0x4C]
loop_3835:
	fands	%f2,	%f15,	%f15
	bl	%xcc,	loop_3836
	st	%f11,	[%l7 + 0x4C]
	brz,a	%g7,	loop_3837
	fmovsvs	%xcc,	%f9,	%f2
loop_3836:
	fmovrse	%g5,	%f7,	%f2
	fbue,a	%fcc0,	loop_3838
loop_3837:
	bl,a,pt	%xcc,	loop_3839
	fcmpne16	%f10,	%f12,	%l2
	fbue	%fcc1,	loop_3840
loop_3838:
	movn	%icc,	%i4,	%i2
loop_3839:
	tsubcctv	%l5,	%i3,	%g4
	stx	%l3,	[%l7 + 0x40]
loop_3840:
	fandnot2	%f4,	%f2,	%f2
	movle	%icc,	%o1,	%g2
	lduh	[%l7 + 0x24],	%i1
	tge	%xcc,	0x3
	fbul,a	%fcc0,	loop_3841
	stb	%o2,	[%l7 + 0x76]
	edge16n	%g1,	%o0,	%o6
	movrne	%i0,	0x22E,	%l6
loop_3841:
	fornot1s	%f10,	%f9,	%f14
	lduh	[%l7 + 0x44],	%l1
	sth	%o5,	[%l7 + 0x36]
	stw	%g6,	[%l7 + 0x10]
	stx	%g3,	[%l7 + 0x40]
	edge16n	%i6,	%i5,	%i7
	ldd	[%l7 + 0x20],	%f8
	ldsw	[%l7 + 0x4C],	%l0
	fmovsa	%icc,	%f4,	%f12
	fpadd16s	%f11,	%f9,	%f15
	tcs	%xcc,	0x0
	st	%f2,	[%l7 + 0x6C]
	fmovrsgez	%o3,	%f15,	%f9
	tsubcctv	%l4,	%o4,	%o7
	fmovdleu	%xcc,	%f6,	%f1
	fone	%f0
	stb	%g7,	[%l7 + 0x3C]
	tg	%xcc,	0x4
	st	%f15,	[%l7 + 0x14]
	fmovspos	%icc,	%f15,	%f7
	stb	%l2,	[%l7 + 0x25]
	ldub	[%l7 + 0x3C],	%i4
	array16	%g5,	%l5,	%i2
	call	loop_3842
	fnot2s	%f13,	%f6
	movrgz	%i3,	%g4,	%o1
	stb	%g2,	[%l7 + 0x19]
loop_3842:
	umul	%l3,	%o2,	%g1
	movleu	%icc,	%i1,	%o0
	fba,a	%fcc2,	loop_3843
	ldub	[%l7 + 0x2E],	%o6
	ldsb	[%l7 + 0x0D],	%i0
	siam	0x5
loop_3843:
	fornot2	%f6,	%f14,	%f6
	xnorcc	%l1,	0x1DF8,	%l6
	ldd	[%l7 + 0x48],	%f8
	xorcc	%g6,	%g3,	%i6
	fcmpeq32	%f4,	%f10,	%i5
	movpos	%xcc,	%i7,	%l0
	udivx	%o3,	0x006F,	%l4
	tgu	%icc,	0x0
	lduw	[%l7 + 0x60],	%o4
	fbue	%fcc2,	loop_3844
	ldd	[%l7 + 0x38],	%f12
	stw	%o5,	[%l7 + 0x18]
	fcmps	%fcc1,	%f4,	%f8
loop_3844:
	lduw	[%l7 + 0x3C],	%o7
	st	%f6,	[%l7 + 0x38]
	fmovrdne	%l2,	%f14,	%f0
	lduw	[%l7 + 0x08],	%g7
	std	%f0,	[%l7 + 0x40]
	fbge,a	%fcc0,	loop_3845
	bpos,a,pn	%xcc,	loop_3846
	sra	%g5,	0x10,	%l5
	fbug	%fcc3,	loop_3847
loop_3845:
	fcmps	%fcc0,	%f12,	%f13
loop_3846:
	fcmpne32	%f2,	%f4,	%i2
	st	%f5,	[%l7 + 0x44]
loop_3847:
	fnot2	%f0,	%f10
	tpos	%xcc,	0x5
	stb	%i3,	[%l7 + 0x7B]
	stw	%i4,	[%l7 + 0x30]
	fornot2s	%f11,	%f10,	%f14
	fbge	%fcc0,	loop_3848
	nop
	setx loop_3849, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	edge8ln	%o1,	%g4,	%g2
	bcc,a,pn	%icc,	loop_3850
loop_3848:
	ble,pn	%icc,	loop_3851
loop_3849:
	tn	%xcc,	0x7
	fsrc2s	%f7,	%f9
loop_3850:
	fornot2	%f14,	%f4,	%f2
loop_3851:
	fmovdcc	%xcc,	%f5,	%f14
	ldsh	[%l7 + 0x7C],	%o2
	fmovrslz	%g1,	%f10,	%f11
	fba,a	%fcc2,	loop_3852
	fbuge,a	%fcc3,	loop_3853
	st	%f13,	[%l7 + 0x1C]
	bleu,pn	%icc,	loop_3854
loop_3852:
	edge32ln	%l3,	%o0,	%i1
loop_3853:
	fmovsvc	%xcc,	%f8,	%f10
	fmovrse	%i0,	%f2,	%f7
loop_3854:
	tsubcc	%l1,	%o6,	%l6
	ta	%icc,	0x6
	ldsh	[%l7 + 0x22],	%g3
	mulx	%i6,	%i5,	%g6
	bneg,a,pt	%xcc,	loop_3855
	sub	%l0,	0x10F0,	%i7
	movrlz	%l4,	0x281,	%o4
	te	%icc,	0x7
loop_3855:
	fmovsa	%xcc,	%f15,	%f3
	ldsb	[%l7 + 0x33],	%o3
	ldub	[%l7 + 0x2C],	%o5
	fmovdge	%xcc,	%f5,	%f9
	st	%f3,	[%l7 + 0x1C]
	fmovdpos	%icc,	%f3,	%f1
	fcmpne16	%f4,	%f10,	%l2
	ldsw	[%l7 + 0x2C],	%o7
	fandnot1	%f10,	%f6,	%f6
	ld	[%l7 + 0x24],	%f14
	ld	[%l7 + 0x28],	%f14
	bg,a	loop_3856
	fnands	%f7,	%f1,	%f14
	fmovrsgz	%g7,	%f10,	%f11
	edge32l	%g5,	%l5,	%i3
loop_3856:
	smulcc	%i4,	%i2,	%o1
	ldx	[%l7 + 0x38],	%g4
	for	%f6,	%f2,	%f10
	ld	[%l7 + 0x2C],	%f9
	bshuffle	%f10,	%f6,	%f8
	lduw	[%l7 + 0x6C],	%o2
	fand	%f2,	%f2,	%f8
	st	%f5,	[%l7 + 0x20]
	movpos	%icc,	%g1,	%l3
	addccc	%g2,	%o0,	%i1
	fble	%fcc2,	loop_3857
	fors	%f14,	%f14,	%f7
	edge8l	%i0,	%l1,	%o6
	tleu	%xcc,	0x6
loop_3857:
	st	%f2,	[%l7 + 0x48]
	ldsh	[%l7 + 0x18],	%l6
	fbug	%fcc1,	loop_3858
	ldx	[%l7 + 0x78],	%i6
	ldsw	[%l7 + 0x08],	%i5
	ldub	[%l7 + 0x17],	%g3
loop_3858:
	alignaddr	%g6,	%l0,	%l4
	ldub	[%l7 + 0x65],	%i7
	xorcc	%o3,	%o4,	%o5
	fornot2s	%f15,	%f8,	%f8
	fmovrdne	%l2,	%f4,	%f0
	std	%f10,	[%l7 + 0x28]
	tl	%icc,	0x2
	ld	[%l7 + 0x54],	%f11
	stb	%g7,	[%l7 + 0x3A]
	tneg	%icc,	0x0
	ldd	[%l7 + 0x28],	%f0
	ld	[%l7 + 0x54],	%f2
	fbg	%fcc3,	loop_3859
	fexpand	%f1,	%f8
	brnz	%g5,	loop_3860
	ldub	[%l7 + 0x34],	%l5
loop_3859:
	fzeros	%f8
	tne	%icc,	0x0
loop_3860:
	tneg	%icc,	0x4
	stw	%i3,	[%l7 + 0x4C]
	fpadd16s	%f0,	%f11,	%f0
	ldub	[%l7 + 0x5D],	%i4
	fone	%f12
	stb	%i2,	[%l7 + 0x08]
	tl	%xcc,	0x6
	stb	%o7,	[%l7 + 0x09]
	sra	%o1,	%g4,	%o2
	brlz,a	%g1,	loop_3861
	lduw	[%l7 + 0x60],	%g2
	tn	%xcc,	0x4
	fbn,a	%fcc1,	loop_3862
loop_3861:
	udivx	%o0,	0x1130,	%i1
	fmovda	%xcc,	%f15,	%f12
	tcs	%xcc,	0x0
loop_3862:
	ldub	[%l7 + 0x32],	%l3
	fbn,a	%fcc2,	loop_3863
	edge16	%l1,	%i0,	%l6
	stw	%i6,	[%l7 + 0x40]
	fpsub32s	%f1,	%f12,	%f4
loop_3863:
	ldsh	[%l7 + 0x58],	%o6
	fmovse	%icc,	%f9,	%f15
	ldsh	[%l7 + 0x74],	%i5
	bpos	loop_3864
	orncc	%g6,	%g3,	%l4
	ldsb	[%l7 + 0x47],	%i7
	xor	%l0,	0x04A4,	%o3
loop_3864:
	stw	%o5,	[%l7 + 0x38]
	fcmpeq16	%f2,	%f2,	%l2
	fmovrsne	%o4,	%f14,	%f8
	fandnot2	%f14,	%f0,	%f2
	mulx	%g7,	%g5,	%l5
	stx	%i4,	[%l7 + 0x60]
	fandnot1	%f2,	%f6,	%f0
	lduh	[%l7 + 0x70],	%i2
	bpos,pt	%xcc,	loop_3865
	alignaddr	%o7,	%o1,	%g4
	ldx	[%l7 + 0x40],	%o2
	fbu	%fcc3,	loop_3866
loop_3865:
	bl,a,pn	%xcc,	loop_3867
	taddcc	%i3,	%g2,	%g1
	movpos	%xcc,	%i1,	%o0
loop_3866:
	fbue	%fcc2,	loop_3868
loop_3867:
	movrlz	%l1,	%l3,	%l6
	ldsh	[%l7 + 0x68],	%i6
	taddcc	%o6,	%i5,	%g6
loop_3868:
	fblg	%fcc2,	loop_3869
	fmovsleu	%xcc,	%f4,	%f13
	ble,a	loop_3870
	fcmped	%fcc2,	%f10,	%f14
loop_3869:
	bshuffle	%f12,	%f6,	%f8
	sdivx	%i0,	0x069D,	%g3
loop_3870:
	brgez,a	%l4,	loop_3871
	fpack16	%f4,	%f5
	sra	%l0,	%o3,	%i7
	movge	%xcc,	%o5,	%o4
loop_3871:
	ldub	[%l7 + 0x6A],	%g7
	movg	%icc,	%g5,	%l5
	st	%f6,	[%l7 + 0x58]
	for	%f6,	%f10,	%f2
	fpadd16	%f14,	%f14,	%f0
	stw	%l2,	[%l7 + 0x10]
	brlez,a	%i4,	loop_3872
	movvs	%icc,	%i2,	%o7
	fbn	%fcc2,	loop_3873
	andn	%g4,	%o1,	%o2
loop_3872:
	for	%f2,	%f12,	%f6
	fpack16	%f12,	%f4
loop_3873:
	fones	%f15
	std	%f12,	[%l7 + 0x68]
	nop
	setx loop_3874, %l0, %l1
	jmpl %l1, %i3
	sethi	0x1E2E,	%g2
	lduh	[%l7 + 0x4A],	%g1
	nop
	setx loop_3875, %l0, %l1
	jmpl %l1, %o0
loop_3874:
	fbo	%fcc2,	loop_3876
	tcc	%icc,	0x3
	fcmpne16	%f6,	%f8,	%i1
loop_3875:
	movg	%icc,	%l1,	%l3
loop_3876:
	brlz,a	%l6,	loop_3877
	ble,a,pn	%icc,	loop_3878
	edge16n	%i6,	%i5,	%g6
	ldsb	[%l7 + 0x21],	%o6
loop_3877:
	bgu,a,pt	%icc,	loop_3879
loop_3878:
	fnegd	%f10,	%f2
	srlx	%g3,	0x08,	%l4
	lduw	[%l7 + 0x20],	%i0
loop_3879:
	stb	%o3,	[%l7 + 0x45]
	fones	%f12
	fbul,a	%fcc2,	loop_3880
	lduh	[%l7 + 0x62],	%l0
	ldsw	[%l7 + 0x08],	%o5
	lduh	[%l7 + 0x58],	%o4
loop_3880:
	tle	%xcc,	0x7
	ta	%icc,	0x0
	fbe,a	%fcc2,	loop_3881
	fbuge,a	%fcc2,	loop_3882
	fmovdle	%xcc,	%f5,	%f8
	fmovse	%icc,	%f13,	%f1
loop_3881:
	fble,a	%fcc2,	loop_3883
loop_3882:
	fmovrse	%i7,	%f6,	%f14
	ld	[%l7 + 0x3C],	%f0
	movrgez	%g5,	%g7,	%l5
loop_3883:
	array16	%l2,	%i4,	%o7
	ld	[%l7 + 0x2C],	%f6
	st	%f15,	[%l7 + 0x08]
	stb	%g4,	[%l7 + 0x55]
	add	%i2,	0x1FD6,	%o1
	call	loop_3884
	ldsb	[%l7 + 0x7A],	%o2
	movl	%xcc,	%g2,	%g1
	ldub	[%l7 + 0x7E],	%o0
loop_3884:
	taddcctv	%i1,	%l1,	%i3
	ldsh	[%l7 + 0x24],	%l6
	lduh	[%l7 + 0x76],	%l3
	fornot2s	%f11,	%f2,	%f1
	movvc	%xcc,	%i6,	%g6
	ldsh	[%l7 + 0x22],	%i5
	fmovsle	%icc,	%f8,	%f6
	sth	%o6,	[%l7 + 0x44]
	tge	%xcc,	0x7
	stw	%g3,	[%l7 + 0x14]
	fmovdl	%icc,	%f7,	%f9
	fpsub32s	%f11,	%f14,	%f3
	fcmpeq32	%f8,	%f8,	%i0
	fmovrdgez	%l4,	%f8,	%f12
	tne	%xcc,	0x6
	tcc	%icc,	0x0
	edge16ln	%l0,	%o3,	%o5
	taddcctv	%i7,	0x0C3B,	%o4
	udivx	%g5,	0x105F,	%g7
	sdivcc	%l2,	0x0E62,	%i4
	tcs	%icc,	0x4
	bcc,a	%xcc,	loop_3885
	fmovsgu	%xcc,	%f2,	%f1
	ldx	[%l7 + 0x18],	%o7
	stb	%l5,	[%l7 + 0x7B]
loop_3885:
	fsrc1	%f12,	%f14
	fmovdl	%xcc,	%f15,	%f3
	taddcctv	%g4,	0x0103,	%o1
	or	%o2,	%g2,	%i2
	stb	%g1,	[%l7 + 0x10]
	fmovdneg	%xcc,	%f8,	%f15
	lduh	[%l7 + 0x14],	%o0
	movrgez	%l1,	0x312,	%i3
	fbu,a	%fcc1,	loop_3886
	brnz	%l6,	loop_3887
	std	%f12,	[%l7 + 0x28]
	fmovd	%f4,	%f6
loop_3886:
	stw	%l3,	[%l7 + 0x24]
loop_3887:
	stb	%i1,	[%l7 + 0x30]
	fpack16	%f0,	%f4
	stb	%g6,	[%l7 + 0x7E]
	movpos	%icc,	%i6,	%o6
	fands	%f9,	%f2,	%f10
	ldsh	[%l7 + 0x6E],	%g3
	fandnot2	%f6,	%f8,	%f14
	ldx	[%l7 + 0x10],	%i5
	and	%l4,	0x0270,	%i0
	ldub	[%l7 + 0x4C],	%o3
	srax	%l0,	0x14,	%o5
	sth	%i7,	[%l7 + 0x72]
	stb	%o4,	[%l7 + 0x62]
	fzeros	%f5
	fmovsge	%xcc,	%f4,	%f5
	fmovrslz	%g5,	%f9,	%f8
	lduh	[%l7 + 0x58],	%l2
	ldx	[%l7 + 0x60],	%g7
	fpmerge	%f13,	%f5,	%f0
	ble,pn	%xcc,	loop_3888
	edge16n	%i4,	%o7,	%g4
	fnors	%f10,	%f1,	%f9
	fbo	%fcc2,	loop_3889
loop_3888:
	bge,a	%icc,	loop_3890
	add	%l5,	0x0C87,	%o2
	tl	%xcc,	0x2
loop_3889:
	nop
	setx loop_3891, %l0, %l1
	jmpl %l1, %g2
loop_3890:
	xnorcc	%i2,	0x0B69,	%g1
	subcc	%o1,	%o0,	%l1
	popc	%l6,	%l3
loop_3891:
	tl	%xcc,	0x2
	tpos	%xcc,	0x7
	fmovsge	%icc,	%f9,	%f12
	fmovsge	%icc,	%f15,	%f4
	subccc	%i1,	%i3,	%i6
	stb	%o6,	[%l7 + 0x61]
	fbg	%fcc0,	loop_3892
	fmovrdgez	%g6,	%f4,	%f2
	andcc	%i5,	0x1C83,	%g3
	fbg	%fcc0,	loop_3893
loop_3892:
	fmovdg	%xcc,	%f6,	%f3
	fbule	%fcc0,	loop_3894
	ldsb	[%l7 + 0x76],	%i0
loop_3893:
	brgez,a	%l4,	loop_3895
	fbe	%fcc1,	loop_3896
loop_3894:
	movre	%l0,	0x3EF,	%o3
	fmovdne	%xcc,	%f5,	%f10
loop_3895:
	tle	%icc,	0x0
loop_3896:
	movcs	%xcc,	%i7,	%o5
	fba,a	%fcc3,	loop_3897
	fpsub16s	%f7,	%f6,	%f4
	ldsh	[%l7 + 0x74],	%g5
	std	%f8,	[%l7 + 0x60]
loop_3897:
	ldd	[%l7 + 0x08],	%f12
	edge16	%l2,	%g7,	%o4
	ldsw	[%l7 + 0x24],	%i4
	fmovdvs	%xcc,	%f14,	%f6
	bpos,a,pn	%icc,	loop_3898
	tg	%xcc,	0x6
	bvc	loop_3899
	array16	%g4,	%o7,	%o2
loop_3898:
	fbe,a	%fcc2,	loop_3900
	fmovs	%f10,	%f7
loop_3899:
	lduw	[%l7 + 0x5C],	%g2
	tcc	%xcc,	0x1
loop_3900:
	for	%f14,	%f12,	%f6
	fmovrde	%l5,	%f0,	%f4
	ble,a	%icc,	loop_3901
	fsrc2s	%f14,	%f15
	ldd	[%l7 + 0x50],	%f2
	fmovscc	%icc,	%f3,	%f14
loop_3901:
	fbge,a	%fcc3,	loop_3902
	fands	%f10,	%f0,	%f14
	fmovsneg	%icc,	%f6,	%f5
	edge32n	%g1,	%i2,	%o0
loop_3902:
	bgu,a,pt	%icc,	loop_3903
	edge16n	%o1,	%l6,	%l1
	nop
	setx loop_3904, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fpsub16s	%f12,	%f11,	%f9
loop_3903:
	fmovdle	%icc,	%f12,	%f8
	sdivx	%l3,	0x1FB4,	%i3
loop_3904:
	ldd	[%l7 + 0x40],	%f14
	fandnot1	%f14,	%f14,	%f12
	stx	%i6,	[%l7 + 0x38]
	tleu	%xcc,	0x2
	ldub	[%l7 + 0x73],	%i1
	fmovrsgz	%g6,	%f15,	%f3
	ldsh	[%l7 + 0x40],	%o6
	brgz,a	%g3,	loop_3905
	fandnot2s	%f11,	%f4,	%f5
	fcmpgt16	%f8,	%f4,	%i0
	smulcc	%l4,	0x0E57,	%l0
loop_3905:
	bcs,a	%icc,	loop_3906
	ldub	[%l7 + 0x21],	%o3
	ldsw	[%l7 + 0x54],	%i5
	fbul,a	%fcc2,	loop_3907
loop_3906:
	ldsw	[%l7 + 0x30],	%i7
	stx	%g5,	[%l7 + 0x10]
	ta	%xcc,	0x0
loop_3907:
	fbn	%fcc2,	loop_3908
	sth	%o5,	[%l7 + 0x6A]
	movne	%xcc,	%l2,	%g7
	fmovrslez	%o4,	%f15,	%f2
loop_3908:
	fmul8sux16	%f6,	%f0,	%f8
	ba	loop_3909
	fandnot1	%f6,	%f12,	%f10
	fpsub16s	%f11,	%f5,	%f3
	ldsw	[%l7 + 0x48],	%i4
loop_3909:
	fmovscc	%xcc,	%f11,	%f13
	fxnor	%f2,	%f2,	%f12
	and	%o7,	%g4,	%o2
	tgu	%xcc,	0x0
	fmovrdlez	%l5,	%f8,	%f6
	fmovdneg	%xcc,	%f5,	%f8
	tsubcctv	%g1,	%i2,	%g2
	stw	%o0,	[%l7 + 0x40]
	taddcc	%o1,	%l6,	%l3
	lduw	[%l7 + 0x24],	%i3
	stx	%l1,	[%l7 + 0x20]
	lduw	[%l7 + 0x20],	%i1
	ldub	[%l7 + 0x68],	%g6
	addc	%i6,	0x1C3B,	%o6
	ldsb	[%l7 + 0x5C],	%g3
	udivx	%l4,	0x0BB5,	%i0
	srlx	%o3,	%i5,	%l0
	ldsh	[%l7 + 0x42],	%i7
	ldub	[%l7 + 0x0E],	%o5
	fmovscc	%icc,	%f1,	%f9
	movre	%l2,	%g5,	%o4
	ld	[%l7 + 0x1C],	%f3
	ldsw	[%l7 + 0x3C],	%i4
	addcc	%o7,	%g7,	%g4
	lduh	[%l7 + 0x40],	%o2
	fpsub32	%f8,	%f0,	%f2
	andncc	%l5,	%g1,	%g2
	stw	%o0,	[%l7 + 0x78]
	array16	%i2,	%o1,	%l3
	srax	%l6,	0x12,	%i3
	fpadd16	%f6,	%f0,	%f14
	ldd	[%l7 + 0x60],	%f0
	fnot1s	%f9,	%f4
	lduh	[%l7 + 0x22],	%i1
	edge32n	%g6,	%i6,	%l1
	lduh	[%l7 + 0x18],	%o6
	ldsb	[%l7 + 0x79],	%g3
	stw	%l4,	[%l7 + 0x48]
	fmovdcc	%icc,	%f8,	%f1
	popc	0x1FC7,	%o3
	tg	%icc,	0x6
	movcc	%xcc,	%i0,	%l0
	lduw	[%l7 + 0x18],	%i5
	siam	0x5
	array16	%i7,	%o5,	%l2
	popc	0x008C,	%o4
	xor	%i4,	0x0698,	%o7
	edge8ln	%g5,	%g7,	%g4
	alignaddrl	%l5,	%o2,	%g1
	stb	%g2,	[%l7 + 0x24]
	movvc	%xcc,	%i2,	%o1
	ldsw	[%l7 + 0x4C],	%l3
	tgu	%icc,	0x6
	bge,a,pt	%xcc,	loop_3910
	fmovsa	%xcc,	%f9,	%f3
	tle	%xcc,	0x3
	te	%icc,	0x0
loop_3910:
	bg,a	%icc,	loop_3911
	fmovrsgez	%l6,	%f3,	%f10
	fbug,a	%fcc2,	loop_3912
	ldsw	[%l7 + 0x38],	%o0
loop_3911:
	brlz	%i1,	loop_3913
	smul	%i3,	%g6,	%i6
loop_3912:
	fmovsl	%icc,	%f3,	%f5
	brlz	%l1,	loop_3914
loop_3913:
	ldx	[%l7 + 0x48],	%g3
	stw	%l4,	[%l7 + 0x28]
	ldsw	[%l7 + 0x7C],	%o3
loop_3914:
	sdivcc	%i0,	0x01BD,	%l0
	fxors	%f1,	%f6,	%f5
	fbl,a	%fcc2,	loop_3915
	brgez	%o6,	loop_3916
	mulscc	%i7,	%i5,	%o5
	alignaddrl	%l2,	%i4,	%o7
loop_3915:
	bvs,a	loop_3917
loop_3916:
	fcmple32	%f12,	%f8,	%o4
	tn	%icc,	0x5
	fmul8x16au	%f1,	%f10,	%f12
loop_3917:
	fcmped	%fcc2,	%f10,	%f8
	lduw	[%l7 + 0x1C],	%g5
	movre	%g4,	0x1BA,	%l5
	ld	[%l7 + 0x5C],	%f4
	movn	%icc,	%o2,	%g1
	fpadd32	%f2,	%f10,	%f0
	movn	%icc,	%g2,	%i2
	andn	%o1,	%l3,	%g7
	fmovdvs	%xcc,	%f11,	%f0
	udiv	%o0,	0x0F70,	%l6
	sllx	%i1,	%g6,	%i3
	xnor	%i6,	0x130B,	%l1
	faligndata	%f0,	%f0,	%f10
	edge8ln	%g3,	%o3,	%l4
	fbul	%fcc3,	loop_3918
	fmovdleu	%xcc,	%f3,	%f8
	fpadd32s	%f9,	%f1,	%f14
	fmovdvs	%icc,	%f15,	%f15
loop_3918:
	lduw	[%l7 + 0x78],	%i0
	ldsb	[%l7 + 0x41],	%l0
	edge8ln	%i7,	%i5,	%o6
	fmovdge	%icc,	%f8,	%f11
	stw	%l2,	[%l7 + 0x3C]
	fblg,a	%fcc2,	loop_3919
	ldsh	[%l7 + 0x46],	%i4
	sth	%o7,	[%l7 + 0x6E]
	addc	%o5,	0x01E0,	%g5
loop_3919:
	tneg	%xcc,	0x4
	ldx	[%l7 + 0x78],	%o4
	movn	%icc,	%g4,	%l5
	bcs,pn	%xcc,	loop_3920
	fmovrsgz	%o2,	%f13,	%f4
	st	%f1,	[%l7 + 0x3C]
	fmovrdlez	%g2,	%f12,	%f10
loop_3920:
	sethi	0x1AF2,	%i2
	fnands	%f10,	%f1,	%f7
	lduw	[%l7 + 0x54],	%o1
	ldsw	[%l7 + 0x2C],	%g1
	bl	loop_3921
	fnot1s	%f14,	%f8
	fmovrsgez	%l3,	%f15,	%f4
	movl	%icc,	%g7,	%o0
loop_3921:
	ldsh	[%l7 + 0x62],	%l6
	edge16l	%i1,	%g6,	%i3
	ldub	[%l7 + 0x2D],	%i6
	std	%f0,	[%l7 + 0x58]
	alignaddr	%l1,	%g3,	%o3
	sethi	0x04DD,	%i0
	fnot1	%f14,	%f12
	movcs	%xcc,	%l0,	%i7
	ldx	[%l7 + 0x08],	%i5
	tpos	%xcc,	0x3
	fnot1	%f4,	%f10
	fnor	%f10,	%f14,	%f0
	or	%l4,	%o6,	%i4
	srl	%o7,	0x11,	%o5
	fbug	%fcc1,	loop_3922
	sth	%g5,	[%l7 + 0x20]
	fcmps	%fcc2,	%f12,	%f13
	siam	0x1
loop_3922:
	fcmple16	%f0,	%f10,	%o4
	ldx	[%l7 + 0x40],	%l2
	ldsh	[%l7 + 0x7E],	%g4
	movgu	%icc,	%o2,	%l5
	movl	%icc,	%i2,	%o1
	faligndata	%f10,	%f10,	%f12
	fmovrdgz	%g1,	%f6,	%f6
	movleu	%icc,	%g2,	%l3
	or	%g7,	%o0,	%l6
	fmuld8sux16	%f6,	%f0,	%f12
	popc	%i1,	%g6
	fornot1s	%f14,	%f15,	%f8
	taddcctv	%i3,	0x113D,	%l1
	fmovsle	%icc,	%f11,	%f5
	edge16ln	%i6,	%g3,	%o3
	lduw	[%l7 + 0x78],	%i0
	subcc	%l0,	%i5,	%l4
	fmovde	%icc,	%f4,	%f8
	fmovscs	%xcc,	%f9,	%f4
	ldsb	[%l7 + 0x3B],	%i7
	brgez	%i4,	loop_3923
	call	loop_3924
	stw	%o7,	[%l7 + 0x30]
	andcc	%o6,	0x18E5,	%g5
loop_3923:
	edge16	%o5,	%l2,	%o4
loop_3924:
	umul	%g4,	0x1AA7,	%l5
	fmovsvs	%icc,	%f12,	%f11
	fcmpeq32	%f0,	%f6,	%o2
	sdivx	%o1,	0x1B4C,	%g1
	addc	%i2,	%l3,	%g7
	lduh	[%l7 + 0x62],	%o0
	ldsw	[%l7 + 0x28],	%l6
	tl	%icc,	0x0
	ldsw	[%l7 + 0x60],	%i1
	bge,a	loop_3925
	ldsh	[%l7 + 0x10],	%g6
	ldx	[%l7 + 0x28],	%g2
	movrlz	%i3,	0x23C,	%l1
loop_3925:
	edge16	%i6,	%g3,	%o3
	movne	%icc,	%i0,	%i5
	fornot2s	%f8,	%f2,	%f4
	ldub	[%l7 + 0x5C],	%l4
	fmovdvc	%xcc,	%f3,	%f10
	umul	%l0,	0x048C,	%i4
	ldub	[%l7 + 0x31],	%o7
	fmovrsgez	%o6,	%f10,	%f12
	ldx	[%l7 + 0x28],	%g5
	movneg	%icc,	%i7,	%o5
	fmovrdlez	%o4,	%f0,	%f0
	fxnor	%f0,	%f2,	%f2
	add	%l2,	%g4,	%o2
	mulscc	%l5,	0x01AB,	%o1
	lduh	[%l7 + 0x46],	%g1
	std	%f2,	[%l7 + 0x18]
	fmovdvs	%icc,	%f3,	%f3
	andn	%i2,	%g7,	%o0
	lduw	[%l7 + 0x20],	%l3
	fcmpeq16	%f2,	%f4,	%i1
	andn	%l6,	0x0B75,	%g6
	brgez,a	%g2,	loop_3926
	fmul8sux16	%f0,	%f8,	%f2
	stw	%l1,	[%l7 + 0x70]
	fmovdcc	%xcc,	%f12,	%f11
loop_3926:
	lduw	[%l7 + 0x5C],	%i6
	fornot2s	%f9,	%f7,	%f15
	stw	%g3,	[%l7 + 0x3C]
	lduw	[%l7 + 0x6C],	%i3
	fcmps	%fcc3,	%f10,	%f7
	fzero	%f14
	fmovd	%f0,	%f10
	udiv	%i0,	0x036E,	%i5
	fmovdne	%xcc,	%f7,	%f14
	fmovdge	%xcc,	%f5,	%f3
	sth	%l4,	[%l7 + 0x18]
	udiv	%l0,	0x15BF,	%i4
	ldsw	[%l7 + 0x50],	%o7
	ldd	[%l7 + 0x18],	%f10
	ldsb	[%l7 + 0x2D],	%o3
	fornot1	%f4,	%f10,	%f10
	ldd	[%l7 + 0x40],	%f2
	movgu	%xcc,	%o6,	%g5
	ldsb	[%l7 + 0x78],	%i7
	st	%f6,	[%l7 + 0x34]
	fbug	%fcc2,	loop_3927
	lduh	[%l7 + 0x1A],	%o5
	tle	%icc,	0x0
	stw	%o4,	[%l7 + 0x20]
loop_3927:
	std	%f4,	[%l7 + 0x20]
	ble,pt	%icc,	loop_3928
	tg	%xcc,	0x7
	fbug,a	%fcc2,	loop_3929
	std	%f14,	[%l7 + 0x58]
loop_3928:
	ble	%xcc,	loop_3930
	fmovdn	%xcc,	%f1,	%f11
loop_3929:
	ta	%xcc,	0x2
	smulcc	%l2,	%o2,	%g4
loop_3930:
	taddcc	%o1,	%g1,	%i2
	std	%f6,	[%l7 + 0x50]
	ld	[%l7 + 0x14],	%f13
	fone	%f0
	ldsw	[%l7 + 0x7C],	%g7
	ldsh	[%l7 + 0x12],	%o0
	std	%f8,	[%l7 + 0x58]
	ldsb	[%l7 + 0x79],	%l5
	brlez,a	%l3,	loop_3931
	lduw	[%l7 + 0x78],	%l6
	fnot1s	%f11,	%f5
	fcmps	%fcc1,	%f4,	%f0
loop_3931:
	movvc	%icc,	%i1,	%g6
	ldsh	[%l7 + 0x0C],	%l1
	andncc	%i6,	%g2,	%i3
	fmovs	%f4,	%f11
	movneg	%icc,	%i0,	%g3
	fnegs	%f12,	%f4
	fpsub16	%f8,	%f12,	%f14
	fmovsl	%xcc,	%f13,	%f3
	edge16ln	%l4,	%i5,	%l0
	fmovdl	%xcc,	%f7,	%f10
	sdivx	%i4,	0x19AB,	%o7
	lduw	[%l7 + 0x28],	%o6
	sra	%g5,	0x1B,	%o3
	movn	%icc,	%i7,	%o5
	fbne	%fcc0,	loop_3932
	fpadd32	%f10,	%f0,	%f0
	ldub	[%l7 + 0x48],	%l2
	bn,a	loop_3933
loop_3932:
	movneg	%icc,	%o4,	%o2
	fmovrdgz	%g4,	%f12,	%f6
	tvc	%icc,	0x7
loop_3933:
	fone	%f12
	fpsub16s	%f3,	%f2,	%f11
	fmovda	%icc,	%f7,	%f14
	tcc	%xcc,	0x3
	tne	%icc,	0x7
	bge	loop_3934
	movl	%xcc,	%o1,	%i2
	ldsh	[%l7 + 0x30],	%g7
	fmul8x16	%f13,	%f14,	%f2
loop_3934:
	fblg,a	%fcc3,	loop_3935
	st	%f5,	[%l7 + 0x44]
	fnot1s	%f3,	%f6
	sra	%g1,	0x14,	%o0
loop_3935:
	fble	%fcc3,	loop_3936
	smul	%l3,	%l6,	%i1
	fmovrdlez	%g6,	%f0,	%f0
	movle	%icc,	%l1,	%l5
loop_3936:
	siam	0x1
	fmovsgu	%xcc,	%f6,	%f8
	fmovrsgz	%g2,	%f10,	%f5
	fbule,a	%fcc1,	loop_3937
	ldd	[%l7 + 0x58],	%f14
	popc	%i6,	%i0
	fxor	%f6,	%f4,	%f10
loop_3937:
	fmovdcs	%xcc,	%f4,	%f1
	fmul8x16au	%f14,	%f11,	%f14
	ldsh	[%l7 + 0x18],	%i3
	udivx	%g3,	0x1567,	%l4
	ld	[%l7 + 0x0C],	%f7
	alignaddrl	%l0,	%i5,	%i4
	fcmpne16	%f12,	%f8,	%o6
	fmovsneg	%xcc,	%f8,	%f11
	stx	%g5,	[%l7 + 0x28]
	subccc	%o7,	0x12AE,	%o3
	fpadd32	%f2,	%f14,	%f8
	nop
	setx loop_3938, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fand	%f10,	%f10,	%f0
	orncc	%i7,	0x1BF8,	%o5
	fpackfix	%f14,	%f2
loop_3938:
	sth	%l2,	[%l7 + 0x42]
	brlez	%o2,	loop_3939
	fsrc2	%f14,	%f10
	orncc	%o4,	%o1,	%i2
	bpos,a,pn	%icc,	loop_3940
loop_3939:
	fmovscc	%icc,	%f7,	%f0
	tgu	%xcc,	0x0
	ldd	[%l7 + 0x28],	%f4
loop_3940:
	fxor	%f14,	%f4,	%f10
	sdiv	%g7,	0x085C,	%g1
	brlz	%o0,	loop_3941
	udivcc	%g4,	0x1CC6,	%l6
	st	%f15,	[%l7 + 0x2C]
	movcc	%xcc,	%i1,	%l3
loop_3941:
	sra	%l1,	0x0D,	%l5
	lduw	[%l7 + 0x70],	%g2
	lduw	[%l7 + 0x60],	%g6
	lduh	[%l7 + 0x44],	%i0
	addcc	%i3,	0x1C7F,	%g3
	fabss	%f1,	%f6
	fxor	%f4,	%f0,	%f12
	fsrc1	%f8,	%f0
	ldsw	[%l7 + 0x54],	%l4
	edge16	%l0,	%i6,	%i4
	movrne	%i5,	%g5,	%o6
	andncc	%o7,	%o3,	%i7
	fnot2	%f2,	%f12
	stx	%o5,	[%l7 + 0x48]
	ldsh	[%l7 + 0x4C],	%l2
	add	%o2,	0x00B1,	%o1
	bn,a,pn	%icc,	loop_3942
	fmul8ulx16	%f14,	%f10,	%f14
	std	%f12,	[%l7 + 0x48]
	ld	[%l7 + 0x1C],	%f1
loop_3942:
	call	loop_3943
	bshuffle	%f2,	%f0,	%f2
	ldsh	[%l7 + 0x6C],	%i2
	fbg,a	%fcc2,	loop_3944
loop_3943:
	fmovdpos	%xcc,	%f10,	%f13
	orcc	%g7,	%g1,	%o0
	lduw	[%l7 + 0x2C],	%g4
loop_3944:
	sub	%o4,	%l6,	%l3
	fornot2s	%f11,	%f13,	%f15
	lduw	[%l7 + 0x34],	%i1
	fand	%f6,	%f4,	%f0
	fpsub16	%f2,	%f8,	%f12
	fone	%f4
	ldub	[%l7 + 0x63],	%l1
	mulscc	%l5,	0x15F0,	%g2
	sdivcc	%i0,	0x1ADF,	%g6
	fnegd	%f0,	%f8
	te	%icc,	0x2
	array32	%i3,	%g3,	%l0
	fmuld8ulx16	%f2,	%f13,	%f4
	fbu	%fcc1,	loop_3945
	ldsb	[%l7 + 0x0E],	%l4
	fnand	%f14,	%f8,	%f10
	fpadd32s	%f4,	%f15,	%f12
loop_3945:
	fbul,a	%fcc1,	loop_3946
	fmovscc	%xcc,	%f4,	%f2
	bcc	%icc,	loop_3947
	fmovdne	%icc,	%f6,	%f10
loop_3946:
	ldsb	[%l7 + 0x2F],	%i6
	fmovdle	%icc,	%f5,	%f8
loop_3947:
	fcmple32	%f8,	%f6,	%i5
	fbge	%fcc0,	loop_3948
	mova	%xcc,	%i4,	%o6
	fornot1s	%f11,	%f8,	%f7
	fones	%f11
loop_3948:
	fbg	%fcc0,	loop_3949
	fxors	%f4,	%f6,	%f13
	fnegd	%f6,	%f6
	fblg	%fcc3,	loop_3950
loop_3949:
	st	%f13,	[%l7 + 0x68]
	tge	%icc,	0x3
	fmovsne	%xcc,	%f9,	%f12
loop_3950:
	tvc	%icc,	0x4
	popc	0x17FC,	%g5
	sra	%o3,	%o7,	%o5
	fnor	%f6,	%f14,	%f10
	ld	[%l7 + 0x2C],	%f2
	andcc	%i7,	%o2,	%o1
	lduh	[%l7 + 0x5A],	%i2
	bvs,pn	%xcc,	loop_3951
	subcc	%g7,	%g1,	%o0
	taddcctv	%l2,	0x037A,	%g4
	fmovrsne	%l6,	%f9,	%f1
loop_3951:
	fpsub16s	%f12,	%f14,	%f3
	ldd	[%l7 + 0x30],	%f4
	fornot1	%f4,	%f4,	%f10
	std	%f12,	[%l7 + 0x08]
	ldx	[%l7 + 0x20],	%l3
	sdivx	%i1,	0x1EB3,	%o4
	xorcc	%l1,	0x1383,	%l5
	bvc,a	loop_3952
	udivx	%g2,	0x1D30,	%g6
	fabsd	%f8,	%f10
	ldub	[%l7 + 0x6C],	%i0
loop_3952:
	ld	[%l7 + 0x24],	%f7
	fnot2s	%f14,	%f1
	fmovscs	%icc,	%f0,	%f10
	lduw	[%l7 + 0x0C],	%i3
	tle	%xcc,	0x3
	fsrc2	%f2,	%f2
	fba,a	%fcc0,	loop_3953
	fpsub16s	%f0,	%f11,	%f9
	mulscc	%g3,	%l4,	%i6
	edge16l	%l0,	%i4,	%o6
loop_3953:
	alignaddrl	%i5,	%g5,	%o3
	brgz	%o7,	loop_3954
	fmovrslez	%o5,	%f3,	%f14
	fpack32	%f6,	%f0,	%f14
	fpack16	%f8,	%f2
loop_3954:
	edge16l	%i7,	%o2,	%i2
	fmovsneg	%icc,	%f10,	%f8
	edge32ln	%g7,	%o1,	%g1
	smulcc	%l2,	0x17BD,	%g4
	stx	%o0,	[%l7 + 0x68]
	ldsh	[%l7 + 0x14],	%l3
	te	%icc,	0x5
	movg	%xcc,	%i1,	%l6
	stw	%l1,	[%l7 + 0x08]
	fcmpes	%fcc0,	%f10,	%f11
	ldd	[%l7 + 0x70],	%f2
	movcc	%xcc,	%o4,	%g2
	nop
	setx loop_3955, %l0, %l1
	jmpl %l1, %g6
	bgu,a	%xcc,	loop_3956
	ldx	[%l7 + 0x70],	%i0
	fbue,a	%fcc0,	loop_3957
loop_3955:
	fcmpeq16	%f2,	%f14,	%l5
loop_3956:
	sllx	%g3,	0x05,	%i3
	fble	%fcc2,	loop_3958
loop_3957:
	movrgz	%i6,	%l0,	%l4
	fmovrslez	%o6,	%f11,	%f12
	fpsub32	%f10,	%f6,	%f4
loop_3958:
	stb	%i5,	[%l7 + 0x13]
	fmovdneg	%icc,	%f15,	%f5
	fbne	%fcc1,	loop_3959
	fmovsle	%icc,	%f2,	%f1
	tcc	%icc,	0x4
	and	%g5,	0x0129,	%o3
loop_3959:
	fbn	%fcc2,	loop_3960
	alignaddr	%i4,	%o7,	%o5
	fmuld8ulx16	%f11,	%f14,	%f12
	st	%f12,	[%l7 + 0x40]
loop_3960:
	st	%f5,	[%l7 + 0x28]
	fmul8x16al	%f1,	%f14,	%f6
	array32	%o2,	%i2,	%i7
	smul	%o1,	0x157C,	%g7
	taddcctv	%l2,	0x1391,	%g1
	xorcc	%g4,	%o0,	%i1
	st	%f9,	[%l7 + 0x40]
	std	%f10,	[%l7 + 0x08]
	fcmpes	%fcc0,	%f6,	%f13
	ldd	[%l7 + 0x78],	%f12
	ldd	[%l7 + 0x70],	%f12
	srax	%l3,	%l1,	%l6
	fmovrslz	%g2,	%f3,	%f7
	popc	%g6,	%i0
	fmuld8ulx16	%f4,	%f8,	%f0
	ldub	[%l7 + 0x35],	%l5
	ldub	[%l7 + 0x26],	%o4
	fmovdleu	%icc,	%f9,	%f13
	stb	%g3,	[%l7 + 0x7A]
	xnorcc	%i3,	0x14AC,	%i6
	fpadd16	%f8,	%f4,	%f0
	fzero	%f8
	movcc	%icc,	%l4,	%o6
	fmovs	%f12,	%f12
	move	%icc,	%l0,	%i5
	fand	%f4,	%f10,	%f10
	ld	[%l7 + 0x70],	%f10
	sth	%g5,	[%l7 + 0x30]
	fmovrdgez	%o3,	%f4,	%f8
	fbul,a	%fcc1,	loop_3961
	fandnot1s	%f11,	%f11,	%f1
	call	loop_3962
	ldsh	[%l7 + 0x38],	%i4
loop_3961:
	fabsd	%f0,	%f10
	fabss	%f6,	%f1
loop_3962:
	fmovsne	%icc,	%f13,	%f15
	taddcctv	%o7,	%o5,	%o2
	fmovdgu	%xcc,	%f7,	%f4
	fmovsgu	%xcc,	%f1,	%f0
	subcc	%i7,	%o1,	%i2
	xnor	%g7,	%l2,	%g1
	stb	%g4,	[%l7 + 0x22]
	fmuld8sux16	%f9,	%f11,	%f6
	fmovrslez	%o0,	%f8,	%f3
	ldsw	[%l7 + 0x40],	%l3
	fmovrsne	%i1,	%f1,	%f10
	st	%f2,	[%l7 + 0x14]
	ldsw	[%l7 + 0x24],	%l1
	stw	%l6,	[%l7 + 0x44]
	ldsh	[%l7 + 0x2A],	%g2
	fbug,a	%fcc1,	loop_3963
	ldsh	[%l7 + 0x6A],	%g6
	sth	%l5,	[%l7 + 0x72]
	nop
	setx loop_3964, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_3963:
	fpmerge	%f3,	%f1,	%f2
	movrgz	%o4,	%i0,	%i3
	lduw	[%l7 + 0x14],	%g3
loop_3964:
	movpos	%xcc,	%l4,	%o6
	stw	%l0,	[%l7 + 0x08]
	fbne	%fcc1,	loop_3965
	fbu	%fcc3,	loop_3966
	add	%i5,	%i6,	%o3
	edge8ln	%i4,	%o7,	%g5
loop_3965:
	bleu,pt	%xcc,	loop_3967
loop_3966:
	or	%o5,	%i7,	%o1
	st	%f3,	[%l7 + 0x44]
	fbu,a	%fcc3,	loop_3968
loop_3967:
	fmovrdne	%o2,	%f14,	%f0
	st	%f8,	[%l7 + 0x40]
	edge32n	%g7,	%i2,	%g1
loop_3968:
	tle	%xcc,	0x6
	nop
	setx loop_3969, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stw	%g4,	[%l7 + 0x5C]
	tl	%icc,	0x6
	stx	%o0,	[%l7 + 0x60]
loop_3969:
	orcc	%l3,	0x0C3F,	%l2
	std	%f4,	[%l7 + 0x70]
	fcmpgt16	%f0,	%f2,	%l1
	fbl,a	%fcc2,	loop_3970
	fcmpne16	%f10,	%f2,	%l6
	fpack16	%f14,	%f5
	ld	[%l7 + 0x4C],	%f8
loop_3970:
	addcc	%g2,	%i1,	%l5
	fmovsge	%icc,	%f0,	%f7
	brgz	%o4,	loop_3971
	bneg,a,pt	%xcc,	loop_3972
	bneg,pt	%xcc,	loop_3973
	movcc	%icc,	%i0,	%i3
loop_3971:
	fabsd	%f4,	%f2
loop_3972:
	lduw	[%l7 + 0x10],	%g3
loop_3973:
	ldx	[%l7 + 0x10],	%g6
	std	%f4,	[%l7 + 0x28]
	sdiv	%o6,	0x0806,	%l0
	stx	%l4,	[%l7 + 0x28]
	fmovsl	%icc,	%f2,	%f11
	fbne	%fcc3,	loop_3974
	tle	%icc,	0x1
	edge32	%i5,	%i6,	%i4
	fbu	%fcc0,	loop_3975
loop_3974:
	st	%f2,	[%l7 + 0x08]
	fpsub32s	%f3,	%f14,	%f15
	fmovdn	%xcc,	%f7,	%f11
loop_3975:
	stx	%o3,	[%l7 + 0x28]
	fxnor	%f14,	%f6,	%f0
	andn	%g5,	0x01BC,	%o5
	fcmpgt32	%f2,	%f14,	%i7
	fnot2s	%f10,	%f6
	fmovsgu	%xcc,	%f5,	%f11
	fbg	%fcc0,	loop_3976
	brnz	%o1,	loop_3977
	fmovrdlez	%o2,	%f0,	%f2
	ldd	[%l7 + 0x38],	%f6
loop_3976:
	fmovrde	%g7,	%f12,	%f14
loop_3977:
	movrgz	%o7,	%i2,	%g4
	lduh	[%l7 + 0x48],	%o0
	tneg	%xcc,	0x2
	ldx	[%l7 + 0x70],	%l3
	tsubcctv	%g1,	%l2,	%l6
	stx	%g2,	[%l7 + 0x40]
	fxnor	%f0,	%f0,	%f6
	ldsh	[%l7 + 0x34],	%l1
	brlz,a	%i1,	loop_3978
	sth	%l5,	[%l7 + 0x4C]
	fmovse	%xcc,	%f9,	%f1
	ldsw	[%l7 + 0x18],	%o4
loop_3978:
	ldsb	[%l7 + 0x1F],	%i3
	fmuld8sux16	%f4,	%f0,	%f10
	st	%f3,	[%l7 + 0x48]
	ld	[%l7 + 0x34],	%f3
	stx	%i0,	[%l7 + 0x10]
	stw	%g6,	[%l7 + 0x60]
	fmovdvc	%xcc,	%f8,	%f9
	movcc	%icc,	%g3,	%o6
	fbn,a	%fcc2,	loop_3979
	be,a	%xcc,	loop_3980
	udiv	%l4,	0x18AB,	%i5
	subcc	%l0,	0x1379,	%i4
loop_3979:
	ldsh	[%l7 + 0x2E],	%i6
loop_3980:
	fpsub16s	%f6,	%f9,	%f5
	stw	%g5,	[%l7 + 0x10]
	ldsb	[%l7 + 0x0C],	%o5
	fbe	%fcc3,	loop_3981
	ldsh	[%l7 + 0x68],	%i7
	movle	%icc,	%o1,	%o3
	movrlz	%g7,	%o7,	%i2
loop_3981:
	fmul8sux16	%f8,	%f8,	%f8
	ldd	[%l7 + 0x10],	%f8
	edge16ln	%g4,	%o0,	%l3
	fabss	%f8,	%f0
	ldx	[%l7 + 0x68],	%o2
	nop
	setx loop_3982, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	tgu	%xcc,	0x6
	fmovrde	%g1,	%f2,	%f2
	st	%f7,	[%l7 + 0x18]
loop_3982:
	sra	%l6,	0x16,	%l2
	add	%l1,	0x05EA,	%i1
	xor	%g2,	0x1124,	%l5
	lduw	[%l7 + 0x18],	%o4
	srlx	%i3,	0x18,	%g6
	brnz	%i0,	loop_3983
	brlez,a	%o6,	loop_3984
	tvc	%icc,	0x1
	std	%f2,	[%l7 + 0x60]
loop_3983:
	sth	%g3,	[%l7 + 0x5C]
loop_3984:
	movl	%icc,	%i5,	%l0
	ldsw	[%l7 + 0x0C],	%i4
	ldub	[%l7 + 0x33],	%i6
	pdist	%f14,	%f0,	%f12
	tne	%xcc,	0x0
	fmovdl	%xcc,	%f0,	%f11
	ldub	[%l7 + 0x26],	%l4
	ldsh	[%l7 + 0x28],	%g5
	tl	%xcc,	0x7
	stb	%i7,	[%l7 + 0x21]
	nop
	setx loop_3985, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ldsb	[%l7 + 0x55],	%o5
	fone	%f6
	edge8l	%o1,	%o3,	%g7
loop_3985:
	movvc	%icc,	%o7,	%g4
	lduh	[%l7 + 0x42],	%o0
	st	%f7,	[%l7 + 0x7C]
	bvs	%icc,	loop_3986
	brlz,a	%i2,	loop_3987
	lduw	[%l7 + 0x38],	%l3
	brz	%g1,	loop_3988
loop_3986:
	ldsh	[%l7 + 0x16],	%l6
loop_3987:
	ldx	[%l7 + 0x08],	%o2
	fbne,a	%fcc2,	loop_3989
loop_3988:
	bgu,pn	%xcc,	loop_3990
	ld	[%l7 + 0x5C],	%f11
	ldsh	[%l7 + 0x08],	%l2
loop_3989:
	fmul8x16au	%f14,	%f4,	%f0
loop_3990:
	popc	%i1,	%l1
	fpack32	%f0,	%f8,	%f2
	ble,a	%icc,	loop_3991
	bne	%icc,	loop_3992
	lduh	[%l7 + 0x62],	%g2
	fbe	%fcc3,	loop_3993
loop_3991:
	tgu	%xcc,	0x4
loop_3992:
	sub	%l5,	0x0E9C,	%o4
	fbug	%fcc0,	loop_3994
loop_3993:
	fmovdne	%icc,	%f5,	%f4
	tg	%xcc,	0x6
	edge32n	%g6,	%i0,	%i3
loop_3994:
	ldsb	[%l7 + 0x2D],	%o6
	ld	[%l7 + 0x0C],	%f9
	fcmped	%fcc0,	%f4,	%f6
	andcc	%g3,	0x039C,	%l0
	sth	%i5,	[%l7 + 0x1E]
	ble,a	%xcc,	loop_3995
	fmovdne	%icc,	%f15,	%f0
	fcmpes	%fcc3,	%f11,	%f4
	sub	%i4,	%i6,	%g5
loop_3995:
	fmovrde	%l4,	%f2,	%f14
	bvs	%icc,	loop_3996
	ldsb	[%l7 + 0x6B],	%i7
	bl,a,pt	%xcc,	loop_3997
	umul	%o5,	%o1,	%g7
loop_3996:
	ldsw	[%l7 + 0x74],	%o3
	fmovspos	%xcc,	%f8,	%f4
loop_3997:
	lduw	[%l7 + 0x10],	%g4
	fpack32	%f4,	%f14,	%f0
	stb	%o0,	[%l7 + 0x40]
	fmovsleu	%xcc,	%f0,	%f14
	fmovsvc	%icc,	%f2,	%f7
	fmul8ulx16	%f10,	%f12,	%f0
	fsrc2	%f8,	%f14
	std	%f2,	[%l7 + 0x70]
	tsubcctv	%i2,	0x025B,	%o7
	tgu	%xcc,	0x1
	fble	%fcc2,	loop_3998
	ld	[%l7 + 0x5C],	%f6
	fmovda	%xcc,	%f1,	%f14
	ldsb	[%l7 + 0x23],	%g1
loop_3998:
	fnand	%f6,	%f10,	%f10
	sth	%l3,	[%l7 + 0x62]
	bne,a,pt	%xcc,	loop_3999
	add	%o2,	%l6,	%i1
	fcmpne16	%f6,	%f14,	%l2
	srax	%l1,	%g2,	%o4
loop_3999:
	std	%f12,	[%l7 + 0x28]
	fpmerge	%f8,	%f2,	%f8
	ldd	[%l7 + 0x38],	%f6
	bne	%icc,	loop_4000
	tg	%xcc,	0x7
	bcs,a	%xcc,	loop_4001
	fmul8x16	%f9,	%f14,	%f4
loop_4000:
	alignaddr	%g6,	%l5,	%i3
	addcc	%i0,	%o6,	%l0
loop_4001:
	fmovsvc	%icc,	%f9,	%f10
	fmovda	%xcc,	%f8,	%f13
	fpack16	%f2,	%f11
	fbn	%fcc3,	loop_4002
	fpadd16	%f8,	%f10,	%f12
	fmovscc	%icc,	%f10,	%f11
	or	%g3,	%i4,	%i5
loop_4002:
	fandnot1	%f6,	%f8,	%f10
	movrgz	%i6,	0x016,	%g5
	fmovsvc	%xcc,	%f14,	%f15
	tvc	%icc,	0x0
	fcmpne16	%f6,	%f14,	%l4
	fnors	%f5,	%f14,	%f6
	fmovdl	%icc,	%f2,	%f14
	sdivcc	%o5,	0x1CC7,	%i7
	fmovsleu	%xcc,	%f9,	%f2
	movne	%xcc,	%g7,	%o3
	tcs	%xcc,	0x4
	bl,a	loop_4003
	stx	%g4,	[%l7 + 0x30]
	fcmpd	%fcc0,	%f8,	%f2
	fbuge,a	%fcc3,	loop_4004
loop_4003:
	movvs	%xcc,	%o0,	%i2
	movgu	%icc,	%o7,	%g1
	fmovdpos	%icc,	%f6,	%f6
loop_4004:
	brgez	%o1,	loop_4005
	fnegs	%f13,	%f6
	sub	%l3,	0x19DD,	%o2
	fbul,a	%fcc1,	loop_4006
loop_4005:
	ld	[%l7 + 0x40],	%f15
	fornot2	%f8,	%f12,	%f10
	std	%f10,	[%l7 + 0x40]
loop_4006:
	lduh	[%l7 + 0x5C],	%i1
	ble,pt	%xcc,	loop_4007
	tle	%icc,	0x1
	ldx	[%l7 + 0x58],	%l6
	fmovse	%icc,	%f9,	%f14
loop_4007:
	fcmpes	%fcc0,	%f14,	%f7
	array8	%l1,	%l2,	%g2
	fmovsa	%xcc,	%f5,	%f10
	bvs,pt	%xcc,	loop_4008
	fpackfix	%f6,	%f13
	fnot2s	%f2,	%f13
	lduw	[%l7 + 0x68],	%g6
loop_4008:
	lduh	[%l7 + 0x4C],	%l5
	st	%f9,	[%l7 + 0x5C]
	fmovrdgz	%i3,	%f14,	%f14
	std	%f10,	[%l7 + 0x10]
	sth	%i0,	[%l7 + 0x4A]
	fbg,a	%fcc3,	loop_4009
	fcmpeq16	%f2,	%f8,	%o6
	fmovde	%xcc,	%f0,	%f9
	fpsub16s	%f14,	%f9,	%f14
loop_4009:
	std	%f6,	[%l7 + 0x68]
	ld	[%l7 + 0x4C],	%f14
	bne,a	%xcc,	loop_4010
	andn	%o4,	0x186D,	%g3
	fmovrsgz	%i4,	%f1,	%f8
	edge32ln	%i5,	%i6,	%l0
loop_4010:
	stw	%l4,	[%l7 + 0x54]
	fbu	%fcc0,	loop_4011
	ldd	[%l7 + 0x70],	%f2
	edge16ln	%o5,	%g5,	%g7
	fbuge,a	%fcc0,	loop_4012
loop_4011:
	fmovde	%icc,	%f3,	%f0
	stb	%i7,	[%l7 + 0x61]
	fpsub16s	%f2,	%f13,	%f8
loop_4012:
	bshuffle	%f6,	%f10,	%f12
	stb	%o3,	[%l7 + 0x18]
	sth	%g4,	[%l7 + 0x76]
	fmovsge	%icc,	%f0,	%f0
	sth	%o0,	[%l7 + 0x1C]
	sdivcc	%o7,	0x0854,	%g1
	edge8l	%i2,	%l3,	%o2
	ldd	[%l7 + 0x38],	%f10
	tcs	%icc,	0x0
	bne,a	loop_4013
	brgz,a	%i1,	loop_4014
	movleu	%xcc,	%o1,	%l1
	fbule	%fcc2,	loop_4015
loop_4013:
	fcmpne32	%f14,	%f2,	%l6
loop_4014:
	stw	%l2,	[%l7 + 0x44]
	bneg,a,pn	%icc,	loop_4016
loop_4015:
	bn	loop_4017
	sra	%g6,	%g2,	%l5
	fmovrdlez	%i0,	%f2,	%f4
loop_4016:
	brgz,a	%o6,	loop_4018
loop_4017:
	pdist	%f14,	%f12,	%f14
	fbne,a	%fcc3,	loop_4019
	std	%f8,	[%l7 + 0x58]
loop_4018:
	fandnot2	%f6,	%f14,	%f10
	edge16	%o4,	%i3,	%g3
loop_4019:
	ldub	[%l7 + 0x30],	%i5
	movrgez	%i4,	0x0BE,	%l0
	fcmpd	%fcc2,	%f12,	%f10
	bl	loop_4020
	lduw	[%l7 + 0x20],	%l4
	fpack16	%f4,	%f15
	array16	%o5,	%g5,	%g7
loop_4020:
	bgu,a	%xcc,	loop_4021
	lduw	[%l7 + 0x48],	%i7
	st	%f8,	[%l7 + 0x30]
	brlz	%o3,	loop_4022
loop_4021:
	mulscc	%g4,	0x1F3B,	%o0
	ldub	[%l7 + 0x61],	%i6
	fpsub32s	%f9,	%f9,	%f7
loop_4022:
	fbu,a	%fcc3,	loop_4023
	fpsub32s	%f13,	%f1,	%f5
	orncc	%o7,	0x11D7,	%i2
	sth	%l3,	[%l7 + 0x64]
loop_4023:
	fmovdle	%icc,	%f2,	%f3
	sth	%o2,	[%l7 + 0x3A]
	ldsw	[%l7 + 0x48],	%g1
	fble,a	%fcc2,	loop_4024
	fmovdvs	%xcc,	%f10,	%f14
	fpadd16	%f0,	%f6,	%f10
	or	%i1,	%l1,	%l6
loop_4024:
	nop
	setx loop_4025, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovs	%f11,	%f12
	fpmerge	%f0,	%f10,	%f8
	brz,a	%l2,	loop_4026
loop_4025:
	stb	%o1,	[%l7 + 0x73]
	bgu,a,pt	%icc,	loop_4027
	bcs	%xcc,	loop_4028
loop_4026:
	ldx	[%l7 + 0x60],	%g6
	sll	%l5,	0x01,	%g2
loop_4027:
	fands	%f2,	%f12,	%f14
loop_4028:
	subc	%o6,	0x1C3B,	%o4
	fcmpeq16	%f14,	%f2,	%i0
	tge	%icc,	0x5
	stw	%i3,	[%l7 + 0x60]
	fcmped	%fcc0,	%f2,	%f14
	orncc	%g3,	0x14B9,	%i5
	movrlz	%l0,	%i4,	%l4
	tg	%icc,	0x7
	bl	loop_4029
	std	%f6,	[%l7 + 0x30]
	fmovse	%icc,	%f8,	%f8
	ldx	[%l7 + 0x50],	%o5
loop_4029:
	fbug	%fcc1,	loop_4030
	fcmpeq16	%f12,	%f0,	%g7
	stx	%i7,	[%l7 + 0x48]
	fbul,a	%fcc3,	loop_4031
loop_4030:
	fmovrsgz	%g5,	%f4,	%f14
	sub	%g4,	%o0,	%o3
	fmovda	%icc,	%f14,	%f0
loop_4031:
	fmovdneg	%xcc,	%f8,	%f2
	sdivcc	%i6,	0x12DE,	%o7
	fmovda	%icc,	%f11,	%f8
	lduh	[%l7 + 0x3C],	%i2
	stb	%o2,	[%l7 + 0x5D]
	fmovdge	%icc,	%f15,	%f7
	edge16l	%g1,	%l3,	%i1
	fmovsne	%xcc,	%f14,	%f13
	bvs,pt	%icc,	loop_4032
	ldsw	[%l7 + 0x58],	%l6
	fpadd32	%f2,	%f6,	%f6
	lduw	[%l7 + 0x6C],	%l2
loop_4032:
	fmovdgu	%icc,	%f6,	%f11
	sub	%o1,	0x18BB,	%g6
	fmovrdgez	%l1,	%f8,	%f2
	fnot2	%f14,	%f4
	movne	%xcc,	%l5,	%o6
	st	%f10,	[%l7 + 0x40]
	fpmerge	%f7,	%f6,	%f12
	lduw	[%l7 + 0x10],	%g2
	stw	%o4,	[%l7 + 0x78]
	fandnot1s	%f14,	%f8,	%f15
	fmovdneg	%xcc,	%f6,	%f15
	tcs	%icc,	0x2
	fba	%fcc2,	loop_4033
	ldsw	[%l7 + 0x08],	%i0
	st	%f0,	[%l7 + 0x44]
	andcc	%i3,	0x129C,	%g3
loop_4033:
	ldsh	[%l7 + 0x74],	%i5
	edge8l	%i4,	%l0,	%l4
	fbe,a	%fcc0,	loop_4034
	fand	%f12,	%f2,	%f2
	fmovsle	%icc,	%f1,	%f10
	movrlez	%o5,	0x234,	%g7
loop_4034:
	edge32	%g5,	%g4,	%o0
	nop
	setx loop_4035, %l0, %l1
	jmpl %l1, %o3
	ble,a	loop_4036
	ldx	[%l7 + 0x68],	%i6
	fcmpd	%fcc3,	%f6,	%f2
loop_4035:
	ldsw	[%l7 + 0x3C],	%i7
loop_4036:
	or	%o7,	%i2,	%g1
	fmovsne	%xcc,	%f7,	%f10
	bneg	loop_4037
	popc	%l3,	%o2
	ldsw	[%l7 + 0x68],	%i1
	fexpand	%f5,	%f0
loop_4037:
	edge8ln	%l2,	%l6,	%g6
	stx	%l1,	[%l7 + 0x38]
	fmovscc	%xcc,	%f0,	%f4
	fcmpne32	%f8,	%f8,	%o1
	array8	%o6,	%l5,	%o4
	fmovsg	%xcc,	%f12,	%f10
	sth	%g2,	[%l7 + 0x66]
	tsubcctv	%i0,	0x00EE,	%g3
	fxors	%f0,	%f3,	%f0
	movrne	%i5,	0x0C7,	%i4
	ld	[%l7 + 0x78],	%f13
	brz,a	%l0,	loop_4038
	subcc	%i3,	%o5,	%l4
	orcc	%g5,	%g4,	%g7
	tcc	%icc,	0x5
loop_4038:
	fornot2s	%f9,	%f0,	%f10
	stb	%o0,	[%l7 + 0x1E]
	st	%f4,	[%l7 + 0x20]
	ldub	[%l7 + 0x3F],	%o3
	fcmpgt32	%f2,	%f14,	%i6
	ldx	[%l7 + 0x10],	%o7
	ldx	[%l7 + 0x58],	%i2
	ldsh	[%l7 + 0x08],	%g1
	andcc	%i7,	0x0600,	%l3
	siam	0x7
	fabsd	%f10,	%f10
	fmovrdgez	%o2,	%f8,	%f12
	fmovsgu	%icc,	%f10,	%f8
	edge16ln	%i1,	%l2,	%l6
	lduh	[%l7 + 0x20],	%g6
	umulcc	%l1,	%o6,	%o1
	bvs,pn	%xcc,	loop_4039
	stb	%l5,	[%l7 + 0x4C]
	ldsb	[%l7 + 0x0D],	%o4
	edge8	%g2,	%g3,	%i0
loop_4039:
	ldub	[%l7 + 0x47],	%i5
	ldub	[%l7 + 0x0A],	%l0
	lduw	[%l7 + 0x5C],	%i3
	fandnot1	%f6,	%f8,	%f6
	udivcc	%o5,	0x10AD,	%l4
	fpack32	%f2,	%f6,	%f2
	fbne	%fcc2,	loop_4040
	lduh	[%l7 + 0x50],	%i4
	std	%f2,	[%l7 + 0x18]
	ldx	[%l7 + 0x18],	%g5
loop_4040:
	tn	%xcc,	0x0
	std	%f2,	[%l7 + 0x78]
	fcmpeq16	%f10,	%f2,	%g7
	bshuffle	%f14,	%f4,	%f14
	sdiv	%o0,	0x0278,	%o3
	fbul	%fcc1,	loop_4041
	fmovsneg	%icc,	%f1,	%f11
	fbn	%fcc3,	loop_4042
	fmovdgu	%icc,	%f8,	%f9
loop_4041:
	stx	%g4,	[%l7 + 0x60]
	bleu,a	loop_4043
loop_4042:
	edge32	%o7,	%i2,	%i6
	ldx	[%l7 + 0x58],	%i7
	fpadd16s	%f0,	%f0,	%f8
loop_4043:
	orn	%g1,	%o2,	%i1
	fbne	%fcc3,	loop_4044
	srlx	%l3,	%l6,	%l2
	fmovd	%f10,	%f0
	stb	%g6,	[%l7 + 0x3A]
loop_4044:
	fba,a	%fcc3,	loop_4045
	ldub	[%l7 + 0x73],	%o6
	fandnot1	%f0,	%f4,	%f4
	fmovrdgz	%o1,	%f0,	%f6
loop_4045:
	fors	%f7,	%f5,	%f14
	srlx	%l1,	0x15,	%l5
	fmovrde	%o4,	%f12,	%f10
	movleu	%xcc,	%g2,	%i0
	ldsb	[%l7 + 0x57],	%g3
	ld	[%l7 + 0x58],	%f6
	fmovde	%icc,	%f7,	%f2
	tl	%xcc,	0x3
	mova	%xcc,	%l0,	%i5
	fzero	%f6
	addcc	%o5,	%i3,	%l4
	movrlz	%i4,	0x023,	%g5
	sth	%g7,	[%l7 + 0x76]
	ld	[%l7 + 0x44],	%f9
	ldub	[%l7 + 0x4B],	%o3
	tgu	%xcc,	0x6
	stw	%o0,	[%l7 + 0x14]
	fmovdle	%xcc,	%f4,	%f5
	xor	%g4,	%i2,	%i6
	lduw	[%l7 + 0x64],	%i7
	lduh	[%l7 + 0x50],	%g1
	ta	%icc,	0x1
	umulcc	%o2,	%i1,	%l3
	brz	%o7,	loop_4046
	array32	%l2,	%l6,	%g6
	fornot1s	%f10,	%f3,	%f1
	fblg,a	%fcc1,	loop_4047
loop_4046:
	ldx	[%l7 + 0x40],	%o6
	fmovscc	%icc,	%f7,	%f5
	movrgz	%o1,	%l5,	%l1
loop_4047:
	tcs	%xcc,	0x1
	movcs	%xcc,	%o4,	%g2
	fpsub16s	%f13,	%f6,	%f11
	ldsh	[%l7 + 0x22],	%i0
	stw	%g3,	[%l7 + 0x64]
	popc	0x07F5,	%l0
	stb	%o5,	[%l7 + 0x7E]
	sllx	%i3,	0x1F,	%i5
	bshuffle	%f14,	%f10,	%f14
	bgu,pt	%xcc,	loop_4048
	popc	0x1B8D,	%l4
	fmul8x16al	%f4,	%f2,	%f4
	orn	%i4,	%g5,	%g7
loop_4048:
	fmul8x16	%f11,	%f6,	%f2
	for	%f2,	%f6,	%f2
	ldx	[%l7 + 0x40],	%o3
	taddcctv	%o0,	%g4,	%i6
	ldx	[%l7 + 0x48],	%i7
	taddcc	%i2,	0x1F35,	%o2
	edge8n	%g1,	%i1,	%l3
	ld	[%l7 + 0x18],	%f9
	fmovse	%icc,	%f2,	%f7
	st	%f8,	[%l7 + 0x54]
	bshuffle	%f2,	%f14,	%f2
	stw	%l2,	[%l7 + 0x40]
	fpmerge	%f10,	%f9,	%f6
	edge8ln	%l6,	%o7,	%g6
	fmovrslz	%o6,	%f10,	%f9
	fmovsg	%icc,	%f10,	%f0
	fbn	%fcc3,	loop_4049
	tneg	%xcc,	0x1
	andn	%l5,	0x1693,	%o1
	movre	%o4,	%l1,	%g2
loop_4049:
	sethi	0x13C8,	%g3
	stx	%l0,	[%l7 + 0x50]
	edge32ln	%i0,	%o5,	%i5
	array8	%i3,	%i4,	%g5
	fmovdgu	%xcc,	%f4,	%f6
	fmovsneg	%icc,	%f2,	%f9
	edge16ln	%l4,	%g7,	%o0
	pdist	%f4,	%f2,	%f8
	sdivx	%o3,	0x160D,	%i6
	brlez,a	%i7,	loop_4050
	subc	%i2,	0x1681,	%o2
	fmovdpos	%xcc,	%f9,	%f9
	orcc	%g4,	%g1,	%i1
loop_4050:
	lduh	[%l7 + 0x7A],	%l2
	stb	%l3,	[%l7 + 0x26]
	stb	%o7,	[%l7 + 0x64]
	fmovsvc	%icc,	%f6,	%f12
	ldx	[%l7 + 0x20],	%l6
	ldsh	[%l7 + 0x6A],	%o6
	subcc	%l5,	0x14BF,	%o1
	ldsh	[%l7 + 0x7A],	%o4
	edge32l	%l1,	%g6,	%g3
	stx	%l0,	[%l7 + 0x28]
	st	%f8,	[%l7 + 0x2C]
	ldsb	[%l7 + 0x3A],	%g2
	ldx	[%l7 + 0x48],	%o5
	movne	%xcc,	%i0,	%i3
	movrlez	%i4,	0x2DD,	%g5
	edge16ln	%i5,	%g7,	%l4
	ldsw	[%l7 + 0x08],	%o3
	lduw	[%l7 + 0x68],	%i6
	bvc,a,pt	%xcc,	loop_4051
	fmovrde	%i7,	%f2,	%f8
	stw	%o0,	[%l7 + 0x5C]
	fbul	%fcc1,	loop_4052
loop_4051:
	fmuld8ulx16	%f1,	%f10,	%f8
	fnor	%f2,	%f8,	%f8
	fnors	%f5,	%f7,	%f13
loop_4052:
	sll	%o2,	0x12,	%i2
	sth	%g1,	[%l7 + 0x5C]
	std	%f14,	[%l7 + 0x10]
	tl	%xcc,	0x6
	std	%f14,	[%l7 + 0x70]
	sra	%g4,	0x09,	%l2
	fmovdleu	%xcc,	%f0,	%f5
	fbne	%fcc3,	loop_4053
	stw	%i1,	[%l7 + 0x1C]
	sdivcc	%l3,	0x0B2D,	%o7
	tgu	%xcc,	0x5
loop_4053:
	movle	%icc,	%o6,	%l6
	fmovsl	%xcc,	%f14,	%f15
	std	%f10,	[%l7 + 0x10]
	brnz	%l5,	loop_4054
	fpadd16	%f14,	%f8,	%f14
	edge16l	%o1,	%o4,	%g6
	fbo	%fcc3,	loop_4055
loop_4054:
	fbge,a	%fcc3,	loop_4056
	sth	%l1,	[%l7 + 0x68]
	stx	%l0,	[%l7 + 0x48]
loop_4055:
	movne	%icc,	%g3,	%g2
loop_4056:
	brgz,a	%i0,	loop_4057
	taddcc	%o5,	%i3,	%g5
	fmovdg	%icc,	%f14,	%f9
	fnot2s	%f9,	%f13
loop_4057:
	sdivcc	%i5,	0x170C,	%g7
	te	%xcc,	0x4
	std	%f10,	[%l7 + 0x58]
	bcc,pn	%icc,	loop_4058
	tcc	%xcc,	0x3
	brgz,a	%i4,	loop_4059
	std	%f12,	[%l7 + 0x20]
loop_4058:
	lduh	[%l7 + 0x52],	%o3
	fmovdleu	%xcc,	%f12,	%f5
loop_4059:
	tcc	%xcc,	0x2
	tleu	%xcc,	0x3
	fmovspos	%xcc,	%f6,	%f15
	move	%xcc,	%i6,	%l4
	edge8ln	%o0,	%o2,	%i2
	sth	%i7,	[%l7 + 0x6A]
	stw	%g4,	[%l7 + 0x48]
	bcc,a,pt	%xcc,	loop_4060
	fmul8sux16	%f2,	%f4,	%f0
	fmovsl	%icc,	%f5,	%f14
	fmul8ulx16	%f4,	%f12,	%f10
loop_4060:
	fcmps	%fcc1,	%f9,	%f14
	fornot1	%f14,	%f8,	%f6
	fnors	%f3,	%f8,	%f4
	brlz	%l2,	loop_4061
	st	%f7,	[%l7 + 0x38]
	ldd	[%l7 + 0x38],	%f0
	fmovsgu	%xcc,	%f9,	%f13
loop_4061:
	bl,pt	%xcc,	loop_4062
	or	%g1,	0x1713,	%l3
	fbge	%fcc3,	loop_4063
	fmul8x16	%f15,	%f10,	%f4
loop_4062:
	fxors	%f15,	%f14,	%f2
	taddcctv	%i1,	%o6,	%l6
loop_4063:
	st	%f7,	[%l7 + 0x58]
	and	%l5,	%o7,	%o1
	ldsh	[%l7 + 0x20],	%g6
	ldsw	[%l7 + 0x28],	%l1
	ldsw	[%l7 + 0x1C],	%l0
	lduw	[%l7 + 0x70],	%g3
	fmovsle	%icc,	%f14,	%f15
	fmovdle	%icc,	%f13,	%f12
	fcmpeq16	%f2,	%f8,	%o4
	st	%f10,	[%l7 + 0x0C]
	ldub	[%l7 + 0x58],	%i0
	tgu	%icc,	0x3
	sth	%o5,	[%l7 + 0x0A]
	fnors	%f0,	%f1,	%f4
	fandnot1s	%f10,	%f2,	%f1
	fbn	%fcc3,	loop_4064
	fbule	%fcc2,	loop_4065
	ld	[%l7 + 0x20],	%f0
	bn,a,pn	%icc,	loop_4066
loop_4064:
	fmovda	%xcc,	%f2,	%f2
loop_4065:
	udivx	%i3,	0x1ACA,	%g2
	fmovdgu	%xcc,	%f11,	%f3
loop_4066:
	stb	%g5,	[%l7 + 0x2E]
	fbu,a	%fcc3,	loop_4067
	fbule	%fcc3,	loop_4068
	fbu	%fcc2,	loop_4069
	movl	%icc,	%g7,	%i4
loop_4067:
	ldsw	[%l7 + 0x54],	%i5
loop_4068:
	bvs,pn	%icc,	loop_4070
loop_4069:
	ldsw	[%l7 + 0x1C],	%o3
	fpsub32	%f6,	%f2,	%f8
	ldsb	[%l7 + 0x57],	%i6
loop_4070:
	fmovspos	%xcc,	%f14,	%f15
	ldx	[%l7 + 0x50],	%o0
	ldub	[%l7 + 0x6D],	%l4
	fmovs	%f8,	%f10
	lduw	[%l7 + 0x54],	%o2
	lduh	[%l7 + 0x44],	%i2
	fandnot2	%f10,	%f8,	%f10
	array8	%i7,	%l2,	%g4
	ld	[%l7 + 0x0C],	%f8
	fsrc1s	%f13,	%f1
	fmovdneg	%icc,	%f7,	%f14
	stw	%g1,	[%l7 + 0x58]
	ld	[%l7 + 0x14],	%f8
	stx	%l3,	[%l7 + 0x58]
	lduw	[%l7 + 0x3C],	%i1
	movge	%icc,	%o6,	%l5
	add	%o7,	%o1,	%l6
	bg,a	%icc,	loop_4071
	fmovsleu	%icc,	%f8,	%f11
	tsubcctv	%g6,	%l0,	%l1
	array8	%o4,	%g3,	%o5
loop_4071:
	edge8	%i0,	%i3,	%g2
	fpsub32s	%f14,	%f8,	%f8
	fnand	%f6,	%f0,	%f2
	movn	%icc,	%g5,	%i4
	smul	%i5,	%o3,	%g7
	bl,a,pn	%xcc,	loop_4072
	tneg	%xcc,	0x0
	call	loop_4073
	stx	%o0,	[%l7 + 0x50]
loop_4072:
	bne,a	loop_4074
	fmovdne	%xcc,	%f11,	%f1
loop_4073:
	bcs	loop_4075
	fmul8ulx16	%f6,	%f12,	%f4
loop_4074:
	fble,a	%fcc1,	loop_4076
	array32	%i6,	%o2,	%l4
loop_4075:
	array16	%i7,	%i2,	%l2
	ldsb	[%l7 + 0x2A],	%g4
loop_4076:
	and	%l3,	0x0AF1,	%i1
	st	%f13,	[%l7 + 0x78]
	subc	%o6,	0x0D77,	%l5
	ldub	[%l7 + 0x66],	%o7
	fba	%fcc1,	loop_4077
	fnot2s	%f15,	%f10
	fornot2s	%f4,	%f15,	%f7
	ldx	[%l7 + 0x18],	%o1
loop_4077:
	fmovrsne	%g1,	%f3,	%f1
	stw	%l6,	[%l7 + 0x40]
	movrne	%l0,	0x04A,	%g6
	fzeros	%f14
	lduh	[%l7 + 0x5E],	%l1
	fblg,a	%fcc0,	loop_4078
	addc	%g3,	0x0409,	%o4
	fnegs	%f5,	%f12
	stx	%o5,	[%l7 + 0x18]
loop_4078:
	stw	%i0,	[%l7 + 0x10]
	fbuge,a	%fcc1,	loop_4079
	movrgz	%i3,	0x0D5,	%g2
	stx	%g5,	[%l7 + 0x68]
	ldx	[%l7 + 0x60],	%i5
loop_4079:
	edge8	%o3,	%g7,	%i4
	st	%f4,	[%l7 + 0x54]
	bge,a,pn	%xcc,	loop_4080
	bge,pt	%xcc,	loop_4081
	fsrc1	%f2,	%f0
	stw	%i6,	[%l7 + 0x08]
loop_4080:
	fmovdn	%icc,	%f7,	%f13
loop_4081:
	taddcctv	%o0,	%o2,	%l4
	fcmpgt32	%f2,	%f14,	%i7
	array16	%i2,	%l2,	%g4
	fbuge,a	%fcc2,	loop_4082
	fbu,a	%fcc3,	loop_4083
	ldub	[%l7 + 0x12],	%i1
	sethi	0x162E,	%l3
loop_4082:
	for	%f0,	%f12,	%f0
loop_4083:
	ldsb	[%l7 + 0x0F],	%o6
	movl	%xcc,	%o7,	%o1
	fcmpgt16	%f8,	%f0,	%l5
	fbo,a	%fcc0,	loop_4084
	fmovsn	%icc,	%f7,	%f7
	bg,a	loop_4085
	fmul8sux16	%f2,	%f8,	%f12
loop_4084:
	ldub	[%l7 + 0x48],	%g1
	movvs	%icc,	%l0,	%l6
loop_4085:
	fornot1	%f10,	%f0,	%f8
	fmul8x16	%f8,	%f12,	%f0
	tle	%icc,	0x2
	sllx	%l1,	0x11,	%g6
	fmovdcc	%icc,	%f7,	%f3
	ldd	[%l7 + 0x70],	%f0
	fbug	%fcc1,	loop_4086
	ldsb	[%l7 + 0x7C],	%g3
	tsubcc	%o4,	%i0,	%o5
	movl	%icc,	%i3,	%g5
loop_4086:
	ld	[%l7 + 0x14],	%f1
	sth	%g2,	[%l7 + 0x6C]
	brgz,a	%i5,	loop_4087
	fsrc2s	%f7,	%f2
	lduw	[%l7 + 0x5C],	%o3
	fbn,a	%fcc1,	loop_4088
loop_4087:
	udivx	%i4,	0x0211,	%g7
	tcc	%xcc,	0x5
	lduh	[%l7 + 0x6E],	%o0
loop_4088:
	fbe	%fcc1,	loop_4089
	bgu,a	loop_4090
	fnegs	%f8,	%f15
	stx	%o2,	[%l7 + 0x28]
loop_4089:
	tsubcctv	%i6,	%i7,	%i2
loop_4090:
	fmovrdlz	%l4,	%f14,	%f4
	fbl	%fcc3,	loop_4091
	sth	%g4,	[%l7 + 0x4C]
	fbul,a	%fcc1,	loop_4092
	ldsh	[%l7 + 0x50],	%l2
loop_4091:
	ldsh	[%l7 + 0x42],	%i1
	fmovsne	%icc,	%f9,	%f14
loop_4092:
	movvs	%icc,	%l3,	%o6
	ldx	[%l7 + 0x48],	%o1
	brgz,a	%l5,	loop_4093
	stb	%g1,	[%l7 + 0x55]
	fmovsa	%xcc,	%f7,	%f12
	fnors	%f2,	%f8,	%f12
loop_4093:
	tleu	%icc,	0x4
	sdiv	%l0,	0x0A61,	%o7
	fbe,a	%fcc1,	loop_4094
	ldsw	[%l7 + 0x18],	%l1
	tvc	%xcc,	0x5
	lduw	[%l7 + 0x6C],	%l6
loop_4094:
	ldd	[%l7 + 0x58],	%f2
	fxor	%f8,	%f8,	%f10
	bl,a,pt	%icc,	loop_4095
	tne	%icc,	0x3
	brz	%g3,	loop_4096
	fmovsgu	%xcc,	%f6,	%f5
loop_4095:
	fors	%f11,	%f13,	%f9
	taddcctv	%g6,	%i0,	%o5
loop_4096:
	move	%icc,	%i3,	%g5
	lduh	[%l7 + 0x10],	%g2
	brz	%i5,	loop_4097
	bneg,pt	%xcc,	loop_4098
	movre	%o3,	%i4,	%g7
	ldub	[%l7 + 0x2A],	%o4
loop_4097:
	lduh	[%l7 + 0x78],	%o0
loop_4098:
	fandnot2	%f14,	%f10,	%f14
	movrne	%o2,	0x2FB,	%i6
	std	%f8,	[%l7 + 0x50]
	tvs	%xcc,	0x7
	tsubcctv	%i2,	%l4,	%i7
	st	%f12,	[%l7 + 0x2C]
	fexpand	%f1,	%f12
	fzero	%f14
	fmovsge	%xcc,	%f14,	%f2
	fzero	%f6
	fpadd32s	%f14,	%f3,	%f7
	lduh	[%l7 + 0x18],	%l2
	bneg	%icc,	loop_4099
	fpadd32s	%f15,	%f3,	%f2
	array8	%i1,	%g4,	%o6
	fmovrslez	%l3,	%f5,	%f2
loop_4099:
	std	%f2,	[%l7 + 0x70]
	tsubcctv	%o1,	%l5,	%g1
	nop
	setx loop_4100, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	brnz	%o7,	loop_4101
	fcmple32	%f14,	%f12,	%l0
	ldub	[%l7 + 0x36],	%l6
loop_4100:
	fmovsneg	%xcc,	%f1,	%f9
loop_4101:
	sdiv	%g3,	0x020B,	%l1
	tgu	%icc,	0x0
	fmovdl	%icc,	%f9,	%f0
	ldsh	[%l7 + 0x1A],	%i0
	stx	%o5,	[%l7 + 0x20]
	fbug	%fcc1,	loop_4102
	fbne	%fcc1,	loop_4103
	tg	%xcc,	0x0
	fmovrsgez	%g6,	%f9,	%f14
loop_4102:
	edge32n	%g5,	%i3,	%g2
loop_4103:
	fmovdl	%icc,	%f2,	%f5
	fmovrdlz	%o3,	%f14,	%f2
	subccc	%i4,	0x1DCB,	%i5
	movvs	%xcc,	%g7,	%o4
	sth	%o0,	[%l7 + 0x3A]
	fnot2	%f10,	%f6
	ldx	[%l7 + 0x48],	%i6
	stb	%o2,	[%l7 + 0x3D]
	st	%f2,	[%l7 + 0x54]
	ldsh	[%l7 + 0x6C],	%l4
	ldsh	[%l7 + 0x62],	%i7
	tleu	%icc,	0x1
	fmul8x16au	%f7,	%f3,	%f4
	ldsw	[%l7 + 0x70],	%i2
	sdivcc	%i1,	0x0CE9,	%l2
	stw	%g4,	[%l7 + 0x6C]
	or	%l3,	%o6,	%l5
	stb	%o1,	[%l7 + 0x54]
	movrgz	%g1,	%o7,	%l6
	movleu	%icc,	%g3,	%l0
	fbn	%fcc0,	loop_4104
	fblg,a	%fcc2,	loop_4105
	std	%f6,	[%l7 + 0x58]
	fpsub32s	%f14,	%f8,	%f4
loop_4104:
	sth	%i0,	[%l7 + 0x54]
loop_4105:
	fpack32	%f8,	%f14,	%f6
	movrne	%l1,	0x1FB,	%o5
	addcc	%g5,	0x0E98,	%g6
	fandnot1	%f0,	%f12,	%f12
	ldsb	[%l7 + 0x41],	%i3
	edge32ln	%o3,	%i4,	%i5
	fornot2	%f4,	%f10,	%f14
	fsrc2s	%f3,	%f2
	movneg	%xcc,	%g2,	%g7
	edge16n	%o4,	%o0,	%o2
	movgu	%xcc,	%i6,	%i7
	mova	%icc,	%l4,	%i2
	edge32	%i1,	%l2,	%l3
	movre	%o6,	0x39E,	%g4
	sllx	%l5,	%o1,	%g1
	fbge,a	%fcc2,	loop_4106
	st	%f6,	[%l7 + 0x40]
	fmovsge	%icc,	%f1,	%f9
	faligndata	%f14,	%f14,	%f12
loop_4106:
	ldub	[%l7 + 0x0B],	%l6
	stx	%o7,	[%l7 + 0x10]
	fzeros	%f12
	nop
	setx loop_4107, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	tsubcctv	%l0,	0x1D35,	%i0
	movcc	%xcc,	%g3,	%o5
	fmovdne	%icc,	%f5,	%f8
loop_4107:
	fmovrdgz	%l1,	%f8,	%f14
	fpmerge	%f13,	%f4,	%f0
	fbl,a	%fcc3,	loop_4108
	and	%g5,	%g6,	%i3
	edge32	%o3,	%i4,	%g2
	fmovdvc	%xcc,	%f13,	%f3
loop_4108:
	tvs	%icc,	0x5
	fornot1	%f10,	%f6,	%f2
	sth	%g7,	[%l7 + 0x76]
	fsrc1s	%f12,	%f7
	fcmpeq32	%f10,	%f2,	%i5
	fmovsl	%icc,	%f12,	%f0
	stw	%o0,	[%l7 + 0x18]
	bvs	%icc,	loop_4109
	stb	%o4,	[%l7 + 0x26]
	fmovse	%icc,	%f15,	%f3
	te	%icc,	0x3
loop_4109:
	fcmps	%fcc3,	%f10,	%f3
	sth	%i6,	[%l7 + 0x20]
	andn	%i7,	0x09B4,	%l4
	addccc	%i2,	%o2,	%l2
	lduw	[%l7 + 0x2C],	%l3
	ldsw	[%l7 + 0x20],	%i1
	fnot1s	%f0,	%f12
	bvc	loop_4110
	movcc	%icc,	%g4,	%l5
	stx	%o6,	[%l7 + 0x30]
	ldsb	[%l7 + 0x11],	%g1
loop_4110:
	add	%l6,	%o1,	%o7
	fmovdleu	%xcc,	%f14,	%f7
	fsrc1	%f12,	%f2
	std	%f14,	[%l7 + 0x28]
	fbn,a	%fcc1,	loop_4111
	fnot2	%f10,	%f12
	fpmerge	%f10,	%f5,	%f10
	stx	%l0,	[%l7 + 0x50]
loop_4111:
	ldsw	[%l7 + 0x50],	%i0
	fbne,a	%fcc0,	loop_4112
	ldd	[%l7 + 0x60],	%f4
	ldsw	[%l7 + 0x28],	%g3
	stw	%o5,	[%l7 + 0x70]
loop_4112:
	fmovdcs	%xcc,	%f14,	%f1
	fmovrdgz	%g5,	%f8,	%f4
	lduh	[%l7 + 0x40],	%g6
	fpadd16s	%f14,	%f6,	%f11
	ldsb	[%l7 + 0x46],	%i3
	fmovdgu	%icc,	%f1,	%f14
	bne	loop_4113
	orn	%o3,	0x01E5,	%i4
	ldub	[%l7 + 0x6D],	%g2
	lduw	[%l7 + 0x74],	%l1
loop_4113:
	std	%f8,	[%l7 + 0x38]
	tg	%icc,	0x4
	bne,a,pt	%icc,	loop_4114
	ld	[%l7 + 0x50],	%f2
	move	%icc,	%i5,	%o0
	lduh	[%l7 + 0x5C],	%o4
loop_4114:
	movg	%xcc,	%i6,	%g7
	tneg	%icc,	0x4
	fbn,a	%fcc1,	loop_4115
	fsrc2s	%f4,	%f6
	te	%icc,	0x7
	fzeros	%f7
loop_4115:
	fbl	%fcc2,	loop_4116
	ld	[%l7 + 0x40],	%f3
	smulcc	%i7,	%i2,	%l4
	fbue,a	%fcc1,	loop_4117
loop_4116:
	alignaddr	%o2,	%l3,	%i1
	stb	%g4,	[%l7 + 0x79]
	stx	%l2,	[%l7 + 0x68]
loop_4117:
	fnot1	%f14,	%f4
	fbne,a	%fcc3,	loop_4118
	srlx	%o6,	0x1E,	%l5
	mulscc	%g1,	%o1,	%l6
	fmovde	%xcc,	%f9,	%f2
loop_4118:
	edge8	%o7,	%l0,	%g3
	st	%f11,	[%l7 + 0x40]
	fzeros	%f3
	fpsub32s	%f4,	%f12,	%f11
	ldub	[%l7 + 0x70],	%i0
	ldsh	[%l7 + 0x72],	%g5
	umulcc	%o5,	%i3,	%o3
	ldsb	[%l7 + 0x08],	%i4
	srl	%g2,	%g6,	%l1
	movleu	%icc,	%o0,	%i5
	fmul8x16au	%f7,	%f15,	%f8
	tl	%icc,	0x1
	ldsw	[%l7 + 0x10],	%o4
	fpadd16	%f6,	%f12,	%f4
	edge8n	%g7,	%i7,	%i6
	ld	[%l7 + 0x40],	%f3
	orn	%l4,	%i2,	%o2
	fbe	%fcc2,	loop_4119
	fpadd16	%f12,	%f12,	%f6
	fcmpeq16	%f8,	%f2,	%i1
	st	%f6,	[%l7 + 0x54]
loop_4119:
	bn,a	%xcc,	loop_4120
	movgu	%icc,	%g4,	%l2
	smulcc	%l3,	%l5,	%g1
	fmovrdlez	%o1,	%f12,	%f2
loop_4120:
	fabsd	%f2,	%f0
	stb	%l6,	[%l7 + 0x2F]
	lduh	[%l7 + 0x62],	%o7
	ldx	[%l7 + 0x08],	%o6
	ba,a	loop_4121
	fmul8x16	%f2,	%f0,	%f8
	ldx	[%l7 + 0x28],	%l0
	ldd	[%l7 + 0x30],	%f8
loop_4121:
	sethi	0x0A2D,	%i0
	ldsb	[%l7 + 0x68],	%g3
	sth	%g5,	[%l7 + 0x12]
	ble,pn	%xcc,	loop_4122
	fand	%f12,	%f4,	%f6
	umul	%i3,	%o5,	%i4
	brz	%g2,	loop_4123
loop_4122:
	fands	%f0,	%f0,	%f13
	udivx	%g6,	0x1C14,	%o3
	movneg	%xcc,	%l1,	%o0
loop_4123:
	fbu	%fcc2,	loop_4124
	ldsb	[%l7 + 0x3F],	%i5
	fbue,a	%fcc2,	loop_4125
	fmovrslz	%g7,	%f9,	%f15
loop_4124:
	fmovs	%f1,	%f0
	fcmple32	%f4,	%f14,	%o4
loop_4125:
	brz,a	%i6,	loop_4126
	fmovrdgez	%l4,	%f6,	%f0
	fbuge,a	%fcc1,	loop_4127
	ldsh	[%l7 + 0x5A],	%i7
loop_4126:
	tle	%icc,	0x7
	ldsh	[%l7 + 0x44],	%o2
loop_4127:
	sdivcc	%i2,	0x05C0,	%i1
	fba	%fcc2,	loop_4128
	ldsw	[%l7 + 0x7C],	%l2
	brgez	%l3,	loop_4129
	taddcctv	%l5,	%g1,	%g4
loop_4128:
	sth	%l6,	[%l7 + 0x3A]
	fnot1	%f2,	%f2
loop_4129:
	fornot1	%f0,	%f2,	%f0
	ta	%icc,	0x6
	fmovda	%xcc,	%f9,	%f2
	fcmpne16	%f6,	%f8,	%o7
	movrgez	%o6,	0x365,	%o1
	fcmple32	%f2,	%f12,	%l0
	sethi	0x106B,	%g3
	stx	%g5,	[%l7 + 0x40]
	fmovrdlz	%i3,	%f10,	%f8
	movcc	%icc,	%i0,	%i4
	ldx	[%l7 + 0x48],	%o5
	brnz	%g2,	loop_4130
	xor	%o3,	0x14E3,	%l1
	fmovdleu	%icc,	%f15,	%f9
	popc	%o0,	%g6
loop_4130:
	stx	%g7,	[%l7 + 0x78]
	edge8l	%i5,	%i6,	%o4
	edge8l	%i7,	%l4,	%i2
	ldsw	[%l7 + 0x44],	%o2
	tne	%icc,	0x4
	fmovdvs	%icc,	%f4,	%f2
	ldub	[%l7 + 0x2B],	%l2
	bvs,pt	%icc,	loop_4131
	sth	%i1,	[%l7 + 0x64]
	ldsb	[%l7 + 0x6D],	%l5
	ld	[%l7 + 0x30],	%f12
loop_4131:
	movge	%icc,	%l3,	%g4
	bne,pn	%icc,	loop_4132
	xorcc	%g1,	%o7,	%l6
	tcc	%icc,	0x0
	stw	%o6,	[%l7 + 0x18]
loop_4132:
	st	%f1,	[%l7 + 0x4C]
	ldsh	[%l7 + 0x2C],	%o1
	fmovde	%xcc,	%f8,	%f10
	umulcc	%l0,	0x1E8B,	%g3
	ldsb	[%l7 + 0x14],	%g5
	bcs,a,pn	%icc,	loop_4133
	bn,pn	%xcc,	loop_4134
	fnegs	%f7,	%f13
	fmovscc	%icc,	%f6,	%f4
loop_4133:
	fmovdcc	%icc,	%f6,	%f2
loop_4134:
	fmovsn	%icc,	%f13,	%f7
	fmovde	%xcc,	%f13,	%f11
	udivcc	%i3,	0x1D6C,	%i4
	udivx	%o5,	0x1469,	%i0
	movrgz	%g2,	0x119,	%l1
	edge8ln	%o0,	%o3,	%g7
	fones	%f7
	te	%xcc,	0x7
	edge8n	%i5,	%i6,	%g6
	fandnot1s	%f14,	%f8,	%f3
	ble	%icc,	loop_4135
	movge	%icc,	%o4,	%l4
	fones	%f0
	fcmpgt32	%f8,	%f0,	%i2
loop_4135:
	tleu	%xcc,	0x4
	fmovd	%f12,	%f8
	ldsb	[%l7 + 0x7E],	%o2
	fpadd16	%f0,	%f14,	%f0
	ldub	[%l7 + 0x72],	%l2
	ldub	[%l7 + 0x48],	%i1
	fzeros	%f0
	lduw	[%l7 + 0x20],	%l5
	be,a	loop_4136
	fbuge	%fcc3,	loop_4137
	fmovdle	%xcc,	%f1,	%f8
	fnand	%f4,	%f2,	%f4
loop_4136:
	ldsw	[%l7 + 0x30],	%l3
loop_4137:
	stw	%g4,	[%l7 + 0x14]
	bshuffle	%f2,	%f4,	%f4
	tneg	%icc,	0x5
	ldub	[%l7 + 0x30],	%i7
	subc	%o7,	0x17E1,	%g1
	lduw	[%l7 + 0x64],	%o6
	brgez	%o1,	loop_4138
	ldx	[%l7 + 0x58],	%l6
	be,pt	%icc,	loop_4139
	fmovrse	%l0,	%f8,	%f13
loop_4138:
	brlez	%g3,	loop_4140
	andncc	%i3,	%g5,	%o5
loop_4139:
	fcmpgt32	%f14,	%f2,	%i0
	movvs	%xcc,	%g2,	%i4
loop_4140:
	fmovscc	%icc,	%f9,	%f0
	srl	%l1,	0x05,	%o0
	faligndata	%f12,	%f0,	%f4
	ldd	[%l7 + 0x78],	%f14
	fcmpne16	%f4,	%f6,	%o3
	fbu	%fcc3,	loop_4141
	st	%f15,	[%l7 + 0x7C]
	std	%f4,	[%l7 + 0x10]
	tn	%xcc,	0x2
loop_4141:
	sethi	0x1B8A,	%i5
	ldub	[%l7 + 0x29],	%i6
	srax	%g7,	%o4,	%g6
	ldub	[%l7 + 0x0D],	%i2
	ldd	[%l7 + 0x30],	%f0
	xor	%o2,	0x1940,	%l4
	fbu,a	%fcc2,	loop_4142
	fbu	%fcc0,	loop_4143
	std	%f0,	[%l7 + 0x20]
	fbo	%fcc0,	loop_4144
loop_4142:
	fpack16	%f0,	%f3
loop_4143:
	edge16	%l2,	%l5,	%i1
	ldsw	[%l7 + 0x28],	%g4
loop_4144:
	nop
	setx loop_4145, %l0, %l1
	jmpl %l1, %l3
	ldsb	[%l7 + 0x70],	%o7
	fbuge	%fcc0,	loop_4146
	fmovdcc	%xcc,	%f14,	%f13
loop_4145:
	movvc	%xcc,	%g1,	%o6
	fpsub32	%f14,	%f12,	%f6
loop_4146:
	movneg	%xcc,	%i7,	%o1
	fbug,a	%fcc0,	loop_4147
	movrlz	%l6,	%l0,	%g3
	ldx	[%l7 + 0x58],	%i3
	st	%f10,	[%l7 + 0x18]
loop_4147:
	fmovdl	%icc,	%f3,	%f6
	array8	%o5,	%i0,	%g5
	lduw	[%l7 + 0x40],	%g2
	fmovdn	%xcc,	%f6,	%f13
	movl	%xcc,	%l1,	%i4
	pdist	%f10,	%f12,	%f4
	addcc	%o0,	%o3,	%i5
	ldsb	[%l7 + 0x5E],	%g7
	movrne	%i6,	0x2C5,	%g6
	fpsub16	%f0,	%f12,	%f14
	bn,pt	%icc,	loop_4148
	fmovsle	%icc,	%f15,	%f4
	orn	%o4,	%o2,	%l4
	fmovrdlez	%i2,	%f14,	%f10
loop_4148:
	fmul8sux16	%f4,	%f14,	%f12
	add	%l2,	%l5,	%i1
	fble,a	%fcc3,	loop_4149
	ldub	[%l7 + 0x4B],	%l3
	umulcc	%o7,	%g1,	%g4
	movle	%xcc,	%o6,	%i7
loop_4149:
	fmovrdlz	%l6,	%f4,	%f2
	edge32n	%o1,	%g3,	%i3
	move	%xcc,	%o5,	%l0
	fpackfix	%f12,	%f14
	fcmple32	%f0,	%f12,	%g5
	fnegd	%f10,	%f14
	lduh	[%l7 + 0x3E],	%g2
	taddcctv	%i0,	0x068C,	%l1
	st	%f2,	[%l7 + 0x74]
	fmovdpos	%xcc,	%f11,	%f3
	movge	%icc,	%i4,	%o3
	std	%f6,	[%l7 + 0x40]
	siam	0x4
	nop
	setx loop_4150, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fcmpne16	%f10,	%f12,	%o0
	sth	%i5,	[%l7 + 0x28]
	ldx	[%l7 + 0x18],	%g7
loop_4150:
	move	%xcc,	%i6,	%g6
	fmovdcs	%xcc,	%f11,	%f10
	st	%f10,	[%l7 + 0x28]
	fmovdcs	%xcc,	%f8,	%f4
	sub	%o4,	%l4,	%o2
	mova	%icc,	%i2,	%l2
	movre	%l5,	%l3,	%o7
	fmovrsgz	%i1,	%f15,	%f9
	fornot1	%f6,	%f4,	%f2
	ldx	[%l7 + 0x58],	%g1
	std	%f6,	[%l7 + 0x58]
	brnz	%g4,	loop_4151
	be,a,pn	%icc,	loop_4152
	brlez	%o6,	loop_4153
	fandnot2s	%f13,	%f13,	%f2
loop_4151:
	fmovsleu	%icc,	%f13,	%f0
loop_4152:
	fcmpne16	%f0,	%f2,	%l6
loop_4153:
	sethi	0x18E5,	%o1
	fmovsg	%icc,	%f15,	%f13
	edge16	%i7,	%g3,	%i3
	fmovdcs	%xcc,	%f8,	%f13
	fornot1s	%f4,	%f6,	%f14
	ta	%xcc,	0x5
	mova	%xcc,	%l0,	%o5
	fmovrsgz	%g5,	%f8,	%f14
	fbge	%fcc3,	loop_4154
	fmovse	%xcc,	%f9,	%f7
	fmovsvc	%icc,	%f7,	%f10
	std	%f0,	[%l7 + 0x40]
loop_4154:
	bge,a,pn	%icc,	loop_4155
	fpack32	%f8,	%f6,	%f12
	fpadd16	%f12,	%f2,	%f2
	movvs	%xcc,	%i0,	%l1
loop_4155:
	fble,a	%fcc3,	loop_4156
	fsrc1	%f10,	%f0
	tsubcc	%g2,	%o3,	%o0
	edge8	%i4,	%g7,	%i5
loop_4156:
	call	loop_4157
	tgu	%xcc,	0x0
	std	%f8,	[%l7 + 0x18]
	lduh	[%l7 + 0x08],	%g6
loop_4157:
	fmovsvs	%icc,	%f2,	%f15
	fmovdn	%xcc,	%f12,	%f10
	fmuld8ulx16	%f15,	%f2,	%f4
	addccc	%o4,	0x1191,	%i6
	sth	%o2,	[%l7 + 0x72]
	ldsb	[%l7 + 0x1E],	%i2
	stb	%l2,	[%l7 + 0x19]
	ldsh	[%l7 + 0x1A],	%l4
	bn,pn	%xcc,	loop_4158
	ld	[%l7 + 0x10],	%f9
	lduh	[%l7 + 0x22],	%l5
	lduw	[%l7 + 0x20],	%l3
loop_4158:
	umul	%i1,	0x1655,	%g1
	tg	%icc,	0x3
	std	%f0,	[%l7 + 0x78]
	te	%xcc,	0x3
	ldsw	[%l7 + 0x38],	%o7
	ld	[%l7 + 0x20],	%f10
	bvs	loop_4159
	fandnot2s	%f4,	%f0,	%f14
	fones	%f4
	fmul8x16au	%f12,	%f2,	%f10
loop_4159:
	addc	%o6,	%l6,	%g4
	fmovdcc	%icc,	%f15,	%f10
	sth	%i7,	[%l7 + 0x7C]
	edge16l	%o1,	%g3,	%i3
	ldsw	[%l7 + 0x10],	%l0
	edge8ln	%o5,	%g5,	%l1
	bl,a,pn	%xcc,	loop_4160
	ld	[%l7 + 0x6C],	%f10
	fmovrsgz	%g2,	%f2,	%f8
	fmovspos	%icc,	%f9,	%f6
loop_4160:
	fmovsvs	%icc,	%f8,	%f8
	umul	%o3,	%i0,	%i4
	brz,a	%g7,	loop_4161
	sth	%o0,	[%l7 + 0x3A]
	bvs,pn	%xcc,	loop_4162
	movre	%g6,	0x059,	%i5
loop_4161:
	stb	%i6,	[%l7 + 0x54]
	bneg,a,pt	%icc,	loop_4163
loop_4162:
	bne,pn	%xcc,	loop_4164
	fmovsa	%xcc,	%f6,	%f3
	ldx	[%l7 + 0x30],	%o4
loop_4163:
	stx	%i2,	[%l7 + 0x60]
loop_4164:
	tgu	%xcc,	0x1
	array8	%o2,	%l4,	%l2
	lduw	[%l7 + 0x50],	%l3
	or	%i1,	%l5,	%o7
	and	%o6,	0x1A8B,	%g1
	fands	%f0,	%f13,	%f13
	movcs	%xcc,	%g4,	%l6
	fmovsne	%xcc,	%f9,	%f8
	fnot1s	%f14,	%f9
	movge	%xcc,	%o1,	%i7
	fmovsge	%icc,	%f9,	%f1
	edge8n	%g3,	%l0,	%i3
	stw	%g5,	[%l7 + 0x6C]
	fornot2s	%f13,	%f8,	%f0
	udivcc	%o5,	0x0518,	%g2
	ldub	[%l7 + 0x19],	%l1
	fbue	%fcc2,	loop_4165
	movgu	%icc,	%o3,	%i0
	alignaddr	%g7,	%o0,	%i4
	fmovdpos	%icc,	%f6,	%f5
loop_4165:
	movpos	%xcc,	%g6,	%i6
	subcc	%o4,	%i5,	%i2
	std	%f2,	[%l7 + 0x68]
	brlez,a	%o2,	loop_4166
	bne,pn	%icc,	loop_4167
	sth	%l4,	[%l7 + 0x58]
	sll	%l2,	%i1,	%l3
loop_4166:
	tneg	%icc,	0x2
loop_4167:
	edge32n	%l5,	%o7,	%o6
	tge	%xcc,	0x1
	ld	[%l7 + 0x0C],	%f12
	fmovrsne	%g4,	%f7,	%f3
	fxnors	%f7,	%f9,	%f12
	fsrc2s	%f4,	%f2
	edge8l	%l6,	%g1,	%o1
	fmul8ulx16	%f0,	%f10,	%f14
	ld	[%l7 + 0x50],	%f7
	xorcc	%i7,	%l0,	%g3
	ldx	[%l7 + 0x48],	%i3
	tvs	%xcc,	0x1
	bcc,pt	%xcc,	loop_4168
	fmovrsgez	%o5,	%f5,	%f11
	be	%icc,	loop_4169
	ldx	[%l7 + 0x28],	%g5
loop_4168:
	fnand	%f0,	%f0,	%f2
	lduw	[%l7 + 0x6C],	%g2
loop_4169:
	tvc	%xcc,	0x6
	ldsw	[%l7 + 0x3C],	%l1
	orn	%o3,	0x1FB8,	%i0
	ldsh	[%l7 + 0x70],	%g7
	fsrc2	%f8,	%f6
	stx	%i4,	[%l7 + 0x60]
	addc	%g6,	%o0,	%o4
	movl	%xcc,	%i6,	%i5
	edge8n	%o2,	%i2,	%l4
	sth	%i1,	[%l7 + 0x2A]
	ld	[%l7 + 0x34],	%f1
	fmul8x16al	%f13,	%f15,	%f14
	fmovdne	%xcc,	%f2,	%f8
	fpsub16s	%f3,	%f8,	%f4
	fmovsvc	%icc,	%f11,	%f5
	fmovrsgez	%l2,	%f14,	%f13
	tvs	%icc,	0x0
	ldsb	[%l7 + 0x70],	%l3
	siam	0x1
	ldsb	[%l7 + 0x7A],	%l5
	umulcc	%o7,	0x0E55,	%g4
	fmovse	%icc,	%f9,	%f1
	bvc,a,pn	%xcc,	loop_4170
	lduh	[%l7 + 0x0E],	%l6
	edge32n	%o6,	%g1,	%o1
	call	loop_4171
loop_4170:
	sdivcc	%l0,	0x1FAC,	%i7
	movn	%icc,	%i3,	%o5
	bl,a	loop_4172
loop_4171:
	xnor	%g3,	0x1850,	%g5
	xorcc	%l1,	0x0348,	%g2
	faligndata	%f14,	%f14,	%f12
loop_4172:
	fnor	%f14,	%f0,	%f2
	fandnot2s	%f5,	%f6,	%f15
	addccc	%o3,	%i0,	%g7
	fbge,a	%fcc2,	loop_4173
	lduh	[%l7 + 0x5C],	%i4
	fsrc2	%f12,	%f12
	siam	0x1
loop_4173:
	taddcctv	%g6,	%o4,	%o0
	ldd	[%l7 + 0x38],	%f10
	lduh	[%l7 + 0x48],	%i6
	fxor	%f2,	%f0,	%f10
	fmovdleu	%xcc,	%f3,	%f15
	fbug,a	%fcc3,	loop_4174
	fblg	%fcc1,	loop_4175
	ldx	[%l7 + 0x48],	%i5
	call	loop_4176
loop_4174:
	fone	%f4
loop_4175:
	fcmped	%fcc1,	%f4,	%f0
	fcmps	%fcc2,	%f13,	%f8
loop_4176:
	array8	%o2,	%i2,	%l4
	ldd	[%l7 + 0x50],	%f0
	fmovsvs	%xcc,	%f9,	%f1
	taddcctv	%l2,	0x0581,	%i1
	stb	%l5,	[%l7 + 0x7B]
	tpos	%icc,	0x4
	fpadd32s	%f11,	%f2,	%f3
	fpadd32s	%f1,	%f12,	%f14
	tgu	%icc,	0x1
	stw	%o7,	[%l7 + 0x64]
	tne	%icc,	0x6
	lduh	[%l7 + 0x2E],	%l3
	ldd	[%l7 + 0x30],	%f12
	edge8	%g4,	%o6,	%l6
	fpsub16	%f4,	%f10,	%f0
	fbg,a	%fcc3,	loop_4177
	smul	%o1,	0x1E58,	%l0
	fexpand	%f1,	%f10
	tpos	%xcc,	0x1
loop_4177:
	bne	%xcc,	loop_4178
	fsrc1	%f10,	%f12
	fmovdn	%icc,	%f3,	%f9
	fsrc1	%f4,	%f10
loop_4178:
	sub	%i7,	%i3,	%g1
	popc	%o5,	%g5
	brz,a	%g3,	loop_4179
	fmovdn	%icc,	%f2,	%f10
	bvs,a,pt	%xcc,	loop_4180
	ldsw	[%l7 + 0x6C],	%l1
loop_4179:
	movvs	%xcc,	%g2,	%i0
	fcmpgt32	%f4,	%f12,	%g7
loop_4180:
	fbule	%fcc1,	loop_4181
	fmovsa	%icc,	%f1,	%f6
	lduh	[%l7 + 0x56],	%i4
	fmovscc	%icc,	%f12,	%f5
loop_4181:
	movrlz	%g6,	0x3AA,	%o4
	fbl	%fcc2,	loop_4182
	fcmpeq16	%f0,	%f10,	%o0
	sth	%i6,	[%l7 + 0x2A]
	fornot2	%f0,	%f4,	%f0
loop_4182:
	fmovsl	%icc,	%f8,	%f12
	taddcc	%i5,	0x145D,	%o2
	tne	%xcc,	0x6
	taddcctv	%i2,	0x0DF0,	%o3
	fbge	%fcc2,	loop_4183
	ldsb	[%l7 + 0x11],	%l2
	srax	%i1,	%l5,	%o7
	fmul8ulx16	%f6,	%f2,	%f6
loop_4183:
	tvs	%xcc,	0x1
	sll	%l4,	%g4,	%o6
	fnot2s	%f15,	%f5
	fmovsneg	%icc,	%f8,	%f0
	bl,pt	%xcc,	loop_4184
	ldsh	[%l7 + 0x62],	%l3
	ld	[%l7 + 0x68],	%f13
	ldx	[%l7 + 0x78],	%o1
loop_4184:
	edge16	%l6,	%l0,	%i7
	fbl	%fcc2,	loop_4185
	ldx	[%l7 + 0x60],	%i3
	fmovd	%f14,	%f6
	ldd	[%l7 + 0x50],	%f14
loop_4185:
	stw	%o5,	[%l7 + 0x0C]
	edge8	%g5,	%g3,	%l1
	fmovdvs	%icc,	%f13,	%f5
	fmovrsne	%g2,	%f12,	%f1
	fpsub16	%f12,	%f0,	%f10
	fpmerge	%f3,	%f3,	%f12
	srl	%i0,	0x18,	%g7
	ldsb	[%l7 + 0x0C],	%i4
	fmovrsgz	%g6,	%f8,	%f12
	sra	%o4,	%o0,	%g1
	movn	%xcc,	%i6,	%o2
	fmovrdgez	%i5,	%f12,	%f0
	tvc	%xcc,	0x7
	ldsh	[%l7 + 0x5C],	%i2
	lduw	[%l7 + 0x70],	%o3
	std	%f14,	[%l7 + 0x78]
	fbu	%fcc1,	loop_4186
	alignaddr	%i1,	%l5,	%l2
	ldd	[%l7 + 0x60],	%f0
	fmovsg	%xcc,	%f6,	%f1
loop_4186:
	fmovdle	%icc,	%f6,	%f4
	bge,a,pn	%icc,	loop_4187
	ldd	[%l7 + 0x78],	%f0
	fcmple32	%f10,	%f8,	%o7
	bge,a,pn	%icc,	loop_4188
loop_4187:
	bneg,a	%icc,	loop_4189
	fmovde	%xcc,	%f1,	%f5
	fmovsvs	%icc,	%f2,	%f2
loop_4188:
	fpsub16s	%f2,	%f5,	%f1
loop_4189:
	te	%icc,	0x6
	edge16ln	%g4,	%o6,	%l3
	stx	%l4,	[%l7 + 0x48]
	ldsb	[%l7 + 0x4E],	%l6
	stx	%o1,	[%l7 + 0x38]
	movrgz	%l0,	0x040,	%i3
	tneg	%xcc,	0x5
	fbn,a	%fcc1,	loop_4190
	bne,pt	%icc,	loop_4191
	ldsh	[%l7 + 0x30],	%o5
	fmovsle	%icc,	%f12,	%f2
loop_4190:
	mulx	%g5,	%g3,	%l1
loop_4191:
	ldub	[%l7 + 0x7D],	%i7
	orcc	%g2,	%i0,	%g7
	addc	%g6,	0x11DA,	%o4
	fones	%f12
	tvs	%xcc,	0x5
	xnor	%i4,	0x0EAB,	%o0
	alignaddrl	%i6,	%g1,	%i5
	ldx	[%l7 + 0x40],	%o2
	taddcc	%i2,	%i1,	%o3
	fors	%f6,	%f3,	%f3
	movvc	%icc,	%l2,	%o7
	sth	%l5,	[%l7 + 0x76]
	fmovrslz	%o6,	%f7,	%f0
	fpmerge	%f10,	%f3,	%f4
	fmovrdgez	%l3,	%f6,	%f8
	fcmpeq16	%f0,	%f14,	%g4
	ldd	[%l7 + 0x08],	%f4
	lduh	[%l7 + 0x3A],	%l4
	lduw	[%l7 + 0x44],	%l6
	fmul8sux16	%f6,	%f8,	%f14
	fmovdcc	%icc,	%f5,	%f10
	edge16	%l0,	%i3,	%o1
	array32	%o5,	%g3,	%l1
	for	%f14,	%f10,	%f10
	fmovsn	%xcc,	%f3,	%f5
	fnands	%f12,	%f4,	%f15
	ldub	[%l7 + 0x56],	%g5
	fmovsne	%xcc,	%f15,	%f10
	orncc	%g2,	0x0621,	%i0
	fmovdn	%xcc,	%f14,	%f10
	orncc	%g7,	0x0B41,	%i7
	fcmped	%fcc0,	%f14,	%f4
	fmovdg	%icc,	%f6,	%f10
	fzero	%f14
	fpack32	%f0,	%f14,	%f2
	fnot2s	%f12,	%f6
	fmovsleu	%xcc,	%f5,	%f10
	ldsh	[%l7 + 0x3E],	%o4
	ldsb	[%l7 + 0x19],	%i4
	movre	%g6,	0x299,	%i6
	lduw	[%l7 + 0x0C],	%g1
	ldub	[%l7 + 0x1E],	%o0
	bge,a,pn	%xcc,	loop_4192
	fmovsvc	%icc,	%f7,	%f12
	te	%icc,	0x4
	bl,pt	%xcc,	loop_4193
loop_4192:
	ld	[%l7 + 0x60],	%f11
	fbuge	%fcc3,	loop_4194
	fba,a	%fcc1,	loop_4195
loop_4193:
	ld	[%l7 + 0x50],	%f3
	movl	%xcc,	%o2,	%i2
loop_4194:
	subc	%i5,	%o3,	%i1
loop_4195:
	ldx	[%l7 + 0x28],	%o7
	nop
	setx loop_4196, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stw	%l2,	[%l7 + 0x20]
	nop
	setx loop_4197, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	popc	0x0C78,	%o6
loop_4196:
	fbge	%fcc1,	loop_4198
	fmovsa	%icc,	%f9,	%f2
loop_4197:
	stw	%l5,	[%l7 + 0x18]
	sth	%g4,	[%l7 + 0x46]
loop_4198:
	ldsb	[%l7 + 0x31],	%l3
	ldsh	[%l7 + 0x08],	%l4
	fcmpeq32	%f2,	%f10,	%l0
	stb	%i3,	[%l7 + 0x5B]
	ldub	[%l7 + 0x09],	%o1
	fmovrse	%l6,	%f4,	%f10
	bg,a	%xcc,	loop_4199
	fnot1	%f4,	%f10
	fbule	%fcc2,	loop_4200
	fornot2s	%f10,	%f15,	%f13
loop_4199:
	fmovsvc	%xcc,	%f14,	%f10
	ldsh	[%l7 + 0x1E],	%g3
loop_4200:
	fmovsn	%xcc,	%f3,	%f10
	stw	%o5,	[%l7 + 0x10]
	fexpand	%f11,	%f8
	tge	%icc,	0x1
	ldd	[%l7 + 0x50],	%f6
	ldub	[%l7 + 0x45],	%g5
	sra	%g2,	%i0,	%l1
	subcc	%i7,	%g7,	%o4
	ldd	[%l7 + 0x18],	%f0
	srax	%i4,	0x06,	%g6
	andcc	%i6,	0x097A,	%o0
	stx	%g1,	[%l7 + 0x60]
	fandnot1	%f12,	%f12,	%f8
	edge16n	%i2,	%i5,	%o2
	movn	%icc,	%o3,	%i1
	edge16l	%o7,	%o6,	%l5
	fzeros	%f13
	siam	0x2
	movleu	%icc,	%g4,	%l3
	ldsh	[%l7 + 0x1C],	%l4
	ld	[%l7 + 0x08],	%f8
	ldsb	[%l7 + 0x1D],	%l0
	ble,a,pt	%xcc,	loop_4201
	fmovrdne	%l2,	%f12,	%f2
	array32	%i3,	%o1,	%g3
	or	%l6,	0x17E8,	%g5
loop_4201:
	fnot2	%f8,	%f10
	fmovrdne	%o5,	%f10,	%f2
	std	%f0,	[%l7 + 0x30]
	ldsw	[%l7 + 0x28],	%g2
	stb	%l1,	[%l7 + 0x0D]
	sth	%i0,	[%l7 + 0x70]
	fbl,a	%fcc3,	loop_4202
	fandnot2s	%f0,	%f15,	%f4
	subc	%g7,	0x0946,	%o4
	tsubcctv	%i7,	%g6,	%i6
loop_4202:
	ble	loop_4203
	brz,a	%o0,	loop_4204
	bvc,a	loop_4205
	fmovdle	%xcc,	%f12,	%f10
loop_4203:
	fmovrslez	%g1,	%f4,	%f2
loop_4204:
	brnz	%i4,	loop_4206
loop_4205:
	edge32l	%i5,	%i2,	%o2
	fnors	%f6,	%f13,	%f10
	pdist	%f6,	%f12,	%f12
loop_4206:
	fmul8ulx16	%f4,	%f2,	%f0
	fabss	%f4,	%f7
	or	%i1,	%o7,	%o3
	or	%l5,	0x0481,	%g4
	ldsw	[%l7 + 0x0C],	%o6
	fmovsl	%xcc,	%f13,	%f10
	ble,a,pt	%xcc,	loop_4207
	std	%f14,	[%l7 + 0x10]
	stw	%l3,	[%l7 + 0x64]
	bg	%xcc,	loop_4208
loop_4207:
	umulcc	%l0,	0x16D3,	%l2
	tsubcc	%i3,	%o1,	%g3
	fcmpeq32	%f6,	%f0,	%l6
loop_4208:
	fandnot1	%f4,	%f0,	%f8
	fsrc2	%f14,	%f6
	std	%f0,	[%l7 + 0x38]
	ldsh	[%l7 + 0x4A],	%l4
	fmovsa	%icc,	%f11,	%f6
	ldsw	[%l7 + 0x4C],	%g5
	fmovdgu	%xcc,	%f14,	%f12
	fmovdn	%icc,	%f5,	%f12
	bpos,a	%icc,	loop_4209
	fmovrdlz	%o5,	%f2,	%f0
	lduw	[%l7 + 0x18],	%l1
	call	loop_4210
loop_4209:
	lduh	[%l7 + 0x16],	%g2
	edge32	%g7,	%i0,	%o4
	bg	loop_4211
loop_4210:
	orcc	%g6,	%i6,	%i7
	brnz	%g1,	loop_4212
	lduw	[%l7 + 0x34],	%o0
loop_4211:
	xorcc	%i4,	%i2,	%i5
	ta	%icc,	0x3
loop_4212:
	edge32	%i1,	%o7,	%o3
	nop
	setx loop_4213, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	lduh	[%l7 + 0x2E],	%l5
	mova	%icc,	%g4,	%o2
	nop
	setx loop_4214, %l0, %l1
	jmpl %l1, %o6
loop_4213:
	st	%f6,	[%l7 + 0x3C]
	fpsub16s	%f5,	%f3,	%f15
	fmovrde	%l3,	%f2,	%f0
loop_4214:
	smul	%l0,	%l2,	%o1
	faligndata	%f0,	%f14,	%f10
	fmovsne	%xcc,	%f4,	%f12
	fmovrsne	%g3,	%f3,	%f2
	sdiv	%l6,	0x05B6,	%i3
	movrne	%l4,	0x245,	%g5
	stx	%o5,	[%l7 + 0x08]
	bge,a	%icc,	loop_4215
	fmovdg	%xcc,	%f1,	%f10
	ldsb	[%l7 + 0x6A],	%g2
	lduh	[%l7 + 0x76],	%l1
loop_4215:
	stb	%g7,	[%l7 + 0x52]
	stb	%i0,	[%l7 + 0x28]
	siam	0x2
	ldub	[%l7 + 0x20],	%o4
	bneg,a,pn	%xcc,	loop_4216
	udivcc	%i6,	0x02C0,	%g6
	srax	%i7,	0x17,	%g1
	ldd	[%l7 + 0x38],	%f14
loop_4216:
	fpadd32s	%f12,	%f4,	%f8
	subc	%i4,	0x1849,	%i2
	fmovdge	%icc,	%f12,	%f5
	fmul8x16	%f0,	%f10,	%f12
	stx	%i5,	[%l7 + 0x40]
	fmovdg	%icc,	%f0,	%f14
	fpadd32	%f8,	%f6,	%f12
	fzeros	%f14
	st	%f14,	[%l7 + 0x14]
	lduh	[%l7 + 0x2E],	%i1
	fcmps	%fcc2,	%f12,	%f9
	ldsb	[%l7 + 0x14],	%o0
	ld	[%l7 + 0x40],	%f12
	fpadd32	%f12,	%f2,	%f4
	fmovsl	%icc,	%f2,	%f8
	taddcc	%o7,	0x17F8,	%o3
	fmovsneg	%icc,	%f8,	%f1
	xor	%l5,	%g4,	%o2
	fandnot1s	%f13,	%f15,	%f1
	fmovsleu	%icc,	%f12,	%f7
	tneg	%xcc,	0x4
	std	%f4,	[%l7 + 0x60]
	fmovdg	%xcc,	%f15,	%f10
	fmovse	%xcc,	%f12,	%f7
	ldsh	[%l7 + 0x44],	%l3
	nop
	setx loop_4217, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	nop
	setx loop_4218, %l0, %l1
	jmpl %l1, %l0
	fmuld8ulx16	%f7,	%f12,	%f10
	ldd	[%l7 + 0x48],	%f6
loop_4217:
	sth	%o6,	[%l7 + 0x28]
loop_4218:
	fpadd32s	%f12,	%f3,	%f9
	fpackfix	%f12,	%f4
	bne,a,pn	%xcc,	loop_4219
	movn	%icc,	%o1,	%g3
	fmovdl	%icc,	%f15,	%f12
	fmovdne	%icc,	%f14,	%f8
loop_4219:
	fsrc2	%f0,	%f8
	std	%f8,	[%l7 + 0x48]
	movn	%icc,	%l2,	%i3
	popc	%l4,	%l6
	edge32ln	%g5,	%g2,	%o5
	tvc	%xcc,	0x1
	fornot2s	%f11,	%f4,	%f1
	lduw	[%l7 + 0x4C],	%l1
	lduw	[%l7 + 0x60],	%g7
	ldsb	[%l7 + 0x25],	%i0
	lduw	[%l7 + 0x5C],	%i6
	ldd	[%l7 + 0x10],	%f0
	fbge	%fcc2,	loop_4220
	fbue,a	%fcc0,	loop_4221
	movcc	%xcc,	%o4,	%g6
	fmovda	%xcc,	%f6,	%f6
loop_4220:
	tl	%xcc,	0x0
loop_4221:
	lduw	[%l7 + 0x6C],	%g1
	edge16n	%i4,	%i7,	%i2
	stx	%i1,	[%l7 + 0x08]
	bge,a	loop_4222
	bcs,pt	%xcc,	loop_4223
	fbug,a	%fcc1,	loop_4224
	ldub	[%l7 + 0x62],	%i5
loop_4222:
	edge16ln	%o7,	%o0,	%o3
loop_4223:
	tpos	%xcc,	0x4
loop_4224:
	ldx	[%l7 + 0x70],	%g4
	edge8	%o2,	%l5,	%l3
	brgez,a	%l0,	loop_4225
	sth	%o1,	[%l7 + 0x46]
	ldsb	[%l7 + 0x44],	%g3
	fbuge	%fcc2,	loop_4226
loop_4225:
	lduw	[%l7 + 0x6C],	%l2
	stx	%i3,	[%l7 + 0x20]
	subc	%l4,	0x19D7,	%o6
loop_4226:
	ld	[%l7 + 0x08],	%f2
	tg	%icc,	0x7
	fcmpeq16	%f8,	%f2,	%g5
	add	%l6,	0x12C1,	%g2
	ldsw	[%l7 + 0x20],	%l1
	stw	%o5,	[%l7 + 0x6C]
	or	%g7,	%i0,	%o4
	fmovrslez	%g6,	%f4,	%f1
	lduw	[%l7 + 0x30],	%i6
	tcc	%xcc,	0x4
	lduw	[%l7 + 0x7C],	%g1
	fnegd	%f4,	%f10
	fbu	%fcc0,	loop_4227
	brnz	%i7,	loop_4228
	fmovdne	%icc,	%f13,	%f14
	stw	%i4,	[%l7 + 0x44]
loop_4227:
	fbue,a	%fcc0,	loop_4229
loop_4228:
	stx	%i2,	[%l7 + 0x68]
	fxnors	%f4,	%f9,	%f3
	add	%i1,	%o7,	%o0
loop_4229:
	andn	%o3,	%g4,	%i5
	sth	%o2,	[%l7 + 0x46]
	sllx	%l3,	0x0D,	%l5
	ld	[%l7 + 0x48],	%f9
	stw	%l0,	[%l7 + 0x40]
	fmovrslz	%g3,	%f5,	%f1
	ldsh	[%l7 + 0x2E],	%l2
	fmovrdlez	%i3,	%f8,	%f12
	nop
	setx loop_4230, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovdcs	%icc,	%f5,	%f11
	movrgez	%l4,	%o6,	%o1
	ldsw	[%l7 + 0x44],	%g5
loop_4230:
	tl	%icc,	0x4
	stw	%g2,	[%l7 + 0x40]
	sdiv	%l1,	0x16A6,	%o5
	edge8l	%l6,	%g7,	%i0
	bgu	%icc,	loop_4231
	udiv	%g6,	0x19B2,	%o4
	fmul8sux16	%f8,	%f4,	%f0
	call	loop_4232
loop_4231:
	fmovsle	%xcc,	%f1,	%f4
	fandnot2s	%f10,	%f15,	%f13
	fbe,a	%fcc3,	loop_4233
loop_4232:
	fblg,a	%fcc1,	loop_4234
	ldx	[%l7 + 0x20],	%i6
	fcmpgt32	%f14,	%f14,	%i7
loop_4233:
	stb	%i4,	[%l7 + 0x2B]
loop_4234:
	sdivx	%g1,	0x17BA,	%i2
	fbl,a	%fcc3,	loop_4235
	ldsh	[%l7 + 0x7C],	%o7
	tn	%icc,	0x0
	fcmpeq32	%f8,	%f10,	%i1
loop_4235:
	ldsw	[%l7 + 0x7C],	%o0
	stb	%g4,	[%l7 + 0x18]
	fbuge,a	%fcc2,	loop_4236
	fmovsneg	%xcc,	%f5,	%f1
	ld	[%l7 + 0x10],	%f11
	fmovsa	%icc,	%f10,	%f15
loop_4236:
	fpsub16s	%f12,	%f0,	%f6
	fba	%fcc3,	loop_4237
	te	%icc,	0x0
	fmul8ulx16	%f4,	%f2,	%f6
	array8	%i5,	%o2,	%o3
loop_4237:
	fmovrsne	%l3,	%f8,	%f9
	ldsw	[%l7 + 0x24],	%l5
	fnegs	%f7,	%f10
	movvs	%xcc,	%g3,	%l0
	fcmple32	%f14,	%f10,	%i3
	lduw	[%l7 + 0x4C],	%l4
	fmovrsgez	%o6,	%f14,	%f11
	fands	%f3,	%f0,	%f0
	brz,a	%l2,	loop_4238
	ldsh	[%l7 + 0x10],	%g5
	ldd	[%l7 + 0x78],	%f2
	te	%xcc,	0x4
loop_4238:
	fmovsvc	%icc,	%f13,	%f12
	fmovrsne	%o1,	%f3,	%f14
	alignaddr	%l1,	%g2,	%l6
	movn	%icc,	%g7,	%o5
	ldsw	[%l7 + 0x34],	%i0
	orn	%o4,	0x01F8,	%g6
	fmovsg	%icc,	%f5,	%f3
	array8	%i7,	%i6,	%g1
	stb	%i4,	[%l7 + 0x5F]
	fnegs	%f4,	%f8
	stb	%o7,	[%l7 + 0x18]
	lduw	[%l7 + 0x28],	%i2
	fzero	%f2
	fmovsg	%icc,	%f8,	%f15
	fmovrde	%o0,	%f8,	%f10
	fmovdcs	%icc,	%f11,	%f7
	st	%f2,	[%l7 + 0x64]
	taddcctv	%g4,	0x0BFA,	%i1
	subccc	%i5,	0x0D51,	%o3
	fxnors	%f5,	%f12,	%f13
	ld	[%l7 + 0x60],	%f12
	movrgz	%o2,	0x190,	%l3
	std	%f12,	[%l7 + 0x10]
	ldsb	[%l7 + 0x13],	%g3
	sll	%l0,	0x0E,	%i3
	movvc	%icc,	%l5,	%o6
	fsrc1s	%f11,	%f1
	fcmps	%fcc3,	%f13,	%f14
	srl	%l2,	%l4,	%g5
	srlx	%o1,	%l1,	%g2
	bgu,a	%xcc,	loop_4239
	fmovsleu	%xcc,	%f7,	%f0
	fbl,a	%fcc2,	loop_4240
	fbl,a	%fcc3,	loop_4241
loop_4239:
	st	%f2,	[%l7 + 0x18]
	fmovdl	%icc,	%f14,	%f8
loop_4240:
	fbule	%fcc2,	loop_4242
loop_4241:
	st	%f12,	[%l7 + 0x68]
	fmovrslz	%l6,	%f8,	%f10
	ldsb	[%l7 + 0x69],	%g7
loop_4242:
	movpos	%xcc,	%i0,	%o4
	ldd	[%l7 + 0x78],	%f12
	ld	[%l7 + 0x10],	%f8
	fandnot2s	%f15,	%f13,	%f9
	stw	%o5,	[%l7 + 0x7C]
	srl	%i7,	%i6,	%g6
	fcmpgt32	%f8,	%f6,	%g1
	fcmpes	%fcc2,	%f3,	%f12
	st	%f12,	[%l7 + 0x08]
	ldub	[%l7 + 0x50],	%i4
	fmul8x16au	%f0,	%f8,	%f0
	fcmpgt32	%f2,	%f2,	%o7
	siam	0x3
	ldsh	[%l7 + 0x78],	%o0
	std	%f10,	[%l7 + 0x60]
	fmovdn	%xcc,	%f3,	%f6
	fornot2s	%f0,	%f11,	%f11
	fpmerge	%f14,	%f6,	%f10
	bg	loop_4243
	fpadd16s	%f0,	%f5,	%f9
	fors	%f12,	%f8,	%f15
	mulx	%i2,	%i1,	%i5
loop_4243:
	fmovsne	%xcc,	%f11,	%f9
	umul	%o3,	0x03C5,	%g4
	fsrc2s	%f5,	%f6
	fmovsge	%xcc,	%f7,	%f2
	addcc	%l3,	%g3,	%l0
	fpadd32	%f2,	%f6,	%f6
	fmul8x16au	%f5,	%f14,	%f4
	fmovdgu	%icc,	%f4,	%f4
	bvc,a,pn	%icc,	loop_4244
	st	%f1,	[%l7 + 0x5C]
	tle	%icc,	0x6
	tsubcc	%o2,	0x08BE,	%i3
loop_4244:
	std	%f10,	[%l7 + 0x28]
	bg	loop_4245
	lduh	[%l7 + 0x60],	%l5
	ld	[%l7 + 0x08],	%f10
	fones	%f15
loop_4245:
	bn,a	%icc,	loop_4246
	fbo,a	%fcc0,	loop_4247
	stx	%l2,	[%l7 + 0x60]
	ldsb	[%l7 + 0x1A],	%l4
loop_4246:
	taddcc	%o6,	%o1,	%g5
loop_4247:
	fmovrdlz	%g2,	%f4,	%f6
	fpsub16s	%f10,	%f4,	%f7
	fmovde	%xcc,	%f5,	%f9
	ldub	[%l7 + 0x24],	%l6
	ldsh	[%l7 + 0x26],	%l1
	ldx	[%l7 + 0x40],	%g7
	brgz,a	%i0,	loop_4248
	lduw	[%l7 + 0x68],	%o5
	umulcc	%o4,	0x12C3,	%i7
	ld	[%l7 + 0x54],	%f10
loop_4248:
	edge8l	%i6,	%g6,	%i4
	lduw	[%l7 + 0x3C],	%o7
	fmovdl	%xcc,	%f0,	%f10
	fpackfix	%f2,	%f14
	ld	[%l7 + 0x10],	%f14
	fnot2	%f14,	%f8
	fmovsne	%icc,	%f9,	%f13
	siam	0x1
	fpmerge	%f9,	%f0,	%f10
	fmovdpos	%icc,	%f0,	%f4
	fmovdg	%icc,	%f1,	%f5
	lduh	[%l7 + 0x38],	%g1
	umulcc	%i2,	0x1F3A,	%o0
	fbg	%fcc1,	loop_4249
	pdist	%f0,	%f6,	%f0
	fmovrsne	%i5,	%f1,	%f11
	fmovrdgz	%i1,	%f14,	%f2
loop_4249:
	alignaddr	%g4,	%o3,	%l3
	fmovsle	%xcc,	%f2,	%f6
	fnand	%f4,	%f0,	%f12
	fmovde	%icc,	%f1,	%f13
	movg	%icc,	%l0,	%o2
	lduh	[%l7 + 0x36],	%i3
	fmovscs	%icc,	%f14,	%f9
	fmovrsne	%l5,	%f1,	%f0
	te	%icc,	0x2
	ldsb	[%l7 + 0x19],	%l2
	fmovsneg	%xcc,	%f0,	%f3
	addccc	%l4,	0x140A,	%g3
	fpadd16	%f0,	%f2,	%f6
	lduh	[%l7 + 0x08],	%o1
	ldsw	[%l7 + 0x28],	%o6
	fnot1s	%f5,	%f10
	ldd	[%l7 + 0x58],	%f6
	fsrc1s	%f10,	%f4
	edge16n	%g5,	%g2,	%l6
	array16	%g7,	%l1,	%i0
	fbg	%fcc1,	loop_4250
	sth	%o4,	[%l7 + 0x78]
	ldx	[%l7 + 0x68],	%i7
	fnor	%f6,	%f10,	%f6
loop_4250:
	fands	%f6,	%f9,	%f15
	subccc	%o5,	0x0196,	%g6
	std	%f4,	[%l7 + 0x50]
	ldsw	[%l7 + 0x7C],	%i4
	be	loop_4251
	edge32l	%i6,	%g1,	%i2
	ldd	[%l7 + 0x30],	%f0
	sth	%o0,	[%l7 + 0x62]
loop_4251:
	fexpand	%f9,	%f4
	brz	%i5,	loop_4252
	lduh	[%l7 + 0x54],	%i1
	fmovrdlz	%g4,	%f14,	%f4
	fcmpgt16	%f14,	%f8,	%o7
loop_4252:
	edge8l	%o3,	%l0,	%o2
	ba,pn	%icc,	loop_4253
	std	%f12,	[%l7 + 0x18]
	stb	%i3,	[%l7 + 0x6B]
	ldsw	[%l7 + 0x78],	%l3
loop_4253:
	nop
	setx loop_4254, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fbul	%fcc2,	loop_4255
	addcc	%l2,	0x187B,	%l5
	sth	%l4,	[%l7 + 0x10]
loop_4254:
	fnot2s	%f13,	%f5
loop_4255:
	ldd	[%l7 + 0x08],	%f14
	fbe,a	%fcc2,	loop_4256
	fmovdl	%icc,	%f14,	%f3
	fmovdle	%icc,	%f14,	%f12
	bn	%xcc,	loop_4257
loop_4256:
	ldd	[%l7 + 0x60],	%f4
	orcc	%o1,	0x0E74,	%o6
	fmovs	%f12,	%f9
loop_4257:
	lduh	[%l7 + 0x12],	%g3
	bvs	loop_4258
	ldx	[%l7 + 0x10],	%g2
	fbo	%fcc2,	loop_4259
	lduw	[%l7 + 0x2C],	%l6
loop_4258:
	fmovrse	%g7,	%f4,	%f13
	tcs	%xcc,	0x4
loop_4259:
	fmovdg	%icc,	%f3,	%f15
	fmovsleu	%xcc,	%f7,	%f4
	ldsh	[%l7 + 0x1A],	%g5
	fmovda	%icc,	%f1,	%f7
	lduw	[%l7 + 0x44],	%l1
	sll	%i0,	0x07,	%i7
	movg	%xcc,	%o4,	%g6
	stw	%o5,	[%l7 + 0x40]
	sub	%i4,	%g1,	%i6
	fnegd	%f6,	%f2
	fcmple16	%f0,	%f8,	%i2
	popc	0x16A8,	%i5
	srlx	%i1,	%g4,	%o0
	st	%f5,	[%l7 + 0x5C]
	fbo	%fcc3,	loop_4260
	ldd	[%l7 + 0x48],	%f0
	fornot1s	%f1,	%f5,	%f15
	call	loop_4261
loop_4260:
	ldsw	[%l7 + 0x20],	%o3
	nop
	setx loop_4262, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	tneg	%icc,	0x0
loop_4261:
	fmovrdlz	%l0,	%f6,	%f14
	ldx	[%l7 + 0x60],	%o7
loop_4262:
	stx	%i3,	[%l7 + 0x38]
	fmovse	%icc,	%f5,	%f4
	tg	%xcc,	0x6
	fmovdge	%icc,	%f5,	%f6
	ldub	[%l7 + 0x34],	%o2
	lduw	[%l7 + 0x34],	%l3
	edge8l	%l5,	%l4,	%o1
	fabsd	%f14,	%f4
	fmovd	%f6,	%f8
	ldsw	[%l7 + 0x0C],	%l2
	edge8ln	%g3,	%o6,	%l6
	fabsd	%f6,	%f14
	stw	%g2,	[%l7 + 0x48]
	fnor	%f2,	%f2,	%f2
	fmovde	%xcc,	%f1,	%f10
	fornot2	%f12,	%f4,	%f14
	movcs	%xcc,	%g5,	%g7
	fmovdge	%xcc,	%f11,	%f1
	fbe	%fcc1,	loop_4263
	ldub	[%l7 + 0x43],	%i0
	bvc	%xcc,	loop_4264
	ld	[%l7 + 0x20],	%f9
loop_4263:
	bpos,a,pn	%xcc,	loop_4265
	fpadd16s	%f6,	%f14,	%f11
loop_4264:
	fmuld8sux16	%f3,	%f8,	%f8
	st	%f1,	[%l7 + 0x50]
loop_4265:
	bcc,pn	%xcc,	loop_4266
	edge16n	%l1,	%i7,	%o4
	array8	%o5,	%g6,	%i4
	bl,pn	%xcc,	loop_4267
loop_4266:
	ldsh	[%l7 + 0x2A],	%g1
	ld	[%l7 + 0x34],	%f12
	edge16n	%i6,	%i5,	%i2
loop_4267:
	fmovdgu	%xcc,	%f4,	%f0
	fabss	%f4,	%f6
	stb	%g4,	[%l7 + 0x23]
	fcmped	%fcc1,	%f8,	%f6
	xorcc	%i1,	0x0BEA,	%o3
	lduw	[%l7 + 0x0C],	%o0
	udivx	%o7,	0x0873,	%l0
	fbu	%fcc2,	loop_4268
	fbo	%fcc1,	loop_4269
	ldub	[%l7 + 0x67],	%o2
	ldsh	[%l7 + 0x0A],	%i3
loop_4268:
	add	%l3,	%l4,	%l5
loop_4269:
	subcc	%l2,	0x1AF0,	%g3
	fbe,a	%fcc0,	loop_4270
	fbuge,a	%fcc3,	loop_4271
	fsrc2s	%f0,	%f10
	fexpand	%f2,	%f4
loop_4270:
	fmovse	%xcc,	%f2,	%f6
loop_4271:
	sdivx	%o6,	0x147F,	%o1
	fcmpd	%fcc2,	%f6,	%f12
	fbo	%fcc0,	loop_4272
	fexpand	%f4,	%f4
	fmovrslz	%g2,	%f12,	%f0
	fmovse	%icc,	%f4,	%f0
loop_4272:
	std	%f2,	[%l7 + 0x68]
	ldd	[%l7 + 0x58],	%f10
	st	%f7,	[%l7 + 0x4C]
	ldsb	[%l7 + 0x1C],	%g5
	subccc	%l6,	%g7,	%l1
	ldd	[%l7 + 0x28],	%f14
	ldsb	[%l7 + 0x5D],	%i7
	bleu,a,pn	%icc,	loop_4273
	fmovrde	%i0,	%f4,	%f2
	st	%f13,	[%l7 + 0x50]
	fzeros	%f5
loop_4273:
	stx	%o4,	[%l7 + 0x30]
	addc	%g6,	0x1DD6,	%o5
	fpadd32s	%f15,	%f14,	%f11
	fandnot2	%f8,	%f2,	%f0
	fmul8x16	%f3,	%f2,	%f2
	array8	%g1,	%i4,	%i5
	fxnors	%f4,	%f7,	%f13
	nop
	setx loop_4274, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldsh	[%l7 + 0x36],	%i2
	fblg,a	%fcc1,	loop_4275
	brgez	%g4,	loop_4276
loop_4274:
	or	%i6,	%i1,	%o0
	ldsh	[%l7 + 0x5A],	%o3
loop_4275:
	fmovscs	%icc,	%f10,	%f2
loop_4276:
	fmovdgu	%icc,	%f10,	%f5
	ldsw	[%l7 + 0x40],	%o7
	bvc,a,pt	%xcc,	loop_4277
	xor	%o2,	%l0,	%i3
	ldx	[%l7 + 0x58],	%l4
	siam	0x6
loop_4277:
	andcc	%l5,	0x0140,	%l3
	array32	%l2,	%o6,	%g3
	taddcctv	%g2,	0x0C4C,	%o1
	fmovspos	%xcc,	%f7,	%f10
	tg	%icc,	0x0
	stx	%g5,	[%l7 + 0x10]
	fmovdle	%icc,	%f8,	%f12
	movneg	%xcc,	%g7,	%l6
	popc	%l1,	%i0
	array16	%i7,	%g6,	%o4
	fmovscs	%xcc,	%f12,	%f13
	stx	%g1,	[%l7 + 0x58]
	ldsh	[%l7 + 0x76],	%o5
	stb	%i4,	[%l7 + 0x5D]
	ld	[%l7 + 0x18],	%f8
	ldsh	[%l7 + 0x72],	%i5
	lduh	[%l7 + 0x60],	%g4
	edge32n	%i6,	%i1,	%o0
	tcc	%xcc,	0x5
	bl,a	%xcc,	loop_4278
	fxors	%f5,	%f10,	%f15
	ldsh	[%l7 + 0x50],	%i2
	lduh	[%l7 + 0x42],	%o7
loop_4278:
	fmovrdgz	%o2,	%f10,	%f12
	brlez,a	%l0,	loop_4279
	smul	%i3,	0x1D5C,	%o3
	movrne	%l5,	0x232,	%l3
	fmovsa	%icc,	%f14,	%f2
loop_4279:
	fmovsge	%icc,	%f3,	%f6
	ldsb	[%l7 + 0x3B],	%l2
	tne	%xcc,	0x7
	fmovdle	%icc,	%f7,	%f7
	movrgz	%l4,	%g3,	%g2
	for	%f8,	%f6,	%f4
	fors	%f0,	%f8,	%f4
	edge32	%o1,	%o6,	%g7
	ldsw	[%l7 + 0x2C],	%g5
	ldsw	[%l7 + 0x1C],	%l1
	stw	%i0,	[%l7 + 0x64]
	mulscc	%i7,	0x14A1,	%l6
	ldsh	[%l7 + 0x08],	%o4
	lduw	[%l7 + 0x6C],	%g1
	bvc,a	%icc,	loop_4280
	ldsh	[%l7 + 0x3C],	%o5
	fmovrdgez	%i4,	%f2,	%f4
	ldx	[%l7 + 0x08],	%g6
loop_4280:
	lduh	[%l7 + 0x18],	%i5
	fbge	%fcc0,	loop_4281
	ta	%icc,	0x0
	fabsd	%f2,	%f4
	ldd	[%l7 + 0x38],	%f4
loop_4281:
	tneg	%icc,	0x6
	fmovrsgz	%g4,	%f0,	%f15
	st	%f5,	[%l7 + 0x7C]
	bneg,a,pt	%xcc,	loop_4282
	ldx	[%l7 + 0x18],	%i1
	fcmpd	%fcc2,	%f6,	%f4
	fmovrdlz	%i6,	%f10,	%f0
loop_4282:
	fmovrsgez	%i2,	%f1,	%f12
	fmovdvc	%icc,	%f2,	%f11
	fba,a	%fcc0,	loop_4283
	fbge	%fcc1,	loop_4284
	fandnot2s	%f5,	%f9,	%f9
	brnz	%o7,	loop_4285
loop_4283:
	edge32n	%o0,	%l0,	%i3
loop_4284:
	movre	%o2,	%l5,	%o3
	edge32	%l3,	%l2,	%l4
loop_4285:
	tl	%icc,	0x1
	fmovrsne	%g3,	%f5,	%f7
	ta	%icc,	0x1
	ldx	[%l7 + 0x58],	%o1
	ldsw	[%l7 + 0x54],	%g2
	tcc	%icc,	0x0
	fmovde	%xcc,	%f15,	%f4
	fandnot1	%f10,	%f2,	%f12
	udivcc	%g7,	0x05B3,	%o6
	fbu,a	%fcc2,	loop_4286
	fnot2s	%f6,	%f12
	st	%f12,	[%l7 + 0x1C]
	st	%f13,	[%l7 + 0x70]
loop_4286:
	fnegd	%f14,	%f14
	tsubcc	%g5,	%l1,	%i0
	fandnot2	%f6,	%f0,	%f4
	movn	%icc,	%i7,	%o4
	fornot2s	%f2,	%f0,	%f1
	movneg	%icc,	%g1,	%l6
	std	%f4,	[%l7 + 0x78]
	fpadd32	%f10,	%f8,	%f6
	stx	%i4,	[%l7 + 0x18]
	fpmerge	%f8,	%f2,	%f8
	lduh	[%l7 + 0x2E],	%g6
	bpos	loop_4287
	tge	%xcc,	0x4
	fmovrde	%i5,	%f2,	%f6
	bcc,a	%xcc,	loop_4288
loop_4287:
	xnorcc	%o5,	%g4,	%i6
	fbule	%fcc1,	loop_4289
	fmovdge	%icc,	%f9,	%f5
loop_4288:
	fnor	%f8,	%f12,	%f2
	andn	%i1,	%o7,	%i2
loop_4289:
	lduw	[%l7 + 0x64],	%l0
	xorcc	%i3,	0x0A0E,	%o2
	lduh	[%l7 + 0x64],	%o0
	ldsh	[%l7 + 0x16],	%l5
	fpadd32	%f0,	%f12,	%f10
	addcc	%l3,	0x109F,	%o3
	bshuffle	%f8,	%f8,	%f12
	ld	[%l7 + 0x14],	%f2
	stw	%l2,	[%l7 + 0x3C]
	ba,a	%xcc,	loop_4290
	ldsh	[%l7 + 0x16],	%l4
	te	%xcc,	0x2
	movge	%xcc,	%o1,	%g3
loop_4290:
	fmovdn	%xcc,	%f2,	%f4
	tvs	%xcc,	0x5
	ldsh	[%l7 + 0x7A],	%g2
	tle	%icc,	0x3
	movre	%g7,	%o6,	%g5
	brz,a	%l1,	loop_4291
	st	%f13,	[%l7 + 0x7C]
	fmovda	%icc,	%f2,	%f5
	ldx	[%l7 + 0x70],	%i7
loop_4291:
	brgez	%i0,	loop_4292
	ldsh	[%l7 + 0x74],	%g1
	tl	%xcc,	0x7
	ldd	[%l7 + 0x58],	%f12
loop_4292:
	fnegd	%f8,	%f6
	movg	%icc,	%l6,	%i4
	edge8n	%o4,	%i5,	%g6
	fmovs	%f7,	%f5
	std	%f6,	[%l7 + 0x48]
	andncc	%o5,	%i6,	%g4
	fcmpne32	%f6,	%f0,	%i1
	umul	%o7,	0x0C30,	%i2
	sth	%i3,	[%l7 + 0x18]
	taddcc	%l0,	0x1D5A,	%o2
	fmul8x16au	%f8,	%f4,	%f8
	st	%f12,	[%l7 + 0x10]
	bvs	%icc,	loop_4293
	tsubcc	%o0,	0x0B75,	%l5
	fmovspos	%xcc,	%f11,	%f15
	fcmpne16	%f14,	%f4,	%o3
loop_4293:
	ld	[%l7 + 0x4C],	%f6
	stw	%l2,	[%l7 + 0x30]
	fmovdpos	%icc,	%f13,	%f10
	brlez,a	%l4,	loop_4294
	array8	%o1,	%g3,	%g2
	nop
	setx loop_4295, %l0, %l1
	jmpl %l1, %g7
	fxors	%f11,	%f10,	%f9
loop_4294:
	st	%f15,	[%l7 + 0x50]
	st	%f11,	[%l7 + 0x34]
loop_4295:
	movg	%xcc,	%o6,	%g5
	movl	%xcc,	%l3,	%l1
	ldsw	[%l7 + 0x08],	%i0
	fmovdne	%icc,	%f6,	%f1
	brlz,a	%i7,	loop_4296
	lduw	[%l7 + 0x74],	%l6
	fcmpes	%fcc2,	%f8,	%f13
	stx	%i4,	[%l7 + 0x60]
loop_4296:
	umul	%o4,	0x0D4A,	%i5
	srl	%g1,	0x10,	%o5
	stw	%i6,	[%l7 + 0x4C]
	sdivx	%g4,	0x1907,	%g6
	ldub	[%l7 + 0x6F],	%i1
	fbe,a	%fcc2,	loop_4297
	fmovsle	%xcc,	%f2,	%f4
	fbg	%fcc0,	loop_4298
	fbo	%fcc0,	loop_4299
loop_4297:
	stw	%i2,	[%l7 + 0x7C]
	bge,a	loop_4300
loop_4298:
	ldsw	[%l7 + 0x3C],	%i3
loop_4299:
	ldd	[%l7 + 0x58],	%f12
	fmovsleu	%xcc,	%f9,	%f7
loop_4300:
	std	%f8,	[%l7 + 0x58]
	udivx	%o7,	0x157A,	%l0
	ldsb	[%l7 + 0x4F],	%o2
	std	%f6,	[%l7 + 0x38]
	stb	%l5,	[%l7 + 0x18]
	lduw	[%l7 + 0x74],	%o3
	lduw	[%l7 + 0x44],	%o0
	fmovsneg	%xcc,	%f5,	%f0
	tgu	%xcc,	0x4
	ldd	[%l7 + 0x50],	%f14
	ldsh	[%l7 + 0x66],	%l2
	ldsh	[%l7 + 0x38],	%o1
	and	%g3,	0x1108,	%l4
	movl	%xcc,	%g7,	%g2
	sth	%o6,	[%l7 + 0x4A]
	mulscc	%g5,	%l3,	%i0
	movpos	%xcc,	%i7,	%l1
	sra	%l6,	0x07,	%i4
	sdivcc	%i5,	0x13C4,	%g1
	stb	%o5,	[%l7 + 0x44]
	stx	%i6,	[%l7 + 0x50]
	fmovdneg	%icc,	%f5,	%f7
	fmovrslez	%o4,	%f15,	%f10
	orncc	%g4,	%i1,	%g6
	tpos	%icc,	0x2
	edge32	%i2,	%i3,	%o7
	fmovsle	%xcc,	%f6,	%f8
	sth	%o2,	[%l7 + 0x5C]
	ldsh	[%l7 + 0x6C],	%l5
	fmovsvc	%xcc,	%f9,	%f4
	edge16	%l0,	%o0,	%o3
	subcc	%o1,	0x0740,	%g3
	umulcc	%l4,	%l2,	%g7
	movvs	%xcc,	%o6,	%g2
	fzeros	%f13
	sth	%l3,	[%l7 + 0x3E]
	ldsh	[%l7 + 0x32],	%g5
	fbue	%fcc1,	loop_4301
	tleu	%icc,	0x5
	edge16ln	%i0,	%l1,	%i7
	fcmpgt32	%f0,	%f8,	%i4
loop_4301:
	ldsb	[%l7 + 0x08],	%l6
	st	%f14,	[%l7 + 0x2C]
	fmovrsgez	%i5,	%f5,	%f3
	fornot2s	%f10,	%f11,	%f10
	taddcctv	%o5,	%i6,	%o4
	ldsb	[%l7 + 0x7D],	%g4
	fbn,a	%fcc2,	loop_4302
	fornot1	%f14,	%f8,	%f12
	tleu	%icc,	0x7
	ldsw	[%l7 + 0x3C],	%g1
loop_4302:
	stb	%g6,	[%l7 + 0x3A]
	ldsh	[%l7 + 0x0C],	%i1
	edge32	%i3,	%i2,	%o7
	umulcc	%l5,	0x017F,	%o2
	tg	%icc,	0x7
	fnot2	%f2,	%f12
	mova	%icc,	%o0,	%l0
	fand	%f6,	%f10,	%f8
	bne	%xcc,	loop_4303
	lduh	[%l7 + 0x66],	%o3
	bgu	%xcc,	loop_4304
	fsrc1s	%f10,	%f1
loop_4303:
	fcmpgt32	%f8,	%f14,	%o1
	ld	[%l7 + 0x18],	%f13
loop_4304:
	bpos,a,pn	%icc,	loop_4305
	taddcc	%g3,	%l4,	%g7
	movcc	%xcc,	%l2,	%o6
	fmovdvs	%xcc,	%f11,	%f2
loop_4305:
	bpos,a	%xcc,	loop_4306
	bg,pt	%icc,	loop_4307
	tne	%xcc,	0x5
	srlx	%l3,	0x1A,	%g5
loop_4306:
	tsubcc	%g2,	%l1,	%i7
loop_4307:
	lduh	[%l7 + 0x58],	%i4
	fandnot1s	%f14,	%f15,	%f9
	fbo,a	%fcc1,	loop_4308
	sth	%i0,	[%l7 + 0x54]
	fbge	%fcc0,	loop_4309
	fpadd32	%f0,	%f2,	%f2
loop_4308:
	movne	%icc,	%l6,	%o5
	bcc,a,pt	%icc,	loop_4310
loop_4309:
	udivcc	%i6,	0x1BFA,	%i5
	array32	%g4,	%o4,	%g6
	fmovdpos	%icc,	%f11,	%f8
loop_4310:
	fmovdg	%icc,	%f7,	%f6
	sub	%g1,	%i1,	%i3
	addccc	%i2,	0x01DD,	%o7
	addcc	%l5,	%o0,	%l0
	movcs	%icc,	%o3,	%o1
	fpadd32	%f12,	%f12,	%f0
	tcc	%icc,	0x4
	std	%f0,	[%l7 + 0x68]
	ldsh	[%l7 + 0x28],	%o2
	fmovdgu	%icc,	%f1,	%f12
	movcs	%xcc,	%l4,	%g7
	fbl	%fcc0,	loop_4311
	tle	%icc,	0x1
	sllx	%g3,	%l2,	%l3
	fmovrdlz	%g5,	%f14,	%f2
loop_4311:
	ba	loop_4312
	fmul8ulx16	%f12,	%f0,	%f6
	taddcc	%o6,	0x088C,	%g2
	ldub	[%l7 + 0x39],	%i7
loop_4312:
	fmovsgu	%xcc,	%f7,	%f13
	fblg,a	%fcc0,	loop_4313
	fmovdne	%xcc,	%f0,	%f2
	fmovsl	%icc,	%f11,	%f13
	tsubcctv	%i4,	0x0915,	%i0
loop_4313:
	stx	%l6,	[%l7 + 0x40]
	fmovrdlez	%l1,	%f6,	%f0
	fpack32	%f2,	%f12,	%f12
	fabsd	%f2,	%f6
	edge8l	%o5,	%i6,	%i5
	fmovdgu	%icc,	%f6,	%f14
	fmul8x16au	%f10,	%f7,	%f10
	fmovdg	%xcc,	%f14,	%f12
	movrlz	%g4,	0x2AA,	%o4
	movrgz	%g6,	0x35B,	%i1
	fpadd16	%f2,	%f4,	%f0
	movl	%icc,	%i3,	%g1
	ldsb	[%l7 + 0x5D],	%i2
	fnand	%f6,	%f6,	%f4
	sth	%o7,	[%l7 + 0x64]
	te	%icc,	0x6
	sdivcc	%o0,	0x0B23,	%l0
	bne,a	%xcc,	loop_4314
	st	%f13,	[%l7 + 0x74]
	fcmpgt32	%f0,	%f6,	%l5
	ldd	[%l7 + 0x58],	%f12
loop_4314:
	fcmpeq16	%f14,	%f4,	%o3
	brz,a	%o2,	loop_4315
	fba	%fcc2,	loop_4316
	movcs	%icc,	%o1,	%g7
	subccc	%l4,	0x0371,	%l2
loop_4315:
	subc	%g3,	%l3,	%g5
loop_4316:
	fcmple32	%f4,	%f2,	%g2
	xnor	%o6,	%i4,	%i7
	edge32	%l6,	%l1,	%i0
	tneg	%xcc,	0x6
	be,a	loop_4317
	fmul8ulx16	%f8,	%f2,	%f12
	fmovdl	%xcc,	%f9,	%f0
	movrgez	%i6,	0x14B,	%i5
loop_4317:
	smul	%g4,	%o4,	%o5
	bvs,pt	%icc,	loop_4318
	fbu,a	%fcc0,	loop_4319
	fbuge	%fcc3,	loop_4320
	udivx	%i1,	0x01A4,	%i3
loop_4318:
	fxors	%f10,	%f7,	%f8
loop_4319:
	fmovspos	%xcc,	%f2,	%f12
loop_4320:
	subcc	%g1,	0x14B3,	%i2
	fbuge,a	%fcc2,	loop_4321
	tcs	%xcc,	0x3
	st	%f6,	[%l7 + 0x10]
	fpsub16s	%f5,	%f0,	%f6
loop_4321:
	fbne	%fcc2,	loop_4322
	fmovscs	%icc,	%f0,	%f0
	be,pt	%icc,	loop_4323
	mova	%xcc,	%g6,	%o0
loop_4322:
	ldsb	[%l7 + 0x12],	%l0
	fmovdneg	%xcc,	%f1,	%f15
loop_4323:
	stb	%o7,	[%l7 + 0x4C]
	tpos	%xcc,	0x2
	stb	%l5,	[%l7 + 0x38]
	st	%f7,	[%l7 + 0x78]
	stx	%o2,	[%l7 + 0x48]
	fxors	%f6,	%f14,	%f1
	ld	[%l7 + 0x18],	%f12
	stw	%o1,	[%l7 + 0x44]
	ld	[%l7 + 0x14],	%f15
	fabsd	%f8,	%f10
	tgu	%xcc,	0x2
	fandnot2	%f12,	%f0,	%f12
	stx	%o3,	[%l7 + 0x48]
	st	%f6,	[%l7 + 0x44]
	mulscc	%g7,	%l4,	%l2
	ldx	[%l7 + 0x50],	%l3
	fmovrdgz	%g3,	%f6,	%f0
	ldsb	[%l7 + 0x6B],	%g2
	sth	%o6,	[%l7 + 0x56]
	bvc,a,pt	%xcc,	loop_4324
	fmovrsgez	%i4,	%f15,	%f7
	fexpand	%f3,	%f6
	stb	%i7,	[%l7 + 0x54]
loop_4324:
	ldx	[%l7 + 0x10],	%g5
	fnegd	%f14,	%f6
	brlez	%l1,	loop_4325
	ldub	[%l7 + 0x43],	%l6
	fmovrslez	%i6,	%f15,	%f0
	movpos	%icc,	%i5,	%i0
loop_4325:
	fmovda	%icc,	%f7,	%f7
	fnegs	%f0,	%f8
	stw	%o4,	[%l7 + 0x50]
	tleu	%xcc,	0x6
	ldsw	[%l7 + 0x0C],	%g4
	array32	%i1,	%o5,	%i3
	fcmpeq16	%f2,	%f8,	%i2
	udivcc	%g1,	0x0E3D,	%o0
	umulcc	%g6,	0x0E40,	%o7
	stw	%l5,	[%l7 + 0x64]
	fandnot1s	%f15,	%f1,	%f15
	fmovd	%f14,	%f8
	array16	%o2,	%o1,	%o3
	ldub	[%l7 + 0x7C],	%g7
	sdiv	%l0,	0x0234,	%l4
	bne,a,pn	%icc,	loop_4326
	fmovda	%xcc,	%f7,	%f2
	ldd	[%l7 + 0x28],	%f8
	movne	%xcc,	%l2,	%l3
loop_4326:
	ldx	[%l7 + 0x58],	%g3
	fmovs	%f5,	%f10
	ldsb	[%l7 + 0x59],	%g2
	bvs,a,pn	%xcc,	loop_4327
	std	%f0,	[%l7 + 0x38]
	edge8	%o6,	%i4,	%i7
	fpadd16s	%f10,	%f4,	%f13
loop_4327:
	sth	%g5,	[%l7 + 0x0A]
	sth	%l6,	[%l7 + 0x08]
	fones	%f4
	fmovdpos	%icc,	%f10,	%f3
	ldub	[%l7 + 0x69],	%l1
	st	%f14,	[%l7 + 0x20]
	std	%f0,	[%l7 + 0x10]
	lduh	[%l7 + 0x12],	%i5
	brnz	%i0,	loop_4328
	fsrc1s	%f6,	%f13
	stw	%i6,	[%l7 + 0x70]
	fbul,a	%fcc1,	loop_4329
loop_4328:
	fcmped	%fcc0,	%f2,	%f12
	andncc	%o4,	%g4,	%i1
	fandnot1	%f14,	%f4,	%f2
loop_4329:
	fbn	%fcc3,	loop_4330
	movg	%xcc,	%o5,	%i3
	tpos	%xcc,	0x7
	st	%f5,	[%l7 + 0x3C]
loop_4330:
	ldd	[%l7 + 0x28],	%f6
	movrne	%g1,	%i2,	%g6
	ldub	[%l7 + 0x1A],	%o0
	fpsub16	%f4,	%f4,	%f0
	movg	%xcc,	%l5,	%o7
	fsrc1s	%f0,	%f4
	stw	%o2,	[%l7 + 0x54]
	lduh	[%l7 + 0x38],	%o3
	fmovsgu	%xcc,	%f1,	%f15
	fmovscc	%icc,	%f14,	%f15
	movpos	%icc,	%g7,	%o1
	fmovsa	%xcc,	%f2,	%f10
	tgu	%xcc,	0x4
	subcc	%l0,	%l2,	%l4
	fmovdleu	%icc,	%f5,	%f14
	fandnot1s	%f4,	%f12,	%f9
	movvs	%xcc,	%g3,	%l3
	fsrc1s	%f5,	%f3
	std	%f2,	[%l7 + 0x10]
	movre	%g2,	0x0A6,	%i4
	ldx	[%l7 + 0x70],	%i7
	lduh	[%l7 + 0x36],	%o6
	st	%f14,	[%l7 + 0x60]
	fmovrdlz	%g5,	%f12,	%f2
	pdist	%f10,	%f0,	%f2
	edge8n	%l6,	%i5,	%l1
	ldsh	[%l7 + 0x72],	%i6
	fmovdvs	%icc,	%f10,	%f15
	nop
	setx loop_4331, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	stx	%o4,	[%l7 + 0x50]
	ta	%xcc,	0x0
	fbue	%fcc2,	loop_4332
loop_4331:
	ldsb	[%l7 + 0x77],	%g4
	addccc	%i0,	%o5,	%i1
	ldsh	[%l7 + 0x46],	%g1
loop_4332:
	edge32n	%i3,	%i2,	%g6
	stb	%l5,	[%l7 + 0x4B]
	fmovsle	%xcc,	%f9,	%f11
	edge32n	%o7,	%o2,	%o0
	fpadd32	%f12,	%f14,	%f14
	brlz,a	%g7,	loop_4333
	ldx	[%l7 + 0x20],	%o3
	fpadd32s	%f11,	%f9,	%f4
	andn	%l0,	0x13B6,	%l2
loop_4333:
	be,a	loop_4334
	add	%l4,	%g3,	%o1
	ldsb	[%l7 + 0x63],	%g2
	fbne,a	%fcc1,	loop_4335
loop_4334:
	fpadd32s	%f7,	%f6,	%f2
	fnegd	%f0,	%f0
	fmovspos	%xcc,	%f4,	%f8
loop_4335:
	udivx	%i4,	0x09F3,	%i7
	fmovdgu	%icc,	%f6,	%f13
	alignaddrl	%l3,	%g5,	%l6
	fmul8x16	%f2,	%f0,	%f12
	fmovdcc	%icc,	%f6,	%f1
	lduh	[%l7 + 0x24],	%o6
	alignaddrl	%i5,	%i6,	%l1
	ldub	[%l7 + 0x35],	%o4
	udivx	%g4,	0x1606,	%o5
	tl	%xcc,	0x4
	fornot1	%f4,	%f12,	%f14
	fxor	%f14,	%f14,	%f0
	andcc	%i0,	0x0209,	%i1
	fnot1s	%f15,	%f11
	ldd	[%l7 + 0x38],	%f2
	lduh	[%l7 + 0x26],	%i3
	st	%f12,	[%l7 + 0x78]
	st	%f9,	[%l7 + 0x10]
	fnot2	%f6,	%f0
	bne,a,pn	%xcc,	loop_4336
	fbo,a	%fcc2,	loop_4337
	fsrc1s	%f0,	%f12
	srlx	%i2,	0x18,	%g1
loop_4336:
	st	%f6,	[%l7 + 0x78]
loop_4337:
	edge8l	%g6,	%l5,	%o2
	ldsh	[%l7 + 0x2A],	%o0
	fcmple16	%f2,	%f0,	%g7
	tvc	%xcc,	0x6
	fba,a	%fcc2,	loop_4338
	bge,pt	%icc,	loop_4339
	ld	[%l7 + 0x70],	%f9
	sth	%o7,	[%l7 + 0x3C]
loop_4338:
	fbge,a	%fcc0,	loop_4340
loop_4339:
	std	%f8,	[%l7 + 0x08]
	ldsw	[%l7 + 0x20],	%o3
	fone	%f4
loop_4340:
	fbue,a	%fcc1,	loop_4341
	std	%f14,	[%l7 + 0x18]
	call	loop_4342
	ld	[%l7 + 0x68],	%f9
loop_4341:
	fmovsl	%xcc,	%f11,	%f15
	tsubcc	%l0,	%l2,	%l4
loop_4342:
	stw	%g3,	[%l7 + 0x64]
	sth	%o1,	[%l7 + 0x46]
	fbn,a	%fcc0,	loop_4343
	fpsub16	%f10,	%f10,	%f10
	fmovdpos	%xcc,	%f0,	%f1
	brz,a	%g2,	loop_4344
loop_4343:
	ldd	[%l7 + 0x10],	%f0
	fmovrdlz	%i7,	%f14,	%f2
	std	%f8,	[%l7 + 0x18]
loop_4344:
	popc	%l3,	%g5
	fxors	%f12,	%f3,	%f12
	std	%f0,	[%l7 + 0x60]
	fpackfix	%f2,	%f9
	movrgz	%l6,	%i4,	%i5
	brlz,a	%i6,	loop_4345
	stx	%l1,	[%l7 + 0x68]
	array8	%o4,	%g4,	%o6
	bgu	loop_4346
loop_4345:
	st	%f5,	[%l7 + 0x64]
	ldsb	[%l7 + 0x35],	%o5
	subccc	%i1,	%i0,	%i3
loop_4346:
	tsubcc	%i2,	0x0BAB,	%g6
	fbge,a	%fcc0,	loop_4347
	fxnor	%f4,	%f2,	%f0
	umul	%g1,	%l5,	%o0
	st	%f8,	[%l7 + 0x64]
loop_4347:
	udivcc	%o2,	0x0FEB,	%o7
	st	%f6,	[%l7 + 0x14]
	fmovdvs	%xcc,	%f15,	%f12
	udivx	%o3,	0x16D8,	%g7
	tpos	%xcc,	0x6
	edge8	%l0,	%l4,	%g3
	fnegs	%f6,	%f7
	fbule	%fcc2,	loop_4348
	fbue,a	%fcc3,	loop_4349
	srax	%l2,	0x01,	%g2
	fbge	%fcc3,	loop_4350
loop_4348:
	fornot2s	%f13,	%f14,	%f12
loop_4349:
	andcc	%i7,	0x14C8,	%l3
	ldub	[%l7 + 0x75],	%o1
loop_4350:
	bpos,a,pt	%icc,	loop_4351
	movle	%xcc,	%g5,	%i4
	umul	%l6,	%i6,	%l1
	fcmpd	%fcc1,	%f6,	%f8
loop_4351:
	lduh	[%l7 + 0x64],	%i5
	st	%f4,	[%l7 + 0x4C]
	fmovsgu	%icc,	%f13,	%f7
	fands	%f2,	%f15,	%f0
	fbuge	%fcc3,	loop_4352
	fmul8sux16	%f8,	%f6,	%f2
	fmuld8sux16	%f3,	%f1,	%f10
	edge8n	%o4,	%o6,	%g4
loop_4352:
	fbge,a	%fcc1,	loop_4353
	ldsh	[%l7 + 0x38],	%i1
	movg	%icc,	%i0,	%o5
	ldx	[%l7 + 0x50],	%i2
loop_4353:
	tge	%xcc,	0x6
	srax	%i3,	%g1,	%l5
	ldub	[%l7 + 0x6E],	%o0
	xor	%o2,	0x0A90,	%o7
	fmovsleu	%icc,	%f7,	%f8
	fxnor	%f6,	%f12,	%f6
	stw	%o3,	[%l7 + 0x4C]
	fbule,a	%fcc1,	loop_4354
	stx	%g6,	[%l7 + 0x28]
	bg,a	%xcc,	loop_4355
	fnors	%f15,	%f0,	%f2
loop_4354:
	fnor	%f10,	%f6,	%f8
	move	%icc,	%g7,	%l4
loop_4355:
	movleu	%xcc,	%g3,	%l2
	ldsb	[%l7 + 0x28],	%l0
	edge32	%i7,	%l3,	%o1
	fbg,a	%fcc0,	loop_4356
	tle	%icc,	0x5
	addccc	%g2,	%i4,	%l6
	fmovsg	%icc,	%f2,	%f15
loop_4356:
	brgez,a	%i6,	loop_4357
	bgu	%xcc,	loop_4358
	lduw	[%l7 + 0x48],	%l1
	sethi	0x0D4A,	%i5
loop_4357:
	fmovsneg	%xcc,	%f11,	%f13
loop_4358:
	sth	%o4,	[%l7 + 0x38]
	mulscc	%o6,	%g5,	%g4
	ldub	[%l7 + 0x27],	%i0
	fmovda	%icc,	%f6,	%f8
	fmovrsgz	%o5,	%f1,	%f6
	ta	%xcc,	0x6
	movgu	%icc,	%i2,	%i1
	fnor	%f10,	%f10,	%f10
	movrlz	%g1,	%l5,	%o0
	movcc	%xcc,	%i3,	%o7
	edge8n	%o2,	%g6,	%o3
	fbe	%fcc3,	loop_4359
	xor	%l4,	%g3,	%g7
	lduw	[%l7 + 0x40],	%l2
	std	%f0,	[%l7 + 0x40]
loop_4359:
	brlez,a	%l0,	loop_4360
	fcmple32	%f14,	%f10,	%i7
	bneg,pn	%xcc,	loop_4361
	std	%f12,	[%l7 + 0x60]
loop_4360:
	tge	%xcc,	0x3
	fcmpne16	%f8,	%f0,	%l3
loop_4361:
	tge	%xcc,	0x7
	fmovd	%f6,	%f2
	call	loop_4362
	fbn,a	%fcc0,	loop_4363
	fcmple16	%f2,	%f4,	%g2
	bl,pt	%icc,	loop_4364
loop_4362:
	addccc	%i4,	%l6,	%o1
loop_4363:
	fbl,a	%fcc3,	loop_4365
	tcc	%xcc,	0x5
loop_4364:
	movvs	%icc,	%i6,	%l1
	fcmpeq16	%f14,	%f6,	%o4
loop_4365:
	st	%f13,	[%l7 + 0x60]
	movpos	%xcc,	%i5,	%g5
	fmovrdgz	%o6,	%f4,	%f4
	fnand	%f2,	%f2,	%f14
	fmovsn	%icc,	%f3,	%f11
	fbg,a	%fcc3,	loop_4366
	brlz	%i0,	loop_4367
	ldx	[%l7 + 0x18],	%o5
	brgez	%g4,	loop_4368
loop_4366:
	pdist	%f12,	%f2,	%f14
loop_4367:
	move	%icc,	%i1,	%i2
	stx	%g1,	[%l7 + 0x08]
loop_4368:
	stb	%l5,	[%l7 + 0x3A]
	fmovrsgz	%i3,	%f4,	%f12
	sth	%o0,	[%l7 + 0x14]
	smulcc	%o7,	0x095D,	%g6
	ldsb	[%l7 + 0x63],	%o3
	add	%l4,	%g3,	%g7
	ldsh	[%l7 + 0x2E],	%l2
	fzeros	%f15
	edge8ln	%o2,	%l0,	%i7
	st	%f15,	[%l7 + 0x40]
	edge16ln	%l3,	%i4,	%l6
	fpadd32	%f0,	%f12,	%f10
	fmovsge	%icc,	%f6,	%f12
	std	%f8,	[%l7 + 0x68]
	taddcctv	%o1,	%i6,	%l1
	fnot2	%f2,	%f12
	fpadd16s	%f5,	%f12,	%f13
	fcmps	%fcc2,	%f7,	%f13
	stx	%g2,	[%l7 + 0x28]
	fble,a	%fcc3,	loop_4369
	ld	[%l7 + 0x20],	%f3
	addc	%o4,	%i5,	%g5
	lduw	[%l7 + 0x14],	%i0
loop_4369:
	stw	%o6,	[%l7 + 0x38]
	fmovsg	%icc,	%f5,	%f12
	movvc	%icc,	%g4,	%i1
	fpmerge	%f13,	%f14,	%f6
	fnands	%f6,	%f13,	%f14
	edge16ln	%i2,	%o5,	%g1
	bpos,a,pn	%xcc,	loop_4370
	fcmpgt16	%f4,	%f14,	%l5
	tpos	%xcc,	0x7
	lduh	[%l7 + 0x74],	%i3
loop_4370:
	ld	[%l7 + 0x20],	%f1
	ld	[%l7 + 0x4C],	%f6
	popc	0x13CF,	%o0
	movgu	%icc,	%o7,	%o3
	fmovsneg	%xcc,	%f10,	%f14
	fzero	%f8
	fbu,a	%fcc3,	loop_4371
	fmul8x16au	%f6,	%f15,	%f10
	edge8ln	%l4,	%g3,	%g6
	bneg	%xcc,	loop_4372
loop_4371:
	addcc	%g7,	0x1766,	%o2
	movrlez	%l2,	0x05F,	%l0
	fmovdge	%icc,	%f10,	%f4
loop_4372:
	fbug	%fcc3,	loop_4373
	fnot1s	%f6,	%f14
	fandnot2s	%f0,	%f4,	%f1
	fornot2	%f8,	%f0,	%f14
loop_4373:
	andcc	%i7,	%l3,	%i4
	movpos	%xcc,	%o1,	%l6
	bgu,a,pt	%icc,	loop_4374
	fmovdvs	%xcc,	%f10,	%f0
	fnegd	%f4,	%f8
	fpadd32s	%f8,	%f3,	%f9
loop_4374:
	faligndata	%f6,	%f10,	%f4
	fabsd	%f12,	%f8
	tge	%icc,	0x7
	siam	0x0
	andn	%i6,	0x1A87,	%l1
	tn	%xcc,	0x2
	fmul8x16au	%f0,	%f4,	%f12
	bne,a	loop_4375
	bg,a	%xcc,	loop_4376
	fornot1	%f4,	%f8,	%f0
	fzeros	%f4
loop_4375:
	stx	%o4,	[%l7 + 0x58]
loop_4376:
	movle	%icc,	%i5,	%g2
	ldd	[%l7 + 0x30],	%f8
	fmul8ulx16	%f10,	%f2,	%f0
	movrlz	%i0,	0x291,	%o6
	fcmpeq16	%f12,	%f8,	%g4
	movvc	%icc,	%g5,	%i2
	tpos	%icc,	0x3
	be	loop_4377
	fblg,a	%fcc3,	loop_4378
	ta	%xcc,	0x6
	stw	%i1,	[%l7 + 0x54]
loop_4377:
	edge16	%o5,	%l5,	%i3
loop_4378:
	tg	%icc,	0x4
	srax	%o0,	0x15,	%g1
	tsubcctv	%o7,	0x1A5C,	%l4
	ld	[%l7 + 0x54],	%f7
	fmovrde	%g3,	%f10,	%f10
	fcmps	%fcc0,	%f11,	%f10
	fbl	%fcc3,	loop_4379
	sub	%g6,	0x11C3,	%g7
	fble,a	%fcc0,	loop_4380
	fandnot2s	%f10,	%f5,	%f14
loop_4379:
	sth	%o2,	[%l7 + 0x2E]
	te	%icc,	0x0
loop_4380:
	fnot1	%f6,	%f0
	fnors	%f9,	%f7,	%f15
	bn	loop_4381
	fmovrslez	%l2,	%f0,	%f14
	ldub	[%l7 + 0x54],	%o3
	smul	%l0,	%i7,	%i4
loop_4381:
	fble,a	%fcc0,	loop_4382
	stx	%l3,	[%l7 + 0x60]
	stx	%o1,	[%l7 + 0x40]
	brgez	%i6,	loop_4383
loop_4382:
	fbl	%fcc3,	loop_4384
	udiv	%l6,	0x1E1E,	%l1
	fexpand	%f10,	%f12
loop_4383:
	tn	%xcc,	0x4
loop_4384:
	st	%f7,	[%l7 + 0x6C]
	fmovrdlz	%o4,	%f8,	%f6
	bneg,a,pt	%xcc,	loop_4385
	umulcc	%g2,	0x0D14,	%i5
	fpadd32	%f0,	%f8,	%f0
	sdivcc	%o6,	0x084F,	%g4
loop_4385:
	ldsb	[%l7 + 0x38],	%g5
	ldx	[%l7 + 0x68],	%i2
	std	%f2,	[%l7 + 0x58]
	fmovscs	%xcc,	%f11,	%f8
	ld	[%l7 + 0x10],	%f9
	fpsub16s	%f4,	%f0,	%f14
	lduw	[%l7 + 0x6C],	%i1
	movvc	%xcc,	%o5,	%l5
	xor	%i0,	%o0,	%i3
	fmuld8sux16	%f6,	%f12,	%f12
	stb	%o7,	[%l7 + 0x77]
	fnor	%f2,	%f6,	%f0
	ldsh	[%l7 + 0x20],	%g1
	fnot1	%f8,	%f0
	fcmpgt16	%f4,	%f2,	%l4
	edge16n	%g6,	%g3,	%o2
	ldx	[%l7 + 0x28],	%g7
	ldsw	[%l7 + 0x48],	%o3
	movvs	%icc,	%l0,	%i7
	sth	%i4,	[%l7 + 0x7E]
	std	%f8,	[%l7 + 0x68]
	fbo	%fcc1,	loop_4386
	movrne	%l2,	%l3,	%o1
	fandnot1	%f10,	%f12,	%f6
	sth	%i6,	[%l7 + 0x26]
loop_4386:
	lduw	[%l7 + 0x5C],	%l6
	ldx	[%l7 + 0x10],	%o4
	fone	%f14
	ldd	[%l7 + 0x40],	%f8
	movvc	%icc,	%g2,	%i5
	fcmpgt16	%f14,	%f4,	%o6
	ld	[%l7 + 0x68],	%f2
	fnot1	%f6,	%f14
	andn	%g4,	%g5,	%l1
	array8	%i2,	%i1,	%o5
	fbug	%fcc1,	loop_4387
	fornot1	%f14,	%f4,	%f14
	stx	%l5,	[%l7 + 0x10]
	fbne	%fcc2,	loop_4388
loop_4387:
	orn	%o0,	%i3,	%o7
	ldx	[%l7 + 0x40],	%i0
	movn	%xcc,	%l4,	%g1
loop_4388:
	tvc	%xcc,	0x7
	orn	%g3,	0x1F2A,	%g6
	fornot1	%f10,	%f10,	%f14
	fnegs	%f12,	%f6
	fabsd	%f8,	%f14
	tg	%icc,	0x2
	fpackfix	%f10,	%f3
	movre	%o2,	%o3,	%g7
	movl	%icc,	%l0,	%i4
	fmovsleu	%icc,	%f7,	%f7
	stx	%l2,	[%l7 + 0x68]
	fmovsn	%icc,	%f3,	%f10
	brlez	%l3,	loop_4389
	srax	%o1,	0x0A,	%i7
	fpsub32s	%f0,	%f1,	%f12
	fmovdvc	%xcc,	%f15,	%f8
loop_4389:
	ldub	[%l7 + 0x28],	%l6
	std	%f8,	[%l7 + 0x08]
	brlz	%i6,	loop_4390
	brgez,a	%g2,	loop_4391
	fmovrde	%i5,	%f2,	%f8
	sth	%o6,	[%l7 + 0x48]
loop_4390:
	sth	%g4,	[%l7 + 0x68]
loop_4391:
	fcmple16	%f10,	%f14,	%o4
	fcmpes	%fcc2,	%f8,	%f2
	ldd	[%l7 + 0x38],	%f4
	fmovdge	%icc,	%f7,	%f10
	fnor	%f2,	%f4,	%f4
	brlez	%l1,	loop_4392
	fmovrse	%i2,	%f15,	%f6
	fcmps	%fcc1,	%f5,	%f1
	fbue	%fcc2,	loop_4393
loop_4392:
	fba	%fcc0,	loop_4394
	mulx	%i1,	%o5,	%l5
	te	%xcc,	0x5
loop_4393:
	lduh	[%l7 + 0x46],	%o0
loop_4394:
	fmovsne	%xcc,	%f10,	%f9
	movrgz	%i3,	%o7,	%i0
	lduw	[%l7 + 0x28],	%l4
	fmovrsgez	%g5,	%f5,	%f9
	fmovdpos	%xcc,	%f6,	%f13
	movrgez	%g3,	0x211,	%g6
	fnegd	%f12,	%f6
	tge	%xcc,	0x6
	fmovdvc	%icc,	%f5,	%f9
	movl	%xcc,	%g1,	%o3
	taddcctv	%o2,	%l0,	%i4
	tsubcctv	%l2,	0x12AC,	%g7
	faligndata	%f10,	%f2,	%f6
	fands	%f8,	%f7,	%f7
	fxor	%f12,	%f6,	%f12
	stb	%o1,	[%l7 + 0x77]
	ldsw	[%l7 + 0x70],	%l3
	stw	%l6,	[%l7 + 0x64]
	fbne	%fcc3,	loop_4395
	umulcc	%i6,	0x1034,	%g2
	ldd	[%l7 + 0x20],	%f6
	edge32	%i7,	%o6,	%i5
loop_4395:
	fmovrsgez	%g4,	%f4,	%f3
	fcmpeq16	%f6,	%f10,	%l1
	fsrc1	%f2,	%f14
	lduw	[%l7 + 0x24],	%o4
	nop
	setx loop_4396, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	siam	0x7
	bne,a	%icc,	loop_4397
	orcc	%i2,	%i1,	%o5
loop_4396:
	fands	%f2,	%f3,	%f13
	ldsb	[%l7 + 0x27],	%l5
loop_4397:
	tgu	%icc,	0x3
	fbg	%fcc1,	loop_4398
	fbn,a	%fcc2,	loop_4399
	stx	%o0,	[%l7 + 0x78]
	fmovrsgz	%o7,	%f6,	%f10
loop_4398:
	fmovdcs	%icc,	%f15,	%f11
loop_4399:
	ldsb	[%l7 + 0x7F],	%i0
	bleu,a	%icc,	loop_4400
	movl	%icc,	%i3,	%l4
	fmovd	%f8,	%f0
	ba	%xcc,	loop_4401
loop_4400:
	fsrc2	%f2,	%f10
	fmovdvc	%icc,	%f10,	%f14
	fandnot1	%f14,	%f12,	%f14
loop_4401:
	stw	%g3,	[%l7 + 0x48]
	fcmpgt32	%f6,	%f0,	%g5
	bgu,pt	%xcc,	loop_4402
	fcmpes	%fcc2,	%f12,	%f8
	fpadd32s	%f0,	%f2,	%f0
	bcc	loop_4403
loop_4402:
	srax	%g1,	0x0B,	%o3
	bn,pt	%icc,	loop_4404
	edge16n	%g6,	%o2,	%i4
loop_4403:
	fmul8ulx16	%f10,	%f6,	%f4
	nop
	setx loop_4405, %l0, %l1
	jmpl %l1, %l2
loop_4404:
	orn	%g7,	%o1,	%l0
	edge16	%l6,	%i6,	%l3
	stb	%i7,	[%l7 + 0x0F]
loop_4405:
	fpackfix	%f12,	%f1
	sllx	%g2,	%i5,	%g4
	fpadd32s	%f6,	%f1,	%f0
	xor	%l1,	%o4,	%i2
	fabsd	%f4,	%f4
	fmovd	%f6,	%f8
	lduw	[%l7 + 0x18],	%i1
	fmovdl	%icc,	%f4,	%f15
	ldx	[%l7 + 0x48],	%o5
	fmovdcs	%xcc,	%f13,	%f9
	fcmpeq16	%f8,	%f14,	%o6
	fandnot1s	%f5,	%f7,	%f6
	udiv	%l5,	0x1901,	%o0
	fmovrdne	%o7,	%f0,	%f8
	bne	%icc,	loop_4406
	ldsb	[%l7 + 0x4A],	%i0
	brlz	%i3,	loop_4407
	udivx	%l4,	0x17BC,	%g3
loop_4406:
	fpsub16s	%f10,	%f7,	%f7
	call	loop_4408
loop_4407:
	bgu,a,pt	%xcc,	loop_4409
	std	%f6,	[%l7 + 0x60]
	edge16	%g1,	%g5,	%o3
loop_4408:
	st	%f11,	[%l7 + 0x64]
loop_4409:
	addc	%o2,	%i4,	%l2
	fmovdcc	%icc,	%f2,	%f8
	fcmpeq16	%f10,	%f12,	%g6
	fcmpgt16	%f8,	%f10,	%o1
	movrlez	%g7,	0x24D,	%l0
	edge8	%i6,	%l3,	%l6
	fsrc1s	%f9,	%f11
	bvs,pn	%icc,	loop_4410
	fmovsge	%icc,	%f1,	%f5
	lduh	[%l7 + 0x78],	%g2
	fxor	%f8,	%f14,	%f2
loop_4410:
	movcs	%icc,	%i7,	%g4
	orcc	%i5,	%l1,	%o4
	orn	%i2,	0x1B2A,	%i1
	fpsub16	%f0,	%f12,	%f0
	fmovsg	%icc,	%f1,	%f15
	subcc	%o5,	%l5,	%o6
	lduw	[%l7 + 0x54],	%o7
	fmovrdne	%o0,	%f10,	%f8
	fmovsle	%xcc,	%f14,	%f1
	lduw	[%l7 + 0x60],	%i3
	fbue	%fcc1,	loop_4411
	ldsb	[%l7 + 0x28],	%l4
	st	%f10,	[%l7 + 0x24]
	movl	%icc,	%i0,	%g3
loop_4411:
	sth	%g5,	[%l7 + 0x40]
	andcc	%g1,	0x1091,	%o2
	fornot1	%f14,	%f12,	%f12
	fmovsneg	%xcc,	%f12,	%f13
	ta	%xcc,	0x6
	st	%f3,	[%l7 + 0x6C]
	xnor	%i4,	0x0266,	%o3
	popc	0x0338,	%g6
	ldsh	[%l7 + 0x5E],	%l2
	ld	[%l7 + 0x78],	%f3
	ld	[%l7 + 0x48],	%f5
	srlx	%o1,	0x1C,	%g7
	movvc	%icc,	%i6,	%l0
	ldub	[%l7 + 0x25],	%l3
	siam	0x3
	bcc,a	loop_4412
	ldsw	[%l7 + 0x2C],	%g2
	bne,pt	%xcc,	loop_4413
	ldsh	[%l7 + 0x4A],	%i7
loop_4412:
	fmovdne	%icc,	%f5,	%f0
	ldsb	[%l7 + 0x78],	%l6
loop_4413:
	taddcc	%i5,	0x0750,	%g4
	sth	%o4,	[%l7 + 0x6A]
	subc	%l1,	%i1,	%i2
	fmovdleu	%xcc,	%f1,	%f6
	movpos	%icc,	%o5,	%o6
	fmovdne	%icc,	%f14,	%f3
	edge32n	%l5,	%o0,	%i3
	fmovsge	%icc,	%f6,	%f9
	edge32ln	%o7,	%i0,	%l4
	ba	%icc,	loop_4414
	movneg	%icc,	%g5,	%g3
	ldub	[%l7 + 0x57],	%o2
	stb	%g1,	[%l7 + 0x12]
loop_4414:
	smul	%i4,	%g6,	%l2
	andn	%o3,	0x11B0,	%g7
	movvc	%icc,	%o1,	%i6
	xor	%l3,	0x1614,	%l0
	ldub	[%l7 + 0x57],	%g2
	ldsh	[%l7 + 0x68],	%l6
	fzero	%f0
	fmovrsgez	%i7,	%f12,	%f9
	fzero	%f4
	add	%i5,	%o4,	%g4
	and	%i1,	%l1,	%o5
	ldd	[%l7 + 0x48],	%f14
	subccc	%i2,	%l5,	%o6
	fcmpgt16	%f12,	%f0,	%o0
	ldd	[%l7 + 0x40],	%f2
	lduw	[%l7 + 0x08],	%o7
	umulcc	%i0,	%l4,	%i3
	udivcc	%g5,	0x0B89,	%g3
	movrne	%g1,	0x2FF,	%o2
	fandnot1	%f12,	%f0,	%f14
	ldsw	[%l7 + 0x74],	%i4
	tneg	%xcc,	0x0
	fcmpd	%fcc0,	%f2,	%f14
	stw	%g6,	[%l7 + 0x28]
	edge16n	%o3,	%l2,	%o1
	fxnors	%f15,	%f10,	%f6
	lduw	[%l7 + 0x74],	%g7
	orcc	%l3,	0x0959,	%i6
	ble,a	loop_4415
	fmovrdlez	%g2,	%f0,	%f4
	stx	%l6,	[%l7 + 0x10]
	andncc	%l0,	%i7,	%o4
loop_4415:
	fmovdleu	%xcc,	%f4,	%f11
	fmovrdgez	%i5,	%f10,	%f14
	ldsb	[%l7 + 0x5F],	%i1
	fcmpne32	%f6,	%f0,	%l1
	ldsb	[%l7 + 0x0C],	%g4
	lduh	[%l7 + 0x14],	%i2
	fone	%f6
	fnot2s	%f11,	%f2
	array32	%l5,	%o5,	%o0
	udivx	%o6,	0x0A65,	%i0
	ldd	[%l7 + 0x20],	%f2
	smul	%l4,	0x1FAF,	%o7
	fbn,a	%fcc0,	loop_4416
	fmovrsgz	%i3,	%f5,	%f3
	ldd	[%l7 + 0x50],	%f10
	ldsh	[%l7 + 0x08],	%g3
loop_4416:
	xnorcc	%g1,	%g5,	%i4
	tn	%xcc,	0x3
	fmovrdne	%g6,	%f10,	%f12
	lduh	[%l7 + 0x5E],	%o2
	fmovsg	%icc,	%f12,	%f2
	orcc	%o3,	0x0936,	%o1
	fmovrsgz	%l2,	%f15,	%f5
	bvs,a,pt	%icc,	loop_4417
	movrne	%g7,	0x32A,	%i6
	fmovdn	%icc,	%f8,	%f8
	tg	%icc,	0x3
loop_4417:
	bg,a,pn	%icc,	loop_4418
	move	%icc,	%l3,	%l6
	srl	%l0,	%g2,	%o4
	ldx	[%l7 + 0x10],	%i7
loop_4418:
	fone	%f10
	fble,a	%fcc1,	loop_4419
	stb	%i1,	[%l7 + 0x10]
	fmovsn	%xcc,	%f13,	%f4
	fxnors	%f1,	%f6,	%f2
loop_4419:
	alignaddr	%l1,	%i5,	%i2
	fmovdl	%xcc,	%f9,	%f15
	lduh	[%l7 + 0x6C],	%g4
	movpos	%xcc,	%o5,	%l5
	ldsw	[%l7 + 0x5C],	%o0
	fpadd32s	%f8,	%f0,	%f15
	fmovdle	%xcc,	%f14,	%f2
	lduw	[%l7 + 0x70],	%o6
	fbn,a	%fcc2,	loop_4420
	fmovrde	%i0,	%f6,	%f8
	fmovrsgez	%o7,	%f6,	%f4
	stx	%i3,	[%l7 + 0x20]
loop_4420:
	ldx	[%l7 + 0x50],	%l4
	edge8l	%g1,	%g3,	%i4
	stw	%g6,	[%l7 + 0x5C]
	fmovdcs	%icc,	%f14,	%f9
	fmovscc	%icc,	%f5,	%f7
	fmovd	%f10,	%f14
	fsrc1s	%f14,	%f0
	fpadd16	%f12,	%f6,	%f8
	fmovdleu	%xcc,	%f1,	%f5
	tvs	%icc,	0x6
	std	%f12,	[%l7 + 0x30]
	movn	%xcc,	%g5,	%o2
	fmul8sux16	%f14,	%f0,	%f10
	fors	%f7,	%f4,	%f14
	sdiv	%o3,	0x14A3,	%o1
	pdist	%f2,	%f2,	%f2
	std	%f8,	[%l7 + 0x40]
	fmovsgu	%icc,	%f12,	%f2
	movleu	%icc,	%l2,	%g7
	fcmpeq32	%f6,	%f0,	%l3
	array32	%i6,	%l6,	%g2
	stb	%o4,	[%l7 + 0x5B]
	sth	%i7,	[%l7 + 0x66]
	ldsb	[%l7 + 0x7E],	%l0
	tvc	%xcc,	0x6
	mova	%icc,	%i1,	%l1
	fmovdne	%xcc,	%f3,	%f7
	tsubcc	%i5,	%i2,	%g4
	edge32ln	%l5,	%o0,	%o5
	stb	%o6,	[%l7 + 0x1C]
	brnz,a	%i0,	loop_4421
	brgz	%o7,	loop_4422
	std	%f10,	[%l7 + 0x78]
	fmovrdlez	%i3,	%f12,	%f10
loop_4421:
	ldsh	[%l7 + 0x6E],	%g1
loop_4422:
	xnor	%g3,	%l4,	%i4
	fnot2	%f12,	%f6
	ldsh	[%l7 + 0x1E],	%g5
	brlez	%g6,	loop_4423
	or	%o3,	0x05B6,	%o2
	fbul,a	%fcc0,	loop_4424
	call	loop_4425
loop_4423:
	brlez	%o1,	loop_4426
	fbue,a	%fcc2,	loop_4427
loop_4424:
	bneg,a	%icc,	loop_4428
loop_4425:
	fbl	%fcc2,	loop_4429
loop_4426:
	edge16n	%g7,	%l2,	%i6
loop_4427:
	fsrc1	%f0,	%f8
loop_4428:
	fnegs	%f11,	%f4
loop_4429:
	fmul8x16au	%f5,	%f12,	%f2
	fmovsgu	%xcc,	%f12,	%f1
	brlez,a	%l3,	loop_4430
	movrne	%l6,	0x1CF,	%o4
	sth	%i7,	[%l7 + 0x70]
	movge	%xcc,	%l0,	%i1
loop_4430:
	fmovdcc	%icc,	%f11,	%f6
	fbo	%fcc2,	loop_4431
	edge32n	%l1,	%i5,	%g2
	xorcc	%i2,	0x05FF,	%g4
	fpsub32s	%f10,	%f13,	%f5
loop_4431:
	ld	[%l7 + 0x34],	%f0
	fcmpgt16	%f0,	%f8,	%o0
	sdiv	%o5,	0x1BA1,	%l5
	stw	%o6,	[%l7 + 0x44]
	bcs,a	%icc,	loop_4432
	brz	%i0,	loop_4433
	fmuld8ulx16	%f14,	%f14,	%f2
	brgz,a	%i3,	loop_4434
loop_4432:
	fbu,a	%fcc1,	loop_4435
loop_4433:
	ldx	[%l7 + 0x08],	%g1
	subcc	%o7,	0x1FAE,	%l4
loop_4434:
	sdiv	%i4,	0x0EFD,	%g3
loop_4435:
	fbl,a	%fcc0,	loop_4436
	taddcctv	%g5,	0x1E80,	%g6
	fsrc2	%f8,	%f8
	tgu	%icc,	0x5
loop_4436:
	fsrc2s	%f4,	%f4
	xnorcc	%o3,	0x1B28,	%o1
	std	%f0,	[%l7 + 0x10]
	fblg	%fcc3,	loop_4437
	st	%f9,	[%l7 + 0x4C]
	stw	%o2,	[%l7 + 0x38]
	fmovrdgez	%l2,	%f0,	%f12
loop_4437:
	std	%f4,	[%l7 + 0x40]
	srlx	%i6,	0x18,	%l3
	stb	%l6,	[%l7 + 0x76]
	addc	%g7,	%i7,	%o4
	movcs	%icc,	%l0,	%l1
	and	%i5,	%g2,	%i2
	bcc,a,pt	%icc,	loop_4438
	brz,a	%g4,	loop_4439
	fmovscs	%xcc,	%f4,	%f2
	xnor	%i1,	0x14C0,	%o5
loop_4438:
	movne	%icc,	%o0,	%o6
loop_4439:
	sethi	0x1DF6,	%i0
	call	loop_4440
	fcmpes	%fcc2,	%f2,	%f2
	std	%f10,	[%l7 + 0x48]
	ldsb	[%l7 + 0x5D],	%i3
loop_4440:
	stx	%g1,	[%l7 + 0x28]
	fpadd16s	%f7,	%f6,	%f0
	or	%l5,	%o7,	%i4
	movcs	%icc,	%l4,	%g5
	lduh	[%l7 + 0x40],	%g6
	movpos	%icc,	%o3,	%o1
	tle	%icc,	0x3
	stb	%o2,	[%l7 + 0x7D]
	ldx	[%l7 + 0x08],	%g3
	fmovsn	%xcc,	%f8,	%f12
	fcmple32	%f4,	%f14,	%i6
	bn,a,pt	%xcc,	loop_4441
	lduw	[%l7 + 0x40],	%l2
	fnot2s	%f1,	%f6
	nop
	setx loop_4442, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_4441:
	sub	%l3,	%l6,	%g7
	edge8l	%i7,	%l0,	%o4
	fmovscc	%icc,	%f6,	%f0
loop_4442:
	fcmple16	%f12,	%f6,	%l1
	brgez,a	%i5,	loop_4443
	taddcc	%i2,	0x0BD9,	%g4
	fbo,a	%fcc3,	loop_4444
	fbuge,a	%fcc3,	loop_4445
loop_4443:
	tg	%xcc,	0x3
	fmovsg	%xcc,	%f5,	%f7
loop_4444:
	std	%f0,	[%l7 + 0x50]
loop_4445:
	bcs	loop_4446
	fmovsa	%xcc,	%f13,	%f4
	brlz,a	%g2,	loop_4447
	edge32n	%i1,	%o5,	%o6
loop_4446:
	andncc	%i0,	%o0,	%g1
	fmovdleu	%xcc,	%f10,	%f6
loop_4447:
	fmovsleu	%xcc,	%f11,	%f14
	stb	%i3,	[%l7 + 0x37]
	smul	%l5,	%i4,	%o7
	lduw	[%l7 + 0x0C],	%l4
	ldd	[%l7 + 0x30],	%f2
	ldsh	[%l7 + 0x0E],	%g5
	sethi	0x11BC,	%g6
	fmovsvc	%icc,	%f6,	%f8
	srl	%o3,	0x1C,	%o2
	fsrc1s	%f11,	%f8
	ta	%xcc,	0x3
	st	%f2,	[%l7 + 0x48]
	addccc	%o1,	%i6,	%g3
	std	%f6,	[%l7 + 0x08]
	fbug,a	%fcc1,	loop_4448
	fbue	%fcc3,	loop_4449
	xnorcc	%l3,	%l2,	%l6
	fmuld8sux16	%f3,	%f10,	%f14
loop_4448:
	fmovdl	%xcc,	%f6,	%f12
loop_4449:
	ldsh	[%l7 + 0x0A],	%g7
	fble,a	%fcc2,	loop_4450
	stx	%i7,	[%l7 + 0x50]
	tn	%xcc,	0x7
	tn	%xcc,	0x0
loop_4450:
	fabss	%f14,	%f3
	tge	%xcc,	0x1
	bl	loop_4451
	ld	[%l7 + 0x20],	%f10
	sth	%l0,	[%l7 + 0x08]
	udiv	%o4,	0x08D7,	%i5
loop_4451:
	sdivx	%l1,	0x1744,	%i2
	fcmpne32	%f0,	%f8,	%g2
	fble,a	%fcc2,	loop_4452
	fmovsgu	%icc,	%f5,	%f12
	fcmpd	%fcc3,	%f2,	%f6
	movrlz	%i1,	%g4,	%o5
loop_4452:
	ldsb	[%l7 + 0x2E],	%o6
	ldsh	[%l7 + 0x7E],	%o0
	ldsh	[%l7 + 0x34],	%i0
	fornot2	%f4,	%f8,	%f2
	ld	[%l7 + 0x38],	%f10
	bvc,a,pn	%icc,	loop_4453
	tneg	%icc,	0x7
	fnor	%f4,	%f10,	%f14
	sll	%i3,	0x00,	%l5
loop_4453:
	fcmpeq32	%f0,	%f14,	%i4
	fpsub32s	%f7,	%f10,	%f3
	bn,a	%icc,	loop_4454
	nop
	setx loop_4455, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fpadd32s	%f5,	%f5,	%f11
	fbu,a	%fcc1,	loop_4456
loop_4454:
	udivcc	%g1,	0x05D5,	%o7
loop_4455:
	ldsw	[%l7 + 0x18],	%l4
	andcc	%g5,	%g6,	%o2
loop_4456:
	fcmpgt32	%f2,	%f8,	%o1
	stx	%o3,	[%l7 + 0x60]
	movl	%icc,	%i6,	%g3
	fxnors	%f1,	%f11,	%f9
	sub	%l3,	0x14B7,	%l2
	subcc	%g7,	%i7,	%l6
	stw	%o4,	[%l7 + 0x7C]
	udivx	%i5,	0x060B,	%l1
	fpadd16s	%f4,	%f8,	%f2
	subccc	%i2,	0x1AAB,	%l0
	ldub	[%l7 + 0x10],	%i1
	fmovsle	%xcc,	%f7,	%f8
	fmovde	%xcc,	%f13,	%f13
	fpack32	%f2,	%f8,	%f2
	fbn	%fcc1,	loop_4457
	ldsb	[%l7 + 0x33],	%g4
	std	%f10,	[%l7 + 0x68]
	tle	%icc,	0x6
loop_4457:
	ld	[%l7 + 0x70],	%f6
	ld	[%l7 + 0x34],	%f8
	fble,a	%fcc1,	loop_4458
	tge	%xcc,	0x3
	ldsw	[%l7 + 0x18],	%o5
	fzeros	%f9
loop_4458:
	ldsh	[%l7 + 0x5C],	%g2
	fpsub32	%f10,	%f10,	%f14
	fbl,a	%fcc0,	loop_4459
	std	%f12,	[%l7 + 0x10]
	fxnor	%f2,	%f8,	%f0
	fbl	%fcc1,	loop_4460
loop_4459:
	fcmpeq16	%f12,	%f4,	%o6
	movvc	%icc,	%i0,	%i3
	fxnor	%f10,	%f4,	%f4
loop_4460:
	bpos	loop_4461
	ldsb	[%l7 + 0x0A],	%o0
	tne	%xcc,	0x5
	ldd	[%l7 + 0x78],	%f12
loop_4461:
	std	%f4,	[%l7 + 0x08]
	tcc	%icc,	0x1
	ldub	[%l7 + 0x6C],	%i4
	sdiv	%g1,	0x084A,	%o7
	fpmerge	%f12,	%f3,	%f14
	fnors	%f7,	%f11,	%f3
	ldub	[%l7 + 0x7A],	%l5
	fmovdvc	%icc,	%f7,	%f10
	addcc	%l4,	%g5,	%o2
	ldx	[%l7 + 0x10],	%o1
	std	%f0,	[%l7 + 0x08]
	fandnot1	%f12,	%f12,	%f8
	fmovrsgz	%g6,	%f8,	%f14
	fmovrdlz	%i6,	%f0,	%f8
	ldsw	[%l7 + 0x58],	%g3
	xor	%l3,	%o3,	%l2
	tle	%icc,	0x0
	fmovrse	%i7,	%f9,	%f14
	udivx	%l6,	0x1626,	%g7
	sth	%i5,	[%l7 + 0x42]
	edge16ln	%l1,	%o4,	%i2
	fmovdn	%xcc,	%f13,	%f3
	tleu	%xcc,	0x0
	tge	%icc,	0x5
	call	loop_4462
	ld	[%l7 + 0x58],	%f5
	srlx	%i1,	0x06,	%l0
	fmovrdne	%o5,	%f10,	%f8
loop_4462:
	ld	[%l7 + 0x64],	%f4
	andn	%g4,	0x1ED0,	%o6
	sdiv	%i0,	0x16E2,	%g2
	tvc	%icc,	0x1
	fpackfix	%f0,	%f3
	tl	%xcc,	0x0
	movrgz	%i3,	%i4,	%g1
	tgu	%icc,	0x4
	fmovsn	%icc,	%f15,	%f15
	bg,a,pn	%xcc,	loop_4463
	lduh	[%l7 + 0x12],	%o0
	siam	0x5
	sdivx	%l5,	0x0726,	%l4
loop_4463:
	fmul8x16al	%f15,	%f3,	%f10
	bn,a,pt	%xcc,	loop_4464
	fmovrse	%o7,	%f2,	%f5
	std	%f0,	[%l7 + 0x38]
	bpos,pt	%icc,	loop_4465
loop_4464:
	bleu,a,pn	%icc,	loop_4466
	tne	%xcc,	0x2
	fnands	%f5,	%f2,	%f1
loop_4465:
	lduh	[%l7 + 0x64],	%g5
loop_4466:
	fmovscc	%icc,	%f1,	%f11
	siam	0x1
	tpos	%xcc,	0x4
	ld	[%l7 + 0x1C],	%f12
	tpos	%xcc,	0x4
	nop
	setx loop_4467, %l0, %l1
	jmpl %l1, %o2
	movcs	%icc,	%o1,	%i6
	fmovsl	%icc,	%f6,	%f5
	fcmpgt16	%f14,	%f0,	%g3
loop_4467:
	ld	[%l7 + 0x70],	%f2
	sth	%g6,	[%l7 + 0x40]
	tg	%xcc,	0x4
	edge8ln	%o3,	%l3,	%i7
	movle	%icc,	%l2,	%g7
	lduw	[%l7 + 0x1C],	%i5
	fsrc1s	%f7,	%f15
	stx	%l1,	[%l7 + 0x68]
	movge	%icc,	%l6,	%i2
	fmovdg	%icc,	%f7,	%f8
	fmovdne	%xcc,	%f1,	%f12
	lduw	[%l7 + 0x20],	%i1
	fmul8sux16	%f10,	%f10,	%f12
	movge	%xcc,	%o4,	%o5
	fcmpes	%fcc2,	%f14,	%f5
	stx	%l0,	[%l7 + 0x30]
	nop
	setx loop_4468, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	pdist	%f4,	%f0,	%f14
	fbl	%fcc2,	loop_4469
	popc	0x1EE9,	%o6
loop_4468:
	fpsub32s	%f4,	%f1,	%f0
	tsubcctv	%g4,	0x0BFB,	%i0
loop_4469:
	st	%f15,	[%l7 + 0x58]
	fmovdl	%xcc,	%f14,	%f15
	std	%f10,	[%l7 + 0x40]
	fmovdg	%xcc,	%f4,	%f6
	tpos	%xcc,	0x0
	fone	%f6
	bcs,pt	%icc,	loop_4470
	fpsub32	%f8,	%f0,	%f2
	bne,a	loop_4471
	udiv	%i3,	0x0745,	%g2
loop_4470:
	fmovrse	%g1,	%f10,	%f9
	movcc	%icc,	%i4,	%l5
loop_4471:
	stb	%l4,	[%l7 + 0x42]
	fmovdl	%icc,	%f9,	%f13
	sdivcc	%o7,	0x0DA2,	%g5
	ldd	[%l7 + 0x58],	%f8
	fmovdl	%xcc,	%f12,	%f4
	mulscc	%o2,	%o0,	%o1
	st	%f13,	[%l7 + 0x5C]
	fcmpne32	%f0,	%f14,	%g3
	andn	%g6,	0x14A2,	%i6
	tne	%xcc,	0x2
	fornot1	%f10,	%f0,	%f8
	fpsub32	%f4,	%f4,	%f2
	sub	%o3,	%l3,	%i7
	tg	%xcc,	0x0
	tneg	%xcc,	0x3
	fmovdcs	%xcc,	%f15,	%f11
	bn,pn	%xcc,	loop_4472
	ldx	[%l7 + 0x40],	%l2
	fbul,a	%fcc2,	loop_4473
	fsrc1s	%f6,	%f0
loop_4472:
	srlx	%g7,	0x0B,	%i5
	stw	%l6,	[%l7 + 0x58]
loop_4473:
	lduh	[%l7 + 0x60],	%i2
	srlx	%l1,	0x1F,	%i1
	ld	[%l7 + 0x28],	%f15
	stx	%o4,	[%l7 + 0x38]
	fbg,a	%fcc3,	loop_4474
	fmovrdgez	%l0,	%f14,	%f6
	movrgz	%o6,	0x396,	%g4
	lduw	[%l7 + 0x78],	%i0
loop_4474:
	edge32ln	%i3,	%g2,	%g1
	fzero	%f10
	movvc	%xcc,	%o5,	%i4
	fabsd	%f12,	%f6
	call	loop_4475
	fmovrsne	%l5,	%f1,	%f1
	std	%f6,	[%l7 + 0x10]
	fxor	%f14,	%f8,	%f12
loop_4475:
	tvc	%xcc,	0x4
	ldsw	[%l7 + 0x40],	%o7
	xnor	%l4,	0x0F92,	%o2
	std	%f12,	[%l7 + 0x28]
	srax	%o0,	0x03,	%o1
	ldx	[%l7 + 0x10],	%g3
	fmovrde	%g6,	%f10,	%f12
	tsubcc	%g5,	0x094A,	%i6
	mulscc	%o3,	%i7,	%l3
	fpadd16	%f8,	%f0,	%f8
	andn	%g7,	%i5,	%l2
	lduh	[%l7 + 0x4A],	%i2
	bvc	%icc,	loop_4476
	fpadd16	%f8,	%f12,	%f12
	fcmpne16	%f0,	%f10,	%l1
	fpackfix	%f12,	%f6
loop_4476:
	fnot1	%f14,	%f14
	sdivx	%i1,	0x0D6A,	%o4
	sub	%l0,	%o6,	%l6
	fxors	%f5,	%f3,	%f13
	movcs	%xcc,	%g4,	%i0
	fcmpes	%fcc0,	%f10,	%f2
	and	%g2,	%g1,	%o5
	udivcc	%i3,	0x0CD6,	%l5
	brgez	%i4,	loop_4477
	brnz	%l4,	loop_4478
	lduw	[%l7 + 0x34],	%o7
	sub	%o0,	%o1,	%o2
loop_4477:
	tleu	%icc,	0x5
loop_4478:
	edge32l	%g3,	%g5,	%i6
	edge16l	%o3,	%g6,	%l3
	ldsb	[%l7 + 0x39],	%g7
	bcc	loop_4479
	movrlz	%i7,	0x3E5,	%l2
	fnor	%f12,	%f0,	%f12
	fmul8x16	%f0,	%f12,	%f2
loop_4479:
	fpadd32s	%f8,	%f8,	%f1
	edge8ln	%i2,	%l1,	%i1
	fbg,a	%fcc2,	loop_4480
	fcmpne32	%f6,	%f0,	%o4
	ldub	[%l7 + 0x69],	%l0
	for	%f6,	%f8,	%f12
loop_4480:
	movcs	%xcc,	%o6,	%l6
	st	%f2,	[%l7 + 0x60]
	fmovse	%xcc,	%f5,	%f7
	ldx	[%l7 + 0x68],	%g4
	lduh	[%l7 + 0x3A],	%i5
	sth	%g2,	[%l7 + 0x3A]
	movrgez	%g1,	%i0,	%o5
	fsrc1	%f8,	%f14
	udivx	%i3,	0x07D0,	%i4
	stx	%l4,	[%l7 + 0x48]
	edge16n	%l5,	%o7,	%o0
	bl	loop_4481
	umulcc	%o2,	0x1FE9,	%o1
	bge,a,pt	%icc,	loop_4482
	movleu	%icc,	%g3,	%g5
loop_4481:
	lduw	[%l7 + 0x14],	%i6
	bcc,a,pn	%xcc,	loop_4483
loop_4482:
	bleu,a,pt	%xcc,	loop_4484
	fand	%f10,	%f12,	%f0
	bg	loop_4485
loop_4483:
	movneg	%xcc,	%g6,	%l3
loop_4484:
	ldsh	[%l7 + 0x4E],	%o3
	fmovsneg	%icc,	%f1,	%f14
loop_4485:
	lduw	[%l7 + 0x34],	%g7
	ldsh	[%l7 + 0x44],	%l2
	fand	%f12,	%f6,	%f6
	movrgz	%i2,	0x107,	%i7
	tleu	%icc,	0x1
	fmovdge	%icc,	%f15,	%f10
	xorcc	%i1,	0x0AC7,	%o4
	ld	[%l7 + 0x08],	%f13
	sth	%l1,	[%l7 + 0x5E]
	fabsd	%f4,	%f0
	tsubcctv	%l0,	%l6,	%o6
	tvs	%icc,	0x7
	brgez	%g4,	loop_4486
	fmovrdne	%g2,	%f8,	%f0
	fmovdvc	%icc,	%f11,	%f2
	fmovd	%f12,	%f14
loop_4486:
	fmovdcs	%icc,	%f8,	%f4
	fpadd32s	%f2,	%f6,	%f9
	ldd	[%l7 + 0x58],	%f4
	stb	%g1,	[%l7 + 0x67]
	ldsw	[%l7 + 0x58],	%i5
	stw	%i0,	[%l7 + 0x7C]
	fpmerge	%f10,	%f1,	%f6
	fexpand	%f5,	%f14
	movl	%icc,	%o5,	%i4
	fpack16	%f4,	%f1
	array32	%i3,	%l4,	%o7
	stx	%o0,	[%l7 + 0x20]
	ld	[%l7 + 0x68],	%f5
	lduw	[%l7 + 0x70],	%o2
	stb	%o1,	[%l7 + 0x55]
	edge8n	%l5,	%g5,	%i6
	brlz	%g6,	loop_4487
	fmovdleu	%icc,	%f3,	%f8
	sra	%g3,	0x08,	%l3
	stx	%g7,	[%l7 + 0x18]
loop_4487:
	movrlez	%o3,	%l2,	%i2
	sth	%i1,	[%l7 + 0x3C]
	mova	%icc,	%i7,	%o4
	stb	%l0,	[%l7 + 0x38]
	ldx	[%l7 + 0x58],	%l1
	movn	%icc,	%l6,	%g4
	fmovrdgz	%g2,	%f4,	%f2
	fmovdle	%icc,	%f8,	%f5
	ldub	[%l7 + 0x49],	%o6
	fcmpes	%fcc2,	%f8,	%f8
	bl	%xcc,	loop_4488
	tsubcctv	%g1,	%i0,	%o5
	fbn	%fcc0,	loop_4489
	sth	%i5,	[%l7 + 0x26]
loop_4488:
	fbo,a	%fcc1,	loop_4490
	sdivx	%i4,	0x10A8,	%i3
loop_4489:
	ldsh	[%l7 + 0x54],	%o7
	addc	%l4,	0x0CB7,	%o0
loop_4490:
	sth	%o2,	[%l7 + 0x6C]
	fnor	%f12,	%f14,	%f10
	fcmpeq32	%f6,	%f0,	%l5
	lduw	[%l7 + 0x30],	%g5
	addc	%i6,	%o1,	%g3
	fmovdle	%icc,	%f15,	%f10
	fandnot2s	%f6,	%f1,	%f7
	array16	%l3,	%g6,	%g7
	fmovde	%xcc,	%f7,	%f14
	movre	%o3,	%i2,	%l2
	sth	%i7,	[%l7 + 0x32]
	stw	%o4,	[%l7 + 0x74]
	fmovdvc	%xcc,	%f11,	%f3
	fcmps	%fcc3,	%f0,	%f2
	sra	%i1,	%l1,	%l6
	fcmpeq16	%f6,	%f4,	%l0
	ldub	[%l7 + 0x13],	%g2
	faligndata	%f10,	%f14,	%f10
	ldsw	[%l7 + 0x30],	%o6
	fmovdg	%xcc,	%f12,	%f12
	fmuld8sux16	%f8,	%f14,	%f8
	srl	%g4,	%i0,	%g1
	subccc	%i5,	%o5,	%i4
	tge	%xcc,	0x5
	fbu	%fcc0,	loop_4491
	bcc,a,pt	%xcc,	loop_4492
	fbug,a	%fcc2,	loop_4493
	std	%f12,	[%l7 + 0x30]
loop_4491:
	fornot2s	%f12,	%f6,	%f11
loop_4492:
	stw	%o7,	[%l7 + 0x5C]
loop_4493:
	orn	%i3,	0x166C,	%o0
	tl	%icc,	0x3
	alignaddr	%l4,	%o2,	%l5
	ldub	[%l7 + 0x29],	%g5
	umul	%o1,	%i6,	%l3
	xnorcc	%g6,	%g7,	%o3
	alignaddr	%i2,	%g3,	%l2
	fbule,a	%fcc2,	loop_4494
	nop
	setx loop_4495, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	udivx	%i7,	0x0840,	%i1
	sdiv	%o4,	0x00FE,	%l6
loop_4494:
	fmuld8sux16	%f4,	%f5,	%f2
loop_4495:
	ldsw	[%l7 + 0x3C],	%l1
	fnors	%f12,	%f3,	%f10
	fabsd	%f0,	%f2
	ldsb	[%l7 + 0x4D],	%l0
	addc	%o6,	%g4,	%i0
	ldsb	[%l7 + 0x7A],	%g2
	stw	%g1,	[%l7 + 0x54]
	fmovdvs	%xcc,	%f0,	%f11
	fbu,a	%fcc3,	loop_4496
	fmovsneg	%icc,	%f11,	%f10
	fmovrdne	%o5,	%f10,	%f0
	fba	%fcc0,	loop_4497
loop_4496:
	array32	%i4,	%o7,	%i5
	andcc	%o0,	0x1AA4,	%i3
	std	%f8,	[%l7 + 0x50]
loop_4497:
	fzero	%f14
	bne	%icc,	loop_4498
	std	%f8,	[%l7 + 0x78]
	bneg,a,pt	%xcc,	loop_4499
	ldsw	[%l7 + 0x48],	%o2
loop_4498:
	fands	%f2,	%f7,	%f12
	fcmpne16	%f2,	%f12,	%l4
loop_4499:
	fbu,a	%fcc1,	loop_4500
	tpos	%icc,	0x0
	edge8ln	%l5,	%o1,	%i6
	ldsb	[%l7 + 0x1B],	%l3
loop_4500:
	fmovsleu	%icc,	%f1,	%f11
	sth	%g5,	[%l7 + 0x44]
	fmovdpos	%xcc,	%f12,	%f5
	ldsb	[%l7 + 0x0A],	%g7
	lduw	[%l7 + 0x30],	%g6
	fmovsn	%icc,	%f10,	%f14
	stw	%o3,	[%l7 + 0x28]
	tvs	%xcc,	0x3
	ldd	[%l7 + 0x78],	%f10
	stw	%i2,	[%l7 + 0x20]
	bvs,a,pt	%icc,	loop_4501
	alignaddrl	%g3,	%i7,	%l2
	bshuffle	%f8,	%f8,	%f10
	stw	%o4,	[%l7 + 0x70]
loop_4501:
	tvs	%xcc,	0x5
	fone	%f2
	tne	%icc,	0x7
	fmovrdgez	%l6,	%f0,	%f8
	movcs	%xcc,	%i1,	%l0
	fmovdg	%icc,	%f15,	%f9
	fnegd	%f12,	%f12
	tpos	%icc,	0x2
	xnor	%l1,	%g4,	%o6
	ldsh	[%l7 + 0x78],	%g2
	bleu,a	loop_4502
	smulcc	%i0,	%o5,	%g1
	fmovsge	%icc,	%f12,	%f13
	bge,a,pn	%xcc,	loop_4503
loop_4502:
	fpmerge	%f14,	%f11,	%f10
	fmovdpos	%xcc,	%f2,	%f3
	movg	%xcc,	%o7,	%i5
loop_4503:
	fpsub16	%f12,	%f2,	%f14
	umul	%i4,	%i3,	%o2
	srl	%o0,	%l4,	%o1
	ldsh	[%l7 + 0x0E],	%l5
	lduh	[%l7 + 0x78],	%l3
	andncc	%g5,	%i6,	%g7
	std	%f12,	[%l7 + 0x18]
	ldd	[%l7 + 0x68],	%f14
	bn,pt	%icc,	loop_4504
	ld	[%l7 + 0x24],	%f6
	brgez,a	%g6,	loop_4505
	fabss	%f13,	%f1
loop_4504:
	fsrc1s	%f9,	%f1
	fpsub32s	%f11,	%f3,	%f6
loop_4505:
	lduw	[%l7 + 0x28],	%o3
	ldd	[%l7 + 0x60],	%f6
	fmovd	%f8,	%f8
	ldsw	[%l7 + 0x38],	%i2
	ldsw	[%l7 + 0x64],	%g3
	ld	[%l7 + 0x40],	%f4
	sdivx	%l2,	0x1E43,	%o4
	fnot1s	%f1,	%f11
	st	%f15,	[%l7 + 0x68]
	fcmpne32	%f4,	%f4,	%i7
	fmovdneg	%icc,	%f15,	%f6
	fmovd	%f12,	%f4
	fpack32	%f0,	%f2,	%f14
	brgz,a	%i1,	loop_4506
	tn	%xcc,	0x5
	alignaddr	%l0,	%l1,	%g4
	fcmple32	%f4,	%f6,	%l6
loop_4506:
	ldub	[%l7 + 0x48],	%o6
	fandnot2	%f10,	%f8,	%f14
	fbne,a	%fcc3,	loop_4507
	ble,a,pt	%icc,	loop_4508
	fsrc1	%f12,	%f14
	movrlez	%i0,	%g2,	%g1
loop_4507:
	fnegd	%f0,	%f0
loop_4508:
	bl,a,pn	%icc,	loop_4509
	edge16n	%o5,	%i5,	%o7
	or	%i3,	0x1E7B,	%i4
	srlx	%o2,	0x00,	%o0
loop_4509:
	fbu	%fcc1,	loop_4510
	fmul8sux16	%f4,	%f4,	%f6
	movvc	%icc,	%l4,	%o1
	edge32l	%l3,	%l5,	%g5
loop_4510:
	ldsb	[%l7 + 0x0B],	%i6
	fsrc2	%f10,	%f2
	stb	%g6,	[%l7 + 0x12]
	fbe,a	%fcc3,	loop_4511
	stb	%o3,	[%l7 + 0x62]
	lduh	[%l7 + 0x20],	%g7
	fpadd32s	%f5,	%f15,	%f5
loop_4511:
	fcmpeq16	%f10,	%f8,	%i2
	xorcc	%g3,	0x039F,	%l2
	stw	%i7,	[%l7 + 0x18]
	udiv	%i1,	0x16D1,	%o4
	ld	[%l7 + 0x4C],	%f6
	fsrc2	%f8,	%f6
	ldsw	[%l7 + 0x60],	%l1
	ldsh	[%l7 + 0x76],	%l0
	fmovd	%f0,	%f12
	fbo	%fcc2,	loop_4512
	umulcc	%g4,	0x13C4,	%l6
	fble	%fcc1,	loop_4513
	stb	%i0,	[%l7 + 0x4E]
loop_4512:
	tn	%icc,	0x7
	ldsb	[%l7 + 0x44],	%g2
loop_4513:
	fbge	%fcc1,	loop_4514
	fnegd	%f6,	%f14
	or	%o6,	%g1,	%i5
	ldsw	[%l7 + 0x70],	%o5
loop_4514:
	fcmpes	%fcc2,	%f4,	%f1
	fmovdg	%xcc,	%f4,	%f15
	fba,a	%fcc3,	loop_4515
	ldsb	[%l7 + 0x70],	%i3
	sth	%i4,	[%l7 + 0x26]
	fmovrdlz	%o7,	%f2,	%f0
loop_4515:
	st	%f12,	[%l7 + 0x2C]
	fmovrdne	%o0,	%f0,	%f6
	fpsub32	%f14,	%f0,	%f10
	umulcc	%l4,	%o2,	%l3
	andcc	%l5,	%o1,	%g5
	stw	%i6,	[%l7 + 0x2C]
	fmuld8sux16	%f9,	%f4,	%f8
	umulcc	%g6,	0x1FC7,	%o3
	ldub	[%l7 + 0x34],	%i2
	lduw	[%l7 + 0x64],	%g3
	fbn	%fcc0,	loop_4516
	stb	%g7,	[%l7 + 0x72]
	ta	%xcc,	0x1
	udiv	%l2,	0x1590,	%i1
loop_4516:
	std	%f10,	[%l7 + 0x58]
	popc	0x08F6,	%o4
	ldub	[%l7 + 0x3C],	%l1
	fpadd32s	%f5,	%f13,	%f0
	lduh	[%l7 + 0x4A],	%i7
	fcmpne16	%f14,	%f0,	%l0
	srlx	%l6,	0x0E,	%i0
	ldx	[%l7 + 0x20],	%g4
	st	%f5,	[%l7 + 0x1C]
	fmovrslez	%g2,	%f15,	%f8
	nop
	setx loop_4517, %l0, %l1
	jmpl %l1, %o6
	fsrc1s	%f13,	%f12
	andn	%i5,	%g1,	%o5
	bpos,a	loop_4518
loop_4517:
	movpos	%icc,	%i4,	%i3
	taddcctv	%o7,	%o0,	%o2
	udivcc	%l3,	0x0D61,	%l4
loop_4518:
	fmovrslez	%l5,	%f3,	%f1
	fpmerge	%f9,	%f9,	%f14
	stb	%g5,	[%l7 + 0x79]
	st	%f5,	[%l7 + 0x5C]
	fmovdg	%icc,	%f11,	%f13
	tl	%xcc,	0x0
	subc	%i6,	%o1,	%o3
	edge8ln	%g6,	%i2,	%g7
	ld	[%l7 + 0x40],	%f11
	srl	%g3,	0x06,	%l2
	ldsw	[%l7 + 0x18],	%i1
	for	%f2,	%f8,	%f6
	tg	%icc,	0x7
	ldsh	[%l7 + 0x32],	%l1
	lduw	[%l7 + 0x3C],	%o4
	brgez	%i7,	loop_4519
	fnot1s	%f15,	%f14
	fmovdn	%icc,	%f2,	%f5
	mova	%icc,	%l6,	%l0
loop_4519:
	tvc	%icc,	0x7
	fbne,a	%fcc2,	loop_4520
	fpadd16s	%f9,	%f13,	%f7
	edge8	%i0,	%g2,	%g4
	subcc	%i5,	0x0B21,	%o6
loop_4520:
	subcc	%g1,	%o5,	%i3
	sth	%o7,	[%l7 + 0x44]
	fabsd	%f12,	%f14
	srax	%i4,	%o2,	%l3
	ldub	[%l7 + 0x10],	%l4
	fones	%f10
	sdivcc	%o0,	0x1FA5,	%g5
	ldx	[%l7 + 0x48],	%i6
	movrlez	%l5,	%o3,	%g6
	tg	%icc,	0x6
	or	%i2,	0x15F6,	%o1
	fmovsg	%xcc,	%f14,	%f15
	fmovdneg	%icc,	%f8,	%f9
	fornot1	%f6,	%f12,	%f14
	stw	%g7,	[%l7 + 0x78]
	edge8ln	%g3,	%i1,	%l1
	addc	%o4,	%i7,	%l6
	fmovdleu	%icc,	%f11,	%f12
	lduh	[%l7 + 0x6E],	%l0
	te	%xcc,	0x7
	andncc	%l2,	%g2,	%i0
	edge16	%g4,	%i5,	%o6
	fbge	%fcc2,	loop_4521
	std	%f6,	[%l7 + 0x18]
	fmovrdgez	%o5,	%f10,	%f10
	fbue,a	%fcc1,	loop_4522
loop_4521:
	brgz,a	%g1,	loop_4523
	fmovse	%icc,	%f11,	%f11
	fmovsvc	%xcc,	%f12,	%f8
loop_4522:
	fbu,a	%fcc1,	loop_4524
loop_4523:
	srl	%o7,	0x1D,	%i3
	bg	loop_4525
	fnot1s	%f11,	%f10
loop_4524:
	fmovrsgez	%o2,	%f12,	%f6
	fcmps	%fcc2,	%f13,	%f9
loop_4525:
	fmovda	%xcc,	%f14,	%f12
	array8	%i4,	%l4,	%o0
	orn	%g5,	%l3,	%i6
	fbl	%fcc1,	loop_4526
	fpadd32s	%f0,	%f1,	%f15
	fnot2	%f12,	%f2
	fxor	%f12,	%f2,	%f14
loop_4526:
	orncc	%o3,	0x1E9D,	%l5
	or	%i2,	%o1,	%g7
	fsrc2s	%f8,	%f12
	st	%f4,	[%l7 + 0x34]
	stw	%g6,	[%l7 + 0x50]
	tsubcc	%i1,	%g3,	%o4
	bg,a,pn	%icc,	loop_4527
	movre	%i7,	0x0E3,	%l1
	tle	%icc,	0x3
	siam	0x3
loop_4527:
	umul	%l6,	%l2,	%l0
	sth	%g2,	[%l7 + 0x20]
	stw	%g4,	[%l7 + 0x20]
	fmovdcc	%xcc,	%f11,	%f15
	sth	%i5,	[%l7 + 0x4E]
	lduh	[%l7 + 0x46],	%i0
	subccc	%o6,	0x1E6A,	%g1
	brlez,a	%o5,	loop_4528
	brnz,a	%o7,	loop_4529
	ble,a	loop_4530
	fpsub32s	%f7,	%f7,	%f8
loop_4528:
	smul	%i3,	0x1958,	%i4
loop_4529:
	ldx	[%l7 + 0x40],	%o2
loop_4530:
	ldx	[%l7 + 0x30],	%l4
	srlx	%g5,	%l3,	%i6
	ldub	[%l7 + 0x2E],	%o3
	tpos	%xcc,	0x0
	movvs	%icc,	%o0,	%i2
	add	%o1,	0x00DE,	%l5
	tgu	%xcc,	0x2
	movrne	%g6,	0x0EF,	%i1
	tg	%xcc,	0x1
	sth	%g3,	[%l7 + 0x40]
	ldsb	[%l7 + 0x4E],	%g7
	fba	%fcc0,	loop_4531
	sth	%i7,	[%l7 + 0x72]
	bl	%icc,	loop_4532
	movpos	%icc,	%l1,	%l6
loop_4531:
	ldsh	[%l7 + 0x54],	%l2
	fcmpd	%fcc2,	%f14,	%f4
loop_4532:
	lduh	[%l7 + 0x72],	%l0
	movg	%xcc,	%g2,	%o4
	nop
	setx loop_4533, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovdgu	%icc,	%f8,	%f15
	ldd	[%l7 + 0x20],	%f12
	fba,a	%fcc2,	loop_4534
loop_4533:
	ble,a,pt	%icc,	loop_4535
	fcmpeq16	%f2,	%f12,	%g4
	fbe,a	%fcc0,	loop_4536
loop_4534:
	sra	%i0,	%o6,	%g1
loop_4535:
	fnegd	%f12,	%f6
	fmovs	%f4,	%f9
loop_4536:
	edge8n	%i5,	%o7,	%i3
	lduw	[%l7 + 0x3C],	%o5
	movn	%xcc,	%i4,	%l4
	edge32	%g5,	%o2,	%l3
	tg	%icc,	0x5
	fmovdvc	%icc,	%f7,	%f3
	fsrc2	%f14,	%f0
	lduw	[%l7 + 0x10],	%i6
	fmovdl	%icc,	%f14,	%f7
	fnand	%f4,	%f14,	%f12
	alignaddr	%o3,	%o0,	%o1
	ble,a	loop_4537
	fnot1s	%f6,	%f4
	taddcctv	%l5,	0x156A,	%g6
	std	%f8,	[%l7 + 0x28]
loop_4537:
	stx	%i2,	[%l7 + 0x78]
	brnz,a	%i1,	loop_4538
	fmovdcc	%xcc,	%f10,	%f8
	ldx	[%l7 + 0x18],	%g7
	stw	%i7,	[%l7 + 0x08]
loop_4538:
	orncc	%g3,	%l6,	%l1
	st	%f6,	[%l7 + 0x24]
	tsubcc	%l0,	%l2,	%g2
	xnorcc	%g4,	0x080B,	%i0
	fmovdne	%icc,	%f2,	%f14
	movle	%xcc,	%o4,	%o6
	brgz	%g1,	loop_4539
	bn	%xcc,	loop_4540
	tleu	%xcc,	0x5
	ba	loop_4541
loop_4539:
	movvs	%icc,	%o7,	%i5
loop_4540:
	fmul8sux16	%f4,	%f14,	%f0
	sth	%i3,	[%l7 + 0x22]
loop_4541:
	fmovrse	%i4,	%f12,	%f4
	fbule,a	%fcc2,	loop_4542
	stw	%l4,	[%l7 + 0x78]
	fmovdvc	%icc,	%f10,	%f4
	tcs	%xcc,	0x2
loop_4542:
	bn,pt	%xcc,	loop_4543
	fcmple16	%f2,	%f10,	%g5
	andn	%o2,	%l3,	%i6
	ldsw	[%l7 + 0x54],	%o3
loop_4543:
	ldub	[%l7 + 0x66],	%o0
	fba	%fcc0,	loop_4544
	ldsh	[%l7 + 0x42],	%o1
	edge16n	%l5,	%o5,	%g6
	movn	%xcc,	%i2,	%g7
loop_4544:
	edge16ln	%i7,	%g3,	%i1
	edge8l	%l6,	%l0,	%l1
	tl	%icc,	0x1
	fmovrsgez	%l2,	%f0,	%f0
	fmovscc	%icc,	%f13,	%f4
	fmovse	%xcc,	%f12,	%f12
	fpack32	%f2,	%f8,	%f10
	nop
	setx loop_4545, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	stx	%g4,	[%l7 + 0x70]
	smulcc	%g2,	%o4,	%i0
	bleu,a,pt	%icc,	loop_4546
loop_4545:
	tcc	%icc,	0x5
	lduh	[%l7 + 0x66],	%g1
	fpack16	%f4,	%f14
loop_4546:
	fbge,a	%fcc0,	loop_4547
	ldx	[%l7 + 0x28],	%o6
	fcmps	%fcc2,	%f0,	%f8
	lduw	[%l7 + 0x30],	%i5
loop_4547:
	fmovscc	%xcc,	%f3,	%f13
	fmovdneg	%xcc,	%f5,	%f7
	brnz	%i3,	loop_4548
	ble,pt	%xcc,	loop_4549
	edge32n	%i4,	%o7,	%g5
	std	%f14,	[%l7 + 0x58]
loop_4548:
	srl	%l4,	0x1E,	%l3
loop_4549:
	ldx	[%l7 + 0x70],	%i6
	ld	[%l7 + 0x54],	%f5
	fnot1	%f14,	%f6
	fmovdleu	%xcc,	%f14,	%f1
	fcmped	%fcc0,	%f2,	%f12
	subc	%o2,	%o3,	%o0
	fxors	%f9,	%f15,	%f5
	orn	%o1,	%o5,	%g6
	stw	%l5,	[%l7 + 0x3C]
	fornot1	%f8,	%f0,	%f2
	lduw	[%l7 + 0x40],	%g7
	movvc	%xcc,	%i7,	%g3
	edge32	%i1,	%i2,	%l0
	stw	%l1,	[%l7 + 0x10]
	movrlez	%l6,	0x0F1,	%g4
	fmovse	%icc,	%f0,	%f5
	movrgz	%l2,	0x26F,	%o4
	fcmpeq16	%f4,	%f12,	%i0
	bne,a,pt	%xcc,	loop_4550
	fmovrsgez	%g1,	%f8,	%f10
	alignaddrl	%g2,	%i5,	%i3
	std	%f2,	[%l7 + 0x50]
loop_4550:
	fpmerge	%f7,	%f15,	%f0
	sdivx	%o6,	0x190A,	%i4
	bleu,a,pt	%xcc,	loop_4551
	fmul8x16au	%f7,	%f0,	%f6
	brnz	%o7,	loop_4552
	mova	%icc,	%g5,	%l4
loop_4551:
	call	loop_4553
	ba,a,pt	%xcc,	loop_4554
loop_4552:
	alignaddrl	%l3,	%i6,	%o3
	stx	%o2,	[%l7 + 0x28]
loop_4553:
	fble	%fcc1,	loop_4555
loop_4554:
	sll	%o0,	%o5,	%g6
	sth	%l5,	[%l7 + 0x2A]
	srl	%g7,	0x0A,	%o1
loop_4555:
	fmovrdne	%g3,	%f12,	%f8
	bshuffle	%f6,	%f6,	%f0
	bneg,a,pt	%xcc,	loop_4556
	lduh	[%l7 + 0x40],	%i1
	udiv	%i7,	0x1B09,	%l0
	fsrc1s	%f6,	%f3
loop_4556:
	orn	%l1,	%i2,	%l6
	ldsw	[%l7 + 0x28],	%g4
	srax	%o4,	%i0,	%l2
	fcmpgt16	%f12,	%f14,	%g2
	ld	[%l7 + 0x4C],	%f14
	fnot1s	%f6,	%f4
	fzeros	%f11
	ldd	[%l7 + 0x20],	%f0
	movge	%icc,	%i5,	%i3
	fbu	%fcc2,	loop_4557
	fnot1	%f0,	%f0
	fmul8sux16	%f12,	%f0,	%f0
	st	%f7,	[%l7 + 0x58]
loop_4557:
	ble,pt	%xcc,	loop_4558
	fornot2	%f2,	%f0,	%f14
	bvs	loop_4559
	tcc	%icc,	0x1
loop_4558:
	ldd	[%l7 + 0x60],	%f0
	fbug	%fcc2,	loop_4560
loop_4559:
	smul	%o6,	0x169B,	%g1
	ld	[%l7 + 0x64],	%f9
	be,pn	%xcc,	loop_4561
loop_4560:
	and	%o7,	%g5,	%l4
	orncc	%i4,	0x00E1,	%i6
	movgu	%xcc,	%o3,	%l3
loop_4561:
	fcmple32	%f2,	%f4,	%o0
	fble	%fcc1,	loop_4562
	st	%f11,	[%l7 + 0x7C]
	bg,a,pt	%icc,	loop_4563
	be,a,pn	%xcc,	loop_4564
loop_4562:
	fmuld8ulx16	%f7,	%f9,	%f14
	fmovdl	%icc,	%f11,	%f11
loop_4563:
	mulscc	%o2,	0x0C72,	%o5
loop_4564:
	edge8l	%g6,	%l5,	%g7
	popc	0x1E65,	%g3
	xnor	%i1,	%i7,	%o1
	fpadd32	%f10,	%f6,	%f4
	ldd	[%l7 + 0x58],	%f0
	ld	[%l7 + 0x50],	%f11
	call	loop_4565
	fmovrslez	%l0,	%f9,	%f3
	brz,a	%i2,	loop_4566
	fpack32	%f2,	%f0,	%f10
loop_4565:
	bgu,pn	%icc,	loop_4567
	srlx	%l6,	0x06,	%l1
loop_4566:
	ldsb	[%l7 + 0x48],	%g4
	fbne	%fcc1,	loop_4568
loop_4567:
	lduh	[%l7 + 0x12],	%i0
	fmovdleu	%xcc,	%f12,	%f11
	bcc,a	%icc,	loop_4569
loop_4568:
	movpos	%xcc,	%l2,	%o4
	fmovde	%icc,	%f0,	%f3
	bg,a	%xcc,	loop_4570
loop_4569:
	xor	%i5,	0x1D4C,	%g2
	fcmple16	%f6,	%f12,	%i3
	fbul	%fcc3,	loop_4571
loop_4570:
	fmovsn	%xcc,	%f15,	%f4
	movn	%xcc,	%g1,	%o6
	orncc	%g5,	%o7,	%i4
loop_4571:
	sth	%i6,	[%l7 + 0x4E]
	sll	%o3,	0x19,	%l4
	orncc	%o0,	%o2,	%l3
	ldx	[%l7 + 0x78],	%o5
	ldd	[%l7 + 0x40],	%f2
	orn	%g6,	%g7,	%l5
	srlx	%g3,	0x03,	%i1
	ldsh	[%l7 + 0x6A],	%o1
	ldsb	[%l7 + 0x6A],	%l0
	fmovdge	%xcc,	%f7,	%f1
	stw	%i7,	[%l7 + 0x64]
	stx	%i2,	[%l7 + 0x38]
	fmovsa	%xcc,	%f12,	%f10
	fmul8ulx16	%f12,	%f12,	%f2
	orn	%l1,	0x010E,	%g4
	sth	%i0,	[%l7 + 0x18]
	edge32n	%l2,	%l6,	%o4
	sth	%g2,	[%l7 + 0x66]
	bcs,a,pt	%xcc,	loop_4572
	ldx	[%l7 + 0x48],	%i3
	fornot2s	%f14,	%f4,	%f9
	movrlez	%i5,	%g1,	%g5
loop_4572:
	ldd	[%l7 + 0x28],	%f10
	sra	%o7,	0x1A,	%i4
	ldx	[%l7 + 0x68],	%o6
	ldub	[%l7 + 0x6E],	%i6
	edge8n	%o3,	%o0,	%l4
	ldsh	[%l7 + 0x08],	%o2
	ldsb	[%l7 + 0x71],	%o5
	fbue	%fcc3,	loop_4573
	smulcc	%l3,	0x1233,	%g6
	fmovsle	%icc,	%f3,	%f2
	ldub	[%l7 + 0x5C],	%l5
loop_4573:
	ldsb	[%l7 + 0x45],	%g7
	bpos,a,pn	%xcc,	loop_4574
	fpmerge	%f15,	%f13,	%f12
	fxnor	%f2,	%f6,	%f6
	addcc	%i1,	%o1,	%l0
loop_4574:
	movge	%icc,	%i7,	%g3
	movge	%xcc,	%i2,	%l1
	fbo,a	%fcc2,	loop_4575
	srax	%i0,	0x0D,	%l2
	ldsw	[%l7 + 0x78],	%g4
	xor	%l6,	0x1871,	%o4
loop_4575:
	stb	%g2,	[%l7 + 0x74]
	fbge	%fcc2,	loop_4576
	srlx	%i5,	0x1D,	%g1
	fbl,a	%fcc2,	loop_4577
	ldsw	[%l7 + 0x1C],	%g5
loop_4576:
	fmovdl	%xcc,	%f1,	%f9
	sdivcc	%i3,	0x0B06,	%o7
loop_4577:
	bcc,pt	%icc,	loop_4578
	fmul8x16au	%f1,	%f12,	%f12
	fnor	%f14,	%f14,	%f8
	mulscc	%o6,	%i4,	%i6
loop_4578:
	xor	%o3,	0x0CCE,	%l4
	bshuffle	%f14,	%f6,	%f8
	movcs	%icc,	%o0,	%o5
	sth	%o2,	[%l7 + 0x60]
	subccc	%l3,	%l5,	%g7
	fsrc2s	%f6,	%f1
	sth	%i1,	[%l7 + 0x3E]
	ldsw	[%l7 + 0x24],	%o1
	ld	[%l7 + 0x6C],	%f14
	movcc	%xcc,	%l0,	%i7
	ldsh	[%l7 + 0x0C],	%g6
	sra	%i2,	0x0E,	%l1
	st	%f1,	[%l7 + 0x6C]
	fba	%fcc3,	loop_4579
	udiv	%i0,	0x0057,	%l2
	bvs	loop_4580
	fand	%f14,	%f0,	%f10
loop_4579:
	stw	%g4,	[%l7 + 0x58]
	edge32n	%g3,	%o4,	%g2
loop_4580:
	fmovde	%xcc,	%f7,	%f1
	fmovsn	%icc,	%f15,	%f3
	fnot1s	%f2,	%f10
	movrne	%i5,	0x390,	%l6
	tn	%icc,	0x5
	movcs	%icc,	%g5,	%i3
	bg,a,pt	%icc,	loop_4581
	movpos	%xcc,	%o7,	%o6
	ba	loop_4582
	fmovrdlz	%i4,	%f4,	%f14
loop_4581:
	movrgz	%g1,	0x1D2,	%i6
	fabss	%f8,	%f1
loop_4582:
	movrlz	%l4,	0x2BE,	%o0
	ld	[%l7 + 0x60],	%f10
	st	%f4,	[%l7 + 0x0C]
	ldub	[%l7 + 0x25],	%o5
	lduw	[%l7 + 0x14],	%o2
	stb	%o3,	[%l7 + 0x72]
	tge	%icc,	0x0
	fpadd16s	%f5,	%f15,	%f0
	fsrc2	%f14,	%f8
	movrne	%l5,	%l3,	%i1
	ldsw	[%l7 + 0x20],	%g7
	tgu	%xcc,	0x5
	sub	%o1,	%l0,	%g6
	ldsh	[%l7 + 0x38],	%i2
	sth	%i7,	[%l7 + 0x64]
	umulcc	%i0,	0x1C1A,	%l2
	sth	%l1,	[%l7 + 0x68]
	bcs,a,pt	%xcc,	loop_4583
	fmovsvs	%xcc,	%f8,	%f6
	fabss	%f4,	%f4
	ldx	[%l7 + 0x08],	%g4
loop_4583:
	ba,a,pn	%xcc,	loop_4584
	orn	%g3,	%o4,	%i5
	orcc	%g2,	%g5,	%i3
	sra	%l6,	%o7,	%i4
loop_4584:
	edge16l	%g1,	%i6,	%l4
	ldsh	[%l7 + 0x4A],	%o6
	movg	%xcc,	%o0,	%o2
	fsrc1s	%f11,	%f9
	tge	%icc,	0x5
	movcs	%icc,	%o3,	%l5
	tvc	%xcc,	0x3
	brnz,a	%l3,	loop_4585
	st	%f3,	[%l7 + 0x48]
	fbue,a	%fcc3,	loop_4586
	tg	%icc,	0x3
loop_4585:
	orn	%o5,	%g7,	%i1
	tsubcctv	%o1,	0x178D,	%g6
loop_4586:
	st	%f3,	[%l7 + 0x2C]
	bn,pn	%icc,	loop_4587
	fornot2s	%f10,	%f9,	%f1
	lduh	[%l7 + 0x08],	%l0
	lduw	[%l7 + 0x44],	%i7
loop_4587:
	brlez	%i0,	loop_4588
	bpos	loop_4589
	edge16l	%l2,	%l1,	%g4
	sth	%i2,	[%l7 + 0x54]
loop_4588:
	orcc	%o4,	0x03C6,	%g3
loop_4589:
	fandnot1	%f6,	%f2,	%f0
	udivx	%i5,	0x1789,	%g5
	sdivcc	%i3,	0x0686,	%g2
	std	%f6,	[%l7 + 0x70]
	fpackfix	%f0,	%f8
	std	%f0,	[%l7 + 0x40]
	fble,a	%fcc2,	loop_4590
	fmovde	%icc,	%f12,	%f15
	lduh	[%l7 + 0x2C],	%l6
	udivx	%o7,	0x0DA5,	%g1
loop_4590:
	stx	%i6,	[%l7 + 0x30]
	st	%f12,	[%l7 + 0x50]
	edge32ln	%l4,	%i4,	%o0
	movg	%icc,	%o2,	%o3
	stw	%o6,	[%l7 + 0x50]
	ldsw	[%l7 + 0x58],	%l5
	tn	%xcc,	0x1
	udiv	%o5,	0x0785,	%g7
	fmovscs	%icc,	%f13,	%f3
	nop
	setx loop_4591, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fsrc2s	%f12,	%f13
	stx	%l3,	[%l7 + 0x30]
	lduh	[%l7 + 0x1C],	%o1
loop_4591:
	std	%f14,	[%l7 + 0x28]
	fbl	%fcc1,	loop_4592
	bge,a,pt	%icc,	loop_4593
	sra	%g6,	%l0,	%i7
	fand	%f2,	%f2,	%f0
loop_4592:
	fnors	%f1,	%f0,	%f8
loop_4593:
	alignaddr	%i0,	%i1,	%l2
	ld	[%l7 + 0x08],	%f15
	lduw	[%l7 + 0x34],	%g4
	fmovsgu	%xcc,	%f15,	%f5
	fpackfix	%f12,	%f9
	ld	[%l7 + 0x74],	%f10
	fblg	%fcc2,	loop_4594
	movrgez	%l1,	0x32A,	%o4
	move	%icc,	%g3,	%i2
	sth	%i5,	[%l7 + 0x5E]
loop_4594:
	stx	%g5,	[%l7 + 0x40]
	st	%f0,	[%l7 + 0x18]
	st	%f6,	[%l7 + 0x58]
	ldd	[%l7 + 0x60],	%f6
	bgu	%xcc,	loop_4595
	stb	%g2,	[%l7 + 0x3A]
	array8	%l6,	%i3,	%g1
	udiv	%o7,	0x0F9B,	%i6
loop_4595:
	fbe	%fcc3,	loop_4596
	fnors	%f14,	%f13,	%f10
	stw	%l4,	[%l7 + 0x70]
	bpos,pt	%xcc,	loop_4597
loop_4596:
	sth	%i4,	[%l7 + 0x6A]
	ldub	[%l7 + 0x19],	%o2
	fmovscc	%xcc,	%f5,	%f10
loop_4597:
	lduw	[%l7 + 0x1C],	%o3
	sth	%o0,	[%l7 + 0x18]
	stw	%l5,	[%l7 + 0x34]
	st	%f7,	[%l7 + 0x14]
	fmovrdgez	%o5,	%f10,	%f8
	brnz,a	%g7,	loop_4598
	xnorcc	%l3,	%o1,	%g6
	fbule,a	%fcc0,	loop_4599
	srlx	%o6,	%l0,	%i7
loop_4598:
	ld	[%l7 + 0x38],	%f1
	ldsb	[%l7 + 0x5A],	%i0
loop_4599:
	stx	%i1,	[%l7 + 0x38]
	brlez,a	%g4,	loop_4600
	fmovde	%icc,	%f8,	%f2
	fcmpgt32	%f2,	%f10,	%l1
	fmovrdgez	%l2,	%f8,	%f14
loop_4600:
	std	%f0,	[%l7 + 0x10]
	fbule,a	%fcc1,	loop_4601
	fmovrslez	%o4,	%f15,	%f5
	st	%f4,	[%l7 + 0x54]
	fmovdcc	%xcc,	%f3,	%f12
loop_4601:
	fmovrsgz	%g3,	%f13,	%f11
	ld	[%l7 + 0x74],	%f11
	tl	%icc,	0x7
	bvc	loop_4602
	movcs	%xcc,	%i5,	%i2
	fmovde	%xcc,	%f1,	%f14
	fmovdl	%icc,	%f11,	%f10
loop_4602:
	std	%f14,	[%l7 + 0x18]
	fbne,a	%fcc2,	loop_4603
	mova	%xcc,	%g5,	%g2
	tvc	%icc,	0x7
	fbl,a	%fcc1,	loop_4604
loop_4603:
	fbuge,a	%fcc1,	loop_4605
	sth	%i3,	[%l7 + 0x28]
	array32	%g1,	%o7,	%i6
loop_4604:
	fmovsge	%xcc,	%f9,	%f4
loop_4605:
	stw	%l4,	[%l7 + 0x14]
	tle	%xcc,	0x1
	stb	%l6,	[%l7 + 0x6E]
	edge32	%o2,	%o3,	%o0
	fmovrdne	%l5,	%f14,	%f8
	brlz	%o5,	loop_4606
	fcmpgt32	%f12,	%f0,	%i4
	fpsub16s	%f10,	%f2,	%f14
	popc	0x1D37,	%g7
loop_4606:
	xor	%l3,	0x1C20,	%g6
	bpos,a	loop_4607
	fpackfix	%f10,	%f15
	fmul8x16al	%f7,	%f8,	%f2
	nop
	setx loop_4608, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_4607:
	be,a	%xcc,	loop_4609
	st	%f8,	[%l7 + 0x18]
	brgz,a	%o6,	loop_4610
loop_4608:
	fornot1s	%f4,	%f13,	%f15
loop_4609:
	ble,pn	%icc,	loop_4611
	ldsb	[%l7 + 0x35],	%o1
loop_4610:
	fmovspos	%icc,	%f8,	%f13
	ldsw	[%l7 + 0x20],	%i7
loop_4611:
	sethi	0x04B0,	%l0
	fmuld8sux16	%f0,	%f11,	%f10
	fandnot2	%f14,	%f10,	%f12
	ldsb	[%l7 + 0x5C],	%i1
	smul	%g4,	0x1D10,	%i0
	fmovsvc	%icc,	%f2,	%f11
	fmovda	%icc,	%f10,	%f0
	orn	%l1,	%o4,	%l2
	addc	%i5,	%i2,	%g3
	fmovrsgez	%g5,	%f2,	%f3
	popc	%g2,	%g1
	ldx	[%l7 + 0x60],	%i3
	ldsh	[%l7 + 0x7A],	%i6
	fmovsneg	%icc,	%f3,	%f3
	sth	%l4,	[%l7 + 0x16]
	xorcc	%l6,	%o2,	%o7
	tge	%xcc,	0x3
	sth	%o3,	[%l7 + 0x74]
	srl	%o0,	%o5,	%i4
	stb	%l5,	[%l7 + 0x73]
	ldd	[%l7 + 0x38],	%f2
	fmovrdlez	%g7,	%f10,	%f14
	stw	%g6,	[%l7 + 0x58]
	srax	%o6,	%l3,	%i7
	movle	%icc,	%o1,	%l0
	ldsh	[%l7 + 0x3C],	%g4
	edge32ln	%i0,	%i1,	%l1
	std	%f14,	[%l7 + 0x28]
	std	%f6,	[%l7 + 0x38]
	lduh	[%l7 + 0x48],	%o4
	fones	%f4
	fmovdl	%xcc,	%f9,	%f13
	orcc	%l2,	0x0520,	%i2
	ldsh	[%l7 + 0x18],	%i5
	std	%f0,	[%l7 + 0x10]
	movrlez	%g5,	%g2,	%g1
	lduh	[%l7 + 0x0C],	%g3
	fsrc2	%f14,	%f12
	fbul,a	%fcc0,	loop_4612
	std	%f6,	[%l7 + 0x40]
	bcs	%xcc,	loop_4613
	fmovdl	%icc,	%f4,	%f0
loop_4612:
	bleu,a,pt	%icc,	loop_4614
	stw	%i3,	[%l7 + 0x20]
loop_4613:
	std	%f14,	[%l7 + 0x18]
	sdivx	%i6,	0x1C8A,	%l4
loop_4614:
	sllx	%o2,	0x1F,	%l6
	subc	%o7,	0x1C14,	%o0
	fnegs	%f12,	%f4
	sdivx	%o3,	0x128C,	%i4
	xnorcc	%l5,	%g7,	%o5
	fabsd	%f14,	%f14
	ldd	[%l7 + 0x60],	%f0
	ba,pt	%xcc,	loop_4615
	movvc	%icc,	%o6,	%g6
	tneg	%icc,	0x3
	fmuld8sux16	%f8,	%f9,	%f8
loop_4615:
	fcmpes	%fcc2,	%f6,	%f2
	stw	%i7,	[%l7 + 0x0C]
	fmovdneg	%xcc,	%f15,	%f3
	tpos	%xcc,	0x4
	edge16	%l3,	%l0,	%g4
	edge16ln	%o1,	%i1,	%i0
	movrlz	%l1,	0x386,	%o4
	lduw	[%l7 + 0x20],	%l2
	fmovdgu	%xcc,	%f13,	%f7
	fpadd16	%f4,	%f4,	%f12
	for	%f6,	%f10,	%f10
	ldx	[%l7 + 0x68],	%i5
	stb	%i2,	[%l7 + 0x56]
	tge	%icc,	0x5
	tneg	%icc,	0x7
	fmovrdlz	%g2,	%f6,	%f6
	stw	%g1,	[%l7 + 0x34]
	bpos,a,pn	%icc,	loop_4616
	ldsb	[%l7 + 0x2E],	%g3
	movn	%icc,	%g5,	%i3
	fbu	%fcc1,	loop_4617
loop_4616:
	ldsw	[%l7 + 0x70],	%l4
	ldx	[%l7 + 0x70],	%i6
	ldsh	[%l7 + 0x1E],	%l6
loop_4617:
	fcmped	%fcc1,	%f8,	%f14
	ldub	[%l7 + 0x1B],	%o2
	edge32l	%o0,	%o3,	%o7
	fmovs	%f0,	%f11
	brz,a	%i4,	loop_4618
	ldsb	[%l7 + 0x71],	%g7
	tne	%xcc,	0x6
	movne	%xcc,	%l5,	%o6
loop_4618:
	ld	[%l7 + 0x14],	%f10
	fcmple32	%f2,	%f0,	%g6
	tn	%icc,	0x5
	movleu	%xcc,	%o5,	%i7
	xorcc	%l3,	0x0B9A,	%g4
	fbuge,a	%fcc3,	loop_4619
	lduh	[%l7 + 0x10],	%o1
	ldd	[%l7 + 0x50],	%f4
	taddcctv	%i1,	%l0,	%l1
loop_4619:
	movne	%xcc,	%o4,	%l2
	bne	%xcc,	loop_4620
	fpsub32	%f4,	%f6,	%f4
	ld	[%l7 + 0x64],	%f1
	bneg	%icc,	loop_4621
loop_4620:
	faligndata	%f14,	%f10,	%f10
	fmovsn	%xcc,	%f1,	%f6
	nop
	setx loop_4622, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_4621:
	lduh	[%l7 + 0x2C],	%i5
	brz,a	%i2,	loop_4623
	movle	%icc,	%i0,	%g1
loop_4622:
	fnot1s	%f2,	%f7
	movcs	%xcc,	%g2,	%g3
loop_4623:
	ldd	[%l7 + 0x30],	%f2
	fnot1	%f2,	%f2
	alignaddr	%i3,	%g5,	%i6
	stx	%l6,	[%l7 + 0x40]
	lduh	[%l7 + 0x2A],	%l4
	fsrc2	%f14,	%f12
	ldd	[%l7 + 0x28],	%f4
	ldub	[%l7 + 0x69],	%o2
	fcmple32	%f6,	%f0,	%o3
	ldub	[%l7 + 0x59],	%o7
	ld	[%l7 + 0x18],	%f8
	lduw	[%l7 + 0x0C],	%i4
	movge	%xcc,	%o0,	%l5
	addccc	%o6,	%g6,	%g7
	movl	%icc,	%o5,	%l3
	ble	%icc,	loop_4624
	tvc	%xcc,	0x7
	fandnot1	%f0,	%f14,	%f8
	fmovspos	%icc,	%f6,	%f6
loop_4624:
	brlz	%i7,	loop_4625
	fcmpgt32	%f12,	%f4,	%o1
	brgz,a	%i1,	loop_4626
	fmovda	%icc,	%f12,	%f12
loop_4625:
	lduh	[%l7 + 0x30],	%l0
	fbul	%fcc1,	loop_4627
loop_4626:
	udivx	%g4,	0x19E3,	%l1
	alignaddrl	%o4,	%l2,	%i5
	bpos,a	%icc,	loop_4628
loop_4627:
	ldsw	[%l7 + 0x74],	%i0
	lduh	[%l7 + 0x24],	%i2
	stb	%g1,	[%l7 + 0x47]
loop_4628:
	sllx	%g3,	%g2,	%g5
	fpadd16	%f10,	%f10,	%f4
	sdivcc	%i3,	0x04F3,	%i6
	fors	%f8,	%f7,	%f4
	ldx	[%l7 + 0x30],	%l4
	mulx	%o2,	%l6,	%o7
	be,a	%xcc,	loop_4629
	ldsw	[%l7 + 0x58],	%i4
	tsubcctv	%o0,	%l5,	%o6
	bge,a	%icc,	loop_4630
loop_4629:
	addcc	%o3,	0x0BB0,	%g7
	ldd	[%l7 + 0x40],	%f14
	array8	%o5,	%g6,	%l3
loop_4630:
	fnand	%f14,	%f14,	%f4
	lduh	[%l7 + 0x08],	%i7
	brnz	%o1,	loop_4631
	bgu,pt	%icc,	loop_4632
	xor	%l0,	0x1524,	%i1
	fmovsneg	%icc,	%f2,	%f11
loop_4631:
	ld	[%l7 + 0x10],	%f13
loop_4632:
	lduw	[%l7 + 0x2C],	%g4
	fmovrslz	%o4,	%f14,	%f1
	sdivcc	%l2,	0x0C39,	%i5
	umul	%l1,	%i0,	%i2
	fbn,a	%fcc0,	loop_4633
	ldx	[%l7 + 0x08],	%g1
	fpackfix	%f6,	%f7
	fbl	%fcc2,	loop_4634
loop_4633:
	stb	%g2,	[%l7 + 0x4A]
	udivcc	%g5,	0x01C4,	%g3
	brgez	%i6,	loop_4635
loop_4634:
	fmovde	%icc,	%f2,	%f13
	lduh	[%l7 + 0x20],	%l4
	fmovrdlez	%o2,	%f8,	%f6
loop_4635:
	fmovscs	%icc,	%f6,	%f5
	fmovse	%xcc,	%f15,	%f15
	ldsb	[%l7 + 0x39],	%l6
	taddcctv	%i3,	0x112E,	%i4
	ldd	[%l7 + 0x50],	%f2
	edge16	%o0,	%o7,	%o6
	stb	%o3,	[%l7 + 0x7C]
	fpsub16	%f4,	%f6,	%f4
	fmovsgu	%xcc,	%f1,	%f2
	stw	%g7,	[%l7 + 0x2C]
	for	%f6,	%f10,	%f8
	brgz	%l5,	loop_4636
	fmuld8sux16	%f6,	%f13,	%f14
	lduh	[%l7 + 0x70],	%g6
	ldx	[%l7 + 0x40],	%o5
loop_4636:
	lduw	[%l7 + 0x64],	%l3
	st	%f13,	[%l7 + 0x50]
	ld	[%l7 + 0x18],	%f5
	movleu	%icc,	%o1,	%l0
	stw	%i7,	[%l7 + 0x48]
	ldsh	[%l7 + 0x5C],	%i1
	xnorcc	%g4,	0x1359,	%o4
	ld	[%l7 + 0x64],	%f2
	fmul8x16au	%f0,	%f2,	%f4
	fone	%f12
	fmovse	%xcc,	%f4,	%f10
	stb	%l2,	[%l7 + 0x22]
	st	%f7,	[%l7 + 0x1C]
	lduw	[%l7 + 0x34],	%i5
	umul	%i0,	0x0714,	%l1
	call	loop_4637
	fcmpes	%fcc3,	%f0,	%f3
	call	loop_4638
	fbu	%fcc1,	loop_4639
loop_4637:
	edge32ln	%i2,	%g1,	%g2
	fcmped	%fcc0,	%f8,	%f4
loop_4638:
	sdivcc	%g5,	0x0B66,	%g3
loop_4639:
	fbul,a	%fcc2,	loop_4640
	fpsub32	%f12,	%f6,	%f8
	fmovrdlz	%l4,	%f4,	%f14
	fbo	%fcc1,	loop_4641
loop_4640:
	stw	%i6,	[%l7 + 0x14]
	fmovsvc	%icc,	%f9,	%f0
	ldx	[%l7 + 0x58],	%l6
loop_4641:
	stw	%o2,	[%l7 + 0x70]
	fmovsl	%xcc,	%f2,	%f10
	fmovrsne	%i4,	%f10,	%f2
	bcc,a,pt	%icc,	loop_4642
	addccc	%o0,	0x04D3,	%o7
	andn	%o6,	%o3,	%g7
	fornot1s	%f13,	%f1,	%f1
loop_4642:
	bneg,pn	%xcc,	loop_4643
	lduw	[%l7 + 0x28],	%i3
	tgu	%icc,	0x2
	fpadd16s	%f5,	%f15,	%f10
loop_4643:
	udivx	%g6,	0x1258,	%o5
	tneg	%icc,	0x0
	andcc	%l3,	0x018F,	%o1
	movn	%icc,	%l5,	%i7
	bleu,a,pt	%xcc,	loop_4644
	ldub	[%l7 + 0x6E],	%i1
	movleu	%xcc,	%l0,	%o4
	ldub	[%l7 + 0x5F],	%l2
loop_4644:
	movpos	%xcc,	%g4,	%i5
	fmovsneg	%icc,	%f5,	%f1
	sdivcc	%i0,	0x1A15,	%i2
	movrlz	%l1,	%g1,	%g2
	fbge	%fcc1,	loop_4645
	fmovdvs	%icc,	%f14,	%f1
	fcmple32	%f8,	%f0,	%g5
	stx	%l4,	[%l7 + 0x58]
loop_4645:
	nop
	setx loop_4646, %l0, %l1
	jmpl %l1, %i6
	addc	%g3,	%l6,	%i4
	fbe	%fcc1,	loop_4647
	edge32n	%o2,	%o7,	%o0
loop_4646:
	stw	%o3,	[%l7 + 0x48]
	fabss	%f10,	%f8
loop_4647:
	movrgz	%o6,	%g7,	%g6
	array32	%i3,	%o5,	%l3
	movrgz	%o1,	%i7,	%i1
	fmovrsgez	%l5,	%f5,	%f14
	movpos	%xcc,	%o4,	%l2
	fmul8x16	%f9,	%f14,	%f12
	tsubcc	%l0,	%i5,	%g4
	fcmpne16	%f10,	%f0,	%i0
	stx	%l1,	[%l7 + 0x48]
	fmovdge	%icc,	%f13,	%f7
	tcc	%icc,	0x4
	fcmpd	%fcc1,	%f8,	%f14
	lduh	[%l7 + 0x08],	%g1
	ldsh	[%l7 + 0x3A],	%g2
	ldsw	[%l7 + 0x30],	%i2
	fmovsgu	%icc,	%f0,	%f15
	ldd	[%l7 + 0x70],	%f14
	fzero	%f12
	fmovsge	%xcc,	%f6,	%f3
	tge	%icc,	0x3
	fba	%fcc0,	loop_4648
	brlez,a	%g5,	loop_4649
	fmovsleu	%icc,	%f10,	%f4
	stw	%i6,	[%l7 + 0x10]
loop_4648:
	sllx	%l4,	0x1C,	%g3
loop_4649:
	lduw	[%l7 + 0x38],	%i4
	tsubcc	%l6,	0x04DF,	%o2
	bpos,a	loop_4650
	fmovrsgez	%o7,	%f12,	%f10
	fnot2s	%f3,	%f12
	fandnot1s	%f9,	%f3,	%f11
loop_4650:
	ldub	[%l7 + 0x41],	%o3
	orn	%o0,	0x1A4F,	%g7
	faligndata	%f14,	%f6,	%f8
	ldsh	[%l7 + 0x10],	%g6
	fmovsle	%xcc,	%f3,	%f3
	sth	%i3,	[%l7 + 0x46]
	ldx	[%l7 + 0x70],	%o5
	fmovscs	%icc,	%f2,	%f12
	lduw	[%l7 + 0x10],	%l3
	bvs	loop_4651
	ldx	[%l7 + 0x68],	%o1
	ta	%xcc,	0x6
	fnor	%f4,	%f2,	%f0
loop_4651:
	ldsh	[%l7 + 0x24],	%o6
	sth	%i7,	[%l7 + 0x22]
	fmovrsgez	%i1,	%f7,	%f3
	fpmerge	%f6,	%f5,	%f8
	fmovrdlez	%l5,	%f0,	%f14
	std	%f14,	[%l7 + 0x08]
	edge16	%l2,	%o4,	%i5
	bpos,a	loop_4652
	alignaddr	%g4,	%l0,	%l1
	tvs	%icc,	0x7
	ld	[%l7 + 0x60],	%f5
loop_4652:
	lduh	[%l7 + 0x1A],	%g1
	edge32l	%g2,	%i0,	%g5
	fmovdne	%icc,	%f12,	%f12
	stb	%i6,	[%l7 + 0x18]
	tvs	%icc,	0x1
	ldd	[%l7 + 0x10],	%f0
	tvs	%icc,	0x5
	lduw	[%l7 + 0x60],	%l4
	fzeros	%f1
	fcmpes	%fcc1,	%f3,	%f7
	ldd	[%l7 + 0x58],	%f8
	nop
	setx loop_4653, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovdn	%xcc,	%f10,	%f8
	srl	%i2,	%i4,	%g3
	sdivcc	%o2,	0x0D17,	%l6
loop_4653:
	fbue,a	%fcc3,	loop_4654
	ldx	[%l7 + 0x08],	%o7
	fmovdneg	%icc,	%f10,	%f12
	edge32ln	%o0,	%o3,	%g7
loop_4654:
	bge,a,pt	%xcc,	loop_4655
	sub	%g6,	%i3,	%o5
	taddcctv	%l3,	0x1C2A,	%o1
	fnegd	%f14,	%f4
loop_4655:
	bneg	loop_4656
	ldub	[%l7 + 0x2A],	%i7
	stw	%o6,	[%l7 + 0x6C]
	sth	%i1,	[%l7 + 0x3E]
loop_4656:
	fmovrdlz	%l2,	%f10,	%f0
	ldub	[%l7 + 0x27],	%o4
	fmovsn	%icc,	%f9,	%f6
	fbu,a	%fcc1,	loop_4657
	fbl	%fcc1,	loop_4658
	fandnot1	%f6,	%f10,	%f10
	xnor	%l5,	%i5,	%l0
loop_4657:
	fbuge,a	%fcc2,	loop_4659
loop_4658:
	bcs	%xcc,	loop_4660
	ldsw	[%l7 + 0x20],	%g4
	bleu,a,pt	%xcc,	loop_4661
loop_4659:
	ldub	[%l7 + 0x1A],	%g1
loop_4660:
	fcmpes	%fcc3,	%f11,	%f15
	fmovsge	%icc,	%f14,	%f1
loop_4661:
	movg	%icc,	%l1,	%i0
	fnot2s	%f2,	%f0
	stw	%g5,	[%l7 + 0x60]
	fpsub32	%f0,	%f6,	%f2
	stx	%i6,	[%l7 + 0x20]
	movleu	%icc,	%g2,	%i2
	addc	%i4,	0x115B,	%l4
	ldsb	[%l7 + 0x55],	%o2
	st	%f1,	[%l7 + 0x30]
	bneg,a,pn	%xcc,	loop_4662
	fmovrdgez	%l6,	%f8,	%f0
	bneg,a	%icc,	loop_4663
	srl	%g3,	%o7,	%o0
loop_4662:
	bl,a	loop_4664
	udivcc	%o3,	0x0886,	%g6
loop_4663:
	ldub	[%l7 + 0x29],	%g7
	stw	%o5,	[%l7 + 0x20]
loop_4664:
	stw	%i3,	[%l7 + 0x2C]
	ldx	[%l7 + 0x48],	%o1
	fbn	%fcc0,	loop_4665
	fcmpeq16	%f2,	%f10,	%l3
	stw	%o6,	[%l7 + 0x0C]
	ld	[%l7 + 0x28],	%f5
loop_4665:
	brz,a	%i7,	loop_4666
	ldd	[%l7 + 0x28],	%f10
	fmul8sux16	%f12,	%f2,	%f0
	edge8n	%l2,	%i1,	%l5
loop_4666:
	ldub	[%l7 + 0x3E],	%i5
	faligndata	%f4,	%f8,	%f2
	ldsw	[%l7 + 0x7C],	%l0
	smul	%g4,	0x16C5,	%o4
	movpos	%icc,	%g1,	%l1
	ldd	[%l7 + 0x10],	%f6
	fmovdpos	%icc,	%f7,	%f13
	ldsb	[%l7 + 0x2E],	%g5
	ba,pn	%icc,	loop_4667
	fmuld8ulx16	%f3,	%f15,	%f0
	fmovdne	%icc,	%f14,	%f11
	ta	%xcc,	0x1
loop_4667:
	stw	%i0,	[%l7 + 0x7C]
	fornot2s	%f8,	%f5,	%f13
	array16	%g2,	%i6,	%i4
	movg	%icc,	%l4,	%o2
	tleu	%xcc,	0x7
	fnor	%f2,	%f6,	%f2
	popc	0x048D,	%l6
	fmul8x16	%f1,	%f14,	%f8
	movcc	%xcc,	%i2,	%g3
	lduh	[%l7 + 0x2C],	%o0
	fmovdne	%icc,	%f12,	%f11
	lduh	[%l7 + 0x2A],	%o7
	sth	%g6,	[%l7 + 0x68]
	mova	%xcc,	%o3,	%g7
	nop
	setx loop_4668, %l0, %l1
	jmpl %l1, %i3
	ldd	[%l7 + 0x48],	%f0
	fpmerge	%f7,	%f10,	%f10
	fnand	%f6,	%f2,	%f8
loop_4668:
	fcmple32	%f6,	%f0,	%o1
	lduw	[%l7 + 0x68],	%o5
	lduh	[%l7 + 0x42],	%o6
	fmovse	%xcc,	%f11,	%f1
	ld	[%l7 + 0x1C],	%f0
	movgu	%icc,	%i7,	%l2
	st	%f15,	[%l7 + 0x20]
	stx	%i1,	[%l7 + 0x38]
	ldsh	[%l7 + 0x6E],	%l5
	st	%f14,	[%l7 + 0x68]
	tcs	%icc,	0x3
	te	%xcc,	0x1
	movvc	%icc,	%i5,	%l0
	tn	%xcc,	0x7
	ldsw	[%l7 + 0x20],	%g4
	bneg	loop_4669
	stx	%l3,	[%l7 + 0x10]
	alignaddrl	%o4,	%l1,	%g5
	stw	%g1,	[%l7 + 0x08]
loop_4669:
	bg,a	%xcc,	loop_4670
	bcs,a,pt	%xcc,	loop_4671
	st	%f15,	[%l7 + 0x30]
	sll	%g2,	%i6,	%i4
loop_4670:
	std	%f10,	[%l7 + 0x10]
loop_4671:
	fbuge,a	%fcc2,	loop_4672
	bg,pn	%xcc,	loop_4673
	bne,pt	%xcc,	loop_4674
	xnor	%l4,	0x12DC,	%o2
loop_4672:
	edge32l	%l6,	%i2,	%g3
loop_4673:
	fmovrsgez	%i0,	%f7,	%f13
loop_4674:
	st	%f13,	[%l7 + 0x58]
	ta	%xcc,	0x7
	movpos	%xcc,	%o7,	%g6
	fmovsa	%icc,	%f5,	%f2
	alignaddrl	%o3,	%o0,	%g7
	edge8	%o1,	%i3,	%o6
	fnot1s	%f8,	%f11
	sth	%o5,	[%l7 + 0x2E]
	fmovsvs	%xcc,	%f14,	%f12
	ldsw	[%l7 + 0x18],	%i7
	brgez	%l2,	loop_4675
	fpadd32s	%f6,	%f14,	%f7
	tleu	%xcc,	0x4
	ldd	[%l7 + 0x10],	%f14
loop_4675:
	ldsh	[%l7 + 0x16],	%l5
	fmovdne	%icc,	%f9,	%f13
	sub	%i5,	0x180F,	%i1
	fnands	%f6,	%f4,	%f1
	fmovsvc	%xcc,	%f14,	%f4
	ldub	[%l7 + 0x22],	%l0
	fpsub32	%f10,	%f12,	%f4
	bshuffle	%f4,	%f12,	%f12
	lduh	[%l7 + 0x40],	%l3
	bgu,a,pn	%icc,	loop_4676
	fornot1s	%f7,	%f1,	%f14
	ldsh	[%l7 + 0x40],	%o4
	movg	%xcc,	%l1,	%g5
loop_4676:
	fbo	%fcc0,	loop_4677
	fpmerge	%f5,	%f3,	%f2
	ldsw	[%l7 + 0x20],	%g4
	ldd	[%l7 + 0x28],	%f6
loop_4677:
	fmovrdgez	%g1,	%f14,	%f12
	fmovsvs	%xcc,	%f9,	%f5
	fmovdneg	%icc,	%f14,	%f11
	bleu,a	loop_4678
	tgu	%icc,	0x6
	std	%f10,	[%l7 + 0x10]
	fmovdl	%xcc,	%f14,	%f10
loop_4678:
	ldsh	[%l7 + 0x14],	%g2
	stb	%i6,	[%l7 + 0x6F]
	fnot2	%f12,	%f0
	fbu	%fcc3,	loop_4679
	brnz,a	%l4,	loop_4680
	alignaddrl	%o2,	%i4,	%l6
	pdist	%f8,	%f8,	%f2
loop_4679:
	ldsh	[%l7 + 0x0A],	%g3
loop_4680:
	tvs	%xcc,	0x2
	fmovrsne	%i2,	%f1,	%f15
	ba,a	loop_4681
	fmovde	%xcc,	%f14,	%f3
	std	%f2,	[%l7 + 0x30]
	std	%f14,	[%l7 + 0x50]
loop_4681:
	alignaddrl	%o7,	%g6,	%o3
	sethi	0x0424,	%o0
	fxors	%f9,	%f8,	%f13
	fbge	%fcc2,	loop_4682
	lduh	[%l7 + 0x10],	%g7
	fmovdl	%icc,	%f0,	%f13
	fors	%f7,	%f12,	%f15
loop_4682:
	array32	%i0,	%o1,	%i3
	edge32ln	%o6,	%o5,	%i7
	fmovdcc	%icc,	%f7,	%f15
	lduh	[%l7 + 0x4A],	%l5
	stb	%l2,	[%l7 + 0x5F]
	stb	%i5,	[%l7 + 0x42]
	movrlez	%i1,	%l3,	%l0
	orcc	%o4,	0x0F0F,	%g5
	sdivx	%l1,	0x1444,	%g1
	ldsw	[%l7 + 0x7C],	%g2
	subc	%i6,	%l4,	%o2
	bg,a,pn	%xcc,	loop_4683
	ldsh	[%l7 + 0x28],	%g4
	sdiv	%l6,	0x1614,	%i4
	fmuld8ulx16	%f13,	%f8,	%f2
loop_4683:
	fnor	%f10,	%f0,	%f12
	movcc	%icc,	%g3,	%i2
	edge8n	%g6,	%o3,	%o0
	sth	%o7,	[%l7 + 0x3C]
	edge32ln	%g7,	%i0,	%i3
	bn	loop_4684
	brlz,a	%o6,	loop_4685
	fornot1s	%f12,	%f10,	%f14
	ldub	[%l7 + 0x4A],	%o5
loop_4684:
	fmovdg	%icc,	%f5,	%f3
loop_4685:
	brnz,a	%i7,	loop_4686
	bvc	loop_4687
	ldd	[%l7 + 0x08],	%f0
	fands	%f11,	%f7,	%f5
loop_4686:
	fmovse	%xcc,	%f15,	%f1
loop_4687:
	fcmple32	%f2,	%f8,	%o1
	fbul	%fcc2,	loop_4688
	fcmple32	%f12,	%f10,	%l2
	brgz,a	%i5,	loop_4689
	fmovd	%f12,	%f14
loop_4688:
	mulx	%l5,	0x0D47,	%l3
	pdist	%f8,	%f2,	%f14
loop_4689:
	srl	%i1,	0x10,	%l0
	ldub	[%l7 + 0x26],	%o4
	fmul8x16au	%f5,	%f6,	%f12
	sth	%l1,	[%l7 + 0x0E]
	for	%f8,	%f0,	%f2
	fmovscc	%xcc,	%f8,	%f12
	fcmpd	%fcc2,	%f10,	%f4
	sth	%g5,	[%l7 + 0x26]
	fands	%f10,	%f11,	%f10
	fmovsn	%icc,	%f0,	%f5
	ba	%xcc,	loop_4690
	bg	loop_4691
	fmovsa	%icc,	%f8,	%f11
	bl,a,pt	%icc,	loop_4692
loop_4690:
	fnands	%f15,	%f2,	%f4
loop_4691:
	movpos	%icc,	%g2,	%i6
	ldub	[%l7 + 0x34],	%g1
loop_4692:
	fzeros	%f13
	fbule,a	%fcc2,	loop_4693
	tl	%xcc,	0x0
	fnot2s	%f12,	%f7
	sth	%o2,	[%l7 + 0x50]
loop_4693:
	tne	%icc,	0x0
	nop
	setx loop_4694, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fbue	%fcc1,	loop_4695
	movle	%xcc,	%g4,	%l6
	st	%f8,	[%l7 + 0x40]
loop_4694:
	siam	0x6
loop_4695:
	fmovrdlz	%l4,	%f12,	%f6
	fpadd32	%f6,	%f12,	%f0
	fones	%f1
	ldd	[%l7 + 0x38],	%f0
	fbn	%fcc2,	loop_4696
	ldub	[%l7 + 0x0D],	%i4
	ldub	[%l7 + 0x42],	%i2
	fbne	%fcc0,	loop_4697
loop_4696:
	edge32	%g6,	%g3,	%o3
	lduh	[%l7 + 0x7E],	%o7
	ldx	[%l7 + 0x20],	%o0
loop_4697:
	bleu	loop_4698
	bvs	loop_4699
	ldx	[%l7 + 0x28],	%g7
	tvc	%icc,	0x1
loop_4698:
	bne,a,pt	%xcc,	loop_4700
loop_4699:
	movrlez	%i0,	%o6,	%o5
	fcmpne32	%f10,	%f2,	%i3
	sth	%o1,	[%l7 + 0x12]
loop_4700:
	fsrc1	%f4,	%f14
	stw	%i7,	[%l7 + 0x74]
	std	%f12,	[%l7 + 0x38]
	sub	%l2,	0x0086,	%l5
	ble	%icc,	loop_4701
	fmovscc	%icc,	%f4,	%f9
	movvs	%xcc,	%l3,	%i1
	fexpand	%f5,	%f2
loop_4701:
	stx	%l0,	[%l7 + 0x28]
	fcmpgt32	%f6,	%f6,	%o4
	tn	%icc,	0x0
	fpadd16	%f4,	%f4,	%f2
	ldsw	[%l7 + 0x78],	%i5
	fmuld8ulx16	%f1,	%f7,	%f2
	fpack16	%f0,	%f7
	stb	%l1,	[%l7 + 0x1D]
	fmovdleu	%xcc,	%f8,	%f7
	xor	%g2,	0x153F,	%i6
	ldx	[%l7 + 0x18],	%g5
	fmovs	%f15,	%f12
	fcmps	%fcc3,	%f2,	%f12
	movl	%xcc,	%o2,	%g1
	fpadd32	%f6,	%f4,	%f10
	umul	%g4,	0x1D54,	%l6
	fnands	%f7,	%f15,	%f2
	fmovrdne	%i4,	%f4,	%f10
	smulcc	%i2,	0x0D2B,	%l4
	array32	%g6,	%o3,	%o7
	edge32ln	%o0,	%g7,	%g3
	stw	%i0,	[%l7 + 0x38]
	fmovdn	%icc,	%f5,	%f5
	fnegd	%f4,	%f2
	lduh	[%l7 + 0x20],	%o6
	udiv	%i3,	0x0DBB,	%o1
	fbug,a	%fcc3,	loop_4702
	lduw	[%l7 + 0x5C],	%i7
	movpos	%icc,	%o5,	%l5
	ldsb	[%l7 + 0x7F],	%l3
loop_4702:
	fmovrslz	%l2,	%f5,	%f11
	movge	%xcc,	%i1,	%l0
	taddcctv	%i5,	0x0D71,	%o4
	fpadd16s	%f3,	%f8,	%f1
	fmovdleu	%icc,	%f7,	%f9
	std	%f0,	[%l7 + 0x30]
	fbl	%fcc2,	loop_4703
	fmovsvc	%icc,	%f3,	%f12
	stx	%g2,	[%l7 + 0x58]
	mova	%xcc,	%l1,	%i6
loop_4703:
	st	%f6,	[%l7 + 0x30]
	ldsh	[%l7 + 0x12],	%o2
	fbl,a	%fcc0,	loop_4704
	ldx	[%l7 + 0x18],	%g5
	brnz	%g4,	loop_4705
	fmovdvs	%icc,	%f10,	%f3
loop_4704:
	st	%f9,	[%l7 + 0x24]
	bn	loop_4706
loop_4705:
	movrlz	%l6,	0x18C,	%g1
	edge8	%i2,	%i4,	%l4
	bcc,pt	%xcc,	loop_4707
loop_4706:
	tsubcc	%o3,	0x0BF2,	%o7
	alignaddrl	%o0,	%g6,	%g3
	fbuge,a	%fcc3,	loop_4708
loop_4707:
	bg,a,pn	%xcc,	loop_4709
	fmul8ulx16	%f6,	%f8,	%f6
	fmovdgu	%icc,	%f5,	%f9
loop_4708:
	fcmpgt32	%f14,	%f14,	%i0
loop_4709:
	std	%f12,	[%l7 + 0x58]
	sdiv	%g7,	0x12CF,	%o6
	tpos	%xcc,	0x5
	movrne	%i3,	0x0A3,	%i7
	tl	%xcc,	0x6
	ldx	[%l7 + 0x08],	%o5
	std	%f8,	[%l7 + 0x20]
	fpadd32s	%f10,	%f2,	%f0
	fnot1s	%f12,	%f12
	fmovdcs	%icc,	%f0,	%f13
	ldx	[%l7 + 0x50],	%l5
	fba	%fcc1,	loop_4710
	for	%f12,	%f6,	%f14
	sra	%l3,	0x19,	%l2
	fmovdcc	%icc,	%f8,	%f8
loop_4710:
	orncc	%o1,	%i1,	%i5
	lduw	[%l7 + 0x14],	%o4
	fmovrde	%g2,	%f4,	%f6
	std	%f6,	[%l7 + 0x48]
	move	%xcc,	%l1,	%l0
	stb	%i6,	[%l7 + 0x0E]
	fnands	%f11,	%f5,	%f9
	tne	%xcc,	0x2
	fcmpne32	%f12,	%f8,	%o2
	fmovdleu	%icc,	%f3,	%f14
	edge16n	%g4,	%g5,	%l6
	nop
	setx loop_4711, %l0, %l1
	jmpl %l1, %i2
	fbue,a	%fcc0,	loop_4712
	lduh	[%l7 + 0x12],	%i4
	fandnot1s	%f3,	%f14,	%f6
loop_4711:
	fmovdg	%xcc,	%f10,	%f0
loop_4712:
	fnors	%f7,	%f3,	%f7
	fmovdle	%xcc,	%f12,	%f9
	lduh	[%l7 + 0x58],	%l4
	bvc,a	%icc,	loop_4713
	ldsb	[%l7 + 0x0B],	%o3
	fmovdcc	%xcc,	%f9,	%f6
	fmovscc	%xcc,	%f0,	%f12
loop_4713:
	fblg	%fcc2,	loop_4714
	std	%f4,	[%l7 + 0x50]
	nop
	setx loop_4715, %l0, %l1
	jmpl %l1, %g1
	srl	%o7,	0x09,	%g6
loop_4714:
	mova	%xcc,	%o0,	%g3
	fcmpne32	%f12,	%f6,	%g7
loop_4715:
	bpos,pn	%icc,	loop_4716
	movvc	%xcc,	%o6,	%i0
	orn	%i3,	%i7,	%l5
	movcs	%xcc,	%o5,	%l2
loop_4716:
	ldsw	[%l7 + 0x08],	%o1
	fabss	%f1,	%f1
	edge8n	%i1,	%i5,	%l3
	edge32l	%g2,	%o4,	%l0
	sub	%l1,	0x1EA9,	%o2
	lduw	[%l7 + 0x38],	%g4
	stw	%g5,	[%l7 + 0x08]
	popc	0x12F7,	%l6
	ba,a,pt	%xcc,	loop_4717
	fmovsne	%xcc,	%f7,	%f8
	edge16l	%i6,	%i2,	%l4
	lduh	[%l7 + 0x3A],	%o3
loop_4717:
	fbuge,a	%fcc3,	loop_4718
	sth	%i4,	[%l7 + 0x78]
	fand	%f8,	%f2,	%f14
	movleu	%icc,	%g1,	%g6
loop_4718:
	for	%f14,	%f10,	%f14
	fmovsa	%icc,	%f12,	%f14
	fcmpes	%fcc0,	%f15,	%f6
	brnz	%o0,	loop_4719
	fmovspos	%xcc,	%f8,	%f4
	fnegs	%f12,	%f0
	mulx	%g3,	0x16FC,	%o7
loop_4719:
	sra	%o6,	0x0F,	%i0
	lduh	[%l7 + 0x68],	%i3
	tgu	%icc,	0x3
	fmovrdlez	%i7,	%f4,	%f14
	sdiv	%l5,	0x0D0E,	%g7
	sth	%o5,	[%l7 + 0x62]
	lduh	[%l7 + 0x34],	%l2
	bshuffle	%f4,	%f8,	%f12
	sethi	0x1CD4,	%o1
	ldsw	[%l7 + 0x78],	%i1
	fmovscc	%xcc,	%f15,	%f3
	fcmpeq32	%f8,	%f0,	%l3
	tcs	%xcc,	0x5
	nop
	setx loop_4720, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	lduw	[%l7 + 0x4C],	%i5
	subccc	%o4,	%l0,	%g2
	brlez,a	%o2,	loop_4721
loop_4720:
	fmovse	%xcc,	%f3,	%f0
	mova	%xcc,	%l1,	%g4
	fmovsg	%xcc,	%f5,	%f0
loop_4721:
	tg	%xcc,	0x7
	nop
	setx loop_4722, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stb	%l6,	[%l7 + 0x35]
	fexpand	%f11,	%f14
	edge32l	%i6,	%i2,	%l4
loop_4722:
	stb	%g5,	[%l7 + 0x0A]
	stb	%o3,	[%l7 + 0x58]
	st	%f1,	[%l7 + 0x1C]
	edge32	%i4,	%g6,	%o0
	edge8l	%g1,	%g3,	%o6
	bleu	%xcc,	loop_4723
	mova	%xcc,	%o7,	%i0
	fbu,a	%fcc2,	loop_4724
	fmovdge	%icc,	%f2,	%f1
loop_4723:
	umulcc	%i7,	0x0675,	%i3
	ldd	[%l7 + 0x60],	%f12
loop_4724:
	fmovsgu	%icc,	%f10,	%f0
	fmovrdgez	%l5,	%f8,	%f10
	xnor	%g7,	0x1309,	%l2
	ldsh	[%l7 + 0x72],	%o5
	ldd	[%l7 + 0x48],	%f14
	ldsw	[%l7 + 0x54],	%o1
	lduh	[%l7 + 0x12],	%i1
	nop
	setx loop_4725, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmuld8ulx16	%f8,	%f10,	%f0
	ld	[%l7 + 0x34],	%f6
	ldx	[%l7 + 0x60],	%l3
loop_4725:
	fbug,a	%fcc1,	loop_4726
	movrlez	%o4,	0x3A1,	%l0
	nop
	setx loop_4727, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fexpand	%f15,	%f6
loop_4726:
	alignaddr	%i5,	%g2,	%l1
	fmovse	%xcc,	%f15,	%f13
loop_4727:
	fbe	%fcc0,	loop_4728
	sth	%o2,	[%l7 + 0x44]
	tl	%xcc,	0x0
	movvs	%xcc,	%l6,	%i6
loop_4728:
	fmovsn	%icc,	%f10,	%f0
	fbule,a	%fcc0,	loop_4729
	tpos	%xcc,	0x5
	stb	%g4,	[%l7 + 0x1C]
	stb	%l4,	[%l7 + 0x64]
loop_4729:
	stw	%i2,	[%l7 + 0x28]
	fsrc2s	%f12,	%f0
	fbue,a	%fcc3,	loop_4730
	bcc,pn	%xcc,	loop_4731
	ldsh	[%l7 + 0x30],	%o3
	ldsh	[%l7 + 0x60],	%g5
loop_4730:
	fnors	%f13,	%f9,	%f4
loop_4731:
	lduh	[%l7 + 0x78],	%i4
	fmovrsgez	%g6,	%f4,	%f15
	ldsb	[%l7 + 0x74],	%g1
	fmovs	%f10,	%f2
	fbge	%fcc3,	loop_4732
	bl,pt	%xcc,	loop_4733
	fmovrse	%o0,	%f2,	%f15
	st	%f2,	[%l7 + 0x64]
loop_4732:
	fbn	%fcc0,	loop_4734
loop_4733:
	sllx	%g3,	0x10,	%o6
	std	%f8,	[%l7 + 0x20]
	ldub	[%l7 + 0x3A],	%i0
loop_4734:
	tsubcc	%o7,	0x112A,	%i3
	fmovspos	%xcc,	%f1,	%f7
	tn	%xcc,	0x4
	brlez,a	%i7,	loop_4735
	movrlez	%l5,	%g7,	%o5
	fbn	%fcc3,	loop_4736
	sdiv	%l2,	0x0176,	%o1
loop_4735:
	ld	[%l7 + 0x4C],	%f10
	stw	%l3,	[%l7 + 0x4C]
loop_4736:
	tge	%xcc,	0x2
	fbule,a	%fcc3,	loop_4737
	tsubcctv	%o4,	0x0D7D,	%i1
	fmovdcc	%icc,	%f13,	%f4
	fmovsg	%icc,	%f15,	%f10
loop_4737:
	fmovrse	%i5,	%f12,	%f13
	lduw	[%l7 + 0x70],	%l0
	brgz,a	%g2,	loop_4738
	ldsh	[%l7 + 0x20],	%o2
	mulx	%l6,	%l1,	%i6
	lduw	[%l7 + 0x3C],	%l4
loop_4738:
	fxor	%f6,	%f0,	%f6
	ldsb	[%l7 + 0x6E],	%g4
	tsubcc	%i2,	%o3,	%i4
	mulx	%g6,	%g5,	%o0
	fandnot1s	%f8,	%f4,	%f6
	tvs	%icc,	0x7
	ldd	[%l7 + 0x30],	%f4
	edge8l	%g3,	%g1,	%o6
	fpackfix	%f10,	%f1
	ldsh	[%l7 + 0x20],	%o7
	fbge,a	%fcc2,	loop_4739
	xor	%i0,	%i7,	%i3
	stx	%g7,	[%l7 + 0x30]
	fabsd	%f0,	%f0
loop_4739:
	sdivx	%o5,	0x1899,	%l2
	bg,a	loop_4740
	ldx	[%l7 + 0x68],	%l5
	fbo	%fcc2,	loop_4741
	st	%f7,	[%l7 + 0x58]
loop_4740:
	std	%f2,	[%l7 + 0x48]
	ldub	[%l7 + 0x70],	%l3
loop_4741:
	stb	%o1,	[%l7 + 0x5C]
	fmovda	%icc,	%f11,	%f12
	edge16ln	%o4,	%i1,	%l0
	smulcc	%g2,	%i5,	%o2
	bcc,a,pn	%xcc,	loop_4742
	bpos,pn	%xcc,	loop_4743
	fcmple32	%f8,	%f12,	%l1
	fmovscs	%icc,	%f15,	%f7
loop_4742:
	subcc	%l6,	0x1338,	%l4
loop_4743:
	and	%i6,	0x149D,	%g4
	tle	%icc,	0x3
	fmovdl	%icc,	%f2,	%f2
	ldx	[%l7 + 0x38],	%o3
	umulcc	%i2,	%g6,	%g5
	fmovsa	%icc,	%f10,	%f10
	ldsh	[%l7 + 0x5E],	%o0
	stx	%i4,	[%l7 + 0x68]
	tne	%xcc,	0x0
	mulscc	%g1,	0x15C9,	%o6
	brlz,a	%g3,	loop_4744
	edge8l	%o7,	%i0,	%i3
	bgu,pn	%xcc,	loop_4745
	st	%f2,	[%l7 + 0x7C]
loop_4744:
	st	%f12,	[%l7 + 0x28]
	stx	%i7,	[%l7 + 0x78]
loop_4745:
	fmovrde	%o5,	%f0,	%f2
	bcc,a	loop_4746
	ldub	[%l7 + 0x4F],	%g7
	tleu	%xcc,	0x3
	fcmple16	%f12,	%f2,	%l5
loop_4746:
	fornot2	%f10,	%f2,	%f0
	movre	%l2,	0x1F0,	%l3
	ldx	[%l7 + 0x70],	%o4
	ldub	[%l7 + 0x33],	%i1
	fmovsge	%icc,	%f9,	%f5
	ldsw	[%l7 + 0x7C],	%l0
	fnand	%f2,	%f6,	%f14
	ldd	[%l7 + 0x68],	%f10
	movrgez	%g2,	0x396,	%i5
	ldd	[%l7 + 0x60],	%f12
	st	%f5,	[%l7 + 0x1C]
	tsubcc	%o2,	%l1,	%o1
	ldub	[%l7 + 0x09],	%l6
	fbo	%fcc0,	loop_4747
	ldx	[%l7 + 0x10],	%l4
	fabsd	%f2,	%f2
	fands	%f12,	%f5,	%f7
loop_4747:
	brgez,a	%i6,	loop_4748
	fcmpes	%fcc3,	%f0,	%f2
	stb	%o3,	[%l7 + 0x40]
	array16	%i2,	%g6,	%g4
loop_4748:
	lduw	[%l7 + 0x0C],	%o0
	ldx	[%l7 + 0x50],	%g5
	bgu,a,pn	%icc,	loop_4749
	subccc	%g1,	%i4,	%g3
	fandnot1	%f6,	%f10,	%f4
	ldd	[%l7 + 0x18],	%f12
loop_4749:
	nop
	setx loop_4750, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovsle	%icc,	%f9,	%f0
	fblg,a	%fcc2,	loop_4751
	fcmps	%fcc3,	%f5,	%f10
loop_4750:
	fabss	%f2,	%f2
	fcmple16	%f8,	%f4,	%o7
loop_4751:
	fbge	%fcc2,	loop_4752
	stb	%i0,	[%l7 + 0x69]
	popc	0x1F18,	%i3
	fmovrse	%o6,	%f14,	%f0
loop_4752:
	stx	%o5,	[%l7 + 0x60]
	ldub	[%l7 + 0x22],	%i7
	brlez	%l5,	loop_4753
	fcmpne16	%f10,	%f8,	%g7
	and	%l3,	0x1940,	%o4
	movle	%xcc,	%l2,	%l0
loop_4753:
	st	%f9,	[%l7 + 0x10]
	stb	%i1,	[%l7 + 0x10]
	fandnot2s	%f11,	%f12,	%f8
	edge8n	%i5,	%g2,	%l1
	ldd	[%l7 + 0x78],	%f4
	fmovrdgez	%o1,	%f10,	%f12
	fbe	%fcc3,	loop_4754
	ldd	[%l7 + 0x28],	%f4
	fbul,a	%fcc3,	loop_4755
	ldx	[%l7 + 0x78],	%o2
loop_4754:
	tl	%icc,	0x4
	edge8n	%l4,	%l6,	%i6
loop_4755:
	ldd	[%l7 + 0x30],	%f14
	std	%f2,	[%l7 + 0x38]
	movvc	%icc,	%i2,	%g6
	subcc	%g4,	%o0,	%g5
	nop
	setx loop_4756, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovdg	%icc,	%f5,	%f4
	std	%f4,	[%l7 + 0x78]
	fmovdcc	%icc,	%f2,	%f6
loop_4756:
	ldx	[%l7 + 0x48],	%g1
	fmovsa	%xcc,	%f10,	%f1
	smulcc	%i4,	0x167D,	%g3
	tcc	%xcc,	0x1
	pdist	%f12,	%f10,	%f2
	fcmps	%fcc1,	%f14,	%f10
	fornot2	%f10,	%f14,	%f8
	fmovde	%xcc,	%f4,	%f13
	fcmple32	%f12,	%f8,	%o7
	ldub	[%l7 + 0x18],	%i0
	fornot2s	%f12,	%f9,	%f12
	edge32	%o3,	%o6,	%i3
	bvc,a,pt	%icc,	loop_4757
	fmovsl	%xcc,	%f3,	%f7
	fmul8ulx16	%f12,	%f2,	%f12
	fmovse	%icc,	%f9,	%f6
loop_4757:
	ble,a	loop_4758
	stb	%o5,	[%l7 + 0x09]
	edge8n	%i7,	%l5,	%l3
	ld	[%l7 + 0x54],	%f6
loop_4758:
	add	%g7,	0x0B50,	%l2
	add	%l0,	0x1D05,	%o4
	movle	%icc,	%i5,	%g2
	fmovsg	%xcc,	%f2,	%f15
	orcc	%l1,	%i1,	%o2
	bneg	%xcc,	loop_4759
	tleu	%icc,	0x1
	fpack16	%f6,	%f10
	stb	%l4,	[%l7 + 0x3D]
loop_4759:
	stw	%l6,	[%l7 + 0x48]
	ldx	[%l7 + 0x58],	%o1
	ldx	[%l7 + 0x08],	%i6
	fbue	%fcc3,	loop_4760
	tle	%xcc,	0x5
	ld	[%l7 + 0x0C],	%f9
	ld	[%l7 + 0x40],	%f0
loop_4760:
	edge8n	%i2,	%g4,	%g6
	ldsh	[%l7 + 0x16],	%g5
	sth	%o0,	[%l7 + 0x68]
	ldub	[%l7 + 0x73],	%i4
	lduh	[%l7 + 0x6C],	%g1
	sub	%o7,	%g3,	%i0
	bcs,a	loop_4761
	fcmple16	%f14,	%f12,	%o6
	orncc	%i3,	0x11E2,	%o5
	ldub	[%l7 + 0x35],	%o3
loop_4761:
	fones	%f8
	xnorcc	%l5,	%l3,	%g7
	fnegd	%f10,	%f8
	fble	%fcc0,	loop_4762
	fmovrsne	%i7,	%f6,	%f11
	st	%f8,	[%l7 + 0x24]
	nop
	setx loop_4763, %l0, %l1
	jmpl %l1, %l2
loop_4762:
	std	%f0,	[%l7 + 0x28]
	sdivx	%l0,	0x0A3D,	%i5
	fsrc1	%f14,	%f2
loop_4763:
	fpackfix	%f6,	%f1
	lduh	[%l7 + 0x1C],	%g2
	movl	%xcc,	%o4,	%l1
	sdivcc	%o2,	0x09B7,	%l4
	udiv	%l6,	0x154A,	%o1
	fexpand	%f7,	%f10
	fmovdge	%xcc,	%f11,	%f7
	ldsw	[%l7 + 0x48],	%i1
	fmovrde	%i6,	%f12,	%f0
	stx	%g4,	[%l7 + 0x10]
	bshuffle	%f6,	%f2,	%f4
	orncc	%i2,	0x092C,	%g5
	fors	%f11,	%f15,	%f8
	fbne,a	%fcc0,	loop_4764
	lduh	[%l7 + 0x4E],	%o0
	tle	%icc,	0x4
	ldd	[%l7 + 0x20],	%f0
loop_4764:
	smulcc	%g6,	0x1649,	%g1
	sth	%o7,	[%l7 + 0x64]
	fpackfix	%f12,	%f5
	be,pt	%xcc,	loop_4765
	lduh	[%l7 + 0x34],	%g3
	ld	[%l7 + 0x4C],	%f12
	andncc	%i4,	%i0,	%i3
loop_4765:
	fmovrsne	%o6,	%f1,	%f7
	edge32ln	%o3,	%l5,	%o5
	brgez	%l3,	loop_4766
	fbg	%fcc2,	loop_4767
	udiv	%i7,	0x01B5,	%g7
	stw	%l2,	[%l7 + 0x70]
loop_4766:
	fmovsgu	%icc,	%f7,	%f4
loop_4767:
	fexpand	%f2,	%f12
	fabss	%f0,	%f4
	fmovsne	%xcc,	%f0,	%f5
	movpos	%xcc,	%l0,	%i5
	fmul8x16al	%f12,	%f9,	%f12
	ldx	[%l7 + 0x28],	%o4
	fxors	%f5,	%f0,	%f0
	sllx	%l1,	0x19,	%o2
	stw	%g2,	[%l7 + 0x70]
	mulscc	%l4,	0x14FC,	%o1
	stb	%i1,	[%l7 + 0x34]
	fmovdl	%icc,	%f2,	%f10
	sth	%l6,	[%l7 + 0x0C]
	ld	[%l7 + 0x18],	%f3
	fxor	%f4,	%f10,	%f12
	xor	%g4,	%i2,	%i6
	nop
	setx loop_4768, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovdneg	%icc,	%f5,	%f10
	fmovrsne	%o0,	%f15,	%f6
	ldsb	[%l7 + 0x6F],	%g5
loop_4768:
	movl	%xcc,	%g6,	%g1
	be,pt	%icc,	loop_4769
	ldx	[%l7 + 0x70],	%o7
	fxors	%f12,	%f6,	%f0
	ldsh	[%l7 + 0x58],	%i4
loop_4769:
	addcc	%g3,	%i0,	%o6
	sdivcc	%o3,	0x1F61,	%l5
	nop
	setx loop_4770, %l0, %l1
	jmpl %l1, %i3
	stw	%o5,	[%l7 + 0x38]
	fmovdgu	%icc,	%f14,	%f2
	fmovrsgz	%l3,	%f2,	%f13
loop_4770:
	stw	%i7,	[%l7 + 0x20]
	std	%f10,	[%l7 + 0x28]
	ta	%icc,	0x6
	ldx	[%l7 + 0x38],	%l2
	movrlez	%g7,	%l0,	%i5
	fpsub32s	%f12,	%f1,	%f10
	movle	%icc,	%l1,	%o2
	bne,a,pn	%xcc,	loop_4771
	stw	%o4,	[%l7 + 0x64]
	std	%f8,	[%l7 + 0x30]
	movn	%xcc,	%l4,	%o1
loop_4771:
	edge8l	%g2,	%i1,	%l6
	tcc	%icc,	0x6
	fmovdcc	%xcc,	%f10,	%f6
	ldd	[%l7 + 0x50],	%f10
	stx	%i2,	[%l7 + 0x40]
	xnor	%g4,	%o0,	%g5
	alignaddr	%i6,	%g6,	%g1
	std	%f6,	[%l7 + 0x68]
	std	%f6,	[%l7 + 0x60]
	fornot2s	%f9,	%f9,	%f9
	std	%f10,	[%l7 + 0x40]
	tge	%xcc,	0x1
	fmul8sux16	%f0,	%f4,	%f0
	andcc	%o7,	%i4,	%i0
	stb	%g3,	[%l7 + 0x0D]
	srl	%o3,	0x12,	%o6
	fmovdcc	%xcc,	%f15,	%f9
	tleu	%icc,	0x1
	ldub	[%l7 + 0x37],	%i3
	movrlez	%o5,	0x187,	%l3
	stw	%l5,	[%l7 + 0x44]
	brgez,a	%i7,	loop_4772
	fmovdvc	%icc,	%f0,	%f7
	lduh	[%l7 + 0x3C],	%g7
	fmovdl	%xcc,	%f1,	%f10
loop_4772:
	brnz	%l0,	loop_4773
	ld	[%l7 + 0x5C],	%f14
	ld	[%l7 + 0x44],	%f12
	lduw	[%l7 + 0x2C],	%l2
loop_4773:
	sll	%i5,	%o2,	%o4
	andncc	%l1,	%l4,	%o1
	stw	%g2,	[%l7 + 0x08]
	ldsh	[%l7 + 0x3C],	%l6
	fmovrdgez	%i2,	%f4,	%f8
	andn	%g4,	%i1,	%o0
	fornot2	%f14,	%f0,	%f14
	ldx	[%l7 + 0x08],	%i6
	fones	%f2
	ld	[%l7 + 0x40],	%f2
	lduw	[%l7 + 0x4C],	%g5
	fpadd32s	%f6,	%f4,	%f1
	edge16ln	%g1,	%o7,	%i4
	ble,a	loop_4774
	fxor	%f8,	%f4,	%f12
	fabss	%f4,	%f9
	lduh	[%l7 + 0x24],	%g6
loop_4774:
	sth	%g3,	[%l7 + 0x0E]
	movne	%xcc,	%i0,	%o6
	xorcc	%i3,	0x1E36,	%o3
	st	%f10,	[%l7 + 0x7C]
	bneg,a	loop_4775
	ldsh	[%l7 + 0x68],	%l3
	addcc	%l5,	%o5,	%i7
	udivcc	%l0,	0x0EB4,	%g7
loop_4775:
	ldsh	[%l7 + 0x1C],	%l2
	fnegs	%f4,	%f14
	fbge,a	%fcc3,	loop_4776
	fble,a	%fcc3,	loop_4777
	fmovrde	%i5,	%f2,	%f8
	stb	%o4,	[%l7 + 0x29]
loop_4776:
	movcc	%xcc,	%o2,	%l4
loop_4777:
	lduh	[%l7 + 0x5E],	%l1
	sth	%o1,	[%l7 + 0x74]
	tleu	%icc,	0x4
	bcs	%xcc,	loop_4778
	brgez,a	%l6,	loop_4779
	ld	[%l7 + 0x34],	%f15
	ldsb	[%l7 + 0x57],	%g2
loop_4778:
	fnot2	%f12,	%f2
loop_4779:
	smul	%g4,	0x01EE,	%i2
	fandnot2s	%f7,	%f7,	%f4
	fzero	%f8
	mulx	%i1,	0x0F85,	%i6
	srl	%o0,	0x0C,	%g1
	fmovrdne	%o7,	%f6,	%f2
	fmovrse	%g5,	%f15,	%f5
	fmovrdlez	%g6,	%f6,	%f8
	fcmpd	%fcc0,	%f4,	%f6
	lduh	[%l7 + 0x44],	%g3
	tle	%xcc,	0x6
	bvs,pt	%xcc,	loop_4780
	fmul8x16	%f8,	%f12,	%f0
	fpmerge	%f14,	%f9,	%f6
	fabss	%f1,	%f15
loop_4780:
	ld	[%l7 + 0x4C],	%f11
	xnor	%i4,	%o6,	%i0
	alignaddrl	%i3,	%o3,	%l3
	andncc	%o5,	%i7,	%l5
	fmovdg	%icc,	%f10,	%f8
	fornot1	%f4,	%f4,	%f12
	bl,a	loop_4781
	ldsb	[%l7 + 0x4A],	%g7
	lduh	[%l7 + 0x1C],	%l2
	array32	%l0,	%i5,	%o4
loop_4781:
	fcmple16	%f2,	%f2,	%o2
	siam	0x5
	bneg,a	loop_4782
	sdivcc	%l4,	0x0FB3,	%o1
	brnz	%l1,	loop_4783
	movgu	%icc,	%g2,	%l6
loop_4782:
	addccc	%i2,	%i1,	%g4
	bleu,pn	%icc,	loop_4784
loop_4783:
	fmul8x16au	%f15,	%f14,	%f14
	sth	%i6,	[%l7 + 0x78]
	fbo	%fcc2,	loop_4785
loop_4784:
	ldsw	[%l7 + 0x08],	%o0
	taddcctv	%o7,	0x14CD,	%g1
	array16	%g5,	%g6,	%i4
loop_4785:
	st	%f7,	[%l7 + 0x70]
	bge,a,pt	%xcc,	loop_4786
	fbo	%fcc0,	loop_4787
	te	%xcc,	0x4
	fpack32	%f0,	%f6,	%f12
loop_4786:
	array32	%g3,	%o6,	%i3
loop_4787:
	brlz	%i0,	loop_4788
	ldub	[%l7 + 0x0B],	%l3
	or	%o5,	0x0792,	%o3
	fmul8ulx16	%f14,	%f14,	%f14
loop_4788:
	tcc	%xcc,	0x1
	lduw	[%l7 + 0x2C],	%l5
	ldsw	[%l7 + 0x28],	%g7
	ldsh	[%l7 + 0x72],	%l2
	fmuld8ulx16	%f4,	%f9,	%f10
	fmovrsne	%i7,	%f3,	%f4
	stw	%i5,	[%l7 + 0x1C]
	fmovsn	%icc,	%f3,	%f0
	movvs	%icc,	%l0,	%o2
	subc	%l4,	0x00E9,	%o1
	ldsh	[%l7 + 0x12],	%o4
	ldsh	[%l7 + 0x32],	%l1
	lduw	[%l7 + 0x64],	%g2
	lduw	[%l7 + 0x24],	%l6
	fcmpgt32	%f14,	%f0,	%i1
	fmovrslz	%g4,	%f15,	%f5
	ba,a	%icc,	loop_4789
	call	loop_4790
	nop
	setx loop_4791, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	stx	%i6,	[%l7 + 0x18]
loop_4789:
	tpos	%xcc,	0x1
loop_4790:
	tcs	%xcc,	0x2
loop_4791:
	fones	%f15
	fornot1	%f0,	%f4,	%f14
	movleu	%icc,	%i2,	%o7
	fpackfix	%f0,	%f8
	fmovrslz	%g1,	%f5,	%f13
	fmovrsne	%o0,	%f3,	%f13
	fpsub32	%f8,	%f8,	%f2
	fnegd	%f8,	%f2
	bgu	loop_4792
	bvc,a	loop_4793
	fmul8x16au	%f15,	%f12,	%f14
	fmovdle	%icc,	%f5,	%f1
loop_4792:
	fcmple32	%f10,	%f14,	%g6
loop_4793:
	tne	%xcc,	0x2
	tn	%xcc,	0x0
	stx	%i4,	[%l7 + 0x10]
	fsrc2s	%f2,	%f10
	fmovda	%icc,	%f9,	%f13
	stw	%g5,	[%l7 + 0x14]
	fcmpgt32	%f2,	%f12,	%o6
	fmovdle	%icc,	%f14,	%f12
	fxnors	%f11,	%f0,	%f7
	fmovdcs	%xcc,	%f3,	%f4
	st	%f0,	[%l7 + 0x10]
	fbe	%fcc3,	loop_4794
	fbe,a	%fcc2,	loop_4795
	ldub	[%l7 + 0x7D],	%i3
	stw	%i0,	[%l7 + 0x38]
loop_4794:
	stw	%g3,	[%l7 + 0x1C]
loop_4795:
	andn	%o5,	%l3,	%o3
	nop
	setx loop_4796, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	std	%f0,	[%l7 + 0x58]
	subccc	%g7,	0x1EA6,	%l2
	lduw	[%l7 + 0x54],	%l5
loop_4796:
	fmul8ulx16	%f0,	%f12,	%f8
	lduh	[%l7 + 0x42],	%i7
	fmovda	%xcc,	%f4,	%f1
	ld	[%l7 + 0x50],	%f2
	brz,a	%l0,	loop_4797
	edge16ln	%i5,	%o2,	%l4
	movpos	%icc,	%o1,	%o4
	tsubcc	%l1,	0x0924,	%l6
loop_4797:
	ld	[%l7 + 0x70],	%f14
	fone	%f0
	bvc,pt	%icc,	loop_4798
	std	%f4,	[%l7 + 0x08]
	brgz,a	%g2,	loop_4799
	fmovsa	%icc,	%f11,	%f3
loop_4798:
	popc	0x17A3,	%i1
	bvc,a,pn	%xcc,	loop_4800
loop_4799:
	ldsh	[%l7 + 0x1E],	%g4
	movneg	%xcc,	%i6,	%o7
	fmovsvs	%xcc,	%f7,	%f11
loop_4800:
	srlx	%g1,	0x04,	%o0
	fnand	%f4,	%f4,	%f10
	ble,a,pn	%xcc,	loop_4801
	lduw	[%l7 + 0x54],	%i2
	tle	%xcc,	0x4
	fornot1s	%f1,	%f7,	%f5
loop_4801:
	ldd	[%l7 + 0x38],	%f4
	stx	%i4,	[%l7 + 0x58]
	fornot2s	%f6,	%f15,	%f0
	fnands	%f5,	%f6,	%f7
	ldx	[%l7 + 0x18],	%g5
	ld	[%l7 + 0x0C],	%f2
	fmuld8sux16	%f11,	%f2,	%f4
	fmul8x16al	%f12,	%f4,	%f14
	st	%f1,	[%l7 + 0x14]
	brgz	%o6,	loop_4802
	fone	%f8
	fmovdgu	%icc,	%f0,	%f11
	ldsh	[%l7 + 0x70],	%g6
loop_4802:
	fmovspos	%xcc,	%f7,	%f15
	ldub	[%l7 + 0x3F],	%i0
	ble	loop_4803
	stx	%g3,	[%l7 + 0x78]
	alignaddrl	%o5,	%l3,	%o3
	fcmpeq32	%f12,	%f10,	%g7
loop_4803:
	fmovrse	%l2,	%f9,	%f8
	stw	%i3,	[%l7 + 0x60]
	fmovdcc	%xcc,	%f10,	%f12
	add	%l5,	0x039F,	%i7
	fble	%fcc1,	loop_4804
	stx	%l0,	[%l7 + 0x10]
	fornot2	%f0,	%f8,	%f2
	ldd	[%l7 + 0x28],	%f14
loop_4804:
	st	%f0,	[%l7 + 0x0C]
	fxnor	%f12,	%f14,	%f12
	srl	%o2,	0x0A,	%i5
	brgez	%o1,	loop_4805
	fpsub32	%f2,	%f4,	%f0
	fmovde	%xcc,	%f1,	%f14
	lduh	[%l7 + 0x36],	%l4
loop_4805:
	fmovsle	%icc,	%f9,	%f12
	lduh	[%l7 + 0x24],	%l1
	fandnot1s	%f12,	%f1,	%f12
	fone	%f4
	fpmerge	%f11,	%f0,	%f8
	movl	%icc,	%o4,	%l6
	ldsw	[%l7 + 0x20],	%g2
	fcmple16	%f6,	%f0,	%i1
	stw	%i6,	[%l7 + 0x58]
	array32	%o7,	%g4,	%o0
	sth	%g1,	[%l7 + 0x5E]
	fabss	%f0,	%f15
	bpos,a	%icc,	loop_4806
	xnorcc	%i2,	0x0FBD,	%g5
	ld	[%l7 + 0x24],	%f10
	ld	[%l7 + 0x10],	%f0
loop_4806:
	fcmpne32	%f4,	%f8,	%o6
	bn	loop_4807
	tg	%icc,	0x7
	ldsh	[%l7 + 0x50],	%g6
	brlz	%i4,	loop_4808
loop_4807:
	ldsb	[%l7 + 0x74],	%g3
	lduh	[%l7 + 0x0E],	%i0
	bl,pt	%icc,	loop_4809
loop_4808:
	sub	%l3,	0x11D5,	%o3
	fones	%f13
	ldsb	[%l7 + 0x22],	%g7
loop_4809:
	std	%f4,	[%l7 + 0x40]
	bgu	loop_4810
	fmovdcs	%icc,	%f0,	%f1
	fones	%f12
	lduw	[%l7 + 0x30],	%l2
loop_4810:
	bleu,a	loop_4811
	fmovdl	%icc,	%f6,	%f5
	edge32ln	%i3,	%o5,	%l5
	fpackfix	%f10,	%f5
loop_4811:
	lduh	[%l7 + 0x44],	%i7
	fnot1s	%f9,	%f14
	tcs	%xcc,	0x1
	std	%f14,	[%l7 + 0x70]
	srlx	%l0,	0x12,	%o2
	ldsb	[%l7 + 0x58],	%o1
	movle	%icc,	%i5,	%l4
	lduh	[%l7 + 0x56],	%o4
	tne	%xcc,	0x1
	ldub	[%l7 + 0x7F],	%l6
	fbue	%fcc3,	loop_4812
	fxor	%f6,	%f8,	%f4
	fba,a	%fcc1,	loop_4813
	te	%icc,	0x0
loop_4812:
	or	%l1,	0x087F,	%g2
	fornot2s	%f15,	%f6,	%f9
loop_4813:
	or	%i1,	%o7,	%g4
	sth	%o0,	[%l7 + 0x1A]
	popc	0x1490,	%i6
	orn	%i2,	%g5,	%g1
	ldx	[%l7 + 0x40],	%g6
	bneg,a	loop_4814
	bcc	loop_4815
	fmovsvc	%xcc,	%f15,	%f7
	movneg	%icc,	%o6,	%g3
loop_4814:
	ldsh	[%l7 + 0x1C],	%i0
loop_4815:
	ldd	[%l7 + 0x10],	%f8
	ldsb	[%l7 + 0x2B],	%i4
	st	%f12,	[%l7 + 0x28]
	tleu	%icc,	0x2
	edge16l	%o3,	%l3,	%g7
	bne	%icc,	loop_4816
	edge32n	%l2,	%o5,	%l5
	lduh	[%l7 + 0x0C],	%i3
	lduw	[%l7 + 0x50],	%l0
loop_4816:
	bge,pn	%icc,	loop_4817
	ldx	[%l7 + 0x38],	%o2
	fzero	%f12
	nop
	setx loop_4818, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_4817:
	fandnot1s	%f14,	%f3,	%f15
	fmovrde	%i7,	%f6,	%f8
	fbue	%fcc1,	loop_4819
loop_4818:
	fandnot2s	%f15,	%f5,	%f15
	fmul8ulx16	%f12,	%f14,	%f14
	fsrc2s	%f11,	%f2
loop_4819:
	brnz	%o1,	loop_4820
	fone	%f14
	ldub	[%l7 + 0x75],	%i5
	movpos	%icc,	%l4,	%l6
loop_4820:
	fble	%fcc1,	loop_4821
	stx	%l1,	[%l7 + 0x48]
	ld	[%l7 + 0x40],	%f15
	st	%f6,	[%l7 + 0x5C]
loop_4821:
	fmovdn	%icc,	%f1,	%f3
	fbo	%fcc3,	loop_4822
	fmovsl	%xcc,	%f14,	%f8
	sth	%o4,	[%l7 + 0x10]
	stb	%i1,	[%l7 + 0x24]
loop_4822:
	bvs,a,pt	%xcc,	loop_4823
	bne,a,pn	%xcc,	loop_4824
	fmovrsne	%o7,	%f5,	%f12
	smulcc	%g4,	0x1A99,	%o0
loop_4823:
	movgu	%icc,	%i6,	%g2
loop_4824:
	fbule,a	%fcc2,	loop_4825
	lduh	[%l7 + 0x6E],	%g5
	stx	%i2,	[%l7 + 0x30]
	fand	%f0,	%f4,	%f4
loop_4825:
	fmovsle	%xcc,	%f5,	%f0
	fmuld8sux16	%f13,	%f9,	%f2
	fmul8x16al	%f4,	%f12,	%f0
	fmul8sux16	%f4,	%f6,	%f0
	ld	[%l7 + 0x1C],	%f15
	fandnot1s	%f11,	%f12,	%f1
	lduw	[%l7 + 0x24],	%g6
	bshuffle	%f2,	%f6,	%f8
	ldsw	[%l7 + 0x34],	%g1
	stw	%g3,	[%l7 + 0x48]
	fmovsn	%icc,	%f4,	%f7
	ldub	[%l7 + 0x44],	%i0
	tvs	%icc,	0x2
	movleu	%xcc,	%i4,	%o3
	fabsd	%f12,	%f10
	brz,a	%o6,	loop_4826
	fcmped	%fcc1,	%f10,	%f8
	brgez,a	%l3,	loop_4827
	orn	%l2,	0x1191,	%o5
loop_4826:
	fcmpne16	%f0,	%f10,	%g7
	fandnot2s	%f4,	%f9,	%f12
loop_4827:
	stw	%i3,	[%l7 + 0x5C]
	ldd	[%l7 + 0x30],	%f10
	fmovsle	%xcc,	%f10,	%f9
	fmul8x16au	%f9,	%f11,	%f8
	edge32ln	%l5,	%o2,	%l0
	tn	%xcc,	0x2
	fbn	%fcc0,	loop_4828
	stb	%i7,	[%l7 + 0x09]
	ldd	[%l7 + 0x28],	%f14
	fornot2	%f10,	%f14,	%f0
loop_4828:
	fmovdcs	%icc,	%f13,	%f7
	be,a	%xcc,	loop_4829
	addccc	%o1,	%i5,	%l4
	fmovdg	%icc,	%f1,	%f2
	fpack32	%f4,	%f6,	%f10
loop_4829:
	nop
	setx loop_4830, %l0, %l1
	jmpl %l1, %l1
	fnand	%f6,	%f10,	%f2
	tgu	%xcc,	0x6
	fbl	%fcc0,	loop_4831
loop_4830:
	fbne,a	%fcc1,	loop_4832
	be,a,pt	%icc,	loop_4833
	brgez	%o4,	loop_4834
loop_4831:
	ldsb	[%l7 + 0x16],	%i1
loop_4832:
	movneg	%xcc,	%o7,	%g4
loop_4833:
	ldub	[%l7 + 0x20],	%o0
loop_4834:
	fexpand	%f2,	%f6
	lduh	[%l7 + 0x26],	%i6
	bgu	%icc,	loop_4835
	bneg,a	%xcc,	loop_4836
	tpos	%xcc,	0x2
	ldd	[%l7 + 0x38],	%f8
loop_4835:
	fmovspos	%icc,	%f6,	%f10
loop_4836:
	edge32ln	%l6,	%g5,	%g2
	stx	%i2,	[%l7 + 0x30]
	fmovrdlz	%g6,	%f12,	%f14
	bneg,pt	%xcc,	loop_4837
	sll	%g3,	0x19,	%i0
	fblg	%fcc2,	loop_4838
	stx	%i4,	[%l7 + 0x48]
loop_4837:
	popc	0x1C4C,	%g1
	sdivx	%o6,	0x067D,	%l3
loop_4838:
	ldd	[%l7 + 0x28],	%f4
	fmuld8ulx16	%f13,	%f12,	%f0
	edge8n	%o3,	%o5,	%l2
	tleu	%xcc,	0x2
	bvc,a	%icc,	loop_4839
	popc	0x0B4A,	%i3
	lduw	[%l7 + 0x34],	%l5
	ldsw	[%l7 + 0x44],	%o2
loop_4839:
	fbn,a	%fcc0,	loop_4840
	fmovrslz	%g7,	%f14,	%f2
	add	%l0,	0x1A19,	%o1
	fbl,a	%fcc1,	loop_4841
loop_4840:
	bvs,a	%icc,	loop_4842
	ldx	[%l7 + 0x48],	%i7
	ldx	[%l7 + 0x60],	%i5
loop_4841:
	fmovde	%xcc,	%f12,	%f3
loop_4842:
	fmovrde	%l4,	%f6,	%f10
	call	loop_4843
	fmovs	%f14,	%f10
	lduh	[%l7 + 0x1C],	%l1
	ld	[%l7 + 0x10],	%f5
loop_4843:
	fmul8sux16	%f10,	%f2,	%f10
	fandnot1s	%f11,	%f12,	%f15
	stb	%i1,	[%l7 + 0x7D]
	edge8	%o7,	%o4,	%o0
	tle	%icc,	0x6
	fbg	%fcc1,	loop_4844
	movne	%icc,	%i6,	%g4
	fmovdcs	%xcc,	%f10,	%f4
	edge32n	%g5,	%g2,	%l6
loop_4844:
	fcmps	%fcc3,	%f5,	%f0
	addcc	%i2,	%g3,	%g6
	movgu	%xcc,	%i4,	%g1
	fmovrdgez	%o6,	%f14,	%f2
	fmuld8ulx16	%f13,	%f15,	%f4
	ld	[%l7 + 0x0C],	%f1
	fbul,a	%fcc3,	loop_4845
	fmuld8sux16	%f6,	%f10,	%f0
	fcmple32	%f8,	%f0,	%i0
	fxors	%f5,	%f8,	%f0
loop_4845:
	stx	%o3,	[%l7 + 0x10]
	array16	%o5,	%l3,	%l2
	fmovdcs	%xcc,	%f5,	%f7
	st	%f6,	[%l7 + 0x1C]
	ldd	[%l7 + 0x30],	%f2
	fmovse	%xcc,	%f13,	%f8
	fbn	%fcc3,	loop_4846
	fmovdcc	%icc,	%f0,	%f14
	tl	%icc,	0x0
	edge16	%i3,	%l5,	%g7
loop_4846:
	bvc,pn	%icc,	loop_4847
	fmovsn	%xcc,	%f12,	%f10
	fones	%f15
	ldsb	[%l7 + 0x25],	%o2
loop_4847:
	ldsw	[%l7 + 0x58],	%o1
	sdiv	%i7,	0x0B74,	%i5
	fmovrse	%l4,	%f8,	%f10
	fmovrsgz	%l1,	%f6,	%f8
	fornot1s	%f0,	%f8,	%f9
	fmovdgu	%xcc,	%f12,	%f15
	fnegs	%f5,	%f8
	stw	%i1,	[%l7 + 0x2C]
	fmovdneg	%icc,	%f4,	%f6
	fmovdleu	%icc,	%f9,	%f2
	fmuld8sux16	%f14,	%f4,	%f4
	fmovrdlez	%l0,	%f14,	%f10
	movrne	%o7,	0x341,	%o4
	fmovsg	%icc,	%f1,	%f10
	fbe,a	%fcc2,	loop_4848
	fsrc1s	%f9,	%f14
	lduh	[%l7 + 0x4E],	%i6
	tn	%xcc,	0x5
loop_4848:
	ldx	[%l7 + 0x38],	%g4
	fblg,a	%fcc3,	loop_4849
	sllx	%g5,	%o0,	%l6
	umulcc	%g2,	0x1B12,	%g3
	sth	%g6,	[%l7 + 0x62]
loop_4849:
	bg,a	%icc,	loop_4850
	fmovrslz	%i2,	%f9,	%f3
	tvc	%xcc,	0x4
	stw	%i4,	[%l7 + 0x44]
loop_4850:
	lduh	[%l7 + 0x2E],	%g1
	fcmpd	%fcc3,	%f2,	%f4
	subcc	%o6,	%i0,	%o3
	brgz,a	%o5,	loop_4851
	subc	%l3,	0x1824,	%i3
	ldd	[%l7 + 0x20],	%f14
	xnor	%l2,	%g7,	%l5
loop_4851:
	umul	%o2,	0x0F6E,	%o1
	tneg	%icc,	0x0
	ldd	[%l7 + 0x68],	%f0
	ldx	[%l7 + 0x28],	%i5
	ld	[%l7 + 0x48],	%f1
	fsrc2	%f14,	%f12
	edge8l	%i7,	%l4,	%l1
	udiv	%l0,	0x11D6,	%o7
	movrne	%i1,	%o4,	%i6
	stw	%g5,	[%l7 + 0x78]
	brgz	%o0,	loop_4852
	brz	%g4,	loop_4853
	fmovsvc	%xcc,	%f15,	%f11
	array32	%g2,	%g3,	%l6
loop_4852:
	andcc	%i2,	%g6,	%g1
loop_4853:
	xnorcc	%i4,	%i0,	%o3
	fmovscc	%icc,	%f7,	%f4
	array8	%o6,	%l3,	%i3
	fmovse	%xcc,	%f7,	%f2
	fmovrdgez	%o5,	%f8,	%f6
	tl	%xcc,	0x2
	ld	[%l7 + 0x74],	%f14
	sdivx	%l2,	0x003B,	%g7
	fbu,a	%fcc1,	loop_4854
	fmul8sux16	%f6,	%f10,	%f6
	fpadd16s	%f7,	%f9,	%f10
	edge32	%o2,	%l5,	%i5
loop_4854:
	st	%f7,	[%l7 + 0x0C]
	std	%f2,	[%l7 + 0x50]
	ldsh	[%l7 + 0x6C],	%o1
	fornot1	%f0,	%f14,	%f4
	fbne,a	%fcc2,	loop_4855
	fbul	%fcc3,	loop_4856
	fmovrslez	%i7,	%f9,	%f9
	stw	%l4,	[%l7 + 0x44]
loop_4855:
	fcmple16	%f10,	%f6,	%l1
loop_4856:
	tcs	%icc,	0x1
	fmovdge	%xcc,	%f13,	%f2
	andcc	%o7,	0x1D04,	%i1
	movn	%icc,	%l0,	%o4
	smul	%i6,	%g5,	%o0
	movneg	%xcc,	%g4,	%g2
	smul	%l6,	%i2,	%g6
	ldsh	[%l7 + 0x20],	%g1
	movvs	%icc,	%i4,	%i0
	bcs	%icc,	loop_4857
	nop
	setx loop_4858, %l0, %l1
	jmpl %l1, %o3
	fbu,a	%fcc3,	loop_4859
	movrgz	%g3,	0x13C,	%o6
loop_4857:
	faligndata	%f2,	%f8,	%f10
loop_4858:
	fbne	%fcc0,	loop_4860
loop_4859:
	ld	[%l7 + 0x74],	%f9
	movl	%xcc,	%l3,	%i3
	lduh	[%l7 + 0x12],	%l2
loop_4860:
	ldub	[%l7 + 0x19],	%g7
	edge8	%o2,	%l5,	%i5
	lduh	[%l7 + 0x38],	%o5
	tsubcc	%o1,	0x19D6,	%l4
	fcmpd	%fcc0,	%f14,	%f12
	fnand	%f2,	%f2,	%f2
	ldsb	[%l7 + 0x1F],	%l1
	lduw	[%l7 + 0x10],	%i7
	udivx	%o7,	0x1E34,	%l0
	fbu	%fcc1,	loop_4861
	lduh	[%l7 + 0x14],	%i1
	fbue,a	%fcc0,	loop_4862
	fmovdcs	%xcc,	%f9,	%f15
loop_4861:
	fbuge,a	%fcc0,	loop_4863
	ldsb	[%l7 + 0x15],	%i6
loop_4862:
	sllx	%g5,	0x14,	%o4
	fmovrdlez	%o0,	%f10,	%f14
loop_4863:
	ble	loop_4864
	movvc	%xcc,	%g4,	%g2
	ldx	[%l7 + 0x20],	%i2
	stw	%l6,	[%l7 + 0x60]
loop_4864:
	fmovdg	%icc,	%f4,	%f3
	fandnot2	%f0,	%f12,	%f4
	subcc	%g1,	0x1B61,	%i4
	fmovsa	%icc,	%f7,	%f13
	lduh	[%l7 + 0x14],	%g6
	fmovsvc	%icc,	%f3,	%f5
	ldd	[%l7 + 0x18],	%f4
	movvc	%xcc,	%o3,	%i0
	ldsb	[%l7 + 0x4F],	%o6
	movrne	%l3,	%g3,	%i3
	st	%f1,	[%l7 + 0x60]
	ld	[%l7 + 0x48],	%f1
	movcc	%xcc,	%l2,	%g7
	ldsb	[%l7 + 0x2B],	%o2
	fpsub16	%f8,	%f14,	%f0
	fmovsneg	%xcc,	%f1,	%f2
	fmovsa	%xcc,	%f7,	%f9
	fnot2	%f4,	%f6
	fcmpeq16	%f0,	%f8,	%i5
	fzeros	%f10
	fmovrslez	%l5,	%f4,	%f7
	stw	%o5,	[%l7 + 0x34]
	fmovdpos	%xcc,	%f12,	%f12
	lduw	[%l7 + 0x50],	%o1
	fmovsg	%icc,	%f9,	%f1
	tle	%icc,	0x7
	stx	%l4,	[%l7 + 0x40]
	fmovdl	%xcc,	%f8,	%f10
	lduw	[%l7 + 0x24],	%i7
	bpos,a,pn	%icc,	loop_4865
	tcc	%xcc,	0x0
	fmul8x16au	%f0,	%f14,	%f2
	fbne	%fcc2,	loop_4866
loop_4865:
	fmovrslz	%l1,	%f9,	%f13
	fmovrdgez	%l0,	%f10,	%f8
	brz	%i1,	loop_4867
loop_4866:
	tne	%icc,	0x6
	fpadd32s	%f10,	%f10,	%f5
	xor	%o7,	%i6,	%o4
loop_4867:
	addcc	%o0,	0x1FC0,	%g5
	brlz,a	%g4,	loop_4868
	std	%f14,	[%l7 + 0x70]
	tcc	%icc,	0x7
	brgz,a	%g2,	loop_4869
loop_4868:
	fnot1	%f8,	%f10
	fnot1	%f14,	%f12
	fbg	%fcc2,	loop_4870
loop_4869:
	fcmpne32	%f6,	%f6,	%i2
	lduw	[%l7 + 0x70],	%l6
	fbne,a	%fcc3,	loop_4871
loop_4870:
	fmovdl	%xcc,	%f14,	%f15
	fsrc2	%f6,	%f2
	fmovrdgz	%i4,	%f12,	%f6
loop_4871:
	movneg	%xcc,	%g6,	%g1
	fnands	%f7,	%f1,	%f9
	ldsb	[%l7 + 0x5A],	%o3
	fcmpgt16	%f2,	%f4,	%i0
	bvs,pn	%icc,	loop_4872
	fcmps	%fcc1,	%f4,	%f5
	fbg	%fcc0,	loop_4873
	fmovsleu	%xcc,	%f7,	%f14
loop_4872:
	sth	%o6,	[%l7 + 0x2C]
	fmovdn	%xcc,	%f12,	%f3
loop_4873:
	ld	[%l7 + 0x2C],	%f3
	movre	%g3,	0x3DD,	%l3
	umul	%l2,	0x1D8F,	%i3
	ldd	[%l7 + 0x30],	%f4
	edge8	%o2,	%i5,	%g7
	st	%f6,	[%l7 + 0x24]
	ldsb	[%l7 + 0x2D],	%l5
	sth	%o1,	[%l7 + 0x64]
	ldsw	[%l7 + 0x2C],	%l4
	fmovdleu	%xcc,	%f0,	%f2
	fbn	%fcc2,	loop_4874
	sllx	%i7,	0x0C,	%o5
	fbu,a	%fcc1,	loop_4875
	fmovscs	%xcc,	%f5,	%f12
loop_4874:
	tleu	%xcc,	0x3
	stb	%l1,	[%l7 + 0x5B]
loop_4875:
	fcmpes	%fcc0,	%f8,	%f12
	ldsw	[%l7 + 0x38],	%i1
	fmovrsne	%o7,	%f3,	%f0
	tvs	%xcc,	0x6
	sth	%l0,	[%l7 + 0x20]
	ldd	[%l7 + 0x18],	%f0
	ld	[%l7 + 0x48],	%f11
	movre	%i6,	%o0,	%g5
	bcs,pt	%icc,	loop_4876
	movpos	%icc,	%o4,	%g4
	sdivcc	%g2,	0x13C0,	%i2
	fmovdneg	%icc,	%f10,	%f7
loop_4876:
	movcc	%xcc,	%l6,	%i4
	bvc,pn	%icc,	loop_4877
	tge	%icc,	0x0
	fmovsvc	%xcc,	%f7,	%f13
	xnor	%g6,	%g1,	%o3
loop_4877:
	tcc	%icc,	0x4
	edge32l	%i0,	%o6,	%g3
	alignaddrl	%l2,	%l3,	%o2
	std	%f12,	[%l7 + 0x10]
	stx	%i3,	[%l7 + 0x30]
	edge8ln	%g7,	%i5,	%l5
	ldsw	[%l7 + 0x54],	%o1
	ble	%xcc,	loop_4878
	bge,a,pn	%xcc,	loop_4879
	st	%f15,	[%l7 + 0x54]
	fbne	%fcc2,	loop_4880
loop_4878:
	edge8ln	%l4,	%o5,	%i7
loop_4879:
	fcmpgt32	%f6,	%f12,	%l1
	xorcc	%o7,	%l0,	%i6
loop_4880:
	fnot1s	%f0,	%f7
	fnand	%f2,	%f14,	%f6
	alignaddr	%i1,	%o0,	%g5
	tcs	%xcc,	0x2
	ldsb	[%l7 + 0x11],	%o4
	ldx	[%l7 + 0x18],	%g2
	tcc	%xcc,	0x2
	fmovsge	%icc,	%f13,	%f3
	ldsb	[%l7 + 0x33],	%i2
	stb	%g4,	[%l7 + 0x12]
	andn	%i4,	0x0527,	%l6
	tn	%xcc,	0x7
	xorcc	%g6,	%o3,	%g1
	std	%f2,	[%l7 + 0x58]
	fmovsleu	%xcc,	%f7,	%f4
	subcc	%i0,	0x0C1A,	%o6
	fsrc2	%f10,	%f12
	st	%f0,	[%l7 + 0x4C]
	fxor	%f0,	%f12,	%f14
	fcmpeq16	%f4,	%f10,	%l2
	lduh	[%l7 + 0x42],	%g3
	ld	[%l7 + 0x10],	%f15
	ldub	[%l7 + 0x4F],	%l3
	bvs,pn	%icc,	loop_4881
	bl,a	loop_4882
	fmovsn	%icc,	%f0,	%f6
	stb	%o2,	[%l7 + 0x36]
loop_4881:
	bl	%icc,	loop_4883
loop_4882:
	fmovsneg	%xcc,	%f1,	%f5
	fexpand	%f7,	%f4
	fnot1s	%f10,	%f11
loop_4883:
	taddcc	%i3,	0x0C36,	%i5
	ldsh	[%l7 + 0x16],	%g7
	std	%f10,	[%l7 + 0x18]
	fcmple32	%f10,	%f10,	%o1
	fmovdgu	%xcc,	%f5,	%f0
	tvs	%xcc,	0x0
	fbg	%fcc0,	loop_4884
	fmovrdlez	%l4,	%f4,	%f10
	fmul8x16al	%f10,	%f0,	%f12
	movpos	%xcc,	%l5,	%i7
loop_4884:
	movle	%icc,	%l1,	%o5
	bcc,a,pn	%xcc,	loop_4885
	stw	%o7,	[%l7 + 0x50]
	udivx	%i6,	0x06FA,	%i1
	fpmerge	%f11,	%f3,	%f8
loop_4885:
	std	%f2,	[%l7 + 0x58]
	sth	%l0,	[%l7 + 0x32]
	fmovsgu	%xcc,	%f15,	%f9
	subcc	%g5,	%o0,	%o4
	fmovsvc	%xcc,	%f3,	%f14
	ldsw	[%l7 + 0x30],	%i2
	tgu	%xcc,	0x4
	tge	%icc,	0x2
	std	%f12,	[%l7 + 0x48]
	fmovrdgez	%g2,	%f14,	%f12
	stb	%i4,	[%l7 + 0x35]
	fbuge	%fcc0,	loop_4886
	fand	%f0,	%f12,	%f12
	fbuge,a	%fcc1,	loop_4887
	ldsb	[%l7 + 0x7A],	%g4
loop_4886:
	ld	[%l7 + 0x0C],	%f4
	movrgez	%l6,	0x061,	%g6
loop_4887:
	fmovrslz	%g1,	%f4,	%f8
	fcmpne16	%f8,	%f14,	%i0
	fpack32	%f2,	%f10,	%f12
	ba,a,pn	%icc,	loop_4888
	pdist	%f6,	%f2,	%f10
	movrgz	%o3,	0x370,	%l2
	stx	%g3,	[%l7 + 0x70]
loop_4888:
	orn	%o6,	0x11E6,	%l3
	lduw	[%l7 + 0x58],	%o2
	stw	%i3,	[%l7 + 0x38]
	fbg	%fcc1,	loop_4889
	fbn,a	%fcc1,	loop_4890
	sdiv	%i5,	0x0B2F,	%g7
	mova	%xcc,	%o1,	%l5
loop_4889:
	srlx	%l4,	%i7,	%l1
loop_4890:
	udivx	%o7,	0x0487,	%i6
	ldsw	[%l7 + 0x24],	%i1
	std	%f6,	[%l7 + 0x28]
	fands	%f9,	%f7,	%f12
	fmovrslz	%l0,	%f15,	%f3
	fornot2s	%f1,	%f15,	%f14
	stb	%g5,	[%l7 + 0x73]
	fpadd16	%f8,	%f2,	%f6
	stb	%o5,	[%l7 + 0x38]
	fba,a	%fcc0,	loop_4891
	stx	%o4,	[%l7 + 0x78]
	fpsub32s	%f14,	%f8,	%f4
	fands	%f1,	%f3,	%f0
loop_4891:
	stb	%o0,	[%l7 + 0x2E]
	edge8	%i2,	%i4,	%g2
	fmovrslz	%l6,	%f0,	%f2
	nop
	setx loop_4892, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	movle	%xcc,	%g4,	%g6
	fpadd16s	%f5,	%f3,	%f14
	fbue	%fcc1,	loop_4893
loop_4892:
	tle	%xcc,	0x7
	tcc	%xcc,	0x5
	movvs	%icc,	%g1,	%o3
loop_4893:
	ldub	[%l7 + 0x30],	%i0
	ldx	[%l7 + 0x20],	%g3
	fnot1s	%f12,	%f8
	edge8	%l2,	%o6,	%o2
	fcmpes	%fcc3,	%f0,	%f9
	fzero	%f14
	tcs	%xcc,	0x2
	fandnot2	%f14,	%f14,	%f0
	st	%f13,	[%l7 + 0x08]
	pdist	%f10,	%f2,	%f14
	lduh	[%l7 + 0x42],	%l3
	fmovs	%f12,	%f0
	edge16n	%i3,	%g7,	%i5
	smulcc	%o1,	0x048F,	%l5
	brnz,a	%l4,	loop_4894
	ldd	[%l7 + 0x50],	%f0
	bvs,pn	%icc,	loop_4895
	fmovdl	%xcc,	%f15,	%f7
loop_4894:
	fmovscs	%xcc,	%f11,	%f5
	bvs	%icc,	loop_4896
loop_4895:
	brz,a	%i7,	loop_4897
	stx	%l1,	[%l7 + 0x68]
	taddcctv	%o7,	0x0B94,	%i1
loop_4896:
	fmovdcs	%icc,	%f15,	%f11
loop_4897:
	fpadd16	%f8,	%f4,	%f8
	sth	%l0,	[%l7 + 0x72]
	bge	loop_4898
	fpsub32	%f4,	%f6,	%f14
	stw	%g5,	[%l7 + 0x58]
	lduw	[%l7 + 0x0C],	%o5
loop_4898:
	fmovsa	%icc,	%f6,	%f8
	nop
	setx loop_4899, %l0, %l1
	jmpl %l1, %i6
	fcmpes	%fcc1,	%f15,	%f0
	fbg,a	%fcc2,	loop_4900
	fbuge,a	%fcc1,	loop_4901
loop_4899:
	bl,pn	%icc,	loop_4902
	brlz,a	%o4,	loop_4903
loop_4900:
	fpack16	%f6,	%f2
loop_4901:
	lduw	[%l7 + 0x5C],	%o0
loop_4902:
	st	%f12,	[%l7 + 0x2C]
loop_4903:
	fnors	%f5,	%f4,	%f1
	nop
	setx loop_4904, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fbn	%fcc3,	loop_4905
	movcs	%icc,	%i2,	%i4
	edge32n	%l6,	%g4,	%g6
loop_4904:
	siam	0x3
loop_4905:
	fpadd16	%f2,	%f12,	%f12
	ld	[%l7 + 0x70],	%f2
	stx	%g1,	[%l7 + 0x10]
	sth	%g2,	[%l7 + 0x16]
	fcmple32	%f6,	%f4,	%i0
	movne	%icc,	%g3,	%o3
	fmovsgu	%xcc,	%f13,	%f3
	fmovspos	%xcc,	%f13,	%f2
	fpack32	%f10,	%f2,	%f2
	edge16n	%o6,	%l2,	%o2
	ldsb	[%l7 + 0x61],	%l3
	ldsb	[%l7 + 0x4C],	%g7
	fba,a	%fcc0,	loop_4906
	fbo,a	%fcc1,	loop_4907
	fba	%fcc1,	loop_4908
	fzero	%f12
loop_4906:
	movge	%xcc,	%i5,	%o1
loop_4907:
	udivcc	%l5,	0x1F0B,	%l4
loop_4908:
	fpsub16	%f4,	%f0,	%f0
	fmovrde	%i3,	%f10,	%f4
	tgu	%icc,	0x1
	brz,a	%i7,	loop_4909
	ldsw	[%l7 + 0x0C],	%o7
	mulx	%i1,	0x0189,	%l1
	fmovsgu	%xcc,	%f2,	%f9
loop_4909:
	st	%f6,	[%l7 + 0x1C]
	lduh	[%l7 + 0x18],	%l0
	bshuffle	%f2,	%f10,	%f0
	orn	%o5,	0x0B42,	%i6
	movle	%xcc,	%o4,	%g5
	stw	%o0,	[%l7 + 0x60]
	ld	[%l7 + 0x44],	%f14
	fnot1s	%f6,	%f0
	stw	%i4,	[%l7 + 0x44]
	fmovdne	%icc,	%f0,	%f9
	fmovs	%f7,	%f4
	fbo	%fcc0,	loop_4910
	fmovsvs	%icc,	%f9,	%f15
	fmul8x16au	%f5,	%f8,	%f4
	movge	%xcc,	%l6,	%i2
loop_4910:
	movgu	%icc,	%g4,	%g6
	tgu	%icc,	0x7
	stw	%g1,	[%l7 + 0x58]
	tleu	%icc,	0x5
	fpsub16s	%f0,	%f11,	%f0
	ldd	[%l7 + 0x48],	%f0
	edge16n	%i0,	%g2,	%o3
	fmovrdgez	%o6,	%f0,	%f6
	subccc	%l2,	%g3,	%l3
	ta	%icc,	0x7
	ldsh	[%l7 + 0x1E],	%g7
	tneg	%icc,	0x6
	xorcc	%i5,	%o1,	%o2
	fmovdvc	%icc,	%f4,	%f5
	fbe	%fcc0,	loop_4911
	bcs	%xcc,	loop_4912
	fmovdge	%xcc,	%f9,	%f12
	faligndata	%f10,	%f2,	%f14
loop_4911:
	fzeros	%f11
loop_4912:
	stx	%l4,	[%l7 + 0x18]
	fmovs	%f5,	%f11
	nop
	setx loop_4913, %l0, %l1
	jmpl %l1, %i3
	fnand	%f2,	%f0,	%f4
	array16	%l5,	%o7,	%i1
	te	%icc,	0x4
loop_4913:
	fmuld8ulx16	%f3,	%f13,	%f6
	addcc	%l1,	0x16F8,	%i7
	fbne,a	%fcc0,	loop_4914
	fcmpeq32	%f14,	%f2,	%l0
	stw	%i6,	[%l7 + 0x18]
	orcc	%o5,	0x1DD7,	%g5
loop_4914:
	movrgz	%o0,	%i4,	%o4
	ldsh	[%l7 + 0x4E],	%l6
	stx	%g4,	[%l7 + 0x20]
	fnands	%f12,	%f1,	%f9
	ldsb	[%l7 + 0x46],	%i2
	ldsb	[%l7 + 0x5A],	%g1
	movre	%g6,	0x16B,	%i0
	fbe,a	%fcc1,	loop_4915
	fmovdcc	%xcc,	%f6,	%f12
	fcmpeq32	%f12,	%f6,	%g2
	andcc	%o3,	0x0233,	%l2
loop_4915:
	ldx	[%l7 + 0x78],	%o6
	ldx	[%l7 + 0x18],	%l3
	lduw	[%l7 + 0x44],	%g3
	ble	%icc,	loop_4916
	std	%f2,	[%l7 + 0x40]
	fmovrsgez	%g7,	%f3,	%f3
	st	%f13,	[%l7 + 0x1C]
loop_4916:
	ldsh	[%l7 + 0x14],	%o1
	fmovsleu	%icc,	%f12,	%f3
	sth	%o2,	[%l7 + 0x4E]
	ldsh	[%l7 + 0x14],	%l4
	fmovrde	%i3,	%f14,	%f4
	tgu	%xcc,	0x3
	popc	0x06E1,	%l5
	ldsb	[%l7 + 0x48],	%o7
	fmovdn	%xcc,	%f0,	%f6
	bl,a,pn	%xcc,	loop_4917
	tpos	%xcc,	0x6
	fmovdg	%xcc,	%f1,	%f14
	tvs	%xcc,	0x3
loop_4917:
	fornot2	%f0,	%f2,	%f4
	movrne	%i5,	0x06C,	%l1
	bcc,pt	%icc,	loop_4918
	std	%f12,	[%l7 + 0x38]
	sth	%i1,	[%l7 + 0x3C]
	edge8n	%l0,	%i7,	%i6
loop_4918:
	fbg,a	%fcc2,	loop_4919
	tcs	%xcc,	0x0
	tle	%xcc,	0x0
	sub	%o5,	0x0A5F,	%g5
loop_4919:
	lduw	[%l7 + 0x14],	%i4
	lduh	[%l7 + 0x1E],	%o0
	stw	%o4,	[%l7 + 0x74]
	bcs,a,pt	%xcc,	loop_4920
	nop
	setx loop_4921, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	movgu	%icc,	%g4,	%i2
	fandnot2s	%f2,	%f3,	%f7
loop_4920:
	st	%f7,	[%l7 + 0x30]
loop_4921:
	fmovrdne	%g1,	%f14,	%f6
	tvs	%icc,	0x0
	stb	%l6,	[%l7 + 0x37]
	std	%f10,	[%l7 + 0x28]
	bvc	%icc,	loop_4922
	fmul8ulx16	%f0,	%f8,	%f2
	edge8n	%i0,	%g6,	%o3
	fmul8x16au	%f15,	%f0,	%f14
loop_4922:
	ldx	[%l7 + 0x48],	%g2
	fnegs	%f11,	%f7
	std	%f14,	[%l7 + 0x38]
	ld	[%l7 + 0x4C],	%f8
	ldub	[%l7 + 0x33],	%l2
	addc	%l3,	0x15C9,	%o6
	subcc	%g3,	%g7,	%o1
	andncc	%l4,	%o2,	%l5
	fmovsvs	%icc,	%f11,	%f8
	umul	%o7,	%i5,	%i3
	std	%f2,	[%l7 + 0x10]
	bvs,a,pt	%icc,	loop_4923
	fpmerge	%f7,	%f4,	%f12
	fcmpgt16	%f0,	%f8,	%l1
	ldsw	[%l7 + 0x0C],	%i1
loop_4923:
	fmovrdlez	%i7,	%f2,	%f10
	edge16l	%l0,	%i6,	%g5
	stb	%i4,	[%l7 + 0x64]
	std	%f6,	[%l7 + 0x50]
	stb	%o0,	[%l7 + 0x65]
	call	loop_4924
	ldx	[%l7 + 0x38],	%o5
	fcmpd	%fcc2,	%f6,	%f10
	fabsd	%f14,	%f0
loop_4924:
	stx	%o4,	[%l7 + 0x20]
	stx	%g4,	[%l7 + 0x70]
	fbge	%fcc0,	loop_4925
	fnot2s	%f13,	%f5
	fpack32	%f14,	%f8,	%f12
	array16	%i2,	%l6,	%g1
loop_4925:
	sth	%g6,	[%l7 + 0x24]
	ldsb	[%l7 + 0x52],	%o3
	xor	%i0,	%l2,	%g2
	srl	%l3,	%g3,	%g7
	fmovsne	%icc,	%f14,	%f1
	edge16ln	%o1,	%l4,	%o2
	fnand	%f6,	%f8,	%f0
	ldsh	[%l7 + 0x5C],	%l5
	tcs	%icc,	0x0
	ldsb	[%l7 + 0x65],	%o6
	fbn	%fcc1,	loop_4926
	nop
	setx loop_4927, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovsleu	%xcc,	%f7,	%f6
	ld	[%l7 + 0x44],	%f14
loop_4926:
	ldsh	[%l7 + 0x70],	%i5
loop_4927:
	movrgez	%i3,	%l1,	%o7
	ldsw	[%l7 + 0x1C],	%i1
	udivx	%l0,	0x1C21,	%i7
	std	%f10,	[%l7 + 0x08]
	bgu	loop_4928
	stw	%i6,	[%l7 + 0x64]
	smulcc	%g5,	%o0,	%o5
	sdivx	%i4,	0x0B1F,	%g4
loop_4928:
	siam	0x1
	fpadd16s	%f13,	%f14,	%f2
	lduw	[%l7 + 0x7C],	%i2
	movn	%icc,	%l6,	%g1
	fnot2s	%f15,	%f4
	bpos,pt	%icc,	loop_4929
	udivcc	%o4,	0x1ECD,	%o3
	std	%f2,	[%l7 + 0x08]
	fbule	%fcc1,	loop_4930
loop_4929:
	ldx	[%l7 + 0x68],	%i0
	ldub	[%l7 + 0x6C],	%g6
	fmovrslez	%l2,	%f9,	%f2
loop_4930:
	fbo	%fcc3,	loop_4931
	fmul8x16al	%f1,	%f8,	%f4
	fpsub16s	%f0,	%f5,	%f3
	fmovdl	%xcc,	%f14,	%f4
loop_4931:
	fpack32	%f14,	%f14,	%f4
	stw	%l3,	[%l7 + 0x40]
	fba	%fcc2,	loop_4932
	ldsh	[%l7 + 0x32],	%g3
	ldsw	[%l7 + 0x34],	%g2
	fmul8x16al	%f10,	%f1,	%f8
loop_4932:
	xor	%o1,	%g7,	%l4
	bshuffle	%f4,	%f10,	%f4
	fbge	%fcc0,	loop_4933
	stb	%o2,	[%l7 + 0x0F]
	srl	%l5,	%i5,	%o6
	movcc	%xcc,	%l1,	%i3
loop_4933:
	ldd	[%l7 + 0x60],	%f10
	ldsb	[%l7 + 0x13],	%i1
	fcmpeq16	%f2,	%f4,	%o7
	fpack16	%f14,	%f12
	bvc,pt	%icc,	loop_4934
	stb	%l0,	[%l7 + 0x2D]
	andn	%i6,	%i7,	%g5
	fbuge,a	%fcc2,	loop_4935
loop_4934:
	movgu	%icc,	%o5,	%o0
	popc	%g4,	%i2
	edge32l	%i4,	%l6,	%o4
loop_4935:
	edge16n	%o3,	%i0,	%g1
	nop
	setx loop_4936, %l0, %l1
	jmpl %l1, %l2
	movrgz	%l3,	%g6,	%g2
	ble	loop_4937
	lduh	[%l7 + 0x68],	%g3
loop_4936:
	alignaddr	%o1,	%l4,	%o2
	taddcc	%l5,	%g7,	%i5
loop_4937:
	ldub	[%l7 + 0x55],	%l1
	brnz	%i3,	loop_4938
	tn	%icc,	0x5
	ba	%xcc,	loop_4939
	bleu,a	loop_4940
loop_4938:
	srl	%o6,	0x05,	%o7
	edge16n	%i1,	%i6,	%l0
loop_4939:
	std	%f0,	[%l7 + 0x40]
loop_4940:
	ldsb	[%l7 + 0x76],	%g5
	smulcc	%o5,	0x183F,	%i7
	fmovsa	%icc,	%f12,	%f13
	fornot2s	%f13,	%f6,	%f1
	movge	%icc,	%g4,	%o0
	sth	%i4,	[%l7 + 0x16]
	sllx	%l6,	%i2,	%o4
	orncc	%o3,	%g1,	%l2
	fblg	%fcc1,	loop_4941
	fpack16	%f0,	%f7
	bgu,pt	%icc,	loop_4942
	ld	[%l7 + 0x58],	%f4
loop_4941:
	std	%f2,	[%l7 + 0x50]
	fmovsg	%icc,	%f12,	%f13
loop_4942:
	fpadd16	%f12,	%f6,	%f2
	subc	%i0,	0x08BD,	%g6
	edge16l	%g2,	%l3,	%o1
	edge16l	%g3,	%l4,	%o2
	fcmped	%fcc0,	%f10,	%f0
	array8	%g7,	%i5,	%l1
	fnegs	%f5,	%f9
	fbne,a	%fcc1,	loop_4943
	fmuld8sux16	%f11,	%f1,	%f10
	mulx	%l5,	0x0B21,	%i3
	fmovdne	%xcc,	%f0,	%f5
loop_4943:
	fpmerge	%f11,	%f6,	%f8
	fmovde	%xcc,	%f14,	%f8
	bge,a	loop_4944
	ldsh	[%l7 + 0x56],	%o7
	fbne,a	%fcc0,	loop_4945
	lduh	[%l7 + 0x68],	%i1
loop_4944:
	ldub	[%l7 + 0x09],	%i6
	movl	%xcc,	%l0,	%o6
loop_4945:
	tvs	%icc,	0x6
	sllx	%g5,	0x16,	%i7
	udivx	%o5,	0x1EB3,	%g4
	fbl,a	%fcc1,	loop_4946
	te	%icc,	0x7
	movg	%icc,	%o0,	%i4
	andncc	%i2,	%o4,	%l6
loop_4946:
	bcs,pn	%xcc,	loop_4947
	fnors	%f9,	%f13,	%f7
	bn,a,pn	%icc,	loop_4948
	fbo,a	%fcc0,	loop_4949
loop_4947:
	bvc	%icc,	loop_4950
	fbge	%fcc2,	loop_4951
loop_4948:
	subccc	%o3,	0x0DC8,	%g1
loop_4949:
	movrgz	%i0,	0x2FC,	%l2
loop_4950:
	fbule,a	%fcc1,	loop_4952
loop_4951:
	stb	%g6,	[%l7 + 0x25]
	bg	loop_4953
	ldsb	[%l7 + 0x22],	%g2
loop_4952:
	stw	%o1,	[%l7 + 0x1C]
	bl,a,pt	%icc,	loop_4954
loop_4953:
	mulx	%g3,	%l3,	%l4
	brgez,a	%o2,	loop_4955
	bvs,a,pt	%xcc,	loop_4956
loop_4954:
	fnors	%f2,	%f8,	%f12
	udiv	%i5,	0x1F8E,	%l1
loop_4955:
	tle	%xcc,	0x4
loop_4956:
	fpsub32	%f6,	%f8,	%f10
	ldsh	[%l7 + 0x5A],	%g7
	xnor	%l5,	%i3,	%o7
	bpos,a,pt	%xcc,	loop_4957
	fpadd16s	%f11,	%f7,	%f9
	ldsw	[%l7 + 0x7C],	%i6
	movle	%icc,	%i1,	%l0
loop_4957:
	fbe	%fcc1,	loop_4958
	tle	%xcc,	0x4
	ldd	[%l7 + 0x50],	%f4
	sdivcc	%o6,	0x0617,	%g5
loop_4958:
	lduh	[%l7 + 0x12],	%i7
	fpsub32s	%f1,	%f4,	%f3
	fpsub16	%f2,	%f6,	%f2
	fmovsg	%icc,	%f0,	%f7
	ldd	[%l7 + 0x78],	%f6
	ldub	[%l7 + 0x35],	%o5
	brgez,a	%g4,	loop_4959
	bgu,pn	%icc,	loop_4960
	xor	%i4,	0x104F,	%o0
	edge16n	%i2,	%l6,	%o4
loop_4959:
	addc	%o3,	%i0,	%g1
loop_4960:
	fmovsne	%icc,	%f14,	%f8
	nop
	setx loop_4961, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	andncc	%g6,	%g2,	%o1
	mova	%xcc,	%g3,	%l2
	fpsub16s	%f4,	%f6,	%f2
loop_4961:
	ldsw	[%l7 + 0x3C],	%l3
	ldd	[%l7 + 0x58],	%f12
	fbue	%fcc3,	loop_4962
	addccc	%l4,	%i5,	%l1
	ldsb	[%l7 + 0x6A],	%o2
	tleu	%xcc,	0x2
loop_4962:
	ba,pt	%xcc,	loop_4963
	fmovscs	%icc,	%f14,	%f10
	stw	%l5,	[%l7 + 0x7C]
	movn	%xcc,	%i3,	%o7
loop_4963:
	alignaddrl	%g7,	%i1,	%l0
	faligndata	%f0,	%f12,	%f12
	stx	%i6,	[%l7 + 0x70]
	movrlz	%g5,	0x28E,	%i7
	lduw	[%l7 + 0x74],	%o5
	bl,a	%xcc,	loop_4964
	bvc,a,pn	%xcc,	loop_4965
	fsrc1s	%f2,	%f7
	lduh	[%l7 + 0x3E],	%g4
loop_4964:
	ldd	[%l7 + 0x78],	%f4
loop_4965:
	srlx	%i4,	0x00,	%o0
	ldsh	[%l7 + 0x74],	%o6
	fcmpne16	%f0,	%f0,	%i2
	std	%f2,	[%l7 + 0x30]
	and	%o4,	0x17A3,	%l6
	fmul8ulx16	%f2,	%f12,	%f2
	faligndata	%f2,	%f0,	%f8
	movcs	%icc,	%i0,	%g1
	fcmpes	%fcc0,	%f0,	%f3
	ldub	[%l7 + 0x29],	%o3
	fmul8x16au	%f15,	%f4,	%f14
	fmovdne	%xcc,	%f7,	%f12
	pdist	%f0,	%f6,	%f8
	orncc	%g2,	0x1148,	%o1
	fcmpeq32	%f0,	%f6,	%g3
	ldd	[%l7 + 0x78],	%f14
	fbuge	%fcc3,	loop_4966
	fmovrdne	%g6,	%f6,	%f0
	bcc,a	%xcc,	loop_4967
	fones	%f14
loop_4966:
	fornot1	%f2,	%f8,	%f14
	fpack32	%f12,	%f0,	%f8
loop_4967:
	fmovsvs	%icc,	%f9,	%f6
	fzero	%f2
	edge16	%l3,	%l2,	%l4
	std	%f6,	[%l7 + 0x40]
	fornot2	%f8,	%f12,	%f10
	fmovdleu	%icc,	%f4,	%f8
	stw	%l1,	[%l7 + 0x58]
	fmovscc	%xcc,	%f11,	%f13
	fexpand	%f15,	%f6
	sth	%o2,	[%l7 + 0x0C]
	edge16l	%i5,	%l5,	%o7
	fsrc1s	%f12,	%f2
	srl	%g7,	0x06,	%i3
	ldsh	[%l7 + 0x3C],	%l0
	fmovs	%f15,	%f13
	nop
	setx loop_4968, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	movleu	%icc,	%i1,	%i6
	movpos	%icc,	%i7,	%g5
	fxnor	%f8,	%f2,	%f6
loop_4968:
	bl	%xcc,	loop_4969
	std	%f8,	[%l7 + 0x48]
	fmovde	%xcc,	%f7,	%f1
	edge16n	%o5,	%i4,	%g4
loop_4969:
	brgez,a	%o6,	loop_4970
	fmuld8sux16	%f7,	%f9,	%f4
	fnot2	%f4,	%f2
	umul	%i2,	%o0,	%l6
loop_4970:
	bne	%xcc,	loop_4971
	brlz	%i0,	loop_4972
	alignaddrl	%g1,	%o3,	%o4
	tleu	%icc,	0x3
loop_4971:
	xor	%g2,	0x0109,	%o1
loop_4972:
	fnot1s	%f0,	%f5
	stw	%g6,	[%l7 + 0x2C]
	movpos	%icc,	%l3,	%l2
	fnand	%f10,	%f0,	%f6
	stb	%l4,	[%l7 + 0x1A]
	fpsub32s	%f8,	%f1,	%f1
	smulcc	%l1,	0x0FD8,	%g3
	lduw	[%l7 + 0x2C],	%i5
	std	%f10,	[%l7 + 0x18]
	ldsw	[%l7 + 0x34],	%l5
	stx	%o7,	[%l7 + 0x30]
	fpackfix	%f6,	%f6
	fpackfix	%f12,	%f10
	ldsh	[%l7 + 0x24],	%g7
	fmovdcs	%xcc,	%f4,	%f13
	tl	%xcc,	0x0
	fmovdcc	%xcc,	%f11,	%f3
	andcc	%o2,	%l0,	%i3
	fnor	%f8,	%f8,	%f6
	sdivcc	%i1,	0x18F8,	%i7
	fmovdl	%xcc,	%f3,	%f9
	fbule,a	%fcc2,	loop_4973
	fpsub16s	%f8,	%f11,	%f10
	lduh	[%l7 + 0x0C],	%g5
	fmovrdlez	%o5,	%f14,	%f12
loop_4973:
	fmul8x16	%f1,	%f10,	%f12
	call	loop_4974
	sethi	0x05AE,	%i6
	sdivx	%g4,	0x1535,	%i4
	fxnors	%f0,	%f2,	%f13
loop_4974:
	tg	%xcc,	0x7
	movle	%icc,	%o6,	%o0
	fcmpd	%fcc1,	%f10,	%f2
	fcmple16	%f12,	%f2,	%l6
	edge16l	%i0,	%g1,	%o3
	andncc	%i2,	%o4,	%g2
	ldsw	[%l7 + 0x30],	%o1
	fmovde	%xcc,	%f1,	%f13
	ldd	[%l7 + 0x58],	%f14
	ldsh	[%l7 + 0x56],	%g6
	ba,pn	%icc,	loop_4975
	ldsh	[%l7 + 0x5E],	%l2
	movrgz	%l4,	%l1,	%g3
	be,a,pn	%icc,	loop_4976
loop_4975:
	te	%icc,	0x3
	fbo,a	%fcc0,	loop_4977
	fmovdne	%xcc,	%f9,	%f2
loop_4976:
	fpsub32	%f14,	%f10,	%f6
	st	%f10,	[%l7 + 0x4C]
loop_4977:
	edge32ln	%i5,	%l3,	%o7
	ldd	[%l7 + 0x38],	%f12
	srl	%l5,	%o2,	%l0
	addc	%g7,	%i3,	%i7
	movle	%xcc,	%g5,	%o5
	stb	%i6,	[%l7 + 0x4C]
	ldsb	[%l7 + 0x68],	%g4
	sth	%i4,	[%l7 + 0x3E]
	fmovdne	%xcc,	%f13,	%f15
	edge8l	%o6,	%o0,	%l6
	array16	%i0,	%i1,	%g1
	movn	%icc,	%o3,	%o4
	ldx	[%l7 + 0x50],	%g2
	fmovrdlez	%i2,	%f8,	%f0
	fmovse	%xcc,	%f5,	%f12
	tsubcctv	%o1,	0x07E6,	%l2
	movrlez	%g6,	0x30C,	%l1
	fandnot2s	%f6,	%f15,	%f5
	stx	%g3,	[%l7 + 0x48]
	fbe	%fcc0,	loop_4978
	movrne	%i5,	0x3B8,	%l3
	ble,a,pt	%icc,	loop_4979
	sdivcc	%l4,	0x16BB,	%o7
loop_4978:
	fand	%f12,	%f12,	%f6
	edge32n	%o2,	%l0,	%g7
loop_4979:
	addc	%i3,	%l5,	%g5
	udivcc	%o5,	0x0970,	%i6
	fmul8sux16	%f12,	%f2,	%f6
	movrne	%i7,	0x3CF,	%g4
	stb	%i4,	[%l7 + 0x3B]
	nop
	setx loop_4980, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	mulscc	%o6,	0x076D,	%o0
	ldsb	[%l7 + 0x52],	%i0
	stb	%l6,	[%l7 + 0x69]
loop_4980:
	fmovrdgez	%i1,	%f0,	%f8
	fblg	%fcc1,	loop_4981
	ldsh	[%l7 + 0x60],	%g1
	subcc	%o4,	%g2,	%o3
	fbu,a	%fcc2,	loop_4982
loop_4981:
	fmovdl	%icc,	%f15,	%f3
	subcc	%i2,	0x1039,	%l2
	fmovrsgez	%o1,	%f9,	%f8
loop_4982:
	edge16	%g6,	%g3,	%l1
	bvs,a	%icc,	loop_4983
	fones	%f7
	fbo,a	%fcc2,	loop_4984
	ldsw	[%l7 + 0x48],	%i5
loop_4983:
	ld	[%l7 + 0x24],	%f5
	ldsb	[%l7 + 0x42],	%l3
loop_4984:
	fmovrslz	%o7,	%f11,	%f7
	sdivx	%o2,	0x020A,	%l0
	ldub	[%l7 + 0x16],	%l4
	stw	%g7,	[%l7 + 0x38]
	stx	%i3,	[%l7 + 0x70]
	fmovrdgz	%g5,	%f12,	%f6
	ldd	[%l7 + 0x30],	%f6
	sra	%l5,	%i6,	%i7
	srlx	%g4,	0x11,	%o5
	or	%o6,	0x1368,	%i4
	movneg	%icc,	%o0,	%l6
	ld	[%l7 + 0x64],	%f13
	subc	%i0,	0x1E62,	%g1
	umul	%o4,	%i1,	%o3
	fcmpd	%fcc3,	%f12,	%f12
	ld	[%l7 + 0x60],	%f9
	fmovdneg	%icc,	%f10,	%f4
	lduh	[%l7 + 0x4C],	%g2
	fcmped	%fcc1,	%f6,	%f8
	fmovrse	%l2,	%f2,	%f15
	siam	0x4
	tn	%xcc,	0x5
	xnorcc	%i2,	%o1,	%g6
	subcc	%g3,	0x09D0,	%i5
	ldd	[%l7 + 0x08],	%f2
	udivx	%l3,	0x124D,	%o7
	lduh	[%l7 + 0x20],	%o2
	fbo	%fcc1,	loop_4985
	brgez,a	%l0,	loop_4986
	fcmps	%fcc3,	%f6,	%f7
	bcc	loop_4987
loop_4985:
	ld	[%l7 + 0x40],	%f3
loop_4986:
	fmovdle	%xcc,	%f8,	%f0
	fmovsge	%icc,	%f11,	%f2
loop_4987:
	alignaddr	%l4,	%g7,	%l1
	fblg,a	%fcc2,	loop_4988
	array32	%i3,	%l5,	%i6
	fpack16	%f14,	%f14
	edge32n	%i7,	%g4,	%g5
loop_4988:
	movl	%icc,	%o6,	%i4
	ba	loop_4989
	for	%f0,	%f12,	%f14
	sllx	%o5,	%l6,	%i0
	faligndata	%f4,	%f10,	%f6
loop_4989:
	ble,a,pt	%xcc,	loop_4990
	fmul8sux16	%f12,	%f0,	%f0
	brgz,a	%o0,	loop_4991
	ldub	[%l7 + 0x0C],	%o4
loop_4990:
	ldub	[%l7 + 0x2D],	%g1
	bpos,pt	%icc,	loop_4992
loop_4991:
	tneg	%icc,	0x3
	ld	[%l7 + 0x44],	%f13
	fornot2	%f14,	%f12,	%f14
loop_4992:
	or	%o3,	%i1,	%l2
	edge8ln	%g2,	%o1,	%g6
	fnegs	%f6,	%f5
	fbne,a	%fcc1,	loop_4993
	ldsb	[%l7 + 0x2B],	%g3
	ble,a	%xcc,	loop_4994
	std	%f4,	[%l7 + 0x78]
loop_4993:
	ldub	[%l7 + 0x1A],	%i5
	ld	[%l7 + 0x18],	%f3
loop_4994:
	srlx	%i2,	0x0B,	%l3
	fmovsne	%xcc,	%f14,	%f9
	movre	%o2,	0x36C,	%l0
	fnand	%f0,	%f10,	%f6
	movrlez	%l4,	%o7,	%g7
	lduw	[%l7 + 0x68],	%l1
	st	%f11,	[%l7 + 0x34]
	bl,a,pt	%xcc,	loop_4995
	fbge,a	%fcc0,	loop_4996
	bshuffle	%f14,	%f12,	%f6
	movrlez	%l5,	%i3,	%i7
loop_4995:
	tpos	%icc,	0x5
loop_4996:
	array8	%g4,	%i6,	%o6
	edge32ln	%g5,	%i4,	%o5
	mulscc	%l6,	%i0,	%o4
	fabsd	%f12,	%f10
	ldsh	[%l7 + 0x70],	%o0
	fmovrdlz	%g1,	%f8,	%f10
	fpack16	%f6,	%f11
	ldsw	[%l7 + 0x7C],	%i1
	movgu	%xcc,	%o3,	%g2
	fmovrslez	%l2,	%f12,	%f10
	edge32n	%g6,	%g3,	%o1
	mulx	%i2,	0x13A3,	%i5
	ldd	[%l7 + 0x58],	%f2
	movrgz	%l3,	%l0,	%o2
	stx	%o7,	[%l7 + 0x28]
	fmovsgu	%xcc,	%f5,	%f15
	ba,a,pn	%icc,	loop_4997
	fpsub32s	%f4,	%f8,	%f4
	fxors	%f14,	%f5,	%f7
	call	loop_4998
loop_4997:
	tn	%icc,	0x0
	fnands	%f3,	%f0,	%f5
	ldx	[%l7 + 0x20],	%l4
loop_4998:
	tsubcctv	%l1,	%l5,	%i3
	fbule,a	%fcc2,	loop_4999
	fbl	%fcc0,	loop_5000
	fbn,a	%fcc1,	loop_5001
	fmovrslz	%i7,	%f13,	%f4
loop_4999:
	xorcc	%g4,	0x0EC8,	%g7
loop_5000:
	move	%icc,	%i6,	%g5
loop_5001:
	movvs	%icc,	%o6,	%o5
	ldx	[%l7 + 0x50],	%l6
	fbug	%fcc1,	loop_5002
	fnegs	%f9,	%f2
	stx	%i4,	[%l7 + 0x10]
	fmovrslz	%i0,	%f0,	%f7
loop_5002:
	bn	%icc,	loop_5003
	bshuffle	%f0,	%f0,	%f6
	fmovrsgez	%o0,	%f2,	%f9
	ldub	[%l7 + 0x43],	%o4
loop_5003:
	fmovsvs	%icc,	%f4,	%f6
	nop
	setx loop_5004, %l0, %l1
	jmpl %l1, %g1
	fmovrdgz	%i1,	%f8,	%f8
	fpack16	%f12,	%f11
	lduh	[%l7 + 0x5A],	%o3
loop_5004:
	or	%l2,	0x12FE,	%g2
	fbule,a	%fcc0,	loop_5005
	bne,a	%icc,	loop_5006
	stb	%g3,	[%l7 + 0x1D]
	smulcc	%g6,	0x142A,	%i2
loop_5005:
	bl,a,pn	%icc,	loop_5007
loop_5006:
	brnz,a	%i5,	loop_5008
	lduh	[%l7 + 0x08],	%o1
	udivx	%l3,	0x1751,	%l0
loop_5007:
	fbul	%fcc3,	loop_5009
loop_5008:
	ldub	[%l7 + 0x54],	%o7
	tgu	%xcc,	0x2
	tvs	%xcc,	0x4
loop_5009:
	fmovsg	%icc,	%f9,	%f13
	fmovrdlz	%l4,	%f12,	%f8
	lduh	[%l7 + 0x58],	%l1
	fmovsge	%xcc,	%f11,	%f4
	and	%l5,	0x134E,	%o2
	ldub	[%l7 + 0x0B],	%i7
	call	loop_5010
	ldsb	[%l7 + 0x30],	%g4
	ld	[%l7 + 0x4C],	%f9
	std	%f14,	[%l7 + 0x28]
loop_5010:
	fmovse	%icc,	%f9,	%f14
	std	%f8,	[%l7 + 0x18]
	edge16	%i3,	%g7,	%g5
	alignaddrl	%o6,	%o5,	%i6
	ldsh	[%l7 + 0x74],	%i4
	xnor	%l6,	%i0,	%o0
	for	%f8,	%f0,	%f2
	fmovsa	%xcc,	%f6,	%f1
	ldx	[%l7 + 0x60],	%g1
	fxors	%f1,	%f0,	%f3
	fmovdpos	%icc,	%f5,	%f15
	sra	%o4,	0x1D,	%o3
	siam	0x2
	ble,a,pt	%xcc,	loop_5011
	std	%f0,	[%l7 + 0x60]
	ldsw	[%l7 + 0x68],	%i1
	ldsw	[%l7 + 0x7C],	%l2
loop_5011:
	fmovsleu	%icc,	%f8,	%f6
	fnors	%f4,	%f14,	%f3
	fmovrdlez	%g3,	%f2,	%f14
	movrlz	%g6,	0x35D,	%i2
	nop
	setx loop_5012, %l0, %l1
	jmpl %l1, %g2
	ldsw	[%l7 + 0x74],	%o1
	brgez,a	%l3,	loop_5013
	add	%i5,	0x0CA0,	%l0
loop_5012:
	st	%f8,	[%l7 + 0x54]
	std	%f2,	[%l7 + 0x28]
loop_5013:
	lduh	[%l7 + 0x4C],	%o7
	movneg	%xcc,	%l4,	%l5
	ldsh	[%l7 + 0x2C],	%l1
	fexpand	%f1,	%f14
	fcmpgt32	%f12,	%f6,	%o2
	ldx	[%l7 + 0x70],	%g4
	andcc	%i3,	%i7,	%g5
	faligndata	%f8,	%f4,	%f6
	fxor	%f8,	%f6,	%f0
	ldx	[%l7 + 0x20],	%g7
	fba	%fcc3,	loop_5014
	fble	%fcc0,	loop_5015
	fble,a	%fcc1,	loop_5016
	ldd	[%l7 + 0x60],	%f8
loop_5014:
	bgu,a,pt	%xcc,	loop_5017
loop_5015:
	fcmpeq16	%f6,	%f2,	%o6
loop_5016:
	alignaddrl	%o5,	%i6,	%i4
	fmovrsgz	%i0,	%f14,	%f14
loop_5017:
	fmul8x16al	%f14,	%f4,	%f2
	ldub	[%l7 + 0x7B],	%l6
	fmovdg	%xcc,	%f8,	%f12
	movg	%xcc,	%o0,	%g1
	ldub	[%l7 + 0x4F],	%o4
	fandnot2	%f2,	%f6,	%f2
	te	%icc,	0x4
	or	%i1,	%o3,	%g3
	brnz	%l2,	loop_5018
	ldsw	[%l7 + 0x70],	%i2
	stx	%g6,	[%l7 + 0x08]
	std	%f8,	[%l7 + 0x68]
loop_5018:
	fpackfix	%f6,	%f9
	fcmple16	%f12,	%f14,	%g2
	std	%f6,	[%l7 + 0x20]
	fmuld8sux16	%f0,	%f10,	%f10
	fmovsn	%icc,	%f12,	%f6
	fmul8sux16	%f10,	%f12,	%f6
	ldd	[%l7 + 0x10],	%f0
	addccc	%l3,	%i5,	%o1
	fbu,a	%fcc2,	loop_5019
	movleu	%xcc,	%l0,	%l4
	fandnot2s	%f8,	%f1,	%f2
	bn,a	%xcc,	loop_5020
loop_5019:
	tge	%xcc,	0x2
	fmovdvs	%xcc,	%f6,	%f11
	movleu	%xcc,	%o7,	%l1
loop_5020:
	fmovrdlez	%o2,	%f10,	%f8
	fmovrslez	%l5,	%f13,	%f10
	std	%f6,	[%l7 + 0x10]
	tl	%icc,	0x1
	be,a	loop_5021
	tge	%icc,	0x0
	std	%f10,	[%l7 + 0x78]
	ld	[%l7 + 0x58],	%f10
loop_5021:
	fpadd16	%f10,	%f4,	%f6
	ldsh	[%l7 + 0x78],	%i3
	fandnot2s	%f9,	%f1,	%f12
	fmovrdne	%g4,	%f2,	%f8
	fmul8ulx16	%f6,	%f0,	%f14
	ba,pn	%icc,	loop_5022
	fmovse	%icc,	%f3,	%f15
	ldx	[%l7 + 0x60],	%i7
	sdivx	%g5,	0x14D8,	%g7
loop_5022:
	fbu	%fcc2,	loop_5023
	lduh	[%l7 + 0x70],	%o6
	fnegd	%f2,	%f4
	stw	%i6,	[%l7 + 0x28]
loop_5023:
	fabsd	%f0,	%f10
	fmovdleu	%xcc,	%f7,	%f0
	fmovdcs	%icc,	%f0,	%f7
	ldd	[%l7 + 0x18],	%f8
	lduh	[%l7 + 0x70],	%o5
	fnand	%f4,	%f14,	%f12
	fbuge,a	%fcc3,	loop_5024
	ldsb	[%l7 + 0x44],	%i4
	movcs	%xcc,	%l6,	%i0
	fpadd16	%f4,	%f0,	%f0
loop_5024:
	tneg	%xcc,	0x5
	edge32	%g1,	%o4,	%i1
	stw	%o3,	[%l7 + 0x0C]
	edge32l	%o0,	%g3,	%l2
	lduw	[%l7 + 0x7C],	%i2
	tleu	%xcc,	0x4
	fornot2s	%f4,	%f7,	%f12
	fmovrsne	%g6,	%f6,	%f14
	brgz	%l3,	loop_5025
	fnands	%f6,	%f0,	%f0
	fnand	%f10,	%f12,	%f2
	st	%f14,	[%l7 + 0x5C]
loop_5025:
	bcc,a,pt	%icc,	loop_5026
	ld	[%l7 + 0x2C],	%f7
	fpsub32s	%f9,	%f3,	%f8
	fmovrde	%g2,	%f2,	%f14
loop_5026:
	fmovrde	%o1,	%f10,	%f12
	fmovdle	%xcc,	%f14,	%f7
	st	%f15,	[%l7 + 0x3C]
	array8	%i5,	%l0,	%o7
	fornot1s	%f9,	%f1,	%f2
	fsrc1	%f0,	%f6
	stw	%l4,	[%l7 + 0x68]
	array16	%l1,	%o2,	%l5
	xorcc	%i3,	%g4,	%i7
	pdist	%f12,	%f4,	%f10
	fone	%f2
	stw	%g5,	[%l7 + 0x44]
	ldx	[%l7 + 0x60],	%o6
	tsubcctv	%g7,	%o5,	%i6
	udivcc	%i4,	0x0282,	%l6
	fmovdgu	%icc,	%f15,	%f13
	ldd	[%l7 + 0x60],	%f10
	tn	%xcc,	0x4
	movle	%icc,	%g1,	%i0
	udiv	%i1,	0x198C,	%o4
	taddcc	%o0,	0x0CF9,	%o3
	fmovrse	%l2,	%f10,	%f2
	tvc	%xcc,	0x4
	popc	0x0F77,	%g3
	addccc	%g6,	0x0D28,	%l3
	tgu	%xcc,	0x0
	edge16l	%g2,	%o1,	%i2
	and	%i5,	%l0,	%l4
	stw	%l1,	[%l7 + 0x6C]
	fxors	%f11,	%f13,	%f1
	fmovdle	%icc,	%f3,	%f8
	fmovsle	%xcc,	%f12,	%f5
	movne	%icc,	%o7,	%o2
	fmovse	%xcc,	%f13,	%f6
	taddcc	%i3,	0x1881,	%l5
	ta	%icc,	0x2
	fsrc2	%f4,	%f4
	fmuld8ulx16	%f4,	%f2,	%f4
	tle	%icc,	0x6
	fmul8sux16	%f2,	%f8,	%f8
	bleu,a,pn	%icc,	loop_5027
	bneg,a,pn	%icc,	loop_5028
	movg	%icc,	%g4,	%i7
	stw	%g5,	[%l7 + 0x34]
loop_5027:
	bg	%icc,	loop_5029
loop_5028:
	addccc	%o6,	0x1156,	%g7
	ldd	[%l7 + 0x20],	%f4
	fbul,a	%fcc0,	loop_5030
loop_5029:
	ldub	[%l7 + 0x08],	%i6
	fcmpeq16	%f12,	%f10,	%i4
	st	%f15,	[%l7 + 0x3C]
loop_5030:
	ldsw	[%l7 + 0x18],	%o5
	std	%f12,	[%l7 + 0x60]
	fors	%f8,	%f10,	%f5
	fmovrsne	%l6,	%f0,	%f14
	fmul8x16	%f3,	%f0,	%f12
	tpos	%xcc,	0x5
	for	%f0,	%f12,	%f6
	fmovrdlez	%g1,	%f0,	%f6
	st	%f5,	[%l7 + 0x50]
	bge,a,pt	%xcc,	loop_5031
	fmovse	%xcc,	%f2,	%f13
	ldsb	[%l7 + 0x7D],	%i1
	stb	%i0,	[%l7 + 0x36]
loop_5031:
	movpos	%xcc,	%o4,	%o0
	nop
	setx loop_5032, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fabsd	%f8,	%f10
	fandnot1	%f8,	%f8,	%f10
	ldsb	[%l7 + 0x09],	%o3
loop_5032:
	bleu,a	loop_5033
	fcmpne16	%f8,	%f14,	%l2
	fmovdle	%icc,	%f5,	%f12
	lduh	[%l7 + 0x54],	%g6
loop_5033:
	tn	%xcc,	0x2
	tle	%xcc,	0x1
	fmovdge	%xcc,	%f13,	%f14
	edge32	%l3,	%g3,	%g2
	bpos	%icc,	loop_5034
	fbe	%fcc3,	loop_5035
	bcs	loop_5036
	edge8ln	%i2,	%o1,	%i5
loop_5034:
	tgu	%icc,	0x0
loop_5035:
	fmovsl	%icc,	%f12,	%f4
loop_5036:
	ldd	[%l7 + 0x68],	%f12
	fabsd	%f8,	%f6
	ldub	[%l7 + 0x5D],	%l0
	tn	%xcc,	0x4
	movvs	%xcc,	%l4,	%l1
	edge32	%o2,	%i3,	%l5
	ldsh	[%l7 + 0x22],	%g4
	ldd	[%l7 + 0x40],	%f0
	stw	%i7,	[%l7 + 0x18]
	add	%o7,	0x1401,	%g5
	fmovdvs	%xcc,	%f11,	%f1
	sll	%g7,	0x1F,	%o6
	ldd	[%l7 + 0x28],	%f12
	fmovscs	%xcc,	%f10,	%f13
	movcc	%xcc,	%i4,	%i6
	ldx	[%l7 + 0x58],	%o5
	ldsw	[%l7 + 0x58],	%l6
	sdivx	%i1,	0x110A,	%g1
	ldd	[%l7 + 0x10],	%f8
	subc	%o4,	%i0,	%o0
	fandnot2s	%f2,	%f2,	%f7
	fpadd16	%f0,	%f2,	%f14
	fsrc1	%f4,	%f2
	fble,a	%fcc1,	loop_5037
	movrlez	%l2,	0x263,	%g6
	movneg	%icc,	%l3,	%o3
	bl,a	loop_5038
loop_5037:
	fmovsge	%icc,	%f1,	%f4
	fnegs	%f0,	%f11
	lduh	[%l7 + 0x7A],	%g3
loop_5038:
	tg	%icc,	0x4
	andcc	%i2,	%o1,	%i5
	fmovsgu	%icc,	%f12,	%f15
	movrlez	%l0,	0x264,	%l4
	movcc	%xcc,	%g2,	%o2
	sll	%i3,	%l1,	%l5
	fmovscs	%xcc,	%f9,	%f10
	stb	%g4,	[%l7 + 0x61]
	tsubcc	%o7,	%g5,	%i7
	sub	%g7,	0x05E6,	%i4
	sth	%o6,	[%l7 + 0x08]
	fxors	%f4,	%f8,	%f7
	mova	%icc,	%i6,	%o5
	mova	%xcc,	%l6,	%g1
	bcs,a,pt	%icc,	loop_5039
	fbue,a	%fcc0,	loop_5040
	fmovrslz	%i1,	%f1,	%f1
	array32	%i0,	%o4,	%l2
loop_5039:
	lduh	[%l7 + 0x12],	%g6
loop_5040:
	fba,a	%fcc0,	loop_5041
	movleu	%icc,	%o0,	%l3
	movcs	%icc,	%o3,	%g3
	stx	%i2,	[%l7 + 0x40]
loop_5041:
	movvs	%xcc,	%o1,	%l0
	ldx	[%l7 + 0x28],	%l4
	fcmpeq16	%f0,	%f0,	%i5
	fmovrslz	%g2,	%f8,	%f12
	ldd	[%l7 + 0x50],	%f2
	fbne	%fcc0,	loop_5042
	st	%f7,	[%l7 + 0x08]
	fpack16	%f12,	%f1
	movrlez	%o2,	0x31B,	%i3
loop_5042:
	stx	%l5,	[%l7 + 0x58]
	tsubcctv	%g4,	0x084B,	%l1
	xorcc	%o7,	0x105B,	%g5
	udivcc	%g7,	0x19F3,	%i4
	st	%f9,	[%l7 + 0x54]
	fornot2	%f6,	%f6,	%f6
	tpos	%icc,	0x3
	bg,pt	%xcc,	loop_5043
	alignaddr	%i7,	%o6,	%i6
	nop
	setx loop_5044, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	sdivcc	%o5,	0x1D68,	%l6
loop_5043:
	fpsub16	%f6,	%f4,	%f8
	ldx	[%l7 + 0x58],	%i1
loop_5044:
	ldd	[%l7 + 0x68],	%f10
	fzero	%f0
	ldsb	[%l7 + 0x4D],	%g1
	fbul	%fcc0,	loop_5045
	ldd	[%l7 + 0x20],	%f14
	popc	0x1970,	%i0
	andn	%l2,	0x0A38,	%g6
loop_5045:
	fmovd	%f12,	%f8
	udiv	%o4,	0x0D21,	%o0
	fxnors	%f14,	%f3,	%f7
	fmovdvs	%xcc,	%f15,	%f5
	fornot2	%f4,	%f6,	%f0
	ldx	[%l7 + 0x38],	%o3
	tn	%icc,	0x1
	ldx	[%l7 + 0x30],	%l3
	fpsub32	%f8,	%f2,	%f10
	ldsh	[%l7 + 0x4E],	%i2
	tge	%xcc,	0x3
	fcmps	%fcc0,	%f13,	%f12
	fmul8ulx16	%f0,	%f0,	%f8
	bneg,pn	%icc,	loop_5046
	fmovdcc	%icc,	%f8,	%f9
	fmul8x16au	%f10,	%f0,	%f6
	fmul8x16au	%f10,	%f10,	%f0
loop_5046:
	fmovdgu	%icc,	%f10,	%f2
	ldd	[%l7 + 0x20],	%f10
	edge32ln	%o1,	%g3,	%l4
	bge,a,pn	%icc,	loop_5047
	st	%f15,	[%l7 + 0x7C]
	lduw	[%l7 + 0x58],	%i5
	fmovrdne	%g2,	%f10,	%f8
loop_5047:
	fcmped	%fcc2,	%f10,	%f4
	bne	%icc,	loop_5048
	lduh	[%l7 + 0x10],	%l0
	fbule	%fcc3,	loop_5049
	movn	%xcc,	%o2,	%l5
loop_5048:
	ldub	[%l7 + 0x16],	%g4
	lduw	[%l7 + 0x68],	%i3
loop_5049:
	fandnot2s	%f4,	%f11,	%f7
	fnor	%f10,	%f14,	%f2
	movvs	%icc,	%o7,	%g5
	lduh	[%l7 + 0x66],	%g7
	fmovdleu	%icc,	%f2,	%f7
	ldsh	[%l7 + 0x58],	%i4
	edge16	%l1,	%o6,	%i7
	tcc	%icc,	0x1
	stb	%i6,	[%l7 + 0x5C]
	fors	%f14,	%f14,	%f3
	movneg	%icc,	%l6,	%i1
	lduh	[%l7 + 0x42],	%o5
	sdivcc	%g1,	0x096B,	%l2
	popc	0x18A0,	%i0
	fpack32	%f0,	%f6,	%f12
	tn	%xcc,	0x1
	bpos,pn	%icc,	loop_5050
	ldub	[%l7 + 0x3F],	%o4
	tne	%xcc,	0x4
	fornot1	%f14,	%f8,	%f10
loop_5050:
	fmovsge	%icc,	%f5,	%f14
	ta	%xcc,	0x4
	be,pt	%icc,	loop_5051
	fnors	%f13,	%f0,	%f1
	fcmps	%fcc3,	%f12,	%f6
	ble	%icc,	loop_5052
loop_5051:
	sth	%o0,	[%l7 + 0x6C]
	lduh	[%l7 + 0x62],	%o3
	bshuffle	%f12,	%f12,	%f6
loop_5052:
	ldx	[%l7 + 0x78],	%l3
	tvs	%icc,	0x1
	fmovrdgz	%i2,	%f14,	%f2
	movvc	%icc,	%o1,	%g6
	sth	%l4,	[%l7 + 0x34]
	fzero	%f12
	fmovsa	%xcc,	%f2,	%f11
	fmovdle	%xcc,	%f13,	%f12
	fmovdgu	%xcc,	%f14,	%f15
	fmovrdne	%g3,	%f14,	%f6
	tvs	%icc,	0x7
	stb	%g2,	[%l7 + 0x74]
	sdivx	%i5,	0x05DA,	%l0
	edge16n	%l5,	%o2,	%i3
	fmovsle	%xcc,	%f3,	%f2
	ldx	[%l7 + 0x08],	%o7
	fnot1s	%f7,	%f4
	andcc	%g4,	0x1368,	%g7
	tge	%icc,	0x7
	sdivcc	%i4,	0x0CF6,	%g5
	fnegd	%f12,	%f10
	movne	%xcc,	%o6,	%l1
	ldsb	[%l7 + 0x26],	%i7
	ldsb	[%l7 + 0x63],	%l6
	std	%f12,	[%l7 + 0x08]
	tneg	%xcc,	0x4
	xor	%i1,	0x1619,	%i6
	edge8l	%g1,	%o5,	%l2
	fornot1	%f0,	%f14,	%f2
	movrlez	%i0,	%o0,	%o4
	stw	%o3,	[%l7 + 0x30]
	fbl,a	%fcc3,	loop_5053
	fcmpeq32	%f14,	%f10,	%i2
	lduh	[%l7 + 0x1C],	%o1
	subccc	%g6,	%l4,	%g3
loop_5053:
	ldx	[%l7 + 0x70],	%l3
	fmovrdgez	%i5,	%f6,	%f2
	fmovdn	%icc,	%f3,	%f0
	udivx	%g2,	0x03EC,	%l0
	lduw	[%l7 + 0x44],	%o2
	lduh	[%l7 + 0x4C],	%i3
	xorcc	%l5,	%o7,	%g7
	fornot2	%f0,	%f8,	%f14
	movrne	%g4,	%i4,	%g5
	tpos	%xcc,	0x2
	bvc,a	loop_5054
	ldd	[%l7 + 0x10],	%f0
	ldsh	[%l7 + 0x26],	%l1
	fmovrsne	%o6,	%f13,	%f11
loop_5054:
	fmovsge	%icc,	%f8,	%f5
	fmovd	%f10,	%f2
	subcc	%i7,	%i1,	%l6
	ldsb	[%l7 + 0x4E],	%g1
	sth	%o5,	[%l7 + 0x40]
	brlz,a	%l2,	loop_5055
	ldsw	[%l7 + 0x64],	%i6
	orcc	%i0,	0x1A83,	%o0
	edge8	%o3,	%o4,	%o1
loop_5055:
	array16	%g6,	%i2,	%g3
	edge16n	%l4,	%i5,	%g2
	fbe	%fcc1,	loop_5056
	fbul	%fcc2,	loop_5057
	fbo,a	%fcc1,	loop_5058
	sll	%l0,	%o2,	%l3
loop_5056:
	fmul8x16au	%f14,	%f11,	%f2
loop_5057:
	ta	%xcc,	0x2
loop_5058:
	edge8ln	%l5,	%o7,	%g7
	ldd	[%l7 + 0x30],	%f8
	ldsw	[%l7 + 0x34],	%g4
	stb	%i3,	[%l7 + 0x2D]
	edge8	%i4,	%g5,	%o6
	std	%f8,	[%l7 + 0x68]
	bleu,a	%xcc,	loop_5059
	pdist	%f0,	%f12,	%f12
	fand	%f0,	%f4,	%f12
	sth	%l1,	[%l7 + 0x18]
loop_5059:
	std	%f14,	[%l7 + 0x60]
	fmovsneg	%xcc,	%f15,	%f15
	movn	%xcc,	%i1,	%i7
	fbuge,a	%fcc1,	loop_5060
	ldx	[%l7 + 0x78],	%g1
	fmovrsne	%o5,	%f12,	%f3
	lduw	[%l7 + 0x34],	%l2
loop_5060:
	fsrc1s	%f8,	%f2
	xorcc	%l6,	0x0789,	%i0
	std	%f6,	[%l7 + 0x38]
	lduw	[%l7 + 0x20],	%o0
	umulcc	%i6,	0x1848,	%o3
	fmovde	%xcc,	%f0,	%f11
	bgu	loop_5061
	fornot1s	%f13,	%f5,	%f2
	tsubcc	%o1,	%o4,	%i2
	fbu,a	%fcc3,	loop_5062
loop_5061:
	xor	%g3,	0x0634,	%l4
	fmovdl	%xcc,	%f15,	%f8
	fcmpne16	%f6,	%f8,	%i5
loop_5062:
	bgu,pt	%icc,	loop_5063
	fmovdvc	%icc,	%f0,	%f11
	fornot1	%f6,	%f8,	%f12
	stw	%g2,	[%l7 + 0x20]
loop_5063:
	fbule	%fcc1,	loop_5064
	stx	%l0,	[%l7 + 0x40]
	brgz	%o2,	loop_5065
	ldub	[%l7 + 0x52],	%g6
loop_5064:
	subccc	%l5,	0x17F4,	%o7
	movn	%xcc,	%g7,	%l3
loop_5065:
	movcs	%icc,	%g4,	%i3
	fmovdpos	%icc,	%f8,	%f6
	st	%f10,	[%l7 + 0x30]
	orncc	%i4,	%o6,	%l1
	fmovd	%f14,	%f14
	stw	%g5,	[%l7 + 0x6C]
	taddcctv	%i1,	0x0FFB,	%g1
	tvc	%icc,	0x3
	andcc	%o5,	0x155F,	%i7
	fblg,a	%fcc3,	loop_5066
	bl,pn	%xcc,	loop_5067
	edge16ln	%l2,	%l6,	%i0
	movrgez	%i6,	%o3,	%o1
loop_5066:
	addcc	%o4,	%i2,	%g3
loop_5067:
	ldsh	[%l7 + 0x38],	%o0
	sth	%l4,	[%l7 + 0x0C]
	fpadd32	%f2,	%f2,	%f6
	movrgz	%i5,	0x015,	%l0
	stx	%g2,	[%l7 + 0x68]
	array16	%g6,	%l5,	%o7
	fcmple32	%f6,	%f8,	%o2
	fnot2s	%f5,	%f15
	add	%l3,	0x0AAC,	%g7
	fbge	%fcc0,	loop_5068
	brnz,a	%i3,	loop_5069
	fxor	%f0,	%f12,	%f12
	srl	%i4,	0x1A,	%o6
loop_5068:
	ldsw	[%l7 + 0x50],	%g4
loop_5069:
	fmovdvs	%icc,	%f4,	%f1
	movcs	%xcc,	%g5,	%i1
	bge,pn	%xcc,	loop_5070
	brnz	%g1,	loop_5071
	lduw	[%l7 + 0x1C],	%o5
	bcc	loop_5072
loop_5070:
	xnorcc	%i7,	%l2,	%l6
loop_5071:
	fandnot2	%f10,	%f0,	%f8
	fcmpne32	%f2,	%f10,	%i0
loop_5072:
	siam	0x1
	fbg	%fcc2,	loop_5073
	bneg,a	loop_5074
	fbe,a	%fcc1,	loop_5075
	ld	[%l7 + 0x3C],	%f14
loop_5073:
	ldsw	[%l7 + 0x1C],	%i6
loop_5074:
	edge16ln	%l1,	%o1,	%o3
loop_5075:
	fmul8x16au	%f2,	%f3,	%f6
	fmovse	%xcc,	%f8,	%f11
	movvs	%icc,	%i2,	%o4
	sdivx	%g3,	0x0665,	%l4
	ldd	[%l7 + 0x48],	%f14
	fnors	%f12,	%f6,	%f5
	fcmpeq16	%f8,	%f12,	%i5
	edge32	%l0,	%o0,	%g6
	for	%f0,	%f4,	%f8
	lduw	[%l7 + 0x54],	%g2
	ldx	[%l7 + 0x58],	%o7
	bne,a,pn	%icc,	loop_5076
	ldx	[%l7 + 0x08],	%o2
	movleu	%xcc,	%l3,	%l5
	stx	%g7,	[%l7 + 0x18]
loop_5076:
	fbn,a	%fcc0,	loop_5077
	lduw	[%l7 + 0x3C],	%i4
	lduh	[%l7 + 0x26],	%i3
	edge8l	%g4,	%o6,	%i1
loop_5077:
	taddcc	%g5,	0x0576,	%o5
	fpadd16s	%f4,	%f13,	%f13
	ldsw	[%l7 + 0x50],	%g1
	fors	%f13,	%f11,	%f4
	fmovsvc	%xcc,	%f0,	%f10
	stx	%l2,	[%l7 + 0x08]
	fmovsleu	%icc,	%f8,	%f9
	ldsb	[%l7 + 0x62],	%l6
	fnands	%f12,	%f5,	%f2
	nop
	setx loop_5078, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stb	%i7,	[%l7 + 0x7D]
	array8	%i0,	%i6,	%l1
	brnz,a	%o3,	loop_5079
loop_5078:
	nop
	setx loop_5080, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fcmpes	%fcc3,	%f14,	%f10
	lduh	[%l7 + 0x72],	%o1
loop_5079:
	fmovsge	%icc,	%f1,	%f1
loop_5080:
	fmuld8ulx16	%f5,	%f4,	%f4
	ldsb	[%l7 + 0x4F],	%i2
	fcmpd	%fcc3,	%f6,	%f2
	tg	%xcc,	0x5
	ldub	[%l7 + 0x73],	%g3
	lduh	[%l7 + 0x08],	%l4
	andncc	%i5,	%o4,	%l0
	stx	%o0,	[%l7 + 0x10]
	fcmped	%fcc3,	%f2,	%f4
	fmovrsne	%g2,	%f1,	%f11
	movcs	%icc,	%g6,	%o7
	bpos,pn	%xcc,	loop_5081
	fmovdleu	%xcc,	%f13,	%f7
	fpadd16s	%f14,	%f11,	%f9
	udivx	%l3,	0x00BD,	%o2
loop_5081:
	sra	%l5,	%g7,	%i4
	addcc	%i3,	%o6,	%i1
	bge,a	loop_5082
	fmul8x16	%f5,	%f4,	%f6
	fpmerge	%f3,	%f15,	%f0
	fpsub32	%f12,	%f10,	%f2
loop_5082:
	movneg	%xcc,	%g4,	%o5
	fxnors	%f14,	%f12,	%f12
	edge16	%g5,	%g1,	%l6
	brlez	%l2,	loop_5083
	sth	%i7,	[%l7 + 0x4E]
	fmovdleu	%xcc,	%f4,	%f14
	tsubcc	%i0,	%i6,	%l1
loop_5083:
	fmovsl	%xcc,	%f2,	%f15
	bl	loop_5084
	std	%f6,	[%l7 + 0x70]
	sth	%o3,	[%l7 + 0x4C]
	tleu	%icc,	0x5
loop_5084:
	ldx	[%l7 + 0x38],	%o1
	array32	%i2,	%l4,	%g3
	ld	[%l7 + 0x18],	%f12
	mova	%xcc,	%o4,	%l0
	ldsw	[%l7 + 0x5C],	%o0
	udivx	%i5,	0x1DFE,	%g2
	mulscc	%g6,	%l3,	%o7
	movne	%xcc,	%o2,	%l5
	brlz	%i4,	loop_5085
	std	%f8,	[%l7 + 0x50]
	fnot1s	%f13,	%f10
	fmovdg	%xcc,	%f8,	%f15
loop_5085:
	mova	%icc,	%g7,	%i3
	ldsw	[%l7 + 0x58],	%i1
	fmovsge	%icc,	%f15,	%f10
	st	%f0,	[%l7 + 0x0C]
	fsrc1	%f2,	%f2
	fmovrdlez	%g4,	%f10,	%f12
	stb	%o6,	[%l7 + 0x59]
	sth	%g5,	[%l7 + 0x7E]
	fbue,a	%fcc1,	loop_5086
	fpadd32	%f4,	%f8,	%f0
	fnor	%f6,	%f8,	%f8
	ldsb	[%l7 + 0x7A],	%o5
loop_5086:
	ldsw	[%l7 + 0x50],	%l6
	fcmpeq16	%f10,	%f2,	%l2
	bl,a,pt	%xcc,	loop_5087
	brlz	%g1,	loop_5088
	fone	%f8
	edge8ln	%i0,	%i6,	%i7
loop_5087:
	tcs	%icc,	0x1
loop_5088:
	ba,pt	%icc,	loop_5089
	fmovsneg	%xcc,	%f4,	%f4
	ldsb	[%l7 + 0x4A],	%o3
	fmovrde	%l1,	%f14,	%f6
loop_5089:
	fmul8sux16	%f10,	%f10,	%f8
	std	%f2,	[%l7 + 0x78]
	fnands	%f6,	%f10,	%f10
	ldx	[%l7 + 0x20],	%o1
	fcmpgt32	%f12,	%f6,	%i2
	bgu,a,pt	%xcc,	loop_5090
	fnot1s	%f11,	%f14
	fand	%f10,	%f12,	%f0
	st	%f13,	[%l7 + 0x7C]
loop_5090:
	tsubcctv	%g3,	%o4,	%l4
	lduw	[%l7 + 0x78],	%l0
	xnorcc	%o0,	%i5,	%g6
	tpos	%icc,	0x2
	stx	%l3,	[%l7 + 0x60]
	st	%f5,	[%l7 + 0x68]
	ld	[%l7 + 0x30],	%f7
	xnorcc	%o7,	%o2,	%g2
	sth	%l5,	[%l7 + 0x3A]
	movrgez	%i4,	%i3,	%g7
	fcmple32	%f12,	%f14,	%i1
	sth	%g4,	[%l7 + 0x76]
	fpack16	%f8,	%f10
	taddcc	%o6,	%g5,	%l6
	edge32ln	%l2,	%g1,	%i0
	fmovsvs	%xcc,	%f6,	%f7
	fcmpd	%fcc2,	%f4,	%f12
	tvc	%xcc,	0x7
	edge32l	%o5,	%i6,	%i7
	brnz	%o3,	loop_5091
	edge32ln	%l1,	%o1,	%g3
	fmovspos	%xcc,	%f7,	%f10
	st	%f8,	[%l7 + 0x40]
loop_5091:
	fsrc2s	%f13,	%f15
	fmovdgu	%xcc,	%f3,	%f3
	orcc	%o4,	%i2,	%l4
	fpsub32s	%f2,	%f10,	%f0
	fcmpgt16	%f12,	%f10,	%o0
	movgu	%icc,	%i5,	%l0
	lduh	[%l7 + 0x6E],	%g6
	call	loop_5092
	ldsw	[%l7 + 0x20],	%o7
	ldub	[%l7 + 0x6C],	%o2
	nop
	setx loop_5093, %l0, %l1
	jmpl %l1, %l3
loop_5092:
	nop
	setx loop_5094, %l0, %l1
	jmpl %l1, %l5
	movge	%icc,	%g2,	%i4
	bne,a,pn	%xcc,	loop_5095
loop_5093:
	fmovrsne	%g7,	%f8,	%f12
loop_5094:
	fcmpes	%fcc3,	%f8,	%f4
	mulscc	%i1,	0x1227,	%i3
loop_5095:
	ba,pn	%xcc,	loop_5096
	fcmpeq32	%f0,	%f10,	%o6
	tne	%icc,	0x4
	movrlez	%g5,	%l6,	%g4
loop_5096:
	lduw	[%l7 + 0x4C],	%l2
	fandnot2	%f6,	%f2,	%f8
	fandnot1	%f8,	%f14,	%f14
	stw	%i0,	[%l7 + 0x3C]
	fmul8sux16	%f10,	%f14,	%f14
	lduw	[%l7 + 0x50],	%g1
	tcc	%xcc,	0x5
	ldsb	[%l7 + 0x53],	%o5
	stb	%i6,	[%l7 + 0x45]
	call	loop_5097
	ldsb	[%l7 + 0x0B],	%o3
	bvc,a	loop_5098
	array8	%l1,	%o1,	%i7
loop_5097:
	fbule,a	%fcc1,	loop_5099
	ba,a	%xcc,	loop_5100
loop_5098:
	sub	%o4,	%i2,	%l4
	ldub	[%l7 + 0x13],	%g3
loop_5099:
	lduh	[%l7 + 0x46],	%o0
loop_5100:
	fsrc1	%f2,	%f4
	nop
	setx loop_5101, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fbn	%fcc3,	loop_5102
	bg,a,pt	%xcc,	loop_5103
	ldsw	[%l7 + 0x38],	%i5
loop_5101:
	call	loop_5104
loop_5102:
	or	%l0,	%o7,	%g6
loop_5103:
	fmovsle	%xcc,	%f6,	%f12
	edge16l	%l3,	%o2,	%g2
loop_5104:
	fmovde	%icc,	%f12,	%f3
	fmul8sux16	%f6,	%f8,	%f8
	fblg,a	%fcc0,	loop_5105
	tcs	%xcc,	0x0
	fcmpne32	%f14,	%f4,	%l5
	ldsw	[%l7 + 0x70],	%i4
loop_5105:
	movre	%i1,	0x3AB,	%g7
	fnot2	%f14,	%f12
	fabsd	%f0,	%f12
	ldsh	[%l7 + 0x5C],	%i3
	lduw	[%l7 + 0x58],	%o6
	tcc	%icc,	0x0
	fmovrslz	%g5,	%f7,	%f1
	st	%f5,	[%l7 + 0x50]
	tneg	%icc,	0x6
	xnor	%g4,	%l2,	%l6
	srlx	%i0,	0x08,	%g1
	fmovdn	%icc,	%f14,	%f9
	fbg,a	%fcc3,	loop_5106
	fexpand	%f3,	%f2
	fmovdneg	%xcc,	%f11,	%f5
	fmovdle	%icc,	%f1,	%f4
loop_5106:
	ldd	[%l7 + 0x20],	%f10
	fmovsvc	%xcc,	%f7,	%f15
	ldsw	[%l7 + 0x10],	%i6
	lduw	[%l7 + 0x30],	%o3
	ldx	[%l7 + 0x50],	%l1
	movl	%icc,	%o1,	%i7
	ldsh	[%l7 + 0x24],	%o5
	fmovdge	%icc,	%f6,	%f13
	srlx	%i2,	%l4,	%g3
	ldsb	[%l7 + 0x42],	%o0
	lduw	[%l7 + 0x3C],	%i5
	movvc	%icc,	%o4,	%o7
	ldsw	[%l7 + 0x08],	%l0
	tle	%icc,	0x6
	brgez,a	%g6,	loop_5107
	fsrc1s	%f10,	%f6
	sth	%o2,	[%l7 + 0x78]
	stb	%g2,	[%l7 + 0x47]
loop_5107:
	tle	%icc,	0x3
	st	%f15,	[%l7 + 0x5C]
	fmovsge	%xcc,	%f14,	%f2
	array32	%l3,	%i4,	%i1
	ldx	[%l7 + 0x10],	%l5
	ldsb	[%l7 + 0x5B],	%i3
	movre	%o6,	0x235,	%g7
	subccc	%g5,	0x0874,	%l2
	fnor	%f14,	%f8,	%f8
	fnot2	%f0,	%f2
	fmovdleu	%xcc,	%f10,	%f6
	std	%f0,	[%l7 + 0x50]
	sth	%g4,	[%l7 + 0x52]
	ld	[%l7 + 0x1C],	%f11
	te	%icc,	0x1
	brlez	%l6,	loop_5108
	movgu	%icc,	%g1,	%i0
	stx	%o3,	[%l7 + 0x48]
	fpack16	%f12,	%f10
loop_5108:
	fmuld8ulx16	%f15,	%f1,	%f8
	fmovsg	%icc,	%f3,	%f6
	fmovrslez	%l1,	%f4,	%f0
	array16	%i6,	%i7,	%o5
	stw	%o1,	[%l7 + 0x40]
	ldsw	[%l7 + 0x2C],	%l4
	fbl	%fcc1,	loop_5109
	fnot2	%f14,	%f6
	ld	[%l7 + 0x0C],	%f6
	bshuffle	%f8,	%f8,	%f14
loop_5109:
	movleu	%icc,	%g3,	%i2
	tl	%icc,	0x4
	edge32ln	%i5,	%o4,	%o7
	ldub	[%l7 + 0x20],	%l0
	fcmps	%fcc2,	%f3,	%f1
	fpadd16	%f12,	%f4,	%f2
	stw	%o0,	[%l7 + 0x34]
	fmovsgu	%xcc,	%f7,	%f12
	fmovdvs	%icc,	%f9,	%f13
	std	%f12,	[%l7 + 0x28]
	fba	%fcc2,	loop_5110
	bvs,pt	%xcc,	loop_5111
	ldx	[%l7 + 0x08],	%g6
	st	%f0,	[%l7 + 0x4C]
loop_5110:
	fmovdg	%icc,	%f9,	%f5
loop_5111:
	ldd	[%l7 + 0x10],	%f0
	ldsb	[%l7 + 0x3B],	%g2
	movrlz	%o2,	%i4,	%l3
	stb	%i1,	[%l7 + 0x64]
	fzeros	%f9
	fandnot1s	%f14,	%f12,	%f5
	fands	%f2,	%f3,	%f12
	sth	%i3,	[%l7 + 0x38]
	ldub	[%l7 + 0x0D],	%o6
	fornot1	%f2,	%f2,	%f0
	fmovdge	%xcc,	%f9,	%f0
	fbge,a	%fcc1,	loop_5112
	fcmpes	%fcc3,	%f12,	%f9
	stb	%l5,	[%l7 + 0x0F]
	edge32n	%g5,	%g7,	%g4
loop_5112:
	movrlz	%l2,	%l6,	%i0
	std	%f8,	[%l7 + 0x10]
	movgu	%xcc,	%g1,	%l1
	ldsb	[%l7 + 0x27],	%o3
	fcmpgt16	%f10,	%f8,	%i6
	ldx	[%l7 + 0x08],	%i7
	nop
	setx loop_5113, %l0, %l1
	jmpl %l1, %o1
	sra	%o5,	0x1A,	%g3
	tleu	%xcc,	0x4
	fbo	%fcc3,	loop_5114
loop_5113:
	udivcc	%i2,	0x0931,	%i5
	fbul	%fcc1,	loop_5115
	mulscc	%l4,	0x0203,	%o4
loop_5114:
	fmovrdlz	%l0,	%f12,	%f4
	brz	%o0,	loop_5116
loop_5115:
	ldsw	[%l7 + 0x60],	%o7
	fornot1	%f14,	%f12,	%f4
	fands	%f2,	%f9,	%f1
loop_5116:
	fmovdn	%xcc,	%f0,	%f6
	movge	%xcc,	%g6,	%g2
	sth	%i4,	[%l7 + 0x3C]
	ldx	[%l7 + 0x20],	%o2
	siam	0x0
	st	%f11,	[%l7 + 0x14]
	fbl	%fcc0,	loop_5117
	ldsb	[%l7 + 0x25],	%l3
	ldd	[%l7 + 0x60],	%f2
	edge8l	%i3,	%o6,	%l5
loop_5117:
	ldsh	[%l7 + 0x6A],	%i1
	fands	%f12,	%f10,	%f3
	call	loop_5118
	fmovdg	%icc,	%f0,	%f10
	ldd	[%l7 + 0x48],	%f14
	ldsb	[%l7 + 0x52],	%g5
loop_5118:
	stb	%g7,	[%l7 + 0x39]
	xnor	%l2,	0x1BF9,	%g4
	fmovdcs	%xcc,	%f8,	%f3
	taddcctv	%l6,	0x1F97,	%i0
	fand	%f6,	%f4,	%f10
	fand	%f8,	%f8,	%f0
	sllx	%l1,	%g1,	%o3
	ld	[%l7 + 0x74],	%f5
	fabsd	%f4,	%f10
	ldd	[%l7 + 0x50],	%f12
	fbug,a	%fcc2,	loop_5119
	xnorcc	%i6,	0x17F7,	%i7
	stw	%o1,	[%l7 + 0x54]
	fmuld8ulx16	%f11,	%f10,	%f14
loop_5119:
	ldd	[%l7 + 0x30],	%f8
	fmovs	%f6,	%f9
	srax	%o5,	0x0D,	%i2
	fmovrsgz	%i5,	%f1,	%f2
	fmovsa	%icc,	%f0,	%f10
	fmovdn	%xcc,	%f15,	%f1
	sllx	%l4,	%o4,	%l0
	movg	%xcc,	%g3,	%o0
	fmovdle	%xcc,	%f5,	%f1
	stb	%g6,	[%l7 + 0x17]
	stx	%g2,	[%l7 + 0x48]
	fmuld8ulx16	%f1,	%f0,	%f14
	edge32ln	%i4,	%o2,	%l3
	andncc	%i3,	%o7,	%l5
	fones	%f2
	st	%f6,	[%l7 + 0x1C]
	fornot2	%f0,	%f14,	%f0
	bgu,a	loop_5120
	fba	%fcc1,	loop_5121
	bpos,a,pt	%icc,	loop_5122
	ldsb	[%l7 + 0x2E],	%o6
loop_5120:
	nop
	setx loop_5123, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_5121:
	fmovrslz	%i1,	%f3,	%f8
loop_5122:
	fpack16	%f4,	%f15
	ldub	[%l7 + 0x35],	%g7
loop_5123:
	stx	%l2,	[%l7 + 0x40]
	ldub	[%l7 + 0x36],	%g5
	fornot1	%f6,	%f12,	%f4
	st	%f15,	[%l7 + 0x3C]
	movpos	%icc,	%l6,	%g4
	lduw	[%l7 + 0x5C],	%l1
	std	%f2,	[%l7 + 0x38]
	fcmpgt32	%f4,	%f12,	%g1
	fmovde	%xcc,	%f8,	%f4
	fbn,a	%fcc3,	loop_5124
	movle	%icc,	%i0,	%o3
	ldub	[%l7 + 0x16],	%i7
	sdivx	%o1,	0x0341,	%o5
loop_5124:
	ldsh	[%l7 + 0x52],	%i2
	ldsb	[%l7 + 0x3B],	%i5
	movrlz	%l4,	0x000,	%o4
	fcmpne32	%f6,	%f2,	%i6
	sth	%g3,	[%l7 + 0x28]
	brnz	%l0,	loop_5125
	fnegd	%f2,	%f4
	move	%xcc,	%g6,	%g2
	fsrc2s	%f11,	%f2
loop_5125:
	fpadd32	%f14,	%f6,	%f10
	ld	[%l7 + 0x44],	%f5
	bvc,pn	%xcc,	loop_5126
	sll	%i4,	%o0,	%o2
	movrgz	%i3,	%o7,	%l5
	ldsh	[%l7 + 0x38],	%o6
loop_5126:
	movcs	%icc,	%l3,	%g7
	xnor	%i1,	%g5,	%l6
	fxnor	%f10,	%f6,	%f6
	std	%f6,	[%l7 + 0x38]
	addc	%l2,	0x1CA3,	%l1
	movre	%g4,	%g1,	%o3
	movle	%icc,	%i7,	%i0
	bneg,a	%icc,	loop_5127
	fbl,a	%fcc3,	loop_5128
	ldd	[%l7 + 0x60],	%f10
	fmovdleu	%icc,	%f15,	%f10
loop_5127:
	edge8ln	%o1,	%i2,	%o5
loop_5128:
	ldsw	[%l7 + 0x74],	%l4
	stb	%i5,	[%l7 + 0x61]
	fpsub32	%f10,	%f8,	%f4
	ldub	[%l7 + 0x5B],	%o4
	bcs,a,pn	%icc,	loop_5129
	umul	%i6,	%l0,	%g6
	stb	%g3,	[%l7 + 0x2A]
	fmovdvs	%icc,	%f3,	%f4
loop_5129:
	srlx	%i4,	%g2,	%o2
	udivcc	%o0,	0x0D1D,	%o7
	tg	%icc,	0x7
	fcmped	%fcc0,	%f0,	%f8
	fmovd	%f4,	%f14
	array8	%i3,	%o6,	%l3
	addccc	%l5,	%g7,	%i1
	fmovrse	%g5,	%f12,	%f13
	fsrc1	%f0,	%f10
	bneg,a	loop_5130
	stw	%l2,	[%l7 + 0x18]
	fmovsge	%xcc,	%f15,	%f2
	sra	%l1,	0x1A,	%l6
loop_5130:
	movleu	%xcc,	%g1,	%g4
	fors	%f14,	%f10,	%f11
	tpos	%icc,	0x4
	ta	%icc,	0x5
	movvs	%xcc,	%i7,	%o3
	mova	%xcc,	%o1,	%i2
	fcmpes	%fcc1,	%f15,	%f9
	st	%f6,	[%l7 + 0x50]
	or	%i0,	%o5,	%l4
	fsrc2s	%f10,	%f2
	fpsub16s	%f5,	%f10,	%f15
	brgz	%i5,	loop_5131
	ldsb	[%l7 + 0x53],	%i6
	movrne	%l0,	0x061,	%g6
	fmovdpos	%icc,	%f2,	%f2
loop_5131:
	mulx	%g3,	0x0F3B,	%i4
	ldsh	[%l7 + 0x08],	%o4
	edge32l	%g2,	%o0,	%o7
	edge8ln	%o2,	%i3,	%l3
	ldub	[%l7 + 0x44],	%o6
	ldsh	[%l7 + 0x40],	%l5
	fmovdg	%xcc,	%f3,	%f3
	ldd	[%l7 + 0x78],	%f0
	fbule,a	%fcc2,	loop_5132
	fabsd	%f10,	%f12
	ld	[%l7 + 0x50],	%f15
	fmovdl	%xcc,	%f11,	%f9
loop_5132:
	movrlz	%i1,	%g5,	%l2
	bge,a,pt	%icc,	loop_5133
	stx	%g7,	[%l7 + 0x40]
	lduw	[%l7 + 0x0C],	%l6
	ba,pn	%icc,	loop_5134
loop_5133:
	lduw	[%l7 + 0x14],	%l1
	tgu	%icc,	0x1
	call	loop_5135
loop_5134:
	movvs	%icc,	%g1,	%i7
	lduh	[%l7 + 0x16],	%g4
	stx	%o1,	[%l7 + 0x50]
loop_5135:
	ldsb	[%l7 + 0x5E],	%i2
	ldd	[%l7 + 0x68],	%f14
	fcmps	%fcc3,	%f4,	%f12
	udiv	%o3,	0x0785,	%o5
	movleu	%xcc,	%i0,	%l4
	bn	%xcc,	loop_5136
	bleu,a,pt	%xcc,	loop_5137
	edge8n	%i5,	%i6,	%l0
	fornot1	%f10,	%f4,	%f12
loop_5136:
	ldub	[%l7 + 0x0F],	%g3
loop_5137:
	ldub	[%l7 + 0x57],	%g6
	st	%f15,	[%l7 + 0x40]
	stx	%o4,	[%l7 + 0x50]
	ldsw	[%l7 + 0x54],	%i4
	movgu	%xcc,	%g2,	%o0
	call	loop_5138
	ldx	[%l7 + 0x28],	%o7
	edge8n	%o2,	%i3,	%l3
	fmovrdlez	%o6,	%f10,	%f14
loop_5138:
	fbule,a	%fcc0,	loop_5139
	ldx	[%l7 + 0x30],	%l5
	bvs,pt	%xcc,	loop_5140
	fcmpeq16	%f6,	%f10,	%i1
loop_5139:
	stb	%l2,	[%l7 + 0x3A]
	and	%g5,	%g7,	%l6
loop_5140:
	fbule,a	%fcc0,	loop_5141
	mulscc	%l1,	%i7,	%g4
	subc	%o1,	0x15B0,	%i2
	lduh	[%l7 + 0x4E],	%g1
loop_5141:
	fmovrde	%o3,	%f6,	%f4
	fble,a	%fcc1,	loop_5142
	mulscc	%o5,	%i0,	%l4
	tleu	%icc,	0x3
	sub	%i6,	0x0A51,	%l0
loop_5142:
	st	%f0,	[%l7 + 0x3C]
	ble,a	loop_5143
	fmovsge	%xcc,	%f11,	%f9
	fble	%fcc0,	loop_5144
	fmul8x16au	%f6,	%f6,	%f2
loop_5143:
	ldsh	[%l7 + 0x0E],	%i5
	fmovda	%xcc,	%f15,	%f10
loop_5144:
	srax	%g6,	%o4,	%i4
	tne	%xcc,	0x6
	smul	%g3,	0x1DB1,	%g2
	brgz	%o7,	loop_5145
	fxnor	%f0,	%f2,	%f4
	st	%f15,	[%l7 + 0x60]
	tge	%icc,	0x1
loop_5145:
	brlez	%o0,	loop_5146
	movcc	%xcc,	%i3,	%o2
	fpsub32	%f14,	%f14,	%f0
	ldx	[%l7 + 0x08],	%l3
loop_5146:
	xnor	%l5,	0x144A,	%i1
	fmovdneg	%xcc,	%f1,	%f3
	fnot2s	%f11,	%f0
	ldsb	[%l7 + 0x15],	%l2
	popc	%o6,	%g7
	ldsw	[%l7 + 0x08],	%l6
	udivx	%l1,	0x1F1C,	%g5
	fzero	%f10
	ld	[%l7 + 0x60],	%f4
	tvc	%xcc,	0x2
	ldd	[%l7 + 0x40],	%f14
	tcs	%xcc,	0x3
	andcc	%g4,	0x0D26,	%i7
	fble	%fcc1,	loop_5147
	lduh	[%l7 + 0x6A],	%i2
	fmovscs	%xcc,	%f9,	%f5
	fandnot1s	%f2,	%f12,	%f12
loop_5147:
	std	%f2,	[%l7 + 0x08]
	fmovdn	%xcc,	%f3,	%f9
	sth	%o1,	[%l7 + 0x54]
	xor	%g1,	%o5,	%i0
	st	%f15,	[%l7 + 0x50]
	ldd	[%l7 + 0x40],	%f12
	movg	%xcc,	%o3,	%i6
	ldsh	[%l7 + 0x76],	%l0
	lduw	[%l7 + 0x24],	%l4
	fbul,a	%fcc0,	loop_5148
	sth	%g6,	[%l7 + 0x3E]
	lduw	[%l7 + 0x7C],	%i5
	ldub	[%l7 + 0x3B],	%o4
loop_5148:
	ta	%icc,	0x6
	fbne	%fcc1,	loop_5149
	tgu	%xcc,	0x4
	fnot2	%f12,	%f6
	fmovrslz	%i4,	%f2,	%f5
loop_5149:
	fmovd	%f10,	%f14
	bneg,pn	%xcc,	loop_5150
	st	%f14,	[%l7 + 0x40]
	fmovrslez	%g2,	%f10,	%f5
	fmovd	%f12,	%f2
loop_5150:
	fabsd	%f14,	%f12
	siam	0x5
	fmovd	%f4,	%f6
	fnors	%f5,	%f3,	%f1
	array16	%o7,	%g3,	%o0
	fbl,a	%fcc2,	loop_5151
	pdist	%f2,	%f12,	%f0
	array16	%o2,	%i3,	%l3
	addccc	%i1,	0x048B,	%l5
loop_5151:
	tg	%icc,	0x2
	ldx	[%l7 + 0x48],	%o6
	mulx	%g7,	0x1E78,	%l6
	fcmpes	%fcc3,	%f11,	%f8
	fand	%f8,	%f2,	%f2
	alignaddrl	%l1,	%l2,	%g4
	edge32	%i7,	%i2,	%o1
	fmovrdlez	%g5,	%f6,	%f4
	fcmple32	%f4,	%f8,	%o5
	fmovdne	%xcc,	%f15,	%f0
	fnot2s	%f5,	%f12
	fcmpne16	%f6,	%f4,	%g1
	brlez	%o3,	loop_5152
	fands	%f9,	%f13,	%f15
	edge8ln	%i6,	%i0,	%l4
	fmovdcc	%icc,	%f11,	%f14
loop_5152:
	fxnor	%f14,	%f0,	%f0
	udivcc	%l0,	0x0451,	%g6
	stb	%o4,	[%l7 + 0x35]
	movl	%xcc,	%i4,	%g2
	fnot1s	%f11,	%f8
	fmovdcs	%icc,	%f15,	%f15
	fnegd	%f0,	%f10
	fmovrdlez	%i5,	%f0,	%f6
	stx	%g3,	[%l7 + 0x28]
	pdist	%f6,	%f2,	%f12
	array32	%o0,	%o7,	%i3
	sdivx	%l3,	0x1C8E,	%i1
	st	%f7,	[%l7 + 0x0C]
	alignaddr	%o2,	%o6,	%l5
	fbo	%fcc2,	loop_5153
	sth	%g7,	[%l7 + 0x5E]
	bl,a,pn	%icc,	loop_5154
	stw	%l1,	[%l7 + 0x70]
loop_5153:
	ldub	[%l7 + 0x4A],	%l6
	ldx	[%l7 + 0x58],	%l2
loop_5154:
	smul	%g4,	%i7,	%i2
	lduw	[%l7 + 0x40],	%o1
	fbo,a	%fcc2,	loop_5155
	tleu	%xcc,	0x0
	bgu,pt	%xcc,	loop_5156
	addc	%g5,	%g1,	%o5
loop_5155:
	movneg	%icc,	%o3,	%i6
	ldsb	[%l7 + 0x2A],	%i0
loop_5156:
	orn	%l0,	0x12D2,	%l4
	ldsb	[%l7 + 0x3A],	%o4
	fones	%f6
	fmovdleu	%icc,	%f1,	%f0
	ld	[%l7 + 0x38],	%f15
	fmovrdne	%g6,	%f12,	%f6
	movle	%xcc,	%i4,	%i5
	ldd	[%l7 + 0x08],	%f6
	ld	[%l7 + 0x1C],	%f5
	stb	%g3,	[%l7 + 0x0F]
	tcc	%icc,	0x7
	ldsh	[%l7 + 0x4A],	%g2
	orn	%o0,	0x1DC8,	%i3
	pdist	%f6,	%f10,	%f12
	edge32ln	%l3,	%o7,	%i1
	edge32n	%o6,	%o2,	%g7
	nop
	setx loop_5157, %l0, %l1
	jmpl %l1, %l5
	ldsh	[%l7 + 0x78],	%l6
	array8	%l2,	%l1,	%i7
	fmovdcs	%icc,	%f4,	%f7
loop_5157:
	fmovsg	%icc,	%f10,	%f10
	fbg	%fcc2,	loop_5158
	st	%f6,	[%l7 + 0x68]
	edge8l	%g4,	%i2,	%g5
	andncc	%g1,	%o1,	%o3
loop_5158:
	movgu	%xcc,	%i6,	%i0
	ldx	[%l7 + 0x08],	%o5
	sllx	%l4,	0x02,	%o4
	edge16	%l0,	%g6,	%i5
	stb	%g3,	[%l7 + 0x48]
	bshuffle	%f0,	%f6,	%f14
	edge16	%i4,	%g2,	%i3
	fors	%f9,	%f0,	%f11
	fnot2s	%f14,	%f6
	fmovsgu	%icc,	%f12,	%f12
	ldsb	[%l7 + 0x7F],	%o0
	fxor	%f14,	%f10,	%f2
	sub	%l3,	0x0EFE,	%i1
	ld	[%l7 + 0x10],	%f14
	ld	[%l7 + 0x18],	%f3
	brgz	%o6,	loop_5159
	fbuge	%fcc2,	loop_5160
	movge	%xcc,	%o2,	%o7
	nop
	setx loop_5161, %l0, %l1
	jmpl %l1, %l5
loop_5159:
	ble,a	%icc,	loop_5162
loop_5160:
	tsubcctv	%l6,	%g7,	%l2
	fpsub32	%f2,	%f4,	%f6
loop_5161:
	array32	%l1,	%g4,	%i2
loop_5162:
	bleu	%xcc,	loop_5163
	tne	%icc,	0x6
	te	%icc,	0x1
	fmovdcc	%xcc,	%f15,	%f13
loop_5163:
	mova	%icc,	%g5,	%i7
	siam	0x3
	edge32ln	%g1,	%o1,	%i6
	fbl	%fcc0,	loop_5164
	movvc	%icc,	%o3,	%o5
	andncc	%l4,	%o4,	%i0
	taddcctv	%l0,	0x00E3,	%i5
loop_5164:
	ble,pt	%xcc,	loop_5165
	andncc	%g6,	%i4,	%g3
	ld	[%l7 + 0x74],	%f12
	movg	%icc,	%i3,	%g2
loop_5165:
	fabss	%f7,	%f8
	st	%f12,	[%l7 + 0x78]
	tg	%icc,	0x6
	udiv	%o0,	0x0F84,	%l3
	movne	%icc,	%o6,	%i1
	xor	%o2,	0x1628,	%l5
	taddcctv	%l6,	%o7,	%l2
	subcc	%g7,	0x1F9C,	%l1
	movpos	%icc,	%i2,	%g5
	movrgz	%g4,	%i7,	%g1
	stx	%o1,	[%l7 + 0x38]
	fcmpd	%fcc0,	%f12,	%f2
	st	%f2,	[%l7 + 0x24]
	movleu	%icc,	%i6,	%o5
	fmovsvs	%icc,	%f12,	%f8
	movgu	%xcc,	%l4,	%o4
	ldsh	[%l7 + 0x74],	%i0
	andcc	%o3,	%l0,	%g6
	st	%f4,	[%l7 + 0x58]
	fnot2s	%f6,	%f3
	edge16l	%i5,	%i4,	%i3
	stb	%g2,	[%l7 + 0x54]
	edge32ln	%o0,	%g3,	%l3
	fmovse	%xcc,	%f7,	%f7
	sdiv	%i1,	0x0148,	%o2
	alignaddrl	%o6,	%l6,	%l5
	bne,a	loop_5166
	fbue,a	%fcc1,	loop_5167
	ldd	[%l7 + 0x48],	%f8
	ldub	[%l7 + 0x48],	%o7
loop_5166:
	ldx	[%l7 + 0x20],	%g7
loop_5167:
	or	%l1,	0x10B9,	%l2
	fmuld8ulx16	%f14,	%f11,	%f12
	andcc	%i2,	0x07D8,	%g5
	bn,pt	%icc,	loop_5168
	fmovspos	%icc,	%f11,	%f4
	bne	loop_5169
	fxnor	%f8,	%f10,	%f14
loop_5168:
	fmovdvs	%icc,	%f6,	%f11
	sdiv	%g4,	0x1FE5,	%i7
loop_5169:
	stw	%g1,	[%l7 + 0x08]
	fcmpeq16	%f10,	%f2,	%i6
	movle	%icc,	%o5,	%l4
	udivx	%o1,	0x10C6,	%o4
	ldsh	[%l7 + 0x7C],	%i0
	brlz,a	%l0,	loop_5170
	ldub	[%l7 + 0x1D],	%o3
	edge8l	%g6,	%i4,	%i3
	tne	%icc,	0x2
loop_5170:
	taddcc	%i5,	%g2,	%o0
	ld	[%l7 + 0x7C],	%f3
	fmovdne	%xcc,	%f3,	%f11
	ldsw	[%l7 + 0x5C],	%g3
	fxor	%f8,	%f14,	%f4
	fcmple32	%f14,	%f0,	%l3
	bl,a,pt	%icc,	loop_5171
	sth	%i1,	[%l7 + 0x7E]
	call	loop_5172
	fabss	%f3,	%f4
loop_5171:
	xorcc	%o2,	%l6,	%o6
	call	loop_5173
loop_5172:
	fnegs	%f14,	%f8
	lduw	[%l7 + 0x14],	%l5
	xnor	%g7,	%o7,	%l2
loop_5173:
	st	%f4,	[%l7 + 0x60]
	ldub	[%l7 + 0x4A],	%l1
	edge16l	%i2,	%g4,	%g5
	bl,a	loop_5174
	edge8n	%i7,	%g1,	%o5
	fmuld8sux16	%f9,	%f3,	%f2
	fmovrsne	%i6,	%f2,	%f14
loop_5174:
	mulx	%l4,	0x14AF,	%o1
	umulcc	%o4,	%l0,	%i0
	move	%xcc,	%g6,	%o3
	brlez,a	%i4,	loop_5175
	array8	%i5,	%g2,	%i3
	fbn,a	%fcc2,	loop_5176
	stb	%g3,	[%l7 + 0x49]
loop_5175:
	ldsh	[%l7 + 0x6C],	%o0
	fblg,a	%fcc0,	loop_5177
loop_5176:
	movrlez	%i1,	%l3,	%o2
	fble	%fcc2,	loop_5178
	fmovdle	%icc,	%f6,	%f7
loop_5177:
	sdivx	%o6,	0x136F,	%l5
	ba,a,pn	%xcc,	loop_5179
loop_5178:
	fand	%f0,	%f8,	%f4
	lduh	[%l7 + 0x62],	%g7
	xnor	%o7,	%l6,	%l2
loop_5179:
	fpadd32s	%f10,	%f13,	%f12
	std	%f0,	[%l7 + 0x68]
	fmovscs	%xcc,	%f13,	%f6
	sth	%l1,	[%l7 + 0x7A]
	movvs	%icc,	%g4,	%i2
	andcc	%i7,	%g1,	%g5
	fpadd16	%f8,	%f14,	%f12
	bpos,a,pn	%xcc,	loop_5180
	fcmple32	%f2,	%f4,	%i6
	fnot2	%f0,	%f4
	sub	%o5,	%l4,	%o1
loop_5180:
	stx	%l0,	[%l7 + 0x28]
	st	%f10,	[%l7 + 0x24]
	srl	%i0,	0x09,	%g6
	fmovsn	%icc,	%f12,	%f4
	fbge	%fcc3,	loop_5181
	fpadd16s	%f2,	%f12,	%f15
	stw	%o4,	[%l7 + 0x3C]
	fmovrsgez	%i4,	%f2,	%f9
loop_5181:
	sdivx	%i5,	0x1C1D,	%o3
	srlx	%i3,	%g2,	%g3
	fnor	%f14,	%f2,	%f4
	andn	%o0,	%l3,	%i1
	fmovdvs	%icc,	%f4,	%f12
	stb	%o6,	[%l7 + 0x4E]
	fmovrslz	%l5,	%f3,	%f0
	srl	%o2,	0x0F,	%g7
	lduw	[%l7 + 0x38],	%o7
	fzeros	%f12
	mulscc	%l2,	%l6,	%l1
	stw	%i2,	[%l7 + 0x30]
	bg,a,pn	%xcc,	loop_5182
	bpos	%icc,	loop_5183
	fmovsg	%xcc,	%f15,	%f6
	fpackfix	%f14,	%f14
loop_5182:
	ldsh	[%l7 + 0x2A],	%g4
loop_5183:
	subcc	%g1,	%g5,	%i6
	xnorcc	%i7,	0x0172,	%l4
	fmovrdlz	%o5,	%f8,	%f4
	stb	%l0,	[%l7 + 0x14]
	fornot1s	%f4,	%f6,	%f8
	ldsh	[%l7 + 0x6E],	%o1
	taddcc	%g6,	%i0,	%i4
	ldsh	[%l7 + 0x62],	%o4
	ldub	[%l7 + 0x5A],	%o3
	fcmple32	%f4,	%f6,	%i5
	brlz,a	%g2,	loop_5184
	fmovsle	%xcc,	%f1,	%f10
	fornot1s	%f12,	%f1,	%f13
	addc	%g3,	%o0,	%i3
loop_5184:
	array8	%l3,	%i1,	%o6
	st	%f11,	[%l7 + 0x50]
	subccc	%o2,	0x03C1,	%g7
	lduh	[%l7 + 0x1C],	%o7
	lduw	[%l7 + 0x20],	%l5
	lduh	[%l7 + 0x26],	%l6
	tvc	%icc,	0x5
	bvc,a,pt	%icc,	loop_5185
	fandnot1s	%f10,	%f15,	%f2
	fbo	%fcc2,	loop_5186
	fxnors	%f9,	%f14,	%f12
loop_5185:
	fpackfix	%f12,	%f8
	ldsh	[%l7 + 0x3A],	%l1
loop_5186:
	lduw	[%l7 + 0x18],	%i2
	ld	[%l7 + 0x60],	%f12
	edge8	%g4,	%l2,	%g1
	ldsb	[%l7 + 0x44],	%g5
	fmovsgu	%xcc,	%f2,	%f9
	fpack16	%f2,	%f9
	fbul,a	%fcc1,	loop_5187
	srlx	%i7,	%i6,	%o5
	fcmpgt16	%f8,	%f4,	%l0
	fcmpes	%fcc3,	%f1,	%f13
loop_5187:
	st	%f3,	[%l7 + 0x4C]
	tn	%icc,	0x7
	nop
	setx loop_5188, %l0, %l1
	jmpl %l1, %o1
	ldx	[%l7 + 0x58],	%g6
	fandnot1s	%f12,	%f3,	%f14
	st	%f15,	[%l7 + 0x58]
loop_5188:
	stb	%i0,	[%l7 + 0x5E]
	ldsb	[%l7 + 0x32],	%l4
	fcmpne16	%f14,	%f14,	%o4
	lduh	[%l7 + 0x1E],	%o3
	stx	%i4,	[%l7 + 0x18]
	fmovsg	%icc,	%f3,	%f11
	fcmpes	%fcc1,	%f10,	%f6
	movge	%icc,	%g2,	%i5
	fcmpne16	%f4,	%f12,	%g3
	srlx	%o0,	0x12,	%l3
	bl	%xcc,	loop_5189
	std	%f10,	[%l7 + 0x60]
	fnands	%f15,	%f6,	%f10
	ldub	[%l7 + 0x10],	%i1
loop_5189:
	lduw	[%l7 + 0x30],	%o6
	for	%f8,	%f2,	%f8
	ldub	[%l7 + 0x57],	%o2
	fmovrdgez	%i3,	%f6,	%f14
	movrlez	%o7,	0x3AE,	%g7
	fpsub32	%f14,	%f4,	%f12
	movne	%xcc,	%l6,	%l1
	edge32n	%i2,	%g4,	%l5
	fors	%f1,	%f5,	%f6
	fmovrdgez	%l2,	%f14,	%f12
	ldd	[%l7 + 0x58],	%f0
	addccc	%g5,	0x18A2,	%i7
	fpsub32s	%f7,	%f4,	%f1
	brlez,a	%i6,	loop_5190
	faligndata	%f14,	%f8,	%f0
	movg	%xcc,	%o5,	%g1
	tle	%icc,	0x2
loop_5190:
	bvs	%xcc,	loop_5191
	fmul8x16al	%f10,	%f2,	%f2
	for	%f8,	%f2,	%f6
	fmovdcc	%icc,	%f2,	%f10
loop_5191:
	sth	%o1,	[%l7 + 0x5E]
	addccc	%l0,	0x02CF,	%i0
	fxnors	%f2,	%f6,	%f0
	fcmps	%fcc0,	%f3,	%f6
	array32	%g6,	%l4,	%o3
	bcc,pn	%icc,	loop_5192
	bshuffle	%f6,	%f8,	%f14
	ldx	[%l7 + 0x58],	%i4
	tn	%xcc,	0x4
loop_5192:
	ldd	[%l7 + 0x78],	%f2
	std	%f12,	[%l7 + 0x18]
	fnors	%f1,	%f4,	%f13
	tpos	%xcc,	0x4
	fmovdcs	%xcc,	%f1,	%f15
	st	%f11,	[%l7 + 0x6C]
	fpsub32	%f12,	%f6,	%f14
	siam	0x1
	fpadd32s	%f5,	%f5,	%f14
	movg	%xcc,	%o4,	%i5
	alignaddr	%g2,	%o0,	%g3
	fbne,a	%fcc0,	loop_5193
	sdivcc	%i1,	0x0EAE,	%l3
	andncc	%o2,	%o6,	%o7
	stx	%g7,	[%l7 + 0x30]
loop_5193:
	ldsb	[%l7 + 0x09],	%i3
	fmovs	%f9,	%f6
	ldsw	[%l7 + 0x10],	%l6
	ldd	[%l7 + 0x18],	%f14
	tneg	%icc,	0x6
	fmovs	%f11,	%f12
	xnor	%i2,	0x0375,	%l1
	fmovrslez	%l5,	%f6,	%f15
	fbge	%fcc2,	loop_5194
	lduh	[%l7 + 0x16],	%l2
	stb	%g4,	[%l7 + 0x2D]
	stb	%i7,	[%l7 + 0x50]
loop_5194:
	bleu,pn	%xcc,	loop_5195
	sth	%i6,	[%l7 + 0x1C]
	fbne	%fcc0,	loop_5196
	stw	%o5,	[%l7 + 0x28]
loop_5195:
	fmul8x16	%f8,	%f6,	%f2
	brlez,a	%g1,	loop_5197
loop_5196:
	bcs,a	loop_5198
	ldub	[%l7 + 0x37],	%g5
	stw	%o1,	[%l7 + 0x28]
loop_5197:
	fcmpne32	%f2,	%f2,	%i0
loop_5198:
	ldd	[%l7 + 0x58],	%f8
	movvs	%xcc,	%g6,	%l4
	srl	%o3,	%i4,	%o4
	st	%f7,	[%l7 + 0x30]
	movcs	%xcc,	%l0,	%g2
	fble	%fcc3,	loop_5199
	ld	[%l7 + 0x7C],	%f9
	siam	0x5
	ld	[%l7 + 0x3C],	%f3
loop_5199:
	fmul8x16au	%f14,	%f3,	%f8
	ldd	[%l7 + 0x70],	%f8
	sth	%o0,	[%l7 + 0x4C]
	fmul8x16	%f6,	%f2,	%f12
	tsubcc	%g3,	0x0267,	%i5
	fble,a	%fcc2,	loop_5200
	edge32	%l3,	%i1,	%o2
	ld	[%l7 + 0x28],	%f0
	fone	%f10
loop_5200:
	fnor	%f4,	%f4,	%f12
	taddcc	%o6,	0x18B8,	%g7
	xorcc	%i3,	0x1038,	%o7
	brgez	%i2,	loop_5201
	ldx	[%l7 + 0x60],	%l6
	sdivx	%l1,	0x1FEA,	%l5
	std	%f6,	[%l7 + 0x68]
loop_5201:
	fmovdcc	%xcc,	%f8,	%f11
	fmul8ulx16	%f0,	%f10,	%f0
	movre	%l2,	0x1BF,	%i7
	ld	[%l7 + 0x60],	%f6
	fmovse	%xcc,	%f13,	%f7
	stx	%g4,	[%l7 + 0x48]
	fxors	%f3,	%f5,	%f2
	std	%f6,	[%l7 + 0x68]
	movl	%xcc,	%i6,	%g1
	fors	%f0,	%f5,	%f4
	fmovscs	%xcc,	%f9,	%f11
	ldx	[%l7 + 0x58],	%o5
	fbl,a	%fcc0,	loop_5202
	bl,a,pn	%icc,	loop_5203
	fpsub32	%f2,	%f10,	%f12
	fandnot1s	%f11,	%f5,	%f7
loop_5202:
	fbu,a	%fcc2,	loop_5204
loop_5203:
	fand	%f4,	%f14,	%f6
	andn	%g5,	0x13E5,	%o1
	edge32l	%i0,	%l4,	%g6
loop_5204:
	srax	%o3,	%o4,	%i4
	lduh	[%l7 + 0x48],	%l0
	call	loop_5205
	fmul8x16	%f4,	%f0,	%f8
	tneg	%xcc,	0x7
	brz,a	%g2,	loop_5206
loop_5205:
	brlz	%o0,	loop_5207
	std	%f12,	[%l7 + 0x08]
	bge,a	%icc,	loop_5208
loop_5206:
	stb	%g3,	[%l7 + 0x2E]
loop_5207:
	ba	loop_5209
	fmovrsgez	%l3,	%f2,	%f12
loop_5208:
	stw	%i5,	[%l7 + 0x5C]
	edge8l	%o2,	%i1,	%o6
loop_5209:
	movpos	%xcc,	%g7,	%o7
	tleu	%icc,	0x6
	taddcctv	%i3,	%l6,	%l1
	fornot2	%f0,	%f10,	%f12
	edge16l	%l5,	%l2,	%i2
	bl,a	%icc,	loop_5210
	umul	%g4,	%i7,	%i6
	ldx	[%l7 + 0x78],	%o5
	fcmple32	%f4,	%f2,	%g1
loop_5210:
	brgz,a	%o1,	loop_5211
	fmovs	%f9,	%f7
	brnz,a	%i0,	loop_5212
	fmovdcs	%xcc,	%f10,	%f14
loop_5211:
	fpadd16	%f10,	%f4,	%f12
	fpsub16s	%f3,	%f10,	%f2
loop_5212:
	fcmpgt16	%f2,	%f14,	%l4
	orcc	%g5,	0x0EF5,	%g6
	bpos	%icc,	loop_5213
	fornot1s	%f15,	%f7,	%f14
	ldx	[%l7 + 0x40],	%o4
	ldsw	[%l7 + 0x68],	%i4
loop_5213:
	lduh	[%l7 + 0x12],	%l0
	movge	%xcc,	%g2,	%o0
	lduh	[%l7 + 0x68],	%g3
	srax	%o3,	0x05,	%i5
	fmul8x16au	%f7,	%f3,	%f2
	bgu	loop_5214
	st	%f10,	[%l7 + 0x58]
	be,a	%xcc,	loop_5215
	brz	%l3,	loop_5216
loop_5214:
	edge32	%o2,	%i1,	%g7
	fornot2	%f2,	%f2,	%f2
loop_5215:
	ldub	[%l7 + 0x75],	%o7
loop_5216:
	fmul8x16au	%f6,	%f12,	%f12
	fbo,a	%fcc2,	loop_5217
	edge16	%o6,	%i3,	%l6
	edge8	%l5,	%l1,	%i2
	stb	%g4,	[%l7 + 0x61]
loop_5217:
	subccc	%l2,	0x17FD,	%i7
	orncc	%i6,	%o5,	%o1
	ldd	[%l7 + 0x18],	%f6
	stb	%i0,	[%l7 + 0x65]
	ldsh	[%l7 + 0x5C],	%l4
	srlx	%g5,	%g1,	%g6
	fcmpne16	%f0,	%f14,	%i4
	fcmple16	%f12,	%f0,	%o4
	fcmple16	%f0,	%f4,	%g2
	movrlez	%l0,	%g3,	%o3
	fpsub32s	%f12,	%f8,	%f0
	fcmpeq32	%f8,	%f0,	%o0
	andn	%l3,	0x126F,	%o2
	alignaddr	%i5,	%i1,	%o7
	udiv	%o6,	0x0805,	%i3
	fmovdneg	%xcc,	%f8,	%f6
	tleu	%icc,	0x5
	tsubcc	%l6,	0x0BE2,	%l5
	fcmps	%fcc0,	%f7,	%f13
	fzeros	%f8
	pdist	%f12,	%f10,	%f4
	fmovse	%icc,	%f7,	%f13
	xnor	%g7,	%l1,	%g4
	nop
	setx loop_5218, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	stw	%i2,	[%l7 + 0x14]
	sub	%l2,	0x0194,	%i6
	fmul8ulx16	%f8,	%f2,	%f4
loop_5218:
	bne,a,pn	%xcc,	loop_5219
	fbule,a	%fcc3,	loop_5220
	fbuge	%fcc3,	loop_5221
	fmovsleu	%icc,	%f14,	%f0
loop_5219:
	fmovsle	%xcc,	%f7,	%f13
loop_5220:
	fandnot2s	%f0,	%f14,	%f2
loop_5221:
	bcc,a	%xcc,	loop_5222
	fcmple16	%f14,	%f0,	%i7
	fornot1s	%f14,	%f2,	%f14
	or	%o1,	%i0,	%l4
loop_5222:
	lduh	[%l7 + 0x70],	%g5
	stb	%o5,	[%l7 + 0x18]
	tsubcctv	%g1,	0x1B54,	%g6
	lduh	[%l7 + 0x58],	%i4
	stx	%g2,	[%l7 + 0x08]
	ldsh	[%l7 + 0x2C],	%o4
	movre	%l0,	%g3,	%o0
	tsubcc	%l3,	%o2,	%i5
	bg,a	%icc,	loop_5223
	fmovdgu	%xcc,	%f6,	%f12
	fabsd	%f14,	%f6
	st	%f8,	[%l7 + 0x14]
loop_5223:
	ldub	[%l7 + 0x2B],	%i1
	ldub	[%l7 + 0x50],	%o7
	fcmpd	%fcc3,	%f4,	%f8
	fcmpeq16	%f6,	%f14,	%o6
	fnot1s	%f11,	%f12
	te	%xcc,	0x5
	xor	%o3,	0x0B1B,	%i3
	tcc	%xcc,	0x5
	fcmpeq32	%f12,	%f10,	%l5
	lduw	[%l7 + 0x0C],	%l6
	edge8ln	%l1,	%g7,	%i2
	stx	%g4,	[%l7 + 0x78]
	ldx	[%l7 + 0x60],	%l2
	bneg,pt	%xcc,	loop_5224
	tneg	%xcc,	0x0
	fmovsl	%xcc,	%f12,	%f14
	ldd	[%l7 + 0x48],	%f12
loop_5224:
	edge16l	%i6,	%o1,	%i7
	fmovrse	%l4,	%f13,	%f3
	edge32n	%g5,	%o5,	%g1
	fmovdne	%icc,	%f1,	%f1
	movrne	%i0,	0x0D3,	%g6
	ldub	[%l7 + 0x1F],	%i4
	stw	%g2,	[%l7 + 0x1C]
	bpos,a,pt	%xcc,	loop_5225
	fxor	%f2,	%f12,	%f4
	edge8n	%l0,	%o4,	%g3
	bvc,pn	%icc,	loop_5226
loop_5225:
	lduw	[%l7 + 0x48],	%l3
	ld	[%l7 + 0x54],	%f7
	ld	[%l7 + 0x4C],	%f1
loop_5226:
	stx	%o2,	[%l7 + 0x30]
	brgz	%o0,	loop_5227
	lduh	[%l7 + 0x28],	%i1
	stb	%i5,	[%l7 + 0x4C]
	fnands	%f5,	%f3,	%f3
loop_5227:
	fpadd32	%f10,	%f4,	%f4
	fmovdneg	%icc,	%f11,	%f7
	std	%f4,	[%l7 + 0x08]
	st	%f8,	[%l7 + 0x28]
	movcs	%xcc,	%o7,	%o3
	add	%i3,	0x0F0A,	%l5
	bne,pt	%xcc,	loop_5228
	fbule	%fcc3,	loop_5229
	edge16n	%l6,	%o6,	%g7
	stx	%i2,	[%l7 + 0x48]
loop_5228:
	bg,a	%xcc,	loop_5230
loop_5229:
	movneg	%xcc,	%l1,	%l2
	sth	%g4,	[%l7 + 0x6C]
	fmuld8ulx16	%f9,	%f8,	%f6
loop_5230:
	std	%f8,	[%l7 + 0x68]
	ldub	[%l7 + 0x59],	%o1
	ldub	[%l7 + 0x4F],	%i7
	fcmple32	%f8,	%f0,	%i6
	fmovrdlez	%l4,	%f0,	%f4
	sth	%o5,	[%l7 + 0x5E]
	ldx	[%l7 + 0x40],	%g5
	edge32ln	%g1,	%g6,	%i4
	tleu	%xcc,	0x5
	edge16	%g2,	%l0,	%o4
	brgz	%i0,	loop_5231
	subccc	%g3,	0x01A8,	%l3
	ldub	[%l7 + 0x21],	%o0
	fbu,a	%fcc2,	loop_5232
loop_5231:
	popc	0x0523,	%i1
	fbge,a	%fcc3,	loop_5233
	brgez,a	%i5,	loop_5234
loop_5232:
	ld	[%l7 + 0x38],	%f10
	sth	%o2,	[%l7 + 0x0C]
loop_5233:
	andncc	%o7,	%i3,	%o3
loop_5234:
	bge,pt	%icc,	loop_5235
	fpsub32s	%f10,	%f12,	%f8
	bcs	%icc,	loop_5236
	fornot2	%f0,	%f14,	%f10
loop_5235:
	ldsw	[%l7 + 0x08],	%l5
	fornot1	%f6,	%f14,	%f6
loop_5236:
	fmovsne	%xcc,	%f11,	%f6
	movg	%icc,	%o6,	%l6
	ldsb	[%l7 + 0x3B],	%i2
	orn	%l1,	0x1BED,	%g7
	edge8	%l2,	%o1,	%i7
	alignaddr	%i6,	%g4,	%o5
	te	%xcc,	0x3
	tvc	%icc,	0x7
	srl	%g5,	%g1,	%l4
	fmovd	%f4,	%f0
	fbule,a	%fcc2,	loop_5237
	fcmple16	%f12,	%f8,	%i4
	fxnors	%f11,	%f8,	%f1
	movneg	%xcc,	%g6,	%g2
loop_5237:
	fpsub32	%f14,	%f6,	%f2
	mova	%xcc,	%l0,	%o4
	orncc	%i0,	%g3,	%l3
	stx	%o0,	[%l7 + 0x78]
	fpack32	%f2,	%f12,	%f12
	edge32l	%i1,	%i5,	%o2
	ble,pt	%xcc,	loop_5238
	fmovdcs	%icc,	%f7,	%f15
	lduh	[%l7 + 0x5E],	%o7
	sub	%i3,	0x1973,	%l5
loop_5238:
	fones	%f0
	fmul8sux16	%f8,	%f6,	%f12
	bgu,a,pn	%icc,	loop_5239
	fxor	%f12,	%f2,	%f10
	add	%o3,	0x1E7A,	%o6
	smul	%i2,	0x03A6,	%l1
loop_5239:
	edge16	%g7,	%l2,	%o1
	movvc	%xcc,	%l6,	%i7
	edge32l	%i6,	%g4,	%o5
	lduw	[%l7 + 0x68],	%g5
	fmovsleu	%icc,	%f2,	%f11
	mulscc	%l4,	0x063B,	%g1
	fsrc2s	%f12,	%f7
	movre	%g6,	%i4,	%l0
	brlez	%o4,	loop_5240
	fnegs	%f3,	%f15
	edge32l	%g2,	%i0,	%g3
	ldsh	[%l7 + 0x66],	%o0
loop_5240:
	ldsb	[%l7 + 0x3F],	%i1
	sth	%l3,	[%l7 + 0x5E]
	stw	%o2,	[%l7 + 0x34]
	tsubcctv	%i5,	%i3,	%l5
	lduh	[%l7 + 0x2E],	%o3
	te	%xcc,	0x7
	fmovrdgez	%o6,	%f14,	%f12
	tneg	%xcc,	0x0
	move	%xcc,	%i2,	%l1
	fnot1	%f12,	%f4
	fmovsge	%icc,	%f4,	%f15
	ldsb	[%l7 + 0x50],	%o7
	umulcc	%l2,	%o1,	%g7
	fmovdg	%icc,	%f5,	%f11
	bl,pn	%icc,	loop_5241
	std	%f14,	[%l7 + 0x70]
	fmovs	%f5,	%f7
	edge16l	%i7,	%l6,	%g4
loop_5241:
	movvs	%xcc,	%i6,	%o5
	xorcc	%g5,	0x0E7D,	%g1
	stx	%g6,	[%l7 + 0x78]
	fbne	%fcc0,	loop_5242
	movl	%icc,	%l4,	%i4
	tne	%icc,	0x4
	stb	%l0,	[%l7 + 0x75]
loop_5242:
	array32	%g2,	%o4,	%i0
	fmuld8sux16	%f4,	%f3,	%f4
	be	%xcc,	loop_5243
	fandnot1	%f12,	%f14,	%f14
	ldsh	[%l7 + 0x46],	%g3
	fcmpne32	%f2,	%f12,	%o0
loop_5243:
	brlez	%i1,	loop_5244
	fmovdvc	%icc,	%f1,	%f0
	edge16l	%l3,	%o2,	%i5
	lduw	[%l7 + 0x78],	%i3
loop_5244:
	tneg	%icc,	0x4
	movvc	%xcc,	%o3,	%l5
	fpsub32s	%f5,	%f7,	%f15
	stw	%i2,	[%l7 + 0x74]
	fxnors	%f3,	%f14,	%f14
	fbuge,a	%fcc1,	loop_5245
	movrlez	%o6,	0x2AB,	%l1
	movn	%xcc,	%l2,	%o7
	mulscc	%o1,	%g7,	%l6
loop_5245:
	fpack16	%f8,	%f3
	fcmpgt16	%f2,	%f4,	%g4
	fmuld8ulx16	%f11,	%f5,	%f6
	st	%f5,	[%l7 + 0x34]
	fbe	%fcc1,	loop_5246
	ldsh	[%l7 + 0x36],	%i7
	ldsb	[%l7 + 0x5E],	%i6
	fmovsg	%icc,	%f3,	%f7
loop_5246:
	fandnot1	%f6,	%f6,	%f14
	fpsub16s	%f15,	%f4,	%f14
	fmovsn	%icc,	%f13,	%f0
	ld	[%l7 + 0x38],	%f11
	fbug,a	%fcc1,	loop_5247
	sth	%g5,	[%l7 + 0x64]
	bneg,pt	%xcc,	loop_5248
	stx	%g1,	[%l7 + 0x60]
loop_5247:
	ble,pn	%icc,	loop_5249
	ldsw	[%l7 + 0x7C],	%o5
loop_5248:
	fmovsne	%xcc,	%f5,	%f12
	sll	%l4,	%i4,	%g6
loop_5249:
	stb	%g2,	[%l7 + 0x7C]
	fones	%f10
	fbue,a	%fcc1,	loop_5250
	movne	%xcc,	%o4,	%i0
	tleu	%icc,	0x4
	fcmpeq32	%f8,	%f2,	%g3
loop_5250:
	stw	%o0,	[%l7 + 0x68]
	movleu	%xcc,	%i1,	%l3
	fbu	%fcc0,	loop_5251
	fmovsvs	%icc,	%f10,	%f2
	taddcctv	%o2,	0x00CA,	%l0
	fmul8ulx16	%f12,	%f6,	%f6
loop_5251:
	movrlz	%i5,	%o3,	%i3
	ldx	[%l7 + 0x78],	%i2
	udiv	%l5,	0x1D12,	%l1
	ldd	[%l7 + 0x78],	%f6
	umul	%o6,	0x0467,	%o7
	fmovscs	%icc,	%f6,	%f4
	xorcc	%l2,	0x14F3,	%g7
	array8	%l6,	%o1,	%g4
	fmovdg	%xcc,	%f9,	%f12
	tl	%xcc,	0x5
	fmovrsne	%i7,	%f6,	%f7
	edge16l	%g5,	%g1,	%o5
	ldd	[%l7 + 0x30],	%f6
	alignaddrl	%l4,	%i6,	%i4
	ld	[%l7 + 0x28],	%f12
	sth	%g6,	[%l7 + 0x44]
	tl	%xcc,	0x2
	taddcctv	%o4,	0x0EC6,	%g2
	fmovrde	%g3,	%f0,	%f2
	sllx	%o0,	0x07,	%i0
	st	%f5,	[%l7 + 0x24]
	sll	%l3,	%o2,	%l0
	fmovrsgez	%i1,	%f13,	%f5
	ldsw	[%l7 + 0x70],	%i5
	fmovscc	%xcc,	%f3,	%f10
	bcc	%icc,	loop_5252
	bg,pt	%icc,	loop_5253
	stx	%o3,	[%l7 + 0x38]
	bl,a,pt	%icc,	loop_5254
loop_5252:
	st	%f6,	[%l7 + 0x64]
loop_5253:
	stx	%i3,	[%l7 + 0x08]
	subcc	%l5,	0x028F,	%i2
loop_5254:
	stb	%o6,	[%l7 + 0x42]
	ldd	[%l7 + 0x08],	%f6
	stb	%o7,	[%l7 + 0x13]
	move	%icc,	%l2,	%l1
	fcmpne16	%f10,	%f12,	%l6
	tge	%xcc,	0x5
	std	%f14,	[%l7 + 0x58]
	ldx	[%l7 + 0x38],	%g7
	ldsh	[%l7 + 0x34],	%o1
	edge8l	%g4,	%i7,	%g5
	fblg,a	%fcc1,	loop_5255
	std	%f0,	[%l7 + 0x68]
	stw	%o5,	[%l7 + 0x1C]
	nop
	setx loop_5256, %l0, %l1
	jmpl %l1, %g1
loop_5255:
	fnegd	%f10,	%f2
	std	%f10,	[%l7 + 0x70]
	fsrc1s	%f7,	%f6
loop_5256:
	movrlez	%l4,	%i6,	%i4
	fmovd	%f2,	%f14
	ldsb	[%l7 + 0x10],	%g6
	fand	%f2,	%f0,	%f10
	sth	%g2,	[%l7 + 0x60]
	fmovrde	%g3,	%f4,	%f12
	tcc	%xcc,	0x3
	tn	%xcc,	0x2
	fands	%f3,	%f12,	%f10
	addc	%o0,	%o4,	%l3
	nop
	setx loop_5257, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ld	[%l7 + 0x74],	%f5
	array32	%i0,	%l0,	%i1
	fmovdg	%xcc,	%f1,	%f4
loop_5257:
	sth	%o2,	[%l7 + 0x5A]
	fornot1	%f6,	%f0,	%f8
	umul	%i5,	0x1908,	%o3
	for	%f12,	%f6,	%f4
	fnegd	%f2,	%f0
	array16	%i3,	%l5,	%o6
	orcc	%i2,	0x1905,	%l2
	stw	%l1,	[%l7 + 0x18]
	movl	%xcc,	%l6,	%o7
	fmovrsgez	%g7,	%f10,	%f9
	ldd	[%l7 + 0x18],	%f14
	fnegd	%f0,	%f8
	fmul8x16	%f7,	%f8,	%f2
	sdiv	%o1,	0x1291,	%i7
	sth	%g5,	[%l7 + 0x58]
	fxnor	%f4,	%f0,	%f14
	ldx	[%l7 + 0x10],	%g4
	brnz,a	%o5,	loop_5258
	udivcc	%l4,	0x0E60,	%g1
	sth	%i4,	[%l7 + 0x22]
	std	%f12,	[%l7 + 0x40]
loop_5258:
	move	%icc,	%i6,	%g2
	fbuge,a	%fcc0,	loop_5259
	sub	%g6,	%o0,	%g3
	xorcc	%o4,	%l3,	%l0
	fmovsvs	%icc,	%f10,	%f7
loop_5259:
	fbe	%fcc2,	loop_5260
	stb	%i0,	[%l7 + 0x2A]
	fxnors	%f0,	%f15,	%f5
	lduh	[%l7 + 0x18],	%o2
loop_5260:
	ld	[%l7 + 0x54],	%f2
	fpackfix	%f8,	%f4
	stx	%i5,	[%l7 + 0x20]
	ldub	[%l7 + 0x26],	%o3
	lduh	[%l7 + 0x34],	%i3
	subc	%l5,	%i1,	%o6
	fmovdn	%icc,	%f8,	%f7
	ldx	[%l7 + 0x40],	%i2
	sll	%l2,	0x15,	%l1
	fnand	%f6,	%f14,	%f12
	addc	%l6,	0x1195,	%o7
	fbue,a	%fcc1,	loop_5261
	movleu	%xcc,	%g7,	%o1
	lduh	[%l7 + 0x16],	%g5
	bvs,a	%icc,	loop_5262
loop_5261:
	taddcc	%i7,	%g4,	%o5
	fandnot2s	%f7,	%f12,	%f12
	stx	%g1,	[%l7 + 0x68]
loop_5262:
	tne	%xcc,	0x3
	ldd	[%l7 + 0x38],	%f0
	bg	%xcc,	loop_5263
	ldx	[%l7 + 0x48],	%l4
	fble	%fcc2,	loop_5264
	lduw	[%l7 + 0x08],	%i6
loop_5263:
	ldsh	[%l7 + 0x0C],	%g2
	tcc	%xcc,	0x3
loop_5264:
	st	%f0,	[%l7 + 0x78]
	fpackfix	%f10,	%f9
	bcc,a,pn	%icc,	loop_5265
	ta	%xcc,	0x3
	fpsub32s	%f4,	%f3,	%f9
	fzeros	%f11
loop_5265:
	ldsh	[%l7 + 0x14],	%i4
	movge	%icc,	%o0,	%g6
	ldsb	[%l7 + 0x40],	%o4
	fmovsle	%icc,	%f11,	%f2
	fmovrslz	%l3,	%f1,	%f6
	ldub	[%l7 + 0x10],	%l0
	nop
	setx loop_5266, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	ldx	[%l7 + 0x20],	%i0
	sth	%o2,	[%l7 + 0x70]
	fmovrdne	%i5,	%f0,	%f14
loop_5266:
	bcs	loop_5267
	fmovrse	%o3,	%f6,	%f2
	fmovsneg	%xcc,	%f12,	%f11
	sth	%g3,	[%l7 + 0x0A]
loop_5267:
	fmovrdlez	%l5,	%f12,	%f6
	fbuge,a	%fcc3,	loop_5268
	nop
	setx loop_5269, %l0, %l1
	jmpl %l1, %i1
	be,a	%xcc,	loop_5270
	lduh	[%l7 + 0x4C],	%i3
loop_5268:
	edge32	%o6,	%l2,	%l1
loop_5269:
	ldsw	[%l7 + 0x5C],	%i2
loop_5270:
	fmovdne	%xcc,	%f10,	%f11
	ldsh	[%l7 + 0x54],	%o7
	sethi	0x07E8,	%l6
	edge8	%g7,	%o1,	%g5
	ldsw	[%l7 + 0x18],	%g4
	nop
	setx loop_5271, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fbuge	%fcc3,	loop_5272
	udivx	%o5,	0x130F,	%i7
	orn	%l4,	0x1758,	%g1
loop_5271:
	fbo,a	%fcc0,	loop_5273
loop_5272:
	fcmple16	%f10,	%f2,	%g2
	edge32l	%i4,	%o0,	%i6
	fblg	%fcc1,	loop_5274
loop_5273:
	fzeros	%f8
	fmovrdgez	%o4,	%f2,	%f10
	brgez,a	%l3,	loop_5275
loop_5274:
	lduh	[%l7 + 0x2E],	%l0
	fexpand	%f4,	%f8
	fornot1s	%f7,	%f14,	%f15
loop_5275:
	tvc	%icc,	0x2
	bn,a	loop_5276
	ld	[%l7 + 0x5C],	%f12
	ldx	[%l7 + 0x10],	%i0
	udivx	%g6,	0x172A,	%i5
loop_5276:
	fzero	%f2
	movge	%icc,	%o2,	%g3
	stw	%l5,	[%l7 + 0x0C]
	brz	%o3,	loop_5277
	lduw	[%l7 + 0x40],	%i3
	movrgez	%o6,	%l2,	%i1
	fmovrsne	%i2,	%f0,	%f15
loop_5277:
	nop
	setx loop_5278, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fbu,a	%fcc0,	loop_5279
	tgu	%icc,	0x1
	std	%f6,	[%l7 + 0x60]
loop_5278:
	fpadd32s	%f8,	%f2,	%f8
loop_5279:
	ble,a	%xcc,	loop_5280
	tg	%xcc,	0x4
	fcmpgt32	%f12,	%f2,	%o7
	fmovsne	%xcc,	%f13,	%f10
loop_5280:
	bpos	%xcc,	loop_5281
	stb	%l6,	[%l7 + 0x59]
	ldub	[%l7 + 0x14],	%g7
	fbne	%fcc2,	loop_5282
loop_5281:
	fcmpeq32	%f4,	%f0,	%l1
	fcmpgt16	%f0,	%f8,	%o1
	fmul8ulx16	%f2,	%f6,	%f4
loop_5282:
	fmovrdgz	%g4,	%f6,	%f14
	fmovscc	%icc,	%f11,	%f9
	fblg,a	%fcc1,	loop_5283
	faligndata	%f2,	%f8,	%f8
	fmovdle	%xcc,	%f13,	%f8
	srax	%o5,	0x02,	%g5
loop_5283:
	fmovdleu	%icc,	%f12,	%f2
	fmovrslez	%i7,	%f3,	%f12
	fbe,a	%fcc2,	loop_5284
	ldsh	[%l7 + 0x5A],	%l4
	edge32n	%g1,	%i4,	%o0
	movrgz	%g2,	%i6,	%o4
loop_5284:
	fcmpeq32	%f2,	%f2,	%l0
	bn,pn	%icc,	loop_5285
	brnz	%l3,	loop_5286
	ld	[%l7 + 0x54],	%f11
	fbu	%fcc2,	loop_5287
loop_5285:
	fmovrslez	%g6,	%f11,	%f11
loop_5286:
	fsrc1	%f8,	%f0
	fmovdcc	%xcc,	%f12,	%f2
loop_5287:
	umul	%i5,	0x02D6,	%o2
	fpsub16	%f10,	%f4,	%f6
	tne	%xcc,	0x6
	and	%i0,	0x1F43,	%l5
	fandnot1s	%f10,	%f3,	%f10
	lduw	[%l7 + 0x44],	%o3
	stx	%g3,	[%l7 + 0x28]
	orncc	%i3,	%l2,	%o6
	fpmerge	%f11,	%f12,	%f10
	fnot2s	%f9,	%f4
	sub	%i1,	0x1775,	%i2
	fmovdge	%xcc,	%f6,	%f7
	fandnot2s	%f9,	%f0,	%f0
	fbug	%fcc2,	loop_5288
	fmovsvs	%icc,	%f6,	%f14
	fbge	%fcc1,	loop_5289
	fbl	%fcc2,	loop_5290
loop_5288:
	orn	%l6,	%o7,	%g7
	ldub	[%l7 + 0x29],	%o1
loop_5289:
	nop
	setx loop_5291, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_5290:
	fsrc2s	%f13,	%f5
	fcmped	%fcc3,	%f4,	%f8
	fmovrslz	%l1,	%f1,	%f14
loop_5291:
	ldub	[%l7 + 0x3A],	%o5
	tsubcctv	%g5,	%i7,	%g4
	fbug,a	%fcc3,	loop_5292
	sth	%l4,	[%l7 + 0x5E]
	stx	%i4,	[%l7 + 0x20]
	fzeros	%f10
loop_5292:
	fabsd	%f14,	%f4
	ldsw	[%l7 + 0x08],	%g1
	ldx	[%l7 + 0x30],	%g2
	fmovsge	%icc,	%f8,	%f15
	tle	%xcc,	0x2
	edge16n	%o0,	%o4,	%l0
	ldx	[%l7 + 0x18],	%l3
	tn	%xcc,	0x7
	ldub	[%l7 + 0x11],	%i6
	subcc	%i5,	%g6,	%i0
	fmovs	%f3,	%f13
	fmovdg	%xcc,	%f2,	%f5
	ldd	[%l7 + 0x28],	%f10
	fabss	%f10,	%f5
	fcmple32	%f2,	%f6,	%l5
	sra	%o3,	%g3,	%i3
	fpack32	%f8,	%f14,	%f8
	ld	[%l7 + 0x28],	%f0
	std	%f8,	[%l7 + 0x78]
	movleu	%xcc,	%l2,	%o2
	lduh	[%l7 + 0x16],	%i1
	fxnor	%f2,	%f12,	%f12
	movvs	%xcc,	%o6,	%l6
	andncc	%o7,	%g7,	%i2
	sth	%o1,	[%l7 + 0x1A]
	ldsw	[%l7 + 0x34],	%o5
	ld	[%l7 + 0x14],	%f6
	ldub	[%l7 + 0x42],	%g5
	stw	%l1,	[%l7 + 0x18]
	fmovsl	%icc,	%f14,	%f3
	movl	%xcc,	%i7,	%g4
	sdivx	%i4,	0x0492,	%l4
	fmovdvs	%icc,	%f2,	%f9
	array8	%g1,	%o0,	%g2
	movpos	%icc,	%l0,	%l3
	nop
	setx loop_5293, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	andncc	%i6,	%o4,	%g6
	array8	%i5,	%l5,	%i0
	fnands	%f0,	%f8,	%f1
loop_5293:
	smulcc	%g3,	%o3,	%i3
	alignaddrl	%l2,	%o2,	%o6
	fmovsneg	%icc,	%f5,	%f4
	movg	%xcc,	%i1,	%o7
	stx	%l6,	[%l7 + 0x58]
	fmovdn	%xcc,	%f12,	%f11
	lduw	[%l7 + 0x40],	%i2
	fcmpeq32	%f0,	%f8,	%g7
	ldub	[%l7 + 0x35],	%o5
	nop
	setx loop_5294, %l0, %l1
	jmpl %l1, %o1
	bvs,pt	%icc,	loop_5295
	bcc,a,pn	%icc,	loop_5296
	srax	%g5,	0x11,	%i7
loop_5294:
	stb	%g4,	[%l7 + 0x37]
loop_5295:
	movcs	%icc,	%l1,	%i4
loop_5296:
	fmovdneg	%xcc,	%f3,	%f1
	smulcc	%g1,	0x0B35,	%l4
	fbuge	%fcc2,	loop_5297
	fmovrsgz	%g2,	%f0,	%f6
	brlez	%l0,	loop_5298
	sth	%o0,	[%l7 + 0x62]
loop_5297:
	nop
	setx loop_5299, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	bpos,a,pn	%xcc,	loop_5300
loop_5298:
	bg,a	%xcc,	loop_5301
	fcmpeq16	%f0,	%f6,	%i6
loop_5299:
	pdist	%f4,	%f6,	%f14
loop_5300:
	lduw	[%l7 + 0x50],	%o4
loop_5301:
	fmovrdlz	%l3,	%f2,	%f2
	fbn	%fcc0,	loop_5302
	fandnot1	%f14,	%f2,	%f2
	brlez	%i5,	loop_5303
	lduw	[%l7 + 0x0C],	%l5
loop_5302:
	brlez,a	%i0,	loop_5304
	tcc	%xcc,	0x7
loop_5303:
	bleu	loop_5305
	fba,a	%fcc2,	loop_5306
loop_5304:
	movn	%icc,	%g6,	%o3
	mova	%xcc,	%g3,	%l2
loop_5305:
	ldx	[%l7 + 0x38],	%i3
loop_5306:
	fand	%f4,	%f2,	%f4
	stw	%o6,	[%l7 + 0x2C]
	fandnot2	%f10,	%f14,	%f2
	fsrc1s	%f12,	%f3
	fcmpes	%fcc2,	%f10,	%f1
	edge32l	%o2,	%i1,	%o7
	edge16n	%l6,	%g7,	%o5
	stb	%i2,	[%l7 + 0x36]
	edge8n	%o1,	%g5,	%i7
	sth	%l1,	[%l7 + 0x1E]
	sll	%g4,	%g1,	%i4
	siam	0x4
	fpack32	%f4,	%f6,	%f10
	sth	%g2,	[%l7 + 0x74]
	or	%l0,	%l4,	%o0
	fpsub32	%f0,	%f6,	%f0
	fbule	%fcc1,	loop_5307
	fmovdge	%xcc,	%f7,	%f9
	smulcc	%o4,	%l3,	%i5
	tg	%icc,	0x4
loop_5307:
	fbug	%fcc3,	loop_5308
	udivcc	%i6,	0x06B2,	%i0
	brgez	%l5,	loop_5309
	ldd	[%l7 + 0x70],	%f10
loop_5308:
	srax	%o3,	0x1C,	%g6
	umulcc	%g3,	0x1F79,	%l2
loop_5309:
	fmuld8sux16	%f15,	%f7,	%f12
	stx	%o6,	[%l7 + 0x38]
	sth	%i3,	[%l7 + 0x62]
	ldsh	[%l7 + 0x38],	%o2
	udiv	%i1,	0x1A13,	%o7
	be	loop_5310
	fbuge	%fcc2,	loop_5311
	stw	%l6,	[%l7 + 0x10]
	ldsh	[%l7 + 0x4E],	%g7
loop_5310:
	fmovdn	%icc,	%f2,	%f14
loop_5311:
	ldub	[%l7 + 0x34],	%i2
	fpadd16	%f0,	%f12,	%f14
	lduh	[%l7 + 0x60],	%o1
	edge32n	%o5,	%i7,	%g5
	call	loop_5312
	fmul8x16au	%f8,	%f13,	%f10
	bvc,a,pt	%xcc,	loop_5313
	bshuffle	%f0,	%f8,	%f8
loop_5312:
	tsubcc	%l1,	%g1,	%i4
	fsrc2s	%f12,	%f15
loop_5313:
	ldsb	[%l7 + 0x2B],	%g2
	brnz,a	%l0,	loop_5314
	fmul8x16	%f9,	%f8,	%f8
	fabss	%f0,	%f3
	tge	%xcc,	0x5
loop_5314:
	fmovd	%f12,	%f14
	ldx	[%l7 + 0x58],	%l4
	umul	%o0,	0x08A6,	%g4
	fmovspos	%xcc,	%f12,	%f15
	edge8ln	%l3,	%i5,	%o4
	popc	%i6,	%i0
	st	%f1,	[%l7 + 0x70]
	andncc	%l5,	%o3,	%g3
	fmovdle	%icc,	%f2,	%f8
	ldsb	[%l7 + 0x36],	%l2
	call	loop_5315
	ldd	[%l7 + 0x08],	%f8
	edge16l	%g6,	%o6,	%o2
	ldub	[%l7 + 0x27],	%i3
loop_5315:
	fsrc1	%f0,	%f0
	ta	%icc,	0x0
	ld	[%l7 + 0x50],	%f5
	tg	%xcc,	0x2
	fmovs	%f2,	%f8
	tne	%icc,	0x1
	fmul8x16	%f2,	%f8,	%f4
	ldx	[%l7 + 0x38],	%i1
	ldub	[%l7 + 0x3A],	%l6
	ldsh	[%l7 + 0x34],	%o7
	fmovda	%xcc,	%f7,	%f1
	fblg	%fcc2,	loop_5316
	ldd	[%l7 + 0x60],	%f2
	fsrc2s	%f15,	%f10
	or	%i2,	0x1B75,	%g7
loop_5316:
	ldsb	[%l7 + 0x2C],	%o1
	st	%f8,	[%l7 + 0x48]
	lduh	[%l7 + 0x32],	%i7
	ldx	[%l7 + 0x40],	%o5
	movrne	%g5,	%l1,	%i4
	fnors	%f14,	%f1,	%f12
	srax	%g1,	%l0,	%g2
	ld	[%l7 + 0x14],	%f2
	brz	%o0,	loop_5317
	te	%icc,	0x4
	st	%f8,	[%l7 + 0x68]
	ldd	[%l7 + 0x20],	%f6
loop_5317:
	orncc	%g4,	0x1D8B,	%l3
	orcc	%l4,	0x09CC,	%o4
	stb	%i6,	[%l7 + 0x22]
	fcmpgt16	%f10,	%f2,	%i0
	sth	%l5,	[%l7 + 0x0E]
	fmovrsgez	%i5,	%f15,	%f0
	bvc,a,pn	%xcc,	loop_5318
	ldsh	[%l7 + 0x24],	%o3
	movcs	%xcc,	%l2,	%g3
	for	%f8,	%f8,	%f8
loop_5318:
	fmovdleu	%xcc,	%f13,	%f9
	std	%f10,	[%l7 + 0x60]
	fpsub32	%f6,	%f4,	%f10
	fbue	%fcc2,	loop_5319
	fnors	%f11,	%f15,	%f4
	bcc	%xcc,	loop_5320
	fcmple32	%f4,	%f0,	%o6
loop_5319:
	nop
	setx loop_5321, %l0, %l1
	jmpl %l1, %g6
	movrlez	%o2,	0x2E7,	%i1
loop_5320:
	bshuffle	%f0,	%f12,	%f4
	edge32	%l6,	%o7,	%i2
loop_5321:
	fpack16	%f2,	%f5
	fmovdpos	%icc,	%f8,	%f6
	fmovsn	%xcc,	%f5,	%f2
	st	%f0,	[%l7 + 0x24]
	addccc	%g7,	%o1,	%i7
	sra	%i3,	0x11,	%g5
	ldx	[%l7 + 0x70],	%o5
	smul	%i4,	%l1,	%g1
	fmovs	%f12,	%f2
	srl	%l0,	%o0,	%g2
	st	%f0,	[%l7 + 0x7C]
	alignaddr	%l3,	%l4,	%o4
	bcc,a	loop_5322
	fmovde	%icc,	%f1,	%f0
	ld	[%l7 + 0x7C],	%f8
	stx	%g4,	[%l7 + 0x68]
loop_5322:
	ta	%xcc,	0x6
	fcmpne32	%f0,	%f4,	%i6
	fnot1	%f4,	%f4
	stx	%i0,	[%l7 + 0x20]
	lduh	[%l7 + 0x7C],	%i5
	fmovse	%xcc,	%f3,	%f12
	st	%f6,	[%l7 + 0x5C]
	fsrc2s	%f10,	%f2
	xnor	%l5,	%l2,	%g3
	fmovsneg	%icc,	%f3,	%f15
	sth	%o3,	[%l7 + 0x40]
	movg	%icc,	%o6,	%o2
	ldsw	[%l7 + 0x40],	%g6
	ldd	[%l7 + 0x60],	%f10
	fmovrdlez	%i1,	%f8,	%f14
	tleu	%xcc,	0x6
	popc	0x0D7C,	%o7
	stw	%i2,	[%l7 + 0x64]
	stb	%l6,	[%l7 + 0x41]
	movrlez	%o1,	0x0FF,	%g7
	fmovscs	%icc,	%f10,	%f4
	fbe	%fcc1,	loop_5323
	ldsb	[%l7 + 0x7B],	%i3
	xnor	%i7,	0x1170,	%o5
	fbn,a	%fcc1,	loop_5324
loop_5323:
	ldsh	[%l7 + 0x2A],	%g5
	ldx	[%l7 + 0x18],	%l1
	brgez,a	%i4,	loop_5325
loop_5324:
	stw	%l0,	[%l7 + 0x20]
	fmovdvs	%xcc,	%f4,	%f0
	ldsb	[%l7 + 0x74],	%o0
loop_5325:
	ldsb	[%l7 + 0x35],	%g1
	bg,pn	%icc,	loop_5326
	bgu,a,pt	%icc,	loop_5327
	ldub	[%l7 + 0x4B],	%l3
	ldsw	[%l7 + 0x44],	%g2
loop_5326:
	bcc,a,pn	%icc,	loop_5328
loop_5327:
	fmul8ulx16	%f2,	%f4,	%f14
	array8	%o4,	%l4,	%i6
	orcc	%i0,	0x0270,	%g4
loop_5328:
	tpos	%icc,	0x6
	sdivcc	%i5,	0x152F,	%l5
	lduw	[%l7 + 0x1C],	%g3
	fcmpeq32	%f8,	%f10,	%o3
	std	%f2,	[%l7 + 0x48]
	mulscc	%o6,	%o2,	%l2
	bg,pn	%icc,	loop_5329
	lduh	[%l7 + 0x26],	%g6
	bcs,pt	%xcc,	loop_5330
	fmul8sux16	%f6,	%f12,	%f10
loop_5329:
	and	%o7,	%i1,	%l6
	fpsub16s	%f4,	%f5,	%f7
loop_5330:
	edge32	%i2,	%g7,	%i3
	st	%f9,	[%l7 + 0x60]
	edge16	%i7,	%o1,	%g5
	mulscc	%l1,	%i4,	%l0
	sth	%o5,	[%l7 + 0x24]
	fmovda	%xcc,	%f15,	%f1
	std	%f6,	[%l7 + 0x20]
	ldx	[%l7 + 0x58],	%o0
	alignaddrl	%g1,	%g2,	%l3
	taddcc	%o4,	0x0918,	%i6
	tle	%xcc,	0x2
	edge16l	%i0,	%g4,	%i5
	fbul	%fcc2,	loop_5331
	movge	%xcc,	%l5,	%g3
	stx	%l4,	[%l7 + 0x70]
	edge16n	%o6,	%o2,	%o3
loop_5331:
	fbe	%fcc1,	loop_5332
	fmovde	%icc,	%f14,	%f3
	srax	%l2,	0x1F,	%g6
	fpsub16	%f10,	%f2,	%f6
loop_5332:
	fmovdl	%icc,	%f4,	%f2
	taddcctv	%i1,	%l6,	%o7
	lduh	[%l7 + 0x1C],	%g7
	fcmpgt16	%f12,	%f0,	%i3
	tn	%icc,	0x4
	ldd	[%l7 + 0x50],	%f14
	fmovdneg	%icc,	%f11,	%f10
	fmovrdne	%i2,	%f0,	%f0
	movrne	%i7,	%g5,	%o1
	std	%f2,	[%l7 + 0x38]
	ldub	[%l7 + 0x22],	%l1
	taddcctv	%i4,	%l0,	%o5
	tvc	%xcc,	0x0
	ldsb	[%l7 + 0x73],	%o0
	andn	%g1,	%g2,	%o4
	fcmpeq32	%f6,	%f14,	%i6
	brgz,a	%i0,	loop_5333
	bgu,pt	%icc,	loop_5334
	fornot2s	%f1,	%f12,	%f8
	movrgez	%l3,	0x0E6,	%i5
loop_5333:
	tsubcc	%l5,	%g3,	%g4
loop_5334:
	smulcc	%o6,	%o2,	%l4
	stb	%l2,	[%l7 + 0x1E]
	std	%f14,	[%l7 + 0x68]
	tle	%icc,	0x5
	stb	%g6,	[%l7 + 0x3E]
	ldd	[%l7 + 0x60],	%f10
	sdiv	%i1,	0x09B7,	%l6
	std	%f12,	[%l7 + 0x40]
	umul	%o7,	0x1FF0,	%o3
	movge	%xcc,	%i3,	%g7
	st	%f14,	[%l7 + 0x20]
	ldx	[%l7 + 0x60],	%i2
	sll	%i7,	%g5,	%l1
	fmovrdgez	%i4,	%f12,	%f14
	ldd	[%l7 + 0x50],	%f6
	subccc	%l0,	%o1,	%o5
	orcc	%g1,	%o0,	%g2
	fnot1	%f14,	%f8
	sth	%i6,	[%l7 + 0x2A]
	tvs	%xcc,	0x1
	ba	loop_5335
	bg,pn	%xcc,	loop_5336
	fmovsvc	%xcc,	%f0,	%f13
	fbg,a	%fcc0,	loop_5337
loop_5335:
	fcmped	%fcc1,	%f12,	%f14
loop_5336:
	ldsh	[%l7 + 0x60],	%o4
	fmovrdgez	%l3,	%f6,	%f8
loop_5337:
	fmovrsne	%i0,	%f3,	%f1
	fmovscs	%icc,	%f7,	%f9
	fbul,a	%fcc0,	loop_5338
	movrne	%l5,	0x3AB,	%i5
	fxnors	%f15,	%f10,	%f3
	movrne	%g3,	0x214,	%o6
loop_5338:
	std	%f6,	[%l7 + 0x10]
	fornot2	%f14,	%f4,	%f14
	std	%f4,	[%l7 + 0x58]
	stw	%o2,	[%l7 + 0x44]
	fmovrdgz	%g4,	%f8,	%f8
	tne	%icc,	0x3
	ldx	[%l7 + 0x40],	%l2
	tn	%icc,	0x0
	ldsb	[%l7 + 0x75],	%g6
	stx	%l4,	[%l7 + 0x58]
	addc	%l6,	0x1765,	%i1
	ldx	[%l7 + 0x48],	%o7
	fpack32	%f10,	%f4,	%f14
	smulcc	%i3,	0x0529,	%o3
	st	%f6,	[%l7 + 0x0C]
	fbe,a	%fcc0,	loop_5339
	fmovrdne	%g7,	%f10,	%f8
	stw	%i7,	[%l7 + 0x20]
	movle	%icc,	%i2,	%g5
loop_5339:
	movle	%xcc,	%i4,	%l0
	movre	%l1,	%o5,	%o1
	fmovdleu	%xcc,	%f5,	%f12
	ld	[%l7 + 0x64],	%f0
	subc	%g1,	%g2,	%i6
	tpos	%xcc,	0x2
	fble,a	%fcc3,	loop_5340
	fpack32	%f0,	%f8,	%f12
	fones	%f4
	fba	%fcc1,	loop_5341
loop_5340:
	fmovsg	%xcc,	%f12,	%f6
	nop
	setx loop_5342, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	bne,a,pt	%xcc,	loop_5343
loop_5341:
	addcc	%o0,	%o4,	%i0
	fexpand	%f4,	%f14
loop_5342:
	fcmpeq32	%f10,	%f6,	%l5
loop_5343:
	movgu	%icc,	%l3,	%g3
	fpadd32s	%f13,	%f13,	%f4
	srl	%o6,	%i5,	%g4
	fmul8x16al	%f15,	%f0,	%f8
	ta	%xcc,	0x3
	tpos	%icc,	0x1
	fpsub32s	%f13,	%f6,	%f6
	umul	%l2,	%g6,	%o2
	lduw	[%l7 + 0x14],	%l4
	fxnor	%f12,	%f2,	%f12
	fxnor	%f8,	%f14,	%f8
	subc	%l6,	0x0244,	%o7
	fmuld8ulx16	%f8,	%f11,	%f2
	bcs,a,pn	%icc,	loop_5344
	fornot1	%f4,	%f10,	%f6
	fnor	%f2,	%f6,	%f14
	lduh	[%l7 + 0x44],	%i1
loop_5344:
	fmovsg	%xcc,	%f2,	%f5
	fmovsle	%xcc,	%f7,	%f1
	lduw	[%l7 + 0x78],	%o3
	movpos	%icc,	%g7,	%i7
	fcmpne16	%f6,	%f8,	%i3
	movrgz	%g5,	0x07E,	%i2
	fxnor	%f4,	%f2,	%f0
	or	%l0,	%l1,	%i4
	fnot2	%f2,	%f0
	fnegd	%f4,	%f8
	edge8	%o1,	%o5,	%g1
	ld	[%l7 + 0x44],	%f5
	srlx	%i6,	0x0C,	%g2
	edge16n	%o4,	%i0,	%l5
	fcmpd	%fcc3,	%f2,	%f6
	xorcc	%l3,	%o0,	%g3
	movrne	%o6,	%g4,	%i5
	fornot1	%f12,	%f2,	%f6
	umulcc	%l2,	0x0C05,	%o2
	bg,a,pt	%xcc,	loop_5345
	stb	%g6,	[%l7 + 0x1E]
	mulscc	%l4,	0x16E9,	%l6
	fmovrsgz	%o7,	%f8,	%f14
loop_5345:
	tpos	%xcc,	0x5
	addcc	%o3,	0x1CF5,	%g7
	ldsw	[%l7 + 0x24],	%i1
	fmovscc	%icc,	%f12,	%f5
	fmovse	%icc,	%f3,	%f1
	fabsd	%f4,	%f8
	brlez	%i7,	loop_5346
	call	loop_5347
	sth	%g5,	[%l7 + 0x16]
	fabsd	%f4,	%f10
loop_5346:
	std	%f2,	[%l7 + 0x50]
loop_5347:
	xorcc	%i3,	0x17B6,	%i2
	fnand	%f2,	%f4,	%f10
	fcmpeq32	%f4,	%f8,	%l1
	tg	%xcc,	0x2
	lduh	[%l7 + 0x24],	%l0
	fmovsn	%xcc,	%f6,	%f5
	smul	%o1,	0x07EF,	%i4
	fnors	%f11,	%f13,	%f8
	brlez,a	%o5,	loop_5348
	orn	%g1,	0x0BB6,	%g2
	fxnors	%f1,	%f3,	%f1
	ld	[%l7 + 0x70],	%f6
loop_5348:
	fmovdne	%icc,	%f4,	%f8
	fcmped	%fcc1,	%f14,	%f12
	move	%icc,	%i6,	%o4
	fcmpne16	%f4,	%f0,	%i0
	fmul8x16	%f7,	%f10,	%f6
	bn,pt	%icc,	loop_5349
	fbl,a	%fcc1,	loop_5350
	fbge	%fcc2,	loop_5351
	popc	0x00D0,	%l3
loop_5349:
	tgu	%xcc,	0x4
loop_5350:
	tne	%xcc,	0x2
loop_5351:
	std	%f12,	[%l7 + 0x58]
	stx	%l5,	[%l7 + 0x20]
	fmovdn	%xcc,	%f6,	%f8
	std	%f8,	[%l7 + 0x58]
	lduw	[%l7 + 0x64],	%g3
	fbn,a	%fcc2,	loop_5352
	fpsub16	%f8,	%f14,	%f14
	fcmpeq32	%f0,	%f8,	%o0
	edge16ln	%o6,	%i5,	%g4
loop_5352:
	ldsb	[%l7 + 0x24],	%o2
	fmovdge	%icc,	%f8,	%f10
	ldub	[%l7 + 0x1B],	%l2
	movcc	%icc,	%g6,	%l6
	ldsw	[%l7 + 0x20],	%l4
	std	%f10,	[%l7 + 0x20]
	ta	%icc,	0x3
	udiv	%o3,	0x07D6,	%g7
	move	%icc,	%i1,	%i7
	ldsh	[%l7 + 0x50],	%o7
	ldsb	[%l7 + 0x62],	%g5
	fmovrse	%i2,	%f8,	%f3
	ldsh	[%l7 + 0x78],	%i3
	fnegs	%f5,	%f11
	ble,a,pn	%xcc,	loop_5353
	sth	%l0,	[%l7 + 0x1A]
	stb	%l1,	[%l7 + 0x6C]
	ldsb	[%l7 + 0x67],	%i4
loop_5353:
	fones	%f6
	ldd	[%l7 + 0x40],	%f4
	ldub	[%l7 + 0x63],	%o5
	fbue,a	%fcc3,	loop_5354
	fbule	%fcc1,	loop_5355
	stb	%o1,	[%l7 + 0x69]
	fpadd16	%f14,	%f6,	%f4
loop_5354:
	ble,a	loop_5356
loop_5355:
	edge16ln	%g2,	%i6,	%o4
	lduw	[%l7 + 0x38],	%g1
	move	%icc,	%i0,	%l5
loop_5356:
	fnot2	%f4,	%f8
	edge32	%g3,	%l3,	%o0
	fmovsg	%xcc,	%f12,	%f0
	st	%f3,	[%l7 + 0x54]
	bge,pn	%xcc,	loop_5357
	edge16ln	%o6,	%i5,	%o2
	fbule	%fcc2,	loop_5358
	fnot2	%f4,	%f2
loop_5357:
	ld	[%l7 + 0x24],	%f7
	fpack32	%f2,	%f14,	%f10
loop_5358:
	movrgz	%l2,	0x18C,	%g6
	movle	%icc,	%l6,	%g4
	orcc	%o3,	%g7,	%l4
	siam	0x3
	movrne	%i7,	0x2EC,	%o7
	ldx	[%l7 + 0x18],	%i1
	std	%f14,	[%l7 + 0x68]
	fands	%f15,	%f2,	%f5
	fmovsgu	%icc,	%f2,	%f14
	fbue,a	%fcc2,	loop_5359
	ld	[%l7 + 0x0C],	%f11
	tneg	%xcc,	0x2
	orncc	%g5,	%i2,	%i3
loop_5359:
	xorcc	%l0,	0x0B83,	%i4
	fmovsle	%xcc,	%f11,	%f8
	fblg,a	%fcc2,	loop_5360
	fbule	%fcc1,	loop_5361
	lduh	[%l7 + 0x26],	%l1
	ld	[%l7 + 0x40],	%f13
loop_5360:
	edge8n	%o5,	%g2,	%o1
loop_5361:
	fcmps	%fcc1,	%f11,	%f1
	stb	%o4,	[%l7 + 0x64]
	std	%f12,	[%l7 + 0x48]
	ldub	[%l7 + 0x22],	%g1
	bleu,pt	%icc,	loop_5362
	be,pn	%icc,	loop_5363
	movpos	%xcc,	%i6,	%l5
	ld	[%l7 + 0x38],	%f6
loop_5362:
	smulcc	%g3,	%i0,	%o0
loop_5363:
	fcmple32	%f12,	%f0,	%o6
	stw	%l3,	[%l7 + 0x30]
	edge16n	%i5,	%l2,	%g6
	faligndata	%f2,	%f6,	%f4
	edge8l	%l6,	%g4,	%o2
	fpack16	%f10,	%f12
	fmovsvs	%icc,	%f6,	%f11
	ldsb	[%l7 + 0x4F],	%g7
	call	loop_5364
	ldsh	[%l7 + 0x20],	%l4
	sub	%i7,	%o3,	%o7
	or	%g5,	%i1,	%i3
loop_5364:
	ldsh	[%l7 + 0x68],	%i2
	fnand	%f12,	%f10,	%f2
	fbe,a	%fcc3,	loop_5365
	fornot2	%f12,	%f10,	%f6
	stw	%l0,	[%l7 + 0x74]
	lduw	[%l7 + 0x70],	%i4
loop_5365:
	ldub	[%l7 + 0x6A],	%l1
	addccc	%g2,	0x0F7F,	%o5
	fpack32	%f4,	%f6,	%f0
	stx	%o1,	[%l7 + 0x10]
	brgz,a	%o4,	loop_5366
	fmovrdgez	%g1,	%f4,	%f2
	fmovdvc	%icc,	%f2,	%f0
	tle	%xcc,	0x1
loop_5366:
	ldsb	[%l7 + 0x53],	%l5
	fnegs	%f1,	%f14
	array8	%g3,	%i6,	%i0
	ldsw	[%l7 + 0x54],	%o6
	mulscc	%l3,	%o0,	%l2
	bvs,a	loop_5367
	sth	%i5,	[%l7 + 0x1A]
	fcmpeq16	%f6,	%f2,	%l6
	fmovdgu	%xcc,	%f6,	%f4
loop_5367:
	fmovdleu	%icc,	%f1,	%f12
	movrne	%g6,	%o2,	%g4
	tn	%xcc,	0x2
	fmovdvs	%icc,	%f15,	%f1
	movrgz	%l4,	0x05B,	%g7
	lduh	[%l7 + 0x5E],	%o3
	fand	%f8,	%f10,	%f2
	bvs,a	%xcc,	loop_5368
	ldsb	[%l7 + 0x7A],	%o7
	ldd	[%l7 + 0x10],	%f0
	stb	%i7,	[%l7 + 0x4D]
loop_5368:
	fxnors	%f7,	%f14,	%f2
	bvc,a	loop_5369
	fmovscc	%icc,	%f6,	%f5
	std	%f12,	[%l7 + 0x18]
	move	%icc,	%i1,	%g5
loop_5369:
	bneg,a,pn	%xcc,	loop_5370
	fabss	%f8,	%f12
	fmovdvs	%xcc,	%f6,	%f4
	fxnor	%f8,	%f0,	%f10
loop_5370:
	ld	[%l7 + 0x58],	%f8
	brlez	%i2,	loop_5371
	sub	%l0,	0x1EC0,	%i3
	movrlz	%i4,	%g2,	%o5
	xorcc	%l1,	%o4,	%g1
loop_5371:
	fcmpgt32	%f6,	%f14,	%l5
	alignaddr	%g3,	%i6,	%i0
	ldub	[%l7 + 0x2E],	%o1
	movre	%l3,	%o0,	%o6
	edge16ln	%i5,	%l2,	%l6
	stw	%g6,	[%l7 + 0x40]
	fmovdcc	%icc,	%f2,	%f5
	ldx	[%l7 + 0x70],	%g4
	fxors	%f6,	%f14,	%f5
	array16	%l4,	%o2,	%g7
	stb	%o7,	[%l7 + 0x5D]
	fmul8x16al	%f5,	%f9,	%f0
	sth	%o3,	[%l7 + 0x56]
	edge16n	%i7,	%i1,	%g5
	fmovrsgz	%i2,	%f3,	%f12
	sdivcc	%i3,	0x1C52,	%i4
	ldsh	[%l7 + 0x1E],	%g2
	fmovspos	%icc,	%f4,	%f5
	movvs	%icc,	%o5,	%l1
	st	%f11,	[%l7 + 0x0C]
	fmovrsne	%l0,	%f6,	%f14
	movre	%g1,	%o4,	%l5
	subc	%i6,	0x1BBD,	%i0
	brnz	%o1,	loop_5372
	ld	[%l7 + 0x40],	%f15
	alignaddrl	%g3,	%o0,	%o6
	tle	%xcc,	0x4
loop_5372:
	fbule	%fcc1,	loop_5373
	bneg,a	loop_5374
	mova	%xcc,	%l3,	%i5
	tsubcctv	%l6,	0x1434,	%g6
loop_5373:
	bcs,a,pn	%xcc,	loop_5375
loop_5374:
	fbl,a	%fcc0,	loop_5376
	fmovrslez	%g4,	%f2,	%f10
	bn,a,pn	%xcc,	loop_5377
loop_5375:
	ld	[%l7 + 0x58],	%f5
loop_5376:
	subccc	%l4,	%o2,	%g7
	std	%f12,	[%l7 + 0x30]
loop_5377:
	sth	%o7,	[%l7 + 0x6C]
	nop
	setx loop_5378, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	bneg,pt	%icc,	loop_5379
	ldub	[%l7 + 0x5C],	%l2
	tcs	%icc,	0x3
loop_5378:
	ldd	[%l7 + 0x10],	%f2
loop_5379:
	ldsw	[%l7 + 0x4C],	%o3
	tl	%xcc,	0x4
	bgu,a,pn	%icc,	loop_5380
	movneg	%xcc,	%i7,	%g5
	srax	%i1,	0x0F,	%i3
	fmovsl	%xcc,	%f9,	%f10
loop_5380:
	fsrc2	%f14,	%f0
	subc	%i4,	0x1680,	%g2
	pdist	%f4,	%f6,	%f14
	tcc	%xcc,	0x3
	udiv	%i2,	0x0247,	%o5
	ldsh	[%l7 + 0x3A],	%l0
	xnor	%g1,	0x0A47,	%l1
	std	%f10,	[%l7 + 0x08]
	tgu	%xcc,	0x7
	movne	%xcc,	%o4,	%l5
	fzeros	%f5
	faligndata	%f0,	%f14,	%f10
	fmovrdlz	%i0,	%f4,	%f14
	lduh	[%l7 + 0x4A],	%i6
	fmuld8sux16	%f6,	%f5,	%f4
	brgez	%o1,	loop_5381
	fba	%fcc3,	loop_5382
	edge16n	%o0,	%g3,	%l3
	ld	[%l7 + 0x7C],	%f4
loop_5381:
	fbul	%fcc1,	loop_5383
loop_5382:
	fands	%f11,	%f0,	%f4
	fmovrslez	%o6,	%f12,	%f11
	stw	%l6,	[%l7 + 0x64]
loop_5383:
	stb	%g6,	[%l7 + 0x28]
	bvc,pn	%icc,	loop_5384
	fzeros	%f1
	fxor	%f0,	%f2,	%f4
	addccc	%g4,	0x0FB8,	%i5
loop_5384:
	ld	[%l7 + 0x48],	%f10
	ldsh	[%l7 + 0x4A],	%l4
	fmovdleu	%icc,	%f0,	%f2
	fone	%f0
	fexpand	%f14,	%f12
	tvc	%xcc,	0x1
	fxor	%f0,	%f0,	%f8
	fbug	%fcc1,	loop_5385
	ta	%xcc,	0x3
	st	%f1,	[%l7 + 0x08]
	bshuffle	%f2,	%f6,	%f4
loop_5385:
	brnz	%o2,	loop_5386
	fbe	%fcc0,	loop_5387
	addccc	%o7,	%g7,	%l2
	edge32l	%i7,	%g5,	%i1
loop_5386:
	bge	%xcc,	loop_5388
loop_5387:
	fmovdgu	%xcc,	%f10,	%f15
	fmovrslz	%i3,	%f1,	%f6
	srlx	%i4,	0x0B,	%g2
loop_5388:
	edge32n	%o3,	%o5,	%l0
	for	%f4,	%f4,	%f8
	movrlez	%g1,	0x1D6,	%l1
	udivcc	%o4,	0x1AB8,	%i2
	fcmpd	%fcc3,	%f12,	%f4
	fcmpes	%fcc1,	%f7,	%f13
	fcmpeq32	%f4,	%f12,	%i0
	fpsub16	%f12,	%f4,	%f10
	tl	%icc,	0x4
	std	%f12,	[%l7 + 0x28]
	fnot2s	%f8,	%f13
	fbne	%fcc3,	loop_5389
	stx	%l5,	[%l7 + 0x18]
	edge16ln	%o1,	%o0,	%g3
	stx	%i6,	[%l7 + 0x50]
loop_5389:
	fpack16	%f4,	%f10
	tgu	%icc,	0x6
	lduh	[%l7 + 0x10],	%o6
	tge	%xcc,	0x1
	ldx	[%l7 + 0x10],	%l6
	fbo,a	%fcc3,	loop_5390
	movge	%xcc,	%l3,	%g6
	fpackfix	%f2,	%f3
	edge16l	%g4,	%l4,	%i5
loop_5390:
	tne	%icc,	0x2
	ldsb	[%l7 + 0x2D],	%o2
	call	loop_5391
	bshuffle	%f2,	%f6,	%f10
	tneg	%xcc,	0x4
	fandnot2s	%f4,	%f6,	%f5
loop_5391:
	st	%f8,	[%l7 + 0x1C]
	ldub	[%l7 + 0x30],	%o7
	fbe,a	%fcc3,	loop_5392
	fmul8sux16	%f12,	%f8,	%f10
	array32	%g7,	%l2,	%g5
	fcmpeq32	%f8,	%f14,	%i1
loop_5392:
	sth	%i7,	[%l7 + 0x6A]
	ble,a,pt	%xcc,	loop_5393
	movrlez	%i4,	%g2,	%o3
	movle	%xcc,	%i3,	%l0
	fcmple32	%f14,	%f6,	%o5
loop_5393:
	tpos	%xcc,	0x0
	movre	%g1,	0x015,	%l1
	ldsw	[%l7 + 0x6C],	%i2
	bne	loop_5394
	fcmpd	%fcc3,	%f8,	%f2
	fmovrdlez	%o4,	%f12,	%f12
	ldd	[%l7 + 0x20],	%f2
loop_5394:
	fmovscs	%icc,	%f10,	%f10
	ldsh	[%l7 + 0x20],	%l5
	fabss	%f0,	%f0
	ldx	[%l7 + 0x18],	%o1
	tcs	%xcc,	0x0
	fmovsge	%xcc,	%f14,	%f8
	edge8ln	%i0,	%o0,	%i6
	brgz,a	%g3,	loop_5395
	fandnot2s	%f14,	%f0,	%f1
	movleu	%icc,	%l6,	%l3
	fornot2s	%f5,	%f10,	%f0
loop_5395:
	ldx	[%l7 + 0x18],	%g6
	srax	%g4,	%o6,	%i5
	fbge	%fcc2,	loop_5396
	lduw	[%l7 + 0x28],	%o2
	tvc	%icc,	0x0
	srax	%l4,	%g7,	%o7
loop_5396:
	ldub	[%l7 + 0x3C],	%g5
	fornot1	%f2,	%f2,	%f10
	fmovdge	%icc,	%f1,	%f6
	or	%i1,	0x156B,	%i7
	stw	%l2,	[%l7 + 0x60]
	fmovscc	%xcc,	%f8,	%f11
	fbo,a	%fcc3,	loop_5397
	lduh	[%l7 + 0x34],	%g2
	alignaddrl	%i4,	%o3,	%l0
	and	%o5,	%g1,	%i3
loop_5397:
	ldub	[%l7 + 0x6B],	%l1
	bshuffle	%f12,	%f14,	%f14
	subccc	%i2,	0x1CC8,	%l5
	ldsb	[%l7 + 0x58],	%o4
	fblg,a	%fcc2,	loop_5398
	fmovdvc	%xcc,	%f1,	%f5
	sdiv	%i0,	0x11DD,	%o1
	sth	%o0,	[%l7 + 0x24]
loop_5398:
	movge	%xcc,	%g3,	%l6
	ldub	[%l7 + 0x1A],	%l3
	lduw	[%l7 + 0x78],	%g6
	array32	%i6,	%g4,	%o6
	edge16ln	%o2,	%i5,	%l4
	stx	%g7,	[%l7 + 0x20]
	fors	%f5,	%f2,	%f8
	lduh	[%l7 + 0x26],	%o7
	brgz,a	%i1,	loop_5399
	sub	%i7,	%g5,	%g2
	ldub	[%l7 + 0x09],	%i4
	fmovda	%icc,	%f7,	%f6
loop_5399:
	fmovs	%f4,	%f14
	fbug,a	%fcc1,	loop_5400
	std	%f2,	[%l7 + 0x70]
	sth	%o3,	[%l7 + 0x1E]
	tg	%icc,	0x1
loop_5400:
	fmovdg	%xcc,	%f6,	%f10
	ldsw	[%l7 + 0x3C],	%l0
	sth	%o5,	[%l7 + 0x6E]
	ld	[%l7 + 0x44],	%f4
	array8	%l2,	%i3,	%g1
	bgu,pt	%xcc,	loop_5401
	edge32ln	%i2,	%l1,	%l5
	bvs,a,pn	%xcc,	loop_5402
	fmovrsne	%i0,	%f12,	%f12
loop_5401:
	edge32ln	%o1,	%o0,	%o4
	fnot2s	%f3,	%f12
loop_5402:
	fbul	%fcc2,	loop_5403
	stx	%l6,	[%l7 + 0x78]
	fmovspos	%icc,	%f13,	%f5
	mulx	%g3,	%g6,	%l3
loop_5403:
	sdivx	%i6,	0x10E3,	%g4
	lduw	[%l7 + 0x40],	%o2
	ldsw	[%l7 + 0x3C],	%i5
	stx	%l4,	[%l7 + 0x48]
	tge	%icc,	0x7
	brgz,a	%g7,	loop_5404
	lduh	[%l7 + 0x44],	%o7
	fpadd32s	%f12,	%f15,	%f11
	bvs,a	%xcc,	loop_5405
loop_5404:
	sth	%o6,	[%l7 + 0x68]
	tle	%xcc,	0x1
	stb	%i1,	[%l7 + 0x0E]
loop_5405:
	fmovsle	%icc,	%f0,	%f9
	fcmps	%fcc1,	%f15,	%f11
	edge8ln	%i7,	%g2,	%i4
	movvs	%xcc,	%g5,	%o3
	orcc	%o5,	0x137D,	%l2
	std	%f12,	[%l7 + 0x78]
	ldub	[%l7 + 0x54],	%i3
	movvc	%icc,	%g1,	%i2
	movrgz	%l0,	%l1,	%l5
	movne	%icc,	%o1,	%i0
	ldsw	[%l7 + 0x0C],	%o0
	ble,pn	%icc,	loop_5406
	bvs,pt	%icc,	loop_5407
	fpack32	%f10,	%f10,	%f2
	fnot2s	%f1,	%f10
loop_5406:
	srl	%o4,	%l6,	%g3
loop_5407:
	stw	%g6,	[%l7 + 0x60]
	lduh	[%l7 + 0x4E],	%i6
	fexpand	%f9,	%f14
	fbn	%fcc0,	loop_5408
	fmovdn	%icc,	%f7,	%f3
	fbo,a	%fcc1,	loop_5409
	xnorcc	%g4,	%o2,	%i5
loop_5408:
	fpadd16s	%f3,	%f1,	%f0
	fcmpne16	%f4,	%f6,	%l3
loop_5409:
	ldsb	[%l7 + 0x73],	%g7
	subc	%o7,	%l4,	%i1
	lduh	[%l7 + 0x60],	%o6
	faligndata	%f10,	%f0,	%f2
	ldx	[%l7 + 0x20],	%g2
	ld	[%l7 + 0x70],	%f9
	ldub	[%l7 + 0x7F],	%i7
	ldsh	[%l7 + 0x4A],	%i4
	fbne,a	%fcc1,	loop_5410
	ldsw	[%l7 + 0x24],	%g5
	fbuge,a	%fcc2,	loop_5411
	sdiv	%o3,	0x07F2,	%l2
loop_5410:
	move	%icc,	%o5,	%i3
	brgez,a	%i2,	loop_5412
loop_5411:
	fmovdge	%xcc,	%f9,	%f0
	edge32n	%g1,	%l1,	%l0
	be,a	loop_5413
loop_5412:
	bne	%xcc,	loop_5414
	andncc	%l5,	%o1,	%o0
	bcc,a	loop_5415
loop_5413:
	movg	%icc,	%i0,	%o4
loop_5414:
	fmovdleu	%xcc,	%f6,	%f0
	add	%g3,	%l6,	%g6
loop_5415:
	addc	%i6,	%o2,	%g4
	fand	%f6,	%f6,	%f10
	ldd	[%l7 + 0x48],	%f6
	stw	%i5,	[%l7 + 0x20]
	std	%f0,	[%l7 + 0x68]
	fmovrdgz	%l3,	%f2,	%f0
	mulx	%g7,	%l4,	%i1
	fpmerge	%f9,	%f8,	%f2
	sdivcc	%o7,	0x1D0C,	%g2
	stb	%i7,	[%l7 + 0x50]
	sth	%i4,	[%l7 + 0x54]
	stx	%g5,	[%l7 + 0x50]
	stx	%o6,	[%l7 + 0x28]
	fmovrde	%o3,	%f10,	%f10
	fbg,a	%fcc2,	loop_5416
	umul	%l2,	%o5,	%i3
	st	%f1,	[%l7 + 0x50]
	xor	%i2,	%g1,	%l0
loop_5416:
	umul	%l1,	%o1,	%o0
	tpos	%xcc,	0x1
	fbge	%fcc3,	loop_5417
	fabsd	%f8,	%f8
	tn	%icc,	0x4
	std	%f8,	[%l7 + 0x48]
loop_5417:
	lduh	[%l7 + 0x40],	%i0
	fpmerge	%f0,	%f2,	%f2
	stx	%o4,	[%l7 + 0x48]
	stb	%g3,	[%l7 + 0x6F]
	fmovdvc	%xcc,	%f8,	%f3
	std	%f12,	[%l7 + 0x10]
	movpos	%icc,	%l6,	%l5
	fornot1	%f14,	%f12,	%f14
	fornot1s	%f5,	%f14,	%f14
	ldd	[%l7 + 0x58],	%f8
	bcs,pn	%xcc,	loop_5418
	fbo	%fcc2,	loop_5419
	sth	%i6,	[%l7 + 0x0A]
	fpmerge	%f1,	%f0,	%f6
loop_5418:
	tsubcc	%g6,	0x0427,	%o2
loop_5419:
	mova	%xcc,	%i5,	%l3
	movvs	%icc,	%g4,	%g7
	fmovdvc	%icc,	%f9,	%f11
	movrne	%i1,	%o7,	%g2
	movneg	%icc,	%l4,	%i7
	brgz,a	%g5,	loop_5420
	stw	%i4,	[%l7 + 0x08]
	ldx	[%l7 + 0x50],	%o3
	fzeros	%f11
loop_5420:
	edge16	%o6,	%o5,	%i3
	movcc	%icc,	%l2,	%g1
	fcmps	%fcc1,	%f0,	%f1
	ldsw	[%l7 + 0x50],	%i2
	ldd	[%l7 + 0x40],	%f10
	bcc,pn	%xcc,	loop_5421
	andncc	%l1,	%l0,	%o1
	fzero	%f8
	andncc	%i0,	%o0,	%o4
loop_5421:
	ldub	[%l7 + 0x43],	%l6
	tcc	%xcc,	0x7
	fornot2	%f4,	%f14,	%f4
	fabsd	%f0,	%f0
	fnands	%f10,	%f14,	%f4
	fsrc2	%f12,	%f0
	brgez,a	%l5,	loop_5422
	orncc	%g3,	0x01BE,	%g6
	srlx	%o2,	0x1C,	%i6
	mulx	%l3,	0x1C87,	%g4
loop_5422:
	ldsw	[%l7 + 0x10],	%i5
	alignaddr	%i1,	%o7,	%g2
	fpadd16	%f6,	%f2,	%f14
	fabss	%f8,	%f10
	brnz,a	%g7,	loop_5423
	fble	%fcc0,	loop_5424
	bneg,a	loop_5425
	ldd	[%l7 + 0x18],	%f8
loop_5423:
	edge8l	%i7,	%g5,	%i4
loop_5424:
	st	%f13,	[%l7 + 0x74]
loop_5425:
	bg	loop_5426
	brnz	%l4,	loop_5427
	lduw	[%l7 + 0x48],	%o3
	movrgez	%o6,	0x1DA,	%i3
loop_5426:
	nop
	setx loop_5428, %l0, %l1
	jmpl %l1, %l2
loop_5427:
	umul	%g1,	%o5,	%i2
	std	%f6,	[%l7 + 0x60]
	fnegs	%f12,	%f7
loop_5428:
	xnorcc	%l0,	0x1B41,	%o1
	ldd	[%l7 + 0x40],	%f12
	movrlez	%l1,	%o0,	%i0
	movg	%icc,	%l6,	%o4
	for	%f6,	%f4,	%f0
	brz,a	%l5,	loop_5429
	fmovdvc	%icc,	%f9,	%f11
	movcs	%xcc,	%g3,	%o2
	faligndata	%f8,	%f10,	%f12
loop_5429:
	movg	%xcc,	%i6,	%g6
	tpos	%xcc,	0x1
	fexpand	%f7,	%f0
	fmovdn	%xcc,	%f15,	%f3
	lduw	[%l7 + 0x28],	%l3
	ldsh	[%l7 + 0x76],	%i5
	stw	%g4,	[%l7 + 0x7C]
	ld	[%l7 + 0x10],	%f4
	ldsw	[%l7 + 0x7C],	%o7
	umulcc	%i1,	%g2,	%i7
	movleu	%icc,	%g5,	%i4
	bcc	loop_5430
	fbge,a	%fcc1,	loop_5431
	fmuld8ulx16	%f11,	%f11,	%f12
	lduw	[%l7 + 0x10],	%g7
loop_5430:
	fmuld8sux16	%f5,	%f14,	%f12
loop_5431:
	ldd	[%l7 + 0x78],	%f8
	tsubcc	%l4,	%o6,	%o3
	fnot2s	%f8,	%f13
	fbu	%fcc1,	loop_5432
	ld	[%l7 + 0x20],	%f14
	srl	%i3,	%l2,	%o5
	lduw	[%l7 + 0x1C],	%i2
loop_5432:
	movvc	%icc,	%g1,	%o1
	fmovde	%xcc,	%f15,	%f5
	ta	%xcc,	0x0
	addc	%l0,	%l1,	%o0
	tge	%icc,	0x6
	stb	%i0,	[%l7 + 0x5C]
	array8	%l6,	%o4,	%g3
	ldsh	[%l7 + 0x30],	%l5
	add	%o2,	0x1C89,	%i6
	lduh	[%l7 + 0x60],	%l3
	umul	%i5,	0x0DA1,	%g4
	fcmpeq32	%f14,	%f10,	%o7
	ba	%xcc,	loop_5433
	bge,pt	%xcc,	loop_5434
	srax	%g6,	0x17,	%i1
	ldd	[%l7 + 0x68],	%f4
loop_5433:
	or	%g2,	0x1B78,	%i7
loop_5434:
	ldd	[%l7 + 0x60],	%f10
	ba,pn	%icc,	loop_5435
	edge16	%i4,	%g5,	%l4
	bvc,a	%icc,	loop_5436
	movrlez	%g7,	%o6,	%o3
loop_5435:
	fpmerge	%f14,	%f8,	%f14
	fxnors	%f10,	%f15,	%f10
loop_5436:
	ldub	[%l7 + 0x72],	%l2
	fsrc1	%f4,	%f8
	fmovda	%xcc,	%f1,	%f2
	lduw	[%l7 + 0x74],	%o5
	fpackfix	%f12,	%f0
	sth	%i2,	[%l7 + 0x50]
	tpos	%xcc,	0x1
	tne	%xcc,	0x1
	alignaddrl	%g1,	%o1,	%i3
	ldd	[%l7 + 0x68],	%f10
	edge16l	%l1,	%l0,	%i0
	fmovrdne	%o0,	%f12,	%f6
	sdiv	%l6,	0x1A6F,	%g3
	tl	%icc,	0x1
	ldsh	[%l7 + 0x58],	%o4
	ldsb	[%l7 + 0x0E],	%l5
	movvs	%icc,	%o2,	%i6
	fmovsleu	%xcc,	%f15,	%f12
	fnors	%f4,	%f10,	%f8
	fbge,a	%fcc2,	loop_5437
	tneg	%xcc,	0x4
	fbge	%fcc1,	loop_5438
	fcmple16	%f14,	%f14,	%l3
loop_5437:
	fmovda	%icc,	%f8,	%f6
	bvc,a	%icc,	loop_5439
loop_5438:
	std	%f8,	[%l7 + 0x70]
	ldx	[%l7 + 0x40],	%g4
	orncc	%o7,	%i5,	%i1
loop_5439:
	fnot1	%f2,	%f4
	bge,pn	%xcc,	loop_5440
	st	%f8,	[%l7 + 0x10]
	ta	%xcc,	0x1
	sth	%g6,	[%l7 + 0x6C]
loop_5440:
	ldsb	[%l7 + 0x5B],	%g2
	fmovsgu	%icc,	%f1,	%f9
	mulscc	%i4,	0x0497,	%i7
	fmovda	%icc,	%f10,	%f9
	tg	%icc,	0x7
	fmovdl	%icc,	%f13,	%f2
	nop
	setx loop_5441, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	orncc	%g5,	0x04E4,	%l4
	subc	%g7,	%o6,	%o3
	fmovrdne	%l2,	%f6,	%f14
loop_5441:
	fsrc2	%f0,	%f2
	sth	%o5,	[%l7 + 0x1C]
	stb	%g1,	[%l7 + 0x20]
	stb	%i2,	[%l7 + 0x09]
	st	%f1,	[%l7 + 0x74]
	stb	%o1,	[%l7 + 0x30]
	stb	%l1,	[%l7 + 0x40]
	fbue	%fcc1,	loop_5442
	fbne	%fcc3,	loop_5443
	movre	%l0,	%i3,	%o0
	ldsh	[%l7 + 0x62],	%l6
loop_5442:
	fpsub16s	%f6,	%f10,	%f1
loop_5443:
	fsrc1	%f2,	%f6
	fexpand	%f6,	%f10
	ldsh	[%l7 + 0x4E],	%g3
	ldx	[%l7 + 0x40],	%i0
	fmovscc	%icc,	%f4,	%f7
	fnot2s	%f0,	%f10
	std	%f4,	[%l7 + 0x30]
	array8	%o4,	%o2,	%i6
	sll	%l5,	%l3,	%o7
	bcc	%xcc,	loop_5444
	fbne,a	%fcc2,	loop_5445
	fnot1	%f6,	%f14
	srax	%i5,	%g4,	%g6
loop_5444:
	movcc	%xcc,	%i1,	%g2
loop_5445:
	ldd	[%l7 + 0x58],	%f0
	stx	%i4,	[%l7 + 0x28]
	movrgz	%i7,	%l4,	%g5
	fble	%fcc1,	loop_5446
	ld	[%l7 + 0x28],	%f3
	st	%f7,	[%l7 + 0x1C]
	ldsb	[%l7 + 0x45],	%g7
loop_5446:
	ldx	[%l7 + 0x38],	%o6
	fmovdcc	%icc,	%f7,	%f1
	tsubcctv	%o3,	%l2,	%o5
	movl	%xcc,	%g1,	%i2
	fmovrsne	%o1,	%f5,	%f7
	ldsw	[%l7 + 0x44],	%l0
	bgu	loop_5447
	bg,pt	%icc,	loop_5448
	ldsb	[%l7 + 0x0B],	%l1
	ld	[%l7 + 0x78],	%f0
loop_5447:
	tne	%xcc,	0x5
loop_5448:
	brlz	%o0,	loop_5449
	fmovdleu	%xcc,	%f0,	%f2
	umul	%i3,	%l6,	%i0
	lduw	[%l7 + 0x48],	%o4
loop_5449:
	fmovrsne	%g3,	%f15,	%f15
	udiv	%i6,	0x042F,	%l5
	mova	%icc,	%l3,	%o7
	tvc	%icc,	0x0
	mulscc	%o2,	%g4,	%i5
	lduw	[%l7 + 0x14],	%i1
	add	%g6,	0x0CAF,	%g2
	fmovrslz	%i4,	%f11,	%f4
	smul	%l4,	%i7,	%g5
	bcc	%icc,	loop_5450
	tg	%icc,	0x1
	ldub	[%l7 + 0x67],	%g7
	ldsh	[%l7 + 0x76],	%o3
loop_5450:
	fmovdvc	%xcc,	%f4,	%f3
	bgu	%icc,	loop_5451
	subcc	%o6,	%o5,	%l2
	fmovrdgz	%g1,	%f14,	%f0
	edge8n	%i2,	%o1,	%l0
loop_5451:
	subcc	%l1,	0x1259,	%o0
	fcmps	%fcc2,	%f5,	%f8
	fbn	%fcc3,	loop_5452
	stx	%l6,	[%l7 + 0x28]
	lduh	[%l7 + 0x18],	%i3
	subcc	%i0,	0x0FE2,	%o4
loop_5452:
	udiv	%i6,	0x0835,	%g3
	ldsh	[%l7 + 0x68],	%l5
	fmovdvs	%xcc,	%f7,	%f1
	te	%xcc,	0x1
	ldsh	[%l7 + 0x22],	%o7
	fmovsleu	%xcc,	%f3,	%f10
	subcc	%o2,	%g4,	%i5
	fmovrslz	%l3,	%f14,	%f6
	addcc	%i1,	0x1B69,	%g6
	ble,a,pt	%icc,	loop_5453
	fmovrsgz	%i4,	%f8,	%f5
	fxnor	%f2,	%f2,	%f0
	fmovscs	%xcc,	%f13,	%f14
loop_5453:
	ld	[%l7 + 0x6C],	%f14
	lduh	[%l7 + 0x52],	%l4
	lduh	[%l7 + 0x0E],	%i7
	movgu	%xcc,	%g2,	%g5
	bn	%xcc,	loop_5454
	bl,a,pt	%icc,	loop_5455
	fblg,a	%fcc0,	loop_5456
	fnot2	%f12,	%f4
loop_5454:
	fmovrdgz	%o3,	%f0,	%f6
loop_5455:
	subccc	%o6,	%g7,	%l2
loop_5456:
	ldsw	[%l7 + 0x1C],	%o5
	stb	%g1,	[%l7 + 0x61]
	ldub	[%l7 + 0x55],	%i2
	fmovrdgez	%l0,	%f0,	%f12
	fmovsneg	%xcc,	%f15,	%f9
	fmovdgu	%xcc,	%f0,	%f1
	array16	%o1,	%l1,	%o0
	tvs	%icc,	0x1
	std	%f6,	[%l7 + 0x10]
	ldd	[%l7 + 0x10],	%f14
	move	%xcc,	%l6,	%i0
	ldsh	[%l7 + 0x32],	%i3
	ldub	[%l7 + 0x15],	%i6
	ldub	[%l7 + 0x30],	%g3
	tcc	%icc,	0x5
	fpmerge	%f4,	%f10,	%f6
	fand	%f10,	%f12,	%f12
	lduh	[%l7 + 0x50],	%l5
	fpsub16	%f14,	%f2,	%f10
	lduw	[%l7 + 0x70],	%o4
	movge	%icc,	%o7,	%g4
	ldd	[%l7 + 0x30],	%f4
	ldsh	[%l7 + 0x54],	%i5
	fba	%fcc0,	loop_5457
	mova	%icc,	%o2,	%i1
	edge8	%l3,	%g6,	%i4
	stx	%l4,	[%l7 + 0x68]
loop_5457:
	bcc,a,pt	%xcc,	loop_5458
	xor	%i7,	0x10CB,	%g2
	fmovrsne	%o3,	%f0,	%f13
	sub	%o6,	%g5,	%g7
loop_5458:
	sub	%l2,	%g1,	%i2
	fnot1s	%f3,	%f13
	fmovdcs	%icc,	%f13,	%f3
	sth	%l0,	[%l7 + 0x72]
	fmovrdgz	%o5,	%f6,	%f10
	ldx	[%l7 + 0x50],	%o1
	tg	%icc,	0x5
	fbe,a	%fcc0,	loop_5459
	st	%f0,	[%l7 + 0x54]
	fmovdg	%icc,	%f5,	%f8
	fcmpne16	%f14,	%f8,	%l1
loop_5459:
	array32	%l6,	%i0,	%i3
	ldsh	[%l7 + 0x3A],	%i6
	fnands	%f6,	%f7,	%f15
	ba,a,pt	%xcc,	loop_5460
	or	%g3,	%l5,	%o0
	fbn,a	%fcc3,	loop_5461
	ldub	[%l7 + 0x6E],	%o7
loop_5460:
	alignaddrl	%o4,	%i5,	%g4
	stb	%o2,	[%l7 + 0x49]
loop_5461:
	ldsw	[%l7 + 0x50],	%l3
	fmovdle	%xcc,	%f5,	%f9
	taddcctv	%g6,	%i1,	%l4
	ldsb	[%l7 + 0x75],	%i7
	fmovrdgz	%i4,	%f4,	%f2
	fbug,a	%fcc3,	loop_5462
	andcc	%g2,	0x09E1,	%o3
	tcc	%icc,	0x1
	alignaddr	%g5,	%g7,	%l2
loop_5462:
	fmovdvs	%icc,	%f11,	%f3
	movrgez	%g1,	%i2,	%o6
	fornot2	%f6,	%f6,	%f12
	andcc	%o5,	%o1,	%l1
	ldx	[%l7 + 0x30],	%l0
	ldsb	[%l7 + 0x70],	%l6
	std	%f12,	[%l7 + 0x10]
	add	%i0,	0x1B64,	%i6
	bcs,a,pt	%xcc,	loop_5463
	stx	%g3,	[%l7 + 0x08]
	fands	%f6,	%f1,	%f4
	movvs	%icc,	%l5,	%i3
loop_5463:
	movle	%icc,	%o7,	%o4
	fpadd32	%f6,	%f12,	%f0
	fbu,a	%fcc2,	loop_5464
	stb	%i5,	[%l7 + 0x5A]
	ldsb	[%l7 + 0x34],	%g4
	lduw	[%l7 + 0x5C],	%o2
loop_5464:
	fmovda	%xcc,	%f1,	%f1
	brnz,a	%o0,	loop_5465
	stw	%g6,	[%l7 + 0x0C]
	smulcc	%i1,	%l3,	%i7
	movcc	%xcc,	%l4,	%g2
loop_5465:
	fbo,a	%fcc2,	loop_5466
	bge,pn	%xcc,	loop_5467
	andncc	%o3,	%g5,	%i4
	stx	%l2,	[%l7 + 0x30]
loop_5466:
	edge32l	%g1,	%g7,	%o6
loop_5467:
	fcmpgt32	%f6,	%f10,	%i2
	fmovsa	%icc,	%f7,	%f12
	lduw	[%l7 + 0x14],	%o1
	smulcc	%o5,	0x075E,	%l0
	ldsb	[%l7 + 0x4B],	%l1
	fmovdvc	%xcc,	%f5,	%f1
	ldub	[%l7 + 0x57],	%l6
	stw	%i6,	[%l7 + 0x14]
	fzeros	%f7
	ldsw	[%l7 + 0x24],	%g3
	edge16l	%i0,	%i3,	%o7
	ldd	[%l7 + 0x30],	%f6
	stw	%l5,	[%l7 + 0x18]
	fcmpne16	%f14,	%f2,	%o4
	fornot2s	%f9,	%f8,	%f8
	stw	%i5,	[%l7 + 0x64]
	pdist	%f14,	%f8,	%f2
	fmovdge	%xcc,	%f3,	%f6
	subcc	%g4,	%o0,	%o2
	edge8n	%g6,	%l3,	%i7
	sth	%i1,	[%l7 + 0x20]
	movg	%icc,	%g2,	%l4
	lduw	[%l7 + 0x48],	%g5
	fmovdl	%xcc,	%f15,	%f8
	std	%f8,	[%l7 + 0x08]
	lduw	[%l7 + 0x74],	%o3
	fandnot1	%f14,	%f2,	%f10
	fpack32	%f8,	%f2,	%f2
	fmovdge	%icc,	%f13,	%f13
	fmovrdgez	%l2,	%f12,	%f12
	movrne	%g1,	%g7,	%o6
	movn	%icc,	%i4,	%o1
	ld	[%l7 + 0x70],	%f13
	sethi	0x122A,	%i2
	lduh	[%l7 + 0x1E],	%o5
	fmovdle	%xcc,	%f4,	%f8
	sllx	%l1,	%l0,	%i6
	movre	%l6,	0x0C6,	%g3
	fmovde	%xcc,	%f9,	%f13
	fsrc2	%f14,	%f4
	fmovdn	%icc,	%f5,	%f14
	fcmpeq32	%f6,	%f12,	%i3
	bcc	loop_5468
	popc	%o7,	%i0
	fbne,a	%fcc1,	loop_5469
	stw	%o4,	[%l7 + 0x7C]
loop_5468:
	fmovspos	%icc,	%f12,	%f6
	fmovrdne	%l5,	%f10,	%f10
loop_5469:
	fmovrde	%i5,	%f8,	%f8
	bleu,pt	%xcc,	loop_5470
	ldub	[%l7 + 0x40],	%g4
	edge8l	%o2,	%g6,	%o0
	fmovse	%xcc,	%f12,	%f0
loop_5470:
	fpsub16	%f0,	%f8,	%f14
	popc	%l3,	%i7
	brlez,a	%g2,	loop_5471
	fbg	%fcc3,	loop_5472
	sdivcc	%i1,	0x1E4F,	%l4
	move	%xcc,	%o3,	%l2
loop_5471:
	fpsub32	%f6,	%f0,	%f14
loop_5472:
	mulscc	%g1,	0x0EEB,	%g5
	brlez	%o6,	loop_5473
	fmovsne	%xcc,	%f5,	%f8
	std	%f8,	[%l7 + 0x48]
	ldd	[%l7 + 0x08],	%f12
loop_5473:
	fmovsvc	%xcc,	%f12,	%f1
	ldsw	[%l7 + 0x30],	%i4
	fpsub16	%f8,	%f12,	%f6
	movre	%o1,	%i2,	%g7
	lduh	[%l7 + 0x20],	%o5
	fmul8ulx16	%f2,	%f10,	%f8
	fmovdl	%icc,	%f1,	%f12
	tl	%xcc,	0x6
	for	%f12,	%f4,	%f6
	brgez,a	%l0,	loop_5474
	tne	%xcc,	0x4
	ld	[%l7 + 0x24],	%f15
	fones	%f4
loop_5474:
	movle	%xcc,	%i6,	%l1
	bvs	%icc,	loop_5475
	fmovrdlz	%g3,	%f0,	%f12
	movgu	%icc,	%i3,	%o7
	taddcc	%l6,	0x136A,	%o4
loop_5475:
	fpsub16	%f12,	%f4,	%f2
	stb	%i0,	[%l7 + 0x50]
	nop
	setx loop_5476, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovdvs	%icc,	%f4,	%f1
	fmovse	%icc,	%f0,	%f4
	movg	%icc,	%l5,	%i5
loop_5476:
	ldsh	[%l7 + 0x42],	%o2
	sdiv	%g6,	0x1826,	%o0
	fbule	%fcc2,	loop_5477
	xnorcc	%g4,	0x1CA9,	%l3
	fcmpd	%fcc3,	%f10,	%f8
	fone	%f12
loop_5477:
	subcc	%i7,	%g2,	%l4
	movrne	%o3,	0x1D0,	%i1
	pdist	%f0,	%f8,	%f6
	fxors	%f8,	%f1,	%f0
	ble,pt	%icc,	loop_5478
	std	%f10,	[%l7 + 0x10]
	array32	%g1,	%g5,	%l2
	fmovd	%f4,	%f8
loop_5478:
	subccc	%i4,	0x12E3,	%o6
	andcc	%o1,	%i2,	%o5
	subcc	%l0,	0x0A7A,	%i6
	brgez	%g7,	loop_5479
	fbn,a	%fcc2,	loop_5480
	movpos	%xcc,	%l1,	%i3
	stw	%o7,	[%l7 + 0x0C]
loop_5479:
	fmovsleu	%icc,	%f12,	%f5
loop_5480:
	ld	[%l7 + 0x34],	%f4
	tg	%icc,	0x3
	andcc	%g3,	%o4,	%l6
	fbne,a	%fcc0,	loop_5481
	fmovrdne	%l5,	%f12,	%f4
	fbn,a	%fcc0,	loop_5482
	sllx	%i0,	%o2,	%i5
loop_5481:
	ldsh	[%l7 + 0x50],	%g6
	fnor	%f12,	%f14,	%f0
loop_5482:
	fmuld8ulx16	%f14,	%f2,	%f12
	movn	%xcc,	%g4,	%o0
	lduh	[%l7 + 0x0C],	%l3
	ldx	[%l7 + 0x30],	%g2
	fcmple32	%f4,	%f12,	%l4
	fandnot1s	%f2,	%f12,	%f7
	bpos	loop_5483
	bgu,pn	%xcc,	loop_5484
	umul	%i7,	%o3,	%g1
	srl	%g5,	%l2,	%i4
loop_5483:
	bn	loop_5485
loop_5484:
	fbe,a	%fcc3,	loop_5486
	ble	loop_5487
	fmovd	%f12,	%f8
loop_5485:
	edge32l	%i1,	%o1,	%i2
loop_5486:
	ldsw	[%l7 + 0x48],	%o5
loop_5487:
	fmovrsgz	%o6,	%f2,	%f9
	std	%f8,	[%l7 + 0x60]
	ldub	[%l7 + 0x52],	%l0
	fcmple32	%f10,	%f4,	%i6
	st	%f0,	[%l7 + 0x60]
	fbuge	%fcc2,	loop_5488
	fands	%f6,	%f7,	%f2
	xorcc	%l1,	0x02C4,	%i3
	subcc	%g7,	0x1C7E,	%g3
loop_5488:
	sth	%o7,	[%l7 + 0x18]
	fmovsn	%xcc,	%f15,	%f4
	udivx	%l6,	0x19FB,	%l5
	std	%f0,	[%l7 + 0x40]
	fnot2s	%f13,	%f6
	xnor	%o4,	%i0,	%i5
	stb	%g6,	[%l7 + 0x08]
	ldx	[%l7 + 0x10],	%g4
	fbu,a	%fcc3,	loop_5489
	ldub	[%l7 + 0x1D],	%o0
	umulcc	%l3,	0x174A,	%g2
	ldx	[%l7 + 0x30],	%l4
loop_5489:
	stx	%o2,	[%l7 + 0x40]
	addccc	%o3,	0x0349,	%i7
	st	%f11,	[%l7 + 0x50]
	sth	%g5,	[%l7 + 0x1A]
	ld	[%l7 + 0x24],	%f9
	movvs	%xcc,	%l2,	%g1
	stx	%i4,	[%l7 + 0x18]
	ldx	[%l7 + 0x20],	%i1
	ldsb	[%l7 + 0x13],	%i2
	xorcc	%o1,	%o6,	%l0
	fmovdleu	%icc,	%f10,	%f6
	sth	%i6,	[%l7 + 0x5E]
	std	%f8,	[%l7 + 0x38]
	bvs,pn	%icc,	loop_5490
	movl	%icc,	%o5,	%l1
	stw	%g7,	[%l7 + 0x2C]
	nop
	setx loop_5491, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
loop_5490:
	st	%f1,	[%l7 + 0x78]
	fnot2s	%f1,	%f3
	lduw	[%l7 + 0x24],	%g3
loop_5491:
	ldd	[%l7 + 0x10],	%f2
	stx	%o7,	[%l7 + 0x18]
	bvs,a	loop_5492
	fmovsle	%icc,	%f5,	%f13
	ldd	[%l7 + 0x08],	%f4
	ldsh	[%l7 + 0x0E],	%l6
loop_5492:
	tneg	%icc,	0x7
	mulscc	%i3,	0x0739,	%o4
	array8	%l5,	%i5,	%g6
	fcmpeq16	%f10,	%f8,	%i0
	lduw	[%l7 + 0x40],	%g4
	nop
	setx loop_5493, %l0, %l1
	jmpl %l1, %l3
	movle	%xcc,	%g2,	%o0
	fmovdvc	%xcc,	%f1,	%f10
	fbn	%fcc3,	loop_5494
loop_5493:
	movrlz	%l4,	0x000,	%o2
	tne	%xcc,	0x4
	fpsub16	%f6,	%f14,	%f2
loop_5494:
	fpadd16	%f4,	%f14,	%f8
	fcmpne16	%f2,	%f14,	%o3
	std	%f8,	[%l7 + 0x38]
	lduw	[%l7 + 0x1C],	%i7
	bg,pn	%icc,	loop_5495
	edge8n	%l2,	%g5,	%i4
	fmovsgu	%xcc,	%f14,	%f8
	fcmple16	%f12,	%f4,	%i1
loop_5495:
	lduh	[%l7 + 0x50],	%i2
	fbne	%fcc0,	loop_5496
	fmovrdlez	%o1,	%f6,	%f0
	tn	%icc,	0x5
	fbge	%fcc0,	loop_5497
loop_5496:
	stw	%g1,	[%l7 + 0x50]
	fmovde	%icc,	%f7,	%f1
	xnorcc	%o6,	0x1446,	%l0
loop_5497:
	fmovde	%icc,	%f7,	%f1
	fmovsle	%icc,	%f13,	%f1
	bcc,pt	%xcc,	loop_5498
	fba,a	%fcc3,	loop_5499
	fbo,a	%fcc2,	loop_5500
	lduw	[%l7 + 0x64],	%o5
loop_5498:
	fmovsleu	%xcc,	%f0,	%f10
loop_5499:
	fpadd32s	%f7,	%f2,	%f2
loop_5500:
	sth	%l1,	[%l7 + 0x28]
	fand	%f10,	%f10,	%f10
	faligndata	%f4,	%f6,	%f12
	stw	%i6,	[%l7 + 0x18]
	fmovsa	%xcc,	%f7,	%f1
	fsrc1	%f2,	%f2
	tne	%xcc,	0x1
	lduh	[%l7 + 0x0E],	%g3
	ba,pt	%xcc,	loop_5501
	ldub	[%l7 + 0x1C],	%g7
	fmovsa	%xcc,	%f1,	%f13
	fmovsvs	%icc,	%f14,	%f3
loop_5501:
	movrgz	%o7,	%l6,	%o4
	fors	%f14,	%f3,	%f14
	brz	%i3,	loop_5502
	movpos	%icc,	%i5,	%g6
	fsrc2s	%f15,	%f2
	smul	%i0,	%l5,	%g4
loop_5502:
	stx	%l3,	[%l7 + 0x40]
	movneg	%xcc,	%g2,	%o0
	tneg	%xcc,	0x0
	ldsw	[%l7 + 0x2C],	%l4
	ld	[%l7 + 0x48],	%f13
	fzeros	%f4
	fcmps	%fcc2,	%f6,	%f6
	fmovsne	%xcc,	%f1,	%f12
	fxnors	%f15,	%f2,	%f0
	stw	%o2,	[%l7 + 0x7C]
	tl	%xcc,	0x2
	stw	%o3,	[%l7 + 0x50]
	nop
	setx loop_5503, %l0, %l1
	jmpl %l1, %i7
	orn	%l2,	%i4,	%i1
	ldd	[%l7 + 0x40],	%f12
	fmovdcs	%xcc,	%f14,	%f9
loop_5503:
	tl	%icc,	0x0
	fbul,a	%fcc0,	loop_5504
	st	%f7,	[%l7 + 0x38]
	movge	%xcc,	%g5,	%o1
	movrlz	%i2,	%o6,	%g1
loop_5504:
	sth	%o5,	[%l7 + 0x5E]
	lduw	[%l7 + 0x40],	%l0
	fmovrdlez	%l1,	%f0,	%f8
	bshuffle	%f0,	%f10,	%f12
	smulcc	%g3,	0x1C22,	%g7
	ldd	[%l7 + 0x20],	%f2
	fnot1s	%f9,	%f14
	fmovsa	%xcc,	%f10,	%f4
	addcc	%o7,	0x1FDB,	%l6
	ldx	[%l7 + 0x58],	%i6
	fpsub16s	%f4,	%f11,	%f2
	sth	%i3,	[%l7 + 0x70]
	edge16l	%i5,	%o4,	%i0
	ldsb	[%l7 + 0x09],	%l5
	and	%g4,	%l3,	%g6
	sth	%o0,	[%l7 + 0x40]
	fnot1s	%f13,	%f4
	te	%icc,	0x5
	lduw	[%l7 + 0x5C],	%l4
	nop
	setx loop_5505, %l0, %l1
	jmpl %l1, %o2
	lduh	[%l7 + 0x2A],	%o3
	tle	%xcc,	0x7
	brnz,a	%g2,	loop_5506
loop_5505:
	brgez	%i7,	loop_5507
	nop
	setx loop_5508, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	ta	%icc,	0x4
loop_5506:
	fmovsneg	%xcc,	%f7,	%f2
loop_5507:
	bvc,a	%icc,	loop_5509
loop_5508:
	ldsw	[%l7 + 0x4C],	%i4
	ldsh	[%l7 + 0x10],	%l2
	ldub	[%l7 + 0x5E],	%g5
loop_5509:
	edge16	%i1,	%o1,	%o6
	fmovrdgez	%i2,	%f4,	%f0
	fpsub32s	%f10,	%f10,	%f2
	fcmpne16	%f0,	%f8,	%g1
	sdiv	%l0,	0x195E,	%o5
	fpmerge	%f3,	%f5,	%f14
	fpsub32	%f14,	%f14,	%f12
	tn	%xcc,	0x2
	fmovrdgz	%g3,	%f14,	%f4
	array16	%g7,	%l1,	%o7
	fbu,a	%fcc1,	loop_5510
	lduh	[%l7 + 0x60],	%i6
	sll	%i3,	%i5,	%l6
	tgu	%icc,	0x7
loop_5510:
	subcc	%o4,	%i0,	%g4
	stb	%l3,	[%l7 + 0x13]
	stx	%l5,	[%l7 + 0x20]
	be,a	%icc,	loop_5511
	brz,a	%o0,	loop_5512
	fpack32	%f8,	%f2,	%f8
	bvs,a	%icc,	loop_5513
loop_5511:
	ldd	[%l7 + 0x10],	%f10
loop_5512:
	fxnor	%f0,	%f6,	%f14
	edge32l	%l4,	%g6,	%o2
loop_5513:
	fexpand	%f12,	%f12
	addcc	%o3,	0x0233,	%i7
	fmovscs	%icc,	%f15,	%f15
	movrgz	%i4,	0x232,	%g2
	movcs	%xcc,	%l2,	%g5
	brgez	%o1,	loop_5514
	sth	%o6,	[%l7 + 0x5A]
	tge	%icc,	0x2
	ldsh	[%l7 + 0x46],	%i2
loop_5514:
	fmovrdlez	%g1,	%f14,	%f0
	nop
	setx loop_5515, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	lduh	[%l7 + 0x0E],	%l0
	bgu,a	%icc,	loop_5516
	fpadd32	%f12,	%f8,	%f12
loop_5515:
	stb	%i1,	[%l7 + 0x4B]
	ldd	[%l7 + 0x10],	%f10
loop_5516:
	smulcc	%o5,	%g7,	%g3
	srlx	%l1,	%i6,	%i3
	popc	%i5,	%l6
	ldub	[%l7 + 0x35],	%o4
	bn,pt	%xcc,	loop_5517
	fcmpeq16	%f6,	%f2,	%i0
	ldsh	[%l7 + 0x42],	%o7
	umul	%g4,	0x0566,	%l5
loop_5517:
	st	%f13,	[%l7 + 0x30]
	edge16n	%o0,	%l4,	%l3
	lduh	[%l7 + 0x0E],	%o2
	edge16l	%g6,	%i7,	%i4
	smul	%o3,	0x0A63,	%l2
	nop
	setx loop_5518, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovdneg	%icc,	%f3,	%f5
	stb	%g5,	[%l7 + 0x69]
	ldd	[%l7 + 0x28],	%f12
loop_5518:
	fnor	%f8,	%f2,	%f0
	fmovsne	%xcc,	%f1,	%f3
	ldx	[%l7 + 0x30],	%o1
	tge	%xcc,	0x2
	fbl,a	%fcc2,	loop_5519
	tleu	%icc,	0x7
	sub	%g2,	0x11DB,	%o6
	fmovrdgz	%g1,	%f12,	%f6
loop_5519:
	bvc	loop_5520
	stx	%i2,	[%l7 + 0x38]
	fcmpeq16	%f14,	%f10,	%l0
	edge8	%o5,	%i1,	%g3
loop_5520:
	bne	%xcc,	loop_5521
	fbul,a	%fcc1,	loop_5522
	edge8l	%g7,	%i6,	%l1
	movvs	%icc,	%i3,	%i5
loop_5521:
	fbue,a	%fcc1,	loop_5523
loop_5522:
	fmovrdlz	%o4,	%f10,	%f0
	bneg,a,pn	%icc,	loop_5524
	std	%f8,	[%l7 + 0x38]
loop_5523:
	ldub	[%l7 + 0x6D],	%i0
	fmovrdgz	%o7,	%f6,	%f4
loop_5524:
	ldsb	[%l7 + 0x22],	%g4
	sth	%l5,	[%l7 + 0x5E]
	tgu	%xcc,	0x3
	fbule	%fcc1,	loop_5525
	lduw	[%l7 + 0x48],	%o0
	fcmpne32	%f6,	%f2,	%l6
	nop
	setx loop_5526, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_5525:
	fnegs	%f0,	%f6
	edge16ln	%l4,	%l3,	%g6
	stw	%o2,	[%l7 + 0x14]
loop_5526:
	fbul	%fcc0,	loop_5527
	fmovsleu	%xcc,	%f7,	%f2
	stw	%i7,	[%l7 + 0x48]
	fmovdcs	%icc,	%f13,	%f12
loop_5527:
	fmovsn	%icc,	%f5,	%f13
	fmovsneg	%xcc,	%f13,	%f15
	movne	%icc,	%o3,	%i4
	fmovscs	%icc,	%f8,	%f7
	ldub	[%l7 + 0x2D],	%l2
	srax	%o1,	0x06,	%g5
	fbuge,a	%fcc1,	loop_5528
	movrgez	%g2,	0x229,	%o6
	edge8n	%g1,	%l0,	%o5
	ldsh	[%l7 + 0x54],	%i2
loop_5528:
	lduw	[%l7 + 0x68],	%i1
	umulcc	%g3,	%g7,	%l1
	movrgez	%i6,	0x2B9,	%i3
	fnot1s	%f5,	%f3
	ldsh	[%l7 + 0x36],	%i5
	lduh	[%l7 + 0x7C],	%o4
	stx	%i0,	[%l7 + 0x50]
	movgu	%xcc,	%g4,	%l5
	fpsub32	%f6,	%f14,	%f8
	ldsh	[%l7 + 0x40],	%o7
	udivx	%l6,	0x1AC2,	%o0
	movrgz	%l4,	%l3,	%o2
	tsubcc	%i7,	%g6,	%o3
	fmuld8sux16	%f6,	%f6,	%f12
	fmovdvc	%xcc,	%f13,	%f15
	edge16	%i4,	%o1,	%l2
	ldsh	[%l7 + 0x44],	%g2
	fornot2s	%f15,	%f15,	%f4
	smul	%g5,	%g1,	%l0
	ldub	[%l7 + 0x44],	%o5
	movpos	%xcc,	%i2,	%i1
	bleu,pt	%icc,	loop_5529
	bcs	loop_5530
	fcmps	%fcc1,	%f3,	%f13
	fmovdcc	%icc,	%f5,	%f13
loop_5529:
	fbn,a	%fcc3,	loop_5531
loop_5530:
	fpack16	%f8,	%f6
	bpos	loop_5532
	lduh	[%l7 + 0x3E],	%o6
loop_5531:
	ld	[%l7 + 0x64],	%f11
	fxnors	%f11,	%f3,	%f0
loop_5532:
	ldub	[%l7 + 0x33],	%g3
	addc	%g7,	0x0517,	%i6
	fcmpeq16	%f14,	%f14,	%l1
	ldub	[%l7 + 0x18],	%i3
	movvs	%xcc,	%i5,	%o4
	fcmple32	%f14,	%f0,	%g4
	stw	%i0,	[%l7 + 0x24]
	ldx	[%l7 + 0x18],	%l5
	ba,pn	%xcc,	loop_5533
	or	%o7,	%l6,	%l4
	fbo	%fcc0,	loop_5534
	ld	[%l7 + 0x34],	%f1
loop_5533:
	sra	%l3,	0x11,	%o2
	ldx	[%l7 + 0x60],	%o0
loop_5534:
	lduw	[%l7 + 0x70],	%i7
	lduw	[%l7 + 0x24],	%g6
	ldsb	[%l7 + 0x2F],	%i4
	or	%o3,	%l2,	%g2
	call	loop_5535
	ba,a	%icc,	loop_5536
	addcc	%o1,	0x0F22,	%g1
	fmovrslez	%g5,	%f8,	%f14
loop_5535:
	brlz	%l0,	loop_5537
loop_5536:
	addcc	%o5,	%i1,	%o6
	brgez	%g3,	loop_5538
	ld	[%l7 + 0x54],	%f8
loop_5537:
	fmovsa	%xcc,	%f2,	%f2
	brgez	%g7,	loop_5539
loop_5538:
	tpos	%xcc,	0x4
	fornot1	%f14,	%f12,	%f10
	movleu	%icc,	%i2,	%i6
loop_5539:
	fbge,a	%fcc0,	loop_5540
	be,pt	%xcc,	loop_5541
	ldd	[%l7 + 0x10],	%f10
	sth	%l1,	[%l7 + 0x20]
loop_5540:
	fnegs	%f9,	%f2
loop_5541:
	ldx	[%l7 + 0x08],	%i5
	fmovsgu	%icc,	%f0,	%f0
	alignaddr	%o4,	%g4,	%i0
	fmul8sux16	%f0,	%f14,	%f8
	fone	%f0
	st	%f7,	[%l7 + 0x70]
	fmovs	%f8,	%f12
	fmovdl	%icc,	%f3,	%f3
	lduh	[%l7 + 0x18],	%i3
	movneg	%icc,	%o7,	%l6
	fmovdge	%xcc,	%f3,	%f7
	fmovdle	%icc,	%f5,	%f6
	fones	%f11
	siam	0x3
	lduw	[%l7 + 0x48],	%l4
	lduh	[%l7 + 0x42],	%l5
	ldd	[%l7 + 0x10],	%f8
	subccc	%l3,	0x0593,	%o2
	fmul8x16	%f8,	%f2,	%f8
	stw	%o0,	[%l7 + 0x50]
	ldx	[%l7 + 0x60],	%i7
	std	%f6,	[%l7 + 0x60]
	fmovrslz	%i4,	%f7,	%f11
	fmovrdlz	%o3,	%f8,	%f14
	fandnot1	%f4,	%f4,	%f8
	fpack32	%f8,	%f8,	%f0
	stw	%g6,	[%l7 + 0x68]
	fpackfix	%f6,	%f10
	bvs,a,pt	%xcc,	loop_5542
	fmovrsne	%l2,	%f9,	%f13
	orn	%o1,	0x1CF4,	%g1
	std	%f8,	[%l7 + 0x28]
loop_5542:
	ldsb	[%l7 + 0x75],	%g2
	edge16n	%l0,	%g5,	%i1
	taddcc	%o6,	%o5,	%g3
	std	%f12,	[%l7 + 0x20]
	sth	%g7,	[%l7 + 0x1C]
	ldd	[%l7 + 0x20],	%f6
	udiv	%i2,	0x00AD,	%l1
	bvc	%xcc,	loop_5543
	edge32	%i6,	%o4,	%i5
	edge8l	%g4,	%i0,	%i3
	edge32l	%o7,	%l4,	%l5
loop_5543:
	movn	%xcc,	%l3,	%l6
	lduh	[%l7 + 0x48],	%o0
	lduw	[%l7 + 0x6C],	%o2
	ldsh	[%l7 + 0x1E],	%i4
	be,pn	%xcc,	loop_5544
	std	%f2,	[%l7 + 0x68]
	movg	%icc,	%i7,	%g6
	fmuld8ulx16	%f7,	%f4,	%f12
loop_5544:
	ba	%icc,	loop_5545
	movleu	%xcc,	%o3,	%l2
	taddcctv	%o1,	0x17F6,	%g1
	sdivx	%g2,	0x1FBE,	%l0
loop_5545:
	lduw	[%l7 + 0x18],	%g5
	ldd	[%l7 + 0x40],	%f8
	lduh	[%l7 + 0x16],	%o6
	sub	%i1,	%g3,	%o5
	and	%i2,	%l1,	%g7
	bvs	%icc,	loop_5546
	alignaddrl	%o4,	%i6,	%g4
	fmul8x16	%f13,	%f4,	%f14
	fbu,a	%fcc2,	loop_5547
loop_5546:
	stb	%i5,	[%l7 + 0x08]
	bge,pt	%xcc,	loop_5548
	std	%f4,	[%l7 + 0x50]
loop_5547:
	stw	%i0,	[%l7 + 0x50]
	movvs	%icc,	%i3,	%o7
loop_5548:
	edge32l	%l5,	%l3,	%l6
	movleu	%icc,	%l4,	%o2
	fba,a	%fcc2,	loop_5549
	fmovdgu	%xcc,	%f13,	%f3
	fnegs	%f2,	%f11
	fmovrdgz	%i4,	%f10,	%f4
loop_5549:
	fbge,a	%fcc2,	loop_5550
	edge8n	%i7,	%g6,	%o3
	fnot2	%f0,	%f2
	brz	%l2,	loop_5551
loop_5550:
	fcmped	%fcc3,	%f0,	%f6
	movrgez	%o1,	0x0AC,	%g1
	fmovdvs	%xcc,	%f8,	%f10
loop_5551:
	movge	%xcc,	%g2,	%o0
	fsrc1s	%f11,	%f8
	andcc	%g5,	0x1C5B,	%l0
	fbo	%fcc2,	loop_5552
	taddcctv	%o6,	0x1BD7,	%i1
	ldsb	[%l7 + 0x49],	%g3
	ldd	[%l7 + 0x18],	%f0
loop_5552:
	movrlez	%i2,	%l1,	%g7
	ldub	[%l7 + 0x50],	%o4
	ldsh	[%l7 + 0x52],	%o5
	andn	%g4,	%i5,	%i6
	and	%i0,	%i3,	%l5
	bpos	loop_5553
	bcs	%xcc,	loop_5554
	fornot2	%f6,	%f8,	%f4
	stw	%o7,	[%l7 + 0x78]
loop_5553:
	fbue,a	%fcc2,	loop_5555
loop_5554:
	ld	[%l7 + 0x78],	%f7
	fmovrsgez	%l6,	%f14,	%f1
	ldsh	[%l7 + 0x1E],	%l3
loop_5555:
	alignaddr	%o2,	%l4,	%i7
	alignaddrl	%g6,	%o3,	%i4
	lduw	[%l7 + 0x74],	%l2
	tsubcc	%o1,	0x0063,	%g2
	fnot2	%f2,	%f4
	nop
	setx loop_5556, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovrse	%o0,	%f8,	%f12
	stw	%g1,	[%l7 + 0x14]
	ldd	[%l7 + 0x10],	%f4
loop_5556:
	ldsb	[%l7 + 0x56],	%l0
	edge8l	%o6,	%g5,	%i1
	mova	%xcc,	%i2,	%g3
	fpadd16s	%f9,	%f6,	%f15
	fxor	%f0,	%f14,	%f14
	fcmpeq16	%f14,	%f12,	%g7
	subc	%l1,	0x1E8A,	%o4
	movg	%icc,	%g4,	%i5
	std	%f6,	[%l7 + 0x20]
	movg	%xcc,	%o5,	%i6
	ldx	[%l7 + 0x38],	%i0
	st	%f6,	[%l7 + 0x7C]
	fandnot2s	%f7,	%f15,	%f15
	addc	%i3,	%l5,	%o7
	st	%f5,	[%l7 + 0x3C]
	fmovsn	%xcc,	%f3,	%f8
	nop
	setx loop_5557, %l0, %l1
	jmpl %l1, %l3
	tne	%xcc,	0x4
	fmovsa	%xcc,	%f4,	%f9
	std	%f8,	[%l7 + 0x60]
loop_5557:
	popc	%o2,	%l6
	be,pn	%icc,	loop_5558
	sth	%l4,	[%l7 + 0x5A]
	ldsb	[%l7 + 0x57],	%i7
	bn,pn	%icc,	loop_5559
loop_5558:
	for	%f2,	%f4,	%f14
	lduw	[%l7 + 0x48],	%g6
	fcmpes	%fcc1,	%f4,	%f7
loop_5559:
	fbug	%fcc1,	loop_5560
	tleu	%icc,	0x7
	bpos,a	loop_5561
	fcmpeq32	%f6,	%f6,	%i4
loop_5560:
	fnor	%f10,	%f8,	%f8
	fmovd	%f4,	%f0
loop_5561:
	fmovsleu	%icc,	%f0,	%f5
	sethi	0x11CA,	%o3
	fornot2s	%f3,	%f4,	%f6
	tn	%xcc,	0x0
	fsrc2s	%f11,	%f12
	xorcc	%o1,	0x1FE0,	%g2
	fmovrsne	%o0,	%f5,	%f0
	sth	%g1,	[%l7 + 0x26]
	fmul8x16al	%f10,	%f14,	%f4
	stx	%l2,	[%l7 + 0x58]
	fmovdneg	%icc,	%f3,	%f6
	fandnot1s	%f1,	%f5,	%f3
	ldsh	[%l7 + 0x52],	%o6
	edge16ln	%g5,	%l0,	%i2
	taddcctv	%g3,	%g7,	%i1
	mulx	%l1,	0x0EA9,	%o4
	fsrc2s	%f13,	%f10
	fbuge	%fcc0,	loop_5562
	movrgz	%g4,	0x21D,	%i5
	ldsw	[%l7 + 0x24],	%i6
	fmul8ulx16	%f4,	%f4,	%f8
loop_5562:
	call	loop_5563
	ldd	[%l7 + 0x70],	%f4
	fmovrslez	%o5,	%f8,	%f5
	fmovrdlez	%i0,	%f12,	%f8
loop_5563:
	xorcc	%i3,	%o7,	%l5
	orn	%l3,	%l6,	%l4
	tleu	%xcc,	0x5
	ldub	[%l7 + 0x66],	%o2
	lduw	[%l7 + 0x34],	%g6
	fbue	%fcc3,	loop_5564
	fpsub16	%f2,	%f10,	%f0
	movne	%icc,	%i4,	%i7
	tcs	%xcc,	0x7
loop_5564:
	sth	%o1,	[%l7 + 0x38]
	sth	%o3,	[%l7 + 0x66]
	xnorcc	%g2,	0x0E24,	%g1
	popc	%l2,	%o0
	tle	%icc,	0x4
	std	%f6,	[%l7 + 0x50]
	fmovscs	%xcc,	%f0,	%f2
	fmovsl	%icc,	%f4,	%f12
	fmovrdgz	%o6,	%f8,	%f8
	bn	loop_5565
	ldub	[%l7 + 0x7E],	%g5
	array32	%i2,	%l0,	%g7
	fmul8ulx16	%f2,	%f8,	%f4
loop_5565:
	fnot1	%f10,	%f14
	edge16n	%g3,	%i1,	%l1
	bcs	loop_5566
	fbn,a	%fcc2,	loop_5567
	tsubcc	%o4,	%g4,	%i6
	edge16n	%o5,	%i0,	%i3
loop_5566:
	brz,a	%o7,	loop_5568
loop_5567:
	smulcc	%i5,	0x0FB1,	%l5
	fbug	%fcc3,	loop_5569
	fmovrsgz	%l3,	%f3,	%f12
loop_5568:
	fornot1s	%f0,	%f10,	%f0
	ldd	[%l7 + 0x40],	%f0
loop_5569:
	stx	%l4,	[%l7 + 0x38]
	fbule,a	%fcc0,	loop_5570
	brgez	%l6,	loop_5571
	ldsw	[%l7 + 0x38],	%o2
	tcc	%icc,	0x0
loop_5570:
	fsrc1	%f6,	%f10
loop_5571:
	fmovdvc	%xcc,	%f7,	%f1
	fmuld8ulx16	%f4,	%f10,	%f12
	fbn,a	%fcc3,	loop_5572
	fexpand	%f7,	%f10
	andn	%i4,	0x0525,	%g6
	ldub	[%l7 + 0x10],	%i7
loop_5572:
	te	%icc,	0x1
	andncc	%o3,	%o1,	%g1
	fble,a	%fcc2,	loop_5573
	stb	%g2,	[%l7 + 0x56]
	fbuge	%fcc3,	loop_5574
	tne	%xcc,	0x2
loop_5573:
	fcmpd	%fcc2,	%f14,	%f0
	ldsb	[%l7 + 0x39],	%o0
loop_5574:
	fmovdneg	%icc,	%f6,	%f3
	sllx	%o6,	0x16,	%g5
	fmovrsgez	%i2,	%f9,	%f13
	ldd	[%l7 + 0x70],	%f12
	ldsh	[%l7 + 0x56],	%l0
	sdivcc	%g7,	0x1076,	%l2
	faligndata	%f14,	%f12,	%f12
	stx	%i1,	[%l7 + 0x10]
	edge16n	%g3,	%o4,	%l1
	ldub	[%l7 + 0x62],	%g4
	fmovrslz	%o5,	%f1,	%f6
	movrne	%i0,	0x3CD,	%i3
	fbe,a	%fcc2,	loop_5575
	ld	[%l7 + 0x4C],	%f6
	call	loop_5576
	popc	%o7,	%i5
loop_5575:
	edge16ln	%i6,	%l5,	%l3
	tne	%icc,	0x6
loop_5576:
	st	%f11,	[%l7 + 0x10]
	bcc,a	loop_5577
	lduw	[%l7 + 0x1C],	%l6
	movgu	%icc,	%o2,	%i4
	lduw	[%l7 + 0x60],	%g6
loop_5577:
	fzero	%f4
	fpadd16	%f10,	%f2,	%f12
	edge16n	%i7,	%o3,	%l4
	movcs	%xcc,	%g1,	%g2
	ldsh	[%l7 + 0x24],	%o0
	edge16l	%o6,	%g5,	%o1
	bvc,a,pt	%icc,	loop_5578
	sllx	%l0,	%g7,	%i2
	sth	%i1,	[%l7 + 0x5C]
	fmovdvs	%xcc,	%f4,	%f11
loop_5578:
	fandnot1s	%f6,	%f10,	%f9
	ld	[%l7 + 0x44],	%f12
	ba,pn	%xcc,	loop_5579
	fmovrdlz	%g3,	%f8,	%f8
	ldx	[%l7 + 0x58],	%o4
	fnegs	%f5,	%f6
loop_5579:
	and	%l1,	%g4,	%l2
	fnand	%f12,	%f4,	%f10
	umul	%o5,	0x0F14,	%i3
	fmovrdgez	%i0,	%f8,	%f0
	edge16ln	%i5,	%o7,	%i6
	stb	%l5,	[%l7 + 0x1A]
	ldx	[%l7 + 0x68],	%l6
	udiv	%o2,	0x1932,	%i4
	ldd	[%l7 + 0x20],	%f14
	fpadd32	%f10,	%f2,	%f8
	fcmpd	%fcc3,	%f12,	%f6
	fmovrdgz	%l3,	%f4,	%f4
	sth	%g6,	[%l7 + 0x62]
	bn	%xcc,	loop_5580
	fcmpeq16	%f8,	%f14,	%i7
	fnands	%f9,	%f6,	%f8
	fxor	%f0,	%f14,	%f0
loop_5580:
	fmovs	%f5,	%f13
	ldsw	[%l7 + 0x2C],	%o3
	lduw	[%l7 + 0x70],	%g1
	fmovrdgez	%g2,	%f4,	%f8
	fmovsleu	%xcc,	%f13,	%f1
	sth	%o0,	[%l7 + 0x78]
	fbue	%fcc2,	loop_5581
	fnegd	%f8,	%f2
	lduw	[%l7 + 0x18],	%l4
	stx	%o6,	[%l7 + 0x40]
loop_5581:
	brgez,a	%o1,	loop_5582
	ld	[%l7 + 0x78],	%f15
	alignaddrl	%g5,	%g7,	%l0
	fba	%fcc0,	loop_5583
loop_5582:
	ldd	[%l7 + 0x78],	%f8
	stw	%i2,	[%l7 + 0x20]
	sth	%i1,	[%l7 + 0x2E]
loop_5583:
	ld	[%l7 + 0x08],	%f4
	movrgez	%o4,	0x291,	%l1
	stb	%g4,	[%l7 + 0x0B]
	fpack16	%f14,	%f6
	movne	%xcc,	%g3,	%l2
	fandnot1	%f0,	%f0,	%f14
	xnor	%o5,	%i0,	%i3
	xorcc	%o7,	%i6,	%i5
	fnor	%f14,	%f2,	%f12
	fandnot2	%f14,	%f10,	%f14
	ldd	[%l7 + 0x40],	%f14
	edge16n	%l5,	%o2,	%i4
	fzeros	%f2
	subc	%l3,	0x1E08,	%g6
	movle	%icc,	%i7,	%l6
	bge,a	loop_5584
	fba,a	%fcc0,	loop_5585
	tpos	%xcc,	0x0
	ldd	[%l7 + 0x60],	%f12
loop_5584:
	tneg	%xcc,	0x1
loop_5585:
	ldub	[%l7 + 0x4C],	%o3
	edge16n	%g2,	%g1,	%l4
	tg	%icc,	0x7
	tcs	%icc,	0x0
	st	%f15,	[%l7 + 0x24]
	fmovde	%xcc,	%f8,	%f7
	sth	%o0,	[%l7 + 0x08]
	stb	%o1,	[%l7 + 0x42]
	lduw	[%l7 + 0x44],	%g5
	fcmpgt32	%f0,	%f4,	%g7
	fzeros	%f9
	fcmps	%fcc1,	%f14,	%f9
	stb	%l0,	[%l7 + 0x29]
	pdist	%f6,	%f14,	%f8
	ldd	[%l7 + 0x08],	%f12
	fmovdvs	%icc,	%f10,	%f3
	fnors	%f8,	%f3,	%f11
	lduw	[%l7 + 0x3C],	%o6
	array16	%i2,	%i1,	%l1
	fxor	%f0,	%f0,	%f4
	ldsh	[%l7 + 0x0A],	%g4
	fandnot2s	%f10,	%f2,	%f9
	bcc,a,pt	%xcc,	loop_5586
	fxnors	%f11,	%f2,	%f2
	edge16l	%g3,	%o4,	%o5
	fnands	%f12,	%f8,	%f3
loop_5586:
	array8	%l2,	%i0,	%i3
	fzeros	%f13
	edge32l	%i6,	%o7,	%l5
	stb	%i5,	[%l7 + 0x4C]
	lduw	[%l7 + 0x40],	%o2
	udivx	%l3,	0x0B50,	%g6
	fmovdgu	%icc,	%f7,	%f0
	ldub	[%l7 + 0x35],	%i7
	lduw	[%l7 + 0x1C],	%l6
	lduw	[%l7 + 0x0C],	%o3
	bneg,a,pt	%xcc,	loop_5587
	andncc	%g2,	%g1,	%i4
	fxor	%f2,	%f10,	%f14
	edge32	%l4,	%o0,	%g5
loop_5587:
	ldx	[%l7 + 0x68],	%o1
	siam	0x3
	ldsh	[%l7 + 0x6C],	%l0
	ldub	[%l7 + 0x32],	%g7
	xor	%i2,	0x05AD,	%i1
	and	%o6,	%g4,	%g3
	lduw	[%l7 + 0x4C],	%o4
	ldx	[%l7 + 0x40],	%o5
	fmovsl	%xcc,	%f5,	%f11
	stb	%l1,	[%l7 + 0x74]
	fpsub32	%f14,	%f10,	%f8
	fcmpne32	%f0,	%f10,	%i0
	ldx	[%l7 + 0x28],	%i3
	srax	%l2,	0x0D,	%o7
	brnz,a	%i6,	loop_5588
	ldsw	[%l7 + 0x30],	%l5
	array16	%o2,	%l3,	%i5
	fcmple32	%f10,	%f4,	%g6
loop_5588:
	ldsw	[%l7 + 0x34],	%l6
	fmovsvs	%icc,	%f14,	%f8
	movrgez	%i7,	%o3,	%g1
	bcc	loop_5589
	xor	%i4,	%g2,	%l4
	movrlz	%g5,	%o0,	%o1
	ldub	[%l7 + 0x1C],	%g7
loop_5589:
	fbo,a	%fcc0,	loop_5590
	fbe	%fcc3,	loop_5591
	fbuge,a	%fcc2,	loop_5592
	tcs	%xcc,	0x4
loop_5590:
	fsrc1s	%f4,	%f14
loop_5591:
	add	%i2,	%l0,	%o6
loop_5592:
	fandnot2s	%f10,	%f1,	%f9
	ldub	[%l7 + 0x70],	%i1
	bne,a	loop_5593
	tl	%xcc,	0x0
	bneg,a	%xcc,	loop_5594
	add	%g4,	%g3,	%o4
loop_5593:
	fbg,a	%fcc3,	loop_5595
	faligndata	%f14,	%f14,	%f6
loop_5594:
	sth	%o5,	[%l7 + 0x10]
	edge8ln	%i0,	%l1,	%i3
loop_5595:
	ldsw	[%l7 + 0x24],	%o7
	fmul8x16au	%f13,	%f8,	%f12
	movpos	%xcc,	%l2,	%i6
	fmovdle	%icc,	%f7,	%f6
	fmovdvs	%xcc,	%f9,	%f1
	movne	%icc,	%l5,	%o2
	fones	%f12
	ld	[%l7 + 0x78],	%f13
	brz,a	%i5,	loop_5596
	lduh	[%l7 + 0x16],	%l3
	fornot2	%f14,	%f12,	%f4
	fpsub16	%f6,	%f6,	%f14
loop_5596:
	ldsw	[%l7 + 0x0C],	%l6
	fornot2s	%f10,	%f12,	%f13
	taddcc	%g6,	0x1534,	%i7
	addccc	%o3,	%i4,	%g2
	alignaddr	%g1,	%g5,	%l4
	fmovrsgez	%o0,	%f13,	%f1
	srlx	%o1,	%i2,	%l0
	brlz	%o6,	loop_5597
	fpadd16s	%f6,	%f5,	%f4
	fmul8ulx16	%f6,	%f12,	%f0
	fpsub16s	%f8,	%f5,	%f5
loop_5597:
	fmovsneg	%xcc,	%f9,	%f6
	fbge	%fcc2,	loop_5598
	edge8	%g7,	%g4,	%g3
	fandnot1	%f10,	%f8,	%f0
	ta	%icc,	0x3
loop_5598:
	andncc	%o4,	%i1,	%o5
	stb	%i0,	[%l7 + 0x18]
	brgez,a	%l1,	loop_5599
	bl	%xcc,	loop_5600
	ld	[%l7 + 0x70],	%f8
	edge16	%i3,	%o7,	%i6
loop_5599:
	sdivx	%l2,	0x08C5,	%o2
loop_5600:
	std	%f0,	[%l7 + 0x08]
	edge16l	%l5,	%l3,	%l6
	stb	%g6,	[%l7 + 0x31]
	fornot1s	%f4,	%f7,	%f14
	lduh	[%l7 + 0x64],	%i5
	movre	%i7,	0x206,	%o3
	nop
	setx loop_5601, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fmovsvc	%icc,	%f9,	%f11
	xorcc	%i4,	%g2,	%g5
	st	%f13,	[%l7 + 0x18]
loop_5601:
	ldsw	[%l7 + 0x4C],	%l4
	edge16n	%g1,	%o1,	%i2
	umul	%l0,	%o0,	%g7
	sdivcc	%o6,	0x05E9,	%g3
	tge	%xcc,	0x5
	sub	%g4,	0x0318,	%o4
	fbl	%fcc3,	loop_5602
	umulcc	%i1,	0x0208,	%o5
	lduh	[%l7 + 0x38],	%l1
	fornot1s	%f4,	%f9,	%f10
loop_5602:
	tsubcctv	%i3,	0x0D80,	%i0
	std	%f12,	[%l7 + 0x38]
	fcmps	%fcc1,	%f7,	%f2
	fexpand	%f2,	%f14
	sllx	%o7,	%i6,	%l2
	ldx	[%l7 + 0x58],	%l5
	mulscc	%l3,	0x1006,	%l6
	sllx	%o2,	0x0C,	%g6
	fbe,a	%fcc0,	loop_5603
	xorcc	%i5,	0x065F,	%i7
	fbug	%fcc0,	loop_5604
	lduw	[%l7 + 0x28],	%o3
loop_5603:
	fbn	%fcc1,	loop_5605
	fcmpne16	%f8,	%f10,	%g2
loop_5604:
	fornot2	%f8,	%f0,	%f2
	ldsw	[%l7 + 0x58],	%i4
loop_5605:
	ldsh	[%l7 + 0x18],	%g5
	ld	[%l7 + 0x50],	%f9
	stx	%g1,	[%l7 + 0x28]
	ta	%icc,	0x2
	movpos	%xcc,	%o1,	%i2
	ba,pn	%xcc,	loop_5606
	fmovrslz	%l4,	%f7,	%f15
	st	%f4,	[%l7 + 0x64]
	movge	%xcc,	%o0,	%l0
loop_5606:
	lduw	[%l7 + 0x30],	%o6
	fcmpgt16	%f2,	%f6,	%g3
	fnor	%f4,	%f0,	%f0
	ldsw	[%l7 + 0x38],	%g7
	smulcc	%o4,	0x0C81,	%i1
	fmul8ulx16	%f2,	%f4,	%f2
	tpos	%icc,	0x7
	st	%f7,	[%l7 + 0x20]
	fmovsl	%icc,	%f14,	%f15
	bvs	%icc,	loop_5607
	edge8ln	%g4,	%o5,	%i3
	stb	%i0,	[%l7 + 0x0F]
	std	%f6,	[%l7 + 0x38]
loop_5607:
	fba,a	%fcc3,	loop_5608
	edge16n	%l1,	%i6,	%o7
	andcc	%l2,	0x0439,	%l3
	fbuge,a	%fcc1,	loop_5609
loop_5608:
	fcmpeq16	%f0,	%f14,	%l5
	fcmpne16	%f12,	%f0,	%o2
	fbo	%fcc3,	loop_5610
loop_5609:
	fmovrsgez	%g6,	%f1,	%f7
	stb	%l6,	[%l7 + 0x28]
	ldsh	[%l7 + 0x56],	%i7
loop_5610:
	fnegs	%f10,	%f15
	edge32	%i5,	%g2,	%o3
	stb	%i4,	[%l7 + 0x14]
	ldsw	[%l7 + 0x7C],	%g1
	tn	%xcc,	0x6
	fnands	%f7,	%f9,	%f10
	stw	%o1,	[%l7 + 0x34]
	lduh	[%l7 + 0x6E],	%i2
	lduh	[%l7 + 0x4A],	%l4
	fornot2	%f14,	%f0,	%f0
	bn	%xcc,	loop_5611
	edge32l	%o0,	%l0,	%o6
	stb	%g5,	[%l7 + 0x0B]
	andcc	%g7,	%o4,	%g3
loop_5611:
	std	%f6,	[%l7 + 0x08]
	fxnors	%f12,	%f2,	%f12
	sth	%i1,	[%l7 + 0x2A]
	std	%f14,	[%l7 + 0x40]
	stw	%o5,	[%l7 + 0x64]
	brlz,a	%g4,	loop_5612
	sdiv	%i0,	0x0C02,	%l1
	ldx	[%l7 + 0x70],	%i3
	ldsw	[%l7 + 0x10],	%o7
loop_5612:
	fmovdle	%icc,	%f9,	%f11
	orcc	%i6,	0x12B1,	%l3
	st	%f8,	[%l7 + 0x48]
	stw	%l2,	[%l7 + 0x58]
	movneg	%icc,	%l5,	%o2
	tneg	%xcc,	0x5
	smulcc	%g6,	0x07F7,	%i7
	srax	%i5,	%g2,	%o3
	lduh	[%l7 + 0x42],	%l6
	ld	[%l7 + 0x4C],	%f10
	ta	%icc,	0x1
	movrgez	%i4,	0x22D,	%g1
	lduh	[%l7 + 0x2E],	%o1
	array32	%i2,	%l4,	%o0
	ldx	[%l7 + 0x40],	%o6
	edge16	%g5,	%l0,	%g7
	bg,a,pt	%icc,	loop_5613
	lduw	[%l7 + 0x38],	%o4
	ldub	[%l7 + 0x3F],	%i1
	lduh	[%l7 + 0x34],	%g3
loop_5613:
	ba,a,pt	%icc,	loop_5614
	fnand	%f4,	%f14,	%f12
	tsubcc	%g4,	%o5,	%i0
	stb	%l1,	[%l7 + 0x51]
loop_5614:
	std	%f0,	[%l7 + 0x58]
	sra	%o7,	0x1F,	%i6
	taddcc	%i3,	0x1592,	%l3
	fnegs	%f6,	%f11
	fnot1s	%f12,	%f12
	umul	%l2,	%o2,	%g6
	movleu	%xcc,	%l5,	%i5
	fbule,a	%fcc2,	loop_5615
	ldsb	[%l7 + 0x14],	%i7
	std	%f8,	[%l7 + 0x08]
	fcmpgt16	%f6,	%f8,	%g2
loop_5615:
	sth	%o3,	[%l7 + 0x7A]
	movre	%l6,	%i4,	%o1
	ble,a,pt	%icc,	loop_5616
	tleu	%xcc,	0x0
	fands	%f11,	%f3,	%f12
	popc	0x1A8C,	%g1
loop_5616:
	movge	%xcc,	%i2,	%l4
	fmovrdne	%o0,	%f14,	%f12
	fpackfix	%f4,	%f11
	movvs	%xcc,	%o6,	%l0
	fpack32	%f2,	%f4,	%f2
	fmovdcc	%xcc,	%f5,	%f12
	edge16	%g5,	%g7,	%o4
	alignaddrl	%g3,	%i1,	%g4
	smulcc	%o5,	0x0E53,	%l1
	fbuge,a	%fcc0,	loop_5617
	lduw	[%l7 + 0x70],	%o7
	st	%f9,	[%l7 + 0x68]
	ba,a	loop_5618
loop_5617:
	faligndata	%f2,	%f2,	%f0
	ldx	[%l7 + 0x60],	%i6
	fmovrde	%i0,	%f4,	%f12
loop_5618:
	sth	%i3,	[%l7 + 0x6C]
	bl,a	loop_5619
	ldsh	[%l7 + 0x72],	%l3
	sth	%l2,	[%l7 + 0x3A]
	fxors	%f11,	%f13,	%f5
loop_5619:
	brnz,a	%g6,	loop_5620
	orncc	%o2,	0x1998,	%l5
	andn	%i5,	%i7,	%g2
	stb	%l6,	[%l7 + 0x48]
loop_5620:
	fones	%f6
	bne,pn	%xcc,	loop_5621
	fabss	%f14,	%f2
	call	loop_5622
	tgu	%icc,	0x6
loop_5621:
	ldub	[%l7 + 0x14],	%i4
	edge16	%o1,	%g1,	%i2
loop_5622:
	tcs	%xcc,	0x5
	fmovdgu	%icc,	%f3,	%f15
	sllx	%l4,	0x07,	%o3
	xnorcc	%o0,	0x1CAA,	%l0
	fmovdpos	%xcc,	%f14,	%f5
	fpadd16s	%f9,	%f7,	%f2
	fnegd	%f8,	%f2
	tneg	%xcc,	0x4
	fone	%f0
	ldsb	[%l7 + 0x1C],	%o6
	edge32	%g7,	%g5,	%g3
	ld	[%l7 + 0x08],	%f7
	stx	%o4,	[%l7 + 0x50]
	bvs	loop_5623
	brz,a	%g4,	loop_5624
	fmovdne	%icc,	%f13,	%f5
	ble,a,pt	%xcc,	loop_5625
loop_5623:
	fcmpeq32	%f4,	%f2,	%o5
loop_5624:
	tne	%xcc,	0x2
	fcmpeq32	%f10,	%f10,	%l1
loop_5625:
	fnors	%f3,	%f7,	%f1
	fmul8x16au	%f0,	%f1,	%f6
	subcc	%o7,	%i6,	%i0
	fmovrsne	%i3,	%f1,	%f10
	addcc	%l3,	0x0B52,	%i1
	xnorcc	%g6,	0x003A,	%o2
	movrne	%l5,	%i5,	%i7
	sethi	0x0325,	%l2
	ldd	[%l7 + 0x60],	%f0
	ldsh	[%l7 + 0x78],	%g2
	fbu	%fcc2,	loop_5626
	fmovdleu	%icc,	%f10,	%f3
	fmovdn	%icc,	%f11,	%f1
	fbn	%fcc0,	loop_5627
loop_5626:
	std	%f6,	[%l7 + 0x20]
	fones	%f14
	addcc	%i4,	0x1B2F,	%l6
loop_5627:
	ldsw	[%l7 + 0x10],	%o1
	smulcc	%i2,	0x070B,	%g1
	movpos	%xcc,	%l4,	%o0
	ldub	[%l7 + 0x32],	%l0
	ble,a	%icc,	loop_5628
	ld	[%l7 + 0x08],	%f3
	edge16l	%o3,	%g7,	%g5
	sdivx	%g3,	0x0037,	%o6
loop_5628:
	fbug	%fcc2,	loop_5629
	fnegs	%f15,	%f10
	tvc	%xcc,	0x1
	fnegd	%f8,	%f6
loop_5629:
	lduh	[%l7 + 0x62],	%g4
	fbl,a	%fcc3,	loop_5630
	sth	%o5,	[%l7 + 0x7C]
	ldsb	[%l7 + 0x71],	%l1
	ldsw	[%l7 + 0x58],	%o7
loop_5630:
	fmovrsne	%i6,	%f12,	%f10
	fmovdgu	%icc,	%f13,	%f8
	lduw	[%l7 + 0x68],	%i0
	sth	%i3,	[%l7 + 0x62]
	xnorcc	%l3,	%i1,	%g6
	ldd	[%l7 + 0x48],	%f6
	ldsh	[%l7 + 0x64],	%o2
	fmovsl	%icc,	%f1,	%f0
	bne,a	%xcc,	loop_5631
	fnot2s	%f3,	%f1
	fmovdpos	%icc,	%f3,	%f6
	st	%f5,	[%l7 + 0x2C]
loop_5631:
	mulx	%l5,	0x1BE9,	%i5
	movgu	%icc,	%o4,	%l2
	ldx	[%l7 + 0x58],	%i7
	fmovrslz	%g2,	%f15,	%f7
	lduw	[%l7 + 0x30],	%l6
	tsubcctv	%o1,	0x1FD6,	%i2
	sth	%g1,	[%l7 + 0x62]
	fcmpes	%fcc3,	%f6,	%f12
	stw	%l4,	[%l7 + 0x24]
	movge	%icc,	%i4,	%o0
	ldd	[%l7 + 0x20],	%f2
	fxnor	%f2,	%f6,	%f12
	movrne	%l0,	0x0F8,	%g7
	ldd	[%l7 + 0x08],	%f0
	fand	%f4,	%f10,	%f8
	stw	%o3,	[%l7 + 0x78]
	edge32	%g3,	%g5,	%g4
	bcc	loop_5632
	fmovdpos	%icc,	%f6,	%f11
	fmovdcs	%icc,	%f5,	%f0
	umul	%o5,	0x1F8B,	%o6
loop_5632:
	ba	loop_5633
	ldsh	[%l7 + 0x3E],	%l1
	fsrc2s	%f1,	%f6
	fmovs	%f7,	%f10
loop_5633:
	nop
	setx loop_5634, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	sub	%i6,	0x1F6A,	%o7
	tleu	%icc,	0x6
	fmovdn	%xcc,	%f3,	%f6
loop_5634:
	movpos	%xcc,	%i3,	%l3
	movvs	%xcc,	%i1,	%g6
	mova	%icc,	%o2,	%i0
	bcc,a	%xcc,	loop_5635
	ldsw	[%l7 + 0x10],	%l5
	ldub	[%l7 + 0x30],	%i5
	movne	%icc,	%o4,	%l2
loop_5635:
	ld	[%l7 + 0x10],	%f5
	fmovdn	%xcc,	%f3,	%f8
	fone	%f12
	brlz	%g2,	loop_5636
	fcmped	%fcc1,	%f10,	%f8
	fornot2s	%f9,	%f14,	%f1
	bshuffle	%f4,	%f14,	%f4
loop_5636:
	st	%f11,	[%l7 + 0x10]
	edge8l	%i7,	%o1,	%i2
	movrlez	%g1,	%l6,	%l4
	xor	%o0,	0x0F62,	%i4
	brgz	%g7,	loop_5637
	fpsub16s	%f11,	%f2,	%f14
	fmovdcc	%icc,	%f5,	%f15
	ldub	[%l7 + 0x19],	%o3
loop_5637:
	fmovsg	%xcc,	%f14,	%f4
	fpsub32s	%f1,	%f4,	%f4
	tgu	%icc,	0x4
	umul	%l0,	0x0251,	%g3
	fble,a	%fcc1,	loop_5638
	bne,pn	%xcc,	loop_5639
	fmuld8ulx16	%f14,	%f9,	%f6
	bne,pn	%icc,	loop_5640
loop_5638:
	fmovdleu	%icc,	%f3,	%f6
loop_5639:
	ldd	[%l7 + 0x48],	%f12
	lduh	[%l7 + 0x46],	%g5
loop_5640:
	fmovrsne	%o5,	%f11,	%f6
	brlz	%g4,	loop_5641
	stx	%l1,	[%l7 + 0x58]
	orncc	%o6,	0x17F5,	%i6
	fabsd	%f0,	%f2
loop_5641:
	fcmpgt32	%f8,	%f4,	%o7
	nop
	setx loop_5642, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	tg	%icc,	0x5
	sdivcc	%l3,	0x088F,	%i1
	fand	%f14,	%f12,	%f0
loop_5642:
	movn	%icc,	%g6,	%i3
	stx	%o2,	[%l7 + 0x70]
	fsrc2	%f6,	%f8
	ldsw	[%l7 + 0x54],	%i0
	st	%f2,	[%l7 + 0x78]
	stw	%i5,	[%l7 + 0x48]
	lduh	[%l7 + 0x0A],	%l5
	smulcc	%l2,	%o4,	%i7
	ldsb	[%l7 + 0x2C],	%o1
	tl	%xcc,	0x7
	fpadd16s	%f15,	%f9,	%f8
	lduw	[%l7 + 0x4C],	%i2
	fmovdvs	%icc,	%f8,	%f12
	stb	%g1,	[%l7 + 0x4A]
	fcmpgt16	%f12,	%f2,	%l6
	ldd	[%l7 + 0x58],	%f8
	bgu	%icc,	loop_5643
	ldx	[%l7 + 0x58],	%l4
	sdivx	%g2,	0x1D55,	%i4
	ldx	[%l7 + 0x10],	%g7
loop_5643:
	ld	[%l7 + 0x2C],	%f11
	fxors	%f0,	%f15,	%f14
	addc	%o3,	0x141C,	%l0
	nop
	setx loop_5644, %l0, %l1
	jmpl %l1, %o0
	stb	%g5,	[%l7 + 0x72]
	ldsh	[%l7 + 0x7E],	%g3
	sethi	0x1C5B,	%g4
loop_5644:
	movre	%o5,	%l1,	%o6
	array32	%o7,	%i6,	%l3
	mulx	%i1,	%i3,	%o2
	ldd	[%l7 + 0x10],	%f10
	ldsw	[%l7 + 0x44],	%i0
	array8	%i5,	%g6,	%l2
	fnors	%f1,	%f0,	%f7
	ldsb	[%l7 + 0x4F],	%o4
	fnegd	%f10,	%f0
	fbe,a	%fcc0,	loop_5645
	fpsub16	%f2,	%f12,	%f6
	tsubcctv	%l5,	0x1AD6,	%o1
	fones	%f9
loop_5645:
	taddcc	%i2,	%g1,	%i7
	fmovrslez	%l6,	%f5,	%f6
	fmovrslz	%g2,	%f2,	%f7
	brgz	%i4,	loop_5646
	tle	%xcc,	0x5
	ld	[%l7 + 0x58],	%f1
	fone	%f8
loop_5646:
	stw	%g7,	[%l7 + 0x10]
	alignaddrl	%l4,	%o3,	%o0
	fcmpne16	%f8,	%f4,	%g5
	edge32l	%l0,	%g4,	%o5
	fandnot1s	%f3,	%f2,	%f12
	xnorcc	%g3,	%o6,	%l1
	bl,a,pn	%icc,	loop_5647
	bvc	%icc,	loop_5648
	bl,a,pt	%xcc,	loop_5649
	tge	%xcc,	0x4
loop_5647:
	taddcctv	%o7,	%l3,	%i6
loop_5648:
	tvc	%icc,	0x5
loop_5649:
	brz,a	%i1,	loop_5650
	xorcc	%o2,	0x03E2,	%i0
	fmovsn	%icc,	%f6,	%f11
	tne	%xcc,	0x1
loop_5650:
	sll	%i3,	%g6,	%l2
	edge16n	%o4,	%i5,	%o1
	fand	%f4,	%f2,	%f0
	taddcctv	%l5,	%i2,	%g1
	ldsh	[%l7 + 0x60],	%l6
	stw	%i7,	[%l7 + 0x5C]
	std	%f8,	[%l7 + 0x58]
	fmovdvs	%icc,	%f1,	%f13
	ldsw	[%l7 + 0x4C],	%i4
	fornot2s	%f0,	%f14,	%f4
	srl	%g7,	0x04,	%g2
	xnor	%l4,	%o0,	%o3
	fmovsvc	%xcc,	%f9,	%f3
	tcs	%xcc,	0x6
	nop
	setx loop_5651, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	orn	%l0,	0x0492,	%g5
	nop
	setx loop_5652, %l0, %l1
	jmpl %l1, %g4
	be,pn	%xcc,	loop_5653
loop_5651:
	bleu,a,pt	%xcc,	loop_5654
	fxors	%f6,	%f7,	%f7
loop_5652:
	fpack32	%f4,	%f8,	%f8
loop_5653:
	ldsb	[%l7 + 0x2C],	%g3
loop_5654:
	edge8	%o5,	%o6,	%o7
	ldub	[%l7 + 0x15],	%l3
	ldub	[%l7 + 0x7D],	%i6
	movleu	%icc,	%l1,	%o2
	edge8n	%i1,	%i0,	%i3
	ldx	[%l7 + 0x58],	%g6
	fmovd	%f2,	%f6
	be,pn	%xcc,	loop_5655
	fmovdneg	%icc,	%f13,	%f2
	std	%f2,	[%l7 + 0x38]
	fbul,a	%fcc2,	loop_5656
loop_5655:
	edge8l	%o4,	%l2,	%i5
	sth	%l5,	[%l7 + 0x4A]
	movcs	%icc,	%i2,	%g1
loop_5656:
	sth	%l6,	[%l7 + 0x72]
	fmul8x16au	%f2,	%f1,	%f6
	movpos	%xcc,	%i7,	%o1
	fmovdg	%icc,	%f11,	%f12
	sllx	%i4,	0x03,	%g7
	ldd	[%l7 + 0x48],	%f14
	add	%l4,	0x1465,	%g2
	bn,a,pn	%icc,	loop_5657
	fnot2	%f4,	%f12
	fmovrslez	%o3,	%f14,	%f12
	fmovsl	%icc,	%f8,	%f12
loop_5657:
	movcc	%icc,	%o0,	%l0
	fmovsn	%xcc,	%f2,	%f2
	fmovdcs	%icc,	%f15,	%f12
	stx	%g5,	[%l7 + 0x70]
	ldsh	[%l7 + 0x6C],	%g4
	fmovdvs	%icc,	%f11,	%f1
	stx	%g3,	[%l7 + 0x18]
	lduw	[%l7 + 0x70],	%o6
	fnand	%f10,	%f14,	%f0
	fnot1	%f10,	%f2
	stb	%o7,	[%l7 + 0x47]
	nop
	setx loop_5658, %l0, %l1
	jmpl %l1, %o5
	fpmerge	%f9,	%f10,	%f4
	bg	%icc,	loop_5659
	tg	%xcc,	0x4
loop_5658:
	stw	%l3,	[%l7 + 0x64]
	tge	%icc,	0x7
loop_5659:
	ldd	[%l7 + 0x20],	%f12
	bg	loop_5660
	fmuld8ulx16	%f5,	%f4,	%f14
	movle	%xcc,	%i6,	%l1
	fone	%f8
loop_5660:
	fsrc1s	%f2,	%f7
	lduh	[%l7 + 0x7E],	%i1
	orcc	%i0,	0x02DF,	%i3
	stw	%o2,	[%l7 + 0x10]
	ldd	[%l7 + 0x38],	%f10
	stb	%o4,	[%l7 + 0x72]
	fones	%f12
	xor	%g6,	%l2,	%l5
	fpadd16s	%f8,	%f15,	%f1
	movrne	%i2,	0x1A7,	%i5
	tn	%xcc,	0x4
	add	%g1,	%l6,	%i7
	fmul8x16au	%f1,	%f5,	%f10
	fand	%f10,	%f12,	%f14
	fand	%f10,	%f2,	%f12
	ldub	[%l7 + 0x30],	%i4
	stb	%g7,	[%l7 + 0x1D]
	fmovrdgez	%o1,	%f8,	%f6
	fnot1	%f12,	%f8
	mova	%icc,	%l4,	%o3
	fcmpd	%fcc1,	%f12,	%f6
	edge16ln	%o0,	%l0,	%g5
	bn	loop_5661
	bne,a	%xcc,	loop_5662
	stb	%g2,	[%l7 + 0x3E]
	mova	%icc,	%g4,	%g3
loop_5661:
	tneg	%icc,	0x5
loop_5662:
	fandnot2s	%f3,	%f15,	%f6
	tvs	%xcc,	0x6
	stw	%o7,	[%l7 + 0x28]
	fmovsl	%xcc,	%f4,	%f12
	smulcc	%o6,	0x0802,	%o5
	fcmps	%fcc3,	%f4,	%f4
	bpos,a	loop_5663
	array32	%i6,	%l1,	%l3
	fornot2	%f10,	%f4,	%f10
	call	loop_5664
loop_5663:
	move	%icc,	%i1,	%i0
	fpsub32	%f2,	%f10,	%f10
	bgu,pn	%icc,	loop_5665
loop_5664:
	fandnot1	%f0,	%f12,	%f10
	fcmpeq16	%f0,	%f8,	%o2
	fsrc2s	%f6,	%f7
loop_5665:
	ldd	[%l7 + 0x78],	%f14
	add	%i3,	0x1630,	%o4
	bn,a,pn	%icc,	loop_5666
	fbe	%fcc0,	loop_5667
	fbuge,a	%fcc1,	loop_5668
	tle	%icc,	0x5
loop_5666:
	ldsw	[%l7 + 0x18],	%l2
loop_5667:
	st	%f14,	[%l7 + 0x3C]
loop_5668:
	fmovspos	%icc,	%f14,	%f10
	fcmple16	%f2,	%f6,	%g6
	fcmpne32	%f12,	%f14,	%l5
	movre	%i5,	%i2,	%g1
	stw	%l6,	[%l7 + 0x78]
	move	%icc,	%i4,	%g7
	std	%f4,	[%l7 + 0x60]
	std	%f14,	[%l7 + 0x38]
	fmovsg	%icc,	%f6,	%f3
	brnz,a	%o1,	loop_5669
	fcmpes	%fcc3,	%f11,	%f12
	edge8n	%l4,	%o3,	%o0
	mulx	%i7,	0x0892,	%l0
loop_5669:
	ld	[%l7 + 0x40],	%f7
	ldsh	[%l7 + 0x28],	%g5
	tvc	%icc,	0x0
	movg	%icc,	%g2,	%g3
	fsrc1	%f6,	%f0
	ble,a	%xcc,	loop_5670
	ldd	[%l7 + 0x08],	%f12
	fandnot1s	%f4,	%f15,	%f13
	ldsb	[%l7 + 0x40],	%g4
loop_5670:
	fxnor	%f4,	%f4,	%f8
	be,a,pt	%icc,	loop_5671
	ld	[%l7 + 0x20],	%f1
	bvs,a,pn	%icc,	loop_5672
	subcc	%o7,	%o5,	%o6
loop_5671:
	tne	%xcc,	0x5
	lduw	[%l7 + 0x64],	%i6
loop_5672:
	taddcc	%l1,	0x19B7,	%i1
	fmovsg	%xcc,	%f6,	%f11
	bn,pt	%icc,	loop_5673
	ldub	[%l7 + 0x1D],	%i0
	bneg,a	%icc,	loop_5674
	fpsub32s	%f0,	%f7,	%f10
loop_5673:
	pdist	%f6,	%f14,	%f2
	tsubcc	%l3,	0x1917,	%o2
loop_5674:
	call	loop_5675
	xnor	%i3,	%o4,	%l2
	tge	%icc,	0x3
	edge16n	%g6,	%l5,	%i2
loop_5675:
	bpos	%xcc,	loop_5676
	ld	[%l7 + 0x44],	%f5
	stb	%i5,	[%l7 + 0x2B]
	edge16ln	%l6,	%i4,	%g7
loop_5676:
	alignaddr	%o1,	%g1,	%o3
	fxnor	%f8,	%f14,	%f12
	fpackfix	%f14,	%f11
	fmovdvc	%icc,	%f11,	%f13
	sth	%o0,	[%l7 + 0x38]
	movrlz	%l4,	0x370,	%l0
	fmovsgu	%icc,	%f12,	%f7
	fmul8x16	%f15,	%f6,	%f12
	nop
	setx loop_5677, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	umul	%g5,	0x1911,	%g2
	fsrc1	%f8,	%f2
	std	%f8,	[%l7 + 0x08]
loop_5677:
	edge32	%i7,	%g4,	%g3
	fpadd16s	%f15,	%f13,	%f10
	fmovdcc	%icc,	%f8,	%f3
	sth	%o5,	[%l7 + 0x5C]
	array8	%o7,	%i6,	%o6
	stb	%l1,	[%l7 + 0x65]
	fpsub16s	%f1,	%f15,	%f10
	fxors	%f11,	%f5,	%f11
	fbuge	%fcc1,	loop_5678
	ld	[%l7 + 0x0C],	%f6
	fcmped	%fcc2,	%f10,	%f10
	tcs	%icc,	0x5
loop_5678:
	add	%i1,	0x044C,	%i0
	movrlez	%l3,	%i3,	%o4
	lduw	[%l7 + 0x2C],	%o2
	tneg	%xcc,	0x3
	tge	%icc,	0x4
	fpmerge	%f13,	%f1,	%f4
	fbo,a	%fcc1,	loop_5679
	fsrc1	%f12,	%f8
	ldsb	[%l7 + 0x7E],	%g6
	fcmple16	%f6,	%f2,	%l5
loop_5679:
	ldub	[%l7 + 0x70],	%i2
	edge16l	%l2,	%i5,	%i4
	fmovrdlz	%l6,	%f6,	%f0
	lduw	[%l7 + 0x74],	%o1
	fmovrslez	%g7,	%f6,	%f8
	subccc	%g1,	%o3,	%o0
	brz,a	%l4,	loop_5680
	movvs	%xcc,	%l0,	%g2
	movvc	%icc,	%g5,	%i7
	fmovrsgz	%g4,	%f13,	%f8
loop_5680:
	andcc	%o5,	%g3,	%o7
	stb	%o6,	[%l7 + 0x7B]
	fpadd16s	%f5,	%f8,	%f15
	fmovsn	%icc,	%f6,	%f15
	bpos,pt	%icc,	loop_5681
	tvs	%xcc,	0x5
	orncc	%l1,	%i6,	%i1
	bn,pn	%icc,	loop_5682
loop_5681:
	orcc	%i0,	%l3,	%i3
	stx	%o4,	[%l7 + 0x28]
	ldsw	[%l7 + 0x20],	%o2
loop_5682:
	fmovdneg	%xcc,	%f14,	%f11
	tsubcctv	%g6,	%l5,	%i2
	ld	[%l7 + 0x38],	%f14
	ldsh	[%l7 + 0x4C],	%i5
	fbul	%fcc1,	loop_5683
	fmovsleu	%icc,	%f9,	%f7
	fbne,a	%fcc0,	loop_5684
	nop
	setx loop_5685, %l0, %l1
	jmpl %l1, %i4
loop_5683:
	fpackfix	%f14,	%f4
	ld	[%l7 + 0x78],	%f6
loop_5684:
	fmovd	%f12,	%f0
loop_5685:
	bleu,a	loop_5686
	fmovdle	%xcc,	%f1,	%f14
	fxnor	%f8,	%f6,	%f14
	ldsh	[%l7 + 0x7A],	%l6
loop_5686:
	ldd	[%l7 + 0x68],	%f10
	array16	%o1,	%g7,	%l2
	ldub	[%l7 + 0x2F],	%g1
	bl,a	%xcc,	loop_5687
	fxor	%f4,	%f10,	%f14
	stb	%o3,	[%l7 + 0x21]
	movneg	%xcc,	%o0,	%l0
loop_5687:
	fxnors	%f14,	%f0,	%f4
	lduh	[%l7 + 0x4E],	%l4
	ldsb	[%l7 + 0x18],	%g2
	edge32ln	%i7,	%g4,	%g5
	srl	%g3,	0x18,	%o7
	fcmpeq16	%f6,	%f12,	%o5
	edge16n	%o6,	%i6,	%l1
	edge16l	%i0,	%i1,	%i3
	bcs	loop_5688
	fnegd	%f14,	%f14
	brgez	%o4,	loop_5689
	fnors	%f13,	%f6,	%f2
loop_5688:
	st	%f7,	[%l7 + 0x44]
	fmovrdlz	%o2,	%f14,	%f0
loop_5689:
	fbn,a	%fcc1,	loop_5690
	fpack32	%f2,	%f0,	%f12
	subccc	%l3,	0x1F1D,	%l5
	fmovde	%xcc,	%f10,	%f5
loop_5690:
	fexpand	%f3,	%f10
	ldub	[%l7 + 0x5D],	%i2
	xorcc	%g6,	0x05CD,	%i4
	tcc	%xcc,	0x1
	srl	%l6,	%o1,	%g7
	sth	%i5,	[%l7 + 0x44]
	fmovscc	%icc,	%f15,	%f7
	lduh	[%l7 + 0x2E],	%l2
	fbu	%fcc3,	loop_5691
	fbu	%fcc2,	loop_5692
	ldd	[%l7 + 0x40],	%f4
	fmuld8ulx16	%f8,	%f15,	%f14
loop_5691:
	stb	%o3,	[%l7 + 0x5C]
loop_5692:
	bne	loop_5693
	fble	%fcc2,	loop_5694
	bvs,pt	%xcc,	loop_5695
	ldsh	[%l7 + 0x58],	%g1
loop_5693:
	ldsb	[%l7 + 0x69],	%l0
loop_5694:
	tcc	%icc,	0x5
loop_5695:
	edge16n	%o0,	%g2,	%i7
	brgez	%l4,	loop_5696
	movcc	%xcc,	%g5,	%g3
	stw	%o7,	[%l7 + 0x18]
	fmovsvc	%icc,	%f1,	%f15
loop_5696:
	lduh	[%l7 + 0x54],	%o5
	st	%f14,	[%l7 + 0x40]
	stx	%o6,	[%l7 + 0x70]
	edge8ln	%i6,	%l1,	%g4
	addccc	%i0,	%i1,	%o4
	umulcc	%o2,	0x01A1,	%i3
	movn	%icc,	%l3,	%l5
	ldsw	[%l7 + 0x70],	%g6
	fmovsa	%xcc,	%f10,	%f2
	ldx	[%l7 + 0x78],	%i2
	fbue	%fcc1,	loop_5697
	ldsh	[%l7 + 0x58],	%i4
	tvc	%icc,	0x7
	stb	%l6,	[%l7 + 0x46]
loop_5697:
	fcmpgt32	%f12,	%f6,	%o1
	stw	%i5,	[%l7 + 0x6C]
	stw	%l2,	[%l7 + 0x0C]
	sth	%o3,	[%l7 + 0x7C]
	taddcctv	%g1,	0x038E,	%l0
	call	loop_5698
	fbn,a	%fcc3,	loop_5699
	ld	[%l7 + 0x78],	%f5
	fmovsa	%xcc,	%f14,	%f3
loop_5698:
	fbuge,a	%fcc0,	loop_5700
loop_5699:
	tn	%icc,	0x0
	ldub	[%l7 + 0x1B],	%o0
	movvc	%xcc,	%g7,	%g2
loop_5700:
	fbge,a	%fcc0,	loop_5701
	sll	%i7,	0x04,	%l4
	fmovde	%icc,	%f7,	%f5
	for	%f10,	%f2,	%f6
loop_5701:
	fmuld8sux16	%f12,	%f6,	%f12
	fornot2s	%f7,	%f13,	%f13
	fzeros	%f5
	fone	%f4
	bge,a	%icc,	loop_5702
	brlez	%g5,	loop_5703
	fcmpgt32	%f8,	%f14,	%g3
	movcs	%xcc,	%o5,	%o6
loop_5702:
	stw	%i6,	[%l7 + 0x38]
loop_5703:
	srax	%o7,	%l1,	%i0
	tl	%xcc,	0x5
	fmovspos	%icc,	%f6,	%f5
	std	%f8,	[%l7 + 0x20]
	fmul8x16	%f7,	%f12,	%f8
	std	%f8,	[%l7 + 0x48]
	ldsb	[%l7 + 0x68],	%g4
	fmovdn	%xcc,	%f12,	%f6
	nop
	setx loop_5704, %l0, %l1
	jmpl %l1, %i1
	fmovsle	%xcc,	%f13,	%f5
	ldd	[%l7 + 0x68],	%f14
	lduh	[%l7 + 0x44],	%o2
loop_5704:
	tleu	%icc,	0x0
	lduh	[%l7 + 0x5E],	%o4
	ldub	[%l7 + 0x0B],	%i3
	fpadd16s	%f14,	%f0,	%f7
	stw	%l3,	[%l7 + 0x70]
	edge8l	%g6,	%l5,	%i2
	stw	%i4,	[%l7 + 0x50]
	movrgez	%l6,	0x1DA,	%o1
	st	%f5,	[%l7 + 0x14]
	fpadd16s	%f0,	%f7,	%f2
	ldx	[%l7 + 0x38],	%i5
	fcmpeq16	%f2,	%f6,	%l2
	fbuge,a	%fcc2,	loop_5705
	fandnot2	%f6,	%f12,	%f12
	sth	%g1,	[%l7 + 0x12]
	movrgez	%o3,	0x312,	%l0
loop_5705:
	bl,a,pt	%icc,	loop_5706
	move	%xcc,	%o0,	%g7
	st	%f11,	[%l7 + 0x1C]
	fmovsgu	%xcc,	%f2,	%f14
loop_5706:
	movg	%icc,	%g2,	%i7
	brgez	%l4,	loop_5707
	sdivx	%g5,	0x0BDC,	%o5
	mova	%icc,	%o6,	%g3
	fzeros	%f7
loop_5707:
	fmul8sux16	%f14,	%f0,	%f14
	bcc,pn	%icc,	loop_5708
	movre	%o7,	%i6,	%l1
	std	%f14,	[%l7 + 0x28]
	fsrc2s	%f10,	%f1
loop_5708:
	sth	%i0,	[%l7 + 0x62]
	stw	%i1,	[%l7 + 0x08]
	fand	%f14,	%f8,	%f8
	stw	%o2,	[%l7 + 0x40]
	fmovdg	%icc,	%f8,	%f2
	fmul8ulx16	%f6,	%f2,	%f14
	ldub	[%l7 + 0x37],	%g4
	ldx	[%l7 + 0x68],	%i3
	fcmpne32	%f0,	%f2,	%o4
	add	%l3,	0x0423,	%g6
	bvs,a,pt	%icc,	loop_5709
	fpsub32s	%f9,	%f2,	%f13
	movge	%icc,	%i2,	%i4
	be	%icc,	loop_5710
loop_5709:
	ldsb	[%l7 + 0x58],	%l6
	fbne,a	%fcc0,	loop_5711
	bcs	loop_5712
loop_5710:
	fmuld8ulx16	%f13,	%f4,	%f14
	fmovsl	%icc,	%f6,	%f7
loop_5711:
	fba,a	%fcc2,	loop_5713
loop_5712:
	fbge	%fcc0,	loop_5714
	fmovsge	%xcc,	%f15,	%f5
	fsrc2	%f14,	%f12
loop_5713:
	sra	%o1,	0x05,	%l5
loop_5714:
	bcc,a	%xcc,	loop_5715
	fnor	%f10,	%f2,	%f12
	brlz	%i5,	loop_5716
	nop
	setx loop_5717, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
loop_5715:
	lduh	[%l7 + 0x56],	%l2
	xor	%o3,	%g1,	%o0
loop_5716:
	bl,a,pt	%xcc,	loop_5718
loop_5717:
	tleu	%icc,	0x4
	ldub	[%l7 + 0x73],	%l0
	ldsw	[%l7 + 0x34],	%g7
loop_5718:
	fmovdleu	%xcc,	%f11,	%f6
	st	%f2,	[%l7 + 0x24]
	std	%f8,	[%l7 + 0x60]
	movne	%xcc,	%g2,	%i7
	fabsd	%f12,	%f14
	nop
	setx loop_5719, %l0, %l1
	jmpl %l1, %g5
	ldsb	[%l7 + 0x16],	%o5
	alignaddr	%o6,	%g3,	%o7
	fands	%f10,	%f4,	%f9
loop_5719:
	brz,a	%l4,	loop_5720
	ldub	[%l7 + 0x1D],	%i6
	ldsh	[%l7 + 0x2E],	%i0
	fmul8x16al	%f4,	%f11,	%f6
loop_5720:
	fnot2	%f8,	%f4
	xnorcc	%i1,	0x1C73,	%o2
	ldsb	[%l7 + 0x24],	%l1
	fmovsgu	%xcc,	%f12,	%f8
	sdivx	%g4,	0x159B,	%o4
	stx	%l3,	[%l7 + 0x70]
	ldsw	[%l7 + 0x4C],	%g6
	fxors	%f10,	%f8,	%f0
	std	%f0,	[%l7 + 0x50]
	stb	%i2,	[%l7 + 0x4E]
	ld	[%l7 + 0x1C],	%f1
	fmovrdlz	%i4,	%f0,	%f2
	fmovrdgz	%i3,	%f0,	%f8
	fmovsn	%xcc,	%f15,	%f1
	array8	%o1,	%l6,	%l5
	fmovsvs	%icc,	%f1,	%f14
	stw	%l2,	[%l7 + 0x3C]
	ldx	[%l7 + 0x48],	%i5
	std	%f0,	[%l7 + 0x30]
	ld	[%l7 + 0x1C],	%f12
	lduh	[%l7 + 0x64],	%g1
	fmovs	%f12,	%f1
	ldx	[%l7 + 0x50],	%o3
	fmovda	%icc,	%f8,	%f15
	bneg,a,pt	%xcc,	loop_5721
	ldx	[%l7 + 0x20],	%l0
	ld	[%l7 + 0x34],	%f7
	alignaddrl	%g7,	%o0,	%g2
loop_5721:
	fbue,a	%fcc1,	loop_5722
	sdivcc	%i7,	0x1A04,	%g5
	std	%f14,	[%l7 + 0x58]
	fbug,a	%fcc2,	loop_5723
loop_5722:
	sth	%o5,	[%l7 + 0x6A]
	be,pt	%icc,	loop_5724
	for	%f0,	%f4,	%f2
loop_5723:
	stx	%o6,	[%l7 + 0x40]
	tle	%icc,	0x2
loop_5724:
	ldd	[%l7 + 0x50],	%f6
	fmovsleu	%icc,	%f3,	%f4
	bvc,pn	%xcc,	loop_5725
	lduw	[%l7 + 0x5C],	%g3
	ldx	[%l7 + 0x78],	%l4
	fmovsvs	%icc,	%f5,	%f11
loop_5725:
	bpos,a	loop_5726
	te	%icc,	0x0
	fmovsvs	%icc,	%f15,	%f9
	ldsb	[%l7 + 0x08],	%i6
loop_5726:
	fcmpgt16	%f4,	%f12,	%i0
	fmovdle	%xcc,	%f11,	%f14
	movvs	%xcc,	%o7,	%o2
	nop
	setx loop_5727, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	fmovrsgz	%i1,	%f2,	%f9
	stb	%l1,	[%l7 + 0x76]
	fmul8x16al	%f14,	%f1,	%f0
loop_5727:
	fnands	%f11,	%f6,	%f4
	tl	%xcc,	0x7
	ldub	[%l7 + 0x36],	%o4
	fpackfix	%f0,	%f6
	stw	%l3,	[%l7 + 0x74]
	edge32n	%g4,	%i2,	%i4
	fsrc2	%f8,	%f14
	bcs,pt	%xcc,	loop_5728
	fmul8x16	%f13,	%f0,	%f6
	fandnot2	%f4,	%f10,	%f0
	stx	%g6,	[%l7 + 0x30]
loop_5728:
	fmuld8ulx16	%f8,	%f13,	%f2
	fcmpne32	%f2,	%f12,	%o1
	umul	%l6,	%l5,	%i3
	ldub	[%l7 + 0x08],	%l2
	sth	%g1,	[%l7 + 0x2A]
	tpos	%icc,	0x7
	fmovrslez	%i5,	%f11,	%f14
	st	%f14,	[%l7 + 0x20]
	fsrc2s	%f14,	%f11
	ldsw	[%l7 + 0x64],	%o3
	brlez,a	%l0,	loop_5729
	fcmpeq16	%f0,	%f14,	%g7
	fmovrslez	%o0,	%f9,	%f5
	edge8l	%g2,	%i7,	%o5
loop_5729:
	sdiv	%g5,	0x01CD,	%g3
	fabss	%f8,	%f1
	fmovsgu	%icc,	%f9,	%f9
	ldd	[%l7 + 0x08],	%f10
	srl	%l4,	%o6,	%i6
	fnot1s	%f8,	%f6
	fmovrdlz	%i0,	%f6,	%f0
	fmovrsne	%o2,	%f4,	%f6
	fmovspos	%icc,	%f14,	%f13
	tg	%xcc,	0x7
	fpack32	%f4,	%f0,	%f4
	fmovrdne	%i1,	%f6,	%f2
	pdist	%f12,	%f14,	%f4
	tle	%icc,	0x2
	movcs	%xcc,	%l1,	%o4
	edge32	%o7,	%g4,	%l3
	sth	%i2,	[%l7 + 0x42]
	brz	%i4,	loop_5730
	bvc,pn	%xcc,	loop_5731
	stw	%o1,	[%l7 + 0x7C]
	fmovsvs	%xcc,	%f11,	%f5
loop_5730:
	ldsw	[%l7 + 0x7C],	%g6
loop_5731:
	ldx	[%l7 + 0x48],	%l6
	fbule,a	%fcc3,	loop_5732
	movrne	%l5,	%i3,	%l2
	edge8	%i5,	%g1,	%l0
	fmovrdgez	%g7,	%f2,	%f4
loop_5732:
	fbule,a	%fcc1,	loop_5733
	ldx	[%l7 + 0x40],	%o3
	xorcc	%g2,	%o0,	%o5
	std	%f8,	[%l7 + 0x10]
loop_5733:
	ld	[%l7 + 0x5C],	%f14
	fmovrslez	%i7,	%f9,	%f5
	lduh	[%l7 + 0x68],	%g3
	fmovrse	%l4,	%f2,	%f2
	lduh	[%l7 + 0x28],	%g5
	fcmped	%fcc3,	%f14,	%f14
	fcmpgt32	%f12,	%f6,	%i6
	fsrc1s	%f15,	%f1
	ldsw	[%l7 + 0x30],	%i0
	tg	%xcc,	0x5
	ldx	[%l7 + 0x18],	%o6
	andncc	%i1,	%o2,	%l1
	sethi	0x0312,	%o4
	st	%f4,	[%l7 + 0x64]
	ldsw	[%l7 + 0x1C],	%g4
	edge8	%o7,	%i2,	%i4
	tl	%xcc,	0x2
	fmovda	%icc,	%f10,	%f12
	ldub	[%l7 + 0x25],	%o1
	fba,a	%fcc2,	loop_5734
	fnands	%f8,	%f12,	%f15
	movneg	%xcc,	%l3,	%l6
	ldsw	[%l7 + 0x30],	%g6
loop_5734:
	bneg,a,pt	%icc,	loop_5735
	ldub	[%l7 + 0x67],	%l5
	array8	%i3,	%l2,	%i5
	fcmpne32	%f10,	%f0,	%g1
loop_5735:
	ldsw	[%l7 + 0x40],	%l0
	edge32ln	%o3,	%g2,	%o0
	fmovdleu	%icc,	%f8,	%f10
	or	%g7,	0x0BB4,	%i7
	mulscc	%o5,	0x1533,	%l4
	ld	[%l7 + 0x14],	%f15
	ldsw	[%l7 + 0x18],	%g3
	array16	%i6,	%g5,	%i0
	fbo	%fcc1,	loop_5736
	fexpand	%f0,	%f8
	sth	%o6,	[%l7 + 0x6E]
	bn	loop_5737
loop_5736:
	nop
	setx loop_5738, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	for	%f6,	%f6,	%f2
	brgz	%o2,	loop_5739
loop_5737:
	fmovrsne	%l1,	%f5,	%f5
loop_5738:
	ldx	[%l7 + 0x40],	%o4
	edge8n	%i1,	%g4,	%o7
loop_5739:
	add	%i4,	0x093D,	%o1
	sth	%i2,	[%l7 + 0x6E]
	fpsub16s	%f2,	%f6,	%f8
	fexpand	%f9,	%f8
	fmovsleu	%icc,	%f14,	%f0
	edge8l	%l3,	%l6,	%g6
	sth	%l5,	[%l7 + 0x7A]
	ldd	[%l7 + 0x30],	%f2
	bshuffle	%f6,	%f2,	%f6
	ldd	[%l7 + 0x58],	%f10
	fxnors	%f14,	%f1,	%f1
	bcc,a	loop_5740
	movcs	%icc,	%l2,	%i3
	fbe,a	%fcc3,	loop_5741
	stx	%i5,	[%l7 + 0x60]
loop_5740:
	ta	%icc,	0x7
	ldub	[%l7 + 0x20],	%l0
loop_5741:
	fzero	%f0
	fblg,a	%fcc0,	loop_5742
	mulx	%g1,	%g2,	%o0
	fmuld8ulx16	%f2,	%f6,	%f4
	xorcc	%o3,	%g7,	%o5
loop_5742:
	lduw	[%l7 + 0x50],	%l4
	fnegd	%f14,	%f2
	bg,a,pn	%icc,	loop_5743
	std	%f12,	[%l7 + 0x60]
	pdist	%f0,	%f8,	%f4
	fblg,a	%fcc3,	loop_5744
loop_5743:
	fba,a	%fcc0,	loop_5745
	fmuld8ulx16	%f9,	%f1,	%f4
	subccc	%g3,	%i7,	%g5
loop_5744:
	ldsh	[%l7 + 0x54],	%i6
loop_5745:
	tvs	%icc,	0x3
	stw	%i0,	[%l7 + 0x2C]
	edge16n	%o2,	%l1,	%o4
	ld	[%l7 + 0x74],	%f4
	fmovsvs	%icc,	%f3,	%f2
	ldsw	[%l7 + 0x1C],	%o6
	fmovsvc	%icc,	%f9,	%f14
	udiv	%i1,	0x1A89,	%g4
	fabsd	%f6,	%f10
	subc	%i4,	0x1D46,	%o7
	fnors	%f14,	%f1,	%f6
	ldd	[%l7 + 0x68],	%f2
	fbug	%fcc3,	loop_5746
	ldsw	[%l7 + 0x1C],	%o1
	tleu	%icc,	0x4
	fmovrslez	%l3,	%f10,	%f8
loop_5746:
	fcmpeq16	%f8,	%f10,	%l6
	lduh	[%l7 + 0x24],	%g6
	fandnot1s	%f10,	%f7,	%f11
	std	%f10,	[%l7 + 0x20]
	lduh	[%l7 + 0x26],	%l5
	fxor	%f12,	%f8,	%f12
	ld	[%l7 + 0x24],	%f13
	edge32l	%l2,	%i3,	%i2
	fmovrsne	%i5,	%f0,	%f12
	st	%f14,	[%l7 + 0x30]
	edge16	%l0,	%g1,	%o0
	fnot1s	%f12,	%f6
	fmovsvc	%icc,	%f15,	%f9
	lduw	[%l7 + 0x48],	%g2
	fmovdgu	%icc,	%f13,	%f10
	stb	%o3,	[%l7 + 0x0D]
	edge8ln	%g7,	%o5,	%l4
	ldsh	[%l7 + 0x64],	%i7
	tneg	%icc,	0x1
	ldsb	[%l7 + 0x71],	%g3
	tneg	%xcc,	0x7
	fmovdg	%icc,	%f11,	%f11
	fcmps	%fcc3,	%f5,	%f10
	ldsw	[%l7 + 0x7C],	%i6
	lduh	[%l7 + 0x70],	%i0
	edge8	%o2,	%l1,	%g5
	fmovrslez	%o4,	%f2,	%f8
	movgu	%xcc,	%i1,	%g4
	sth	%o6,	[%l7 + 0x38]
	bgu,pt	%xcc,	loop_5747
	ld	[%l7 + 0x64],	%f3
	array16	%o7,	%o1,	%i4
	tcc	%xcc,	0x1
loop_5747:
	siam	0x3
	movvs	%icc,	%l3,	%l6
	tne	%icc,	0x1
	tleu	%icc,	0x3
	fble	%fcc2,	loop_5748
	bl,a	%icc,	loop_5749
	fmovdne	%xcc,	%f4,	%f5
	ldsb	[%l7 + 0x25],	%g6
loop_5748:
	bcs,a,pn	%xcc,	loop_5750
loop_5749:
	nop
	setx loop_5751, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	fpsub32	%f0,	%f2,	%f2
	orcc	%l2,	0x009D,	%i3
loop_5750:
	fmovdvc	%xcc,	%f10,	%f6
loop_5751:
	bneg,a	%icc,	loop_5752
	ldsh	[%l7 + 0x62],	%l5
	mulx	%i2,	0x0A35,	%i5
	fpsub32	%f8,	%f8,	%f0
loop_5752:
	ble,a,pn	%icc,	loop_5753
	ldd	[%l7 + 0x10],	%f6
	nop
	setx loop_5754, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	bvc,pt	%icc,	loop_5755
loop_5753:
	nop
	setx loop_5756, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tpc
	add %l1, 0x4, %l1
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	retry
	stb	%g1,	[%l7 + 0x19]
loop_5754:
	sll	%o0,	%g2,	%l0
loop_5755:
	xnor	%o3,	0x1E1C,	%o5
loop_5756:
	array32	%g7,	%l4,	%g3
	fpsub16s	%f12,	%f11,	%f15
	fbl	%fcc0,	loop_5757
	fbe,a	%fcc3,	loop_5758
	brlz	%i6,	loop_5759
	st	%f13,	[%l7 + 0x74]
loop_5757:
	fxors	%f10,	%f4,	%f7
loop_5758:
	fpackfix	%f14,	%f5
loop_5759:
	fors	%f7,	%f3,	%f9
	ldsw	[%l7 + 0x60],	%i7
	tvc	%xcc,	0x3
	fpmerge	%f1,	%f6,	%f10
	ldsb	[%l7 + 0x57],	%o2
	lduh	[%l7 + 0x68],	%i0
	ldsw	[%l7 + 0x2C],	%l1
	fandnot2s	%f4,	%f2,	%f10
	tvs	%icc,	0x1
	movg	%xcc,	%o4,	%i1
	fmovde	%icc,	%f3,	%f4
	fbue	%fcc1,	loop_5760
	movrne	%g4,	0x282,	%o6
	sth	%o7,	[%l7 + 0x4E]
	fmovrdne	%o1,	%f0,	%f10
loop_5760:
	ld	[%l7 + 0x18],	%f5
	tvc	%icc,	0x5
	movn	%icc,	%i4,	%l3
	subc	%g5,	%l6,	%g6
	stb	%i3,	[%l7 + 0x31]
	st	%f7,	[%l7 + 0x60]
	fnand	%f6,	%f8,	%f0
	movcs	%xcc,	%l5,	%l2
	edge16ln	%i5,	%g1,	%o0
	ble,a,pt	%xcc,	loop_5761
	fones	%f15
	array32	%g2,	%l0,	%i2
	ldsh	[%l7 + 0x10],	%o3
loop_5761:
	fornot1s	%f13,	%f9,	%f4
	movn	%icc,	%o5,	%l4
	movrne	%g3,	%g7,	%i7
	lduh	[%l7 + 0x50],	%i6
	tvc	%icc,	0x4
	ldub	[%l7 + 0x18],	%o2
	bvc,a	loop_5762
	ldub	[%l7 + 0x0A],	%i0
	movvc	%icc,	%o4,	%i1
	fmovrslz	%l1,	%f6,	%f12
loop_5762:
	ldd	[%l7 + 0x08],	%f14
	fmovrse	%o6,	%f10,	%f8
	lduw	[%l7 + 0x34],	%g4
	bcs,a	loop_5763
	fmovrsne	%o1,	%f4,	%f6
	fcmpd	%fcc1,	%f6,	%f0
	fandnot2s	%f13,	%f15,	%f1
loop_5763:
	tgu	%xcc,	0x2
	ldsh	[%l7 + 0x68],	%i4
	st	%f10,	[%l7 + 0x28]
	sll	%o7,	0x08,	%g5
	ba,pn	%icc,	loop_5764
	movrlz	%l3,	%l6,	%g6
	nop
	setx loop_5765, %l0, %l1
	wrpr 0x1, %tl
	wrpr %l1, %tnpc
	setx 0x34400001400, %l0, %l1
	wrpr %l1, %tstate
	wrhpr 0x4, %htstate
	done
	udivcc	%i3,	0x071E,	%l2
loop_5764:
	andn	%i5,	0x15FE,	%g1
	fmul8sux16	%f12,	%f4,	%f4
loop_5765:
	sra	%l5,	%o0,	%g2
	bcc,a	%xcc,	loop_5766
	addccc	%i2,	0x10E8,	%o3
	bg,pn	%xcc,	loop_5767
	movg	%icc,	%l0,	%o5
loop_5766:
	taddcctv	%g3,	%l4,	%i7
	umul	%g7,	0x1133,	%o2
loop_5767:
	fmovrdgez	%i6,	%f0,	%f2
	tvs	%xcc,	0x2
	movcc	%xcc,	%o4,	%i1
	fmovsleu	%xcc,	%f11,	%f8
	fornot2	%f2,	%f10,	%f12
	fbn,a	%fcc2,	loop_5768
	stb	%l1,	[%l7 + 0x20]
	move	%icc,	%i0,	%g4
	fmovsvs	%icc,	%f3,	%f10
loop_5768:
	stb	%o6,	[%l7 + 0x2E]
	movrgz	%o1,	0x16F,	%i4
	stx	%g5,	[%l7 + 0x60]
	fnegd	%f2,	%f10
	ldd	[%l7 + 0x30],	%f10
	fbge	%fcc2,	loop_5769
	tn	%icc,	0x4
	ldd	[%l7 + 0x40],	%f10
	lduh	[%l7 + 0x5C],	%l3
loop_5769:
	fnands	%f5,	%f9,	%f3
	movvs	%icc,	%l6,	%g6
	stx	%i3,	[%l7 + 0x20]
	ldub	[%l7 + 0x0B],	%l2
	fmovdle	%xcc,	%f2,	%f12
	lduw	[%l7 + 0x3C],	%i5
	fmul8x16al	%f2,	%f14,	%f6
	fcmps	%fcc2,	%f12,	%f15
	bleu	loop_5770
	siam	0x5
	ldd	[%l7 + 0x48],	%f14
	fmul8x16al	%f8,	%f7,	%f6
loop_5770:
	fmovrde	%g1,	%f4,	%f0
	tl	%icc,	0x1
	tle	%icc,	0x4
	subcc	%l5,	%o7,	%g2
	addcc	%i2,	%o3,	%o0
	fbue,a	%fcc2,	loop_5771
	be,pt	%icc,	loop_5772
	bgu,pn	%xcc,	loop_5773
	fmovscc	%xcc,	%f15,	%f9
loop_5771:
	fmovsn	%xcc,	%f7,	%f14
loop_5772:
	fmovdgu	%xcc,	%f7,	%f13
loop_5773:
	ldsh	[%l7 + 0x6E],	%o5
	ldx	[%l7 + 0x50],	%l0
	fmovrse	%g3,	%f7,	%f12
	movvc	%icc,	%i7,	%l4
	movle	%xcc,	%g7,	%i6
	fbo,a	%fcc1,	loop_5774
	and	%o4,	0x13F9,	%i1
	fmovdcc	%icc,	%f11,	%f13
	fmovrsgz	%l1,	%f0,	%f10
loop_5774:
	movge	%xcc,	%o2,	%i0
	bgu,a	loop_5775
	movneg	%icc,	%g4,	%o6
	xor	%o1,	0x0420,	%g5
	fmovd	%f4,	%f2
loop_5775:
	fbg	%fcc3,	loop_5776
	bcs,a,pt	%icc,	loop_5777
	for	%f8,	%f2,	%f14
	fnegs	%f1,	%f2
loop_5776:
	movrgez	%i4,	%l3,	%g6
loop_5777:
	fnors	%f5,	%f7,	%f11
	and	%i3,	%l2,	%i5
	subc	%l6,	%g1,	%l5
	fandnot1s	%f1,	%f4,	%f8
	ldd	[%l7 + 0x18],	%f4
	stb	%o7,	[%l7 + 0x68]
	lduh	[%l7 + 0x76],	%i2
	fandnot1	%f8,	%f14,	%f10
	fornot1	%f2,	%f2,	%f2
	fcmple32	%f10,	%f12,	%g2
	fmovrslz	%o0,	%f0,	%f6
	fcmpne32	%f14,	%f2,	%o3
	bg,a,pt	%icc,	loop_5778
	ldsh	[%l7 + 0x66],	%l0
	fsrc1s	%f13,	%f5
	lduh	[%l7 + 0x50],	%g3
loop_5778:
	andn	%i7,	0x0946,	%o5
	fbl,a	%fcc3,	loop_5779
	sdivcc	%l4,	0x1EF1,	%g7
	siam	0x2
	fsrc1	%f10,	%f2
loop_5779:
	stw	%i6,	[%l7 + 0x68]
	lduh	[%l7 + 0x44],	%i1
	stb	%o4,	[%l7 + 0x1B]
	subccc	%l1,	0x121D,	%o2
	ld	[%l7 + 0x08],	%f9
	ldx	[%l7 + 0x60],	%g4
	fmovrslez	%i0,	%f10,	%f14
	fpsub16s	%f12,	%f4,	%f6
	fmovsleu	%xcc,	%f7,	%f6
	ldsb	[%l7 + 0x6D],	%o1
	stw	%o6,	[%l7 + 0x70]
	ldsh	[%l7 + 0x60],	%g5
	fmul8x16au	%f5,	%f7,	%f6
	bshuffle	%f12,	%f12,	%f2
	fmovd	%f12,	%f10
	fandnot1s	%f6,	%f7,	%f13
	and	%i4,	%g6,	%l3
	fmovsa	%icc,	%f12,	%f10
	fcmple16	%f6,	%f14,	%l2
	lduw	[%l7 + 0x28],	%i5
	fsrc1s	%f3,	%f6
	add	%i3,	%g1,	%l6
	fcmps	%fcc1,	%f15,	%f15
	fmovdpos	%xcc,	%f7,	%f8
	movge	%xcc,	%o7,	%l5
	lduw	[%l7 + 0x64],	%i2
	ldsw	[%l7 + 0x20],	%o0
	movrgz	%o3,	0x3C5,	%g2
	lduw	[%l7 + 0x50],	%g3
	ldub	[%l7 + 0x63],	%i7
	fmovdcc	%icc,	%f5,	%f7
	stx	%o5,	[%l7 + 0x70]
	smul	%l4,	%l0,	%g7
	fxor	%f2,	%f14,	%f4
	movg	%icc,	%i6,	%o4
	movvc	%xcc,	%i1,	%o2
	call	loop_5780
	subcc	%l1,	0x1B38,	%i0
	ld	[%l7 + 0x20],	%f15
	srax	%g4,	%o1,	%o6
loop_5780:
	std	%f0,	[%l7 + 0x58]
	stb	%g5,	[%l7 + 0x68]
	orcc	%i4,	0x0157,	%l3
	ldd	[%l7 + 0x10],	%f6
	fzeros	%f3
	fmovde	%icc,	%f11,	%f7
	fabsd	%f10,	%f4
	st	%f11,	[%l7 + 0x10]
	sth	%g6,	[%l7 + 0x76]
	movrgez	%l2,	0x34D,	%i5
	fblg,a	%fcc2,	loop_5781
	bl,a	loop_5782
	ldub	[%l7 + 0x23],	%i3
	andcc	%l6,	0x0A6C,	%g1
loop_5781:
	tvc	%icc,	0x2
loop_5782:
	edge32l	%o7,	%l5,	%i2
	std	%f12,	[%l7 + 0x48]
	fnands	%f15,	%f15,	%f3
	sethi	0x08B5,	%o0
	ld	[%l7 + 0x2C],	%f8
	fornot2	%f6,	%f0,	%f10
	ldub	[%l7 + 0x37],	%g2
	ba,a,pt	%xcc,	loop_5783
	lduh	[%l7 + 0x28],	%o3
	ldsh	[%l7 + 0x1A],	%g3
	bleu,pn	%icc,	loop_5784
loop_5783:
	xor	%o5,	%l4,	%i7
	ldub	[%l7 + 0x4B],	%l0
	sub	%i6,	%g7,	%o4
loop_5784:
	ld	[%l7 + 0x3C],	%f0
	lduw	[%l7 + 0x2C],	%o2
	fbuge,a	%fcc0,	loop_5785
	brlez	%i1,	loop_5786
	fmovs	%f7,	%f10
	fexpand	%f3,	%f4
loop_5785:
	sethi	0x109E,	%l1
loop_5786:
	fmovrslz	%i0,	%f11,	%f8
	fxor	%f2,	%f14,	%f4
	array8	%g4,	%o1,	%g5
	ldub	[%l7 + 0x3D],	%i4
	fone	%f2
	fbul	%fcc2,	loop_5787
	stw	%l3,	[%l7 + 0x24]
	fmovsa	%icc,	%f1,	%f7
	stx	%g6,	[%l7 + 0x10]
loop_5787:
	fmovsvc	%icc,	%f15,	%f8
	stb	%l2,	[%l7 + 0x50]
	ld	[%l7 + 0x2C],	%f8
	fbul	%fcc0,	loop_5788
	ldsb	[%l7 + 0x10],	%i5
	ld	[%l7 + 0x48],	%f7
	fmovdne	%xcc,	%f15,	%f12
loop_5788: