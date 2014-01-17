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
