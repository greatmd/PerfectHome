"""provide user commands' equivalent of function calls.
"""

import re, sys

import RegisterMap

import Pfe_Tlb
import Pfe_Assembler

NAME_CPU    = 'cpu'
NAME_CORE   = 'core'
NAME_UCORE   = 'ucore'
NAME_STRAND = 'strand'

TRAP_LEVEL = 6

# before any function in this file is used, the following global variables 
# must be assigned a valid object.
_myReposit = None   # RiesReposit object
_myRegmap = None
_asiRegMap = {}
_myNstrandObj = 1
_myCpusize = 0
_myCoresize = 0
_myuCoresize = 0

_myStrandMap = { }
_myuCoreMap = { }
_myCoreMap = { }
_myCpuMap = { }

_myInstrCount = { }
_myLastTid = 0

_myVerbose = 1

# zzz_cmd_RS() function registry
# API_DOCS[api-ext]=('api-ext syntax', 'API-EXT', 'short-desc', 'long-desc')
# RS_zzz() API registry
# API_DOCS[api]=('api syntax', 'API', 'short-desc', 'long-desc')
API_DOCS = { }


class AddrType:
    """
    the origin of an address
    """
    PA_TYPE = 0
    RA_TYPE = 1
    VA_TYPE = 2


class InstrInfo:
    """a class contins instr information
    TODO  need more work/fields
    """
    def __init__ (self, name, type):
	"""
	"""
	self.name = name
	self.type = type


def initCmdParserNiCmd (reposit, nstrandObjs):
    """this function must be called before any other functions in this file
    can be used.
    """
    global _myReposit
    global _myNstrandObj
    global _myCpusize
    global _myCoresize
    global _myuCoresize
    global _myInstrCount
    global _asiRegMap
    global _myRegmap

##     global nasUtil

    _myReposit = reposit
    _myRegmap = RegisterMap.RegisterMap(reposit.optdir['--ar'])
    if _myReposit.nucores == 0:
	_myCpusize = _myReposit.ncores * _myReposit.nstrands
	_myCoresize = _myReposit.nstrands
	_myuCoresize = 1
    else:
	_myCpusize = _myReposit.ncores * _myReposit.nucores * _myReposit.nstrands
	_myCoresize = _myReposit.nucores * _myReposit.nstrands
	_myuCoresize = _myReposit.nstrands

    total = _myCpusize * _myReposit.ncpus
    if total != nstrandObjs:
	sys.stderr.write('WARNING: CmdParserNiCmd: initCmdParserNiCmd: total=%d, nstrandObjs=%d\n' % (total, nstrandObjs))

    _myNstrandObj = nstrandObjs
    i = 0
    while i < _myNstrandObj:
	_myInstrCount[i] = 0
	i += 1

    asiRegMap = _myRegmap.regMapAsi
    for reg in asiRegMap:
	regName = reg
	asi = asiRegMap[reg][0]
	va = asiRegMap[reg][1]
	# ha144505: commented this out as asi_alias is per strand
	# and should be called for each strand. This here is wrong
	# and we're having trouble gettiung the Sam Front end to work.
	# TODO TODO TODO TODO TODO cleanup

	# registering an alias with a single strand, registers it for
	# all the strands ... uncommented
	# ERROR: Pfe_Strand.GetAttrError: The strand has no getable state member 'asi_alias'
        #_myReposit.riesling.s[0].asi_alias(regName,asi,va)

    _asiRegMap = asiRegMap
    _initDoc()


