`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company
// Engineer
// 
// Create Date:    22:15:43 11/18/2021 
// Design Name: 
// Module Name:    datapath 
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
module datapath(
    input clk,
    input reset,
	 input [31:0] i_inst_rdata,
	 output [31:0] i_inst_addr,
	 input [31:0] m_data_rdata,//[31:0]	I	���ݴ洢���洢����Ӧ����
	 output [31:0] m_data_addr,//[31:0]	O	��д��/���������ݴ洢����Ӧ��ַ
	 output [31:0] m_data_wdata,//[31:0]	O	��д�����ݴ洢����Ӧ����
    output [3:0] m_data_byteen,//[3:0]	O	��λ�ֽ�ʹ��
	 output [31:0] m_inst_addr,//[31:0]	O	M �� PC
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr,
	 input [5:0] HWInt
    );
	 wire [31:0] PCbranch, PCjump, PCjr, Ins_IF, PC_IF, PC_IDin, Ins_IDin;
	 wire Branch, isj, jr;
	 
	 wire stop, hold_IF, hold_IFtoID, clear_IDtoEX;
	 
	 wire [31:0] PC_IDout, imm_IDout, RD1_IDout, RD2_IDout;
	 wire ALUimm_IDout, MemtoReg_IDout;
	 wire [4:0] ALUctrl_IDout;
	 //WB
	 wire [31:0] RegWriteData_WB,PC_WB;
	 wire [4:0] RegWrite_WB;
	 wire [4:0] ALUs_IDout, ALUs_EXin;
	 //Mem
	 wire [3:0] MemWrite_EXin, MemWrite_IDout, MemWrite_EXout, MemWrite_MEMin;
	 //AT
	 wire [31:0] datatrans_IDout;
	 wire [2:0] Tnew_IDout, Tnew_EXin, Tnew_EXout;
	 wire [4:0] Ruse1_IDout, Ruse2_IDout, transDaddr, transEaddr, transWaddr, Ruse1_EXin, Ruse2_EXin, Ruse2_EXout;
	 wire [4:0] Ruse2_MEMin, ARegWrite_IDout;
	 wire [31:0] transDdata, transEdata, transWdata;
	 wire [2:0] transDTnew, transETnew, transWTnew;
	 
	 wire [31:0] transDdata_ID, transEdata_ID, transWdata_ID;
	 wire [4:0] transDaddr_ID, transEaddr_ID, transWaddr_ID;
	 wire [31:0] transEdata_EX, transWdata_EX;
	 wire [4:0] transEaddr_EX, transWaddr_EX;
	 wire [31:0] transWdata_MEM;
	 wire [4:0] transWaddr_MEM;
	 
	 wire [31:0] PC_EXin, imm_EXin, RD1_EXin, RD2_EXin, datatrans_EXin;
	 wire ALUimm_EXin, MemtoReg_EXin;
	 wire [4:0] ARegWrite_EXin;
	 wire [4:0] ALUctrl_EXin;
	 
	 wire [31:0] PC_EXout, datatrans_EXout, ALUresult_EXout, RD2_EXout;
	 wire [4:0] ARegWrite_EXout;
	 wire MemtoReg_EXout;
	 
	 wire [31:0] PC_MEMin, datatrans_MEMin, ALUresult_MEMin, RD2_MEMin;
	 wire [4:0] ARegWrite_MEMin;
	 wire MemtoReg_MEMin;
	 //AT
	 wire [2:0] Tnew_MEMin;
	 
	 wire [31:0] PC_MEMout, datatrans_MEMout;
	 wire [4:0] ARegWrite_MEMout;
	 //AT
	 wire [2:0] Tnew_MEMout;
	 
	 wire [31:0] PC_WBin, datatrans_WBin;
	 wire [4:0] ARegWrite_WBin;
	 //AT
	 wire [2:0] Tnew_WBin;
	 //hilo
	 //wire hilobusy;
	 //p7
	 wire [4:0] ExcCode_IFout, ExcCode_IDin, ExcCode_IDout, ExcCode_EXin, ExcCode_EXout, ExcCode_MEMin;
	 wire clearAll, exc, EXLClr, eret;
	 wire [31:0] PC_EPC;
	 wire expFlag_IFout, expFlag_IDout, expFlag_EXout, expFlag_IDin, expFlag_EXin, expFlag_MEMin;
	 wire delay_IFout, delay_ID, delay_EX, delay_MEMin;
	 assign exc = Req;
	 assign clearAll = Req;
	 assign EXLClr = eret;
	 wire Branch_for_delay;
	 
	 IF tIF(
    .PCbranch(PCbranch),
    .Branch(Branch),
    .PCjump(PCjump),
    .isj(isj),
	 .PCjr(PCjr),
	 .jr(jr),
    .PC_IF(PC_IF),
	 .clk(clk),
	 .reset(reset),
	 .hold(hold_IF),
	 .expFlag_IFout(expFlag_IFout),
	 .ExcCode_IFout(ExcCode_IFout),
	 .eret(eret),
	 .exc(exc),
	 .PC_EPC(PC_EPC),
	 .delay(delay_IFout),
	 .Branch_for_delay(Branch_for_delay)
    );
	 
	 assign i_inst_addr = PC_IF;
	 assign Ins_IF = i_inst_rdata;
	 
	 IFtoID tIFtoID(
    .PC_IF(PC_IF),
	 .Ins_IF(Ins_IF),
	 .PC_ID(PC_IDin),
	 .Ins_ID(Ins_IDin),
	 .clk(clk),
	 .reset(reset),
	 .hold(hold_IFtoID),
	 .expFlag_IFout(expFlag_IFout),
	 .ExcCode_IFout(ExcCode_IFout),
	 .expFlag_IDin(expFlag_IDin),
	 .ExcCode_IDin(ExcCode_IDin),
	 .clearAll(clearAll),
	 .eret(eret),
	 .delay_ID(delay_ID),
	 .delay_IFout(delay_IFout),
	 .EPC(PC_EPC)
    );
	 
	 
	 
	 ID tID(
    .Ins_IDin(Ins_IDin),
    .PC_IDin(PC_IDin),
    .clk(clk),
    .reset(reset),
	 .RegWrite_WB(RegWrite_WB),
	 .RegWriteData_WB(RegWriteData_WB),
	 .PC_WB(PC_WB),
    .PC_IDout(PC_IDout),
	 .PCbranch(PCbranch),
    .Branch(Branch),
    .PCjump(PCjump),
    .isj(isj),
	 .PCjr(PCjr),
	 .jr(jr),
	 .imm_ID(imm_IDout),
	 .RD1(RD1_IDout),
	 .RD2(RD2_IDout),
	 .ALUimm(ALUimm_IDout),
	 .ARegWrite(ARegWrite_IDout),
	 .MemWrite(MemWrite_IDout),
	 .MemtoReg(MemtoReg_IDout),
	 .ALUctrl(ALUctrl_IDout),
	 .datatrans(datatrans_IDout), // A
	 .Tnew_IDout(Tnew_IDout),
	 .Ruse1_IDout(Ruse1_IDout),
	 .Ruse2_IDout(Ruse2_IDout),
	 .transDaddr(transDaddr_ID),
	 .transEaddr(transEaddr_ID),
	 .transWaddr(transWaddr_ID),
	 .transDdata(transDdata_ID),
	 .transEdata(transEdata_ID),
	 .transWdata(transWdata_ID),
	 .transDTnew(transDTnew),
	 .transETnew(transETnew),
	 .transWTnew(transWTnew),
	 .stop(stop),
	 .ALUs_IDout(ALUs_IDout),
	 //.hilobusy(hilobusy),
	 .expFlag_IDout(expFlag_IDout),
	 .ExcCode_IDout(ExcCode_IDout),
	 .expFlag_IDin(expFlag_IDin),
	 .ExcCode_IDin(ExcCode_IDin),
	 .eretout(eret),
	 .Branch_for_delay(Branch_for_delay)
    );//IDtoEX
	 
	 assign transDaddr_ID = transDaddr;
	 assign transEaddr_ID = transEaddr;
	 assign transWaddr_ID = transWaddr;
	 assign transDdata_ID = transDdata;
	 assign transEdata_ID = transEdata;
	 assign transWdata_ID = transWdata;
	 
	 assign hold_IF = stop; 
	 assign hold_IFtoID = stop;
	 assign clear_IDtoEX = stop;
	 
	 IDtoEX tIDtoEX(
    .clk(clk),
    .reset(reset),
    .PC_IDout(PC_IDout),
	 .imm_ID(imm_IDout),
	 .RD1_IDout(RD1_IDout),
	 .RD2_IDout(RD2_IDout),
	 .ALUimm_IDout(ALUimm_IDout),
	 .ARegWrite_IDout(ARegWrite_IDout),
	 .MemWrite_IDout(MemWrite_IDout),
	 .MemtoReg_IDout(MemtoReg_IDout),
	 .ALUctrl_IDout(ALUctrl_IDout),
	 .datatrans_IDout(datatrans_IDout),
    .PC_EXin(PC_EXin),
	 .imm_EXin(imm_EXin),
	 .RD1_EXin(RD1_EXin),
	 .RD2_EXin(RD2_EXin),
	 .ALUimm_EXin(ALUimm_EXin),
	 .ARegWrite_EXin(ARegWrite_EXin),
	 .MemWrite_EXin(MemWrite_EXin),
	 .MemtoReg_EXin(MemtoReg_EXin),
	 .ALUctrl_EXin(ALUctrl_EXin),
	 .datatrans_EXin(datatrans_EXin),
	 .Tnew_IDout(Tnew_IDout),
	 .Tnew_EXin(Tnew_EXin),
	 .Ruse1_IDout(Ruse1_IDout),
	 .Ruse2_IDout(Ruse2_IDout),
	 .Ruse1_EXin(Ruse1_EXin),
	 .Ruse2_EXin(Ruse2_EXin),
	 .clear(clear_IDtoEX),
	 .ALUs_IDout(ALUs_IDout),
	 .ALUs_EXin(ALUs_EXin),
	 .expFlag_IDout(expFlag_IDout),
	 .ExcCode_IDout(ExcCode_IDout),
	 .expFlag_EXin(expFlag_EXin),
	 .ExcCode_EXin(ExcCode_EXin),
	 .clearAll(clearAll),
	 .delay_ID(delay_ID),
	 .delay_EX(delay_EX)
    );
	 assign transDaddr = ARegWrite_EXin;
	 assign transDdata = datatrans_EXin;
	 assign transDTnew = Tnew_EXin;
	 
	 
	 
	 EX tEX(
    .PC_EXin(PC_EXin),
	 .imm_EXin(imm_EXin),
	 .RD1_EXin(RD1_EXin),
	 .RD2_EXin(RD2_EXin),
	 .ALUimm_EXin(ALUimm_EXin),
	 .ARegWrite_EXin(ARegWrite_EXin),
	 .MemWrite_EXin(MemWrite_EXin),
	 .MemtoReg_EXin(MemtoReg_EXin),
	 .ALUctrl_EXin(ALUctrl_EXin),
	 .datatrans_EXin(datatrans_EXin),
	 .ARegWrite_EXout(ARegWrite_EXout),
	 .PC_EXout(PC_EXout),
	 .datatrans_EXout(datatrans_EXout),
	 .ALUresult_EXout(ALUresult_EXout),
	 .RD2_EXout(RD2_EXout),
	 .MemWrite_EXout(MemWrite_EXout),
	 .MemtoReg_EXout(MemtoReg_EXout),
	 .Ruse1_EXin(Ruse1_EXin),
	 .Ruse2_EXin(Ruse2_EXin),
	 .Ruse2_EXout(Ruse2_EXout),
	 .Tnew_EXin(Tnew_EXin),
	 .Tnew_EXout(Tnew_EXout),//
	 .transEaddr(transEaddr_EX),
	 .transWaddr(transWaddr_EX),
	 .transEdata(transEdata_EX),
	 .transWdata(transWdata_EX),
	 .clk(clk),
	 .reset(reset),
	 .ALUs_EXin(ALUs_EXin),
	 //.hilobusy(hilobusy),
	 .expFlag_EXout(expFlag_EXout),
	 .ExcCode_EXout(ExcCode_EXout),
	 .expFlag_EXin(expFlag_EXin),
	 .ExcCode_EXin(ExcCode_EXin),
	 .Req(Req)
    );
	 assign transEaddr_EX = transEaddr;
	 assign transWaddr_EX = transWaddr;
	 assign transEdata_EX = transEdata;
	 assign transWdata_EX = transWdata;
	 
	 
	 EXtoMEM tEXtoMEM(
    .clk(clk),
    .reset(reset),
	 .ARegWrite_EXout(ARegWrite_EXout),
	 .PC_EXout(PC_EXout),
	 .datatrans_EXout(datatrans_EXout),
	 .ALUresult_EXout(ALUresult_EXout),
	 .RD2_EXout(RD2_EXout),
	 .MemWrite_EXout(MemWrite_EXout),
	 .MemtoReg_EXout(MemtoReg_EXout),
	 .ARegWrite_MEMin(ARegWrite_MEMin),
	 .PC_MEMin(PC_MEMin),
	 .datatrans_MEMin(datatrans_MEMin),
	 .ALUresult_MEMin(ALUresult_MEMin),
	 .RD2_MEMin(RD2_MEMin),
	 .MemWrite_MEMin(MemWrite_MEMin),
	 .MemtoReg_MEMin(MemtoReg_MEMin),
	 .Ruse2_EXout(Ruse2_EXout),
	 .Tnew_EXout(Tnew_EXout),
	 .Ruse2_MEMin(Ruse2_MEMin),
	 .Tnew_MEMin(Tnew_MEMin),
	 .expFlag_EXout(expFlag_EXout),
	 .ExcCode_EXout(ExcCode_EXout),
	 .expFlag_MEMin(expFlag_MEMin),
	 .ExcCode_MEMin(ExcCode_MEMin),
	 .clearAll(clearAll),
	 .delay_MEMin(delay_MEMin),
	 .delay_EX(delay_EX)
    );
	 assign transETnew = Tnew_MEMin;
	 assign transEaddr = ARegWrite_MEMin;
	 assign transEdata = datatrans_MEMin;
	 
	 
	 
	 
	 MEM tMEM(
    .clk(clk),
    .reset(reset),
	 .ARegWrite_MEMin(ARegWrite_MEMin),
	 .PC_MEMin(PC_MEMin),
	 .datatrans_MEMin(datatrans_MEMin),
	 .ALUresult_MEMin(ALUresult_MEMin),
	 .RD2_MEMin(RD2_MEMin),
	 .MemWrite_MEMin(MemWrite_MEMin),
	 .MemtoReg_MEMin(MemtoReg_MEMin),
	 .PC_MEMout(PC_MEMout),
	 .datatrans_MEMout(datatrans_MEMout),
	 .ARegWrite_MEMout(ARegWrite_MEMout),
	 .Ruse2_MEMin(Ruse2_MEMin),
	 .Tnew_MEMin(Tnew_MEMin),
	 .Tnew_MEMout(Tnew_MEMout),
	 .transWdata(transWdata_MEM),
	 .transWaddr(transWaddr_MEM),
	 .m_data_rdata(m_data_rdata),
	 .m_data_addr(m_data_addr),
	 .m_data_wdata(m_data_wdata),
	 .m_data_byteen(m_data_byteen),
	 .m_inst_addr(m_inst_addr),
	 .expFlag_MEMin(expFlag_MEMin),
	 .ExcCode_MEMin(ExcCode_MEMin),
	 .HWInt(HWInt),
	 .Req(Req),
	 .EPC(PC_EPC),
	 .delay_MEM(delay_MEMin)
    );
	 assign transWaddr_MEM = transWaddr;
	 assign transWdata_MEM = transWdata;
	 
	 
	 MEMtoRB tMEMtoRB(
    .clk(clk),
    .reset(reset),
	 .PC_MEMout(PC_MEMout),
	 .datatrans_MEMout(datatrans_MEMout),
	 .ARegWrite_MEMout(ARegWrite_MEMout),
	 .PC_WBin(PC_WBin),
	 .datatrans_WBin(datatrans_WBin),
	 .ARegWrite_WBin(ARegWrite_WBin),
	 .Tnew_MEMout(Tnew_MEMout),
	 .Tnew_WBin(Tnew_WBin),
	 .clearAll(clearAll)
    );
	 
	 assign transWTnew = Tnew_WBin;
	 assign transWaddr = ARegWrite_WBin;
	 assign transWdata = datatrans_WBin;
	 
	 //
	 assign RegWriteData_WB = datatrans_WBin;
	 assign RegWrite_WB = ARegWrite_WBin;
	 assign PC_WB = PC_WBin;
	 assign w_grf_addr = ARegWrite_WBin;
	 assign w_grf_wdata = datatrans_WBin;
	 assign w_inst_addr = PC_WBin;


endmodule
