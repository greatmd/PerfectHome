
import Pfe_Shell

pfe = 'n2pfe'
Pfe_Shell.options(pfe)
Pfe_Shell.history('.'+pfe)

from N2_Model import *
import SS_Memory
import SS_Io

sim = Model(SS_Memory.Memory(SS_Ram.get_memory()),SS_Io.Io(N2_Python.get_io()),N2_Python.n2_model(n2.model()))
Pfe_Shell.setup(sim)

for arg in Pfe_Shell.args:
  execfile(arg)

hexmode()

