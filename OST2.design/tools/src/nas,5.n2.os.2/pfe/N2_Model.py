
### N2_Model.py is automatically generated from 
### ss/api/pfe/bin/Bl_Model.py, do not modify N2_Model.py,
### make necessary changes in ss/api/pfe/bin/Bl_Model.py instead.

import Pfe_Tlb
import Pfe_Model

from SS_Break       import *
from Pfe_Tlb        import Tte
from Pfe_Conversion import *
from Pfe_Assembler  import asm

import N2_Python
import SS_Strand
from SS_Strand import AsiState

dis = N2_Python.dis

SS_Strand.__asi_va__ = {}
for i in range(0,8):
  SS_Strand.__asi_va__['scratch'+chr(i+ord('0'))]  = AsiState(0x20,i*8)
  SS_Strand.__asi_va__['hscratch'+chr(i+ord('0'))] = AsiState(0x4f,i*8)

SS_Strand.__asi_va__['strand_available']      = AsiState(0x41,0x00)
SS_Strand.__asi_va__['strand_enable_status']  = AsiState(0x41,0x10)
SS_Strand.__asi_va__['strand_enable']         = AsiState(0x41,0x20)
SS_Strand.__asi_va__['strand_running']        = AsiState(0x41,0x50)
SS_Strand.__asi_va__['strand_running_status'] = AsiState(0x41,0x58)
SS_Strand.__asi_va__['strand_running_w1s']    = AsiState(0x41,0x60)
SS_Strand.__asi_va__['strand_running_w1c']    = AsiState(0x41,0x68)
SS_Strand.__asi_va__['xir_steering']          = AsiState(0x41,0x30)
SS_Strand.__asi_va__['tick_enable']           = AsiState(0x41,0x38)

SS_Strand.__asi_va__['intr_w']                = AsiState(0x73,0x0)

SS_Strand.__asi_va__['pri_ctx0']              = AsiState(0x21,0x008)
SS_Strand.__asi_va__['pri_ctx1']              = AsiState(0x21,0x010)
SS_Strand.__asi_va__['sec_ctx0']              = AsiState(0x21,0x108)
SS_Strand.__asi_va__['sec_ctx1']              = AsiState(0x21,0x110)

SS_Strand.__asi_va__['lsu_ctr']               = AsiState(0x45,0x0)

SS_Strand.__asi_va__['inst_tag_target']       = AsiState(0x50,0x00)
SS_Strand.__asi_va__['inst_sfsr']             = AsiState(0x50,0x18)
SS_Strand.__asi_va__['inst_tag_access']       = AsiState(0x50,0x30)
SS_Strand.__asi_va__['inst_tlb_data_in_v']    = AsiState(0x54,0x000)
SS_Strand.__asi_va__['inst_tlb_data_in_r']    = AsiState(0x54,0x400)

SS_Strand.__asi_va__['data_tag_target']       = AsiState(0x58,0x00)
SS_Strand.__asi_va__['data_sfsr']             = AsiState(0x58,0x18)
SS_Strand.__asi_va__['data_sfar']             = AsiState(0x58,0x20)
SS_Strand.__asi_va__['data_tag_access']       = AsiState(0x58,0x30)
SS_Strand.__asi_va__['data_tlb_data_in_v']    = AsiState(0x5c,0x000)
SS_Strand.__asi_va__['data_tlb_data_in_r']    = AsiState(0x5c,0x400)

SS_Strand.__asi_va__['partition_id']          = AsiState(0x58,0x80)

SS_Strand.__asi_va__['real_range0']           = AsiState(0x52,0x108)
SS_Strand.__asi_va__['real_range1']           = AsiState(0x52,0x110)
SS_Strand.__asi_va__['real_range2']           = AsiState(0x52,0x118)
SS_Strand.__asi_va__['real_range3']           = AsiState(0x52,0x120)

SS_Strand.__asi_va__['phys_offset0']          = AsiState(0x52,0x208)
SS_Strand.__asi_va__['phys_offset1']          = AsiState(0x52,0x210)
SS_Strand.__asi_va__['phys_offset2']          = AsiState(0x52,0x218)
SS_Strand.__asi_va__['phys_offset3']          = AsiState(0x52,0x220)

SS_Strand.__asi_va__['nuc_tsb_cfg0']          = AsiState(0x54,0x010)
SS_Strand.__asi_va__['nuc_tsb_cfg1']          = AsiState(0x54,0x018)
SS_Strand.__asi_va__['nuc_tsb_cfg2']          = AsiState(0x54,0x020)
SS_Strand.__asi_va__['nuc_tsb_cfg3']          = AsiState(0x54,0x028)

