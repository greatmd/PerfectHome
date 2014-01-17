#
# A collection of functions that help display executed instructions and
# collect informaiton leading to a specified breakpoint. 
# Use execfile('RunScript.py') to load this module into samfe python
# environment. This script is valid only when the samfe is in python mode,
# it cannot be used in line-oriented command mode. When in line-oriented
# command mode, use 'pym' command to enter python mode. Use 'pym_off()' in
# python mode to switch back to line-oriented command mode.
# 

# available functions:
#   showi()
#   runshow()
#   runbreak()
#   runbreak2()
#   runforever()
#   allpc()

print 'loading RunScript...'

import os, sys
import sam

# change this as needed
try:
    import Rk_Python as pyobj
except:
    print 'need to import proper XX_Python module'
    sys.exit(1)

symFile = 'symbol.tbl'
symTable = None
if os.path.exists(symFile):
    try:
        import SymbolTableNi
        symTable = SymbolTableNi.SymbolTableNi()
        symTable.load(symFile)
    except:
        symTable = None

# global instruction count
icount = 0L

#
# show the latest executed instruction. If the execution is continuing at
# the background, we may not get the pc & instrWord of the same execution,
# because we access pc and instrWord in two function calls, so there is a
# possibility that the values are not matched. In other case, if a va is 
# provided, we will need to translate that into pa, which can be tricky, as 
# the execution may be at a different state, which may affect the va->pa 
# translation.
#
def showi(sid=0,va=0):
    """
    sid: strand id, default is 0
    """
    global pyobj
    # if va=0, use the instruction to be executed next, otherwise use the 
    # provided va to access the instruction word and disassemble it.
    if va == 0:
        (len,instr,type) = RS_disassemblePC(sid, pyobj)
        print 'sid=%d, pc=%#x, %s' % (sid, sim.s[sid].pc, instr)
    else:
        (len,instr,type) = RS_disassemble(sid, va, 2, pyobj)
        print 'sid=%d, pc=%#x, %s' % (sid, va, instr)

#
# if there are breakpoints set up by "break" command, hitting one of those
# breakpoints will terminate runshow(), runbreak(), or runbreak2() function
# and return control to UI prompt. The breakpoints list specified in runbreak()
# or runbreak2() function will have the same effect on execution. 
#

# execute instructions and display executed instructions along the way
# e.g., "runshow(100,1)" will run 100 instructions on strand1 and display 
# every instruction executed.
#
def runshow(step=1,sid=0,fd=sys.stdout,sym=1):
    """
    step: number of instruction to be executed, default is 1
    sid: strand id, default is 0
    fd: write the output to a file descriptor, default to stdout
    sym: show (PC) symbol if available

    example:
      sam>>> fd1=open('0-tmp','w')
      sam>>> runshow(10,fd=fd1)
      sam>>> runshow(100,fd=fd1)
      sam>>> fd1.close()
    """
    global pyobj
    global icount
    global symTable
    prevPC = 0x0L
    newPC = 0x0L
    prevTL = 0
    newTL = 0
    i = 0
    done = 0
    while (done == 0) and (i < step):
        i += 1
        icount += 1
        newPC = sim.s[sid].pc
        (len,instr,type) = RS_disassemblePC(sid, pyobj)
        sam.ui_exec('stepi')
        newTL = sim.s[sid].tl
        # check for hitting breakpoint
        for s in sim.s:
            if s.brk.hit():
                done = 1
                break
        if done == 0:
            if (newPC != prevPC+4) or (newTL != prevTL):
                # display PC or related symbol when PC moves to a different
                # path
                if (sym == 1) and (symTable != None):
                    fd.write('%s, TL=%d:\n' % (symTable.va2symbol(newPC), newTL))
                else:
                    fd.write('PC=%#x, TL=%d:\n' % (newPC, newTL))
            fd.write('sid=%d, ic=%d, pc=%#x, %s\n' % (sid, icount, newPC, instr))
            prevPC = newPC
            prevTL = newTL

#
# execute instructions and check for breakpoints along the way
# e.g., runbreak(100,bpoints=[0x40070,0x40078,0x83400]) will run 100 
# instructions on strand0 and display every instruction executed, if PC has a 
# hit with any value in bpoints, then the execution will stop.
#
def runbreak(step=1,sid=0,bpoints=[0x83400,0xfffffffff0000080L,0x00122000],fd=sys.stdout,sym=1):
    """
    step: number of instruction to be executed, default is 1
    sid: strand id, default is 0
    bpoints: a list of PC breakpoints, default is empty list
    fd: output file descriptor, default to stdout
    sym: show (PC) symbol if available
    """
    global pyobj
    global symTable
    global icount
    prevPC = 0x0L
    newPC = 0x0L
    prevTL = 0
    newTL = 0
    i = 0
    done = 0
    while (done == 0) and (i < step):
        i += 1
        icount += 1
        newPC = sim.s[sid].pc
        (len,instr,type) = RS_disassemblePC(sid, pyobj)
        # check breakpoints
	if newPC in bpoints:
            if symTable != None:
                fd.write('BREAKPOINT: sid=%d, pc=%#x [%s]\n' % (sid, newPC, symTable.va2symbol(newPC)))
            else:
                fd.write('BREAKPOINT: sid=%d, pc=%#x\n' % (sid, newPC))
            done = 1
        else:
            # execute the next instr if no breakpoint is hit
            sam.ui_exec('stepi')
            newTL = sim.s[sid].tl
            for s in sim.s:
                if s.brk.hit():
                    done = 1
                    break
            if done == 0:
                if (newPC != prevPC+4) or (newTL != prevTL):
                    # display PC or related symbol when PC moves to a 
                    # different path
                    if (sym == 1) and (symTable != None):
                        fd.write('%s, TL=%d:\n' % (symTable.va2symbol(newPC), newTL))
                    else:
                        fd.write('PC=%#x, TL=%d:\n' % (newPC, newTL))
                fd.write('sid=%d, ic=%d, pc=%#x, %s\n' % (sid, icount, newPC, instr))
                prevPC = newPC
                prevTL = newTL