def _initDoc ():
    """ATTENTION!! remember to register any additional zzz_cmd_RS() or
    RS_zzz() document.
    """
    global API_DOCS

    API_DOCS['RS_set_quiet'] = ("RS_set_quiet(num)", 'API', 'num=1 enable quiet mode, 0 disable it', 'TODO')
    API_DOCS['RS_logical_to_physical'] = ("RS_logical_to_physical(tid,type,addr)", 'API', 'convert logical address to physical address', 'TODO')
    API_DOCS['RS_write_phys_memory'] = ("RS_write_phys_memory(tid,addr,value,size)", 'API', 'write to a physical memory', 'TODO')
    API_DOCS['RS_read_phys_memory'] = ("RS_read_phys_memory(tid,addr,size)", 'API', 'read from a physical memory', 'TODO')
    API_DOCS['RS_disassemble'] = ("RS_disassemble(tid,addr,isva)", 'API', 'disassemble an instruction', 'TODO')
    API_DOCS['RS_disassemblePC'] = ("RS_disassemblePC(tid)", 'API', 'disassemble the just executed instruction', 'TODO')
    API_DOCS['RS_read_fp_register_x'] = ("RS_read_fp_register_x(tid,regid)", 'API', 'read from a floating-point double register' ,'TODO')
    API_DOCS['RS_read_fp_register_i'] = ("RS_read_fp_register_i(tid,regid)", 'API', 'read from a floating-point single register' ,'TODO')
    API_DOCS['RS_write_fp_register_x'] = ("RS_write_fp_register_x(tid,regid,value)", 'API', 'write to a floating-point double register' ,'TODO')
    API_DOCS['RS_write_fp_register_i'] = ("RS_write_fp_register_i(tid,regid,value)", 'API', 'write to a floating-point single register' ,'TODO')
    API_DOCS['RS_print_archregs'] = ("RS_print_archregs(tid=0,a_str='')", 'API', 'print out integer/floating-point/control registers', 'TODO')
    API_DOCS['RS_print_regs'] = ("RS_print_regs(tid=0,a_str='')", 'API', 'print out integer/floating-point/control registers', 'TODO')
    API_DOCS['RS_print_fpregs'] = ("RS_print_fpregs(tid=0)", 'API', 'print out floating-point registers', 'TODO')
    API_DOCS['RS_print_mmuregs'] = ("RS_print_mmuregs(tid=0)", 'API', 'print out mmu regsiters', 'TODO')
    API_DOCS['RS_print_cmpregs'] = ("RS_print_cmpregs(tid=0)", 'API', 'print out cmp regsiters', 'TODO')
    API_DOCS['RS_get_register_number'] = ("RS_get_register_number(tid,regname)", 'API', 'convert a regname to a regid', 'TODO')
    API_DOCS['RS_write_register'] = ("RS_write_register(tid,regid,value)", 'API', 'write to a register by regid', 'TODO')
    API_DOCS['RS_write_register_name'] = ("RS_write_register_name(regname,value,tid=0)", 'API', 'write to a register by regname', 'TODO')
    API_DOCS['RS_read_register'] = ("RS_read_register(tid,regid)", 'API', 'read a register by regid', 'TODO')
    API_DOCS['RS_read_register_name'] = ("RS_read_register_name(regname,tid=0)", 'API', 'read a register by regname', 'TODO')
    API_DOCS['RS_asi_read'] = ("RS_asi_read(asi,va,tid)", 'API', 'read an asi value by asi/va', 'TODO')
    API_DOCS['RS_asi_write'] = ("RS_asi_write(asi,va,value,tid)", 'API', 'write an asi value by asi/va', 'TODO')
    API_DOCS['RS_dump_tlb'] = ("RS_dump_tlb(tid,itlb,valid)", 'API', 'dump i/d-tlb content', 'TODO')
    API_DOCS['RS_dump_memory'] = ("RS_dump_memory(fileName,startPA,size,binary=0)", 'API', 'dump memory content', 'TODO')


def showApiDoc (key=None):
    """return 1 means a match is found, 0 means no match
    """
    if key:
	# strip off ' ', '(', or ')',  they are not part of the key
	i = key.find('(')
	if i > -1:
	    key = key[:i]
	key = key.strip()
	if API_DOCS.has_key(key):
	    (func,type,shortd,longd) = API_DOCS[key]
	    print '%s: %s: \t%s' % (type, func, shortd)
	    if longd and longd != 'TODO':
		print '\t\t%s' % (longd)
	    return 1
	else:
	    return 0
    else:
	# show all docs
	byType = { }
	for (key2,(func,type,shortd,longd)) in API_DOCS.items():
	    if not byType.has_key(type):
		byType[type] = { }
	    byType[type][key2] = (func,type,shortd,longd)
	klist = byType.keys()
	klist.sort()
	for key2 in klist:
	    klist3 = byType[key2].keys()
	    klist3.sort()
	    for key3 in klist3:
		(func,type,shortd,longd) = byType[key2][key3]
		#print '%s: %s: \t%s' % (type, func, shortd)
		print '%s: %s' % (type, func)
    return 1



def _evalCmd (cmd):
    """
    """
    #print '#DBX: cmd=', cmd
    #sys.stdout.write(cmd +"\n")
    return eval(cmd, _myReposit.globals, locals())

def _execCmd (cmd):
    """
    """
    exec cmd in _myReposit.globals, locals()
    return

###############################################################################

def incrIcount_RSI (tid, count=1):
    """RSI means riesling internal, not meant for general users
    """
    global _myInstrCount
    global _myLastTid

    _myInstrCount[tid] += count
    _myLastTid = tid


def getIcount_RSI (tid):
    """
    """
    return _myInstrCount[tid]


def setLastTid_RSI (tid):
    """
    """
    global _myLastTid

    _myLastTid = tid
    

def getLastTid_RSI ():
    """
    """
    return _myLastTid


def isVerbose ():
    """
    """
    return _myVerbose

###############################################################################

def sstepi_cmd_RS (thStr):
    """e.g., thStr='l0'
    """
    tid = int(thStr[1:])
    # get the pc before stepping
    pc = _myReposit.riesling.s[tid].pc
    # step one instr
    _myReposit.riesling.s[tid].step()
    # increase instr count
    incrIcount_RSI(tid)

def pregs_cmd_RS (tid=0, a_str=''):
    """wrapper for RS_print_archregs(), depricated.
    """
    RS_print_archregs(tid, a_str)

    
def pregsMmu_cmd_RS (tid=0):
    """wrapper for RS_print_mmuregs(), depricated.
    """
    RS_print_mmuregs(tid)


def _readCtlReg(cmd, regname, i, stride, buffer):
    """
    """
    buffer.append('%s=%#x  ' % (regname, _evalCmd(cmd)))
    i = _addEOL(i, stride, buffer)
    return i


def _addEOL (i, stride, buffer):
    """
    """
    i += 1
    if i % stride == 0:
	buffer.append('\n')
    return i
    

def obj_read_reg_cmd_RS (tid, regname):
    """obj_read_reg_cmd(th_obj, "pc"):
    """

    if not _myRegmap.hasReg(regname) or _myRegmap.feName2beName(regname) == '':
	sys.stdout.write("Unimplemented register %s access\n" % (regname,))
	return

    newCmd = '%s.s[%d].%s' % (_myReposit.topName,tid,regname)
    return _evalCmd(newCmd)

