###################################################################

# Created by write_sdc on Sun Jan 12 15:54:59 2014

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports gclk]  -period 0.714286  -waveform {0 0.357143}
set_clock_uncertainty 0  [get_clocks gclk]
set_clock_transition -min -fall 0.05 [get_clocks gclk]
set_clock_transition -min -rise 0.05 [get_clocks gclk]
set_clock_transition -max -fall 0.05 [get_clocks gclk]
set_clock_transition -max -rise 0.05 [get_clocks gclk]
group_path -name in2out  -from [list [get_clocks gclk] [get_ports {scan_in[1]}] [get_ports             \
{scan_in[0]}] [get_ports tcu_pce_ov] [get_ports tcu_clk_stop] [get_ports       \
tcu_aclk] [get_ports tcu_bclk] [get_ports tcu_dectest] [get_ports tcu_muxtest] \
[get_ports tcu_scan_en] [get_ports tcu_array_wr_inhibit] [get_ports            \
tcu_se_scancollar_in] [get_ports tcu_se_scancollar_out] [get_ports             \
tcu_atpg_mode] [get_ports rst_wmr_protect] [get_ports tcu_shscan_pce_ov]       \
[get_ports tcu_shscan_clk_stop] [get_ports tcu_shscan_aclk] [get_ports         \
tcu_shscan_bclk] [get_ports tcu_shscan_scan_in] [get_ports tcu_shscan_scan_en] \
[get_ports {tcu_shscanid[2]}] [get_ports {tcu_shscanid[1]}] [get_ports         \
{tcu_shscanid[0]}] [get_ports cluster_arst_l] [get_ports                       \
tcu_spc_mbist_scan_in] [get_ports tcu_mbist_bisi_en] [get_ports                \
tcu_spc_mbist_start] [get_ports tcu_mbist_user_mode] [get_ports                \
{const_cpuid[2]}] [get_ports {const_cpuid[1]}] [get_ports {const_cpuid[0]}]    \
[get_ports tcu_ss_mode] [get_ports tcu_do_mode] [get_ports tcu_ss_request]     \
[get_ports ncu_cmp_tick_enable] [get_ports ncu_wmr_vec_mask] [get_ports        \
ncu_spc_pm] [get_ports ncu_spc_ba01] [get_ports ncu_spc_ba23] [get_ports       \
ncu_spc_ba45] [get_ports ncu_spc_ba67] [get_ports efu_spc_fuse_data]           \
[get_ports efu_spc_fuse_ixfer_en] [get_ports efu_spc_fuse_dxfer_en] [get_ports \
efu_spc_fuse_iclr] [get_ports efu_spc_fuse_dclr] [get_ports vnw_ary0]          \
[get_ports vnw_ary1] [get_ports tcu_spc_lbist_start] [get_ports                \
tcu_spc_lbist_scan_in] [get_ports tcu_spc_lbist_pgm] [get_ports                \
tcu_spc_test_mode] [get_ports {dmo_din[35]}] [get_ports {dmo_din[34]}]         \
[get_ports {dmo_din[33]}] [get_ports {dmo_din[32]}] [get_ports {dmo_din[31]}]  \
[get_ports {dmo_din[30]}] [get_ports {dmo_din[29]}] [get_ports {dmo_din[28]}]  \
[get_ports {dmo_din[27]}] [get_ports {dmo_din[26]}] [get_ports {dmo_din[25]}]  \
[get_ports {dmo_din[24]}] [get_ports {dmo_din[23]}] [get_ports {dmo_din[22]}]  \
[get_ports {dmo_din[21]}] [get_ports {dmo_din[20]}] [get_ports {dmo_din[19]}]  \
[get_ports {dmo_din[18]}] [get_ports {dmo_din[17]}] [get_ports {dmo_din[16]}]  \
[get_ports {dmo_din[15]}] [get_ports {dmo_din[14]}] [get_ports {dmo_din[13]}]  \
[get_ports {dmo_din[12]}] [get_ports {dmo_din[11]}] [get_ports {dmo_din[10]}]  \
[get_ports {dmo_din[9]}] [get_ports {dmo_din[8]}] [get_ports {dmo_din[7]}]     \
[get_ports {dmo_din[6]}] [get_ports {dmo_din[5]}] [get_ports {dmo_din[4]}]     \
[get_ports {dmo_din[3]}] [get_ports {dmo_din[2]}] [get_ports {dmo_din[1]}]     \
[get_ports {dmo_din[0]}] [get_ports dmo_coresel] [get_ports dmo_icmuxctl]      \
[get_ports dmo_dcmuxctl] [get_ports ncu_spc_l2_idx_hash_en] [get_ports         \
{cpx_spc_data_cx[145]}] [get_ports {cpx_spc_data_cx[144]}] [get_ports          \
{cpx_spc_data_cx[143]}] [get_ports {cpx_spc_data_cx[142]}] [get_ports          \
{cpx_spc_data_cx[141]}] [get_ports {cpx_spc_data_cx[140]}] [get_ports          \
{cpx_spc_data_cx[139]}] [get_ports {cpx_spc_data_cx[138]}] [get_ports          \
{cpx_spc_data_cx[137]}] [get_ports {cpx_spc_data_cx[136]}] [get_ports          \
{cpx_spc_data_cx[135]}] [get_ports {cpx_spc_data_cx[134]}] [get_ports          \
{cpx_spc_data_cx[133]}] [get_ports {cpx_spc_data_cx[132]}] [get_ports          \
{cpx_spc_data_cx[131]}] [get_ports {cpx_spc_data_cx[130]}] [get_ports          \
{cpx_spc_data_cx[129]}] [get_ports {cpx_spc_data_cx[128]}] [get_ports          \
{cpx_spc_data_cx[127]}] [get_ports {cpx_spc_data_cx[126]}] [get_ports          \
{cpx_spc_data_cx[125]}] [get_ports {cpx_spc_data_cx[124]}] [get_ports          \
{cpx_spc_data_cx[123]}] [get_ports {cpx_spc_data_cx[122]}] [get_ports          \
{cpx_spc_data_cx[121]}] [get_ports {cpx_spc_data_cx[120]}] [get_ports          \
{cpx_spc_data_cx[119]}] [get_ports {cpx_spc_data_cx[118]}] [get_ports          \
{cpx_spc_data_cx[117]}] [get_ports {cpx_spc_data_cx[116]}] [get_ports          \
{cpx_spc_data_cx[115]}] [get_ports {cpx_spc_data_cx[114]}] [get_ports          \
{cpx_spc_data_cx[113]}] [get_ports {cpx_spc_data_cx[112]}] [get_ports          \
{cpx_spc_data_cx[111]}] [get_ports {cpx_spc_data_cx[110]}] [get_ports          \
{cpx_spc_data_cx[109]}] [get_ports {cpx_spc_data_cx[108]}] [get_ports          \
{cpx_spc_data_cx[107]}] [get_ports {cpx_spc_data_cx[106]}] [get_ports          \
{cpx_spc_data_cx[105]}] [get_ports {cpx_spc_data_cx[104]}] [get_ports          \
{cpx_spc_data_cx[103]}] [get_ports {cpx_spc_data_cx[102]}] [get_ports          \
{cpx_spc_data_cx[101]}] [get_ports {cpx_spc_data_cx[100]}] [get_ports          \
{cpx_spc_data_cx[99]}] [get_ports {cpx_spc_data_cx[98]}] [get_ports            \
{cpx_spc_data_cx[97]}] [get_ports {cpx_spc_data_cx[96]}] [get_ports            \
{cpx_spc_data_cx[95]}] [get_ports {cpx_spc_data_cx[94]}] [get_ports            \
{cpx_spc_data_cx[93]}] [get_ports {cpx_spc_data_cx[92]}] [get_ports            \
{cpx_spc_data_cx[91]}] [get_ports {cpx_spc_data_cx[90]}] [get_ports            \
{cpx_spc_data_cx[89]}] [get_ports {cpx_spc_data_cx[88]}] [get_ports            \
{cpx_spc_data_cx[87]}] [get_ports {cpx_spc_data_cx[86]}] [get_ports            \
{cpx_spc_data_cx[85]}] [get_ports {cpx_spc_data_cx[84]}] [get_ports            \
{cpx_spc_data_cx[83]}] [get_ports {cpx_spc_data_cx[82]}] [get_ports            \
{cpx_spc_data_cx[81]}] [get_ports {cpx_spc_data_cx[80]}] [get_ports            \
{cpx_spc_data_cx[79]}] [get_ports {cpx_spc_data_cx[78]}] [get_ports            \
{cpx_spc_data_cx[77]}] [get_ports {cpx_spc_data_cx[76]}] [get_ports            \
{cpx_spc_data_cx[75]}] [get_ports {cpx_spc_data_cx[74]}] [get_ports            \
{cpx_spc_data_cx[73]}] [get_ports {cpx_spc_data_cx[72]}] [get_ports            \
{cpx_spc_data_cx[71]}] [get_ports {cpx_spc_data_cx[70]}] [get_ports            \
{cpx_spc_data_cx[69]}] [get_ports {cpx_spc_data_cx[68]}] [get_ports            \
{cpx_spc_data_cx[67]}] [get_ports {cpx_spc_data_cx[66]}] [get_ports            \
{cpx_spc_data_cx[65]}] [get_ports {cpx_spc_data_cx[64]}] [get_ports            \
{cpx_spc_data_cx[63]}] [get_ports {cpx_spc_data_cx[62]}] [get_ports            \
{cpx_spc_data_cx[61]}] [get_ports {cpx_spc_data_cx[60]}] [get_ports            \
{cpx_spc_data_cx[59]}] [get_ports {cpx_spc_data_cx[58]}] [get_ports            \
{cpx_spc_data_cx[57]}] [get_ports {cpx_spc_data_cx[56]}] [get_ports            \
{cpx_spc_data_cx[55]}] [get_ports {cpx_spc_data_cx[54]}] [get_ports            \
{cpx_spc_data_cx[53]}] [get_ports {cpx_spc_data_cx[52]}] [get_ports            \
{cpx_spc_data_cx[51]}] [get_ports {cpx_spc_data_cx[50]}] [get_ports            \
{cpx_spc_data_cx[49]}] [get_ports {cpx_spc_data_cx[48]}] [get_ports            \
{cpx_spc_data_cx[47]}] [get_ports {cpx_spc_data_cx[46]}] [get_ports            \
{cpx_spc_data_cx[45]}] [get_ports {cpx_spc_data_cx[44]}] [get_ports            \
{cpx_spc_data_cx[43]}] [get_ports {cpx_spc_data_cx[42]}] [get_ports            \
{cpx_spc_data_cx[41]}] [get_ports {cpx_spc_data_cx[40]}] [get_ports            \
{cpx_spc_data_cx[39]}] [get_ports {cpx_spc_data_cx[38]}] [get_ports            \
{cpx_spc_data_cx[37]}] [get_ports {cpx_spc_data_cx[36]}] [get_ports            \
{cpx_spc_data_cx[35]}] [get_ports {cpx_spc_data_cx[34]}] [get_ports            \
{cpx_spc_data_cx[33]}] [get_ports {cpx_spc_data_cx[32]}] [get_ports            \
{cpx_spc_data_cx[31]}] [get_ports {cpx_spc_data_cx[30]}] [get_ports            \
{cpx_spc_data_cx[29]}] [get_ports {cpx_spc_data_cx[28]}] [get_ports            \
{cpx_spc_data_cx[27]}] [get_ports {cpx_spc_data_cx[26]}] [get_ports            \
{cpx_spc_data_cx[25]}] [get_ports {cpx_spc_data_cx[24]}] [get_ports            \
{cpx_spc_data_cx[23]}] [get_ports {cpx_spc_data_cx[22]}] [get_ports            \
{cpx_spc_data_cx[21]}] [get_ports {cpx_spc_data_cx[20]}] [get_ports            \
{cpx_spc_data_cx[19]}] [get_ports {cpx_spc_data_cx[18]}] [get_ports            \
{cpx_spc_data_cx[17]}] [get_ports {cpx_spc_data_cx[16]}] [get_ports            \
{cpx_spc_data_cx[15]}] [get_ports {cpx_spc_data_cx[14]}] [get_ports            \
{cpx_spc_data_cx[13]}] [get_ports {cpx_spc_data_cx[12]}] [get_ports            \
{cpx_spc_data_cx[11]}] [get_ports {cpx_spc_data_cx[10]}] [get_ports            \
{cpx_spc_data_cx[9]}] [get_ports {cpx_spc_data_cx[8]}] [get_ports              \
{cpx_spc_data_cx[7]}] [get_ports {cpx_spc_data_cx[6]}] [get_ports              \
{cpx_spc_data_cx[5]}] [get_ports {cpx_spc_data_cx[4]}] [get_ports              \
{cpx_spc_data_cx[3]}] [get_ports {cpx_spc_data_cx[2]}] [get_ports              \
{cpx_spc_data_cx[1]}] [get_ports {cpx_spc_data_cx[0]}] [get_ports              \
{pcx_spc_grant_px[8]}] [get_ports {pcx_spc_grant_px[7]}] [get_ports            \
{pcx_spc_grant_px[6]}] [get_ports {pcx_spc_grant_px[5]}] [get_ports            \
{pcx_spc_grant_px[4]}] [get_ports {pcx_spc_grant_px[3]}] [get_ports            \
{pcx_spc_grant_px[2]}] [get_ports {pcx_spc_grant_px[1]}] [get_ports            \
{pcx_spc_grant_px[0]}] [get_ports {tcu_core_running[7]}] [get_ports            \
{tcu_core_running[6]}] [get_ports {tcu_core_running[5]}] [get_ports            \
{tcu_core_running[4]}] [get_ports {tcu_core_running[3]}] [get_ports            \
{tcu_core_running[2]}] [get_ports {tcu_core_running[1]}] [get_ports            \
{tcu_core_running[0]}] [get_ports {power_throttle[2]}] [get_ports              \
{power_throttle[1]}] [get_ports {power_throttle[0]}] [get_ports                \
{hver_mask_minor_rev[3]}] [get_ports {hver_mask_minor_rev[2]}] [get_ports      \
{hver_mask_minor_rev[1]}] [get_ports {hver_mask_minor_rev[0]}] [get_ports      \
ccu_slow_cmp_sync_en] [get_ports ccu_cmp_slow_sync_en]]  -to [list [get_ports {scan_out[1]}] [get_ports {scan_out[0]}] [get_ports      \
spc_shscan_scan_out] [get_ports spc_mbist_fail] [get_ports spc_mbist_done]     \
[get_ports spc_tcu_mbist_scan_out] [get_ports spc_ss_complete] [get_ports      \
spc_hardstop_request] [get_ports spc_softstop_request] [get_ports              \
spc_trigger_pulse] [get_ports spc_efu_fuse_ddata] [get_ports                   \
spc_efu_fuse_idata] [get_ports spc_efu_fuse_ixfer_en] [get_ports               \
spc_efu_fuse_dxfer_en] [get_ports spc_tcu_lbist_done] [get_ports               \
spc_tcu_lbist_scan_out] [get_ports {dmo_dout[35]}] [get_ports {dmo_dout[34]}]  \
[get_ports {dmo_dout[33]}] [get_ports {dmo_dout[32]}] [get_ports               \
{dmo_dout[31]}] [get_ports {dmo_dout[30]}] [get_ports {dmo_dout[29]}]          \
[get_ports {dmo_dout[28]}] [get_ports {dmo_dout[27]}] [get_ports               \
{dmo_dout[26]}] [get_ports {dmo_dout[25]}] [get_ports {dmo_dout[24]}]          \
[get_ports {dmo_dout[23]}] [get_ports {dmo_dout[22]}] [get_ports               \
{dmo_dout[21]}] [get_ports {dmo_dout[20]}] [get_ports {dmo_dout[19]}]          \
[get_ports {dmo_dout[18]}] [get_ports {dmo_dout[17]}] [get_ports               \
{dmo_dout[16]}] [get_ports {dmo_dout[15]}] [get_ports {dmo_dout[14]}]          \
[get_ports {dmo_dout[13]}] [get_ports {dmo_dout[12]}] [get_ports               \
{dmo_dout[11]}] [get_ports {dmo_dout[10]}] [get_ports {dmo_dout[9]}]           \
[get_ports {dmo_dout[8]}] [get_ports {dmo_dout[7]}] [get_ports {dmo_dout[6]}]  \
[get_ports {dmo_dout[5]}] [get_ports {dmo_dout[4]}] [get_ports {dmo_dout[3]}]  \
[get_ports {dmo_dout[2]}] [get_ports {dmo_dout[1]}] [get_ports {dmo_dout[0]}]  \
[get_ports {spc_pcx_req_pq[8]}] [get_ports {spc_pcx_req_pq[7]}] [get_ports     \
{spc_pcx_req_pq[6]}] [get_ports {spc_pcx_req_pq[5]}] [get_ports                \
{spc_pcx_req_pq[4]}] [get_ports {spc_pcx_req_pq[3]}] [get_ports                \
{spc_pcx_req_pq[2]}] [get_ports {spc_pcx_req_pq[1]}] [get_ports                \
{spc_pcx_req_pq[0]}] [get_ports {spc_pcx_atm_pq[8]}] [get_ports                \
{spc_pcx_atm_pq[7]}] [get_ports {spc_pcx_atm_pq[6]}] [get_ports                \
{spc_pcx_atm_pq[5]}] [get_ports {spc_pcx_atm_pq[4]}] [get_ports                \
{spc_pcx_atm_pq[3]}] [get_ports {spc_pcx_atm_pq[2]}] [get_ports                \
{spc_pcx_atm_pq[1]}] [get_ports {spc_pcx_atm_pq[0]}] [get_ports                \
{spc_pcx_data_pa[129]}] [get_ports {spc_pcx_data_pa[128]}] [get_ports          \
{spc_pcx_data_pa[127]}] [get_ports {spc_pcx_data_pa[126]}] [get_ports          \
{spc_pcx_data_pa[125]}] [get_ports {spc_pcx_data_pa[124]}] [get_ports          \
{spc_pcx_data_pa[123]}] [get_ports {spc_pcx_data_pa[122]}] [get_ports          \
{spc_pcx_data_pa[121]}] [get_ports {spc_pcx_data_pa[120]}] [get_ports          \
{spc_pcx_data_pa[119]}] [get_ports {spc_pcx_data_pa[118]}] [get_ports          \
{spc_pcx_data_pa[117]}] [get_ports {spc_pcx_data_pa[116]}] [get_ports          \
{spc_pcx_data_pa[115]}] [get_ports {spc_pcx_data_pa[114]}] [get_ports          \
{spc_pcx_data_pa[113]}] [get_ports {spc_pcx_data_pa[112]}] [get_ports          \
{spc_pcx_data_pa[111]}] [get_ports {spc_pcx_data_pa[110]}] [get_ports          \
{spc_pcx_data_pa[109]}] [get_ports {spc_pcx_data_pa[108]}] [get_ports          \
{spc_pcx_data_pa[107]}] [get_ports {spc_pcx_data_pa[106]}] [get_ports          \
{spc_pcx_data_pa[105]}] [get_ports {spc_pcx_data_pa[104]}] [get_ports          \
{spc_pcx_data_pa[103]}] [get_ports {spc_pcx_data_pa[102]}] [get_ports          \
{spc_pcx_data_pa[101]}] [get_ports {spc_pcx_data_pa[100]}] [get_ports          \
{spc_pcx_data_pa[99]}] [get_ports {spc_pcx_data_pa[98]}] [get_ports            \
{spc_pcx_data_pa[97]}] [get_ports {spc_pcx_data_pa[96]}] [get_ports            \
{spc_pcx_data_pa[95]}] [get_ports {spc_pcx_data_pa[94]}] [get_ports            \
{spc_pcx_data_pa[93]}] [get_ports {spc_pcx_data_pa[92]}] [get_ports            \
{spc_pcx_data_pa[91]}] [get_ports {spc_pcx_data_pa[90]}] [get_ports            \
{spc_pcx_data_pa[89]}] [get_ports {spc_pcx_data_pa[88]}] [get_ports            \
{spc_pcx_data_pa[87]}] [get_ports {spc_pcx_data_pa[86]}] [get_ports            \
{spc_pcx_data_pa[85]}] [get_ports {spc_pcx_data_pa[84]}] [get_ports            \
{spc_pcx_data_pa[83]}] [get_ports {spc_pcx_data_pa[82]}] [get_ports            \
{spc_pcx_data_pa[81]}] [get_ports {spc_pcx_data_pa[80]}] [get_ports            \
{spc_pcx_data_pa[79]}] [get_ports {spc_pcx_data_pa[78]}] [get_ports            \
{spc_pcx_data_pa[77]}] [get_ports {spc_pcx_data_pa[76]}] [get_ports            \
{spc_pcx_data_pa[75]}] [get_ports {spc_pcx_data_pa[74]}] [get_ports            \
{spc_pcx_data_pa[73]}] [get_ports {spc_pcx_data_pa[72]}] [get_ports            \
{spc_pcx_data_pa[71]}] [get_ports {spc_pcx_data_pa[70]}] [get_ports            \
{spc_pcx_data_pa[69]}] [get_ports {spc_pcx_data_pa[68]}] [get_ports            \
{spc_pcx_data_pa[67]}] [get_ports {spc_pcx_data_pa[66]}] [get_ports            \
{spc_pcx_data_pa[65]}] [get_ports {spc_pcx_data_pa[64]}] [get_ports            \
{spc_pcx_data_pa[63]}] [get_ports {spc_pcx_data_pa[62]}] [get_ports            \
{spc_pcx_data_pa[61]}] [get_ports {spc_pcx_data_pa[60]}] [get_ports            \
{spc_pcx_data_pa[59]}] [get_ports {spc_pcx_data_pa[58]}] [get_ports            \
{spc_pcx_data_pa[57]}] [get_ports {spc_pcx_data_pa[56]}] [get_ports            \
{spc_pcx_data_pa[55]}] [get_ports {spc_pcx_data_pa[54]}] [get_ports            \
{spc_pcx_data_pa[53]}] [get_ports {spc_pcx_data_pa[52]}] [get_ports            \
{spc_pcx_data_pa[51]}] [get_ports {spc_pcx_data_pa[50]}] [get_ports            \
{spc_pcx_data_pa[49]}] [get_ports {spc_pcx_data_pa[48]}] [get_ports            \
{spc_pcx_data_pa[47]}] [get_ports {spc_pcx_data_pa[46]}] [get_ports            \
{spc_pcx_data_pa[45]}] [get_ports {spc_pcx_data_pa[44]}] [get_ports            \
{spc_pcx_data_pa[43]}] [get_ports {spc_pcx_data_pa[42]}] [get_ports            \
{spc_pcx_data_pa[41]}] [get_ports {spc_pcx_data_pa[40]}] [get_ports            \
{spc_pcx_data_pa[39]}] [get_ports {spc_pcx_data_pa[38]}] [get_ports            \
{spc_pcx_data_pa[37]}] [get_ports {spc_pcx_data_pa[36]}] [get_ports            \
{spc_pcx_data_pa[35]}] [get_ports {spc_pcx_data_pa[34]}] [get_ports            \
{spc_pcx_data_pa[33]}] [get_ports {spc_pcx_data_pa[32]}] [get_ports            \
{spc_pcx_data_pa[31]}] [get_ports {spc_pcx_data_pa[30]}] [get_ports            \
{spc_pcx_data_pa[29]}] [get_ports {spc_pcx_data_pa[28]}] [get_ports            \
{spc_pcx_data_pa[27]}] [get_ports {spc_pcx_data_pa[26]}] [get_ports            \
{spc_pcx_data_pa[25]}] [get_ports {spc_pcx_data_pa[24]}] [get_ports            \
{spc_pcx_data_pa[23]}] [get_ports {spc_pcx_data_pa[22]}] [get_ports            \
{spc_pcx_data_pa[21]}] [get_ports {spc_pcx_data_pa[20]}] [get_ports            \
{spc_pcx_data_pa[19]}] [get_ports {spc_pcx_data_pa[18]}] [get_ports            \
{spc_pcx_data_pa[17]}] [get_ports {spc_pcx_data_pa[16]}] [get_ports            \
{spc_pcx_data_pa[15]}] [get_ports {spc_pcx_data_pa[14]}] [get_ports            \
{spc_pcx_data_pa[13]}] [get_ports {spc_pcx_data_pa[12]}] [get_ports            \
{spc_pcx_data_pa[11]}] [get_ports {spc_pcx_data_pa[10]}] [get_ports            \
{spc_pcx_data_pa[9]}] [get_ports {spc_pcx_data_pa[8]}] [get_ports              \
{spc_pcx_data_pa[7]}] [get_ports {spc_pcx_data_pa[6]}] [get_ports              \
{spc_pcx_data_pa[5]}] [get_ports {spc_pcx_data_pa[4]}] [get_ports              \
{spc_pcx_data_pa[3]}] [get_ports {spc_pcx_data_pa[2]}] [get_ports              \
{spc_pcx_data_pa[1]}] [get_ports {spc_pcx_data_pa[0]}] [get_ports              \
{spc_core_running_status[7]}] [get_ports {spc_core_running_status[6]}]         \
[get_ports {spc_core_running_status[5]}] [get_ports                            \
{spc_core_running_status[4]}] [get_ports {spc_core_running_status[3]}]         \
[get_ports {spc_core_running_status[2]}] [get_ports                            \
{spc_core_running_status[1]}] [get_ports {spc_core_running_status[0]}]         \
[get_ports {spc_dbg_instr_cmt_grp0[1]}] [get_ports                             \
{spc_dbg_instr_cmt_grp0[0]}] [get_ports {spc_dbg_instr_cmt_grp1[1]}]           \
[get_ports {spc_dbg_instr_cmt_grp1[0]}]]
group_path -name in2reg  -from [list [get_clocks gclk] [get_ports {scan_in[1]}] [get_ports             \
{scan_in[0]}] [get_ports tcu_pce_ov] [get_ports tcu_clk_stop] [get_ports       \
tcu_aclk] [get_ports tcu_bclk] [get_ports tcu_dectest] [get_ports tcu_muxtest] \
[get_ports tcu_scan_en] [get_ports tcu_array_wr_inhibit] [get_ports            \
tcu_se_scancollar_in] [get_ports tcu_se_scancollar_out] [get_ports             \
tcu_atpg_mode] [get_ports rst_wmr_protect] [get_ports tcu_shscan_pce_ov]       \
[get_ports tcu_shscan_clk_stop] [get_ports tcu_shscan_aclk] [get_ports         \
tcu_shscan_bclk] [get_ports tcu_shscan_scan_in] [get_ports tcu_shscan_scan_en] \
[get_ports {tcu_shscanid[2]}] [get_ports {tcu_shscanid[1]}] [get_ports         \
{tcu_shscanid[0]}] [get_ports cluster_arst_l] [get_ports                       \
tcu_spc_mbist_scan_in] [get_ports tcu_mbist_bisi_en] [get_ports                \
tcu_spc_mbist_start] [get_ports tcu_mbist_user_mode] [get_ports                \
{const_cpuid[2]}] [get_ports {const_cpuid[1]}] [get_ports {const_cpuid[0]}]    \
[get_ports tcu_ss_mode] [get_ports tcu_do_mode] [get_ports tcu_ss_request]     \
[get_ports ncu_cmp_tick_enable] [get_ports ncu_wmr_vec_mask] [get_ports        \
ncu_spc_pm] [get_ports ncu_spc_ba01] [get_ports ncu_spc_ba23] [get_ports       \
ncu_spc_ba45] [get_ports ncu_spc_ba67] [get_ports efu_spc_fuse_data]           \
[get_ports efu_spc_fuse_ixfer_en] [get_ports efu_spc_fuse_dxfer_en] [get_ports \
efu_spc_fuse_iclr] [get_ports efu_spc_fuse_dclr] [get_ports vnw_ary0]          \
[get_ports vnw_ary1] [get_ports tcu_spc_lbist_start] [get_ports                \
tcu_spc_lbist_scan_in] [get_ports tcu_spc_lbist_pgm] [get_ports                \
tcu_spc_test_mode] [get_ports {dmo_din[35]}] [get_ports {dmo_din[34]}]         \
[get_ports {dmo_din[33]}] [get_ports {dmo_din[32]}] [get_ports {dmo_din[31]}]  \
[get_ports {dmo_din[30]}] [get_ports {dmo_din[29]}] [get_ports {dmo_din[28]}]  \
[get_ports {dmo_din[27]}] [get_ports {dmo_din[26]}] [get_ports {dmo_din[25]}]  \
[get_ports {dmo_din[24]}] [get_ports {dmo_din[23]}] [get_ports {dmo_din[22]}]  \
[get_ports {dmo_din[21]}] [get_ports {dmo_din[20]}] [get_ports {dmo_din[19]}]  \
[get_ports {dmo_din[18]}] [get_ports {dmo_din[17]}] [get_ports {dmo_din[16]}]  \
[get_ports {dmo_din[15]}] [get_ports {dmo_din[14]}] [get_ports {dmo_din[13]}]  \
[get_ports {dmo_din[12]}] [get_ports {dmo_din[11]}] [get_ports {dmo_din[10]}]  \
[get_ports {dmo_din[9]}] [get_ports {dmo_din[8]}] [get_ports {dmo_din[7]}]     \
[get_ports {dmo_din[6]}] [get_ports {dmo_din[5]}] [get_ports {dmo_din[4]}]     \
[get_ports {dmo_din[3]}] [get_ports {dmo_din[2]}] [get_ports {dmo_din[1]}]     \
[get_ports {dmo_din[0]}] [get_ports dmo_coresel] [get_ports dmo_icmuxctl]      \
[get_ports dmo_dcmuxctl] [get_ports ncu_spc_l2_idx_hash_en] [get_ports         \
{cpx_spc_data_cx[145]}] [get_ports {cpx_spc_data_cx[144]}] [get_ports          \
{cpx_spc_data_cx[143]}] [get_ports {cpx_spc_data_cx[142]}] [get_ports          \
{cpx_spc_data_cx[141]}] [get_ports {cpx_spc_data_cx[140]}] [get_ports          \
{cpx_spc_data_cx[139]}] [get_ports {cpx_spc_data_cx[138]}] [get_ports          \
{cpx_spc_data_cx[137]}] [get_ports {cpx_spc_data_cx[136]}] [get_ports          \
{cpx_spc_data_cx[135]}] [get_ports {cpx_spc_data_cx[134]}] [get_ports          \
{cpx_spc_data_cx[133]}] [get_ports {cpx_spc_data_cx[132]}] [get_ports          \
{cpx_spc_data_cx[131]}] [get_ports {cpx_spc_data_cx[130]}] [get_ports          \
{cpx_spc_data_cx[129]}] [get_ports {cpx_spc_data_cx[128]}] [get_ports          \
{cpx_spc_data_cx[127]}] [get_ports {cpx_spc_data_cx[126]}] [get_ports          \
{cpx_spc_data_cx[125]}] [get_ports {cpx_spc_data_cx[124]}] [get_ports          \
{cpx_spc_data_cx[123]}] [get_ports {cpx_spc_data_cx[122]}] [get_ports          \
{cpx_spc_data_cx[121]}] [get_ports {cpx_spc_data_cx[120]}] [get_ports          \
{cpx_spc_data_cx[119]}] [get_ports {cpx_spc_data_cx[118]}] [get_ports          \
{cpx_spc_data_cx[117]}] [get_ports {cpx_spc_data_cx[116]}] [get_ports          \
{cpx_spc_data_cx[115]}] [get_ports {cpx_spc_data_cx[114]}] [get_ports          \
{cpx_spc_data_cx[113]}] [get_ports {cpx_spc_data_cx[112]}] [get_ports          \
{cpx_spc_data_cx[111]}] [get_ports {cpx_spc_data_cx[110]}] [get_ports          \
{cpx_spc_data_cx[109]}] [get_ports {cpx_spc_data_cx[108]}] [get_ports          \
{cpx_spc_data_cx[107]}] [get_ports {cpx_spc_data_cx[106]}] [get_ports          \
{cpx_spc_data_cx[105]}] [get_ports {cpx_spc_data_cx[104]}] [get_ports          \
{cpx_spc_data_cx[103]}] [get_ports {cpx_spc_data_cx[102]}] [get_ports          \
{cpx_spc_data_cx[101]}] [get_ports {cpx_spc_data_cx[100]}] [get_ports          \
{cpx_spc_data_cx[99]}] [get_ports {cpx_spc_data_cx[98]}] [get_ports            \
{cpx_spc_data_cx[97]}] [get_ports {cpx_spc_data_cx[96]}] [get_ports            \
{cpx_spc_data_cx[95]}] [get_ports {cpx_spc_data_cx[94]}] [get_ports            \
{cpx_spc_data_cx[93]}] [get_ports {cpx_spc_data_cx[92]}] [get_ports            \
{cpx_spc_data_cx[91]}] [get_ports {cpx_spc_data_cx[90]}] [get_ports            \
{cpx_spc_data_cx[89]}] [get_ports {cpx_spc_data_cx[88]}] [get_ports            \
{cpx_spc_data_cx[87]}] [get_ports {cpx_spc_data_cx[86]}] [get_ports            \
{cpx_spc_data_cx[85]}] [get_ports {cpx_spc_data_cx[84]}] [get_ports            \
{cpx_spc_data_cx[83]}] [get_ports {cpx_spc_data_cx[82]}] [get_ports            \
{cpx_spc_data_cx[81]}] [get_ports {cpx_spc_data_cx[80]}] [get_ports            \
{cpx_spc_data_cx[79]}] [get_ports {cpx_spc_data_cx[78]}] [get_ports            \
{cpx_spc_data_cx[77]}] [get_ports {cpx_spc_data_cx[76]}] [get_ports            \
{cpx_spc_data_cx[75]}] [get_ports {cpx_spc_data_cx[74]}] [get_ports            \
{cpx_spc_data_cx[73]}] [get_ports {cpx_spc_data_cx[72]}] [get_ports            \
{cpx_spc_data_cx[71]}] [get_ports {cpx_spc_data_cx[70]}] [get_ports            \
{cpx_spc_data_cx[69]}] [get_ports {cpx_spc_data_cx[68]}] [get_ports            \
{cpx_spc_data_cx[67]}] [get_ports {cpx_spc_data_cx[66]}] [get_ports            \
{cpx_spc_data_cx[65]}] [get_ports {cpx_spc_data_cx[64]}] [get_ports            \
{cpx_spc_data_cx[63]}] [get_ports {cpx_spc_data_cx[62]}] [get_ports            \
{cpx_spc_data_cx[61]}] [get_ports {cpx_spc_data_cx[60]}] [get_ports            \
{cpx_spc_data_cx[59]}] [get_ports {cpx_spc_data_cx[58]}] [get_ports            \
{cpx_spc_data_cx[57]}] [get_ports {cpx_spc_data_cx[56]}] [get_ports            \
{cpx_spc_data_cx[55]}] [get_ports {cpx_spc_data_cx[54]}] [get_ports            \
{cpx_spc_data_cx[53]}] [get_ports {cpx_spc_data_cx[52]}] [get_ports            \
{cpx_spc_data_cx[51]}] [get_ports {cpx_spc_data_cx[50]}] [get_ports            \
{cpx_spc_data_cx[49]}] [get_ports {cpx_spc_data_cx[48]}] [get_ports            \
{cpx_spc_data_cx[47]}] [get_ports {cpx_spc_data_cx[46]}] [get_ports            \
{cpx_spc_data_cx[45]}] [get_ports {cpx_spc_data_cx[44]}] [get_ports            \
{cpx_spc_data_cx[43]}] [get_ports {cpx_spc_data_cx[42]}] [get_ports            \
{cpx_spc_data_cx[41]}] [get_ports {cpx_spc_data_cx[40]}] [get_ports            \
{cpx_spc_data_cx[39]}] [get_ports {cpx_spc_data_cx[38]}] [get_ports            \
{cpx_spc_data_cx[37]}] [get_ports {cpx_spc_data_cx[36]}] [get_ports            \
{cpx_spc_data_cx[35]}] [get_ports {cpx_spc_data_cx[34]}] [get_ports            \
{cpx_spc_data_cx[33]}] [get_ports {cpx_spc_data_cx[32]}] [get_ports            \
{cpx_spc_data_cx[31]}] [get_ports {cpx_spc_data_cx[30]}] [get_ports            \
{cpx_spc_data_cx[29]}] [get_ports {cpx_spc_data_cx[28]}] [get_ports            \
{cpx_spc_data_cx[27]}] [get_ports {cpx_spc_data_cx[26]}] [get_ports            \
{cpx_spc_data_cx[25]}] [get_ports {cpx_spc_data_cx[24]}] [get_ports            \
{cpx_spc_data_cx[23]}] [get_ports {cpx_spc_data_cx[22]}] [get_ports            \
{cpx_spc_data_cx[21]}] [get_ports {cpx_spc_data_cx[20]}] [get_ports            \
{cpx_spc_data_cx[19]}] [get_ports {cpx_spc_data_cx[18]}] [get_ports            \
{cpx_spc_data_cx[17]}] [get_ports {cpx_spc_data_cx[16]}] [get_ports            \
{cpx_spc_data_cx[15]}] [get_ports {cpx_spc_data_cx[14]}] [get_ports            \
{cpx_spc_data_cx[13]}] [get_ports {cpx_spc_data_cx[12]}] [get_ports            \
{cpx_spc_data_cx[11]}] [get_ports {cpx_spc_data_cx[10]}] [get_ports            \
{cpx_spc_data_cx[9]}] [get_ports {cpx_spc_data_cx[8]}] [get_ports              \
{cpx_spc_data_cx[7]}] [get_ports {cpx_spc_data_cx[6]}] [get_ports              \
{cpx_spc_data_cx[5]}] [get_ports {cpx_spc_data_cx[4]}] [get_ports              \
{cpx_spc_data_cx[3]}] [get_ports {cpx_spc_data_cx[2]}] [get_ports              \
{cpx_spc_data_cx[1]}] [get_ports {cpx_spc_data_cx[0]}] [get_ports              \
{pcx_spc_grant_px[8]}] [get_ports {pcx_spc_grant_px[7]}] [get_ports            \
{pcx_spc_grant_px[6]}] [get_ports {pcx_spc_grant_px[5]}] [get_ports            \
{pcx_spc_grant_px[4]}] [get_ports {pcx_spc_grant_px[3]}] [get_ports            \
{pcx_spc_grant_px[2]}] [get_ports {pcx_spc_grant_px[1]}] [get_ports            \
{pcx_spc_grant_px[0]}] [get_ports {tcu_core_running[7]}] [get_ports            \
{tcu_core_running[6]}] [get_ports {tcu_core_running[5]}] [get_ports            \
{tcu_core_running[4]}] [get_ports {tcu_core_running[3]}] [get_ports            \
{tcu_core_running[2]}] [get_ports {tcu_core_running[1]}] [get_ports            \
{tcu_core_running[0]}] [get_ports {power_throttle[2]}] [get_ports              \
{power_throttle[1]}] [get_ports {power_throttle[0]}] [get_ports                \
{hver_mask_minor_rev[3]}] [get_ports {hver_mask_minor_rev[2]}] [get_ports      \
{hver_mask_minor_rev[1]}] [get_ports {hver_mask_minor_rev[0]}] [get_ports      \
ccu_slow_cmp_sync_en] [get_ports ccu_cmp_slow_sync_en]]  -to [list [get_pins {mb2_out_save_restore_mb_arrays_reg_d0_0_q_reg[0]/D}]     \
[get_pins {mb2_out_save_restore_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[11]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[12]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[13]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[14]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[15]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[16]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[17]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[18]/D}] [get_pins                      \
{mb2_i_delay_4th_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb2_i_delay_4th_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb2_i_delay_4th_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb2_i_delay_4th_d0_0_q_reg[3]/D}] [get_pins                                   \
{mb2_out_mb_tcu_fail_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb2_out_mb_tcu_done_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb2_out_rd_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb2_out_rd_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb2_out_wr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb2_out_wr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[8]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[9]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb2_out_run_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb2_done_delay_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb2_done_delay_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{mb2_done_delay_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{mb2_done_delay_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{mb2_done_delay_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{mb2_run3_transition_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb2_msb_latch_d0_0_q_reg[0]/D}] [get_pins {mb2_fail_reg_d0_0_q_reg[0]/D}]     \
[get_pins {mb2_fail_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_fail_reg_d0_0_q_reg[2]/D}] [get_pins {mb2_fail_reg_d0_0_q_reg[3]/D}]      \
[get_pins {mb2_fail_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb2_fail_reg_d0_0_q_reg[5]/D}] [get_pins                                      \
{mb2_marche_element_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_marche_element_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_marche_element_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb2_marche_element_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb2_array_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb2_array_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb2_array_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb2_array_sel_reg_d0_0_q_reg[3]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[0]/D}] \
[get_pins {mb2_cntl_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_cntl_reg_d0_0_q_reg[2]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[3]/D}]      \
[get_pins {mb2_cntl_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb2_cntl_reg_d0_0_q_reg[5]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[6]/D}]      \
[get_pins {mb2_cntl_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb2_cntl_reg_d0_0_q_reg[8]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[9]/D}]      \
[get_pins {mb2_cntl_reg_d0_0_q_reg[10]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[11]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[12]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[13]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[14]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[15]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[16]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[17]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[18]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[19]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[20]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[21]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[22]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[23]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[24]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[25]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[26]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[27]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[28]/D}] [get_pins                           \
{mb2_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb2_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb2_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb2_user_bisi_rd_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb2_user_bisi_wr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb2_ten_n_mode_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb2_user_loop_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_user_cmpsel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb2_user_cmpsel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb2_user_cmpsel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb2_user_cmpselinc_hold_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb2_user_data_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{mb2_user_data_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[9]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[9]/D}] [get_pins                            \
{mb2_user_start_addr_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[2]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[3]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[4]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[5]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[6]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[7]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[8]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[9]/D}] [get_pins                           \
{mb2_user_addr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_array_usr_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb2_array_usr_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb2_array_usr_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb2_array_usr_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb2_loop_again_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb2_config_reg_d0_0_q_reg[0]/D}] [get_pins {mb2_config_reg_d0_0_q_reg[1]/D}]  \
[get_pins {mb2_mb_enable_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb2_input_signals_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb2_input_signals_reg_d0_0_q_reg[1]/D}] [get_pins                             \
mb2_clkgen_pm1_c_0_l1en_reg/D] [get_pins {mb2_pmen_d0_0_q_reg[1]/D}] [get_pins \
{mb2_pmen_d0_0_q_reg[2]/D}] [get_pins mb2_clkgen_c_0_l1en_reg/D] [get_pins     \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                          \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb1_out_run_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb1_out_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb1_out_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb1_out_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb1_out_cmp_sel_reg_d0_0_q_reg[3]/D}] [get_pins                               \
{mb1_out_mb_tcu_fail_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb1_out_mb_tcu_done_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb1_fail_reg_d0_0_q_reg[0]/D}] [get_pins {mb1_fail_reg_d0_0_q_reg[1]/D}]      \
[get_pins {mb1_fail_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb1_fail_reg_d0_0_q_reg[3]/D}] [get_pins {mb1_fail_reg_d0_0_q_reg[4]/D}]      \
[get_pins {mb1_fail_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb1_fail_reg_d0_0_q_reg[6]/D}] [get_pins                                      \
{mb1_done_delay_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb1_done_delay_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{mb1_done_delay_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{mb1_done_delay_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{mb1_done_delay_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{mb1_run3_transition_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb1_msb_latch_d0_0_q_reg[0]/D}] [get_pins                                     \
{mb1_marche_element_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_marche_element_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb1_marche_element_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb1_marche_element_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb1_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb1_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb1_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb1_array_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb1_array_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb1_array_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb1_array_sel_reg_d0_0_q_reg[3]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[0]/D}] \
[get_pins {mb1_cntl_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb1_cntl_reg_d0_0_q_reg[2]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[3]/D}]      \
[get_pins {mb1_cntl_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb1_cntl_reg_d0_0_q_reg[5]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[6]/D}]      \
[get_pins {mb1_cntl_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb1_cntl_reg_d0_0_q_reg[8]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[9]/D}]      \
[get_pins {mb1_cntl_reg_d0_0_q_reg[10]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[11]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[12]/D}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[13]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[14]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[15]/D}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[16]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[17]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[18]/D}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[19]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[20]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[21]/D}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[22]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[23]/D}] [get_pins                                     \
{mb1_user_bisi_rd_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb1_user_bisi_wr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb1_ten_n_mode_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb1_user_loop_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_user_cmpsel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb1_user_cmpsel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb1_user_cmpsel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb1_user_cmpselinc_hold_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb1_user_data_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{mb1_user_data_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb1_user_start_addr_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[2]/D}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[3]/D}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[4]/D}] [get_pins                           \
{mb1_user_addr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_array_usr_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb1_array_usr_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb1_array_usr_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb1_array_usr_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb1_loop_again_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb1_config_reg_d0_0_q_reg[0]/D}] [get_pins {mb1_config_reg_d0_0_q_reg[1]/D}]  \
[get_pins {mb1_mb_enable_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb1_input_signals_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb1_input_signals_reg_d0_0_q_reg[1]/D}] [get_pins                             \
mb1_clkgen_pm1_c_0_l1en_reg/D] [get_pins {mb1_pmen_d0_0_q_reg[1]/D}] [get_pins \
{mb1_pmen_d0_0_q_reg[2]/D}] [get_pins mb1_clkgen_c_0_l1en_reg/D] [get_pins     \
{mb0_merged_done_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb0_merged_done_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb0_merged_done_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb0_merged_fail_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb0_merged_fail_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb0_merged_fail_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[8]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[9]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[10]/D}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[11]/D}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[8]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[9]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[10]/D}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[11]/D}] [get_pins                         \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[8]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb0_out_run_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_out_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb0_out_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb0_out_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb0_out_mb_tcu_fail_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_out_mb_tcu_done_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[0]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[1]/D}]      \
[get_pins {mb0_fail_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_fail_reg_d0_0_q_reg[3]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[4]/D}]      \
[get_pins {mb0_fail_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb0_fail_reg_d0_0_q_reg[6]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[7]/D}]      \
[get_pins {mb0_fail_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb0_fail_reg_d0_0_q_reg[9]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[10]/D}]     \
[get_pins {mb0_fail_reg_d0_0_q_reg[11]/D}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[12]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[13]/D}]    \
[get_pins {mb0_fail_reg_d0_0_q_reg[14]/D}] [get_pins                           \
{mb0_done_delay_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_done_delay_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{mb0_done_delay_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{mb0_done_delay_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{mb0_done_delay_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{mb0_run3_transition_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_msb_latch_d0_0_q_reg[0]/D}] [get_pins                                     \
{mb0_marche_element_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_marche_element_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_marche_element_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_marche_element_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb0_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb0_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb0_array_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb0_array_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb0_array_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb0_array_sel_reg_d0_0_q_reg[3]/D}] [get_pins {mb0_cseq_reg_d0_0_q_reg[0]/D}] \
[get_pins {mb0_cseq_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_cseq_reg_d0_0_q_reg[2]/D}] [get_pins {mb0_ctest_reg_d0_0_q_reg[0]/D}]     \
[get_pins {mb0_ctest_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_ctest_reg_d0_0_q_reg[2]/D}] [get_pins {mb0_ctest_reg_d0_0_q_reg[3]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_cntl_reg_d0_0_q_reg[1]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[2]/D}]      \
[get_pins {mb0_cntl_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_cntl_reg_d0_0_q_reg[4]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[5]/D}]      \
[get_pins {mb0_cntl_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb0_cntl_reg_d0_0_q_reg[7]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[8]/D}]      \
[get_pins {mb0_cntl_reg_d0_0_q_reg[9]/D}] [get_pins                            \
{mb0_cntl_reg_d0_0_q_reg[10]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[11]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[12]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[13]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[14]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[15]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[16]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[17]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[18]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[19]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[20]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[21]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[22]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[23]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[24]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[25]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[26]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[27]/D}] [get_pins                           \
{mb0_tlb_cam_intf_out_d0_0_q_reg[0]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[1]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[2]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[3]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[4]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[5]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[6]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[7]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[8]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[9]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[10]/D}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[11]/D}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[12]/D}] [get_pins                             \
{mb0_exp_mhit_delay_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[1]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[2]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[3]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[4]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[5]/D}] [get_pins                                \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[2]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[3]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[4]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[5]/D}] [get_pins                           \
{mb0_exp_cam_hit_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[4]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[5]/D}] [get_pins                             \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[5]/D}] [get_pins                           \
{mb0_exp_used_delay_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_exp_used_delay_d0_0_q_reg[1]/D}] [get_pins                                \
{mb0_exp_used_delay_d0_0_q_reg[2]/D}] [get_pins                                \
{mb0_exp_used_delay_d0_0_q_reg[3]/D}] [get_pins                                \
{mb0_exp_used_delay_d0_0_q_reg[4]/D}] [get_pins                                \
{mb0_exp_valid_delay_d0_0_q_reg[0]/D}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[1]/D}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[2]/D}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[3]/D}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[4]/D}] [get_pins                               \
{mb0_exp_data_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_exp_data_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_exp_data_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_exp_data_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_exp_data_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                            \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                           \
{mb0_data_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_data_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                                \
{mb0_data_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                                \
{mb0_data_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                                \
{mb0_data_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                                \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[5]/D}] [get_pins                             \
{mb0_cam_array_2_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cam_array_2_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cam_array_2_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[4]/D}] [get_pins                             \
{mb0_cam_array_0_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cam_array_0_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cam_array_0_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_array_0_delay_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[0]/D}] [get_pins                  \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[1]/D}] [get_pins                  \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[2]/D}] [get_pins                  \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[1]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[2]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[3]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[4]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[5]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[6]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[7]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[8]/D}] [get_pins                         \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[1]/D}] [get_pins                         \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[2]/D}] [get_pins                         \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[0]/D}] [get_pins                      \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[1]/D}] [get_pins                      \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[2]/D}] [get_pins                      \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_en_reg_d0_0_q_reg[0]/D}] [get_pins                                    \
{mb0_cam_shift_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[0]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[1]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[2]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[3]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[4]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[5]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[6]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[7]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[8]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[9]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[10]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[11]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[12]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[13]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[14]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[15]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[16]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[17]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[18]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[19]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[20]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[21]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[22]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[23]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[24]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[25]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[26]/D}] [get_pins                                 \
{mb0_cambist_delay_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cambist_delay_reg_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cambist_delay_reg_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cambist_delay_reg_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_loop_again_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_config_reg_d0_0_q_reg[0]/D}] [get_pins {mb0_config_reg_d0_0_q_reg[1]/D}]  \
[get_pins {mb0_mb_enable_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb0_input_signals_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_input_signals_reg_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_user_bisi_rd_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_user_bisi_wr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_user_cam_test_select_reg_d0_0_q_reg[0]/D}] [get_pins                      \
{mb0_user_cam_test_select_reg_d0_0_q_reg[1]/D}] [get_pins                      \
{mb0_user_cam_test_select_reg_d0_0_q_reg[2]/D}] [get_pins                      \
{mb0_user_cam_test_select_reg_d0_0_q_reg[3]/D}] [get_pins                      \
{mb0_user_cam_select_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_user_cam_select_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_user_cam_mode_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_ten_n_mode_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_user_loop_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_user_cmpsel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb0_user_cmpsel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb0_user_cmpsel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb0_user_cmpselinc_hold_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb0_user_data_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{mb0_user_data_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb0_user_start_addr_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[2]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[3]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[4]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[5]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[6]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[7]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[8]/D}] [get_pins                           \
{mb0_user_addr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_array_usr_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb0_array_usr_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb0_array_usr_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb0_array_usr_reg_d0_0_q_reg[3]/D}] [get_pins mb0_clkgen_pm1_c_0_l1en_reg/D]  \
[get_pins {mb0_pmen_d0_0_q_reg[1]/D}] [get_pins {mb0_pmen_d0_0_q_reg[2]/D}]    \
[get_pins mb0_clkgen_c_0_l1en_reg/D] [get_pins {dmo_dmo_flop_d0_0_q_reg[0]/D}] \
[get_pins {dmo_dmo_flop_d0_0_q_reg[1]/D}] [get_pins                            \
{dmo_dmo_flop_d0_0_q_reg[2]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[3]/D}]      \
[get_pins {dmo_dmo_flop_d0_0_q_reg[4]/D}] [get_pins                            \
{dmo_dmo_flop_d0_0_q_reg[5]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[6]/D}]      \
[get_pins {dmo_dmo_flop_d0_0_q_reg[7]/D}] [get_pins                            \
{dmo_dmo_flop_d0_0_q_reg[8]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[9]/D}]      \
[get_pins {dmo_dmo_flop_d0_0_q_reg[10]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[11]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[12]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[13]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[14]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[15]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[16]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[17]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[18]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[19]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[20]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[21]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[22]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[23]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[24]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[25]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[26]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[27]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[28]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[29]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[30]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[31]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[32]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[33]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[34]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[35]/D}] [get_pins dmo_dmo_flop_c0_0_l1en_reg/D]       \
[get_pins clk_spc_xcluster_header_clk_stop_del_stg5_q_reg/D] [get_pins         \
clk_spc_xcluster_header_clk_stop_del_stg4_q_reg/D] [get_pins                   \
clk_spc_xcluster_header_clk_stop_del_stg3_q_reg/D] [get_pins                   \
clk_spc_xcluster_header_clk_stop_del_stg2_q_reg/D] [get_pins                   \
clk_spc_xcluster_header_clk_stop_del_stg1_q_reg/D] [get_pins                   \
clk_spc_xcluster_header_clk_stop_syncff_din_stg2_q_reg/D] [get_pins            \
clk_spc_xcluster_header_clk_stop_syncff_din_stg1_q_reg/D] [get_pins            \
clk_spc_xcluster_header_control_sig_sync_wmr_syncff_din_stg2_q_reg/D]          \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_wmr_syncff_din_stg1_q_reg/D]          \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_cmp_slow_sync_en_syncff_din_stg2_q_reg/D] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_cmp_slow_sync_en_syncff_din_stg1_q_reg/D] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_slow_cmp_sync_en_syncff_din_stg2_q_reg/D] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_slow_cmp_sync_en_syncff_din_stg1_q_reg/D] \
[get_pins lb_spare_spare2_flop_q_reg/D] [get_pins                              \
{lb_lb_done_reg_d0_0_q_reg[0]/D}] [get_pins {lb_lb_prpg_reg_d0_0_q_reg[0]/D}]  \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{lb_lb_prpg_reg_d0_0_q_reg[2]/D}] [get_pins {lb_lb_prpg_reg_d0_0_q_reg[3]/D}]  \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{lb_lb_prpg_reg_d0_0_q_reg[5]/D}] [get_pins {lb_lb_prpg_reg_d0_0_q_reg[6]/D}]  \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[7]/D}] [get_pins                          \
{lb_lb_prpg_reg_d0_0_q_reg[8]/D}] [get_pins {lb_lb_prpg_reg_d0_0_q_reg[9]/D}]  \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[10]/D}] [get_pins                         \
{lb_lb_prpg_reg_d0_0_q_reg[11]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[12]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[13]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[14]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[15]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[16]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[17]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[18]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[19]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[20]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[21]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[22]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[23]/D}] [get_pins                                   \
{lb_lb_vectorcnt_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[3]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[4]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[5]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[6]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[7]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[8]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[9]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[10]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[11]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[12]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[13]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[14]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[15]/D}] [get_pins                              \
{lb_lb_vectpgm_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[8]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[9]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[10]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[11]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[12]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[13]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[14]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[15]/D}] [get_pins                                \
{lb_lb_capclkcnt_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[3]/D}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[4]/D}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[8]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[9]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[10]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[11]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[12]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[13]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[14]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[15]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[16]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[17]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[18]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[8]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[9]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[10]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[11]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[12]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[13]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[14]/D}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{lb_lb_control_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{lb_lb_control_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{lb_lb_control_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{lb_lb_control_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{lb_lb_iocmpsyncen_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{msf1_bank0_lat_d0_0_q_reg[0]/D}] [get_pins {msf1_bank0_lat_d0_0_q_reg[1]/D}]  \
[get_pins {msf1_bank0_lat_d0_0_q_reg[2]/D}] [get_pins                          \
msf1_bank0_lat_c0_0_l1en_reg/D] [get_pins {msf0_bank5_lat_d0_0_q_reg[0]/D}]    \
[get_pins {msf0_bank5_lat_d0_0_q_reg[1]/D}] [get_pins                          \
{msf0_bank5_lat_d0_0_q_reg[2]/D}] [get_pins {msf0_bank5_lat_d0_0_q_reg[3]/D}]  \
[get_pins msf0_bank5_lat_c0_0_l1en_reg/D] [get_pins                            \
{msf0_bank4_lat_d0_0_q_reg[0]/D}] [get_pins {msf0_bank4_lat_d0_0_q_reg[1]/D}]  \
[get_pins {msf0_bank4_lat_d0_0_q_reg[2]/D}] [get_pins                          \
{msf0_bank4_lat_d0_0_q_reg[3]/D}] [get_pins msf0_bank4_lat_c0_0_l1en_reg/D]    \
[get_pins {msf0_bank3_lat_d0_0_q_reg[0]/D}] [get_pins                          \
{msf0_bank3_lat_d0_0_q_reg[1]/D}] [get_pins {msf0_bank3_lat_d0_0_q_reg[2]/D}]  \
[get_pins {msf0_bank3_lat_d0_0_q_reg[3]/D}] [get_pins                          \
{msf0_bank3_lat_d0_0_q_reg[4]/D}] [get_pins {msf0_bank3_lat_d0_0_q_reg[5]/D}]  \
[get_pins {msf0_bank3_lat_d0_0_q_reg[6]/D}] [get_pins                          \
{msf0_bank3_lat_d0_0_q_reg[7]/D}] [get_pins {msf0_bank3_lat_d0_0_q_reg[8]/D}]  \
[get_pins {msf0_bank3_lat_d0_0_q_reg[9]/D}] [get_pins                          \
msf0_bank3_lat_c0_0_l1en_reg/D] [get_pins {msf0_bank2_lat_d0_0_q_reg[0]/D}]    \
[get_pins {msf0_bank2_lat_d0_0_q_reg[1]/D}] [get_pins                          \
{msf0_bank2_lat_d0_0_q_reg[2]/D}] [get_pins msf0_bank2_lat_c0_0_l1en_reg/D]    \
[get_pins {msf0_bank1_lat_d0_0_q_reg[0]/D}] [get_pins                          \
{msf0_bank1_lat_d0_0_q_reg[1]/D}] [get_pins {msf0_bank1_lat_d0_0_q_reg[2]/D}]  \
[get_pins {msf0_bank1_lat_d0_0_q_reg[3]/D}] [get_pins                          \
{msf0_bank1_lat_d0_0_q_reg[4]/D}] [get_pins {msf0_bank1_lat_d0_0_q_reg[5]/D}]  \
[get_pins {msf0_bank1_lat_d0_0_q_reg[6]/D}] [get_pins                          \
{msf0_bank1_lat_d0_0_q_reg[7]/D}] [get_pins msf0_bank1_lat_c0_0_l1en_reg/D]    \
[get_pins {msf0_bank0_lat_d0_0_q_reg[0]/D}] [get_pins                          \
{msf0_bank0_lat_d0_0_q_reg[1]/D}] [get_pins {msf0_bank0_lat_d0_0_q_reg[2]/D}]  \
[get_pins {msf0_bank0_lat_d0_0_q_reg[3]/D}] [get_pins                          \
{msf0_bank0_lat_d0_0_q_reg[4]/D}] [get_pins {msf0_bank0_lat_d0_0_q_reg[5]/D}]  \
[get_pins {msf0_bank0_lat_d0_0_q_reg[6]/D}] [get_pins                          \
{msf0_bank0_lat_d0_0_q_reg[7]/D}] [get_pins msf0_bank0_lat_c0_0_l1en_reg/D]]
group_path -name reg2out  -from [list [get_pins {mb2_out_save_restore_mb_arrays_reg_d0_0_q_reg[0]/CP}]  \
[get_pins {mb2_out_save_restore_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[11]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[12]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[13]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[14]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[15]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[16]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[17]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[18]/CP}] [get_pins                     \
{mb2_i_delay_4th_d0_0_q_reg[0]/CP}] [get_pins                                  \
{mb2_i_delay_4th_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb2_i_delay_4th_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb2_i_delay_4th_d0_0_q_reg[3]/CP}] [get_pins                                  \
{mb2_out_mb_tcu_fail_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb2_out_mb_tcu_done_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb2_out_rd_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb2_out_rd_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb2_out_wr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb2_out_wr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[8]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[9]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb2_out_run_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb2_done_delay_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb2_done_delay_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb2_done_delay_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb2_done_delay_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb2_done_delay_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb2_run3_transition_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb2_msb_latch_d0_0_q_reg[0]/CP}] [get_pins {mb2_fail_reg_d0_0_q_reg[0]/CP}]   \
[get_pins {mb2_fail_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb2_fail_reg_d0_0_q_reg[2]/CP}] [get_pins {mb2_fail_reg_d0_0_q_reg[3]/CP}]    \
[get_pins {mb2_fail_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb2_fail_reg_d0_0_q_reg[5]/CP}] [get_pins                                     \
{mb2_marche_element_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_marche_element_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb2_marche_element_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb2_marche_element_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb2_array_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb2_array_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb2_array_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb2_array_sel_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb2_cntl_reg_d0_0_q_reg[0]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[3]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[4]/CP}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[6]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[7]/CP}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[9]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[10]/CP}]   \
[get_pins {mb2_cntl_reg_d0_0_q_reg[11]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[12]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[13]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[14]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[15]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[16]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[17]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[18]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[19]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[20]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[21]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[22]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[23]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[24]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[25]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[26]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[27]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[28]/CP}]  \
[get_pins {mb2_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb2_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb2_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb2_user_bisi_rd_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb2_user_bisi_wr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb2_ten_n_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb2_user_loop_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_user_cmpsel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb2_user_cmpsel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb2_user_cmpsel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb2_user_cmpselinc_hold_reg_d0_0_q_reg[0]/CP}] [get_pins                      \
{mb2_user_data_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{mb2_user_data_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[9]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[9]/CP}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[9]/CP}] [get_pins                          \
{mb2_user_addr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_array_usr_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb2_array_usr_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb2_array_usr_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb2_array_usr_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb2_loop_again_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb2_config_reg_d0_0_q_reg[0]/CP}] [get_pins                                   \
{mb2_config_reg_d0_0_q_reg[1]/CP}] [get_pins                                   \
{mb2_mb_enable_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb2_input_signals_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb2_input_signals_reg_d0_0_q_reg[1]/CP}] [get_pins                            \
mb2_clkgen_pm1_c_0_l1en_reg/CPN] [get_pins {mb2_pmen_d0_0_q_reg[1]/CP}]        \
[get_pins {mb2_pmen_d0_0_q_reg[2]/CP}] [get_pins mb2_clkgen_c_0_l1en_reg/CPN]  \
[get_pins {mb1_out_rd_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins               \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                         \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb1_out_run_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb1_out_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb1_out_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb1_out_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb1_out_cmp_sel_reg_d0_0_q_reg[3]/CP}] [get_pins                              \
{mb1_out_mb_tcu_fail_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb1_out_mb_tcu_done_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb1_fail_reg_d0_0_q_reg[0]/CP}] [get_pins {mb1_fail_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb1_fail_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_fail_reg_d0_0_q_reg[3]/CP}] [get_pins {mb1_fail_reg_d0_0_q_reg[4]/CP}]    \
[get_pins {mb1_fail_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb1_fail_reg_d0_0_q_reg[6]/CP}] [get_pins                                     \
{mb1_done_delay_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb1_done_delay_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb1_done_delay_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb1_done_delay_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb1_done_delay_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb1_run3_transition_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb1_msb_latch_d0_0_q_reg[0]/CP}] [get_pins                                    \
{mb1_marche_element_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_marche_element_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb1_marche_element_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_marche_element_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb1_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                  \
{mb1_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb1_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb1_array_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb1_array_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb1_array_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb1_array_sel_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb1_cntl_reg_d0_0_q_reg[0]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[3]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[4]/CP}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[6]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[7]/CP}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[9]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[10]/CP}]   \
[get_pins {mb1_cntl_reg_d0_0_q_reg[11]/CP}] [get_pins                          \
{mb1_cntl_reg_d0_0_q_reg[12]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[13]/CP}]  \
[get_pins {mb1_cntl_reg_d0_0_q_reg[14]/CP}] [get_pins                          \
{mb1_cntl_reg_d0_0_q_reg[15]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[16]/CP}]  \
[get_pins {mb1_cntl_reg_d0_0_q_reg[17]/CP}] [get_pins                          \
{mb1_cntl_reg_d0_0_q_reg[18]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[19]/CP}]  \
[get_pins {mb1_cntl_reg_d0_0_q_reg[20]/CP}] [get_pins                          \
{mb1_cntl_reg_d0_0_q_reg[21]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[22]/CP}]  \
[get_pins {mb1_cntl_reg_d0_0_q_reg[23]/CP}] [get_pins                          \
{mb1_user_bisi_rd_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb1_user_bisi_wr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb1_ten_n_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb1_user_loop_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_user_cmpsel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb1_user_cmpsel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb1_user_cmpsel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb1_user_cmpselinc_hold_reg_d0_0_q_reg[0]/CP}] [get_pins                      \
{mb1_user_data_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{mb1_user_data_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb1_user_start_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb1_user_start_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb1_user_start_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb1_user_start_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb1_user_addr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_array_usr_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb1_array_usr_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb1_array_usr_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb1_array_usr_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb1_loop_again_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb1_config_reg_d0_0_q_reg[0]/CP}] [get_pins                                   \
{mb1_config_reg_d0_0_q_reg[1]/CP}] [get_pins                                   \
{mb1_mb_enable_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb1_input_signals_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb1_input_signals_reg_d0_0_q_reg[1]/CP}] [get_pins                            \
mb1_clkgen_pm1_c_0_l1en_reg/CPN] [get_pins {mb1_pmen_d0_0_q_reg[1]/CP}]        \
[get_pins {mb1_pmen_d0_0_q_reg[2]/CP}] [get_pins mb1_clkgen_c_0_l1en_reg/CPN]  \
[get_pins {mb0_merged_done_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_merged_done_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb0_merged_done_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb0_merged_fail_d0_0_q_reg[0]/CP}] [get_pins                                  \
{mb0_merged_fail_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb0_merged_fail_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[8]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[9]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[10]/CP}] [get_pins                        \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[11]/CP}] [get_pins                        \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[8]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[9]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[10]/CP}] [get_pins                        \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[11]/CP}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[8]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb0_out_run_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_out_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb0_out_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb0_out_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb0_out_mb_tcu_fail_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_out_mb_tcu_done_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_fail_reg_d0_0_q_reg[0]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb0_fail_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[3]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[4]/CP}]    \
[get_pins {mb0_fail_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[6]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[7]/CP}]    \
[get_pins {mb0_fail_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[9]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[10]/CP}]   \
[get_pins {mb0_fail_reg_d0_0_q_reg[11]/CP}] [get_pins                          \
{mb0_fail_reg_d0_0_q_reg[12]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[13]/CP}]  \
[get_pins {mb0_fail_reg_d0_0_q_reg[14]/CP}] [get_pins                          \
{mb0_done_delay_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_done_delay_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb0_done_delay_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb0_done_delay_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb0_done_delay_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb0_run3_transition_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_msb_latch_d0_0_q_reg[0]/CP}] [get_pins                                    \
{mb0_marche_element_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_marche_element_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_marche_element_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_marche_element_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                  \
{mb0_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb0_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb0_array_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_array_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb0_array_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb0_array_sel_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb0_cseq_reg_d0_0_q_reg[0]/CP}] [get_pins {mb0_cseq_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb0_cseq_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_ctest_reg_d0_0_q_reg[0]/CP}] [get_pins {mb0_ctest_reg_d0_0_q_reg[1]/CP}]  \
[get_pins {mb0_ctest_reg_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_ctest_reg_d0_0_q_reg[3]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[0]/CP}]   \
[get_pins {mb0_cntl_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[2]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[3]/CP}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[5]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[6]/CP}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[8]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[9]/CP}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[10]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[11]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[12]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[13]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[14]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[15]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[16]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[17]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[18]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[19]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[20]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[21]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[22]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[23]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[24]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[25]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[26]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[27]/CP}]  \
[get_pins {mb0_tlb_cam_intf_out_d0_0_q_reg[0]/CP}] [get_pins                   \
{mb0_tlb_cam_intf_out_d0_0_q_reg[1]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[2]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[3]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[4]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[5]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[6]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[7]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[8]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[9]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[10]/CP}] [get_pins                            \
{mb0_tlb_cam_intf_out_d0_0_q_reg[11]/CP}] [get_pins                            \
{mb0_tlb_cam_intf_out_d0_0_q_reg[12]/CP}] [get_pins                            \
{mb0_exp_mhit_delay_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[5]/CP}] [get_pins                               \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[5]/CP}] [get_pins                          \
{mb0_exp_cam_hit_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[4]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[5]/CP}] [get_pins                            \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[5]/CP}] [get_pins                          \
{mb0_exp_used_delay_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_exp_used_delay_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb0_exp_used_delay_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb0_exp_used_delay_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb0_exp_used_delay_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb0_exp_valid_delay_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb0_exp_valid_delay_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb0_exp_valid_delay_d0_0_q_reg[3]/CP}] [get_pins                              \
{mb0_exp_valid_delay_d0_0_q_reg[4]/CP}] [get_pins                              \
{mb0_exp_data_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_exp_data_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_exp_data_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_exp_data_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_exp_data_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb0_data_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_data_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb0_data_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb0_data_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb0_data_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[5]/CP}] [get_pins                            \
{mb0_cam_array_2_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cam_array_2_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cam_array_2_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[4]/CP}] [get_pins                            \
{mb0_cam_array_0_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cam_array_0_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cam_array_0_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_array_0_delay_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[0]/CP}] [get_pins                 \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[1]/CP}] [get_pins                 \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[2]/CP}] [get_pins                 \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[1]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[2]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[3]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[4]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[5]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[6]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[7]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[8]/CP}] [get_pins                        \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[1]/CP}] [get_pins                        \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[2]/CP}] [get_pins                        \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[0]/CP}] [get_pins                     \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[1]/CP}] [get_pins                     \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[2]/CP}] [get_pins                     \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_en_reg_d0_0_q_reg[0]/CP}] [get_pins                                   \
{mb0_cam_shift_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[0]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[1]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[2]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[3]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[4]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[5]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[6]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[7]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[8]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[9]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[10]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[11]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[12]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[13]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[14]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[15]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[16]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[17]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[18]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[19]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[20]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[21]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[22]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[23]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[24]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[25]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[26]/CP}] [get_pins                                \
{mb0_cambist_delay_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cambist_delay_reg_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cambist_delay_reg_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cambist_delay_reg_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_loop_again_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_config_reg_d0_0_q_reg[0]/CP}] [get_pins                                   \
{mb0_config_reg_d0_0_q_reg[1]/CP}] [get_pins                                   \
{mb0_mb_enable_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_input_signals_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_input_signals_reg_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_user_bisi_rd_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_user_bisi_wr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_user_cam_test_select_reg_d0_0_q_reg[0]/CP}] [get_pins                     \
{mb0_user_cam_test_select_reg_d0_0_q_reg[1]/CP}] [get_pins                     \
{mb0_user_cam_test_select_reg_d0_0_q_reg[2]/CP}] [get_pins                     \
{mb0_user_cam_test_select_reg_d0_0_q_reg[3]/CP}] [get_pins                     \
{mb0_user_cam_select_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_user_cam_select_reg_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_user_cam_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_ten_n_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_user_loop_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_user_cmpsel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb0_user_cmpsel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb0_user_cmpsel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb0_user_cmpselinc_hold_reg_d0_0_q_reg[0]/CP}] [get_pins                      \
{mb0_user_data_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{mb0_user_data_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                          \
{mb0_user_addr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_array_usr_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_array_usr_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb0_array_usr_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb0_array_usr_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
mb0_clkgen_pm1_c_0_l1en_reg/CPN] [get_pins {mb0_pmen_d0_0_q_reg[1]/CP}]        \
[get_pins {mb0_pmen_d0_0_q_reg[2]/CP}] [get_pins mb0_clkgen_c_0_l1en_reg/CPN]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[0]/CP}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[1]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[2]/CP}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[3]/CP}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[4]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[5]/CP}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[6]/CP}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[7]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[8]/CP}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[9]/CP}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[10]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[11]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[12]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[13]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[14]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[15]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[16]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[17]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[18]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[19]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[20]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[21]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[22]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[23]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[24]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[25]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[26]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[27]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[28]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[29]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[30]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[31]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[32]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[33]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[34]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[35]/CP}]  \
[get_pins dmo_dmo_flop_c0_0_l1en_reg/CPN] [get_pins                            \
clk_spc_xcluster_header_clk_stop_del_stg5_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stop_del_stg4_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stop_del_stg3_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stopper_blatch_m_reg/EN] [get_pins                 \
clk_spc_xcluster_header_clk_stop_del_stg2_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stop_del_stg1_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stop_syncff_din_stg2_q_reg/CP] [get_pins           \
clk_spc_xcluster_header_clk_stop_syncff_blatch_m_reg/EN] [get_pins             \
clk_spc_xcluster_header_clk_stop_syncff_din_stg1_q_reg/CP] [get_pins           \
clk_spc_xcluster_header_control_sig_sync_wmr_syncff_din_stg2_q_reg/CP]         \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_wmr_syncff_din_stg1_q_reg/CP]         \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_cmp_slow_sync_en_syncff_din_stg2_q_reg/CP] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_cmp_slow_sync_en_syncff_din_stg1_q_reg/CP] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_slow_cmp_sync_en_syncff_din_stg2_q_reg/CP] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_slow_cmp_sync_en_syncff_din_stg1_q_reg/CP] \
[get_pins clk_spc_xcluster_header_l1_header_l1en_reg/E] [get_pins              \
clk_spc_xcluster_header_gclk_header_l1en_reg/EN] [get_pins                     \
lb_spare_spare2_flop_q_reg/CP] [get_pins {lb_lb_done_reg_d0_0_q_reg[0]/CP}]    \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{lb_lb_prpg_reg_d0_0_q_reg[1]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[2]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[3]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[4]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[5]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[6]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[7]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[8]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[9]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[10]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[11]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[12]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[13]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[14]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[15]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[16]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[17]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[18]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[19]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[20]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[21]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[22]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[23]/CP}] [get_pins                                  \
{lb_lb_vectorcnt_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[3]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[4]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[5]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[6]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[7]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[8]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[9]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[10]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[11]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[12]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[13]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[14]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[15]/CP}] [get_pins                             \
{lb_lb_vectpgm_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[8]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[9]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[10]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[11]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[12]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[13]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[14]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[15]/CP}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{lb_lb_capclkcnt_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{lb_lb_capclkcnt_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{lb_lb_capclkcnt_reg_d0_0_q_reg[3]/CP}] [get_pins                              \
{lb_lb_capclkcnt_reg_d0_0_q_reg[4]/CP}] [get_pins                              \
{lb_lb_shftcnt_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[8]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[9]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[10]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[11]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[12]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[13]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[14]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[15]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[16]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[17]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[18]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[8]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[9]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[10]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[11]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[12]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[13]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[14]/CP}] [get_pins                               \
{lb_lb_control_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{lb_lb_iocmpsyncen_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{msf1_bank0_lat_d0_0_q_reg[0]/CP}] [get_pins                                   \
{msf1_bank0_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf1_bank0_lat_d0_0_q_reg[2]/CP}] [get_pins msf1_bank0_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank5_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank5_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank5_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank5_lat_d0_0_q_reg[3]/CP}] [get_pins msf0_bank5_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank4_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank4_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank4_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank4_lat_d0_0_q_reg[3]/CP}] [get_pins msf0_bank4_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank3_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank3_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[3]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[4]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[5]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[6]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[7]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[8]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[9]/CP}] [get_pins msf0_bank3_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank2_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank2_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank2_lat_d0_0_q_reg[2]/CP}] [get_pins msf0_bank2_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank1_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank1_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[3]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[4]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[5]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[6]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[7]/CP}] [get_pins msf0_bank1_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank0_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank0_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[3]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[4]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[5]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[6]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[7]/CP}] [get_pins                                   \
msf0_bank0_lat_c0_0_l1en_reg/CPN]]  -to [list [get_ports {scan_out[1]}] [get_ports {scan_out[0]}] [get_ports      \
spc_shscan_scan_out] [get_ports spc_mbist_fail] [get_ports spc_mbist_done]     \
[get_ports spc_tcu_mbist_scan_out] [get_ports spc_ss_complete] [get_ports      \
spc_hardstop_request] [get_ports spc_softstop_request] [get_ports              \
spc_trigger_pulse] [get_ports spc_efu_fuse_ddata] [get_ports                   \
spc_efu_fuse_idata] [get_ports spc_efu_fuse_ixfer_en] [get_ports               \
spc_efu_fuse_dxfer_en] [get_ports spc_tcu_lbist_done] [get_ports               \
spc_tcu_lbist_scan_out] [get_ports {dmo_dout[35]}] [get_ports {dmo_dout[34]}]  \
[get_ports {dmo_dout[33]}] [get_ports {dmo_dout[32]}] [get_ports               \
{dmo_dout[31]}] [get_ports {dmo_dout[30]}] [get_ports {dmo_dout[29]}]          \
[get_ports {dmo_dout[28]}] [get_ports {dmo_dout[27]}] [get_ports               \
{dmo_dout[26]}] [get_ports {dmo_dout[25]}] [get_ports {dmo_dout[24]}]          \
[get_ports {dmo_dout[23]}] [get_ports {dmo_dout[22]}] [get_ports               \
{dmo_dout[21]}] [get_ports {dmo_dout[20]}] [get_ports {dmo_dout[19]}]          \
[get_ports {dmo_dout[18]}] [get_ports {dmo_dout[17]}] [get_ports               \
{dmo_dout[16]}] [get_ports {dmo_dout[15]}] [get_ports {dmo_dout[14]}]          \
[get_ports {dmo_dout[13]}] [get_ports {dmo_dout[12]}] [get_ports               \
{dmo_dout[11]}] [get_ports {dmo_dout[10]}] [get_ports {dmo_dout[9]}]           \
[get_ports {dmo_dout[8]}] [get_ports {dmo_dout[7]}] [get_ports {dmo_dout[6]}]  \
[get_ports {dmo_dout[5]}] [get_ports {dmo_dout[4]}] [get_ports {dmo_dout[3]}]  \
[get_ports {dmo_dout[2]}] [get_ports {dmo_dout[1]}] [get_ports {dmo_dout[0]}]  \
[get_ports {spc_pcx_req_pq[8]}] [get_ports {spc_pcx_req_pq[7]}] [get_ports     \
{spc_pcx_req_pq[6]}] [get_ports {spc_pcx_req_pq[5]}] [get_ports                \
{spc_pcx_req_pq[4]}] [get_ports {spc_pcx_req_pq[3]}] [get_ports                \
{spc_pcx_req_pq[2]}] [get_ports {spc_pcx_req_pq[1]}] [get_ports                \
{spc_pcx_req_pq[0]}] [get_ports {spc_pcx_atm_pq[8]}] [get_ports                \
{spc_pcx_atm_pq[7]}] [get_ports {spc_pcx_atm_pq[6]}] [get_ports                \
{spc_pcx_atm_pq[5]}] [get_ports {spc_pcx_atm_pq[4]}] [get_ports                \
{spc_pcx_atm_pq[3]}] [get_ports {spc_pcx_atm_pq[2]}] [get_ports                \
{spc_pcx_atm_pq[1]}] [get_ports {spc_pcx_atm_pq[0]}] [get_ports                \
{spc_pcx_data_pa[129]}] [get_ports {spc_pcx_data_pa[128]}] [get_ports          \
{spc_pcx_data_pa[127]}] [get_ports {spc_pcx_data_pa[126]}] [get_ports          \
{spc_pcx_data_pa[125]}] [get_ports {spc_pcx_data_pa[124]}] [get_ports          \
{spc_pcx_data_pa[123]}] [get_ports {spc_pcx_data_pa[122]}] [get_ports          \
{spc_pcx_data_pa[121]}] [get_ports {spc_pcx_data_pa[120]}] [get_ports          \
{spc_pcx_data_pa[119]}] [get_ports {spc_pcx_data_pa[118]}] [get_ports          \
{spc_pcx_data_pa[117]}] [get_ports {spc_pcx_data_pa[116]}] [get_ports          \
{spc_pcx_data_pa[115]}] [get_ports {spc_pcx_data_pa[114]}] [get_ports          \
{spc_pcx_data_pa[113]}] [get_ports {spc_pcx_data_pa[112]}] [get_ports          \
{spc_pcx_data_pa[111]}] [get_ports {spc_pcx_data_pa[110]}] [get_ports          \
{spc_pcx_data_pa[109]}] [get_ports {spc_pcx_data_pa[108]}] [get_ports          \
{spc_pcx_data_pa[107]}] [get_ports {spc_pcx_data_pa[106]}] [get_ports          \
{spc_pcx_data_pa[105]}] [get_ports {spc_pcx_data_pa[104]}] [get_ports          \
{spc_pcx_data_pa[103]}] [get_ports {spc_pcx_data_pa[102]}] [get_ports          \
{spc_pcx_data_pa[101]}] [get_ports {spc_pcx_data_pa[100]}] [get_ports          \
{spc_pcx_data_pa[99]}] [get_ports {spc_pcx_data_pa[98]}] [get_ports            \
{spc_pcx_data_pa[97]}] [get_ports {spc_pcx_data_pa[96]}] [get_ports            \
{spc_pcx_data_pa[95]}] [get_ports {spc_pcx_data_pa[94]}] [get_ports            \
{spc_pcx_data_pa[93]}] [get_ports {spc_pcx_data_pa[92]}] [get_ports            \
{spc_pcx_data_pa[91]}] [get_ports {spc_pcx_data_pa[90]}] [get_ports            \
{spc_pcx_data_pa[89]}] [get_ports {spc_pcx_data_pa[88]}] [get_ports            \
{spc_pcx_data_pa[87]}] [get_ports {spc_pcx_data_pa[86]}] [get_ports            \
{spc_pcx_data_pa[85]}] [get_ports {spc_pcx_data_pa[84]}] [get_ports            \
{spc_pcx_data_pa[83]}] [get_ports {spc_pcx_data_pa[82]}] [get_ports            \
{spc_pcx_data_pa[81]}] [get_ports {spc_pcx_data_pa[80]}] [get_ports            \
{spc_pcx_data_pa[79]}] [get_ports {spc_pcx_data_pa[78]}] [get_ports            \
{spc_pcx_data_pa[77]}] [get_ports {spc_pcx_data_pa[76]}] [get_ports            \
{spc_pcx_data_pa[75]}] [get_ports {spc_pcx_data_pa[74]}] [get_ports            \
{spc_pcx_data_pa[73]}] [get_ports {spc_pcx_data_pa[72]}] [get_ports            \
{spc_pcx_data_pa[71]}] [get_ports {spc_pcx_data_pa[70]}] [get_ports            \
{spc_pcx_data_pa[69]}] [get_ports {spc_pcx_data_pa[68]}] [get_ports            \
{spc_pcx_data_pa[67]}] [get_ports {spc_pcx_data_pa[66]}] [get_ports            \
{spc_pcx_data_pa[65]}] [get_ports {spc_pcx_data_pa[64]}] [get_ports            \
{spc_pcx_data_pa[63]}] [get_ports {spc_pcx_data_pa[62]}] [get_ports            \
{spc_pcx_data_pa[61]}] [get_ports {spc_pcx_data_pa[60]}] [get_ports            \
{spc_pcx_data_pa[59]}] [get_ports {spc_pcx_data_pa[58]}] [get_ports            \
{spc_pcx_data_pa[57]}] [get_ports {spc_pcx_data_pa[56]}] [get_ports            \
{spc_pcx_data_pa[55]}] [get_ports {spc_pcx_data_pa[54]}] [get_ports            \
{spc_pcx_data_pa[53]}] [get_ports {spc_pcx_data_pa[52]}] [get_ports            \
{spc_pcx_data_pa[51]}] [get_ports {spc_pcx_data_pa[50]}] [get_ports            \
{spc_pcx_data_pa[49]}] [get_ports {spc_pcx_data_pa[48]}] [get_ports            \
{spc_pcx_data_pa[47]}] [get_ports {spc_pcx_data_pa[46]}] [get_ports            \
{spc_pcx_data_pa[45]}] [get_ports {spc_pcx_data_pa[44]}] [get_ports            \
{spc_pcx_data_pa[43]}] [get_ports {spc_pcx_data_pa[42]}] [get_ports            \
{spc_pcx_data_pa[41]}] [get_ports {spc_pcx_data_pa[40]}] [get_ports            \
{spc_pcx_data_pa[39]}] [get_ports {spc_pcx_data_pa[38]}] [get_ports            \
{spc_pcx_data_pa[37]}] [get_ports {spc_pcx_data_pa[36]}] [get_ports            \
{spc_pcx_data_pa[35]}] [get_ports {spc_pcx_data_pa[34]}] [get_ports            \
{spc_pcx_data_pa[33]}] [get_ports {spc_pcx_data_pa[32]}] [get_ports            \
{spc_pcx_data_pa[31]}] [get_ports {spc_pcx_data_pa[30]}] [get_ports            \
{spc_pcx_data_pa[29]}] [get_ports {spc_pcx_data_pa[28]}] [get_ports            \
{spc_pcx_data_pa[27]}] [get_ports {spc_pcx_data_pa[26]}] [get_ports            \
{spc_pcx_data_pa[25]}] [get_ports {spc_pcx_data_pa[24]}] [get_ports            \
{spc_pcx_data_pa[23]}] [get_ports {spc_pcx_data_pa[22]}] [get_ports            \
{spc_pcx_data_pa[21]}] [get_ports {spc_pcx_data_pa[20]}] [get_ports            \
{spc_pcx_data_pa[19]}] [get_ports {spc_pcx_data_pa[18]}] [get_ports            \
{spc_pcx_data_pa[17]}] [get_ports {spc_pcx_data_pa[16]}] [get_ports            \
{spc_pcx_data_pa[15]}] [get_ports {spc_pcx_data_pa[14]}] [get_ports            \
{spc_pcx_data_pa[13]}] [get_ports {spc_pcx_data_pa[12]}] [get_ports            \
{spc_pcx_data_pa[11]}] [get_ports {spc_pcx_data_pa[10]}] [get_ports            \
{spc_pcx_data_pa[9]}] [get_ports {spc_pcx_data_pa[8]}] [get_ports              \
{spc_pcx_data_pa[7]}] [get_ports {spc_pcx_data_pa[6]}] [get_ports              \
{spc_pcx_data_pa[5]}] [get_ports {spc_pcx_data_pa[4]}] [get_ports              \
{spc_pcx_data_pa[3]}] [get_ports {spc_pcx_data_pa[2]}] [get_ports              \
{spc_pcx_data_pa[1]}] [get_ports {spc_pcx_data_pa[0]}] [get_ports              \
{spc_core_running_status[7]}] [get_ports {spc_core_running_status[6]}]         \
[get_ports {spc_core_running_status[5]}] [get_ports                            \
{spc_core_running_status[4]}] [get_ports {spc_core_running_status[3]}]         \
[get_ports {spc_core_running_status[2]}] [get_ports                            \
{spc_core_running_status[1]}] [get_ports {spc_core_running_status[0]}]         \
[get_ports {spc_dbg_instr_cmt_grp0[1]}] [get_ports                             \
{spc_dbg_instr_cmt_grp0[0]}] [get_ports {spc_dbg_instr_cmt_grp1[1]}]           \
[get_ports {spc_dbg_instr_cmt_grp1[0]}]]
group_path -name reg2reg  -from [list [get_pins {mb2_out_save_restore_mb_arrays_reg_d0_0_q_reg[0]/CP}]  \
[get_pins {mb2_out_save_restore_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[11]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[12]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[13]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[14]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[15]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[16]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[17]/CP}] [get_pins                     \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[18]/CP}] [get_pins                     \
{mb2_i_delay_4th_d0_0_q_reg[0]/CP}] [get_pins                                  \
{mb2_i_delay_4th_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb2_i_delay_4th_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb2_i_delay_4th_d0_0_q_reg[3]/CP}] [get_pins                                  \
{mb2_out_mb_tcu_fail_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb2_out_mb_tcu_done_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb2_out_rd_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb2_out_rd_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb2_out_wr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb2_out_wr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[8]/CP}] [get_pins                       \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[9]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb2_out_run_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb2_done_delay_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb2_done_delay_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb2_done_delay_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb2_done_delay_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb2_done_delay_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb2_run3_transition_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb2_msb_latch_d0_0_q_reg[0]/CP}] [get_pins {mb2_fail_reg_d0_0_q_reg[0]/CP}]   \
[get_pins {mb2_fail_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb2_fail_reg_d0_0_q_reg[2]/CP}] [get_pins {mb2_fail_reg_d0_0_q_reg[3]/CP}]    \
[get_pins {mb2_fail_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb2_fail_reg_d0_0_q_reg[5]/CP}] [get_pins                                     \
{mb2_marche_element_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_marche_element_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb2_marche_element_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb2_marche_element_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb2_array_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb2_array_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb2_array_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb2_array_sel_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb2_cntl_reg_d0_0_q_reg[0]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[3]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[4]/CP}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[6]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[7]/CP}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[9]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[10]/CP}]   \
[get_pins {mb2_cntl_reg_d0_0_q_reg[11]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[12]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[13]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[14]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[15]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[16]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[17]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[18]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[19]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[20]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[21]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[22]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[23]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[24]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[25]/CP}]  \
[get_pins {mb2_cntl_reg_d0_0_q_reg[26]/CP}] [get_pins                          \
{mb2_cntl_reg_d0_0_q_reg[27]/CP}] [get_pins {mb2_cntl_reg_d0_0_q_reg[28]/CP}]  \
[get_pins {mb2_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb2_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb2_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb2_user_bisi_rd_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb2_user_bisi_wr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb2_ten_n_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb2_user_loop_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_user_cmpsel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb2_user_cmpsel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb2_user_cmpsel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb2_user_cmpselinc_hold_reg_d0_0_q_reg[0]/CP}] [get_pins                      \
{mb2_user_data_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{mb2_user_data_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{mb2_user_data_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb2_user_incr_addr_reg_d0_0_q_reg[9]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb2_user_stop_addr_reg_d0_0_q_reg[9]/CP}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                          \
{mb2_user_start_addr_reg_d0_0_q_reg[9]/CP}] [get_pins                          \
{mb2_user_addr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb2_array_usr_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb2_array_usr_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb2_array_usr_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb2_array_usr_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb2_loop_again_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb2_config_reg_d0_0_q_reg[0]/CP}] [get_pins                                   \
{mb2_config_reg_d0_0_q_reg[1]/CP}] [get_pins                                   \
{mb2_mb_enable_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb2_input_signals_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb2_input_signals_reg_d0_0_q_reg[1]/CP}] [get_pins                            \
mb2_clkgen_pm1_c_0_l1en_reg/CPN] [get_pins {mb2_pmen_d0_0_q_reg[1]/CP}]        \
[get_pins {mb2_pmen_d0_0_q_reg[2]/CP}] [get_pins mb2_clkgen_c_0_l1en_reg/CPN]  \
[get_pins {mb1_out_rd_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins               \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                         \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                         \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                         \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb1_out_run_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb1_out_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb1_out_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb1_out_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb1_out_cmp_sel_reg_d0_0_q_reg[3]/CP}] [get_pins                              \
{mb1_out_mb_tcu_fail_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb1_out_mb_tcu_done_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb1_fail_reg_d0_0_q_reg[0]/CP}] [get_pins {mb1_fail_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb1_fail_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_fail_reg_d0_0_q_reg[3]/CP}] [get_pins {mb1_fail_reg_d0_0_q_reg[4]/CP}]    \
[get_pins {mb1_fail_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb1_fail_reg_d0_0_q_reg[6]/CP}] [get_pins                                     \
{mb1_done_delay_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb1_done_delay_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb1_done_delay_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb1_done_delay_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb1_done_delay_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb1_run3_transition_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb1_msb_latch_d0_0_q_reg[0]/CP}] [get_pins                                    \
{mb1_marche_element_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_marche_element_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb1_marche_element_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_marche_element_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb1_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                  \
{mb1_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb1_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb1_array_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb1_array_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb1_array_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb1_array_sel_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb1_cntl_reg_d0_0_q_reg[0]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[3]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[4]/CP}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[6]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[7]/CP}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[9]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[10]/CP}]   \
[get_pins {mb1_cntl_reg_d0_0_q_reg[11]/CP}] [get_pins                          \
{mb1_cntl_reg_d0_0_q_reg[12]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[13]/CP}]  \
[get_pins {mb1_cntl_reg_d0_0_q_reg[14]/CP}] [get_pins                          \
{mb1_cntl_reg_d0_0_q_reg[15]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[16]/CP}]  \
[get_pins {mb1_cntl_reg_d0_0_q_reg[17]/CP}] [get_pins                          \
{mb1_cntl_reg_d0_0_q_reg[18]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[19]/CP}]  \
[get_pins {mb1_cntl_reg_d0_0_q_reg[20]/CP}] [get_pins                          \
{mb1_cntl_reg_d0_0_q_reg[21]/CP}] [get_pins {mb1_cntl_reg_d0_0_q_reg[22]/CP}]  \
[get_pins {mb1_cntl_reg_d0_0_q_reg[23]/CP}] [get_pins                          \
{mb1_user_bisi_rd_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb1_user_bisi_wr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb1_ten_n_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb1_user_loop_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_user_cmpsel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb1_user_cmpsel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb1_user_cmpsel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb1_user_cmpselinc_hold_reg_d0_0_q_reg[0]/CP}] [get_pins                      \
{mb1_user_data_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{mb1_user_data_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{mb1_user_data_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb1_user_incr_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb1_user_stop_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb1_user_start_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb1_user_start_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb1_user_start_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb1_user_start_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb1_user_addr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb1_array_usr_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb1_array_usr_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb1_array_usr_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb1_array_usr_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb1_loop_again_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb1_config_reg_d0_0_q_reg[0]/CP}] [get_pins                                   \
{mb1_config_reg_d0_0_q_reg[1]/CP}] [get_pins                                   \
{mb1_mb_enable_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb1_input_signals_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb1_input_signals_reg_d0_0_q_reg[1]/CP}] [get_pins                            \
mb1_clkgen_pm1_c_0_l1en_reg/CPN] [get_pins {mb1_pmen_d0_0_q_reg[1]/CP}]        \
[get_pins {mb1_pmen_d0_0_q_reg[2]/CP}] [get_pins mb1_clkgen_c_0_l1en_reg/CPN]  \
[get_pins {mb0_merged_done_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_merged_done_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb0_merged_done_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb0_merged_fail_d0_0_q_reg[0]/CP}] [get_pins                                  \
{mb0_merged_fail_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb0_merged_fail_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[8]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[9]/CP}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[10]/CP}] [get_pins                        \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[11]/CP}] [get_pins                        \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[8]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[9]/CP}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[10]/CP}] [get_pins                        \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[11]/CP}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[8]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[1]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[2]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[3]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[4]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[5]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[6]/CP}] [get_pins                       \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[7]/CP}] [get_pins                       \
{mb0_out_run_mb_arrays_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_out_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb0_out_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb0_out_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb0_out_mb_tcu_fail_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_out_mb_tcu_done_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_fail_reg_d0_0_q_reg[0]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb0_fail_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[3]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[4]/CP}]    \
[get_pins {mb0_fail_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[6]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[7]/CP}]    \
[get_pins {mb0_fail_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[9]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[10]/CP}]   \
[get_pins {mb0_fail_reg_d0_0_q_reg[11]/CP}] [get_pins                          \
{mb0_fail_reg_d0_0_q_reg[12]/CP}] [get_pins {mb0_fail_reg_d0_0_q_reg[13]/CP}]  \
[get_pins {mb0_fail_reg_d0_0_q_reg[14]/CP}] [get_pins                          \
{mb0_done_delay_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_done_delay_reg_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb0_done_delay_reg_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb0_done_delay_reg_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb0_done_delay_reg_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb0_run3_transition_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_msb_latch_d0_0_q_reg[0]/CP}] [get_pins                                    \
{mb0_marche_element_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_marche_element_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_marche_element_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_marche_element_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_cmp_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                  \
{mb0_cmp_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                  \
{mb0_cmp_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                  \
{mb0_array_sel_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_array_sel_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb0_array_sel_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb0_array_sel_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb0_cseq_reg_d0_0_q_reg[0]/CP}] [get_pins {mb0_cseq_reg_d0_0_q_reg[1]/CP}]    \
[get_pins {mb0_cseq_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_ctest_reg_d0_0_q_reg[0]/CP}] [get_pins {mb0_ctest_reg_d0_0_q_reg[1]/CP}]  \
[get_pins {mb0_ctest_reg_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_ctest_reg_d0_0_q_reg[3]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[0]/CP}]   \
[get_pins {mb0_cntl_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[2]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[3]/CP}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[5]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[6]/CP}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[8]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[9]/CP}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[10]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[11]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[12]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[13]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[14]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[15]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[16]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[17]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[18]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[19]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[20]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[21]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[22]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[23]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[24]/CP}]  \
[get_pins {mb0_cntl_reg_d0_0_q_reg[25]/CP}] [get_pins                          \
{mb0_cntl_reg_d0_0_q_reg[26]/CP}] [get_pins {mb0_cntl_reg_d0_0_q_reg[27]/CP}]  \
[get_pins {mb0_tlb_cam_intf_out_d0_0_q_reg[0]/CP}] [get_pins                   \
{mb0_tlb_cam_intf_out_d0_0_q_reg[1]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[2]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[3]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[4]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[5]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[6]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[7]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[8]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[9]/CP}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[10]/CP}] [get_pins                            \
{mb0_tlb_cam_intf_out_d0_0_q_reg[11]/CP}] [get_pins                            \
{mb0_tlb_cam_intf_out_d0_0_q_reg[12]/CP}] [get_pins                            \
{mb0_exp_mhit_delay_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb0_exp_mhit_delay_d0_0_q_reg[5]/CP}] [get_pins                               \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[5]/CP}] [get_pins                          \
{mb0_exp_cam_hit_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[4]/CP}] [get_pins                            \
{mb0_exp_cam_hit_delay_d0_0_q_reg[5]/CP}] [get_pins                            \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[5]/CP}] [get_pins                          \
{mb0_exp_used_delay_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_exp_used_delay_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb0_exp_used_delay_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb0_exp_used_delay_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb0_exp_used_delay_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb0_exp_valid_delay_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb0_exp_valid_delay_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb0_exp_valid_delay_d0_0_q_reg[3]/CP}] [get_pins                              \
{mb0_exp_valid_delay_d0_0_q_reg[4]/CP}] [get_pins                              \
{mb0_exp_data_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_exp_data_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_exp_data_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_exp_data_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_exp_data_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_cam_used_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb0_data_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_data_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                               \
{mb0_data_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                               \
{mb0_data_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                               \
{mb0_data_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                               \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[4]/CP}] [get_pins                            \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[5]/CP}] [get_pins                            \
{mb0_cam_array_2_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cam_array_2_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cam_array_2_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_cam_array_1_delay_d0_0_q_reg[4]/CP}] [get_pins                            \
{mb0_cam_array_0_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cam_array_0_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cam_array_0_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_array_0_delay_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[0]/CP}] [get_pins                 \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[1]/CP}] [get_pins                 \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[2]/CP}] [get_pins                 \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[1]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[2]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[3]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[4]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[5]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[6]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[7]/CP}] [get_pins                        \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[8]/CP}] [get_pins                        \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[1]/CP}] [get_pins                        \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[2]/CP}] [get_pins                        \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[0]/CP}] [get_pins                     \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[1]/CP}] [get_pins                     \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[2]/CP}] [get_pins                     \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cam_en_reg_d0_0_q_reg[0]/CP}] [get_pins                                   \
{mb0_cam_shift_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[0]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[1]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[2]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[3]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[4]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[5]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[6]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[7]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[8]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[9]/CP}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[10]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[11]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[12]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[13]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[14]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[15]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[16]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[17]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[18]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[19]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[20]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[21]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[22]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[23]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[24]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[25]/CP}] [get_pins                                \
{mb0_cam_cntl_reg_d0_0_q_reg[26]/CP}] [get_pins                                \
{mb0_cambist_delay_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_cambist_delay_reg_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_cambist_delay_reg_d0_0_q_reg[2]/CP}] [get_pins                            \
{mb0_cambist_delay_reg_d0_0_q_reg[3]/CP}] [get_pins                            \
{mb0_loop_again_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_config_reg_d0_0_q_reg[0]/CP}] [get_pins                                   \
{mb0_config_reg_d0_0_q_reg[1]/CP}] [get_pins                                   \
{mb0_mb_enable_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_input_signals_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_input_signals_reg_d0_0_q_reg[1]/CP}] [get_pins                            \
{mb0_user_bisi_rd_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_user_bisi_wr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                        \
{mb0_user_cam_test_select_reg_d0_0_q_reg[0]/CP}] [get_pins                     \
{mb0_user_cam_test_select_reg_d0_0_q_reg[1]/CP}] [get_pins                     \
{mb0_user_cam_test_select_reg_d0_0_q_reg[2]/CP}] [get_pins                     \
{mb0_user_cam_test_select_reg_d0_0_q_reg[3]/CP}] [get_pins                     \
{mb0_user_cam_select_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_user_cam_select_reg_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_user_cam_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{mb0_ten_n_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                               \
{mb0_user_loop_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_user_cmpsel_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{mb0_user_cmpsel_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{mb0_user_cmpsel_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{mb0_user_cmpselinc_hold_reg_d0_0_q_reg[0]/CP}] [get_pins                      \
{mb0_user_data_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{mb0_user_data_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{mb0_user_data_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb0_user_incr_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                           \
{mb0_user_stop_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[0]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[1]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[2]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[3]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[4]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[5]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[6]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[7]/CP}] [get_pins                          \
{mb0_user_start_addr_reg_d0_0_q_reg[8]/CP}] [get_pins                          \
{mb0_user_addr_mode_reg_d0_0_q_reg[0]/CP}] [get_pins                           \
{mb0_array_usr_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{mb0_array_usr_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{mb0_array_usr_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{mb0_array_usr_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
mb0_clkgen_pm1_c_0_l1en_reg/CPN] [get_pins {mb0_pmen_d0_0_q_reg[1]/CP}]        \
[get_pins {mb0_pmen_d0_0_q_reg[2]/CP}] [get_pins mb0_clkgen_c_0_l1en_reg/CPN]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[0]/CP}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[1]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[2]/CP}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[3]/CP}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[4]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[5]/CP}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[6]/CP}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[7]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[8]/CP}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[9]/CP}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[10]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[11]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[12]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[13]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[14]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[15]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[16]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[17]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[18]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[19]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[20]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[21]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[22]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[23]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[24]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[25]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[26]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[27]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[28]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[29]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[30]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[31]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[32]/CP}]  \
[get_pins {dmo_dmo_flop_d0_0_q_reg[33]/CP}] [get_pins                          \
{dmo_dmo_flop_d0_0_q_reg[34]/CP}] [get_pins {dmo_dmo_flop_d0_0_q_reg[35]/CP}]  \
[get_pins dmo_dmo_flop_c0_0_l1en_reg/CPN] [get_pins                            \
clk_spc_xcluster_header_clk_stop_del_stg5_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stop_del_stg4_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stop_del_stg3_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stopper_blatch_m_reg/EN] [get_pins                 \
clk_spc_xcluster_header_clk_stop_del_stg2_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stop_del_stg1_q_reg/CP] [get_pins                  \
clk_spc_xcluster_header_clk_stop_syncff_din_stg2_q_reg/CP] [get_pins           \
clk_spc_xcluster_header_clk_stop_syncff_blatch_m_reg/EN] [get_pins             \
clk_spc_xcluster_header_clk_stop_syncff_din_stg1_q_reg/CP] [get_pins           \
clk_spc_xcluster_header_control_sig_sync_wmr_syncff_din_stg2_q_reg/CP]         \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_wmr_syncff_din_stg1_q_reg/CP]         \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_cmp_slow_sync_en_syncff_din_stg2_q_reg/CP] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_cmp_slow_sync_en_syncff_din_stg1_q_reg/CP] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_slow_cmp_sync_en_syncff_din_stg2_q_reg/CP] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_slow_cmp_sync_en_syncff_din_stg1_q_reg/CP] \
[get_pins clk_spc_xcluster_header_l1_header_l1en_reg/E] [get_pins              \
clk_spc_xcluster_header_gclk_header_l1en_reg/EN] [get_pins                     \
lb_spare_spare2_flop_q_reg/CP] [get_pins {lb_lb_done_reg_d0_0_q_reg[0]/CP}]    \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[0]/CP}] [get_pins                         \
{lb_lb_prpg_reg_d0_0_q_reg[1]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[2]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[3]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[4]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[5]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[6]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[7]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[8]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[9]/CP}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[10]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[11]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[12]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[13]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[14]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[15]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[16]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[17]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[18]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[19]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[20]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[21]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[22]/CP}] [get_pins                                  \
{lb_lb_prpg_reg_d0_0_q_reg[23]/CP}] [get_pins                                  \
{lb_lb_vectorcnt_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[3]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[4]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[5]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[6]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[7]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[8]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[9]/CP}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[10]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[11]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[12]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[13]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[14]/CP}] [get_pins                             \
{lb_lb_vectorcnt_reg_d0_0_q_reg[15]/CP}] [get_pins                             \
{lb_lb_vectpgm_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[8]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[9]/CP}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[10]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[11]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[12]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[13]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[14]/CP}] [get_pins                               \
{lb_lb_vectpgm_reg_d0_0_q_reg[15]/CP}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[0]/CP}] [get_pins                              \
{lb_lb_capclkcnt_reg_d0_0_q_reg[1]/CP}] [get_pins                              \
{lb_lb_capclkcnt_reg_d0_0_q_reg[2]/CP}] [get_pins                              \
{lb_lb_capclkcnt_reg_d0_0_q_reg[3]/CP}] [get_pins                              \
{lb_lb_capclkcnt_reg_d0_0_q_reg[4]/CP}] [get_pins                              \
{lb_lb_shftcnt_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[8]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[9]/CP}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[10]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[11]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[12]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[13]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[14]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[15]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[16]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[17]/CP}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[18]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[5]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[6]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[7]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[8]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[9]/CP}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[10]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[11]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[12]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[13]/CP}] [get_pins                               \
{lb_lb_shftpgm_reg_d0_0_q_reg[14]/CP}] [get_pins                               \
{lb_lb_control_reg_d0_0_q_reg[0]/CP}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[1]/CP}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[2]/CP}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[3]/CP}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[4]/CP}] [get_pins                                \
{lb_lb_iocmpsyncen_reg_d0_0_q_reg[0]/CP}] [get_pins                            \
{msf1_bank0_lat_d0_0_q_reg[0]/CP}] [get_pins                                   \
{msf1_bank0_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf1_bank0_lat_d0_0_q_reg[2]/CP}] [get_pins msf1_bank0_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank5_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank5_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank5_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank5_lat_d0_0_q_reg[3]/CP}] [get_pins msf0_bank5_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank4_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank4_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank4_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank4_lat_d0_0_q_reg[3]/CP}] [get_pins msf0_bank4_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank3_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank3_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[3]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[4]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[5]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[6]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[7]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[8]/CP}] [get_pins                                   \
{msf0_bank3_lat_d0_0_q_reg[9]/CP}] [get_pins msf0_bank3_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank2_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank2_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank2_lat_d0_0_q_reg[2]/CP}] [get_pins msf0_bank2_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank1_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank1_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[3]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[4]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[5]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[6]/CP}] [get_pins                                   \
{msf0_bank1_lat_d0_0_q_reg[7]/CP}] [get_pins msf0_bank1_lat_c0_0_l1en_reg/CPN] \
[get_pins {msf0_bank0_lat_d0_0_q_reg[0]/CP}] [get_pins                         \
{msf0_bank0_lat_d0_0_q_reg[1]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[2]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[3]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[4]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[5]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[6]/CP}] [get_pins                                   \
{msf0_bank0_lat_d0_0_q_reg[7]/CP}] [get_pins                                   \
msf0_bank0_lat_c0_0_l1en_reg/CPN]]  -to [list [get_pins {mb2_out_save_restore_mb_arrays_reg_d0_0_q_reg[0]/D}]     \
[get_pins {mb2_out_save_restore_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[11]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[12]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[13]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[14]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[15]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[16]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[17]/D}] [get_pins                      \
{mb2_delayed_cmp_rd_data_reg_d0_0_q_reg[18]/D}] [get_pins                      \
{mb2_i_delay_4th_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb2_i_delay_4th_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb2_i_delay_4th_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb2_i_delay_4th_d0_0_q_reg[3]/D}] [get_pins                                   \
{mb2_out_mb_tcu_fail_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb2_out_mb_tcu_done_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb2_out_rd_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb2_out_rd_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb2_out_wr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb2_out_wr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[8]/D}] [get_pins                        \
{mb2_out_addr_mb_arrays_reg_d0_0_q_reg[9]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb2_out_data_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb2_out_run_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb2_done_delay_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb2_done_delay_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{mb2_done_delay_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{mb2_done_delay_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{mb2_done_delay_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{mb2_run3_transition_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb2_msb_latch_d0_0_q_reg[0]/D}] [get_pins {mb2_fail_reg_d0_0_q_reg[0]/D}]     \
[get_pins {mb2_fail_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_fail_reg_d0_0_q_reg[2]/D}] [get_pins {mb2_fail_reg_d0_0_q_reg[3]/D}]      \
[get_pins {mb2_fail_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb2_fail_reg_d0_0_q_reg[5]/D}] [get_pins                                      \
{mb2_marche_element_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_marche_element_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_marche_element_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb2_marche_element_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb2_array_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb2_array_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb2_array_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb2_array_sel_reg_d0_0_q_reg[3]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[0]/D}] \
[get_pins {mb2_cntl_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_cntl_reg_d0_0_q_reg[2]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[3]/D}]      \
[get_pins {mb2_cntl_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb2_cntl_reg_d0_0_q_reg[5]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[6]/D}]      \
[get_pins {mb2_cntl_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb2_cntl_reg_d0_0_q_reg[8]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[9]/D}]      \
[get_pins {mb2_cntl_reg_d0_0_q_reg[10]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[11]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[12]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[13]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[14]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[15]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[16]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[17]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[18]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[19]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[20]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[21]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[22]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[23]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[24]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[25]/D}] [get_pins                           \
{mb2_cntl_reg_d0_0_q_reg[26]/D}] [get_pins {mb2_cntl_reg_d0_0_q_reg[27]/D}]    \
[get_pins {mb2_cntl_reg_d0_0_q_reg[28]/D}] [get_pins                           \
{mb2_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb2_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb2_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb2_user_bisi_rd_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb2_user_bisi_wr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb2_ten_n_mode_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb2_user_loop_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_user_cmpsel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb2_user_cmpsel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb2_user_cmpsel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb2_user_cmpselinc_hold_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb2_user_data_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{mb2_user_data_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{mb2_user_data_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb2_user_incr_addr_reg_d0_0_q_reg[9]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb2_user_stop_addr_reg_d0_0_q_reg[9]/D}] [get_pins                            \
{mb2_user_start_addr_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[2]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[3]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[4]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[5]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[6]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[7]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[8]/D}] [get_pins                           \
{mb2_user_start_addr_reg_d0_0_q_reg[9]/D}] [get_pins                           \
{mb2_user_addr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb2_array_usr_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb2_array_usr_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb2_array_usr_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb2_array_usr_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb2_loop_again_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb2_config_reg_d0_0_q_reg[0]/D}] [get_pins {mb2_config_reg_d0_0_q_reg[1]/D}]  \
[get_pins {mb2_mb_enable_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb2_input_signals_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb2_input_signals_reg_d0_0_q_reg[1]/D}] [get_pins                             \
mb2_clkgen_pm1_c_0_l1en_reg/D] [get_pins {mb2_pmen_d0_0_q_reg[1]/D}] [get_pins \
{mb2_pmen_d0_0_q_reg[2]/D}] [get_pins mb2_clkgen_c_0_l1en_reg/D] [get_pins     \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                          \
{mb1_out_rd_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                          \
{mb1_out_wr_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                          \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb1_out_addr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb1_out_data_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb1_out_run_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb1_out_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb1_out_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb1_out_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb1_out_cmp_sel_reg_d0_0_q_reg[3]/D}] [get_pins                               \
{mb1_out_mb_tcu_fail_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb1_out_mb_tcu_done_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb1_fail_reg_d0_0_q_reg[0]/D}] [get_pins {mb1_fail_reg_d0_0_q_reg[1]/D}]      \
[get_pins {mb1_fail_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb1_fail_reg_d0_0_q_reg[3]/D}] [get_pins {mb1_fail_reg_d0_0_q_reg[4]/D}]      \
[get_pins {mb1_fail_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb1_fail_reg_d0_0_q_reg[6]/D}] [get_pins                                      \
{mb1_done_delay_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb1_done_delay_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{mb1_done_delay_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{mb1_done_delay_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{mb1_done_delay_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{mb1_run3_transition_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb1_msb_latch_d0_0_q_reg[0]/D}] [get_pins                                     \
{mb1_marche_element_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_marche_element_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb1_marche_element_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb1_marche_element_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb1_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb1_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb1_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb1_array_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb1_array_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb1_array_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb1_array_sel_reg_d0_0_q_reg[3]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[0]/D}] \
[get_pins {mb1_cntl_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb1_cntl_reg_d0_0_q_reg[2]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[3]/D}]      \
[get_pins {mb1_cntl_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb1_cntl_reg_d0_0_q_reg[5]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[6]/D}]      \
[get_pins {mb1_cntl_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb1_cntl_reg_d0_0_q_reg[8]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[9]/D}]      \
[get_pins {mb1_cntl_reg_d0_0_q_reg[10]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[11]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[12]/D}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[13]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[14]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[15]/D}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[16]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[17]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[18]/D}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[19]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[20]/D}] [get_pins {mb1_cntl_reg_d0_0_q_reg[21]/D}]    \
[get_pins {mb1_cntl_reg_d0_0_q_reg[22]/D}] [get_pins                           \
{mb1_cntl_reg_d0_0_q_reg[23]/D}] [get_pins                                     \
{mb1_user_bisi_rd_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb1_user_bisi_wr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb1_ten_n_mode_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb1_user_loop_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_user_cmpsel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb1_user_cmpsel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb1_user_cmpsel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb1_user_cmpselinc_hold_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb1_user_data_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{mb1_user_data_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{mb1_user_data_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb1_user_incr_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb1_user_stop_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb1_user_start_addr_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[2]/D}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[3]/D}] [get_pins                           \
{mb1_user_start_addr_reg_d0_0_q_reg[4]/D}] [get_pins                           \
{mb1_user_addr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb1_array_usr_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb1_array_usr_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb1_array_usr_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb1_array_usr_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb1_loop_again_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb1_config_reg_d0_0_q_reg[0]/D}] [get_pins {mb1_config_reg_d0_0_q_reg[1]/D}]  \
[get_pins {mb1_mb_enable_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb1_input_signals_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb1_input_signals_reg_d0_0_q_reg[1]/D}] [get_pins                             \
mb1_clkgen_pm1_c_0_l1en_reg/D] [get_pins {mb1_pmen_d0_0_q_reg[1]/D}] [get_pins \
{mb1_pmen_d0_0_q_reg[2]/D}] [get_pins mb1_clkgen_c_0_l1en_reg/D] [get_pins     \
{mb0_merged_done_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb0_merged_done_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb0_merged_done_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb0_merged_fail_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb0_merged_fail_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb0_merged_fail_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[8]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[9]/D}] [get_pins                          \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[10]/D}] [get_pins                         \
{mb0_out_rd_mb_arrays_reg_d0_0_q_reg[11]/D}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[8]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[9]/D}] [get_pins                          \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[10]/D}] [get_pins                         \
{mb0_out_wr_mb_arrays_reg_d0_0_q_reg[11]/D}] [get_pins                         \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb0_out_addr_mb_arrays_reg_d0_0_q_reg[8]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[1]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[2]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[3]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[4]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[5]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[6]/D}] [get_pins                        \
{mb0_out_data_mb_arrays_reg_d0_0_q_reg[7]/D}] [get_pins                        \
{mb0_out_run_mb_arrays_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_out_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb0_out_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb0_out_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb0_out_mb_tcu_fail_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_out_mb_tcu_done_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[0]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[1]/D}]      \
[get_pins {mb0_fail_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_fail_reg_d0_0_q_reg[3]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[4]/D}]      \
[get_pins {mb0_fail_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb0_fail_reg_d0_0_q_reg[6]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[7]/D}]      \
[get_pins {mb0_fail_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb0_fail_reg_d0_0_q_reg[9]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[10]/D}]     \
[get_pins {mb0_fail_reg_d0_0_q_reg[11]/D}] [get_pins                           \
{mb0_fail_reg_d0_0_q_reg[12]/D}] [get_pins {mb0_fail_reg_d0_0_q_reg[13]/D}]    \
[get_pins {mb0_fail_reg_d0_0_q_reg[14]/D}] [get_pins                           \
{mb0_done_delay_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_done_delay_reg_d0_0_q_reg[1]/D}] [get_pins                                \
{mb0_done_delay_reg_d0_0_q_reg[2]/D}] [get_pins                                \
{mb0_done_delay_reg_d0_0_q_reg[3]/D}] [get_pins                                \
{mb0_done_delay_reg_d0_0_q_reg[4]/D}] [get_pins                                \
{mb0_run3_transition_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_msb_latch_d0_0_q_reg[0]/D}] [get_pins                                     \
{mb0_marche_element_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_marche_element_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_marche_element_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_marche_element_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_cmp_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                   \
{mb0_cmp_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                   \
{mb0_cmp_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                   \
{mb0_array_sel_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb0_array_sel_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb0_array_sel_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb0_array_sel_reg_d0_0_q_reg[3]/D}] [get_pins {mb0_cseq_reg_d0_0_q_reg[0]/D}] \
[get_pins {mb0_cseq_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_cseq_reg_d0_0_q_reg[2]/D}] [get_pins {mb0_ctest_reg_d0_0_q_reg[0]/D}]     \
[get_pins {mb0_ctest_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_ctest_reg_d0_0_q_reg[2]/D}] [get_pins {mb0_ctest_reg_d0_0_q_reg[3]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_cntl_reg_d0_0_q_reg[1]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[2]/D}]      \
[get_pins {mb0_cntl_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_cntl_reg_d0_0_q_reg[4]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[5]/D}]      \
[get_pins {mb0_cntl_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb0_cntl_reg_d0_0_q_reg[7]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[8]/D}]      \
[get_pins {mb0_cntl_reg_d0_0_q_reg[9]/D}] [get_pins                            \
{mb0_cntl_reg_d0_0_q_reg[10]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[11]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[12]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[13]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[14]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[15]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[16]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[17]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[18]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[19]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[20]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[21]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[22]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[23]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[24]/D}] [get_pins                           \
{mb0_cntl_reg_d0_0_q_reg[25]/D}] [get_pins {mb0_cntl_reg_d0_0_q_reg[26]/D}]    \
[get_pins {mb0_cntl_reg_d0_0_q_reg[27]/D}] [get_pins                           \
{mb0_tlb_cam_intf_out_d0_0_q_reg[0]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[1]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[2]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[3]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[4]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[5]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[6]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[7]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[8]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[9]/D}] [get_pins                              \
{mb0_tlb_cam_intf_out_d0_0_q_reg[10]/D}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[11]/D}] [get_pins                             \
{mb0_tlb_cam_intf_out_d0_0_q_reg[12]/D}] [get_pins                             \
{mb0_exp_mhit_delay_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[1]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[2]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[3]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[4]/D}] [get_pins                                \
{mb0_exp_mhit_delay_d0_0_q_reg[5]/D}] [get_pins                                \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[2]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[3]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[4]/D}] [get_pins                           \
{mb0_exp_cntx0_hit_delay_d0_0_q_reg[5]/D}] [get_pins                           \
{mb0_exp_cam_hit_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[4]/D}] [get_pins                             \
{mb0_exp_cam_hit_delay_d0_0_q_reg[5]/D}] [get_pins                             \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                           \
{mb0_tlb_cntx0_cmp_delay_d0_0_q_reg[5]/D}] [get_pins                           \
{mb0_exp_used_delay_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_exp_used_delay_d0_0_q_reg[1]/D}] [get_pins                                \
{mb0_exp_used_delay_d0_0_q_reg[2]/D}] [get_pins                                \
{mb0_exp_used_delay_d0_0_q_reg[3]/D}] [get_pins                                \
{mb0_exp_used_delay_d0_0_q_reg[4]/D}] [get_pins                                \
{mb0_exp_valid_delay_d0_0_q_reg[0]/D}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[1]/D}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[2]/D}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[3]/D}] [get_pins                               \
{mb0_exp_valid_delay_d0_0_q_reg[4]/D}] [get_pins                               \
{mb0_exp_data_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_exp_data_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_exp_data_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_exp_data_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_exp_data_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_cam_used_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                            \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                           \
{mb0_cam_valid_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                           \
{mb0_data_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_data_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                                \
{mb0_data_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                                \
{mb0_data_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                                \
{mb0_data_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                                \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[4]/D}] [get_pins                             \
{mb0_cam_hit_cmp_delay_d0_0_q_reg[5]/D}] [get_pins                             \
{mb0_cam_array_2_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cam_array_2_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cam_array_2_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_cam_array_1_delay_d0_0_q_reg[4]/D}] [get_pins                             \
{mb0_cam_array_0_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cam_array_0_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cam_array_0_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_array_0_delay_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[0]/D}] [get_pins                  \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[1]/D}] [get_pins                  \
{mb0_exp_stb_ld_partial_raw_delay_d0_0_q_reg[2]/D}] [get_pins                  \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_exp_stb_mhit_delay_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[1]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[2]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[3]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[4]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[5]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[6]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[7]/D}] [get_pins                         \
{mb0_exp_stb_hit_ptr_delay_d0_0_q_reg[8]/D}] [get_pins                         \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[1]/D}] [get_pins                         \
{mb0_exp_stb_cam_hit_delay_d0_0_q_reg[2]/D}] [get_pins                         \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[0]/D}] [get_pins                      \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[1]/D}] [get_pins                      \
{mb0_stb_hit_cmp_mhit_l_delay_d0_0_q_reg[2]/D}] [get_pins                      \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_stb_hit_cmp_delay_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cam_en_reg_d0_0_q_reg[0]/D}] [get_pins                                    \
{mb0_cam_shift_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[0]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[1]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[2]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[3]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[4]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[5]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[6]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[7]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[8]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[9]/D}] [get_pins                                  \
{mb0_cam_cntl_reg_d0_0_q_reg[10]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[11]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[12]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[13]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[14]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[15]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[16]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[17]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[18]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[19]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[20]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[21]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[22]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[23]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[24]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[25]/D}] [get_pins                                 \
{mb0_cam_cntl_reg_d0_0_q_reg[26]/D}] [get_pins                                 \
{mb0_cambist_delay_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_cambist_delay_reg_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_cambist_delay_reg_d0_0_q_reg[2]/D}] [get_pins                             \
{mb0_cambist_delay_reg_d0_0_q_reg[3]/D}] [get_pins                             \
{mb0_loop_again_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_config_reg_d0_0_q_reg[0]/D}] [get_pins {mb0_config_reg_d0_0_q_reg[1]/D}]  \
[get_pins {mb0_mb_enable_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb0_input_signals_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_input_signals_reg_d0_0_q_reg[1]/D}] [get_pins                             \
{mb0_user_bisi_rd_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_user_bisi_wr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                         \
{mb0_user_cam_test_select_reg_d0_0_q_reg[0]/D}] [get_pins                      \
{mb0_user_cam_test_select_reg_d0_0_q_reg[1]/D}] [get_pins                      \
{mb0_user_cam_test_select_reg_d0_0_q_reg[2]/D}] [get_pins                      \
{mb0_user_cam_test_select_reg_d0_0_q_reg[3]/D}] [get_pins                      \
{mb0_user_cam_select_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_user_cam_select_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_user_cam_mode_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{mb0_ten_n_mode_reg_d0_0_q_reg[0]/D}] [get_pins                                \
{mb0_user_loop_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_user_cmpsel_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{mb0_user_cmpsel_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{mb0_user_cmpsel_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{mb0_user_cmpselinc_hold_reg_d0_0_q_reg[0]/D}] [get_pins                       \
{mb0_user_data_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{mb0_user_data_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{mb0_user_data_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb0_user_incr_addr_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[1]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[2]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[3]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[4]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[5]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[6]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[7]/D}] [get_pins                            \
{mb0_user_stop_addr_reg_d0_0_q_reg[8]/D}] [get_pins                            \
{mb0_user_start_addr_reg_d0_0_q_reg[0]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[1]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[2]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[3]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[4]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[5]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[6]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[7]/D}] [get_pins                           \
{mb0_user_start_addr_reg_d0_0_q_reg[8]/D}] [get_pins                           \
{mb0_user_addr_mode_reg_d0_0_q_reg[0]/D}] [get_pins                            \
{mb0_array_usr_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{mb0_array_usr_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{mb0_array_usr_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{mb0_array_usr_reg_d0_0_q_reg[3]/D}] [get_pins mb0_clkgen_pm1_c_0_l1en_reg/D]  \
[get_pins {mb0_pmen_d0_0_q_reg[1]/D}] [get_pins {mb0_pmen_d0_0_q_reg[2]/D}]    \
[get_pins mb0_clkgen_c_0_l1en_reg/D] [get_pins {dmo_dmo_flop_d0_0_q_reg[0]/D}] \
[get_pins {dmo_dmo_flop_d0_0_q_reg[1]/D}] [get_pins                            \
{dmo_dmo_flop_d0_0_q_reg[2]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[3]/D}]      \
[get_pins {dmo_dmo_flop_d0_0_q_reg[4]/D}] [get_pins                            \
{dmo_dmo_flop_d0_0_q_reg[5]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[6]/D}]      \
[get_pins {dmo_dmo_flop_d0_0_q_reg[7]/D}] [get_pins                            \
{dmo_dmo_flop_d0_0_q_reg[8]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[9]/D}]      \
[get_pins {dmo_dmo_flop_d0_0_q_reg[10]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[11]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[12]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[13]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[14]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[15]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[16]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[17]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[18]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[19]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[20]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[21]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[22]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[23]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[24]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[25]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[26]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[27]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[28]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[29]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[30]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[31]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[32]/D}] [get_pins {dmo_dmo_flop_d0_0_q_reg[33]/D}]    \
[get_pins {dmo_dmo_flop_d0_0_q_reg[34]/D}] [get_pins                           \
{dmo_dmo_flop_d0_0_q_reg[35]/D}] [get_pins dmo_dmo_flop_c0_0_l1en_reg/D]       \
[get_pins clk_spc_xcluster_header_clk_stop_del_stg5_q_reg/D] [get_pins         \
clk_spc_xcluster_header_clk_stop_del_stg4_q_reg/D] [get_pins                   \
clk_spc_xcluster_header_clk_stop_del_stg3_q_reg/D] [get_pins                   \
clk_spc_xcluster_header_clk_stop_del_stg2_q_reg/D] [get_pins                   \
clk_spc_xcluster_header_clk_stop_del_stg1_q_reg/D] [get_pins                   \
clk_spc_xcluster_header_clk_stop_syncff_din_stg2_q_reg/D] [get_pins            \
clk_spc_xcluster_header_clk_stop_syncff_din_stg1_q_reg/D] [get_pins            \
clk_spc_xcluster_header_control_sig_sync_wmr_syncff_din_stg2_q_reg/D]          \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_wmr_syncff_din_stg1_q_reg/D]          \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_cmp_slow_sync_en_syncff_din_stg2_q_reg/D] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_cmp_slow_sync_en_syncff_din_stg1_q_reg/D] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_slow_cmp_sync_en_syncff_din_stg2_q_reg/D] \
[get_pins                                                                      \
clk_spc_xcluster_header_control_sig_sync_slow_cmp_sync_en_syncff_din_stg1_q_reg/D] \
[get_pins lb_spare_spare2_flop_q_reg/D] [get_pins                              \
{lb_lb_done_reg_d0_0_q_reg[0]/D}] [get_pins {lb_lb_prpg_reg_d0_0_q_reg[0]/D}]  \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[1]/D}] [get_pins                          \
{lb_lb_prpg_reg_d0_0_q_reg[2]/D}] [get_pins {lb_lb_prpg_reg_d0_0_q_reg[3]/D}]  \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[4]/D}] [get_pins                          \
{lb_lb_prpg_reg_d0_0_q_reg[5]/D}] [get_pins {lb_lb_prpg_reg_d0_0_q_reg[6]/D}]  \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[7]/D}] [get_pins                          \
{lb_lb_prpg_reg_d0_0_q_reg[8]/D}] [get_pins {lb_lb_prpg_reg_d0_0_q_reg[9]/D}]  \
[get_pins {lb_lb_prpg_reg_d0_0_q_reg[10]/D}] [get_pins                         \
{lb_lb_prpg_reg_d0_0_q_reg[11]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[12]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[13]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[14]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[15]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[16]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[17]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[18]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[19]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[20]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[21]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[22]/D}] [get_pins                                   \
{lb_lb_prpg_reg_d0_0_q_reg[23]/D}] [get_pins                                   \
{lb_lb_vectorcnt_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[3]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[4]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[5]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[6]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[7]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[8]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[9]/D}] [get_pins                               \
{lb_lb_vectorcnt_reg_d0_0_q_reg[10]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[11]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[12]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[13]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[14]/D}] [get_pins                              \
{lb_lb_vectorcnt_reg_d0_0_q_reg[15]/D}] [get_pins                              \
{lb_lb_vectpgm_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[8]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[9]/D}] [get_pins                                 \
{lb_lb_vectpgm_reg_d0_0_q_reg[10]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[11]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[12]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[13]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[14]/D}] [get_pins                                \
{lb_lb_vectpgm_reg_d0_0_q_reg[15]/D}] [get_pins                                \
{lb_lb_capclkcnt_reg_d0_0_q_reg[0]/D}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[1]/D}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[2]/D}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[3]/D}] [get_pins                               \
{lb_lb_capclkcnt_reg_d0_0_q_reg[4]/D}] [get_pins                               \
{lb_lb_shftcnt_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[8]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[9]/D}] [get_pins                                 \
{lb_lb_shftcnt_reg_d0_0_q_reg[10]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[11]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[12]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[13]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[14]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[15]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[16]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[17]/D}] [get_pins                                \
{lb_lb_shftcnt_reg_d0_0_q_reg[18]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[5]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[6]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[7]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[8]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[9]/D}] [get_pins                                 \
{lb_lb_shftpgm_reg_d0_0_q_reg[10]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[11]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[12]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[13]/D}] [get_pins                                \
{lb_lb_shftpgm_reg_d0_0_q_reg[14]/D}] [get_pins                                \
{lb_lb_control_reg_d0_0_q_reg[0]/D}] [get_pins                                 \
{lb_lb_control_reg_d0_0_q_reg[1]/D}] [get_pins                                 \
{lb_lb_control_reg_d0_0_q_reg[2]/D}] [get_pins                                 \
{lb_lb_control_reg_d0_0_q_reg[3]/D}] [get_pins                                 \
{lb_lb_control_reg_d0_0_q_reg[4]/D}] [get_pins                                 \
{lb_lb_iocmpsyncen_reg_d0_0_q_reg[0]/D}] [get_pins                             \
{msf1_bank0_lat_d0_0_q_reg[0]/D}] [get_pins {msf1_bank0_lat_d0_0_q_reg[1]/D}]  \
[get_pins {msf1_bank0_lat_d0_0_q_reg[2]/D}] [get_pins                          \
msf1_bank0_lat_c0_0_l1en_reg/D] [get_pins {msf0_bank5_lat_d0_0_q_reg[0]/D}]    \
[get_pins {msf0_bank5_lat_d0_0_q_reg[1]/D}] [get_pins                          \
{msf0_bank5_lat_d0_0_q_reg[2]/D}] [get_pins {msf0_bank5_lat_d0_0_q_reg[3]/D}]  \
[get_pins msf0_bank5_lat_c0_0_l1en_reg/D] [get_pins                            \
{msf0_bank4_lat_d0_0_q_reg[0]/D}] [get_pins {msf0_bank4_lat_d0_0_q_reg[1]/D}]  \
[get_pins {msf0_bank4_lat_d0_0_q_reg[2]/D}] [get_pins                          \
{msf0_bank4_lat_d0_0_q_reg[3]/D}] [get_pins msf0_bank4_lat_c0_0_l1en_reg/D]    \
[get_pins {msf0_bank3_lat_d0_0_q_reg[0]/D}] [get_pins                          \
{msf0_bank3_lat_d0_0_q_reg[1]/D}] [get_pins {msf0_bank3_lat_d0_0_q_reg[2]/D}]  \
[get_pins {msf0_bank3_lat_d0_0_q_reg[3]/D}] [get_pins                          \
{msf0_bank3_lat_d0_0_q_reg[4]/D}] [get_pins {msf0_bank3_lat_d0_0_q_reg[5]/D}]  \
[get_pins {msf0_bank3_lat_d0_0_q_reg[6]/D}] [get_pins                          \
{msf0_bank3_lat_d0_0_q_reg[7]/D}] [get_pins {msf0_bank3_lat_d0_0_q_reg[8]/D}]  \
[get_pins {msf0_bank3_lat_d0_0_q_reg[9]/D}] [get_pins                          \
msf0_bank3_lat_c0_0_l1en_reg/D] [get_pins {msf0_bank2_lat_d0_0_q_reg[0]/D}]    \
[get_pins {msf0_bank2_lat_d0_0_q_reg[1]/D}] [get_pins                          \
{msf0_bank2_lat_d0_0_q_reg[2]/D}] [get_pins msf0_bank2_lat_c0_0_l1en_reg/D]    \
[get_pins {msf0_bank1_lat_d0_0_q_reg[0]/D}] [get_pins                          \
{msf0_bank1_lat_d0_0_q_reg[1]/D}] [get_pins {msf0_bank1_lat_d0_0_q_reg[2]/D}]  \
[get_pins {msf0_bank1_lat_d0_0_q_reg[3]/D}] [get_pins                          \
{msf0_bank1_lat_d0_0_q_reg[4]/D}] [get_pins {msf0_bank1_lat_d0_0_q_reg[5]/D}]  \
[get_pins {msf0_bank1_lat_d0_0_q_reg[6]/D}] [get_pins                          \
{msf0_bank1_lat_d0_0_q_reg[7]/D}] [get_pins msf0_bank1_lat_c0_0_l1en_reg/D]    \
[get_pins {msf0_bank0_lat_d0_0_q_reg[0]/D}] [get_pins                          \
{msf0_bank0_lat_d0_0_q_reg[1]/D}] [get_pins {msf0_bank0_lat_d0_0_q_reg[2]/D}]  \
[get_pins {msf0_bank0_lat_d0_0_q_reg[3]/D}] [get_pins                          \
{msf0_bank0_lat_d0_0_q_reg[4]/D}] [get_pins {msf0_bank0_lat_d0_0_q_reg[5]/D}]  \
[get_pins {msf0_bank0_lat_d0_0_q_reg[6]/D}] [get_pins                          \
{msf0_bank0_lat_d0_0_q_reg[7]/D}] [get_pins msf0_bank0_lat_c0_0_l1en_reg/D]]
set_input_delay -clock gclk  0.15  [get_ports gclk]
set_input_delay -clock gclk  0.15  [get_ports {scan_in[1]}]
set_input_delay -clock gclk  0.15  [get_ports {scan_in[0]}]
set_input_delay -clock gclk  0.15  [get_ports tcu_pce_ov]
set_input_delay -clock gclk  0.15  [get_ports tcu_clk_stop]
set_input_delay -clock gclk  0.15  [get_ports tcu_aclk]
set_input_delay -clock gclk  0.15  [get_ports tcu_bclk]
set_input_delay -clock gclk  0.15  [get_ports tcu_dectest]
set_input_delay -clock gclk  0.15  [get_ports tcu_muxtest]
set_input_delay -clock gclk  0.15  [get_ports tcu_scan_en]
set_input_delay -clock gclk  0.15  [get_ports tcu_array_wr_inhibit]
set_input_delay -clock gclk  0.15  [get_ports tcu_se_scancollar_in]
set_input_delay -clock gclk  0.15  [get_ports tcu_se_scancollar_out]
set_input_delay -clock gclk  0.15  [get_ports tcu_atpg_mode]
set_input_delay -clock gclk  0.15  [get_ports rst_wmr_protect]
set_input_delay -clock gclk  0.15  [get_ports tcu_shscan_pce_ov]
set_input_delay -clock gclk  0.15  [get_ports tcu_shscan_clk_stop]
set_input_delay -clock gclk  0.15  [get_ports tcu_shscan_aclk]
set_input_delay -clock gclk  0.15  [get_ports tcu_shscan_bclk]
set_input_delay -clock gclk  0.15  [get_ports tcu_shscan_scan_in]
set_input_delay -clock gclk  0.15  [get_ports tcu_shscan_scan_en]
set_input_delay -clock gclk  0.15  [get_ports {tcu_shscanid[2]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_shscanid[1]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_shscanid[0]}]
set_input_delay -clock gclk  0.15  [get_ports cluster_arst_l]
set_input_delay -clock gclk  0.15  [get_ports tcu_spc_mbist_scan_in]
set_input_delay -clock gclk  0.15  [get_ports tcu_mbist_bisi_en]
set_input_delay -clock gclk  0.15  [get_ports tcu_spc_mbist_start]
set_input_delay -clock gclk  0.15  [get_ports tcu_mbist_user_mode]
set_input_delay -clock gclk  0.15  [get_ports {const_cpuid[2]}]
set_input_delay -clock gclk  0.15  [get_ports {const_cpuid[1]}]
set_input_delay -clock gclk  0.15  [get_ports {const_cpuid[0]}]
set_input_delay -clock gclk  0.15  [get_ports tcu_ss_mode]
set_input_delay -clock gclk  0.15  [get_ports tcu_do_mode]
set_input_delay -clock gclk  0.15  [get_ports tcu_ss_request]
set_input_delay -clock gclk  0.15  [get_ports ncu_cmp_tick_enable]
set_input_delay -clock gclk  0.15  [get_ports ncu_wmr_vec_mask]
set_input_delay -clock gclk  0.15  [get_ports ncu_spc_pm]
set_input_delay -clock gclk  0.15  [get_ports ncu_spc_ba01]
set_input_delay -clock gclk  0.15  [get_ports ncu_spc_ba23]
set_input_delay -clock gclk  0.15  [get_ports ncu_spc_ba45]
set_input_delay -clock gclk  0.15  [get_ports ncu_spc_ba67]
set_input_delay -clock gclk  0.15  [get_ports efu_spc_fuse_data]
set_input_delay -clock gclk  0.15  [get_ports efu_spc_fuse_ixfer_en]
set_input_delay -clock gclk  0.15  [get_ports efu_spc_fuse_dxfer_en]
set_input_delay -clock gclk  0.15  [get_ports efu_spc_fuse_iclr]
set_input_delay -clock gclk  0.15  [get_ports efu_spc_fuse_dclr]
set_input_delay -clock gclk  0.15  [get_ports vnw_ary0]
set_input_delay -clock gclk  0.15  [get_ports vnw_ary1]
set_input_delay -clock gclk  0.15  [get_ports tcu_spc_lbist_start]
set_input_delay -clock gclk  0.15  [get_ports tcu_spc_lbist_scan_in]
set_input_delay -clock gclk  0.15  [get_ports tcu_spc_lbist_pgm]
set_input_delay -clock gclk  0.15  [get_ports tcu_spc_test_mode]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[35]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[34]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[33]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[32]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[31]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[30]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[29]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[28]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[27]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[26]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[25]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[24]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[23]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[22]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[21]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[20]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[19]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[18]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[17]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[16]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[15]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[14]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[13]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[12]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[11]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[10]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[9]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[8]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[7]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[6]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[5]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[4]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[3]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[2]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[1]}]
set_input_delay -clock gclk  0.15  [get_ports {dmo_din[0]}]
set_input_delay -clock gclk  0.15  [get_ports dmo_coresel]
set_input_delay -clock gclk  0.15  [get_ports dmo_icmuxctl]
set_input_delay -clock gclk  0.15  [get_ports dmo_dcmuxctl]
set_input_delay -clock gclk  0.15  [get_ports ncu_spc_l2_idx_hash_en]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[145]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[144]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[143]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[142]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[141]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[140]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[139]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[138]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[137]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[136]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[135]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[134]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[133]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[132]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[131]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[130]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[129]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[128]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[127]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[126]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[125]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[124]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[123]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[122]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[121]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[120]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[119]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[118]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[117]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[116]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[115]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[114]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[113]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[112]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[111]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[110]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[109]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[108]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[107]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[106]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[105]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[104]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[103]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[102]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[101]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[100]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[99]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[98]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[97]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[96]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[95]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[94]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[93]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[92]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[91]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[90]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[89]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[88]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[87]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[86]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[85]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[84]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[83]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[82]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[81]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[80]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[79]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[78]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[77]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[76]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[75]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[74]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[73]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[72]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[71]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[70]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[69]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[68]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[67]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[66]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[65]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[64]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[63]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[62]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[61]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[60]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[59]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[58]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[57]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[56]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[55]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[54]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[53]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[52]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[51]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[50]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[49]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[48]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[47]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[46]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[45]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[44]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[43]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[42]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[41]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[40]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[39]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[38]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[37]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[36]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[35]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[34]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[33]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[32]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[31]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[30]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[29]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[28]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[27]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[26]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[25]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[24]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[23]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[22]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[21]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[20]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[19]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[18]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[17]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[16]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[15]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[14]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[13]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[12]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[11]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[10]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[9]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[8]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[7]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[6]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[5]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[4]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[3]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[2]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[1]}]
set_input_delay -clock gclk  0.15  [get_ports {cpx_spc_data_cx[0]}]
set_input_delay -clock gclk  0.15  [get_ports {pcx_spc_grant_px[8]}]
set_input_delay -clock gclk  0.15  [get_ports {pcx_spc_grant_px[7]}]
set_input_delay -clock gclk  0.15  [get_ports {pcx_spc_grant_px[6]}]
set_input_delay -clock gclk  0.15  [get_ports {pcx_spc_grant_px[5]}]
set_input_delay -clock gclk  0.15  [get_ports {pcx_spc_grant_px[4]}]
set_input_delay -clock gclk  0.15  [get_ports {pcx_spc_grant_px[3]}]
set_input_delay -clock gclk  0.15  [get_ports {pcx_spc_grant_px[2]}]
set_input_delay -clock gclk  0.15  [get_ports {pcx_spc_grant_px[1]}]
set_input_delay -clock gclk  0.15  [get_ports {pcx_spc_grant_px[0]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_core_running[7]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_core_running[6]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_core_running[5]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_core_running[4]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_core_running[3]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_core_running[2]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_core_running[1]}]
set_input_delay -clock gclk  0.15  [get_ports {tcu_core_running[0]}]
set_input_delay -clock gclk  0.15  [get_ports {power_throttle[2]}]
set_input_delay -clock gclk  0.15  [get_ports {power_throttle[1]}]
set_input_delay -clock gclk  0.15  [get_ports {power_throttle[0]}]
set_input_delay -clock gclk  0.15  [get_ports {hver_mask_minor_rev[3]}]
set_input_delay -clock gclk  0.15  [get_ports {hver_mask_minor_rev[2]}]
set_input_delay -clock gclk  0.15  [get_ports {hver_mask_minor_rev[1]}]
set_input_delay -clock gclk  0.15  [get_ports {hver_mask_minor_rev[0]}]
set_input_delay -clock gclk  0.15  [get_ports ccu_slow_cmp_sync_en]
set_input_delay -clock gclk  0.15  [get_ports ccu_cmp_slow_sync_en]
set_output_delay -clock gclk  0.2  [get_ports {scan_out[1]}]
set_output_delay -clock gclk  0.2  [get_ports {scan_out[0]}]
set_output_delay -clock gclk  0.2  [get_ports spc_shscan_scan_out]
set_output_delay -clock gclk  0.2  [get_ports spc_mbist_fail]
set_output_delay -clock gclk  0.2  [get_ports spc_mbist_done]
set_output_delay -clock gclk  0.2  [get_ports spc_tcu_mbist_scan_out]
set_output_delay -clock gclk  0.2  [get_ports spc_ss_complete]
set_output_delay -clock gclk  0.2  [get_ports spc_hardstop_request]
set_output_delay -clock gclk  0.2  [get_ports spc_softstop_request]
set_output_delay -clock gclk  0.2  [get_ports spc_trigger_pulse]
set_output_delay -clock gclk  0.2  [get_ports spc_efu_fuse_ddata]
set_output_delay -clock gclk  0.2  [get_ports spc_efu_fuse_idata]
set_output_delay -clock gclk  0.2  [get_ports spc_efu_fuse_ixfer_en]
set_output_delay -clock gclk  0.2  [get_ports spc_efu_fuse_dxfer_en]
set_output_delay -clock gclk  0.2  [get_ports spc_tcu_lbist_done]
set_output_delay -clock gclk  0.2  [get_ports spc_tcu_lbist_scan_out]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[35]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[34]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[33]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[32]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[31]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[30]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[29]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[28]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[27]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[26]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[25]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[24]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[23]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[22]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[21]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[20]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[19]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[18]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[17]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[16]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[15]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[14]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[13]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[12]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[11]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[10]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[9]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[8]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[7]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[6]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[5]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[4]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[3]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[2]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[1]}]
set_output_delay -clock gclk  0.2  [get_ports {dmo_dout[0]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_req_pq[8]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_req_pq[7]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_req_pq[6]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_req_pq[5]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_req_pq[4]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_req_pq[3]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_req_pq[2]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_req_pq[1]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_req_pq[0]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_atm_pq[8]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_atm_pq[7]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_atm_pq[6]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_atm_pq[5]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_atm_pq[4]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_atm_pq[3]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_atm_pq[2]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_atm_pq[1]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_atm_pq[0]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[129]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[128]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[127]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[126]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[125]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[124]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[123]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[122]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[121]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[120]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[119]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[118]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[117]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[116]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[115]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[114]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[113]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[112]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[111]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[110]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[109]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[108]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[107]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[106]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[105]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[104]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[103]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[102]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[101]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[100]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[99]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[98]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[97]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[96]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[95]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[94]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[93]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[92]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[91]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[90]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[89]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[88]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[87]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[86]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[85]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[84]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[83]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[82]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[81]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[80]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[79]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[78]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[77]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[76]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[75]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[74]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[73]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[72]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[71]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[70]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[69]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[68]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[67]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[66]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[65]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[64]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[63]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[62]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[61]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[60]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[59]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[58]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[57]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[56]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[55]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[54]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[53]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[52]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[51]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[50]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[49]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[48]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[47]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[46]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[45]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[44]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[43]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[42]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[41]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[40]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[39]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[38]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[37]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[36]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[35]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[34]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[33]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[32]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[31]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[30]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[29]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[28]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[27]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[26]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[25]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[24]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[23]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[22]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[21]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[20]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[19]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[18]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[17]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[16]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[15]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[14]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[13]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[12]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[11]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[10]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[9]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[8]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[7]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[6]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[5]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[4]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[3]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[2]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[1]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_pcx_data_pa[0]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_core_running_status[7]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_core_running_status[6]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_core_running_status[5]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_core_running_status[4]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_core_running_status[3]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_core_running_status[2]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_core_running_status[1]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_core_running_status[0]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_dbg_instr_cmt_grp0[1]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_dbg_instr_cmt_grp0[0]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_dbg_instr_cmt_grp1[1]}]
set_output_delay -clock gclk  0.2  [get_ports {spc_dbg_instr_cmt_grp1[0]}]
