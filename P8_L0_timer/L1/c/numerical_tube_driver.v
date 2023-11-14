`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:44:15 12/17/2021 
// Design Name: 
// Module Name:    numerical_tube_driver 
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
`define dt0 8'b10000001
`define dt1 8'b11001111
`define dt2 8'b10010010
`define dt3 8'b10000110
`define dt4 8'b11001100
`define dt5 8'b10100100
`define dt6 8'b10100000
`define dt7 8'b10001111
`define dt8 8'b10000000
`define dt9 8'b10000100
`define dtA 8'b10001000
`define dtB 8'b11100000
`define dtC 8'b10110001
`define dtD 8'b11000010
`define dtE 8'b10110000
`define dtF 8'b10111000
module numerical_tube_driver(
    input [31:0] addr,
    input [3:0] byteen,
	 input [31:0] data,
	 input reset,
	 input clk,
    output [31:0] data_num,
	 output reg [3:0] digital_tube_sel0,
	 output reg [3:0] digital_tube_sel1,
	 output digital_tube_sel2,
	 output reg [7:0] digital_tube0,
	 output reg [7:0] digital_tube1,
	 output reg [7:0] digital_tube2
    );
	 //---------read and write-----------
	 assign data_num = driver_reg[addr[2]];
	 reg [31:0] driver_reg [0:1];
	 reg [31:0] fixed_wdata, fixed_addr;
	 always @(*) begin
		fixed_wdata = driver_reg[addr[2]];
		fixed_addr = addr & 32'hfffffffc;
		if (byteen[3]) fixed_wdata[31:24] = data[31:24];
		if (byteen[2]) fixed_wdata[23:16] = data[23:16];
		if (byteen[1]) fixed_wdata[15: 8] = data[15: 8];
		if (byteen[0]) fixed_wdata[7 : 0] = data[7 : 0];
	end
	reg [19:0] counter;
	always @(posedge clk) begin
		if(reset) begin
			driver_reg[0]<=(32'b0);
			driver_reg[1]<=(32'b0);
			counter<=200;
			digital_tube_sel0<=4'b0001;
			digital_tube_sel1<=4'b0001;
		end
		else if((|byteen) && (addr[2])) driver_reg[fixed_addr[2]]<={{24'b1},data[7 : 0]};
		else if(|byteen) begin
			driver_reg[fixed_addr[2]]<=fixed_wdata;
		end
		else if(counter!=0) counter<=counter-1;
		else if(counter==0) begin
			digital_tube_sel0<={digital_tube_sel0[2:0],digital_tube_sel0[3]};
			digital_tube_sel1<={digital_tube_sel1[2:0],digital_tube_sel1[3]};
			counter<=200;
		end
	end
	//------------drive--------------
	assign digital_tube_sel2=1'b1;
	always @(*) begin
		if(digital_tube_sel0[0]) begin
			case(driver_reg[0][3:0])
				4'h0: digital_tube0 = `dt0;
            4'h1: digital_tube0 = `dt1;
            4'h2: digital_tube0 = `dt2;
            4'h3: digital_tube0 = `dt3;
            4'h4: digital_tube0 = `dt4;
            4'h5: digital_tube0 = `dt5;
            4'h6: digital_tube0 = `dt6;
            4'h7: digital_tube0 = `dt7;
            4'h8: digital_tube0 = `dt8;
            4'h9: digital_tube0 = `dt9;
            4'hA: digital_tube0 = `dtA;
            4'hB: digital_tube0 = `dtB;
            4'hC: digital_tube0 = `dtC;
            4'hD: digital_tube0 = `dtD;
            4'hE: digital_tube0 = `dtE;
            4'hF: digital_tube0 = `dtF;
				default: digital_tube0 = 8'b11111111;
        endcase
		end
		else if(digital_tube_sel0[1]) begin
			case(driver_reg[0][7:4])
				4'h0: digital_tube0 = `dt0;
            4'h1: digital_tube0 = `dt1;
            4'h2: digital_tube0 = `dt2;
            4'h3: digital_tube0 = `dt3;
            4'h4: digital_tube0 = `dt4;
            4'h5: digital_tube0 = `dt5;
            4'h6: digital_tube0 = `dt6;
            4'h7: digital_tube0 = `dt7;
            4'h8: digital_tube0 = `dt8;
            4'h9: digital_tube0 = `dt9;
            4'hA: digital_tube0 = `dtA;
            4'hB: digital_tube0 = `dtB;
            4'hC: digital_tube0 = `dtC;
            4'hD: digital_tube0 = `dtD;
            4'hE: digital_tube0 = `dtE;
            4'hF: digital_tube0 = `dtF;
				default: digital_tube0 = 8'b11111111;
        endcase
		end
		else if(digital_tube_sel0[2]) begin
			case(driver_reg[0][11:8])
				4'h0: digital_tube0 = `dt0;
            4'h1: digital_tube0 = `dt1;
            4'h2: digital_tube0 = `dt2;
            4'h3: digital_tube0 = `dt3;
            4'h4: digital_tube0 = `dt4;
            4'h5: digital_tube0 = `dt5;
            4'h6: digital_tube0 = `dt6;
            4'h7: digital_tube0 = `dt7;
            4'h8: digital_tube0 = `dt8;
            4'h9: digital_tube0 = `dt9;
            4'hA: digital_tube0 = `dtA;
            4'hB: digital_tube0 = `dtB;
            4'hC: digital_tube0 = `dtC;
            4'hD: digital_tube0 = `dtD;
            4'hE: digital_tube0 = `dtE;
            4'hF: digital_tube0 = `dtF;
				default: digital_tube0 = 8'b11111111;
        endcase
		end
		else if(digital_tube_sel0[3]) begin
			case(driver_reg[0][15:12])
				4'h0: digital_tube0 = `dt0;
            4'h1: digital_tube0 = `dt1;
            4'h2: digital_tube0 = `dt2;
            4'h3: digital_tube0 = `dt3;
            4'h4: digital_tube0 = `dt4;
            4'h5: digital_tube0 = `dt5;
            4'h6: digital_tube0 = `dt6;
            4'h7: digital_tube0 = `dt7;
            4'h8: digital_tube0 = `dt8;
            4'h9: digital_tube0 = `dt9;
            4'hA: digital_tube0 = `dtA;
            4'hB: digital_tube0 = `dtB;
            4'hC: digital_tube0 = `dtC;
            4'hD: digital_tube0 = `dtD;
            4'hE: digital_tube0 = `dtE;
            4'hF: digital_tube0 = `dtF;
				default: digital_tube0 = 8'b11111111;
        endcase
		end
	end
	always @(*) begin
		if(digital_tube_sel1[0]) begin
			case(driver_reg[0][19:16])
				4'h0: digital_tube1 = `dt0;
            4'h1: digital_tube1 = `dt1;
            4'h2: digital_tube1 = `dt2;
            4'h3: digital_tube1 = `dt3;
            4'h4: digital_tube1 = `dt4;
            4'h5: digital_tube1 = `dt5;
            4'h6: digital_tube1 = `dt6;
            4'h7: digital_tube1 = `dt7;
            4'h8: digital_tube1 = `dt8;
            4'h9: digital_tube1 = `dt9;
            4'hA: digital_tube1 = `dtA;
            4'hB: digital_tube1 = `dtB;
            4'hC: digital_tube1 = `dtC;
            4'hD: digital_tube1 = `dtD;
            4'hE: digital_tube1 = `dtE;
            4'hF: digital_tube1 = `dtF;
				default: digital_tube1 = 8'b11111111;
        endcase
		end
		else if(digital_tube_sel1[1]) begin
			case(driver_reg[0][23:20])
				4'h0: digital_tube1 = `dt0;
            4'h1: digital_tube1 = `dt1;
            4'h2: digital_tube1 = `dt2;
            4'h3: digital_tube1 = `dt3;
            4'h4: digital_tube1 = `dt4;
            4'h5: digital_tube1 = `dt5;
            4'h6: digital_tube1 = `dt6;
            4'h7: digital_tube1 = `dt7;
            4'h8: digital_tube1 = `dt8;
            4'h9: digital_tube1 = `dt9;
            4'hA: digital_tube1 = `dtA;
            4'hB: digital_tube1 = `dtB;
            4'hC: digital_tube1 = `dtC;
            4'hD: digital_tube1 = `dtD;
            4'hE: digital_tube1 = `dtE;
            4'hF: digital_tube1 = `dtF;
				default: digital_tube1 = 8'b11111111;
        endcase
		end
		else if(digital_tube_sel1[2]) begin
			case(driver_reg[0][27:24])
				4'h0: digital_tube1 = `dt0;
            4'h1: digital_tube1 = `dt1;
            4'h2: digital_tube1 = `dt2;
            4'h3: digital_tube1 = `dt3;
            4'h4: digital_tube1 = `dt4;
            4'h5: digital_tube1 = `dt5;
            4'h6: digital_tube1 = `dt6;
            4'h7: digital_tube1 = `dt7;
            4'h8: digital_tube1 = `dt8;
            4'h9: digital_tube1 = `dt9;
            4'hA: digital_tube1 = `dtA;
            4'hB: digital_tube1 = `dtB;
            4'hC: digital_tube1 = `dtC;
            4'hD: digital_tube1 = `dtD;
            4'hE: digital_tube1 = `dtE;
            4'hF: digital_tube1 = `dtF;
				default: digital_tube1 = 8'b11111111;
        endcase
		end
		else if(digital_tube_sel1[3]) begin
			case(driver_reg[0][31:28])
				4'h0: digital_tube1 = `dt0;
            4'h1: digital_tube1 = `dt1;
            4'h2: digital_tube1 = `dt2;
            4'h3: digital_tube1 = `dt3;
            4'h4: digital_tube1 = `dt4;
            4'h5: digital_tube1 = `dt5;
            4'h6: digital_tube1 = `dt6;
            4'h7: digital_tube1 = `dt7;
            4'h8: digital_tube1 = `dt8;
            4'h9: digital_tube1 = `dt9;
            4'hA: digital_tube1 = `dtA;
            4'hB: digital_tube1 = `dtB;
            4'hC: digital_tube1 = `dtC;
            4'hD: digital_tube1 = `dtD;
            4'hE: digital_tube1 = `dtE;
            4'hF: digital_tube1 = `dtF;
				default: digital_tube1 = 8'b11111111;
        endcase
		end
	end
	always @(*) begin
			case(driver_reg[1][3:0])
				4'h0: digital_tube2 = `dt0;
            4'h1: digital_tube2 = `dt1;
            4'h2: digital_tube2 = `dt2;
            4'h3: digital_tube2 = `dt3;
            4'h4: digital_tube2 = `dt4;
            4'h5: digital_tube2 = `dt5;
            4'h6: digital_tube2 = `dt6;
            4'h7: digital_tube2 = `dt7;
            4'h8: digital_tube2 = `dt8;
            4'h9: digital_tube2 = `dt9;
            4'hA: digital_tube2 = `dtA;
            4'hB: digital_tube2 = `dtB;
            4'hC: digital_tube2 = `dtC;
            4'hD: digital_tube2 = `dtD;
            4'hE: digital_tube2 = `dtE;
            4'hF: digital_tube2 = `dtF;
				default: digital_tube2 = 8'b11111111;
        endcase
	end


endmodule
