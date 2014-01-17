//****************************************************************************** */
//*                                                                              */
//*STATEMENT OF USE                                                              */
//*                                                                              */
//*This information contains confidential and proprietary information of TSMC.   */
//*No part of this information may be reproduced, transmitted, transcribed,      */
//*stored in a retrieval system, or translated into any human or computer        */
//*language, in any form or by any means, electronic, mechanical, magnetic,      */
//*optical, chemical, manual, or otherwise, without the prior written permission */
//*of TSMC. This information was prepared for informational purpose and is for   */
//*use by TSMC's customers only. TSMC reserves the right to make changes in the  */
//*information at any time and without notice.                                   */
//*                                                                              */
//****************************************************************************** */
//*                                                                              */
//*      Usage Limitation: PLEASE READ CAREFULLY FOR CORRECT USAGE               */
//*                                                                              */
//* The model doesn't support the control enable, data and address signals       */
//* transition at positive clock edge.                                           */
//* Please have some timing delays between control/data/address and clock signals*/
//* to ensure the correct behavior.                                              */
//*                                                                              */
//* Please be careful when using non 2^n  memory.                                */
//* In a non-fully decoded array, a write cycle to a nonexistent address location*/
//* does not change the memory array contents and output remains the same.       */
//* In a non-fully decoded array, a read cycle to a nonexistent address location */
//* does not change the memory array contents but the output becomes unknown.    */
//*                                                                              */
//* In the verilog model, the behavior of unknown clock will corrupt the         */
//* memory data and make output unknown regardless of WEB/REB signal.But in the  */
//* silicon, the unknown clock at WEB/REB high, the memory and output data will  */
//* be held. The verilog model behavior is more conservative in this condition.  */
//*                                                                              */
//* The model doesn't identify physical column and row address                   */
//*                                                                              */
//* The verilog model provides UNIT_DELAY mode for the fast function simulation. */
//* All timing values in the specification are not checked in the UNIT_DELAY mode*/
//* simulation.                                                                  */
//*                                                                              */
//* The critical contention timings, tcc, is not checked in the UNIT_DELAY mode  */
//* simulation.  If addresses of read and write operations are the same and the  */
//* real time of the positive edge of CLKA and CLKB are identical the same,      */
//* it will be treated as a read/write port contention.                          */ 
//*                                                                              */
//* Please use the verilog simulator version with $recrem timing check support.  */
//* Some earlier simulator versions might support $recovery only, not $recrem.   */
//*                                                                              */
//****************************************************************************** */
//*      Macro Usage       : (+define[MACRO] for Verilog compiliers)             */
//* +UNIT_DELAY : Enable fast function simulation.                              */
//* +no_warning : Disable all runtime warnings message from this model.          */
//* +TSMC_INITIALIZE_MEM : Initialize the memory data in verilog format.         */
//* +TSMC_INITIALIZE_FAULT : Initialize the memory fault data in verilog format. */
//* +TSMC_NO_TESTPINS_WARNING : Disable the wrong test pins connection error     */
//*                             message if necessary.                            */
//* +NO_INPUT_FLOATING_CHECK : Turn off floating check for all input pins in     */
//*                            standby mode.                                     */
//****************************************************************************** */
//*******************************************************************************
//*        Software         : TSMC MEMORY COMPILER tsn28hpm2prf_2011.06.06.110c */
//*        Technology       : TSMC 28nm CMOS LOGIC High Performance Mobile 1P10M HKMG CU_ELK 0.9V */
//*        Memory Type      : TSMC 28nm High Performance Mobile Two Port Register File */
//*                         : with d240 bit cell SVT periphery */
//*        Library Name     : ts6n28hpma256x64m4f (user specify : TS6N28HPMA256X64M4F) */
//*        Library Version  : 110c */
//*        Template Version : S_01_23701 */
//*        Generated Time   : 2013/09/17, 17:42:29 */
//*************************************************************************** ** */
`resetall
`celldefine

`timescale 1ns/1ps
`delay_mode_path

`suppress_faults
`enable_portfaults

`ifdef UNIT_DELAY
`define SRAM_DELAY 0.0010
`endif

module TS6N28HPMA256X64M4F
  (AA,
  D,
  WEB,CLKW,
  AB,
  REB,CLKR,
    RCT,
    WCT,
    KP,
  Q);

// Parameter declarations
parameter  N = 64;
parameter  W = 256;
parameter  M = 8;



// Input-Output declarations
   input [M-1:0] AA;                // Address write bus
   input [N-1:0] D;                 // Date input bus
   input         WEB;               // Active-low Write enable
   input         CLKW;              // Clock A
   input [M-1:0] AB;                // Address read bus 
   input         REB;               // Active-low Read enable
   input         CLKR;              // Clock B
// Test Mode
   input [1:0] RCT;
   input [1:0] WCT;
   input [2:0] KP;

   output [N-1:0] Q;                 // Data output bus


`ifdef no_warning
parameter MES_ALL = "OFF";
`else
parameter MES_ALL = "ON";
`endif

`ifdef TSMC_INITIALIZE_MEM
  parameter cdeFileInit  = "TS6N28HPMA256X64M4F_initial.cde";
`endif
`ifdef TSMC_INITIALIZE_FAULT
   parameter cdeFileFault = "TS6N28HPMA256X64M4F_fault.cde";
`endif

// Registers
reg [N-1:0] DL;

reg [N-1:0] BWEBL;
reg [N-1:0] bBWEBL;

reg [M-1:0] AAL;
reg [M-1:0] ABL;

reg WEBL;
reg REBL;

wire [N-1:0] QL;

wire            bSLP = 1'b0;
wire            bDSLP = 1'b0;
wire            bSD = 1'b0;

reg valid_ckr, valid_ckw;
reg valid_wea;
reg valid_reb;
reg valid_aa;
reg valid_ab;
reg valid_pd;
reg valid_contention;
reg valid_d63, valid_d62, valid_d61, valid_d60, valid_d59, valid_d58, valid_d57, valid_d56, valid_d55, valid_d54, valid_d53, valid_d52, valid_d51, valid_d50, valid_d49, valid_d48, valid_d47, valid_d46, valid_d45, valid_d44, valid_d43, valid_d42, valid_d41, valid_d40, valid_d39, valid_d38, valid_d37, valid_d36, valid_d35, valid_d34, valid_d33, valid_d32, valid_d31, valid_d30, valid_d29, valid_d28, valid_d27, valid_d26, valid_d25, valid_d24, valid_d23, valid_d22, valid_d21, valid_d20, valid_d19, valid_d18, valid_d17, valid_d16, valid_d15, valid_d14, valid_d13, valid_d12, valid_d11, valid_d10, valid_d9, valid_d8, valid_d7, valid_d6, valid_d5, valid_d4, valid_d3, valid_d2, valid_d1, valid_d0;
reg valid_bw63, valid_bw62, valid_bw61, valid_bw60, valid_bw59, valid_bw58, valid_bw57, valid_bw56, valid_bw55, valid_bw54, valid_bw53, valid_bw52, valid_bw51, valid_bw50, valid_bw49, valid_bw48, valid_bw47, valid_bw46, valid_bw45, valid_bw44, valid_bw43, valid_bw42, valid_bw41, valid_bw40, valid_bw39, valid_bw38, valid_bw37, valid_bw36, valid_bw35, valid_bw34, valid_bw33, valid_bw32, valid_bw31, valid_bw30, valid_bw29, valid_bw28, valid_bw27, valid_bw26, valid_bw25, valid_bw24, valid_bw23, valid_bw22, valid_bw21, valid_bw20, valid_bw19, valid_bw18, valid_bw17, valid_bw16, valid_bw15, valid_bw14, valid_bw13, valid_bw12, valid_bw11, valid_bw10, valid_bw9, valid_bw8, valid_bw7, valid_bw6, valid_bw5, valid_bw4, valid_bw3, valid_bw2, valid_bw1, valid_bw0;

reg rstb_toggle_flag;




integer clk_count;

reg EN;
reg RDA, RDB;

reg RCLKW,RCLKR;

