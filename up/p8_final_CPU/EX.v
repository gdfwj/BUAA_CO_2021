`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:15 11/19/2021 
// Design Name: 
// Module Name:    EX 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module EX(
    input [31:0] PC_EXin,
	 input [31:0] imm_EXin,
	 input [31:0] RD1_EXin,
	 input [31:0] RD2_EXin,
	 input ALUimm_EXin,
	 input [4:0] ARegWrite_EXin,
	 input [3:0] MemWrite_EXin,
	 input MemtoReg_EXin,
	 input [4:0] ALUctrl_EXin,
	 input [31:0] datatrans_EXin,
	 input [2:0] Tnew_EXin,
	 output [2:0] Tnew_EXout,
	 output [4:0] ARegWrite_EXout,
	 output [31:0] PC_EXout,
	 output [31:0] datatrans_EXout,
	 output [31:0] ALUresult_EXout,
	 output [31:0] RD2_EXout,
	 output [3:0] MemWrite_EXout,
	 output MemtoReg_EXout,
	 input [4:0] Ruse1_EXin,
	 input [4:0] Ruse2_EXin,
	 output [4:0] Ruse2_EXout,
	 input [4:0] transEaddr,
	 input [4:0] transWaddr,
	 input [31:0] transEdata,
	 input [31:0] transWdata,
	 input clk,
	 input reset,
	 input [4:0] ALUs_EXin,
	 output expFlag_EXout,
	 output [4:0] ExcCode_EXout,
	 input expFlag_EXin,
	 input [4:0] ExcCode_EXin,
	 input Req
    );
	 //p7
	 wire overlap;
	 assign expFlag_EXout = expFlag_EXin | overlap;
	 assign ExcCode_EXout = (expFlag_EXin==1)? ExcCode_EXin :(MemWrite_EXin==1|MemWrite_EXin==2|MemWrite_EXin==3)?5 :(MemWrite_EXin==10)?12 :4;
	 wire [4:0] ALUctrl_EXinaReq;
	 assign ALUctrl_EXinaReq = (Req)?25 :ALUctrl_EXin;
	 
	 wire [31:0] HI,LO;
	 wire [31:0] RD1_EXintrans, RD2_EXintrans;
	 wire [31:0] inB, ALUresult;
	 wire [4:0] select;
	 assign inB = (ALUimm_EXin)? imm_EXin : RD2_EXintrans;
	 
	 assign datatrans_EXout = (Tnew_EXin==1)? ALUresult_EXout: datatrans_EXin;

	 assign PC_EXout = PC_EXin;
	 assign RD2_EXout = RD2_EXintrans;
	 assign ARegWrite_EXout = ARegWrite_EXin;
	 assign MemWrite_EXout = MemWrite_EXin;
	 assign MemtoReg_EXout = MemtoReg_EXin;
	 assign Tnew_EXout = Tnew_EXin;
	 
	 assign ALUresult_EXout = ALUresult;
	 
	 //AT
	 assign Ruse2_EXout = Ruse2_EXin;
	 //ת��
	 assign RD1_EXintrans = (Ruse1_EXin==0)? 0:
									(Ruse1_EXin==transEaddr)? transEdata:
									(Ruse1_EXin==transWaddr)? transWdata:
									RD1_EXin;
	 assign RD2_EXintrans = (Ruse2_EXin==0)? 0:
									(Ruse2_EXin==transEaddr)? transEdata:
									(Ruse2_EXin==transWaddr)? transWdata:
									RD2_EXin;
	 //
	 
	 ALU tALU(
    .A(RD1_EXintrans),
    .B(inB),
	 .S(ALUs_EXin),
    .ALUctrl(ALUctrl_EXinaReq),
    .Yout(ALUresult),
	.overlap(overlap)
    );
	 
	 


endmodule
