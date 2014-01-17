###################################################################

# Created by write_sdc on Sun Jan 12 15:55:58 2014

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
[get_ports spc_aclk] [get_ports spc_bclk] [get_ports tcu_scan_en] [get_ports   \
{power_throttle[2]}] [get_ports {power_throttle[1]}] [get_ports                \
{power_throttle[0]}] [get_ports lb_lbist_running] [get_ports lsu_dec_pmen]     \
[get_ports lsu_exu_pmen] [get_ports {spc_core_running_status[7]}] [get_ports   \
{spc_core_running_status[6]}] [get_ports {spc_core_running_status[5]}]         \
[get_ports {spc_core_running_status[4]}] [get_ports                            \
{spc_core_running_status[3]}] [get_ports {spc_core_running_status[2]}]         \
[get_ports {spc_core_running_status[1]}] [get_ports                            \
{spc_core_running_status[0]}] [get_ports {exu_test_tid0[1]}] [get_ports        \
{exu_test_tid0[0]}] [get_ports {exu_test_addr0[4]}] [get_ports                 \
{exu_test_addr0[3]}] [get_ports {exu_test_addr0[2]}] [get_ports                \
{exu_test_addr0[1]}] [get_ports {exu_test_addr0[0]}] [get_ports                \
exu_test_valid0] [get_ports {exu_test_tid1[1]}] [get_ports {exu_test_tid1[0]}] \
[get_ports {exu_test_addr1[4]}] [get_ports {exu_test_addr1[3]}] [get_ports     \
{exu_test_addr1[2]}] [get_ports {exu_test_addr1[1]}] [get_ports                \
{exu_test_addr1[0]}] [get_ports exu_test_valid1] [get_ports tlu_cerer_icdp]    \
[get_ports {tlu_dec_pstate_pef[7]}] [get_ports {tlu_dec_pstate_pef[6]}]        \
[get_ports {tlu_dec_pstate_pef[5]}] [get_ports {tlu_dec_pstate_pef[4]}]        \
[get_ports {tlu_dec_pstate_pef[3]}] [get_ports {tlu_dec_pstate_pef[2]}]        \
[get_ports {tlu_dec_pstate_pef[1]}] [get_ports {tlu_dec_pstate_pef[0]}]        \
[get_ports {fgu_fprs_fef[7]}] [get_ports {fgu_fprs_fef[6]}] [get_ports         \
{fgu_fprs_fef[5]}] [get_ports {fgu_fprs_fef[4]}] [get_ports {fgu_fprs_fef[3]}] \
[get_ports {fgu_fprs_fef[2]}] [get_ports {fgu_fprs_fef[1]}] [get_ports         \
{fgu_fprs_fef[0]}] [get_ports {tlu_dec_hpstate_hpriv[7]}] [get_ports           \
{tlu_dec_hpstate_hpriv[6]}] [get_ports {tlu_dec_hpstate_hpriv[5]}] [get_ports  \
{tlu_dec_hpstate_hpriv[4]}] [get_ports {tlu_dec_hpstate_hpriv[3]}] [get_ports  \
{tlu_dec_hpstate_hpriv[2]}] [get_ports {tlu_dec_hpstate_hpriv[1]}] [get_ports  \
{tlu_dec_hpstate_hpriv[0]}] [get_ports {tlu_dec_pstate_priv[7]}] [get_ports    \
{tlu_dec_pstate_priv[6]}] [get_ports {tlu_dec_pstate_priv[5]}] [get_ports      \
{tlu_dec_pstate_priv[4]}] [get_ports {tlu_dec_pstate_priv[3]}] [get_ports      \
{tlu_dec_pstate_priv[2]}] [get_ports {tlu_dec_pstate_priv[1]}] [get_ports      \
{tlu_dec_pstate_priv[0]}] [get_ports {tlu_pstate_am[7]}] [get_ports            \
{tlu_pstate_am[6]}] [get_ports {tlu_pstate_am[5]}] [get_ports                  \
{tlu_pstate_am[4]}] [get_ports {tlu_pstate_am[3]}] [get_ports                  \
{tlu_pstate_am[2]}] [get_ports {tlu_pstate_am[1]}] [get_ports                  \
{tlu_pstate_am[0]}] [get_ports {tlu_window_block[1]}] [get_ports               \
{tlu_window_block[0]}] [get_ports exu0_window_block] [get_ports                \
exu1_window_block] [get_ports lsu_cpq_stall] [get_ports {ifu_buf0_inst0[32]}]  \
[get_ports {ifu_buf0_inst0[31]}] [get_ports {ifu_buf0_inst0[30]}] [get_ports   \
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
{ifu_buf0_excp7[0]}] [get_ports {tlu_flush_ifu[7]}] [get_ports                 \
{tlu_flush_ifu[6]}] [get_ports {tlu_flush_ifu[5]}] [get_ports                  \
{tlu_flush_ifu[4]}] [get_ports {tlu_flush_ifu[3]}] [get_ports                  \
{tlu_flush_ifu[2]}] [get_ports {tlu_flush_ifu[1]}] [get_ports                  \
{tlu_flush_ifu[0]}] [get_ports {pku_load_flush_w[7]}] [get_ports               \
{pku_load_flush_w[6]}] [get_ports {pku_load_flush_w[5]}] [get_ports            \
{pku_load_flush_w[4]}] [get_ports {pku_load_flush_w[3]}] [get_ports            \
{pku_load_flush_w[2]}] [get_ports {pku_load_flush_w[1]}] [get_ports            \
{pku_load_flush_w[0]}] [get_ports {pku_inst_cnt_brtaken00[1]}] [get_ports      \
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
{pku_inst_cnt_brtaken17[0]}] [get_ports {pku_base_pick_p[7]}] [get_ports       \
{pku_base_pick_p[6]}] [get_ports {pku_base_pick_p[5]}] [get_ports              \
{pku_base_pick_p[4]}] [get_ports {pku_base_pick_p[3]}] [get_ports              \
{pku_base_pick_p[2]}] [get_ports {pku_base_pick_p[1]}] [get_ports              \
{pku_base_pick_p[0]}] [get_ports {pku_raw_pick0_p[3]}] [get_ports              \
{pku_raw_pick0_p[2]}] [get_ports {pku_raw_pick0_p[1]}] [get_ports              \
{pku_raw_pick0_p[0]}] [get_ports {pku_raw_pick1_p[7]}] [get_ports              \
{pku_raw_pick1_p[6]}] [get_ports {pku_raw_pick1_p[5]}] [get_ports              \
{pku_raw_pick1_p[4]}] [get_ports {pku_annul_ds_dcti_brtaken0_e[7]}] [get_ports \
{pku_annul_ds_dcti_brtaken0_e[6]}] [get_ports                                  \
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
{pku_annul_ds_dcti_brtaken1_e[0]}] [get_ports {pku_valid_e[7]}] [get_ports     \
{pku_valid_e[6]}] [get_ports {pku_valid_e[5]}] [get_ports {pku_valid_e[4]}]    \
[get_ports {pku_valid_e[3]}] [get_ports {pku_valid_e[2]}] [get_ports           \
{pku_valid_e[1]}] [get_ports {pku_valid_e[0]}] [get_ports {pku_ds_e[7]}]       \
[get_ports {pku_ds_e[6]}] [get_ports {pku_ds_e[5]}] [get_ports {pku_ds_e[4]}]  \
[get_ports {pku_ds_e[3]}] [get_ports {pku_ds_e[2]}] [get_ports {pku_ds_e[1]}]  \
[get_ports {pku_ds_e[0]}] [get_ports {pku_lsu_p[7]}] [get_ports                \
{pku_lsu_p[6]}] [get_ports {pku_lsu_p[5]}] [get_ports {pku_lsu_p[4]}]          \
[get_ports {pku_lsu_p[3]}] [get_ports {pku_lsu_p[2]}] [get_ports               \
{pku_lsu_p[1]}] [get_ports {pku_lsu_p[0]}] [get_ports {pku_fgu_p[7]}]          \
[get_ports {pku_fgu_p[6]}] [get_ports {pku_fgu_p[5]}] [get_ports               \
{pku_fgu_p[4]}] [get_ports {pku_fgu_p[3]}] [get_ports {pku_fgu_p[2]}]          \
[get_ports {pku_fgu_p[1]}] [get_ports {pku_fgu_p[0]}] [get_ports               \
{pku_pdist_p[7]}] [get_ports {pku_pdist_p[6]}] [get_ports {pku_pdist_p[5]}]    \
[get_ports {pku_pdist_p[4]}] [get_ports {pku_pdist_p[3]}] [get_ports           \
{pku_pdist_p[2]}] [get_ports {pku_pdist_p[1]}] [get_ports {pku_pdist_p[0]}]    \
[get_ports {pku_twocycle_p[7]}] [get_ports {pku_twocycle_p[6]}] [get_ports     \
{pku_twocycle_p[5]}] [get_ports {pku_twocycle_p[4]}] [get_ports                \
{pku_twocycle_p[3]}] [get_ports {pku_twocycle_p[2]}] [get_ports                \
{pku_twocycle_p[1]}] [get_ports {pku_twocycle_p[0]}] [get_ports                \
{pku_idest_p[7]}] [get_ports {pku_idest_p[6]}] [get_ports {pku_idest_p[5]}]    \
[get_ports {pku_idest_p[4]}] [get_ports {pku_idest_p[3]}] [get_ports           \
{pku_idest_p[2]}] [get_ports {pku_idest_p[1]}] [get_ports {pku_idest_p[0]}]    \
[get_ports {pku_fdest_p[7]}] [get_ports {pku_fdest_p[6]}] [get_ports           \
{pku_fdest_p[5]}] [get_ports {pku_fdest_p[4]}] [get_ports {pku_fdest_p[3]}]    \
[get_ports {pku_fdest_p[2]}] [get_ports {pku_fdest_p[1]}] [get_ports           \
{pku_fdest_p[0]}] [get_ports {pku_fsrc_rd_p[7]}] [get_ports                    \
{pku_fsrc_rd_p[6]}] [get_ports {pku_fsrc_rd_p[5]}] [get_ports                  \
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
{pku_isrc_rd_p[0]}] [get_ports {pku_flush_f1[7]}] [get_ports                   \
{pku_flush_f1[6]}] [get_ports {pku_flush_f1[5]}] [get_ports {pku_flush_f1[4]}] \
[get_ports {pku_flush_f1[3]}] [get_ports {pku_flush_f1[2]}] [get_ports         \
{pku_flush_f1[1]}] [get_ports {pku_flush_f1[0]}] [get_ports {pku_flush_f2[7]}] \
[get_ports {pku_flush_f2[6]}] [get_ports {pku_flush_f2[5]}] [get_ports         \
{pku_flush_f2[4]}] [get_ports {pku_flush_f2[3]}] [get_ports {pku_flush_f2[2]}] \
[get_ports {pku_flush_f2[1]}] [get_ports {pku_flush_f2[0]}] [get_ports         \
{pku_flush_lm[7]}] [get_ports {pku_flush_lm[6]}] [get_ports {pku_flush_lm[5]}] \
[get_ports {pku_flush_lm[4]}] [get_ports {pku_flush_lm[3]}] [get_ports         \
{pku_flush_lm[2]}] [get_ports {pku_flush_lm[1]}] [get_ports {pku_flush_lm[0]}] \
[get_ports {pku_flush_lb[7]}] [get_ports {pku_flush_lb[6]}] [get_ports         \
{pku_flush_lb[5]}] [get_ports {pku_flush_lb[4]}] [get_ports {pku_flush_lb[3]}] \
[get_ports {pku_flush_lb[2]}] [get_ports {pku_flush_lb[1]}] [get_ports         \
{pku_flush_lb[0]}] [get_ports {pku_flush_m[7]}] [get_ports {pku_flush_m[6]}]   \
[get_ports {pku_flush_m[5]}] [get_ports {pku_flush_m[4]}] [get_ports           \
{pku_flush_m[3]}] [get_ports {pku_flush_m[2]}] [get_ports {pku_flush_m[1]}]    \
[get_ports {pku_flush_m[0]}] [get_ports {pku_flush_b[7]}] [get_ports           \
{pku_flush_b[6]}] [get_ports {pku_flush_b[5]}] [get_ports {pku_flush_b[4]}]    \
[get_ports {pku_flush_b[3]}] [get_ports {pku_flush_b[2]}] [get_ports           \
{pku_flush_b[1]}] [get_ports {pku_flush_b[0]}] [get_ports spu_mult_request]    \
[get_ports lsu_block_store_stall] [get_ports {lsu_block_store_rd[4]}]          \
[get_ports {lsu_block_store_rd[3]}] [get_ports {lsu_block_store_tid[2]}]       \
[get_ports {lsu_block_store_tid[1]}] [get_ports {lsu_block_store_tid[0]}]      \
[get_ports tlu_dtlb_reload_stall] [get_ports fgu_ecc_asi_stall] [get_ports     \
{exu0_oddwin_b[3]}] [get_ports {exu0_oddwin_b[2]}] [get_ports                  \
{exu0_oddwin_b[1]}] [get_ports {exu0_oddwin_b[0]}] [get_ports                  \
{exu1_oddwin_b[3]}] [get_ports {exu1_oddwin_b[2]}] [get_ports                  \
{exu1_oddwin_b[1]}] [get_ports {exu1_oddwin_b[0]}] [get_ports                  \
{fgu_idiv_stall[1]}] [get_ports {fgu_idiv_stall[0]}] [get_ports                \
fgu_fdiv_stall] [get_ports {dec_br_taken_e1[1]}] [get_ports                    \
{dec_br_taken_e1[0]}]]  -to [list [get_ports {del_pick_d[7]}] [get_ports {del_pick_d[6]}] [get_ports  \
{del_pick_d[5]}] [get_ports {del_pick_d[4]}] [get_ports {del_pick_d[3]}]       \
[get_ports {del_pick_d[2]}] [get_ports {del_pick_d[1]}] [get_ports             \
{del_pick_d[0]}] [get_ports {dec_inst0_rd_d[4]}] [get_ports                    \
{dec_inst0_rd_d[3]}] [get_ports {dec_inst0_rd_d[2]}] [get_ports                \
{dec_inst0_rd_d[1]}] [get_ports {dec_inst0_rd_d[0]}] [get_ports                \
{dec_inst1_rd_d[4]}] [get_ports {dec_inst1_rd_d[3]}] [get_ports                \
{dec_inst1_rd_d[2]}] [get_ports {dec_inst1_rd_d[1]}] [get_ports                \
{dec_inst1_rd_d[0]}] [get_ports dec_rs1_addr0_e] [get_ports dec_rs1_addr1_e]   \
[get_ports {dec_inst0_d[32]}] [get_ports {dec_inst0_d[31]}] [get_ports         \
{dec_inst0_d[30]}] [get_ports {dec_inst0_d[29]}] [get_ports {dec_inst0_d[28]}] \
[get_ports {dec_inst0_d[27]}] [get_ports {dec_inst0_d[26]}] [get_ports         \
{dec_inst0_d[25]}] [get_ports {dec_inst0_d[24]}] [get_ports {dec_inst0_d[23]}] \
[get_ports {dec_inst0_d[22]}] [get_ports {dec_inst0_d[21]}] [get_ports         \
{dec_inst0_d[20]}] [get_ports {dec_inst0_d[19]}] [get_ports {dec_inst0_d[18]}] \
[get_ports {dec_inst0_d[17]}] [get_ports {dec_inst0_d[16]}] [get_ports         \
{dec_inst0_d[15]}] [get_ports {dec_inst0_d[14]}] [get_ports {dec_inst0_d[13]}] \
[get_ports {dec_inst0_d[12]}] [get_ports {dec_inst0_d[11]}] [get_ports         \
{dec_inst0_d[10]}] [get_ports {dec_inst0_d[9]}] [get_ports {dec_inst0_d[8]}]   \
[get_ports {dec_inst0_d[7]}] [get_ports {dec_inst0_d[6]}] [get_ports           \
{dec_inst0_d[5]}] [get_ports {dec_inst0_d[4]}] [get_ports {dec_inst0_d[3]}]    \
[get_ports {dec_inst0_d[2]}] [get_ports {dec_inst0_d[1]}] [get_ports           \
{dec_inst0_d[0]}] [get_ports {dec_inst1_d[32]}] [get_ports {dec_inst1_d[31]}]  \
[get_ports {dec_inst1_d[30]}] [get_ports {dec_inst1_d[29]}] [get_ports         \
{dec_inst1_d[28]}] [get_ports {dec_inst1_d[27]}] [get_ports {dec_inst1_d[26]}] \
[get_ports {dec_inst1_d[25]}] [get_ports {dec_inst1_d[24]}] [get_ports         \
{dec_inst1_d[23]}] [get_ports {dec_inst1_d[22]}] [get_ports {dec_inst1_d[21]}] \
[get_ports {dec_inst1_d[20]}] [get_ports {dec_inst1_d[19]}] [get_ports         \
{dec_inst1_d[18]}] [get_ports {dec_inst1_d[17]}] [get_ports {dec_inst1_d[16]}] \
[get_ports {dec_inst1_d[15]}] [get_ports {dec_inst1_d[14]}] [get_ports         \
{dec_inst1_d[13]}] [get_ports {dec_inst1_d[12]}] [get_ports {dec_inst1_d[11]}] \
[get_ports {dec_inst1_d[10]}] [get_ports {dec_inst1_d[9]}] [get_ports          \
{dec_inst1_d[8]}] [get_ports {dec_inst1_d[7]}] [get_ports {dec_inst1_d[6]}]    \
[get_ports {dec_inst1_d[5]}] [get_ports {dec_inst1_d[4]}] [get_ports           \
{dec_inst1_d[3]}] [get_ports {dec_inst1_d[2]}] [get_ports {dec_inst1_d[1]}]    \
[get_ports {dec_inst1_d[0]}] [get_ports dec_decode0_d] [get_ports              \
dec_decode1_d] [get_ports dec_valid0_d] [get_ports dec_valid1_d] [get_ports    \
{dec_true_valid_e[1]}] [get_ports {dec_true_valid_e[0]}] [get_ports            \
{dec_tid0_d[1]}] [get_ports {dec_tid0_d[0]}] [get_ports {dec_tid1_d[1]}]       \
[get_ports {dec_tid1_d[0]}] [get_ports {dec_tid0_p[1]}] [get_ports             \
{dec_tid0_p[0]}] [get_ports {dec_tid1_p[1]}] [get_ports {dec_tid1_p[0]}]       \
[get_ports {dec_raw_pick_p[7]}] [get_ports {dec_raw_pick_p[6]}] [get_ports     \
{dec_raw_pick_p[5]}] [get_ports {dec_raw_pick_p[4]}] [get_ports                \
{dec_raw_pick_p[3]}] [get_ports {dec_raw_pick_p[2]}] [get_ports                \
{dec_raw_pick_p[1]}] [get_ports {dec_raw_pick_p[0]}] [get_ports                \
{dec_inst0_rs1_p[4]}] [get_ports {dec_inst0_rs1_p[3]}] [get_ports              \
{dec_inst0_rs1_p[2]}] [get_ports {dec_inst0_rs1_p[1]}] [get_ports              \
{dec_inst0_rs1_p[0]}] [get_ports {dec_inst0_rs2_p[4]}] [get_ports              \
{dec_inst0_rs2_p[3]}] [get_ports {dec_inst0_rs2_p[2]}] [get_ports              \
{dec_inst0_rs2_p[1]}] [get_ports {dec_inst0_rs2_p[0]}] [get_ports              \
{dec_inst0_rs3_p[4]}] [get_ports {dec_inst0_rs3_p[3]}] [get_ports              \
{dec_inst0_rs3_p[2]}] [get_ports {dec_inst0_rs3_p[1]}] [get_ports              \
{dec_inst0_rs3_p[0]}] [get_ports dec_inst0_rs1_vld_p] [get_ports               \
dec_inst0_rs2_vld_p] [get_ports dec_inst0_rs3_vld_p] [get_ports                \
{dec_inst1_rs1_p[4]}] [get_ports {dec_inst1_rs1_p[3]}] [get_ports              \
{dec_inst1_rs1_p[2]}] [get_ports {dec_inst1_rs1_p[1]}] [get_ports              \
{dec_inst1_rs1_p[0]}] [get_ports {dec_inst1_rs2_p[4]}] [get_ports              \
{dec_inst1_rs2_p[3]}] [get_ports {dec_inst1_rs2_p[2]}] [get_ports              \
{dec_inst1_rs2_p[1]}] [get_ports {dec_inst1_rs2_p[0]}] [get_ports              \
{dec_inst1_rs3_p[4]}] [get_ports {dec_inst1_rs3_p[3]}] [get_ports              \
{dec_inst1_rs3_p[2]}] [get_ports {dec_inst1_rs3_p[1]}] [get_ports              \
{dec_inst1_rs3_p[0]}] [get_ports dec_inst1_rs1_vld_p] [get_ports               \
dec_inst1_rs2_vld_p] [get_ports dec_inst1_rs3_vld_p] [get_ports                \
{dec_frf_r1_addr_d[4]}] [get_ports {dec_frf_r1_addr_d[3]}] [get_ports          \
{dec_frf_r1_addr_d[2]}] [get_ports {dec_frf_r1_addr_d[1]}] [get_ports          \
{dec_frf_r1_addr_d[0]}] [get_ports {dec_frf_r2_addr_d[4]}] [get_ports          \
{dec_frf_r2_addr_d[3]}] [get_ports {dec_frf_r2_addr_d[2]}] [get_ports          \
{dec_frf_r2_addr_d[1]}] [get_ports {dec_frf_r2_addr_d[0]}] [get_ports          \
dec_frf_r1_vld_d] [get_ports dec_frf_r2_vld_d] [get_ports dec_frf_r1_32b_d]    \
[get_ports dec_frf_r2_32b_d] [get_ports dec_frf_r1_odd32b_d] [get_ports        \
dec_frf_r2_odd32b_d] [get_ports {dec_frf_w_addr_d[4]}] [get_ports              \
{dec_frf_w_addr_d[3]}] [get_ports {dec_frf_w_addr_d[2]}] [get_ports            \
{dec_frf_w_addr_d[1]}] [get_ports {dec_frf_w_addr_d[0]}] [get_ports            \
dec_frf_w_vld_d] [get_ports dec_frf_w_32b_d] [get_ports dec_frf_w_odd32b_d]    \
[get_ports dec_exu_src_vld_d] [get_ports {dec_irf_w_addr_d[4]}] [get_ports     \
{dec_irf_w_addr_d[3]}] [get_ports {dec_irf_w_addr_d[2]}] [get_ports            \
{dec_irf_w_addr_d[1]}] [get_ports {dec_irf_w_addr_d[0]}] [get_ports            \
dec_frf_store_d] [get_ports dec_fsr_store_d] [get_ports {dec_fgu_op3_d[5]}]    \
[get_ports {dec_fgu_op3_d[4]}] [get_ports {dec_fgu_op3_d[3]}] [get_ports       \
{dec_fgu_op3_d[2]}] [get_ports {dec_fgu_op3_d[1]}] [get_ports                  \
{dec_fgu_op3_d[0]}] [get_ports {dec_fgu_opf_d[7]}] [get_ports                  \
{dec_fgu_opf_d[6]}] [get_ports {dec_fgu_opf_d[5]}] [get_ports                  \
{dec_fgu_opf_d[4]}] [get_ports {dec_fgu_opf_d[3]}] [get_ports                  \
{dec_fgu_opf_d[2]}] [get_ports {dec_fgu_opf_d[1]}] [get_ports                  \
{dec_fgu_opf_d[0]}] [get_ports dec_fgu_decode_d] [get_ports                    \
{dec_fgu_tid_d[2]}] [get_ports {dec_fgu_tid_d[1]}] [get_ports                  \
{dec_fgu_tid_d[0]}] [get_ports dec_flush_f1] [get_ports dec_flush_f2]          \
[get_ports dec_flush_lm] [get_ports dec_flush_lb] [get_ports {dec_flush_m[1]}] \
[get_ports {dec_flush_m[0]}] [get_ports {dec_flush_b[1]}] [get_ports           \
{dec_flush_b[0]}] [get_ports dec_spu_grant_d] [get_ports dec_spu_grant_fgu_d]  \
[get_ports {dec_block_store_b[7]}] [get_ports {dec_block_store_b[6]}]          \
[get_ports {dec_block_store_b[5]}] [get_ports {dec_block_store_b[4]}]          \
[get_ports {dec_block_store_b[3]}] [get_ports {dec_block_store_b[2]}]          \
[get_ports {dec_block_store_b[1]}] [get_ports {dec_block_store_b[0]}]          \
[get_ports {dec_load_flush_w[1]}] [get_ports {dec_load_flush_w[0]}] [get_ports \
{dec_exc0_m[4]}] [get_ports {dec_exc0_m[3]}] [get_ports {dec_exc0_m[2]}]       \
[get_ports {dec_exc0_m[1]}] [get_ports {dec_exc0_m[0]}] [get_ports             \
{dec_exc1_m[4]}] [get_ports {dec_exc1_m[3]}] [get_ports {dec_exc1_m[2]}]       \
[get_ports {dec_exc1_m[1]}] [get_ports {dec_exc1_m[0]}] [get_ports             \
{dec_inst0_cnt[1]}] [get_ports {dec_inst0_cnt[0]}] [get_ports                  \
{dec_inst1_cnt[1]}] [get_ports {dec_inst1_cnt[0]}] [get_ports {dec_tid0_m[1]}] \
[get_ports {dec_tid0_m[0]}] [get_ports {dec_tid1_m[1]}] [get_ports             \
{dec_tid1_m[0]}] [get_ports {dec_inst_valid_m[1]}] [get_ports                  \
{dec_inst_valid_m[0]}] [get_ports {dec_lsu_inst_m[1]}] [get_ports              \
{dec_lsu_inst_m[0]}] [get_ports {dec_fgu_inst_m[1]}] [get_ports                \
{dec_fgu_inst_m[0]}] [get_ports {dec_cti_inst_m[1]}] [get_ports                \
{dec_cti_inst_m[0]}] [get_ports {dec_illegal_inst_m[1]}] [get_ports            \
{dec_illegal_inst_m[0]}] [get_ports {dec_icache_perr_m[1]}] [get_ports         \
{dec_icache_perr_m[0]}] [get_ports {dec_priv_exc_m[1]}] [get_ports             \
{dec_priv_exc_m[0]}] [get_ports {dec_hpriv_exc_m[1]}] [get_ports               \
{dec_hpriv_exc_m[0]}] [get_ports {dec_fpdisable_exc_m[1]}] [get_ports          \
{dec_fpdisable_exc_m[0]}] [get_ports {dec_br_taken_m[1]}] [get_ports           \
{dec_br_taken_m[0]}] [get_ports {dec_done_inst_m[1]}] [get_ports               \
{dec_done_inst_m[0]}] [get_ports {dec_retry_inst_m[1]}] [get_ports             \
{dec_retry_inst_m[0]}] [get_ports {dec_sir_inst_m[1]}] [get_ports              \
{dec_sir_inst_m[0]}] [get_ports {dec_annul_ds_m[1]}] [get_ports                \
{dec_annul_ds_m[0]}] [get_ports {dec_ds_m[1]}] [get_ports {dec_ds_m[0]}]       \
[get_ports {dec_fgu_sel_e[1]}] [get_ports {dec_fgu_sel_e[0]}] [get_ports       \
{dec_fgu_sel_m[1]}] [get_ports {dec_fgu_sel_m[0]}] [get_ports dec_lsu_sel0_e]  \
[get_ports dec_lsu_sel1_e] [get_ports dec_lsu_sel0_lower_e] [get_ports         \
dec_lsu_sel1_lower_e] [get_ports dec_lsu_sel0_upper_e] [get_ports              \
dec_lsu_sel1_upper_e] [get_ports dec_rs1_addr0_upper_e] [get_ports             \
dec_rs1_addr1_upper_e] [get_ports dec_ld_inst_e] [get_ports dec_st_inst_e]     \
[get_ports dec_fsr_ldst_e] [get_ports dec_fpldst_inst_e] [get_ports            \
dec_ldst_dbl_e] [get_ports dec_pref_inst_e] [get_ports dec_flush_inst_e]       \
[get_ports dec_memstbar_inst_e] [get_ports {dec_ldst_sz_e[1]}] [get_ports      \
{dec_ldst_sz_e[0]}] [get_ports {dec_frf_r2_addr_e[4]}] [get_ports              \
{dec_frf_r2_addr_e[3]}] [get_ports dec_sr_inst_e] [get_ports dec_pr_inst_e]    \
[get_ports dec_hpr_inst_e] [get_ports dec_casa_inst_e] [get_ports              \
dec_ldstub_inst_e] [get_ports dec_swap_inst_e] [get_ports dec_altspace_d]      \
[get_ports dec_sign_ext_e] [get_ports {dec_sraddr_e[4]}] [get_ports            \
{dec_sraddr_e[3]}] [get_ports {dec_sraddr_e[2]}] [get_ports {dec_sraddr_e[1]}] \
[get_ports {dec_sraddr_e[0]}] [get_ports dec_imm_asi_vld_d] [get_ports         \
{dec_imm_asi_d[7]}] [get_ports {dec_imm_asi_d[6]}] [get_ports                  \
{dec_imm_asi_d[5]}] [get_ports {dec_imm_asi_d[4]}] [get_ports                  \
{dec_imm_asi_d[3]}] [get_ports {dec_imm_asi_d[2]}] [get_ports                  \
{dec_imm_asi_d[1]}] [get_ports {dec_imm_asi_d[0]}] [get_ports                  \
{dec_lsu_tid0_d[1]}] [get_ports {dec_lsu_tid0_d[0]}] [get_ports                \
{dec_lsu_tid1_d[1]}] [get_ports {dec_lsu_tid1_d[0]}] [get_ports dec_lsu_tg_d]  \
[get_ports {dec_lsu_rd_e[4]}] [get_ports {dec_lsu_rd_e[3]}] [get_ports         \
{dec_lsu_rd_e[2]}] [get_ports {dec_lsu_rd_e[1]}] [get_ports {dec_lsu_rd_e[0]}] \
[get_ports dec_ld_inst_d] [get_ports {dec_instr0_type_d[9]}] [get_ports        \
{dec_instr0_type_d[8]}] [get_ports {dec_instr0_type_d[7]}] [get_ports          \
{dec_instr0_type_d[6]}] [get_ports {dec_instr0_type_d[5]}] [get_ports          \
{dec_instr0_type_d[4]}] [get_ports {dec_instr0_type_d[3]}] [get_ports          \
{dec_instr0_type_d[2]}] [get_ports {dec_instr0_type_d[1]}] [get_ports          \
{dec_instr0_type_d[0]}] [get_ports {dec_instr1_type_d[9]}] [get_ports          \
{dec_instr1_type_d[8]}] [get_ports {dec_instr1_type_d[7]}] [get_ports          \
{dec_instr1_type_d[6]}] [get_ports {dec_instr1_type_d[5]}] [get_ports          \
{dec_instr1_type_d[4]}] [get_ports {dec_instr1_type_d[3]}] [get_ports          \
{dec_instr1_type_d[2]}] [get_ports {dec_instr1_type_d[1]}] [get_ports          \
{dec_instr1_type_d[0]}] [get_ports {dec_valid_e[1]}] [get_ports                \
{dec_valid_e[0]}] [get_ports {dec_pmu_valid_e[1]}] [get_ports                  \
{dec_pmu_valid_e[0]}] [get_ports dec_fgu_valid_e] [get_ports                   \
{dec_exu_clken[1]}] [get_ports {dec_exu_clken[0]}] [get_ports dec_lsu_sel0_d]  \
[get_ports {dec_ierr_d[1]}] [get_ports {dec_ierr_d[0]}] [get_ports             \
{dec_block_store_stall[7]}] [get_ports {dec_block_store_stall[6]}] [get_ports  \
{dec_block_store_stall[5]}] [get_ports {dec_block_store_stall[4]}] [get_ports  \
{dec_block_store_stall[3]}] [get_ports {dec_block_store_stall[2]}] [get_ports  \
{dec_block_store_stall[1]}] [get_ports {dec_block_store_stall[0]}] [get_ports  \
scan_out]]
group_path -name in2reg  -from [list [get_clocks l2clk] [get_ports scan_in] [get_ports tcu_pce_ov]     \
[get_ports spc_aclk] [get_ports spc_bclk] [get_ports tcu_scan_en] [get_ports   \
{power_throttle[2]}] [get_ports {power_throttle[1]}] [get_ports                \
{power_throttle[0]}] [get_ports lb_lbist_running] [get_ports lsu_dec_pmen]     \
[get_ports lsu_exu_pmen] [get_ports {spc_core_running_status[7]}] [get_ports   \
{spc_core_running_status[6]}] [get_ports {spc_core_running_status[5]}]         \
[get_ports {spc_core_running_status[4]}] [get_ports                            \
{spc_core_running_status[3]}] [get_ports {spc_core_running_status[2]}]         \
[get_ports {spc_core_running_status[1]}] [get_ports                            \
{spc_core_running_status[0]}] [get_ports {exu_test_tid0[1]}] [get_ports        \
{exu_test_tid0[0]}] [get_ports {exu_test_addr0[4]}] [get_ports                 \
{exu_test_addr0[3]}] [get_ports {exu_test_addr0[2]}] [get_ports                \
{exu_test_addr0[1]}] [get_ports {exu_test_addr0[0]}] [get_ports                \
exu_test_valid0] [get_ports {exu_test_tid1[1]}] [get_ports {exu_test_tid1[0]}] \
[get_ports {exu_test_addr1[4]}] [get_ports {exu_test_addr1[3]}] [get_ports     \
{exu_test_addr1[2]}] [get_ports {exu_test_addr1[1]}] [get_ports                \
{exu_test_addr1[0]}] [get_ports exu_test_valid1] [get_ports tlu_cerer_icdp]    \
[get_ports {tlu_dec_pstate_pef[7]}] [get_ports {tlu_dec_pstate_pef[6]}]        \
[get_ports {tlu_dec_pstate_pef[5]}] [get_ports {tlu_dec_pstate_pef[4]}]        \
[get_ports {tlu_dec_pstate_pef[3]}] [get_ports {tlu_dec_pstate_pef[2]}]        \
[get_ports {tlu_dec_pstate_pef[1]}] [get_ports {tlu_dec_pstate_pef[0]}]        \
[get_ports {fgu_fprs_fef[7]}] [get_ports {fgu_fprs_fef[6]}] [get_ports         \
{fgu_fprs_fef[5]}] [get_ports {fgu_fprs_fef[4]}] [get_ports {fgu_fprs_fef[3]}] \
[get_ports {fgu_fprs_fef[2]}] [get_ports {fgu_fprs_fef[1]}] [get_ports         \
{fgu_fprs_fef[0]}] [get_ports {tlu_dec_hpstate_hpriv[7]}] [get_ports           \
{tlu_dec_hpstate_hpriv[6]}] [get_ports {tlu_dec_hpstate_hpriv[5]}] [get_ports  \
{tlu_dec_hpstate_hpriv[4]}] [get_ports {tlu_dec_hpstate_hpriv[3]}] [get_ports  \
{tlu_dec_hpstate_hpriv[2]}] [get_ports {tlu_dec_hpstate_hpriv[1]}] [get_ports  \
{tlu_dec_hpstate_hpriv[0]}] [get_ports {tlu_dec_pstate_priv[7]}] [get_ports    \
{tlu_dec_pstate_priv[6]}] [get_ports {tlu_dec_pstate_priv[5]}] [get_ports      \
{tlu_dec_pstate_priv[4]}] [get_ports {tlu_dec_pstate_priv[3]}] [get_ports      \
{tlu_dec_pstate_priv[2]}] [get_ports {tlu_dec_pstate_priv[1]}] [get_ports      \
{tlu_dec_pstate_priv[0]}] [get_ports {tlu_pstate_am[7]}] [get_ports            \
{tlu_pstate_am[6]}] [get_ports {tlu_pstate_am[5]}] [get_ports                  \
{tlu_pstate_am[4]}] [get_ports {tlu_pstate_am[3]}] [get_ports                  \
{tlu_pstate_am[2]}] [get_ports {tlu_pstate_am[1]}] [get_ports                  \
{tlu_pstate_am[0]}] [get_ports {tlu_window_block[1]}] [get_ports               \
{tlu_window_block[0]}] [get_ports exu0_window_block] [get_ports                \
exu1_window_block] [get_ports lsu_cpq_stall] [get_ports {ifu_buf0_inst0[32]}]  \
[get_ports {ifu_buf0_inst0[31]}] [get_ports {ifu_buf0_inst0[30]}] [get_ports   \
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
{ifu_buf0_excp7[0]}] [get_ports {tlu_flush_ifu[7]}] [get_ports                 \
{tlu_flush_ifu[6]}] [get_ports {tlu_flush_ifu[5]}] [get_ports                  \
{tlu_flush_ifu[4]}] [get_ports {tlu_flush_ifu[3]}] [get_ports                  \
{tlu_flush_ifu[2]}] [get_ports {tlu_flush_ifu[1]}] [get_ports                  \
{tlu_flush_ifu[0]}] [get_ports {pku_load_flush_w[7]}] [get_ports               \
{pku_load_flush_w[6]}] [get_ports {pku_load_flush_w[5]}] [get_ports            \
{pku_load_flush_w[4]}] [get_ports {pku_load_flush_w[3]}] [get_ports            \
{pku_load_flush_w[2]}] [get_ports {pku_load_flush_w[1]}] [get_ports            \
{pku_load_flush_w[0]}] [get_ports {pku_inst_cnt_brtaken00[1]}] [get_ports      \
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
{pku_inst_cnt_brtaken17[0]}] [get_ports {pku_base_pick_p[7]}] [get_ports       \
{pku_base_pick_p[6]}] [get_ports {pku_base_pick_p[5]}] [get_ports              \
{pku_base_pick_p[4]}] [get_ports {pku_base_pick_p[3]}] [get_ports              \
{pku_base_pick_p[2]}] [get_ports {pku_base_pick_p[1]}] [get_ports              \
{pku_base_pick_p[0]}] [get_ports {pku_raw_pick0_p[3]}] [get_ports              \
{pku_raw_pick0_p[2]}] [get_ports {pku_raw_pick0_p[1]}] [get_ports              \
{pku_raw_pick0_p[0]}] [get_ports {pku_raw_pick1_p[7]}] [get_ports              \
{pku_raw_pick1_p[6]}] [get_ports {pku_raw_pick1_p[5]}] [get_ports              \
{pku_raw_pick1_p[4]}] [get_ports {pku_annul_ds_dcti_brtaken0_e[7]}] [get_ports \
{pku_annul_ds_dcti_brtaken0_e[6]}] [get_ports                                  \
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
{pku_annul_ds_dcti_brtaken1_e[0]}] [get_ports {pku_valid_e[7]}] [get_ports     \
{pku_valid_e[6]}] [get_ports {pku_valid_e[5]}] [get_ports {pku_valid_e[4]}]    \
[get_ports {pku_valid_e[3]}] [get_ports {pku_valid_e[2]}] [get_ports           \
{pku_valid_e[1]}] [get_ports {pku_valid_e[0]}] [get_ports {pku_ds_e[7]}]       \
[get_ports {pku_ds_e[6]}] [get_ports {pku_ds_e[5]}] [get_ports {pku_ds_e[4]}]  \
[get_ports {pku_ds_e[3]}] [get_ports {pku_ds_e[2]}] [get_ports {pku_ds_e[1]}]  \
[get_ports {pku_ds_e[0]}] [get_ports {pku_lsu_p[7]}] [get_ports                \
{pku_lsu_p[6]}] [get_ports {pku_lsu_p[5]}] [get_ports {pku_lsu_p[4]}]          \
[get_ports {pku_lsu_p[3]}] [get_ports {pku_lsu_p[2]}] [get_ports               \
{pku_lsu_p[1]}] [get_ports {pku_lsu_p[0]}] [get_ports {pku_fgu_p[7]}]          \
[get_ports {pku_fgu_p[6]}] [get_ports {pku_fgu_p[5]}] [get_ports               \
{pku_fgu_p[4]}] [get_ports {pku_fgu_p[3]}] [get_ports {pku_fgu_p[2]}]          \
[get_ports {pku_fgu_p[1]}] [get_ports {pku_fgu_p[0]}] [get_ports               \
{pku_pdist_p[7]}] [get_ports {pku_pdist_p[6]}] [get_ports {pku_pdist_p[5]}]    \
[get_ports {pku_pdist_p[4]}] [get_ports {pku_pdist_p[3]}] [get_ports           \
{pku_pdist_p[2]}] [get_ports {pku_pdist_p[1]}] [get_ports {pku_pdist_p[0]}]    \
[get_ports {pku_twocycle_p[7]}] [get_ports {pku_twocycle_p[6]}] [get_ports     \
{pku_twocycle_p[5]}] [get_ports {pku_twocycle_p[4]}] [get_ports                \
{pku_twocycle_p[3]}] [get_ports {pku_twocycle_p[2]}] [get_ports                \
{pku_twocycle_p[1]}] [get_ports {pku_twocycle_p[0]}] [get_ports                \
{pku_idest_p[7]}] [get_ports {pku_idest_p[6]}] [get_ports {pku_idest_p[5]}]    \
[get_ports {pku_idest_p[4]}] [get_ports {pku_idest_p[3]}] [get_ports           \
{pku_idest_p[2]}] [get_ports {pku_idest_p[1]}] [get_ports {pku_idest_p[0]}]    \
[get_ports {pku_fdest_p[7]}] [get_ports {pku_fdest_p[6]}] [get_ports           \
{pku_fdest_p[5]}] [get_ports {pku_fdest_p[4]}] [get_ports {pku_fdest_p[3]}]    \
[get_ports {pku_fdest_p[2]}] [get_ports {pku_fdest_p[1]}] [get_ports           \
{pku_fdest_p[0]}] [get_ports {pku_fsrc_rd_p[7]}] [get_ports                    \
{pku_fsrc_rd_p[6]}] [get_ports {pku_fsrc_rd_p[5]}] [get_ports                  \
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
{pku_isrc_rd_p[0]}] [get_ports {pku_flush_f1[7]}] [get_ports                   \
{pku_flush_f1[6]}] [get_ports {pku_flush_f1[5]}] [get_ports {pku_flush_f1[4]}] \
[get_ports {pku_flush_f1[3]}] [get_ports {pku_flush_f1[2]}] [get_ports         \
{pku_flush_f1[1]}] [get_ports {pku_flush_f1[0]}] [get_ports {pku_flush_f2[7]}] \
[get_ports {pku_flush_f2[6]}] [get_ports {pku_flush_f2[5]}] [get_ports         \
{pku_flush_f2[4]}] [get_ports {pku_flush_f2[3]}] [get_ports {pku_flush_f2[2]}] \
[get_ports {pku_flush_f2[1]}] [get_ports {pku_flush_f2[0]}] [get_ports         \
{pku_flush_lm[7]}] [get_ports {pku_flush_lm[6]}] [get_ports {pku_flush_lm[5]}] \
[get_ports {pku_flush_lm[4]}] [get_ports {pku_flush_lm[3]}] [get_ports         \
{pku_flush_lm[2]}] [get_ports {pku_flush_lm[1]}] [get_ports {pku_flush_lm[0]}] \
[get_ports {pku_flush_lb[7]}] [get_ports {pku_flush_lb[6]}] [get_ports         \
{pku_flush_lb[5]}] [get_ports {pku_flush_lb[4]}] [get_ports {pku_flush_lb[3]}] \
[get_ports {pku_flush_lb[2]}] [get_ports {pku_flush_lb[1]}] [get_ports         \
{pku_flush_lb[0]}] [get_ports {pku_flush_m[7]}] [get_ports {pku_flush_m[6]}]   \
[get_ports {pku_flush_m[5]}] [get_ports {pku_flush_m[4]}] [get_ports           \
{pku_flush_m[3]}] [get_ports {pku_flush_m[2]}] [get_ports {pku_flush_m[1]}]    \
[get_ports {pku_flush_m[0]}] [get_ports {pku_flush_b[7]}] [get_ports           \
{pku_flush_b[6]}] [get_ports {pku_flush_b[5]}] [get_ports {pku_flush_b[4]}]    \
[get_ports {pku_flush_b[3]}] [get_ports {pku_flush_b[2]}] [get_ports           \
{pku_flush_b[1]}] [get_ports {pku_flush_b[0]}] [get_ports spu_mult_request]    \
[get_ports lsu_block_store_stall] [get_ports {lsu_block_store_rd[4]}]          \
[get_ports {lsu_block_store_rd[3]}] [get_ports {lsu_block_store_tid[2]}]       \
[get_ports {lsu_block_store_tid[1]}] [get_ports {lsu_block_store_tid[0]}]      \
[get_ports tlu_dtlb_reload_stall] [get_ports fgu_ecc_asi_stall] [get_ports     \
{exu0_oddwin_b[3]}] [get_ports {exu0_oddwin_b[2]}] [get_ports                  \
{exu0_oddwin_b[1]}] [get_ports {exu0_oddwin_b[0]}] [get_ports                  \
{exu1_oddwin_b[3]}] [get_ports {exu1_oddwin_b[2]}] [get_ports                  \
{exu1_oddwin_b[1]}] [get_ports {exu1_oddwin_b[0]}] [get_ports                  \
{fgu_idiv_stall[1]}] [get_ports {fgu_idiv_stall[0]}] [get_ports                \
fgu_fdiv_stall] [get_ports {dec_br_taken_e1[1]}] [get_ports                    \
{dec_br_taken_e1[0]}]]  -to [list [get_pins {ded1_legalf_d0_0_q_reg[0]/D}] [get_pins                  \
{ded1_ifetcherrf_d0_0_q_reg[0]/D}] [get_pins                                   \
{ded1_parityerrf_d0_0_q_reg[0]/D}] [get_pins {ded1_decodef_d0_0_q_reg[0]/D}]   \
[get_pins {ded1_decodef_d0_0_q_reg[1]/D}] [get_pins                            \
{ded1_decodef_d0_0_q_reg[2]/D}] [get_pins {ded1_decodef_d0_0_q_reg[3]/D}]      \
[get_pins {ded1_decodef_d0_0_q_reg[4]/D}] [get_pins                            \
{ded1_decodef_d0_0_q_reg[5]/D}] [get_pins {ded1_decodef_d0_0_q_reg[6]/D}]      \
[get_pins {ded1_decodef_d0_0_q_reg[7]/D}] [get_pins                            \
{ded1_decodef_d0_0_q_reg[8]/D}] [get_pins {ded1_decodef_d0_0_q_reg[9]/D}]      \
[get_pins {ded1_decodef_d0_0_q_reg[10]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[11]/D}] [get_pins {ded1_decodef_d0_0_q_reg[12]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[13]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[14]/D}] [get_pins {ded1_decodef_d0_0_q_reg[15]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[16]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[17]/D}] [get_pins {ded1_decodef_d0_0_q_reg[18]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[19]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[20]/D}] [get_pins {ded1_decodef_d0_0_q_reg[21]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[22]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[23]/D}] [get_pins {ded1_decodef_d0_0_q_reg[24]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[25]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[26]/D}] [get_pins {ded1_decodef_d0_0_q_reg[27]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[28]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[29]/D}] [get_pins {ded1_decodef_d0_0_q_reg[30]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[31]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[32]/D}] [get_pins {ded1_excf_d0_0_q_reg[0]/D}]        \
[get_pins {ded1_excf_d0_0_q_reg[1]/D}] [get_pins {ded1_excf_d0_0_q_reg[2]/D}]  \
[get_pins {ded1_excf_d0_0_q_reg[3]/D}] [get_pins {ded1_excf_d0_0_q_reg[4]/D}]  \
[get_pins {ded1_isrcf_d0_0_q_reg[0]/D}] [get_pins                              \
{ded1_isrcf_d0_0_q_reg[1]/D}] [get_pins {ded1_isrcf_d0_0_q_reg[2]/D}]          \
[get_pins {ded1_twocyclef_d0_0_q_reg[0]/D}] [get_pins                          \
{ded1_twocyclef_d0_0_q_reg[1]/D}] [get_pins {ded1_twocyclef_d0_0_q_reg[2]/D}]  \
[get_pins {ded1_twocyclef_d0_0_q_reg[3]/D}] [get_pins                          \
{ded1_twocyclef_d0_0_q_reg[4]/D}] [get_pins {ded1_twocyclef_d0_0_q_reg[5]/D}]  \
[get_pins {ded1_twocyclef_d0_0_q_reg[6]/D}] [get_pins                          \
{ded1_twocyclef_d0_0_q_reg[7]/D}] [get_pins {ded1_twocyclef_d0_0_q_reg[8]/D}]  \
[get_pins {ded1_windowf_d0_0_q_reg[0]/D}] [get_pins                            \
{ded1_windowf_d0_0_q_reg[1]/D}] [get_pins {ded1_windowf_d0_0_q_reg[2]/D}]      \
[get_pins {ded1_windowf_d0_0_q_reg[3]/D}] [get_pins                            \
{ded1_oddwinf_d0_0_q_reg[0]/D}] [get_pins {ded1_oddwinf_d0_0_q_reg[1]/D}]      \
[get_pins {ded1_oddwinf_d0_0_q_reg[2]/D}] [get_pins                            \
{ded1_oddwinf_d0_0_q_reg[3]/D}] [get_pins {ded1_icdf_perr_f_d0_0_q_reg[0]/D}]  \
[get_pins ded1_clkgen_c_0_l1en_reg/D] [get_pins {ded0_legalf_d0_0_q_reg[0]/D}] \
[get_pins {ded0_ifetcherrf_d0_0_q_reg[0]/D}] [get_pins                         \
{ded0_parityerrf_d0_0_q_reg[0]/D}] [get_pins {ded0_decodef_d0_0_q_reg[0]/D}]   \
[get_pins {ded0_decodef_d0_0_q_reg[1]/D}] [get_pins                            \
{ded0_decodef_d0_0_q_reg[2]/D}] [get_pins {ded0_decodef_d0_0_q_reg[3]/D}]      \
[get_pins {ded0_decodef_d0_0_q_reg[4]/D}] [get_pins                            \
{ded0_decodef_d0_0_q_reg[5]/D}] [get_pins {ded0_decodef_d0_0_q_reg[6]/D}]      \
[get_pins {ded0_decodef_d0_0_q_reg[7]/D}] [get_pins                            \
{ded0_decodef_d0_0_q_reg[8]/D}] [get_pins {ded0_decodef_d0_0_q_reg[9]/D}]      \
[get_pins {ded0_decodef_d0_0_q_reg[10]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[11]/D}] [get_pins {ded0_decodef_d0_0_q_reg[12]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[13]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[14]/D}] [get_pins {ded0_decodef_d0_0_q_reg[15]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[16]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[17]/D}] [get_pins {ded0_decodef_d0_0_q_reg[18]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[19]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[20]/D}] [get_pins {ded0_decodef_d0_0_q_reg[21]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[22]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[23]/D}] [get_pins {ded0_decodef_d0_0_q_reg[24]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[25]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[26]/D}] [get_pins {ded0_decodef_d0_0_q_reg[27]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[28]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[29]/D}] [get_pins {ded0_decodef_d0_0_q_reg[30]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[31]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[32]/D}] [get_pins {ded0_excf_d0_0_q_reg[0]/D}]        \
[get_pins {ded0_excf_d0_0_q_reg[1]/D}] [get_pins {ded0_excf_d0_0_q_reg[2]/D}]  \
[get_pins {ded0_excf_d0_0_q_reg[3]/D}] [get_pins {ded0_excf_d0_0_q_reg[4]/D}]  \
[get_pins {ded0_isrcf_d0_0_q_reg[0]/D}] [get_pins                              \
{ded0_isrcf_d0_0_q_reg[1]/D}] [get_pins {ded0_isrcf_d0_0_q_reg[2]/D}]          \
[get_pins {ded0_twocyclef_d0_0_q_reg[0]/D}] [get_pins                          \
{ded0_twocyclef_d0_0_q_reg[1]/D}] [get_pins {ded0_twocyclef_d0_0_q_reg[2]/D}]  \
[get_pins {ded0_twocyclef_d0_0_q_reg[3]/D}] [get_pins                          \
{ded0_twocyclef_d0_0_q_reg[4]/D}] [get_pins {ded0_twocyclef_d0_0_q_reg[5]/D}]  \
[get_pins {ded0_twocyclef_d0_0_q_reg[6]/D}] [get_pins                          \
{ded0_twocyclef_d0_0_q_reg[7]/D}] [get_pins {ded0_twocyclef_d0_0_q_reg[8]/D}]  \
[get_pins {ded0_windowf_d0_0_q_reg[0]/D}] [get_pins                            \
{ded0_windowf_d0_0_q_reg[1]/D}] [get_pins {ded0_windowf_d0_0_q_reg[2]/D}]      \
[get_pins {ded0_windowf_d0_0_q_reg[3]/D}] [get_pins                            \
{ded0_oddwinf_d0_0_q_reg[0]/D}] [get_pins {ded0_oddwinf_d0_0_q_reg[1]/D}]      \
[get_pins {ded0_oddwinf_d0_0_q_reg[2]/D}] [get_pins                            \
{ded0_oddwinf_d0_0_q_reg[3]/D}] [get_pins {ded0_icdf_perr_f_d0_0_q_reg[0]/D}]  \
[get_pins ded0_clkgen_c_0_l1en_reg/D] [get_pins                                \
del_power_throttle00_f_xx1_q_reg/D] [get_pins                                  \
del_power_throttle00_f_xx0_q_reg/D] [get_pins                                  \
del_power_throttle01_f_xx1_q_reg/D] [get_pins                                  \
del_power_throttle01_f_xx0_q_reg/D] [get_pins                                  \
del_power_throttle02_f_xx1_q_reg/D] [get_pins                                  \
del_power_throttle02_f_xx0_q_reg/D] [get_pins                                  \
{del_power_throttle1f_d0_0_q_reg[0]/D}] [get_pins                              \
{del_power_throttle1f_d0_0_q_reg[1]/D}] [get_pins                              \
{del_power_throttle1f_d0_0_q_reg[2]/D}] [get_pins                              \
{del_thread_activef_d0_0_q_reg[0]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[1]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[2]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[3]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[4]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[5]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[6]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[7]/D}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[1]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[2]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[3]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[4]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[5]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[6]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[7]/D}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[2]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[3]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[4]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[5]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[2]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[3]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[4]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[5]/D}] [get_pins                                  \
{del_illegal_priv_m_d0_0_q_reg[0]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[1]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[2]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[3]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[4]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[5]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[6]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[7]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[8]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[9]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[10]/D}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[11]/D}] [get_pins                               \
{del_flush_lexc_f_d0_0_q_reg[0]/D}] [get_pins {del_inst_m_d0_0_q_reg[0]/D}]    \
[get_pins {del_inst_m_d0_0_q_reg[1]/D}] [get_pins                              \
{del_inst_m_d0_0_q_reg[2]/D}] [get_pins {del_inst_m_d0_0_q_reg[3]/D}]          \
[get_pins {del_inst_m_d0_0_q_reg[4]/D}] [get_pins                              \
{del_inst_m_d0_0_q_reg[5]/D}] [get_pins {del_inst_m_d0_0_q_reg[6]/D}]          \
[get_pins {del_inst_m_d0_0_q_reg[7]/D}] [get_pins                              \
{del_inst_m_d0_0_q_reg[8]/D}] [get_pins {del_inst_m_d0_0_q_reg[9]/D}]          \
[get_pins {del_inst_m_d0_0_q_reg[10]/D}] [get_pins                             \
{del_inst_m_d0_0_q_reg[11]/D}] [get_pins {del_inst_m_d0_0_q_reg[12]/D}]        \
[get_pins {del_inst_m_d0_0_q_reg[13]/D}] [get_pins                             \
{del_inst_m_d0_0_q_reg[14]/D}] [get_pins {del_inst_m_d0_0_q_reg[15]/D}]        \
[get_pins {del_inst_e_d0_0_q_reg[0]/D}] [get_pins                              \
{del_inst_e_d0_0_q_reg[1]/D}] [get_pins {del_inst_e_d0_0_q_reg[2]/D}]          \
[get_pins {del_inst_e_d0_0_q_reg[3]/D}] [get_pins                              \
{del_inst_e_d0_0_q_reg[4]/D}] [get_pins {del_inst_e_d0_0_q_reg[5]/D}]          \
[get_pins {del_inst_e_d0_0_q_reg[6]/D}] [get_pins                              \
{del_inst_e_d0_0_q_reg[7]/D}] [get_pins {del_inst_e_d0_0_q_reg[8]/D}]          \
[get_pins {del_inst_e_d0_0_q_reg[9]/D}] [get_pins                              \
{del_inst_e_d0_0_q_reg[10]/D}] [get_pins {del_inst_e_d0_0_q_reg[11]/D}]        \
[get_pins {del_inst_e_d0_0_q_reg[12]/D}] [get_pins                             \
{del_inst_e_d0_0_q_reg[13]/D}] [get_pins {del_inst_e_d0_0_q_reg[14]/D}]        \
[get_pins {del_inst_e_d0_0_q_reg[15]/D}] [get_pins                             \
{del_dec_m_d0_0_q_reg[0]/D}] [get_pins {del_dec_m_d0_0_q_reg[1]/D}] [get_pins  \
{del_dec_e_d0_0_q_reg[0]/D}] [get_pins {del_dec_e_d0_0_q_reg[1]/D}] [get_pins  \
{del_tid_m_d0_0_q_reg[0]/D}] [get_pins {del_tid_m_d0_0_q_reg[1]/D}] [get_pins  \
{del_tid_m_d0_0_q_reg[2]/D}] [get_pins {del_tid_m_d0_0_q_reg[3]/D}] [get_pins  \
{del_tid_e_d0_0_q_reg[0]/D}] [get_pins {del_tid_e_d0_0_q_reg[1]/D}] [get_pins  \
{del_tid_e_d0_0_q_reg[2]/D}] [get_pins {del_tid_e_d0_0_q_reg[3]/D}] [get_pins  \
{del_annul_m_d0_0_q_reg[0]/D}] [get_pins {del_annul_m_d0_0_q_reg[1]/D}]        \
[get_pins {del_ds_m_d0_0_q_reg[0]/D}] [get_pins {del_ds_m_d0_0_q_reg[1]/D}]    \
[get_pins {del_lsurd_f_d0_0_q_reg[0]/D}] [get_pins                             \
{del_lsurd_f_d0_0_q_reg[1]/D}] [get_pins {del_lsurd_f_d0_0_q_reg[2]/D}]        \
[get_pins {del_lsurd_f_d0_0_q_reg[3]/D}] [get_pins                             \
{del_lsurd_f_d0_0_q_reg[4]/D}] [get_pins {del_sraddr_f_d0_0_q_reg[0]/D}]       \
[get_pins {del_sraddr_f_d0_0_q_reg[1]/D}] [get_pins                            \
{del_sraddr_f_d0_0_q_reg[2]/D}] [get_pins {del_sraddr_f_d0_0_q_reg[3]/D}]      \
[get_pins {del_sraddr_f_d0_0_q_reg[4]/D}] [get_pins                            \
{del_ldme_f_d0_0_q_reg[0]/D}] [get_pins {del_ldme_f_d0_0_q_reg[1]/D}]          \
[get_pins {del_ldme_f_d0_0_q_reg[2]/D}] [get_pins                              \
{del_ldme_f_d0_0_q_reg[3]/D}] [get_pins {del_ldme_f_d0_0_q_reg[4]/D}]          \
[get_pins {del_ldme_f_d0_0_q_reg[5]/D}] [get_pins                              \
{del_ldme_f_d0_0_q_reg[6]/D}] [get_pins {del_ldme_f_d0_0_q_reg[7]/D}]          \
[get_pins {del_ldme_f_d0_0_q_reg[8]/D}] [get_pins                              \
{del_ldme_f_d0_0_q_reg[9]/D}] [get_pins {del_ldme_f_d0_0_q_reg[10]/D}]         \
[get_pins {del_ldme_f_d0_0_q_reg[11]/D}] [get_pins                             \
{del_ldme_f_d0_0_q_reg[12]/D}] [get_pins {del_ldme_f_d0_0_q_reg[13]/D}]        \
[get_pins {del_ldste_f_d0_0_q_reg[0]/D}] [get_pins                             \
{del_ldste_f_d0_0_q_reg[1]/D}] [get_pins {del_ldste_f_d0_0_q_reg[2]/D}]        \
[get_pins {del_lsudec_f_d0_0_q_reg[0]/D}] [get_pins                            \
{del_lsudec_f_d0_0_q_reg[1]/D}] [get_pins {del_fgudec_f_d0_0_q_reg[0]/D}]      \
[get_pins {del_fgudec_f_d0_0_q_reg[1]/D}] [get_pins                            \
{del_truevalid_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_truevalid_f_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_ifetcherr_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_ifetcherr_f_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_ifetch_err_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_ifetch_err_f_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_frf_r2addre_f_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_frf_r2addre_f_d0_0_q_reg[1]/D}] [get_pins {del_tgselm_f_d0_0_q_reg[0]/D}] \
[get_pins {del_tgselm_f_d0_0_q_reg[1]/D}] [get_pins                            \
{del_exuself_d0_0_q_reg[0]/D}] [get_pins {del_exuself_d0_0_q_reg[1]/D}]        \
[get_pins {del_exuself_d0_0_q_reg[2]/D}] [get_pins                             \
{del_exuself_d0_0_q_reg[3]/D}] [get_pins {del_exuself_d0_0_q_reg[4]/D}]        \
[get_pins {del_exuself_d0_0_q_reg[5]/D}] [get_pins                             \
{del_exuself_d0_0_q_reg[6]/D}] [get_pins {del_exuself_d0_0_q_reg[7]/D}]        \
[get_pins {del_tgsel_f_d0_0_q_reg[0]/D}] [get_pins                             \
{del_tgsel_f_d0_0_q_reg[1]/D}] [get_pins {del_tgsel_f_d0_0_q_reg[2]/D}]        \
[get_pins {del_tgsel_f_d0_0_q_reg[3]/D}] [get_pins                             \
{del_exc_f_d0_0_q_reg[0]/D}] [get_pins {del_exc_f_d0_0_q_reg[1]/D}] [get_pins  \
{del_exc_f_d0_0_q_reg[2]/D}] [get_pins {del_exc_f_d0_0_q_reg[3]/D}] [get_pins  \
{del_exc_f_d0_0_q_reg[4]/D}] [get_pins {del_exc_f_d0_0_q_reg[5]/D}] [get_pins  \
{del_parity_err_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_parity_err_f_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_fpdisable_exc_f_d0_0_q_reg[0]/D}] [get_pins                               \
{del_fpdisable_exc_f_d0_0_q_reg[1]/D}] [get_pins                               \
{del_illegal_f_d0_0_q_reg[0]/D}] [get_pins {del_illegal_f_d0_0_q_reg[1]/D}]    \
[get_pins {del_legal_f_d0_0_q_reg[0]/D}] [get_pins                             \
{del_legal_f_d0_0_q_reg[1]/D}] [get_pins {del_exu_clkenf_d0_0_q_reg[0]/D}]     \
[get_pins {del_exu_clkenf_d0_0_q_reg[1]/D}] [get_pins                          \
{del_windowstall_df_d0_0_q_reg[0]/D}] [get_pins                                \
{del_windowstall_df_d0_0_q_reg[1]/D}] [get_pins                                \
{del_divstall_df_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_divstall_df_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_divstall_df_d0_0_q_reg[2]/D}] [get_pins                                   \
{del_inthole1_df_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_inthole1_df_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_inthole1_df_d0_0_q_reg[2]/D}] [get_pins                                   \
{del_inthole0_df_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_inthole0_df_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_inthole0_df_d0_0_q_reg[2]/D}] [get_pins                                   \
{del_twocycle1_df_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_twocycle0_df_d0_0_q_reg[0]/D}] [get_pins {del_pdisttidf_d0_0_q_reg[0]/D}] \
[get_pins {del_pdisttidf_d0_0_q_reg[1]/D}] [get_pins                           \
{del_pdisttidf_d0_0_q_reg[2]/D}] [get_pins {del_pdistrdf_d0_0_q_reg[0]/D}]     \
[get_pins {del_pdistrdf_d0_0_q_reg[1]/D}] [get_pins                            \
{del_pdistrdf_d0_0_q_reg[2]/D}] [get_pins {del_pdistrdf_d0_0_q_reg[3]/D}]      \
[get_pins {del_pdistrdf_d0_0_q_reg[4]/D}] [get_pins                            \
{del_pdistblockf_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_pdistblockf_d0_0_q_reg[1]/D}] [get_pins {del_cmfavorf_d0_0_q_reg[0]/D}]   \
[get_pins {del_mulrequestf_d0_0_q_reg[0]/D}] [get_pins                         \
{del_sffavorf_d0_0_q_reg[0]/D}] [get_pins {del_ffavorf_d0_0_q_reg[0]/D}]       \
[get_pins {del_lfavorf_d0_0_q_reg[0]/D}] [get_pins                             \
{del_block_store_b_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_block_store_b_d0_0_q_reg[1]/D}] [get_pins                                 \
{del_block_store_b_d0_0_q_reg[2]/D}] [get_pins                                 \
{del_block_store_b_d0_0_q_reg[3]/D}] [get_pins                                 \
{del_block_store_m_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_block_store_m_d0_0_q_reg[1]/D}] [get_pins                                 \
{del_block_store_m_d0_0_q_reg[2]/D}] [get_pins                                 \
{del_block_store_m_d0_0_q_reg[3]/D}] [get_pins                                 \
{del_block_store_e_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_block_store_e_d0_0_q_reg[1]/D}] [get_pins                                 \
{del_block_store_e_d0_0_q_reg[2]/D}] [get_pins                                 \
{del_block_store_e_d0_0_q_reg[3]/D}] [get_pins                                 \
{del_block_resetf_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_block_resetf_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_block_resetf_d0_0_q_reg[2]/D}] [get_pins                                  \
{del_fecc_stallf_d0_0_q_reg[0]/D}] [get_pins {del_cpq_stallf_d0_0_q_reg[0]/D}] \
[get_pins {del_block_store_tidf_d0_0_q_reg[0]/D}] [get_pins                    \
{del_block_store_tidf_d0_0_q_reg[1]/D}] [get_pins                              \
{del_block_store_tidf_d0_0_q_reg[2]/D}] [get_pins                              \
{del_block_store_rdlof_d0_0_q_reg[0]/D}] [get_pins                             \
{del_block_store_rdlof_d0_0_q_reg[1]/D}] [get_pins                             \
{del_block_store_rdlof_d0_0_q_reg[2]/D}] [get_pins                             \
{del_block_store_rdhif_d0_0_q_reg[0]/D}] [get_pins                             \
{del_block_store_rdhif_d0_0_q_reg[1]/D}] [get_pins                             \
{del_block_storef_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_block_store0f_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_dtlb_reloadf_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_dtlb_reloadf_d0_0_q_reg[1]/D}] [get_pins {del_valid_df_d0_0_q_reg[0]/D}]  \
[get_pins {del_valid_df_d0_0_q_reg[1]/D}] [get_pins                            \
{del_val_df_d0_0_q_reg[0]/D}] [get_pins {del_val_df_d0_0_q_reg[1]/D}]          \
[get_pins {del_val_df_d0_0_q_reg[2]/D}] [get_pins                              \
{del_val_df_d0_0_q_reg[3]/D}] [get_pins {del_val_df_d0_0_q_reg[4]/D}]          \
[get_pins {del_val_df_d0_0_q_reg[5]/D}] [get_pins                              \
{del_val_df_d0_0_q_reg[6]/D}] [get_pins {del_val_df_d0_0_q_reg[7]/D}]          \
[get_pins {del_teststallf_d0_0_q_reg[0]/D}] [get_pins                          \
{del_teststallf_d0_0_q_reg[1]/D}] [get_pins {del_exutestf_d0_0_q_reg[0]/D}]    \
[get_pins {del_exutestf_d0_0_q_reg[1]/D}] [get_pins                            \
{del_exutestf_d0_0_q_reg[2]/D}] [get_pins {del_exutestf_d0_0_q_reg[3]/D}]      \
[get_pins {del_exutestf_d0_0_q_reg[4]/D}] [get_pins                            \
{del_exutestf_d0_0_q_reg[5]/D}] [get_pins {del_exutestf_d0_0_q_reg[6]/D}]      \
[get_pins {del_exutestf_d0_0_q_reg[7]/D}] [get_pins                            \
{del_exutestf_d0_0_q_reg[8]/D}] [get_pins {del_exutestf_d0_0_q_reg[9]/D}]      \
[get_pins {del_exutestf_d0_0_q_reg[10]/D}] [get_pins                           \
{del_exutestf_d0_0_q_reg[11]/D}] [get_pins {del_exutestf_d0_0_q_reg[12]/D}]    \
[get_pins {del_exutestf_d0_0_q_reg[13]/D}] [get_pins                           \
{del_exutestf_d0_0_q_reg[14]/D}] [get_pins {del_exutestf_d0_0_q_reg[15]/D}]    \
[get_pins {del_instcntf_d0_0_q_reg[0]/D}] [get_pins                            \
{del_instcntf_d0_0_q_reg[1]/D}] [get_pins {del_instcntf_d0_0_q_reg[2]/D}]      \
[get_pins {del_instcntf_d0_0_q_reg[3]/D}] [get_pins {del_fef_d0_0_q_reg[0]/D}] \
[get_pins {del_fef_d0_0_q_reg[1]/D}] [get_pins {del_fef_d0_0_q_reg[2]/D}]      \
[get_pins {del_fef_d0_0_q_reg[3]/D}] [get_pins {del_fef_d0_0_q_reg[4]/D}]      \
[get_pins {del_fef_d0_0_q_reg[5]/D}] [get_pins {del_fef_d0_0_q_reg[6]/D}]      \
[get_pins {del_fef_d0_0_q_reg[7]/D}] [get_pins {del_fef_d0_0_q_reg[8]/D}]      \
[get_pins {del_fef_d0_0_q_reg[9]/D}] [get_pins {del_fef_d0_0_q_reg[10]/D}]     \
[get_pins {del_fef_d0_0_q_reg[11]/D}] [get_pins {del_fef_d0_0_q_reg[12]/D}]    \
[get_pins {del_fef_d0_0_q_reg[13]/D}] [get_pins {del_fef_d0_0_q_reg[14]/D}]    \
[get_pins {del_fef_d0_0_q_reg[15]/D}] [get_pins                                \
{del_privstatef_d0_0_q_reg[0]/D}] [get_pins {del_privstatef_d0_0_q_reg[1]/D}]  \
[get_pins {del_privstatef_d0_0_q_reg[2]/D}] [get_pins                          \
{del_privstatef_d0_0_q_reg[3]/D}] [get_pins {del_privstatef_d0_0_q_reg[4]/D}]  \
[get_pins {del_privstatef_d0_0_q_reg[5]/D}] [get_pins                          \
{del_privstatef_d0_0_q_reg[6]/D}] [get_pins {del_privstatef_d0_0_q_reg[7]/D}]  \
[get_pins {del_privstatef_d0_0_q_reg[8]/D}] [get_pins                          \
{del_privstatef_d0_0_q_reg[9]/D}] [get_pins {del_privstatef_d0_0_q_reg[10]/D}] \
[get_pins {del_privstatef_d0_0_q_reg[11]/D}] [get_pins                         \
{del_privstatef_d0_0_q_reg[12]/D}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[13]/D}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[14]/D}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[15]/D}] [get_pins {del_pick1f_d0_0_q_reg[0]/D}]     \
[get_pins {del_pick1f_d0_0_q_reg[1]/D}] [get_pins                              \
{del_pick1f_d0_0_q_reg[2]/D}] [get_pins {del_pick1f_d0_0_q_reg[3]/D}]          \
[get_pins {del_pick0f_d0_0_q_reg[0]/D}] [get_pins                              \
{del_pick0f_d0_0_q_reg[1]/D}] [get_pins {del_pick0f_d0_0_q_reg[2]/D}]          \
[get_pins {del_pick0f_d0_0_q_reg[3]/D}] [get_pins                              \
{del_pdecode1f_d0_0_q_reg[0]/D}] [get_pins {del_pdecode1f_d0_0_q_reg[1]/D}]    \
[get_pins {del_pdecode1f_d0_0_q_reg[2]/D}] [get_pins                           \
{del_pdecode1f_d0_0_q_reg[3]/D}] [get_pins {del_pdecode1f_d0_0_q_reg[4]/D}]    \
[get_pins {del_pdecode1f_d0_0_q_reg[5]/D}] [get_pins                           \
{del_pdecode1f_d0_0_q_reg[6]/D}] [get_pins {del_pdecode0f_d0_0_q_reg[0]/D}]    \
[get_pins {del_pdecode0f_d0_0_q_reg[1]/D}] [get_pins                           \
{del_pdecode0f_d0_0_q_reg[2]/D}] [get_pins {del_pdecode0f_d0_0_q_reg[3]/D}]    \
[get_pins {del_pdecode0f_d0_0_q_reg[4]/D}] [get_pins                           \
{del_pdecode0f_d0_0_q_reg[5]/D}] [get_pins {del_pdecode0f_d0_0_q_reg[6]/D}]    \
[get_pins {del_spare_5_0_lat_d0_0_q_reg[0]/D}] [get_pins                       \
{del_spare_5_0_lat_d0_0_q_reg[2]/D}] [get_pins del_clkgen_c_0_l1en_reg/D]]
group_path -name reg2out  -from [list [get_pins {ded1_legalf_d0_0_q_reg[0]/CP}] [get_pins               \
{ded1_ifetcherrf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{ded1_parityerrf_d0_0_q_reg[0]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[0]/CP}] \
[get_pins {ded1_decodef_d0_0_q_reg[1]/CP}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[2]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[3]/CP}]    \
[get_pins {ded1_decodef_d0_0_q_reg[4]/CP}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[5]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[6]/CP}]    \
[get_pins {ded1_decodef_d0_0_q_reg[7]/CP}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[8]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[9]/CP}]    \
[get_pins {ded1_decodef_d0_0_q_reg[10]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[11]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[12]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[13]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[14]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[15]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[16]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[17]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[18]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[19]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[20]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[21]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[22]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[23]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[24]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[25]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[26]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[27]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[28]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[29]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[30]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[31]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[32]/CP}] [get_pins {ded1_excf_d0_0_q_reg[0]/CP}]      \
[get_pins {ded1_excf_d0_0_q_reg[1]/CP}] [get_pins                              \
{ded1_excf_d0_0_q_reg[2]/CP}] [get_pins {ded1_excf_d0_0_q_reg[3]/CP}]          \
[get_pins {ded1_excf_d0_0_q_reg[4]/CP}] [get_pins                              \
{ded1_isrcf_d0_0_q_reg[0]/CP}] [get_pins {ded1_isrcf_d0_0_q_reg[1]/CP}]        \
[get_pins {ded1_isrcf_d0_0_q_reg[2]/CP}] [get_pins                             \
{ded1_twocyclef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[1]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[2]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[3]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[4]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[5]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[6]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[7]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[8]/CP}] [get_pins {ded1_windowf_d0_0_q_reg[0]/CP}]  \
[get_pins {ded1_windowf_d0_0_q_reg[1]/CP}] [get_pins                           \
{ded1_windowf_d0_0_q_reg[2]/CP}] [get_pins {ded1_windowf_d0_0_q_reg[3]/CP}]    \
[get_pins {ded1_oddwinf_d0_0_q_reg[0]/CP}] [get_pins                           \
{ded1_oddwinf_d0_0_q_reg[1]/CP}] [get_pins {ded1_oddwinf_d0_0_q_reg[2]/CP}]    \
[get_pins {ded1_oddwinf_d0_0_q_reg[3]/CP}] [get_pins                           \
{ded1_icdf_perr_f_d0_0_q_reg[0]/CP}] [get_pins ded1_clkgen_c_0_l1en_reg/CPN]   \
[get_pins {ded0_legalf_d0_0_q_reg[0]/CP}] [get_pins                            \
{ded0_ifetcherrf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{ded0_parityerrf_d0_0_q_reg[0]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[0]/CP}] \
[get_pins {ded0_decodef_d0_0_q_reg[1]/CP}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[2]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[3]/CP}]    \
[get_pins {ded0_decodef_d0_0_q_reg[4]/CP}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[5]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[6]/CP}]    \
[get_pins {ded0_decodef_d0_0_q_reg[7]/CP}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[8]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[9]/CP}]    \
[get_pins {ded0_decodef_d0_0_q_reg[10]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[11]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[12]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[13]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[14]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[15]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[16]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[17]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[18]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[19]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[20]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[21]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[22]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[23]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[24]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[25]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[26]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[27]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[28]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[29]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[30]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[31]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[32]/CP}] [get_pins {ded0_excf_d0_0_q_reg[0]/CP}]      \
[get_pins {ded0_excf_d0_0_q_reg[1]/CP}] [get_pins                              \
{ded0_excf_d0_0_q_reg[2]/CP}] [get_pins {ded0_excf_d0_0_q_reg[3]/CP}]          \
[get_pins {ded0_excf_d0_0_q_reg[4]/CP}] [get_pins                              \
{ded0_isrcf_d0_0_q_reg[0]/CP}] [get_pins {ded0_isrcf_d0_0_q_reg[1]/CP}]        \
[get_pins {ded0_isrcf_d0_0_q_reg[2]/CP}] [get_pins                             \
{ded0_twocyclef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[1]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[2]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[3]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[4]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[5]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[6]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[7]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[8]/CP}] [get_pins {ded0_windowf_d0_0_q_reg[0]/CP}]  \
[get_pins {ded0_windowf_d0_0_q_reg[1]/CP}] [get_pins                           \
{ded0_windowf_d0_0_q_reg[2]/CP}] [get_pins {ded0_windowf_d0_0_q_reg[3]/CP}]    \
[get_pins {ded0_oddwinf_d0_0_q_reg[0]/CP}] [get_pins                           \
{ded0_oddwinf_d0_0_q_reg[1]/CP}] [get_pins {ded0_oddwinf_d0_0_q_reg[2]/CP}]    \
[get_pins {ded0_oddwinf_d0_0_q_reg[3]/CP}] [get_pins                           \
{ded0_icdf_perr_f_d0_0_q_reg[0]/CP}] [get_pins ded0_clkgen_c_0_l1en_reg/CPN]   \
[get_pins del_power_throttle00_f_xx1_q_reg/CP] [get_pins                       \
del_power_throttle00_f_xx0_q_reg/CP] [get_pins                                 \
del_power_throttle01_f_xx1_q_reg/CP] [get_pins                                 \
del_power_throttle01_f_xx0_q_reg/CP] [get_pins                                 \
del_power_throttle02_f_xx1_q_reg/CP] [get_pins                                 \
del_power_throttle02_f_xx0_q_reg/CP] [get_pins                                 \
{del_power_throttle1f_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_power_throttle1f_d0_0_q_reg[1]/CP}] [get_pins                             \
{del_power_throttle1f_d0_0_q_reg[2]/CP}] [get_pins                             \
{del_thread_activef_d0_0_q_reg[0]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[1]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[2]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[3]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[4]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[5]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[6]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[7]/CP}] [get_pins                               \
{del_power_stall1f_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[2]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[3]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[4]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[5]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[6]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[7]/CP}] [get_pins                                \
{del_done_retry_m_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[2]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[3]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[4]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[5]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[2]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[3]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[4]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[5]/CP}] [get_pins                                 \
{del_illegal_priv_m_d0_0_q_reg[0]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[1]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[2]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[3]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[4]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[5]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[6]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[7]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[8]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[9]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[10]/CP}] [get_pins                              \
{del_illegal_priv_m_d0_0_q_reg[11]/CP}] [get_pins                              \
{del_flush_lexc_f_d0_0_q_reg[0]/CP}] [get_pins {del_inst_m_d0_0_q_reg[0]/CP}]  \
[get_pins {del_inst_m_d0_0_q_reg[1]/CP}] [get_pins                             \
{del_inst_m_d0_0_q_reg[2]/CP}] [get_pins {del_inst_m_d0_0_q_reg[3]/CP}]        \
[get_pins {del_inst_m_d0_0_q_reg[4]/CP}] [get_pins                             \
{del_inst_m_d0_0_q_reg[5]/CP}] [get_pins {del_inst_m_d0_0_q_reg[6]/CP}]        \
[get_pins {del_inst_m_d0_0_q_reg[7]/CP}] [get_pins                             \
{del_inst_m_d0_0_q_reg[8]/CP}] [get_pins {del_inst_m_d0_0_q_reg[9]/CP}]        \
[get_pins {del_inst_m_d0_0_q_reg[10]/CP}] [get_pins                            \
{del_inst_m_d0_0_q_reg[11]/CP}] [get_pins {del_inst_m_d0_0_q_reg[12]/CP}]      \
[get_pins {del_inst_m_d0_0_q_reg[13]/CP}] [get_pins                            \
{del_inst_m_d0_0_q_reg[14]/CP}] [get_pins {del_inst_m_d0_0_q_reg[15]/CP}]      \
[get_pins {del_inst_e_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_inst_e_d0_0_q_reg[1]/CP}] [get_pins {del_inst_e_d0_0_q_reg[2]/CP}]        \
[get_pins {del_inst_e_d0_0_q_reg[3]/CP}] [get_pins                             \
{del_inst_e_d0_0_q_reg[4]/CP}] [get_pins {del_inst_e_d0_0_q_reg[5]/CP}]        \
[get_pins {del_inst_e_d0_0_q_reg[6]/CP}] [get_pins                             \
{del_inst_e_d0_0_q_reg[7]/CP}] [get_pins {del_inst_e_d0_0_q_reg[8]/CP}]        \
[get_pins {del_inst_e_d0_0_q_reg[9]/CP}] [get_pins                             \
{del_inst_e_d0_0_q_reg[10]/CP}] [get_pins {del_inst_e_d0_0_q_reg[11]/CP}]      \
[get_pins {del_inst_e_d0_0_q_reg[12]/CP}] [get_pins                            \
{del_inst_e_d0_0_q_reg[13]/CP}] [get_pins {del_inst_e_d0_0_q_reg[14]/CP}]      \
[get_pins {del_inst_e_d0_0_q_reg[15]/CP}] [get_pins                            \
{del_dec_m_d0_0_q_reg[0]/CP}] [get_pins {del_dec_m_d0_0_q_reg[1]/CP}]          \
[get_pins {del_dec_e_d0_0_q_reg[0]/CP}] [get_pins                              \
{del_dec_e_d0_0_q_reg[1]/CP}] [get_pins {del_tid_m_d0_0_q_reg[0]/CP}]          \
[get_pins {del_tid_m_d0_0_q_reg[1]/CP}] [get_pins                              \
{del_tid_m_d0_0_q_reg[2]/CP}] [get_pins {del_tid_m_d0_0_q_reg[3]/CP}]          \
[get_pins {del_tid_e_d0_0_q_reg[0]/CP}] [get_pins                              \
{del_tid_e_d0_0_q_reg[1]/CP}] [get_pins {del_tid_e_d0_0_q_reg[2]/CP}]          \
[get_pins {del_tid_e_d0_0_q_reg[3]/CP}] [get_pins                              \
{del_annul_m_d0_0_q_reg[0]/CP}] [get_pins {del_annul_m_d0_0_q_reg[1]/CP}]      \
[get_pins {del_ds_m_d0_0_q_reg[0]/CP}] [get_pins {del_ds_m_d0_0_q_reg[1]/CP}]  \
[get_pins {del_lsurd_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_lsurd_f_d0_0_q_reg[1]/CP}] [get_pins {del_lsurd_f_d0_0_q_reg[2]/CP}]      \
[get_pins {del_lsurd_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{del_lsurd_f_d0_0_q_reg[4]/CP}] [get_pins {del_sraddr_f_d0_0_q_reg[0]/CP}]     \
[get_pins {del_sraddr_f_d0_0_q_reg[1]/CP}] [get_pins                           \
{del_sraddr_f_d0_0_q_reg[2]/CP}] [get_pins {del_sraddr_f_d0_0_q_reg[3]/CP}]    \
[get_pins {del_sraddr_f_d0_0_q_reg[4]/CP}] [get_pins                           \
{del_ldme_f_d0_0_q_reg[0]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[1]/CP}]        \
[get_pins {del_ldme_f_d0_0_q_reg[2]/CP}] [get_pins                             \
{del_ldme_f_d0_0_q_reg[3]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[4]/CP}]        \
[get_pins {del_ldme_f_d0_0_q_reg[5]/CP}] [get_pins                             \
{del_ldme_f_d0_0_q_reg[6]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[7]/CP}]        \
[get_pins {del_ldme_f_d0_0_q_reg[8]/CP}] [get_pins                             \
{del_ldme_f_d0_0_q_reg[9]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[10]/CP}]       \
[get_pins {del_ldme_f_d0_0_q_reg[11]/CP}] [get_pins                            \
{del_ldme_f_d0_0_q_reg[12]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[13]/CP}]      \
[get_pins {del_ldste_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_ldste_f_d0_0_q_reg[1]/CP}] [get_pins {del_ldste_f_d0_0_q_reg[2]/CP}]      \
[get_pins {del_lsudec_f_d0_0_q_reg[0]/CP}] [get_pins                           \
{del_lsudec_f_d0_0_q_reg[1]/CP}] [get_pins {del_fgudec_f_d0_0_q_reg[0]/CP}]    \
[get_pins {del_fgudec_f_d0_0_q_reg[1]/CP}] [get_pins                           \
{del_truevalid_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_truevalid_f_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_ifetcherr_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_ifetcherr_f_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_ifetch_err_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_ifetch_err_f_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_frf_r2addre_f_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_frf_r2addre_f_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_tgselm_f_d0_0_q_reg[0]/CP}] [get_pins {del_tgselm_f_d0_0_q_reg[1]/CP}]    \
[get_pins {del_exuself_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_exuself_d0_0_q_reg[1]/CP}] [get_pins {del_exuself_d0_0_q_reg[2]/CP}]      \
[get_pins {del_exuself_d0_0_q_reg[3]/CP}] [get_pins                            \
{del_exuself_d0_0_q_reg[4]/CP}] [get_pins {del_exuself_d0_0_q_reg[5]/CP}]      \
[get_pins {del_exuself_d0_0_q_reg[6]/CP}] [get_pins                            \
{del_exuself_d0_0_q_reg[7]/CP}] [get_pins {del_tgsel_f_d0_0_q_reg[0]/CP}]      \
[get_pins {del_tgsel_f_d0_0_q_reg[1]/CP}] [get_pins                            \
{del_tgsel_f_d0_0_q_reg[2]/CP}] [get_pins {del_tgsel_f_d0_0_q_reg[3]/CP}]      \
[get_pins {del_exc_f_d0_0_q_reg[0]/CP}] [get_pins                              \
{del_exc_f_d0_0_q_reg[1]/CP}] [get_pins {del_exc_f_d0_0_q_reg[2]/CP}]          \
[get_pins {del_exc_f_d0_0_q_reg[3]/CP}] [get_pins                              \
{del_exc_f_d0_0_q_reg[4]/CP}] [get_pins {del_exc_f_d0_0_q_reg[5]/CP}]          \
[get_pins {del_parity_err_f_d0_0_q_reg[0]/CP}] [get_pins                       \
{del_parity_err_f_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_fpdisable_exc_f_d0_0_q_reg[0]/CP}] [get_pins                              \
{del_fpdisable_exc_f_d0_0_q_reg[1]/CP}] [get_pins                              \
{del_illegal_f_d0_0_q_reg[0]/CP}] [get_pins {del_illegal_f_d0_0_q_reg[1]/CP}]  \
[get_pins {del_legal_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_legal_f_d0_0_q_reg[1]/CP}] [get_pins {del_exu_clkenf_d0_0_q_reg[0]/CP}]   \
[get_pins {del_exu_clkenf_d0_0_q_reg[1]/CP}] [get_pins                         \
{del_windowstall_df_d0_0_q_reg[0]/CP}] [get_pins                               \
{del_windowstall_df_d0_0_q_reg[1]/CP}] [get_pins                               \
{del_divstall_df_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_divstall_df_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_divstall_df_d0_0_q_reg[2]/CP}] [get_pins                                  \
{del_inthole1_df_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_inthole1_df_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_inthole1_df_d0_0_q_reg[2]/CP}] [get_pins                                  \
{del_inthole0_df_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_inthole0_df_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_inthole0_df_d0_0_q_reg[2]/CP}] [get_pins                                  \
{del_twocycle1_df_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_twocycle0_df_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_pdisttidf_d0_0_q_reg[0]/CP}] [get_pins {del_pdisttidf_d0_0_q_reg[1]/CP}]  \
[get_pins {del_pdisttidf_d0_0_q_reg[2]/CP}] [get_pins                          \
{del_pdistrdf_d0_0_q_reg[0]/CP}] [get_pins {del_pdistrdf_d0_0_q_reg[1]/CP}]    \
[get_pins {del_pdistrdf_d0_0_q_reg[2]/CP}] [get_pins                           \
{del_pdistrdf_d0_0_q_reg[3]/CP}] [get_pins {del_pdistrdf_d0_0_q_reg[4]/CP}]    \
[get_pins {del_pdistblockf_d0_0_q_reg[0]/CP}] [get_pins                        \
{del_pdistblockf_d0_0_q_reg[1]/CP}] [get_pins {del_cmfavorf_d0_0_q_reg[0]/CP}] \
[get_pins {del_mulrequestf_d0_0_q_reg[0]/CP}] [get_pins                        \
{del_sffavorf_d0_0_q_reg[0]/CP}] [get_pins {del_ffavorf_d0_0_q_reg[0]/CP}]     \
[get_pins {del_lfavorf_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_block_store_b_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_block_store_b_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_block_store_b_d0_0_q_reg[2]/CP}] [get_pins                                \
{del_block_store_b_d0_0_q_reg[3]/CP}] [get_pins                                \
{del_block_store_m_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_block_store_m_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_block_store_m_d0_0_q_reg[2]/CP}] [get_pins                                \
{del_block_store_m_d0_0_q_reg[3]/CP}] [get_pins                                \
{del_block_store_e_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_block_store_e_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_block_store_e_d0_0_q_reg[2]/CP}] [get_pins                                \
{del_block_store_e_d0_0_q_reg[3]/CP}] [get_pins                                \
{del_block_resetf_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_block_resetf_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_block_resetf_d0_0_q_reg[2]/CP}] [get_pins                                 \
{del_fecc_stallf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_cpq_stallf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{del_block_store_tidf_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_block_store_tidf_d0_0_q_reg[1]/CP}] [get_pins                             \
{del_block_store_tidf_d0_0_q_reg[2]/CP}] [get_pins                             \
{del_block_store_rdlof_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_block_store_rdlof_d0_0_q_reg[1]/CP}] [get_pins                            \
{del_block_store_rdlof_d0_0_q_reg[2]/CP}] [get_pins                            \
{del_block_store_rdhif_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_block_store_rdhif_d0_0_q_reg[1]/CP}] [get_pins                            \
{del_block_storef_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_block_store0f_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_dtlb_reloadf_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_dtlb_reloadf_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_valid_df_d0_0_q_reg[0]/CP}] [get_pins {del_valid_df_d0_0_q_reg[1]/CP}]    \
[get_pins {del_val_df_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_val_df_d0_0_q_reg[1]/CP}] [get_pins {del_val_df_d0_0_q_reg[2]/CP}]        \
[get_pins {del_val_df_d0_0_q_reg[3]/CP}] [get_pins                             \
{del_val_df_d0_0_q_reg[4]/CP}] [get_pins {del_val_df_d0_0_q_reg[5]/CP}]        \
[get_pins {del_val_df_d0_0_q_reg[6]/CP}] [get_pins                             \
{del_val_df_d0_0_q_reg[7]/CP}] [get_pins {del_teststallf_d0_0_q_reg[0]/CP}]    \
[get_pins {del_teststallf_d0_0_q_reg[1]/CP}] [get_pins                         \
{del_exutestf_d0_0_q_reg[0]/CP}] [get_pins {del_exutestf_d0_0_q_reg[1]/CP}]    \
[get_pins {del_exutestf_d0_0_q_reg[2]/CP}] [get_pins                           \
{del_exutestf_d0_0_q_reg[3]/CP}] [get_pins {del_exutestf_d0_0_q_reg[4]/CP}]    \
[get_pins {del_exutestf_d0_0_q_reg[5]/CP}] [get_pins                           \
{del_exutestf_d0_0_q_reg[6]/CP}] [get_pins {del_exutestf_d0_0_q_reg[7]/CP}]    \
[get_pins {del_exutestf_d0_0_q_reg[8]/CP}] [get_pins                           \
{del_exutestf_d0_0_q_reg[9]/CP}] [get_pins {del_exutestf_d0_0_q_reg[10]/CP}]   \
[get_pins {del_exutestf_d0_0_q_reg[11]/CP}] [get_pins                          \
{del_exutestf_d0_0_q_reg[12]/CP}] [get_pins {del_exutestf_d0_0_q_reg[13]/CP}]  \
[get_pins {del_exutestf_d0_0_q_reg[14]/CP}] [get_pins                          \
{del_exutestf_d0_0_q_reg[15]/CP}] [get_pins {del_instcntf_d0_0_q_reg[0]/CP}]   \
[get_pins {del_instcntf_d0_0_q_reg[1]/CP}] [get_pins                           \
{del_instcntf_d0_0_q_reg[2]/CP}] [get_pins {del_instcntf_d0_0_q_reg[3]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[0]/CP}] [get_pins {del_fef_d0_0_q_reg[1]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[2]/CP}] [get_pins {del_fef_d0_0_q_reg[3]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[4]/CP}] [get_pins {del_fef_d0_0_q_reg[5]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[6]/CP}] [get_pins {del_fef_d0_0_q_reg[7]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[8]/CP}] [get_pins {del_fef_d0_0_q_reg[9]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[10]/CP}] [get_pins {del_fef_d0_0_q_reg[11]/CP}]  \
[get_pins {del_fef_d0_0_q_reg[12]/CP}] [get_pins {del_fef_d0_0_q_reg[13]/CP}]  \
[get_pins {del_fef_d0_0_q_reg[14]/CP}] [get_pins {del_fef_d0_0_q_reg[15]/CP}]  \
[get_pins {del_privstatef_d0_0_q_reg[0]/CP}] [get_pins                         \
{del_privstatef_d0_0_q_reg[1]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[2]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[3]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[4]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[5]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[6]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[7]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[8]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[9]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[10]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[11]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[12]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[13]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[14]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[15]/CP}] [get_pins {del_pick1f_d0_0_q_reg[0]/CP}]   \
[get_pins {del_pick1f_d0_0_q_reg[1]/CP}] [get_pins                             \
{del_pick1f_d0_0_q_reg[2]/CP}] [get_pins {del_pick1f_d0_0_q_reg[3]/CP}]        \
[get_pins {del_pick0f_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_pick0f_d0_0_q_reg[1]/CP}] [get_pins {del_pick0f_d0_0_q_reg[2]/CP}]        \
[get_pins {del_pick0f_d0_0_q_reg[3]/CP}] [get_pins                             \
{del_pdecode1f_d0_0_q_reg[0]/CP}] [get_pins {del_pdecode1f_d0_0_q_reg[1]/CP}]  \
[get_pins {del_pdecode1f_d0_0_q_reg[2]/CP}] [get_pins                          \
{del_pdecode1f_d0_0_q_reg[3]/CP}] [get_pins {del_pdecode1f_d0_0_q_reg[4]/CP}]  \
[get_pins {del_pdecode1f_d0_0_q_reg[5]/CP}] [get_pins                          \
{del_pdecode1f_d0_0_q_reg[6]/CP}] [get_pins {del_pdecode0f_d0_0_q_reg[0]/CP}]  \
[get_pins {del_pdecode0f_d0_0_q_reg[1]/CP}] [get_pins                          \
{del_pdecode0f_d0_0_q_reg[2]/CP}] [get_pins {del_pdecode0f_d0_0_q_reg[3]/CP}]  \
[get_pins {del_pdecode0f_d0_0_q_reg[4]/CP}] [get_pins                          \
{del_pdecode0f_d0_0_q_reg[5]/CP}] [get_pins {del_pdecode0f_d0_0_q_reg[6]/CP}]  \
[get_pins {del_spare_5_0_lat_d0_0_q_reg[0]/CP}] [get_pins                      \
{del_spare_5_0_lat_d0_0_q_reg[2]/CP}] [get_pins del_clkgen_c_0_l1en_reg/CPN]]  -to [list [get_ports {del_pick_d[7]}] [get_ports {del_pick_d[6]}] [get_ports  \
{del_pick_d[5]}] [get_ports {del_pick_d[4]}] [get_ports {del_pick_d[3]}]       \
[get_ports {del_pick_d[2]}] [get_ports {del_pick_d[1]}] [get_ports             \
{del_pick_d[0]}] [get_ports {dec_inst0_rd_d[4]}] [get_ports                    \
{dec_inst0_rd_d[3]}] [get_ports {dec_inst0_rd_d[2]}] [get_ports                \
{dec_inst0_rd_d[1]}] [get_ports {dec_inst0_rd_d[0]}] [get_ports                \
{dec_inst1_rd_d[4]}] [get_ports {dec_inst1_rd_d[3]}] [get_ports                \
{dec_inst1_rd_d[2]}] [get_ports {dec_inst1_rd_d[1]}] [get_ports                \
{dec_inst1_rd_d[0]}] [get_ports dec_rs1_addr0_e] [get_ports dec_rs1_addr1_e]   \
[get_ports {dec_inst0_d[32]}] [get_ports {dec_inst0_d[31]}] [get_ports         \
{dec_inst0_d[30]}] [get_ports {dec_inst0_d[29]}] [get_ports {dec_inst0_d[28]}] \
[get_ports {dec_inst0_d[27]}] [get_ports {dec_inst0_d[26]}] [get_ports         \
{dec_inst0_d[25]}] [get_ports {dec_inst0_d[24]}] [get_ports {dec_inst0_d[23]}] \
[get_ports {dec_inst0_d[22]}] [get_ports {dec_inst0_d[21]}] [get_ports         \
{dec_inst0_d[20]}] [get_ports {dec_inst0_d[19]}] [get_ports {dec_inst0_d[18]}] \
[get_ports {dec_inst0_d[17]}] [get_ports {dec_inst0_d[16]}] [get_ports         \
{dec_inst0_d[15]}] [get_ports {dec_inst0_d[14]}] [get_ports {dec_inst0_d[13]}] \
[get_ports {dec_inst0_d[12]}] [get_ports {dec_inst0_d[11]}] [get_ports         \
{dec_inst0_d[10]}] [get_ports {dec_inst0_d[9]}] [get_ports {dec_inst0_d[8]}]   \
[get_ports {dec_inst0_d[7]}] [get_ports {dec_inst0_d[6]}] [get_ports           \
{dec_inst0_d[5]}] [get_ports {dec_inst0_d[4]}] [get_ports {dec_inst0_d[3]}]    \
[get_ports {dec_inst0_d[2]}] [get_ports {dec_inst0_d[1]}] [get_ports           \
{dec_inst0_d[0]}] [get_ports {dec_inst1_d[32]}] [get_ports {dec_inst1_d[31]}]  \
[get_ports {dec_inst1_d[30]}] [get_ports {dec_inst1_d[29]}] [get_ports         \
{dec_inst1_d[28]}] [get_ports {dec_inst1_d[27]}] [get_ports {dec_inst1_d[26]}] \
[get_ports {dec_inst1_d[25]}] [get_ports {dec_inst1_d[24]}] [get_ports         \
{dec_inst1_d[23]}] [get_ports {dec_inst1_d[22]}] [get_ports {dec_inst1_d[21]}] \
[get_ports {dec_inst1_d[20]}] [get_ports {dec_inst1_d[19]}] [get_ports         \
{dec_inst1_d[18]}] [get_ports {dec_inst1_d[17]}] [get_ports {dec_inst1_d[16]}] \
[get_ports {dec_inst1_d[15]}] [get_ports {dec_inst1_d[14]}] [get_ports         \
{dec_inst1_d[13]}] [get_ports {dec_inst1_d[12]}] [get_ports {dec_inst1_d[11]}] \
[get_ports {dec_inst1_d[10]}] [get_ports {dec_inst1_d[9]}] [get_ports          \
{dec_inst1_d[8]}] [get_ports {dec_inst1_d[7]}] [get_ports {dec_inst1_d[6]}]    \
[get_ports {dec_inst1_d[5]}] [get_ports {dec_inst1_d[4]}] [get_ports           \
{dec_inst1_d[3]}] [get_ports {dec_inst1_d[2]}] [get_ports {dec_inst1_d[1]}]    \
[get_ports {dec_inst1_d[0]}] [get_ports dec_decode0_d] [get_ports              \
dec_decode1_d] [get_ports dec_valid0_d] [get_ports dec_valid1_d] [get_ports    \
{dec_true_valid_e[1]}] [get_ports {dec_true_valid_e[0]}] [get_ports            \
{dec_tid0_d[1]}] [get_ports {dec_tid0_d[0]}] [get_ports {dec_tid1_d[1]}]       \
[get_ports {dec_tid1_d[0]}] [get_ports {dec_tid0_p[1]}] [get_ports             \
{dec_tid0_p[0]}] [get_ports {dec_tid1_p[1]}] [get_ports {dec_tid1_p[0]}]       \
[get_ports {dec_raw_pick_p[7]}] [get_ports {dec_raw_pick_p[6]}] [get_ports     \
{dec_raw_pick_p[5]}] [get_ports {dec_raw_pick_p[4]}] [get_ports                \
{dec_raw_pick_p[3]}] [get_ports {dec_raw_pick_p[2]}] [get_ports                \
{dec_raw_pick_p[1]}] [get_ports {dec_raw_pick_p[0]}] [get_ports                \
{dec_inst0_rs1_p[4]}] [get_ports {dec_inst0_rs1_p[3]}] [get_ports              \
{dec_inst0_rs1_p[2]}] [get_ports {dec_inst0_rs1_p[1]}] [get_ports              \
{dec_inst0_rs1_p[0]}] [get_ports {dec_inst0_rs2_p[4]}] [get_ports              \
{dec_inst0_rs2_p[3]}] [get_ports {dec_inst0_rs2_p[2]}] [get_ports              \
{dec_inst0_rs2_p[1]}] [get_ports {dec_inst0_rs2_p[0]}] [get_ports              \
{dec_inst0_rs3_p[4]}] [get_ports {dec_inst0_rs3_p[3]}] [get_ports              \
{dec_inst0_rs3_p[2]}] [get_ports {dec_inst0_rs3_p[1]}] [get_ports              \
{dec_inst0_rs3_p[0]}] [get_ports dec_inst0_rs1_vld_p] [get_ports               \
dec_inst0_rs2_vld_p] [get_ports dec_inst0_rs3_vld_p] [get_ports                \
{dec_inst1_rs1_p[4]}] [get_ports {dec_inst1_rs1_p[3]}] [get_ports              \
{dec_inst1_rs1_p[2]}] [get_ports {dec_inst1_rs1_p[1]}] [get_ports              \
{dec_inst1_rs1_p[0]}] [get_ports {dec_inst1_rs2_p[4]}] [get_ports              \
{dec_inst1_rs2_p[3]}] [get_ports {dec_inst1_rs2_p[2]}] [get_ports              \
{dec_inst1_rs2_p[1]}] [get_ports {dec_inst1_rs2_p[0]}] [get_ports              \
{dec_inst1_rs3_p[4]}] [get_ports {dec_inst1_rs3_p[3]}] [get_ports              \
{dec_inst1_rs3_p[2]}] [get_ports {dec_inst1_rs3_p[1]}] [get_ports              \
{dec_inst1_rs3_p[0]}] [get_ports dec_inst1_rs1_vld_p] [get_ports               \
dec_inst1_rs2_vld_p] [get_ports dec_inst1_rs3_vld_p] [get_ports                \
{dec_frf_r1_addr_d[4]}] [get_ports {dec_frf_r1_addr_d[3]}] [get_ports          \
{dec_frf_r1_addr_d[2]}] [get_ports {dec_frf_r1_addr_d[1]}] [get_ports          \
{dec_frf_r1_addr_d[0]}] [get_ports {dec_frf_r2_addr_d[4]}] [get_ports          \
{dec_frf_r2_addr_d[3]}] [get_ports {dec_frf_r2_addr_d[2]}] [get_ports          \
{dec_frf_r2_addr_d[1]}] [get_ports {dec_frf_r2_addr_d[0]}] [get_ports          \
dec_frf_r1_vld_d] [get_ports dec_frf_r2_vld_d] [get_ports dec_frf_r1_32b_d]    \
[get_ports dec_frf_r2_32b_d] [get_ports dec_frf_r1_odd32b_d] [get_ports        \
dec_frf_r2_odd32b_d] [get_ports {dec_frf_w_addr_d[4]}] [get_ports              \
{dec_frf_w_addr_d[3]}] [get_ports {dec_frf_w_addr_d[2]}] [get_ports            \
{dec_frf_w_addr_d[1]}] [get_ports {dec_frf_w_addr_d[0]}] [get_ports            \
dec_frf_w_vld_d] [get_ports dec_frf_w_32b_d] [get_ports dec_frf_w_odd32b_d]    \
[get_ports dec_exu_src_vld_d] [get_ports {dec_irf_w_addr_d[4]}] [get_ports     \
{dec_irf_w_addr_d[3]}] [get_ports {dec_irf_w_addr_d[2]}] [get_ports            \
{dec_irf_w_addr_d[1]}] [get_ports {dec_irf_w_addr_d[0]}] [get_ports            \
dec_frf_store_d] [get_ports dec_fsr_store_d] [get_ports {dec_fgu_op3_d[5]}]    \
[get_ports {dec_fgu_op3_d[4]}] [get_ports {dec_fgu_op3_d[3]}] [get_ports       \
{dec_fgu_op3_d[2]}] [get_ports {dec_fgu_op3_d[1]}] [get_ports                  \
{dec_fgu_op3_d[0]}] [get_ports {dec_fgu_opf_d[7]}] [get_ports                  \
{dec_fgu_opf_d[6]}] [get_ports {dec_fgu_opf_d[5]}] [get_ports                  \
{dec_fgu_opf_d[4]}] [get_ports {dec_fgu_opf_d[3]}] [get_ports                  \
{dec_fgu_opf_d[2]}] [get_ports {dec_fgu_opf_d[1]}] [get_ports                  \
{dec_fgu_opf_d[0]}] [get_ports dec_fgu_decode_d] [get_ports                    \
{dec_fgu_tid_d[2]}] [get_ports {dec_fgu_tid_d[1]}] [get_ports                  \
{dec_fgu_tid_d[0]}] [get_ports dec_flush_f1] [get_ports dec_flush_f2]          \
[get_ports dec_flush_lm] [get_ports dec_flush_lb] [get_ports {dec_flush_m[1]}] \
[get_ports {dec_flush_m[0]}] [get_ports {dec_flush_b[1]}] [get_ports           \
{dec_flush_b[0]}] [get_ports dec_spu_grant_d] [get_ports dec_spu_grant_fgu_d]  \
[get_ports {dec_block_store_b[7]}] [get_ports {dec_block_store_b[6]}]          \
[get_ports {dec_block_store_b[5]}] [get_ports {dec_block_store_b[4]}]          \
[get_ports {dec_block_store_b[3]}] [get_ports {dec_block_store_b[2]}]          \
[get_ports {dec_block_store_b[1]}] [get_ports {dec_block_store_b[0]}]          \
[get_ports {dec_load_flush_w[1]}] [get_ports {dec_load_flush_w[0]}] [get_ports \
{dec_exc0_m[4]}] [get_ports {dec_exc0_m[3]}] [get_ports {dec_exc0_m[2]}]       \
[get_ports {dec_exc0_m[1]}] [get_ports {dec_exc0_m[0]}] [get_ports             \
{dec_exc1_m[4]}] [get_ports {dec_exc1_m[3]}] [get_ports {dec_exc1_m[2]}]       \
[get_ports {dec_exc1_m[1]}] [get_ports {dec_exc1_m[0]}] [get_ports             \
{dec_inst0_cnt[1]}] [get_ports {dec_inst0_cnt[0]}] [get_ports                  \
{dec_inst1_cnt[1]}] [get_ports {dec_inst1_cnt[0]}] [get_ports {dec_tid0_m[1]}] \
[get_ports {dec_tid0_m[0]}] [get_ports {dec_tid1_m[1]}] [get_ports             \
{dec_tid1_m[0]}] [get_ports {dec_inst_valid_m[1]}] [get_ports                  \
{dec_inst_valid_m[0]}] [get_ports {dec_lsu_inst_m[1]}] [get_ports              \
{dec_lsu_inst_m[0]}] [get_ports {dec_fgu_inst_m[1]}] [get_ports                \
{dec_fgu_inst_m[0]}] [get_ports {dec_cti_inst_m[1]}] [get_ports                \
{dec_cti_inst_m[0]}] [get_ports {dec_illegal_inst_m[1]}] [get_ports            \
{dec_illegal_inst_m[0]}] [get_ports {dec_icache_perr_m[1]}] [get_ports         \
{dec_icache_perr_m[0]}] [get_ports {dec_priv_exc_m[1]}] [get_ports             \
{dec_priv_exc_m[0]}] [get_ports {dec_hpriv_exc_m[1]}] [get_ports               \
{dec_hpriv_exc_m[0]}] [get_ports {dec_fpdisable_exc_m[1]}] [get_ports          \
{dec_fpdisable_exc_m[0]}] [get_ports {dec_br_taken_m[1]}] [get_ports           \
{dec_br_taken_m[0]}] [get_ports {dec_done_inst_m[1]}] [get_ports               \
{dec_done_inst_m[0]}] [get_ports {dec_retry_inst_m[1]}] [get_ports             \
{dec_retry_inst_m[0]}] [get_ports {dec_sir_inst_m[1]}] [get_ports              \
{dec_sir_inst_m[0]}] [get_ports {dec_annul_ds_m[1]}] [get_ports                \
{dec_annul_ds_m[0]}] [get_ports {dec_ds_m[1]}] [get_ports {dec_ds_m[0]}]       \
[get_ports {dec_fgu_sel_e[1]}] [get_ports {dec_fgu_sel_e[0]}] [get_ports       \
{dec_fgu_sel_m[1]}] [get_ports {dec_fgu_sel_m[0]}] [get_ports dec_lsu_sel0_e]  \
[get_ports dec_lsu_sel1_e] [get_ports dec_lsu_sel0_lower_e] [get_ports         \
dec_lsu_sel1_lower_e] [get_ports dec_lsu_sel0_upper_e] [get_ports              \
dec_lsu_sel1_upper_e] [get_ports dec_rs1_addr0_upper_e] [get_ports             \
dec_rs1_addr1_upper_e] [get_ports dec_ld_inst_e] [get_ports dec_st_inst_e]     \
[get_ports dec_fsr_ldst_e] [get_ports dec_fpldst_inst_e] [get_ports            \
dec_ldst_dbl_e] [get_ports dec_pref_inst_e] [get_ports dec_flush_inst_e]       \
[get_ports dec_memstbar_inst_e] [get_ports {dec_ldst_sz_e[1]}] [get_ports      \
{dec_ldst_sz_e[0]}] [get_ports {dec_frf_r2_addr_e[4]}] [get_ports              \
{dec_frf_r2_addr_e[3]}] [get_ports dec_sr_inst_e] [get_ports dec_pr_inst_e]    \
[get_ports dec_hpr_inst_e] [get_ports dec_casa_inst_e] [get_ports              \
dec_ldstub_inst_e] [get_ports dec_swap_inst_e] [get_ports dec_altspace_d]      \
[get_ports dec_sign_ext_e] [get_ports {dec_sraddr_e[4]}] [get_ports            \
{dec_sraddr_e[3]}] [get_ports {dec_sraddr_e[2]}] [get_ports {dec_sraddr_e[1]}] \
[get_ports {dec_sraddr_e[0]}] [get_ports dec_imm_asi_vld_d] [get_ports         \
{dec_imm_asi_d[7]}] [get_ports {dec_imm_asi_d[6]}] [get_ports                  \
{dec_imm_asi_d[5]}] [get_ports {dec_imm_asi_d[4]}] [get_ports                  \
{dec_imm_asi_d[3]}] [get_ports {dec_imm_asi_d[2]}] [get_ports                  \
{dec_imm_asi_d[1]}] [get_ports {dec_imm_asi_d[0]}] [get_ports                  \
{dec_lsu_tid0_d[1]}] [get_ports {dec_lsu_tid0_d[0]}] [get_ports                \
{dec_lsu_tid1_d[1]}] [get_ports {dec_lsu_tid1_d[0]}] [get_ports dec_lsu_tg_d]  \
[get_ports {dec_lsu_rd_e[4]}] [get_ports {dec_lsu_rd_e[3]}] [get_ports         \
{dec_lsu_rd_e[2]}] [get_ports {dec_lsu_rd_e[1]}] [get_ports {dec_lsu_rd_e[0]}] \
[get_ports dec_ld_inst_d] [get_ports {dec_instr0_type_d[9]}] [get_ports        \
{dec_instr0_type_d[8]}] [get_ports {dec_instr0_type_d[7]}] [get_ports          \
{dec_instr0_type_d[6]}] [get_ports {dec_instr0_type_d[5]}] [get_ports          \
{dec_instr0_type_d[4]}] [get_ports {dec_instr0_type_d[3]}] [get_ports          \
{dec_instr0_type_d[2]}] [get_ports {dec_instr0_type_d[1]}] [get_ports          \
{dec_instr0_type_d[0]}] [get_ports {dec_instr1_type_d[9]}] [get_ports          \
{dec_instr1_type_d[8]}] [get_ports {dec_instr1_type_d[7]}] [get_ports          \
{dec_instr1_type_d[6]}] [get_ports {dec_instr1_type_d[5]}] [get_ports          \
{dec_instr1_type_d[4]}] [get_ports {dec_instr1_type_d[3]}] [get_ports          \
{dec_instr1_type_d[2]}] [get_ports {dec_instr1_type_d[1]}] [get_ports          \
{dec_instr1_type_d[0]}] [get_ports {dec_valid_e[1]}] [get_ports                \
{dec_valid_e[0]}] [get_ports {dec_pmu_valid_e[1]}] [get_ports                  \
{dec_pmu_valid_e[0]}] [get_ports dec_fgu_valid_e] [get_ports                   \
{dec_exu_clken[1]}] [get_ports {dec_exu_clken[0]}] [get_ports dec_lsu_sel0_d]  \
[get_ports {dec_ierr_d[1]}] [get_ports {dec_ierr_d[0]}] [get_ports             \
{dec_block_store_stall[7]}] [get_ports {dec_block_store_stall[6]}] [get_ports  \
{dec_block_store_stall[5]}] [get_ports {dec_block_store_stall[4]}] [get_ports  \
{dec_block_store_stall[3]}] [get_ports {dec_block_store_stall[2]}] [get_ports  \
{dec_block_store_stall[1]}] [get_ports {dec_block_store_stall[0]}] [get_ports  \
scan_out]]
group_path -name reg2reg  -from [list [get_pins {ded1_legalf_d0_0_q_reg[0]/CP}] [get_pins               \
{ded1_ifetcherrf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{ded1_parityerrf_d0_0_q_reg[0]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[0]/CP}] \
[get_pins {ded1_decodef_d0_0_q_reg[1]/CP}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[2]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[3]/CP}]    \
[get_pins {ded1_decodef_d0_0_q_reg[4]/CP}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[5]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[6]/CP}]    \
[get_pins {ded1_decodef_d0_0_q_reg[7]/CP}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[8]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[9]/CP}]    \
[get_pins {ded1_decodef_d0_0_q_reg[10]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[11]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[12]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[13]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[14]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[15]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[16]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[17]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[18]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[19]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[20]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[21]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[22]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[23]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[24]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[25]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[26]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[27]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[28]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[29]/CP}] [get_pins {ded1_decodef_d0_0_q_reg[30]/CP}]  \
[get_pins {ded1_decodef_d0_0_q_reg[31]/CP}] [get_pins                          \
{ded1_decodef_d0_0_q_reg[32]/CP}] [get_pins {ded1_excf_d0_0_q_reg[0]/CP}]      \
[get_pins {ded1_excf_d0_0_q_reg[1]/CP}] [get_pins                              \
{ded1_excf_d0_0_q_reg[2]/CP}] [get_pins {ded1_excf_d0_0_q_reg[3]/CP}]          \
[get_pins {ded1_excf_d0_0_q_reg[4]/CP}] [get_pins                              \
{ded1_isrcf_d0_0_q_reg[0]/CP}] [get_pins {ded1_isrcf_d0_0_q_reg[1]/CP}]        \
[get_pins {ded1_isrcf_d0_0_q_reg[2]/CP}] [get_pins                             \
{ded1_twocyclef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[1]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[2]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[3]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[4]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[5]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[6]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[7]/CP}] [get_pins                                   \
{ded1_twocyclef_d0_0_q_reg[8]/CP}] [get_pins {ded1_windowf_d0_0_q_reg[0]/CP}]  \
[get_pins {ded1_windowf_d0_0_q_reg[1]/CP}] [get_pins                           \
{ded1_windowf_d0_0_q_reg[2]/CP}] [get_pins {ded1_windowf_d0_0_q_reg[3]/CP}]    \
[get_pins {ded1_oddwinf_d0_0_q_reg[0]/CP}] [get_pins                           \
{ded1_oddwinf_d0_0_q_reg[1]/CP}] [get_pins {ded1_oddwinf_d0_0_q_reg[2]/CP}]    \
[get_pins {ded1_oddwinf_d0_0_q_reg[3]/CP}] [get_pins                           \
{ded1_icdf_perr_f_d0_0_q_reg[0]/CP}] [get_pins ded1_clkgen_c_0_l1en_reg/CPN]   \
[get_pins {ded0_legalf_d0_0_q_reg[0]/CP}] [get_pins                            \
{ded0_ifetcherrf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{ded0_parityerrf_d0_0_q_reg[0]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[0]/CP}] \
[get_pins {ded0_decodef_d0_0_q_reg[1]/CP}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[2]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[3]/CP}]    \
[get_pins {ded0_decodef_d0_0_q_reg[4]/CP}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[5]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[6]/CP}]    \
[get_pins {ded0_decodef_d0_0_q_reg[7]/CP}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[8]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[9]/CP}]    \
[get_pins {ded0_decodef_d0_0_q_reg[10]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[11]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[12]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[13]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[14]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[15]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[16]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[17]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[18]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[19]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[20]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[21]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[22]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[23]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[24]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[25]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[26]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[27]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[28]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[29]/CP}] [get_pins {ded0_decodef_d0_0_q_reg[30]/CP}]  \
[get_pins {ded0_decodef_d0_0_q_reg[31]/CP}] [get_pins                          \
{ded0_decodef_d0_0_q_reg[32]/CP}] [get_pins {ded0_excf_d0_0_q_reg[0]/CP}]      \
[get_pins {ded0_excf_d0_0_q_reg[1]/CP}] [get_pins                              \
{ded0_excf_d0_0_q_reg[2]/CP}] [get_pins {ded0_excf_d0_0_q_reg[3]/CP}]          \
[get_pins {ded0_excf_d0_0_q_reg[4]/CP}] [get_pins                              \
{ded0_isrcf_d0_0_q_reg[0]/CP}] [get_pins {ded0_isrcf_d0_0_q_reg[1]/CP}]        \
[get_pins {ded0_isrcf_d0_0_q_reg[2]/CP}] [get_pins                             \
{ded0_twocyclef_d0_0_q_reg[0]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[1]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[2]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[3]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[4]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[5]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[6]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[7]/CP}] [get_pins                                   \
{ded0_twocyclef_d0_0_q_reg[8]/CP}] [get_pins {ded0_windowf_d0_0_q_reg[0]/CP}]  \
[get_pins {ded0_windowf_d0_0_q_reg[1]/CP}] [get_pins                           \
{ded0_windowf_d0_0_q_reg[2]/CP}] [get_pins {ded0_windowf_d0_0_q_reg[3]/CP}]    \
[get_pins {ded0_oddwinf_d0_0_q_reg[0]/CP}] [get_pins                           \
{ded0_oddwinf_d0_0_q_reg[1]/CP}] [get_pins {ded0_oddwinf_d0_0_q_reg[2]/CP}]    \
[get_pins {ded0_oddwinf_d0_0_q_reg[3]/CP}] [get_pins                           \
{ded0_icdf_perr_f_d0_0_q_reg[0]/CP}] [get_pins ded0_clkgen_c_0_l1en_reg/CPN]   \
[get_pins del_power_throttle00_f_xx1_q_reg/CP] [get_pins                       \
del_power_throttle00_f_xx0_q_reg/CP] [get_pins                                 \
del_power_throttle01_f_xx1_q_reg/CP] [get_pins                                 \
del_power_throttle01_f_xx0_q_reg/CP] [get_pins                                 \
del_power_throttle02_f_xx1_q_reg/CP] [get_pins                                 \
del_power_throttle02_f_xx0_q_reg/CP] [get_pins                                 \
{del_power_throttle1f_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_power_throttle1f_d0_0_q_reg[1]/CP}] [get_pins                             \
{del_power_throttle1f_d0_0_q_reg[2]/CP}] [get_pins                             \
{del_thread_activef_d0_0_q_reg[0]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[1]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[2]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[3]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[4]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[5]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[6]/CP}] [get_pins                               \
{del_thread_activef_d0_0_q_reg[7]/CP}] [get_pins                               \
{del_power_stall1f_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[2]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[3]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[4]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[5]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[6]/CP}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[7]/CP}] [get_pins                                \
{del_done_retry_m_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[2]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[3]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[4]/CP}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[5]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[2]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[3]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[4]/CP}] [get_pins                                 \
{del_done_retry_e_d0_0_q_reg[5]/CP}] [get_pins                                 \
{del_illegal_priv_m_d0_0_q_reg[0]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[1]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[2]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[3]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[4]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[5]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[6]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[7]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[8]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[9]/CP}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[10]/CP}] [get_pins                              \
{del_illegal_priv_m_d0_0_q_reg[11]/CP}] [get_pins                              \
{del_flush_lexc_f_d0_0_q_reg[0]/CP}] [get_pins {del_inst_m_d0_0_q_reg[0]/CP}]  \
[get_pins {del_inst_m_d0_0_q_reg[1]/CP}] [get_pins                             \
{del_inst_m_d0_0_q_reg[2]/CP}] [get_pins {del_inst_m_d0_0_q_reg[3]/CP}]        \
[get_pins {del_inst_m_d0_0_q_reg[4]/CP}] [get_pins                             \
{del_inst_m_d0_0_q_reg[5]/CP}] [get_pins {del_inst_m_d0_0_q_reg[6]/CP}]        \
[get_pins {del_inst_m_d0_0_q_reg[7]/CP}] [get_pins                             \
{del_inst_m_d0_0_q_reg[8]/CP}] [get_pins {del_inst_m_d0_0_q_reg[9]/CP}]        \
[get_pins {del_inst_m_d0_0_q_reg[10]/CP}] [get_pins                            \
{del_inst_m_d0_0_q_reg[11]/CP}] [get_pins {del_inst_m_d0_0_q_reg[12]/CP}]      \
[get_pins {del_inst_m_d0_0_q_reg[13]/CP}] [get_pins                            \
{del_inst_m_d0_0_q_reg[14]/CP}] [get_pins {del_inst_m_d0_0_q_reg[15]/CP}]      \
[get_pins {del_inst_e_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_inst_e_d0_0_q_reg[1]/CP}] [get_pins {del_inst_e_d0_0_q_reg[2]/CP}]        \
[get_pins {del_inst_e_d0_0_q_reg[3]/CP}] [get_pins                             \
{del_inst_e_d0_0_q_reg[4]/CP}] [get_pins {del_inst_e_d0_0_q_reg[5]/CP}]        \
[get_pins {del_inst_e_d0_0_q_reg[6]/CP}] [get_pins                             \
{del_inst_e_d0_0_q_reg[7]/CP}] [get_pins {del_inst_e_d0_0_q_reg[8]/CP}]        \
[get_pins {del_inst_e_d0_0_q_reg[9]/CP}] [get_pins                             \
{del_inst_e_d0_0_q_reg[10]/CP}] [get_pins {del_inst_e_d0_0_q_reg[11]/CP}]      \
[get_pins {del_inst_e_d0_0_q_reg[12]/CP}] [get_pins                            \
{del_inst_e_d0_0_q_reg[13]/CP}] [get_pins {del_inst_e_d0_0_q_reg[14]/CP}]      \
[get_pins {del_inst_e_d0_0_q_reg[15]/CP}] [get_pins                            \
{del_dec_m_d0_0_q_reg[0]/CP}] [get_pins {del_dec_m_d0_0_q_reg[1]/CP}]          \
[get_pins {del_dec_e_d0_0_q_reg[0]/CP}] [get_pins                              \
{del_dec_e_d0_0_q_reg[1]/CP}] [get_pins {del_tid_m_d0_0_q_reg[0]/CP}]          \
[get_pins {del_tid_m_d0_0_q_reg[1]/CP}] [get_pins                              \
{del_tid_m_d0_0_q_reg[2]/CP}] [get_pins {del_tid_m_d0_0_q_reg[3]/CP}]          \
[get_pins {del_tid_e_d0_0_q_reg[0]/CP}] [get_pins                              \
{del_tid_e_d0_0_q_reg[1]/CP}] [get_pins {del_tid_e_d0_0_q_reg[2]/CP}]          \
[get_pins {del_tid_e_d0_0_q_reg[3]/CP}] [get_pins                              \
{del_annul_m_d0_0_q_reg[0]/CP}] [get_pins {del_annul_m_d0_0_q_reg[1]/CP}]      \
[get_pins {del_ds_m_d0_0_q_reg[0]/CP}] [get_pins {del_ds_m_d0_0_q_reg[1]/CP}]  \
[get_pins {del_lsurd_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_lsurd_f_d0_0_q_reg[1]/CP}] [get_pins {del_lsurd_f_d0_0_q_reg[2]/CP}]      \
[get_pins {del_lsurd_f_d0_0_q_reg[3]/CP}] [get_pins                            \
{del_lsurd_f_d0_0_q_reg[4]/CP}] [get_pins {del_sraddr_f_d0_0_q_reg[0]/CP}]     \
[get_pins {del_sraddr_f_d0_0_q_reg[1]/CP}] [get_pins                           \
{del_sraddr_f_d0_0_q_reg[2]/CP}] [get_pins {del_sraddr_f_d0_0_q_reg[3]/CP}]    \
[get_pins {del_sraddr_f_d0_0_q_reg[4]/CP}] [get_pins                           \
{del_ldme_f_d0_0_q_reg[0]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[1]/CP}]        \
[get_pins {del_ldme_f_d0_0_q_reg[2]/CP}] [get_pins                             \
{del_ldme_f_d0_0_q_reg[3]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[4]/CP}]        \
[get_pins {del_ldme_f_d0_0_q_reg[5]/CP}] [get_pins                             \
{del_ldme_f_d0_0_q_reg[6]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[7]/CP}]        \
[get_pins {del_ldme_f_d0_0_q_reg[8]/CP}] [get_pins                             \
{del_ldme_f_d0_0_q_reg[9]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[10]/CP}]       \
[get_pins {del_ldme_f_d0_0_q_reg[11]/CP}] [get_pins                            \
{del_ldme_f_d0_0_q_reg[12]/CP}] [get_pins {del_ldme_f_d0_0_q_reg[13]/CP}]      \
[get_pins {del_ldste_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_ldste_f_d0_0_q_reg[1]/CP}] [get_pins {del_ldste_f_d0_0_q_reg[2]/CP}]      \
[get_pins {del_lsudec_f_d0_0_q_reg[0]/CP}] [get_pins                           \
{del_lsudec_f_d0_0_q_reg[1]/CP}] [get_pins {del_fgudec_f_d0_0_q_reg[0]/CP}]    \
[get_pins {del_fgudec_f_d0_0_q_reg[1]/CP}] [get_pins                           \
{del_truevalid_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_truevalid_f_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_ifetcherr_f_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_ifetcherr_f_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_ifetch_err_f_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_ifetch_err_f_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_frf_r2addre_f_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_frf_r2addre_f_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_tgselm_f_d0_0_q_reg[0]/CP}] [get_pins {del_tgselm_f_d0_0_q_reg[1]/CP}]    \
[get_pins {del_exuself_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_exuself_d0_0_q_reg[1]/CP}] [get_pins {del_exuself_d0_0_q_reg[2]/CP}]      \
[get_pins {del_exuself_d0_0_q_reg[3]/CP}] [get_pins                            \
{del_exuself_d0_0_q_reg[4]/CP}] [get_pins {del_exuself_d0_0_q_reg[5]/CP}]      \
[get_pins {del_exuself_d0_0_q_reg[6]/CP}] [get_pins                            \
{del_exuself_d0_0_q_reg[7]/CP}] [get_pins {del_tgsel_f_d0_0_q_reg[0]/CP}]      \
[get_pins {del_tgsel_f_d0_0_q_reg[1]/CP}] [get_pins                            \
{del_tgsel_f_d0_0_q_reg[2]/CP}] [get_pins {del_tgsel_f_d0_0_q_reg[3]/CP}]      \
[get_pins {del_exc_f_d0_0_q_reg[0]/CP}] [get_pins                              \
{del_exc_f_d0_0_q_reg[1]/CP}] [get_pins {del_exc_f_d0_0_q_reg[2]/CP}]          \
[get_pins {del_exc_f_d0_0_q_reg[3]/CP}] [get_pins                              \
{del_exc_f_d0_0_q_reg[4]/CP}] [get_pins {del_exc_f_d0_0_q_reg[5]/CP}]          \
[get_pins {del_parity_err_f_d0_0_q_reg[0]/CP}] [get_pins                       \
{del_parity_err_f_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_fpdisable_exc_f_d0_0_q_reg[0]/CP}] [get_pins                              \
{del_fpdisable_exc_f_d0_0_q_reg[1]/CP}] [get_pins                              \
{del_illegal_f_d0_0_q_reg[0]/CP}] [get_pins {del_illegal_f_d0_0_q_reg[1]/CP}]  \
[get_pins {del_legal_f_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_legal_f_d0_0_q_reg[1]/CP}] [get_pins {del_exu_clkenf_d0_0_q_reg[0]/CP}]   \
[get_pins {del_exu_clkenf_d0_0_q_reg[1]/CP}] [get_pins                         \
{del_windowstall_df_d0_0_q_reg[0]/CP}] [get_pins                               \
{del_windowstall_df_d0_0_q_reg[1]/CP}] [get_pins                               \
{del_divstall_df_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_divstall_df_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_divstall_df_d0_0_q_reg[2]/CP}] [get_pins                                  \
{del_inthole1_df_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_inthole1_df_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_inthole1_df_d0_0_q_reg[2]/CP}] [get_pins                                  \
{del_inthole0_df_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_inthole0_df_d0_0_q_reg[1]/CP}] [get_pins                                  \
{del_inthole0_df_d0_0_q_reg[2]/CP}] [get_pins                                  \
{del_twocycle1_df_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_twocycle0_df_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_pdisttidf_d0_0_q_reg[0]/CP}] [get_pins {del_pdisttidf_d0_0_q_reg[1]/CP}]  \
[get_pins {del_pdisttidf_d0_0_q_reg[2]/CP}] [get_pins                          \
{del_pdistrdf_d0_0_q_reg[0]/CP}] [get_pins {del_pdistrdf_d0_0_q_reg[1]/CP}]    \
[get_pins {del_pdistrdf_d0_0_q_reg[2]/CP}] [get_pins                           \
{del_pdistrdf_d0_0_q_reg[3]/CP}] [get_pins {del_pdistrdf_d0_0_q_reg[4]/CP}]    \
[get_pins {del_pdistblockf_d0_0_q_reg[0]/CP}] [get_pins                        \
{del_pdistblockf_d0_0_q_reg[1]/CP}] [get_pins {del_cmfavorf_d0_0_q_reg[0]/CP}] \
[get_pins {del_mulrequestf_d0_0_q_reg[0]/CP}] [get_pins                        \
{del_sffavorf_d0_0_q_reg[0]/CP}] [get_pins {del_ffavorf_d0_0_q_reg[0]/CP}]     \
[get_pins {del_lfavorf_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_block_store_b_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_block_store_b_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_block_store_b_d0_0_q_reg[2]/CP}] [get_pins                                \
{del_block_store_b_d0_0_q_reg[3]/CP}] [get_pins                                \
{del_block_store_m_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_block_store_m_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_block_store_m_d0_0_q_reg[2]/CP}] [get_pins                                \
{del_block_store_m_d0_0_q_reg[3]/CP}] [get_pins                                \
{del_block_store_e_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_block_store_e_d0_0_q_reg[1]/CP}] [get_pins                                \
{del_block_store_e_d0_0_q_reg[2]/CP}] [get_pins                                \
{del_block_store_e_d0_0_q_reg[3]/CP}] [get_pins                                \
{del_block_resetf_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_block_resetf_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_block_resetf_d0_0_q_reg[2]/CP}] [get_pins                                 \
{del_fecc_stallf_d0_0_q_reg[0]/CP}] [get_pins                                  \
{del_cpq_stallf_d0_0_q_reg[0]/CP}] [get_pins                                   \
{del_block_store_tidf_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_block_store_tidf_d0_0_q_reg[1]/CP}] [get_pins                             \
{del_block_store_tidf_d0_0_q_reg[2]/CP}] [get_pins                             \
{del_block_store_rdlof_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_block_store_rdlof_d0_0_q_reg[1]/CP}] [get_pins                            \
{del_block_store_rdlof_d0_0_q_reg[2]/CP}] [get_pins                            \
{del_block_store_rdhif_d0_0_q_reg[0]/CP}] [get_pins                            \
{del_block_store_rdhif_d0_0_q_reg[1]/CP}] [get_pins                            \
{del_block_storef_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_block_store0f_d0_0_q_reg[0]/CP}] [get_pins                                \
{del_dtlb_reloadf_d0_0_q_reg[0]/CP}] [get_pins                                 \
{del_dtlb_reloadf_d0_0_q_reg[1]/CP}] [get_pins                                 \
{del_valid_df_d0_0_q_reg[0]/CP}] [get_pins {del_valid_df_d0_0_q_reg[1]/CP}]    \
[get_pins {del_val_df_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_val_df_d0_0_q_reg[1]/CP}] [get_pins {del_val_df_d0_0_q_reg[2]/CP}]        \
[get_pins {del_val_df_d0_0_q_reg[3]/CP}] [get_pins                             \
{del_val_df_d0_0_q_reg[4]/CP}] [get_pins {del_val_df_d0_0_q_reg[5]/CP}]        \
[get_pins {del_val_df_d0_0_q_reg[6]/CP}] [get_pins                             \
{del_val_df_d0_0_q_reg[7]/CP}] [get_pins {del_teststallf_d0_0_q_reg[0]/CP}]    \
[get_pins {del_teststallf_d0_0_q_reg[1]/CP}] [get_pins                         \
{del_exutestf_d0_0_q_reg[0]/CP}] [get_pins {del_exutestf_d0_0_q_reg[1]/CP}]    \
[get_pins {del_exutestf_d0_0_q_reg[2]/CP}] [get_pins                           \
{del_exutestf_d0_0_q_reg[3]/CP}] [get_pins {del_exutestf_d0_0_q_reg[4]/CP}]    \
[get_pins {del_exutestf_d0_0_q_reg[5]/CP}] [get_pins                           \
{del_exutestf_d0_0_q_reg[6]/CP}] [get_pins {del_exutestf_d0_0_q_reg[7]/CP}]    \
[get_pins {del_exutestf_d0_0_q_reg[8]/CP}] [get_pins                           \
{del_exutestf_d0_0_q_reg[9]/CP}] [get_pins {del_exutestf_d0_0_q_reg[10]/CP}]   \
[get_pins {del_exutestf_d0_0_q_reg[11]/CP}] [get_pins                          \
{del_exutestf_d0_0_q_reg[12]/CP}] [get_pins {del_exutestf_d0_0_q_reg[13]/CP}]  \
[get_pins {del_exutestf_d0_0_q_reg[14]/CP}] [get_pins                          \
{del_exutestf_d0_0_q_reg[15]/CP}] [get_pins {del_instcntf_d0_0_q_reg[0]/CP}]   \
[get_pins {del_instcntf_d0_0_q_reg[1]/CP}] [get_pins                           \
{del_instcntf_d0_0_q_reg[2]/CP}] [get_pins {del_instcntf_d0_0_q_reg[3]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[0]/CP}] [get_pins {del_fef_d0_0_q_reg[1]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[2]/CP}] [get_pins {del_fef_d0_0_q_reg[3]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[4]/CP}] [get_pins {del_fef_d0_0_q_reg[5]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[6]/CP}] [get_pins {del_fef_d0_0_q_reg[7]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[8]/CP}] [get_pins {del_fef_d0_0_q_reg[9]/CP}]    \
[get_pins {del_fef_d0_0_q_reg[10]/CP}] [get_pins {del_fef_d0_0_q_reg[11]/CP}]  \
[get_pins {del_fef_d0_0_q_reg[12]/CP}] [get_pins {del_fef_d0_0_q_reg[13]/CP}]  \
[get_pins {del_fef_d0_0_q_reg[14]/CP}] [get_pins {del_fef_d0_0_q_reg[15]/CP}]  \
[get_pins {del_privstatef_d0_0_q_reg[0]/CP}] [get_pins                         \
{del_privstatef_d0_0_q_reg[1]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[2]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[3]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[4]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[5]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[6]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[7]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[8]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[9]/CP}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[10]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[11]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[12]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[13]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[14]/CP}] [get_pins                                  \
{del_privstatef_d0_0_q_reg[15]/CP}] [get_pins {del_pick1f_d0_0_q_reg[0]/CP}]   \
[get_pins {del_pick1f_d0_0_q_reg[1]/CP}] [get_pins                             \
{del_pick1f_d0_0_q_reg[2]/CP}] [get_pins {del_pick1f_d0_0_q_reg[3]/CP}]        \
[get_pins {del_pick0f_d0_0_q_reg[0]/CP}] [get_pins                             \
{del_pick0f_d0_0_q_reg[1]/CP}] [get_pins {del_pick0f_d0_0_q_reg[2]/CP}]        \
[get_pins {del_pick0f_d0_0_q_reg[3]/CP}] [get_pins                             \
{del_pdecode1f_d0_0_q_reg[0]/CP}] [get_pins {del_pdecode1f_d0_0_q_reg[1]/CP}]  \
[get_pins {del_pdecode1f_d0_0_q_reg[2]/CP}] [get_pins                          \
{del_pdecode1f_d0_0_q_reg[3]/CP}] [get_pins {del_pdecode1f_d0_0_q_reg[4]/CP}]  \
[get_pins {del_pdecode1f_d0_0_q_reg[5]/CP}] [get_pins                          \
{del_pdecode1f_d0_0_q_reg[6]/CP}] [get_pins {del_pdecode0f_d0_0_q_reg[0]/CP}]  \
[get_pins {del_pdecode0f_d0_0_q_reg[1]/CP}] [get_pins                          \
{del_pdecode0f_d0_0_q_reg[2]/CP}] [get_pins {del_pdecode0f_d0_0_q_reg[3]/CP}]  \
[get_pins {del_pdecode0f_d0_0_q_reg[4]/CP}] [get_pins                          \
{del_pdecode0f_d0_0_q_reg[5]/CP}] [get_pins {del_pdecode0f_d0_0_q_reg[6]/CP}]  \
[get_pins {del_spare_5_0_lat_d0_0_q_reg[0]/CP}] [get_pins                      \
{del_spare_5_0_lat_d0_0_q_reg[2]/CP}] [get_pins del_clkgen_c_0_l1en_reg/CPN]]  -to [list [get_pins {ded1_legalf_d0_0_q_reg[0]/D}] [get_pins                  \
{ded1_ifetcherrf_d0_0_q_reg[0]/D}] [get_pins                                   \
{ded1_parityerrf_d0_0_q_reg[0]/D}] [get_pins {ded1_decodef_d0_0_q_reg[0]/D}]   \
[get_pins {ded1_decodef_d0_0_q_reg[1]/D}] [get_pins                            \
{ded1_decodef_d0_0_q_reg[2]/D}] [get_pins {ded1_decodef_d0_0_q_reg[3]/D}]      \
[get_pins {ded1_decodef_d0_0_q_reg[4]/D}] [get_pins                            \
{ded1_decodef_d0_0_q_reg[5]/D}] [get_pins {ded1_decodef_d0_0_q_reg[6]/D}]      \
[get_pins {ded1_decodef_d0_0_q_reg[7]/D}] [get_pins                            \
{ded1_decodef_d0_0_q_reg[8]/D}] [get_pins {ded1_decodef_d0_0_q_reg[9]/D}]      \
[get_pins {ded1_decodef_d0_0_q_reg[10]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[11]/D}] [get_pins {ded1_decodef_d0_0_q_reg[12]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[13]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[14]/D}] [get_pins {ded1_decodef_d0_0_q_reg[15]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[16]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[17]/D}] [get_pins {ded1_decodef_d0_0_q_reg[18]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[19]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[20]/D}] [get_pins {ded1_decodef_d0_0_q_reg[21]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[22]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[23]/D}] [get_pins {ded1_decodef_d0_0_q_reg[24]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[25]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[26]/D}] [get_pins {ded1_decodef_d0_0_q_reg[27]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[28]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[29]/D}] [get_pins {ded1_decodef_d0_0_q_reg[30]/D}]    \
[get_pins {ded1_decodef_d0_0_q_reg[31]/D}] [get_pins                           \
{ded1_decodef_d0_0_q_reg[32]/D}] [get_pins {ded1_excf_d0_0_q_reg[0]/D}]        \
[get_pins {ded1_excf_d0_0_q_reg[1]/D}] [get_pins {ded1_excf_d0_0_q_reg[2]/D}]  \
[get_pins {ded1_excf_d0_0_q_reg[3]/D}] [get_pins {ded1_excf_d0_0_q_reg[4]/D}]  \
[get_pins {ded1_isrcf_d0_0_q_reg[0]/D}] [get_pins                              \
{ded1_isrcf_d0_0_q_reg[1]/D}] [get_pins {ded1_isrcf_d0_0_q_reg[2]/D}]          \
[get_pins {ded1_twocyclef_d0_0_q_reg[0]/D}] [get_pins                          \
{ded1_twocyclef_d0_0_q_reg[1]/D}] [get_pins {ded1_twocyclef_d0_0_q_reg[2]/D}]  \
[get_pins {ded1_twocyclef_d0_0_q_reg[3]/D}] [get_pins                          \
{ded1_twocyclef_d0_0_q_reg[4]/D}] [get_pins {ded1_twocyclef_d0_0_q_reg[5]/D}]  \
[get_pins {ded1_twocyclef_d0_0_q_reg[6]/D}] [get_pins                          \
{ded1_twocyclef_d0_0_q_reg[7]/D}] [get_pins {ded1_twocyclef_d0_0_q_reg[8]/D}]  \
[get_pins {ded1_windowf_d0_0_q_reg[0]/D}] [get_pins                            \
{ded1_windowf_d0_0_q_reg[1]/D}] [get_pins {ded1_windowf_d0_0_q_reg[2]/D}]      \
[get_pins {ded1_windowf_d0_0_q_reg[3]/D}] [get_pins                            \
{ded1_oddwinf_d0_0_q_reg[0]/D}] [get_pins {ded1_oddwinf_d0_0_q_reg[1]/D}]      \
[get_pins {ded1_oddwinf_d0_0_q_reg[2]/D}] [get_pins                            \
{ded1_oddwinf_d0_0_q_reg[3]/D}] [get_pins {ded1_icdf_perr_f_d0_0_q_reg[0]/D}]  \
[get_pins ded1_clkgen_c_0_l1en_reg/D] [get_pins {ded0_legalf_d0_0_q_reg[0]/D}] \
[get_pins {ded0_ifetcherrf_d0_0_q_reg[0]/D}] [get_pins                         \
{ded0_parityerrf_d0_0_q_reg[0]/D}] [get_pins {ded0_decodef_d0_0_q_reg[0]/D}]   \
[get_pins {ded0_decodef_d0_0_q_reg[1]/D}] [get_pins                            \
{ded0_decodef_d0_0_q_reg[2]/D}] [get_pins {ded0_decodef_d0_0_q_reg[3]/D}]      \
[get_pins {ded0_decodef_d0_0_q_reg[4]/D}] [get_pins                            \
{ded0_decodef_d0_0_q_reg[5]/D}] [get_pins {ded0_decodef_d0_0_q_reg[6]/D}]      \
[get_pins {ded0_decodef_d0_0_q_reg[7]/D}] [get_pins                            \
{ded0_decodef_d0_0_q_reg[8]/D}] [get_pins {ded0_decodef_d0_0_q_reg[9]/D}]      \
[get_pins {ded0_decodef_d0_0_q_reg[10]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[11]/D}] [get_pins {ded0_decodef_d0_0_q_reg[12]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[13]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[14]/D}] [get_pins {ded0_decodef_d0_0_q_reg[15]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[16]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[17]/D}] [get_pins {ded0_decodef_d0_0_q_reg[18]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[19]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[20]/D}] [get_pins {ded0_decodef_d0_0_q_reg[21]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[22]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[23]/D}] [get_pins {ded0_decodef_d0_0_q_reg[24]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[25]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[26]/D}] [get_pins {ded0_decodef_d0_0_q_reg[27]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[28]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[29]/D}] [get_pins {ded0_decodef_d0_0_q_reg[30]/D}]    \
[get_pins {ded0_decodef_d0_0_q_reg[31]/D}] [get_pins                           \
{ded0_decodef_d0_0_q_reg[32]/D}] [get_pins {ded0_excf_d0_0_q_reg[0]/D}]        \
[get_pins {ded0_excf_d0_0_q_reg[1]/D}] [get_pins {ded0_excf_d0_0_q_reg[2]/D}]  \
[get_pins {ded0_excf_d0_0_q_reg[3]/D}] [get_pins {ded0_excf_d0_0_q_reg[4]/D}]  \
[get_pins {ded0_isrcf_d0_0_q_reg[0]/D}] [get_pins                              \
{ded0_isrcf_d0_0_q_reg[1]/D}] [get_pins {ded0_isrcf_d0_0_q_reg[2]/D}]          \
[get_pins {ded0_twocyclef_d0_0_q_reg[0]/D}] [get_pins                          \
{ded0_twocyclef_d0_0_q_reg[1]/D}] [get_pins {ded0_twocyclef_d0_0_q_reg[2]/D}]  \
[get_pins {ded0_twocyclef_d0_0_q_reg[3]/D}] [get_pins                          \
{ded0_twocyclef_d0_0_q_reg[4]/D}] [get_pins {ded0_twocyclef_d0_0_q_reg[5]/D}]  \
[get_pins {ded0_twocyclef_d0_0_q_reg[6]/D}] [get_pins                          \
{ded0_twocyclef_d0_0_q_reg[7]/D}] [get_pins {ded0_twocyclef_d0_0_q_reg[8]/D}]  \
[get_pins {ded0_windowf_d0_0_q_reg[0]/D}] [get_pins                            \
{ded0_windowf_d0_0_q_reg[1]/D}] [get_pins {ded0_windowf_d0_0_q_reg[2]/D}]      \
[get_pins {ded0_windowf_d0_0_q_reg[3]/D}] [get_pins                            \
{ded0_oddwinf_d0_0_q_reg[0]/D}] [get_pins {ded0_oddwinf_d0_0_q_reg[1]/D}]      \
[get_pins {ded0_oddwinf_d0_0_q_reg[2]/D}] [get_pins                            \
{ded0_oddwinf_d0_0_q_reg[3]/D}] [get_pins {ded0_icdf_perr_f_d0_0_q_reg[0]/D}]  \
[get_pins ded0_clkgen_c_0_l1en_reg/D] [get_pins                                \
del_power_throttle00_f_xx1_q_reg/D] [get_pins                                  \
del_power_throttle00_f_xx0_q_reg/D] [get_pins                                  \
del_power_throttle01_f_xx1_q_reg/D] [get_pins                                  \
del_power_throttle01_f_xx0_q_reg/D] [get_pins                                  \
del_power_throttle02_f_xx1_q_reg/D] [get_pins                                  \
del_power_throttle02_f_xx0_q_reg/D] [get_pins                                  \
{del_power_throttle1f_d0_0_q_reg[0]/D}] [get_pins                              \
{del_power_throttle1f_d0_0_q_reg[1]/D}] [get_pins                              \
{del_power_throttle1f_d0_0_q_reg[2]/D}] [get_pins                              \
{del_thread_activef_d0_0_q_reg[0]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[1]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[2]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[3]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[4]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[5]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[6]/D}] [get_pins                                \
{del_thread_activef_d0_0_q_reg[7]/D}] [get_pins                                \
{del_power_stall1f_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[1]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[2]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[3]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[4]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[5]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[6]/D}] [get_pins                                 \
{del_power_stall1f_d0_0_q_reg[7]/D}] [get_pins                                 \
{del_done_retry_m_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[2]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[3]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[4]/D}] [get_pins                                  \
{del_done_retry_m_d0_0_q_reg[5]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[2]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[3]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[4]/D}] [get_pins                                  \
{del_done_retry_e_d0_0_q_reg[5]/D}] [get_pins                                  \
{del_illegal_priv_m_d0_0_q_reg[0]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[1]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[2]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[3]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[4]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[5]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[6]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[7]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[8]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[9]/D}] [get_pins                                \
{del_illegal_priv_m_d0_0_q_reg[10]/D}] [get_pins                               \
{del_illegal_priv_m_d0_0_q_reg[11]/D}] [get_pins                               \
{del_flush_lexc_f_d0_0_q_reg[0]/D}] [get_pins {del_inst_m_d0_0_q_reg[0]/D}]    \
[get_pins {del_inst_m_d0_0_q_reg[1]/D}] [get_pins                              \
{del_inst_m_d0_0_q_reg[2]/D}] [get_pins {del_inst_m_d0_0_q_reg[3]/D}]          \
[get_pins {del_inst_m_d0_0_q_reg[4]/D}] [get_pins                              \
{del_inst_m_d0_0_q_reg[5]/D}] [get_pins {del_inst_m_d0_0_q_reg[6]/D}]          \
[get_pins {del_inst_m_d0_0_q_reg[7]/D}] [get_pins                              \
{del_inst_m_d0_0_q_reg[8]/D}] [get_pins {del_inst_m_d0_0_q_reg[9]/D}]          \
[get_pins {del_inst_m_d0_0_q_reg[10]/D}] [get_pins                             \
{del_inst_m_d0_0_q_reg[11]/D}] [get_pins {del_inst_m_d0_0_q_reg[12]/D}]        \
[get_pins {del_inst_m_d0_0_q_reg[13]/D}] [get_pins                             \
{del_inst_m_d0_0_q_reg[14]/D}] [get_pins {del_inst_m_d0_0_q_reg[15]/D}]        \
[get_pins {del_inst_e_d0_0_q_reg[0]/D}] [get_pins                              \
{del_inst_e_d0_0_q_reg[1]/D}] [get_pins {del_inst_e_d0_0_q_reg[2]/D}]          \
[get_pins {del_inst_e_d0_0_q_reg[3]/D}] [get_pins                              \
{del_inst_e_d0_0_q_reg[4]/D}] [get_pins {del_inst_e_d0_0_q_reg[5]/D}]          \
[get_pins {del_inst_e_d0_0_q_reg[6]/D}] [get_pins                              \
{del_inst_e_d0_0_q_reg[7]/D}] [get_pins {del_inst_e_d0_0_q_reg[8]/D}]          \
[get_pins {del_inst_e_d0_0_q_reg[9]/D}] [get_pins                              \
{del_inst_e_d0_0_q_reg[10]/D}] [get_pins {del_inst_e_d0_0_q_reg[11]/D}]        \
[get_pins {del_inst_e_d0_0_q_reg[12]/D}] [get_pins                             \
{del_inst_e_d0_0_q_reg[13]/D}] [get_pins {del_inst_e_d0_0_q_reg[14]/D}]        \
[get_pins {del_inst_e_d0_0_q_reg[15]/D}] [get_pins                             \
{del_dec_m_d0_0_q_reg[0]/D}] [get_pins {del_dec_m_d0_0_q_reg[1]/D}] [get_pins  \
{del_dec_e_d0_0_q_reg[0]/D}] [get_pins {del_dec_e_d0_0_q_reg[1]/D}] [get_pins  \
{del_tid_m_d0_0_q_reg[0]/D}] [get_pins {del_tid_m_d0_0_q_reg[1]/D}] [get_pins  \
{del_tid_m_d0_0_q_reg[2]/D}] [get_pins {del_tid_m_d0_0_q_reg[3]/D}] [get_pins  \
{del_tid_e_d0_0_q_reg[0]/D}] [get_pins {del_tid_e_d0_0_q_reg[1]/D}] [get_pins  \
{del_tid_e_d0_0_q_reg[2]/D}] [get_pins {del_tid_e_d0_0_q_reg[3]/D}] [get_pins  \
{del_annul_m_d0_0_q_reg[0]/D}] [get_pins {del_annul_m_d0_0_q_reg[1]/D}]        \
[get_pins {del_ds_m_d0_0_q_reg[0]/D}] [get_pins {del_ds_m_d0_0_q_reg[1]/D}]    \
[get_pins {del_lsurd_f_d0_0_q_reg[0]/D}] [get_pins                             \
{del_lsurd_f_d0_0_q_reg[1]/D}] [get_pins {del_lsurd_f_d0_0_q_reg[2]/D}]        \
[get_pins {del_lsurd_f_d0_0_q_reg[3]/D}] [get_pins                             \
{del_lsurd_f_d0_0_q_reg[4]/D}] [get_pins {del_sraddr_f_d0_0_q_reg[0]/D}]       \
[get_pins {del_sraddr_f_d0_0_q_reg[1]/D}] [get_pins                            \
{del_sraddr_f_d0_0_q_reg[2]/D}] [get_pins {del_sraddr_f_d0_0_q_reg[3]/D}]      \
[get_pins {del_sraddr_f_d0_0_q_reg[4]/D}] [get_pins                            \
{del_ldme_f_d0_0_q_reg[0]/D}] [get_pins {del_ldme_f_d0_0_q_reg[1]/D}]          \
[get_pins {del_ldme_f_d0_0_q_reg[2]/D}] [get_pins                              \
{del_ldme_f_d0_0_q_reg[3]/D}] [get_pins {del_ldme_f_d0_0_q_reg[4]/D}]          \
[get_pins {del_ldme_f_d0_0_q_reg[5]/D}] [get_pins                              \
{del_ldme_f_d0_0_q_reg[6]/D}] [get_pins {del_ldme_f_d0_0_q_reg[7]/D}]          \
[get_pins {del_ldme_f_d0_0_q_reg[8]/D}] [get_pins                              \
{del_ldme_f_d0_0_q_reg[9]/D}] [get_pins {del_ldme_f_d0_0_q_reg[10]/D}]         \
[get_pins {del_ldme_f_d0_0_q_reg[11]/D}] [get_pins                             \
{del_ldme_f_d0_0_q_reg[12]/D}] [get_pins {del_ldme_f_d0_0_q_reg[13]/D}]        \
[get_pins {del_ldste_f_d0_0_q_reg[0]/D}] [get_pins                             \
{del_ldste_f_d0_0_q_reg[1]/D}] [get_pins {del_ldste_f_d0_0_q_reg[2]/D}]        \
[get_pins {del_lsudec_f_d0_0_q_reg[0]/D}] [get_pins                            \
{del_lsudec_f_d0_0_q_reg[1]/D}] [get_pins {del_fgudec_f_d0_0_q_reg[0]/D}]      \
[get_pins {del_fgudec_f_d0_0_q_reg[1]/D}] [get_pins                            \
{del_truevalid_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_truevalid_f_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_ifetcherr_f_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_ifetcherr_f_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_ifetch_err_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_ifetch_err_f_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_frf_r2addre_f_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_frf_r2addre_f_d0_0_q_reg[1]/D}] [get_pins {del_tgselm_f_d0_0_q_reg[0]/D}] \
[get_pins {del_tgselm_f_d0_0_q_reg[1]/D}] [get_pins                            \
{del_exuself_d0_0_q_reg[0]/D}] [get_pins {del_exuself_d0_0_q_reg[1]/D}]        \
[get_pins {del_exuself_d0_0_q_reg[2]/D}] [get_pins                             \
{del_exuself_d0_0_q_reg[3]/D}] [get_pins {del_exuself_d0_0_q_reg[4]/D}]        \
[get_pins {del_exuself_d0_0_q_reg[5]/D}] [get_pins                             \
{del_exuself_d0_0_q_reg[6]/D}] [get_pins {del_exuself_d0_0_q_reg[7]/D}]        \
[get_pins {del_tgsel_f_d0_0_q_reg[0]/D}] [get_pins                             \
{del_tgsel_f_d0_0_q_reg[1]/D}] [get_pins {del_tgsel_f_d0_0_q_reg[2]/D}]        \
[get_pins {del_tgsel_f_d0_0_q_reg[3]/D}] [get_pins                             \
{del_exc_f_d0_0_q_reg[0]/D}] [get_pins {del_exc_f_d0_0_q_reg[1]/D}] [get_pins  \
{del_exc_f_d0_0_q_reg[2]/D}] [get_pins {del_exc_f_d0_0_q_reg[3]/D}] [get_pins  \
{del_exc_f_d0_0_q_reg[4]/D}] [get_pins {del_exc_f_d0_0_q_reg[5]/D}] [get_pins  \
{del_parity_err_f_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_parity_err_f_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_fpdisable_exc_f_d0_0_q_reg[0]/D}] [get_pins                               \
{del_fpdisable_exc_f_d0_0_q_reg[1]/D}] [get_pins                               \
{del_illegal_f_d0_0_q_reg[0]/D}] [get_pins {del_illegal_f_d0_0_q_reg[1]/D}]    \
[get_pins {del_legal_f_d0_0_q_reg[0]/D}] [get_pins                             \
{del_legal_f_d0_0_q_reg[1]/D}] [get_pins {del_exu_clkenf_d0_0_q_reg[0]/D}]     \
[get_pins {del_exu_clkenf_d0_0_q_reg[1]/D}] [get_pins                          \
{del_windowstall_df_d0_0_q_reg[0]/D}] [get_pins                                \
{del_windowstall_df_d0_0_q_reg[1]/D}] [get_pins                                \
{del_divstall_df_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_divstall_df_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_divstall_df_d0_0_q_reg[2]/D}] [get_pins                                   \
{del_inthole1_df_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_inthole1_df_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_inthole1_df_d0_0_q_reg[2]/D}] [get_pins                                   \
{del_inthole0_df_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_inthole0_df_d0_0_q_reg[1]/D}] [get_pins                                   \
{del_inthole0_df_d0_0_q_reg[2]/D}] [get_pins                                   \
{del_twocycle1_df_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_twocycle0_df_d0_0_q_reg[0]/D}] [get_pins {del_pdisttidf_d0_0_q_reg[0]/D}] \
[get_pins {del_pdisttidf_d0_0_q_reg[1]/D}] [get_pins                           \
{del_pdisttidf_d0_0_q_reg[2]/D}] [get_pins {del_pdistrdf_d0_0_q_reg[0]/D}]     \
[get_pins {del_pdistrdf_d0_0_q_reg[1]/D}] [get_pins                            \
{del_pdistrdf_d0_0_q_reg[2]/D}] [get_pins {del_pdistrdf_d0_0_q_reg[3]/D}]      \
[get_pins {del_pdistrdf_d0_0_q_reg[4]/D}] [get_pins                            \
{del_pdistblockf_d0_0_q_reg[0]/D}] [get_pins                                   \
{del_pdistblockf_d0_0_q_reg[1]/D}] [get_pins {del_cmfavorf_d0_0_q_reg[0]/D}]   \
[get_pins {del_mulrequestf_d0_0_q_reg[0]/D}] [get_pins                         \
{del_sffavorf_d0_0_q_reg[0]/D}] [get_pins {del_ffavorf_d0_0_q_reg[0]/D}]       \
[get_pins {del_lfavorf_d0_0_q_reg[0]/D}] [get_pins                             \
{del_block_store_b_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_block_store_b_d0_0_q_reg[1]/D}] [get_pins                                 \
{del_block_store_b_d0_0_q_reg[2]/D}] [get_pins                                 \
{del_block_store_b_d0_0_q_reg[3]/D}] [get_pins                                 \
{del_block_store_m_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_block_store_m_d0_0_q_reg[1]/D}] [get_pins                                 \
{del_block_store_m_d0_0_q_reg[2]/D}] [get_pins                                 \
{del_block_store_m_d0_0_q_reg[3]/D}] [get_pins                                 \
{del_block_store_e_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_block_store_e_d0_0_q_reg[1]/D}] [get_pins                                 \
{del_block_store_e_d0_0_q_reg[2]/D}] [get_pins                                 \
{del_block_store_e_d0_0_q_reg[3]/D}] [get_pins                                 \
{del_block_resetf_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_block_resetf_d0_0_q_reg[1]/D}] [get_pins                                  \
{del_block_resetf_d0_0_q_reg[2]/D}] [get_pins                                  \
{del_fecc_stallf_d0_0_q_reg[0]/D}] [get_pins {del_cpq_stallf_d0_0_q_reg[0]/D}] \
[get_pins {del_block_store_tidf_d0_0_q_reg[0]/D}] [get_pins                    \
{del_block_store_tidf_d0_0_q_reg[1]/D}] [get_pins                              \
{del_block_store_tidf_d0_0_q_reg[2]/D}] [get_pins                              \
{del_block_store_rdlof_d0_0_q_reg[0]/D}] [get_pins                             \
{del_block_store_rdlof_d0_0_q_reg[1]/D}] [get_pins                             \
{del_block_store_rdlof_d0_0_q_reg[2]/D}] [get_pins                             \
{del_block_store_rdhif_d0_0_q_reg[0]/D}] [get_pins                             \
{del_block_store_rdhif_d0_0_q_reg[1]/D}] [get_pins                             \
{del_block_storef_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_block_store0f_d0_0_q_reg[0]/D}] [get_pins                                 \
{del_dtlb_reloadf_d0_0_q_reg[0]/D}] [get_pins                                  \
{del_dtlb_reloadf_d0_0_q_reg[1]/D}] [get_pins {del_valid_df_d0_0_q_reg[0]/D}]  \
[get_pins {del_valid_df_d0_0_q_reg[1]/D}] [get_pins                            \
{del_val_df_d0_0_q_reg[0]/D}] [get_pins {del_val_df_d0_0_q_reg[1]/D}]          \
[get_pins {del_val_df_d0_0_q_reg[2]/D}] [get_pins                              \
{del_val_df_d0_0_q_reg[3]/D}] [get_pins {del_val_df_d0_0_q_reg[4]/D}]          \
[get_pins {del_val_df_d0_0_q_reg[5]/D}] [get_pins                              \
{del_val_df_d0_0_q_reg[6]/D}] [get_pins {del_val_df_d0_0_q_reg[7]/D}]          \
[get_pins {del_teststallf_d0_0_q_reg[0]/D}] [get_pins                          \
{del_teststallf_d0_0_q_reg[1]/D}] [get_pins {del_exutestf_d0_0_q_reg[0]/D}]    \
[get_pins {del_exutestf_d0_0_q_reg[1]/D}] [get_pins                            \
{del_exutestf_d0_0_q_reg[2]/D}] [get_pins {del_exutestf_d0_0_q_reg[3]/D}]      \
[get_pins {del_exutestf_d0_0_q_reg[4]/D}] [get_pins                            \
{del_exutestf_d0_0_q_reg[5]/D}] [get_pins {del_exutestf_d0_0_q_reg[6]/D}]      \
[get_pins {del_exutestf_d0_0_q_reg[7]/D}] [get_pins                            \
{del_exutestf_d0_0_q_reg[8]/D}] [get_pins {del_exutestf_d0_0_q_reg[9]/D}]      \
[get_pins {del_exutestf_d0_0_q_reg[10]/D}] [get_pins                           \
{del_exutestf_d0_0_q_reg[11]/D}] [get_pins {del_exutestf_d0_0_q_reg[12]/D}]    \
[get_pins {del_exutestf_d0_0_q_reg[13]/D}] [get_pins                           \
{del_exutestf_d0_0_q_reg[14]/D}] [get_pins {del_exutestf_d0_0_q_reg[15]/D}]    \
[get_pins {del_instcntf_d0_0_q_reg[0]/D}] [get_pins                            \
{del_instcntf_d0_0_q_reg[1]/D}] [get_pins {del_instcntf_d0_0_q_reg[2]/D}]      \
[get_pins {del_instcntf_d0_0_q_reg[3]/D}] [get_pins {del_fef_d0_0_q_reg[0]/D}] \
[get_pins {del_fef_d0_0_q_reg[1]/D}] [get_pins {del_fef_d0_0_q_reg[2]/D}]      \
[get_pins {del_fef_d0_0_q_reg[3]/D}] [get_pins {del_fef_d0_0_q_reg[4]/D}]      \
[get_pins {del_fef_d0_0_q_reg[5]/D}] [get_pins {del_fef_d0_0_q_reg[6]/D}]      \
[get_pins {del_fef_d0_0_q_reg[7]/D}] [get_pins {del_fef_d0_0_q_reg[8]/D}]      \
[get_pins {del_fef_d0_0_q_reg[9]/D}] [get_pins {del_fef_d0_0_q_reg[10]/D}]     \
[get_pins {del_fef_d0_0_q_reg[11]/D}] [get_pins {del_fef_d0_0_q_reg[12]/D}]    \
[get_pins {del_fef_d0_0_q_reg[13]/D}] [get_pins {del_fef_d0_0_q_reg[14]/D}]    \
[get_pins {del_fef_d0_0_q_reg[15]/D}] [get_pins                                \
{del_privstatef_d0_0_q_reg[0]/D}] [get_pins {del_privstatef_d0_0_q_reg[1]/D}]  \
[get_pins {del_privstatef_d0_0_q_reg[2]/D}] [get_pins                          \
{del_privstatef_d0_0_q_reg[3]/D}] [get_pins {del_privstatef_d0_0_q_reg[4]/D}]  \
[get_pins {del_privstatef_d0_0_q_reg[5]/D}] [get_pins                          \
{del_privstatef_d0_0_q_reg[6]/D}] [get_pins {del_privstatef_d0_0_q_reg[7]/D}]  \
[get_pins {del_privstatef_d0_0_q_reg[8]/D}] [get_pins                          \
{del_privstatef_d0_0_q_reg[9]/D}] [get_pins {del_privstatef_d0_0_q_reg[10]/D}] \
[get_pins {del_privstatef_d0_0_q_reg[11]/D}] [get_pins                         \
{del_privstatef_d0_0_q_reg[12]/D}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[13]/D}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[14]/D}] [get_pins                                   \
{del_privstatef_d0_0_q_reg[15]/D}] [get_pins {del_pick1f_d0_0_q_reg[0]/D}]     \
[get_pins {del_pick1f_d0_0_q_reg[1]/D}] [get_pins                              \
{del_pick1f_d0_0_q_reg[2]/D}] [get_pins {del_pick1f_d0_0_q_reg[3]/D}]          \
[get_pins {del_pick0f_d0_0_q_reg[0]/D}] [get_pins                              \
{del_pick0f_d0_0_q_reg[1]/D}] [get_pins {del_pick0f_d0_0_q_reg[2]/D}]          \
[get_pins {del_pick0f_d0_0_q_reg[3]/D}] [get_pins                              \
{del_pdecode1f_d0_0_q_reg[0]/D}] [get_pins {del_pdecode1f_d0_0_q_reg[1]/D}]    \
[get_pins {del_pdecode1f_d0_0_q_reg[2]/D}] [get_pins                           \
{del_pdecode1f_d0_0_q_reg[3]/D}] [get_pins {del_pdecode1f_d0_0_q_reg[4]/D}]    \
[get_pins {del_pdecode1f_d0_0_q_reg[5]/D}] [get_pins                           \
{del_pdecode1f_d0_0_q_reg[6]/D}] [get_pins {del_pdecode0f_d0_0_q_reg[0]/D}]    \
[get_pins {del_pdecode0f_d0_0_q_reg[1]/D}] [get_pins                           \
{del_pdecode0f_d0_0_q_reg[2]/D}] [get_pins {del_pdecode0f_d0_0_q_reg[3]/D}]    \
[get_pins {del_pdecode0f_d0_0_q_reg[4]/D}] [get_pins                           \
{del_pdecode0f_d0_0_q_reg[5]/D}] [get_pins {del_pdecode0f_d0_0_q_reg[6]/D}]    \
[get_pins {del_spare_5_0_lat_d0_0_q_reg[0]/D}] [get_pins                       \
{del_spare_5_0_lat_d0_0_q_reg[2]/D}] [get_pins del_clkgen_c_0_l1en_reg/D]]
set_input_delay -clock l2clk  0.15  [get_ports l2clk]
set_input_delay -clock l2clk  0.15  [get_ports scan_in]
set_input_delay -clock l2clk  0.15  [get_ports tcu_pce_ov]
set_input_delay -clock l2clk  0.15  [get_ports spc_aclk]
set_input_delay -clock l2clk  0.15  [get_ports spc_bclk]
set_input_delay -clock l2clk  0.15  [get_ports tcu_scan_en]
set_input_delay -clock l2clk  0.15  [get_ports {power_throttle[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {power_throttle[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {power_throttle[0]}]
set_input_delay -clock l2clk  0.15  [get_ports lb_lbist_running]
set_input_delay -clock l2clk  0.15  [get_ports lsu_dec_pmen]
set_input_delay -clock l2clk  0.15  [get_ports lsu_exu_pmen]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {spc_core_running_status[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_tid0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_tid0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports exu_test_valid0]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_tid1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_tid1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu_test_addr1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports exu_test_valid1]
set_input_delay -clock l2clk  0.15  [get_ports tlu_cerer_icdp]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_pef[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_pef[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_pef[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_pef[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_pef[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_pef[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_pef[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_pef[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_fprs_fef[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_fprs_fef[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_fprs_fef[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_fprs_fef[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_fprs_fef[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_fprs_fef[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_fprs_fef[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_fprs_fef[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_hpstate_hpriv[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_hpstate_hpriv[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_hpstate_hpriv[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_hpstate_hpriv[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_hpstate_hpriv[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_hpstate_hpriv[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_hpstate_hpriv[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_hpstate_hpriv[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_priv[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_priv[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_priv[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_priv[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_priv[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_priv[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_priv[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_dec_pstate_priv[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pstate_am[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pstate_am[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pstate_am[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pstate_am[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pstate_am[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pstate_am[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pstate_am[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pstate_am[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_window_block[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_window_block[0]}]
set_input_delay -clock l2clk  0.15  [get_ports exu0_window_block]
set_input_delay -clock l2clk  0.15  [get_ports exu1_window_block]
set_input_delay -clock l2clk  0.15  [get_ports lsu_cpq_stall]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst0[32]}]
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
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst1[32]}]
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
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst2[32]}]
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
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst3[32]}]
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
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst4[32]}]
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
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst5[32]}]
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
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst6[32]}]
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
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_inst7[32]}]
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
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp0[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp0[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp0[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp0[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp0[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp3[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp3[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp3[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp3[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp3[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp4[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp4[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp4[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp4[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp4[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp5[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp5[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp5[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp5[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp5[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp6[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp6[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp6[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp6[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp6[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp7[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp7[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp7[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp7[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {ifu_buf0_excp7[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_ifu[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_load_flush_w[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_load_flush_w[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_load_flush_w[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_load_flush_w[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_load_flush_w[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_load_flush_w[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_load_flush_w[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_load_flush_w[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken00[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken00[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken01[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken01[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken02[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken02[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken03[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken03[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken04[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken04[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken05[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken05[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken06[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken06[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken07[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken07[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken10[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken10[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken11[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken11[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken12[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken12[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken13[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken13[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken14[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken14[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken15[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken15[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken16[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken16[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken17[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_inst_cnt_brtaken17[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_base_pick_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_base_pick_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_base_pick_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_base_pick_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_base_pick_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_base_pick_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_base_pick_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_base_pick_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_raw_pick0_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_raw_pick0_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_raw_pick0_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_raw_pick0_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_raw_pick1_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_raw_pick1_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_raw_pick1_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_raw_pick1_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken0_e[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken0_e[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken0_e[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken0_e[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken0_e[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken0_e[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken0_e[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken0_e[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken1_e[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken1_e[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken1_e[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken1_e[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken1_e[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken1_e[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken1_e[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_annul_ds_dcti_brtaken1_e[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_valid_e[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_valid_e[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_valid_e[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_valid_e[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_valid_e[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_valid_e[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_valid_e[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_valid_e[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_ds_e[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_ds_e[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_ds_e[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_ds_e[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_ds_e[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_ds_e[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_ds_e[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_ds_e[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_lsu_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_lsu_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_lsu_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_lsu_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_lsu_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_lsu_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_lsu_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_lsu_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fgu_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fgu_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fgu_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fgu_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fgu_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fgu_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fgu_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fgu_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pdist_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pdist_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pdist_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pdist_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pdist_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pdist_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pdist_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_pdist_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_twocycle_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_twocycle_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_twocycle_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_twocycle_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_twocycle_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_twocycle_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_twocycle_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_twocycle_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_idest_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_idest_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_idest_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_idest_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_idest_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_idest_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_idest_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_idest_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fdest_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fdest_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fdest_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fdest_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fdest_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fdest_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fdest_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fdest_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fsrc_rd_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fsrc_rd_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fsrc_rd_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fsrc_rd_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fsrc_rd_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fsrc_rd_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fsrc_rd_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_fsrc_rd_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs1_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs1_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs1_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs1_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs1_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs1_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs1_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs1_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs2_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs2_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs2_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs2_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs2_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs2_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs2_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rs2_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rd_p[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rd_p[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rd_p[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rd_p[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rd_p[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rd_p[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rd_p[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_isrc_rd_p[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f1[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f1[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f1[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f1[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f1[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f1[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f1[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f2[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f2[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f2[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f2[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f2[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f2[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f2[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_f2[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lm[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lm[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lm[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lm[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lm[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lm[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lm[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lm[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lb[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lb[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lb[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lb[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lb[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lb[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lb[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_lb[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_m[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_m[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_m[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_m[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_m[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_m[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_m[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_m[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_b[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_b[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_b[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_b[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_b[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_b[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_b[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {pku_flush_b[0]}]
set_input_delay -clock l2clk  0.15  [get_ports spu_mult_request]
set_input_delay -clock l2clk  0.15  [get_ports lsu_block_store_stall]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_rd[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_rd[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_tid[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_tid[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_block_store_tid[0]}]
set_input_delay -clock l2clk  0.15  [get_ports tlu_dtlb_reload_stall]
set_input_delay -clock l2clk  0.15  [get_ports fgu_ecc_asi_stall]
set_input_delay -clock l2clk  0.15  [get_ports {exu0_oddwin_b[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu0_oddwin_b[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu0_oddwin_b[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu0_oddwin_b[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu1_oddwin_b[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu1_oddwin_b[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu1_oddwin_b[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {exu1_oddwin_b[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_idiv_stall[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {fgu_idiv_stall[0]}]
set_input_delay -clock l2clk  0.15  [get_ports fgu_fdiv_stall]
set_input_delay -clock l2clk  0.15  [get_ports {dec_br_taken_e1[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_br_taken_e1[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {del_pick_d[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {del_pick_d[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {del_pick_d[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {del_pick_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {del_pick_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {del_pick_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {del_pick_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {del_pick_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rd_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rd_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rd_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rd_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rd_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rd_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rd_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rd_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rd_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rd_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_rs1_addr0_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_rs1_addr1_e]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_decode0_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_decode1_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_valid0_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_valid1_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_true_valid_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_true_valid_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid0_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid0_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid1_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid1_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid0_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid0_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid1_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid1_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_raw_pick_p[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_raw_pick_p[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_raw_pick_p[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_raw_pick_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_raw_pick_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_raw_pick_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_raw_pick_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_raw_pick_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs1_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs1_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs1_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs1_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs1_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs2_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs2_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs2_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs2_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs2_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs3_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs3_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs3_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs3_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_rs3_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_inst0_rs1_vld_p]
set_output_delay -clock l2clk  0.2  [get_ports dec_inst0_rs2_vld_p]
set_output_delay -clock l2clk  0.2  [get_ports dec_inst0_rs3_vld_p]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs1_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs1_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs1_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs1_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs1_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs2_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs2_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs2_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs2_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs2_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs3_p[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs3_p[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs3_p[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs3_p[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_rs3_p[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_inst1_rs1_vld_p]
set_output_delay -clock l2clk  0.2  [get_ports dec_inst1_rs2_vld_p]
set_output_delay -clock l2clk  0.2  [get_ports dec_inst1_rs3_vld_p]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r1_addr_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r1_addr_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r1_addr_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r1_addr_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r1_addr_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r2_addr_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r2_addr_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r2_addr_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r2_addr_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r2_addr_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_r1_vld_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_r2_vld_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_r1_32b_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_r2_32b_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_r1_odd32b_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_r2_odd32b_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_w_addr_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_w_addr_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_w_addr_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_w_addr_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_w_addr_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_w_vld_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_w_32b_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_w_odd32b_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_exu_src_vld_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_irf_w_addr_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_irf_w_addr_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_irf_w_addr_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_irf_w_addr_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_irf_w_addr_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_frf_store_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_fsr_store_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_op3_d[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_op3_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_op3_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_op3_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_op3_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_op3_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_opf_d[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_opf_d[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_opf_d[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_opf_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_opf_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_opf_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_opf_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_opf_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_fgu_decode_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_tid_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_tid_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_tid_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_flush_f1]
set_output_delay -clock l2clk  0.2  [get_ports dec_flush_f2]
set_output_delay -clock l2clk  0.2  [get_ports dec_flush_lm]
set_output_delay -clock l2clk  0.2  [get_ports dec_flush_lb]
set_output_delay -clock l2clk  0.2  [get_ports {dec_flush_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_flush_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_flush_b[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_flush_b[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_spu_grant_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_spu_grant_fgu_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_b[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_b[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_b[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_b[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_b[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_b[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_b[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_b[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_load_flush_w[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_load_flush_w[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc0_m[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc0_m[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc0_m[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc0_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc0_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc1_m[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc1_m[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc1_m[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc1_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exc1_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_cnt[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst0_cnt[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_cnt[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst1_cnt[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid0_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid0_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid1_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_tid1_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst_valid_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_inst_valid_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_inst_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_inst_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_inst_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_inst_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_cti_inst_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_cti_inst_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_illegal_inst_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_illegal_inst_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_icache_perr_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_icache_perr_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_priv_exc_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_priv_exc_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_hpriv_exc_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_hpriv_exc_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fpdisable_exc_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fpdisable_exc_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_br_taken_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_br_taken_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_done_inst_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_done_inst_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_retry_inst_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_retry_inst_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_sir_inst_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_sir_inst_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_annul_ds_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_annul_ds_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_ds_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_ds_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_sel_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_sel_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_sel_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_fgu_sel_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_lsu_sel0_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_lsu_sel1_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_lsu_sel0_lower_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_lsu_sel1_lower_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_lsu_sel0_upper_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_lsu_sel1_upper_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_rs1_addr0_upper_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_rs1_addr1_upper_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_ld_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_st_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_fsr_ldst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_fpldst_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_ldst_dbl_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_pref_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_flush_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_memstbar_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports {dec_ldst_sz_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_ldst_sz_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r2_addr_e[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_frf_r2_addr_e[3]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_sr_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_pr_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_hpr_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_casa_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_ldstub_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_swap_inst_e]
set_output_delay -clock l2clk  0.2  [get_ports dec_altspace_d]
set_output_delay -clock l2clk  0.2  [get_ports dec_sign_ext_e]
set_output_delay -clock l2clk  0.2  [get_ports {dec_sraddr_e[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_sraddr_e[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_sraddr_e[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_sraddr_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_sraddr_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_imm_asi_vld_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_imm_asi_d[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_imm_asi_d[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_imm_asi_d[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_imm_asi_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_imm_asi_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_imm_asi_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_imm_asi_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_imm_asi_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_tid0_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_tid0_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_tid1_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_tid1_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_lsu_tg_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_rd_e[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_rd_e[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_rd_e[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_rd_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_lsu_rd_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_ld_inst_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr0_type_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_instr1_type_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_valid_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_valid_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_pmu_valid_e[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_pmu_valid_e[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_fgu_valid_e]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exu_clken[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_exu_clken[0]}]
set_output_delay -clock l2clk  0.2  [get_ports dec_lsu_sel0_d]
set_output_delay -clock l2clk  0.2  [get_ports {dec_ierr_d[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_ierr_d[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_stall[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_stall[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_stall[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_stall[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_stall[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_stall[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_stall[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {dec_block_store_stall[0]}]
set_output_delay -clock l2clk  0.2  [get_ports scan_out]
