## Black box sizing for spc
estimate_fp_black_boxes -sm_size {40 40} -fixed_shape {spu}
estimate_fp_black_boxes -sm_size {80 80} -fixed_shape {ifu_ftu/ftu_itb_cust}
estimate_fp_black_boxes -sm_size {160 160} -fixed_shape {ifu_ftu/ftu_ict_cust}
estimate_fp_black_boxes -sm_size {400 400} -fixed_shape {ifu_ftu/ftu_icd_cust}
estimate_fp_black_boxes -sm_size {40 40} -fixed_shape {ifu_ftu/ftu_icv_cust}
estimate_fp_black_boxes -sm_size {150 150} -fixed_shape {exu0/irf}
estimate_fp_black_boxes -sm_size {150 150} -fixed_shape {exu1/irf}
estimate_fp_black_boxes -sm_size {120 120} -fixed_shape {fgu/frf}
estimate_fp_black_boxes -sm_size {40 120} -fixed_shape {mmu/mra0}
estimate_fp_black_boxes -sm_size {40 120} -fixed_shape {mmu/mra1}
estimate_fp_black_boxes -sm_size {40 80} -fixed_shape {mmu/scp0}
estimate_fp_black_boxes -sm_size {40 80} -fixed_shape {mmu/scp1}
estimate_fp_black_boxes -sm_size {280 280} -fixed_shape {lsu/dca}
estimate_fp_black_boxes -sm_size {160 160} -fixed_shape {lsu/dta}
estimate_fp_black_boxes -sm_size {80 120} -fixed_shape {lsu/stb_ram}
estimate_fp_black_boxes -sm_size {80 80} -fixed_shape {lsu/stb_cam}
estimate_fp_black_boxes -sm_size {160 80} -fixed_shape {lsu/tlb}
estimate_fp_black_boxes -sm_size {40 40} -fixed_shape {lsu/lru}
estimate_fp_black_boxes -sm_size {40 40} -fixed_shape {lsu/dva}
estimate_fp_black_boxes -sm_size {80 120} -fixed_shape {lsu/cpq}
estimate_fp_black_boxes -sm_size {80 120} -fixed_shape {tlu/tsa0}
estimate_fp_black_boxes -sm_size {80 120} -fixed_shape {tlu/tsa1}
estimate_fp_black_boxes -sm_size {40 80} -fixed_shape {tlu/tca}