###############################################################################

def RS_set_quiet(num):
    """
    0 --- verbose mode, instr & reg delta
    1 --- silent mode
    2 --- verbose mode, instr only
    """
    global _myVerbose

    if num == 1:
	_myVerbose = 0
	_lstmode(0)
    elif num == 0:
	_myVerbose = 1
	_lstmode(1)
    elif num == 2:
	_myVerbose = 1
	_lstmode(2)
    else:
	raise RuntimeError


def _lstmode(mode):
    """
    """
    for s in _myReposit.riesling.s:
	s.lstmode(mode)


def RS_proc_no_2_ptr(tid):
    """th_obj= RS_proc_no_2_ptr(tid)
    """
    # for our Ni command parsing purpose, the tid is quite enough
    return tid


def RS_current_processor ():
    """
    """
    return _myLastTid


def RS_logical_to_physical (tid, vaddr, addr_type=AddrType.VA_TYPE, pid=None, ctxt=None):
    """
    addr_type: 0 - pa, 1 - ra, 2 - va
    """
    # va2pa() always check itlb, then dtlb.
    if addr_type == AddrType.VA_TYPE:
        # try va2pa first, if not found, then ra2pa
        type = addr_type
        if pid != None and ctxt != None:
            pa = _myReposit.riesling.s[tid].va2pa(vaddr, ctxt, pid)
        elif ctxt != None:
            pa = _myReposit.riesling.s[tid].va2pa(vaddr, ctxt)
        else:
            pa = _myReposit.riesling.s[tid].va2pa(vaddr)
        if pa == 0:
            # try ra2pa
            type = AddrType.RA_TYPE
            if pid != None:
                pa = _myReposit.riesling.s[tid].ra2pa(vaddr, pid)
            else:
                pa = _myReposit.riesling.s[tid].ra2pa(vaddr)
    elif addr_type == AddrType.RA_TYPE:
        # go straight to ra2pa
        type = addr_type
        if pid != None:
            pa = _myReposit.riesling.s[tid].ra2pa(vaddr, pid)
        else:
            pa = _myReposit.riesling.s[tid].ra2pa(vaddr)
    else:
        type = addr_type
        pa = vaddr

    # if no translation is needed, 0 will be returned, so we should return
    # the input addr instead of 0
    if pa == 0:
##         if addr_type == 2:
##             sys.stderr.write('WARNING: no va2pa is performed, original addr is returned\n')
##         elif addr_type == 1:
##             sys.stderr.write('WARNING: no ra2pa is performed, original addr is returned\n')
        type = AddrType.PA_TYPE
        pa = vaddr

    return (pa,type)


def RS_write_phys_memory (tid, addr, value, size):
    """RS_write_phys_memory(th_obj, 0x9a00000000, orig_tid, 4):
    """
    #sys.stderr.write('DBX: RS_write_phys_memory: tid=%d, addr=%#x, value=%#x, size=%d\n' % (tid, addr, value, size))

    if not size in [1,2,4,8]:
	sys.stderr.write('ERROR: RS_write_phys_memory: wrong size %d, must be 1,2,4,8-byte\n' % (size))
	return None

    if long(addr) % size:
	sys.stderr.write('ERROR: write_phys_memory: addr %#x is not %d-byte aligned\n' % (addr, size))
	return None

    if size == 1:
	_myReposit.riesling.mem.b[addr] = value
    elif size == 2:
	_myReposit.riesling.mem.h[addr] = value
    elif size == 4:
	_myReposit.riesling.mem.w[addr] = value
    else:
	_myReposit.riesling.mem.x[addr] = value

	# with type 'K', we can pass over uint64_t value with bit63=1
## 	if size == 8 and value > 0x7fffffffffffffff:
## 	    #TODO  I am having difficulty in passing larger value to c++ code,
## 	    #      always get "OverflowError: long too big to convert" error,
## 	    #      have to split the large value into two 4-byte pieces --- 
## 	    #      waiting for an explanation/solution from python community. 
## 	    #      10/13/04
## 	    value1 = value >> 32                   # upper 32-bit
## 	    value2 = value & 0x00000000ffffffffL   # lower 32-bit
## 	    nasUtil.access_cmd(addr, value1, tid, 0, 4)
## 	    nasUtil.access_cmd(addr+4, value2, tid, 0, 4)
## 	else:
## 	    nasUtil.access_cmd(addr, value, tid, 0, size)


def RS_read_phys_memory (tid, addr, size):
    """
    """
    #sys.stderr.write('DBX: RS_read_phys_memory: tid=%d, addr=%#x, size=%d\n' % (tid, addr, size))
    # the data is returned as L, if the highest bit (bit63) is 1, python
    # will present it as negative long, so have to convert it back because
    # we want uint64. ---> change type to K does not help, still return
    # negative.
    if not size in [1,2,4,8]:
	sys.stderr.write('ERROR: RS_read_phys_memory: wrong size %d, must be 1,2,4,8-byte\n' % (size))
	return None

    if long(addr) % size:
	sys.stderr.write('ERROR: RS_read_phys_memory: addr %#x is not %d-byte aligned\n' % (addr, size))
	return None
			 
    if size == 1:
	data = _myReposit.riesling.mem.b[addr]
    elif size == 2:
	data = _myReposit.riesling.mem.h[addr]
    elif size == 4:
	data = _myReposit.riesling.mem.w[addr]
    else:
	data = _myReposit.riesling.mem.x[addr]	

    if (data < 0):
	data = 0xffffffffffffffffL + data + 1
    return data


