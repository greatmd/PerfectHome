set top_module n2_frf_mp_256x78_cust
read_verilog -dirty_netlist $top_module.v 
current_design $top_module


#get_ports -filter {@port_direction == in}
create_qtm_model $top_module
set_qtm_technology -library tcbn28hpmbwp35tt1v25c_ccs
set_qtm_global_parameter -param setup -lib_cell DFQD2BWP35 -pin D
set_qtm_global_parameter -param hold -lib_cell DFQD2BWP35 -pin D
set_qtm_global_parameter -param clk_to_output -lib_cell DFQD2BWP35 -pin Q -clock CP
create_qtm_load_type -lib_cell DFQD2BWP35 -input_pin D load_dff
create_qtm_drive_type -lib_cell DFQD2BWP35 -output_pin Q drive_dff

#create_qtm_port  frf_r1_data[63:0] -type inout 
#create_qtm_port  frf_r1_ecc[13:0] -type inout 
#create_qtm_port  frf_r2_data[63:0] -type inout 
#create_qtm_port  frf_r2_ecc[13:0] -type inout 
#create_qtm_port { scan_in pce tcu_pce_ov tcu_aclk tcu_bclk tcu_array_wr_inhibit tcu_scan_en tcu_se_scancollar_in main_clken} -type inout
#create_qtm_port { r_tid[2:0] t_tid[2:0] r1_valid r1_addr[4:0] r2_valid r2_addr[4:0] w1_tid[2:0] w1_valid[1:0] w1_addr[4:0] w2_tid[2:0] w2_valid[1:0] w2_addr[4:0]} -type inout
#create_qtm_port scan_out -type inout
#create_qtm_port { w1_data[63:0] w1_ecc[13:0]  w2_data[63:0] w2_ecc[13:0] } -type inout

create_qtm_port l2clk -type clock 
foreach pt [ get_object_name [all_inputs] ] {
  if {$pt != "l2clk"} {
    create_qtm_port $pt -type input 
    set_qtm_port_load -type load_dff -factor 1 $pt 
   }
}
foreach pt [ get_object_name [all_outputs] ] {
  create_qtm_port $pt -type output 
  set_qtm_port_drive -type drive_dff $pt
}
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to r1_addr -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to r2_addr -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to r1_valid -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to r2_valid -value 0

    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w1_addr -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w2_addr -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w1_valid -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w2_valid -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w1_tid -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w2_tid -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w1_ecc -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w2_ecc -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w1_data -value 0
    create_qtm_constraint_arc -setup -edge rise -from l2clk -to w2_data -value 0

    create_qtm_delay_arc -from_edge rise -from l2clk -to frf_r1_data -value 0
    create_qtm_delay_arc -from_edge rise -from l2clk -to frf_r1_ecc -value 0
    create_qtm_delay_arc -from_edge rise -from l2clk -to frf_r2_data -value 0
    create_qtm_delay_arc -from_edge rise -from l2clk -to frf_r2_ecc -value 0

#report_qtm_model
save_qtm_model
write_qtm_model -out_dir qtm -text
remove_design $top_module



