# This file was created automatically by SWIG 1.3.26.
# Don't modify this file, modify the SWIG interface instead.

import _N2_Python

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



dis = _N2_Python.dis
class SS_Node(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Node, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Node, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Node instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def get_node_name(*args): return _N2_Python.SS_Node_get_node_name(*args)

class SS_NodePtr(SS_Node):
    def __init__(self, this):
        _swig_setattr(self, SS_Node, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Node, 'thisown', 0)
        self.__class__ = SS_Node
_N2_Python.SS_Node_swigregister(SS_NodePtr)

class SS_Registers(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Registers, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Registers, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Registers instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    OK = _N2_Python.SS_Registers_OK
    NOT_AVAILABLE = _N2_Python.SS_Registers_NOT_AVAILABLE
    INDEX_BEGIN = _N2_Python.SS_Registers_INDEX_BEGIN
    INDEX_END = _N2_Python.SS_Registers_INDEX_END
    ALIAS_BEGIN = _N2_Python.SS_Registers_ALIAS_BEGIN
    ALIAS_END = _N2_Python.SS_Registers_ALIAS_END
    PR_TT = _N2_Python.SS_Registers_PR_TT
    PR_TPC = _N2_Python.SS_Registers_PR_TPC
    PR_TNPC = _N2_Python.SS_Registers_PR_TNPC
    PR_TSTATE = _N2_Python.SS_Registers_PR_TSTATE
    HPR_HTSTATE = _N2_Python.SS_Registers_HPR_HTSTATE
    __swig_getmethods__["get_name"] = lambda x: _N2_Python.SS_Registers_get_name
    if _newclass:get_name = staticmethod(_N2_Python.SS_Registers_get_name)
    __swig_getmethods__["get_alias_name"] = lambda x: _N2_Python.SS_Registers_get_alias_name
    if _newclass:get_alias_name = staticmethod(_N2_Python.SS_Registers_get_alias_name)

class SS_RegistersPtr(SS_Registers):
    def __init__(self, this):
        _swig_setattr(self, SS_Registers, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Registers, 'thisown', 0)
        self.__class__ = SS_Registers
_N2_Python.SS_Registers_swigregister(SS_RegistersPtr)

SS_Registers_get_name = _N2_Python.SS_Registers_get_name

SS_Registers_get_alias_name = _N2_Python.SS_Registers_get_alias_name

class SS_BreakPoint(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_BreakPoint, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_BreakPoint, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_BreakPoint instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    OK = _N2_Python.SS_BreakPoint_OK
    ID_UNKNOWN = _N2_Python.SS_BreakPoint_ID_UNKNOWN
    ON_INST_VA = _N2_Python.SS_BreakPoint_ON_INST_VA
    ON_INST_PA = _N2_Python.SS_BreakPoint_ON_INST_PA
    ON_INST_WORD = _N2_Python.SS_BreakPoint_ON_INST_WORD
    ON_DATA_VA = _N2_Python.SS_BreakPoint_ON_DATA_VA
    ON_DATA_PA = _N2_Python.SS_BreakPoint_ON_DATA_PA
    ON_DATA_LOAD = _N2_Python.SS_BreakPoint_ON_DATA_LOAD
    ON_DATA_STORE = _N2_Python.SS_BreakPoint_ON_DATA_STORE
    ON_TRAP = _N2_Python.SS_BreakPoint_ON_TRAP
    ON_RED_MODE = _N2_Python.SS_BreakPoint_ON_RED_MODE
    __swig_getmethods__["type"] = _N2_Python.SS_BreakPoint_type_get
    if _newclass:type = property(_N2_Python.SS_BreakPoint_type_get)
    __swig_getmethods__["id"] = _N2_Python.SS_BreakPoint_id_get
    if _newclass:id = property(_N2_Python.SS_BreakPoint_id_get)
    __swig_getmethods__["enabled"] = _N2_Python.SS_BreakPoint_enabled_get
    if _newclass:enabled = property(_N2_Python.SS_BreakPoint_enabled_get)
    __swig_getmethods__["next"] = _N2_Python.SS_BreakPoint_next_get
    if _newclass:next = property(_N2_Python.SS_BreakPoint_next_get)
    __swig_getmethods__["va"] = _N2_Python.SS_BreakPoint_va_get
    if _newclass:va = property(_N2_Python.SS_BreakPoint_va_get)
    __swig_getmethods__["pa"] = _N2_Python.SS_BreakPoint_pa_get
    if _newclass:pa = property(_N2_Python.SS_BreakPoint_pa_get)
    __swig_getmethods__["tt"] = _N2_Python.SS_BreakPoint_tt_get
    if _newclass:tt = property(_N2_Python.SS_BreakPoint_tt_get)

class SS_BreakPointPtr(SS_BreakPoint):
    def __init__(self, this):
        _swig_setattr(self, SS_BreakPoint, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_BreakPoint, 'thisown', 0)
        self.__class__ = SS_BreakPoint
_N2_Python.SS_BreakPoint_swigregister(SS_BreakPointPtr)

class SS_TrapInfo(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_TrapInfo, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_TrapInfo, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_TrapInfo instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    __swig_getmethods__["trap_type"] = _N2_Python.SS_TrapInfo_trap_type_get
    if _newclass:trap_type = property(_N2_Python.SS_TrapInfo_trap_type_get)
    __swig_getmethods__["name"] = _N2_Python.SS_TrapInfo_name_get
    if _newclass:name = property(_N2_Python.SS_TrapInfo_name_get)
    __swig_getmethods__["priority"] = _N2_Python.SS_TrapInfo_priority_get
    if _newclass:priority = property(_N2_Python.SS_TrapInfo_priority_get)

class SS_TrapInfoPtr(SS_TrapInfo):
    def __init__(self, this):
        _swig_setattr(self, SS_TrapInfo, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_TrapInfo, 'thisown', 0)
        self.__class__ = SS_TrapInfo
_N2_Python.SS_TrapInfo_swigregister(SS_TrapInfoPtr)


get_trap_info = _N2_Python.get_trap_info
class SS_AsiMap(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_AsiMap, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_AsiMap, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_AsiMap instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def get(*args): return _N2_Python.SS_AsiMap_get(*args)

class SS_AsiMapPtr(SS_AsiMap):
    def __init__(self, this):
        _swig_setattr(self, SS_AsiMap, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_AsiMap, 'thisown', 0)
        self.__class__ = SS_AsiMap
_N2_Python.SS_AsiMap_swigregister(SS_AsiMapPtr)

class SS_AsiCtrReg(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_AsiCtrReg, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_AsiCtrReg, name)
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_AsiCtrReg instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def __init__(self, *args):
        _swig_setattr(self, SS_AsiCtrReg, 'this', _N2_Python.new_SS_AsiCtrReg(*args))
        _swig_setattr(self, SS_AsiCtrReg, 'thisown', 1)
    def name(*args): return _N2_Python.SS_AsiCtrReg_name(*args)
    def get(*args): return _N2_Python.SS_AsiCtrReg_get(*args)
    def set(*args): return _N2_Python.SS_AsiCtrReg_set(*args)
    def set_unmasked(*args): return _N2_Python.SS_AsiCtrReg_set_unmasked(*args)
    __swig_getmethods__["ld64"] = lambda x: _N2_Python.SS_AsiCtrReg_ld64
    if _newclass:ld64 = staticmethod(_N2_Python.SS_AsiCtrReg_ld64)
    __swig_getmethods__["st64"] = lambda x: _N2_Python.SS_AsiCtrReg_st64
    if _newclass:st64 = staticmethod(_N2_Python.SS_AsiCtrReg_st64)
    __swig_getmethods__["rd64"] = lambda x: _N2_Python.SS_AsiCtrReg_rd64
    if _newclass:rd64 = staticmethod(_N2_Python.SS_AsiCtrReg_rd64)
    __swig_getmethods__["wr64"] = lambda x: _N2_Python.SS_AsiCtrReg_wr64
    if _newclass:wr64 = staticmethod(_N2_Python.SS_AsiCtrReg_wr64)

class SS_AsiCtrRegPtr(SS_AsiCtrReg):
    def __init__(self, this):
        _swig_setattr(self, SS_AsiCtrReg, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_AsiCtrReg, 'thisown', 0)
        self.__class__ = SS_AsiCtrReg
_N2_Python.SS_AsiCtrReg_swigregister(SS_AsiCtrRegPtr)

SS_AsiCtrReg_ld64 = _N2_Python.SS_AsiCtrReg_ld64

SS_AsiCtrReg_st64 = _N2_Python.SS_AsiCtrReg_st64

SS_AsiCtrReg_rd64 = _N2_Python.SS_AsiCtrReg_rd64

SS_AsiCtrReg_wr64 = _N2_Python.SS_AsiCtrReg_wr64

class SS_SharedAsiCtrReg(SS_AsiCtrReg):
    __swig_setmethods__ = {}
    for _s in [SS_AsiCtrReg]: __swig_setmethods__.update(_s.__swig_setmethods__)
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_SharedAsiCtrReg, name, value)
    __swig_getmethods__ = {}
    for _s in [SS_AsiCtrReg]: __swig_getmethods__.update(_s.__swig_getmethods__)
    __getattr__ = lambda self, name: _swig_getattr(self, SS_SharedAsiCtrReg, name)
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_SharedAsiCtrReg instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def __init__(self, *args):
        _swig_setattr(self, SS_SharedAsiCtrReg, 'this', _N2_Python.new_SS_SharedAsiCtrReg(*args))
        _swig_setattr(self, SS_SharedAsiCtrReg, 'thisown', 1)
    def lock(*args): return _N2_Python.SS_SharedAsiCtrReg_lock(*args)
    def unlock(*args): return _N2_Python.SS_SharedAsiCtrReg_unlock(*args)
    def trylock(*args): return _N2_Python.SS_SharedAsiCtrReg_trylock(*args)
    __swig_getmethods__["ld64"] = lambda x: _N2_Python.SS_SharedAsiCtrReg_ld64
    if _newclass:ld64 = staticmethod(_N2_Python.SS_SharedAsiCtrReg_ld64)
    __swig_getmethods__["st64"] = lambda x: _N2_Python.SS_SharedAsiCtrReg_st64
    if _newclass:st64 = staticmethod(_N2_Python.SS_SharedAsiCtrReg_st64)
    __swig_getmethods__["rd64"] = lambda x: _N2_Python.SS_SharedAsiCtrReg_rd64
    if _newclass:rd64 = staticmethod(_N2_Python.SS_SharedAsiCtrReg_rd64)
    __swig_getmethods__["wr64"] = lambda x: _N2_Python.SS_SharedAsiCtrReg_wr64
    if _newclass:wr64 = staticmethod(_N2_Python.SS_SharedAsiCtrReg_wr64)

class SS_SharedAsiCtrRegPtr(SS_SharedAsiCtrReg):
    def __init__(self, this):
        _swig_setattr(self, SS_SharedAsiCtrReg, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_SharedAsiCtrReg, 'thisown', 0)
        self.__class__ = SS_SharedAsiCtrReg
_N2_Python.SS_SharedAsiCtrReg_swigregister(SS_SharedAsiCtrRegPtr)

SS_SharedAsiCtrReg_ld64 = _N2_Python.SS_SharedAsiCtrReg_ld64

SS_SharedAsiCtrReg_st64 = _N2_Python.SS_SharedAsiCtrReg_st64

SS_SharedAsiCtrReg_rd64 = _N2_Python.SS_SharedAsiCtrReg_rd64

SS_SharedAsiCtrReg_wr64 = _N2_Python.SS_SharedAsiCtrReg_wr64

class SS_PythonAsiReg(SS_AsiCtrReg):
    __swig_setmethods__ = {}
    for _s in [SS_AsiCtrReg]: __swig_setmethods__.update(_s.__swig_setmethods__)
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_PythonAsiReg, name, value)
    __swig_getmethods__ = {}
    for _s in [SS_AsiCtrReg]: __swig_getmethods__.update(_s.__swig_getmethods__)
    __getattr__ = lambda self, name: _swig_getattr(self, SS_PythonAsiReg, name)
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_PythonAsiReg instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def __init__(self, *args):
        _swig_setattr(self, SS_PythonAsiReg, 'this', _N2_Python.new_SS_PythonAsiReg(*args))
        _swig_setattr(self, SS_PythonAsiReg, 'thisown', 1)
    def set_ld64(*args): return _N2_Python.SS_PythonAsiReg_set_ld64(*args)
    def clr_ld64(*args): return _N2_Python.SS_PythonAsiReg_clr_ld64(*args)
    def set_st64(*args): return _N2_Python.SS_PythonAsiReg_set_st64(*args)
    def clr_st64(*args): return _N2_Python.SS_PythonAsiReg_clr_st64(*args)
    def set_rd64(*args): return _N2_Python.SS_PythonAsiReg_set_rd64(*args)
    def clr_rd64(*args): return _N2_Python.SS_PythonAsiReg_clr_rd64(*args)
    def set_wr64(*args): return _N2_Python.SS_PythonAsiReg_set_wr64(*args)
    def clr_wr64(*args): return _N2_Python.SS_PythonAsiReg_clr_wr64(*args)

class SS_PythonAsiRegPtr(SS_PythonAsiReg):
    def __init__(self, this):
        _swig_setattr(self, SS_PythonAsiReg, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_PythonAsiReg, 'thisown', 0)
        self.__class__ = SS_PythonAsiReg
_N2_Python.SS_PythonAsiReg_swigregister(SS_PythonAsiRegPtr)

class SS_AsiSpace(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_AsiSpace, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_AsiSpace, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_AsiSpace instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    OK = _N2_Python.SS_AsiSpace_OK
    NO_ASI = _N2_Python.SS_AsiSpace_NO_ASI
    NO_READ = _N2_Python.SS_AsiSpace_NO_READ
    NO_WRITE = _N2_Python.SS_AsiSpace_NO_WRITE
    def add(*args): return _N2_Python.SS_AsiSpace_add(*args)
    def add_state(*args): return _N2_Python.SS_AsiSpace_add_state(*args)
    def add_space(*args): return _N2_Python.SS_AsiSpace_add_space(*args)

class SS_AsiSpacePtr(SS_AsiSpace):
    def __init__(self, this):
        _swig_setattr(self, SS_AsiSpace, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_AsiSpace, 'thisown', 0)
        self.__class__ = SS_AsiSpace
_N2_Python.SS_AsiSpace_swigregister(SS_AsiSpacePtr)

class SS_Access(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Access, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Access, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Access instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    LOAD = _N2_Python.SS_Access_LOAD
    STORE = _N2_Python.SS_Access_STORE
    STP = _N2_Python.SS_Access_STP
    SWAP = _N2_Python.SS_Access_SWAP
    CAS = _N2_Python.SS_Access_CAS
    LDST = _N2_Python.SS_Access_LDST

class SS_AccessPtr(SS_Access):
    def __init__(self, this):
        _swig_setattr(self, SS_Access, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Access, 'thisown', 0)
        self.__class__ = SS_Access
_N2_Python.SS_Access_swigregister(SS_AccessPtr)

class SS_Tracer(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Tracer, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Tracer, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Tracer instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    TRAP = _N2_Python.SS_Tracer_TRAP
    INST_TRAP = _N2_Python.SS_Tracer_INST_TRAP
    DATA_TRAP = _N2_Python.SS_Tracer_DATA_TRAP
    LD_CODE = _N2_Python.SS_Tracer_LD_CODE
    ST_DATA = _N2_Python.SS_Tracer_ST_DATA
    LD_DATA = _N2_Python.SS_Tracer_LD_DATA
    ST_PART = _N2_Python.SS_Tracer_ST_PART
    ST_SWAP = _N2_Python.SS_Tracer_ST_SWAP
    LD_SWAP = _N2_Python.SS_Tracer_LD_SWAP
    ST_CAS = _N2_Python.SS_Tracer_ST_CAS
    LD_CAS = _N2_Python.SS_Tracer_LD_CAS
    ST_LDST = _N2_Python.SS_Tracer_ST_LDST
    LD_LDST = _N2_Python.SS_Tracer_LD_LDST

class SS_TracerPtr(SS_Tracer):
    def __init__(self, this):
        _swig_setattr(self, SS_Tracer, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Tracer, 'thisown', 0)
        self.__class__ = SS_Tracer
_N2_Python.SS_Tracer_swigregister(SS_TracerPtr)

class SS_PythonTracer(SS_Tracer):
    __swig_setmethods__ = {}
    for _s in [SS_Tracer]: __swig_setmethods__.update(_s.__swig_setmethods__)
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_PythonTracer, name, value)
    __swig_getmethods__ = {}
    for _s in [SS_Tracer]: __swig_getmethods__.update(_s.__swig_getmethods__)
    __getattr__ = lambda self, name: _swig_getattr(self, SS_PythonTracer, name)
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_PythonTracer instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def __init__(self, *args):
        _swig_setattr(self, SS_PythonTracer, 'this', _N2_Python.new_SS_PythonTracer(*args))
        _swig_setattr(self, SS_PythonTracer, 'thisown', 1)
    def clr_exe_instr(*args): return _N2_Python.SS_PythonTracer_clr_exe_instr(*args)
    def set_exe_instr(*args): return _N2_Python.SS_PythonTracer_set_exe_instr(*args)
    def clr_reg_value(*args): return _N2_Python.SS_PythonTracer_clr_reg_value(*args)
    def set_reg_value(*args): return _N2_Python.SS_PythonTracer_set_reg_value(*args)
    def clr_trap(*args): return _N2_Python.SS_PythonTracer_clr_trap(*args)
    def set_trap(*args): return _N2_Python.SS_PythonTracer_set_trap(*args)
    def clr_mem_access(*args): return _N2_Python.SS_PythonTracer_clr_mem_access(*args)
    def set_mem_access(*args): return _N2_Python.SS_PythonTracer_set_mem_access(*args)
    def clr_tlb_update(*args): return _N2_Python.SS_PythonTracer_clr_tlb_update(*args)
    def set_tlb_update(*args): return _N2_Python.SS_PythonTracer_set_tlb_update(*args)
    def clr_end_instr(*args): return _N2_Python.SS_PythonTracer_clr_end_instr(*args)
    def set_end_instr(*args): return _N2_Python.SS_PythonTracer_set_end_instr(*args)

class SS_PythonTracerPtr(SS_PythonTracer):
    def __init__(self, this):
        _swig_setattr(self, SS_PythonTracer, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_PythonTracer, 'thisown', 0)
        self.__class__ = SS_PythonTracer
_N2_Python.SS_PythonTracer_swigregister(SS_PythonTracerPtr)


ss_instr = _N2_Python.ss_instr
class SS_Instr(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Instr, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Instr, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Instr instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def get_opc(*args): return _N2_Python.SS_Instr_get_opc(*args)

class SS_InstrPtr(SS_Instr):
    def __init__(self, this):
        _swig_setattr(self, SS_Instr, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Instr, 'thisown', 0)
        self.__class__ = SS_Instr
_N2_Python.SS_Instr_swigregister(SS_InstrPtr)

class SS_Strand(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Strand, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Strand, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Strand instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def get_node_name(*args): return _N2_Python.SS_Strand_get_node_name(*args)
    def get_state_name(*args): return _N2_Python.SS_Strand_get_state_name(*args)
    def icache_info(*args): return _N2_Python.SS_Strand_icache_info(*args)
    def icache_set(*args): return _N2_Python.SS_Strand_icache_set(*args)
    def dcache_set(*args): return _N2_Python.SS_Strand_dcache_set(*args)
    def l2cache_set(*args): return _N2_Python.SS_Strand_l2cache_set(*args)
    __swig_getmethods__["reg_error"] = _N2_Python.SS_Strand_reg_error_get
    if _newclass:reg_error = property(_N2_Python.SS_Strand_reg_error_get)
    __swig_getmethods__["asi_error"] = _N2_Python.SS_Strand_asi_error_get
    if _newclass:asi_error = property(_N2_Python.SS_Strand_asi_error_get)
    def get_reg(*args): return _N2_Python.SS_Strand_get_reg(*args)
    def set_reg(*args): return _N2_Python.SS_Strand_set_reg(*args)
    def get_reg_tl(*args): return _N2_Python.SS_Strand_get_reg_tl(*args)
    def set_reg_tl(*args): return _N2_Python.SS_Strand_set_reg_tl(*args)
    def get_reg_gl(*args): return _N2_Python.SS_Strand_get_reg_gl(*args)
    def set_reg_gl(*args): return _N2_Python.SS_Strand_set_reg_gl(*args)
    def get_reg_wp(*args): return _N2_Python.SS_Strand_get_reg_wp(*args)
    def set_reg_wp(*args): return _N2_Python.SS_Strand_set_reg_wp(*args)
    def get_asi(*args): return _N2_Python.SS_Strand_get_asi(*args)
    def set_asi(*args): return _N2_Python.SS_Strand_set_asi(*args)
    def run_step(*args): return _N2_Python.SS_Strand_run_step(*args)
    def trc_step(*args): return _N2_Python.SS_Strand_trc_step(*args)
    def add_tracer(*args): return _N2_Python.SS_Strand_add_tracer(*args)
    def del_tracer(*args): return _N2_Python.SS_Strand_del_tracer(*args)
    __swig_getmethods__["break_points"] = _N2_Python.SS_Strand_break_points_get
    if _newclass:break_points = property(_N2_Python.SS_Strand_break_points_get)
    __swig_getmethods__["break_hit"] = _N2_Python.SS_Strand_break_hit_get
    if _newclass:break_hit = property(_N2_Python.SS_Strand_break_hit_get)
    def break_on_trap(*args): return _N2_Python.SS_Strand_break_on_trap(*args)
    def break_on_red_mode(*args): return _N2_Python.SS_Strand_break_on_red_mode(*args)
    def break_enable(*args): return _N2_Python.SS_Strand_break_enable(*args)
    def break_disable(*args): return _N2_Python.SS_Strand_break_disable(*args)
    def break_delete(*args): return _N2_Python.SS_Strand_break_delete(*args)
    __swig_setmethods__["asi_map"] = _N2_Python.SS_Strand_asi_map_set
    __swig_getmethods__["asi_map"] = _N2_Python.SS_Strand_asi_map_get
    if _newclass:asi_map = property(_N2_Python.SS_Strand_asi_map_get, _N2_Python.SS_Strand_asi_map_set)
    def break_on_inst_va(*args): return _N2_Python.SS_Strand_break_on_inst_va(*args)
    def va2pa(*args): return _N2_Python.SS_Strand_va2pa(*args)
    def ra2pa(*args): return _N2_Python.SS_Strand_ra2pa(*args)

class SS_StrandPtr(SS_Strand):
    def __init__(self, this):
        _swig_setattr(self, SS_Strand, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Strand, 'thisown', 0)
        self.__class__ = SS_Strand
_N2_Python.SS_Strand_swigregister(SS_StrandPtr)


ss_tte = _N2_Python.ss_tte
class SS_Tte(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Tte, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Tte, name)
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Tte instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def __init__(self, *args):
        _swig_setattr(self, SS_Tte, 'this', _N2_Python.new_SS_Tte(*args))
        _swig_setattr(self, SS_Tte, 'thisown', 1)
    def p(*args): return _N2_Python.SS_Tte_p(*args)
    def x(*args): return _N2_Python.SS_Tte_x(*args)
    def w(*args): return _N2_Python.SS_Tte_w(*args)
    def nfo(*args): return _N2_Python.SS_Tte_nfo(*args)
    def ie(*args): return _N2_Python.SS_Tte_ie(*args)
    def cp(*args): return _N2_Python.SS_Tte_cp(*args)
    def cv(*args): return _N2_Python.SS_Tte_cv(*args)
    def e(*args): return _N2_Python.SS_Tte_e(*args)
    def tag_parity_error(*args): return _N2_Python.SS_Tte_tag_parity_error(*args)
    def data_parity_error(*args): return _N2_Python.SS_Tte_data_parity_error(*args)
    def valid_bit(*args): return _N2_Python.SS_Tte_valid_bit(*args)
    def real_bit(*args): return _N2_Python.SS_Tte_real_bit(*args)
    def pid(*args): return _N2_Python.SS_Tte_pid(*args)
    def context(*args): return _N2_Python.SS_Tte_context(*args)
    def page_size(*args): return _N2_Python.SS_Tte_page_size(*args)
    def taddr(*args): return _N2_Python.SS_Tte_taddr(*args)
    def tag(*args): return _N2_Python.SS_Tte_tag(*args)
    def trans(*args): return _N2_Python.SS_Tte_trans(*args)
    def match_real(*args): return _N2_Python.SS_Tte_match_real(*args)
    def match_virt(*args): return _N2_Python.SS_Tte_match_virt(*args)
    def insert_tsb_tte(*args): return _N2_Python.SS_Tte_insert_tsb_tte(*args)

class SS_TtePtr(SS_Tte):
    def __init__(self, this):
        _swig_setattr(self, SS_Tte, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Tte, 'thisown', 0)
        self.__class__ = SS_Tte
_N2_Python.SS_Tte_swigregister(SS_TtePtr)


ss_tlb = _N2_Python.ss_tlb
class SS_Tlb(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Tlb, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Tlb, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Tlb instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def tlb_id(*args): return _N2_Python.SS_Tlb_tlb_id(*args)
    def is_inst_tlb(*args): return _N2_Python.SS_Tlb_is_inst_tlb(*args)
    def is_data_tlb(*args): return _N2_Python.SS_Tlb_is_data_tlb(*args)
    def size(*args): return _N2_Python.SS_Tlb_size(*args)
    def get(*args): return _N2_Python.SS_Tlb_get(*args)
    def set(*args): return _N2_Python.SS_Tlb_set(*args)
    def flush(*args): return _N2_Python.SS_Tlb_flush(*args)
    def next_valid_index(*args): return _N2_Python.SS_Tlb_next_valid_index(*args)

class SS_TlbPtr(SS_Tlb):
    def __init__(self, this):
        _swig_setattr(self, SS_Tlb, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Tlb, 'thisown', 0)
        self.__class__ = SS_Tlb
_N2_Python.SS_Tlb_swigregister(SS_TlbPtr)

class SS_SnapShot(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_SnapShot, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_SnapShot, name)
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_SnapShot instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def __init__(self, *args):
        _swig_setattr(self, SS_SnapShot, 'this', _N2_Python.new_SS_SnapShot(*args))
        _swig_setattr(self, SS_SnapShot, 'thisown', 1)

class SS_SnapShotPtr(SS_SnapShot):
    def __init__(self, this):
        _swig_setattr(self, SS_SnapShot, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_SnapShot, 'thisown', 0)
        self.__class__ = SS_SnapShot
_N2_Python.SS_SnapShot_swigregister(SS_SnapShotPtr)

class SS_AddressMap(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_AddressMap, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_AddressMap, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_AddressMap instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)

class SS_AddressMapPtr(SS_AddressMap):
    def __init__(self, this):
        _swig_setattr(self, SS_AddressMap, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_AddressMap, 'thisown', 0)
        self.__class__ = SS_AddressMap
_N2_Python.SS_AddressMap_swigregister(SS_AddressMapPtr)


get_io = _N2_Python.get_io
class SS_Io(SS_AddressMap):
    __swig_setmethods__ = {}
    for _s in [SS_AddressMap]: __swig_setmethods__.update(_s.__swig_setmethods__)
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Io, name, value)
    __swig_getmethods__ = {}
    for _s in [SS_AddressMap]: __swig_getmethods__.update(_s.__swig_getmethods__)
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Io, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Io instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def poke8(*args): return _N2_Python.SS_Io_poke8(*args)
    def poke16(*args): return _N2_Python.SS_Io_poke16(*args)
    def poke32(*args): return _N2_Python.SS_Io_poke32(*args)
    def poke64(*args): return _N2_Python.SS_Io_poke64(*args)
    def peek8u(*args): return _N2_Python.SS_Io_peek8u(*args)
    def peek8s(*args): return _N2_Python.SS_Io_peek8s(*args)
    def peek16u(*args): return _N2_Python.SS_Io_peek16u(*args)
    def peek16s(*args): return _N2_Python.SS_Io_peek16s(*args)
    def peek32u(*args): return _N2_Python.SS_Io_peek32u(*args)
    def peek32s(*args): return _N2_Python.SS_Io_peek32s(*args)
    def peek64(*args): return _N2_Python.SS_Io_peek64(*args)

class SS_IoPtr(SS_Io):
    def __init__(self, this):
        _swig_setattr(self, SS_Io, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Io, 'thisown', 0)
        self.__class__ = SS_Io
_N2_Python.SS_Io_swigregister(SS_IoPtr)

class SS_Model(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, SS_Model, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, SS_Model, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ SS_Model instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def cpu_cnt(*args): return _N2_Python.SS_Model_cpu_cnt(*args)
    def flush(*args): return _N2_Python.SS_Model_flush(*args)
    def snapshot(*args): return _N2_Python.SS_Model_snapshot(*args)
    def ras_enable(*args): return _N2_Python.SS_Model_ras_enable(*args)

class SS_ModelPtr(SS_Model):
    def __init__(self, this):
        _swig_setattr(self, SS_Model, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, SS_Model, 'thisown', 0)
        self.__class__ = SS_Model
_N2_Python.SS_Model_swigregister(SS_ModelPtr)

class N2_Tlb(SS_Tlb):
    __swig_setmethods__ = {}
    for _s in [SS_Tlb]: __swig_setmethods__.update(_s.__swig_setmethods__)
    __setattr__ = lambda self, name, value: _swig_setattr(self, N2_Tlb, name, value)
    __swig_getmethods__ = {}
    for _s in [SS_Tlb]: __swig_getmethods__.update(_s.__swig_getmethods__)
    __getattr__ = lambda self, name: _swig_getattr(self, N2_Tlb, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ N2_Tlb instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def insert(*args): return _N2_Python.N2_Tlb_insert(*args)

class N2_TlbPtr(N2_Tlb):
    def __init__(self, this):
        _swig_setattr(self, N2_Tlb, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, N2_Tlb, 'thisown', 0)
        self.__class__ = N2_Tlb
_N2_Python.N2_Tlb_swigregister(N2_TlbPtr)

class N2_Strand(SS_Strand):
    __swig_setmethods__ = {}
    for _s in [SS_Strand]: __swig_setmethods__.update(_s.__swig_setmethods__)
    __setattr__ = lambda self, name, value: _swig_setattr(self, N2_Strand, name, value)
    __swig_getmethods__ = {}
    for _s in [SS_Strand]: __swig_getmethods__.update(_s.__swig_getmethods__)
    __getattr__ = lambda self, name: _swig_getattr(self, N2_Strand, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ N2_Strand instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def get_reg(*args): return _N2_Python.N2_Strand_get_reg(*args)
    def set_reg(*args): return _N2_Python.N2_Strand_set_reg(*args)

class N2_StrandPtr(N2_Strand):
    def __init__(self, this):
        _swig_setattr(self, N2_Strand, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, N2_Strand, 'thisown', 0)
        self.__class__ = N2_Strand
_N2_Python.N2_Strand_swigregister(N2_StrandPtr)

class N2_Core(SS_Node):
    __swig_setmethods__ = {}
    for _s in [SS_Node]: __swig_setmethods__.update(_s.__swig_setmethods__)
    __setattr__ = lambda self, name, value: _swig_setattr(self, N2_Core, name, value)
    __swig_getmethods__ = {}
    for _s in [SS_Node]: __swig_getmethods__.update(_s.__swig_getmethods__)
    __getattr__ = lambda self, name: _swig_getattr(self, N2_Core, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ N2_Core instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def strand_cnt(*args): return _N2_Python.N2_Core_strand_cnt(*args)
    def strand_ptr(*args): return _N2_Python.N2_Core_strand_ptr(*args)
    __swig_setmethods__["inst_tlb"] = _N2_Python.N2_Core_inst_tlb_set
    __swig_getmethods__["inst_tlb"] = _N2_Python.N2_Core_inst_tlb_get
    if _newclass:inst_tlb = property(_N2_Python.N2_Core_inst_tlb_get, _N2_Python.N2_Core_inst_tlb_set)
    __swig_setmethods__["data_tlb"] = _N2_Python.N2_Core_data_tlb_set
    __swig_getmethods__["data_tlb"] = _N2_Python.N2_Core_data_tlb_get
    if _newclass:data_tlb = property(_N2_Python.N2_Core_data_tlb_get, _N2_Python.N2_Core_data_tlb_set)

class N2_CorePtr(N2_Core):
    def __init__(self, this):
        _swig_setattr(self, N2_Core, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, N2_Core, 'thisown', 0)
        self.__class__ = N2_Core
_N2_Python.N2_Core_swigregister(N2_CorePtr)

class N2_Cpu(SS_Node):
    __swig_setmethods__ = {}
    for _s in [SS_Node]: __swig_setmethods__.update(_s.__swig_setmethods__)
    __setattr__ = lambda self, name, value: _swig_setattr(self, N2_Cpu, name, value)
    __swig_getmethods__ = {}
    for _s in [SS_Node]: __swig_getmethods__.update(_s.__swig_getmethods__)
    __getattr__ = lambda self, name: _swig_getattr(self, N2_Cpu, name)
    def __init__(self): raise RuntimeError, "No constructor defined"
    def __repr__(self):
        return "<%s.%s; proxy of C++ N2_Cpu instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def hard_reset(*args): return _N2_Python.N2_Cpu_hard_reset(*args)
    def snapshot(*args): return _N2_Python.N2_Cpu_snapshot(*args)
    def core_cnt(*args): return _N2_Python.N2_Cpu_core_cnt(*args)
    def core_ptr(*args): return _N2_Python.N2_Cpu_core_ptr(*args)

class N2_CpuPtr(N2_Cpu):
    def __init__(self, this):
        _swig_setattr(self, N2_Cpu, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, N2_Cpu, 'thisown', 0)
        self.__class__ = N2_Cpu
_N2_Python.N2_Cpu_swigregister(N2_CpuPtr)


n2_cpu = _N2_Python.n2_cpu

n2_model = _N2_Python.n2_model
class N2_Model(SS_Model):
    __swig_setmethods__ = {}
    for _s in [SS_Model]: __swig_setmethods__.update(_s.__swig_setmethods__)
    __setattr__ = lambda self, name, value: _swig_setattr(self, N2_Model, name, value)
    __swig_getmethods__ = {}
    for _s in [SS_Model]: __swig_getmethods__.update(_s.__swig_getmethods__)
    __getattr__ = lambda self, name: _swig_getattr(self, N2_Model, name)
    def __repr__(self):
        return "<%s.%s; proxy of C++ N2_Model instance at %s>" % (self.__class__.__module__, self.__class__.__name__, self.this,)
    def __init__(self, *args):
        _swig_setattr(self, N2_Model, 'this', _N2_Python.new_N2_Model(*args))
        _swig_setattr(self, N2_Model, 'thisown', 1)
    def create_cpu(*args): return _N2_Python.N2_Model_create_cpu(*args)
    def cpu_ptr(*args): return _N2_Python.N2_Model_cpu_ptr(*args)

class N2_ModelPtr(N2_Model):
    def __init__(self, this):
        _swig_setattr(self, N2_Model, 'this', this)
        if not hasattr(self,"thisown"): _swig_setattr(self, N2_Model, 'thisown', 0)
        self.__class__ = N2_Model
_N2_Python.N2_Model_swigregister(N2_ModelPtr)