def RS_disassemble (tid, addr, addr_type, pyobj=None):
    """(_, dis_str ) = RS_disassemble(th_obj, currpc, 1)
    caller must provide the proper Python object, e.g., N2_Python
    """
    #sys.stderr.write('DBX: RS_disassemble: tid=%d, addr=%#x, isva=%d\n' % (tid, addr, isva))
    # addr_type: 0 - pa, 1 - ra, 2 - va
    if addr_type == AddrType.PA_TYPE:
        type = addr_type
        paddr = addr
    else:
        (paddr,type) = RS_logical_to_physical(tid, addr, addr_type)

    # get instr word
    iword = RS_read_phys_memory(tid,paddr,4)

    # disassemble the instr
    if pyobj:
        iwStr = '[%08x] %s' % (iword, pyobj.dis(iword,0x0))
    else:
        iwStr = '[%08x] %s' % (iword, 'UNKNOWN')


    return (4,iwStr,type)


def RS_disassemblePC (tid, pyobj=None):
    """(_, dis_str ) = RS_disassemblePC(th_obj)
    caller must provide the proper Python object, e.g., N2_Python
    """
    # disassemble the just executed instr
    pc = _myReposit.riesling.s[tid].pc
    return RS_disassemble(tid, pc, 2, pyobj)


def RS_instruction_info (tid, currpc):
    """instr = RS_instruction_info(RS_current_processor(), currpc)
    """
    # TODO  InstrInfo should contain more information
    (size,iw,type) = RS_disassemble(tid, currpc, 1)
    tokens = re.split('\s+|,', iw)
    return InstrInfo(tokens[1], -99)


def RS_read_fp_register_x (tid, regid):
    """dest_val = RS_read_fp_register_x(th_obj, rd_n)
    """
    newCmd = '%s.s[%d].d%d' % (_myReposit.topName,tid,regid)
    return _evalCmd(newCmd)


def RS_read_fp_register_i (tid, regid):
    """dest_val = RS_read_fp_register_i(th_obj, rd_n)
    """
    newCmd = '%s.s[%d].f%d' % (_myReposit.topName,tid,regid)
    return _evalCmd(newCmd)


def RS_write_fp_register_x (tid, regid, value):
    """
    """
    newCmd = '%s.s[%d].d%d = %d' % (_myReposit.topName,tid,regid,value)
    #code = compile(newCmd,'sys.stderr','single')
    #exec code in _myReposit.globals
    _execCmd(newCmd)

def RS_write_fp_register_i (tid, regid, value):
    """
    """
    newCmd = '%s.s[%d].f%d = %d' % (_myReposit.topName,tid,regid,value)
    #code = compile(newCmd,'sys.stderr','single')
    #exec code in _myReposit.globals
    _execCmd(newCmd)

def print_n2_archregs(tid=0,a_str=''):
    """print n2 format archregs
    """
    sys.stdout.write('Strand %d:\n' % tid)
    if a_str.find('-i') > -1:
        # g/o/l/i registers
        RS_print_ipregs (tid)
        sys.stdout.write('\n')

    if a_str.find('-f') > -1:
        # floating-point registers
        RS_print_fpregs(tid)
        sys.stdout.write('\n')

    # control registers
    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('PC', 'NPC', 'CWP', 'CCR'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'pc'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'npc'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'cwp'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'ccr')))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('FPRS', 'FSR', 'PSTATE', 'HPSTATE'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'fprs'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'fsr'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'pstate'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'hpstate')))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('ASI', 'TICK', 'TL', 'PIL'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'asi'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'tick'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'tl'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'pil')))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('CANSAVE', 'CANRESTORE', 'CLEANWIN', 'OTHERWIN'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'cansave'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'canrestore'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'cleanwin'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'otherwin')))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('HVER', 'WSTATE', 'GL', 'TBA'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'hver'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'wstate'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'gl'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'tba')))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('HTBA', 'TICK_CMPR', 'STICK_CMPR', 'HSTICK_CMPR'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'htba'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'tick_cmpr'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'stick_cmpr'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'hstick_cmpr')))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('HINTP', 'SOFTINT', 'GSR', 'INTR_RECEIVE'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'hintp'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'softint'))),
                      (_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,'gsr'))),
                      (0))) #TODO  INTR_RECEIVE

    for i in range(1,7):
        sys.stdout.write('   %16s  %16s  %16s  %16s\n' % (('TPC%d' % i), ('TNPC%d' % i), ('TSTATE%d' % i), ('TT%d' % i)))
        sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                         ((_evalCmd('%s.s[%d].t[%d].tpc' % (_myReposit.topName,tid,i))),
                          (_evalCmd('%s.s[%d].t[%d].tnpc' % (_myReposit.topName,tid,i))),
                          (_evalCmd('%s.s[%d].t[%d].tstate' % (_myReposit.topName,tid,i))),
                          (_evalCmd('%s.s[%d].t[%d].tt' % (_myReposit.topName,tid,i)))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('HTSTATE1', 'HTSTATE2', 'HTSTATE3', 'HTSTATE4'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].t[1].htstate' % (_myReposit.topName,tid))),
                      (_evalCmd('%s.s[%d].t[2].htstate' % (_myReposit.topName,tid))),
                      (_evalCmd('%s.s[%d].t[3].htstate' % (_myReposit.topName,tid))),
                      (_evalCmd('%s.s[%d].t[4].htstate' % (_myReposit.topName,tid)))))

    sys.stdout.write('   %16s  %16s\n' % ('HTSTATE5', 'HTSTATE6'))
    sys.stdout.write('   %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].t[5].htstate' % (_myReposit.topName,tid))),
                      (_evalCmd('%s.s[%d].t[6].htstate' % (_myReposit.topName,tid)))))
    sys.stdout.write('\n')

    if a_str.find('-m') > -1:
        # mmu registers
        print_n2_mmuregs(tid)
        sys.stdout.write('\n')

    if a_str.find('-c') > -1:
        # cmp registers
        print_n2_cmpregs(tid)


