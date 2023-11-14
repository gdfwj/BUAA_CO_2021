`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:30 12/09/2021 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input [4:0] A1, //��
    input [4:0] A2, //д
    input [31:0] DIn,
    input [31:0] PC,  //�ж�/�쳣ʱ�� PC
    input [6:2] ExcCode, //�ж�/�쳣������
    input [5:0] HWInt, //6 ���豸�ж�
    input WE, //CP0 �Ĵ���дʹ��
    input EXLSet, //��λ SR ��EXL λ
    input EXLClr, //�� 0 SR ��EXL λ
    input clk,
    input reset,
    output Req, //�ж�����
    output [31:0] EPCout,
    output [31:0] DOut,
	 input delay
    );
	 reg [31:0] SR, Cause, EPC, PrID;
	 wire IntReq = (|(HWInt & SR[15:10])) & SR[0] & ~SR[1]; //�ж�
	 wire ExcReq = (ExcCode!=0) && ~SR[1]; //�쳣
	 assign Req = IntReq | ExcReq;
	 assign EPCout = EPC;
	 assign DOut = (A1==12)?SR:
						(A1==13)?Cause:
						(A1==14)?EPC:
						(A1==15)?PrID:
						0;
	 
	 always @(posedge clk) begin
		if(reset==1) begin
			SR<=32'h0000ff11;
			Cause<=0;
			EPC<=0;
			PrID<=32'b00_10111_11010_01000_00111_00110_01100;
		end
		else begin
			Cause[15:10]<=HWInt;
			if(Req) begin
				Cause[6:2]<=(IntReq)?0 :ExcCode;
            SR[1]<=1;
				EPC<=(delay)? PC-4: PC;
				Cause[31]<=delay;
			end
			else if(WE==1) begin
				if(A2==12) SR<=DIn;
				else if(A2==13) Cause<=DIn;
				else if(A2==14) EPC<=DIn;
			end
			if(EXLSet) SR[1]<=1;
			if(EXLClr) SR[1]<=0;
		end
	 end
	 


endmodule
