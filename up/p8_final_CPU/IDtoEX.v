`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:52:04 11/19/2021 
// Design Name: 
// Module Name:    IDtoEX 
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
module IDtoEX(
    input clk,
    input reset,
    input [31:0] PC_IDout,
	 input [31:0] imm_ID,
	 input [31:0] RD1_IDout,
	 input [31:0] RD2_IDout,
	 input ALUimm_IDout,
	 input [4:0] ARegWrite_IDout,
	 input [3:0] MemWrite_IDout,
	 input MemtoReg_IDout,
	 input [4:0] ALUctrl_IDout,
	 input [31:0] datatrans_IDout,
	 input [2:0] Tnew_IDout,
	 input [4:0] Ruse1_IDout,
	 input [4:0] Ruse2_IDout,
	 input [4:0] ALUs_IDout,
	 output reg [4:0] ALUs_EXin,
	 output reg [4:0] Ruse1_EXin,
	 output reg [4:0] Ruse2_EXin,
	 output reg [2:0] Tnew_EXin,
    output reg [31:0] PC_EXin,
	 output reg [31:0] imm_EXin,
	 output reg [31:0] RD1_EXin,
	 output reg [31:0] RD2_EXin,
	 output reg ALUimm_EXin,
	 output reg [4:0] ARegWrite_EXin,
	 output reg [3:0] MemWrite_EXin,
	 output reg MemtoReg_EXin,
	 output reg [4:0] ALUctrl_EXin,
	 output reg [31:0] datatrans_EXin,
	 input clear,
	 input expFlag_IDout,
	 input [4:0] ExcCode_IDout,
	 output reg expFlag_EXin,
	 output reg [4:0] ExcCode_EXin,
	 input clearAll,
	 input delay_ID,
	 output reg delay_EX
    );
	 always @ (posedge clk) begin
		if(reset==1) begin
			PC_EXin<=0;
			imm_EXin<=0;
			RD1_EXin<=0;
			RD2_EXin<=0;
			ALUimm_EXin<=0;
			ARegWrite_EXin<=0;
			MemWrite_EXin<=10;
			MemtoReg_EXin<=0;
			ALUctrl_EXin<=0;
			datatrans_EXin<=0;
			Tnew_EXin<=0;
			Ruse1_EXin<=0;
			Ruse2_EXin<=0;
			ALUs_EXin<=0;
			expFlag_EXin<=0;
			ExcCode_EXin<=0;
			delay_EX<=0;
		end
		else if(clearAll==1) begin
			PC_EXin<=32'h4180;
			imm_EXin<=0;
			RD1_EXin<=0;
			RD2_EXin<=0;
			ALUimm_EXin<=0;
			ARegWrite_EXin<=0;
			MemWrite_EXin<=10;
			MemtoReg_EXin<=0;
			ALUctrl_EXin<=0;
			datatrans_EXin<=0;
			Tnew_EXin<=0;
			Ruse1_EXin<=0;
			Ruse2_EXin<=0;
			ALUs_EXin<=0;
			expFlag_EXin<=0;
			ExcCode_EXin<=0;
			delay_EX<=0;
		end
		else if(clear==1) begin
			PC_EXin<=PC_IDout;
			imm_EXin<=0;
			RD1_EXin<=0;
			RD2_EXin<=0;
			ALUimm_EXin<=0;
			ARegWrite_EXin<=0;
			MemWrite_EXin<=10;
			MemtoReg_EXin<=0;
			ALUctrl_EXin<=0;
			datatrans_EXin<=0;
			Tnew_EXin<=0;
			Ruse1_EXin<=0;
			Ruse2_EXin<=0;
			ALUs_EXin<=0;
			expFlag_EXin<=0;
			ExcCode_EXin<=0;
			delay_EX<=delay_ID;
		end
		else begin
			PC_EXin<=PC_IDout;
			imm_EXin<=imm_ID;
			RD1_EXin<=RD1_IDout;
			RD2_EXin<=RD2_IDout;
			ALUimm_EXin<=ALUimm_IDout;
			ARegWrite_EXin<=ARegWrite_IDout;
			MemWrite_EXin<=MemWrite_IDout;
			MemtoReg_EXin<=MemtoReg_IDout;
			ALUctrl_EXin<=ALUctrl_IDout;
			datatrans_EXin<=datatrans_IDout;
			Tnew_EXin<=(Tnew_IDout!=0)? Tnew_IDout-1 : 0;
			Ruse1_EXin<=Ruse1_IDout;
			Ruse2_EXin<=Ruse2_IDout;
			ALUs_EXin<=ALUs_IDout;
			expFlag_EXin<=expFlag_IDout;
			ExcCode_EXin<=ExcCode_IDout;
			delay_EX<=delay_ID;
		end
	 end
	 
	 
	 


endmodule
