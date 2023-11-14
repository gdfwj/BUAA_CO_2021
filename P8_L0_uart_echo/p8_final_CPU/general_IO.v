`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:17 12/20/2021 
// Design Name: 
// Module Name:    general_IO 
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
module general_IO(
    input [31:0] data_in,
	 input [31:0] addr_in,
	 output [31:0] data_out,
	 input [3:0] byteen,
	 input [7:0] dip_switch0,
	 input [7:0] dip_switch1,
	 input [7:0] dip_switch2,
	 input [7:0] dip_switch3,
	 input [7:0] dip_switch4,
	 input [7:0] dip_switch5,
	 input [7:0] dip_switch6,
	 input [7:0] dip_switch7,
	 input [7:0] user_key,
	 output reg [31:0] LED,
	 input reset,
	 input clk
    );
	 reg [31:0] fixed_wdata;
	 wire [31:0] word_addr = {addr_in[31:2], 2'b00};
	 assign data_out = (word_addr==32'h7f50)? ~{dip_switch3, dip_switch2, dip_switch1, dip_switch0}:
							 (word_addr==32'h7f54)? ~{dip_switch7, dip_switch6, dip_switch5, dip_switch4}:
							 (word_addr==32'h7f58)? {24'b0, ~user_key}:
							 (word_addr==32'h7f60)? ~LED:
							 0;
	 always @(*) begin
		fixed_wdata = LED;
		if (byteen[3]) fixed_wdata[31:24] = ~data_in[31:24];
		if (byteen[2]) fixed_wdata[23:16] = ~data_in[23:16];
		if (byteen[1]) fixed_wdata[15: 8] = ~data_in[15: 8];
		if (byteen[0]) fixed_wdata[7 : 0] = ~data_in[7 : 0];
	end
	always @(posedge clk) begin
		if(reset) LED<=~(32'b0);
		else if(|byteen) LED<=~(fixed_wdata);
	end

endmodule
