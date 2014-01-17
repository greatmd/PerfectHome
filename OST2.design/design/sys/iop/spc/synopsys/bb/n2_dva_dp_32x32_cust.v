module n2_dva_dp_32x32_cust (
  l2clk, 
  tcu_pce_ov, 
  tcu_se_scancollar_in, 
  tcu_scan_en, 
  tcu_array_wr_inhibit, 
  tcu_aclk, 
  tcu_bclk, 
  pce, 
  scan_in, 
  rd_addr, 
  wr_addr, 
  din, 
  bit_wen, 
  rd_en, 
  wr_en, 
  dout, 
  scan_out);

input		l2clk;
input		tcu_pce_ov;
input		tcu_se_scancollar_in;
input		tcu_scan_en;
input		tcu_array_wr_inhibit;
input		tcu_aclk;
input		tcu_bclk;
input		pce;


input		scan_in;
input	[4:0]	rd_addr;
input	[4:0]	wr_addr;
input	[31:0]	din;
input	[31:0]	bit_wen;
input		rd_en;
input		wr_en;
   
output	[31:0]	dout;
output		scan_out;

endmodule
