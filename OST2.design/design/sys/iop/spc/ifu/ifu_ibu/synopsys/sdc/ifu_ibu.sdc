###################################################################

# Created by write_sdc on Sun Jan 12 16:10:20 2014

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports l2clk]  -period 0.714286  -waveform {0 0.357143}
set_clock_uncertainty 0  [get_clocks l2clk]
set_clock_transition -min -fall 0.05 [get_clocks l2clk]
set_clock_transition -min -rise 0.05 [get_clocks l2clk]
set_clock_transition -max -fall 0.05 [get_clocks l2clk]
set_clock_transition -max -rise 0.05 [get_clocks l2clk]
group_path -name in2out  -from [list [get_clocks l2clk] [get_ports scan_in] [get_ports tcu_pce_ov]     \
[get_ports tcu_scan_en] [get_ports spc_aclk] [get_ports spc_bclk] [get_ports   \
{pku_flush_buffer0[7]}] [get_ports {pku_flush_buffer0[6]}] [get_ports          \
{pku_flush_buffer0[5]}] [get_ports {pku_flush_buffer0[4]}] [get_ports          \
{pku_flush_buffer0[3]}] [get_ports {pku_flush_buffer0[2]}] [get_ports          \
{pku_flush_buffer0[1]}] [get_ports {pku_flush_buffer0[0]}] [get_ports          \
{pku_flush_upper_buffer[7]}] [get_ports {pku_flush_upper_buffer[6]}]           \
[get_ports {pku_flush_upper_buffer[5]}] [get_ports                             \
{pku_flush_upper_buffer[4]}] [get_ports {pku_flush_upper_buffer[3]}]           \
[get_ports {pku_flush_upper_buffer[2]}] [get_ports                             \
{pku_flush_upper_buffer[1]}] [get_ports {pku_flush_upper_buffer[0]}]           \
[get_ports {ftu_fetch_thr_c[7]}] [get_ports {ftu_fetch_thr_c[6]}] [get_ports   \
{ftu_fetch_thr_c[5]}] [get_ports {ftu_fetch_thr_c[4]}] [get_ports              \
{ftu_fetch_thr_c[3]}] [get_ports {ftu_fetch_thr_c[2]}] [get_ports              \
{ftu_fetch_thr_c[1]}] [get_ports {ftu_fetch_thr_c[0]}] [get_ports              \
{pku_pick_p[7]}] [get_ports {pku_pick_p[6]}] [get_ports {pku_pick_p[5]}]       \
[get_ports {pku_pick_p[4]}] [get_ports {pku_pick_p[3]}] [get_ports             \
{pku_pick_p[2]}] [get_ports {pku_pick_p[1]}] [get_ports {pku_pick_p[0]}]       \
[get_ports ftu_exception_valid_c] [get_ports ftu_instr_sf_valid_c] [get_ports  \
{ftu_ibu_redirect_bf[7]}] [get_ports {ftu_ibu_redirect_bf[6]}] [get_ports      \
{ftu_ibu_redirect_bf[5]}] [get_ports {ftu_ibu_redirect_bf[4]}] [get_ports      \
{ftu_ibu_redirect_bf[3]}] [get_ports {ftu_ibu_redirect_bf[2]}] [get_ports      \
{ftu_ibu_redirect_bf[1]}] [get_ports {ftu_ibu_redirect_bf[0]}] [get_ports      \
ftu_ic_no_err_c] [get_ports ftu_bus_0_is_first] [get_ports ftu_bus_1_is_first] \
[get_ports ftu_bus_2_is_first] [get_ports ftu_bus_3_is_first] [get_ports       \
{ftu_instr_valid_c[3]}] [get_ports {ftu_instr_valid_c[2]}] [get_ports          \
{ftu_instr_valid_c[1]}] [get_ports {ftu_instr_valid_c[0]}] [get_ports          \
{ftu_instr_0_c_rep0[32]}] [get_ports {ftu_instr_0_c_rep0[31]}] [get_ports      \
{ftu_instr_0_c_rep0[30]}] [get_ports {ftu_instr_0_c_rep0[29]}] [get_ports      \
{ftu_instr_0_c_rep0[28]}] [get_ports {ftu_instr_0_c_rep0[27]}] [get_ports      \
{ftu_instr_0_c_rep0[26]}] [get_ports {ftu_instr_0_c_rep0[25]}] [get_ports      \
{ftu_instr_0_c_rep0[24]}] [get_ports {ftu_instr_0_c_rep0[23]}] [get_ports      \
{ftu_instr_0_c_rep0[22]}] [get_ports {ftu_instr_0_c_rep0[21]}] [get_ports      \
{ftu_instr_0_c_rep0[20]}] [get_ports {ftu_instr_0_c_rep0[19]}] [get_ports      \
{ftu_instr_0_c_rep0[18]}] [get_ports {ftu_instr_0_c_rep0[17]}] [get_ports      \
{ftu_instr_0_c_rep0[16]}] [get_ports {ftu_instr_0_c_rep0[15]}] [get_ports      \
{ftu_instr_0_c_rep0[14]}] [get_ports {ftu_instr_0_c_rep0[13]}] [get_ports      \
{ftu_instr_0_c_rep0[12]}] [get_ports {ftu_instr_0_c_rep0[11]}] [get_ports      \
{ftu_instr_0_c_rep0[10]}] [get_ports {ftu_instr_0_c_rep0[9]}] [get_ports       \
{ftu_instr_0_c_rep0[8]}] [get_ports {ftu_instr_0_c_rep0[7]}] [get_ports        \
{ftu_instr_0_c_rep0[6]}] [get_ports {ftu_instr_0_c_rep0[5]}] [get_ports        \
{ftu_instr_0_c_rep0[4]}] [get_ports {ftu_instr_0_c_rep0[3]}] [get_ports        \
{ftu_instr_0_c_rep0[2]}] [get_ports {ftu_instr_0_c_rep0[1]}] [get_ports        \
{ftu_instr_0_c_rep0[0]}] [get_ports {ftu_instr_0_c_rep1[32]}] [get_ports       \
{ftu_instr_0_c_rep1[31]}] [get_ports {ftu_instr_0_c_rep1[30]}] [get_ports      \
{ftu_instr_0_c_rep1[29]}] [get_ports {ftu_instr_0_c_rep1[28]}] [get_ports      \
{ftu_instr_0_c_rep1[27]}] [get_ports {ftu_instr_0_c_rep1[26]}] [get_ports      \
{ftu_instr_0_c_rep1[25]}] [get_ports {ftu_instr_0_c_rep1[24]}] [get_ports      \
{ftu_instr_0_c_rep1[23]}] [get_ports {ftu_instr_0_c_rep1[22]}] [get_ports      \
{ftu_instr_0_c_rep1[21]}] [get_ports {ftu_instr_0_c_rep1[20]}] [get_ports      \
{ftu_instr_0_c_rep1[19]}] [get_ports {ftu_instr_0_c_rep1[18]}] [get_ports      \
{ftu_instr_0_c_rep1[17]}] [get_ports {ftu_instr_0_c_rep1[16]}] [get_ports      \
{ftu_instr_0_c_rep1[15]}] [get_ports {ftu_instr_0_c_rep1[14]}] [get_ports      \
{ftu_instr_0_c_rep1[13]}] [get_ports {ftu_instr_0_c_rep1[12]}] [get_ports      \
{ftu_instr_0_c_rep1[11]}] [get_ports {ftu_instr_0_c_rep1[10]}] [get_ports      \
{ftu_instr_0_c_rep1[9]}] [get_ports {ftu_instr_0_c_rep1[8]}] [get_ports        \
{ftu_instr_0_c_rep1[7]}] [get_ports {ftu_instr_0_c_rep1[6]}] [get_ports        \
{ftu_instr_0_c_rep1[5]}] [get_ports {ftu_instr_0_c_rep1[4]}] [get_ports        \
{ftu_instr_0_c_rep1[3]}] [get_ports {ftu_instr_0_c_rep1[2]}] [get_ports        \
{ftu_instr_0_c_rep1[1]}] [get_ports {ftu_instr_0_c_rep1[0]}] [get_ports        \
{ftu_instr_0_c_rep2[32]}] [get_ports {ftu_instr_0_c_rep2[31]}] [get_ports      \
{ftu_instr_0_c_rep2[30]}] [get_ports {ftu_instr_0_c_rep2[29]}] [get_ports      \
{ftu_instr_0_c_rep2[28]}] [get_ports {ftu_instr_0_c_rep2[27]}] [get_ports      \
{ftu_instr_0_c_rep2[26]}] [get_ports {ftu_instr_0_c_rep2[25]}] [get_ports      \
{ftu_instr_0_c_rep2[24]}] [get_ports {ftu_instr_0_c_rep2[23]}] [get_ports      \
{ftu_instr_0_c_rep2[22]}] [get_ports {ftu_instr_0_c_rep2[21]}] [get_ports      \
{ftu_instr_0_c_rep2[20]}] [get_ports {ftu_instr_0_c_rep2[19]}] [get_ports      \
{ftu_instr_0_c_rep2[18]}] [get_ports {ftu_instr_0_c_rep2[17]}] [get_ports      \
{ftu_instr_0_c_rep2[16]}] [get_ports {ftu_instr_0_c_rep2[15]}] [get_ports      \
{ftu_instr_0_c_rep2[14]}] [get_ports {ftu_instr_0_c_rep2[13]}] [get_ports      \
{ftu_instr_0_c_rep2[12]}] [get_ports {ftu_instr_0_c_rep2[11]}] [get_ports      \
{ftu_instr_0_c_rep2[10]}] [get_ports {ftu_instr_0_c_rep2[9]}] [get_ports       \
{ftu_instr_0_c_rep2[8]}] [get_ports {ftu_instr_0_c_rep2[7]}] [get_ports        \
{ftu_instr_0_c_rep2[6]}] [get_ports {ftu_instr_0_c_rep2[5]}] [get_ports        \
{ftu_instr_0_c_rep2[4]}] [get_ports {ftu_instr_0_c_rep2[3]}] [get_ports        \
{ftu_instr_0_c_rep2[2]}] [get_ports {ftu_instr_0_c_rep2[1]}] [get_ports        \
{ftu_instr_0_c_rep2[0]}] [get_ports {ftu_instr_0_c_rep3[32]}] [get_ports       \
{ftu_instr_0_c_rep3[31]}] [get_ports {ftu_instr_0_c_rep3[30]}] [get_ports      \
{ftu_instr_0_c_rep3[29]}] [get_ports {ftu_instr_0_c_rep3[28]}] [get_ports      \
{ftu_instr_0_c_rep3[27]}] [get_ports {ftu_instr_0_c_rep3[26]}] [get_ports      \
{ftu_instr_0_c_rep3[25]}] [get_ports {ftu_instr_0_c_rep3[24]}] [get_ports      \
{ftu_instr_0_c_rep3[23]}] [get_ports {ftu_instr_0_c_rep3[22]}] [get_ports      \
{ftu_instr_0_c_rep3[21]}] [get_ports {ftu_instr_0_c_rep3[20]}] [get_ports      \
{ftu_instr_0_c_rep3[19]}] [get_ports {ftu_instr_0_c_rep3[18]}] [get_ports      \
{ftu_instr_0_c_rep3[17]}] [get_ports {ftu_instr_0_c_rep3[16]}] [get_ports      \
{ftu_instr_0_c_rep3[15]}] [get_ports {ftu_instr_0_c_rep3[14]}] [get_ports      \
{ftu_instr_0_c_rep3[13]}] [get_ports {ftu_instr_0_c_rep3[12]}] [get_ports      \
{ftu_instr_0_c_rep3[11]}] [get_ports {ftu_instr_0_c_rep3[10]}] [get_ports      \
{ftu_instr_0_c_rep3[9]}] [get_ports {ftu_instr_0_c_rep3[8]}] [get_ports        \
{ftu_instr_0_c_rep3[7]}] [get_ports {ftu_instr_0_c_rep3[6]}] [get_ports        \
{ftu_instr_0_c_rep3[5]}] [get_ports {ftu_instr_0_c_rep3[4]}] [get_ports        \
{ftu_instr_0_c_rep3[3]}] [get_ports {ftu_instr_0_c_rep3[2]}] [get_ports        \
{ftu_instr_0_c_rep3[1]}] [get_ports {ftu_instr_0_c_rep3[0]}] [get_ports        \
{ftu_instr_1_c_rep0[32]}] [get_ports {ftu_instr_1_c_rep0[31]}] [get_ports      \
{ftu_instr_1_c_rep0[30]}] [get_ports {ftu_instr_1_c_rep0[29]}] [get_ports      \
{ftu_instr_1_c_rep0[28]}] [get_ports {ftu_instr_1_c_rep0[27]}] [get_ports      \
{ftu_instr_1_c_rep0[26]}] [get_ports {ftu_instr_1_c_rep0[25]}] [get_ports      \
{ftu_instr_1_c_rep0[24]}] [get_ports {ftu_instr_1_c_rep0[23]}] [get_ports      \
{ftu_instr_1_c_rep0[22]}] [get_ports {ftu_instr_1_c_rep0[21]}] [get_ports      \
{ftu_instr_1_c_rep0[20]}] [get_ports {ftu_instr_1_c_rep0[19]}] [get_ports      \
{ftu_instr_1_c_rep0[18]}] [get_ports {ftu_instr_1_c_rep0[17]}] [get_ports      \
{ftu_instr_1_c_rep0[16]}] [get_ports {ftu_instr_1_c_rep0[15]}] [get_ports      \
{ftu_instr_1_c_rep0[14]}] [get_ports {ftu_instr_1_c_rep0[13]}] [get_ports      \
{ftu_instr_1_c_rep0[12]}] [get_ports {ftu_instr_1_c_rep0[11]}] [get_ports      \
{ftu_instr_1_c_rep0[10]}] [get_ports {ftu_instr_1_c_rep0[9]}] [get_ports       \
{ftu_instr_1_c_rep0[8]}] [get_ports {ftu_instr_1_c_rep0[7]}] [get_ports        \
{ftu_instr_1_c_rep0[6]}] [get_ports {ftu_instr_1_c_rep0[5]}] [get_ports        \
{ftu_instr_1_c_rep0[4]}] [get_ports {ftu_instr_1_c_rep0[3]}] [get_ports        \
{ftu_instr_1_c_rep0[2]}] [get_ports {ftu_instr_1_c_rep0[1]}] [get_ports        \
{ftu_instr_1_c_rep0[0]}] [get_ports {ftu_instr_1_c_rep1[32]}] [get_ports       \
{ftu_instr_1_c_rep1[31]}] [get_ports {ftu_instr_1_c_rep1[30]}] [get_ports      \
{ftu_instr_1_c_rep1[29]}] [get_ports {ftu_instr_1_c_rep1[28]}] [get_ports      \
{ftu_instr_1_c_rep1[27]}] [get_ports {ftu_instr_1_c_rep1[26]}] [get_ports      \
{ftu_instr_1_c_rep1[25]}] [get_ports {ftu_instr_1_c_rep1[24]}] [get_ports      \
{ftu_instr_1_c_rep1[23]}] [get_ports {ftu_instr_1_c_rep1[22]}] [get_ports      \
{ftu_instr_1_c_rep1[21]}] [get_ports {ftu_instr_1_c_rep1[20]}] [get_ports      \
{ftu_instr_1_c_rep1[19]}] [get_ports {ftu_instr_1_c_rep1[18]}] [get_ports      \
{ftu_instr_1_c_rep1[17]}] [get_ports {ftu_instr_1_c_rep1[16]}] [get_ports      \
{ftu_instr_1_c_rep1[15]}] [get_ports {ftu_instr_1_c_rep1[14]}] [get_ports      \
{ftu_instr_1_c_rep1[13]}] [get_ports {ftu_instr_1_c_rep1[12]}] [get_ports      \
{ftu_instr_1_c_rep1[11]}] [get_ports {ftu_instr_1_c_rep1[10]}] [get_ports      \
{ftu_instr_1_c_rep1[9]}] [get_ports {ftu_instr_1_c_rep1[8]}] [get_ports        \
{ftu_instr_1_c_rep1[7]}] [get_ports {ftu_instr_1_c_rep1[6]}] [get_ports        \
{ftu_instr_1_c_rep1[5]}] [get_ports {ftu_instr_1_c_rep1[4]}] [get_ports        \
{ftu_instr_1_c_rep1[3]}] [get_ports {ftu_instr_1_c_rep1[2]}] [get_ports        \
{ftu_instr_1_c_rep1[1]}] [get_ports {ftu_instr_1_c_rep1[0]}] [get_ports        \
{ftu_instr_1_c_rep2[32]}] [get_ports {ftu_instr_1_c_rep2[31]}] [get_ports      \
{ftu_instr_1_c_rep2[30]}] [get_ports {ftu_instr_1_c_rep2[29]}] [get_ports      \
{ftu_instr_1_c_rep2[28]}] [get_ports {ftu_instr_1_c_rep2[27]}] [get_ports      \
{ftu_instr_1_c_rep2[26]}] [get_ports {ftu_instr_1_c_rep2[25]}] [get_ports      \
{ftu_instr_1_c_rep2[24]}] [get_ports {ftu_instr_1_c_rep2[23]}] [get_ports      \
{ftu_instr_1_c_rep2[22]}] [get_ports {ftu_instr_1_c_rep2[21]}] [get_ports      \
{ftu_instr_1_c_rep2[20]}] [get_ports {ftu_instr_1_c_rep2[19]}] [get_ports      \
{ftu_instr_1_c_rep2[18]}] [get_ports {ftu_instr_1_c_rep2[17]}] [get_ports      \
{ftu_instr_1_c_rep2[16]}] [get_ports {ftu_instr_1_c_rep2[15]}] [get_ports      \
{ftu_instr_1_c_rep2[14]}] [get_ports {ftu_instr_1_c_rep2[13]}] [get_ports      \
{ftu_instr_1_c_rep2[12]}] [get_ports {ftu_instr_1_c_rep2[11]}] [get_ports      \
{ftu_instr_1_c_rep2[10]}] [get_ports {ftu_instr_1_c_rep2[9]}] [get_ports       \
{ftu_instr_1_c_rep2[8]}] [get_ports {ftu_instr_1_c_rep2[7]}] [get_ports        \
{ftu_instr_1_c_rep2[6]}] [get_ports {ftu_instr_1_c_rep2[5]}] [get_ports        \
{ftu_instr_1_c_rep2[4]}] [get_ports {ftu_instr_1_c_rep2[3]}] [get_ports        \
{ftu_instr_1_c_rep2[2]}] [get_ports {ftu_instr_1_c_rep2[1]}] [get_ports        \
{ftu_instr_1_c_rep2[0]}] [get_ports {ftu_instr_1_c_rep3[32]}] [get_ports       \
{ftu_instr_1_c_rep3[31]}] [get_ports {ftu_instr_1_c_rep3[30]}] [get_ports      \
{ftu_instr_1_c_rep3[29]}] [get_ports {ftu_instr_1_c_rep3[28]}] [get_ports      \
{ftu_instr_1_c_rep3[27]}] [get_ports {ftu_instr_1_c_rep3[26]}] [get_ports      \
{ftu_instr_1_c_rep3[25]}] [get_ports {ftu_instr_1_c_rep3[24]}] [get_ports      \
{ftu_instr_1_c_rep3[23]}] [get_ports {ftu_instr_1_c_rep3[22]}] [get_ports      \
{ftu_instr_1_c_rep3[21]}] [get_ports {ftu_instr_1_c_rep3[20]}] [get_ports      \
{ftu_instr_1_c_rep3[19]}] [get_ports {ftu_instr_1_c_rep3[18]}] [get_ports      \
{ftu_instr_1_c_rep3[17]}] [get_ports {ftu_instr_1_c_rep3[16]}] [get_ports      \
{ftu_instr_1_c_rep3[15]}] [get_ports {ftu_instr_1_c_rep3[14]}] [get_ports      \
{ftu_instr_1_c_rep3[13]}] [get_ports {ftu_instr_1_c_rep3[12]}] [get_ports      \
{ftu_instr_1_c_rep3[11]}] [get_ports {ftu_instr_1_c_rep3[10]}] [get_ports      \
{ftu_instr_1_c_rep3[9]}] [get_ports {ftu_instr_1_c_rep3[8]}] [get_ports        \
{ftu_instr_1_c_rep3[7]}] [get_ports {ftu_instr_1_c_rep3[6]}] [get_ports        \
{ftu_instr_1_c_rep3[5]}] [get_ports {ftu_instr_1_c_rep3[4]}] [get_ports        \
{ftu_instr_1_c_rep3[3]}] [get_ports {ftu_instr_1_c_rep3[2]}] [get_ports        \
{ftu_instr_1_c_rep3[1]}] [get_ports {ftu_instr_1_c_rep3[0]}] [get_ports        \
{ftu_instr_2_c_rep0[32]}] [get_ports {ftu_instr_2_c_rep0[31]}] [get_ports      \
{ftu_instr_2_c_rep0[30]}] [get_ports {ftu_instr_2_c_rep0[29]}] [get_ports      \
{ftu_instr_2_c_rep0[28]}] [get_ports {ftu_instr_2_c_rep0[27]}] [get_ports      \
{ftu_instr_2_c_rep0[26]}] [get_ports {ftu_instr_2_c_rep0[25]}] [get_ports      \
{ftu_instr_2_c_rep0[24]}] [get_ports {ftu_instr_2_c_rep0[23]}] [get_ports      \
{ftu_instr_2_c_rep0[22]}] [get_ports {ftu_instr_2_c_rep0[21]}] [get_ports      \
{ftu_instr_2_c_rep0[20]}] [get_ports {ftu_instr_2_c_rep0[19]}] [get_ports      \
{ftu_instr_2_c_rep0[18]}] [get_ports {ftu_instr_2_c_rep0[17]}] [get_ports      \
{ftu_instr_2_c_rep0[16]}] [get_ports {ftu_instr_2_c_rep0[15]}] [get_ports      \
{ftu_instr_2_c_rep0[14]}] [get_ports {ftu_instr_2_c_rep0[13]}] [get_ports      \
{ftu_instr_2_c_rep0[12]}] [get_ports {ftu_instr_2_c_rep0[11]}] [get_ports      \
{ftu_instr_2_c_rep0[10]}] [get_ports {ftu_instr_2_c_rep0[9]}] [get_ports       \
{ftu_instr_2_c_rep0[8]}] [get_ports {ftu_instr_2_c_rep0[7]}] [get_ports        \
{ftu_instr_2_c_rep0[6]}] [get_ports {ftu_instr_2_c_rep0[5]}] [get_ports        \
{ftu_instr_2_c_rep0[4]}] [get_ports {ftu_instr_2_c_rep0[3]}] [get_ports        \
{ftu_instr_2_c_rep0[2]}] [get_ports {ftu_instr_2_c_rep0[1]}] [get_ports        \
{ftu_instr_2_c_rep0[0]}] [get_ports {ftu_instr_2_c_rep1[32]}] [get_ports       \
{ftu_instr_2_c_rep1[31]}] [get_ports {ftu_instr_2_c_rep1[30]}] [get_ports      \
{ftu_instr_2_c_rep1[29]}] [get_ports {ftu_instr_2_c_rep1[28]}] [get_ports      \
{ftu_instr_2_c_rep1[27]}] [get_ports {ftu_instr_2_c_rep1[26]}] [get_ports      \
{ftu_instr_2_c_rep1[25]}] [get_ports {ftu_instr_2_c_rep1[24]}] [get_ports      \
{ftu_instr_2_c_rep1[23]}] [get_ports {ftu_instr_2_c_rep1[22]}] [get_ports      \
{ftu_instr_2_c_rep1[21]}] [get_ports {ftu_instr_2_c_rep1[20]}] [get_ports      \
{ftu_instr_2_c_rep1[19]}] [get_ports {ftu_instr_2_c_rep1[18]}] [get_ports      \
{ftu_instr_2_c_rep1[17]}] [get_ports {ftu_instr_2_c_rep1[16]}] [get_ports      \
{ftu_instr_2_c_rep1[15]}] [get_ports {ftu_instr_2_c_rep1[14]}] [get_ports      \
{ftu_instr_2_c_rep1[13]}] [get_ports {ftu_instr_2_c_rep1[12]}] [get_ports      \
{ftu_instr_2_c_rep1[11]}] [get_ports {ftu_instr_2_c_rep1[10]}] [get_ports      \
{ftu_instr_2_c_rep1[9]}] [get_ports {ftu_instr_2_c_rep1[8]}] [get_ports        \
{ftu_instr_2_c_rep1[7]}] [get_ports {ftu_instr_2_c_rep1[6]}] [get_ports        \
{ftu_instr_2_c_rep1[5]}] [get_ports {ftu_instr_2_c_rep1[4]}] [get_ports        \
{ftu_instr_2_c_rep1[3]}] [get_ports {ftu_instr_2_c_rep1[2]}] [get_ports        \
{ftu_instr_2_c_rep1[1]}] [get_ports {ftu_instr_2_c_rep1[0]}] [get_ports        \
{ftu_instr_2_c_rep2[32]}] [get_ports {ftu_instr_2_c_rep2[31]}] [get_ports      \
{ftu_instr_2_c_rep2[30]}] [get_ports {ftu_instr_2_c_rep2[29]}] [get_ports      \
{ftu_instr_2_c_rep2[28]}] [get_ports {ftu_instr_2_c_rep2[27]}] [get_ports      \
{ftu_instr_2_c_rep2[26]}] [get_ports {ftu_instr_2_c_rep2[25]}] [get_ports      \
{ftu_instr_2_c_rep2[24]}] [get_ports {ftu_instr_2_c_rep2[23]}] [get_ports      \
{ftu_instr_2_c_rep2[22]}] [get_ports {ftu_instr_2_c_rep2[21]}] [get_ports      \
{ftu_instr_2_c_rep2[20]}] [get_ports {ftu_instr_2_c_rep2[19]}] [get_ports      \
{ftu_instr_2_c_rep2[18]}] [get_ports {ftu_instr_2_c_rep2[17]}] [get_ports      \
{ftu_instr_2_c_rep2[16]}] [get_ports {ftu_instr_2_c_rep2[15]}] [get_ports      \
{ftu_instr_2_c_rep2[14]}] [get_ports {ftu_instr_2_c_rep2[13]}] [get_ports      \
{ftu_instr_2_c_rep2[12]}] [get_ports {ftu_instr_2_c_rep2[11]}] [get_ports      \
{ftu_instr_2_c_rep2[10]}] [get_ports {ftu_instr_2_c_rep2[9]}] [get_ports       \
{ftu_instr_2_c_rep2[8]}] [get_ports {ftu_instr_2_c_rep2[7]}] [get_ports        \
{ftu_instr_2_c_rep2[6]}] [get_ports {ftu_instr_2_c_rep2[5]}] [get_ports        \
{ftu_instr_2_c_rep2[4]}] [get_ports {ftu_instr_2_c_rep2[3]}] [get_ports        \
{ftu_instr_2_c_rep2[2]}] [get_ports {ftu_instr_2_c_rep2[1]}] [get_ports        \
{ftu_instr_2_c_rep2[0]}] [get_ports {ftu_instr_2_c_rep3[32]}] [get_ports       \
{ftu_instr_2_c_rep3[31]}] [get_ports {ftu_instr_2_c_rep3[30]}] [get_ports      \
{ftu_instr_2_c_rep3[29]}] [get_ports {ftu_instr_2_c_rep3[28]}] [get_ports      \
{ftu_instr_2_c_rep3[27]}] [get_ports {ftu_instr_2_c_rep3[26]}] [get_ports      \
{ftu_instr_2_c_rep3[25]}] [get_ports {ftu_instr_2_c_rep3[24]}] [get_ports      \
{ftu_instr_2_c_rep3[23]}] [get_ports {ftu_instr_2_c_rep3[22]}] [get_ports      \
{ftu_instr_2_c_rep3[21]}] [get_ports {ftu_instr_2_c_rep3[20]}] [get_ports      \
{ftu_instr_2_c_rep3[19]}] [get_ports {ftu_instr_2_c_rep3[18]}] [get_ports      \
{ftu_instr_2_c_rep3[17]}] [get_ports {ftu_instr_2_c_rep3[16]}] [get_ports      \
{ftu_instr_2_c_rep3[15]}] [get_ports {ftu_instr_2_c_rep3[14]}] [get_ports      \
{ftu_instr_2_c_rep3[13]}] [get_ports {ftu_instr_2_c_rep3[12]}] [get_ports      \
{ftu_instr_2_c_rep3[11]}] [get_ports {ftu_instr_2_c_rep3[10]}] [get_ports      \
{ftu_instr_2_c_rep3[9]}] [get_ports {ftu_instr_2_c_rep3[8]}] [get_ports        \
{ftu_instr_2_c_rep3[7]}] [get_ports {ftu_instr_2_c_rep3[6]}] [get_ports        \
{ftu_instr_2_c_rep3[5]}] [get_ports {ftu_instr_2_c_rep3[4]}] [get_ports        \
{ftu_instr_2_c_rep3[3]}] [get_ports {ftu_instr_2_c_rep3[2]}] [get_ports        \
{ftu_instr_2_c_rep3[1]}] [get_ports {ftu_instr_2_c_rep3[0]}] [get_ports        \
{ftu_instr_3_c_rep0[32]}] [get_ports {ftu_instr_3_c_rep0[31]}] [get_ports      \
{ftu_instr_3_c_rep0[30]}] [get_ports {ftu_instr_3_c_rep0[29]}] [get_ports      \
{ftu_instr_3_c_rep0[28]}] [get_ports {ftu_instr_3_c_rep0[27]}] [get_ports      \
{ftu_instr_3_c_rep0[26]}] [get_ports {ftu_instr_3_c_rep0[25]}] [get_ports      \
{ftu_instr_3_c_rep0[24]}] [get_ports {ftu_instr_3_c_rep0[23]}] [get_ports      \
{ftu_instr_3_c_rep0[22]}] [get_ports {ftu_instr_3_c_rep0[21]}] [get_ports      \
{ftu_instr_3_c_rep0[20]}] [get_ports {ftu_instr_3_c_rep0[19]}] [get_ports      \
{ftu_instr_3_c_rep0[18]}] [get_ports {ftu_instr_3_c_rep0[17]}] [get_ports      \
{ftu_instr_3_c_rep0[16]}] [get_ports {ftu_instr_3_c_rep0[15]}] [get_ports      \
{ftu_instr_3_c_rep0[14]}] [get_ports {ftu_instr_3_c_rep0[13]}] [get_ports      \
{ftu_instr_3_c_rep0[12]}] [get_ports {ftu_instr_3_c_rep0[11]}] [get_ports      \
{ftu_instr_3_c_rep0[10]}] [get_ports {ftu_instr_3_c_rep0[9]}] [get_ports       \
{ftu_instr_3_c_rep0[8]}] [get_ports {ftu_instr_3_c_rep0[7]}] [get_ports        \
{ftu_instr_3_c_rep0[6]}] [get_ports {ftu_instr_3_c_rep0[5]}] [get_ports        \
{ftu_instr_3_c_rep0[4]}] [get_ports {ftu_instr_3_c_rep0[3]}] [get_ports        \
{ftu_instr_3_c_rep0[2]}] [get_ports {ftu_instr_3_c_rep0[1]}] [get_ports        \
{ftu_instr_3_c_rep0[0]}] [get_ports {ftu_instr_3_c_rep1[32]}] [get_ports       \
{ftu_instr_3_c_rep1[31]}] [get_ports {ftu_instr_3_c_rep1[30]}] [get_ports      \
{ftu_instr_3_c_rep1[29]}] [get_ports {ftu_instr_3_c_rep1[28]}] [get_ports      \
{ftu_instr_3_c_rep1[27]}] [get_ports {ftu_instr_3_c_rep1[26]}] [get_ports      \
{ftu_instr_3_c_rep1[25]}] [get_ports {ftu_instr_3_c_rep1[24]}] [get_ports      \
{ftu_instr_3_c_rep1[23]}] [get_ports {ftu_instr_3_c_rep1[22]}] [get_ports      \
{ftu_instr_3_c_rep1[21]}] [get_ports {ftu_instr_3_c_rep1[20]}] [get_ports      \
{ftu_instr_3_c_rep1[19]}] [get_ports {ftu_instr_3_c_rep1[18]}] [get_ports      \
{ftu_instr_3_c_rep1[17]}] [get_ports {ftu_instr_3_c_rep1[16]}] [get_ports      \
{ftu_instr_3_c_rep1[15]}] [get_ports {ftu_instr_3_c_rep1[14]}] [get_ports      \
{ftu_instr_3_c_rep1[13]}] [get_ports {ftu_instr_3_c_rep1[12]}] [get_ports      \
{ftu_instr_3_c_rep1[11]}] [get_ports {ftu_instr_3_c_rep1[10]}] [get_ports      \
{ftu_instr_3_c_rep1[9]}] [get_ports {ftu_instr_3_c_rep1[8]}] [get_ports        \
{ftu_instr_3_c_rep1[7]}] [get_ports {ftu_instr_3_c_rep1[6]}] [get_ports        \
{ftu_instr_3_c_rep1[5]}] [get_ports {ftu_instr_3_c_rep1[4]}] [get_ports        \
{ftu_instr_3_c_rep1[3]}] [get_ports {ftu_instr_3_c_rep1[2]}] [get_ports        \
{ftu_instr_3_c_rep1[1]}] [get_ports {ftu_instr_3_c_rep1[0]}] [get_ports        \
{ftu_instr_3_c_rep2[32]}] [get_ports {ftu_instr_3_c_rep2[31]}] [get_ports      \
{ftu_instr_3_c_rep2[30]}] [get_ports {ftu_instr_3_c_rep2[29]}] [get_ports      \
{ftu_instr_3_c_rep2[28]}] [get_ports {ftu_instr_3_c_rep2[27]}] [get_ports      \
{ftu_instr_3_c_rep2[26]}] [get_ports {ftu_instr_3_c_rep2[25]}] [get_ports      \
{ftu_instr_3_c_rep2[24]}] [get_ports {ftu_instr_3_c_rep2[23]}] [get_ports      \
{ftu_instr_3_c_rep2[22]}] [get_ports {ftu_instr_3_c_rep2[21]}] [get_ports      \
{ftu_instr_3_c_rep2[20]}] [get_ports {ftu_instr_3_c_rep2[19]}] [get_ports      \
{ftu_instr_3_c_rep2[18]}] [get_ports {ftu_instr_3_c_rep2[17]}] [get_ports      \
{ftu_instr_3_c_rep2[16]}] [get_ports {ftu_instr_3_c_rep2[15]}] [get_ports      \
{ftu_instr_3_c_rep2[14]}] [get_ports {ftu_instr_3_c_rep2[13]}] [get_ports      \
{ftu_instr_3_c_rep2[12]}] [get_ports {ftu_instr_3_c_rep2[11]}] [get_ports      \
{ftu_instr_3_c_rep2[10]}] [get_ports {ftu_instr_3_c_rep2[9]}] [get_ports       \
{ftu_instr_3_c_rep2[8]}] [get_ports {ftu_instr_3_c_rep2[7]}] [get_ports        \
{ftu_instr_3_c_rep2[6]}] [get_ports {ftu_instr_3_c_rep2[5]}] [get_ports        \
{ftu_instr_3_c_rep2[4]}] [get_ports {ftu_instr_3_c_rep2[3]}] [get_ports        \
{ftu_instr_3_c_rep2[2]}] [get_ports {ftu_instr_3_c_rep2[1]}] [get_ports        \
{ftu_instr_3_c_rep2[0]}] [get_ports {ftu_instr_3_c_rep3[32]}] [get_ports       \
{ftu_instr_3_c_rep3[31]}] [get_ports {ftu_instr_3_c_rep3[30]}] [get_ports      \
{ftu_instr_3_c_rep3[29]}] [get_ports {ftu_instr_3_c_rep3[28]}] [get_ports      \
{ftu_instr_3_c_rep3[27]}] [get_ports {ftu_instr_3_c_rep3[26]}] [get_ports      \
{ftu_instr_3_c_rep3[25]}] [get_ports {ftu_instr_3_c_rep3[24]}] [get_ports      \
{ftu_instr_3_c_rep3[23]}] [get_ports {ftu_instr_3_c_rep3[22]}] [get_ports      \
{ftu_instr_3_c_rep3[21]}] [get_ports {ftu_instr_3_c_rep3[20]}] [get_ports      \
{ftu_instr_3_c_rep3[19]}] [get_ports {ftu_instr_3_c_rep3[18]}] [get_ports      \
{ftu_instr_3_c_rep3[17]}] [get_ports {ftu_instr_3_c_rep3[16]}] [get_ports      \
{ftu_instr_3_c_rep3[15]}] [get_ports {ftu_instr_3_c_rep3[14]}] [get_ports      \
{ftu_instr_3_c_rep3[13]}] [get_ports {ftu_instr_3_c_rep3[12]}] [get_ports      \
{ftu_instr_3_c_rep3[11]}] [get_ports {ftu_instr_3_c_rep3[10]}] [get_ports      \
{ftu_instr_3_c_rep3[9]}] [get_ports {ftu_instr_3_c_rep3[8]}] [get_ports        \
{ftu_instr_3_c_rep3[7]}] [get_ports {ftu_instr_3_c_rep3[6]}] [get_ports        \
{ftu_instr_3_c_rep3[5]}] [get_ports {ftu_instr_3_c_rep3[4]}] [get_ports        \
{ftu_instr_3_c_rep3[3]}] [get_ports {ftu_instr_3_c_rep3[2]}] [get_ports        \
{ftu_instr_3_c_rep3[1]}] [get_ports {ftu_instr_3_c_rep3[0]}] [get_ports        \
{ftu_instr_0_exceptions_c_rep0[4]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep0[3]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep0[2]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep0[1]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep0[0]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[4]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[3]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[2]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[1]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[0]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[4]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[3]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[2]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[1]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[0]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[4]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[3]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[2]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[1]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[0]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[4]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[3]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[2]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[1]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[0]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[4]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[3]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[2]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[1]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[0]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[4]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[3]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[2]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[1]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[0]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[4]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[3]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[2]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[1]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[0]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[4]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[3]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[2]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[1]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[0]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[4]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[3]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[2]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[1]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[0]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[4]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[3]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[2]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[1]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[0]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[4]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[3]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[2]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[1]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[0]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[4]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[3]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[2]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[1]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[0]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[4]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[3]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[2]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[1]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[0]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[4]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[3]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[2]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[1]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[0]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[4]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[3]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[2]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[1]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[0]}] [get_ports lsu_ifu_ibu_pmen] [get_ports    \
{ftu_buffer_wr_en_f[7]}] [get_ports {ftu_buffer_wr_en_f[6]}] [get_ports        \
{ftu_buffer_wr_en_f[5]}] [get_ports {ftu_buffer_wr_en_f[4]}] [get_ports        \
{ftu_buffer_wr_en_f[3]}] [get_ports {ftu_buffer_wr_en_f[2]}] [get_ports        \
{ftu_buffer_wr_en_f[1]}] [get_ports {ftu_buffer_wr_en_f[0]}] [get_ports        \
l15_ifu_valid]]  -to [list [get_ports {ifu_buf0_valid_p[7]}] [get_ports {ifu_buf0_valid_p[6]}] \
[get_ports {ifu_buf0_valid_p[5]}] [get_ports {ifu_buf0_valid_p[4]}] [get_ports \
{ifu_buf0_valid_p[3]}] [get_ports {ifu_buf0_valid_p[2]}] [get_ports            \
{ifu_buf0_valid_p[1]}] [get_ports {ifu_buf0_valid_p[0]}] [get_ports            \
{ifu_upper_buffer_valid_p[7]}] [get_ports {ifu_upper_buffer_valid_p[6]}]       \
[get_ports {ifu_upper_buffer_valid_p[5]}] [get_ports                           \
{ifu_upper_buffer_valid_p[4]}] [get_ports {ifu_upper_buffer_valid_p[3]}]       \
[get_ports {ifu_upper_buffer_valid_p[2]}] [get_ports                           \
{ifu_upper_buffer_valid_p[1]}] [get_ports {ifu_upper_buffer_valid_p[0]}]       \
[get_ports {ibu_empty[7]}] [get_ports {ibu_empty[6]}] [get_ports               \
{ibu_empty[5]}] [get_ports {ibu_empty[4]}] [get_ports {ibu_empty[3]}]          \
[get_ports {ibu_empty[2]}] [get_ports {ibu_empty[1]}] [get_ports               \
{ibu_empty[0]}] [get_ports {ibu_room_4ormore[7]}] [get_ports                   \
{ibu_room_4ormore[6]}] [get_ports {ibu_room_4ormore[5]}] [get_ports            \
{ibu_room_4ormore[4]}] [get_ports {ibu_room_4ormore[3]}] [get_ports            \
{ibu_room_4ormore[2]}] [get_ports {ibu_room_4ormore[1]}] [get_ports            \
{ibu_room_4ormore[0]}] [get_ports {ifu_buf0_inst0[32]}] [get_ports             \
{ifu_buf0_inst0[31]}] [get_ports {ifu_buf0_inst0[30]}] [get_ports              \
{ifu_buf0_inst0[29]}] [get_ports {ifu_buf0_inst0[28]}] [get_ports              \
{ifu_buf0_inst0[27]}] [get_ports {ifu_buf0_inst0[26]}] [get_ports              \
{ifu_buf0_inst0[25]}] [get_ports {ifu_buf0_inst0[24]}] [get_ports              \
{ifu_buf0_inst0[23]}] [get_ports {ifu_buf0_inst0[22]}] [get_ports              \
{ifu_buf0_inst0[21]}] [get_ports {ifu_buf0_inst0[20]}] [get_ports              \
{ifu_buf0_inst0[19]}] [get_ports {ifu_buf0_inst0[18]}] [get_ports              \
{ifu_buf0_inst0[17]}] [get_ports {ifu_buf0_inst0[16]}] [get_ports              \
{ifu_buf0_inst0[15]}] [get_ports {ifu_buf0_inst0[14]}] [get_ports              \
{ifu_buf0_inst0[13]}] [get_ports {ifu_buf0_inst0[12]}] [get_ports              \
{ifu_buf0_inst0[11]}] [get_ports {ifu_buf0_inst0[10]}] [get_ports              \
{ifu_buf0_inst0[9]}] [get_ports {ifu_buf0_inst0[8]}] [get_ports                \
{ifu_buf0_inst0[7]}] [get_ports {ifu_buf0_inst0[6]}] [get_ports                \
{ifu_buf0_inst0[5]}] [get_ports {ifu_buf0_inst0[4]}] [get_ports                \
{ifu_buf0_inst0[3]}] [get_ports {ifu_buf0_inst0[2]}] [get_ports                \
{ifu_buf0_inst0[1]}] [get_ports {ifu_buf0_inst0[0]}] [get_ports                \
{ifu_buf0_inst1[32]}] [get_ports {ifu_buf0_inst1[31]}] [get_ports              \
{ifu_buf0_inst1[30]}] [get_ports {ifu_buf0_inst1[29]}] [get_ports              \
{ifu_buf0_inst1[28]}] [get_ports {ifu_buf0_inst1[27]}] [get_ports              \
{ifu_buf0_inst1[26]}] [get_ports {ifu_buf0_inst1[25]}] [get_ports              \
{ifu_buf0_inst1[24]}] [get_ports {ifu_buf0_inst1[23]}] [get_ports              \
{ifu_buf0_inst1[22]}] [get_ports {ifu_buf0_inst1[21]}] [get_ports              \
{ifu_buf0_inst1[20]}] [get_ports {ifu_buf0_inst1[19]}] [get_ports              \
{ifu_buf0_inst1[18]}] [get_ports {ifu_buf0_inst1[17]}] [get_ports              \
{ifu_buf0_inst1[16]}] [get_ports {ifu_buf0_inst1[15]}] [get_ports              \
{ifu_buf0_inst1[14]}] [get_ports {ifu_buf0_inst1[13]}] [get_ports              \
{ifu_buf0_inst1[12]}] [get_ports {ifu_buf0_inst1[11]}] [get_ports              \
{ifu_buf0_inst1[10]}] [get_ports {ifu_buf0_inst1[9]}] [get_ports               \
{ifu_buf0_inst1[8]}] [get_ports {ifu_buf0_inst1[7]}] [get_ports                \
{ifu_buf0_inst1[6]}] [get_ports {ifu_buf0_inst1[5]}] [get_ports                \
{ifu_buf0_inst1[4]}] [get_ports {ifu_buf0_inst1[3]}] [get_ports                \
{ifu_buf0_inst1[2]}] [get_ports {ifu_buf0_inst1[1]}] [get_ports                \
{ifu_buf0_inst1[0]}] [get_ports {ifu_buf0_inst2[32]}] [get_ports               \
{ifu_buf0_inst2[31]}] [get_ports {ifu_buf0_inst2[30]}] [get_ports              \
{ifu_buf0_inst2[29]}] [get_ports {ifu_buf0_inst2[28]}] [get_ports              \
{ifu_buf0_inst2[27]}] [get_ports {ifu_buf0_inst2[26]}] [get_ports              \
{ifu_buf0_inst2[25]}] [get_ports {ifu_buf0_inst2[24]}] [get_ports              \
{ifu_buf0_inst2[23]}] [get_ports {ifu_buf0_inst2[22]}] [get_ports              \
{ifu_buf0_inst2[21]}] [get_ports {ifu_buf0_inst2[20]}] [get_ports              \
{ifu_buf0_inst2[19]}] [get_ports {ifu_buf0_inst2[18]}] [get_ports              \
{ifu_buf0_inst2[17]}] [get_ports {ifu_buf0_inst2[16]}] [get_ports              \
{ifu_buf0_inst2[15]}] [get_ports {ifu_buf0_inst2[14]}] [get_ports              \
{ifu_buf0_inst2[13]}] [get_ports {ifu_buf0_inst2[12]}] [get_ports              \
{ifu_buf0_inst2[11]}] [get_ports {ifu_buf0_inst2[10]}] [get_ports              \
{ifu_buf0_inst2[9]}] [get_ports {ifu_buf0_inst2[8]}] [get_ports                \
{ifu_buf0_inst2[7]}] [get_ports {ifu_buf0_inst2[6]}] [get_ports                \
{ifu_buf0_inst2[5]}] [get_ports {ifu_buf0_inst2[4]}] [get_ports                \
{ifu_buf0_inst2[3]}] [get_ports {ifu_buf0_inst2[2]}] [get_ports                \
{ifu_buf0_inst2[1]}] [get_ports {ifu_buf0_inst2[0]}] [get_ports                \
{ifu_buf0_inst3[32]}] [get_ports {ifu_buf0_inst3[31]}] [get_ports              \
{ifu_buf0_inst3[30]}] [get_ports {ifu_buf0_inst3[29]}] [get_ports              \
{ifu_buf0_inst3[28]}] [get_ports {ifu_buf0_inst3[27]}] [get_ports              \
{ifu_buf0_inst3[26]}] [get_ports {ifu_buf0_inst3[25]}] [get_ports              \
{ifu_buf0_inst3[24]}] [get_ports {ifu_buf0_inst3[23]}] [get_ports              \
{ifu_buf0_inst3[22]}] [get_ports {ifu_buf0_inst3[21]}] [get_ports              \
{ifu_buf0_inst3[20]}] [get_ports {ifu_buf0_inst3[19]}] [get_ports              \
{ifu_buf0_inst3[18]}] [get_ports {ifu_buf0_inst3[17]}] [get_ports              \
{ifu_buf0_inst3[16]}] [get_ports {ifu_buf0_inst3[15]}] [get_ports              \
{ifu_buf0_inst3[14]}] [get_ports {ifu_buf0_inst3[13]}] [get_ports              \
{ifu_buf0_inst3[12]}] [get_ports {ifu_buf0_inst3[11]}] [get_ports              \
{ifu_buf0_inst3[10]}] [get_ports {ifu_buf0_inst3[9]}] [get_ports               \
{ifu_buf0_inst3[8]}] [get_ports {ifu_buf0_inst3[7]}] [get_ports                \
{ifu_buf0_inst3[6]}] [get_ports {ifu_buf0_inst3[5]}] [get_ports                \
{ifu_buf0_inst3[4]}] [get_ports {ifu_buf0_inst3[3]}] [get_ports                \
{ifu_buf0_inst3[2]}] [get_ports {ifu_buf0_inst3[1]}] [get_ports                \
{ifu_buf0_inst3[0]}] [get_ports {ifu_buf0_inst4[32]}] [get_ports               \
{ifu_buf0_inst4[31]}] [get_ports {ifu_buf0_inst4[30]}] [get_ports              \
{ifu_buf0_inst4[29]}] [get_ports {ifu_buf0_inst4[28]}] [get_ports              \
{ifu_buf0_inst4[27]}] [get_ports {ifu_buf0_inst4[26]}] [get_ports              \
{ifu_buf0_inst4[25]}] [get_ports {ifu_buf0_inst4[24]}] [get_ports              \
{ifu_buf0_inst4[23]}] [get_ports {ifu_buf0_inst4[22]}] [get_ports              \
{ifu_buf0_inst4[21]}] [get_ports {ifu_buf0_inst4[20]}] [get_ports              \
{ifu_buf0_inst4[19]}] [get_ports {ifu_buf0_inst4[18]}] [get_ports              \
{ifu_buf0_inst4[17]}] [get_ports {ifu_buf0_inst4[16]}] [get_ports              \
{ifu_buf0_inst4[15]}] [get_ports {ifu_buf0_inst4[14]}] [get_ports              \
{ifu_buf0_inst4[13]}] [get_ports {ifu_buf0_inst4[12]}] [get_ports              \
{ifu_buf0_inst4[11]}] [get_ports {ifu_buf0_inst4[10]}] [get_ports              \
{ifu_buf0_inst4[9]}] [get_ports {ifu_buf0_inst4[8]}] [get_ports                \
{ifu_buf0_inst4[7]}] [get_ports {ifu_buf0_inst4[6]}] [get_ports                \
{ifu_buf0_inst4[5]}] [get_ports {ifu_buf0_inst4[4]}] [get_ports                \
{ifu_buf0_inst4[3]}] [get_ports {ifu_buf0_inst4[2]}] [get_ports                \
{ifu_buf0_inst4[1]}] [get_ports {ifu_buf0_inst4[0]}] [get_ports                \
{ifu_buf0_inst5[32]}] [get_ports {ifu_buf0_inst5[31]}] [get_ports              \
{ifu_buf0_inst5[30]}] [get_ports {ifu_buf0_inst5[29]}] [get_ports              \
{ifu_buf0_inst5[28]}] [get_ports {ifu_buf0_inst5[27]}] [get_ports              \
{ifu_buf0_inst5[26]}] [get_ports {ifu_buf0_inst5[25]}] [get_ports              \
{ifu_buf0_inst5[24]}] [get_ports {ifu_buf0_inst5[23]}] [get_ports              \
{ifu_buf0_inst5[22]}] [get_ports {ifu_buf0_inst5[21]}] [get_ports              \
{ifu_buf0_inst5[20]}] [get_ports {ifu_buf0_inst5[19]}] [get_ports              \
{ifu_buf0_inst5[18]}] [get_ports {ifu_buf0_inst5[17]}] [get_ports              \
{ifu_buf0_inst5[16]}] [get_ports {ifu_buf0_inst5[15]}] [get_ports              \
{ifu_buf0_inst5[14]}] [get_ports {ifu_buf0_inst5[13]}] [get_ports              \
{ifu_buf0_inst5[12]}] [get_ports {ifu_buf0_inst5[11]}] [get_ports              \
{ifu_buf0_inst5[10]}] [get_ports {ifu_buf0_inst5[9]}] [get_ports               \
{ifu_buf0_inst5[8]}] [get_ports {ifu_buf0_inst5[7]}] [get_ports                \
{ifu_buf0_inst5[6]}] [get_ports {ifu_buf0_inst5[5]}] [get_ports                \
{ifu_buf0_inst5[4]}] [get_ports {ifu_buf0_inst5[3]}] [get_ports                \
{ifu_buf0_inst5[2]}] [get_ports {ifu_buf0_inst5[1]}] [get_ports                \
{ifu_buf0_inst5[0]}] [get_ports {ifu_buf0_inst6[32]}] [get_ports               \
{ifu_buf0_inst6[31]}] [get_ports {ifu_buf0_inst6[30]}] [get_ports              \
{ifu_buf0_inst6[29]}] [get_ports {ifu_buf0_inst6[28]}] [get_ports              \
{ifu_buf0_inst6[27]}] [get_ports {ifu_buf0_inst6[26]}] [get_ports              \
{ifu_buf0_inst6[25]}] [get_ports {ifu_buf0_inst6[24]}] [get_ports              \
{ifu_buf0_inst6[23]}] [get_ports {ifu_buf0_inst6[22]}] [get_ports              \
{ifu_buf0_inst6[21]}] [get_ports {ifu_buf0_inst6[20]}] [get_ports              \
{ifu_buf0_inst6[19]}] [get_ports {ifu_buf0_inst6[18]}] [get_ports              \
{ifu_buf0_inst6[17]}] [get_ports {ifu_buf0_inst6[16]}] [get_ports              \
{ifu_buf0_inst6[15]}] [get_ports {ifu_buf0_inst6[14]}] [get_ports              \
{ifu_buf0_inst6[13]}] [get_ports {ifu_buf0_inst6[12]}] [get_ports              \
{ifu_buf0_inst6[11]}] [get_ports {ifu_buf0_inst6[10]}] [get_ports              \
{ifu_buf0_inst6[9]}] [get_ports {ifu_buf0_inst6[8]}] [get_ports                \
{ifu_buf0_inst6[7]}] [get_ports {ifu_buf0_inst6[6]}] [get_ports                \
{ifu_buf0_inst6[5]}] [get_ports {ifu_buf0_inst6[4]}] [get_ports                \
{ifu_buf0_inst6[3]}] [get_ports {ifu_buf0_inst6[2]}] [get_ports                \
{ifu_buf0_inst6[1]}] [get_ports {ifu_buf0_inst6[0]}] [get_ports                \
{ifu_buf0_inst7[32]}] [get_ports {ifu_buf0_inst7[31]}] [get_ports              \
{ifu_buf0_inst7[30]}] [get_ports {ifu_buf0_inst7[29]}] [get_ports              \
{ifu_buf0_inst7[28]}] [get_ports {ifu_buf0_inst7[27]}] [get_ports              \
{ifu_buf0_inst7[26]}] [get_ports {ifu_buf0_inst7[25]}] [get_ports              \
{ifu_buf0_inst7[24]}] [get_ports {ifu_buf0_inst7[23]}] [get_ports              \
{ifu_buf0_inst7[22]}] [get_ports {ifu_buf0_inst7[21]}] [get_ports              \
{ifu_buf0_inst7[20]}] [get_ports {ifu_buf0_inst7[19]}] [get_ports              \
{ifu_buf0_inst7[18]}] [get_ports {ifu_buf0_inst7[17]}] [get_ports              \
{ifu_buf0_inst7[16]}] [get_ports {ifu_buf0_inst7[15]}] [get_ports              \
{ifu_buf0_inst7[14]}] [get_ports {ifu_buf0_inst7[13]}] [get_ports              \
{ifu_buf0_inst7[12]}] [get_ports {ifu_buf0_inst7[11]}] [get_ports              \
{ifu_buf0_inst7[10]}] [get_ports {ifu_buf0_inst7[9]}] [get_ports               \
{ifu_buf0_inst7[8]}] [get_ports {ifu_buf0_inst7[7]}] [get_ports                \
{ifu_buf0_inst7[6]}] [get_ports {ifu_buf0_inst7[5]}] [get_ports                \
{ifu_buf0_inst7[4]}] [get_ports {ifu_buf0_inst7[3]}] [get_ports                \
{ifu_buf0_inst7[2]}] [get_ports {ifu_buf0_inst7[1]}] [get_ports                \
{ifu_buf0_inst7[0]}] [get_ports {ifu_buf0_excp0[4]}] [get_ports                \
{ifu_buf0_excp0[3]}] [get_ports {ifu_buf0_excp0[2]}] [get_ports                \
{ifu_buf0_excp0[1]}] [get_ports {ifu_buf0_excp0[0]}] [get_ports                \
{ifu_buf0_excp1[4]}] [get_ports {ifu_buf0_excp1[3]}] [get_ports                \
{ifu_buf0_excp1[2]}] [get_ports {ifu_buf0_excp1[1]}] [get_ports                \
{ifu_buf0_excp1[0]}] [get_ports {ifu_buf0_excp2[4]}] [get_ports                \
{ifu_buf0_excp2[3]}] [get_ports {ifu_buf0_excp2[2]}] [get_ports                \
{ifu_buf0_excp2[1]}] [get_ports {ifu_buf0_excp2[0]}] [get_ports                \
{ifu_buf0_excp3[4]}] [get_ports {ifu_buf0_excp3[3]}] [get_ports                \
{ifu_buf0_excp3[2]}] [get_ports {ifu_buf0_excp3[1]}] [get_ports                \
{ifu_buf0_excp3[0]}] [get_ports {ifu_buf0_excp4[4]}] [get_ports                \
{ifu_buf0_excp4[3]}] [get_ports {ifu_buf0_excp4[2]}] [get_ports                \
{ifu_buf0_excp4[1]}] [get_ports {ifu_buf0_excp4[0]}] [get_ports                \
{ifu_buf0_excp5[4]}] [get_ports {ifu_buf0_excp5[3]}] [get_ports                \
{ifu_buf0_excp5[2]}] [get_ports {ifu_buf0_excp5[1]}] [get_ports                \
{ifu_buf0_excp5[0]}] [get_ports {ifu_buf0_excp6[4]}] [get_ports                \
{ifu_buf0_excp6[3]}] [get_ports {ifu_buf0_excp6[2]}] [get_ports                \
{ifu_buf0_excp6[1]}] [get_ports {ifu_buf0_excp6[0]}] [get_ports                \
{ifu_buf0_excp7[4]}] [get_ports {ifu_buf0_excp7[3]}] [get_ports                \
{ifu_buf0_excp7[2]}] [get_ports {ifu_buf0_excp7[1]}] [get_ports                \
{ifu_buf0_excp7[0]}] [get_ports scan_out]]
group_path -name in2reg  -from [list [get_clocks l2clk] [get_ports scan_in] [get_ports tcu_pce_ov]     \
[get_ports tcu_scan_en] [get_ports spc_aclk] [get_ports spc_bclk] [get_ports   \
{pku_flush_buffer0[7]}] [get_ports {pku_flush_buffer0[6]}] [get_ports          \
{pku_flush_buffer0[5]}] [get_ports {pku_flush_buffer0[4]}] [get_ports          \
{pku_flush_buffer0[3]}] [get_ports {pku_flush_buffer0[2]}] [get_ports          \
{pku_flush_buffer0[1]}] [get_ports {pku_flush_buffer0[0]}] [get_ports          \
{pku_flush_upper_buffer[7]}] [get_ports {pku_flush_upper_buffer[6]}]           \
[get_ports {pku_flush_upper_buffer[5]}] [get_ports                             \
{pku_flush_upper_buffer[4]}] [get_ports {pku_flush_upper_buffer[3]}]           \
[get_ports {pku_flush_upper_buffer[2]}] [get_ports                             \
{pku_flush_upper_buffer[1]}] [get_ports {pku_flush_upper_buffer[0]}]           \
[get_ports {ftu_fetch_thr_c[7]}] [get_ports {ftu_fetch_thr_c[6]}] [get_ports   \
{ftu_fetch_thr_c[5]}] [get_ports {ftu_fetch_thr_c[4]}] [get_ports              \
{ftu_fetch_thr_c[3]}] [get_ports {ftu_fetch_thr_c[2]}] [get_ports              \
{ftu_fetch_thr_c[1]}] [get_ports {ftu_fetch_thr_c[0]}] [get_ports              \
{pku_pick_p[7]}] [get_ports {pku_pick_p[6]}] [get_ports {pku_pick_p[5]}]       \
[get_ports {pku_pick_p[4]}] [get_ports {pku_pick_p[3]}] [get_ports             \
{pku_pick_p[2]}] [get_ports {pku_pick_p[1]}] [get_ports {pku_pick_p[0]}]       \
[get_ports ftu_exception_valid_c] [get_ports ftu_instr_sf_valid_c] [get_ports  \
{ftu_ibu_redirect_bf[7]}] [get_ports {ftu_ibu_redirect_bf[6]}] [get_ports      \
{ftu_ibu_redirect_bf[5]}] [get_ports {ftu_ibu_redirect_bf[4]}] [get_ports      \
{ftu_ibu_redirect_bf[3]}] [get_ports {ftu_ibu_redirect_bf[2]}] [get_ports      \
{ftu_ibu_redirect_bf[1]}] [get_ports {ftu_ibu_redirect_bf[0]}] [get_ports      \
ftu_ic_no_err_c] [get_ports ftu_bus_0_is_first] [get_ports ftu_bus_1_is_first] \
[get_ports ftu_bus_2_is_first] [get_ports ftu_bus_3_is_first] [get_ports       \
{ftu_instr_valid_c[3]}] [get_ports {ftu_instr_valid_c[2]}] [get_ports          \
{ftu_instr_valid_c[1]}] [get_ports {ftu_instr_valid_c[0]}] [get_ports          \
{ftu_instr_0_c_rep0[32]}] [get_ports {ftu_instr_0_c_rep0[31]}] [get_ports      \
{ftu_instr_0_c_rep0[30]}] [get_ports {ftu_instr_0_c_rep0[29]}] [get_ports      \
{ftu_instr_0_c_rep0[28]}] [get_ports {ftu_instr_0_c_rep0[27]}] [get_ports      \
{ftu_instr_0_c_rep0[26]}] [get_ports {ftu_instr_0_c_rep0[25]}] [get_ports      \
{ftu_instr_0_c_rep0[24]}] [get_ports {ftu_instr_0_c_rep0[23]}] [get_ports      \
{ftu_instr_0_c_rep0[22]}] [get_ports {ftu_instr_0_c_rep0[21]}] [get_ports      \
{ftu_instr_0_c_rep0[20]}] [get_ports {ftu_instr_0_c_rep0[19]}] [get_ports      \
{ftu_instr_0_c_rep0[18]}] [get_ports {ftu_instr_0_c_rep0[17]}] [get_ports      \
{ftu_instr_0_c_rep0[16]}] [get_ports {ftu_instr_0_c_rep0[15]}] [get_ports      \
{ftu_instr_0_c_rep0[14]}] [get_ports {ftu_instr_0_c_rep0[13]}] [get_ports      \
{ftu_instr_0_c_rep0[12]}] [get_ports {ftu_instr_0_c_rep0[11]}] [get_ports      \
{ftu_instr_0_c_rep0[10]}] [get_ports {ftu_instr_0_c_rep0[9]}] [get_ports       \
{ftu_instr_0_c_rep0[8]}] [get_ports {ftu_instr_0_c_rep0[7]}] [get_ports        \
{ftu_instr_0_c_rep0[6]}] [get_ports {ftu_instr_0_c_rep0[5]}] [get_ports        \
{ftu_instr_0_c_rep0[4]}] [get_ports {ftu_instr_0_c_rep0[3]}] [get_ports        \
{ftu_instr_0_c_rep0[2]}] [get_ports {ftu_instr_0_c_rep0[1]}] [get_ports        \
{ftu_instr_0_c_rep0[0]}] [get_ports {ftu_instr_0_c_rep1[32]}] [get_ports       \
{ftu_instr_0_c_rep1[31]}] [get_ports {ftu_instr_0_c_rep1[30]}] [get_ports      \
{ftu_instr_0_c_rep1[29]}] [get_ports {ftu_instr_0_c_rep1[28]}] [get_ports      \
{ftu_instr_0_c_rep1[27]}] [get_ports {ftu_instr_0_c_rep1[26]}] [get_ports      \
{ftu_instr_0_c_rep1[25]}] [get_ports {ftu_instr_0_c_rep1[24]}] [get_ports      \
{ftu_instr_0_c_rep1[23]}] [get_ports {ftu_instr_0_c_rep1[22]}] [get_ports      \
{ftu_instr_0_c_rep1[21]}] [get_ports {ftu_instr_0_c_rep1[20]}] [get_ports      \
{ftu_instr_0_c_rep1[19]}] [get_ports {ftu_instr_0_c_rep1[18]}] [get_ports      \
{ftu_instr_0_c_rep1[17]}] [get_ports {ftu_instr_0_c_rep1[16]}] [get_ports      \
{ftu_instr_0_c_rep1[15]}] [get_ports {ftu_instr_0_c_rep1[14]}] [get_ports      \
{ftu_instr_0_c_rep1[13]}] [get_ports {ftu_instr_0_c_rep1[12]}] [get_ports      \
{ftu_instr_0_c_rep1[11]}] [get_ports {ftu_instr_0_c_rep1[10]}] [get_ports      \
{ftu_instr_0_c_rep1[9]}] [get_ports {ftu_instr_0_c_rep1[8]}] [get_ports        \
{ftu_instr_0_c_rep1[7]}] [get_ports {ftu_instr_0_c_rep1[6]}] [get_ports        \
{ftu_instr_0_c_rep1[5]}] [get_ports {ftu_instr_0_c_rep1[4]}] [get_ports        \
{ftu_instr_0_c_rep1[3]}] [get_ports {ftu_instr_0_c_rep1[2]}] [get_ports        \
{ftu_instr_0_c_rep1[1]}] [get_ports {ftu_instr_0_c_rep1[0]}] [get_ports        \
{ftu_instr_0_c_rep2[32]}] [get_ports {ftu_instr_0_c_rep2[31]}] [get_ports      \
{ftu_instr_0_c_rep2[30]}] [get_ports {ftu_instr_0_c_rep2[29]}] [get_ports      \
{ftu_instr_0_c_rep2[28]}] [get_ports {ftu_instr_0_c_rep2[27]}] [get_ports      \
{ftu_instr_0_c_rep2[26]}] [get_ports {ftu_instr_0_c_rep2[25]}] [get_ports      \
{ftu_instr_0_c_rep2[24]}] [get_ports {ftu_instr_0_c_rep2[23]}] [get_ports      \
{ftu_instr_0_c_rep2[22]}] [get_ports {ftu_instr_0_c_rep2[21]}] [get_ports      \
{ftu_instr_0_c_rep2[20]}] [get_ports {ftu_instr_0_c_rep2[19]}] [get_ports      \
{ftu_instr_0_c_rep2[18]}] [get_ports {ftu_instr_0_c_rep2[17]}] [get_ports      \
{ftu_instr_0_c_rep2[16]}] [get_ports {ftu_instr_0_c_rep2[15]}] [get_ports      \
{ftu_instr_0_c_rep2[14]}] [get_ports {ftu_instr_0_c_rep2[13]}] [get_ports      \
{ftu_instr_0_c_rep2[12]}] [get_ports {ftu_instr_0_c_rep2[11]}] [get_ports      \
{ftu_instr_0_c_rep2[10]}] [get_ports {ftu_instr_0_c_rep2[9]}] [get_ports       \
{ftu_instr_0_c_rep2[8]}] [get_ports {ftu_instr_0_c_rep2[7]}] [get_ports        \
{ftu_instr_0_c_rep2[6]}] [get_ports {ftu_instr_0_c_rep2[5]}] [get_ports        \
{ftu_instr_0_c_rep2[4]}] [get_ports {ftu_instr_0_c_rep2[3]}] [get_ports        \
{ftu_instr_0_c_rep2[2]}] [get_ports {ftu_instr_0_c_rep2[1]}] [get_ports        \
{ftu_instr_0_c_rep2[0]}] [get_ports {ftu_instr_0_c_rep3[32]}] [get_ports       \
{ftu_instr_0_c_rep3[31]}] [get_ports {ftu_instr_0_c_rep3[30]}] [get_ports      \
{ftu_instr_0_c_rep3[29]}] [get_ports {ftu_instr_0_c_rep3[28]}] [get_ports      \
{ftu_instr_0_c_rep3[27]}] [get_ports {ftu_instr_0_c_rep3[26]}] [get_ports      \
{ftu_instr_0_c_rep3[25]}] [get_ports {ftu_instr_0_c_rep3[24]}] [get_ports      \
{ftu_instr_0_c_rep3[23]}] [get_ports {ftu_instr_0_c_rep3[22]}] [get_ports      \
{ftu_instr_0_c_rep3[21]}] [get_ports {ftu_instr_0_c_rep3[20]}] [get_ports      \
{ftu_instr_0_c_rep3[19]}] [get_ports {ftu_instr_0_c_rep3[18]}] [get_ports      \
{ftu_instr_0_c_rep3[17]}] [get_ports {ftu_instr_0_c_rep3[16]}] [get_ports      \
{ftu_instr_0_c_rep3[15]}] [get_ports {ftu_instr_0_c_rep3[14]}] [get_ports      \
{ftu_instr_0_c_rep3[13]}] [get_ports {ftu_instr_0_c_rep3[12]}] [get_ports      \
{ftu_instr_0_c_rep3[11]}] [get_ports {ftu_instr_0_c_rep3[10]}] [get_ports      \
{ftu_instr_0_c_rep3[9]}] [get_ports {ftu_instr_0_c_rep3[8]}] [get_ports        \
{ftu_instr_0_c_rep3[7]}] [get_ports {ftu_instr_0_c_rep3[6]}] [get_ports        \
{ftu_instr_0_c_rep3[5]}] [get_ports {ftu_instr_0_c_rep3[4]}] [get_ports        \
{ftu_instr_0_c_rep3[3]}] [get_ports {ftu_instr_0_c_rep3[2]}] [get_ports        \
{ftu_instr_0_c_rep3[1]}] [get_ports {ftu_instr_0_c_rep3[0]}] [get_ports        \
{ftu_instr_1_c_rep0[32]}] [get_ports {ftu_instr_1_c_rep0[31]}] [get_ports      \
{ftu_instr_1_c_rep0[30]}] [get_ports {ftu_instr_1_c_rep0[29]}] [get_ports      \
{ftu_instr_1_c_rep0[28]}] [get_ports {ftu_instr_1_c_rep0[27]}] [get_ports      \
{ftu_instr_1_c_rep0[26]}] [get_ports {ftu_instr_1_c_rep0[25]}] [get_ports      \
{ftu_instr_1_c_rep0[24]}] [get_ports {ftu_instr_1_c_rep0[23]}] [get_ports      \
{ftu_instr_1_c_rep0[22]}] [get_ports {ftu_instr_1_c_rep0[21]}] [get_ports      \
{ftu_instr_1_c_rep0[20]}] [get_ports {ftu_instr_1_c_rep0[19]}] [get_ports      \
{ftu_instr_1_c_rep0[18]}] [get_ports {ftu_instr_1_c_rep0[17]}] [get_ports      \
{ftu_instr_1_c_rep0[16]}] [get_ports {ftu_instr_1_c_rep0[15]}] [get_ports      \
{ftu_instr_1_c_rep0[14]}] [get_ports {ftu_instr_1_c_rep0[13]}] [get_ports      \
{ftu_instr_1_c_rep0[12]}] [get_ports {ftu_instr_1_c_rep0[11]}] [get_ports      \
{ftu_instr_1_c_rep0[10]}] [get_ports {ftu_instr_1_c_rep0[9]}] [get_ports       \
{ftu_instr_1_c_rep0[8]}] [get_ports {ftu_instr_1_c_rep0[7]}] [get_ports        \
{ftu_instr_1_c_rep0[6]}] [get_ports {ftu_instr_1_c_rep0[5]}] [get_ports        \
{ftu_instr_1_c_rep0[4]}] [get_ports {ftu_instr_1_c_rep0[3]}] [get_ports        \
{ftu_instr_1_c_rep0[2]}] [get_ports {ftu_instr_1_c_rep0[1]}] [get_ports        \
{ftu_instr_1_c_rep0[0]}] [get_ports {ftu_instr_1_c_rep1[32]}] [get_ports       \
{ftu_instr_1_c_rep1[31]}] [get_ports {ftu_instr_1_c_rep1[30]}] [get_ports      \
{ftu_instr_1_c_rep1[29]}] [get_ports {ftu_instr_1_c_rep1[28]}] [get_ports      \
{ftu_instr_1_c_rep1[27]}] [get_ports {ftu_instr_1_c_rep1[26]}] [get_ports      \
{ftu_instr_1_c_rep1[25]}] [get_ports {ftu_instr_1_c_rep1[24]}] [get_ports      \
{ftu_instr_1_c_rep1[23]}] [get_ports {ftu_instr_1_c_rep1[22]}] [get_ports      \
{ftu_instr_1_c_rep1[21]}] [get_ports {ftu_instr_1_c_rep1[20]}] [get_ports      \
{ftu_instr_1_c_rep1[19]}] [get_ports {ftu_instr_1_c_rep1[18]}] [get_ports      \
{ftu_instr_1_c_rep1[17]}] [get_ports {ftu_instr_1_c_rep1[16]}] [get_ports      \
{ftu_instr_1_c_rep1[15]}] [get_ports {ftu_instr_1_c_rep1[14]}] [get_ports      \
{ftu_instr_1_c_rep1[13]}] [get_ports {ftu_instr_1_c_rep1[12]}] [get_ports      \
{ftu_instr_1_c_rep1[11]}] [get_ports {ftu_instr_1_c_rep1[10]}] [get_ports      \
{ftu_instr_1_c_rep1[9]}] [get_ports {ftu_instr_1_c_rep1[8]}] [get_ports        \
{ftu_instr_1_c_rep1[7]}] [get_ports {ftu_instr_1_c_rep1[6]}] [get_ports        \
{ftu_instr_1_c_rep1[5]}] [get_ports {ftu_instr_1_c_rep1[4]}] [get_ports        \
{ftu_instr_1_c_rep1[3]}] [get_ports {ftu_instr_1_c_rep1[2]}] [get_ports        \
{ftu_instr_1_c_rep1[1]}] [get_ports {ftu_instr_1_c_rep1[0]}] [get_ports        \
{ftu_instr_1_c_rep2[32]}] [get_ports {ftu_instr_1_c_rep2[31]}] [get_ports      \
{ftu_instr_1_c_rep2[30]}] [get_ports {ftu_instr_1_c_rep2[29]}] [get_ports      \
{ftu_instr_1_c_rep2[28]}] [get_ports {ftu_instr_1_c_rep2[27]}] [get_ports      \
{ftu_instr_1_c_rep2[26]}] [get_ports {ftu_instr_1_c_rep2[25]}] [get_ports      \
{ftu_instr_1_c_rep2[24]}] [get_ports {ftu_instr_1_c_rep2[23]}] [get_ports      \
{ftu_instr_1_c_rep2[22]}] [get_ports {ftu_instr_1_c_rep2[21]}] [get_ports      \
{ftu_instr_1_c_rep2[20]}] [get_ports {ftu_instr_1_c_rep2[19]}] [get_ports      \
{ftu_instr_1_c_rep2[18]}] [get_ports {ftu_instr_1_c_rep2[17]}] [get_ports      \
{ftu_instr_1_c_rep2[16]}] [get_ports {ftu_instr_1_c_rep2[15]}] [get_ports      \
{ftu_instr_1_c_rep2[14]}] [get_ports {ftu_instr_1_c_rep2[13]}] [get_ports      \
{ftu_instr_1_c_rep2[12]}] [get_ports {ftu_instr_1_c_rep2[11]}] [get_ports      \
{ftu_instr_1_c_rep2[10]}] [get_ports {ftu_instr_1_c_rep2[9]}] [get_ports       \
{ftu_instr_1_c_rep2[8]}] [get_ports {ftu_instr_1_c_rep2[7]}] [get_ports        \
{ftu_instr_1_c_rep2[6]}] [get_ports {ftu_instr_1_c_rep2[5]}] [get_ports        \
{ftu_instr_1_c_rep2[4]}] [get_ports {ftu_instr_1_c_rep2[3]}] [get_ports        \
{ftu_instr_1_c_rep2[2]}] [get_ports {ftu_instr_1_c_rep2[1]}] [get_ports        \
{ftu_instr_1_c_rep2[0]}] [get_ports {ftu_instr_1_c_rep3[32]}] [get_ports       \
{ftu_instr_1_c_rep3[31]}] [get_ports {ftu_instr_1_c_rep3[30]}] [get_ports      \
{ftu_instr_1_c_rep3[29]}] [get_ports {ftu_instr_1_c_rep3[28]}] [get_ports      \
{ftu_instr_1_c_rep3[27]}] [get_ports {ftu_instr_1_c_rep3[26]}] [get_ports      \
{ftu_instr_1_c_rep3[25]}] [get_ports {ftu_instr_1_c_rep3[24]}] [get_ports      \
{ftu_instr_1_c_rep3[23]}] [get_ports {ftu_instr_1_c_rep3[22]}] [get_ports      \
{ftu_instr_1_c_rep3[21]}] [get_ports {ftu_instr_1_c_rep3[20]}] [get_ports      \
{ftu_instr_1_c_rep3[19]}] [get_ports {ftu_instr_1_c_rep3[18]}] [get_ports      \
{ftu_instr_1_c_rep3[17]}] [get_ports {ftu_instr_1_c_rep3[16]}] [get_ports      \
{ftu_instr_1_c_rep3[15]}] [get_ports {ftu_instr_1_c_rep3[14]}] [get_ports      \
{ftu_instr_1_c_rep3[13]}] [get_ports {ftu_instr_1_c_rep3[12]}] [get_ports      \
{ftu_instr_1_c_rep3[11]}] [get_ports {ftu_instr_1_c_rep3[10]}] [get_ports      \
{ftu_instr_1_c_rep3[9]}] [get_ports {ftu_instr_1_c_rep3[8]}] [get_ports        \
{ftu_instr_1_c_rep3[7]}] [get_ports {ftu_instr_1_c_rep3[6]}] [get_ports        \
{ftu_instr_1_c_rep3[5]}] [get_ports {ftu_instr_1_c_rep3[4]}] [get_ports        \
{ftu_instr_1_c_rep3[3]}] [get_ports {ftu_instr_1_c_rep3[2]}] [get_ports        \
{ftu_instr_1_c_rep3[1]}] [get_ports {ftu_instr_1_c_rep3[0]}] [get_ports        \
{ftu_instr_2_c_rep0[32]}] [get_ports {ftu_instr_2_c_rep0[31]}] [get_ports      \
{ftu_instr_2_c_rep0[30]}] [get_ports {ftu_instr_2_c_rep0[29]}] [get_ports      \
{ftu_instr_2_c_rep0[28]}] [get_ports {ftu_instr_2_c_rep0[27]}] [get_ports      \
{ftu_instr_2_c_rep0[26]}] [get_ports {ftu_instr_2_c_rep0[25]}] [get_ports      \
{ftu_instr_2_c_rep0[24]}] [get_ports {ftu_instr_2_c_rep0[23]}] [get_ports      \
{ftu_instr_2_c_rep0[22]}] [get_ports {ftu_instr_2_c_rep0[21]}] [get_ports      \
{ftu_instr_2_c_rep0[20]}] [get_ports {ftu_instr_2_c_rep0[19]}] [get_ports      \
{ftu_instr_2_c_rep0[18]}] [get_ports {ftu_instr_2_c_rep0[17]}] [get_ports      \
{ftu_instr_2_c_rep0[16]}] [get_ports {ftu_instr_2_c_rep0[15]}] [get_ports      \
{ftu_instr_2_c_rep0[14]}] [get_ports {ftu_instr_2_c_rep0[13]}] [get_ports      \
{ftu_instr_2_c_rep0[12]}] [get_ports {ftu_instr_2_c_rep0[11]}] [get_ports      \
{ftu_instr_2_c_rep0[10]}] [get_ports {ftu_instr_2_c_rep0[9]}] [get_ports       \
{ftu_instr_2_c_rep0[8]}] [get_ports {ftu_instr_2_c_rep0[7]}] [get_ports        \
{ftu_instr_2_c_rep0[6]}] [get_ports {ftu_instr_2_c_rep0[5]}] [get_ports        \
{ftu_instr_2_c_rep0[4]}] [get_ports {ftu_instr_2_c_rep0[3]}] [get_ports        \
{ftu_instr_2_c_rep0[2]}] [get_ports {ftu_instr_2_c_rep0[1]}] [get_ports        \
{ftu_instr_2_c_rep0[0]}] [get_ports {ftu_instr_2_c_rep1[32]}] [get_ports       \
{ftu_instr_2_c_rep1[31]}] [get_ports {ftu_instr_2_c_rep1[30]}] [get_ports      \
{ftu_instr_2_c_rep1[29]}] [get_ports {ftu_instr_2_c_rep1[28]}] [get_ports      \
{ftu_instr_2_c_rep1[27]}] [get_ports {ftu_instr_2_c_rep1[26]}] [get_ports      \
{ftu_instr_2_c_rep1[25]}] [get_ports {ftu_instr_2_c_rep1[24]}] [get_ports      \
{ftu_instr_2_c_rep1[23]}] [get_ports {ftu_instr_2_c_rep1[22]}] [get_ports      \
{ftu_instr_2_c_rep1[21]}] [get_ports {ftu_instr_2_c_rep1[20]}] [get_ports      \
{ftu_instr_2_c_rep1[19]}] [get_ports {ftu_instr_2_c_rep1[18]}] [get_ports      \
{ftu_instr_2_c_rep1[17]}] [get_ports {ftu_instr_2_c_rep1[16]}] [get_ports      \
{ftu_instr_2_c_rep1[15]}] [get_ports {ftu_instr_2_c_rep1[14]}] [get_ports      \
{ftu_instr_2_c_rep1[13]}] [get_ports {ftu_instr_2_c_rep1[12]}] [get_ports      \
{ftu_instr_2_c_rep1[11]}] [get_ports {ftu_instr_2_c_rep1[10]}] [get_ports      \
{ftu_instr_2_c_rep1[9]}] [get_ports {ftu_instr_2_c_rep1[8]}] [get_ports        \
{ftu_instr_2_c_rep1[7]}] [get_ports {ftu_instr_2_c_rep1[6]}] [get_ports        \
{ftu_instr_2_c_rep1[5]}] [get_ports {ftu_instr_2_c_rep1[4]}] [get_ports        \
{ftu_instr_2_c_rep1[3]}] [get_ports {ftu_instr_2_c_rep1[2]}] [get_ports        \
{ftu_instr_2_c_rep1[1]}] [get_ports {ftu_instr_2_c_rep1[0]}] [get_ports        \
{ftu_instr_2_c_rep2[32]}] [get_ports {ftu_instr_2_c_rep2[31]}] [get_ports      \
{ftu_instr_2_c_rep2[30]}] [get_ports {ftu_instr_2_c_rep2[29]}] [get_ports      \
{ftu_instr_2_c_rep2[28]}] [get_ports {ftu_instr_2_c_rep2[27]}] [get_ports      \
{ftu_instr_2_c_rep2[26]}] [get_ports {ftu_instr_2_c_rep2[25]}] [get_ports      \
{ftu_instr_2_c_rep2[24]}] [get_ports {ftu_instr_2_c_rep2[23]}] [get_ports      \
{ftu_instr_2_c_rep2[22]}] [get_ports {ftu_instr_2_c_rep2[21]}] [get_ports      \
{ftu_instr_2_c_rep2[20]}] [get_ports {ftu_instr_2_c_rep2[19]}] [get_ports      \
{ftu_instr_2_c_rep2[18]}] [get_ports {ftu_instr_2_c_rep2[17]}] [get_ports      \
{ftu_instr_2_c_rep2[16]}] [get_ports {ftu_instr_2_c_rep2[15]}] [get_ports      \
{ftu_instr_2_c_rep2[14]}] [get_ports {ftu_instr_2_c_rep2[13]}] [get_ports      \
{ftu_instr_2_c_rep2[12]}] [get_ports {ftu_instr_2_c_rep2[11]}] [get_ports      \
{ftu_instr_2_c_rep2[10]}] [get_ports {ftu_instr_2_c_rep2[9]}] [get_ports       \
{ftu_instr_2_c_rep2[8]}] [get_ports {ftu_instr_2_c_rep2[7]}] [get_ports        \
{ftu_instr_2_c_rep2[6]}] [get_ports {ftu_instr_2_c_rep2[5]}] [get_ports        \
{ftu_instr_2_c_rep2[4]}] [get_ports {ftu_instr_2_c_rep2[3]}] [get_ports        \
{ftu_instr_2_c_rep2[2]}] [get_ports {ftu_instr_2_c_rep2[1]}] [get_ports        \
{ftu_instr_2_c_rep2[0]}] [get_ports {ftu_instr_2_c_rep3[32]}] [get_ports       \
{ftu_instr_2_c_rep3[31]}] [get_ports {ftu_instr_2_c_rep3[30]}] [get_ports      \
{ftu_instr_2_c_rep3[29]}] [get_ports {ftu_instr_2_c_rep3[28]}] [get_ports      \
{ftu_instr_2_c_rep3[27]}] [get_ports {ftu_instr_2_c_rep3[26]}] [get_ports      \
{ftu_instr_2_c_rep3[25]}] [get_ports {ftu_instr_2_c_rep3[24]}] [get_ports      \
{ftu_instr_2_c_rep3[23]}] [get_ports {ftu_instr_2_c_rep3[22]}] [get_ports      \
{ftu_instr_2_c_rep3[21]}] [get_ports {ftu_instr_2_c_rep3[20]}] [get_ports      \
{ftu_instr_2_c_rep3[19]}] [get_ports {ftu_instr_2_c_rep3[18]}] [get_ports      \
{ftu_instr_2_c_rep3[17]}] [get_ports {ftu_instr_2_c_rep3[16]}] [get_ports      \
{ftu_instr_2_c_rep3[15]}] [get_ports {ftu_instr_2_c_rep3[14]}] [get_ports      \
{ftu_instr_2_c_rep3[13]}] [get_ports {ftu_instr_2_c_rep3[12]}] [get_ports      \
{ftu_instr_2_c_rep3[11]}] [get_ports {ftu_instr_2_c_rep3[10]}] [get_ports      \
{ftu_instr_2_c_rep3[9]}] [get_ports {ftu_instr_2_c_rep3[8]}] [get_ports        \
{ftu_instr_2_c_rep3[7]}] [get_ports {ftu_instr_2_c_rep3[6]}] [get_ports        \
{ftu_instr_2_c_rep3[5]}] [get_ports {ftu_instr_2_c_rep3[4]}] [get_ports        \
{ftu_instr_2_c_rep3[3]}] [get_ports {ftu_instr_2_c_rep3[2]}] [get_ports        \
{ftu_instr_2_c_rep3[1]}] [get_ports {ftu_instr_2_c_rep3[0]}] [get_ports        \
{ftu_instr_3_c_rep0[32]}] [get_ports {ftu_instr_3_c_rep0[31]}] [get_ports      \
{ftu_instr_3_c_rep0[30]}] [get_ports {ftu_instr_3_c_rep0[29]}] [get_ports      \
{ftu_instr_3_c_rep0[28]}] [get_ports {ftu_instr_3_c_rep0[27]}] [get_ports      \
{ftu_instr_3_c_rep0[26]}] [get_ports {ftu_instr_3_c_rep0[25]}] [get_ports      \
{ftu_instr_3_c_rep0[24]}] [get_ports {ftu_instr_3_c_rep0[23]}] [get_ports      \
{ftu_instr_3_c_rep0[22]}] [get_ports {ftu_instr_3_c_rep0[21]}] [get_ports      \
{ftu_instr_3_c_rep0[20]}] [get_ports {ftu_instr_3_c_rep0[19]}] [get_ports      \
{ftu_instr_3_c_rep0[18]}] [get_ports {ftu_instr_3_c_rep0[17]}] [get_ports      \
{ftu_instr_3_c_rep0[16]}] [get_ports {ftu_instr_3_c_rep0[15]}] [get_ports      \
{ftu_instr_3_c_rep0[14]}] [get_ports {ftu_instr_3_c_rep0[13]}] [get_ports      \
{ftu_instr_3_c_rep0[12]}] [get_ports {ftu_instr_3_c_rep0[11]}] [get_ports      \
{ftu_instr_3_c_rep0[10]}] [get_ports {ftu_instr_3_c_rep0[9]}] [get_ports       \
{ftu_instr_3_c_rep0[8]}] [get_ports {ftu_instr_3_c_rep0[7]}] [get_ports        \
{ftu_instr_3_c_rep0[6]}] [get_ports {ftu_instr_3_c_rep0[5]}] [get_ports        \
{ftu_instr_3_c_rep0[4]}] [get_ports {ftu_instr_3_c_rep0[3]}] [get_ports        \
{ftu_instr_3_c_rep0[2]}] [get_ports {ftu_instr_3_c_rep0[1]}] [get_ports        \
{ftu_instr_3_c_rep0[0]}] [get_ports {ftu_instr_3_c_rep1[32]}] [get_ports       \
{ftu_instr_3_c_rep1[31]}] [get_ports {ftu_instr_3_c_rep1[30]}] [get_ports      \
{ftu_instr_3_c_rep1[29]}] [get_ports {ftu_instr_3_c_rep1[28]}] [get_ports      \
{ftu_instr_3_c_rep1[27]}] [get_ports {ftu_instr_3_c_rep1[26]}] [get_ports      \
{ftu_instr_3_c_rep1[25]}] [get_ports {ftu_instr_3_c_rep1[24]}] [get_ports      \
{ftu_instr_3_c_rep1[23]}] [get_ports {ftu_instr_3_c_rep1[22]}] [get_ports      \
{ftu_instr_3_c_rep1[21]}] [get_ports {ftu_instr_3_c_rep1[20]}] [get_ports      \
{ftu_instr_3_c_rep1[19]}] [get_ports {ftu_instr_3_c_rep1[18]}] [get_ports      \
{ftu_instr_3_c_rep1[17]}] [get_ports {ftu_instr_3_c_rep1[16]}] [get_ports      \
{ftu_instr_3_c_rep1[15]}] [get_ports {ftu_instr_3_c_rep1[14]}] [get_ports      \
{ftu_instr_3_c_rep1[13]}] [get_ports {ftu_instr_3_c_rep1[12]}] [get_ports      \
{ftu_instr_3_c_rep1[11]}] [get_ports {ftu_instr_3_c_rep1[10]}] [get_ports      \
{ftu_instr_3_c_rep1[9]}] [get_ports {ftu_instr_3_c_rep1[8]}] [get_ports        \
{ftu_instr_3_c_rep1[7]}] [get_ports {ftu_instr_3_c_rep1[6]}] [get_ports        \
{ftu_instr_3_c_rep1[5]}] [get_ports {ftu_instr_3_c_rep1[4]}] [get_ports        \
{ftu_instr_3_c_rep1[3]}] [get_ports {ftu_instr_3_c_rep1[2]}] [get_ports        \
{ftu_instr_3_c_rep1[1]}] [get_ports {ftu_instr_3_c_rep1[0]}] [get_ports        \
{ftu_instr_3_c_rep2[32]}] [get_ports {ftu_instr_3_c_rep2[31]}] [get_ports      \
{ftu_instr_3_c_rep2[30]}] [get_ports {ftu_instr_3_c_rep2[29]}] [get_ports      \
{ftu_instr_3_c_rep2[28]}] [get_ports {ftu_instr_3_c_rep2[27]}] [get_ports      \
{ftu_instr_3_c_rep2[26]}] [get_ports {ftu_instr_3_c_rep2[25]}] [get_ports      \
{ftu_instr_3_c_rep2[24]}] [get_ports {ftu_instr_3_c_rep2[23]}] [get_ports      \
{ftu_instr_3_c_rep2[22]}] [get_ports {ftu_instr_3_c_rep2[21]}] [get_ports      \
{ftu_instr_3_c_rep2[20]}] [get_ports {ftu_instr_3_c_rep2[19]}] [get_ports      \
{ftu_instr_3_c_rep2[18]}] [get_ports {ftu_instr_3_c_rep2[17]}] [get_ports      \
{ftu_instr_3_c_rep2[16]}] [get_ports {ftu_instr_3_c_rep2[15]}] [get_ports      \
{ftu_instr_3_c_rep2[14]}] [get_ports {ftu_instr_3_c_rep2[13]}] [get_ports      \
{ftu_instr_3_c_rep2[12]}] [get_ports {ftu_instr_3_c_rep2[11]}] [get_ports      \
{ftu_instr_3_c_rep2[10]}] [get_ports {ftu_instr_3_c_rep2[9]}] [get_ports       \
{ftu_instr_3_c_rep2[8]}] [get_ports {ftu_instr_3_c_rep2[7]}] [get_ports        \
{ftu_instr_3_c_rep2[6]}] [get_ports {ftu_instr_3_c_rep2[5]}] [get_ports        \
{ftu_instr_3_c_rep2[4]}] [get_ports {ftu_instr_3_c_rep2[3]}] [get_ports        \
{ftu_instr_3_c_rep2[2]}] [get_ports {ftu_instr_3_c_rep2[1]}] [get_ports        \
{ftu_instr_3_c_rep2[0]}] [get_ports {ftu_instr_3_c_rep3[32]}] [get_ports       \
{ftu_instr_3_c_rep3[31]}] [get_ports {ftu_instr_3_c_rep3[30]}] [get_ports      \
{ftu_instr_3_c_rep3[29]}] [get_ports {ftu_instr_3_c_rep3[28]}] [get_ports      \
{ftu_instr_3_c_rep3[27]}] [get_ports {ftu_instr_3_c_rep3[26]}] [get_ports      \
{ftu_instr_3_c_rep3[25]}] [get_ports {ftu_instr_3_c_rep3[24]}] [get_ports      \
{ftu_instr_3_c_rep3[23]}] [get_ports {ftu_instr_3_c_rep3[22]}] [get_ports      \
{ftu_instr_3_c_rep3[21]}] [get_ports {ftu_instr_3_c_rep3[20]}] [get_ports      \
{ftu_instr_3_c_rep3[19]}] [get_ports {ftu_instr_3_c_rep3[18]}] [get_ports      \
{ftu_instr_3_c_rep3[17]}] [get_ports {ftu_instr_3_c_rep3[16]}] [get_ports      \
{ftu_instr_3_c_rep3[15]}] [get_ports {ftu_instr_3_c_rep3[14]}] [get_ports      \
{ftu_instr_3_c_rep3[13]}] [get_ports {ftu_instr_3_c_rep3[12]}] [get_ports      \
{ftu_instr_3_c_rep3[11]}] [get_ports {ftu_instr_3_c_rep3[10]}] [get_ports      \
{ftu_instr_3_c_rep3[9]}] [get_ports {ftu_instr_3_c_rep3[8]}] [get_ports        \
{ftu_instr_3_c_rep3[7]}] [get_ports {ftu_instr_3_c_rep3[6]}] [get_ports        \
{ftu_instr_3_c_rep3[5]}] [get_ports {ftu_instr_3_c_rep3[4]}] [get_ports        \
{ftu_instr_3_c_rep3[3]}] [get_ports {ftu_instr_3_c_rep3[2]}] [get_ports        \
{ftu_instr_3_c_rep3[1]}] [get_ports {ftu_instr_3_c_rep3[0]}] [get_ports        \
{ftu_instr_0_exceptions_c_rep0[4]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep0[3]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep0[2]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep0[1]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep0[0]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[4]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[3]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[2]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[1]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep1[0]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[4]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[3]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[2]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[1]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep2[0]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[4]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[3]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[2]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[1]}] [get_ports                                 \
{ftu_instr_0_exceptions_c_rep3[0]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[4]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[3]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[2]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[1]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep0[0]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[4]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[3]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[2]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[1]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep1[0]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[4]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[3]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[2]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[1]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep2[0]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[4]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[3]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[2]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[1]}] [get_ports                                 \
{ftu_instr_1_exceptions_c_rep3[0]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[4]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[3]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[2]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[1]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep0[0]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[4]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[3]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[2]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[1]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep1[0]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[4]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[3]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[2]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[1]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep2[0]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[4]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[3]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[2]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[1]}] [get_ports                                 \
{ftu_instr_2_exceptions_c_rep3[0]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[4]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[3]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[2]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[1]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep0[0]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[4]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[3]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[2]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[1]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep1[0]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[4]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[3]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[2]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[1]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep2[0]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[4]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[3]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[2]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[1]}] [get_ports                                 \
{ftu_instr_3_exceptions_c_rep3[0]}] [get_ports lsu_ifu_ibu_pmen] [get_ports    \
{ftu_buffer_wr_en_f[7]}] [get_ports {ftu_buffer_wr_en_f[6]}] [get_ports        \
{ftu_buffer_wr_en_f[5]}] [get_ports {ftu_buffer_wr_en_f[4]}] [get_ports        \
{ftu_buffer_wr_en_f[3]}] [get_ports {ftu_buffer_wr_en_f[2]}] [get_ports        \
{ftu_buffer_wr_en_f[1]}] [get_ports {ftu_buffer_wr_en_f[0]}] [get_ports        \
l15_ifu_valid]]  -to [list [get_pins ibq7_spares_spare1_flop_q_reg/D] [get_pins                \
{ibq7_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq7_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq7_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq7_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq7_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq7_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq7_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq7_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq7_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq7_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq7_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq7_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq7_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq7_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq7_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq6_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq6_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq6_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq6_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq6_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq6_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq6_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq6_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq6_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq6_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq6_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq6_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq6_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq6_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq6_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq5_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq5_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq5_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq5_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq5_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq5_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq5_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq5_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq5_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq5_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq5_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq5_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq5_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq5_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq5_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq4_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq4_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq4_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq4_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq4_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq4_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq4_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq4_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq4_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq4_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq4_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq4_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq4_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq4_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq4_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq3_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq3_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq3_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq3_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq3_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq3_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq3_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq3_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq3_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq3_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq3_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq3_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq3_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq3_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq3_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq2_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq2_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq2_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq2_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq2_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq2_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq2_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq2_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq2_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq2_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq2_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq2_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq2_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq2_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq2_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq1_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq1_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq1_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq1_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq1_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq1_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq1_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq1_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq1_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq1_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq1_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq1_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq1_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq1_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq1_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq0_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq0_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq0_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq0_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq0_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq0_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq0_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq0_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq0_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq0_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq0_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq0_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq0_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq0_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq0_clkgen_c_0_l1en_reg/D] [get_pins \
{ibf7_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf0_ff_c0_0_l1en_reg/D]]
group_path -name reg2out  -from [list [get_pins ibq7_spares_spare1_flop_q_reg/CP] [get_pins             \
{ibq7_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq7_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq7_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq7_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq7_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq7_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq7_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq7_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq7_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq7_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq7_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq7_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq7_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq6_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq6_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq6_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq6_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq6_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq6_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq6_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq6_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq6_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq6_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq6_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq6_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq6_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq6_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq5_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq5_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq5_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq5_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq5_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq5_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq5_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq5_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq5_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq5_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq5_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq5_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq5_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq5_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq4_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq4_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq4_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq4_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq4_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq4_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq4_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq4_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq4_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq4_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq4_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq4_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq4_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq4_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq3_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq3_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq3_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq3_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq3_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq3_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq3_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq3_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq3_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq3_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq3_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq3_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq3_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq3_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq2_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq2_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq2_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq2_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq2_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq2_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq2_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq2_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq2_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq2_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq2_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq2_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq2_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq2_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq1_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq1_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq1_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq1_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq1_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq1_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq1_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq1_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq1_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq1_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq1_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq1_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq1_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq1_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq0_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq0_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq0_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq0_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq0_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq0_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq0_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq0_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq0_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq0_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq0_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq0_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq0_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq0_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf0_ff_c0_0_l1en_reg/CPN]]  -to [list [get_ports {ifu_buf0_valid_p[7]}] [get_ports {ifu_buf0_valid_p[6]}] \
[get_ports {ifu_buf0_valid_p[5]}] [get_ports {ifu_buf0_valid_p[4]}] [get_ports \
{ifu_buf0_valid_p[3]}] [get_ports {ifu_buf0_valid_p[2]}] [get_ports            \
{ifu_buf0_valid_p[1]}] [get_ports {ifu_buf0_valid_p[0]}] [get_ports            \
{ifu_upper_buffer_valid_p[7]}] [get_ports {ifu_upper_buffer_valid_p[6]}]       \
[get_ports {ifu_upper_buffer_valid_p[5]}] [get_ports                           \
{ifu_upper_buffer_valid_p[4]}] [get_ports {ifu_upper_buffer_valid_p[3]}]       \
[get_ports {ifu_upper_buffer_valid_p[2]}] [get_ports                           \
{ifu_upper_buffer_valid_p[1]}] [get_ports {ifu_upper_buffer_valid_p[0]}]       \
[get_ports {ibu_empty[7]}] [get_ports {ibu_empty[6]}] [get_ports               \
{ibu_empty[5]}] [get_ports {ibu_empty[4]}] [get_ports {ibu_empty[3]}]          \
[get_ports {ibu_empty[2]}] [get_ports {ibu_empty[1]}] [get_ports               \
{ibu_empty[0]}] [get_ports {ibu_room_4ormore[7]}] [get_ports                   \
{ibu_room_4ormore[6]}] [get_ports {ibu_room_4ormore[5]}] [get_ports            \
{ibu_room_4ormore[4]}] [get_ports {ibu_room_4ormore[3]}] [get_ports            \
{ibu_room_4ormore[2]}] [get_ports {ibu_room_4ormore[1]}] [get_ports            \
{ibu_room_4ormore[0]}] [get_ports {ifu_buf0_inst0[32]}] [get_ports             \
{ifu_buf0_inst0[31]}] [get_ports {ifu_buf0_inst0[30]}] [get_ports              \
{ifu_buf0_inst0[29]}] [get_ports {ifu_buf0_inst0[28]}] [get_ports              \
{ifu_buf0_inst0[27]}] [get_ports {ifu_buf0_inst0[26]}] [get_ports              \
{ifu_buf0_inst0[25]}] [get_ports {ifu_buf0_inst0[24]}] [get_ports              \
{ifu_buf0_inst0[23]}] [get_ports {ifu_buf0_inst0[22]}] [get_ports              \
{ifu_buf0_inst0[21]}] [get_ports {ifu_buf0_inst0[20]}] [get_ports              \
{ifu_buf0_inst0[19]}] [get_ports {ifu_buf0_inst0[18]}] [get_ports              \
{ifu_buf0_inst0[17]}] [get_ports {ifu_buf0_inst0[16]}] [get_ports              \
{ifu_buf0_inst0[15]}] [get_ports {ifu_buf0_inst0[14]}] [get_ports              \
{ifu_buf0_inst0[13]}] [get_ports {ifu_buf0_inst0[12]}] [get_ports              \
{ifu_buf0_inst0[11]}] [get_ports {ifu_buf0_inst0[10]}] [get_ports              \
{ifu_buf0_inst0[9]}] [get_ports {ifu_buf0_inst0[8]}] [get_ports                \
{ifu_buf0_inst0[7]}] [get_ports {ifu_buf0_inst0[6]}] [get_ports                \
{ifu_buf0_inst0[5]}] [get_ports {ifu_buf0_inst0[4]}] [get_ports                \
{ifu_buf0_inst0[3]}] [get_ports {ifu_buf0_inst0[2]}] [get_ports                \
{ifu_buf0_inst0[1]}] [get_ports {ifu_buf0_inst0[0]}] [get_ports                \
{ifu_buf0_inst1[32]}] [get_ports {ifu_buf0_inst1[31]}] [get_ports              \
{ifu_buf0_inst1[30]}] [get_ports {ifu_buf0_inst1[29]}] [get_ports              \
{ifu_buf0_inst1[28]}] [get_ports {ifu_buf0_inst1[27]}] [get_ports              \
{ifu_buf0_inst1[26]}] [get_ports {ifu_buf0_inst1[25]}] [get_ports              \
{ifu_buf0_inst1[24]}] [get_ports {ifu_buf0_inst1[23]}] [get_ports              \
{ifu_buf0_inst1[22]}] [get_ports {ifu_buf0_inst1[21]}] [get_ports              \
{ifu_buf0_inst1[20]}] [get_ports {ifu_buf0_inst1[19]}] [get_ports              \
{ifu_buf0_inst1[18]}] [get_ports {ifu_buf0_inst1[17]}] [get_ports              \
{ifu_buf0_inst1[16]}] [get_ports {ifu_buf0_inst1[15]}] [get_ports              \
{ifu_buf0_inst1[14]}] [get_ports {ifu_buf0_inst1[13]}] [get_ports              \
{ifu_buf0_inst1[12]}] [get_ports {ifu_buf0_inst1[11]}] [get_ports              \
{ifu_buf0_inst1[10]}] [get_ports {ifu_buf0_inst1[9]}] [get_ports               \
{ifu_buf0_inst1[8]}] [get_ports {ifu_buf0_inst1[7]}] [get_ports                \
{ifu_buf0_inst1[6]}] [get_ports {ifu_buf0_inst1[5]}] [get_ports                \
{ifu_buf0_inst1[4]}] [get_ports {ifu_buf0_inst1[3]}] [get_ports                \
{ifu_buf0_inst1[2]}] [get_ports {ifu_buf0_inst1[1]}] [get_ports                \
{ifu_buf0_inst1[0]}] [get_ports {ifu_buf0_inst2[32]}] [get_ports               \
{ifu_buf0_inst2[31]}] [get_ports {ifu_buf0_inst2[30]}] [get_ports              \
{ifu_buf0_inst2[29]}] [get_ports {ifu_buf0_inst2[28]}] [get_ports              \
{ifu_buf0_inst2[27]}] [get_ports {ifu_buf0_inst2[26]}] [get_ports              \
{ifu_buf0_inst2[25]}] [get_ports {ifu_buf0_inst2[24]}] [get_ports              \
{ifu_buf0_inst2[23]}] [get_ports {ifu_buf0_inst2[22]}] [get_ports              \
{ifu_buf0_inst2[21]}] [get_ports {ifu_buf0_inst2[20]}] [get_ports              \
{ifu_buf0_inst2[19]}] [get_ports {ifu_buf0_inst2[18]}] [get_ports              \
{ifu_buf0_inst2[17]}] [get_ports {ifu_buf0_inst2[16]}] [get_ports              \
{ifu_buf0_inst2[15]}] [get_ports {ifu_buf0_inst2[14]}] [get_ports              \
{ifu_buf0_inst2[13]}] [get_ports {ifu_buf0_inst2[12]}] [get_ports              \
{ifu_buf0_inst2[11]}] [get_ports {ifu_buf0_inst2[10]}] [get_ports              \
{ifu_buf0_inst2[9]}] [get_ports {ifu_buf0_inst2[8]}] [get_ports                \
{ifu_buf0_inst2[7]}] [get_ports {ifu_buf0_inst2[6]}] [get_ports                \
{ifu_buf0_inst2[5]}] [get_ports {ifu_buf0_inst2[4]}] [get_ports                \
{ifu_buf0_inst2[3]}] [get_ports {ifu_buf0_inst2[2]}] [get_ports                \
{ifu_buf0_inst2[1]}] [get_ports {ifu_buf0_inst2[0]}] [get_ports                \
{ifu_buf0_inst3[32]}] [get_ports {ifu_buf0_inst3[31]}] [get_ports              \
{ifu_buf0_inst3[30]}] [get_ports {ifu_buf0_inst3[29]}] [get_ports              \
{ifu_buf0_inst3[28]}] [get_ports {ifu_buf0_inst3[27]}] [get_ports              \
{ifu_buf0_inst3[26]}] [get_ports {ifu_buf0_inst3[25]}] [get_ports              \
{ifu_buf0_inst3[24]}] [get_ports {ifu_buf0_inst3[23]}] [get_ports              \
{ifu_buf0_inst3[22]}] [get_ports {ifu_buf0_inst3[21]}] [get_ports              \
{ifu_buf0_inst3[20]}] [get_ports {ifu_buf0_inst3[19]}] [get_ports              \
{ifu_buf0_inst3[18]}] [get_ports {ifu_buf0_inst3[17]}] [get_ports              \
{ifu_buf0_inst3[16]}] [get_ports {ifu_buf0_inst3[15]}] [get_ports              \
{ifu_buf0_inst3[14]}] [get_ports {ifu_buf0_inst3[13]}] [get_ports              \
{ifu_buf0_inst3[12]}] [get_ports {ifu_buf0_inst3[11]}] [get_ports              \
{ifu_buf0_inst3[10]}] [get_ports {ifu_buf0_inst3[9]}] [get_ports               \
{ifu_buf0_inst3[8]}] [get_ports {ifu_buf0_inst3[7]}] [get_ports                \
{ifu_buf0_inst3[6]}] [get_ports {ifu_buf0_inst3[5]}] [get_ports                \
{ifu_buf0_inst3[4]}] [get_ports {ifu_buf0_inst3[3]}] [get_ports                \
{ifu_buf0_inst3[2]}] [get_ports {ifu_buf0_inst3[1]}] [get_ports                \
{ifu_buf0_inst3[0]}] [get_ports {ifu_buf0_inst4[32]}] [get_ports               \
{ifu_buf0_inst4[31]}] [get_ports {ifu_buf0_inst4[30]}] [get_ports              \
{ifu_buf0_inst4[29]}] [get_ports {ifu_buf0_inst4[28]}] [get_ports              \
{ifu_buf0_inst4[27]}] [get_ports {ifu_buf0_inst4[26]}] [get_ports              \
{ifu_buf0_inst4[25]}] [get_ports {ifu_buf0_inst4[24]}] [get_ports              \
{ifu_buf0_inst4[23]}] [get_ports {ifu_buf0_inst4[22]}] [get_ports              \
{ifu_buf0_inst4[21]}] [get_ports {ifu_buf0_inst4[20]}] [get_ports              \
{ifu_buf0_inst4[19]}] [get_ports {ifu_buf0_inst4[18]}] [get_ports              \
{ifu_buf0_inst4[17]}] [get_ports {ifu_buf0_inst4[16]}] [get_ports              \
{ifu_buf0_inst4[15]}] [get_ports {ifu_buf0_inst4[14]}] [get_ports              \
{ifu_buf0_inst4[13]}] [get_ports {ifu_buf0_inst4[12]}] [get_ports              \
{ifu_buf0_inst4[11]}] [get_ports {ifu_buf0_inst4[10]}] [get_ports              \
{ifu_buf0_inst4[9]}] [get_ports {ifu_buf0_inst4[8]}] [get_ports                \
{ifu_buf0_inst4[7]}] [get_ports {ifu_buf0_inst4[6]}] [get_ports                \
{ifu_buf0_inst4[5]}] [get_ports {ifu_buf0_inst4[4]}] [get_ports                \
{ifu_buf0_inst4[3]}] [get_ports {ifu_buf0_inst4[2]}] [get_ports                \
{ifu_buf0_inst4[1]}] [get_ports {ifu_buf0_inst4[0]}] [get_ports                \
{ifu_buf0_inst5[32]}] [get_ports {ifu_buf0_inst5[31]}] [get_ports              \
{ifu_buf0_inst5[30]}] [get_ports {ifu_buf0_inst5[29]}] [get_ports              \
{ifu_buf0_inst5[28]}] [get_ports {ifu_buf0_inst5[27]}] [get_ports              \
{ifu_buf0_inst5[26]}] [get_ports {ifu_buf0_inst5[25]}] [get_ports              \
{ifu_buf0_inst5[24]}] [get_ports {ifu_buf0_inst5[23]}] [get_ports              \
{ifu_buf0_inst5[22]}] [get_ports {ifu_buf0_inst5[21]}] [get_ports              \
{ifu_buf0_inst5[20]}] [get_ports {ifu_buf0_inst5[19]}] [get_ports              \
{ifu_buf0_inst5[18]}] [get_ports {ifu_buf0_inst5[17]}] [get_ports              \
{ifu_buf0_inst5[16]}] [get_ports {ifu_buf0_inst5[15]}] [get_ports              \
{ifu_buf0_inst5[14]}] [get_ports {ifu_buf0_inst5[13]}] [get_ports              \
{ifu_buf0_inst5[12]}] [get_ports {ifu_buf0_inst5[11]}] [get_ports              \
{ifu_buf0_inst5[10]}] [get_ports {ifu_buf0_inst5[9]}] [get_ports               \
{ifu_buf0_inst5[8]}] [get_ports {ifu_buf0_inst5[7]}] [get_ports                \
{ifu_buf0_inst5[6]}] [get_ports {ifu_buf0_inst5[5]}] [get_ports                \
{ifu_buf0_inst5[4]}] [get_ports {ifu_buf0_inst5[3]}] [get_ports                \
{ifu_buf0_inst5[2]}] [get_ports {ifu_buf0_inst5[1]}] [get_ports                \
{ifu_buf0_inst5[0]}] [get_ports {ifu_buf0_inst6[32]}] [get_ports               \
{ifu_buf0_inst6[31]}] [get_ports {ifu_buf0_inst6[30]}] [get_ports              \
{ifu_buf0_inst6[29]}] [get_ports {ifu_buf0_inst6[28]}] [get_ports              \
{ifu_buf0_inst6[27]}] [get_ports {ifu_buf0_inst6[26]}] [get_ports              \
{ifu_buf0_inst6[25]}] [get_ports {ifu_buf0_inst6[24]}] [get_ports              \
{ifu_buf0_inst6[23]}] [get_ports {ifu_buf0_inst6[22]}] [get_ports              \
{ifu_buf0_inst6[21]}] [get_ports {ifu_buf0_inst6[20]}] [get_ports              \
{ifu_buf0_inst6[19]}] [get_ports {ifu_buf0_inst6[18]}] [get_ports              \
{ifu_buf0_inst6[17]}] [get_ports {ifu_buf0_inst6[16]}] [get_ports              \
{ifu_buf0_inst6[15]}] [get_ports {ifu_buf0_inst6[14]}] [get_ports              \
{ifu_buf0_inst6[13]}] [get_ports {ifu_buf0_inst6[12]}] [get_ports              \
{ifu_buf0_inst6[11]}] [get_ports {ifu_buf0_inst6[10]}] [get_ports              \
{ifu_buf0_inst6[9]}] [get_ports {ifu_buf0_inst6[8]}] [get_ports                \
{ifu_buf0_inst6[7]}] [get_ports {ifu_buf0_inst6[6]}] [get_ports                \
{ifu_buf0_inst6[5]}] [get_ports {ifu_buf0_inst6[4]}] [get_ports                \
{ifu_buf0_inst6[3]}] [get_ports {ifu_buf0_inst6[2]}] [get_ports                \
{ifu_buf0_inst6[1]}] [get_ports {ifu_buf0_inst6[0]}] [get_ports                \
{ifu_buf0_inst7[32]}] [get_ports {ifu_buf0_inst7[31]}] [get_ports              \
{ifu_buf0_inst7[30]}] [get_ports {ifu_buf0_inst7[29]}] [get_ports              \
{ifu_buf0_inst7[28]}] [get_ports {ifu_buf0_inst7[27]}] [get_ports              \
{ifu_buf0_inst7[26]}] [get_ports {ifu_buf0_inst7[25]}] [get_ports              \
{ifu_buf0_inst7[24]}] [get_ports {ifu_buf0_inst7[23]}] [get_ports              \
{ifu_buf0_inst7[22]}] [get_ports {ifu_buf0_inst7[21]}] [get_ports              \
{ifu_buf0_inst7[20]}] [get_ports {ifu_buf0_inst7[19]}] [get_ports              \
{ifu_buf0_inst7[18]}] [get_ports {ifu_buf0_inst7[17]}] [get_ports              \
{ifu_buf0_inst7[16]}] [get_ports {ifu_buf0_inst7[15]}] [get_ports              \
{ifu_buf0_inst7[14]}] [get_ports {ifu_buf0_inst7[13]}] [get_ports              \
{ifu_buf0_inst7[12]}] [get_ports {ifu_buf0_inst7[11]}] [get_ports              \
{ifu_buf0_inst7[10]}] [get_ports {ifu_buf0_inst7[9]}] [get_ports               \
{ifu_buf0_inst7[8]}] [get_ports {ifu_buf0_inst7[7]}] [get_ports                \
{ifu_buf0_inst7[6]}] [get_ports {ifu_buf0_inst7[5]}] [get_ports                \
{ifu_buf0_inst7[4]}] [get_ports {ifu_buf0_inst7[3]}] [get_ports                \
{ifu_buf0_inst7[2]}] [get_ports {ifu_buf0_inst7[1]}] [get_ports                \
{ifu_buf0_inst7[0]}] [get_ports {ifu_buf0_excp0[4]}] [get_ports                \
{ifu_buf0_excp0[3]}] [get_ports {ifu_buf0_excp0[2]}] [get_ports                \
{ifu_buf0_excp0[1]}] [get_ports {ifu_buf0_excp0[0]}] [get_ports                \
{ifu_buf0_excp1[4]}] [get_ports {ifu_buf0_excp1[3]}] [get_ports                \
{ifu_buf0_excp1[2]}] [get_ports {ifu_buf0_excp1[1]}] [get_ports                \
{ifu_buf0_excp1[0]}] [get_ports {ifu_buf0_excp2[4]}] [get_ports                \
{ifu_buf0_excp2[3]}] [get_ports {ifu_buf0_excp2[2]}] [get_ports                \
{ifu_buf0_excp2[1]}] [get_ports {ifu_buf0_excp2[0]}] [get_ports                \
{ifu_buf0_excp3[4]}] [get_ports {ifu_buf0_excp3[3]}] [get_ports                \
{ifu_buf0_excp3[2]}] [get_ports {ifu_buf0_excp3[1]}] [get_ports                \
{ifu_buf0_excp3[0]}] [get_ports {ifu_buf0_excp4[4]}] [get_ports                \
{ifu_buf0_excp4[3]}] [get_ports {ifu_buf0_excp4[2]}] [get_ports                \
{ifu_buf0_excp4[1]}] [get_ports {ifu_buf0_excp4[0]}] [get_ports                \
{ifu_buf0_excp5[4]}] [get_ports {ifu_buf0_excp5[3]}] [get_ports                \
{ifu_buf0_excp5[2]}] [get_ports {ifu_buf0_excp5[1]}] [get_ports                \
{ifu_buf0_excp5[0]}] [get_ports {ifu_buf0_excp6[4]}] [get_ports                \
{ifu_buf0_excp6[3]}] [get_ports {ifu_buf0_excp6[2]}] [get_ports                \
{ifu_buf0_excp6[1]}] [get_ports {ifu_buf0_excp6[0]}] [get_ports                \
{ifu_buf0_excp7[4]}] [get_ports {ifu_buf0_excp7[3]}] [get_ports                \
{ifu_buf0_excp7[2]}] [get_ports {ifu_buf0_excp7[1]}] [get_ports                \
{ifu_buf0_excp7[0]}] [get_ports scan_out]]
group_path -name reg2reg  -from [list [get_pins ibq7_spares_spare1_flop_q_reg/CP] [get_pins             \
{ibq7_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq7_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq7_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq7_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq7_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq7_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq7_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq7_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq7_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq7_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq7_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq7_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq7_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq7_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq7_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq7_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq6_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq6_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq6_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq6_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq6_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq6_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq6_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq6_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq6_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq6_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq6_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq6_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq6_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq6_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq6_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq6_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq6_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq5_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq5_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq5_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq5_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq5_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq5_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq5_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq5_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq5_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq5_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq5_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq5_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq5_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq5_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq5_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq5_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq5_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq4_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq4_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq4_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq4_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq4_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq4_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq4_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq4_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq4_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq4_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq4_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq4_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq4_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq4_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq4_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq4_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq4_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq3_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq3_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq3_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq3_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq3_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq3_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq3_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq3_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq3_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq3_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq3_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq3_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq3_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq3_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq3_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq3_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq3_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq2_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq2_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq2_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq2_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq2_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq2_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq2_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq2_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq2_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq2_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq2_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq2_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq2_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq2_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq2_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq2_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq2_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq1_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq1_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq1_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq1_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq1_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq1_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq1_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq1_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq1_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq1_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq1_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq1_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq1_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq1_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq1_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq1_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq1_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibq0_valid_outpk_buf0_d0_0_q_reg[0]/CP}] [get_pins                  \
{ibq0_valid_outpk_7to1_d0_0_q_reg[0]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[1]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[2]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[3]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[4]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[5]/CP}] [get_pins                            \
{ibq0_valid_outpk_7to1_d0_0_q_reg[6]/CP}] [get_pins                            \
{ibq0_next_ip_1_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ibq0_next_ip_7to2_d0_0_q_reg[0]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[1]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[2]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[3]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[4]/CP}] [get_pins                                \
{ibq0_next_ip_7to2_d0_0_q_reg[5]/CP}] [get_pins                                \
{ibq0_cur_fp_1_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq0_cur_fp_7to2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{ibq0_cur_fp_7to2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{ibq0_fetch_sig_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[5]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[6]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[7]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[8]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[9]/CP}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[10]/CP}] [get_pins                              \
{ibq0_fetch_sig_reg_d0_0_q_reg[11]/CP}] [get_pins                              \
{ibq0_fetch_sig_reg_d0_0_q_reg[12]/CP}] [get_pins                              \
{ibq0_fetch_sig_reg_d0_0_q_reg[13]/CP}] [get_pins                              \
{ibq0_pmen_reg_d0_0_q_reg[0]/CP}] [get_pins                                    \
{ibq0_buff_clken_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
ibq0_clkgen_pm_c_0_l1en_reg/CPN] [get_pins ibq0_clkgen_c_0_l1en_reg/CPN]       \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf7_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf7_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf6_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf6_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf5_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf5_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf4_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf4_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf3_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf3_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf2_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf2_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf1_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf1_buf0_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf7_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf7_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf6_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf6_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf5_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf5_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf4_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf4_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf3_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf3_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf2_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf2_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf1_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf1_ff_c0_0_l1en_reg/CPN]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[0]/CP}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[1]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[2]/CP}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[3]/CP}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[4]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[5]/CP}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[6]/CP}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[7]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[8]/CP}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[9]/CP}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[10]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[11]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[12]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[13]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[14]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[15]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[16]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[17]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[18]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[19]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[20]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[21]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[22]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[23]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[24]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[25]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[26]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[27]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[28]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[29]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[30]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[31]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[32]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[33]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[34]/CP}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[35]/CP}]  \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[36]/CP}] [get_pins                          \
{ibf0_buf0_ff_d0_0_q_reg[37]/CP}] [get_pins ibf0_buf0_ff_c0_0_l1en_reg/CPN]]  -to [list [get_pins ibq7_spares_spare1_flop_q_reg/D] [get_pins                \
{ibq7_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq7_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq7_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq7_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq7_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq7_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq7_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq7_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq7_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq7_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq7_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq7_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq7_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq7_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq7_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq7_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq7_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq7_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq7_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq6_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq6_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq6_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq6_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq6_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq6_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq6_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq6_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq6_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq6_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq6_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq6_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq6_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq6_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq6_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq6_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq6_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq6_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq6_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq5_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq5_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq5_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq5_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq5_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq5_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq5_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq5_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq5_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq5_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq5_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq5_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq5_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq5_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq5_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq5_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq5_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq5_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq5_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq4_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq4_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq4_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq4_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq4_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq4_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq4_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq4_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq4_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq4_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq4_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq4_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq4_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq4_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq4_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq4_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq4_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq4_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq4_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq3_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq3_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq3_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq3_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq3_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq3_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq3_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq3_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq3_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq3_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq3_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq3_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq3_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq3_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq3_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq3_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq3_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq3_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq3_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq2_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq2_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq2_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq2_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq2_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq2_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq2_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq2_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq2_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq2_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq2_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq2_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq2_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq2_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq2_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq2_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq2_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq2_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq2_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq1_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq1_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq1_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq1_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq1_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq1_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq1_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq1_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq1_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq1_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq1_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq1_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq1_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq1_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq1_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq1_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq1_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq1_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq1_clkgen_c_0_l1en_reg/D] [get_pins \
{ibq0_valid_outpk_buf0_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[0]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[1]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[2]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[3]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[4]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[5]/D}] [get_pins                             \
{ibq0_valid_outpk_7to1_d0_0_q_reg[6]/D}] [get_pins                             \
{ibq0_next_ip_1_d0_0_q_reg[0]/D}] [get_pins                                    \
{ibq0_next_ip_7to2_d0_0_q_reg[0]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[1]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[2]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[3]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[4]/D}] [get_pins                                 \
{ibq0_next_ip_7to2_d0_0_q_reg[5]/D}] [get_pins                                 \
{ibq0_cur_fp_1_d0_0_q_reg[0]/D}] [get_pins {ibq0_cur_fp_7to2_d0_0_q_reg[0]/D}] \
[get_pins {ibq0_cur_fp_7to2_d0_0_q_reg[1]/D}] [get_pins                        \
{ibq0_cur_fp_7to2_d0_0_q_reg[2]/D}] [get_pins                                  \
{ibq0_cur_fp_7to2_d0_0_q_reg[3]/D}] [get_pins                                  \
{ibq0_cur_fp_7to2_d0_0_q_reg[4]/D}] [get_pins                                  \
{ibq0_cur_fp_7to2_d0_0_q_reg[5]/D}] [get_pins                                  \
{ibq0_fetch_sig_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[5]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[6]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[7]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[8]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[9]/D}] [get_pins                                \
{ibq0_fetch_sig_reg_d0_0_q_reg[10]/D}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[11]/D}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[12]/D}] [get_pins                               \
{ibq0_fetch_sig_reg_d0_0_q_reg[13]/D}] [get_pins                               \
{ibq0_pmen_reg_d0_0_q_reg[0]/D}] [get_pins                                     \
{ibq0_buff_clken_reg_d0_0_q_reg[0]/D}] [get_pins                               \
ibq0_clkgen_pm_c_0_l1en_reg/D] [get_pins ibq0_clkgen_c_0_l1en_reg/D] [get_pins \
{ibf7_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf7_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf7_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf7_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf7_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf7_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf7_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf7_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf7_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf6_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf6_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf6_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf6_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf6_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf6_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf6_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf6_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf5_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf5_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf5_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf5_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf5_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf5_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf5_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf5_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf4_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf4_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf4_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf4_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf4_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf4_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf4_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf4_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf3_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf3_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf3_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf3_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf3_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf3_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf3_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf3_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf2_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf2_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf2_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf2_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf2_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf2_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf2_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf2_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf1_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf1_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf1_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf1_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf1_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf1_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf1_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf1_buf0_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf7_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf7_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf7_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf7_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf7_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf7_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf7_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf7_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf6_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf6_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf6_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf6_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf6_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf6_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf6_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf6_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf5_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf5_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf5_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf5_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf5_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf5_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf5_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf5_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf4_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf4_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf4_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf4_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf4_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf4_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf4_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf4_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf3_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf3_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf3_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf3_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf3_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf3_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf3_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf3_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf2_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf2_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf2_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf2_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf2_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf2_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf2_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf2_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf1_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf1_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf1_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf1_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf1_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf1_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf1_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf1_ff_c0_0_l1en_reg/D] [get_pins                              \
{ibf0_buf0_ff_d0_0_q_reg[0]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[1]/D}]      \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[2]/D}] [get_pins                            \
{ibf0_buf0_ff_d0_0_q_reg[3]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[4]/D}]      \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[5]/D}] [get_pins                            \
{ibf0_buf0_ff_d0_0_q_reg[6]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[7]/D}]      \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[8]/D}] [get_pins                            \
{ibf0_buf0_ff_d0_0_q_reg[9]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[10]/D}]     \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[11]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[12]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[13]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[14]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[15]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[16]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[17]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[18]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[19]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[20]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[21]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[22]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[23]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[24]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[25]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[26]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[27]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[28]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[29]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[30]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[31]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[32]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[33]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[34]/D}]    \
[get_pins {ibf0_buf0_ff_d0_0_q_reg[35]/D}] [get_pins                           \
{ibf0_buf0_ff_d0_0_q_reg[36]/D}] [get_pins {ibf0_buf0_ff_d0_0_q_reg[37]/D}]    \
[get_pins ibf0_buf0_ff_c0_0_l1en_reg/D]]
set_input_delay -clock l2clk  0.15  [get_ports l2clk]
set_input_delay -clock l2clk  0.15  [get_ports scan_in]
set_input_delay -clock l2clk  0.15  [get_ports tcu_pce_ov]
set_input_delay -clock l2clk  0.15  [get_ports tcu_scan_en]
set_input_delay -clock l2clk  0.15  [get_ports spc_aclk]
set_input_delay -clock l2clk  0.15  [get_ports spc_bclk]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_buffer0[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_buffer0[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_buffer0[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_buffer0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_buffer0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_buffer0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_buffer0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_buffer0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_upper_buffer[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_upper_buffer[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_upper_buffer[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_upper_buffer[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_upper_buffer[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_upper_buffer[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_upper_buffer[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_upper_buffer[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_fetch_thr_c[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_fetch_thr_c[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_fetch_thr_c[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_fetch_thr_c[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_fetch_thr_c[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_fetch_thr_c[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_fetch_thr_c[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_fetch_thr_c[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pick_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pick_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pick_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pick_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pick_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pick_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pick_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pick_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports ftu_exception_valid_c]
set_input_delay -clock l2clk  0.15  [get_ports ftu_instr_sf_valid_c]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_ibu_redirect_bf[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_ibu_redirect_bf[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_ibu_redirect_bf[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_ibu_redirect_bf[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_ibu_redirect_bf[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_ibu_redirect_bf[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_ibu_redirect_bf[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_ibu_redirect_bf[0]}]
set_input_delay -clock l2clk  0.15  [get_ports ftu_ic_no_err_c]
set_input_delay -clock l2clk  0.15  [get_ports ftu_bus_0_is_first]
set_input_delay -clock l2clk  0.15  [get_ports ftu_bus_1_is_first]
set_input_delay -clock l2clk  0.15  [get_ports ftu_bus_2_is_first]
set_input_delay -clock l2clk  0.15  [get_ports ftu_bus_3_is_first]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_valid_c[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_valid_c[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_valid_c[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_valid_c[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_c_rep3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_c_rep3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_c_rep3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_c_rep3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_0_exceptions_c_rep3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_1_exceptions_c_rep3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_2_exceptions_c_rep3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_instr_3_exceptions_c_rep3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports lsu_ifu_ibu_pmen]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_buffer_wr_en_f[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_buffer_wr_en_f[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_buffer_wr_en_f[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_buffer_wr_en_f[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_buffer_wr_en_f[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_buffer_wr_en_f[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_buffer_wr_en_f[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ftu_buffer_wr_en_f[0]}]
set_input_delay -clock l2clk  0.15  [get_ports l15_ifu_valid]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_valid_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_valid_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_valid_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_valid_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_valid_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_valid_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_valid_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_valid_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_upper_buffer_valid_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_upper_buffer_valid_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_upper_buffer_valid_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_upper_buffer_valid_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_upper_buffer_valid_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_upper_buffer_valid_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_upper_buffer_valid_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_upper_buffer_valid_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_empty[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_empty[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_empty[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_empty[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_empty[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_empty[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_empty[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_empty[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_room_4ormore[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_room_4ormore[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_room_4ormore[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_room_4ormore[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_room_4ormore[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_room_4ormore[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_room_4ormore[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ibu_room_4ormore[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst0[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst1[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst2[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst3[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst4[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst5[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst6[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_inst7[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp0[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp0[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp0[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp0[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp0[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp1[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp1[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp1[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp1[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp1[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp2[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp2[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp2[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp2[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp2[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp3[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp3[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp3[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp3[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp3[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp4[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp4[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp4[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp4[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp4[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp5[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp5[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp5[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp5[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp5[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp6[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp6[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp6[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp6[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp6[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp7[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp7[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp7[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp7[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {ifu_buf0_excp7[0]}]
set_output_delay -clock l2clk  0.2  [get_ports scan_out]
