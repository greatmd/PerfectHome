
module n2_dca_sp_9kb_cust (
  dcache_rd_addr_e, 
  dcache_alt_addr_e, 
  dcache_alt_addr_sel_e, 
  dcache_rvld_e, 
  dcache_wvld_e, 
  dcache_clk_en_e, 
  dcache_wclk_en_e, 
  dcache_rclk_en_m, 
  dcache_wdata_e, 
  dcache_wr_way_e, 
  dcache_byte_wr_en_e, 
  dcache_alt_rsel_way_m, 
  dcache_rsel_way_b, 
  dcache_alt_way_sel_m, 
  lsu_l2fill_or_byp_data_m, 
  dcache_bypass_e_, 
  dcache_rdata_b, 
  dcache_rparity_b, 
  dcache_perr_w0_b, 
  dcache_perr_w1_b, 
  dcache_perr_w2_b, 
  dcache_perr_w3_b, 
  dcache_rdata_msb_w0_b, 
  dcache_rdata_msb_w1_b, 
  dcache_rdata_msb_w2_b, 
  dcache_rdata_msb_w3_b, 
  l2clk, 
  scan_in, 
  tcu_pce_ov, 
  tcu_aclk, 
  tcu_bclk, 
  tcu_array_wr_inhibit, 
  tcu_scan_en, 
  tcu_se_scancollar_in, 
  tcu_se_scancollar_out, 
  scan_out, 
  fuse_dca_repair_value, 
  fuse_dca_repair_en, 
  fuse_dca_rid, 
  fuse_dca_wen, 
  fuse_red_reset, 
  dca_fuse_repair_value, 
  dca_fuse_repair_en, 
  vnw_ary);
 

input [10:3]    dcache_rd_addr_e;     // read cache index [10:4] + bit [3] offset
input [10:3]    dcache_alt_addr_e;    // write/bist/diagnostic read cache index + offset 
input           dcache_alt_addr_sel_e;

input           dcache_rvld_e;        // read accesses d$.
input           dcache_wvld_e;        // valid write setup to m-stage.
// 0in bits_on -var {dcache_rvld_e,dcache_wvld_e} -max 1 -message "Attempt to read AND write dcache on same cycle"
input           dcache_clk_en_e;      // array clock enable
input           dcache_wclk_en_e;     // write data/byte_wr_en flops clock enable
input           dcache_rclk_en_m;     // read flops clock enable
   
input [143:0]   dcache_wdata_e;       // write data - 16Bx8 + 8b parity.
input [1:0]     dcache_wr_way_e;     // replacement way for load miss/store (encoded).
input [15:0]    dcache_byte_wr_en_e;  // 16b byte wr enable for stores.

input [3:0]     dcache_alt_rsel_way_m;// bist/diagnostic read way select
input [3:0]     dcache_rsel_way_b;    // load way select, connect to cache_way_hit
input           dcache_alt_way_sel_m;
       
input [63:0]	lsu_l2fill_or_byp_data_m;
input       	dcache_bypass_e_;
   
output  [63:0]  dcache_rdata_b;
output  [7:0]   dcache_rparity_b;
   
output  	dcache_perr_w0_b; 
output  	dcache_perr_w1_b; 
output  	dcache_perr_w2_b; 
output  	dcache_perr_w3_b; 

output [7:0] dcache_rdata_msb_w0_b;
output [7:0] dcache_rdata_msb_w1_b;
output [7:0] dcache_rdata_msb_w2_b;
output [7:0] dcache_rdata_msb_w3_b;
   
input		l2clk;
input		scan_in;
input		tcu_pce_ov;
input		tcu_aclk;
input		tcu_bclk;
input		tcu_array_wr_inhibit;
input		tcu_scan_en;
input		tcu_se_scancollar_in;
input		tcu_se_scancollar_out;
output          scan_out;

input	[5:0]	fuse_dca_repair_value;
input	[1:0]	fuse_dca_repair_en;
input	[1:0]	fuse_dca_rid;
input		fuse_dca_wen;
input		fuse_red_reset;
output	[5:0]	dca_fuse_repair_value;
output	[1:0]	dca_fuse_repair_en;

input		vnw_ary;

endmodule

