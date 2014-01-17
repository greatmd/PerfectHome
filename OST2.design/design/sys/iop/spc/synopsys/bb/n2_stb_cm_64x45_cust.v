module n2_stb_cm_64x45_cust (
  stb_cam_rw_ptr, 
  stb_cam_rw_tid, 
  stb_cam_wptr_vld, 
  stb_cam_rptr_vld, 
  stb_camwr_data, 
  stb_cam_vld, 
  stb_cam_cm_tid, 
  stb_cam_line_en, 
  stb_quad_ld_cam, 
  stb_rdata_ramc, 
  stb_ld_partial_raw, 
  stb_cam_hit_ptr, 
  stb_cam_hit, 
  stb_cam_mhit, 
  l2clk, 
  scan_in, 
  tcu_pce_ov, 
  tcu_aclk, 
  tcu_bclk, 
  tcu_scan_en, 
  tcu_se_scancollar_in, 
  tcu_se_scancollar_out, 
  tcu_array_wr_inhibit, 
  pce, 
  scan_out);


input	[2:0]	stb_cam_rw_ptr ;	// wr pointer for single port.
input	[2:0]	stb_cam_rw_tid ;	// thread id for rw.
input		stb_cam_wptr_vld ;	// write pointer vld
input		stb_cam_rptr_vld ;	// read pointer vld

input	[44:0]	stb_camwr_data ;	// data for compare/write
input		stb_cam_vld ;		// cam is required.
input	[2:0]	stb_cam_cm_tid ;	// thread id for cam operation.
input	[7:0]	stb_cam_line_en;	// mask for squashing cam results (unflopped input)

input		stb_quad_ld_cam ; 	// quad-ld cam.


output	[44:0]	stb_rdata_ramc ;  // rd data from CAM RAM.
output		stb_ld_partial_raw ; // ld with partial raw.
output	[2:0]	stb_cam_hit_ptr ;
output		stb_cam_hit ;	  // any hit in stb
output		stb_cam_mhit ;	  // multiple hits in stb	

input		l2clk;
input		scan_in;
input		tcu_pce_ov;
input		tcu_aclk;
input		tcu_bclk;
input		tcu_scan_en;
input		tcu_se_scancollar_in;
input		tcu_se_scancollar_out;
input		tcu_array_wr_inhibit;
input		pce;
output		scan_out;

endmodule