def RS_print_archregs (tid=0, a_str=''):
    """
    """

    if (_myReposit.optdir['--ar'] == 'n2'):
	print_n2_archregs(tid,a_str)
	return

    sys.stdout.write('Strand %d:\n' % tid)
    # show the current window, gl register and other ASRs
    i = 0
    regs = _myRegmap.regMap.keys()
    regs.sort()
    for reg in regs:
	if i % 4 == 0:
	    sys.stdout.write("\n")
	if _myRegmap.regMap[reg][0] == '':
	    sys.stdout.write('%-10s%#18s' % (reg,'UNIMP'))
	else:
	    sys.stdout.write('%-10s%#018x  ' % (reg,_evalCmd('%s.s[%d].%s' % (_myReposit.topName,tid,_myRegmap.regMap[reg][0]))))
	i = i + 1

	# XXX add support for arch specific regs
		
    sys.stdout.write('\n')
    if a_str != '-all':
       return

	# show the regs for all the other windows
	# show all the global regs

    max_gl = _myReposit.riesling.s0.max_gl
    for gl in range(0,max_gl+1):
	if gl == _myReposit.riesling.s[tid].gl:
	    continue
	sys.stdout.write('\nglobal set %d' % (gl,))
	for reg in range(0,8):
	    if reg % 4 == 0:
	        sys.stdout.write("\n")
	    key = 'g%d' % (reg,)
	    sys.stdout.write('%-6s%#018x  '	% (key,_evalCmd('%s.s[%d].g[%d].%s' % (_myReposit.topName,tid,gl,_myRegmap.regMap[key][0]))))

    sys.stdout.write('\n')
	
	# show all the window regs
    max_win = _myReposit.riesling.s0.max_wp
    for win in range(0,max_win):
	if win == _myReposit.riesling.s[tid].cwp:
	    continue
	sys.stdout.write('\nwindow %d' % (win,))
        for o_reg in range(0,8):
	    if o_reg % 4 == 0:
	        sys.stdout.write("\n")
	    key = 'o%d' % (o_reg,)
	    sys.stdout.write('%-6s%#018x  '	% (key,_evalCmd('%s.s[%d].w[%d].%s' % (_myReposit.topName,tid,gl,_myRegmap.regMap[key][0])))) 
	for l_reg in range(0,8):
	    if l_reg % 4 == 0:
	        sys.stdout.write("\n")
	    key = 'l%d' % (l_reg,)
	    sys.stdout.write('%-6s%#018x  '	% (key,_evalCmd('%s.s[%d].w[%d].%s' % (_myReposit.topName,tid,gl,_myRegmap.regMap[key][0]))))
	for i_reg in range(0,8):
	    if i_reg % 4 == 0:
	        sys.stdout.write("\n")
	    key = 'i%d' % (i_reg,)
	    sys.stdout.write('%-6s%#018x  '	% (key,_evalCmd('%s.s[%d].w[%d].%s' % (_myReposit.topName,tid,gl,_myRegmap.regMap[key][0]))))
			
    sys.stdout.write('\n')

     # always output floating point registers
    sys.stdout.write('\n')
    RS_print_fpregs(tid)


def RS_print_regs (tid=0, a_str=''):
    """
    """
    RS_print_archregs(tid, a_str)