#
# execute instructions and check for breakpoints along the way
# e.g., runbreak2(100,bpoints=[0x40070,0x40078,0x83400],size=50) will run 
# 100 instructions on strand0 and display every instruction executed, if PC 
# has a hit with any value in bpoints, then the execution will stop. The last
# 'size' instructions will be kept in specified file.
#
def runbreak2(step=1,sid=0,bpoints=[0x83400,0xfffffffff0000080L,0x00122000],fd=sys.stdout,size=10000):
    """
    step: number of instruction to be executed, default is 1
    sid: strand id, default is 0
    bpoints: a list of PC breakpoints, default is empty list
    fd: output file descriptor, default to stdout
    size: instr buffer size, the last 'size' instructions before the breakpoint
          will be written to fd

    example:
      sam>>> fd1=open('0-tmp','w')
      sam>>> runbreak2(10,bpoints=[0x83400],fd=fd1,size=100)
      sam>>> fd1.close()
    """
    global pyobj
    global symTable
    global icount
    buffer = { }
    index = 0
    prevPC = 0x0L
    newPC = 0x0L
    prevTL = 0
    newTL = 0
    i = 0
    done = 0
    while (done == 0) and (i < step):
        i += 1
        icount += 1
        newPC = sim.s[sid].pc
        (len,instr,type) = RS_disassemblePC(sid, pyobj)
        # check breakpoints
	if newPC in bpoints:
            bs = sim.s[sid]
            done = 1
        else:
            # execute the next instr if no breakpoint is hit
            sam.ui_exec('stepi')
            for s in sim.s:
                if s.brk.hit():
                    done = 1
                    bs = s
                    break
            if done == 0:
                index = (i-1) % size
                buffer[index] = 'PC=%#x, %s' % (newPC, instr)
    # dump out buffer if hit a breakpoint
    if done == 1:
        jj = 1
        for ii in range(index+1, size):
            if buffer.has_key(ii):
                fd.write('sid=%d, ic=%d, %s\n' % (sid, jj, buffer[ii]))
                jj += 1
        for ii in range(0,index+1):
            if buffer.has_key(ii):
                fd.write('sid=%d, ic=%d, %s\n' % (sid, jj, buffer[ii]))
                jj += 1
        if symTable != None:
            fd.write('BREAKPOINT: sid=%d, pc=%#x [%s]\n' % (bs.strand_id, bs.pc, symTable.va2symbol(bs.pc)))
        else:
            fd.write('BREAKPOINT: sid=%d, pc=%#x\n' % (bs.strand_id, bs.pc))

#
# check PASS/FAIL at the end of an execution, and return exit code
# accordingly.
#
def runforever(insts=0x7fffffffffffffff,ss=None,bout=1,va_pass=[0x122000],va_fail=[0x122020]):
    """
    insts: number of instructions to run per strand, default is MAXINT
    ss: array of strand-ids, e.g., [0,1,2]. default is None, means all strands
    bout: upon hitting pass/fail, 1 means exit, 0 means returns to caller
    va_pass: array of 'pass' VAs, default is 0x122000
    va_fail: array of 'fail' VAs, default is 0x122020
    """
    strands = []
    if ss == None:
        # special case, step through all strands
        for s in sim.s:
            strands.append(s)
    else:
        # otherwise only step through specified strands
        for sid in ss:
            strands.append(sim.s[sid])
    # set 'pass' breakpoints
    bp_pass = {}
    for s in strands:
	bp_pass[s.strand_id] = []
        for va in va_pass:
            bp_pass[s.strand_id].append(s.brk.on_inst_va(va))
    # set 'fail' breakpoints
    bp_fail = {}
    for s in strands:
	bp_fail[s.strand_id] = []
        for va in va_fail:
            bp_fail[s.strand_id].append(s.brk.on_inst_va(va))
    # step through strands
    sam.ui_exec('stepi %d' % insts)
    # check for pass/fail breakpoint
    for s in strands:
        bp = s.brk.hit()
        if bp:
            if bp[0] in bp_pass[s.strand_id]:
                if bout:
                    sys.exit(0)
                else:
                    return 0
            elif bp[0] in bp_fail[s.strand_id]:
                if bout:
                    sys.exit(1)
                else:
                    return 1
    # if nothing hit, consider it is good
    if bout:
        sys.exit(0)
    else:
        return 0

#
# display the PC of all strands
#
def allpc():
    for s in sim.s:
        print 'T%d: PC=%#x' % (s.strand_id, s.pc)


###############################################################################
### python memory debugging, for developers' internal use.
###############################################################################

import gc

def gc_dbx_on():
    """
    """
    gc.enable()
    gc.set_debug(gc.DEBUG_LEAK|gc.DEBUG_STATS)

def gc_dbx_off():
    """
    """
    gc.set_debug(0x0)

def gc_dump():
    """
    """
    gc.collect()
    print '\nGARBAGE OBJECTS:'
    for x in gc.garbage:
        xx = str(x)
        if len(xx) > 80:
            xx = xx[:77]+'...'
        print '%s ---> %s' % (type(x), xx)
