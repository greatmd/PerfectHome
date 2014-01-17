module n2_irf_mp_128x72_cust (
  l2clk, 
  scan_in, 
  tcu_pce_ov, 
  tcu_aclk, 
  tcu_bclk, 
  tcu_array_wr_inhibit, 
  tcu_scan_en, 
  tcu_se_scancollar_in, 
  clken, 
  rd_tid, 
  rd_addr_p0, 
  rd_addr_p1, 
  rd_addr_p2, 
  rd_en_p0, 
  rd_en_p1, 
  rd_en_p2, 
  wr_en_p0, 
  wr_en_p1, 
  wr_tid_p0, 
  wr_tid_p1, 
  wr_addr_p0, 
  wr_addr_p1, 
  wr_data_p0, 
  wr_data_p1, 
  save_tid, 
  save_local_addr, 
  save_even_addr, 
  save_odd_addr, 
  save_even_en, 
  save_odd_en, 
  save_local_en, 
  restore_tid, 
  restore_local_addr, 
  restore_even_addr, 
  restore_odd_addr, 
  restore_even_en, 
  restore_odd_en, 
  restore_local_en, 
  save_global_en, 
  save_global_tid, 
  save_global_addr, 
  restore_global_en, 
  restore_global_tid, 
  restore_global_addr, 
  dout_p0, 
  dout_p1, 
  dout_p2, 
  scan_out);

input		l2clk;
input		scan_in;
input		tcu_pce_ov;
input		tcu_aclk;
input		tcu_bclk;
input		tcu_array_wr_inhibit;
input		tcu_scan_en;
input		tcu_se_scancollar_in;


// *** Power Management ***
input		clken;

// *** Reading controls ***
input [1:0]	rd_tid;
input [4:0]	rd_addr_p0;
input [4:0]	rd_addr_p1;
input [4:0]	rd_addr_p2;
input		rd_en_p0;
input		rd_en_p1;
input		rd_en_p2;

// *** Writing controls ***
input		wr_en_p0;
input		wr_en_p1;
input [1:0]	wr_tid_p0;
input [1:0]	wr_tid_p1;
input [4:0]	wr_addr_p0;
input [4:0]	wr_addr_p1;

// *** Write data ports ***
input [71:0]	wr_data_p0;
input [71:0]	wr_data_p1;

// *** Window swapping controls ***
input [1:0]	save_tid;
input [2:0]	save_local_addr;
input [1:0]	save_even_addr;
input [1:0]	save_odd_addr;
input		save_even_en;
input		save_odd_en;
input		save_local_en;

input [1:0]	restore_tid;
input [2:0]	restore_local_addr;
input [1:0]	restore_even_addr;
input [1:0]	restore_odd_addr;
input		restore_even_en;
input		restore_odd_en;
input		restore_local_en;

input		save_global_en;
input [1:0]	save_global_tid;
input [1:0]	save_global_addr;

input		restore_global_en;
input [1:0]	restore_global_tid;
input [1:0]	restore_global_addr;



output [71:0]	dout_p0;			// RS1 operand : [71:64] contains 8-bit ECC, [63:0] contains 64-bit data
output [71:0]	dout_p1;			// RS2 operand : [71:64] contains 8-bit ECC, [63:0] contains 64-bit data
output [71:0]	dout_p2;			// RS3 operand : [71:64] contains 8-bit ECC, [63:0] contains 64-bit data

output		scan_out;

endmodule
