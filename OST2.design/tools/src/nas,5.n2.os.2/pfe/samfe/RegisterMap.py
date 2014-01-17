"""map ni-simics register name to riesling counterpart
"""

"""
A reg is an integer register name. It can have any of the following values:
%r0-%r31
%g0-%g7 (global registers; same as %r0-%r7)
%o0-%o7 (out registers; same as %r8-%r15)
%l0-%l7 (local registers; same as %r16-%r23)
%i0-%i7 (in registers; same as %r24-%r31)
%fp (frame pointer; conventionally same as %i6)
%sp (stack pointer; conventionally same as %o6)
"""

LEVEL_SYS    = 0
LEVEL_CPU    = 1
LEVEL_CORE   = 2
LEVEL_UCORE  = 3
LEVEL_STRAND = 4

class RegisterMap:
    """
    """

    def __init__ (self,arch):
	"""
	"""
	# maintain a mapping between register names used by this
	# front end, and the common lower level layer name.

	self.regMap = { }
	self.regMapArch = {}
	self.regMapAsi = {}

	self.__regMapN2__ = {}

	self.regMap['g0'] = ['g0',0]
	self.regMap['g1'] = ['g1',1]
	self.regMap['g2'] = ['g2',2] 
	self.regMap['g3'] = ['g3',3]
	self.regMap['g4'] = ['g4',4]
	self.regMap['g5'] = ['g5',5]
	self.regMap['g6'] = ['g6',6]
	self.regMap['g7'] = ['g7',7]
	self.regMap['o0'] = ['o0',8]
	self.regMap['o1'] = ['o1',9]
	self.regMap['o2'] = ['o2',10]
	self.regMap['o3'] = ['o3',11]
	self.regMap['o4'] = ['o4',12]
	self.regMap['o5'] = ['o5',13]
	self.regMap['o6'] = ['o6',14]
	self.regMap['o7'] = ['o7',15]
	self.regMap['l0'] = ['l0',16]
	self.regMap['l1'] = ['l1',17]
	self.regMap['l2'] = ['l2',18]
	self.regMap['l3'] = ['l3',19]
	self.regMap['l4'] = ['l4',20]
	self.regMap['l5'] = ['l5',21]
	self.regMap['l6'] = ['l6',22]
	self.regMap['l7'] = ['l7',23]
	self.regMap['i0'] = ['i0',24]
	self.regMap['i1'] = ['i1',25]
	self.regMap['i2'] = ['i2',26]
	self.regMap['i3'] = ['i3',27]
	self.regMap['i4'] = ['i4',28]
	self.regMap['i5'] = ['i5',29]
	self.regMap['i6'] = ['i6',30]
	self.regMap['i7'] = ['i7',31]
	self.regMap['pc'] = ['pc',32]
	self.regMap['npc'] = ['npc',33]
	self.regMap['y'] = ['y',34]
	self.regMap['ccr'] = ['ccr',35]
	self.regMap['fprs'] = ['fprs',36]
	self.regMap['fsr'] = ['fsr',37]
	self.regMap['asi'] = ['asi',38]
	self.regMap['tick'] = ['tick',39]
	self.regMap['gsr'] = ['gsr',40]
	self.regMap['tick_cmpr'] = ['tick_cmpr',41]
	# in Ni/N2 stick is an alias of tick, but archState has separate
	# variable for each. N2_InstrEmu has stick_ = tick_ so change to 
	# either one will actually change ONLY tick, stick remains 0 always.
	#self.regMap['stick'] = (42,LEVEL_STRAND,)
	self.regMap['stick'] = ['stick',42]
	self.regMap['stick_cmpr'] = ['stick_cmpr',43]
	self.regMap['pstate'] = ['pstate',44]
	self.regMap['tl'] = ['tl',45]
	self.regMap['pil'] = ['pil',46]
	self.regMap['tpc1'] = ['t[1].tpc',47]
	self.regMap['tpc2'] = ['t[2].tpc',48]
	self.regMap['tpc3'] = ['t[3].tpc',49]
	self.regMap['tpc4'] = ['t[4].tpc',50]
	self.regMap['tpc5'] = ['t[5].tpc',51]
	# self.regMap['tpc6'] = ['t[6].tpc',52]
	self.regMap['tnpc1'] = ['t[1].tnpc',57]
	self.regMap['tnpc2'] = ['t[2].tnpc',58]
	self.regMap['tnpc3'] = ['t[3].tnpc',59]
	self.regMap['tnpc4'] = ['t[4].tnpc',60]
	self.regMap['tnpc5'] = ['t[5].tnpc',61] 
	# self.regMap['tnpc6'] = ['t[6].tnpc',61] XXX aborts
	self.regMap['tstate1'] = ['t[1].tstate',67]
	self.regMap['tstate2'] = ['t[2].tstate',68]
	self.regMap['tstate3'] = ['t[3].tstate',69]
	self.regMap['tstate4'] = ['t[4].tstate',70]
	self.regMap['tstate5'] = ['t[5].tstate',71]
	# self.regMap['tstate6'] = ['t[6].tstate',72] XXX aborts on this read
	self.regMap['tt1'] = ['t[1].tt',77]
	self.regMap['tt2'] = ['t[2].tt',78]
	self.regMap['tt3'] = ['t[3].tt',79]
	self.regMap['tt4'] = ['t[4].tt',80]
	self.regMap['tt5'] = ['t[5].tt',81]
	# self.regMap['tt6'] = ['t[6].tt',82]
	self.regMap['tba'] = ['tba',87]
	self.regMap['ver'] = ['hver',88]
	self.regMap['cwp'] = ['cwp',89]
	self.regMap['cansave'] = ['cansave',90]
	self.regMap['canrestore'] = ['canrestore',91]
	self.regMap['otherwin'] = ['otherwin',92]
	self.regMap['wstate'] = ['wstate',93]
	self.regMap['cleanwin'] = ['cleanwin',94]
	self.regMap['softint'] = ['softint',95]
	self.regMap['gl'] = ['gl',107]
	self.regMap['hpstate'] = ['hpstate',108]
	self.regMap['htstate1'] = ['t[1].htstate',109]
	self.regMap['htstate2'] = ['t[2].htstate',110]
	self.regMap['htstate3'] = ['t[3].htstate',111]
	self.regMap['htstate4'] = ['t[4].htstate',112]
	self.regMap['htstate5'] = ['t[5].htstate',113]
	# self.regMap['htstate6'] = ['t[6].htstate',114] XXX aborts on this read
	self.regMap['htba'] = ['htba',119]
	self.regMap['hintp'] = ['hintp',120]
	self.regMap['hstick_cmpr'] = ['hstick_cmpr',121]
	self.regMap['fp'] = ['i6',30]
	self.regMap['sp'] = ['o6',14]

	# these seem to be N2 specific regs.
	# support is absent in the back end.
	self.__regMapN2__['ecache_error_enable'] = ['',96]
	self.__regMapN2__['asynchronous_fault_status'] = ['',97]
	self.__regMapN2__['asynchronous_fault_address'] = ['',99]
	self.__regMapN2__['out_intr_data0'] = ['',99]
	self.__regMapN2__['out_intr_data1'] = ['',100]
	self.__regMapN2__['out_intr_data2'] = ['',101]
	self.__regMapN2__['intr_dispatch_status'] = ['',102]
	self.__regMapN2__['in_intr_data0'] = ['',103]
	self.__regMapN2__['in_intr_data1'] = ['',104]
	self.__regMapN2__['in_intr_data2'] = ['',105]
	self.__regMapN2__['intr_receive'] = ['',106]
	self.__regMapN2__['tpc6'] = ['t[6].tpc',52]
	self.__regMapN2__['tnpc6'] = ['t[6].tnpc',62]
	self.__regMapN2__['tstate6'] = ['t[6].tstate',72]
	self.__regMapN2__['tt6'] = ['t[6].tt',82]
	self.__regMapN2__['htstate6'] = ['t[6].htstate',114]
	
	# asi related registers. All the cmp and mmu related registers
	# start wil CMP_ & MMU_ respectively. Maintain the same convention
	# if/when adding new registers.
	# format dir[regname] = [asi,va]
	self.__asiRegMapN2__ = {}
	#####################################################
	N2_ASI_CMP = 0x41
	N2_ASI_CMP_CORE_ID = 0x63
	N2_ASI_CMP_CORE_INTR_ID = 0x63
	N2_ASI_SCRATCHPAD = 0x20
	N2_ASI_INTR_RECEIVE = 0x72
	N2_ASI_INTR_W = 0x73
	N2_ASI_INTR_R = 0x74

	self.__asiRegMapN2__['CMP_core_available'] = [N2_ASI_CMP,0x0]
	self.__asiRegMapN2__['CMP_core_enable_status'] = [N2_ASI_CMP,0x10]
	self.__asiRegMapN2__['CMP_core_enable'] = [N2_ASI_CMP,0x20]
	self.__asiRegMapN2__['CMP_xir_steering'] = [N2_ASI_CMP,0x30]
	self.__asiRegMapN2__['CMP_tick_enable'] = [N2_ASI_CMP,0x38]
	self.__asiRegMapN2__['CMP_running'] = [N2_ASI_CMP,0x50]
	self.__asiRegMapN2__['CMP_running_status'] = [N2_ASI_CMP,0x58]
	self.__asiRegMapN2__['CMP_core_id'] = [N2_ASI_CMP_CORE_ID,0x0]
	self.__asiRegMapN2__['CMP_core_intr_id'] = [N2_ASI_CMP_CORE_INTR_ID,0x10]
	self.__asiRegMapN2__['scratch-pad0'] = [N2_ASI_SCRATCHPAD,0x0]
	self.__asiRegMapN2__['scratch-pad1'] = [N2_ASI_SCRATCHPAD,0x10]
	self.__asiRegMapN2__['scratch-pad2'] = [N2_ASI_SCRATCHPAD,0x18]
	self.__asiRegMapN2__['scratch-pad3'] = [N2_ASI_SCRATCHPAD,0x20]
	self.__asiRegMapN2__['scratch-pad4'] = [N2_ASI_SCRATCHPAD,0x30]
	self.__asiRegMapN2__['intr_recv_reg'] = [N2_ASI_INTR_RECEIVE,0x0]
	self.__asiRegMapN2__['intr_incoming_reg'] = [N2_ASI_INTR_R,0x0]
	self.__asiRegMapN2__['MMU_ID_PRIMARY_CTXT_REG_0'] = [0x21,0x8]
	self.__asiRegMapN2__['MMU_D_SCNDRY_CTXT_REG_0'] = [0x21,0x10]
	self.__asiRegMapN2__['MMU_ID_PRIMARY_CTXT_REG_1'] = [0x21,0x108]
	self.__asiRegMapN2__['MMU_D_SCNDRY_CTXT_REG_1'] = [0x21,0x110]
	self.__asiRegMapN2__['MMU_LSU_CONTROL'] = [0x45,0x0]
	self.__asiRegMapN2__['MMU_ITSB_TAG_TARGET'] = [0x50,0x0]
	self.__asiRegMapN2__['MMU_ISFSR'] = [0x50,0x18]
	self.__asiRegMapN2__['MMU_ITLB_TAG_ACCESS'] = [0x50,0x30]
	self.__asiRegMapN2__['MMU_IMMU_VA_WATCHPOINT'] = [0x50,0x38]
	self.__asiRegMapN2__['MMU_MRA_ACCESS'] = [0x51,0x0]
	self.__asiRegMapN2__['MMU_REAL_RANGE_0'] = [0x52,0x108]
	self.__asiRegMapN2__['MMU_REAL_RANGE_1'] = [0x52,0x110]
	self.__asiRegMapN2__['MMU_REAL_RANGE_2'] = [0x52,0x118]
	self.__asiRegMapN2__['MMU_REAL_RANGE_3'] = [0x52,0x120]
	self.__asiRegMapN2__['MMU_PHYSICAL_OFFSET_0'] = [0x52,0x208]
	self.__asiRegMapN2__['MMU_PHYSICAL_OFFSET_1'] = [0x52,0x210]
	self.__asiRegMapN2__['MMU_PHYSICAL_OFFSET_2'] = [0x52,0x218]
	self.__asiRegMapN2__['MMU_PHYSICAL_OFFSET_3'] = [0x52,0x220]
	self.__asiRegMapN2__['MMU_ZERO_CONTEXT_TSB_CONFIG_0'] = [0x54,0x10]
	self.__asiRegMapN2__['MMU_ZERO_CONTEXT_TSB_CONFIG_1'] = [0x54,0x18]
	self.__asiRegMapN2__['MMU_ZERO_CONTEXT_TSB_CONFIG_2'] = [0x54,0x20]
	self.__asiRegMapN2__['MMU_ZERO_CONTEXT_TSB_CONFIG_3'] = [0x54,0x28]
	self.__asiRegMapN2__['MMU_NONZERO_CONTEXT_TSB_CONFIG_0'] = [0x54,0x30]
	self.__asiRegMapN2__['MMU_NONZERO_CONTEXT_TSB_CONFIG_1'] = [0x54,0x38]
	self.__asiRegMapN2__['MMU_NONZERO_CONTEXT_TSB_CONFIG_2'] = [0x54,0x40]
	self.__asiRegMapN2__['MMU_NONZERO_CONTEXT_TSB_CONFIG_3'] = [0x54,0x48]
	self.__asiRegMapN2__['MMU_ITSB_PTR_0'] = [0x54,0x50]
	self.__asiRegMapN2__['MMU_ITSB_PTR_1'] = [0x54,0x58]
	self.__asiRegMapN2__['MMU_ITSB_PTR_2'] = [0x54,0x60]
	self.__asiRegMapN2__['MMU_ITSB_PTR_3'] = [0x54,0x68]
	self.__asiRegMapN2__['MMU_DTSB_PTR_0'] = [0x54,0x70]
	self.__asiRegMapN2__['MMU_DTSB_PTR_1'] = [0x54,0x78]
	self.__asiRegMapN2__['MMU_DTSB_PTR_2'] = [0x54,0x80]
	self.__asiRegMapN2__['MMU_DTSB_PTR_3'] = [0x54,0x88]
	self.__asiRegMapN2__['MMU_PENDING_TABLEWALK_CONTROL'] = [0x54,0x90]
	self.__asiRegMapN2__['MMU_PENDING_TABLEWALK_STATUS'] = [0x54,0x98]
	for i in range(0x0,0x200,0x8):
	    self.__asiRegMapN2__['MMU_ITLB_DATA_ACCESS_REG_%X' % (i,)] = [0x55,i]
	for i in range(0x0,0x200,0x8):
	    self.__asiRegMapN2__['MMU_ITLB_TAG_READ_REG_%X' % (i,)] = [0x56,i]
	self.__asiRegMapN2__['MMU_DTSB_TAG_TARGET'] = [0x58,0x0]
	self.__asiRegMapN2__['MMU_DSFSR'] = [0x58,0x18]
	self.__asiRegMapN2__['MMU_DSFAR'] = [0x58,0x20]
	self.__asiRegMapN2__['MMU_DTLB_TAG_ACCESS'] = [0x58,0x30]
	self.__asiRegMapN2__['MMU_DMMU_WATCHPOINT'] = [0x58,0x38]
	self.__asiRegMapN2__['MMU_HWTW_CONFIG'] = [0x58,0x40]
	self.__asiRegMapN2__['MMU_PARTITION_ID'] = [0x58,0x80]
	for i in range(0x0,0x800,0x8):
	    self.__asiRegMapN2__['MMU_DTLB_DATA_ACCESS_REG_%X' % (i,)] = [0x5d,i]
	for i in range(0x0,0x800,0x8):
	    self.__asiRegMapN2__['MMU_DTLB_TAG_READ_REG_%X' % (i,)] = [0x5e,i]
	#####################################################

	#####################################################
	
	#####################################################

	# assign to regMapArch and asiRegMap based upon the 
	# architecture being simulated
	if arch == 'n2':
	    self.regMapArch = self.__regMapN2__
	    self.asiRegMap = self.__asiRegMapN2__
	else:
	    self.regMapArch = None
	    self.asiRegMap = None


    def key2id(self,key):
	if self.regMap.has_key(key):
	    return self.regMap[key][1]
	elif self.regMapArch.has_key(key):
	    return self.regMapArch[key][1]
	else:
	    return -1	

    def id2key(self,id):
	""" return the Back end name for register id 
	"""
	for reg in self.regMap.keys():
	    if self.regMap[reg][1] == id:
		return self.regMap[reg][0]

	for reg in self.regMapArch.keys():
	    if self.regMapArch[reg][1] == id:
		return self.regMapArch[reg][0]

	return ''


    def hasReg(self, name):
	if self.regMap.has_key(name):
	    return True
	elif self.regMapArch.has_key(name):
	    return True
	else:
	    return False


    def feName2beName(self,feName):
	if self.regMap.has_key(feName):
	    return self.regMap[feName][0]
	elif self.regMapArch.has_key(feName):
	    return self.regMapArch[feName][0]
	else:
	    return ''

