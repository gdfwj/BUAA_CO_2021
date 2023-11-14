`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:17 11/11/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] A,
    input [31:0] B,
	 input [4:0] S,
    input [4:0] ALUctrl,
    output [31:0] Yout,
	output overlap
    );
	reg [32:0] Y;
	assign Yout = Y[31:0] ;
	 wire [4:0] v_code;
	 assign v_code=A[4:0];
	 always @(*) begin
		case(ALUctrl)
			0:Y={A[31],A}+{B[31],B};
			1:Y=A+B;
			2:Y={A[31],A}-{B[31],B};
			3:Y=A-B;
			4:Y=B<<v_code;
			5:Y=B>>v_code;
			6:Y=$signed($signed(B)>>>v_code);
			7:Y=A&B;
			8:Y=A|B;
			9:Y=A^B;
			10:Y=$signed($signed(A)<$signed(B))?1:0;
			11:Y=(A<B)?1:0;
			12:Y=B<<S;
			13:Y=B>>S;
			14:Y=$signed($signed(B)>>>S);
			15:Y=B<<16;
			24:Y=~(A|B);
			default Y=0;
		endcase
	 end
	 //over
	 assign overlap = (ALUctrl==0||ALUctrl==2)? ~(Y[31]==Y[32]): 0;

endmodule
