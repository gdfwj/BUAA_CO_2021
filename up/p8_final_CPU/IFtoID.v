`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:15 11/18/2021 
// Design Name: 
// Module Name:    IF-ID 
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
module IFtoID(
    input [31:0] PC_IF,
	 input [31:0] Ins_IF,
	 output reg [31:0] PC_ID,
	 output reg [31:0] Ins_ID,
	 input clk,
	 input reset,
	 input hold,
	 input expFlag_IFout,
	 input [4:0] ExcCode_IFout,
	 output reg expFlag_IDin,
	 output reg [4:0] ExcCode_IDin,
	 input clearAll,
	 input eret,
	 input delay_IFout,
	 output reg delay_ID,
	 input [31:0] EPC
    );
	 always @(posedge clk) begin
		if(reset==1) begin
			PC_ID<=0;
			Ins_ID<=0;
			expFlag_IDin<=0;
			ExcCode_IDin<=0;
			delay_ID<=0;
		end
		else if(eret==1) begin
			PC_ID<=EPC;
			Ins_ID<=0;
			expFlag_IDin<=0;
			ExcCode_IDin<=0;
			delay_ID<=0;
		end
		else if(clearAll==1) begin
			PC_ID<=32'h4180;
			Ins_ID<=0;
			expFlag_IDin<=0;
			ExcCode_IDin<=0;
			delay_ID<=0;
		end
		else if(hold==1) begin
			PC_ID<=PC_ID;
			Ins_ID<=Ins_ID;
			expFlag_IDin<=expFlag_IDin;
			ExcCode_IDin<=ExcCode_IDin;
			delay_ID<=delay_ID;
		end
		else begin
			PC_ID<=PC_IF;
			Ins_ID<=Ins_IF;
			expFlag_IDin<=expFlag_IFout;
			ExcCode_IDin<=ExcCode_IFout;
			delay_ID<=delay_IFout;
		end
	 end


endmodule
