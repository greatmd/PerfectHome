# ========== Copyright Header Begin ==========================================
# Autor : Donguk Moon (dongukmoon@stanford.edu)
# Purpose 
#  - place and route for SPARC core
# Progress:
# 1/04/2014 : QTM models for all black boxes
# ========== Copyright Header End ============================================

## black_box list
##{n2_frf_mp_256x78_cust n2_com_dp_32x84_cust n2_com_dp_32x72_cust n2_dca_sp_9kb_cust n2_dva_dp_32x32_cust n2_com_dp_32x152_cust n2_stb_cm_64x45_cust n2_com_dp_64x84_cust n2_dta_sp_1920b_cust n2_tlb_tl_128x59_cust n2_irf_mp_128x72_cust n2_icd_sp_16p5kb_cust n2_ict_sp_1920b_cust n2_tlb_tl_64x59_cust}

sh date
sh hostname
sh uptime
remove_design -all
set dv_root [sh echo \$DV_ROOT]
set syn_home [sh echo \$SYN_LIB]


## goto bb directory:
set block  spc
set blk_dir $dv_root/design/sys/iop/$block/synopsys
echo "Enter $blk_dir/bb for QTM modeling...." 
cd $blk_dir/bb

#source -echo -verbose $dv_root/design/sys/synopsys/script/pnr_lib_setup.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/target_lib.scr
# Delete previous milkyway db
#if {[file exists mw_lib]} {
#  sh rm -rf mw_lib
#}
#  create_mw_lib mw_lib -technology $technology_file -mw_reference_library $mw_reference_library
open_mw_lib mw_lib

#TODO: might need tech2itf map file
set_tlu_plus_files  -max_tluplus $max_tluplus -min_tluplus $min_tluplus    

check_library
check_tlu_plus_files

## total 14 units
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_frf_mp_256x78_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_com_dp_32x84_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_com_dp_32x72_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_dca_sp_9kb_cust.qtm.tcl

source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_dva_dp_32x32_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_com_dp_32x152_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_stb_cm_64x45_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_com_dp_64x84_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_dta_sp_1920b_cust.qtm.tcl

source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_tlb_tl_128x59_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_irf_mp_128x72_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_icd_sp_16p5kb_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_ict_sp_1920b_cust.qtm.tcl
source -echo -verbose $dv_root/design/sys/synopsys/script/qtm_scripts/n2_tlb_tl_64x59_cust.qtm.tcl

exit
