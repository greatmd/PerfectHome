
from Pfe_Conversion import *

#----------------------------------------------------------------------------
# Io is the wrapper that provides the hooks to all the ways to access
# io: 1,2,4,8 bytes, int or double, or little endian ... 
#----------------------------------------------------------------------------

class Io:
  """
  Io io
  """
  def __init__(self):
    self.b   = IoInterface(self,self.__ldb__,  self.__stb__,1)
    self.h   = IoInterface(self,self.__ldh__,  self.__sth__,2)
    self.w   = IoInterface(self,self.__ldw__,  self.__stw__,4)
    self.x   = IoInterface(self,self.__ldx__ , self.__stx__,8)
    self.f   = IoInterface(self,self.__ldf__,  self.__stf__,4)
    self.d   = IoInterface(self,self.__ldd__,  self.__std__,8)
    self.c   = IoInterface(self,self.__ldc__,  self.__stc__,1)
    self.cl  = self.c # ha, simply for completeness
    self.bl  = self.b # ha, simply for completeness
    self.hl  = IoInterface(self,self.__ldhl__, self.__sthl__,2)
    self.wl  = IoInterface(self,self.__ldwl__, self.__stwl__,4)
    self.xl  = IoInterface(self,self.__ldxl__, self.__stxl__,8)
    self.fl  = IoInterface(self,self.__ldfl__, self.__stfl__,4)
    self.dl  = IoInterface(self,self.__lddl__, self.__stdl__,8)


  # __ldb__(), __ldh__(), __ldw__(), and __ldx__() implement 1, 2, 4 and
  # 8 byte load operations. They need to be provided by the implementation.

  def __ldb__(self,sid,addr):  pass
  def __ldh__(self,sid,addr):  pass
  def __ldw__(self,sid,addr):  pass
  def __ldx__(self,sid,addr):  pass

  # __stb__(), __sth__(), __stw__(), and __stx__() implement 1, 2, 4 and
  # 8 byte store operations. They need to be provided by the implementation.

  def __stb__(self,sid,addr,data):  pass
  def __sth__(self,sid,addr,data):  pass
  def __stw__(self,sid,addr,data):  pass
  def __stx__(self,sid,addr,data):  pass

  def __ldc__( self,sid,addr): return chr(self.__ldb__(sid,addr))
  def __ldf__( self,sid,addr): return w2f(self.__ldw__(sid,addr))
  def __ldd__( self,sid,addr): return x2d(long(self.__ldx__(sid,addr)))
  def __ldhl__(self,sid,addr): return h2h(self.__ldh__(sid,addr))
  def __ldwl__(self,sid,addr): return w2w(self.__ldw__(sid,addr))
  def __ldxl__(self,sid,addr): return x2x(long(self.__ldx__(sid,addr)))
  def __ldfl__(self,sid,addr): return w2f(self.__ldwl__(sid,addr))
  def __lddl__(self,sid,addr): return x2d(self.__ldxl__(sid,addr))

  def __stc__( self,sid,addr,data): self.__stb__(sid,addr,ord(data))
  def __stf__( self,sid,addr,data): self.__stw__(sid,addr,f2w(data))
  def __std__( self,sid,addr,data): self.__stx__(sid,addr,d2x(data))
  def __sthl__(self,sid,addr,data): self.__sth__(sid,addr,h2h(data))
  def __stwl__(self,sid,addr,data): self.__stw__(sid,addr,w2w(data))
  def __stxl__(self,sid,addr,data): self.__stx__(sid,addr,x2x(long(data)))
  def __stfl__(self,sid,addr,data): self.__stwl__(sid,addr,f2w(data))
  def __stdl__(self,sid,addr,data): self.__stxl__(sid,addr,d2x(data))


#----------------------------------------------------------------------------
# IoInterface implements the actual index operator for
# the various io sizes, expliting pythons slicing operator
#----------------------------------------------------------------------------

class IoInterface:
  def __init__(self,io,load,store,size):
    self.__io__ = io
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
	m.append(self.__ld__(0,a))
	a += s
      return m
    else:
      return self.__ld__(0,address)

  def __setitem__(self,address,value):
    if type(address) == slice:
      a = address.start
      s = self.slice_step(address,self.__size__)
      i = 0
      while a < address.stop and i < len(value):
	self.__st__(0,a,value[i])
	a += s
	i += 1
    else:
      self.__st__(0,address,value)








    







