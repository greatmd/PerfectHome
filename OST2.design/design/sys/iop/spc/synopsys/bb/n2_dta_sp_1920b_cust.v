module n2_dta_sp_1920b_cust (
  index0_x, 
  index1_x, 
  index_sel_x, 
  wrway_x, 
  rdreq_x, 
  wrreq_x, 
  wrtag_x, 
  dta_clken, 
  rdtag_w0_y, 
  rdtag_w1_y, 
  rdtag_w2_y, 
  rdtag_w3_y, 
  l2clk, 
  scan_in, 
  tcu_pce_ov, 
  tcu_aclk, 
  tcu_bclk, 
  tcu_se_scancollar_in, 
  tcu_scan_en, 
  tcu_array_wr_inhibit, 
  scan_out);


input	[6:0]	index0_x;	// address0 (used for read)
input	[6:0]	index1_x;	// address1 (used for write)
input		index_sel_x;	// selects between index1 and index0
input	[1:0]	wrway_x;	// way to write to
input		rdreq_x;	// read enable
input		wrreq_x;	// write enable
// 0in bits_on -var {rdreq_x,wrreq_x} -max 1 -message "Attempt to read AND write dtag on same cycle"
// 0in custom -fire ((rdreq_x | wrreq_x) & ~dta_clken) -message "Attempt to read or write with clock disabled"
input	[29:0]	wrtag_x;      // write data
input		dta_clken;	// array clock enable

output	[29:0]	rdtag_w0_y;    // read data split into 4 ports
output	[29:0]	rdtag_w1_y;    // read data
output	[29:0]	rdtag_w2_y;    // read data
output	[29:0]	rdtag_w3_y;    // read data

input		l2clk;
input		scan_in;
input		tcu_pce_ov;
input		tcu_aclk;
input		tcu_bclk;
input		tcu_se_scancollar_in;
input		tcu_scan_en;
input		tcu_array_wr_inhibit;
output		scan_out;

endmodule
