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
#set mw_reference_library [concat $mw_reference_library $mw_bb_library]
  create_mw_lib mw_lib -technology $technology_file -mw_reference_library $mw_reference_library 
  open_mw_lib mw_lib

#TODO: might need tech2itf map file
set_tlu_plus_files  -max_tluplus $max_tluplus -min_tluplus $min_tluplus    

check_library
check_tlu_plus_files

set bbs {n2_frf_mp_256x78_cust n2_com_dp_32x84_cust n2_com_dp_32x72_cust n2_dca_sp_9kb_cust n2_dva_dp_32x32_cust n2_com_dp_32x152_cust n2_stb_cm_64x45_cust n2_com_dp_64x84_cust n2_dta_sp_1920b_cust n2_tlb_tl_128x59_cust n2_irf_mp_128x72_cust n2_icd_sp_16p5kb_cust n2_ict_sp_1920b_cust n2_tlb_tl_64x59_cust}


#########################################################################
## Loading synthesized netlist and .sdc for SPC
#########################################################################
#source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_spc_netlist.tcl
#read_verilog -dirty_netlist ../gate/spc_all_nobb.vSyn 
read_verilog -dirty_netlist ../gate/spc_all_new.vSyn 

current_design $top_module
import_fp_black_boxes [get_cells -hierarchical -filter "is_logical_black_box==true && black_box_type==Missing"]
source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_bb_sizing.tcl

#foreach bb_each $bbs {
#lappend link_library "$bb_each.db"
#echo "$bb_each.db"
#set_dont_touch $bb_each
#}

## macros set don touch
#foreach bb_each $bbs {
#  set_dont_touch $bb_each
#}
## might need to set up mim (multiply instantiated module) before uniquify
uniquify_fp_mw_cel -store_mim_property [get_cells {exu0 exu1}]
#uniquify_fp_mw_cel 
read_sdc -version 1.9 ../sdc/spc.sdc
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
source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_spc_pins.tcl
create_floorplan -core_aspect_ratio 1.6 -core_utilization 0.6 -left_io2core "20" -bottom_io2core "20" -right_io2core "20" -top_io2core "20"

## padding causes an utilization overflow error for small blocks like dec, gkt
## should be used wisely
#create_fp_plan_group_padding -internal_widths {5.0 5.0 5.0 5.0}

create_plan_groups -target_aspect_ratio 0.5 -target_utilization 0.600 -cycle_color {lsu}
create_plan_groups -target_aspect_ratio 0.5 -target_utilization 0.600 -cycle_color {ifu_ftu}
create_plan_groups -target_aspect_ratio 1 -target_utilization 0.650 -cycle_color {exu0}
create_plan_groups -target_aspect_ratio 1 -target_utilization 0.650 -cycle_color {exu1}
create_plan_groups -target_aspect_ratio 1.8 -target_utilization 0.650 -cycle_color {fgu}
create_plan_groups -target_aspect_ratio 1.2 -target_utilization 0.650 -cycle_color {tlu}
create_plan_groups -target_aspect_ratio 0.8 -target_utilization 0.650 -cycle_color {mmu}
create_plan_groups -target_aspect_ratio 05 -target_utilization 0.650 -cycle_color {ifu_ibu}
create_plan_groups -target_aspect_ratio 1 -target_utilization 0.650 -cycle_color {dec}
create_plan_groups -target_aspect_ratio 1 -target_utilization 0.650 -cycle_color {pku}
create_plan_groups -target_aspect_ratio 0.4 -target_utilization 0.650 -cycle_color {ifu_cmu}
create_plan_groups -target_aspect_ratio 0.4 -target_utilization 0.650 -cycle_color {gkt}
create_plan_groups -target_aspect_ratio 0.4 -target_utilization 0.650 -cycle_color {pmu}
shape_fp_blocks -top_down -channels

## might need incremental placement for each plan_group for better starting point
set_fp_placement_strategy -macros_on_edge auto
create_fp_placement
#copy_mim -type placement exu0
save_mw_cel -hierarchy -as floorplan_aftplacement
#get_utilization [get_plan_groups *]
#report_channel_capacity helps to see if routing channel btw FPs are enough

###### Define pins for soft macros & convert soft macros to FRAMs (Hard macros) for timing-driven flow ######
set_fp_pin_constraints -keep_buses_together on -allow_feedthroughs off -bus_ordering lsb_to_msb -no_stacking all -allowed_layers {M2 M3}
place_fp_pins [get_cells -hier -filter "is_soft_macro==true"]
foreach_in_collection design_object [get_mw_cels n2_*] {
   set design_name [get_object_name $design_object]
   create_macro_fram -cell_name $design_name -extract_blockage_by_block_core_with_margin {PO 0 M1 0 M2 0 M3 0 M4 0 M5 0 M6 -1 M7 -1 M8 -1 M9 -1 AP -1}
}


###### PNS ######
save_mw_cel -as floorplan_prepns
set_fp_rail_constraints -set_global -keep_ring_outside_core
set_fp_rail_constraints -set_ring -nets  {VDD VSS}  -horizontal_ring_layer { M9 } -vertical_ring_layer { M8 } -ring_spacing 0.8 -extend_strap core_ring
set_fp_rail_constraints -add_layer  -layer M9 -direction horizontal -max_strap 60 -min_strap 10 -min_width 0.4 -spacing 0.4
set_fp_rail_constraints -add_layer  -layer M8 -direction vertical -max_strap 60 -min_strap 10 -min_width 0.4 -spacing 0.4
set_fp_rail_constraints -add_layer  -layer M7 -direction horizontal -max_strap 60 -min_strap 10 -min_width 0.05 -spacing 0.05
set_fp_rail_constraints -add_layer  -layer M6 -direction vertical -max_strap 60 -min_strap 10 -min_width 0.0 -spacing 0.05
set_fp_power_pad_constraints  -maximum_number_of_pads 100 -save_file ./default.vpad
synthesize_fp_rail -nets "VDD VSS" -synthesize_power_plan -synthesize_power_pads -use_strap_ends_as_pads -analyze_power
commit_fp_rail
save_mw_cel -as floorplan_aftpns

###### Clk Planning ######
#source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_clk_pn_options.tcl

#set_fp_pin_constraints -keep_buses_together on
#set_route_zrt_common_options -plan_group_aware all_routing
#route_zrt_global -exploration true
#set_fp_pin_constraints -keep_buses_together on -allow_feedthroughs on -bus_ordering lsb_to_msb -no_stacking all -allowed_layers {M2 M3}
#place_fp_pins -effort high []





#quit
