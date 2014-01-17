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
//* Template Version : S_05_23501                                               */
//****************************************************************************** */
//****************************************************************************** */
//*        Software         : TSMC MEMORY COMPILER tsn28hpm2prf_2011.06.06.110c */
//*        Technology       : TSMC 28nm CMOS LOGIC High Performance Mobile 1P10M HKMG CU_ELK 0.9V */
//*        Memory Type      : TSMC 28nm High Performance Mobile Two Port Register File */
//*                         : with d240 bit cell SVT periphery */
//*        Library Name     : ts6n28hpma256x64m4f (user specify : TS6N28HPMA256X64M4F) */
//*        Library Version  : 110c */
//*        Generated Time   : 2013/09/17, 17:42:29 */
//*************************************************************************** ** */
`timescale 1ns/1ps
`define read_write readx

module TS6N28HPMA256X64M4F (
                        AA,
			D, 
			WEB, CLKW,
			AB,
			REB, CLKR,
                        RCT,
                        WCT,
                        KP,
                        Q
			);
		

parameter  N = 64;
parameter  W = 256;
parameter  M = 8;

// Input-Output declarations
   input [M-1:0] AA;                // Address write bus
   input [N-1:0] D;                 // Date input bus
   input         WEB;               // Active-low Write enable
   input         CLKW;              // Clock A
   input [M-1:0] AB;                // Address write bus 
   input         REB;               // Active-low Read enable
   input         CLKR;              // Clock B
   input [1:0] RCT;
   input [1:0] WCT;
   input [2:0] KP;
   output [N-1:0] Q;                 // Data output bus



//=== Data Structure ===//

wire [N-1:0] Q;
wire [M-1:0] iAA = AA;
wire [M-1:0] iAB = AB;
wire iWEB = WEB;
wire iREB = REB;
wire [N-1:0] iD = D;

wire [N-1:0] Q_tmp2;
wire [N-1:0] Q_tmp;
wire pd_mode = 1'b0;


//=== Operation ===//
TS6N28HPMA256X64M4F_RAM_1bit sram_IO0 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[0], Q_tmp2[0]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO1 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[1], Q_tmp2[1]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO2 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[2], Q_tmp2[2]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO3 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[3], Q_tmp2[3]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO4 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[4], Q_tmp2[4]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO5 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[5], Q_tmp2[5]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO6 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[6], Q_tmp2[6]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO7 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[7], Q_tmp2[7]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO8 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[8], Q_tmp2[8]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO9 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[9], Q_tmp2[9]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO10 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[10], Q_tmp2[10]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO11 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[11], Q_tmp2[11]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO12 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[12], Q_tmp2[12]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO13 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[13], Q_tmp2[13]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO14 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[14], Q_tmp2[14]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO15 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[15], Q_tmp2[15]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO16 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[16], Q_tmp2[16]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO17 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[17], Q_tmp2[17]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO18 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[18], Q_tmp2[18]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO19 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[19], Q_tmp2[19]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO20 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[20], Q_tmp2[20]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO21 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[21], Q_tmp2[21]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO22 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[22], Q_tmp2[22]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO23 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[23], Q_tmp2[23]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO24 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[24], Q_tmp2[24]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO25 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[25], Q_tmp2[25]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO26 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[26], Q_tmp2[26]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO27 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[27], Q_tmp2[27]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO28 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[28], Q_tmp2[28]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO29 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[29], Q_tmp2[29]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO30 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[30], Q_tmp2[30]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO31 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[31], Q_tmp2[31]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO32 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[32], Q_tmp2[32]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO33 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[33], Q_tmp2[33]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO34 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[34], Q_tmp2[34]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO35 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[35], Q_tmp2[35]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO36 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[36], Q_tmp2[36]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO37 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[37], Q_tmp2[37]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO38 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[38], Q_tmp2[38]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO39 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[39], Q_tmp2[39]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO40 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[40], Q_tmp2[40]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO41 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[41], Q_tmp2[41]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO42 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[42], Q_tmp2[42]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO43 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[43], Q_tmp2[43]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO44 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[44], Q_tmp2[44]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO45 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[45], Q_tmp2[45]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO46 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[46], Q_tmp2[46]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO47 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[47], Q_tmp2[47]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO48 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[48], Q_tmp2[48]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO49 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[49], Q_tmp2[49]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO50 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[50], Q_tmp2[50]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO51 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[51], Q_tmp2[51]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO52 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[52], Q_tmp2[52]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO53 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[53], Q_tmp2[53]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO54 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[54], Q_tmp2[54]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO55 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[55], Q_tmp2[55]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO56 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[56], Q_tmp2[56]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO57 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[57], Q_tmp2[57]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO58 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[58], Q_tmp2[58]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO59 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[59], Q_tmp2[59]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO60 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[60], Q_tmp2[60]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO61 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[61], Q_tmp2[61]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO62 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[62], Q_tmp2[62]);
TS6N28HPMA256X64M4F_RAM_1bit sram_IO63 (iAA, CLKW, iWEB, iAB, CLKR, iREB, iD[63], Q_tmp2[63]);

assign Q = Q_tmp;

assign Q_tmp = pd_mode ? {N{1'b0}} : Q_tmp2;

endmodule



// 1 bit SRAM 
module TS6N28HPMA256X64M4F_RAM_1bit (AA_i, CLKW_i, WEB_i, AB_i, CLKR_i, REB_i, D_i, Q_i);


parameter  N = 64;
parameter  W = 256;
parameter  M = 8;

input CLKW_i, CLKR_i;
input WEB_i, REB_i;
input [M-1:0] AA_i, AB_i;
input [0:0] D_i;

output [0:0] Q_i;

reg [0:0]Q_i;
reg [0:0] MEMORY [W-1:0];


event WRITE_OP;

// Write Mode
and u_aw1_0 (WB, !WEB_i);

always @ (posedge CLKW_i)
  if (WB) begin
    MEMORY[AA_i] = D_i;
    #0; -> WRITE_OP;
  end

// READ Mode
always @ (posedge CLKR_i)
  if (!REB_i) begin
     Q_i = MEMORY[AB_i];
  end


endmodule

`undef read_write
