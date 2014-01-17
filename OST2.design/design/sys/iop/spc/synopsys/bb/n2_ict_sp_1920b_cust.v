module n2_ict_sp_1920b_cust (
  l2clk, 
  scan_in, 
  tcu_pce_ov, 
  tcu_scan_en, 
  tcu_aclk, 
  tcu_bclk, 
  tcu_se_scancollar_in, 
  tcu_array_wr_inhibit, 
  agd_ic_index_bf, 
  agc_fill_wrway_bf, 
  ftp_tg_rd_req_bf, 
  ftp_tg_wr_req_bf, 
  ftp_tg_clk_en, 
  agd_ict_wrtag_bf, 
  ict_itlb_way_0_tag_f, 
  ict_itlb_way_1_tag_f, 
  ict_itlb_way_2_tag_f, 
  ict_itlb_way_3_tag_f, 
  ict_itlb_way_4_tag_f, 
  ict_itlb_way_5_tag_f, 
  ict_itlb_way_6_tag_f, 
  ict_itlb_way_7_tag_f, 
  scan_out)  ;


   input          l2clk;
   input          scan_in;
   input          tcu_pce_ov;
   input          tcu_scan_en;
   input          tcu_aclk;
   input          tcu_bclk;
   input          tcu_se_scancollar_in;
   input          tcu_array_wr_inhibit;

   input [10:5]   agd_ic_index_bf;
   input [2:0]    agc_fill_wrway_bf;     // way to write to, this is
                                     	       // sent by the l2c over the cpx
   input          ftp_tg_rd_req_bf;
   input          ftp_tg_wr_req_bf;
   input          ftp_tg_clk_en;


   
   input [29:0]   agd_ict_wrtag_bf;      // tag + 1b parity

   output [29:0]  ict_itlb_way_0_tag_f; // Tag compare is done in TLB block
   output [29:0]  ict_itlb_way_1_tag_f; // Tag compare is done in TLB block
   output [29:0]  ict_itlb_way_2_tag_f; // Tag compare is done in TLB block
   output [29:0]  ict_itlb_way_3_tag_f; // Tag compare is done in TLB block
   output [29:0]  ict_itlb_way_4_tag_f; // Tag compare is done in TLB block
   output [29:0]  ict_itlb_way_5_tag_f; // Tag compare is done in TLB block
   output [29:0]  ict_itlb_way_6_tag_f; // Tag compare is done in TLB block
   output [29:0]  ict_itlb_way_7_tag_f; // Tag compare is done in TLB block
   output         scan_out;

endmodule 