SS_Strand.__asi_va__['non_nuc_tsb_cfg0']      = AsiState(0x54,0x030)
SS_Strand.__asi_va__['non_nuc_tsb_cfg1']      = AsiState(0x54,0x038)
SS_Strand.__asi_va__['non_nuc_tsb_cfg2']      = AsiState(0x54,0x040)
SS_Strand.__asi_va__['non_nuc_tsb_cfg3']      = AsiState(0x54,0x048)

SS_Strand.__asi_va__['inst_tsb_ptr0']         = AsiState(0x54,0x050)
SS_Strand.__asi_va__['inst_tsb_ptr1']         = AsiState(0x54,0x058)
SS_Strand.__asi_va__['inst_tsb_ptr2']         = AsiState(0x54,0x060)
SS_Strand.__asi_va__['inst_tsb_ptr3']         = AsiState(0x54,0x068)

SS_Strand.__asi_va__['data_tsb_ptr0']         = AsiState(0x54,0x070)
SS_Strand.__asi_va__['data_tsb_ptr1']         = AsiState(0x54,0x078)
SS_Strand.__asi_va__['data_tsb_ptr2']         = AsiState(0x54,0x080)
SS_Strand.__asi_va__['data_tsb_ptr3']         = AsiState(0x54,0x088)


def __tte_getvalid__(tte): return bool(tte.valid_bit())
def __tte_setvalid__(tte,val): tte.valid_bit(val)
def __tte_getreal__(tte): return bool(tte.real_bit())
def __tte_setreal__(tte,val): tte.real_bit(val)
def __tte_getpid__(tte): return tte.pid()
def __tte_setpid__(tte,val): tte.pid(val)
def __tte_getctx__(tte): return tte.context()
def __tte_setctx__(tte,val): tte.context(val)
def __tte_gettag__(tte): return tte.tag()
def __tte_settag__(tte,val): tte.tag(val)
def __tte_getsize__(tte): return tte.page_size()
def __tte_setsize__(tte,val): tte.page_size(val)
def __tte_getnfo__(tte): return bool(tte.nfo())
def __tte_setnfo__(tte,val): tte.nfo(val)
def __tte_getie__(tte): return bool(tte.ie())
def __tte_setie__(tte,val): tte.ie(val)
def __tte_getw__(tte): return bool(tte.w())
def __tte_setw__(tte,val): tte.w(val)
def __tte_getx__(tte): return bool(tte.x())
def __tte_setx__(tte,val): tte.x(val)
def __tte_getp__(tte): return bool(tte.p())
def __tte_setp__(tte,val): tte.p(val)
def __tte_gete__(tte): return bool(tte.e())
def __tte_sete__(tte,val): tte.e(val)
def __tte_getaddr__(tte): return tte.taddr()
def __tte_setaddr__(tte,val): tte.taddr(val)

# for unused fields in the TTE

def __tte_getfalse__(tte): return False
def __tte_setpass__(tte,val): pass

class __tte_xlate__:
  def __init__(self,tte):
    self.tte = tte
  def __call__(self,addr):
    return self.tte.trans(addr)

class __tte_match__:
  def __init__(self,tte):
    self.tte = tte
  def __call__(self,addr,ctx=0,pid=0,real=False,page_size_mask=0xff):
    if real:
      self.tte.match_real(addr,pid,page_size_mask)
    else:
      self.tte.match_virt(addr,ctx,pid,page_size_mask)

Pfe_Tlb.TlbTte.__getfun__['xlate'] = __tte_xlate__
Pfe_Tlb.TlbTte.__getfun__['match'] = __tte_match__

Pfe_Tlb.TlbTte.__getfun__['valid'] = __tte_getvalid__
Pfe_Tlb.TlbTte.__setfun__['valid'] = __tte_setvalid__
Pfe_Tlb.TlbTte.__getfun__['real']  = __tte_getreal__
Pfe_Tlb.TlbTte.__setfun__['real']  = __tte_setreal__
Pfe_Tlb.TlbTte.__getfun__['pid']   = __tte_getpid__
Pfe_Tlb.TlbTte.__setfun__['pid']   = __tte_setpid__
Pfe_Tlb.TlbTte.__getfun__['ctx']   = __tte_getctx__
Pfe_Tlb.TlbTte.__setfun__['ctx']   = __tte_setctx__
Pfe_Tlb.TlbTte.__getfun__['size']  = __tte_getsize__
Pfe_Tlb.TlbTte.__setfun__['size']  = __tte_setsize__
Pfe_Tlb.TlbTte.__getfun__['tag']   = __tte_gettag__
Pfe_Tlb.TlbTte.__setfun__['tag']   = __tte_settag__
Pfe_Tlb.TlbTte.__getfun__['ie']    = __tte_getie__
Pfe_Tlb.TlbTte.__setfun__['ie']    = __tte_setie__
Pfe_Tlb.TlbTte.__getfun__['nfo']   = __tte_getnfo__
Pfe_Tlb.TlbTte.__setfun__['nfo']   = __tte_setnfo__
Pfe_Tlb.TlbTte.__getfun__['x']     = __tte_getx__
Pfe_Tlb.TlbTte.__setfun__['x']     = __tte_setx__
Pfe_Tlb.TlbTte.__getfun__['p']     = __tte_getp__
Pfe_Tlb.TlbTte.__setfun__['p']     = __tte_setp__
Pfe_Tlb.TlbTte.__getfun__['w']     = __tte_getw__
Pfe_Tlb.TlbTte.__setfun__['w']     = __tte_setw__
Pfe_Tlb.TlbTte.__getfun__['e']     = __tte_gete__
Pfe_Tlb.TlbTte.__setfun__['e']     = __tte_sete__
Pfe_Tlb.TlbTte.__getfun__['addr']  = __tte_getaddr__
Pfe_Tlb.TlbTte.__setfun__['addr']  = __tte_setaddr__

