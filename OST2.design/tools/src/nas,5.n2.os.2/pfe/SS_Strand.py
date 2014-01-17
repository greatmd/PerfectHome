
import re
freg=re.compile('^f[0-9]$|^f[1-5][0-9]$|^f6[0-3]$')
greg = re.compile('^g[0-7]$')
wreg = re.compile('^[ilo][0-7]$')

import Pfe_Strand
import Pfe_Tlb

from SS_Break import *


class AsiStateError(Exception):
  def __init__(self,asi,va):
    Exception.__init__(self)
    self.asi = asi
    self.va  = va

  def __str__(self):
    return "The strand has no mapping for: asi="+hex(self.asi)+" va="+hex(self.va)


class AsiState:
  def __init__(self,asi,va):
    self.asi = asi
    self.va  = va

  def get(self,strand):
    data = strand.get_asi(self.asi,self.va)
    if strand.asi_error != 0:
      raise AsiStateError(self.asi,self.va)
    return data

  def set(self,strand,data):
    strand.set_asi(self.asi,self.va,data)
    if strand.asi_error != 0:
      raise AsiStateError(self.asi,self.va)



def __getreg__(index):
  return lambda strand: strand.get_reg(index)

def __setreg__(index):
  return lambda strand,value: strand.set_reg(index,value)

def __getreg_tl__(index):
  return lambda strand,tl: strand.get_reg_tl(tl,index)

def __setreg_tl__(index):
  return lambda strand,tl,value: strand.set_reg_tl(tl,index,value)

def __getreg_gl__(index):
  return lambda strand,gl: strand.get_reg_gl(gl,index)

def __setreg_gl__(index):
  return lambda strand,gl,value: strand.set_reg_gl(gl,index,value)

def __getreg_wp__(index):
  return lambda strand,wp: strand.get_reg_wp(wp,index)

def __setreg_wp__(index):
  return lambda strand,wp,value: strand.set_reg_wp(wp,index,value)

# Good old Python is a little sick. The Py_BuildValue api routine
# does not treat uint64_t as unsigned and converts the unsigned value
# to an signed value. The abs64 function below fixes this problem.
# Currently the onlu code using By_BuildValue with K format is SS_PythonTracer

def abs64(x):
  if x < 0:
    return 0x10000000000000000 + x
  return x;


