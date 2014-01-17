# ========== Copyright Header Begin ==========================================
# Autor : Donguk Moon (dongukmoon@stanford.edu)
# Purpose 
#  - Dynamic (time-based) power analysis using PrimeTime
# Progress:
# 01/07/2014 : Initial Draft
# ========== Copyright Header End ============================================

sh date
sh hostname
sh uptime
remove_design -all
set dv_root [sh echo \$DV_ROOT]
set syn_home [sh echo \$SYN_LIB]

## goto spc directory:
set blk_dir $dv_root/design/sys/iop/spc/synopsys
echo "Enter $blk_dir"
cd $blk_dir
## make primetime directory
#sh mkdir pt
cd pt

set top_module spc

#########################################################################
## Library Prepraation
## 1. setup for logical and physical library
## 2. load tlu_plus file => this is from Syonpsys EDK (TODO: not accurate)
## 3. checking library/tlu consistancy 
#########################################################################
source -echo -verbose $dv_root/design/sys/synopsys/script/target_lib.scr

#########################################################################
## Loading synthesized netlist and .sdc for SPC
#########################################################################
#source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_spc_netlist.tcl
read_verilog ../gate/spc_all.vSyn
current_design $top_module
read_sdc -version 1.9 ../sdc/spc.sdc

update_timing
#report_timing -max_paths 10


set power_enable_analysis true
set power_analysis_mode time_based
#power_limit_extrapolation_range

## check_power has a lot of warnings TODO: check reports
#check_power -verbose
read_vcd -time {10 20} -rtl -strip_path tb_top/cpu/spc0 /rsgs/file0/greatmd/david/abl/OST2/OST2.model/cmp1_vcs_regression_2014_01_07__LINUX_1/mmu_mt_demap_0:cmp_mmu:cmp1_mini_T2:0/spc0.vcd
set_power_analysis_options -waveform_output power_waveform -waveform_format out

update_power



