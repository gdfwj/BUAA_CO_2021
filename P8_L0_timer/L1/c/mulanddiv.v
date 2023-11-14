`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:29 11/25/2021 
// Design Name: 
// Module Name:    mulanddiv 
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
module mulanddiv(
    input [31:0] D1in,
    input [31:0] D2in,
	 input start,
	 input reset,
	 input [4:0] select,
    output reg [31:0] HI,
    output reg [31:0] LO,
    output busy,
	 input clk
    );
	 reg [31:0] D1,D2;
	 reg [3:0] chengchu;
	 reg [3:0] count;
	 assign busy = count!=0;
	 always @(posedge clk) begin
		if(reset==1) begin
			chengchu<=0;
			HI<=0;
			LO<=0;
			count<=0;
			D1<=0;
			D2<=0;
		end
		else begin
			if(start==1) begin
				chengchu<=select;
				D1<=D1in;
				D2<=D2in;
				if(select==0||select==1) count<=5;
				else if(select==2||select==3) count<=10;
				else count<=0;
			end
			else begin
				if(count==1) begin
					count<=count-1;
					if(chengchu==0) begin
						{HI,LO} <= $signed($signed(64'b0)+$signed(D1)*$signed(D2));
					end
					else if(chengchu==1) {HI,LO} <= D1*D2;
					else if(chengchu==3) begin
						LO <= D1/D2;
						HI <= D1%D2;
					end
					else if(chengchu==2)begin
						LO <= $signed($signed(D1)/$signed(D2));
						HI <= $signed($signed(D1)%$signed(D2));
					end
				end
				else if(count==0) begin
					count<=count;
					if(select==4) LO<=D1in;
					else if(select==5) HI<=D1in;
				end
				else count<=count-1;
			end
		end
	 end


endmodule
