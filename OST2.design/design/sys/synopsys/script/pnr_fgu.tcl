# ========== Copyright Header Begin ==========================================
# Autor : Donguk Moon (dongukmoon@stanford.edu)
# Purpose 
#  - place and route for SPARC core
# Progress:
# 12/09/2013 : Library setup and consistency checking
# ========== Copyright Header End ============================================

sh date
sh hostname
sh uptime
remove_design -all
set dv_root [sh echo \$DV_ROOT]
set syn_home [sh echo \$SYN_LIB]

## goto spc directory:
set block  spc
set blk_dir $dv_root/design/sys/iop/$block/synopsys
echo "PNR target module" $block
echo "Enter $blk_dir"
cd $blk_dir

## create pnr directory
#sh mkdir pnr
cd pnr 

set top_module fgu
#########################################################################
## Library Prepraation
## 1. setup for logical and physical library
## 2. load tlu_plus file => this is from Syonpsys EDK (TODO: not accurate)
## 3. checking library/tlu consistancy 
#########################################################################
source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_lib_setup.tcl
lappend link_library "n2_frf_mp_256x78_cust.db"

#########################################################################
## Loading synthesized netlist and .sdc for SPC
#########################################################################
#source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_spc_netlist.tcl
read_verilog -dirty_netlist ../../fgu/synopsys/gate/fgu.vSyn
current_design $top_module
## might need to set up mim (multiply instantiated module) before uniquify
#uniquify_fp_mw_cel -store_mim_property [get_cells {exu0 exu1}]
uniquify_fp_mw_cel 
read_sdc -version 1.9 ../../fgu/synopsys/sdc/fgu.sdc
link

#########################################################################
## Design Planning
## 0. convert black boxes to soft macros
## 1. black box size estimation
## 2. power/ground pin derivation (tie-off pins will be handled by std tie-off celss)
## 3. spc pin constraints
## 4. create initial floorplan
## 5. create plan groups and shape them
## 6. virtual flat placement
## 7, Power Network Synthesis
##    Inter Plan group routing : all metal layers upto M9
##    Intra Plan group routing : metal layers upto M5
#########################################################################
derive_pg_connection -create_ports top -power_net VDD -power_pin VDD -ground_net VSS -ground_pin VSS
create_floorplan -core_aspect_ratio 1.6 -core_utilization 0.6 -left_io2core "20" -bottom_io2core "20" -right_io2core "20" -top_io2core "20"
