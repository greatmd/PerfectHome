#!/bin/sh
#spc/dec
#spc/exu
#spc/fgu
#spc/gkt
#spc/ifu/ifu_cmu
#spc/ifu/ifu_ftu
#spc/ifu/ifu_ibu
#spc/lsu
#spc/mmu
#spc/pku
#spc/pmu
#spc/tlu
set out_file gate/spc_all_new.vSyn
rm gate/spc_all_new.vSyn
cp gate/spc.vSyn gate/spc_all_new.vSyn
cat ../dec/synopsys/gate/dec.vSyn >>  gate/spc_all_new.vSyn
cat ../exu/synopsys/gate/exu.vSyn >>  gate/spc_all_new.vSyn
cat ../fgu/synopsys/gate/fgu.vSyn >>  gate/spc_all_new.vSyn
cat ../gkt/synopsys/gate/gkt.vSyn >>  gate/spc_all_new.vSyn
cat ../lsu/synopsys/gate/lsu.vSyn >>  gate/spc_all_new.vSyn
cat ../mmu/synopsys/gate/mmu.vSyn >>  gate/spc_all_new.vSyn
cat ../pku/synopsys/gate/pku.vSyn >>  gate/spc_all_new.vSyn
cat ../pmu/synopsys/gate/pmu.vSyn >>  gate/spc_all_new.vSyn
cat ../tlu/synopsys/gate/tlu.vSyn >>  gate/spc_all_new.vSyn
cat ../ifu/ifu_cmu/synopsys/gate/ifu_cmu.vSyn >>  gate/spc_all_new.vSyn
cat ../ifu/ifu_ftu/synopsys/gate/ifu_ftu.vSyn >>  gate/spc_all_new.vSyn
cat ../ifu/ifu_ibu/synopsys/gate/ifu_ibu.vSyn >>  gate/spc_all_new.vSyn





