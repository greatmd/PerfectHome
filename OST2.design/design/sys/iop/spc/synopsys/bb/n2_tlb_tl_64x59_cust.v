module n2_tlb_tl_64x59_cust (
  l2clk, 
  scan_in, 
  tcu_pce_ov, 
  pce, 
  tcu_aclk, 
  tcu_bclk, 
  tcu_se_scancollar_in, 
  tcu_se_scancollar_out, 
  tcu_array_wr_inhibit, 
  tcu_scan_en, 
  disable_clear_ubit, 
  scan_out, 
  tlb_bypass, 
  tlb_wr_vld, 
  tlb_rd_vld, 
  tlb_cam_vld, 
  tlb_rw_index, 
  tlb_rw_index_vld, 
  tlb_demap, 
  tlb_demap_context, 
  tlb_demap_all, 
  tlb_demap_real, 
  tte_tag, 
  tte_ubit, 
  tte_page_size_mask, 
  tte_data, 
  tlb_va, 
  cache_ptag_w0, 
  cache_ptag_w1, 
  cache_ptag_w2, 
  cache_ptag_w3, 
  cache_ptag_w4, 
  cache_ptag_w5, 
  cache_ptag_w6, 
  cache_ptag_w7, 
  cache_set_vld, 
  cache_way_hit, 
  cache_hit, 
  tlb_cam_hit, 
  tlb_cam_mhit, 
  tlb_context0_hit, 
  tlb_pgnum_crit, 
  tlb_pgnum, 
  tlb_tte_data, 
  tlb_tte_tag, 
  tlb_tte_u_bit, 
  tlb_tte_data_parity) ;


input		l2clk;
input		scan_in;
input		tcu_pce_ov;
input 		pce;
input		tcu_aclk;
input		tcu_bclk;
input		tcu_se_scancollar_in;
input		tcu_se_scancollar_out;
input		tcu_array_wr_inhibit;
input		tcu_scan_en ;
input		disable_clear_ubit;
output		scan_out;

input		tlb_bypass;
input		tlb_wr_vld;
input		tlb_rd_vld;
input		tlb_cam_vld;
input	[5:0]	tlb_rw_index;
input		tlb_rw_index_vld;
input		tlb_demap;
input		tlb_demap_context;
input		tlb_demap_all;
input		tlb_demap_real;

input	[65:0]	tte_tag;
input		tte_ubit;
input	[2:0]	tte_page_size_mask;
input	[37:0]	tte_data;
input	[12:11]	tlb_va;		// Incoming VA

// Cache tag compare
input	[39:11]	cache_ptag_w0;
input	[39:11]	cache_ptag_w1;
input	[39:11]	cache_ptag_w2;
input	[39:11]	cache_ptag_w3;
input	[39:11]	cache_ptag_w4;
input	[39:11]	cache_ptag_w5;
input	[39:11]	cache_ptag_w6;
input	[39:11]	cache_ptag_w7;
input	[7:0]	cache_set_vld;

output	[7:0]	cache_way_hit;
output		cache_hit;
output		tlb_cam_hit;
output		tlb_cam_mhit;
output		tlb_context0_hit;
output	[39:13]	tlb_pgnum_crit; 	// PA unflopped
output	[39:13]	tlb_pgnum;	 	// PA flopped
output	[37:0]	tlb_tte_data;
output	[65:0]	tlb_tte_tag;
output		tlb_tte_u_bit;
output		tlb_tte_data_parity;

endmodule
