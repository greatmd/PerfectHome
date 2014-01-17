#! /bin/sh
#ex="./pin_constraint_gen.sh gclk 4 100 1"
#$ex
# 1: left
# 2: up
# 3: right
# 4: down

ex=("gclk 4 200 1" 
    "scan_in 1 100 2"
    "tcu_pce_ov 4 50 1"
    "tcu_clk_stop 4 51 1"
    "tcu_aclk 4 52 1"
    "tcu_bclk 4 53 1"
    "tcu_dectest 4 54 1"
    "tcu_muxtest 4 55 1"
    "tcu_scan_en 4 56 1"
    "tcu_array_wr_inhibit 4 57 1"
    "tcu_se_scancollar_in 4 58 1"
    "tcu_se_scancollar_out 4 59 1"
    "tcu_atpg_mode 4 60 1"
    "rst_wmr_protect 4 61 1"
    "scan_out 4 62 2"
    "tcu_shscan_pce_ov 4 64 1"
    "tcu_shscan_clk_stop 4 65 1"
    "tcu_shscan_aclk 4 66 1"
    "tcu_shscan_bclk 4 67 1"
    "tcu_shscan_scan_in 4 68 1"
    "tcu_shscan_scan_en 4 69 1"
    "tcu_shscanid 4 70 3"
    "spc_shscan_scan_out 4 74 1"
    "cluster_arst_l 4 75 1"
    "tcu_spc_mbist_scan_in 4 76 1"
    "tcu_mbist_bisi_en 4 77 1"
    "tcu_spc_mbist_start 4 78 1"
    "tcu_mbist_user_mode 4 79 1"
    "spc_mbist_fail 4 80 1"
    "spc_mbist_done 4 81 1"
    "spc_mbist_done 4 82 1"
    "spc_tcu_mbist_scan_out 4 83 1"
    "const_cpuid 4 84 3"

    "tcu_ss_mode 4 90 1"
    "tcu_do_mode 4 91 1"
    "tcu_ss_request 4 92 1"
    "ncu_cmp_tick_enable 4 93 1"
    "spc_ss_complete 4 94 1"

    "ncu_wmr_vec_mask 4 95 1"

    "spc_hardstop_request 4 96 1"
    "spc_softstop_request 4 97 1"
    "spc_trigger_pulse 4 98 1"

    "ncu_spc_pm 4 99 1"
    "ncu_spc_ba01 4 100 1"
    "ncu_spc_ba23 4 101 1"
    "ncu_spc_ba45 4 102 1"
    "ncu_spc_ba67 4 103 1"

    "efu_spc_fuse_data 4 105 1"
    "efu_spc_fuse_ixfer_en 4 105 1"
    "efu_spc_fuse_dxfer_en 4 105 1"
    "efu_spc_fuse_iclr 4 105 1"
    "efu_spc_fuse_dclr 4 105 1"
    "spc_efu_fuse_ddata 4 105 1"
    "spc_efu_fuse_idata 4 105 1"
    "spc_efu_fuse_ixfer_en 4 105 1"
    "spc_efu_fuse_dxfer_en 4 105 1"

    "vnw_ary0 1 100 1"
    "vnw_ary1 1 101 1"

    "tcu_spc_lbist_start 4 110 1"
    "tcu_spc_lbist_scan_in 4 110 1"
    "tcu_spc_lbist_pgm 4 110 1"
    "tcu_spc_test_mode 4 110 1"

    "spc_tcu_lbist_done 4 110 1"
    "spc_tcu_lbist_scan_out 4 110 1"

    "dmo_din 3 100 36"
    "dmo_coresel 3 140 1"
    "dmo_icmuxctl 3 140 1"
    "dmo_dcmuxctl 3 140 1"
    "dmo_dout 3 150 36"

    "ncu_spc_l2_idx_hash_en 4 120 1"

    "cpx_spc_data_cx 4 121 146"
    "pcx_spc_grant_px 4 300 9"
    "spc_pcx_req_pq 4 310 9"
    "spc_pcx_atm_pq 4 320 9"
    "spc_pcx_data_pa 4 330 130"
    "tcu_core_running 4 500 8"
    "spc_core_running_status 4 510 8"
    "power_throttle 3 150 3"
    "spc_dbg_instr_cmt_grp0 3 160 2"
    "spc_dbg_instr_cmt_grp1 3 170 2"
    "hver_mask_minor_rev 3 180 4"
    "ccu_slow_cmp_sync_en 3 200 1"
    "ccu_cmp_slow_sync_en 3 200 1"
)

num=`expr ${#ex[@]} - 1 `
	for i in `seq 0 $num`
	do
          cmd="./pin_constraint_gen.sh ${ex[$i]}"
          $cmd 
	done


