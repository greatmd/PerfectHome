# This file was created automatically by SWIG 1.3.26.
# Don't modify this file, modify the SWIG interface instead.

import _SS_Ram

# This file is compatible with both classic and new-style classes.
def _swig_setattr_nondynamic(self,class_type,name,value,static=1):
    if (name == "this"):
        if isinstance(value, class_type):
            self.__dict__[name] = value.this
            if hasattr(value,"thisown"): self.__dict__["thisown"] = value.thisown
            del value.thisown
            return
    method = class_type.__swig_setmethods__.get(name,None)
    if method: return method(self,value)
    if (not static) or hasattr(self,name) or (name == "thisown"):
        self.__dict__[name] = value
    else:
        raise AttributeError("You cannot add attributes to %s" % self)

def _swig_setattr(self,class_type,name,value):
    return _swig_setattr_nondynamic(self,class_type,name,value,0)

def _swig_getattr(self,class_type,name):
    method = class_type.__swig_getmethods__.get(name,None)
    if method: return method(self)
    raise AttributeError,name

import types
try:
    _object = types.ObjectType
    _newclass = 1
except AttributeError:
    class _object : pass
    _newclass = 0
del types



get_memory = _SS_Ram.get_memory
class SS_Memory(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Memory, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Memory, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Memory instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def allocate(*args): return _SS_Ram.SS_Memory_allocate(*args)
    def load(*args): return _SS_Ram.SS_Memory_load(*args)
    def save(*args): return _SS_Ram.SS_Memory_save(*args)
    def poke8(*args): return _SS_Ram.SS_Memory_poke8(*args)
    def poke16(*args): return _SS_Ram.SS_Memory_poke16(*args)
    def poke32(*args): return _SS_Ram.SS_Memory_poke32(*args)
    def poke64(*args): return _SS_Ram.SS_Memory_poke64(*args)
    def peek8u(*args): return _SS_Ram.SS_Memory_peek8u(*args)
    def peek8s(*args): return _SS_Ram.SS_Memory_peek8s(*args)
    def peek16u(*args): return _SS_Ram.SS_Memory_peek16u(*args)
    def peek16s(*args): return _SS_Ram.SS_Memory_peek16s(*args)
    def peek32u(*args): return _SS_Ram.SS_Memory_peek32u(*args)
    def peek32s(*args): return _SS_Ram.SS_Memory_peek32s(*args)
    def peek64(*args): return _SS_Ram.SS_Memory_peek64(*args)

class SS_MemoryPtr(SS_Memory):
    def __init__(self, this):
        _swig_setattr(self, SS_Memory, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Memory, 'thisown', 0)
        self.__class__ = SS_Memory
_SS_Ram.SS_Memory_swigregister(SS_MemoryPtr)

class SS_Ram(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Ram, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Ram, name)
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Ram instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def __init__(self, *args):
        _swig_setattr(self, SS_Ram, 'this', _SS_Ram.new_SS_Ram(*args))
        _swig_setattr(self, SS_Ram, 'thisown', 1)

class SS_RamPtr(SS_Ram):
    def __init__(self, this):
        _swig_setattr(self, SS_Ram, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Ram, 'thisown', 0)
        self.__class__ = SS_Ram
_SS_Ram.SS_Ram_swigregister(SS_RamPtr)



