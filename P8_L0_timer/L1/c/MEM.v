`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:36 11/19/2021 
// Design Name: 
// Module Name:    MEM 
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
module MEM(
    input clk,
    input reset,
	 input [4:0] ARegWrite_MEMin,
	 input [31:0] PC_MEMin,
	 input [31:0] datatrans_MEMin,
	 input [31:0] ALUresult_MEMin,
	 input [31:0] RD2_MEMin,
	 input [3:0] MemWrite_MEMin,
	 input MemtoReg_MEMin,
	 output [31:0] PC_MEMout,
	 output [31:0] datatrans_MEMout,
	 output [4:0] ARegWrite_MEMout,
	 input [4:0] Ruse2_MEMin,
	 input [2:0] Tnew_MEMin,
	 output [2:0] Tnew_MEMout,
	 input [31:0] transWdata,
	 input [4:0] transWaddr,
	 input [31:0] m_data_rdata,//[31:0]	I	ï¿½ï¿½ï¿½Ý´æ´¢ï¿½ï¿½ï¿½æ´¢ï¿½ï¿½ï¿½ï¿½Ó¦ï¿½ï¿½ï¿½ï¿½
	 output [31:0] m_data_addr,//[31:0]	O	ï¿½ï¿½Ð´ï¿½ï¿½/ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ý´æ´¢ï¿½ï¿½ï¿½ï¿½Ó¦ï¿½ï¿½Ö·
	 output reg [31:0] m_data_wdata,//[31:0]	O	ï¿½ï¿½Ð´ï¿½ï¿½ï¿½ï¿½ï¿½Ý´æ´¢ï¿½ï¿½ï¿½ï¿½Ó¦ï¿½ï¿½ï¿½ï¿½
    output reg [3:0] m_data_byteen,//[3:0]	O	ï¿½ï¿½Î»ï¿½Ö½ï¿½Ê¹ï¿½ï¿½
	 output [31:0] m_inst_addr,//[31:0]	O	M ï¿½ï¿½ PC
	 input expFlag_MEMin,
	 input [4:0] ExcCode_MEMin,
	 input [5:0] HWInt,
	 output Req,
	 output [31:0] EPC,
	 input delay_MEM
    );
	 wire [31:0] RD2_MEMintrans;
	 reg [31:0] MemOut;
	 assign PC_MEMout = PC_MEMin;
	 assign datatrans_MEMout = (MemWrite_MEMin==8)?DOut :(MemtoReg_MEMin)? MemOut : datatrans_MEMin;
	 assign ARegWrite_MEMout = ARegWrite_MEMin;
	 assign Tnew_MEMout = Tnew_MEMin;
	 
	 //p7
	 reg outInt;
	 always @(posedge clk) begin
		if(reset) outInt<=0;
		else begin
			if(Req) outInt<=1;
			else outInt<=0;
		end
	 end
	 wire [4:0] ExcCode;
	 wire WECP0, EXLClr;
	 wire [31:0] DOut;
	 wire timerAdd, countAdd, lhlb, inrange, lw, load, save, sw, sh, shsb;//Add:ALUresult
	 assign timerAdd = ((ALUresult_MEMin >= 32'h0000_7F00) && (ALUresult_MEMin <= 32'h0000_7F0B)) ;
	 assign countAdd = ((ALUresult_MEMin >= 32'h0000_7F08) && (ALUresult_MEMin <= 32'h0000_7F0B)) ;
	 assign inrange = (ALUresult_MEMin<32'h3000) && (ALUresult_MEMin>=32'h0);
	 assign lhlb = (MemWrite_MEMin<=7)&&(MemWrite_MEMin>=4);
	 assign lh = (MemWrite_MEMin==6) || (MemWrite_MEMin==7);
	 assign lw = MemWrite_MEMin==0;
	 assign load = lhlb | lw;
	 assign sw = MemWrite_MEMin==3;
	 assign sh = MemWrite_MEMin==2;
	 assign shsb = (MemWrite_MEMin==2) || (MemWrite_MEMin==1);
	 assign save = sw | shsb;
	 assign UARTadd = (ALUresult_MEMin<32'h7f3b) && (ALUresult_MEMin>=32'h7f20);
	 assign tubeadd = (ALUresult_MEMin<32'h7f47) && (ALUresult_MEMin>=32'h7f40);
	 assign genIOadd = ((ALUresult_MEMin<32'h7f5b) && (ALUresult_MEMin>=32'h7f50))||((ALUresult_MEMin<32'h7f63) && (ALUresult_MEMin>=32'h7f60));
	 assign AdEL = (lw && ALUresult_MEMin[1:0]!=2'b0) || (lh && ALUresult_MEMin[0]!=1'b0) || (lhlb && timerAdd) || (load && (!inrange && !timerAdd && !UARTadd && !tubeadd && !genIOadd));
	 assign AdES = (sw && ALUresult_MEMin[1:0]!=2'b0) || (sh && ALUresult_MEMin[0]!=1'b0) || (shsb && timerAdd) || (save && countAdd) || (save && (!inrange && !timerAdd)&&(!UARTadd && !tubeadd && !genIOadd));
	 assign ExcCode = (expFlag_MEMin)?ExcCode_MEMin :(AdEL)?4 :(AdES)?5 :0;
	 assign WECP0 = (MemWrite_MEMin==9);
	 
	 //×ªï¿½ï¿½
	 assign RD2_MEMintrans = (Ruse2_MEMin==0)? 0:
									 (Ruse2_MEMin==transWaddr)? transWdata:
									 RD2_MEMin;
	 //ï¿½ï¿½ï¿½ï¿½byteen
	 wire [1:0] byteen_code=ALUresult_MEMin[1:0];
	 always @(*) begin
		if(Req|outInt) m_data_byteen=4'b1111;
		else begin
			case(MemWrite_MEMin)
				1:begin
					if(byteen_code==2'b00) m_data_byteen=4'b0001;
					else if(byteen_code==2'b01) m_data_byteen=4'b0010;
					else if(byteen_code==2'b10) m_data_byteen=4'b0100;
					else m_data_byteen=4'b1000;
				end
				2:begin
					if(byteen_code==2'b00) m_data_byteen=4'b0011;
					else m_data_byteen=4'b1100;
				end
				3: m_data_byteen=4'b1111;
				default: m_data_byteen=6'b0000;
				endcase
		end
	 end
	 //ï¿½ï¿½ï¿½ï¿½wdata
	 always @(*) begin
		case(MemWrite_MEMin)
			1:begin
				if(byteen_code==2'b00) m_data_wdata=RD2_MEMintrans;
				else if(byteen_code==2'b01) m_data_wdata=RD2_MEMintrans<<8;
				else if(byteen_code==2'b10) m_data_wdata=RD2_MEMintrans<<16;
				else m_data_wdata=RD2_MEMintrans<<24;
			end
			2:begin
				if(byteen_code==2'b00) m_data_wdata=RD2_MEMintrans;
				else m_data_wdata=RD2_MEMintrans<<16;
			end
			3: m_data_wdata=RD2_MEMintrans;
			default: m_data_wdata=RD2_MEMintrans;
			endcase
	 end
	 //ï¿½ï¿½ï¿½ï¿½DM
	 assign m_data_addr = (Req|outInt)?32'hffff :ALUresult_MEMin;
	 assign m_inst_addr = PC_MEMin;
	 //loadï¿½ï¿½Õ¹
	 always @(*) begin
		case(MemWrite_MEMin)
			4:begin
				if(byteen_code==2'b00) MemOut={{24{m_data_rdata[7]}},m_data_rdata[7:0]};
				else if(byteen_code==2'b01) MemOut={{24{m_data_rdata[15]}},m_data_rdata[15:8]};
				else if(byteen_code==2'b10) MemOut={{24{m_data_rdata[23]}},m_data_rdata[23:16]};
				else MemOut={{24{m_data_rdata[31]}},m_data_rdata[31:24]};
			end
			5:begin
				if(byteen_code==2'b00) MemOut={{24{1'b0}},m_data_rdata[7:0]};
				else if(byteen_code==2'b01) MemOut={{24{1'b0}},m_data_rdata[15:8]};
				else if(byteen_code==2'b10) MemOut={{24{1'b0}},m_data_rdata[23:16]};
				else MemOut={{24{1'b0}},m_data_rdata[31:24]};
			end
			6:begin
				if(byteen_code==2'b00) MemOut={{16{m_data_rdata[15]}},m_data_rdata[15:0]};
				else MemOut={{16{m_data_rdata[31]}},m_data_rdata[31:16]};
			end
			7:begin
				if(byteen_code==2'b00) MemOut={{16{1'b0}},m_data_rdata[15:0]};
				else MemOut={{16{1'b0}},m_data_rdata[31:16]};
			end
			0: MemOut = m_data_rdata;
			default: MemOut=0;
			endcase
	 end
	 assign EXLClr = MemWrite_MEMin==11;
	 CP0 CP0(
    .A1(datatrans_MEMin[4:0]), //¶Á
    .A2(datatrans_MEMin[4:0]), //Ð´
    .DIn(RD2_MEMintrans),
    .PC(PC_MEMin),  //ÖÐ¶Ï/Òì³£Ê±µÄ PC
    .ExcCode(ExcCode), //ÖÐ¶Ï/Òì³£µÄÀàÐÍ
    .HWInt(HWInt), //6 ¸öÉè±¸ÖÐ¶Ï
    .WE(WECP0), //CP0 ¼Ä´æÆ÷Ð´Ê¹ÄÜ
    .EXLClr(EXLClr), //ÖÃ 0 SR µÄEXL Î»
    .clk(clk),
    .reset(reset),
    .Req(Req), //ÖÐ¶ÏÒì³£ÇëÇó
    .EPCout(EPC),
    .DOut(DOut),
	 .delay(delay_MEM)
    );



endmodule
