# This file was created automatically by SWIG 1.3.26.
# Don't modify this file, modify the SWIG interface instead.

import _Pfe_Conversion

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



decmode = _Pfe_Conversion.decmode

hexmode = _Pfe_Conversion.hexmode

w2f = _Pfe_Conversion.w2f

f2w = _Pfe_Conversion.f2w

x2d = _Pfe_Conversion.x2d

d2x = _Pfe_Conversion.d2x

x2x = _Pfe_Conversion.x2x

w2w = _Pfe_Conversion.w2w

h2h = _Pfe_Conversion.h2h


