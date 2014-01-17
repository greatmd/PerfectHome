###################################################################

# Created by write_sdc on Sun Jan 12 16:17:36 2014

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports l2clk]  -period 0.714286  -waveform {0 0.357143}
set_clock_uncertainty 0  [get_clocks l2clk]
set_clock_transition -min -fall 0.05 [get_clocks l2clk]
set_clock_transition -min -rise 0.05 [get_clocks l2clk]
set_clock_transition -max -fall 0.05 [get_clocks l2clk]
set_clock_transition -max -rise 0.05 [get_clocks l2clk]
group_path -name in2out  -from [list [get_ports {tlu_halted[7]}] [get_ports {tlu_halted[6]}]           \
[get_ports {tlu_halted[5]}] [get_ports {tlu_halted[4]}] [get_ports             \
{tlu_halted[3]}] [get_ports {tlu_halted[2]}] [get_ports {tlu_halted[1]}]       \
[get_ports {tlu_halted[0]}] [get_ports tcu_do_mode] [get_ports                 \
{dec_block_store_stall[7]}] [get_ports {dec_block_store_stall[6]}] [get_ports  \
{dec_block_store_stall[5]}] [get_ports {dec_block_store_stall[4]}] [get_ports  \
{dec_block_store_stall[3]}] [get_ports {dec_block_store_stall[2]}] [get_ports  \
{dec_block_store_stall[1]}] [get_ports {dec_block_store_stall[0]}] [get_ports  \
{dec_ierr_d[1]}] [get_ports {dec_ierr_d[0]}] [get_ports {lsu_spec_enable[7]}]  \
[get_ports {lsu_spec_enable[6]}] [get_ports {lsu_spec_enable[5]}] [get_ports   \
{lsu_spec_enable[4]}] [get_ports {lsu_spec_enable[3]}] [get_ports              \
{lsu_spec_enable[2]}] [get_ports {lsu_spec_enable[1]}] [get_ports              \
{lsu_spec_enable[0]}] [get_ports {spc_core_running_status[7]}] [get_ports      \
{spc_core_running_status[6]}] [get_ports {spc_core_running_status[5]}]         \
[get_ports {spc_core_running_status[4]}] [get_ports                            \
{spc_core_running_status[3]}] [get_ports {spc_core_running_status[2]}]         \
[get_ports {spc_core_running_status[1]}] [get_ports                            \
{spc_core_running_status[0]}] [get_ports lsu_pku_pmen] [get_ports              \
{tlu_retry_state[7]}] [get_ports {tlu_retry_state[6]}] [get_ports              \
{tlu_retry_state[5]}] [get_ports {tlu_retry_state[4]}] [get_ports              \
{tlu_retry_state[3]}] [get_ports {tlu_retry_state[2]}] [get_ports              \
{tlu_retry_state[1]}] [get_ports {tlu_retry_state[0]}] [get_ports              \
{tlu_flush_ifu[7]}] [get_ports {tlu_flush_ifu[6]}] [get_ports                  \
{tlu_flush_ifu[5]}] [get_ports {tlu_flush_ifu[4]}] [get_ports                  \
{tlu_flush_ifu[3]}] [get_ports {tlu_flush_ifu[2]}] [get_ports                  \
{tlu_flush_ifu[1]}] [get_ports {tlu_flush_ifu[0]}] [get_ports                  \
{dec_true_valid_e[1]}] [get_ports {dec_true_valid_e[0]}] [get_ports            \
dec_decode0_d] [get_ports dec_decode1_d] [get_ports dec_valid0_d] [get_ports   \
dec_valid1_d] [get_ports {lsu_sync[7]}] [get_ports {lsu_sync[6]}] [get_ports   \
{lsu_sync[5]}] [get_ports {lsu_sync[4]}] [get_ports {lsu_sync[3]}] [get_ports  \
{lsu_sync[2]}] [get_ports {lsu_sync[1]}] [get_ports {lsu_sync[0]}] [get_ports  \
{lsu_complete[7]}] [get_ports {lsu_complete[6]}] [get_ports {lsu_complete[5]}] \
[get_ports {lsu_complete[4]}] [get_ports {lsu_complete[3]}] [get_ports         \
{lsu_complete[2]}] [get_ports {lsu_complete[1]}] [get_ports {lsu_complete[0]}] \
[get_ports {dec_br_taken_e[1]}] [get_ports {dec_br_taken_e[0]}] [get_ports     \
{fgu_divide_completion[7]}] [get_ports {fgu_divide_completion[6]}] [get_ports  \
{fgu_divide_completion[5]}] [get_ports {fgu_divide_completion[4]}] [get_ports  \
{fgu_divide_completion[3]}] [get_ports {fgu_divide_completion[2]}] [get_ports  \
{fgu_divide_completion[1]}] [get_ports {fgu_divide_completion[0]}] [get_ports  \
{ifu_ibuffer_write_c[7]}] [get_ports {ifu_ibuffer_write_c[6]}] [get_ports      \
{ifu_ibuffer_write_c[5]}] [get_ports {ifu_ibuffer_write_c[4]}] [get_ports      \
{ifu_ibuffer_write_c[3]}] [get_ports {ifu_ibuffer_write_c[2]}] [get_ports      \
{ifu_ibuffer_write_c[1]}] [get_ports {ifu_ibuffer_write_c[0]}] [get_ports      \
{lsu_stb_alloc[7]}] [get_ports {lsu_stb_alloc[6]}] [get_ports                  \
{lsu_stb_alloc[5]}] [get_ports {lsu_stb_alloc[4]}] [get_ports                  \
{lsu_stb_alloc[3]}] [get_ports {lsu_stb_alloc[2]}] [get_ports                  \
{lsu_stb_alloc[1]}] [get_ports {lsu_stb_alloc[0]}] [get_ports                  \
{lsu_stb_dealloc[7]}] [get_ports {lsu_stb_dealloc[6]}] [get_ports              \
{lsu_stb_dealloc[5]}] [get_ports {lsu_stb_dealloc[4]}] [get_ports              \
{lsu_stb_dealloc[3]}] [get_ports {lsu_stb_dealloc[2]}] [get_ports              \
{lsu_stb_dealloc[1]}] [get_ports {lsu_stb_dealloc[0]}] [get_ports              \
{lsu_block_store_kill[7]}] [get_ports {lsu_block_store_kill[6]}] [get_ports    \
{lsu_block_store_kill[5]}] [get_ports {lsu_block_store_kill[4]}] [get_ports    \
{lsu_block_store_kill[3]}] [get_ports {lsu_block_store_kill[2]}] [get_ports    \
{lsu_block_store_kill[1]}] [get_ports {lsu_block_store_kill[0]}] [get_ports    \
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
{ifu_buf0_inst1[31]}] [get_ports {ifu_buf0_inst1[30]}] [get_ports              \
{ifu_buf0_inst1[29]}] [get_ports {ifu_buf0_inst1[28]}] [get_ports              \
{ifu_buf0_inst1[27]}] [get_ports {ifu_buf0_inst1[26]}] [get_ports              \
{ifu_buf0_inst1[25]}] [get_ports {ifu_buf0_inst1[24]}] [get_ports              \
{ifu_buf0_inst1[23]}] [get_ports {ifu_buf0_inst1[22]}] [get_ports              \
{ifu_buf0_inst1[21]}] [get_ports {ifu_buf0_inst1[20]}] [get_ports              \
{ifu_buf0_inst1[19]}] [get_ports {ifu_buf0_inst1[18]}] [get_ports              \
{ifu_buf0_inst1[17]}] [get_ports {ifu_buf0_inst1[16]}] [get_ports              \
{ifu_buf0_inst1[15]}] [get_ports {ifu_buf0_inst1[14]}] [get_ports              \
{ifu_buf0_inst1[13]}] [get_ports {ifu_buf0_inst1[12]}] [get_ports              \
{ifu_buf0_inst1[11]}] [get_ports {ifu_buf0_inst1[10]}] [get_ports              \
{ifu_buf0_inst1[9]}] [get_ports {ifu_buf0_inst1[8]}] [get_ports                \
{ifu_buf0_inst1[7]}] [get_ports {ifu_buf0_inst1[6]}] [get_ports                \
{ifu_buf0_inst1[5]}] [get_ports {ifu_buf0_inst1[4]}] [get_ports                \
{ifu_buf0_inst1[3]}] [get_ports {ifu_buf0_inst1[2]}] [get_ports                \
{ifu_buf0_inst1[1]}] [get_ports {ifu_buf0_inst1[0]}] [get_ports                \
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
{ifu_buf0_inst3[31]}] [get_ports {ifu_buf0_inst3[30]}] [get_ports              \
{ifu_buf0_inst3[29]}] [get_ports {ifu_buf0_inst3[28]}] [get_ports              \
{ifu_buf0_inst3[27]}] [get_ports {ifu_buf0_inst3[26]}] [get_ports              \
{ifu_buf0_inst3[25]}] [get_ports {ifu_buf0_inst3[24]}] [get_ports              \
{ifu_buf0_inst3[23]}] [get_ports {ifu_buf0_inst3[22]}] [get_ports              \
{ifu_buf0_inst3[21]}] [get_ports {ifu_buf0_inst3[20]}] [get_ports              \
{ifu_buf0_inst3[19]}] [get_ports {ifu_buf0_inst3[18]}] [get_ports              \
{ifu_buf0_inst3[17]}] [get_ports {ifu_buf0_inst3[16]}] [get_ports              \
{ifu_buf0_inst3[15]}] [get_ports {ifu_buf0_inst3[14]}] [get_ports              \
{ifu_buf0_inst3[13]}] [get_ports {ifu_buf0_inst3[12]}] [get_ports              \
{ifu_buf0_inst3[11]}] [get_ports {ifu_buf0_inst3[10]}] [get_ports              \
{ifu_buf0_inst3[9]}] [get_ports {ifu_buf0_inst3[8]}] [get_ports                \
{ifu_buf0_inst3[7]}] [get_ports {ifu_buf0_inst3[6]}] [get_ports                \
{ifu_buf0_inst3[5]}] [get_ports {ifu_buf0_inst3[4]}] [get_ports                \
{ifu_buf0_inst3[3]}] [get_ports {ifu_buf0_inst3[2]}] [get_ports                \
{ifu_buf0_inst3[1]}] [get_ports {ifu_buf0_inst3[0]}] [get_ports                \
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
{ifu_buf0_inst5[31]}] [get_ports {ifu_buf0_inst5[30]}] [get_ports              \
{ifu_buf0_inst5[29]}] [get_ports {ifu_buf0_inst5[28]}] [get_ports              \
{ifu_buf0_inst5[27]}] [get_ports {ifu_buf0_inst5[26]}] [get_ports              \
{ifu_buf0_inst5[25]}] [get_ports {ifu_buf0_inst5[24]}] [get_ports              \
{ifu_buf0_inst5[23]}] [get_ports {ifu_buf0_inst5[22]}] [get_ports              \
{ifu_buf0_inst5[21]}] [get_ports {ifu_buf0_inst5[20]}] [get_ports              \
{ifu_buf0_inst5[19]}] [get_ports {ifu_buf0_inst5[18]}] [get_ports              \
{ifu_buf0_inst5[17]}] [get_ports {ifu_buf0_inst5[16]}] [get_ports              \
{ifu_buf0_inst5[15]}] [get_ports {ifu_buf0_inst5[14]}] [get_ports              \
{ifu_buf0_inst5[13]}] [get_ports {ifu_buf0_inst5[12]}] [get_ports              \
{ifu_buf0_inst5[11]}] [get_ports {ifu_buf0_inst5[10]}] [get_ports              \
{ifu_buf0_inst5[9]}] [get_ports {ifu_buf0_inst5[8]}] [get_ports                \
{ifu_buf0_inst5[7]}] [get_ports {ifu_buf0_inst5[6]}] [get_ports                \
{ifu_buf0_inst5[5]}] [get_ports {ifu_buf0_inst5[4]}] [get_ports                \
{ifu_buf0_inst5[3]}] [get_ports {ifu_buf0_inst5[2]}] [get_ports                \
{ifu_buf0_inst5[1]}] [get_ports {ifu_buf0_inst5[0]}] [get_ports                \
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
{ifu_buf0_inst7[31]}] [get_ports {ifu_buf0_inst7[30]}] [get_ports              \
{ifu_buf0_inst7[29]}] [get_ports {ifu_buf0_inst7[28]}] [get_ports              \
{ifu_buf0_inst7[27]}] [get_ports {ifu_buf0_inst7[26]}] [get_ports              \
{ifu_buf0_inst7[25]}] [get_ports {ifu_buf0_inst7[24]}] [get_ports              \
{ifu_buf0_inst7[23]}] [get_ports {ifu_buf0_inst7[22]}] [get_ports              \
{ifu_buf0_inst7[21]}] [get_ports {ifu_buf0_inst7[20]}] [get_ports              \
{ifu_buf0_inst7[19]}] [get_ports {ifu_buf0_inst7[18]}] [get_ports              \
{ifu_buf0_inst7[17]}] [get_ports {ifu_buf0_inst7[16]}] [get_ports              \
{ifu_buf0_inst7[15]}] [get_ports {ifu_buf0_inst7[14]}] [get_ports              \
{ifu_buf0_inst7[13]}] [get_ports {ifu_buf0_inst7[12]}] [get_ports              \
{ifu_buf0_inst7[11]}] [get_ports {ifu_buf0_inst7[10]}] [get_ports              \
{ifu_buf0_inst7[9]}] [get_ports {ifu_buf0_inst7[8]}] [get_ports                \
{ifu_buf0_inst7[7]}] [get_ports {ifu_buf0_inst7[6]}] [get_ports                \
{ifu_buf0_inst7[5]}] [get_ports {ifu_buf0_inst7[4]}] [get_ports                \
{ifu_buf0_inst7[3]}] [get_ports {ifu_buf0_inst7[2]}] [get_ports                \
{ifu_buf0_inst7[1]}] [get_ports {ifu_buf0_inst7[0]}] [get_ports                \
{ifu_buf0_valid_p[7]}] [get_ports {ifu_buf0_valid_p[6]}] [get_ports            \
{ifu_buf0_valid_p[5]}] [get_ports {ifu_buf0_valid_p[4]}] [get_ports            \
{ifu_buf0_valid_p[3]}] [get_ports {ifu_buf0_valid_p[2]}] [get_ports            \
{ifu_buf0_valid_p[1]}] [get_ports {ifu_buf0_valid_p[0]}] [get_ports            \
{ifu_upper_buffer_valid_p[7]}] [get_ports {ifu_upper_buffer_valid_p[6]}]       \
[get_ports {ifu_upper_buffer_valid_p[5]}] [get_ports                           \
{ifu_upper_buffer_valid_p[4]}] [get_ports {ifu_upper_buffer_valid_p[3]}]       \
[get_ports {ifu_upper_buffer_valid_p[2]}] [get_ports                           \
{ifu_upper_buffer_valid_p[1]}] [get_ports {ifu_upper_buffer_valid_p[0]}]       \
[get_clocks l2clk] [get_ports scan_in] [get_ports tcu_pce_ov] [get_ports       \
spc_aclk] [get_ports spc_bclk] [get_ports tcu_scan_en]]  -to [list [get_ports {pku_raw_pick0_p[3]}] [get_ports {pku_raw_pick0_p[2]}]   \
[get_ports {pku_raw_pick0_p[1]}] [get_ports {pku_raw_pick0_p[0]}] [get_ports   \
{pku_raw_pick1_p[7]}] [get_ports {pku_raw_pick1_p[6]}] [get_ports              \
{pku_raw_pick1_p[5]}] [get_ports {pku_raw_pick1_p[4]}] [get_ports              \
{pku_base_pick_p[7]}] [get_ports {pku_base_pick_p[6]}] [get_ports              \
{pku_base_pick_p[5]}] [get_ports {pku_base_pick_p[4]}] [get_ports              \
{pku_base_pick_p[3]}] [get_ports {pku_base_pick_p[2]}] [get_ports              \
{pku_base_pick_p[1]}] [get_ports {pku_base_pick_p[0]}] [get_ports              \
{pku_pick_p[7]}] [get_ports {pku_pick_p[6]}] [get_ports {pku_pick_p[5]}]       \
[get_ports {pku_pick_p[4]}] [get_ports {pku_pick_p[3]}] [get_ports             \
{pku_pick_p[2]}] [get_ports {pku_pick_p[1]}] [get_ports {pku_pick_p[0]}]       \
[get_ports {pku_lsu_p[7]}] [get_ports {pku_lsu_p[6]}] [get_ports               \
{pku_lsu_p[5]}] [get_ports {pku_lsu_p[4]}] [get_ports {pku_lsu_p[3]}]          \
[get_ports {pku_lsu_p[2]}] [get_ports {pku_lsu_p[1]}] [get_ports               \
{pku_lsu_p[0]}] [get_ports {pku_fgu_p[7]}] [get_ports {pku_fgu_p[6]}]          \
[get_ports {pku_fgu_p[5]}] [get_ports {pku_fgu_p[4]}] [get_ports               \
{pku_fgu_p[3]}] [get_ports {pku_fgu_p[2]}] [get_ports {pku_fgu_p[1]}]          \
[get_ports {pku_fgu_p[0]}] [get_ports {pku_pdist_p[7]}] [get_ports             \
{pku_pdist_p[6]}] [get_ports {pku_pdist_p[5]}] [get_ports {pku_pdist_p[4]}]    \
[get_ports {pku_pdist_p[3]}] [get_ports {pku_pdist_p[2]}] [get_ports           \
{pku_pdist_p[1]}] [get_ports {pku_pdist_p[0]}] [get_ports {pku_twocycle_p[7]}] \
[get_ports {pku_twocycle_p[6]}] [get_ports {pku_twocycle_p[5]}] [get_ports     \
{pku_twocycle_p[4]}] [get_ports {pku_twocycle_p[3]}] [get_ports                \
{pku_twocycle_p[2]}] [get_ports {pku_twocycle_p[1]}] [get_ports                \
{pku_twocycle_p[0]}] [get_ports {pku_idest_p[7]}] [get_ports {pku_idest_p[6]}] \
[get_ports {pku_idest_p[5]}] [get_ports {pku_idest_p[4]}] [get_ports           \
{pku_idest_p[3]}] [get_ports {pku_idest_p[2]}] [get_ports {pku_idest_p[1]}]    \
[get_ports {pku_idest_p[0]}] [get_ports {pku_fdest_p[7]}] [get_ports           \
{pku_fdest_p[6]}] [get_ports {pku_fdest_p[5]}] [get_ports {pku_fdest_p[4]}]    \
[get_ports {pku_fdest_p[3]}] [get_ports {pku_fdest_p[2]}] [get_ports           \
{pku_fdest_p[1]}] [get_ports {pku_fdest_p[0]}] [get_ports {pku_fsrc_rd_p[7]}]  \
[get_ports {pku_fsrc_rd_p[6]}] [get_ports {pku_fsrc_rd_p[5]}] [get_ports       \
{pku_fsrc_rd_p[4]}] [get_ports {pku_fsrc_rd_p[3]}] [get_ports                  \
{pku_fsrc_rd_p[2]}] [get_ports {pku_fsrc_rd_p[1]}] [get_ports                  \
{pku_fsrc_rd_p[0]}] [get_ports {pku_isrc_rs1_p[7]}] [get_ports                 \
{pku_isrc_rs1_p[6]}] [get_ports {pku_isrc_rs1_p[5]}] [get_ports                \
{pku_isrc_rs1_p[4]}] [get_ports {pku_isrc_rs1_p[3]}] [get_ports                \
{pku_isrc_rs1_p[2]}] [get_ports {pku_isrc_rs1_p[1]}] [get_ports                \
{pku_isrc_rs1_p[0]}] [get_ports {pku_isrc_rs2_p[7]}] [get_ports                \
{pku_isrc_rs2_p[6]}] [get_ports {pku_isrc_rs2_p[5]}] [get_ports                \
{pku_isrc_rs2_p[4]}] [get_ports {pku_isrc_rs2_p[3]}] [get_ports                \
{pku_isrc_rs2_p[2]}] [get_ports {pku_isrc_rs2_p[1]}] [get_ports                \
{pku_isrc_rs2_p[0]}] [get_ports {pku_isrc_rd_p[7]}] [get_ports                 \
{pku_isrc_rd_p[6]}] [get_ports {pku_isrc_rd_p[5]}] [get_ports                  \
{pku_isrc_rd_p[4]}] [get_ports {pku_isrc_rd_p[3]}] [get_ports                  \
{pku_isrc_rd_p[2]}] [get_ports {pku_isrc_rd_p[1]}] [get_ports                  \
{pku_isrc_rd_p[0]}] [get_ports {pku_valid_e[7]}] [get_ports {pku_valid_e[6]}]  \
[get_ports {pku_valid_e[5]}] [get_ports {pku_valid_e[4]}] [get_ports           \
{pku_valid_e[3]}] [get_ports {pku_valid_e[2]}] [get_ports {pku_valid_e[1]}]    \
[get_ports {pku_valid_e[0]}] [get_ports {pku_annul_ds_dcti_brtaken0_e[7]}]     \
[get_ports {pku_annul_ds_dcti_brtaken0_e[6]}] [get_ports                       \
{pku_annul_ds_dcti_brtaken0_e[5]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[4]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[3]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[2]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[1]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[0]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[7]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[6]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[5]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[4]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[3]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[2]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[1]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[0]}] [get_ports {pku_flush_f1[7]}] [get_ports    \
{pku_flush_f1[6]}] [get_ports {pku_flush_f1[5]}] [get_ports {pku_flush_f1[4]}] \
[get_ports {pku_flush_f1[3]}] [get_ports {pku_flush_f1[2]}] [get_ports         \
{pku_flush_f1[1]}] [get_ports {pku_flush_f1[0]}] [get_ports {pku_flush_f2[7]}] \
[get_ports {pku_flush_f2[6]}] [get_ports {pku_flush_f2[5]}] [get_ports         \
{pku_flush_f2[4]}] [get_ports {pku_flush_f2[3]}] [get_ports {pku_flush_f2[2]}] \
[get_ports {pku_flush_f2[1]}] [get_ports {pku_flush_f2[0]}] [get_ports         \
{pku_flush_lb[7]}] [get_ports {pku_flush_lb[6]}] [get_ports {pku_flush_lb[5]}] \
[get_ports {pku_flush_lb[4]}] [get_ports {pku_flush_lb[3]}] [get_ports         \
{pku_flush_lb[2]}] [get_ports {pku_flush_lb[1]}] [get_ports {pku_flush_lb[0]}] \
[get_ports {pku_flush_lm[7]}] [get_ports {pku_flush_lm[6]}] [get_ports         \
{pku_flush_lm[5]}] [get_ports {pku_flush_lm[4]}] [get_ports {pku_flush_lm[3]}] \
[get_ports {pku_flush_lm[2]}] [get_ports {pku_flush_lm[1]}] [get_ports         \
{pku_flush_lm[0]}] [get_ports {pku_flush_m[7]}] [get_ports {pku_flush_m[6]}]   \
[get_ports {pku_flush_m[5]}] [get_ports {pku_flush_m[4]}] [get_ports           \
{pku_flush_m[3]}] [get_ports {pku_flush_m[2]}] [get_ports {pku_flush_m[1]}]    \
[get_ports {pku_flush_m[0]}] [get_ports {pku_flush_b[7]}] [get_ports           \
{pku_flush_b[6]}] [get_ports {pku_flush_b[5]}] [get_ports {pku_flush_b[4]}]    \
[get_ports {pku_flush_b[3]}] [get_ports {pku_flush_b[2]}] [get_ports           \
{pku_flush_b[1]}] [get_ports {pku_flush_b[0]}] [get_ports                      \
{pku_load_flush_w[7]}] [get_ports {pku_load_flush_w[6]}] [get_ports            \
{pku_load_flush_w[5]}] [get_ports {pku_load_flush_w[4]}] [get_ports            \
{pku_load_flush_w[3]}] [get_ports {pku_load_flush_w[2]}] [get_ports            \
{pku_load_flush_w[1]}] [get_ports {pku_load_flush_w[0]}] [get_ports            \
{pku_ds_e[7]}] [get_ports {pku_ds_e[6]}] [get_ports {pku_ds_e[5]}] [get_ports  \
{pku_ds_e[4]}] [get_ports {pku_ds_e[3]}] [get_ports {pku_ds_e[2]}] [get_ports  \
{pku_ds_e[1]}] [get_ports {pku_ds_e[0]}] [get_ports                            \
{pku_flush_upper_buffer[7]}] [get_ports {pku_flush_upper_buffer[6]}]           \
[get_ports {pku_flush_upper_buffer[5]}] [get_ports                             \
{pku_flush_upper_buffer[4]}] [get_ports {pku_flush_upper_buffer[3]}]           \
[get_ports {pku_flush_upper_buffer[2]}] [get_ports                             \
{pku_flush_upper_buffer[1]}] [get_ports {pku_flush_upper_buffer[0]}]           \
[get_ports {pku_flush_buffer0[7]}] [get_ports {pku_flush_buffer0[6]}]          \
[get_ports {pku_flush_buffer0[5]}] [get_ports {pku_flush_buffer0[4]}]          \
[get_ports {pku_flush_buffer0[3]}] [get_ports {pku_flush_buffer0[2]}]          \
[get_ports {pku_flush_buffer0[1]}] [get_ports {pku_flush_buffer0[0]}]          \
[get_ports {pku_quiesce[7]}] [get_ports {pku_quiesce[6]}] [get_ports           \
{pku_quiesce[5]}] [get_ports {pku_quiesce[4]}] [get_ports {pku_quiesce[3]}]    \
[get_ports {pku_quiesce[2]}] [get_ports {pku_quiesce[1]}] [get_ports           \
{pku_quiesce[0]}] [get_ports {pku_inst_cnt_brtaken00[1]}] [get_ports           \
{pku_inst_cnt_brtaken00[0]}] [get_ports {pku_inst_cnt_brtaken01[1]}]           \
[get_ports {pku_inst_cnt_brtaken01[0]}] [get_ports                             \
{pku_inst_cnt_brtaken02[1]}] [get_ports {pku_inst_cnt_brtaken02[0]}]           \
[get_ports {pku_inst_cnt_brtaken03[1]}] [get_ports                             \
{pku_inst_cnt_brtaken03[0]}] [get_ports {pku_inst_cnt_brtaken04[1]}]           \
[get_ports {pku_inst_cnt_brtaken04[0]}] [get_ports                             \
{pku_inst_cnt_brtaken05[1]}] [get_ports {pku_inst_cnt_brtaken05[0]}]           \
[get_ports {pku_inst_cnt_brtaken06[1]}] [get_ports                             \
{pku_inst_cnt_brtaken06[0]}] [get_ports {pku_inst_cnt_brtaken07[1]}]           \
[get_ports {pku_inst_cnt_brtaken07[0]}] [get_ports                             \
{pku_inst_cnt_brtaken10[1]}] [get_ports {pku_inst_cnt_brtaken10[0]}]           \
[get_ports {pku_inst_cnt_brtaken11[1]}] [get_ports                             \
{pku_inst_cnt_brtaken11[0]}] [get_ports {pku_inst_cnt_brtaken12[1]}]           \
[get_ports {pku_inst_cnt_brtaken12[0]}] [get_ports                             \
{pku_inst_cnt_brtaken13[1]}] [get_ports {pku_inst_cnt_brtaken13[0]}]           \
[get_ports {pku_inst_cnt_brtaken14[1]}] [get_ports                             \
{pku_inst_cnt_brtaken14[0]}] [get_ports {pku_inst_cnt_brtaken15[1]}]           \
[get_ports {pku_inst_cnt_brtaken15[0]}] [get_ports                             \
{pku_inst_cnt_brtaken16[1]}] [get_ports {pku_inst_cnt_brtaken16[0]}]           \
[get_ports {pku_inst_cnt_brtaken17[1]}] [get_ports                             \
{pku_inst_cnt_brtaken17[0]}] [get_ports scan_out]]
group_path -name in2reg  -from [list [get_ports {tlu_halted[7]}] [get_ports {tlu_halted[6]}]           \
[get_ports {tlu_halted[5]}] [get_ports {tlu_halted[4]}] [get_ports             \
{tlu_halted[3]}] [get_ports {tlu_halted[2]}] [get_ports {tlu_halted[1]}]       \
[get_ports {tlu_halted[0]}] [get_ports tcu_do_mode] [get_ports                 \
{dec_block_store_stall[7]}] [get_ports {dec_block_store_stall[6]}] [get_ports  \
{dec_block_store_stall[5]}] [get_ports {dec_block_store_stall[4]}] [get_ports  \
{dec_block_store_stall[3]}] [get_ports {dec_block_store_stall[2]}] [get_ports  \
{dec_block_store_stall[1]}] [get_ports {dec_block_store_stall[0]}] [get_ports  \
{dec_ierr_d[1]}] [get_ports {dec_ierr_d[0]}] [get_ports {lsu_spec_enable[7]}]  \
[get_ports {lsu_spec_enable[6]}] [get_ports {lsu_spec_enable[5]}] [get_ports   \
{lsu_spec_enable[4]}] [get_ports {lsu_spec_enable[3]}] [get_ports              \
{lsu_spec_enable[2]}] [get_ports {lsu_spec_enable[1]}] [get_ports              \
{lsu_spec_enable[0]}] [get_ports {spc_core_running_status[7]}] [get_ports      \
{spc_core_running_status[6]}] [get_ports {spc_core_running_status[5]}]         \
[get_ports {spc_core_running_status[4]}] [get_ports                            \
{spc_core_running_status[3]}] [get_ports {spc_core_running_status[2]}]         \
[get_ports {spc_core_running_status[1]}] [get_ports                            \
{spc_core_running_status[0]}] [get_ports lsu_pku_pmen] [get_ports              \
{tlu_retry_state[7]}] [get_ports {tlu_retry_state[6]}] [get_ports              \
{tlu_retry_state[5]}] [get_ports {tlu_retry_state[4]}] [get_ports              \
{tlu_retry_state[3]}] [get_ports {tlu_retry_state[2]}] [get_ports              \
{tlu_retry_state[1]}] [get_ports {tlu_retry_state[0]}] [get_ports              \
{tlu_flush_ifu[7]}] [get_ports {tlu_flush_ifu[6]}] [get_ports                  \
{tlu_flush_ifu[5]}] [get_ports {tlu_flush_ifu[4]}] [get_ports                  \
{tlu_flush_ifu[3]}] [get_ports {tlu_flush_ifu[2]}] [get_ports                  \
{tlu_flush_ifu[1]}] [get_ports {tlu_flush_ifu[0]}] [get_ports                  \
{dec_true_valid_e[1]}] [get_ports {dec_true_valid_e[0]}] [get_ports            \
dec_decode0_d] [get_ports dec_decode1_d] [get_ports dec_valid0_d] [get_ports   \
dec_valid1_d] [get_ports {lsu_sync[7]}] [get_ports {lsu_sync[6]}] [get_ports   \
{lsu_sync[5]}] [get_ports {lsu_sync[4]}] [get_ports {lsu_sync[3]}] [get_ports  \
{lsu_sync[2]}] [get_ports {lsu_sync[1]}] [get_ports {lsu_sync[0]}] [get_ports  \
{lsu_complete[7]}] [get_ports {lsu_complete[6]}] [get_ports {lsu_complete[5]}] \
[get_ports {lsu_complete[4]}] [get_ports {lsu_complete[3]}] [get_ports         \
{lsu_complete[2]}] [get_ports {lsu_complete[1]}] [get_ports {lsu_complete[0]}] \
[get_ports {dec_br_taken_e[1]}] [get_ports {dec_br_taken_e[0]}] [get_ports     \
{fgu_divide_completion[7]}] [get_ports {fgu_divide_completion[6]}] [get_ports  \
{fgu_divide_completion[5]}] [get_ports {fgu_divide_completion[4]}] [get_ports  \
{fgu_divide_completion[3]}] [get_ports {fgu_divide_completion[2]}] [get_ports  \
{fgu_divide_completion[1]}] [get_ports {fgu_divide_completion[0]}] [get_ports  \
{ifu_ibuffer_write_c[7]}] [get_ports {ifu_ibuffer_write_c[6]}] [get_ports      \
{ifu_ibuffer_write_c[5]}] [get_ports {ifu_ibuffer_write_c[4]}] [get_ports      \
{ifu_ibuffer_write_c[3]}] [get_ports {ifu_ibuffer_write_c[2]}] [get_ports      \
{ifu_ibuffer_write_c[1]}] [get_ports {ifu_ibuffer_write_c[0]}] [get_ports      \
{lsu_stb_alloc[7]}] [get_ports {lsu_stb_alloc[6]}] [get_ports                  \
{lsu_stb_alloc[5]}] [get_ports {lsu_stb_alloc[4]}] [get_ports                  \
{lsu_stb_alloc[3]}] [get_ports {lsu_stb_alloc[2]}] [get_ports                  \
{lsu_stb_alloc[1]}] [get_ports {lsu_stb_alloc[0]}] [get_ports                  \
{lsu_stb_dealloc[7]}] [get_ports {lsu_stb_dealloc[6]}] [get_ports              \
{lsu_stb_dealloc[5]}] [get_ports {lsu_stb_dealloc[4]}] [get_ports              \
{lsu_stb_dealloc[3]}] [get_ports {lsu_stb_dealloc[2]}] [get_ports              \
{lsu_stb_dealloc[1]}] [get_ports {lsu_stb_dealloc[0]}] [get_ports              \
{lsu_block_store_kill[7]}] [get_ports {lsu_block_store_kill[6]}] [get_ports    \
{lsu_block_store_kill[5]}] [get_ports {lsu_block_store_kill[4]}] [get_ports    \
{lsu_block_store_kill[3]}] [get_ports {lsu_block_store_kill[2]}] [get_ports    \
{lsu_block_store_kill[1]}] [get_ports {lsu_block_store_kill[0]}] [get_ports    \
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
{ifu_buf0_inst1[31]}] [get_ports {ifu_buf0_inst1[30]}] [get_ports              \
{ifu_buf0_inst1[29]}] [get_ports {ifu_buf0_inst1[28]}] [get_ports              \
{ifu_buf0_inst1[27]}] [get_ports {ifu_buf0_inst1[26]}] [get_ports              \
{ifu_buf0_inst1[25]}] [get_ports {ifu_buf0_inst1[24]}] [get_ports              \
{ifu_buf0_inst1[23]}] [get_ports {ifu_buf0_inst1[22]}] [get_ports              \
{ifu_buf0_inst1[21]}] [get_ports {ifu_buf0_inst1[20]}] [get_ports              \
{ifu_buf0_inst1[19]}] [get_ports {ifu_buf0_inst1[18]}] [get_ports              \
{ifu_buf0_inst1[17]}] [get_ports {ifu_buf0_inst1[16]}] [get_ports              \
{ifu_buf0_inst1[15]}] [get_ports {ifu_buf0_inst1[14]}] [get_ports              \
{ifu_buf0_inst1[13]}] [get_ports {ifu_buf0_inst1[12]}] [get_ports              \
{ifu_buf0_inst1[11]}] [get_ports {ifu_buf0_inst1[10]}] [get_ports              \
{ifu_buf0_inst1[9]}] [get_ports {ifu_buf0_inst1[8]}] [get_ports                \
{ifu_buf0_inst1[7]}] [get_ports {ifu_buf0_inst1[6]}] [get_ports                \
{ifu_buf0_inst1[5]}] [get_ports {ifu_buf0_inst1[4]}] [get_ports                \
{ifu_buf0_inst1[3]}] [get_ports {ifu_buf0_inst1[2]}] [get_ports                \
{ifu_buf0_inst1[1]}] [get_ports {ifu_buf0_inst1[0]}] [get_ports                \
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
{ifu_buf0_inst3[31]}] [get_ports {ifu_buf0_inst3[30]}] [get_ports              \
{ifu_buf0_inst3[29]}] [get_ports {ifu_buf0_inst3[28]}] [get_ports              \
{ifu_buf0_inst3[27]}] [get_ports {ifu_buf0_inst3[26]}] [get_ports              \
{ifu_buf0_inst3[25]}] [get_ports {ifu_buf0_inst3[24]}] [get_ports              \
{ifu_buf0_inst3[23]}] [get_ports {ifu_buf0_inst3[22]}] [get_ports              \
{ifu_buf0_inst3[21]}] [get_ports {ifu_buf0_inst3[20]}] [get_ports              \
{ifu_buf0_inst3[19]}] [get_ports {ifu_buf0_inst3[18]}] [get_ports              \
{ifu_buf0_inst3[17]}] [get_ports {ifu_buf0_inst3[16]}] [get_ports              \
{ifu_buf0_inst3[15]}] [get_ports {ifu_buf0_inst3[14]}] [get_ports              \
{ifu_buf0_inst3[13]}] [get_ports {ifu_buf0_inst3[12]}] [get_ports              \
{ifu_buf0_inst3[11]}] [get_ports {ifu_buf0_inst3[10]}] [get_ports              \
{ifu_buf0_inst3[9]}] [get_ports {ifu_buf0_inst3[8]}] [get_ports                \
{ifu_buf0_inst3[7]}] [get_ports {ifu_buf0_inst3[6]}] [get_ports                \
{ifu_buf0_inst3[5]}] [get_ports {ifu_buf0_inst3[4]}] [get_ports                \
{ifu_buf0_inst3[3]}] [get_ports {ifu_buf0_inst3[2]}] [get_ports                \
{ifu_buf0_inst3[1]}] [get_ports {ifu_buf0_inst3[0]}] [get_ports                \
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
{ifu_buf0_inst5[31]}] [get_ports {ifu_buf0_inst5[30]}] [get_ports              \
{ifu_buf0_inst5[29]}] [get_ports {ifu_buf0_inst5[28]}] [get_ports              \
{ifu_buf0_inst5[27]}] [get_ports {ifu_buf0_inst5[26]}] [get_ports              \
{ifu_buf0_inst5[25]}] [get_ports {ifu_buf0_inst5[24]}] [get_ports              \
{ifu_buf0_inst5[23]}] [get_ports {ifu_buf0_inst5[22]}] [get_ports              \
{ifu_buf0_inst5[21]}] [get_ports {ifu_buf0_inst5[20]}] [get_ports              \
{ifu_buf0_inst5[19]}] [get_ports {ifu_buf0_inst5[18]}] [get_ports              \
{ifu_buf0_inst5[17]}] [get_ports {ifu_buf0_inst5[16]}] [get_ports              \
{ifu_buf0_inst5[15]}] [get_ports {ifu_buf0_inst5[14]}] [get_ports              \
{ifu_buf0_inst5[13]}] [get_ports {ifu_buf0_inst5[12]}] [get_ports              \
{ifu_buf0_inst5[11]}] [get_ports {ifu_buf0_inst5[10]}] [get_ports              \
{ifu_buf0_inst5[9]}] [get_ports {ifu_buf0_inst5[8]}] [get_ports                \
{ifu_buf0_inst5[7]}] [get_ports {ifu_buf0_inst5[6]}] [get_ports                \
{ifu_buf0_inst5[5]}] [get_ports {ifu_buf0_inst5[4]}] [get_ports                \
{ifu_buf0_inst5[3]}] [get_ports {ifu_buf0_inst5[2]}] [get_ports                \
{ifu_buf0_inst5[1]}] [get_ports {ifu_buf0_inst5[0]}] [get_ports                \
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
{ifu_buf0_inst7[31]}] [get_ports {ifu_buf0_inst7[30]}] [get_ports              \
{ifu_buf0_inst7[29]}] [get_ports {ifu_buf0_inst7[28]}] [get_ports              \
{ifu_buf0_inst7[27]}] [get_ports {ifu_buf0_inst7[26]}] [get_ports              \
{ifu_buf0_inst7[25]}] [get_ports {ifu_buf0_inst7[24]}] [get_ports              \
{ifu_buf0_inst7[23]}] [get_ports {ifu_buf0_inst7[22]}] [get_ports              \
{ifu_buf0_inst7[21]}] [get_ports {ifu_buf0_inst7[20]}] [get_ports              \
{ifu_buf0_inst7[19]}] [get_ports {ifu_buf0_inst7[18]}] [get_ports              \
{ifu_buf0_inst7[17]}] [get_ports {ifu_buf0_inst7[16]}] [get_ports              \
{ifu_buf0_inst7[15]}] [get_ports {ifu_buf0_inst7[14]}] [get_ports              \
{ifu_buf0_inst7[13]}] [get_ports {ifu_buf0_inst7[12]}] [get_ports              \
{ifu_buf0_inst7[11]}] [get_ports {ifu_buf0_inst7[10]}] [get_ports              \
{ifu_buf0_inst7[9]}] [get_ports {ifu_buf0_inst7[8]}] [get_ports                \
{ifu_buf0_inst7[7]}] [get_ports {ifu_buf0_inst7[6]}] [get_ports                \
{ifu_buf0_inst7[5]}] [get_ports {ifu_buf0_inst7[4]}] [get_ports                \
{ifu_buf0_inst7[3]}] [get_ports {ifu_buf0_inst7[2]}] [get_ports                \
{ifu_buf0_inst7[1]}] [get_ports {ifu_buf0_inst7[0]}] [get_ports                \
{ifu_buf0_valid_p[7]}] [get_ports {ifu_buf0_valid_p[6]}] [get_ports            \
{ifu_buf0_valid_p[5]}] [get_ports {ifu_buf0_valid_p[4]}] [get_ports            \
{ifu_buf0_valid_p[3]}] [get_ports {ifu_buf0_valid_p[2]}] [get_ports            \
{ifu_buf0_valid_p[1]}] [get_ports {ifu_buf0_valid_p[0]}] [get_ports            \
{ifu_upper_buffer_valid_p[7]}] [get_ports {ifu_upper_buffer_valid_p[6]}]       \
[get_ports {ifu_upper_buffer_valid_p[5]}] [get_ports                           \
{ifu_upper_buffer_valid_p[4]}] [get_ports {ifu_upper_buffer_valid_p[3]}]       \
[get_ports {ifu_upper_buffer_valid_p[2]}] [get_ports                           \
{ifu_upper_buffer_valid_p[1]}] [get_ports {ifu_upper_buffer_valid_p[0]}]       \
[get_clocks l2clk] [get_ports scan_in] [get_ports tcu_pce_ov] [get_ports       \
spc_aclk] [get_ports spc_bclk] [get_ports tcu_scan_en]]  -to [list [get_pins {pck1_lruf_d0_0_q_reg[0]/D}] [get_pins                    \
{pck1_lruf_d0_0_q_reg[1]/D}] [get_pins {pck1_lruf_d0_0_q_reg[2]/D}] [get_pins  \
{pck1_lruf_d0_0_q_reg[3]/D}] [get_pins {pck1_lruf_d0_0_q_reg[4]/D}] [get_pins  \
{pck1_lruf_d0_0_q_reg[5]/D}] [get_pins {pck1_lruf_d0_0_q_reg[6]/D}] [get_pins  \
{pck1_lruf_d0_0_q_reg[7]/D}] [get_pins pck1_clkgen_c_0_l1en_reg/D] [get_pins   \
{swl7_flush_mf_d0_0_q_reg[0]/D}] [get_pins                                     \
{swl7_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl7_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl7_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl7_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl7_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl7_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl7_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl7_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl7_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl7_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl7_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl7_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl7_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl7_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl7_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl7_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl7_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl7_fguf_d0_0_q_reg[1]/D}] [get_pins {swl7_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl7_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl7_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl7_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl7_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl7_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl7_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl7_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl7_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl7_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl7_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl7_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl7_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl7_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl7_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl7_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl7_idestf_d0_0_q_reg[0]/D}] [get_pins {swl7_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl7_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl7_idestf_d0_0_q_reg[3]/D}] [get_pins {swl7_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl7_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl7_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl7_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl7_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl7_specbref_d0_0_q_reg[0]/D}] [get_pins {swl7_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl7_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl7_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl7_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl7_specldf_d0_0_q_reg[2]/D}] [get_pins {swl7_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl7_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl7_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl7_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl7_rdf_d0_0_q_reg[1]/D}] [get_pins {swl7_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl7_rdf_d0_0_q_reg[3]/D}] [get_pins {swl7_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl7_rdf_d0_0_q_reg[5]/D}] [get_pins {swl7_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl7_rdf_d0_0_q_reg[7]/D}] [get_pins {swl7_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl7_rdf_d0_0_q_reg[9]/D}] [get_pins {swl7_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl7_rdf_d0_0_q_reg[11]/D}] [get_pins {swl7_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl7_rdf_d0_0_q_reg[13]/D}] [get_pins {swl7_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl7_rdf_d0_0_q_reg[15]/D}] [get_pins {swl7_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl7_rdf_d0_0_q_reg[17]/D}] [get_pins {swl7_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl7_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl7_data_df_d0_0_q_reg[0]/D}] [get_pins {swl7_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl7_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl7_data_df_d0_0_q_reg[3]/D}] [get_pins {swl7_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl7_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl7_data_df_d0_0_q_reg[6]/D}] [get_pins {swl7_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl7_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl7_data_df_d0_0_q_reg[9]/D}] [get_pins {swl7_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl7_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[12]/D}] [get_pins {swl7_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl7_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[15]/D}] [get_pins {swl7_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl7_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[18]/D}] [get_pins {swl7_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl7_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[21]/D}] [get_pins {swl7_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl7_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl7_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl7_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl7_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl7_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl7_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl7_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl7_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl7_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl7_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl7_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl7_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl7_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl7_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl7_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl7_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl7_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl7_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl7_readyf_d0_0_q_reg[0]/D}] [get_pins {swl7_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl7_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl7_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl7_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl7_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl7_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl7_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl7_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl7_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl7_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl7_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl7_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl7_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl7_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl7_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl7_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl7_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl7_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl7_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl7_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl7_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl7_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl7_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl7_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl7_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl7_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl7_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl7_clkgenactive_c_0_l1en_reg/D] [get_pins swl7_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl7_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl7_clkgen_c_0_l1en_reg/D] [get_pins {swl6_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl6_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl6_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl6_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl6_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl6_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl6_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl6_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl6_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl6_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl6_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl6_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl6_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl6_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl6_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl6_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl6_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl6_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl6_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl6_fguf_d0_0_q_reg[1]/D}] [get_pins {swl6_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl6_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl6_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl6_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl6_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl6_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl6_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl6_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl6_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl6_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl6_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl6_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl6_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl6_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl6_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl6_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl6_idestf_d0_0_q_reg[0]/D}] [get_pins {swl6_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl6_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl6_idestf_d0_0_q_reg[3]/D}] [get_pins {swl6_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl6_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl6_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl6_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl6_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl6_specbref_d0_0_q_reg[0]/D}] [get_pins {swl6_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl6_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl6_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl6_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl6_specldf_d0_0_q_reg[2]/D}] [get_pins {swl6_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl6_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl6_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl6_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl6_rdf_d0_0_q_reg[1]/D}] [get_pins {swl6_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl6_rdf_d0_0_q_reg[3]/D}] [get_pins {swl6_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl6_rdf_d0_0_q_reg[5]/D}] [get_pins {swl6_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl6_rdf_d0_0_q_reg[7]/D}] [get_pins {swl6_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl6_rdf_d0_0_q_reg[9]/D}] [get_pins {swl6_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl6_rdf_d0_0_q_reg[11]/D}] [get_pins {swl6_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl6_rdf_d0_0_q_reg[13]/D}] [get_pins {swl6_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl6_rdf_d0_0_q_reg[15]/D}] [get_pins {swl6_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl6_rdf_d0_0_q_reg[17]/D}] [get_pins {swl6_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl6_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl6_data_df_d0_0_q_reg[0]/D}] [get_pins {swl6_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl6_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl6_data_df_d0_0_q_reg[3]/D}] [get_pins {swl6_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl6_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl6_data_df_d0_0_q_reg[6]/D}] [get_pins {swl6_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl6_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl6_data_df_d0_0_q_reg[9]/D}] [get_pins {swl6_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl6_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[12]/D}] [get_pins {swl6_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl6_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[15]/D}] [get_pins {swl6_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl6_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[18]/D}] [get_pins {swl6_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl6_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[21]/D}] [get_pins {swl6_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl6_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl6_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl6_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl6_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl6_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl6_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl6_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl6_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl6_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl6_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl6_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl6_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl6_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl6_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl6_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl6_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl6_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl6_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl6_readyf_d0_0_q_reg[0]/D}] [get_pins {swl6_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl6_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl6_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl6_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl6_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl6_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl6_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl6_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl6_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl6_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl6_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl6_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl6_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl6_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl6_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl6_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl6_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl6_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl6_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl6_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl6_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl6_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl6_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl6_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl6_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl6_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl6_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl6_clkgenactive_c_0_l1en_reg/D] [get_pins swl6_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl6_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl6_clkgen_c_0_l1en_reg/D] [get_pins {swl5_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl5_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl5_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl5_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl5_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl5_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl5_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl5_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl5_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl5_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl5_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl5_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl5_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl5_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl5_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl5_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl5_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl5_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl5_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl5_fguf_d0_0_q_reg[1]/D}] [get_pins {swl5_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl5_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl5_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl5_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl5_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl5_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl5_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl5_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl5_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl5_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl5_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl5_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl5_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl5_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl5_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl5_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl5_idestf_d0_0_q_reg[0]/D}] [get_pins {swl5_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl5_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl5_idestf_d0_0_q_reg[3]/D}] [get_pins {swl5_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl5_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl5_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl5_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl5_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl5_specbref_d0_0_q_reg[0]/D}] [get_pins {swl5_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl5_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl5_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl5_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl5_specldf_d0_0_q_reg[2]/D}] [get_pins {swl5_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl5_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl5_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl5_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl5_rdf_d0_0_q_reg[1]/D}] [get_pins {swl5_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl5_rdf_d0_0_q_reg[3]/D}] [get_pins {swl5_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl5_rdf_d0_0_q_reg[5]/D}] [get_pins {swl5_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl5_rdf_d0_0_q_reg[7]/D}] [get_pins {swl5_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl5_rdf_d0_0_q_reg[9]/D}] [get_pins {swl5_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl5_rdf_d0_0_q_reg[11]/D}] [get_pins {swl5_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl5_rdf_d0_0_q_reg[13]/D}] [get_pins {swl5_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl5_rdf_d0_0_q_reg[15]/D}] [get_pins {swl5_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl5_rdf_d0_0_q_reg[17]/D}] [get_pins {swl5_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl5_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl5_data_df_d0_0_q_reg[0]/D}] [get_pins {swl5_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl5_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl5_data_df_d0_0_q_reg[3]/D}] [get_pins {swl5_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl5_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl5_data_df_d0_0_q_reg[6]/D}] [get_pins {swl5_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl5_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl5_data_df_d0_0_q_reg[9]/D}] [get_pins {swl5_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl5_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[12]/D}] [get_pins {swl5_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl5_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[15]/D}] [get_pins {swl5_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl5_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[18]/D}] [get_pins {swl5_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl5_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[21]/D}] [get_pins {swl5_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl5_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl5_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl5_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl5_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl5_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl5_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl5_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl5_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl5_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl5_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl5_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl5_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl5_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl5_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl5_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl5_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl5_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl5_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl5_readyf_d0_0_q_reg[0]/D}] [get_pins {swl5_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl5_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl5_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl5_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl5_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl5_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl5_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl5_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl5_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl5_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl5_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl5_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl5_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl5_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl5_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl5_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl5_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl5_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl5_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl5_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl5_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl5_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl5_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl5_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl5_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl5_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl5_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl5_clkgenactive_c_0_l1en_reg/D] [get_pins swl5_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl5_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl5_clkgen_c_0_l1en_reg/D] [get_pins {swl4_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl4_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl4_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl4_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl4_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl4_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl4_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl4_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl4_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl4_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl4_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl4_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl4_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl4_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl4_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl4_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl4_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl4_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl4_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl4_fguf_d0_0_q_reg[1]/D}] [get_pins {swl4_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl4_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl4_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl4_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl4_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl4_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl4_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl4_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl4_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl4_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl4_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl4_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl4_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl4_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl4_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl4_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl4_idestf_d0_0_q_reg[0]/D}] [get_pins {swl4_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl4_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl4_idestf_d0_0_q_reg[3]/D}] [get_pins {swl4_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl4_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl4_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl4_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl4_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl4_specbref_d0_0_q_reg[0]/D}] [get_pins {swl4_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl4_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl4_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl4_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl4_specldf_d0_0_q_reg[2]/D}] [get_pins {swl4_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl4_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl4_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl4_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl4_rdf_d0_0_q_reg[1]/D}] [get_pins {swl4_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl4_rdf_d0_0_q_reg[3]/D}] [get_pins {swl4_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl4_rdf_d0_0_q_reg[5]/D}] [get_pins {swl4_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl4_rdf_d0_0_q_reg[7]/D}] [get_pins {swl4_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl4_rdf_d0_0_q_reg[9]/D}] [get_pins {swl4_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl4_rdf_d0_0_q_reg[11]/D}] [get_pins {swl4_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl4_rdf_d0_0_q_reg[13]/D}] [get_pins {swl4_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl4_rdf_d0_0_q_reg[15]/D}] [get_pins {swl4_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl4_rdf_d0_0_q_reg[17]/D}] [get_pins {swl4_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl4_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl4_data_df_d0_0_q_reg[0]/D}] [get_pins {swl4_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl4_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl4_data_df_d0_0_q_reg[3]/D}] [get_pins {swl4_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl4_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl4_data_df_d0_0_q_reg[6]/D}] [get_pins {swl4_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl4_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl4_data_df_d0_0_q_reg[9]/D}] [get_pins {swl4_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl4_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[12]/D}] [get_pins {swl4_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl4_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[15]/D}] [get_pins {swl4_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl4_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[18]/D}] [get_pins {swl4_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl4_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[21]/D}] [get_pins {swl4_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl4_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl4_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl4_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl4_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl4_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl4_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl4_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl4_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl4_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl4_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl4_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl4_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl4_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl4_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl4_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl4_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl4_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl4_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl4_readyf_d0_0_q_reg[0]/D}] [get_pins {swl4_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl4_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl4_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl4_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl4_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl4_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl4_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl4_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl4_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl4_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl4_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl4_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl4_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl4_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl4_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl4_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl4_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl4_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl4_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl4_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl4_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl4_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl4_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl4_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl4_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl4_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl4_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl4_clkgenactive_c_0_l1en_reg/D] [get_pins swl4_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl4_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl4_clkgen_c_0_l1en_reg/D] [get_pins {pck0_lruf_d0_0_q_reg[0]/D}] [get_pins   \
{pck0_lruf_d0_0_q_reg[1]/D}] [get_pins {pck0_lruf_d0_0_q_reg[2]/D}] [get_pins  \
{pck0_lruf_d0_0_q_reg[3]/D}] [get_pins {pck0_lruf_d0_0_q_reg[4]/D}] [get_pins  \
{pck0_lruf_d0_0_q_reg[5]/D}] [get_pins {pck0_lruf_d0_0_q_reg[6]/D}] [get_pins  \
{pck0_lruf_d0_0_q_reg[7]/D}] [get_pins pck0_clkgen_c_0_l1en_reg/D] [get_pins   \
{swl3_flush_mf_d0_0_q_reg[0]/D}] [get_pins                                     \
{swl3_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl3_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl3_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl3_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl3_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl3_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl3_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl3_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl3_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl3_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl3_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl3_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl3_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl3_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl3_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl3_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl3_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl3_fguf_d0_0_q_reg[1]/D}] [get_pins {swl3_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl3_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl3_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl3_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl3_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl3_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl3_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl3_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl3_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl3_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl3_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl3_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl3_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl3_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl3_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl3_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl3_idestf_d0_0_q_reg[0]/D}] [get_pins {swl3_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl3_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl3_idestf_d0_0_q_reg[3]/D}] [get_pins {swl3_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl3_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl3_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl3_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl3_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl3_specbref_d0_0_q_reg[0]/D}] [get_pins {swl3_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl3_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl3_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl3_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl3_specldf_d0_0_q_reg[2]/D}] [get_pins {swl3_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl3_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl3_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl3_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl3_rdf_d0_0_q_reg[1]/D}] [get_pins {swl3_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl3_rdf_d0_0_q_reg[3]/D}] [get_pins {swl3_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl3_rdf_d0_0_q_reg[5]/D}] [get_pins {swl3_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl3_rdf_d0_0_q_reg[7]/D}] [get_pins {swl3_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl3_rdf_d0_0_q_reg[9]/D}] [get_pins {swl3_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl3_rdf_d0_0_q_reg[11]/D}] [get_pins {swl3_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl3_rdf_d0_0_q_reg[13]/D}] [get_pins {swl3_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl3_rdf_d0_0_q_reg[15]/D}] [get_pins {swl3_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl3_rdf_d0_0_q_reg[17]/D}] [get_pins {swl3_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl3_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl3_data_df_d0_0_q_reg[0]/D}] [get_pins {swl3_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl3_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl3_data_df_d0_0_q_reg[3]/D}] [get_pins {swl3_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl3_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl3_data_df_d0_0_q_reg[6]/D}] [get_pins {swl3_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl3_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl3_data_df_d0_0_q_reg[9]/D}] [get_pins {swl3_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl3_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[12]/D}] [get_pins {swl3_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl3_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[15]/D}] [get_pins {swl3_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl3_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[18]/D}] [get_pins {swl3_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl3_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[21]/D}] [get_pins {swl3_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl3_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl3_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl3_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl3_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl3_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl3_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl3_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl3_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl3_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl3_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl3_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl3_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl3_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl3_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl3_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl3_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl3_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl3_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl3_readyf_d0_0_q_reg[0]/D}] [get_pins {swl3_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl3_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl3_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl3_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl3_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl3_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl3_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl3_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl3_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl3_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl3_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl3_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl3_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl3_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl3_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl3_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl3_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl3_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl3_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl3_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl3_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl3_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl3_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl3_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl3_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl3_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl3_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl3_clkgenactive_c_0_l1en_reg/D] [get_pins swl3_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl3_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl3_clkgen_c_0_l1en_reg/D] [get_pins {swl2_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl2_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl2_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl2_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl2_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl2_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl2_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl2_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl2_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl2_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl2_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl2_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl2_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl2_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl2_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl2_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl2_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl2_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl2_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl2_fguf_d0_0_q_reg[1]/D}] [get_pins {swl2_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl2_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl2_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl2_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl2_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl2_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl2_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl2_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl2_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl2_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl2_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl2_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl2_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl2_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl2_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl2_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl2_idestf_d0_0_q_reg[0]/D}] [get_pins {swl2_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl2_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl2_idestf_d0_0_q_reg[3]/D}] [get_pins {swl2_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl2_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl2_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl2_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl2_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl2_specbref_d0_0_q_reg[0]/D}] [get_pins {swl2_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl2_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl2_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl2_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl2_specldf_d0_0_q_reg[2]/D}] [get_pins {swl2_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl2_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl2_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl2_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl2_rdf_d0_0_q_reg[1]/D}] [get_pins {swl2_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl2_rdf_d0_0_q_reg[3]/D}] [get_pins {swl2_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl2_rdf_d0_0_q_reg[5]/D}] [get_pins {swl2_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl2_rdf_d0_0_q_reg[7]/D}] [get_pins {swl2_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl2_rdf_d0_0_q_reg[9]/D}] [get_pins {swl2_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl2_rdf_d0_0_q_reg[11]/D}] [get_pins {swl2_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl2_rdf_d0_0_q_reg[13]/D}] [get_pins {swl2_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl2_rdf_d0_0_q_reg[15]/D}] [get_pins {swl2_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl2_rdf_d0_0_q_reg[17]/D}] [get_pins {swl2_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl2_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl2_data_df_d0_0_q_reg[0]/D}] [get_pins {swl2_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl2_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl2_data_df_d0_0_q_reg[3]/D}] [get_pins {swl2_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl2_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl2_data_df_d0_0_q_reg[6]/D}] [get_pins {swl2_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl2_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl2_data_df_d0_0_q_reg[9]/D}] [get_pins {swl2_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl2_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[12]/D}] [get_pins {swl2_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl2_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[15]/D}] [get_pins {swl2_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl2_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[18]/D}] [get_pins {swl2_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl2_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[21]/D}] [get_pins {swl2_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl2_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl2_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl2_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl2_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl2_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl2_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl2_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl2_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl2_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl2_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl2_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl2_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl2_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl2_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl2_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl2_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl2_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl2_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl2_readyf_d0_0_q_reg[0]/D}] [get_pins {swl2_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl2_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl2_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl2_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl2_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl2_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl2_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl2_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl2_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl2_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl2_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl2_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl2_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl2_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl2_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl2_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl2_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl2_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl2_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl2_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl2_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl2_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl2_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl2_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl2_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl2_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl2_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl2_clkgenactive_c_0_l1en_reg/D] [get_pins swl2_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl2_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl2_clkgen_c_0_l1en_reg/D] [get_pins {swl1_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl1_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl1_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl1_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl1_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl1_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl1_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl1_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl1_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl1_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl1_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl1_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl1_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl1_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl1_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl1_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl1_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl1_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl1_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl1_fguf_d0_0_q_reg[1]/D}] [get_pins {swl1_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl1_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl1_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl1_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl1_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl1_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl1_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl1_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl1_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl1_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl1_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl1_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl1_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl1_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl1_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl1_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl1_idestf_d0_0_q_reg[0]/D}] [get_pins {swl1_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl1_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl1_idestf_d0_0_q_reg[3]/D}] [get_pins {swl1_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl1_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl1_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl1_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl1_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl1_specbref_d0_0_q_reg[0]/D}] [get_pins {swl1_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl1_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl1_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl1_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl1_specldf_d0_0_q_reg[2]/D}] [get_pins {swl1_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl1_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl1_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl1_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl1_rdf_d0_0_q_reg[1]/D}] [get_pins {swl1_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl1_rdf_d0_0_q_reg[3]/D}] [get_pins {swl1_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl1_rdf_d0_0_q_reg[5]/D}] [get_pins {swl1_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl1_rdf_d0_0_q_reg[7]/D}] [get_pins {swl1_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl1_rdf_d0_0_q_reg[9]/D}] [get_pins {swl1_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl1_rdf_d0_0_q_reg[11]/D}] [get_pins {swl1_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl1_rdf_d0_0_q_reg[13]/D}] [get_pins {swl1_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl1_rdf_d0_0_q_reg[15]/D}] [get_pins {swl1_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl1_rdf_d0_0_q_reg[17]/D}] [get_pins {swl1_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl1_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl1_data_df_d0_0_q_reg[0]/D}] [get_pins {swl1_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl1_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl1_data_df_d0_0_q_reg[3]/D}] [get_pins {swl1_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl1_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl1_data_df_d0_0_q_reg[6]/D}] [get_pins {swl1_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl1_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl1_data_df_d0_0_q_reg[9]/D}] [get_pins {swl1_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl1_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[12]/D}] [get_pins {swl1_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl1_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[15]/D}] [get_pins {swl1_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl1_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[18]/D}] [get_pins {swl1_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl1_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[21]/D}] [get_pins {swl1_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl1_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl1_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl1_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl1_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl1_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl1_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl1_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl1_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl1_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl1_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl1_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl1_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl1_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl1_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl1_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl1_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl1_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl1_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl1_readyf_d0_0_q_reg[0]/D}] [get_pins {swl1_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl1_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl1_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl1_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl1_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl1_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl1_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl1_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl1_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl1_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl1_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl1_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl1_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl1_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl1_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl1_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl1_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl1_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl1_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl1_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl1_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl1_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl1_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl1_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl1_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl1_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl1_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl1_clkgenactive_c_0_l1en_reg/D] [get_pins swl1_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl1_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl1_clkgen_c_0_l1en_reg/D] [get_pins {swl0_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl0_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl0_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl0_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl0_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl0_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl0_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl0_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl0_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl0_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl0_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl0_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl0_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl0_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl0_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl0_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl0_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl0_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl0_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl0_fguf_d0_0_q_reg[1]/D}] [get_pins {swl0_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl0_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl0_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl0_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl0_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl0_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl0_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl0_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl0_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl0_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl0_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl0_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl0_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl0_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl0_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl0_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl0_idestf_d0_0_q_reg[0]/D}] [get_pins {swl0_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl0_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl0_idestf_d0_0_q_reg[3]/D}] [get_pins {swl0_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl0_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl0_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl0_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl0_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl0_specbref_d0_0_q_reg[0]/D}] [get_pins {swl0_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl0_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl0_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl0_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl0_specldf_d0_0_q_reg[2]/D}] [get_pins {swl0_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl0_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl0_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl0_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl0_rdf_d0_0_q_reg[1]/D}] [get_pins {swl0_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl0_rdf_d0_0_q_reg[3]/D}] [get_pins {swl0_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl0_rdf_d0_0_q_reg[5]/D}] [get_pins {swl0_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl0_rdf_d0_0_q_reg[7]/D}] [get_pins {swl0_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl0_rdf_d0_0_q_reg[9]/D}] [get_pins {swl0_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl0_rdf_d0_0_q_reg[11]/D}] [get_pins {swl0_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl0_rdf_d0_0_q_reg[13]/D}] [get_pins {swl0_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl0_rdf_d0_0_q_reg[15]/D}] [get_pins {swl0_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl0_rdf_d0_0_q_reg[17]/D}] [get_pins {swl0_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl0_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl0_data_df_d0_0_q_reg[0]/D}] [get_pins {swl0_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl0_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl0_data_df_d0_0_q_reg[3]/D}] [get_pins {swl0_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl0_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl0_data_df_d0_0_q_reg[6]/D}] [get_pins {swl0_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl0_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl0_data_df_d0_0_q_reg[9]/D}] [get_pins {swl0_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl0_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[12]/D}] [get_pins {swl0_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl0_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[15]/D}] [get_pins {swl0_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl0_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[18]/D}] [get_pins {swl0_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl0_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[21]/D}] [get_pins {swl0_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl0_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl0_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl0_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl0_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl0_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl0_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl0_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl0_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl0_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl0_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl0_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl0_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl0_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl0_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl0_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl0_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl0_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl0_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl0_readyf_d0_0_q_reg[0]/D}] [get_pins {swl0_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl0_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl0_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl0_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl0_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl0_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl0_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl0_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl0_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl0_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl0_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl0_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl0_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl0_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl0_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl0_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl0_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl0_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl0_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl0_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl0_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl0_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl0_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl0_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl0_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl0_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl0_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl0_clkgenactive_c_0_l1en_reg/D] [get_pins swl0_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl0_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl0_clkgen_c_0_l1en_reg/D]]
group_path -name reg2out  -from [list [get_pins {pck1_lruf_d0_0_q_reg[0]/CP}] [get_pins                 \
{pck1_lruf_d0_0_q_reg[1]/CP}] [get_pins {pck1_lruf_d0_0_q_reg[2]/CP}]          \
[get_pins {pck1_lruf_d0_0_q_reg[3]/CP}] [get_pins                              \
{pck1_lruf_d0_0_q_reg[4]/CP}] [get_pins {pck1_lruf_d0_0_q_reg[5]/CP}]          \
[get_pins {pck1_lruf_d0_0_q_reg[6]/CP}] [get_pins                              \
{pck1_lruf_d0_0_q_reg[7]/CP}] [get_pins pck1_clkgen_c_0_l1en_reg/CPN]          \
[get_pins {swl7_flush_mf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl7_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl7_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl7_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl7_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl7_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl7_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl7_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl7_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl7_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl7_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl7_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl7_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl7_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl7_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl7_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl7_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl7_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl7_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl7_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl7_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl7_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl7_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl7_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl7_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl7_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl7_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl7_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl7_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl7_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl7_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl7_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl7_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl7_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl7_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl7_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl7_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl7_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl7_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl7_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl7_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl7_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl7_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl7_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl7_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl7_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl7_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl7_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl7_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl7_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl7_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl7_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl7_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl7_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl7_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl7_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl7_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl7_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl7_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl7_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl7_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl7_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl7_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl7_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl7_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl7_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl7_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl7_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl7_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl7_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl7_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl7_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl7_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl7_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl7_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl7_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl7_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl7_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl7_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl7_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl7_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl7_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl7_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl7_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl7_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl7_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl7_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl7_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl7_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl7_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl7_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl7_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl7_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl7_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl7_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl7_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl7_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl7_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl7_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl7_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl7_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl7_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl7_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl7_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl7_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl7_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl7_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl7_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl7_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl7_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl7_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl7_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl7_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl7_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl7_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl7_clkgen_c_0_l1en_reg/CPN] [get_pins {swl6_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl6_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl6_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl6_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl6_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl6_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl6_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl6_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl6_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl6_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl6_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl6_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl6_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl6_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl6_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl6_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl6_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl6_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl6_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl6_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl6_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl6_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl6_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl6_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl6_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl6_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl6_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl6_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl6_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl6_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl6_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl6_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl6_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl6_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl6_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl6_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl6_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl6_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl6_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl6_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl6_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl6_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl6_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl6_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl6_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl6_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl6_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl6_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl6_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl6_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl6_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl6_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl6_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl6_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl6_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl6_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl6_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl6_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl6_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl6_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl6_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl6_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl6_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl6_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl6_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl6_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl6_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl6_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl6_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl6_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl6_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl6_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl6_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl6_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl6_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl6_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl6_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl6_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl6_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl6_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl6_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl6_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl6_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl6_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl6_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl6_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl6_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl6_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl6_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl6_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl6_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl6_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl6_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl6_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl6_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl6_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl6_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl6_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl6_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl6_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl6_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl6_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl6_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl6_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl6_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl6_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl6_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl6_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl6_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl6_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl6_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl6_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl6_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl6_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl6_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl6_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl6_clkgen_c_0_l1en_reg/CPN] [get_pins {swl5_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl5_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl5_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl5_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl5_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl5_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl5_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl5_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl5_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl5_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl5_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl5_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl5_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl5_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl5_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl5_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl5_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl5_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl5_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl5_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl5_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl5_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl5_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl5_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl5_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl5_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl5_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl5_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl5_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl5_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl5_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl5_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl5_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl5_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl5_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl5_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl5_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl5_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl5_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl5_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl5_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl5_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl5_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl5_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl5_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl5_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl5_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl5_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl5_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl5_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl5_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl5_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl5_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl5_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl5_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl5_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl5_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl5_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl5_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl5_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl5_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl5_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl5_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl5_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl5_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl5_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl5_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl5_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl5_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl5_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl5_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl5_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl5_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl5_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl5_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl5_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl5_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl5_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl5_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl5_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl5_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl5_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl5_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl5_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl5_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl5_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl5_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl5_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl5_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl5_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl5_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl5_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl5_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl5_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl5_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl5_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl5_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl5_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl5_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl5_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl5_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl5_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl5_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl5_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl5_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl5_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl5_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl5_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl5_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl5_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl5_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl5_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl5_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl5_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl5_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl5_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl5_clkgen_c_0_l1en_reg/CPN] [get_pins {swl4_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl4_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl4_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl4_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl4_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl4_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl4_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl4_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl4_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl4_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl4_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl4_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl4_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl4_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl4_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl4_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl4_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl4_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl4_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl4_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl4_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl4_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl4_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl4_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl4_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl4_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl4_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl4_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl4_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl4_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl4_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl4_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl4_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl4_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl4_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl4_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl4_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl4_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl4_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl4_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl4_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl4_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl4_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl4_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl4_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl4_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl4_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl4_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl4_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl4_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl4_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl4_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl4_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl4_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl4_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl4_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl4_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl4_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl4_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl4_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl4_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl4_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl4_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl4_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl4_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl4_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl4_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl4_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl4_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl4_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl4_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl4_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl4_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl4_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl4_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl4_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl4_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl4_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl4_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl4_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl4_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl4_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl4_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl4_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl4_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl4_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl4_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl4_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl4_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl4_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl4_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl4_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl4_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl4_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl4_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl4_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl4_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl4_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl4_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl4_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl4_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl4_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl4_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl4_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl4_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl4_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl4_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl4_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl4_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl4_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl4_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl4_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl4_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl4_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl4_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl4_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl4_clkgen_c_0_l1en_reg/CPN] [get_pins {pck0_lruf_d0_0_q_reg[0]/CP}]          \
[get_pins {pck0_lruf_d0_0_q_reg[1]/CP}] [get_pins                              \
{pck0_lruf_d0_0_q_reg[2]/CP}] [get_pins {pck0_lruf_d0_0_q_reg[3]/CP}]          \
[get_pins {pck0_lruf_d0_0_q_reg[4]/CP}] [get_pins                              \
{pck0_lruf_d0_0_q_reg[5]/CP}] [get_pins {pck0_lruf_d0_0_q_reg[6]/CP}]          \
[get_pins {pck0_lruf_d0_0_q_reg[7]/CP}] [get_pins                              \
pck0_clkgen_c_0_l1en_reg/CPN] [get_pins {swl3_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl3_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl3_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl3_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl3_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl3_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl3_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl3_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl3_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl3_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl3_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl3_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl3_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl3_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl3_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl3_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl3_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl3_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl3_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl3_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl3_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl3_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl3_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl3_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl3_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl3_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl3_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl3_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl3_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl3_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl3_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl3_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl3_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl3_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl3_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl3_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl3_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl3_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl3_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl3_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl3_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl3_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl3_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl3_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl3_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl3_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl3_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl3_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl3_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl3_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl3_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl3_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl3_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl3_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl3_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl3_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl3_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl3_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl3_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl3_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl3_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl3_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl3_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl3_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl3_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl3_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl3_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl3_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl3_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl3_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl3_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl3_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl3_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl3_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl3_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl3_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl3_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl3_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl3_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl3_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl3_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl3_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl3_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl3_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl3_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl3_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl3_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl3_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl3_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl3_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl3_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl3_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl3_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl3_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl3_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl3_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl3_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl3_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl3_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl3_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl3_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl3_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl3_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl3_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl3_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl3_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl3_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl3_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl3_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl3_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl3_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl3_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl3_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl3_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl3_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl3_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl3_clkgen_c_0_l1en_reg/CPN] [get_pins {swl2_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl2_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl2_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl2_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl2_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl2_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl2_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl2_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl2_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl2_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl2_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl2_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl2_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl2_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl2_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl2_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl2_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl2_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl2_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl2_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl2_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl2_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl2_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl2_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl2_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl2_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl2_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl2_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl2_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl2_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl2_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl2_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl2_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl2_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl2_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl2_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl2_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl2_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl2_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl2_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl2_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl2_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl2_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl2_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl2_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl2_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl2_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl2_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl2_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl2_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl2_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl2_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl2_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl2_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl2_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl2_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl2_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl2_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl2_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl2_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl2_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl2_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl2_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl2_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl2_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl2_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl2_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl2_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl2_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl2_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl2_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl2_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl2_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl2_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl2_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl2_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl2_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl2_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl2_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl2_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl2_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl2_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl2_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl2_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl2_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl2_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl2_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl2_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl2_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl2_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl2_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl2_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl2_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl2_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl2_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl2_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl2_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl2_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl2_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl2_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl2_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl2_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl2_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl2_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl2_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl2_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl2_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl2_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl2_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl2_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl2_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl2_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl2_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl2_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl2_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl2_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl2_clkgen_c_0_l1en_reg/CPN] [get_pins {swl1_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl1_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl1_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl1_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl1_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl1_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl1_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl1_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl1_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl1_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl1_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl1_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl1_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl1_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl1_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl1_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl1_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl1_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl1_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl1_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl1_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl1_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl1_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl1_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl1_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl1_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl1_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl1_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl1_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl1_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl1_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl1_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl1_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl1_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl1_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl1_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl1_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl1_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl1_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl1_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl1_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl1_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl1_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl1_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl1_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl1_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl1_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl1_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl1_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl1_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl1_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl1_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl1_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl1_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl1_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl1_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl1_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl1_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl1_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl1_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl1_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl1_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl1_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl1_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl1_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl1_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl1_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl1_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl1_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl1_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl1_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl1_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl1_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl1_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl1_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl1_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl1_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl1_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl1_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl1_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl1_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl1_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl1_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl1_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl1_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl1_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl1_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl1_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl1_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl1_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl1_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl1_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl1_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl1_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl1_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl1_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl1_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl1_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl1_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl1_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl1_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl1_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl1_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl1_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl1_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl1_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl1_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl1_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl1_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl1_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl1_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl1_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl1_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl1_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl1_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl1_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl1_clkgen_c_0_l1en_reg/CPN] [get_pins {swl0_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl0_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl0_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl0_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl0_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl0_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl0_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl0_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl0_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl0_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl0_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl0_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl0_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl0_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl0_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl0_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl0_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl0_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl0_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl0_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl0_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl0_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl0_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl0_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl0_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl0_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl0_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl0_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl0_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl0_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl0_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl0_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl0_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl0_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl0_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl0_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl0_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl0_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl0_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl0_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl0_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl0_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl0_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl0_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl0_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl0_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl0_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl0_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl0_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl0_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl0_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl0_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl0_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl0_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl0_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl0_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl0_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl0_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl0_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl0_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl0_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl0_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl0_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl0_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl0_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl0_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl0_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl0_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl0_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl0_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl0_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl0_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl0_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl0_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl0_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl0_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl0_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl0_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl0_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl0_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl0_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl0_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl0_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl0_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl0_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl0_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl0_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl0_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl0_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl0_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl0_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl0_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl0_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl0_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl0_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl0_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl0_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl0_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl0_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl0_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl0_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl0_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl0_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl0_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl0_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl0_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl0_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl0_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl0_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl0_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl0_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl0_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl0_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl0_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl0_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl0_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl0_clkgen_c_0_l1en_reg/CPN]]  -to [list [get_ports {pku_raw_pick0_p[3]}] [get_ports {pku_raw_pick0_p[2]}]   \
[get_ports {pku_raw_pick0_p[1]}] [get_ports {pku_raw_pick0_p[0]}] [get_ports   \
{pku_raw_pick1_p[7]}] [get_ports {pku_raw_pick1_p[6]}] [get_ports              \
{pku_raw_pick1_p[5]}] [get_ports {pku_raw_pick1_p[4]}] [get_ports              \
{pku_base_pick_p[7]}] [get_ports {pku_base_pick_p[6]}] [get_ports              \
{pku_base_pick_p[5]}] [get_ports {pku_base_pick_p[4]}] [get_ports              \
{pku_base_pick_p[3]}] [get_ports {pku_base_pick_p[2]}] [get_ports              \
{pku_base_pick_p[1]}] [get_ports {pku_base_pick_p[0]}] [get_ports              \
{pku_pick_p[7]}] [get_ports {pku_pick_p[6]}] [get_ports {pku_pick_p[5]}]       \
[get_ports {pku_pick_p[4]}] [get_ports {pku_pick_p[3]}] [get_ports             \
{pku_pick_p[2]}] [get_ports {pku_pick_p[1]}] [get_ports {pku_pick_p[0]}]       \
[get_ports {pku_lsu_p[7]}] [get_ports {pku_lsu_p[6]}] [get_ports               \
{pku_lsu_p[5]}] [get_ports {pku_lsu_p[4]}] [get_ports {pku_lsu_p[3]}]          \
[get_ports {pku_lsu_p[2]}] [get_ports {pku_lsu_p[1]}] [get_ports               \
{pku_lsu_p[0]}] [get_ports {pku_fgu_p[7]}] [get_ports {pku_fgu_p[6]}]          \
[get_ports {pku_fgu_p[5]}] [get_ports {pku_fgu_p[4]}] [get_ports               \
{pku_fgu_p[3]}] [get_ports {pku_fgu_p[2]}] [get_ports {pku_fgu_p[1]}]          \
[get_ports {pku_fgu_p[0]}] [get_ports {pku_pdist_p[7]}] [get_ports             \
{pku_pdist_p[6]}] [get_ports {pku_pdist_p[5]}] [get_ports {pku_pdist_p[4]}]    \
[get_ports {pku_pdist_p[3]}] [get_ports {pku_pdist_p[2]}] [get_ports           \
{pku_pdist_p[1]}] [get_ports {pku_pdist_p[0]}] [get_ports {pku_twocycle_p[7]}] \
[get_ports {pku_twocycle_p[6]}] [get_ports {pku_twocycle_p[5]}] [get_ports     \
{pku_twocycle_p[4]}] [get_ports {pku_twocycle_p[3]}] [get_ports                \
{pku_twocycle_p[2]}] [get_ports {pku_twocycle_p[1]}] [get_ports                \
{pku_twocycle_p[0]}] [get_ports {pku_idest_p[7]}] [get_ports {pku_idest_p[6]}] \
[get_ports {pku_idest_p[5]}] [get_ports {pku_idest_p[4]}] [get_ports           \
{pku_idest_p[3]}] [get_ports {pku_idest_p[2]}] [get_ports {pku_idest_p[1]}]    \
[get_ports {pku_idest_p[0]}] [get_ports {pku_fdest_p[7]}] [get_ports           \
{pku_fdest_p[6]}] [get_ports {pku_fdest_p[5]}] [get_ports {pku_fdest_p[4]}]    \
[get_ports {pku_fdest_p[3]}] [get_ports {pku_fdest_p[2]}] [get_ports           \
{pku_fdest_p[1]}] [get_ports {pku_fdest_p[0]}] [get_ports {pku_fsrc_rd_p[7]}]  \
[get_ports {pku_fsrc_rd_p[6]}] [get_ports {pku_fsrc_rd_p[5]}] [get_ports       \
{pku_fsrc_rd_p[4]}] [get_ports {pku_fsrc_rd_p[3]}] [get_ports                  \
{pku_fsrc_rd_p[2]}] [get_ports {pku_fsrc_rd_p[1]}] [get_ports                  \
{pku_fsrc_rd_p[0]}] [get_ports {pku_isrc_rs1_p[7]}] [get_ports                 \
{pku_isrc_rs1_p[6]}] [get_ports {pku_isrc_rs1_p[5]}] [get_ports                \
{pku_isrc_rs1_p[4]}] [get_ports {pku_isrc_rs1_p[3]}] [get_ports                \
{pku_isrc_rs1_p[2]}] [get_ports {pku_isrc_rs1_p[1]}] [get_ports                \
{pku_isrc_rs1_p[0]}] [get_ports {pku_isrc_rs2_p[7]}] [get_ports                \
{pku_isrc_rs2_p[6]}] [get_ports {pku_isrc_rs2_p[5]}] [get_ports                \
{pku_isrc_rs2_p[4]}] [get_ports {pku_isrc_rs2_p[3]}] [get_ports                \
{pku_isrc_rs2_p[2]}] [get_ports {pku_isrc_rs2_p[1]}] [get_ports                \
{pku_isrc_rs2_p[0]}] [get_ports {pku_isrc_rd_p[7]}] [get_ports                 \
{pku_isrc_rd_p[6]}] [get_ports {pku_isrc_rd_p[5]}] [get_ports                  \
{pku_isrc_rd_p[4]}] [get_ports {pku_isrc_rd_p[3]}] [get_ports                  \
{pku_isrc_rd_p[2]}] [get_ports {pku_isrc_rd_p[1]}] [get_ports                  \
{pku_isrc_rd_p[0]}] [get_ports {pku_valid_e[7]}] [get_ports {pku_valid_e[6]}]  \
[get_ports {pku_valid_e[5]}] [get_ports {pku_valid_e[4]}] [get_ports           \
{pku_valid_e[3]}] [get_ports {pku_valid_e[2]}] [get_ports {pku_valid_e[1]}]    \
[get_ports {pku_valid_e[0]}] [get_ports {pku_annul_ds_dcti_brtaken0_e[7]}]     \
[get_ports {pku_annul_ds_dcti_brtaken0_e[6]}] [get_ports                       \
{pku_annul_ds_dcti_brtaken0_e[5]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[4]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[3]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[2]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[1]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken0_e[0]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[7]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[6]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[5]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[4]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[3]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[2]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[1]}] [get_ports                                  \
{pku_annul_ds_dcti_brtaken1_e[0]}] [get_ports {pku_flush_f1[7]}] [get_ports    \
{pku_flush_f1[6]}] [get_ports {pku_flush_f1[5]}] [get_ports {pku_flush_f1[4]}] \
[get_ports {pku_flush_f1[3]}] [get_ports {pku_flush_f1[2]}] [get_ports         \
{pku_flush_f1[1]}] [get_ports {pku_flush_f1[0]}] [get_ports {pku_flush_f2[7]}] \
[get_ports {pku_flush_f2[6]}] [get_ports {pku_flush_f2[5]}] [get_ports         \
{pku_flush_f2[4]}] [get_ports {pku_flush_f2[3]}] [get_ports {pku_flush_f2[2]}] \
[get_ports {pku_flush_f2[1]}] [get_ports {pku_flush_f2[0]}] [get_ports         \
{pku_flush_lb[7]}] [get_ports {pku_flush_lb[6]}] [get_ports {pku_flush_lb[5]}] \
[get_ports {pku_flush_lb[4]}] [get_ports {pku_flush_lb[3]}] [get_ports         \
{pku_flush_lb[2]}] [get_ports {pku_flush_lb[1]}] [get_ports {pku_flush_lb[0]}] \
[get_ports {pku_flush_lm[7]}] [get_ports {pku_flush_lm[6]}] [get_ports         \
{pku_flush_lm[5]}] [get_ports {pku_flush_lm[4]}] [get_ports {pku_flush_lm[3]}] \
[get_ports {pku_flush_lm[2]}] [get_ports {pku_flush_lm[1]}] [get_ports         \
{pku_flush_lm[0]}] [get_ports {pku_flush_m[7]}] [get_ports {pku_flush_m[6]}]   \
[get_ports {pku_flush_m[5]}] [get_ports {pku_flush_m[4]}] [get_ports           \
{pku_flush_m[3]}] [get_ports {pku_flush_m[2]}] [get_ports {pku_flush_m[1]}]    \
[get_ports {pku_flush_m[0]}] [get_ports {pku_flush_b[7]}] [get_ports           \
{pku_flush_b[6]}] [get_ports {pku_flush_b[5]}] [get_ports {pku_flush_b[4]}]    \
[get_ports {pku_flush_b[3]}] [get_ports {pku_flush_b[2]}] [get_ports           \
{pku_flush_b[1]}] [get_ports {pku_flush_b[0]}] [get_ports                      \
{pku_load_flush_w[7]}] [get_ports {pku_load_flush_w[6]}] [get_ports            \
{pku_load_flush_w[5]}] [get_ports {pku_load_flush_w[4]}] [get_ports            \
{pku_load_flush_w[3]}] [get_ports {pku_load_flush_w[2]}] [get_ports            \
{pku_load_flush_w[1]}] [get_ports {pku_load_flush_w[0]}] [get_ports            \
{pku_ds_e[7]}] [get_ports {pku_ds_e[6]}] [get_ports {pku_ds_e[5]}] [get_ports  \
{pku_ds_e[4]}] [get_ports {pku_ds_e[3]}] [get_ports {pku_ds_e[2]}] [get_ports  \
{pku_ds_e[1]}] [get_ports {pku_ds_e[0]}] [get_ports                            \
{pku_flush_upper_buffer[7]}] [get_ports {pku_flush_upper_buffer[6]}]           \
[get_ports {pku_flush_upper_buffer[5]}] [get_ports                             \
{pku_flush_upper_buffer[4]}] [get_ports {pku_flush_upper_buffer[3]}]           \
[get_ports {pku_flush_upper_buffer[2]}] [get_ports                             \
{pku_flush_upper_buffer[1]}] [get_ports {pku_flush_upper_buffer[0]}]           \
[get_ports {pku_flush_buffer0[7]}] [get_ports {pku_flush_buffer0[6]}]          \
[get_ports {pku_flush_buffer0[5]}] [get_ports {pku_flush_buffer0[4]}]          \
[get_ports {pku_flush_buffer0[3]}] [get_ports {pku_flush_buffer0[2]}]          \
[get_ports {pku_flush_buffer0[1]}] [get_ports {pku_flush_buffer0[0]}]          \
[get_ports {pku_quiesce[7]}] [get_ports {pku_quiesce[6]}] [get_ports           \
{pku_quiesce[5]}] [get_ports {pku_quiesce[4]}] [get_ports {pku_quiesce[3]}]    \
[get_ports {pku_quiesce[2]}] [get_ports {pku_quiesce[1]}] [get_ports           \
{pku_quiesce[0]}] [get_ports {pku_inst_cnt_brtaken00[1]}] [get_ports           \
{pku_inst_cnt_brtaken00[0]}] [get_ports {pku_inst_cnt_brtaken01[1]}]           \
[get_ports {pku_inst_cnt_brtaken01[0]}] [get_ports                             \
{pku_inst_cnt_brtaken02[1]}] [get_ports {pku_inst_cnt_brtaken02[0]}]           \
[get_ports {pku_inst_cnt_brtaken03[1]}] [get_ports                             \
{pku_inst_cnt_brtaken03[0]}] [get_ports {pku_inst_cnt_brtaken04[1]}]           \
[get_ports {pku_inst_cnt_brtaken04[0]}] [get_ports                             \
{pku_inst_cnt_brtaken05[1]}] [get_ports {pku_inst_cnt_brtaken05[0]}]           \
[get_ports {pku_inst_cnt_brtaken06[1]}] [get_ports                             \
{pku_inst_cnt_brtaken06[0]}] [get_ports {pku_inst_cnt_brtaken07[1]}]           \
[get_ports {pku_inst_cnt_brtaken07[0]}] [get_ports                             \
{pku_inst_cnt_brtaken10[1]}] [get_ports {pku_inst_cnt_brtaken10[0]}]           \
[get_ports {pku_inst_cnt_brtaken11[1]}] [get_ports                             \
{pku_inst_cnt_brtaken11[0]}] [get_ports {pku_inst_cnt_brtaken12[1]}]           \
[get_ports {pku_inst_cnt_brtaken12[0]}] [get_ports                             \
{pku_inst_cnt_brtaken13[1]}] [get_ports {pku_inst_cnt_brtaken13[0]}]           \
[get_ports {pku_inst_cnt_brtaken14[1]}] [get_ports                             \
{pku_inst_cnt_brtaken14[0]}] [get_ports {pku_inst_cnt_brtaken15[1]}]           \
[get_ports {pku_inst_cnt_brtaken15[0]}] [get_ports                             \
{pku_inst_cnt_brtaken16[1]}] [get_ports {pku_inst_cnt_brtaken16[0]}]           \
[get_ports {pku_inst_cnt_brtaken17[1]}] [get_ports                             \
{pku_inst_cnt_brtaken17[0]}] [get_ports scan_out]]
group_path -name reg2reg  -from [list [get_pins {pck1_lruf_d0_0_q_reg[0]/CP}] [get_pins                 \
{pck1_lruf_d0_0_q_reg[1]/CP}] [get_pins {pck1_lruf_d0_0_q_reg[2]/CP}]          \
[get_pins {pck1_lruf_d0_0_q_reg[3]/CP}] [get_pins                              \
{pck1_lruf_d0_0_q_reg[4]/CP}] [get_pins {pck1_lruf_d0_0_q_reg[5]/CP}]          \
[get_pins {pck1_lruf_d0_0_q_reg[6]/CP}] [get_pins                              \
{pck1_lruf_d0_0_q_reg[7]/CP}] [get_pins pck1_clkgen_c_0_l1en_reg/CPN]          \
[get_pins {swl7_flush_mf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl7_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl7_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl7_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl7_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl7_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl7_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl7_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl7_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl7_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl7_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl7_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl7_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl7_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl7_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl7_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl7_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl7_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl7_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl7_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl7_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl7_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl7_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl7_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl7_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl7_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl7_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl7_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl7_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl7_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl7_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl7_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl7_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl7_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl7_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl7_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl7_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl7_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl7_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl7_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl7_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl7_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl7_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl7_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl7_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl7_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl7_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl7_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl7_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl7_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl7_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl7_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl7_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl7_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl7_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl7_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl7_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl7_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl7_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl7_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl7_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl7_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl7_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl7_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl7_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl7_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl7_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl7_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl7_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl7_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl7_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl7_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl7_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl7_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl7_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl7_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl7_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl7_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl7_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl7_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl7_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl7_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl7_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl7_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl7_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl7_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl7_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl7_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl7_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl7_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl7_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl7_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl7_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl7_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl7_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl7_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl7_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl7_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl7_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl7_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl7_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl7_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl7_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl7_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl7_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl7_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl7_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl7_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl7_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl7_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl7_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl7_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl7_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl7_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl7_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl7_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl7_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl7_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl7_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl7_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl7_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl7_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl7_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl7_clkgen_c_0_l1en_reg/CPN] [get_pins {swl6_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl6_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl6_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl6_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl6_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl6_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl6_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl6_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl6_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl6_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl6_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl6_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl6_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl6_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl6_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl6_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl6_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl6_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl6_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl6_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl6_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl6_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl6_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl6_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl6_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl6_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl6_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl6_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl6_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl6_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl6_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl6_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl6_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl6_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl6_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl6_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl6_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl6_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl6_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl6_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl6_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl6_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl6_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl6_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl6_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl6_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl6_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl6_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl6_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl6_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl6_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl6_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl6_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl6_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl6_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl6_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl6_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl6_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl6_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl6_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl6_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl6_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl6_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl6_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl6_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl6_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl6_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl6_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl6_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl6_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl6_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl6_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl6_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl6_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl6_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl6_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl6_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl6_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl6_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl6_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl6_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl6_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl6_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl6_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl6_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl6_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl6_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl6_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl6_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl6_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl6_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl6_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl6_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl6_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl6_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl6_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl6_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl6_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl6_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl6_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl6_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl6_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl6_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl6_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl6_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl6_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl6_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl6_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl6_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl6_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl6_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl6_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl6_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl6_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl6_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl6_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl6_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl6_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl6_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl6_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl6_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl6_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl6_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl6_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl6_clkgen_c_0_l1en_reg/CPN] [get_pins {swl5_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl5_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl5_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl5_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl5_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl5_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl5_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl5_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl5_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl5_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl5_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl5_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl5_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl5_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl5_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl5_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl5_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl5_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl5_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl5_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl5_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl5_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl5_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl5_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl5_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl5_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl5_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl5_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl5_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl5_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl5_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl5_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl5_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl5_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl5_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl5_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl5_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl5_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl5_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl5_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl5_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl5_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl5_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl5_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl5_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl5_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl5_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl5_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl5_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl5_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl5_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl5_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl5_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl5_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl5_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl5_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl5_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl5_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl5_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl5_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl5_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl5_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl5_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl5_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl5_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl5_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl5_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl5_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl5_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl5_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl5_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl5_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl5_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl5_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl5_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl5_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl5_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl5_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl5_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl5_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl5_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl5_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl5_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl5_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl5_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl5_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl5_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl5_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl5_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl5_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl5_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl5_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl5_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl5_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl5_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl5_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl5_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl5_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl5_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl5_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl5_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl5_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl5_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl5_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl5_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl5_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl5_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl5_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl5_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl5_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl5_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl5_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl5_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl5_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl5_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl5_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl5_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl5_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl5_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl5_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl5_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl5_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl5_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl5_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl5_clkgen_c_0_l1en_reg/CPN] [get_pins {swl4_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl4_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl4_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl4_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl4_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl4_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl4_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl4_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl4_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl4_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl4_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl4_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl4_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl4_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl4_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl4_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl4_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl4_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl4_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl4_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl4_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl4_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl4_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl4_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl4_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl4_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl4_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl4_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl4_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl4_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl4_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl4_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl4_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl4_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl4_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl4_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl4_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl4_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl4_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl4_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl4_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl4_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl4_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl4_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl4_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl4_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl4_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl4_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl4_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl4_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl4_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl4_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl4_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl4_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl4_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl4_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl4_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl4_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl4_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl4_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl4_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl4_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl4_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl4_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl4_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl4_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl4_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl4_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl4_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl4_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl4_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl4_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl4_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl4_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl4_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl4_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl4_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl4_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl4_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl4_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl4_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl4_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl4_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl4_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl4_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl4_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl4_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl4_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl4_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl4_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl4_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl4_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl4_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl4_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl4_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl4_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl4_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl4_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl4_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl4_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl4_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl4_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl4_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl4_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl4_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl4_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl4_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl4_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl4_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl4_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl4_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl4_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl4_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl4_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl4_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl4_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl4_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl4_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl4_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl4_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl4_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl4_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl4_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl4_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl4_clkgen_c_0_l1en_reg/CPN] [get_pins {pck0_lruf_d0_0_q_reg[0]/CP}]          \
[get_pins {pck0_lruf_d0_0_q_reg[1]/CP}] [get_pins                              \
{pck0_lruf_d0_0_q_reg[2]/CP}] [get_pins {pck0_lruf_d0_0_q_reg[3]/CP}]          \
[get_pins {pck0_lruf_d0_0_q_reg[4]/CP}] [get_pins                              \
{pck0_lruf_d0_0_q_reg[5]/CP}] [get_pins {pck0_lruf_d0_0_q_reg[6]/CP}]          \
[get_pins {pck0_lruf_d0_0_q_reg[7]/CP}] [get_pins                              \
pck0_clkgen_c_0_l1en_reg/CPN] [get_pins {swl3_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl3_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl3_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl3_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl3_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl3_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl3_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl3_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl3_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl3_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl3_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl3_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl3_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl3_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl3_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl3_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl3_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl3_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl3_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl3_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl3_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl3_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl3_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl3_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl3_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl3_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl3_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl3_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl3_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl3_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl3_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl3_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl3_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl3_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl3_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl3_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl3_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl3_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl3_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl3_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl3_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl3_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl3_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl3_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl3_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl3_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl3_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl3_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl3_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl3_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl3_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl3_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl3_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl3_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl3_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl3_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl3_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl3_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl3_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl3_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl3_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl3_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl3_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl3_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl3_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl3_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl3_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl3_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl3_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl3_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl3_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl3_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl3_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl3_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl3_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl3_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl3_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl3_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl3_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl3_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl3_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl3_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl3_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl3_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl3_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl3_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl3_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl3_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl3_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl3_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl3_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl3_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl3_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl3_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl3_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl3_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl3_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl3_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl3_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl3_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl3_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl3_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl3_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl3_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl3_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl3_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl3_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl3_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl3_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl3_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl3_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl3_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl3_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl3_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl3_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl3_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl3_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl3_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl3_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl3_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl3_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl3_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl3_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl3_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl3_clkgen_c_0_l1en_reg/CPN] [get_pins {swl2_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl2_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl2_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl2_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl2_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl2_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl2_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl2_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl2_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl2_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl2_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl2_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl2_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl2_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl2_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl2_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl2_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl2_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl2_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl2_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl2_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl2_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl2_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl2_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl2_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl2_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl2_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl2_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl2_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl2_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl2_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl2_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl2_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl2_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl2_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl2_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl2_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl2_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl2_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl2_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl2_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl2_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl2_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl2_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl2_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl2_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl2_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl2_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl2_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl2_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl2_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl2_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl2_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl2_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl2_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl2_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl2_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl2_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl2_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl2_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl2_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl2_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl2_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl2_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl2_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl2_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl2_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl2_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl2_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl2_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl2_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl2_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl2_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl2_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl2_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl2_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl2_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl2_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl2_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl2_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl2_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl2_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl2_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl2_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl2_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl2_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl2_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl2_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl2_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl2_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl2_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl2_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl2_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl2_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl2_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl2_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl2_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl2_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl2_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl2_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl2_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl2_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl2_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl2_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl2_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl2_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl2_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl2_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl2_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl2_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl2_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl2_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl2_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl2_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl2_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl2_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl2_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl2_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl2_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl2_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl2_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl2_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl2_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl2_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl2_clkgen_c_0_l1en_reg/CPN] [get_pins {swl1_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl1_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl1_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl1_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl1_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl1_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl1_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl1_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl1_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl1_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl1_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl1_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl1_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl1_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl1_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl1_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl1_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl1_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl1_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl1_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl1_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl1_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl1_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl1_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl1_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl1_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl1_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl1_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl1_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl1_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl1_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl1_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl1_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl1_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl1_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl1_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl1_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl1_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl1_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl1_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl1_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl1_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl1_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl1_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl1_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl1_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl1_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl1_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl1_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl1_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl1_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl1_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl1_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl1_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl1_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl1_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl1_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl1_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl1_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl1_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl1_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl1_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl1_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl1_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl1_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl1_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl1_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl1_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl1_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl1_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl1_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl1_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl1_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl1_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl1_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl1_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl1_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl1_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl1_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl1_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl1_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl1_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl1_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl1_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl1_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl1_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl1_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl1_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl1_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl1_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl1_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl1_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl1_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl1_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl1_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl1_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl1_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl1_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl1_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl1_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl1_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl1_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl1_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl1_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl1_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl1_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl1_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl1_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl1_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl1_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl1_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl1_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl1_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl1_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl1_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl1_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl1_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl1_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl1_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl1_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl1_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl1_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl1_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl1_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl1_clkgen_c_0_l1en_reg/CPN] [get_pins {swl0_flush_mf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl0_br_mispredict_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl0_lsu_sync_rawf_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl0_lsu_syncf_d0_0_q_reg[0]/CP}] [get_pins {swl0_lsuf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl0_lsuf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl0_lsuf_d0_0_q_reg[2]/CP}] [get_pins {swl0_lsuf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl0_lsuf_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl0_lsuf_d0_0_q_reg[5]/CP}] [get_pins {swl0_fccdestf_d0_0_q_reg[0]/CP}]      \
[get_pins {swl0_fccdestf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl0_fccdestf_d0_0_q_reg[2]/CP}] [get_pins                                    \
{swl0_fpdest_singlef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl0_fpdest_singlef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[2]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[3]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[4]/CP}] [get_pins                              \
{swl0_fpdest_doublef_d0_0_q_reg[5]/CP}] [get_pins                              \
{swl0_bkickf_d0_0_q_reg[0]/CP}] [get_pins {swl0_bkickf_d0_0_q_reg[1]/CP}]      \
[get_pins {swl0_bkickf_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl0_bkickf_d0_0_q_reg[3]/CP}] [get_pins {swl0_fguf_d0_0_q_reg[0]/CP}]        \
[get_pins {swl0_fguf_d0_0_q_reg[1]/CP}] [get_pins                              \
{swl0_fguf_d0_0_q_reg[2]/CP}] [get_pins {swl0_fguf_d0_0_q_reg[3]/CP}]          \
[get_pins {swl0_fbkickf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl0_fbkickf_d0_0_q_reg[1]/CP}] [get_pins {swl0_fbkickf_d0_0_q_reg[2]/CP}]    \
[get_pins {swl0_fbkickf_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl0_fbkickf_d0_0_q_reg[4]/CP}] [get_pins {swl0_fbkickf_d0_0_q_reg[5]/CP}]    \
[get_pins {swl0_fbkickf_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl0_specfpf_d0_0_q_reg[0]/CP}] [get_pins {swl0_specfpf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl0_specfpf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl0_specfpf_d0_0_q_reg[3]/CP}] [get_pins {swl0_fdestf_d0_0_q_reg[0]/CP}]     \
[get_pins {swl0_fdestf_d0_0_q_reg[1]/CP}] [get_pins                            \
{swl0_fdestf_d0_0_q_reg[2]/CP}] [get_pins {swl0_fdestf_d0_0_q_reg[3]/CP}]      \
[get_pins {swl0_idestf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_idestf_d0_0_q_reg[1]/CP}] [get_pins {swl0_idestf_d0_0_q_reg[2]/CP}]      \
[get_pins {swl0_idestf_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl0_condbrf_d0_0_q_reg[0]/CP}] [get_pins {swl0_callclassf_d0_0_q_reg[0]/CP}] \
[get_pins {swl0_callclassf_d0_0_q_reg[1]/CP}] [get_pins                        \
{swl0_annulf_d0_0_q_reg[0]/CP}] [get_pins {swl0_specbrmf_d0_0_q_reg[0]/CP}]    \
[get_pins {swl0_specbref_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl0_dctif_d0_0_q_reg[0]/CP}] [get_pins {swl0_divf_d0_0_q_reg[0]/CP}]         \
[get_pins {swl0_postsyncf_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl0_specldf_d0_0_q_reg[0]/CP}] [get_pins {swl0_specldf_d0_0_q_reg[1]/CP}]    \
[get_pins {swl0_specldf_d0_0_q_reg[2]/CP}] [get_pins                           \
{swl0_specldf_d0_0_q_reg[3]/CP}] [get_pins                                     \
{swl0_anytwocyclef_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl0_anytwocyclef_d0_0_q_reg[1]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl0_rdf_d0_0_q_reg[1]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[2]/CP}]  \
[get_pins {swl0_rdf_d0_0_q_reg[3]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[4]/CP}]  \
[get_pins {swl0_rdf_d0_0_q_reg[5]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[6]/CP}]  \
[get_pins {swl0_rdf_d0_0_q_reg[7]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[8]/CP}]  \
[get_pins {swl0_rdf_d0_0_q_reg[9]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[10]/CP}] \
[get_pins {swl0_rdf_d0_0_q_reg[11]/CP}] [get_pins                              \
{swl0_rdf_d0_0_q_reg[12]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[13]/CP}]          \
[get_pins {swl0_rdf_d0_0_q_reg[14]/CP}] [get_pins                              \
{swl0_rdf_d0_0_q_reg[15]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[16]/CP}]          \
[get_pins {swl0_rdf_d0_0_q_reg[17]/CP}] [get_pins                              \
{swl0_rdf_d0_0_q_reg[18]/CP}] [get_pins {swl0_rdf_d0_0_q_reg[19]/CP}]          \
[get_pins {swl0_data_df_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[1]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[2]/CP}]    \
[get_pins {swl0_data_df_d0_0_q_reg[3]/CP}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[4]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[5]/CP}]    \
[get_pins {swl0_data_df_d0_0_q_reg[6]/CP}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[7]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[8]/CP}]    \
[get_pins {swl0_data_df_d0_0_q_reg[9]/CP}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[10]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[11]/CP}]  \
[get_pins {swl0_data_df_d0_0_q_reg[12]/CP}] [get_pins                          \
{swl0_data_df_d0_0_q_reg[13]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[14]/CP}]  \
[get_pins {swl0_data_df_d0_0_q_reg[15]/CP}] [get_pins                          \
{swl0_data_df_d0_0_q_reg[16]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[17]/CP}]  \
[get_pins {swl0_data_df_d0_0_q_reg[18]/CP}] [get_pins                          \
{swl0_data_df_d0_0_q_reg[19]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[20]/CP}]  \
[get_pins {swl0_data_df_d0_0_q_reg[21]/CP}] [get_pins                          \
{swl0_data_df_d0_0_q_reg[22]/CP}] [get_pins {swl0_data_df_d0_0_q_reg[23]/CP}]  \
[get_pins {swl0_vld_fbf_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl0_vld_f5f_d0_0_q_reg[0]/CP}] [get_pins {swl0_vld_f4f_d0_0_q_reg[0]/CP}]    \
[get_pins {swl0_annul_ds_dcti_mf_d0_0_q_reg[0]/CP}] [get_pins                  \
{swl0_vldraw_mf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_vldraw_ef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_vldraw_df_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_fpvld_w2f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_fpvld_w1f_d0_0_q_reg[0]/CP}] [get_pins {swl0_vld_wf_d0_0_q_reg[0]/CP}]   \
[get_pins {swl0_vld_bf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_vld_mf_d0_0_q_reg[0]/CP}] [get_pins {swl0_valid_ef_d0_0_q_reg[0]/CP}]    \
[get_pins {swl0_vld_ef_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_vld_df_d0_0_q_reg[0]/CP}] [get_pins {swl0_allds_e_f_d0_0_q_reg[0]/CP}]   \
[get_pins {swl0_allds_d_f_d0_0_q_reg[0]/CP}] [get_pins                         \
{swl0_allds_p_f_d0_0_q_reg[0]/CP}] [get_pins                                   \
{swl0_spec_readyf_d0_0_q_reg[0]/CP}] [get_pins {swl0_readyf_d0_0_q_reg[0]/CP}] \
[get_pins {swl0_ccnt_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_ccnt_f_d0_0_q_reg[1]/CP}] [get_pins {swl0_ccnt_f_d0_0_q_reg[2]/CP}]      \
[get_pins {swl0_ccnt_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{swl0_scnt_f_d0_0_q_reg[0]/CP}] [get_pins {swl0_scnt_f_d0_0_q_reg[1]/CP}]      \
[get_pins {swl0_scnt_f_d0_0_q_reg[2]/CP}] [get_pins                            \
{swl0_scnt_f_d0_0_q_reg[3]/CP}] [get_pins                                      \
{swl0_annul_store_f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl0_pickstoref_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_store_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl0_store_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{swl0_not_annul_ds2_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl0_not_annul_ds1_f_d0_0_q_reg[0]/CP}] [get_pins                             \
{swl0_brflush2_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_brflush1_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_ldst_sync_ldfsrf_d0_0_q_reg[0]/CP}] [get_pins                            \
{swl0_ldst_sync_singlef_d0_0_q_reg[0]/CP}] [get_pins                           \
{swl0_lsu_sync_waitf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_lsu_completef_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl0_lsu_completef_d0_0_q_reg[1]/CP}] [get_pins                               \
{swl0_divide_wait1f_d0_0_q_reg[0]/CP}] [get_pins                               \
{swl0_divide_waitf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl0_postsync_nsf_d0_0_q_reg[0]/CP}] [get_pins                                \
{swl0_active_threadf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_spec_enf_d0_0_q_reg[0]/CP}] [get_pins                                    \
{swl0_post_syncf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_block_store_stallf_d0_0_q_reg[0]/CP}] [get_pins                          \
{swl0_block_store_stallf_d0_0_q_reg[1]/CP}] [get_pins                          \
{swl0_tlu_retryf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{swl0_lsu_ext_flushf_d0_0_q_reg[0]/CP}] [get_pins                              \
{swl0_external_flushf_d0_0_q_reg[0]/CP}] [get_pins                             \
swl0_clkgenactive_c_0_l1en_reg/CPN] [get_pins swl0_clkgenpm_c_0_l1en_reg/CPN]  \
[get_pins {swl0_do_modef_d0_0_q_reg[0]/CP}] [get_pins                          \
swl0_clkgen_c_0_l1en_reg/CPN]]  -to [list [get_pins {pck1_lruf_d0_0_q_reg[0]/D}] [get_pins                    \
{pck1_lruf_d0_0_q_reg[1]/D}] [get_pins {pck1_lruf_d0_0_q_reg[2]/D}] [get_pins  \
{pck1_lruf_d0_0_q_reg[3]/D}] [get_pins {pck1_lruf_d0_0_q_reg[4]/D}] [get_pins  \
{pck1_lruf_d0_0_q_reg[5]/D}] [get_pins {pck1_lruf_d0_0_q_reg[6]/D}] [get_pins  \
{pck1_lruf_d0_0_q_reg[7]/D}] [get_pins pck1_clkgen_c_0_l1en_reg/D] [get_pins   \
{swl7_flush_mf_d0_0_q_reg[0]/D}] [get_pins                                     \
{swl7_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl7_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl7_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl7_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl7_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl7_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl7_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl7_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl7_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl7_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl7_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl7_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl7_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl7_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl7_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl7_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl7_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl7_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl7_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl7_fguf_d0_0_q_reg[1]/D}] [get_pins {swl7_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl7_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl7_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl7_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl7_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl7_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl7_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl7_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl7_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl7_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl7_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl7_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl7_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl7_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl7_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl7_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl7_idestf_d0_0_q_reg[0]/D}] [get_pins {swl7_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl7_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl7_idestf_d0_0_q_reg[3]/D}] [get_pins {swl7_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl7_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl7_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl7_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl7_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl7_specbref_d0_0_q_reg[0]/D}] [get_pins {swl7_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl7_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl7_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl7_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl7_specldf_d0_0_q_reg[2]/D}] [get_pins {swl7_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl7_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl7_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl7_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl7_rdf_d0_0_q_reg[1]/D}] [get_pins {swl7_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl7_rdf_d0_0_q_reg[3]/D}] [get_pins {swl7_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl7_rdf_d0_0_q_reg[5]/D}] [get_pins {swl7_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl7_rdf_d0_0_q_reg[7]/D}] [get_pins {swl7_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl7_rdf_d0_0_q_reg[9]/D}] [get_pins {swl7_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl7_rdf_d0_0_q_reg[11]/D}] [get_pins {swl7_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl7_rdf_d0_0_q_reg[13]/D}] [get_pins {swl7_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl7_rdf_d0_0_q_reg[15]/D}] [get_pins {swl7_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl7_rdf_d0_0_q_reg[17]/D}] [get_pins {swl7_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl7_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl7_data_df_d0_0_q_reg[0]/D}] [get_pins {swl7_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl7_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl7_data_df_d0_0_q_reg[3]/D}] [get_pins {swl7_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl7_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl7_data_df_d0_0_q_reg[6]/D}] [get_pins {swl7_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl7_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl7_data_df_d0_0_q_reg[9]/D}] [get_pins {swl7_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl7_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[12]/D}] [get_pins {swl7_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl7_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[15]/D}] [get_pins {swl7_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl7_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[18]/D}] [get_pins {swl7_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl7_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl7_data_df_d0_0_q_reg[21]/D}] [get_pins {swl7_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl7_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl7_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl7_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl7_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl7_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl7_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl7_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl7_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl7_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl7_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl7_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl7_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl7_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl7_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl7_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl7_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl7_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl7_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl7_readyf_d0_0_q_reg[0]/D}] [get_pins {swl7_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl7_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl7_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl7_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl7_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl7_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl7_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl7_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl7_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl7_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl7_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl7_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl7_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl7_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl7_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl7_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl7_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl7_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl7_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl7_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl7_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl7_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl7_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl7_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl7_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl7_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl7_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl7_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl7_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl7_clkgenactive_c_0_l1en_reg/D] [get_pins swl7_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl7_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl7_clkgen_c_0_l1en_reg/D] [get_pins {swl6_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl6_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl6_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl6_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl6_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl6_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl6_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl6_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl6_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl6_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl6_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl6_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl6_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl6_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl6_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl6_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl6_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl6_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl6_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl6_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl6_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl6_fguf_d0_0_q_reg[1]/D}] [get_pins {swl6_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl6_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl6_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl6_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl6_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl6_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl6_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl6_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl6_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl6_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl6_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl6_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl6_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl6_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl6_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl6_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl6_idestf_d0_0_q_reg[0]/D}] [get_pins {swl6_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl6_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl6_idestf_d0_0_q_reg[3]/D}] [get_pins {swl6_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl6_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl6_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl6_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl6_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl6_specbref_d0_0_q_reg[0]/D}] [get_pins {swl6_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl6_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl6_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl6_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl6_specldf_d0_0_q_reg[2]/D}] [get_pins {swl6_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl6_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl6_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl6_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl6_rdf_d0_0_q_reg[1]/D}] [get_pins {swl6_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl6_rdf_d0_0_q_reg[3]/D}] [get_pins {swl6_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl6_rdf_d0_0_q_reg[5]/D}] [get_pins {swl6_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl6_rdf_d0_0_q_reg[7]/D}] [get_pins {swl6_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl6_rdf_d0_0_q_reg[9]/D}] [get_pins {swl6_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl6_rdf_d0_0_q_reg[11]/D}] [get_pins {swl6_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl6_rdf_d0_0_q_reg[13]/D}] [get_pins {swl6_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl6_rdf_d0_0_q_reg[15]/D}] [get_pins {swl6_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl6_rdf_d0_0_q_reg[17]/D}] [get_pins {swl6_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl6_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl6_data_df_d0_0_q_reg[0]/D}] [get_pins {swl6_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl6_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl6_data_df_d0_0_q_reg[3]/D}] [get_pins {swl6_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl6_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl6_data_df_d0_0_q_reg[6]/D}] [get_pins {swl6_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl6_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl6_data_df_d0_0_q_reg[9]/D}] [get_pins {swl6_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl6_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[12]/D}] [get_pins {swl6_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl6_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[15]/D}] [get_pins {swl6_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl6_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[18]/D}] [get_pins {swl6_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl6_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl6_data_df_d0_0_q_reg[21]/D}] [get_pins {swl6_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl6_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl6_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl6_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl6_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl6_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl6_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl6_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl6_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl6_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl6_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl6_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl6_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl6_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl6_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl6_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl6_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl6_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl6_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl6_readyf_d0_0_q_reg[0]/D}] [get_pins {swl6_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl6_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl6_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl6_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl6_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl6_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl6_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl6_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl6_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl6_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl6_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl6_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl6_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl6_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl6_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl6_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl6_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl6_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl6_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl6_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl6_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl6_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl6_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl6_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl6_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl6_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl6_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl6_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl6_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl6_clkgenactive_c_0_l1en_reg/D] [get_pins swl6_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl6_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl6_clkgen_c_0_l1en_reg/D] [get_pins {swl5_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl5_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl5_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl5_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl5_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl5_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl5_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl5_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl5_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl5_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl5_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl5_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl5_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl5_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl5_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl5_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl5_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl5_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl5_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl5_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl5_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl5_fguf_d0_0_q_reg[1]/D}] [get_pins {swl5_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl5_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl5_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl5_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl5_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl5_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl5_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl5_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl5_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl5_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl5_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl5_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl5_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl5_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl5_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl5_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl5_idestf_d0_0_q_reg[0]/D}] [get_pins {swl5_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl5_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl5_idestf_d0_0_q_reg[3]/D}] [get_pins {swl5_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl5_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl5_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl5_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl5_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl5_specbref_d0_0_q_reg[0]/D}] [get_pins {swl5_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl5_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl5_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl5_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl5_specldf_d0_0_q_reg[2]/D}] [get_pins {swl5_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl5_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl5_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl5_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl5_rdf_d0_0_q_reg[1]/D}] [get_pins {swl5_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl5_rdf_d0_0_q_reg[3]/D}] [get_pins {swl5_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl5_rdf_d0_0_q_reg[5]/D}] [get_pins {swl5_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl5_rdf_d0_0_q_reg[7]/D}] [get_pins {swl5_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl5_rdf_d0_0_q_reg[9]/D}] [get_pins {swl5_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl5_rdf_d0_0_q_reg[11]/D}] [get_pins {swl5_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl5_rdf_d0_0_q_reg[13]/D}] [get_pins {swl5_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl5_rdf_d0_0_q_reg[15]/D}] [get_pins {swl5_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl5_rdf_d0_0_q_reg[17]/D}] [get_pins {swl5_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl5_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl5_data_df_d0_0_q_reg[0]/D}] [get_pins {swl5_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl5_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl5_data_df_d0_0_q_reg[3]/D}] [get_pins {swl5_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl5_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl5_data_df_d0_0_q_reg[6]/D}] [get_pins {swl5_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl5_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl5_data_df_d0_0_q_reg[9]/D}] [get_pins {swl5_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl5_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[12]/D}] [get_pins {swl5_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl5_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[15]/D}] [get_pins {swl5_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl5_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[18]/D}] [get_pins {swl5_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl5_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl5_data_df_d0_0_q_reg[21]/D}] [get_pins {swl5_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl5_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl5_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl5_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl5_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl5_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl5_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl5_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl5_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl5_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl5_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl5_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl5_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl5_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl5_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl5_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl5_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl5_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl5_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl5_readyf_d0_0_q_reg[0]/D}] [get_pins {swl5_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl5_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl5_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl5_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl5_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl5_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl5_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl5_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl5_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl5_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl5_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl5_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl5_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl5_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl5_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl5_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl5_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl5_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl5_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl5_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl5_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl5_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl5_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl5_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl5_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl5_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl5_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl5_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl5_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl5_clkgenactive_c_0_l1en_reg/D] [get_pins swl5_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl5_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl5_clkgen_c_0_l1en_reg/D] [get_pins {swl4_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl4_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl4_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl4_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl4_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl4_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl4_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl4_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl4_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl4_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl4_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl4_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl4_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl4_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl4_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl4_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl4_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl4_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl4_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl4_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl4_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl4_fguf_d0_0_q_reg[1]/D}] [get_pins {swl4_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl4_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl4_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl4_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl4_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl4_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl4_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl4_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl4_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl4_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl4_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl4_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl4_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl4_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl4_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl4_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl4_idestf_d0_0_q_reg[0]/D}] [get_pins {swl4_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl4_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl4_idestf_d0_0_q_reg[3]/D}] [get_pins {swl4_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl4_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl4_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl4_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl4_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl4_specbref_d0_0_q_reg[0]/D}] [get_pins {swl4_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl4_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl4_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl4_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl4_specldf_d0_0_q_reg[2]/D}] [get_pins {swl4_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl4_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl4_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl4_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl4_rdf_d0_0_q_reg[1]/D}] [get_pins {swl4_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl4_rdf_d0_0_q_reg[3]/D}] [get_pins {swl4_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl4_rdf_d0_0_q_reg[5]/D}] [get_pins {swl4_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl4_rdf_d0_0_q_reg[7]/D}] [get_pins {swl4_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl4_rdf_d0_0_q_reg[9]/D}] [get_pins {swl4_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl4_rdf_d0_0_q_reg[11]/D}] [get_pins {swl4_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl4_rdf_d0_0_q_reg[13]/D}] [get_pins {swl4_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl4_rdf_d0_0_q_reg[15]/D}] [get_pins {swl4_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl4_rdf_d0_0_q_reg[17]/D}] [get_pins {swl4_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl4_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl4_data_df_d0_0_q_reg[0]/D}] [get_pins {swl4_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl4_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl4_data_df_d0_0_q_reg[3]/D}] [get_pins {swl4_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl4_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl4_data_df_d0_0_q_reg[6]/D}] [get_pins {swl4_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl4_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl4_data_df_d0_0_q_reg[9]/D}] [get_pins {swl4_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl4_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[12]/D}] [get_pins {swl4_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl4_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[15]/D}] [get_pins {swl4_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl4_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[18]/D}] [get_pins {swl4_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl4_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl4_data_df_d0_0_q_reg[21]/D}] [get_pins {swl4_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl4_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl4_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl4_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl4_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl4_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl4_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl4_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl4_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl4_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl4_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl4_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl4_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl4_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl4_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl4_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl4_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl4_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl4_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl4_readyf_d0_0_q_reg[0]/D}] [get_pins {swl4_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl4_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl4_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl4_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl4_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl4_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl4_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl4_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl4_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl4_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl4_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl4_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl4_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl4_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl4_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl4_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl4_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl4_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl4_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl4_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl4_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl4_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl4_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl4_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl4_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl4_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl4_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl4_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl4_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl4_clkgenactive_c_0_l1en_reg/D] [get_pins swl4_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl4_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl4_clkgen_c_0_l1en_reg/D] [get_pins {pck0_lruf_d0_0_q_reg[0]/D}] [get_pins   \
{pck0_lruf_d0_0_q_reg[1]/D}] [get_pins {pck0_lruf_d0_0_q_reg[2]/D}] [get_pins  \
{pck0_lruf_d0_0_q_reg[3]/D}] [get_pins {pck0_lruf_d0_0_q_reg[4]/D}] [get_pins  \
{pck0_lruf_d0_0_q_reg[5]/D}] [get_pins {pck0_lruf_d0_0_q_reg[6]/D}] [get_pins  \
{pck0_lruf_d0_0_q_reg[7]/D}] [get_pins pck0_clkgen_c_0_l1en_reg/D] [get_pins   \
{swl3_flush_mf_d0_0_q_reg[0]/D}] [get_pins                                     \
{swl3_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl3_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl3_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl3_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl3_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl3_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl3_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl3_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl3_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl3_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl3_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl3_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl3_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl3_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl3_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl3_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl3_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl3_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl3_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl3_fguf_d0_0_q_reg[1]/D}] [get_pins {swl3_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl3_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl3_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl3_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl3_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl3_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl3_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl3_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl3_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl3_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl3_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl3_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl3_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl3_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl3_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl3_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl3_idestf_d0_0_q_reg[0]/D}] [get_pins {swl3_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl3_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl3_idestf_d0_0_q_reg[3]/D}] [get_pins {swl3_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl3_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl3_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl3_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl3_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl3_specbref_d0_0_q_reg[0]/D}] [get_pins {swl3_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl3_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl3_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl3_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl3_specldf_d0_0_q_reg[2]/D}] [get_pins {swl3_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl3_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl3_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl3_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl3_rdf_d0_0_q_reg[1]/D}] [get_pins {swl3_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl3_rdf_d0_0_q_reg[3]/D}] [get_pins {swl3_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl3_rdf_d0_0_q_reg[5]/D}] [get_pins {swl3_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl3_rdf_d0_0_q_reg[7]/D}] [get_pins {swl3_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl3_rdf_d0_0_q_reg[9]/D}] [get_pins {swl3_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl3_rdf_d0_0_q_reg[11]/D}] [get_pins {swl3_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl3_rdf_d0_0_q_reg[13]/D}] [get_pins {swl3_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl3_rdf_d0_0_q_reg[15]/D}] [get_pins {swl3_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl3_rdf_d0_0_q_reg[17]/D}] [get_pins {swl3_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl3_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl3_data_df_d0_0_q_reg[0]/D}] [get_pins {swl3_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl3_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl3_data_df_d0_0_q_reg[3]/D}] [get_pins {swl3_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl3_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl3_data_df_d0_0_q_reg[6]/D}] [get_pins {swl3_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl3_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl3_data_df_d0_0_q_reg[9]/D}] [get_pins {swl3_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl3_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[12]/D}] [get_pins {swl3_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl3_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[15]/D}] [get_pins {swl3_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl3_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[18]/D}] [get_pins {swl3_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl3_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl3_data_df_d0_0_q_reg[21]/D}] [get_pins {swl3_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl3_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl3_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl3_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl3_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl3_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl3_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl3_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl3_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl3_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl3_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl3_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl3_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl3_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl3_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl3_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl3_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl3_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl3_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl3_readyf_d0_0_q_reg[0]/D}] [get_pins {swl3_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl3_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl3_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl3_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl3_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl3_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl3_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl3_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl3_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl3_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl3_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl3_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl3_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl3_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl3_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl3_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl3_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl3_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl3_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl3_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl3_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl3_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl3_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl3_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl3_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl3_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl3_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl3_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl3_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl3_clkgenactive_c_0_l1en_reg/D] [get_pins swl3_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl3_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl3_clkgen_c_0_l1en_reg/D] [get_pins {swl2_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl2_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl2_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl2_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl2_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl2_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl2_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl2_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl2_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl2_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl2_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl2_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl2_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl2_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl2_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl2_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl2_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl2_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl2_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl2_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl2_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl2_fguf_d0_0_q_reg[1]/D}] [get_pins {swl2_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl2_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl2_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl2_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl2_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl2_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl2_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl2_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl2_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl2_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl2_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl2_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl2_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl2_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl2_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl2_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl2_idestf_d0_0_q_reg[0]/D}] [get_pins {swl2_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl2_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl2_idestf_d0_0_q_reg[3]/D}] [get_pins {swl2_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl2_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl2_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl2_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl2_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl2_specbref_d0_0_q_reg[0]/D}] [get_pins {swl2_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl2_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl2_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl2_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl2_specldf_d0_0_q_reg[2]/D}] [get_pins {swl2_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl2_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl2_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl2_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl2_rdf_d0_0_q_reg[1]/D}] [get_pins {swl2_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl2_rdf_d0_0_q_reg[3]/D}] [get_pins {swl2_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl2_rdf_d0_0_q_reg[5]/D}] [get_pins {swl2_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl2_rdf_d0_0_q_reg[7]/D}] [get_pins {swl2_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl2_rdf_d0_0_q_reg[9]/D}] [get_pins {swl2_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl2_rdf_d0_0_q_reg[11]/D}] [get_pins {swl2_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl2_rdf_d0_0_q_reg[13]/D}] [get_pins {swl2_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl2_rdf_d0_0_q_reg[15]/D}] [get_pins {swl2_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl2_rdf_d0_0_q_reg[17]/D}] [get_pins {swl2_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl2_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl2_data_df_d0_0_q_reg[0]/D}] [get_pins {swl2_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl2_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl2_data_df_d0_0_q_reg[3]/D}] [get_pins {swl2_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl2_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl2_data_df_d0_0_q_reg[6]/D}] [get_pins {swl2_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl2_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl2_data_df_d0_0_q_reg[9]/D}] [get_pins {swl2_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl2_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[12]/D}] [get_pins {swl2_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl2_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[15]/D}] [get_pins {swl2_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl2_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[18]/D}] [get_pins {swl2_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl2_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl2_data_df_d0_0_q_reg[21]/D}] [get_pins {swl2_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl2_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl2_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl2_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl2_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl2_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl2_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl2_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl2_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl2_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl2_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl2_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl2_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl2_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl2_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl2_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl2_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl2_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl2_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl2_readyf_d0_0_q_reg[0]/D}] [get_pins {swl2_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl2_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl2_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl2_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl2_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl2_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl2_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl2_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl2_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl2_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl2_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl2_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl2_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl2_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl2_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl2_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl2_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl2_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl2_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl2_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl2_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl2_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl2_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl2_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl2_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl2_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl2_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl2_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl2_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl2_clkgenactive_c_0_l1en_reg/D] [get_pins swl2_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl2_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl2_clkgen_c_0_l1en_reg/D] [get_pins {swl1_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl1_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl1_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl1_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl1_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl1_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl1_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl1_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl1_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl1_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl1_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl1_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl1_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl1_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl1_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl1_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl1_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl1_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl1_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl1_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl1_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl1_fguf_d0_0_q_reg[1]/D}] [get_pins {swl1_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl1_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl1_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl1_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl1_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl1_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl1_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl1_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl1_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl1_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl1_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl1_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl1_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl1_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl1_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl1_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl1_idestf_d0_0_q_reg[0]/D}] [get_pins {swl1_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl1_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl1_idestf_d0_0_q_reg[3]/D}] [get_pins {swl1_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl1_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl1_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl1_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl1_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl1_specbref_d0_0_q_reg[0]/D}] [get_pins {swl1_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl1_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl1_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl1_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl1_specldf_d0_0_q_reg[2]/D}] [get_pins {swl1_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl1_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl1_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl1_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl1_rdf_d0_0_q_reg[1]/D}] [get_pins {swl1_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl1_rdf_d0_0_q_reg[3]/D}] [get_pins {swl1_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl1_rdf_d0_0_q_reg[5]/D}] [get_pins {swl1_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl1_rdf_d0_0_q_reg[7]/D}] [get_pins {swl1_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl1_rdf_d0_0_q_reg[9]/D}] [get_pins {swl1_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl1_rdf_d0_0_q_reg[11]/D}] [get_pins {swl1_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl1_rdf_d0_0_q_reg[13]/D}] [get_pins {swl1_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl1_rdf_d0_0_q_reg[15]/D}] [get_pins {swl1_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl1_rdf_d0_0_q_reg[17]/D}] [get_pins {swl1_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl1_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl1_data_df_d0_0_q_reg[0]/D}] [get_pins {swl1_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl1_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl1_data_df_d0_0_q_reg[3]/D}] [get_pins {swl1_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl1_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl1_data_df_d0_0_q_reg[6]/D}] [get_pins {swl1_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl1_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl1_data_df_d0_0_q_reg[9]/D}] [get_pins {swl1_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl1_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[12]/D}] [get_pins {swl1_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl1_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[15]/D}] [get_pins {swl1_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl1_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[18]/D}] [get_pins {swl1_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl1_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl1_data_df_d0_0_q_reg[21]/D}] [get_pins {swl1_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl1_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl1_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl1_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl1_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl1_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl1_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl1_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl1_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl1_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl1_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl1_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl1_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl1_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl1_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl1_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl1_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl1_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl1_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl1_readyf_d0_0_q_reg[0]/D}] [get_pins {swl1_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl1_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl1_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl1_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl1_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl1_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl1_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl1_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl1_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl1_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl1_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl1_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl1_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl1_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl1_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl1_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl1_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl1_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl1_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl1_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl1_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl1_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl1_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl1_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl1_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl1_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl1_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl1_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl1_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl1_clkgenactive_c_0_l1en_reg/D] [get_pins swl1_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl1_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl1_clkgen_c_0_l1en_reg/D] [get_pins {swl0_flush_mf_d0_0_q_reg[0]/D}]         \
[get_pins {swl0_br_mispredict_mf_d0_0_q_reg[0]/D}] [get_pins                   \
{swl0_lsu_sync_rawf_d0_0_q_reg[0]/D}] [get_pins                                \
{swl0_lsu_syncf_d0_0_q_reg[0]/D}] [get_pins {swl0_lsuf_d0_0_q_reg[0]/D}]       \
[get_pins {swl0_lsuf_d0_0_q_reg[1]/D}] [get_pins {swl0_lsuf_d0_0_q_reg[2]/D}]  \
[get_pins {swl0_lsuf_d0_0_q_reg[3]/D}] [get_pins {swl0_lsuf_d0_0_q_reg[4]/D}]  \
[get_pins {swl0_lsuf_d0_0_q_reg[5]/D}] [get_pins                               \
{swl0_fccdestf_d0_0_q_reg[0]/D}] [get_pins {swl0_fccdestf_d0_0_q_reg[1]/D}]    \
[get_pins {swl0_fccdestf_d0_0_q_reg[2]/D}] [get_pins                           \
{swl0_fpdest_singlef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl0_fpdest_singlef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[1]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[2]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[3]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[4]/D}] [get_pins                               \
{swl0_fpdest_doublef_d0_0_q_reg[5]/D}] [get_pins                               \
{swl0_bkickf_d0_0_q_reg[0]/D}] [get_pins {swl0_bkickf_d0_0_q_reg[1]/D}]        \
[get_pins {swl0_bkickf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl0_bkickf_d0_0_q_reg[3]/D}] [get_pins {swl0_fguf_d0_0_q_reg[0]/D}]          \
[get_pins {swl0_fguf_d0_0_q_reg[1]/D}] [get_pins {swl0_fguf_d0_0_q_reg[2]/D}]  \
[get_pins {swl0_fguf_d0_0_q_reg[3]/D}] [get_pins                               \
{swl0_fbkickf_d0_0_q_reg[0]/D}] [get_pins {swl0_fbkickf_d0_0_q_reg[1]/D}]      \
[get_pins {swl0_fbkickf_d0_0_q_reg[2]/D}] [get_pins                            \
{swl0_fbkickf_d0_0_q_reg[3]/D}] [get_pins {swl0_fbkickf_d0_0_q_reg[4]/D}]      \
[get_pins {swl0_fbkickf_d0_0_q_reg[5]/D}] [get_pins                            \
{swl0_fbkickf_d0_0_q_reg[6]/D}] [get_pins {swl0_specfpf_d0_0_q_reg[0]/D}]      \
[get_pins {swl0_specfpf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl0_specfpf_d0_0_q_reg[2]/D}] [get_pins {swl0_specfpf_d0_0_q_reg[3]/D}]      \
[get_pins {swl0_fdestf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_fdestf_d0_0_q_reg[1]/D}] [get_pins {swl0_fdestf_d0_0_q_reg[2]/D}]        \
[get_pins {swl0_fdestf_d0_0_q_reg[3]/D}] [get_pins                             \
{swl0_idestf_d0_0_q_reg[0]/D}] [get_pins {swl0_idestf_d0_0_q_reg[1]/D}]        \
[get_pins {swl0_idestf_d0_0_q_reg[2]/D}] [get_pins                             \
{swl0_idestf_d0_0_q_reg[3]/D}] [get_pins {swl0_condbrf_d0_0_q_reg[0]/D}]       \
[get_pins {swl0_callclassf_d0_0_q_reg[0]/D}] [get_pins                         \
{swl0_callclassf_d0_0_q_reg[1]/D}] [get_pins {swl0_annulf_d0_0_q_reg[0]/D}]    \
[get_pins {swl0_specbrmf_d0_0_q_reg[0]/D}] [get_pins                           \
{swl0_specbref_d0_0_q_reg[0]/D}] [get_pins {swl0_dctif_d0_0_q_reg[0]/D}]       \
[get_pins {swl0_divf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_postsyncf_d0_0_q_reg[0]/D}] [get_pins {swl0_specldf_d0_0_q_reg[0]/D}]    \
[get_pins {swl0_specldf_d0_0_q_reg[1]/D}] [get_pins                            \
{swl0_specldf_d0_0_q_reg[2]/D}] [get_pins {swl0_specldf_d0_0_q_reg[3]/D}]      \
[get_pins {swl0_anytwocyclef_d0_0_q_reg[0]/D}] [get_pins                       \
{swl0_anytwocyclef_d0_0_q_reg[1]/D}] [get_pins {swl0_rdf_d0_0_q_reg[0]/D}]     \
[get_pins {swl0_rdf_d0_0_q_reg[1]/D}] [get_pins {swl0_rdf_d0_0_q_reg[2]/D}]    \
[get_pins {swl0_rdf_d0_0_q_reg[3]/D}] [get_pins {swl0_rdf_d0_0_q_reg[4]/D}]    \
[get_pins {swl0_rdf_d0_0_q_reg[5]/D}] [get_pins {swl0_rdf_d0_0_q_reg[6]/D}]    \
[get_pins {swl0_rdf_d0_0_q_reg[7]/D}] [get_pins {swl0_rdf_d0_0_q_reg[8]/D}]    \
[get_pins {swl0_rdf_d0_0_q_reg[9]/D}] [get_pins {swl0_rdf_d0_0_q_reg[10]/D}]   \
[get_pins {swl0_rdf_d0_0_q_reg[11]/D}] [get_pins {swl0_rdf_d0_0_q_reg[12]/D}]  \
[get_pins {swl0_rdf_d0_0_q_reg[13]/D}] [get_pins {swl0_rdf_d0_0_q_reg[14]/D}]  \
[get_pins {swl0_rdf_d0_0_q_reg[15]/D}] [get_pins {swl0_rdf_d0_0_q_reg[16]/D}]  \
[get_pins {swl0_rdf_d0_0_q_reg[17]/D}] [get_pins {swl0_rdf_d0_0_q_reg[18]/D}]  \
[get_pins {swl0_rdf_d0_0_q_reg[19]/D}] [get_pins                               \
{swl0_data_df_d0_0_q_reg[0]/D}] [get_pins {swl0_data_df_d0_0_q_reg[1]/D}]      \
[get_pins {swl0_data_df_d0_0_q_reg[2]/D}] [get_pins                            \
{swl0_data_df_d0_0_q_reg[3]/D}] [get_pins {swl0_data_df_d0_0_q_reg[4]/D}]      \
[get_pins {swl0_data_df_d0_0_q_reg[5]/D}] [get_pins                            \
{swl0_data_df_d0_0_q_reg[6]/D}] [get_pins {swl0_data_df_d0_0_q_reg[7]/D}]      \
[get_pins {swl0_data_df_d0_0_q_reg[8]/D}] [get_pins                            \
{swl0_data_df_d0_0_q_reg[9]/D}] [get_pins {swl0_data_df_d0_0_q_reg[10]/D}]     \
[get_pins {swl0_data_df_d0_0_q_reg[11]/D}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[12]/D}] [get_pins {swl0_data_df_d0_0_q_reg[13]/D}]    \
[get_pins {swl0_data_df_d0_0_q_reg[14]/D}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[15]/D}] [get_pins {swl0_data_df_d0_0_q_reg[16]/D}]    \
[get_pins {swl0_data_df_d0_0_q_reg[17]/D}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[18]/D}] [get_pins {swl0_data_df_d0_0_q_reg[19]/D}]    \
[get_pins {swl0_data_df_d0_0_q_reg[20]/D}] [get_pins                           \
{swl0_data_df_d0_0_q_reg[21]/D}] [get_pins {swl0_data_df_d0_0_q_reg[22]/D}]    \
[get_pins {swl0_data_df_d0_0_q_reg[23]/D}] [get_pins                           \
{swl0_vld_fbf_d0_0_q_reg[0]/D}] [get_pins {swl0_vld_f5f_d0_0_q_reg[0]/D}]      \
[get_pins {swl0_vld_f4f_d0_0_q_reg[0]/D}] [get_pins                            \
{swl0_annul_ds_dcti_mf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_vldraw_mf_d0_0_q_reg[0]/D}] [get_pins {swl0_vldraw_ef_d0_0_q_reg[0]/D}]  \
[get_pins {swl0_vldraw_df_d0_0_q_reg[0]/D}] [get_pins                          \
{swl0_fpvld_w2f_d0_0_q_reg[0]/D}] [get_pins {swl0_fpvld_w1f_d0_0_q_reg[0]/D}]  \
[get_pins {swl0_vld_wf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_vld_bf_d0_0_q_reg[0]/D}] [get_pins {swl0_vld_mf_d0_0_q_reg[0]/D}]        \
[get_pins {swl0_valid_ef_d0_0_q_reg[0]/D}] [get_pins                           \
{swl0_vld_ef_d0_0_q_reg[0]/D}] [get_pins {swl0_vld_df_d0_0_q_reg[0]/D}]        \
[get_pins {swl0_allds_e_f_d0_0_q_reg[0]/D}] [get_pins                          \
{swl0_allds_d_f_d0_0_q_reg[0]/D}] [get_pins {swl0_allds_p_f_d0_0_q_reg[0]/D}]  \
[get_pins {swl0_spec_readyf_d0_0_q_reg[0]/D}] [get_pins                        \
{swl0_readyf_d0_0_q_reg[0]/D}] [get_pins {swl0_ccnt_f_d0_0_q_reg[0]/D}]        \
[get_pins {swl0_ccnt_f_d0_0_q_reg[1]/D}] [get_pins                             \
{swl0_ccnt_f_d0_0_q_reg[2]/D}] [get_pins {swl0_ccnt_f_d0_0_q_reg[3]/D}]        \
[get_pins {swl0_scnt_f_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_scnt_f_d0_0_q_reg[1]/D}] [get_pins {swl0_scnt_f_d0_0_q_reg[2]/D}]        \
[get_pins {swl0_scnt_f_d0_0_q_reg[3]/D}] [get_pins                             \
{swl0_annul_store_f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl0_pickstoref_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl0_store_ds2_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl0_store_ds1_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{swl0_not_annul_ds2_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl0_not_annul_ds1_f_d0_0_q_reg[0]/D}] [get_pins                              \
{swl0_brflush2_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl0_brflush1_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl0_ldst_sync_ldfsrf_d0_0_q_reg[0]/D}] [get_pins                             \
{swl0_ldst_sync_singlef_d0_0_q_reg[0]/D}] [get_pins                            \
{swl0_lsu_sync_waitf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_lsu_completef_d0_0_q_reg[0]/D}] [get_pins                                \
{swl0_lsu_completef_d0_0_q_reg[1]/D}] [get_pins                                \
{swl0_divide_wait1f_d0_0_q_reg[0]/D}] [get_pins                                \
{swl0_divide_waitf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl0_postsync_nsf_d0_0_q_reg[0]/D}] [get_pins                                 \
{swl0_active_threadf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_spec_enf_d0_0_q_reg[0]/D}] [get_pins {swl0_post_syncf_d0_0_q_reg[0]/D}]  \
[get_pins {swl0_block_store_stallf_d0_0_q_reg[0]/D}] [get_pins                 \
{swl0_block_store_stallf_d0_0_q_reg[1]/D}] [get_pins                           \
{swl0_tlu_retryf_d0_0_q_reg[0]/D}] [get_pins                                   \
{swl0_lsu_ext_flushf_d0_0_q_reg[0]/D}] [get_pins                               \
{swl0_external_flushf_d0_0_q_reg[0]/D}] [get_pins                              \
swl0_clkgenactive_c_0_l1en_reg/D] [get_pins swl0_clkgenpm_c_0_l1en_reg/D]      \
[get_pins {swl0_do_modef_d0_0_q_reg[0]/D}] [get_pins                           \
swl0_clkgen_c_0_l1en_reg/D]]
set_input_delay -clock l2clk  0.15  [get_ports l2clk]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_halted[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_halted[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_halted[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_halted[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_halted[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_halted[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_halted[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_halted[0]}]
set_input_delay -clock l2clk  0.15  [get_ports tcu_do_mode]
set_input_delay -clock l2clk  0.15  [get_ports {dec_block_store_stall[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_block_store_stall[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_block_store_stall[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_block_store_stall[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_block_store_stall[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_block_store_stall[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_block_store_stall[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_block_store_stall[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_ierr_d[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_ierr_d[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_spec_enable[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_spec_enable[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_spec_enable[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_spec_enable[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_spec_enable[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_spec_enable[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_spec_enable[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_spec_enable[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[0]}]
set_input_delay -clock l2clk  0.15  [get_ports lsu_pku_pmen]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_retry_state[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_retry_state[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_retry_state[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_retry_state[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_retry_state[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_retry_state[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_retry_state[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_retry_state[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_true_valid_e[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_true_valid_e[0]}]
set_input_delay -clock l2clk  0.15  [get_ports dec_decode0_d]
set_input_delay -clock l2clk  0.15  [get_ports dec_decode1_d]
set_input_delay -clock l2clk  0.15  [get_ports dec_valid0_d]
set_input_delay -clock l2clk  0.15  [get_ports dec_valid1_d]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_sync[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_sync[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_sync[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_sync[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_sync[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_sync[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_sync[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_sync[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_complete[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_complete[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_complete[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_complete[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_complete[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_complete[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_complete[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_complete[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_br_taken_e[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_br_taken_e[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_divide_completion[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_divide_completion[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_divide_completion[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_divide_completion[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_divide_completion[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_divide_completion[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_divide_completion[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_divide_completion[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_ibuffer_write_c[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_ibuffer_write_c[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_ibuffer_write_c[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_ibuffer_write_c[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_ibuffer_write_c[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_ibuffer_write_c[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_ibuffer_write_c[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_ibuffer_write_c[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_alloc[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_alloc[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_alloc[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_alloc[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_alloc[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_alloc[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_alloc[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_alloc[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_dealloc[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_dealloc[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_dealloc[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_dealloc[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_dealloc[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_dealloc[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_dealloc[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_stb_dealloc[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_kill[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_kill[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_kill[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_kill[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_kill[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_kill[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_kill[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_kill[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_valid_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_valid_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_valid_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_valid_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_valid_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_valid_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_valid_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_valid_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_upper_buffer_valid_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_upper_buffer_valid_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_upper_buffer_valid_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_upper_buffer_valid_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_upper_buffer_valid_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_upper_buffer_valid_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_upper_buffer_valid_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_upper_buffer_valid_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports scan_in]
set_input_delay -clock l2clk  0.15  [get_ports tcu_pce_ov]
set_input_delay -clock l2clk  0.15  [get_ports spc_aclk]
set_input_delay -clock l2clk  0.15  [get_ports spc_bclk]
set_input_delay -clock l2clk  0.15  [get_ports tcu_scan_en]
set_output_delay -clock l2clk  0.2  [get_ports {pku_raw_pick0_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_raw_pick0_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_raw_pick0_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_raw_pick0_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_raw_pick1_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_raw_pick1_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_raw_pick1_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_raw_pick1_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_base_pick_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_base_pick_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_base_pick_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_base_pick_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_base_pick_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_base_pick_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_base_pick_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_base_pick_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pick_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pick_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pick_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pick_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pick_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pick_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pick_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pick_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_lsu_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_lsu_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_lsu_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_lsu_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_lsu_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_lsu_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_lsu_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_lsu_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fgu_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fgu_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fgu_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fgu_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fgu_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fgu_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fgu_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fgu_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pdist_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pdist_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pdist_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pdist_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pdist_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pdist_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pdist_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_pdist_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_twocycle_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_twocycle_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_twocycle_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_twocycle_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_twocycle_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_twocycle_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_twocycle_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_twocycle_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_idest_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_idest_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_idest_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_idest_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_idest_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_idest_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_idest_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_idest_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fdest_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fdest_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fdest_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fdest_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fdest_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fdest_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fdest_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fdest_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fsrc_rd_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fsrc_rd_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fsrc_rd_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fsrc_rd_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fsrc_rd_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fsrc_rd_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fsrc_rd_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_fsrc_rd_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs1_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs1_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs1_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs1_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs1_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs1_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs1_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs1_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs2_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs2_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs2_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs2_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs2_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs2_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs2_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rs2_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rd_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rd_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rd_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rd_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rd_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rd_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rd_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_isrc_rd_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_valid_e[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_valid_e[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_valid_e[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_valid_e[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_valid_e[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_valid_e[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_valid_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_valid_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken0_e[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken0_e[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken0_e[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken0_e[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken0_e[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken0_e[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken0_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken0_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken1_e[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken1_e[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken1_e[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken1_e[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken1_e[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken1_e[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken1_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_annul_ds_dcti_brtaken1_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f1[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f1[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f1[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f1[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f1[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f1[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f1[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f1[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f2[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f2[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f2[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f2[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f2[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f2[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f2[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_f2[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lb[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lb[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lb[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lb[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lb[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lb[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lb[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lb[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lm[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lm[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lm[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lm[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lm[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lm[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lm[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_lm[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_m[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_m[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_m[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_m[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_m[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_m[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_b[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_b[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_b[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_b[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_b[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_b[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_b[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_b[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_load_flush_w[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_load_flush_w[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_load_flush_w[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_load_flush_w[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_load_flush_w[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_load_flush_w[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_load_flush_w[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_load_flush_w[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_ds_e[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_ds_e[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_ds_e[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_ds_e[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_ds_e[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_ds_e[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_ds_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_ds_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_upper_buffer[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_upper_buffer[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_upper_buffer[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_upper_buffer[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_upper_buffer[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_upper_buffer[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_upper_buffer[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_upper_buffer[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_buffer0[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_buffer0[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_buffer0[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_buffer0[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_buffer0[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_buffer0[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_buffer0[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_flush_buffer0[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_quiesce[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_quiesce[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_quiesce[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_quiesce[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_quiesce[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_quiesce[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_quiesce[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_quiesce[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken00[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken00[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken01[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken01[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken02[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken02[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken03[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken03[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken04[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken04[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken05[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken05[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken06[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken06[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken07[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken07[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken10[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken10[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken11[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken11[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken12[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken12[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken13[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken13[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken14[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken14[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken15[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken15[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken16[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken16[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken17[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pku_inst_cnt_brtaken17[0]}]
set_output_delay -clock l2clk  0.2  [get_ports scan_out]
