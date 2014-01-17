module n2_com_dp_32x84_cust (
  wr_adr, 
  wr_en, 
  rd_adr, 
  rd_en, 
  din, 
  dout, 
  rdclk, 
  wrclk, 
  scan_in, 
  tcu_pce_ov, 
  tcu_aclk, 
  tcu_bclk, 
  tcu_array_wr_inhibit, 
  tcu_se_scancollar_in, 
  bist_clk_mux_sel, 
  rd_pce, 
  wr_pce, 
  scan_out);
		
input	[4:0]	wr_adr;
input			wr_en;
input	[4:0]	rd_adr;
input			rd_en;
input	[83:0] 	din;
output	[83:0]	dout;
input		rdclk;
input		wrclk;
input		scan_in;
input		tcu_pce_ov;
input		tcu_aclk;
input		tcu_bclk;
input		tcu_array_wr_inhibit;
input		tcu_se_scancollar_in;


input		bist_clk_mux_sel;
input		rd_pce;
input		wr_pce;
output		scan_out;

endmodule
