module n2_icd_sp_16p5kb_cust (
  l2clk, 
  scan_in, 
  tcu_pce_ov, 
  tcu_aclk, 
  tcu_bclk, 
  tcu_array_wr_inhibit, 
  tcu_se_scancollar_in, 
  tcu_se_scancollar_out, 
  tcu_scan_en, 
  red_en_in, 
  red_d_in, 
  rid_in, 
  red_wen, 
  red_arst, 
  ftp_icd_quad_0_en_bf, 
  ftp_icd_quad_1_en_bf, 
  ftp_icd_quad_2_en_bf, 
  ftp_icd_quad_3_en_bf, 
  agd_ic_index_bf, 
  agc_fill_wrway_bf, 
  cmu_ic_data, 
  agd_asi_bist_wrdata, 
  itb_icd_waysel_c, 
  agc_word_en_bf, 
  ftp_ic_rd_req_bf, 
  ftp_ic_wr_req_bf, 
  ftp_ic_wr_ps_en_bf, 
  ftp_asi_mbist_access_bf, 
  vnw_ary, 
  icd_bus_0_instr_c, 
  icd_bus_1_instr_c, 
  icd_bus_2_instr_c, 
  icd_bus_3_instr_c, 
  scan_out, 
  red_d_out, 
  red_en_out) ;
 
// make sure you have .l2clk(l2clk), 1 level up; run fixscan



   input          l2clk;
   input          scan_in;
   input          tcu_pce_ov;
   input          tcu_aclk;
   input          tcu_bclk;
   input          tcu_array_wr_inhibit;
   input          tcu_se_scancollar_in;
   input          tcu_se_scancollar_out;
   input          tcu_scan_en;

   input [1:0]    red_en_in ;
   input [4:0]    red_d_in ;
   input [3:0]    rid_in ;
   input          red_wen ;
   input          red_arst ;

   input      ftp_icd_quad_0_en_bf;    // enable quad 0
   input      ftp_icd_quad_1_en_bf;    // enable quad 1
   input      ftp_icd_quad_2_en_bf;    // enable quad 2
   input      ftp_icd_quad_3_en_bf;    // enable quad 3



   input [10:2]                agd_ic_index_bf;    // index to write to/read from
   input [2:0]                 agc_fill_wrway_bf;  // way to write to
   input [263:0]               cmu_ic_data;        // 128b data, 4b parity
   input [32:0]                agd_asi_bist_wrdata;     // Debug wr data 
   input [7:0]                 itb_icd_waysel_c;   // read way select encoded
   input [7:0]                 agc_word_en_bf;     // read/write  word enable 

   input          ftp_ic_rd_req_bf;
   input          ftp_ic_wr_req_bf;
   input          ftp_ic_wr_ps_en_bf;
   input          ftp_asi_mbist_access_bf;

   input          vnw_ary;


   // outputs
   output [32:0]  icd_bus_0_instr_c ;
   output [32:0]  icd_bus_1_instr_c ;
   output [32:0]  icd_bus_2_instr_c ;
   output [32:0]  icd_bus_3_instr_c ;
   output         scan_out;
   output [4:0]   red_d_out  ;
   output [1:0]   red_en_out ;

endmodule
