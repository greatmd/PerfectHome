
import os
import Pfe_Memory

class Memory(Pfe_Memory.Memory):
  def __init__(self,memory):
    Pfe_Memory.Memory.__init__(self)
    self.__memory__ = memory

  def load(self,filename,addr=None):
    os.stat(filename)			# Test for excisting filename
    if addr == None:
      self.__memory__.load(filename)
    else:
      self.__memory__.load(filename,addr)

  def save(self,filename,addr,size):
    self.__memory__.save(filename,addr,size)


  def __ldb__(self,addr):  return self.__memory__.peek8u (addr)
  def __ldh__(self,addr):  return self.__memory__.peek16u(addr &~ 1)
  def __ldw__(self,addr):  return self.__memory__.peek32u(addr &~ 3)
  def __ldx__(self,addr):  return self.__memory__.peek64 (addr &~ 7)

  def __stb__(self,addr,data):  self.__memory__.poke8 (addr,data)
  def __sth__(self,addr,data):  self.__memory__.poke16(addr &~ 1,data)
  def __stw__(self,addr,data):  self.__memory__.poke32(addr &~ 3,long(data))
  def __stx__(self,addr,data):  self.__memory__.poke64(addr &~ 7,data)