Pfe_Tlb.TlbTte.__getfun__['cv']    = __tte_getfalse__
Pfe_Tlb.TlbTte.__setfun__['cv']    = __tte_setpass__
Pfe_Tlb.TlbTte.__getfun__['cp']    = __tte_getfalse__
Pfe_Tlb.TlbTte.__setfun__['cp']    = __tte_setpass__
Pfe_Tlb.TlbTte.__getfun__['lock']  = __tte_getfalse__
Pfe_Tlb.TlbTte.__setfun__['lock']  = __tte_setpass__


class Tlb(Pfe_Tlb.Tlb):
  def __init__(self,tlb):
    Pfe_Tlb.Tlb.__init__(self,tlb)

  def size(self):
    return self.__tlb__.size()

  def index(self,index):
    if index < 0 or index >= self.size():
      raise IndexError
    else:
      return self.__tlb__.get(index)

  def insert(self,tte):
    if isinstance(tte,Tte):
      ss_tte = N2_Python.SS_Tte()
      __tte_setr__(ss_tte,tte.r)
      __tte_setvalid__(ss_tte,tte.valid)
      __tte_setctx__(ss_tte,tte.ctx)
      __tte_setpid__(ss_tte,tte.pid)
      __tte_settag__(ss_tte,tte.tag)
      __tte_setsize__(ss_tte,tte.size)
      __tte_setie__(ss_tte,tte.ie)
      __tte_setnfo__(ss_tte,tte.nfo)
      __tte_setx__(ss_tte,tte.x)
      __tte_setp__(ss_tte,tte.p)
      __tte_setw__(ss_tte,tte.w)
      __tte_setaddr__(ss_tte,tte.addr)
      self.__tlb__.insert(ss_tte)
    else:
      raise TypeError

  
class Core(Pfe_Model.Core):
  def __init__(self,core,ref):
    Pfe_Model.Core.__init__(self)
    self.inst_tlb = Tlb(core.inst_tlb)
    self.data_tlb = Tlb(core.data_tlb)
    for i in range(0,core.strand_cnt()):
      strand_ref = 's'+str(i)
      strand_ptr = core.strand_ptr(i)
      strand = SS_Strand.Strand(strand_ptr,ref+'.'+strand_ref,N2_Python)
      self.__dict__[strand_ref] = strand
      self.s.append(strand)
      strand.__dict__['inst_tlb'] = self.inst_tlb
      strand.__dict__['data_tlb'] = self.data_tlb
      

class Cpu(Pfe_Model.Cpu):
  def __init__(self,cpu,ref):
    Pfe_Model.Cpu.__init__(self)
    self.hard_reset = cpu.hard_reset
    for i in range(0,cpu.core_cnt()):
      core_ref = 'c'+str(i)
      core_ptr = cpu.core_ptr(i)
      core = Core(core_ptr,ref+'.'+core_ref)
      self.__dict__[core_ref] = core
      self.c.append(core)

 
class Model(Pfe_Model.Model):
  def __init__(self,mem,io,model=None):
    Pfe_Model.Model.__init__(self)
    self.mem = mem
    self.io = io
    self.__model__ = model
    mem.__flush__ = model.flush
    if model:
      for i in range(0,model.cpu_cnt()):
	cpu_ref = 'p'+str(i)
	cpu_ptr = model.cpu_ptr(i)
	cpu = Cpu(cpu_ptr,cpu_ref)
	self.p.append(cpu)
	self.__dict__[cpu_ref] = cpu
      self.__populate__()

  def __create_cpu__(self,count,cpu_lst=[]):
    for i in range(0,count):
      cpu_ref = 'p'+str(i)
      if i < len(cpu_lst):
	cpu_ptr = cpu_lst[i]
      else:
	cpu_ptr = N2_Python.N2_Cpu(cpu_ref)
      cpu = Cpu(cpu_ptr,cpu_ref)
      self.p.append(cpu)
      self.__dict__[cpu_ref] = cpu
    self.__populate__()
    return True

  def ras_enable(self):
    return self.__model__.ras_enable()
