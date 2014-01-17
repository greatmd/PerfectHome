### N2_Main.py is automatically generated from 
### ss/exe/nas/bin/Bl_Main.py, do not modify N2_Main.py,
### make necessary changes in ss/exe/nas/bin/Bl_Main.py instead.

import os
import sys
import atexit
import readline
import Pfe_Version
import n2

from optparse import OptionParser
from N2_Model import *

import SS_Ram
import SS_Memory
import SS_Io

opts = None
args = None

def options(prog):
  argv_parser = OptionParser(usage="usage: "+prog+" [options]",version=Pfe_Version.version())
  argv_parser.disable_interspersed_args()

  argv_parser.add_option(
    "-c","--record",
    action="store_true",dest="record",default=False,
    help="Record pli socket i/o for replay")
  
  argv_parser.add_option(
    "-e","--ras_enable",
    action="store_true",dest="ras_enable",default=False,
    help="RAS enable.")

  argv_parser.add_option(
    "-f","--format",
    action="store_true",dest="format",default=False,
    help="Output in n2 sas.log format if -f is specified.")

  argv_parser.add_option(
    "-i","--interactive",
    action="store_true",dest="interactive",default=False,
    help="switch to interactive (inspect) mode")
    
  argv_parser.add_option(
    "-n","--samfe",
    action="store_true",dest="samfe",default=False,
    help="Invoke nas-fe command parser in batch & interactive modes")

  argv_parser.add_option(
    "-p","--replay",
    action="store_true",dest="replay",default=False,
    help="Replay and verify from a previous run.")
  
  argv_parser.add_option(
    "-r","--release",
    action="store",type="string",dest="release",default='',
    metavar="VERSION",help="Release version of this tool")

  argv_parser.add_option(
    "-s","--riesling-conf",
    action="append",type="string",dest="riesling_conf",default=["riesling.conf"],
    metavar="FILE",help="Default riesling.conf")

  argv_parser.add_option(
    "-t","--trace",
    action="store_true",dest="trace",default=False,
    help="Trace instruction stepping to stdout.")
 
  argv_parser.add_option(
    "-x","--diag-simics",
    action="append",type="string",dest="diag_simics",default=["diag.simics"],
    metavar="FILE",help="Default diag.simics")

  global opts
  global args

  (opts,args) = argv_parser.parse_args()


def history(name):
  histfile = '/home/'+os.environ["USER"]+'/'+name
  try:
    readline.read_history_file(histfile)
    atexit.register(readline.write_history_file,histfile)
  except IOError:
    pass


options('nas')
import commands
import time

sys.stdout.write('\n')
sys.stdout.write('# %s\n' % (time.ctime()))
sys.stdout.write('# %s\n' % (commands.getoutput('uname -a')))
#sys.stdout.write('# Python %s\n' % sys.version)
sys.stdout.write('# NAS release %s\n' % ('nas,'+opts.release))
#sys.stdout.write('\n')
#sys.stdout.write('# PATH %s\n' % sys.path)
sys.stdout.write('\n')

sim = Model(SS_Memory.Memory(SS_Ram.get_memory()),SS_Io.Io(N2_Python.get_io()),N2_Python.n2_model(n2.model()))

if opts.ras_enable:
  sim.ras_enable()

if os.path.exists('mem.image.gz'):
    sim.mem.load('mem.image.gz')
elif os.path.exists('mem.image'):
    sim.mem.load('mem.image')
else:
    sys.stderr.write('WARNING: mem.image is not loaded\n')

# when() is used in combination with run()
# when(e) expects e to be a function that returns true when e() evaluates to true

when_expr = []

def when(e):
  global when_expr
  when_expr.append(e)

# run() steps the cosim environement forever until a when clause
# evaluates to true. ok>0 means we hits a breakpoint, ok==0 means
# all's fine and we keep going, ok==-1 means we saw PLI_QUIT, ok<-1
# means something is messed up ... e.g. pli socket read error

def run():
  ok = 0
  stop = False
  while not stop:
    ok = n2.step(1)
    if ok == 0:
      for e in when_expr:
	stop = stop or e()
    else:
      stop = True
  return ok

# step() steps the cosim environment n (default n=1) steps forward
# Which strand is stepped is controlled by the RTL testbench or
# the replay input

def step(n=1):
  return n2.step(n)

n2.init(int(opts.record),int(opts.replay))

if opts.trace or n2.trace():
  for s in sim.s:
    s.set_format(opts.format)
    if not n2.trace():
        # if -sas_run_args=-DPLI_DEBUG is not used, let -t decide the trace
        # cscope
        s.lstmode(3)
    else:
        # otherwise rely on -sas_run_args=-DPLI_DEBUG to decide the level of
        # trace
        s.lstmode(n2.trace()+90)

# reset trace mode: 0 - silent, 1 - trap, 2 - trap+instr, 3 - trap+instr+delta,
# others - silent (except [91,92,93,94], those are used by -sas_run_args=-DPLI_DEBUG)
def lstmode(n):
    for s in sim.s:
        s.lstmode(n)

hexmode()

if opts.samfe:
  # in nas-fe mode, use the information in -x to conduct the execution
  fe_opts = {}
  fe_opts['-x'] = opts.diag_simics[-1]
  fe_opts['--ar'] = 'n2'
  import SamFE
  SamFE.init(sim, fe_opts, globals())
elif not opts.interactive:
  run()
else:
  os.environ['PYTHONINSPECT'] = 'inspect'
  history('.n2pfe')
