`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:46 11/11/2021 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input [31:0] PC_brench,
    input [31:0] PC_jr,
    input [31:0] PC_j,
    input ctrl_jr,
    input ctrl_src,
    input ctrl_j,
    input clk,
    input reset,
    output [31:0] PC,
	 input hold, 
	 input eret,
	 input exc,
	 input [31:0] PC_EPC
    );
	 reg [31:0] PC_reg;
	   //pc>>2才能读取正确位置
	 assign PC = PC_reg;
	 always @(posedge clk) begin
		if(reset==1) PC_reg<=32'h00003000;
		else if(eret) PC_reg <=PC_EPC;
		else if(exc) PC_reg <=32'h4180;
		else if(hold==1) PC_reg<=PC_reg;
		else begin
			if(ctrl_jr==1) PC_reg <= PC_jr;
			else if (ctrl_j==1) PC_reg <= PC_j;
			else if (ctrl_src==1) PC_reg <= PC_brench;
			else PC_reg <= PC_reg+4;
		end
	 end 
	 
	  

endmodule
