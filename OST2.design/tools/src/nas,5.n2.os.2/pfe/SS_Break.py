
break_type_name = {}

class BreakPoint:
  def __init__(self,strand,vonk,breakp):
    self.__strand__ = strand
    self.__vonk__   = vonk
    self.__breakp__ = breakp

  def is_enabled(self):
    return self.__breakp__.enabled
  def enable(self):
    self.__strand__.break_enable(self.__breakp__.id)
  def disable(self):
    self.__strand__.break_disable(self.__breakp__.id)

  def __repr__(self):
    type_name = break_type_name[self.__breakp__.type]
    s = '<type='+type_name
    if type_name == 'trap':
      s += '('+str(self.__breakp__.tt)+')'
    elif (type_name == 'inst_va'):
      s += '('+str(self.__breakp__.va)+')'
    elif (type_name == 'inst_pa'):
      s += '('+str(self.__breakp__.pa)+')'
    if self.is_enabled():
      s += ',enabled>'
    else:
      s += ',disabled>'
    return s

  def __str__(self):
    type_name = break_type_name[self.__breakp__.type]
    s = 'brk['+str(self.__breakp__.id)+'] '+type_name+' '
    if type_name == 'trap' or type_name == 'all_trap':
      tt = self.__breakp__.tt
      return s+'tt='+self.__vonk__.get_trap_info(tt).name+'('+hex(tt)+')'
    elif type_name == 'red_mode':
      return s+'entered'
    return s


class BreakIter:
  def __init__(self,strand,vonk):
    self.__strand__ = strand
    self.__vonk__   = vonk
    self.__breakp__ = strand.break_points

  def __iter__(self):
    return self

  def next(self):
    if self.__breakp__:
      breakp = self.__breakp__
      self.__breakp__ = self.__breakp__.next
      return (breakp.id, BreakPoint(self.__strand__,self.__vonk__,breakp))
    raise StopIteration


class BreakDict(dict):
  def __init__(self,strand,vonk):
    dict.__init__(self)
    self.__strand__ = strand
    self.__vonk__   = vonk
    self.callback   = {}

    break_trap_info = vonk.get_trap_info

    if len(break_type_name) == 0:
      for on in vonk.SS_BreakPoint.__dict__:
	if on[0:3] == 'ON_':
	  break_type_name[vonk.SS_BreakPoint.__dict__[on]] = on[3:].lower()

  def __iter__(self):
    return BreakIter(self.__strand__,self.__vonk__)

  def __len__(self):
    n = 0
    for b in self.__iter__():
      n += 1
    return n

  def __repr__(self):
    l = {}
    for id,bp in self.__iter__():
      l[id] = bp
    return str(l)

  def keys(self):
    l = []
    for id,bp in self.__iter__():
      l.append(id)
    return l

  def items(self):
    l = []
    for id,bp in self.__iter__():
      l.append(bp)
    return l

  def __getitem__(self,index):
    for id,bp in self.__iter__():
      if id == index:
	return bp
    raise IndexError

  def __setitem__(self,index):
    raise Exception('Breakpoint dictionary is read-only')

  def __delitem__(self,index):
    if self.__strand__.break_delete(index) != 0:
      raise IndexError
    del self.callback[index]

  def on_inst_va(self,va,callback=None):
    id = self.__strand__.break_on_inst_va(va)
    self.callback[id] = callback
    return id

  def on_red_mode(self,callback=None):
    id = self.__strand__.break_on_red_mode()
    self.callback[id] = callback
    return id

  def on_trap(self,traptype,callback=None):
    id = self.__strand__.break_on_trap(traptype)
    self.callback[id] = callback
    return id

  def hit_id(self):
    bp = self.__strand__.break_hit
    if bp:
      return bp.id
    else:
      return None

  def hit_bp(self):
    bp = self.__strand__.break_hit
    if bp:
      return BreakPoint(self.__strand__,self.__vonk__,bp)
    else:
      return None

  def hit(self):
    bp = self.__strand__.break_hit
    if bp:
      return bp.id,BreakPoint(self.__strand__,self.__vonk__,bp)
    else:
      return None