def RS_print_ipregs (tid, a_str=''):
    """
    """
    if a_str != '-all':
        # current g/o/l/i registers
        gl = _myReposit.riesling.s[tid].gl
        cwp = _myReposit.riesling.s[tid].cwp
        sys.stdout.write('   %16s  %16s  %16s  %16s\n' % (('g[%d]' % gl), ('o[%d]' % cwp), ('l[%d]' % cwp), ('i[%d]' % cwp)))
        for i in range(0,8):
            sys.stdout.write('%d  %016x  %016x  %016x  %016x\n' % 
                             (i,
                              (_evalCmd('%s.s[%d].g[%d].g%d' % (_myReposit.topName,tid,gl,i))),
                              (_evalCmd('%s.s[%d].w[%d].o%d' % (_myReposit.topName,tid,cwp,i))),
                              (_evalCmd('%s.s[%d].w[%d].l%d' % (_myReposit.topName,tid,cwp,i))),
                              (_evalCmd('%s.s[%d].w[%d].i%d' % (_myReposit.topName,tid,cwp,i)))))
    else:
        # all g/o/l/i registers
        maxgl = ((_myReposit.riesling.s[tid].hver >> 16) & 0x7) + 1
        maxwin = (_myReposit.riesling.s[tid].hver & 0x1f) + 1
        for i in range(0,maxwin):
            if i < maxgl:
                sys.stdout.write('   %16s  %16s  %16s  %16s\n' % (('g[%d]'%i), ('o[%d]'%i), ('l[%d]'%i), ('i[%d]'%i)))
                for j in range(0,8):
                    sys.stdout.write('%d  %016x  %016x  %016x  %016x\n' % 
                                     (j,
                                      (_evalCmd('%s.s[%d].g[%d].g%d' % (_myReposit.topName,tid,i,j))),
                                      (_evalCmd('%s.s[%d].w[%d].o%d' % (_myReposit.topName,tid,i,j))),
                                      (_evalCmd('%s.s[%d].w[%d].l%d' % (_myReposit.topName,tid,i,j))),
                                      (_evalCmd('%s.s[%d].w[%d].i%d' % (_myReposit.topName,tid,i,j)))))
                sys.stdout.write('\n')
            else:
                sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('', ('o[%d]'%i), ('l[%d]'%i), ('i[%d]'%i)))
                for j in range(0,8):
                    sys.stdout.write('%d  %16s  %016x  %016x  %016x\n' % 
                                     (j,
                                      (''),
                                      (_evalCmd('%s.s[%d].w[%d].o%d' % (_myReposit.topName,tid,i,j))),
                                      (_evalCmd('%s.s[%d].w[%d].l%d' % (_myReposit.topName,tid,i,j))),
                                      (_evalCmd('%s.s[%d].w[%d].i%d' % (_myReposit.topName,tid,i,j)))))
                sys.stdout.write('\n')


def RS_print_fpregs (tid=0):
    """
    """
    for i in range(0,64,8):
        sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('f%d'%i, 'f%d'%(i+2), 'f%d'%(i+4), 'f%d'%(i+6)))
        sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                         ((_evalCmd('%s.s[%d].d%d' % (_myReposit.topName,tid,i))),
                          (_evalCmd('%s.s[%d].d%d' % (_myReposit.topName,tid,i+2))),
                          (_evalCmd('%s.s[%d].d%d' % (_myReposit.topName,tid,i+4))),
                          (_evalCmd('%s.s[%d].d%d' % (_myReposit.topName,tid,i+6)))))


def print_n2_mmuregs(tid = 0):
    """
    """
    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('CTXT_PRIM_0', 'CTXT_SEC_0', 'CTXT_PRIM_1', 'CTXT_SEC_1'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_ID_PRIMARY_CTXT_REG_0'][0],_myRegmap.regMapAsi['MMU_ID_PRIMARY_CTXT_REG_0'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_D_SCNDRY_CTXT_REG_0'][0],_myRegmap.regMapAsi['MMU_D_SCNDRY_CTXT_REG_0'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_ID_PRIMARY_CTXT_REG_1'][0],_myRegmap.regMapAsi['MMU_ID_PRIMARY_CTXT_REG_1'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_D_SCNDRY_CTXT_REG_1'][0],_myRegmap.regMapAsi['MMU_D_SCNDRY_CTXT_REG_1'][1])))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('I_TAG_ACC', 'D_TAG_ACC', 'DSFAR', 'LSU_CONTROL'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_ITLB_TAG_ACCESS'][0],_myRegmap.regMapAsi['MMU_ITLB_TAG_ACCESS'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_DTLB_TAG_ACCESS'][0],_myRegmap.regMapAsi['MMU_DTLB_TAG_ACCESS'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_DSFAR'][0],_myRegmap.regMapAsi['MMU_DSFAR'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_LSU_CONTROL'][0],_myRegmap.regMapAsi['MMU_LSU_CONTROL'][1])))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('CTXT_Z_TSB_CFG0', 'CTXT_Z_TSB_CFG1', 'CTXT_Z_TSB_CFG2', 'CTXT_Z_TSB_CFG3'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_ZERO_CONTEXT_TSB_CONFIG_0'][0],_myRegmap.regMapAsi['MMU_ZERO_CONTEXT_TSB_CONFIG_0'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_ZERO_CONTEXT_TSB_CONFIG_1'][0],_myRegmap.regMapAsi['MMU_ZERO_CONTEXT_TSB_CONFIG_1'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_ZERO_CONTEXT_TSB_CONFIG_2'][0],_myRegmap.regMapAsi['MMU_ZERO_CONTEXT_TSB_CONFIG_2'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_ZERO_CONTEXT_TSB_CONFIG_3'][0],_myRegmap.regMapAsi['MMU_ZERO_CONTEXT_TSB_CONFIG_3'][1])))))

    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('CTXT_NZ_TSB_CFG0', 'CTXT_NZ_TSB_CFG1', 'CTXT_NZ_TSB_CFG2', 'CTXT_NZ_TSB_CFG3'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_NONZERO_CONTEXT_TSB_CONFIG_0'][0],_myRegmap.regMapAsi['MMU_NONZERO_CONTEXT_TSB_CONFIG_0'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_NONZERO_CONTEXT_TSB_CONFIG_1'][0],_myRegmap.regMapAsi['MMU_NONZERO_CONTEXT_TSB_CONFIG_1'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_NONZERO_CONTEXT_TSB_CONFIG_2'][0],_myRegmap.regMapAsi['MMU_NONZERO_CONTEXT_TSB_CONFIG_2'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_NONZERO_CONTEXT_TSB_CONFIG_3'][0],_myRegmap.regMapAsi['MMU_NONZERO_CONTEXT_TSB_CONFIG_3'][1])))))

    sys.stdout.write('   %16s\n' % ('WATCHPOINT_ADDR'))
    sys.stdout.write('   %016x\n' % 
                     ((_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['MMU_DMMU_WATCHPOINT'][0],_myRegmap.regMapAsi['MMU_DMMU_WATCHPOINT'][1])))))


