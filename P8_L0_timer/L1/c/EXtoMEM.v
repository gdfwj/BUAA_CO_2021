`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:33 11/19/2021 
// Design Name: 
// Module Name:    EXtoMEM 
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
module EXtoMEM(
    input clk,
    input reset,
	 input [4:0] ARegWrite_EXout,
	 input [31:0] PC_EXout,
	 input [31:0] datatrans_EXout,
	 input [31:0] ALUresult_EXout,
	 input [31:0] RD2_EXout,
	 input [3:0] MemWrite_EXout,
	 input MemtoReg_EXout,
	 output reg [4:0] ARegWrite_MEMin,
	 output reg [31:0] PC_MEMin,
	 output reg [31:0] datatrans_MEMin,
	 output reg [31:0] ALUresult_MEMin,
	 output reg [31:0] RD2_MEMin,
	 output reg [3:0] MemWrite_MEMin,
	 output reg MemtoReg_MEMin,
	 input [4:0] Ruse2_EXout,
	 input [2:0] Tnew_EXout,
	 output reg [4:0] Ruse2_MEMin,
	 output reg [2:0] Tnew_MEMin,
	 input expFlag_EXout,
	 input [4:0] ExcCode_EXout,
	 output reg expFlag_MEMin,
	 output reg [4:0] ExcCode_MEMin,
	 input clearAll,
	 output reg delay_MEMin,
	 input delay_EX
    );
	 always @(posedge clk) begin
		if(reset==1)begin
		  MemWrite_MEMin<=10;
	      MemtoReg_MEMin<=0;
	      ARegWrite_MEMin<=0;
	      PC_MEMin<=0;
	      datatrans_MEMin<=0;
	      ALUresult_MEMin<=0;
	      RD2_MEMin<=0;
	      MemWrite_MEMin<=0;
	      MemtoReg_MEMin<=0;
		  Ruse2_MEMin<=0;
		  Tnew_MEMin<=0;
		  expFlag_MEMin<=0;
		  ExcCode_MEMin<=0;
		  delay_MEMin<=0;
		end
		else if(clearAll==1)begin
		  MemWrite_MEMin<=10;
	      MemtoReg_MEMin<=0;
	      ARegWrite_MEMin<=0;
	      PC_MEMin<=32'h4180;
	      datatrans_MEMin<=0;
	      ALUresult_MEMin<=0;
	      RD2_MEMin<=0;
	      MemWrite_MEMin<=0;
	      MemtoReg_MEMin<=0;
		  Ruse2_MEMin<=0;
		  Tnew_MEMin<=0;
		  expFlag_MEMin<=0;
		  ExcCode_MEMin<=0;
		  delay_MEMin<=0;
		end
		else begin
			MemWrite_MEMin<=MemWrite_EXout;
	      MemtoReg_MEMin<=MemtoReg_EXout;
	      ARegWrite_MEMin<=ARegWrite_EXout;
	      PC_MEMin<=PC_EXout;
	      datatrans_MEMin<=datatrans_EXout;
	      ALUresult_MEMin<=ALUresult_EXout;
	      RD2_MEMin<=RD2_EXout;
	      MemWrite_MEMin<=MemWrite_EXout;
	      MemtoReg_MEMin<=MemtoReg_EXout;
			Ruse2_MEMin<=Ruse2_EXout;
			Tnew_MEMin<=(Tnew_EXout!=0)? Tnew_EXout-1 : 0;
			expFlag_MEMin<=expFlag_EXout;
			ExcCode_MEMin<=ExcCode_EXout;
			delay_MEMin<=delay_EX;
		end
	 end


endmodule