class Tracer:
  def __init__(self,strand,tracer):
    self.strand = strand
    self.__vonk__ = strand.__vonk__
    self.__tracer__ = tracer
    self.opt_exe_instr  = False
    self.opt_reg_value  = False
    self.opt_trap       = False
    self.opt_mem_access = 0
    self.opt_tlb_update = 0
    self.state = {}
    self.trc_connected = False
    # instruction count
    self.icount = 0
    # output in n2 sas.log format
    self.n2_format = False

  def set_format(self,format=None):
    if format == None:
      return self.n2_format
    elif type(format) == bool:
      self.n2_format = format
    else:
      raise TypeError

  def set_tracer(self):
    if self.opt_exe_instr or self.opt_reg_value or self.opt_trap or self.opt_mem_access or self.opt_tlb_update:
      if not self.trc_connected:
        self.strand.__strand__.add_tracer(self.__tracer__)
	self.trc_connected = True
    else:
      if self.trc_connected:
        self.strand.__strand__.del_tracer(self.__tracer__)
	self.trc_connected = False
	
  def exe_instr(self,on=None):
    if on == None:
      return self.opt_exe_instr
    elif type(on) == bool:
      self.opt_exe_instr = on
      if on:
        if not self.n2_format:
          self.__tracer__.set_exe_instr(self.trc_exe_instr)
        else:
          self.__tracer__.set_exe_instr(self.trc_exe_instr_n2)
      else:
	self.__tracer__.clr_exe_instr()
    else:
      raise TypeError
    self.set_tracer()

  def trc_exe_instr(self,pc,tte,i):
    pc = abs64(pc)
    opc = self.__vonk__.ss_instr(i).get_opc() & 0xffffffffL
    pa = self.__vonk__.ss_tte(tte).trans(pc)
    self.icount += 1
    str = self.__vonk__.dis(opc,pc)
    print "%d:" % self.strand.strand_id,pc,':',pa,"[0x%08x] %s" % (opc,str)


  def trc_exe_instr_n2(self,pc,tte,i):
    """
    N2 cosim sas.log format
    """
    # the function is embedded in SS_PliSocket.cc so that we have consistent
    # content in sas.log and vcs.log
    return


  def reg_value(self,on=None):
    if on == None:
      return self.opt_reg_value
    elif type(on) == bool:
      self.opt_reg_value = on
      if on:
        if not self.n2_format:
          self.__tracer__.set_reg_value(self.trc_reg_value)
        else:
          self.__tracer__.set_reg_value(self.trc_reg_value_n2)
      else:
	self.__tracer__.clr_reg_value()
    else:
      raise TypeError
    self.set_tracer()


  def trc_reg_value(self,index,value):
    if index >= self.__vonk__.SS_Registers.ALIAS_END:
      return
    value = abs64(value)
    reg = self.strand.__vonk__.SS_Registers.get_alias_name(index)
    if reg == 'asi_reg':
      reg = 'asi'
    if self.state.has_key(index):
      print "%d:\t%s:" % (self.strand.strand_id,reg),self.state[index],"->",value
    else:
      print "%d:\t%s: None ->" % (self.strand.strand_id,reg),value
    self.state[index] = value


  def trc_reg_value_n2(self,index,value):
    """
    N2 cosim sas.log format
    """
    # the function is embedded in SS_PliSocket.cc so that we have consistent
    # content in sas.log and vcs.log
    return


  def trap(self,on=None):
    if on == None:
      return self.opt_trap
    elif type(on) == bool:
      self.opt_trap = on
      if on:
	self.__tracer__.set_trap(self.trc_trap)
      else:
	self.__tracer__.clr_trap()
    else:
      raise TypeError
    self.set_tracer()

  def trc_trap(self,type,mode,addr):
    addr = abs64(addr)
    if mode == self.__tracer__.TRAP:
      print "%d: 0x%x trap: 0x%x" % (self.strand.strand_id,self.strand.pc,type)
    elif mode == self.__tracer__.INST_TRAP:
      print "%d: 0x%x trap: 0x%x inst mmu pc=0x%x" % (self.strand.strand_id,self.strand.pc,type,addr)
    elif mode == self.__tracer__.DATA_TRAP:
      print "%d: 0x%x trap: 0x%x data mmu ea=0x%x" % (self.strand.strand_id,self.strand.pc,type,addr)
	

  MEM_CODE = 1
  MEM_DATA = 2

  def mem_access(self,on=None):
    if on == None:
      return self.opt_mem_access
    elif type(on) == bool:
      self.opt_mem_access = self.MEM_CODE | self.MEM_DATA
    elif type(on) == int:
      self.opt_mem_access = on
    else:
      raise TypeError
    if (self.opt_mem_access & (self.MEM_CODE | self.MEM_DATA)) != 0:
      self.__tracer__.set_mem_access(self.trc_mem_access)
    else:
      self.__tracer__.clr_mem_access()
    self.set_tracer()

  def trc_mem_access(self,type,va,tte,size,data):
    va = abs64(va)
    for i in len(data):
      data[i] = abs64(data[i])

    pa = self.__vonk__.ss_tte(tte).trans(va)
    if type == self.__tracer__.LD_CODE:
      if (self.opt_mem_access & self.MEM_CODE) == 0:
	return
      op = 'fetch'
    elif (self.opt_mem_access & self.MEM_DATA) == 0:
      return
    elif type == self.__tracer__.LD_DATA:
      op = 'ld'
    elif type == self.__tracer__.ST_DATA:
      op = 'st'
    elif type == self.__tracer__.ST_PART:
      op = 'st-partial'
    elif type == self.__tracer__.ST_SWAP:
      op = 'st-swap'
    elif type == self.__tracer__.LD_SWAP:
      op = 'ld-swap'
    elif type == self.__tracer__.ST_CAS:
      op = 'st-cas'
    elif type == self.__tracer__.LD_CAS:
      op = 'ld-cas'
    elif type == self.__tracer__.ST_LDST:
      op = 'st-ldst'
    elif type == self.__tracer__.LD_LDST:
      op = 'ld-ldst'
    # ToDo need unsigned python function
    print '%d: 0x%016x : 0x%015x %s%d' % (self.strand.strand_id,va,pa,op,size),data


  TLB_INSERT = 1
  TLB_REMOVE = 2

  def tlb_update(self,on=None):
    """
    0 - tlb update traceing disable
    1 - tlb insert traceing enable
    2 - tlb remove traceing enable
    3 - tlb update traceing enable
    """
    if on == None:
      return self.opt_tlb_update
    elif type(on) == bool:
      self.opt_tlb_update = self.TLB_INSERT | self.TLB_REMOVE
    elif type(on) == int:
      self.opt_tlb_update = on
    else:
      raise TypeError
    if (self.opt_tlb_update & (self.TLB_INSERT | self.TLB_REMOVE)) != 0:
      self.__tracer__.set_tlb_update(self.trc_tlb_update)
    else:
      self.__tracer__.clr_tlb_update()
    self.set_tracer()

  def trc_tlb__fun__(self,tte):
    return tte

  def trc_tlb_update(self,insert,tlb,index,tte):
    tte = Pfe_Tlb.TlbTte(None,self.trc_tlb__fun__,self.__vonk__.ss_tte(tte))
    ss_tlb = self.__vonk__.ss_tlb(tlb)

    if not ss_tlb.is_inst_tlb():
      type = 'tlb.d%02x' % ss_tlb.tlb_id()
    elif not ss_tlb.is_data_tlb():
      type = 'tlb.i%02x' % ss_tlb.tlb_id()
    else:
      type = 'tlb.u%02x' % ss_tlb.tlb_id()

    if insert == 1:
      if (self.opt_tlb_update & self.TLB_INSERT) != 0:
	print "%s: insert %03x: %s" % (type,index,str(tte))
    else:
      if (self.opt_tlb_update & self.TLB_REMOVE) != 0:
	print "%s: remove %03x: %s" % (type,index,str(tte))