def RS_print_mmuregs (tid=0):
    """
    """
    global _asiRegMap

    if (_myReposit.optdir['--ar'] == 'n2'):
	print_n2_mmuregs(tid)
	return ''

    str = ''
    for reg in _asiRegMap.keys():
	if reg.startswith('MMU_'):
	    newCmd = '%s.s0.%s' % (_myReposit.topName,reg)
	    val = _evalCmd(newCmd)
	    str = str + '%-40s   %#018x' % (reg,val) + '\n'

    return str
   
def print_n2_cmpregs(tid=0):
    """
    """
    sys.stdout.write('   %16s  %16s  %16s  %16s\n' % ('CORE_AVAIL', 'CORE_ENABLE_ST', 'CORE_ENABLE', 'XIR_STEERING'))
    sys.stdout.write('   %016x  %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['CMP_core_available'][0],_myRegmap.regMapAsi['CMP_core_available'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['CMP_core_enable_status'][0],_myRegmap.regMapAsi['CMP_core_enable_status'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['CMP_core_enable'][0],_myRegmap.regMapAsi['CMP_core_enable'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['CMP_xir_steering'][0],_myRegmap.regMapAsi['CMP_xir_steering'][1])))))

    sys.stdout.write('   %16s  %16s  %16s\n' % ('TICK_ENABLE', 'STRAND_RUN', 'STRAND_RUN_ST'))
    sys.stdout.write('   %016x  %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['CMP_tick_enable'][0],_myRegmap.regMapAsi['CMP_tick_enable'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['CMP_running'][0],_myRegmap.regMapAsi['CMP_running'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['CMP_running_status'][0],_myRegmap.regMapAsi['CMP_running_status'][1])))))

    sys.stdout.write('   %16s  %16s\n' % ('CORE_ID', 'CORE_INTR_ID'))
    sys.stdout.write('   %016x  %016x\n' % 
                     ((_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['CMP_core_id'][0],_myRegmap.regMapAsi['CMP_core_id'][1]))),
                      (_evalCmd('%s.s[%d].rdasi(%d,%d)' % (_myReposit.topName,tid,_myRegmap.regMapAsi['CMP_core_intr_id'][0],_myRegmap.regMapAsi['CMP_core_intr_id'][1])))))


def RS_print_cmpregs (tid=0):
    """
    """
    global _asiRegMap

    if (_myReposit.optdir['--ar'] == 'n2'):
	print_n2_cmpregs(tid)
	return ''

    str = ''
    keylist = _asiRegMap.keys()
    keylist.sort()
    for reg in keylist:
	if reg.startswith('CMP_'):
	    (asi,va) = _asiRegMap[reg]
	    str = str + '%-30s   %#018x' % (reg,_myReposit.riesling.s[tid].rdasi(asi,va)) + '\n'

    return str


def RS_get_register_number (tid, regname):
    """rd_n = RS_get_register_number(th_obj, dest_reg)
    """
    return _myRegmap.key2id(regname)


def RS_write_register (tid, regid, value):
    """RS_write_register(th_obj, rd_n, new_dest_val)
    """
    reg = _myRegmap.id2key(regid)
    if reg == '':
	sys.stdout.write("Unimplemented register id %d\n" % (regid,))
	return
    newCmd = '%s.s[%d].%s = %d' % (_myReposit.topName,tid,reg,value)
    code = compile(newCmd,'sys.stderr','single')
    exec code in _myReposit.globals	 

def RS_write_register_name (regname, value, tid=0):
    """
    """
    if not _myRegmap.hasReg(regname) or _myRegmap.feName2beName(regname) == '':
	sys.stdout.write("Unimplemented register %s access\n" % (regname,))
	return

    newCmd = '%s.s[%d].%s=%d' % (_myReposit.topName,tid,regname,value)
    #code = compile(newCmd,'sys.stderr','single')
    #exec code in _myReposit.globals	
    _execCmd(newCmd)

def RS_read_register (tid, regid):
    """prev_tl = RS_read_register(th_obj, RS_get_register_number(th_obj, "tl"))
    """
    reg = _myRegmap.id2key(regid)
    if reg == '':
	sys.stdout.write("Unimplemented register id %d\n" % (regid,))
	return
    newCmd = '%s.s[%d].%s' % (_myReposit.topName,tid,reg)
    return _evalCmd(newCmd)


def RS_read_register_name (regname, tid=0):
    """
    """
    if not _myRegmap.hasReg(regname) or _myRegmap.feName2beName(regname) == '':
	sys.stdout.write("Unimplemented register %s access\n" % (regname,))
	return

    newCmd = '%s.s[%d].%s' % (_myReposit.topName,tid,regname)
    return _evalCmd(newCmd)


