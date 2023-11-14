`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:00 11/11/2021 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [4:0] Address1,
    input [4:0] Address2,
    input [4:0] AdressWrite,
    input clk,
    input reset,
    input WE,
    input [31:0] WD,
	 input [31:0] PC,
    output [31:0] RD1,
    output [31:0] RD2
    );
	 reg [31:0] stack_reg [31:0];
	 assign RD1 = stack_reg[Address1];
	 assign RD2 = stack_reg[Address2];
	 integer i;
	 always @(posedge clk) begin
		if(reset==1) begin
			for(i=0;i<=31;i=i+1)begin
				stack_reg[i]<=0;
			end
		end
		else begin
			if(WE==1) begin
				if(AdressWrite!=0)begin
					stack_reg[AdressWrite]<=WD;
				end
				else stack_reg[AdressWrite]<=stack_reg[AdressWrite];
			end
			else stack_reg[AdressWrite]<=stack_reg[AdressWrite];
		end
	 end
	 initial begin
		for(i=0;i<=31;i=i+1)begin
				stack_reg[i]<=0;
		end
	 end


endmodule
