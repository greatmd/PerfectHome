

set top_module n2_dva_dp_32x32_cust
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

  create_qtm_constraint_arc -setup -edge rise -from l2clk -to rd_addr -value 0
  create_qtm_constraint_arc -hold -edge rise -from l2clk -to rd_addr -value 0
  create_qtm_constraint_arc -setup -edge rise -from l2clk -to rd_en -value 0
  create_qtm_constraint_arc -hold -edge rise -from l2clk -to rd_en -value 0
  create_qtm_constraint_arc -setup -edge rise -from l2clk -to rd_en -value 0
  create_qtm_constraint_arc -hold -edge rise -from l2clk -to rd_en -value 0
  create_qtm_constraint_arc -setup -edge rise -from l2clk -to bit_wen -value 0
  create_qtm_constraint_arc -hold -edge rise -from l2clk -to bit_wen -value 0

  create_qtm_constraint_arc -setup -edge rise -from l2clk -to wr_addr -value 0
  create_qtm_constraint_arc -hold -edge rise -from l2clk -to wr_addr -value 0
  create_qtm_constraint_arc -setup -edge rise -from l2clk -to wr_en -value 0
  create_qtm_constraint_arc -hold -edge rise -from l2clk -to wr_en -value 0
  create_qtm_constraint_arc -setup -edge rise -from l2clk -to din -value 0
  create_qtm_constraint_arc -hold -edge rise -from l2clk -to din -value 0

#report_qtm_model
save_qtm_model
write_qtm_model -out_dir qtm -text

remove_design $top_module
