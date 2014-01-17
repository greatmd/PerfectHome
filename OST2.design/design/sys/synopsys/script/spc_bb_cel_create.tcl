
# ========== Copyright Header Begin ==========================================
# Autor : Donguk Moon (dongukmoon@stanford.edu)
# Purpose 
#  - Create CEL for black box macros in spc.v
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
cd $blk_dir/bb

set top_module spc
#########################################################################
## Library Prepraation
## 1. setup for logical and physical library
## 2. load tlu_plus file => this is from Syonpsys EDK (TODO: not accurate)
## 3. checking library/tlu consistancy 
#########################################################################
source -echo -verbose $dv_root/design/sys/synopsys/script/target_lib.scr


## Delete previous milkyway db
if {[file exists mw_lib]} {
  sh rm -rf mw_lib
}
  create_mw_lib mw_lib -technology $technology_file -mw_reference_library $mw_reference_library
  open_mw_lib mw_lib

#TODO: might need tech2itf map file
set_tlu_plus_files  -max_tluplus $max_tluplus -min_tluplus $min_tluplus    

check_library
check_tlu_plus_files

set bbs {n2_frf_mp_256x78_cust n2_com_dp_32x84_cust n2_com_dp_32x72_cust n2_dca_sp_9kb_cust n2_dva_dp_32x32_cust n2_com_dp_32x152_cust n2_stb_cm_64x45_cust n2_com_dp_64x84_cust n2_dta_sp_1920b_cust n2_tlb_tl_128x59_cust n2_irf_mp_128x72_cust n2_icd_sp_16p5kb_cust n2_ict_sp_1920b_cust n2_tlb_tl_64x59_cust}

#foreach bb_each $bbs {
#lappend link_library "$bb_each.db"
#echo "$bb_each.db"
#set_dont_touch $bb_each
#}

#########################################################################
## Loading synthesized netlist and .sdc for SPC
#########################################################################
#source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_spc_netlist.tcl
#read_verilog -dirty_netlist ../gate/spc_all_nobb.vSyn 
read_verilog -dirty_netlist ../gate/spc_all.vSyn 

current_design $top_module
import_fp_black_boxes [get_cells -hierarchical -filter "is_logical_black_box==true && black_box_type==Missing"]
source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_bb_sizing.tcl
foreach bb_each $bbs {
  save_mw_cel $bb_each
}
exit

