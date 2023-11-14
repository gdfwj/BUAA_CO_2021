`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:15 11/19/2021 
// Design Name: 
// Module Name:    MEMtoRB 
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
module MEMtoRB(
    input clk,
    input reset,
	 input [31:0] PC_MEMout,
	 input [31:0] datatrans_MEMout,
	 input [4:0] ARegWrite_MEMout,
	 output reg [31:0] PC_WBin,
	 output reg [31:0] datatrans_WBin,
	 output reg [4:0] ARegWrite_WBin,
	 input [2:0] Tnew_MEMout,
	 output reg [2:0] Tnew_WBin,
	 input clearAll
    );
	 always @(posedge clk) begin
		if(reset==1||clearAll==1) begin
			PC_WBin<=0;
			datatrans_WBin<=0;
			ARegWrite_WBin<=0;
			Tnew_WBin<=0;
		end
		else begin
			PC_WBin<=PC_MEMout;
			datatrans_WBin<=datatrans_MEMout;
			ARegWrite_WBin<=ARegWrite_MEMout;
			Tnew_WBin<=(Tnew_MEMout)? Tnew_MEMout-1 : 0;
		end
	 end
	 


endmodule
