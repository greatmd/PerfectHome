
class Pfe_SymbolTbl:
  def __init__ (self):
    self.id_pa = {}
    self.id_ra = {}
    self.id_va = {}
    self.pa_id = []
    self.ra_id = []
    self.va_id = []


  def load(self,filename):
    file = open(filename)

    for line in file:
      id,va,ra,pa = line.split()

      if not (ra in 'Xx'):
	ra = eval('0x'+ra)
	self.id_ra[id] = ra
	self.ra_id.append((ra,id))

      va = eval('0x'+va)
      self.id_va[id] = va
      self.va_id.append((va,id))

      pa = eval('0x'+pa)
      self.id_pa[id] = pa
      self.pa_id.append((pa,id))

    file.close()

    self.pa_id.sort()
    self.ra_id.sort()
    self.va_id.sort()


  def id2pa(self,id):
    if self.id_pa.has_key(id):
      return self.id_pa[id]
    else:
      return None

  def id2ra(self,id):
    if self.id_ra.has_key(id):
      return self.id_ra[id]
    else:
      return None

  def id2va(self,id):
    if self.id_va.has_key(id):
      return self.id_va[id]
    else:
      return None


  def pa2id(self,pa):
    ea_id = self.__find__(self.pa_id,pa)
    if ea_id:
      return ea_id[1]
    return None

  def ra2id(self,ra):
    ea_id = self.__find__(self.ra_id,ra)
    if ea_id:
      return ea_id[1]
    return None

  def va2id(self,va):
    ea_id = self.__find__(self.va_id,va)
    if ea_id:
      return ea_id[1]
    return None


  def pa2id_ofs(self,pa):
    ea_id = self.__find__(self.pa_id,pa)
    if ea_id:
      ea,id = ea_id
      return (id,pa - ea)
    return None

  def ra2id_ofs(self,ra):
    ea_id = self.__find__(self.ra_id,ra)
    if ea_id:
      ea,id = ea_id
      return (id,ra - ea)
    return None

  def va2id_ofs(self,va):
    ea_id = self.__find__(self.va_id,va)
    if ea_id:
      ea,id = ea_id
      return (id,va - ea)
    return None

  def __find__(self,list,ea):
    l = 0
    u = len(list)
    m = u >> 1
    while l != m:
      if ea < list[m][0]:
	u = m
      else:
	l = m
      m = l + ((u - l) >> 1)
    return list[m]


    