wire [N-1:0] bBWEB;
assign bBWEB = {N{1'b0}};

wire [N-1:0] bD;

wire [M-1:0] bAA;
wire [M-1:0] bAB;

wire bWEB;
wire bREB;
wire bCLKW,bCLKR;

// Test Mode
wire [1:0] RCT_i;
wire [1:0] WCT_i;
wire [2:0] KP_i;

reg [N-1:0] bQ;
wire [N-1:0] bbQ;


integer i;
 
// Address Inputs
buf sAA0 (bAA[0], AA[0]);
buf sAB0 (bAB[0], AB[0]);
buf sAA1 (bAA[1], AA[1]);
buf sAB1 (bAB[1], AB[1]);
buf sAA2 (bAA[2], AA[2]);
buf sAB2 (bAB[2], AB[2]);
buf sAA3 (bAA[3], AA[3]);
buf sAB3 (bAB[3], AB[3]);
buf sAA4 (bAA[4], AA[4]);
buf sAB4 (bAB[4], AB[4]);
buf sAA5 (bAA[5], AA[5]);
buf sAB5 (bAB[5], AB[5]);
buf sAA6 (bAA[6], AA[6]);
buf sAB6 (bAB[6], AB[6]);
buf sAA7 (bAA[7], AA[7]);
buf sAB7 (bAB[7], AB[7]);


// Bit Write/Data Inputs 
buf sD0 (bD[0], D[0]);
buf sD1 (bD[1], D[1]);
buf sD2 (bD[2], D[2]);
buf sD3 (bD[3], D[3]);
buf sD4 (bD[4], D[4]);
buf sD5 (bD[5], D[5]);
buf sD6 (bD[6], D[6]);
buf sD7 (bD[7], D[7]);
buf sD8 (bD[8], D[8]);
buf sD9 (bD[9], D[9]);
buf sD10 (bD[10], D[10]);
buf sD11 (bD[11], D[11]);
buf sD12 (bD[12], D[12]);
buf sD13 (bD[13], D[13]);
buf sD14 (bD[14], D[14]);
buf sD15 (bD[15], D[15]);
buf sD16 (bD[16], D[16]);
buf sD17 (bD[17], D[17]);
buf sD18 (bD[18], D[18]);
buf sD19 (bD[19], D[19]);
buf sD20 (bD[20], D[20]);
buf sD21 (bD[21], D[21]);
buf sD22 (bD[22], D[22]);
buf sD23 (bD[23], D[23]);
buf sD24 (bD[24], D[24]);
buf sD25 (bD[25], D[25]);
buf sD26 (bD[26], D[26]);
buf sD27 (bD[27], D[27]);
buf sD28 (bD[28], D[28]);
buf sD29 (bD[29], D[29]);
buf sD30 (bD[30], D[30]);
buf sD31 (bD[31], D[31]);
buf sD32 (bD[32], D[32]);
buf sD33 (bD[33], D[33]);
buf sD34 (bD[34], D[34]);
buf sD35 (bD[35], D[35]);
buf sD36 (bD[36], D[36]);
buf sD37 (bD[37], D[37]);
buf sD38 (bD[38], D[38]);
buf sD39 (bD[39], D[39]);
buf sD40 (bD[40], D[40]);
buf sD41 (bD[41], D[41]);
buf sD42 (bD[42], D[42]);
buf sD43 (bD[43], D[43]);
buf sD44 (bD[44], D[44]);
buf sD45 (bD[45], D[45]);
buf sD46 (bD[46], D[46]);
buf sD47 (bD[47], D[47]);
buf sD48 (bD[48], D[48]);
buf sD49 (bD[49], D[49]);
buf sD50 (bD[50], D[50]);
buf sD51 (bD[51], D[51]);
buf sD52 (bD[52], D[52]);
buf sD53 (bD[53], D[53]);
buf sD54 (bD[54], D[54]);
buf sD55 (bD[55], D[55]);
buf sD56 (bD[56], D[56]);
buf sD57 (bD[57], D[57]);
buf sD58 (bD[58], D[58]);
buf sD59 (bD[59], D[59]);
buf sD60 (bD[60], D[60]);
buf sD61 (bD[61], D[61]);
buf sD62 (bD[62], D[62]);
buf sD63 (bD[63], D[63]);


// Input Controls
buf sWEB (bWEB, WEB);
buf sREB (bREB, REB);
buf sCLKW (bCLKW, CLKW);
buf sCLKR (bCLKR, CLKR);

buf sWE (WE, !bWEB);
buf sRE (RE, !bREB);




// Test Mode
buf sRCT0 (RCT_i[0], RCT[0]);
buf sRCT1 (RCT_i[1], RCT[1]);
buf sWCT0 (WCT_i[0], WCT[0]);
buf sWCT1 (WCT_i[1], WCT[1]);
buf sKP0 (KP_i[0], KP[0]);
buf sKP1 (KP_i[1], KP[1]);
buf sKP2 (KP_i[2], KP[2]);

// Output Data
buf sQ0 (Q[0], bbQ[0]);
//nmos (Q[0], bbQ[0], 1'b1);
buf sQ1 (Q[1], bbQ[1]);
//nmos (Q[1], bbQ[1], 1'b1);
buf sQ2 (Q[2], bbQ[2]);
//nmos (Q[2], bbQ[2], 1'b1);
buf sQ3 (Q[3], bbQ[3]);
//nmos (Q[3], bbQ[3], 1'b1);
buf sQ4 (Q[4], bbQ[4]);
//nmos (Q[4], bbQ[4], 1'b1);
buf sQ5 (Q[5], bbQ[5]);
//nmos (Q[5], bbQ[5], 1'b1);
buf sQ6 (Q[6], bbQ[6]);
//nmos (Q[6], bbQ[6], 1'b1);
buf sQ7 (Q[7], bbQ[7]);
//nmos (Q[7], bbQ[7], 1'b1);
buf sQ8 (Q[8], bbQ[8]);
//nmos (Q[8], bbQ[8], 1'b1);
buf sQ9 (Q[9], bbQ[9]);
//nmos (Q[9], bbQ[9], 1'b1);
buf sQ10 (Q[10], bbQ[10]);
//nmos (Q[10], bbQ[10], 1'b1);
buf sQ11 (Q[11], bbQ[11]);
//nmos (Q[11], bbQ[11], 1'b1);
buf sQ12 (Q[12], bbQ[12]);
//nmos (Q[12], bbQ[12], 1'b1);
buf sQ13 (Q[13], bbQ[13]);
//nmos (Q[13], bbQ[13], 1'b1);
buf sQ14 (Q[14], bbQ[14]);
//nmos (Q[14], bbQ[14], 1'b1);
buf sQ15 (Q[15], bbQ[15]);
//nmos (Q[15], bbQ[15], 1'b1);
buf sQ16 (Q[16], bbQ[16]);
//nmos (Q[16], bbQ[16], 1'b1);
buf sQ17 (Q[17], bbQ[17]);
//nmos (Q[17], bbQ[17], 1'b1);
buf sQ18 (Q[18], bbQ[18]);
//nmos (Q[18], bbQ[18], 1'b1);
buf sQ19 (Q[19], bbQ[19]);
//nmos (Q[19], bbQ[19], 1'b1);
buf sQ20 (Q[20], bbQ[20]);
//nmos (Q[20], bbQ[20], 1'b1);
buf sQ21 (Q[21], bbQ[21]);
//nmos (Q[21], bbQ[21], 1'b1);
buf sQ22 (Q[22], bbQ[22]);
//nmos (Q[22], bbQ[22], 1'b1);
buf sQ23 (Q[23], bbQ[23]);
//nmos (Q[23], bbQ[23], 1'b1);
buf sQ24 (Q[24], bbQ[24]);
//nmos (Q[24], bbQ[24], 1'b1);
buf sQ25 (Q[25], bbQ[25]);
//nmos (Q[25], bbQ[25], 1'b1);
buf sQ26 (Q[26], bbQ[26]);
//nmos (Q[26], bbQ[26], 1'b1);
buf sQ27 (Q[27], bbQ[27]);
//nmos (Q[27], bbQ[27], 1'b1);
buf sQ28 (Q[28], bbQ[28]);
//nmos (Q[28], bbQ[28], 1'b1);
buf sQ29 (Q[29], bbQ[29]);
//nmos (Q[29], bbQ[29], 1'b1);
buf sQ30 (Q[30], bbQ[30]);
//nmos (Q[30], bbQ[30], 1'b1);
buf sQ31 (Q[31], bbQ[31]);
//nmos (Q[31], bbQ[31], 1'b1);
buf sQ32 (Q[32], bbQ[32]);
//nmos (Q[32], bbQ[32], 1'b1);
buf sQ33 (Q[33], bbQ[33]);
//nmos (Q[33], bbQ[33], 1'b1);
buf sQ34 (Q[34], bbQ[34]);
//nmos (Q[34], bbQ[34], 1'b1);
buf sQ35 (Q[35], bbQ[35]);
//nmos (Q[35], bbQ[35], 1'b1);
buf sQ36 (Q[36], bbQ[36]);
//nmos (Q[36], bbQ[36], 1'b1);
buf sQ37 (Q[37], bbQ[37]);
//nmos (Q[37], bbQ[37], 1'b1);
buf sQ38 (Q[38], bbQ[38]);
//nmos (Q[38], bbQ[38], 1'b1);
buf sQ39 (Q[39], bbQ[39]);
//nmos (Q[39], bbQ[39], 1'b1);
buf sQ40 (Q[40], bbQ[40]);
//nmos (Q[40], bbQ[40], 1'b1);
buf sQ41 (Q[41], bbQ[41]);
//nmos (Q[41], bbQ[41], 1'b1);
buf sQ42 (Q[42], bbQ[42]);
//nmos (Q[42], bbQ[42], 1'b1);
buf sQ43 (Q[43], bbQ[43]);
//nmos (Q[43], bbQ[43], 1'b1);
buf sQ44 (Q[44], bbQ[44]);
//nmos (Q[44], bbQ[44], 1'b1);
buf sQ45 (Q[45], bbQ[45]);
//nmos (Q[45], bbQ[45], 1'b1);
buf sQ46 (Q[46], bbQ[46]);
//nmos (Q[46], bbQ[46], 1'b1);
buf sQ47 (Q[47], bbQ[47]);
//nmos (Q[47], bbQ[47], 1'b1);
buf sQ48 (Q[48], bbQ[48]);
//nmos (Q[48], bbQ[48], 1'b1);
buf sQ49 (Q[49], bbQ[49]);
//nmos (Q[49], bbQ[49], 1'b1);
buf sQ50 (Q[50], bbQ[50]);
//nmos (Q[50], bbQ[50], 1'b1);
buf sQ51 (Q[51], bbQ[51]);
//nmos (Q[51], bbQ[51], 1'b1);
buf sQ52 (Q[52], bbQ[52]);
//nmos (Q[52], bbQ[52], 1'b1);
buf sQ53 (Q[53], bbQ[53]);
//nmos (Q[53], bbQ[53], 1'b1);
buf sQ54 (Q[54], bbQ[54]);
//nmos (Q[54], bbQ[54], 1'b1);
buf sQ55 (Q[55], bbQ[55]);
//nmos (Q[55], bbQ[55], 1'b1);
buf sQ56 (Q[56], bbQ[56]);
//nmos (Q[56], bbQ[56], 1'b1);
buf sQ57 (Q[57], bbQ[57]);
//nmos (Q[57], bbQ[57], 1'b1);
buf sQ58 (Q[58], bbQ[58]);
//nmos (Q[58], bbQ[58], 1'b1);
buf sQ59 (Q[59], bbQ[59]);
//nmos (Q[59], bbQ[59], 1'b1);
buf sQ60 (Q[60], bbQ[60]);
//nmos (Q[60], bbQ[60], 1'b1);
buf sQ61 (Q[61], bbQ[61]);
//nmos (Q[61], bbQ[61], 1'b1);
buf sQ62 (Q[62], bbQ[62]);
//nmos (Q[62], bbQ[62], 1'b1);
buf sQ63 (Q[63], bbQ[63]);
//nmos (Q[63], bbQ[63], 1'b1);

assign bbQ=bQ;


wire AeqB, BeqA;
wire AbeforeB, BbeforeA;

real CLKR_time, CLKW_time;
real tw_ff;
real tr_ff;
 
wire CLK_same;   
assign CLK_same = ((CLKR_time == CLKW_time)?1'b1:1'b0);

wire AeqBL;
assign AeqBL = ( (AAL == ABL) ) ? 1'b1:1'b0;
`ifdef UNIT_DELAY
`else

assign AeqB = (((bAA == bAB) && CLK_same) || ((AAL == bAB) && !CLK_same)) ? 1'b1:1'b0;
assign BeqA = (((bAB == bAA) && CLK_same) || ((ABL == bAA) && !CLK_same)) ? 1'b1:1'b0;
 
assign AbeforeB = (((!bWEB && !bREB && CLK_same) || (!WEBL && !bREB && !CLK_same)) && AeqB) ? 1'b1:1'b0;
assign BbeforeA = (((!bREB && !bWEB && CLK_same) || (!REBL && !bWEB && !CLK_same)) && BeqA) ? 1'b1:1'b0;
`endif

wire iREB = bREB;
wire iWEB = bWEB;
wire [N-1:0] iBWEB = bBWEB;



  
     
  

wire check_slp = ~bSD & ~bDSLP;


`ifdef UNIT_DELAY
`else
specify

   specparam PATHPULSE$CLKR$Q = ( 0, 0.001 );


specparam

taas = 0.1557,
taah = 0.1089,
tabs = 0.2513,
tabh = 0.1084,
tds  = 0.0641,
tdh  = 0.1562,
tws  = 0.2294,
twh  = 0.0364,
trs  = 0.2315,
trh  = 0.0357,


trckl = 0.3856,
trckh = 0.1237,
twckl = 0.3257,
twckh = 0.1203,
twcyc = 0.5873,
trcyc = 0.6716,
trwcc = 0.6716,
twrcc = 0.6838,











tcd = 0.3400,
thold = 0.1793;
$recrem (posedge CLKW, posedge CLKR &&& AbeforeB, twrcc, 0, valid_contention);
$recrem (posedge CLKR, posedge CLKW &&& BbeforeA, trwcc, 0, valid_contention);






  $setuphold (posedge CLKW &&& WE, posedge AA[0], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE, negedge AA[0], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE, posedge AB[0], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE, negedge AB[0], tabs, tabh, valid_ab);
  $setuphold (posedge CLKW &&& WE, posedge AA[1], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE, negedge AA[1], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE, posedge AB[1], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE, negedge AB[1], tabs, tabh, valid_ab);
  $setuphold (posedge CLKW &&& WE, posedge AA[2], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE, negedge AA[2], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE, posedge AB[2], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE, negedge AB[2], tabs, tabh, valid_ab);
  $setuphold (posedge CLKW &&& WE, posedge AA[3], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE, negedge AA[3], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE, posedge AB[3], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE, negedge AB[3], tabs, tabh, valid_ab);
  $setuphold (posedge CLKW &&& WE, posedge AA[4], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE, negedge AA[4], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE, posedge AB[4], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE, negedge AB[4], tabs, tabh, valid_ab);
  $setuphold (posedge CLKW &&& WE, posedge AA[5], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE, negedge AA[5], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE, posedge AB[5], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE, negedge AB[5], tabs, tabh, valid_ab);
  $setuphold (posedge CLKW &&& WE, posedge AA[6], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE, negedge AA[6], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE, posedge AB[6], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE, negedge AB[6], tabs, tabh, valid_ab);
  $setuphold (posedge CLKW &&& WE, posedge AA[7], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE, negedge AA[7], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE, posedge AB[7], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE, negedge AB[7], tabs, tabh, valid_ab);

  $setuphold (posedge CLKW &&& WE, posedge D[0], tds, tdh, valid_d0);
  $setuphold (posedge CLKW &&& WE, negedge D[0], tds, tdh, valid_d0);
 
  $setuphold (posedge CLKW &&& WE, posedge D[1], tds, tdh, valid_d1);
  $setuphold (posedge CLKW &&& WE, negedge D[1], tds, tdh, valid_d1);
 
  $setuphold (posedge CLKW &&& WE, posedge D[2], tds, tdh, valid_d2);
  $setuphold (posedge CLKW &&& WE, negedge D[2], tds, tdh, valid_d2);
 
  $setuphold (posedge CLKW &&& WE, posedge D[3], tds, tdh, valid_d3);
  $setuphold (posedge CLKW &&& WE, negedge D[3], tds, tdh, valid_d3);
 
  $setuphold (posedge CLKW &&& WE, posedge D[4], tds, tdh, valid_d4);
  $setuphold (posedge CLKW &&& WE, negedge D[4], tds, tdh, valid_d4);
 
  $setuphold (posedge CLKW &&& WE, posedge D[5], tds, tdh, valid_d5);
  $setuphold (posedge CLKW &&& WE, negedge D[5], tds, tdh, valid_d5);
 
  $setuphold (posedge CLKW &&& WE, posedge D[6], tds, tdh, valid_d6);
  $setuphold (posedge CLKW &&& WE, negedge D[6], tds, tdh, valid_d6);
 
  $setuphold (posedge CLKW &&& WE, posedge D[7], tds, tdh, valid_d7);
  $setuphold (posedge CLKW &&& WE, negedge D[7], tds, tdh, valid_d7);
 
  $setuphold (posedge CLKW &&& WE, posedge D[8], tds, tdh, valid_d8);
  $setuphold (posedge CLKW &&& WE, negedge D[8], tds, tdh, valid_d8);
 
  $setuphold (posedge CLKW &&& WE, posedge D[9], tds, tdh, valid_d9);
  $setuphold (posedge CLKW &&& WE, negedge D[9], tds, tdh, valid_d9);
 
  $setuphold (posedge CLKW &&& WE, posedge D[10], tds, tdh, valid_d10);
  $setuphold (posedge CLKW &&& WE, negedge D[10], tds, tdh, valid_d10);
 
  $setuphold (posedge CLKW &&& WE, posedge D[11], tds, tdh, valid_d11);
  $setuphold (posedge CLKW &&& WE, negedge D[11], tds, tdh, valid_d11);
 
  $setuphold (posedge CLKW &&& WE, posedge D[12], tds, tdh, valid_d12);
  $setuphold (posedge CLKW &&& WE, negedge D[12], tds, tdh, valid_d12);
 
  $setuphold (posedge CLKW &&& WE, posedge D[13], tds, tdh, valid_d13);
  $setuphold (posedge CLKW &&& WE, negedge D[13], tds, tdh, valid_d13);
 
  $setuphold (posedge CLKW &&& WE, posedge D[14], tds, tdh, valid_d14);
  $setuphold (posedge CLKW &&& WE, negedge D[14], tds, tdh, valid_d14);
 
  $setuphold (posedge CLKW &&& WE, posedge D[15], tds, tdh, valid_d15);
  $setuphold (posedge CLKW &&& WE, negedge D[15], tds, tdh, valid_d15);
 
  $setuphold (posedge CLKW &&& WE, posedge D[16], tds, tdh, valid_d16);
  $setuphold (posedge CLKW &&& WE, negedge D[16], tds, tdh, valid_d16);
 
  $setuphold (posedge CLKW &&& WE, posedge D[17], tds, tdh, valid_d17);
  $setuphold (posedge CLKW &&& WE, negedge D[17], tds, tdh, valid_d17);
 
  $setuphold (posedge CLKW &&& WE, posedge D[18], tds, tdh, valid_d18);
  $setuphold (posedge CLKW &&& WE, negedge D[18], tds, tdh, valid_d18);
 
  $setuphold (posedge CLKW &&& WE, posedge D[19], tds, tdh, valid_d19);
  $setuphold (posedge CLKW &&& WE, negedge D[19], tds, tdh, valid_d19);
 
  $setuphold (posedge CLKW &&& WE, posedge D[20], tds, tdh, valid_d20);
  $setuphold (posedge CLKW &&& WE, negedge D[20], tds, tdh, valid_d20);
 
  $setuphold (posedge CLKW &&& WE, posedge D[21], tds, tdh, valid_d21);
  $setuphold (posedge CLKW &&& WE, negedge D[21], tds, tdh, valid_d21);
 
  $setuphold (posedge CLKW &&& WE, posedge D[22], tds, tdh, valid_d22);
  $setuphold (posedge CLKW &&& WE, negedge D[22], tds, tdh, valid_d22);
 
  $setuphold (posedge CLKW &&& WE, posedge D[23], tds, tdh, valid_d23);
  $setuphold (posedge CLKW &&& WE, negedge D[23], tds, tdh, valid_d23);
 
  $setuphold (posedge CLKW &&& WE, posedge D[24], tds, tdh, valid_d24);
  $setuphold (posedge CLKW &&& WE, negedge D[24], tds, tdh, valid_d24);
 
  $setuphold (posedge CLKW &&& WE, posedge D[25], tds, tdh, valid_d25);
  $setuphold (posedge CLKW &&& WE, negedge D[25], tds, tdh, valid_d25);
 
  $setuphold (posedge CLKW &&& WE, posedge D[26], tds, tdh, valid_d26);
  $setuphold (posedge CLKW &&& WE, negedge D[26], tds, tdh, valid_d26);
 
  $setuphold (posedge CLKW &&& WE, posedge D[27], tds, tdh, valid_d27);
  $setuphold (posedge CLKW &&& WE, negedge D[27], tds, tdh, valid_d27);
 
  $setuphold (posedge CLKW &&& WE, posedge D[28], tds, tdh, valid_d28);
  $setuphold (posedge CLKW &&& WE, negedge D[28], tds, tdh, valid_d28);
 
  $setuphold (posedge CLKW &&& WE, posedge D[29], tds, tdh, valid_d29);
  $setuphold (posedge CLKW &&& WE, negedge D[29], tds, tdh, valid_d29);
 
  $setuphold (posedge CLKW &&& WE, posedge D[30], tds, tdh, valid_d30);
  $setuphold (posedge CLKW &&& WE, negedge D[30], tds, tdh, valid_d30);
 
  $setuphold (posedge CLKW &&& WE, posedge D[31], tds, tdh, valid_d31);
  $setuphold (posedge CLKW &&& WE, negedge D[31], tds, tdh, valid_d31);
 
  $setuphold (posedge CLKW &&& WE, posedge D[32], tds, tdh, valid_d32);
  $setuphold (posedge CLKW &&& WE, negedge D[32], tds, tdh, valid_d32);
 
  $setuphold (posedge CLKW &&& WE, posedge D[33], tds, tdh, valid_d33);
  $setuphold (posedge CLKW &&& WE, negedge D[33], tds, tdh, valid_d33);
 
  $setuphold (posedge CLKW &&& WE, posedge D[34], tds, tdh, valid_d34);
  $setuphold (posedge CLKW &&& WE, negedge D[34], tds, tdh, valid_d34);
 
  $setuphold (posedge CLKW &&& WE, posedge D[35], tds, tdh, valid_d35);
  $setuphold (posedge CLKW &&& WE, negedge D[35], tds, tdh, valid_d35);
 
  $setuphold (posedge CLKW &&& WE, posedge D[36], tds, tdh, valid_d36);
  $setuphold (posedge CLKW &&& WE, negedge D[36], tds, tdh, valid_d36);
 
  $setuphold (posedge CLKW &&& WE, posedge D[37], tds, tdh, valid_d37);
  $setuphold (posedge CLKW &&& WE, negedge D[37], tds, tdh, valid_d37);
 
  $setuphold (posedge CLKW &&& WE, posedge D[38], tds, tdh, valid_d38);
  $setuphold (posedge CLKW &&& WE, negedge D[38], tds, tdh, valid_d38);
 
  $setuphold (posedge CLKW &&& WE, posedge D[39], tds, tdh, valid_d39);
  $setuphold (posedge CLKW &&& WE, negedge D[39], tds, tdh, valid_d39);
 
  $setuphold (posedge CLKW &&& WE, posedge D[40], tds, tdh, valid_d40);
  $setuphold (posedge CLKW &&& WE, negedge D[40], tds, tdh, valid_d40);
 
  $setuphold (posedge CLKW &&& WE, posedge D[41], tds, tdh, valid_d41);
  $setuphold (posedge CLKW &&& WE, negedge D[41], tds, tdh, valid_d41);
 
  $setuphold (posedge CLKW &&& WE, posedge D[42], tds, tdh, valid_d42);
  $setuphold (posedge CLKW &&& WE, negedge D[42], tds, tdh, valid_d42);
 
  $setuphold (posedge CLKW &&& WE, posedge D[43], tds, tdh, valid_d43);
  $setuphold (posedge CLKW &&& WE, negedge D[43], tds, tdh, valid_d43);
 
  $setuphold (posedge CLKW &&& WE, posedge D[44], tds, tdh, valid_d44);
  $setuphold (posedge CLKW &&& WE, negedge D[44], tds, tdh, valid_d44);
 
  $setuphold (posedge CLKW &&& WE, posedge D[45], tds, tdh, valid_d45);
  $setuphold (posedge CLKW &&& WE, negedge D[45], tds, tdh, valid_d45);
 
  $setuphold (posedge CLKW &&& WE, posedge D[46], tds, tdh, valid_d46);
  $setuphold (posedge CLKW &&& WE, negedge D[46], tds, tdh, valid_d46);
 
  $setuphold (posedge CLKW &&& WE, posedge D[47], tds, tdh, valid_d47);
  $setuphold (posedge CLKW &&& WE, negedge D[47], tds, tdh, valid_d47);
 
  $setuphold (posedge CLKW &&& WE, posedge D[48], tds, tdh, valid_d48);
  $setuphold (posedge CLKW &&& WE, negedge D[48], tds, tdh, valid_d48);
 
  $setuphold (posedge CLKW &&& WE, posedge D[49], tds, tdh, valid_d49);
  $setuphold (posedge CLKW &&& WE, negedge D[49], tds, tdh, valid_d49);
 
  $setuphold (posedge CLKW &&& WE, posedge D[50], tds, tdh, valid_d50);
  $setuphold (posedge CLKW &&& WE, negedge D[50], tds, tdh, valid_d50);
 
  $setuphold (posedge CLKW &&& WE, posedge D[51], tds, tdh, valid_d51);
  $setuphold (posedge CLKW &&& WE, negedge D[51], tds, tdh, valid_d51);
 
  $setuphold (posedge CLKW &&& WE, posedge D[52], tds, tdh, valid_d52);
  $setuphold (posedge CLKW &&& WE, negedge D[52], tds, tdh, valid_d52);
 
  $setuphold (posedge CLKW &&& WE, posedge D[53], tds, tdh, valid_d53);
  $setuphold (posedge CLKW &&& WE, negedge D[53], tds, tdh, valid_d53);
 
  $setuphold (posedge CLKW &&& WE, posedge D[54], tds, tdh, valid_d54);
  $setuphold (posedge CLKW &&& WE, negedge D[54], tds, tdh, valid_d54);
 
  $setuphold (posedge CLKW &&& WE, posedge D[55], tds, tdh, valid_d55);
  $setuphold (posedge CLKW &&& WE, negedge D[55], tds, tdh, valid_d55);
 
  $setuphold (posedge CLKW &&& WE, posedge D[56], tds, tdh, valid_d56);
  $setuphold (posedge CLKW &&& WE, negedge D[56], tds, tdh, valid_d56);
 
  $setuphold (posedge CLKW &&& WE, posedge D[57], tds, tdh, valid_d57);
  $setuphold (posedge CLKW &&& WE, negedge D[57], tds, tdh, valid_d57);
 
  $setuphold (posedge CLKW &&& WE, posedge D[58], tds, tdh, valid_d58);
  $setuphold (posedge CLKW &&& WE, negedge D[58], tds, tdh, valid_d58);
 
  $setuphold (posedge CLKW &&& WE, posedge D[59], tds, tdh, valid_d59);
  $setuphold (posedge CLKW &&& WE, negedge D[59], tds, tdh, valid_d59);
 
  $setuphold (posedge CLKW &&& WE, posedge D[60], tds, tdh, valid_d60);
  $setuphold (posedge CLKW &&& WE, negedge D[60], tds, tdh, valid_d60);
 
  $setuphold (posedge CLKW &&& WE, posedge D[61], tds, tdh, valid_d61);
  $setuphold (posedge CLKW &&& WE, negedge D[61], tds, tdh, valid_d61);
 
  $setuphold (posedge CLKW &&& WE, posedge D[62], tds, tdh, valid_d62);
  $setuphold (posedge CLKW &&& WE, negedge D[62], tds, tdh, valid_d62);
 
  $setuphold (posedge CLKW &&& WE, posedge D[63], tds, tdh, valid_d63);
  $setuphold (posedge CLKW &&& WE, negedge D[63], tds, tdh, valid_d63);
 
  $setuphold (posedge CLKW, posedge WEB, tws, twh, valid_wea);
  $setuphold (posedge CLKW, negedge WEB, tws, twh, valid_wea);
  $setuphold (posedge CLKR, posedge REB, trs, trh, valid_reb);
  $setuphold (posedge CLKR, negedge REB, trs, trh, valid_reb);
 
  $width (negedge CLKW, twckl, 0, valid_ckw);
  $width (posedge CLKW, twckh, 0, valid_ckw);
  $width (negedge CLKR, trckl, 0, valid_ckr);
  $width (posedge CLKR, trckh, 0, valid_ckr);
  $period (posedge CLKW, twcyc, valid_ckw);
  $period (negedge CLKW, twcyc, valid_ckw);
  $period (posedge CLKR, trcyc, valid_ckr);
  $period (negedge CLKR, trcyc, valid_ckr);




 if (!REB) (posedge CLKR => (Q[0] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[1] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[2] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[3] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[4] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[5] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[6] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[7] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[8] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[9] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[10] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[11] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[12] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[13] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[14] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[15] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[16] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[17] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[18] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[19] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[20] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[21] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[22] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[23] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[24] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[25] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[26] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[27] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[28] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[29] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[30] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[31] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[32] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[33] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[34] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[35] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[36] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[37] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[38] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[39] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[40] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[41] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[42] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[43] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[44] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[45] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[46] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[47] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[48] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[49] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[50] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[51] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[52] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[53] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[54] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[55] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[56] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[57] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[58] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[59] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[60] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[61] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[62] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[63] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
endspecify
`endif

initial
begin
  assign EN = 1;
  clk_count = 0;
  RDB = 1'b0;
  BWEBL =  {N{1'b1}};
  valid_contention = 0;
  tw_ff = 0;
  tr_ff = 0;
  rstb_toggle_flag = 1'b1;
end

 `ifdef TSMC_INITIALIZE_MEM
initial
   begin 
     #0.01  $readmemh(cdeFileInit, MX.mem, 0, W-1);
   end
`endif //  `ifdef TSMC_INITIALIZE_MEM
   
`ifdef TSMC_INITIALIZE_FAULT
initial
   begin
     $readmemh(cdeFileFault, MX.mem_fault, 0, W-1);
   end
`endif //  `ifdef TSMC_INITIALIZE_FAULT

always @(posedge CLKR) CLKR_time = $realtime;
always @(posedge CLKW) CLKW_time = $realtime;

`ifdef TSMC_NO_TESTPINS_WARNING
`else
always @(bCLKW or bCLKR or RCT_i) begin
    if((RCT_i !== 2'b00) && ($realtime > 0)) begin
        $display("\tError %m : input RCT should be set to 2'b00 at simulation time %.1f\n", $realtime);
        #0;
        AAL <= {M{1'bx}};
        BWEBL <= {N{1'b0}};
        bQ = #0.01 {N{1'bx}};
    end
end

always @(bCLKW or bCLKR or WCT_i) begin
    if((WCT_i !== 2'b00) && ($realtime > 0)) begin
        $display("\tError %m : input WCT should be set to 2'b00 at simulation time %.1f\n", $realtime);
        #0;
        AAL <= {M{1'bx}};
        BWEBL <= {N{1'b0}};
        bQ = #0.01 {N{1'bx}};
    end
end

always @(bCLKW or bCLKR or KP_i) begin
    if((KP_i !== 3'b101) && ($realtime > 0)) begin
        $display("\tError %m : input KP should be set to 3'b101 at simulation time %.1f\n", $realtime);
        #0;
        AAL <= {M{1'bx}};
        BWEBL <= {N{1'b0}};
        bQ = #0.01 {N{1'bx}};
    end
end

`endif


always @(bCLKW)
begin

    if (bCLKW === 1'bx) begin
        if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m CLKW unknown at %t.>>", $realtime);
            #0;
            AAL <= {M{1'bx}};
            BWEBL <= {N{1'b0}};
        end
        else if (bCLKW === 1'b1 && RCLKW === 1'b0)
        begin
            WEBL = bWEB;
            AAL = bAA;
            if (bWEB === 1'bx) begin
                if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m WEB unknown at %t. >>", $realtime);
	            #0;
                DL <= {N{1'bx}};
	            BWEBL <= {N{1'b0}};
            end
            if (^bAA === 1'bx && bWEB === 1'b0) begin
	            if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m WRITE AA unknown at %t. >>", $realtime);
	            #0;
                AAL <= {M{1'bx}};
	            BWEBL <= {N{1'b0}};
            end
            else begin
            if (bWEB !== 1'b1) DL = bD;
            if (bWEB !== 1'b1) begin                         // begin if (bWEB !== 1'b1) 
                bBWEBL = bBWEB;
                if (^bBWEB === 1'bx) begin
                    if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m BWEB unknown at %t. >>", $realtime);
	            end
                for (i = 0; i < N; i = i + 1) 
                begin                      // begin for...
                    if (rstb_toggle_flag == 1'b1 && !bBWEB[i] && !bWEB) BWEBL[i] = 1'b0;
                    if ((bWEB===1'bx) || (bBWEB[i] ===1'bx))
                    begin                   // if (((...
                        BWEBL[i] = 1'b0; 
                        DL[i] = 1'bx;
                    end                     // end if (((...
                end                        // end for (
            end

            
        end // else: !if(^bAA === 1'bx && bWEB === 1'b0 && !bSLP)
    end // if (bCLKW === 1'b1 && RCLKW === 1'b0)
    RCLKW = bCLKW;
end // always @ (bCLKW)

always @(bCLKR)
  begin

   if (bCLKR === 1'bx) begin
      if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m CLKR unknown at %t.>>", $realtime);
      #0;
      bQ = #0.01 {N{1'bx}};
   end
   else if (bCLKR === 1'b1 && RCLKR === 1'b0)
   begin
      REBL = bREB;
      if (bREB === 1'bx) begin
           if( MES_ALL=="ON" && $realtime != 0)
              $display("\nWarning %m REB unknown at %t. >>", $realtime);
              bQ = #0.01 {N{1'bx}};
         end
      else if (^bAB === 1'bx && bREB === 1'b0) begin
           if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m READ AB unknown at %t. >>", $realtime);
	      #0;
              bQ = #0.01 {N{1'bx}};
         end
      else begin

      if (rstb_toggle_flag == 1'b1 && !bREB && clk_count == 0) begin
         ABL = bAB;
         RDB = #0 ~RDB;
      end
    end 
   end
   RCLKR = bCLKR;
  end

always @(RDB or QL) 
begin
    if (clk_count == 0)
    begin
`ifdef UNIT_DELAY
        #(`SRAM_DELAY);
`else
        bQ = {N{1'bx}};
        #0.01;
`endif
        bQ = QL;

        if (AeqBL && !WEBL && !REBL && CLK_same) 
        begin
            if( MES_ALL=="ON" && $realtime != 0)
            $display("\nWarning %m READ/WRITE contention. If BWEB enables, Outputs set to unknown at %t. >>", $realtime);
            #0.01;
            for (i=0; i<N; i=i+1)
            begin
                if(!bBWEBL[i] || bBWEBL[i]===1'bx)
                begin
                    bQ[i] <= 1'bx;
                end
            end
        end // if (AeqBL && !WEBL && !REBL && CLK_same)

    end // if (!bSLP && clk_count == 0)
end // always @ (RDB or QL)








always @(BWEBL) BWEBL = #0.01 {N{1'b1}};


 
always @(posedge AeqBL) begin
   if (!WEBL && !REBL && CLK_same && AeqBL) 
     begin
        if( MES_ALL=="ON" && $realtime != 0)
	    $display("\nWarning %m READ/WRITE contention. If BWEB enables, outputs set to unknown at %t. >>", $realtime);

        #0.01;
	    for (i=0; i<N; i=i+1)
	    begin
           if(!bBWEBL[i] || bBWEBL[i]===1'bx)
           begin
              bQ[i] <= 1'bx;
	       end
	    end
     end // if (!WEBL && !REBL && CLK_same)
end // always @ (posedge AeqBL)
`ifdef UNIT_DELAY
`else
always @(valid_aa)
   begin
      AAL = {M{1'bx}};
      BWEBL = {N{1'b0}};
   end

always @(valid_ab)
   begin
      #0;
      bQ = #0.01 {N{1'bx}};
   end

always @(valid_contention)
   begin
    #0.01;
	for (i=0; i<N; i=i+1)
	  begin
	     if(!iBWEB[i] || !BWEBL[i] || (iBWEB[i]===1'bx) || (BWEBL[i]===1'bx))
	       bQ[i] = 1'bx;
         end
   end

always @(valid_ckr)
   begin
      #0;
      bQ = #0.01 {N{1'bx}};
   end
 
always @(valid_ckw)
   begin
      AAL = {M{1'bx}};
      BWEBL = {N{1'b0}};
   end

always @(valid_d0)
   begin
      #0;
      DL[0] = 1'bx;
      BWEBL[0] = 1'b0;
   end

always @(valid_bw0)
   begin
      #0;
      DL[0] = 1'bx;
      BWEBL[0] = 1'b0;
   end

always @(valid_d1)
   begin
      #0;
      DL[1] = 1'bx;
      BWEBL[1] = 1'b0;
   end

always @(valid_bw1)
   begin
      #0;
      DL[1] = 1'bx;
      BWEBL[1] = 1'b0;
   end

always @(valid_d2)
   begin
      #0;
      DL[2] = 1'bx;
      BWEBL[2] = 1'b0;
   end

always @(valid_bw2)
   begin
      #0;
      DL[2] = 1'bx;
      BWEBL[2] = 1'b0;
   end

always @(valid_d3)
   begin
      #0;
      DL[3] = 1'bx;
      BWEBL[3] = 1'b0;
   end

always @(valid_bw3)
   begin
      #0;
      DL[3] = 1'bx;
      BWEBL[3] = 1'b0;
   end

always @(valid_d4)
   begin
      #0;
      DL[4] = 1'bx;
      BWEBL[4] = 1'b0;
   end

always @(valid_bw4)
   begin
      #0;
      DL[4] = 1'bx;
      BWEBL[4] = 1'b0;
   end

always @(valid_d5)
   begin
      #0;
      DL[5] = 1'bx;
      BWEBL[5] = 1'b0;
   end

always @(valid_bw5)
   begin
      #0;
      DL[5] = 1'bx;
      BWEBL[5] = 1'b0;
   end

always @(valid_d6)
   begin
      #0;
      DL[6] = 1'bx;
      BWEBL[6] = 1'b0;
   end

always @(valid_bw6)
   begin
      #0;
      DL[6] = 1'bx;
      BWEBL[6] = 1'b0;
   end

always @(valid_d7)
   begin
      #0;
      DL[7] = 1'bx;
      BWEBL[7] = 1'b0;
   end

always @(valid_bw7)
   begin
      #0;
      DL[7] = 1'bx;
      BWEBL[7] = 1'b0;
   end

always @(valid_d8)
   begin
      #0;
      DL[8] = 1'bx;
      BWEBL[8] = 1'b0;
   end

always @(valid_bw8)
   begin
      #0;
      DL[8] = 1'bx;
      BWEBL[8] = 1'b0;
   end

always @(valid_d9)
   begin
      #0;
      DL[9] = 1'bx;
      BWEBL[9] = 1'b0;
   end

always @(valid_bw9)
   begin
      #0;
      DL[9] = 1'bx;
      BWEBL[9] = 1'b0;
   end

always @(valid_d10)
   begin
      #0;
      DL[10] = 1'bx;
      BWEBL[10] = 1'b0;
   end

always @(valid_bw10)
   begin
      #0;
      DL[10] = 1'bx;
      BWEBL[10] = 1'b0;
   end

always @(valid_d11)
   begin
      #0;
      DL[11] = 1'bx;
      BWEBL[11] = 1'b0;
   end

always @(valid_bw11)
   begin
      #0;
      DL[11] = 1'bx;
      BWEBL[11] = 1'b0;
   end

always @(valid_d12)
   begin
      #0;
      DL[12] = 1'bx;
      BWEBL[12] = 1'b0;
   end

always @(valid_bw12)
   begin
      #0;
      DL[12] = 1'bx;
      BWEBL[12] = 1'b0;
   end

always @(valid_d13)
   begin
      #0;
      DL[13] = 1'bx;
      BWEBL[13] = 1'b0;
   end

always @(valid_bw13)
   begin
      #0;
      DL[13] = 1'bx;
      BWEBL[13] = 1'b0;
   end

always @(valid_d14)
   begin
      #0;
      DL[14] = 1'bx;
      BWEBL[14] = 1'b0;
   end

always @(valid_bw14)
   begin
      #0;
      DL[14] = 1'bx;
      BWEBL[14] = 1'b0;
   end

always @(valid_d15)
   begin
      #0;
      DL[15] = 1'bx;
      BWEBL[15] = 1'b0;
   end

always @(valid_bw15)
   begin
      #0;
      DL[15] = 1'bx;
      BWEBL[15] = 1'b0;
   end

always @(valid_d16)
   begin
      #0;
      DL[16] = 1'bx;
      BWEBL[16] = 1'b0;
   end

always @(valid_bw16)
   begin
      #0;
      DL[16] = 1'bx;
      BWEBL[16] = 1'b0;
   end

always @(valid_d17)
   begin
      #0;
      DL[17] = 1'bx;
      BWEBL[17] = 1'b0;
   end

always @(valid_bw17)
   begin
      #0;
      DL[17] = 1'bx;
      BWEBL[17] = 1'b0;
   end

always @(valid_d18)
   begin
      #0;
      DL[18] = 1'bx;
      BWEBL[18] = 1'b0;
   end

always @(valid_bw18)
   begin
      #0;
      DL[18] = 1'bx;
      BWEBL[18] = 1'b0;
   end

always @(valid_d19)
   begin
      #0;
      DL[19] = 1'bx;
      BWEBL[19] = 1'b0;
   end

always @(valid_bw19)
   begin
      #0;
      DL[19] = 1'bx;
      BWEBL[19] = 1'b0;
   end

always @(valid_d20)
   begin
      #0;
      DL[20] = 1'bx;
      BWEBL[20] = 1'b0;
   end

always @(valid_bw20)
   begin
      #0;
      DL[20] = 1'bx;
      BWEBL[20] = 1'b0;
   end

always @(valid_d21)
   begin
      #0;
      DL[21] = 1'bx;
      BWEBL[21] = 1'b0;
   end

always @(valid_bw21)
   begin
      #0;
      DL[21] = 1'bx;
      BWEBL[21] = 1'b0;
   end

always @(valid_d22)
   begin
      #0;
      DL[22] = 1'bx;
      BWEBL[22] = 1'b0;
   end

always @(valid_bw22)
   begin
      #0;
      DL[22] = 1'bx;
      BWEBL[22] = 1'b0;
   end

always @(valid_d23)
   begin
      #0;
      DL[23] = 1'bx;
      BWEBL[23] = 1'b0;
   end

always @(valid_bw23)
   begin
      #0;
      DL[23] = 1'bx;
      BWEBL[23] = 1'b0;
   end

always @(valid_d24)
   begin
      #0;
      DL[24] = 1'bx;
      BWEBL[24] = 1'b0;
   end

always @(valid_bw24)
   begin
      #0;
      DL[24] = 1'bx;
      BWEBL[24] = 1'b0;
   end

always @(valid_d25)
   begin
      #0;
      DL[25] = 1'bx;
      BWEBL[25] = 1'b0;
   end

always @(valid_bw25)
   begin
      #0;
      DL[25] = 1'bx;
      BWEBL[25] = 1'b0;
   end

always @(valid_d26)
   begin
      #0;
      DL[26] = 1'bx;
      BWEBL[26] = 1'b0;
   end

always @(valid_bw26)
   begin
      #0;
      DL[26] = 1'bx;
      BWEBL[26] = 1'b0;
   end

always @(valid_d27)
   begin
      #0;
      DL[27] = 1'bx;
      BWEBL[27] = 1'b0;
   end

always @(valid_bw27)
   begin
      #0;
      DL[27] = 1'bx;
      BWEBL[27] = 1'b0;
   end

always @(valid_d28)
   begin
      #0;
      DL[28] = 1'bx;
      BWEBL[28] = 1'b0;
   end

always @(valid_bw28)
   begin
      #0;
      DL[28] = 1'bx;
      BWEBL[28] = 1'b0;
   end

always @(valid_d29)
   begin
      #0;
      DL[29] = 1'bx;
      BWEBL[29] = 1'b0;
   end

always @(valid_bw29)
   begin
      #0;
      DL[29] = 1'bx;
      BWEBL[29] = 1'b0;
   end

always @(valid_d30)
   begin
      #0;
      DL[30] = 1'bx;
      BWEBL[30] = 1'b0;
   end

always @(valid_bw30)
   begin
      #0;
      DL[30] = 1'bx;
      BWEBL[30] = 1'b0;
   end

always @(valid_d31)
   begin
      #0;
      DL[31] = 1'bx;
      BWEBL[31] = 1'b0;
   end

always @(valid_bw31)
   begin
      #0;
      DL[31] = 1'bx;
      BWEBL[31] = 1'b0;
   end

always @(valid_d32)
   begin
      #0;
      DL[32] = 1'bx;
      BWEBL[32] = 1'b0;
   end

always @(valid_bw32)
   begin
      #0;
      DL[32] = 1'bx;
      BWEBL[32] = 1'b0;
   end

always @(valid_d33)
   begin
      #0;
      DL[33] = 1'bx;
      BWEBL[33] = 1'b0;
   end

always @(valid_bw33)
   begin
      #0;
      DL[33] = 1'bx;
      BWEBL[33] = 1'b0;
   end

always @(valid_d34)
   begin
      #0;
      DL[34] = 1'bx;
      BWEBL[34] = 1'b0;
   end

always @(valid_bw34)
   begin
      #0;
      DL[34] = 1'bx;
      BWEBL[34] = 1'b0;
   end

always @(valid_d35)
   begin
      #0;
      DL[35] = 1'bx;
      BWEBL[35] = 1'b0;
   end

always @(valid_bw35)
   begin
      #0;
      DL[35] = 1'bx;
      BWEBL[35] = 1'b0;
   end

always @(valid_d36)
   begin
      #0;
      DL[36] = 1'bx;
      BWEBL[36] = 1'b0;
   end

always @(valid_bw36)
   begin
      #0;
      DL[36] = 1'bx;
      BWEBL[36] = 1'b0;
   end

always @(valid_d37)
   begin
      #0;
      DL[37] = 1'bx;
      BWEBL[37] = 1'b0;
   end

always @(valid_bw37)
   begin
      #0;
      DL[37] = 1'bx;
      BWEBL[37] = 1'b0;
   end

always @(valid_d38)
   begin
      #0;
      DL[38] = 1'bx;
      BWEBL[38] = 1'b0;
   end

always @(valid_bw38)
   begin
      #0;
      DL[38] = 1'bx;
      BWEBL[38] = 1'b0;
   end

always @(valid_d39)
   begin
      #0;
      DL[39] = 1'bx;
      BWEBL[39] = 1'b0;
   end

always @(valid_bw39)
   begin
      #0;
      DL[39] = 1'bx;
      BWEBL[39] = 1'b0;
   end

always @(valid_d40)
   begin
      #0;
      DL[40] = 1'bx;
      BWEBL[40] = 1'b0;
   end

always @(valid_bw40)
   begin
      #0;
      DL[40] = 1'bx;
      BWEBL[40] = 1'b0;
   end

always @(valid_d41)
   begin
      #0;
      DL[41] = 1'bx;
      BWEBL[41] = 1'b0;
   end

always @(valid_bw41)
   begin
      #0;
      DL[41] = 1'bx;
      BWEBL[41] = 1'b0;
   end

always @(valid_d42)
   begin
      #0;
      DL[42] = 1'bx;
      BWEBL[42] = 1'b0;
   end

always @(valid_bw42)
   begin
      #0;
      DL[42] = 1'bx;
      BWEBL[42] = 1'b0;
   end

always @(valid_d43)
   begin
      #0;
      DL[43] = 1'bx;
      BWEBL[43] = 1'b0;
   end

always @(valid_bw43)
   begin
      #0;
      DL[43] = 1'bx;
      BWEBL[43] = 1'b0;
   end

always @(valid_d44)
   begin
      #0;
      DL[44] = 1'bx;
      BWEBL[44] = 1'b0;
   end

always @(valid_bw44)
   begin
      #0;
      DL[44] = 1'bx;
      BWEBL[44] = 1'b0;
   end

always @(valid_d45)
   begin
      #0;
      DL[45] = 1'bx;
      BWEBL[45] = 1'b0;
   end

always @(valid_bw45)
   begin
      #0;
      DL[45] = 1'bx;
      BWEBL[45] = 1'b0;
   end

always @(valid_d46)
   begin
      #0;
      DL[46] = 1'bx;
      BWEBL[46] = 1'b0;
   end

always @(valid_bw46)
   begin
      #0;
      DL[46] = 1'bx;
      BWEBL[46] = 1'b0;
   end

always @(valid_d47)
   begin
      #0;
      DL[47] = 1'bx;
      BWEBL[47] = 1'b0;
   end

always @(valid_bw47)
   begin
      #0;
      DL[47] = 1'bx;
      BWEBL[47] = 1'b0;
   end

always @(valid_d48)
   begin
      #0;
      DL[48] = 1'bx;
      BWEBL[48] = 1'b0;
   end

always @(valid_bw48)
   begin
      #0;
      DL[48] = 1'bx;
      BWEBL[48] = 1'b0;
   end

always @(valid_d49)
   begin
      #0;
      DL[49] = 1'bx;
      BWEBL[49] = 1'b0;
   end

always @(valid_bw49)
   begin
      #0;
      DL[49] = 1'bx;
      BWEBL[49] = 1'b0;
   end

always @(valid_d50)
   begin
      #0;
      DL[50] = 1'bx;
      BWEBL[50] = 1'b0;
   end

always @(valid_bw50)
   begin
      #0;
      DL[50] = 1'bx;
      BWEBL[50] = 1'b0;
   end

always @(valid_d51)
   begin
      #0;
      DL[51] = 1'bx;
      BWEBL[51] = 1'b0;
   end

always @(valid_bw51)
   begin
      #0;
      DL[51] = 1'bx;
      BWEBL[51] = 1'b0;
   end

always @(valid_d52)
   begin
      #0;
      DL[52] = 1'bx;
      BWEBL[52] = 1'b0;
   end

always @(valid_bw52)
   begin
      #0;
      DL[52] = 1'bx;
      BWEBL[52] = 1'b0;
   end

always @(valid_d53)
   begin
      #0;
      DL[53] = 1'bx;
      BWEBL[53] = 1'b0;
   end

always @(valid_bw53)
   begin
      #0;
      DL[53] = 1'bx;
      BWEBL[53] = 1'b0;
   end

always @(valid_d54)
   begin
      #0;
      DL[54] = 1'bx;
      BWEBL[54] = 1'b0;
   end

always @(valid_bw54)
   begin
      #0;
      DL[54] = 1'bx;
      BWEBL[54] = 1'b0;
   end

always @(valid_d55)
   begin
      #0;
      DL[55] = 1'bx;
      BWEBL[55] = 1'b0;
   end

always @(valid_bw55)
   begin
      #0;
      DL[55] = 1'bx;
      BWEBL[55] = 1'b0;
   end

always @(valid_d56)
   begin
      #0;
      DL[56] = 1'bx;
      BWEBL[56] = 1'b0;
   end

always @(valid_bw56)
   begin
      #0;
      DL[56] = 1'bx;
      BWEBL[56] = 1'b0;
   end

always @(valid_d57)
   begin
      #0;
      DL[57] = 1'bx;
      BWEBL[57] = 1'b0;
   end

always @(valid_bw57)
   begin
      #0;
      DL[57] = 1'bx;
      BWEBL[57] = 1'b0;
   end

always @(valid_d58)
   begin
      #0;
      DL[58] = 1'bx;
      BWEBL[58] = 1'b0;
   end

always @(valid_bw58)
   begin
      #0;
      DL[58] = 1'bx;
      BWEBL[58] = 1'b0;
   end

always @(valid_d59)
   begin
      #0;
      DL[59] = 1'bx;
      BWEBL[59] = 1'b0;
   end

always @(valid_bw59)
   begin
      #0;
      DL[59] = 1'bx;
      BWEBL[59] = 1'b0;
   end

always @(valid_d60)
   begin
      #0;
      DL[60] = 1'bx;
      BWEBL[60] = 1'b0;
   end

always @(valid_bw60)
   begin
      #0;
      DL[60] = 1'bx;
      BWEBL[60] = 1'b0;
   end

always @(valid_d61)
   begin
      #0;
      DL[61] = 1'bx;
      BWEBL[61] = 1'b0;
   end

always @(valid_bw61)
   begin
      #0;
      DL[61] = 1'bx;
      BWEBL[61] = 1'b0;
   end

always @(valid_d62)
   begin
      #0;
      DL[62] = 1'bx;
      BWEBL[62] = 1'b0;
   end

always @(valid_bw62)
   begin
      #0;
      DL[62] = 1'bx;
      BWEBL[62] = 1'b0;
   end

always @(valid_d63)
   begin
      #0;
      DL[63] = 1'bx;
      BWEBL[63] = 1'b0;
   end

always @(valid_bw63)
   begin
      #0;
      DL[63] = 1'bx;
      BWEBL[63] = 1'b0;
   end

 
always @(valid_wea)
   begin
      AAL = {M{1'bx}};
      BWEBL = {N{1'b0}};
   end
 
always @(valid_reb)
   begin
      #0;
      bQ = #0.01 {N{1'bx}};
   end
`endif



// Task for printing the memory between specified addresses..
task printMemoryFromTo;     
    input [M - 1:0] from;   // memory content are printed, start from this address.
    input [M - 1:0] to;     // memory content are printed, end at this address.
    begin 
        MX.printMemoryFromTo(from, to);
    end 
endtask

// Task for printing entire memory, including normal array and redundancy array.
task printMemory;   
    begin
        MX.printMemory;
    end
endtask

task xMemoryAll;   
    begin
       MX.xMemoryAll;  
    end
endtask

task zeroMemoryAll;   
    begin
       MX.zeroMemoryAll;   
    end
endtask

// Task for Loading a perdefined set of data from an external file.
task preloadData;   
    input [256*8:1] infile;  // Max 256 character File Name
    begin
        MX.preloadData(infile);  
    end
endtask

TS6N28HPMA256X64M4F_Int_Array #(1,1,W,N,M,MES_ALL) MX (.D({DL}),.BW({BWEBL}),
         .AW({AAL}),.EN(EN),.RDB(RDB),.AR({ABL}),.Q({QL}));



endmodule

`disable_portfaults
`nosuppress_faults
`endcelldefine

/*
   The module ports are parameterizable vectors.
*/
module TS6N28HPMA256X64M4F_Int_Array (D, BW, AW, EN, RDB, AR, Q);
parameter Nread = 2;   // Number of Read Ports
parameter Nwrite = 2;  // Number of Write Ports
parameter Nword = 2;   // Number of Words
parameter Ndata = 1;   // Number of Data Bits / Word
parameter Naddr = 1;   // Number of Address Bits / Word
parameter MES_ALL = "ON";
parameter dly = 0.000;
// Cannot define inputs/outputs as memories
input  [Ndata*Nwrite-1:0] D;  // Data Word(s)
input  [Ndata*Nwrite-1:0] BW; // Negative Bit Write Enable
input  [Naddr*Nwrite-1:0] AW; // Write Address(es)
input  EN;                    // Positive Write Enable
input  RDB;                   // Read Toggle
input  [Naddr*Nread-1:0] AR;  // Read Address(es)
output [Ndata*Nread-1:0] Q;   // Output Data Word(s)
reg    [Ndata*Nread-1:0] Q;
reg [Ndata-1:0] mem [Nword-1:0];
reg [Ndata-1:0] mem_fault [Nword-1:0];
reg chgmem;            // Toggled when write to mem
reg [Nwrite-1:0] wwe;  // Positive Word Write Enable for each Port
reg we;                // Positive Write Enable for all Ports
integer waddr[Nwrite-1:0]; // Write Address for each Enabled Port
integer address;       // Current address
reg [Naddr-1:0] abuf;  // Address of current port
reg [Ndata-1:0] dbuf;  // Data for current port
reg [Ndata-1:0] bwbuf; // Bit Write enable for current port
reg dup;               // Is the address a duplicate?
integer log;           // Log file descriptor
integer ip, ip2, ip_r, ib, ib_r, iw, iw_r, iwb; // Vector indices


initial
   begin
   $timeformat (-9, 2, " ns", 9);
   if (log[0] === 1'bx)
      log = 1;
   chgmem = 1'b0;
   end


always @(D or BW or AW or EN)
   begin: WRITE //{
   if (EN !== 1'b0)
      begin //{ Possible write
      we = 1'b0;
      // Mark any write enabled ports & get write addresses
      for (ip = 0 ; ip < Nwrite ; ip = ip + 1)
         begin //{
         ib = ip * Ndata;
         iw = ib + Ndata;
         while (ib < iw && BW[ib] === 1'b1)
            ib = ib + 1;
         if (ib == iw)
            wwe[ip] = 1'b0;
         else
            begin //{ ip write enabled
            iw = ip * Naddr;
            for (ib = 0 ; ib < Naddr ; ib = ib + 1)
               begin //{
               abuf[ib] = AW[iw+ib];
               if (abuf[ib] !== 1'b0 && abuf[ib] !== 1'b1)
                  ib = Naddr;
               end //}
            if (ib == Naddr)
               begin //{
               if (abuf < Nword)
                  begin //{ Valid address
                  waddr[ip] = abuf;
                  wwe[ip] = 1'b1;
                  if (we == 1'b0)
                     begin
                     chgmem = ~chgmem;
                     we = EN;
                     end
                  end //}
               else
                  begin //{ Out of range address
                  wwe[ip] = 1'b0;
                  if( MES_ALL=="ON" && $realtime != 0)
                       $fdisplay (log,
                             "\nWarning! Int_Array instance, %m:",
                             "\n\t Port %0d", ip,
                             " write address x'%0h'", abuf,
                             " out of range at time %t.", $realtime,
                             "\n\t Port %0d data not written to memory.", ip);
                  end //}
               end //}
            else
               begin //{ unknown write address

               for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                  dbuf[ib] = 1'bx;
               for (iw = 0 ; iw < Nword ; iw = iw + 1)
                  mem[iw] = dbuf;
               chgmem = ~chgmem;
               disable WRITE;
               end //}
            end //} ip write enabled
         end //} for ip
      if (we === 1'b1)
         begin //{ active write enable
         for (ip = 0 ; ip < Nwrite ; ip = ip + 1)
            begin //{
            if (wwe[ip])
               begin //{ write enabled bits of write port ip
               address = waddr[ip];
               dbuf = mem[address];
               iw = ip * Ndata;
               for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                  begin //{
                  iwb = iw + ib;
                  if (BW[iwb] === 1'b0)
                     dbuf[ib] = D[iwb];
                  else if (BW[iwb] !== 1'b1)
                     dbuf[ib] = 1'bx;
                  end //}
               // Check other ports for same address &
               // common write enable bits active
               dup = 0;
               for (ip2 = ip + 1 ; ip2 < Nwrite ; ip2 = ip2 + 1)
                  begin //{
                  if (wwe[ip2] && address == waddr[ip2])
                     begin //{
                     // initialize bwbuf if first dup
                     if (!dup)
                        begin
                        for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                           bwbuf[ib] = BW[iw+ib];
                        dup = 1;
                        end
                     iw = ip2 * Ndata;
                     for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                        begin //{
                        iwb = iw + ib;
                        // New: Always set X if BW X
                        if (BW[iwb] === 1'b0)
                           begin //{
                           if (bwbuf[ib] !== 1'b1)
                              begin
                              if (D[iwb] !== dbuf[ib])
                                 dbuf[ib] = 1'bx;
                              end
                           else
                              begin
                              dbuf[ib] = D[iwb];
                              bwbuf[ib] = 1'b0;
                              end
                           end //}
                        else if (BW[iwb] !== 1'b1)
                           begin
                           dbuf[ib] = 1'bx;
                           bwbuf[ib] = 1'bx;
                           end
                        end //} for each bit
                        wwe[ip2] = 1'b0;
                     end //} Port ip2 address matches port ip
                  end //} for each port beyond ip (ip2=ip+1)
               // Write dbuf to memory
               mem[address] = dbuf;
               end //} wwe[ip] - write port ip enabled
            end //} for each write port ip
         end //} active write enable
      else if (we !== 1'b0)
         begin //{ unknown write enable
         for (ip = 0 ; ip < Nwrite ; ip = ip + 1)
            begin //{
            if (wwe[ip])
               begin //{ write X to enabled bits of write port ip
               address = waddr[ip];
               dbuf = mem[address];
               iw = ip * Ndata;
               for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                  begin //{ 
                 if (BW[iw+ib] !== 1'b1)
                     dbuf[ib] = 1'bx;
                  end //} 
               mem[address] = dbuf;
               if( MES_ALL=="ON" && $realtime != 0)
                    $fdisplay (log,
                          "\nWarning! Int_Array instance, %m:",
                          "\n\t Enable pin unknown at time %t.", $realtime,
                          "\n\t Enabled bits at port %0d", ip,
                          " write address x'%0h' set unknown.", address);
               end //} wwe[ip] - write port ip enabled
            end //} for each write port ip
         end //} unknown write enable
      end //} possible write (EN != 0)
   end //} always @(D or BW or AW or EN)


// Read memory
always @(RDB or AR)
   begin //{
   for (ip_r = 0 ; ip_r < Nread ; ip_r = ip_r + 1)
      begin //{
      iw_r = ip_r * Naddr;
      for (ib_r = 0 ; ib_r < Naddr ; ib_r = ib_r + 1)
         begin
         abuf[ib_r] = AR[iw_r+ib_r];
         if (abuf[ib_r] !== 0 && abuf[ib_r] !== 1)
            ib_r = Naddr;
         end
      iw_r = ip_r * Ndata;
      if (ib_r == Naddr && abuf < Nword)
         begin //{ Read valid address
`ifdef TSMC_INITIALIZE_FAULT
         dbuf = mem[abuf]  ^ mem_fault[abuf];
`else
         dbuf = mem[abuf];
`endif
         for (ib_r = 0 ; ib_r < Ndata ; ib_r = ib_r + 1)
            begin
            if (Q[iw_r+ib_r] == dbuf[ib_r])
                Q[iw_r+ib_r] <= #(dly) dbuf[ib_r];
            else
                begin
                Q[iw_r+ib_r] <= #(dly) dbuf[ib_r];
//                Q[iw_r+ib_r] <= dbuf[ib_r];
                end // else
            end // for
         end //} valid address
      else
         begin //{ Invalid address
         if( MES_ALL=="ON" && $realtime != 0)
               $fwrite (log, "\nWarning! Int_Array instance, %m:",
                       "\n\t Port %0d read address", ip_r);
         if (ib_r > Naddr)
         begin
         if( MES_ALL=="ON" && $realtime != 0)
            $fwrite (log, " unknown");
         end
         else
         begin
         if( MES_ALL=="ON" && $realtime != 0)
            $fwrite (log, " x'%0h' out of range", abuf);
         end
         if( MES_ALL=="ON" && $realtime != 0)
            $fdisplay (log,
                    " at time %t.", $realtime,
                    "\n\t Port %0d outputs set to unknown.", ip_r);
         for (ib_r = 0 ; ib_r < Ndata ; ib_r = ib_r + 1)
            Q[iw_r+ib_r] <= #(dly) 1'bx;
         end //} invalid address
      end //} for each read port ip_r
   end //} always @(chgmem or AR)


// Task for loading contents of a memory
task load;   //{ USAGE: initial inst.load ("file_name");
   input [256*8:1] file;  // Max 256 character File Name
   begin
   $display ("\n%m: Reading file, %0s, into memory", file);
   $readmemb (file, mem, 0, Nword-1);
   end
endtask //}


// Task for displaying contents of a memory
task show;   //{ USAGE: inst.show (low, high);
   input [31:0] low, high;
   integer i;
   begin //{
   $display ("\n%m: Memory content dump");
   if (low < 0 || low > high || high >= Nword)
      $display ("Error! Invalid address range (%0d, %0d).", low, high,
                "\nUsage: %m (low, high);",
                "\n       where low >= 0 and high <= %0d.", Nword-1);
   else
      begin
      $display ("\n    Address\tValue");
      for (i = low ; i <= high ; i = i + 1)
         $display ("%d\t%b", i, mem[i]);
      end
   end //}
endtask //}

// Task for printing the memory between specified addresses..
task printMemoryFromTo;     
    input [Naddr - 1:0] from;   // memory content are printed, start from this address.
    input [Naddr - 1:0] to;     // memory content are printed, end at this address.
    integer i;
    begin 
        $display ("Dumping register file...");
        $display("@    Address, content-----");
        for (i = from; i <= to; i = i + 1) begin
            $display("@%d, %b", i, mem[i]);
        end 
    end
endtask

// Task for printing entire memory, including normal array and redundancy array.
task printMemory;   
    integer i;
    begin
        $display ("Dumping register file...");
        $display("@    Address, content-----");
        for (i = 0; i < Nword; i = i + 1) begin
            $display("@%d, %b", i, mem[i]);
        end 
    end
endtask

task xMemoryAll;   
    begin
       for (ib = 0 ; ib < Ndata ; ib = ib + 1)
          dbuf[ib] = 1'bx;
       for (iw = 0 ; iw < Nword ; iw = iw + 1)
          mem[iw] = dbuf; 
    end
endtask

task zeroMemoryAll;   
    begin
       for (ib = 0 ; ib < Ndata ; ib = ib + 1)
          dbuf[ib] = 1'b0;
       for (iw = 0 ; iw < Nword ; iw = iw + 1)
          mem[iw] = dbuf; 
    end
endtask

// Task for Loading a perdefined set of data from an external file.
task preloadData;   
    input [256*8:1] infile;  // Max 256 character File Name
    begin
        $display ("%m: Reading file, %0s, into the register file", infile);
`ifdef TSMC_INITIALIZE_FORMAT_BINARY
        $readmemb (infile, mem, 0, Nword-1);
`else
        $readmemh (infile, mem, 0, Nword-1);
`endif
    end
endtask

endmodule




