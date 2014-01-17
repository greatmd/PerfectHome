module n2_frf_mp_256x78_cust (
  frf_r1_data, 
  frf_r1_ecc, 
  frf_r2_data, 
  frf_r2_ecc, 
  l2clk, 
  scan_in, 
  pce, 
  tcu_pce_ov, 
  tcu_aclk, 
  tcu_bclk, 
  tcu_array_wr_inhibit, 
  tcu_scan_en, 
  tcu_se_scancollar_in, 
  main_clken, 
  scan_out, 
  r_tid, 
  r1_valid, 
  r1_addr, 
  r2_valid, 
  r2_addr, 
  w1_tid, 
  w1_valid, 
  w1_addr, 
  w2_tid, 
  w2_valid, 
  w2_addr, 
  w1_data, 
  w1_ecc, 
  w2_data, 
  w2_ecc);

   // -----------------------------------------------------------------------
   // Read output ports
   // -----------------------------------------------------------------------
   output  [63:0] frf_r1_data;
   output  [13:0] frf_r1_ecc;
   output  [63:0] frf_r2_data;
   output  [13:0] frf_r2_ecc;

   // -----------------------------------------------------------------------
   // global signals
   // -----------------------------------------------------------------------

   input        l2clk;
   input        scan_in;
   input	pce;
   input        tcu_pce_ov;
   input        tcu_aclk;
   input        tcu_bclk;
   input        tcu_array_wr_inhibit;
   input	tcu_scan_en;
   input        tcu_se_scancollar_in;

   input        main_clken;

   output       scan_out;


   // -----------------------------------------------------------------------
   // Reading controls
   // -----------------------------------------------------------------------
   input    [2:0] r_tid;
   input          r1_valid;
   input    [4:0] r1_addr;
   input          r2_valid;
   input    [4:0] r2_addr;
 
   // -----------------------------------------------------------------------
   // Writing controls 
   // -----------------------------------------------------------------------
   input    [2:0] w1_tid;
   input    [1:0] w1_valid;
   input    [4:0] w1_addr;
   input    [2:0] w2_tid;
   input    [1:0] w2_valid;
   input    [4:0] w2_addr;

   // -----------------------------------------------------------------------
   // Write data ports
   // -----------------------------------------------------------------------
   input   [63:0] w1_data;
   input   [13:0] w1_ecc;
   input   [63:0] w2_data;
   input   [13:0] w2_ecc;
endmodule  // fgu_frf_cust
