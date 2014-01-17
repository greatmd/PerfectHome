
import os
import Pfe_Io

class Io(Pfe_Io.Io):
  def __init__(self,io):
    Pfe_Io.Io.__init__(self)
    self.__io__ = io

  def __ldb__(self,sid,addr):  return self.__io__.peek8u (sid,addr)
  def __ldh__(self,sid,addr):  return self.__io__.peek16u(sid,addr &~ 1)
  def __ldw__(self,sid,addr):  return self.__io__.peek32u(sid,addr &~ 3)
  def __ldx__(self,sid,addr):  return self.__io__.peek64 (sid,addr &~ 7)

  def __stb__(self,sid,addr,data):  self.__io__.poke8 (sid,addr,data)
  def __sth__(self,sid,addr,data):  self.__io__.poke16(sid,addr &~ 1,data)
  def __stw__(self,sid,addr,data):  self.__io__.poke32(sid,addr &~ 3,long(data))
  def __stx__(self,sid,addr,data):  self.__io__.poke64(sid,addr &~ 7,data)





