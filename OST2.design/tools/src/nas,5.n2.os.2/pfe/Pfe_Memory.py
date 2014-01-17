
from Pfe_Conversion import *

#----------------------------------------------------------------------------
# Memory is the wrapper that provides the hooks to all the ways to access
# memory: 1,2,4,8 bytes, int or double, or little endian ... 
#----------------------------------------------------------------------------

class Memory:
  """
  Memory memory
  """
  def __init__(self):
    self.b   = MemoryInterface(self,self.__ldb__,  self.__stb__,1)
    self.h   = MemoryInterface(self,self.__ldh__,  self.__sth__,2)
    self.w   = MemoryInterface(self,self.__ldw__,  self.__stw__,4)
    self.x   = MemoryInterface(self,self.__ldx__ , self.__stx__,8)
    self.f   = MemoryInterface(self,self.__ldf__,  self.__stf__,4)
    self.d   = MemoryInterface(self,self.__ldd__,  self.__std__,8)
    self.c   = MemoryInterface(self,self.__ldc__,  self.__stc__,1)
    self.cl  = self.c # ha, simply for completeness
    self.bl  = self.b # ha, simply for completeness
    self.hl  = MemoryInterface(self,self.__ldhl__, self.__sthl__,2)
    self.wl  = MemoryInterface(self,self.__ldwl__, self.__stwl__,4)
    self.xl  = MemoryInterface(self,self.__ldxl__, self.__stxl__,8)
    self.fl  = MemoryInterface(self,self.__ldfl__, self.__stfl__,4)
    self.dl  = MemoryInterface(self,self.__lddl__, self.__stdl__,8)

  def load(self,filename,addr=None): pass
  def save(self,filename,addr,size): pass

  # __flush__() needs to be provided for processor implementations that
  # implement decode caches or i caches. The flush() is called on
  # every store.

  def __flush__(self,addr): pass

  # __ldb__(), __ldh__(), __ldw__(), and __ldx__() implement 1, 2, 4 and
  # 8 byte load operations. They need to be provided by the implementation.

  def __ldb__(self,addr):  pass
  def __ldh__(self,addr):  pass
  def __ldw__(self,addr):  pass
  def __ldx__(self,addr):  pass

  # __stb__(), __sth__(), __stw__(), and __stx__() implement 1, 2, 4 and
  # 8 byte store operations. They need to be provided by the implementation.

  def __stb__(self,addr,data):  pass
  def __sth__(self,addr,data):  pass
  def __stw__(self,addr,data):  pass
  def __stx__(self,addr,data):  pass

  def __ldc__( self,addr): return chr(self.__ldb__(addr))
  def __ldf__( self,addr): return w2f(self.__ldw__(addr))
  def __ldd__( self,addr): return x2d(long(self.__ldx__(addr)))
  def __ldhl__(self,addr): return h2h(self.__ldh__(addr))
  def __ldwl__(self,addr): return w2w(self.__ldw__(addr))
  def __ldxl__(self,addr): return x2x(long(self.__ldx__(addr)))
  def __ldfl__(self,addr): return w2f(self.__ldwl__(addr))
  def __lddl__(self,addr): return x2d(self.__ldxl__(addr))

  def __stc__( self,addr,data): self.__stb__(addr,ord(data))
  def __stf__( self,addr,data): self.__stw__(addr,f2w(data))
  def __std__( self,addr,data): self.__stx__(addr,d2x(data))
  def __sthl__(self,addr,data): self.__sth__(addr,h2h(data))
  def __stwl__(self,addr,data): self.__stw__(addr,w2w(data))
  def __stxl__(self,addr,data): self.__stx__(addr,x2x(long(data)))
  def __stfl__(self,addr,data): self.__stwl__(addr,f2w(data))
  def __stdl__(self,addr,data): self.__stxl__(addr,d2x(data))


#----------------------------------------------------------------------------
# MemoryInterface implements the actual index operator for
# the various memory sizes, expliting pythons slicing operator
#----------------------------------------------------------------------------

class MemoryInterface:
  def __init__(self,mem,load,store,size):
    self.__mem__ = mem
    self.__ld__ = load
    self.__st__ = store
    self.__size__ = size
  
  def slice_step(self,__slice__,step):
    if __slice__.step == None:
      return step
    else: 
      return __slice__.step

  def __len__(self):
    return long(1 << 55)
  
  def __getitem__(self,address):
    if type(address) == slice:
      m = []
      a = address.start
      s = self.slice_step(address,self.__size__)
      while a < address.stop:
	m.append(self.__ld__(a))
	a += s
      return m
    else:
      return self.__ld__(address)

  def __setitem__(self,address,value):
    if type(address) == slice:
      a = address.start
      s = self.slice_step(address,self.__size__)
      i = 0
      while a < address.stop and i < len(value):
	self.__st__(a,value[i])
	self.__mem__.__flush__(address)
	a += s
	i += 1
    else:
      self.__st__(address,value)
      self.__mem__.__flush__(address)








    







