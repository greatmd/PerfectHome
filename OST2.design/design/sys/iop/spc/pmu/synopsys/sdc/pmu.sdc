###################################################################

# Created by write_sdc on Sun Jan 12 16:18:57 2014

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports l2clk]  -period 0.714286  -waveform {0 0.357143}
set_clock_uncertainty 0  [get_clocks l2clk]
set_clock_transition -min -fall 0.05 [get_clocks l2clk]
set_clock_transition -min -rise 0.05 [get_clocks l2clk]
set_clock_transition -max -fall 0.05 [get_clocks l2clk]
set_clock_transition -max -rise 0.05 [get_clocks l2clk]
group_path -name in2out  -from [list [get_ports {in_rngl_cdbus[64]}] [get_ports {in_rngl_cdbus[63]}]   \
[get_ports {in_rngl_cdbus[62]}] [get_ports {in_rngl_cdbus[61]}] [get_ports     \
{in_rngl_cdbus[60]}] [get_ports {in_rngl_cdbus[59]}] [get_ports                \
{in_rngl_cdbus[58]}] [get_ports {in_rngl_cdbus[57]}] [get_ports                \
{in_rngl_cdbus[56]}] [get_ports {in_rngl_cdbus[55]}] [get_ports                \
{in_rngl_cdbus[54]}] [get_ports {in_rngl_cdbus[53]}] [get_ports                \
{in_rngl_cdbus[52]}] [get_ports {in_rngl_cdbus[51]}] [get_ports                \
{in_rngl_cdbus[50]}] [get_ports {in_rngl_cdbus[49]}] [get_ports                \
{in_rngl_cdbus[48]}] [get_ports {in_rngl_cdbus[47]}] [get_ports                \
{in_rngl_cdbus[46]}] [get_ports {in_rngl_cdbus[45]}] [get_ports                \
{in_rngl_cdbus[44]}] [get_ports {in_rngl_cdbus[43]}] [get_ports                \
{in_rngl_cdbus[42]}] [get_ports {in_rngl_cdbus[41]}] [get_ports                \
{in_rngl_cdbus[40]}] [get_ports {in_rngl_cdbus[39]}] [get_ports                \
{in_rngl_cdbus[38]}] [get_ports {in_rngl_cdbus[37]}] [get_ports                \
{in_rngl_cdbus[36]}] [get_ports {in_rngl_cdbus[35]}] [get_ports                \
{in_rngl_cdbus[34]}] [get_ports {in_rngl_cdbus[33]}] [get_ports                \
{in_rngl_cdbus[32]}] [get_ports {in_rngl_cdbus[31]}] [get_ports                \
{in_rngl_cdbus[30]}] [get_ports {in_rngl_cdbus[29]}] [get_ports                \
{in_rngl_cdbus[28]}] [get_ports {in_rngl_cdbus[27]}] [get_ports                \
{in_rngl_cdbus[26]}] [get_ports {in_rngl_cdbus[25]}] [get_ports                \
{in_rngl_cdbus[24]}] [get_ports {in_rngl_cdbus[23]}] [get_ports                \
{in_rngl_cdbus[22]}] [get_ports {in_rngl_cdbus[21]}] [get_ports                \
{in_rngl_cdbus[20]}] [get_ports {in_rngl_cdbus[19]}] [get_ports                \
{in_rngl_cdbus[18]}] [get_ports {in_rngl_cdbus[17]}] [get_ports                \
{in_rngl_cdbus[16]}] [get_ports {in_rngl_cdbus[15]}] [get_ports                \
{in_rngl_cdbus[14]}] [get_ports {in_rngl_cdbus[13]}] [get_ports                \
{in_rngl_cdbus[12]}] [get_ports {in_rngl_cdbus[11]}] [get_ports                \
{in_rngl_cdbus[10]}] [get_ports {in_rngl_cdbus[9]}] [get_ports                 \
{in_rngl_cdbus[8]}] [get_ports {in_rngl_cdbus[7]}] [get_ports                  \
{in_rngl_cdbus[6]}] [get_ports {in_rngl_cdbus[5]}] [get_ports                  \
{in_rngl_cdbus[4]}] [get_ports {in_rngl_cdbus[3]}] [get_ports                  \
{in_rngl_cdbus[2]}] [get_ports {in_rngl_cdbus[1]}] [get_ports                  \
{in_rngl_cdbus[0]}] [get_clocks l2clk] [get_ports scan_in] [get_ports          \
tcu_pce_ov] [get_ports spc_bclk] [get_ports spc_aclk] [get_ports tcu_scan_en]  \
[get_ports lsu_pmu_pmen] [get_ports lsu_asi_clken] [get_ports                  \
{dec_pmu_instr0_type_d[12]}] [get_ports {dec_pmu_instr0_type_d[11]}]           \
[get_ports {dec_pmu_instr0_type_d[10]}] [get_ports {dec_pmu_instr0_type_d[9]}] \
[get_ports {dec_pmu_instr0_type_d[8]}] [get_ports {dec_pmu_instr0_type_d[7]}]  \
[get_ports {dec_pmu_instr0_type_d[6]}] [get_ports {dec_pmu_instr0_type_d[5]}]  \
[get_ports {dec_pmu_instr0_type_d[4]}] [get_ports {dec_pmu_instr0_type_d[3]}]  \
[get_ports {dec_pmu_instr0_type_d[2]}] [get_ports {dec_pmu_instr0_type_d[1]}]  \
[get_ports {dec_pmu_instr0_type_d[0]}] [get_ports {dec_pmu_instr1_type_d[12]}] \
[get_ports {dec_pmu_instr1_type_d[11]}] [get_ports                             \
{dec_pmu_instr1_type_d[10]}] [get_ports {dec_pmu_instr1_type_d[9]}] [get_ports \
{dec_pmu_instr1_type_d[8]}] [get_ports {dec_pmu_instr1_type_d[7]}] [get_ports  \
{dec_pmu_instr1_type_d[6]}] [get_ports {dec_pmu_instr1_type_d[5]}] [get_ports  \
{dec_pmu_instr1_type_d[4]}] [get_ports {dec_pmu_instr1_type_d[3]}] [get_ports  \
{dec_pmu_instr1_type_d[2]}] [get_ports {dec_pmu_instr1_type_d[1]}] [get_ports  \
{dec_pmu_instr1_type_d[0]}] [get_ports {lsu_pmu_mem_type_b[5]}] [get_ports     \
{lsu_pmu_mem_type_b[4]}] [get_ports {lsu_pmu_mem_type_b[3]}] [get_ports        \
{lsu_pmu_mem_type_b[2]}] [get_ports {lsu_pmu_mem_type_b[1]}] [get_ports        \
{lsu_pmu_mem_type_b[0]}] [get_ports {dec_br_taken_e[1]}] [get_ports            \
{dec_br_taken_e[0]}] [get_ports dec_lsu_sel0_d] [get_ports mmu_pmu_l2ret]      \
[get_ports mmu_pmu_l2miss] [get_ports mmu_pmu_dtlb] [get_ports                 \
{mmu_pmu_tid[2]}] [get_ports {mmu_pmu_tid[1]}] [get_ports {mmu_pmu_tid[0]}]    \
[get_ports {l15_pmu_xbar_optype[6]}] [get_ports {l15_pmu_xbar_optype[5]}]      \
[get_ports {l15_pmu_xbar_optype[4]}] [get_ports {l15_pmu_xbar_optype[3]}]      \
[get_ports {l15_pmu_xbar_optype[2]}] [get_ports {l15_pmu_xbar_optype[1]}]      \
[get_ports {l15_pmu_xbar_optype[0]}] [get_ports {spu_pmu_cwq_busy[4]}]         \
[get_ports {spu_pmu_cwq_busy[3]}] [get_ports {spu_pmu_cwq_busy[2]}] [get_ports \
{spu_pmu_cwq_busy[1]}] [get_ports {spu_pmu_cwq_busy[0]}] [get_ports            \
{spu_pmu_cwq_tid[2]}] [get_ports {spu_pmu_cwq_tid[1]}] [get_ports              \
{spu_pmu_cwq_tid[0]}] [get_ports {spu_pmu_ma_busy[3]}] [get_ports              \
{spu_pmu_ma_busy[2]}] [get_ports {spu_pmu_ma_busy[1]}] [get_ports              \
{spu_pmu_ma_busy[0]}] [get_ports {tlu_pmu_pstate_priv[7]}] [get_ports          \
{tlu_pmu_pstate_priv[6]}] [get_ports {tlu_pmu_pstate_priv[5]}] [get_ports      \
{tlu_pmu_pstate_priv[4]}] [get_ports {tlu_pmu_pstate_priv[3]}] [get_ports      \
{tlu_pmu_pstate_priv[2]}] [get_ports {tlu_pmu_pstate_priv[1]}] [get_ports      \
{tlu_pmu_pstate_priv[0]}] [get_ports {tlu_pmu_hpstate_hpriv[7]}] [get_ports    \
{tlu_pmu_hpstate_hpriv[6]}] [get_ports {tlu_pmu_hpstate_hpriv[5]}] [get_ports  \
{tlu_pmu_hpstate_hpriv[4]}] [get_ports {tlu_pmu_hpstate_hpriv[3]}] [get_ports  \
{tlu_pmu_hpstate_hpriv[2]}] [get_ports {tlu_pmu_hpstate_hpriv[1]}] [get_ports  \
{tlu_pmu_hpstate_hpriv[0]}] [get_ports {tlu_pmu_trap_taken[7]}] [get_ports     \
{tlu_pmu_trap_taken[6]}] [get_ports {tlu_pmu_trap_taken[5]}] [get_ports        \
{tlu_pmu_trap_taken[4]}] [get_ports {tlu_pmu_trap_taken[3]}] [get_ports        \
{tlu_pmu_trap_taken[2]}] [get_ports {tlu_pmu_trap_taken[1]}] [get_ports        \
{tlu_pmu_trap_taken[0]}] [get_ports {tlu_pmu_trap_mask_e[1]}] [get_ports       \
{tlu_pmu_trap_mask_e[0]}] [get_ports {dec_valid_e[1]}] [get_ports              \
{dec_valid_e[0]}] [get_ports {dec_flush_m[1]}] [get_ports {dec_flush_m[0]}]    \
[get_ports {dec_flush_b[1]}] [get_ports {dec_flush_b[0]}] [get_ports           \
{tlu_flush_pmu_b[1]}] [get_ports {tlu_flush_pmu_b[0]}] [get_ports              \
{tlu_flush_pmu_w[1]}] [get_ports {tlu_flush_pmu_w[0]}]]  -to [list [get_ports scan_out] [get_ports {pmu_rngl_cdbus[64]}] [get_ports    \
{pmu_rngl_cdbus[63]}] [get_ports {pmu_rngl_cdbus[62]}] [get_ports              \
{pmu_rngl_cdbus[61]}] [get_ports {pmu_rngl_cdbus[60]}] [get_ports              \
{pmu_rngl_cdbus[59]}] [get_ports {pmu_rngl_cdbus[58]}] [get_ports              \
{pmu_rngl_cdbus[57]}] [get_ports {pmu_rngl_cdbus[56]}] [get_ports              \
{pmu_rngl_cdbus[55]}] [get_ports {pmu_rngl_cdbus[54]}] [get_ports              \
{pmu_rngl_cdbus[53]}] [get_ports {pmu_rngl_cdbus[52]}] [get_ports              \
{pmu_rngl_cdbus[51]}] [get_ports {pmu_rngl_cdbus[50]}] [get_ports              \
{pmu_rngl_cdbus[49]}] [get_ports {pmu_rngl_cdbus[48]}] [get_ports              \
{pmu_rngl_cdbus[47]}] [get_ports {pmu_rngl_cdbus[46]}] [get_ports              \
{pmu_rngl_cdbus[45]}] [get_ports {pmu_rngl_cdbus[44]}] [get_ports              \
{pmu_rngl_cdbus[43]}] [get_ports {pmu_rngl_cdbus[42]}] [get_ports              \
{pmu_rngl_cdbus[41]}] [get_ports {pmu_rngl_cdbus[40]}] [get_ports              \
{pmu_rngl_cdbus[39]}] [get_ports {pmu_rngl_cdbus[38]}] [get_ports              \
{pmu_rngl_cdbus[37]}] [get_ports {pmu_rngl_cdbus[36]}] [get_ports              \
{pmu_rngl_cdbus[35]}] [get_ports {pmu_rngl_cdbus[34]}] [get_ports              \
{pmu_rngl_cdbus[33]}] [get_ports {pmu_rngl_cdbus[32]}] [get_ports              \
{pmu_rngl_cdbus[31]}] [get_ports {pmu_rngl_cdbus[30]}] [get_ports              \
{pmu_rngl_cdbus[29]}] [get_ports {pmu_rngl_cdbus[28]}] [get_ports              \
{pmu_rngl_cdbus[27]}] [get_ports {pmu_rngl_cdbus[26]}] [get_ports              \
{pmu_rngl_cdbus[25]}] [get_ports {pmu_rngl_cdbus[24]}] [get_ports              \
{pmu_rngl_cdbus[23]}] [get_ports {pmu_rngl_cdbus[22]}] [get_ports              \
{pmu_rngl_cdbus[21]}] [get_ports {pmu_rngl_cdbus[20]}] [get_ports              \
{pmu_rngl_cdbus[19]}] [get_ports {pmu_rngl_cdbus[18]}] [get_ports              \
{pmu_rngl_cdbus[17]}] [get_ports {pmu_rngl_cdbus[16]}] [get_ports              \
{pmu_rngl_cdbus[15]}] [get_ports {pmu_rngl_cdbus[14]}] [get_ports              \
{pmu_rngl_cdbus[13]}] [get_ports {pmu_rngl_cdbus[12]}] [get_ports              \
{pmu_rngl_cdbus[11]}] [get_ports {pmu_rngl_cdbus[10]}] [get_ports              \
{pmu_rngl_cdbus[9]}] [get_ports {pmu_rngl_cdbus[8]}] [get_ports                \
{pmu_rngl_cdbus[7]}] [get_ports {pmu_rngl_cdbus[6]}] [get_ports                \
{pmu_rngl_cdbus[5]}] [get_ports {pmu_rngl_cdbus[4]}] [get_ports                \
{pmu_rngl_cdbus[3]}] [get_ports {pmu_rngl_cdbus[2]}] [get_ports                \
{pmu_rngl_cdbus[1]}] [get_ports {pmu_rngl_cdbus[0]}] [get_ports                \
{pmu_tlu_trap_m[7]}] [get_ports {pmu_tlu_trap_m[6]}] [get_ports                \
{pmu_tlu_trap_m[5]}] [get_ports {pmu_tlu_trap_m[4]}] [get_ports                \
{pmu_tlu_trap_m[3]}] [get_ports {pmu_tlu_trap_m[2]}] [get_ports                \
{pmu_tlu_trap_m[1]}] [get_ports {pmu_tlu_trap_m[0]}] [get_ports                \
{pmu_tlu_debug_event[7]}] [get_ports {pmu_tlu_debug_event[6]}] [get_ports      \
{pmu_tlu_debug_event[5]}] [get_ports {pmu_tlu_debug_event[4]}] [get_ports      \
{pmu_tlu_debug_event[3]}] [get_ports {pmu_tlu_debug_event[2]}] [get_ports      \
{pmu_tlu_debug_event[1]}] [get_ports {pmu_tlu_debug_event[0]}] [get_ports      \
pmu_lsu_dcmiss_trap_m] [get_ports pmu_lsu_dtmiss_trap_m] [get_ports            \
{pmu_lsu_l2dmiss_trap_m[7]}] [get_ports {pmu_lsu_l2dmiss_trap_m[6]}]           \
[get_ports {pmu_lsu_l2dmiss_trap_m[5]}] [get_ports                             \
{pmu_lsu_l2dmiss_trap_m[4]}] [get_ports {pmu_lsu_l2dmiss_trap_m[3]}]           \
[get_ports {pmu_lsu_l2dmiss_trap_m[2]}] [get_ports                             \
{pmu_lsu_l2dmiss_trap_m[1]}] [get_ports {pmu_lsu_l2dmiss_trap_m[0]}]]
group_path -name in2reg  -from [list [get_ports {in_rngl_cdbus[64]}] [get_ports {in_rngl_cdbus[63]}]   \
[get_ports {in_rngl_cdbus[62]}] [get_ports {in_rngl_cdbus[61]}] [get_ports     \
{in_rngl_cdbus[60]}] [get_ports {in_rngl_cdbus[59]}] [get_ports                \
{in_rngl_cdbus[58]}] [get_ports {in_rngl_cdbus[57]}] [get_ports                \
{in_rngl_cdbus[56]}] [get_ports {in_rngl_cdbus[55]}] [get_ports                \
{in_rngl_cdbus[54]}] [get_ports {in_rngl_cdbus[53]}] [get_ports                \
{in_rngl_cdbus[52]}] [get_ports {in_rngl_cdbus[51]}] [get_ports                \
{in_rngl_cdbus[50]}] [get_ports {in_rngl_cdbus[49]}] [get_ports                \
{in_rngl_cdbus[48]}] [get_ports {in_rngl_cdbus[47]}] [get_ports                \
{in_rngl_cdbus[46]}] [get_ports {in_rngl_cdbus[45]}] [get_ports                \
{in_rngl_cdbus[44]}] [get_ports {in_rngl_cdbus[43]}] [get_ports                \
{in_rngl_cdbus[42]}] [get_ports {in_rngl_cdbus[41]}] [get_ports                \
{in_rngl_cdbus[40]}] [get_ports {in_rngl_cdbus[39]}] [get_ports                \
{in_rngl_cdbus[38]}] [get_ports {in_rngl_cdbus[37]}] [get_ports                \
{in_rngl_cdbus[36]}] [get_ports {in_rngl_cdbus[35]}] [get_ports                \
{in_rngl_cdbus[34]}] [get_ports {in_rngl_cdbus[33]}] [get_ports                \
{in_rngl_cdbus[32]}] [get_ports {in_rngl_cdbus[31]}] [get_ports                \
{in_rngl_cdbus[30]}] [get_ports {in_rngl_cdbus[29]}] [get_ports                \
{in_rngl_cdbus[28]}] [get_ports {in_rngl_cdbus[27]}] [get_ports                \
{in_rngl_cdbus[26]}] [get_ports {in_rngl_cdbus[25]}] [get_ports                \
{in_rngl_cdbus[24]}] [get_ports {in_rngl_cdbus[23]}] [get_ports                \
{in_rngl_cdbus[22]}] [get_ports {in_rngl_cdbus[21]}] [get_ports                \
{in_rngl_cdbus[20]}] [get_ports {in_rngl_cdbus[19]}] [get_ports                \
{in_rngl_cdbus[18]}] [get_ports {in_rngl_cdbus[17]}] [get_ports                \
{in_rngl_cdbus[16]}] [get_ports {in_rngl_cdbus[15]}] [get_ports                \
{in_rngl_cdbus[14]}] [get_ports {in_rngl_cdbus[13]}] [get_ports                \
{in_rngl_cdbus[12]}] [get_ports {in_rngl_cdbus[11]}] [get_ports                \
{in_rngl_cdbus[10]}] [get_ports {in_rngl_cdbus[9]}] [get_ports                 \
{in_rngl_cdbus[8]}] [get_ports {in_rngl_cdbus[7]}] [get_ports                  \
{in_rngl_cdbus[6]}] [get_ports {in_rngl_cdbus[5]}] [get_ports                  \
{in_rngl_cdbus[4]}] [get_ports {in_rngl_cdbus[3]}] [get_ports                  \
{in_rngl_cdbus[2]}] [get_ports {in_rngl_cdbus[1]}] [get_ports                  \
{in_rngl_cdbus[0]}] [get_clocks l2clk] [get_ports scan_in] [get_ports          \
tcu_pce_ov] [get_ports spc_bclk] [get_ports spc_aclk] [get_ports tcu_scan_en]  \
[get_ports lsu_pmu_pmen] [get_ports lsu_asi_clken] [get_ports                  \
{dec_pmu_instr0_type_d[12]}] [get_ports {dec_pmu_instr0_type_d[11]}]           \
[get_ports {dec_pmu_instr0_type_d[10]}] [get_ports {dec_pmu_instr0_type_d[9]}] \
[get_ports {dec_pmu_instr0_type_d[8]}] [get_ports {dec_pmu_instr0_type_d[7]}]  \
[get_ports {dec_pmu_instr0_type_d[6]}] [get_ports {dec_pmu_instr0_type_d[5]}]  \
[get_ports {dec_pmu_instr0_type_d[4]}] [get_ports {dec_pmu_instr0_type_d[3]}]  \
[get_ports {dec_pmu_instr0_type_d[2]}] [get_ports {dec_pmu_instr0_type_d[1]}]  \
[get_ports {dec_pmu_instr0_type_d[0]}] [get_ports {dec_pmu_instr1_type_d[12]}] \
[get_ports {dec_pmu_instr1_type_d[11]}] [get_ports                             \
{dec_pmu_instr1_type_d[10]}] [get_ports {dec_pmu_instr1_type_d[9]}] [get_ports \
{dec_pmu_instr1_type_d[8]}] [get_ports {dec_pmu_instr1_type_d[7]}] [get_ports  \
{dec_pmu_instr1_type_d[6]}] [get_ports {dec_pmu_instr1_type_d[5]}] [get_ports  \
{dec_pmu_instr1_type_d[4]}] [get_ports {dec_pmu_instr1_type_d[3]}] [get_ports  \
{dec_pmu_instr1_type_d[2]}] [get_ports {dec_pmu_instr1_type_d[1]}] [get_ports  \
{dec_pmu_instr1_type_d[0]}] [get_ports {lsu_pmu_mem_type_b[5]}] [get_ports     \
{lsu_pmu_mem_type_b[4]}] [get_ports {lsu_pmu_mem_type_b[3]}] [get_ports        \
{lsu_pmu_mem_type_b[2]}] [get_ports {lsu_pmu_mem_type_b[1]}] [get_ports        \
{lsu_pmu_mem_type_b[0]}] [get_ports {dec_br_taken_e[1]}] [get_ports            \
{dec_br_taken_e[0]}] [get_ports dec_lsu_sel0_d] [get_ports mmu_pmu_l2ret]      \
[get_ports mmu_pmu_l2miss] [get_ports mmu_pmu_dtlb] [get_ports                 \
{mmu_pmu_tid[2]}] [get_ports {mmu_pmu_tid[1]}] [get_ports {mmu_pmu_tid[0]}]    \
[get_ports {l15_pmu_xbar_optype[6]}] [get_ports {l15_pmu_xbar_optype[5]}]      \
[get_ports {l15_pmu_xbar_optype[4]}] [get_ports {l15_pmu_xbar_optype[3]}]      \
[get_ports {l15_pmu_xbar_optype[2]}] [get_ports {l15_pmu_xbar_optype[1]}]      \
[get_ports {l15_pmu_xbar_optype[0]}] [get_ports {spu_pmu_cwq_busy[4]}]         \
[get_ports {spu_pmu_cwq_busy[3]}] [get_ports {spu_pmu_cwq_busy[2]}] [get_ports \
{spu_pmu_cwq_busy[1]}] [get_ports {spu_pmu_cwq_busy[0]}] [get_ports            \
{spu_pmu_cwq_tid[2]}] [get_ports {spu_pmu_cwq_tid[1]}] [get_ports              \
{spu_pmu_cwq_tid[0]}] [get_ports {spu_pmu_ma_busy[3]}] [get_ports              \
{spu_pmu_ma_busy[2]}] [get_ports {spu_pmu_ma_busy[1]}] [get_ports              \
{spu_pmu_ma_busy[0]}] [get_ports {tlu_pmu_pstate_priv[7]}] [get_ports          \
{tlu_pmu_pstate_priv[6]}] [get_ports {tlu_pmu_pstate_priv[5]}] [get_ports      \
{tlu_pmu_pstate_priv[4]}] [get_ports {tlu_pmu_pstate_priv[3]}] [get_ports      \
{tlu_pmu_pstate_priv[2]}] [get_ports {tlu_pmu_pstate_priv[1]}] [get_ports      \
{tlu_pmu_pstate_priv[0]}] [get_ports {tlu_pmu_hpstate_hpriv[7]}] [get_ports    \
{tlu_pmu_hpstate_hpriv[6]}] [get_ports {tlu_pmu_hpstate_hpriv[5]}] [get_ports  \
{tlu_pmu_hpstate_hpriv[4]}] [get_ports {tlu_pmu_hpstate_hpriv[3]}] [get_ports  \
{tlu_pmu_hpstate_hpriv[2]}] [get_ports {tlu_pmu_hpstate_hpriv[1]}] [get_ports  \
{tlu_pmu_hpstate_hpriv[0]}] [get_ports {tlu_pmu_trap_taken[7]}] [get_ports     \
{tlu_pmu_trap_taken[6]}] [get_ports {tlu_pmu_trap_taken[5]}] [get_ports        \
{tlu_pmu_trap_taken[4]}] [get_ports {tlu_pmu_trap_taken[3]}] [get_ports        \
{tlu_pmu_trap_taken[2]}] [get_ports {tlu_pmu_trap_taken[1]}] [get_ports        \
{tlu_pmu_trap_taken[0]}] [get_ports {tlu_pmu_trap_mask_e[1]}] [get_ports       \
{tlu_pmu_trap_mask_e[0]}] [get_ports {dec_valid_e[1]}] [get_ports              \
{dec_valid_e[0]}] [get_ports {dec_flush_m[1]}] [get_ports {dec_flush_m[0]}]    \
[get_ports {dec_flush_b[1]}] [get_ports {dec_flush_b[0]}] [get_ports           \
{tlu_flush_pmu_b[1]}] [get_ports {tlu_flush_pmu_b[0]}] [get_ports              \
{tlu_flush_pmu_w[1]}] [get_ports {tlu_flush_pmu_w[0]}]]  -to [list [get_pins pmu_pct_ctl_spares_spare11_flop_q_reg/D] [get_pins        \
{pmu_pct_ctl_asi_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[13]/D}] [get_pins                                  \
pmu_pct_ctl_asi_busy_clkgen_c_0_l1en_reg/D] [get_pins                          \
{pmu_pct_ctl_accum_d0_0_q_reg[0]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[1]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[2]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[3]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[4]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[5]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[6]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[7]/D}] [get_pins                                 \
{pmu_pct_ctl_t7l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t7l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t7l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t7l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t6l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t6l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t6l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t6l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t5l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t5l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t5l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t5l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t4l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t4l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t4l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t4l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t3l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t3l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t3l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t3l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t2l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t2l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t2l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t2l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t1l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t1l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t1l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t1l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t0l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t0l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t0l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t0l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t7h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t7h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t7h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t7h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t6h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t6h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t6h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t6h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t5h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t5h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t5h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t5h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t4h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t4h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t4h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t4h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t3h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t3h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t3h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t3h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t2h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t2h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t2h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t2h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t1h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t1h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t1h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t1h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t0h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t0h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t0h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t0h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_pic_st_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[15]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[16]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[17]/D}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pct_ctl_br_d0_0_q_reg[0]/D}] [get_pins {pmu_pct_ctl_br_d0_0_q_reg[1]/D}]  \
[get_pins {pmu_pct_ctl_br_d0_0_q_reg[2]/D}] [get_pins                          \
{pmu_pct_ctl_br_d0_0_q_reg[3]/D}] [get_pins {pmu_pct_ctl_br_d0_0_q_reg[4]/D}]  \
[get_pins {pmu_pct_ctl_br_d0_0_q_reg[5]/D}] [get_pins                          \
{pmu_pct_ctl_br_d0_0_q_reg[6]/D}] [get_pins {pmu_pct_ctl_br_d0_0_q_reg[7]/D}]  \
[get_pins {pmu_pct_ctl_br_d0_0_q_reg[8]/D}] [get_pins                          \
{pmu_pct_ctl_br_d0_0_q_reg[9]/D}] [get_pins {pmu_pct_ctl_br_d0_0_q_reg[10]/D}] \
[get_pins {pmu_pct_ctl_br_d0_0_q_reg[11]/D}] [get_pins                         \
{pmu_pct_ctl_br_d0_0_q_reg[12]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[13]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[14]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[15]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[16]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[17]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[18]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[19]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[20]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[21]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[22]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[23]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[7]/D}] [get_pins {pmu_pct_ctl_tp_d0_0_q_reg[0]/D}] \
[get_pins {pmu_pct_ctl_tp_d0_0_q_reg[1]/D}] [get_pins                          \
{pmu_pct_ctl_tp_d0_0_q_reg[2]/D}] [get_pins {pmu_pct_ctl_tp_d0_0_q_reg[3]/D}]  \
[get_pins {pmu_pct_ctl_tp_d0_0_q_reg[4]/D}] [get_pins                          \
{pmu_pct_ctl_tp_d0_0_q_reg[5]/D}] [get_pins {pmu_pct_ctl_tp_d0_0_q_reg[6]/D}]  \
[get_pins {pmu_pct_ctl_tp_d0_0_q_reg[7]/D}] [get_pins                          \
{pmu_pct_ctl_tp_d0_0_q_reg[8]/D}] [get_pins {pmu_pct_ctl_tp_d0_0_q_reg[9]/D}]  \
[get_pins {pmu_pct_ctl_tp_d0_0_q_reg[10]/D}] [get_pins                         \
{pmu_pct_ctl_tp_d0_0_q_reg[11]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[12]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[13]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[14]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[15]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[16]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[17]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[18]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[19]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[20]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[21]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[22]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[23]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[24]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[25]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[26]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[27]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[28]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[29]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[30]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[31]/D}] [get_pins                                   \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[15]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[16]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[17]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[18]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[19]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[20]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[21]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[22]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[23]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[24]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[25]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[26]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[27]/D}] [get_pins                              \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[0]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[1]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[2]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[3]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[4]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[5]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[6]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[7]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[8]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[9]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[10]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[11]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[12]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[13]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[14]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[15]/D}] [get_pins                           \
{pmu_pct_ctl_pcr7_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr7_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr7_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr6_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr6_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr5_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr5_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr4_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr4_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr3_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr3_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr2_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr2_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr1_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr1_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr0_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr0_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[29]/D}] [get_pins                                 \
pmu_pct_ctl_wr_pcr_clkgen_c_0_l1en_reg/D] [get_pins                            \
{pmu_pct_ctl_lsutid_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[18]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[19]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[20]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[21]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[22]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[23]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[24]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[25]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[26]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[27]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[28]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[29]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[30]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[31]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[32]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[33]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[34]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[35]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[36]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[37]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[38]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[39]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[40]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[41]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[42]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[43]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[44]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[45]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[46]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[47]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[48]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[49]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[50]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[51]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[52]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[53]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[54]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[55]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[56]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[57]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[58]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[59]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[60]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[61]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[62]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[63]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[64]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[65]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[15]/D}] [get_pins                              \
pmu_pct_ctl_ov_busy_clkgen_c_0_l1en_reg/D] [get_pins                           \
pmu_pct_ctl_pmu_busy_clkgen_c_0_l1en_reg/D] [get_pins                          \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[0]/D}] [get_pins                             \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[1]/D}] [get_pins                             \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[2]/D}] [get_pins                             \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[3]/D}] [get_pins                             \
{pmu_pct_ctl_pwrm_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pwrm_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pwrm_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pwrm_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pwrm_d0_0_q_reg[4]/D}] [get_pins                                  \
pmu_pct_ctl_clkgen_c_0_l1en_reg/D] [get_pins                                   \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[15]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[16]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[17]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[18]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[19]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[20]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[21]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[22]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[23]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[24]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[25]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[26]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[27]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[28]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[29]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[30]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[31]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[32]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[33]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[34]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[35]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[36]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[37]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[38]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[39]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[40]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[41]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[42]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[43]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[44]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[45]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[46]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[47]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[48]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[49]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[50]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[51]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[52]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[53]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[54]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[55]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[56]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[57]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[58]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[59]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[60]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[61]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[62]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[63]/D}] [get_pins                              \
pmu_pdp_dp_asi_dout_c0_0_l1en_reg/D] [get_pins                                 \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[15]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[16]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[17]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[18]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[19]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[20]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[21]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[22]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[23]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[24]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[25]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[26]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[27]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[28]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[29]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[30]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[31]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[32]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[33]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[34]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[35]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[36]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[37]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[38]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[39]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[40]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[41]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[42]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[43]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[44]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[45]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[46]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[47]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[48]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[49]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[50]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[51]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[52]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[53]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[54]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[55]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[56]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[57]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[58]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[59]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[60]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[61]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[62]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[63]/D}] [get_pins                              \
pmu_pdp_dp_pic07_w2_c0_0_l1en_reg/D] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic7_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic6_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic6_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic6_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic5_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic5_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic5_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic4_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic4_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic4_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic3_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic3_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic3_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic2_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic2_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic2_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic1_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic1_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic1_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic0_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic0_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic0_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_asi_din_d0_0_q_reg[0]/D}] [get_pins                      \
{pmu_pdp_dp_asi_din_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[18]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[19]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[20]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[21]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[22]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[23]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[24]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[25]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[26]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[27]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[28]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[29]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[30]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[31]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[32]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[33]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[34]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[35]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[36]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[37]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[38]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[39]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[40]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[41]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[42]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[43]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[44]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[45]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[46]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[47]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[48]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[49]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[50]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[51]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[52]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[53]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[54]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[55]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[56]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[57]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[58]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[59]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[60]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[61]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[62]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[63]/D}] [get_pins                               \
pmu_pdp_dp_asi_din_c0_0_l1en_reg/D]]
group_path -name reg2out  -from [list [get_pins pmu_pct_ctl_spares_spare11_flop_q_reg/CP] [get_pins     \
{pmu_pct_ctl_asi_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pct_ctl_asi_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pct_ctl_asi_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pct_ctl_asi_d0_0_q_reg[13]/CP}] [get_pins                                 \
pmu_pct_ctl_asi_busy_clkgen_c_0_l1en_reg/CPN] [get_pins                        \
{pmu_pct_ctl_accum_d0_0_q_reg[0]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[1]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[2]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[3]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[4]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[5]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[6]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[7]/CP}] [get_pins                                \
{pmu_pct_ctl_t7l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_pic_st_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[15]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[16]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[17]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pct_ctl_br_d0_0_q_reg[0]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[1]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[2]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[3]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[4]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[5]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[6]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[7]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[8]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[9]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[10]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[11]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[12]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[13]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[14]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[15]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[16]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[17]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[18]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[19]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[20]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[21]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[22]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[23]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[0]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[1]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[2]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[3]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[4]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[5]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[6]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[7]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[8]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[9]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[10]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[11]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[12]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[13]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[14]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[15]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[16]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[17]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[18]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[19]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[20]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[21]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[22]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[23]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[24]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[25]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[26]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[27]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[28]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[29]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[30]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[31]/CP}] [get_pins                                  \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[15]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[16]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[17]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[18]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[19]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[20]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[21]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[22]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[23]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[24]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[25]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[26]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[27]/CP}] [get_pins                             \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[0]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[1]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[2]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[3]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[4]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[5]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[6]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[7]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[8]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[9]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[10]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[11]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[12]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[13]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[14]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[15]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr7_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr7_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr7_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr6_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr6_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr5_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr5_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr4_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr4_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr3_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr3_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr2_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr1_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr1_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr0_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr0_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[29]/CP}] [get_pins                                \
pmu_pct_ctl_wr_pcr_clkgen_c_0_l1en_reg/CPN] [get_pins                          \
{pmu_pct_ctl_lsutid_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[18]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[19]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[20]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[21]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[22]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[23]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[24]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[25]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[26]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[27]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[28]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[29]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[30]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[31]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[32]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[33]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[34]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[35]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[36]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[37]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[38]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[39]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[40]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[41]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[42]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[43]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[44]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[45]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[46]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[47]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[48]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[49]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[50]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[51]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[52]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[53]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[54]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[55]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[56]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[57]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[58]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[59]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[60]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[61]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[62]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[63]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[64]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[65]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[15]/CP}] [get_pins                             \
pmu_pct_ctl_ov_busy_clkgen_c_0_l1en_reg/CPN] [get_pins                         \
pmu_pct_ctl_pmu_busy_clkgen_c_0_l1en_reg/CPN] [get_pins                        \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[0]/CP}] [get_pins                            \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[1]/CP}] [get_pins                            \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[2]/CP}] [get_pins                            \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[3]/CP}] [get_pins                            \
{pmu_pct_ctl_pwrm_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pwrm_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pwrm_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pwrm_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pwrm_d0_0_q_reg[4]/CP}] [get_pins                                 \
pmu_pct_ctl_clkgen_c_0_l1en_reg/CPN] [get_pins                                 \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[15]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[16]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[17]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[18]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[19]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[20]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[21]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[22]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[23]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[24]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[25]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[26]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[27]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[28]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[29]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[30]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[31]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[32]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[33]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[34]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[35]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[36]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[37]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[38]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[39]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[40]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[41]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[42]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[43]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[44]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[45]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[46]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[47]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[48]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[49]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[50]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[51]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[52]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[53]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[54]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[55]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[56]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[57]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[58]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[59]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[60]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[61]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[62]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[63]/CP}] [get_pins                             \
pmu_pdp_dp_asi_dout_c0_0_l1en_reg/CPN] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[15]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[16]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[17]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[18]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[19]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[20]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[21]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[22]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[23]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[24]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[25]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[26]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[27]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[28]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[29]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[30]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[31]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[32]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[33]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[34]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[35]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[36]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[37]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[38]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[39]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[40]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[41]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[42]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[43]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[44]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[45]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[46]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[47]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[48]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[49]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[50]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[51]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[52]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[53]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[54]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[55]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[56]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[57]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[58]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[59]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[60]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[61]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[62]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[63]/CP}] [get_pins                             \
pmu_pdp_dp_pic07_w2_c0_0_l1en_reg/CPN] [get_pins                               \
{pmu_pdp_dp_pic7_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic7_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic6_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic5_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic4_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic3_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic2_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic1_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic0_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_asi_din_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[18]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[19]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[20]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[21]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[22]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[23]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[24]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[25]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[26]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[27]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[28]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[29]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[30]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[31]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[32]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[33]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[34]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[35]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[36]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[37]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[38]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[39]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[40]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[41]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[42]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[43]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[44]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[45]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[46]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[47]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[48]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[49]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[50]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[51]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[52]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[53]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[54]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[55]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[56]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[57]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[58]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[59]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[60]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[61]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[62]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[63]/CP}] [get_pins                              \
pmu_pdp_dp_asi_din_c0_0_l1en_reg/CPN]]  -to [list [get_ports scan_out] [get_ports {pmu_rngl_cdbus[64]}] [get_ports    \
{pmu_rngl_cdbus[63]}] [get_ports {pmu_rngl_cdbus[62]}] [get_ports              \
{pmu_rngl_cdbus[61]}] [get_ports {pmu_rngl_cdbus[60]}] [get_ports              \
{pmu_rngl_cdbus[59]}] [get_ports {pmu_rngl_cdbus[58]}] [get_ports              \
{pmu_rngl_cdbus[57]}] [get_ports {pmu_rngl_cdbus[56]}] [get_ports              \
{pmu_rngl_cdbus[55]}] [get_ports {pmu_rngl_cdbus[54]}] [get_ports              \
{pmu_rngl_cdbus[53]}] [get_ports {pmu_rngl_cdbus[52]}] [get_ports              \
{pmu_rngl_cdbus[51]}] [get_ports {pmu_rngl_cdbus[50]}] [get_ports              \
{pmu_rngl_cdbus[49]}] [get_ports {pmu_rngl_cdbus[48]}] [get_ports              \
{pmu_rngl_cdbus[47]}] [get_ports {pmu_rngl_cdbus[46]}] [get_ports              \
{pmu_rngl_cdbus[45]}] [get_ports {pmu_rngl_cdbus[44]}] [get_ports              \
{pmu_rngl_cdbus[43]}] [get_ports {pmu_rngl_cdbus[42]}] [get_ports              \
{pmu_rngl_cdbus[41]}] [get_ports {pmu_rngl_cdbus[40]}] [get_ports              \
{pmu_rngl_cdbus[39]}] [get_ports {pmu_rngl_cdbus[38]}] [get_ports              \
{pmu_rngl_cdbus[37]}] [get_ports {pmu_rngl_cdbus[36]}] [get_ports              \
{pmu_rngl_cdbus[35]}] [get_ports {pmu_rngl_cdbus[34]}] [get_ports              \
{pmu_rngl_cdbus[33]}] [get_ports {pmu_rngl_cdbus[32]}] [get_ports              \
{pmu_rngl_cdbus[31]}] [get_ports {pmu_rngl_cdbus[30]}] [get_ports              \
{pmu_rngl_cdbus[29]}] [get_ports {pmu_rngl_cdbus[28]}] [get_ports              \
{pmu_rngl_cdbus[27]}] [get_ports {pmu_rngl_cdbus[26]}] [get_ports              \
{pmu_rngl_cdbus[25]}] [get_ports {pmu_rngl_cdbus[24]}] [get_ports              \
{pmu_rngl_cdbus[23]}] [get_ports {pmu_rngl_cdbus[22]}] [get_ports              \
{pmu_rngl_cdbus[21]}] [get_ports {pmu_rngl_cdbus[20]}] [get_ports              \
{pmu_rngl_cdbus[19]}] [get_ports {pmu_rngl_cdbus[18]}] [get_ports              \
{pmu_rngl_cdbus[17]}] [get_ports {pmu_rngl_cdbus[16]}] [get_ports              \
{pmu_rngl_cdbus[15]}] [get_ports {pmu_rngl_cdbus[14]}] [get_ports              \
{pmu_rngl_cdbus[13]}] [get_ports {pmu_rngl_cdbus[12]}] [get_ports              \
{pmu_rngl_cdbus[11]}] [get_ports {pmu_rngl_cdbus[10]}] [get_ports              \
{pmu_rngl_cdbus[9]}] [get_ports {pmu_rngl_cdbus[8]}] [get_ports                \
{pmu_rngl_cdbus[7]}] [get_ports {pmu_rngl_cdbus[6]}] [get_ports                \
{pmu_rngl_cdbus[5]}] [get_ports {pmu_rngl_cdbus[4]}] [get_ports                \
{pmu_rngl_cdbus[3]}] [get_ports {pmu_rngl_cdbus[2]}] [get_ports                \
{pmu_rngl_cdbus[1]}] [get_ports {pmu_rngl_cdbus[0]}] [get_ports                \
{pmu_tlu_trap_m[7]}] [get_ports {pmu_tlu_trap_m[6]}] [get_ports                \
{pmu_tlu_trap_m[5]}] [get_ports {pmu_tlu_trap_m[4]}] [get_ports                \
{pmu_tlu_trap_m[3]}] [get_ports {pmu_tlu_trap_m[2]}] [get_ports                \
{pmu_tlu_trap_m[1]}] [get_ports {pmu_tlu_trap_m[0]}] [get_ports                \
{pmu_tlu_debug_event[7]}] [get_ports {pmu_tlu_debug_event[6]}] [get_ports      \
{pmu_tlu_debug_event[5]}] [get_ports {pmu_tlu_debug_event[4]}] [get_ports      \
{pmu_tlu_debug_event[3]}] [get_ports {pmu_tlu_debug_event[2]}] [get_ports      \
{pmu_tlu_debug_event[1]}] [get_ports {pmu_tlu_debug_event[0]}] [get_ports      \
pmu_lsu_dcmiss_trap_m] [get_ports pmu_lsu_dtmiss_trap_m] [get_ports            \
{pmu_lsu_l2dmiss_trap_m[7]}] [get_ports {pmu_lsu_l2dmiss_trap_m[6]}]           \
[get_ports {pmu_lsu_l2dmiss_trap_m[5]}] [get_ports                             \
{pmu_lsu_l2dmiss_trap_m[4]}] [get_ports {pmu_lsu_l2dmiss_trap_m[3]}]           \
[get_ports {pmu_lsu_l2dmiss_trap_m[2]}] [get_ports                             \
{pmu_lsu_l2dmiss_trap_m[1]}] [get_ports {pmu_lsu_l2dmiss_trap_m[0]}]]
group_path -name reg2reg  -from [list [get_pins pmu_pct_ctl_spares_spare11_flop_q_reg/CP] [get_pins     \
{pmu_pct_ctl_asi_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pct_ctl_asi_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pct_ctl_asi_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pct_ctl_asi_d0_0_q_reg[13]/CP}] [get_pins                                 \
pmu_pct_ctl_asi_busy_clkgen_c_0_l1en_reg/CPN] [get_pins                        \
{pmu_pct_ctl_accum_d0_0_q_reg[0]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[1]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[2]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[3]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[4]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[5]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[6]/CP}] [get_pins                                \
{pmu_pct_ctl_accum_d0_0_q_reg[7]/CP}] [get_pins                                \
{pmu_pct_ctl_t7l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0l_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0l_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0l_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0l_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t7h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t6h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t5h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t4h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t3h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t2h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t1h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0h_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0h_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0h_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_t0h_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_pic_st_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_pic_st_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[15]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[16]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[17]/CP}] [get_pins                             \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pct_ctl_br_d0_0_q_reg[0]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[1]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[2]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[3]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[4]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[5]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[6]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[7]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[8]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[9]/CP}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[10]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[11]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[12]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[13]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[14]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[15]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[16]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[17]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[18]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[19]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[20]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[21]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[22]/CP}] [get_pins                                  \
{pmu_pct_ctl_br_d0_0_q_reg[23]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp1_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[0]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[1]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[2]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[3]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[4]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[5]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[6]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[7]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[8]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[9]/CP}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[10]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[11]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[12]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[13]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[14]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[15]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[16]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[17]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[18]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[19]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[20]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[21]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[22]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[23]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[24]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[25]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[26]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[27]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[28]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[29]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[30]/CP}] [get_pins                                  \
{pmu_pct_ctl_tp_d0_0_q_reg[31]/CP}] [get_pins                                  \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[15]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[16]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[17]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[18]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[19]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[20]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[21]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[22]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[23]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[24]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[25]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[26]/CP}] [get_pins                             \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[27]/CP}] [get_pins                             \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[0]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[1]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[2]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[3]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[4]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[5]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[6]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[7]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[8]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[9]/CP}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[10]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[11]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[12]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[13]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[14]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[15]/CP}] [get_pins                          \
{pmu_pct_ctl_pcr7_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr7_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr7_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr7_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr6_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr6_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr6_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr5_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr5_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr5_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr4_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr4_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr4_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr3_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr3_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr3_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr2_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr2_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr2_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr1_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr1_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr1_d0_0_q_reg[29]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_ov_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr0_ov_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_pcr0_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[4]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[5]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[6]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[7]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[8]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[9]/CP}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[10]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[11]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[12]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[13]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[14]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[15]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[16]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[17]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[18]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[19]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[20]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[21]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[22]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[23]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[24]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[25]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[26]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[27]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[28]/CP}] [get_pins                                \
{pmu_pct_ctl_pcr0_d0_0_q_reg[29]/CP}] [get_pins                                \
pmu_pct_ctl_wr_pcr_clkgen_c_0_l1en_reg/CPN] [get_pins                          \
{pmu_pct_ctl_lsutid_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_lsutid_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[18]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[19]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[20]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[21]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[22]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[23]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[24]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[25]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[26]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[27]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[28]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[29]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[30]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[31]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[32]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[33]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[34]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[35]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[36]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[37]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[38]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[39]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[40]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[41]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[42]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[43]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[44]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[45]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[46]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[47]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[48]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[49]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[50]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[51]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[52]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[53]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[54]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[55]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[56]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[57]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[58]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[59]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[60]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[61]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[62]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[63]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[64]/CP}] [get_pins                              \
{pmu_pct_ctl_events_d0_0_q_reg[65]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pct_ctl_hpstate_d0_0_q_reg[15]/CP}] [get_pins                             \
pmu_pct_ctl_ov_busy_clkgen_c_0_l1en_reg/CPN] [get_pins                         \
pmu_pct_ctl_pmu_busy_clkgen_c_0_l1en_reg/CPN] [get_pins                        \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[0]/CP}] [get_pins                            \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[1]/CP}] [get_pins                            \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[2]/CP}] [get_pins                            \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[3]/CP}] [get_pins                            \
{pmu_pct_ctl_pwrm_d0_0_q_reg[0]/CP}] [get_pins                                 \
{pmu_pct_ctl_pwrm_d0_0_q_reg[1]/CP}] [get_pins                                 \
{pmu_pct_ctl_pwrm_d0_0_q_reg[2]/CP}] [get_pins                                 \
{pmu_pct_ctl_pwrm_d0_0_q_reg[3]/CP}] [get_pins                                 \
{pmu_pct_ctl_pwrm_d0_0_q_reg[4]/CP}] [get_pins                                 \
pmu_pct_ctl_clkgen_c_0_l1en_reg/CPN] [get_pins                                 \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[15]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[16]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[17]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[18]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[19]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[20]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[21]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[22]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[23]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[24]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[25]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[26]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[27]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[28]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[29]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[30]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[31]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[32]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[33]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[34]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[35]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[36]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[37]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[38]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[39]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[40]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[41]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[42]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[43]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[44]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[45]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[46]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[47]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[48]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[49]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[50]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[51]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[52]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[53]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[54]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[55]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[56]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[57]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[58]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[59]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[60]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[61]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[62]/CP}] [get_pins                             \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[63]/CP}] [get_pins                             \
pmu_pdp_dp_asi_dout_c0_0_l1en_reg/CPN] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[0]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[1]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[2]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[3]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[4]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[5]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[6]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[7]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[8]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[9]/CP}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[10]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[11]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[12]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[13]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[14]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[15]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[16]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[17]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[18]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[19]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[20]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[21]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[22]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[23]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[24]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[25]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[26]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[27]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[28]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[29]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[30]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[31]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[32]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[33]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[34]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[35]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[36]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[37]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[38]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[39]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[40]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[41]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[42]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[43]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[44]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[45]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[46]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[47]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[48]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[49]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[50]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[51]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[52]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[53]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[54]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[55]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[56]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[57]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[58]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[59]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[60]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[61]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[62]/CP}] [get_pins                             \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[63]/CP}] [get_pins                             \
pmu_pdp_dp_pic07_w2_c0_0_l1en_reg/CPN] [get_pins                               \
{pmu_pdp_dp_pic7_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic7_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic6_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic6_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic5_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic5_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic4_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic4_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic3_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic3_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic2_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic2_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic1_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic1_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[0]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[1]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[2]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[3]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[4]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[5]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[6]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[7]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[8]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[9]/CP}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[10]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[11]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[12]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[13]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[14]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[15]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[16]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[17]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[18]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[19]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[20]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[21]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[22]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[23]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[24]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[25]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[26]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[27]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[28]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[29]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[30]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[31]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[32]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[33]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[34]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[35]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[36]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[37]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[38]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[39]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[40]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[41]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[42]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[43]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[44]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[45]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[46]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[47]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[48]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[49]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[50]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[51]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[52]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[53]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[54]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[55]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[56]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[57]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[58]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[59]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[60]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[61]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[62]/CP}] [get_pins                                 \
{pmu_pdp_dp_pic0_d0_0_q_reg[63]/CP}] [get_pins                                 \
pmu_pdp_dp_pic0_c0_0_l1en_reg/CPN] [get_pins                                   \
{pmu_pdp_dp_asi_din_d0_0_q_reg[0]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[1]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[2]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[3]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[4]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[5]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[6]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[7]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[8]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[9]/CP}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[10]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[11]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[12]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[13]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[14]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[15]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[16]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[17]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[18]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[19]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[20]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[21]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[22]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[23]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[24]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[25]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[26]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[27]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[28]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[29]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[30]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[31]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[32]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[33]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[34]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[35]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[36]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[37]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[38]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[39]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[40]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[41]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[42]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[43]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[44]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[45]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[46]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[47]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[48]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[49]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[50]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[51]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[52]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[53]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[54]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[55]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[56]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[57]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[58]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[59]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[60]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[61]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[62]/CP}] [get_pins                              \
{pmu_pdp_dp_asi_din_d0_0_q_reg[63]/CP}] [get_pins                              \
pmu_pdp_dp_asi_din_c0_0_l1en_reg/CPN]]  -to [list [get_pins pmu_pct_ctl_spares_spare11_flop_q_reg/D] [get_pins        \
{pmu_pct_ctl_asi_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pct_ctl_asi_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pct_ctl_asi_d0_0_q_reg[13]/D}] [get_pins                                  \
pmu_pct_ctl_asi_busy_clkgen_c_0_l1en_reg/D] [get_pins                          \
{pmu_pct_ctl_accum_d0_0_q_reg[0]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[1]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[2]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[3]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[4]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[5]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[6]/D}] [get_pins                                 \
{pmu_pct_ctl_accum_d0_0_q_reg[7]/D}] [get_pins                                 \
{pmu_pct_ctl_t7l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t7l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t7l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t7l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t6l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t6l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t6l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t6l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t5l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t5l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t5l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t5l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t4l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t4l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t4l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t4l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t3l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t3l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t3l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t3l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t2l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t2l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t2l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t2l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t1l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t1l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t1l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t1l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t0l_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t0l_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t0l_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t0l_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t7h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t7h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t7h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t7h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t6h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t6h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t6h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t6h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t5h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t5h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t5h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t5h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t4h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t4h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t4h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t4h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t3h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t3h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t3h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t3h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t2h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t2h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t2h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t2h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t1h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t1h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t1h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t1h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_t0h_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_t0h_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_t0h_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_t0h_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_pic_st_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_pic_st_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[15]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[16]/D}] [get_pins                              \
{pmu_pct_ctl_ti_w2w1_d0_0_q_reg[17]/D}] [get_pins                              \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pct_ctl_ti_b2w_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pct_ctl_ti_m2b_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pct_ctl_ti_e2m_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pct_ctl_br_d0_0_q_reg[0]/D}] [get_pins {pmu_pct_ctl_br_d0_0_q_reg[1]/D}]  \
[get_pins {pmu_pct_ctl_br_d0_0_q_reg[2]/D}] [get_pins                          \
{pmu_pct_ctl_br_d0_0_q_reg[3]/D}] [get_pins {pmu_pct_ctl_br_d0_0_q_reg[4]/D}]  \
[get_pins {pmu_pct_ctl_br_d0_0_q_reg[5]/D}] [get_pins                          \
{pmu_pct_ctl_br_d0_0_q_reg[6]/D}] [get_pins {pmu_pct_ctl_br_d0_0_q_reg[7]/D}]  \
[get_pins {pmu_pct_ctl_br_d0_0_q_reg[8]/D}] [get_pins                          \
{pmu_pct_ctl_br_d0_0_q_reg[9]/D}] [get_pins {pmu_pct_ctl_br_d0_0_q_reg[10]/D}] \
[get_pins {pmu_pct_ctl_br_d0_0_q_reg[11]/D}] [get_pins                         \
{pmu_pct_ctl_br_d0_0_q_reg[12]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[13]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[14]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[15]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[16]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[17]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[18]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[19]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[20]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[21]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[22]/D}] [get_pins                                   \
{pmu_pct_ctl_br_d0_0_q_reg[23]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pct_ctl_tp1_d0_0_q_reg[7]/D}] [get_pins {pmu_pct_ctl_tp_d0_0_q_reg[0]/D}] \
[get_pins {pmu_pct_ctl_tp_d0_0_q_reg[1]/D}] [get_pins                          \
{pmu_pct_ctl_tp_d0_0_q_reg[2]/D}] [get_pins {pmu_pct_ctl_tp_d0_0_q_reg[3]/D}]  \
[get_pins {pmu_pct_ctl_tp_d0_0_q_reg[4]/D}] [get_pins                          \
{pmu_pct_ctl_tp_d0_0_q_reg[5]/D}] [get_pins {pmu_pct_ctl_tp_d0_0_q_reg[6]/D}]  \
[get_pins {pmu_pct_ctl_tp_d0_0_q_reg[7]/D}] [get_pins                          \
{pmu_pct_ctl_tp_d0_0_q_reg[8]/D}] [get_pins {pmu_pct_ctl_tp_d0_0_q_reg[9]/D}]  \
[get_pins {pmu_pct_ctl_tp_d0_0_q_reg[10]/D}] [get_pins                         \
{pmu_pct_ctl_tp_d0_0_q_reg[11]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[12]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[13]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[14]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[15]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[16]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[17]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[18]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[19]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[20]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[21]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[22]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[23]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[24]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[25]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[26]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[27]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[28]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[29]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[30]/D}] [get_pins                                   \
{pmu_pct_ctl_tp_d0_0_q_reg[31]/D}] [get_pins                                   \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[15]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[16]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[17]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[18]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[19]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[20]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[21]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[22]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[23]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[24]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[25]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[26]/D}] [get_pins                              \
{pmu_pct_ctl_lsu_e2m_d0_0_q_reg[27]/D}] [get_pins                              \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[0]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[1]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[2]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[3]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[4]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[5]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[6]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[7]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[8]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[9]/D}] [get_pins                            \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[10]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[11]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[12]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[13]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[14]/D}] [get_pins                           \
{pmu_pct_ctl_pcr_ov_del_d0_0_q_reg[15]/D}] [get_pins                           \
{pmu_pct_ctl_pcr7_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr7_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr7_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr7_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr7_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr6_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr6_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr6_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr6_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr5_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr5_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr5_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr5_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr4_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr4_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr4_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr4_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr3_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr3_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr3_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr3_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr2_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr2_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr2_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr2_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr1_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr1_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr1_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr1_d0_0_q_reg[29]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_ov_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_pcr0_ov_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_pcr0_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[4]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[5]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[6]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[7]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[8]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[9]/D}] [get_pins                                  \
{pmu_pct_ctl_pcr0_d0_0_q_reg[10]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[11]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[12]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[13]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[14]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[15]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[16]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[17]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[18]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[19]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[20]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[21]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[22]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[23]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[24]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[25]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[26]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[27]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[28]/D}] [get_pins                                 \
{pmu_pct_ctl_pcr0_d0_0_q_reg[29]/D}] [get_pins                                 \
pmu_pct_ctl_wr_pcr_clkgen_c_0_l1en_reg/D] [get_pins                            \
{pmu_pct_ctl_lsutid_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_lsutid_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[0]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pct_ctl_events_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[18]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[19]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[20]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[21]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[22]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[23]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[24]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[25]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[26]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[27]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[28]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[29]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[30]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[31]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[32]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[33]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[34]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[35]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[36]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[37]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[38]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[39]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[40]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[41]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[42]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[43]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[44]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[45]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[46]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[47]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[48]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[49]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[50]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[51]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[52]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[53]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[54]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[55]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[56]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[57]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[58]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[59]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[60]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[61]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[62]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[63]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[64]/D}] [get_pins                               \
{pmu_pct_ctl_events_d0_0_q_reg[65]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pct_ctl_hpstate_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pct_ctl_hpstate_d0_0_q_reg[15]/D}] [get_pins                              \
pmu_pct_ctl_ov_busy_clkgen_c_0_l1en_reg/D] [get_pins                           \
pmu_pct_ctl_pmu_busy_clkgen_c_0_l1en_reg/D] [get_pins                          \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[0]/D}] [get_pins                             \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[1]/D}] [get_pins                             \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[2]/D}] [get_pins                             \
{pmu_pct_ctl_sleep_cnt_d0_0_q_reg[3]/D}] [get_pins                             \
{pmu_pct_ctl_pwrm_d0_0_q_reg[0]/D}] [get_pins                                  \
{pmu_pct_ctl_pwrm_d0_0_q_reg[1]/D}] [get_pins                                  \
{pmu_pct_ctl_pwrm_d0_0_q_reg[2]/D}] [get_pins                                  \
{pmu_pct_ctl_pwrm_d0_0_q_reg[3]/D}] [get_pins                                  \
{pmu_pct_ctl_pwrm_d0_0_q_reg[4]/D}] [get_pins                                  \
pmu_pct_ctl_clkgen_c_0_l1en_reg/D] [get_pins                                   \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[15]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[16]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[17]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[18]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[19]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[20]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[21]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[22]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[23]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[24]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[25]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[26]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[27]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[28]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[29]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[30]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[31]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[32]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[33]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[34]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[35]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[36]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[37]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[38]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[39]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[40]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[41]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[42]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[43]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[44]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[45]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[46]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[47]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[48]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[49]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[50]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[51]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[52]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[53]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[54]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[55]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[56]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[57]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[58]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[59]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[60]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[61]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[62]/D}] [get_pins                              \
{pmu_pdp_dp_asi_dout_d0_0_q_reg[63]/D}] [get_pins                              \
pmu_pdp_dp_asi_dout_c0_0_l1en_reg/D] [get_pins                                 \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[0]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[1]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[2]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[3]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[4]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[5]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[6]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[7]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[8]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[9]/D}] [get_pins                               \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[10]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[11]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[12]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[13]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[14]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[15]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[16]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[17]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[18]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[19]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[20]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[21]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[22]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[23]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[24]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[25]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[26]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[27]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[28]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[29]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[30]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[31]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[32]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[33]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[34]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[35]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[36]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[37]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[38]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[39]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[40]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[41]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[42]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[43]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[44]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[45]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[46]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[47]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[48]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[49]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[50]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[51]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[52]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[53]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[54]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[55]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[56]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[57]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[58]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[59]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[60]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[61]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[62]/D}] [get_pins                              \
{pmu_pdp_dp_pic07_w2_d0_0_q_reg[63]/D}] [get_pins                              \
pmu_pdp_dp_pic07_w2_c0_0_l1en_reg/D] [get_pins                                 \
{pmu_pdp_dp_pic7_d0_0_q_reg[0]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic7_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic7_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic7_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic6_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic6_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic6_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic6_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic6_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic5_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic5_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic5_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic5_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic5_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic4_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic4_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic4_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic4_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic4_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic3_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic3_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic3_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic3_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic3_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic2_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic2_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic2_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic2_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic2_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic1_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic1_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic1_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic1_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic1_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_pic0_d0_0_q_reg[0]/D}] [get_pins                         \
{pmu_pdp_dp_pic0_d0_0_q_reg[1]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[2]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[3]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[4]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[5]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[6]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[7]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[8]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[9]/D}] [get_pins                                   \
{pmu_pdp_dp_pic0_d0_0_q_reg[10]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[11]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[12]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[13]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[14]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[15]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[16]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[17]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[18]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[19]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[20]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[21]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[22]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[23]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[24]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[25]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[26]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[27]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[28]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[29]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[30]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[31]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[32]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[33]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[34]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[35]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[36]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[37]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[38]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[39]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[40]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[41]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[42]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[43]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[44]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[45]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[46]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[47]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[48]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[49]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[50]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[51]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[52]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[53]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[54]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[55]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[56]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[57]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[58]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[59]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[60]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[61]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[62]/D}] [get_pins                                  \
{pmu_pdp_dp_pic0_d0_0_q_reg[63]/D}] [get_pins pmu_pdp_dp_pic0_c0_0_l1en_reg/D] \
[get_pins {pmu_pdp_dp_asi_din_d0_0_q_reg[0]/D}] [get_pins                      \
{pmu_pdp_dp_asi_din_d0_0_q_reg[1]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[2]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[3]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[4]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[5]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[6]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[7]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[8]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[9]/D}] [get_pins                                \
{pmu_pdp_dp_asi_din_d0_0_q_reg[10]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[11]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[12]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[13]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[14]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[15]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[16]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[17]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[18]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[19]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[20]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[21]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[22]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[23]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[24]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[25]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[26]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[27]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[28]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[29]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[30]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[31]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[32]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[33]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[34]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[35]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[36]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[37]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[38]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[39]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[40]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[41]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[42]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[43]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[44]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[45]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[46]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[47]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[48]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[49]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[50]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[51]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[52]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[53]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[54]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[55]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[56]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[57]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[58]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[59]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[60]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[61]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[62]/D}] [get_pins                               \
{pmu_pdp_dp_asi_din_d0_0_q_reg[63]/D}] [get_pins                               \
pmu_pdp_dp_asi_din_c0_0_l1en_reg/D]]
set_input_delay -clock l2clk  0.15  [get_ports l2clk]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[64]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[63]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[62]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[61]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[60]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[59]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[58]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[57]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[56]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[55]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[54]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[53]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[52]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[51]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[50]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[49]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[48]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[47]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[46]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[45]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[44]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[43]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[42]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[41]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[40]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[39]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[38]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[37]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[36]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[35]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[34]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[33]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[32]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[31]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[30]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[29]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[28]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[27]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[26]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[25]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[24]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[23]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[22]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[21]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[20]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[19]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[18]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[17]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[16]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[15]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[14]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[13]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {in_rngl_cdbus[0]}]
set_input_delay -clock l2clk  0.15  [get_ports scan_in]
set_input_delay -clock l2clk  0.15  [get_ports tcu_pce_ov]
set_input_delay -clock l2clk  0.15  [get_ports spc_bclk]
set_input_delay -clock l2clk  0.15  [get_ports spc_aclk]
set_input_delay -clock l2clk  0.15  [get_ports tcu_scan_en]
set_input_delay -clock l2clk  0.15  [get_ports lsu_pmu_pmen]
set_input_delay -clock l2clk  0.15  [get_ports lsu_asi_clken]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr0_type_d[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[12]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[11]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[10]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[9]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[8]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_pmu_instr1_type_d[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_pmu_mem_type_b[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_pmu_mem_type_b[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_pmu_mem_type_b[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_pmu_mem_type_b[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_pmu_mem_type_b[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {lsu_pmu_mem_type_b[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_br_taken_e[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_br_taken_e[0]}]
set_input_delay -clock l2clk  0.15  [get_ports dec_lsu_sel0_d]
set_input_delay -clock l2clk  0.15  [get_ports mmu_pmu_l2ret]
set_input_delay -clock l2clk  0.15  [get_ports mmu_pmu_l2miss]
set_input_delay -clock l2clk  0.15  [get_ports mmu_pmu_dtlb]
set_input_delay -clock l2clk  0.15  [get_ports {mmu_pmu_tid[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {mmu_pmu_tid[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {mmu_pmu_tid[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {l15_pmu_xbar_optype[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {l15_pmu_xbar_optype[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {l15_pmu_xbar_optype[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {l15_pmu_xbar_optype[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {l15_pmu_xbar_optype[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {l15_pmu_xbar_optype[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {l15_pmu_xbar_optype[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_cwq_busy[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_cwq_busy[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_cwq_busy[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_cwq_busy[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_cwq_busy[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_cwq_tid[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_cwq_tid[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_cwq_tid[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_ma_busy[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_ma_busy[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_ma_busy[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {spu_pmu_ma_busy[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_pstate_priv[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_pstate_priv[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_pstate_priv[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_pstate_priv[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_pstate_priv[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_pstate_priv[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_pstate_priv[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_pstate_priv[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_hpstate_hpriv[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_hpstate_hpriv[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_hpstate_hpriv[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_hpstate_hpriv[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_hpstate_hpriv[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_hpstate_hpriv[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_hpstate_hpriv[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_hpstate_hpriv[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_taken[7]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_taken[6]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_taken[5]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_taken[4]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_taken[3]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_taken[2]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_taken[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_taken[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_mask_e[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_pmu_trap_mask_e[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_valid_e[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_valid_e[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_flush_m[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_flush_m[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_flush_b[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {dec_flush_b[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_pmu_b[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_pmu_b[0]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_pmu_w[1]}]
set_input_delay -clock l2clk  0.15  [get_ports {tlu_flush_pmu_w[0]}]
set_output_delay -clock l2clk  0.2  [get_ports scan_out]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[64]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[63]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[62]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[61]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[60]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[59]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[58]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[57]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[56]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[55]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[54]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[53]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[52]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[51]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[50]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[49]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[48]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[47]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[46]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[45]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[44]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[43]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[42]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[41]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[40]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[39]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[38]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[37]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[36]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[35]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[34]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[33]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[32]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[31]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[30]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[29]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[28]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[27]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[26]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[25]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[24]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[23]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[22]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[21]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[20]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[19]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[18]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[17]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[16]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[15]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[14]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[13]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[12]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[11]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[10]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[9]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[8]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_rngl_cdbus[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_trap_m[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_trap_m[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_trap_m[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_trap_m[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_trap_m[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_trap_m[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_trap_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_trap_m[0]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_debug_event[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_debug_event[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_debug_event[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_debug_event[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_debug_event[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_debug_event[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_debug_event[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_tlu_debug_event[0]}]
set_output_delay -clock l2clk  0.2  [get_ports pmu_lsu_dcmiss_trap_m]
set_output_delay -clock l2clk  0.2  [get_ports pmu_lsu_dtmiss_trap_m]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_lsu_l2dmiss_trap_m[7]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_lsu_l2dmiss_trap_m[6]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_lsu_l2dmiss_trap_m[5]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_lsu_l2dmiss_trap_m[4]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_lsu_l2dmiss_trap_m[3]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_lsu_l2dmiss_trap_m[2]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_lsu_l2dmiss_trap_m[1]}]
set_output_delay -clock l2clk  0.2  [get_ports {pmu_lsu_l2dmiss_trap_m[0]}]