class Strand(Pfe_Strand.Strand):
  __first_strand__ = True

  def __init__(self,strand,ref,vonk):
    Pfe_Strand.Strand.__init__(self,strand,ref)
    self.__dict__['__asierr__'] = vonk.SS_AsiSpace
    self.__dict__['__vonk__'] = vonk
    self.brk = BreakDict(strand,vonk)
    self.__dict__['trc'] = Tracer(self,vonk.SS_PythonTracer())

    if Strand.__first_strand__:
      Strand.__first_strand__ = False

      __getfun__ = Pfe_Strand.Strand.__getfun__
      __setfun__ = Pfe_Strand.Strand.__setfun__

      for index in range(vonk.SS_Registers.INDEX_BEGIN,vonk.SS_Registers.INDEX_END):
	name = vonk.SS_Registers.get_name(index)
	__getfun__[name] = __getreg__(index)
	__setfun__[name] = __setreg__(index)

	alias = strand.get_state_name(index)
	if alias == "asi_reg":
	  alias = "asi"
	if alias != 0:
	  __getfun__[alias] = __getreg__(index)
	  __setfun__[alias] = __setreg__(index)

      for index in range(vonk.SS_Registers.ALIAS_BEGIN,vonk.SS_Registers.ALIAS_END):
	name = vonk.SS_Registers.get_name(index)
	__getfun__[name] = __getreg__(index)
	__setfun__[name] = __setreg__(index)

      for name in __asi_va__:
	__getfun__[name] = __asi_va__[name].get
	__setfun__[name] = __asi_va__[name].set

      for i,g in enumerate(Pfe_Strand.Strand.__irf__[:8]):
	Pfe_Strand.GlobalStack.__getfun__[g] =  __getreg_gl__(i)
	Pfe_Strand.GlobalStack.__getfun__[i] =  __getreg_gl__(i)
	Pfe_Strand.GlobalStack.__setfun__[g] =  __setreg_gl__(i)
	Pfe_Strand.GlobalStack.__setfun__[i] =  __setreg_gl__(i)

      for i,w in enumerate(Pfe_Strand.Strand.__irf__[8:]):
	Pfe_Strand.WindowStack.__getfun__[w] = __getreg_wp__(i+8)
	Pfe_Strand.WindowStack.__getfun__[i+8] = __getreg_wp__(i+8)
	Pfe_Strand.WindowStack.__setfun__[w] = __setreg_wp__(i+8)
	Pfe_Strand.WindowStack.__setfun__[i+8] = __setreg_wp__(i+8)

      Pfe_Strand.TrapStack.__getfun__['tt'] = __getreg_tl__(vonk.SS_Registers.PR_TT)
      Pfe_Strand.TrapStack.__setfun__['tt'] = __setreg_tl__(vonk.SS_Registers.PR_TT)
      Pfe_Strand.TrapStack.__getfun__['tpc'] = __getreg_tl__(vonk.SS_Registers.PR_TPC)
      Pfe_Strand.TrapStack.__setfun__['tpc'] = __setreg_tl__(vonk.SS_Registers.PR_TPC)
      Pfe_Strand.TrapStack.__getfun__['tnpc'] = __getreg_tl__(vonk.SS_Registers.PR_TNPC)
      Pfe_Strand.TrapStack.__setfun__['tnpc'] = __setreg_tl__(vonk.SS_Registers.PR_TNPC)
      Pfe_Strand.TrapStack.__getfun__['tstate'] = __getreg_tl__(vonk.SS_Registers.PR_TSTATE)
      Pfe_Strand.TrapStack.__setfun__['tstate'] = __setreg_tl__(vonk.SS_Registers.PR_TSTATE)
      Pfe_Strand.TrapStack.__getfun__['htstate'] = __getreg_tl__(vonk.SS_Registers.HPR_HTSTATE)
      Pfe_Strand.TrapStack.__setfun__['htstate'] = __setreg_tl__(vonk.SS_Registers.HPR_HTSTATE)

    # default step attribute
    self.step = self.__runstep__
    self.__listing__ = 0
    self.trc.exe_instr(False)
    self.trc.reg_value(False)
    self.trc.trap(False)
      
  def rdasi(self,asi,va):
    data = self.__strand__.get_asi(asi,va)
    if self.__strand__.asi_error != self.__asierr__.OK:
      raise AsiStateError(asi,va)
    return data

  def wrasi(self,asi,va,data):
    self.__strand__.set_asi(asi,va,data)
    if self.__strand__.asi_error != self.__asierr__.OK:
      raise AsiStateError(asi,va)

  def set_format(self,format=None):
    if format == None:
      return self.trc.set_format(format)
    else:
      self.trc.set_format(format)

  def lstmode(self,on=None):
    if on == None:
      return Pfe_Strand.Strand.lstmode(self,on)
    else:
      Pfe_Strand.Strand.lstmode(self,on)
      if on == 1:
	self.trc.exe_instr(False)
	self.trc.reg_value(False)
	self.trc.trap(True)
      elif on == 2:
	self.trc.exe_instr(True)
	self.trc.reg_value(False)
	self.trc.trap(True)
      elif on == 3:
	self.trc.exe_instr(True)
	self.trc.reg_value(True)
	self.trc.trap(True)
      elif on in [91,92,93,94]:
        # on = -sas_run_args=-DPLI_DEBUG + 90
        # set by cosim -sas_run_args=-DPLI_DEBUG option, in this case the
        # instr & delta are handled in backend, not at pfe layer.
	self.trc.exe_instr(False)
	self.trc.reg_value(False)
	self.trc.trap(True)
      else:
	self.trc.exe_instr(False)
	self.trc.reg_value(False)
	self.trc.trap(False)

  def __runstep__(self,n=None):
    if n == None:
      n = 1
    n = self.__strand__.run_step(n)
    if n:
      id = self.brk.hit_id()
      if id == None:
	pass # flush break loop for flush broadcast sync
      elif self.brk.callback[id] == None:
	print self.ref+': Stopped at pc='+hex(self.pc)+': '+str(self.brk.hit_bp())
      else:
	self.brk.callback[id](self)
      return n
    return 0

  def __lststep__(self,n=None):
    if n == None:
      n = 1
    while n > 0:
      n = self.__strand__.trc_step(n)
      if n:
	id = self.brk.hit_id()
	if id == None:
	  pass # flush break loop for flush broadcast sync
	elif self.brk.callback[id] == None:
	  print self.ref+': Stopped at pc='+hex(self.pc)+': '+str(self.brk.hit_bp())
	else:
	  self.brk.callback[id](self)
	return n
    return 0

  def va2pa(self,va,ctx=None,pid=None):
    if ctx == None:
      return self.__strand__.va2pa(va)
    elif pid == None:
      return self.__strand__.va2pa(va,ctx)
    else:
      return self.__strand__.va2pa(va,ctx,pid)

  def ra2pa(self,ra,pid=None):
    if pid == None:
      return self.__strand__.ra2pa(ra)
    else:
      return self.__strand__.ra2pa(ra,pid)

  def icache_info(self,pa):
    print self.__strand__.icache_info(pa)
    return 0

  def icache_set(self,set):
    print self.__strand__.icache_set(set)
    return 0

  def dcache_set(self,set):
    print self.__strand__.dcache_set(set)
    return 0

  def l2cache_set(self,set):
    print self.__strand__.l2cache_set(set)
    return 0