## def RS_reset (traptype):
##     """
##     """
##     nasUtil.reset_cmd(traptype)

def RS_asi_read (asi, va, tid=0):
    """read asi by asi/va
    """
    return _myReposit.riesling.s[tid].rdasi(asi, long(va))

def RS_asi_write (asi, va, value, tid=0):
    """write asi by asi/va/value
    """
    _myReposit.riesling.s[tid].wrasi(asi, long(va), long(value))


def RS_dump_tlb (tid=0, itlb=1, valid=1):
    """dump i/d-talb content
    """
    if itlb == 1:
	print 'Strand %d  inst_tlb:' % tid
	print _myReposit.riesling.s[tid].inst_tlb
    else:
	print 'Strand %d  data_tlb:' % tid
	print _myReposit.riesling.s[tid].data_tlb


def RS_dump_memory (fileName, startPA, size, binary=0):
    """dump memory content to file, in plain text or binary form
    if fileName='', then output to stdout
    """
    if fileName == '':
        fr = sys.stdout
    else:
        fr = open(fileName,'w')
    addr = startPA
    c16 = 0
    while addr < startPA + size:
        data = RS_read_phys_memory(0,addr,1)
	if binary == 1:
	    fr.write(chr(int(data)))
	else:
	    if c16 == 0 :
		fr.write("0x%016x  " % (addr,))
	    fr.write('%02x' % (data,))
            c16 = c16 + 1
 	    if c16 % 2 == 0:
		fr.write(' ')
            if c16 % 16 == 0:
                fr.write('\n')
                c16 = 0
	addr = addr + 1
    
def __print_N2_Tte__(tte):
    str = ("%-6s%#01x   " % ('r',tte.r)) + ("%-6s%#018x   " % ('pid',tte.pid)) +  ("%-6s%#018x   " % ('ctx',tte.ctx)) + "\n" + ("%-6s%#018x   " % ('tag',tte.tag)) + ("%-6s%#018x   " % ('addr',tte.addr)) + ("%-6s%#04x   " % ('size',tte.size)) + "\n" +  ("%-6s%#01x|" % ('valid',tte.valid)) + ("%-6s%#01x|" % ('nfo',tte.nfo)) + ("%-6s%#01x|" % ('ie',tte.ie)) + ("%-6s%#01x|" % ('e',tte.e)) +  ("%-6s%#01x|" % ('cp',tte.cp)) + ("%-6s%#01x|" % ('cv',tte.cv)) + ("%-6s%#01x|" % ('p',tte.p)) + ("%-6s%#01x|" % ('w',tte.w)) + ("%-6s%#01x|" % ('x',tte.x)) +  ("%-6s%#07x|" % ('sw',tte.soft_flds)) + "\n"

    return str
    
def __print_N1_Tte__(tte):
	str = ("%-6s%#01x   " % ('r',tte.r)) + ("%-6s%#018x   " % ('pid',tte.pid)) +  ("%-6s%#018x   " % ('ctx',tte.ctx)) + "\n" + ("%-6s%#018x   " % ('tag',tte.tag)) + ("%-6s%#018x   " % ('addr',tte.addr)) + ("%-6s%#04x   " % ('size',tte.size)) + "\n" +  ("%-6s%#01x|" % ('valid',tte.valid)) + ("%-6s%#01x|" % ('nfo',tte.nfo)) +  ("%-6s%#01x|" % ('ie',tte.ie)) + ("%-6s%#01x|" % ('e',tte.e)) +  ("%-6s%#01x|" % ('cp',tte.cp)) + ("%-6s%#01x|" % ('cv',tte.cv)) + ("%-6s%#01x|" % ('p',tte.p)) + ("%-6s%#01x|" % ('w',tte.w)) +  ("%-6s%#01x|" % ('lock',tte.lock))+ ("%-6s%#01x|" % ('diag7_3',tte.diag7_3))+"\n"

	return str


def RS_tlblookup (tid, va, pid=-1, ctxt=-1, ra2pa=-1, bypass=-1):
    """
    """
    return _myReposit.strands[tid].tlblookup(va, pid, ctxt, ra2pa, bypass)


def RS_read_memory (tid, addr, size=8, pid=-1, ctxt=-1, ra2pa=-1, bypass=1):
    """
    """
    #sys.stderr.write('DBX: RS_read_memory: tid=%d, addr=%#x, size=%d\n' % (tid, addr, size))
    # the data is returned as L, if the highest bit (bit63) is 1, python
    # will present it as negative long, so have to convert it back because
    # we want uint64. ---> change type to K does not help, still return
    # negative.
    if not size in [1,2,4,8]:
	sys.stderr.write('ERROR: RS_read_memory: wrong size %d, must be 1,2,4,8-byte\n' % (size))
	return None

    if long(addr) % size:
	sys.stderr.write('ERROR: RS_read_memory: addr %#x is not %d-byte aligned\n' % (addr, size))
	return None
			 
    if bypass <= 0:
	# the address is a VA, have to translate it
	addr = RS_tlblookup(tid, addr, pid, ctxt, ra2pa, bypass)

    data = _myReposit.strands[tid].access_system_mem(long(addr), 0L, 1, size)
    if (data < 0):
	data = 0xffffffffffffffffL + data + 1
    return data
