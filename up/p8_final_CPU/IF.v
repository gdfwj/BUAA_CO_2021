`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:32:47 11/18/2021 
// Design Name: 
// Module Name:    IF 
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
module IF(
    input [31:0] PCbranch,
    input Branch,
    input [31:0] PCjump,
    input isj,
	 input [31:0] PCjr,
	 input jr,
	 input clk,
	 input reset,
	 input hold,
    output [31:0] PC_IF,
	 output expFlag_IFout,
	 output [4:0] ExcCode_IFout,
	 input eret,
	 input exc,
	 input [31:0] PC_EPC,
	 output delay,
	 input Branch_for_delay
    );
	 IFU tIFU(
    .PC_brench(PCbranch),
    .PC_jr(PCjr),
    .PC_j(PCjump),
    .ctrl_jr(jr),
    .ctrl_src(Branch),
    .ctrl_j(isj),
    .clk(clk),
    .reset(reset),
    .PC(PC_IF),
	 .hold(hold),
	 .eret(eret),
	 .exc(exc),
	 .PC_EPC(PC_EPC)
    );
	 assign expFlag_IFout = ((PC_IF[1:0]!=0)||(PC_IF<32'h3000)||(PC_IF>32'h6ffc))?1 :0 ;
	 assign ExcCode_IFout = 4;
	 assign delay = (Branch_for_delay|isj|jr);


endmodule
