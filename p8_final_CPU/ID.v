`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:15 11/18/2021 
// Design Name: 
// Module Name:    ID 
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
module ID(
    input [31:0] Ins_IDin,
    input [31:0] PC_IDin,
    input clk,
    input reset,
	 input [4:0] RegWrite_WB,
	 input [31:0] RegWriteData_WB,
	 input [31:0] PC_WB,
    output [31:0] PC_IDout,
	 output [31:0] PCbranch,
    output Branch,
    output [31:0] PCjump,
    output isj,
	 output [31:0] PCjr,
	 output jr,
	 output [31:0] imm_ID,
	 output [31:0] RD1,
	 output [31:0] RD2,
	 output ALUimm,
	 output [4:0] ALUs_IDout,
	 output [4:0] ARegWrite, //A
	 output [3:0] MemWrite,
	 output MemtoReg,
	 output jal,
	 output [4:0] ALUctrl,
	 output [31:0] datatrans, // 写入A的内容（如果有的话）,以下为转发
	 output [2:0] Tnew_IDout,
	 output [4:0] Ruse1_IDout,
	 output [4:0] Ruse2_IDout,
	 input [4:0] transDaddr,
	 input [4:0] transEaddr,
	 input [4:0] transWaddr,
	 input [31:0] transDdata,
	 input [31:0] transEdata,
	 input [31:0] transWdata,
	 input [2:0] transDTnew,
	 input [2:0] transETnew,
	 input [2:0] transWTnew,
	 output stop,
	 //input hilobusy,
	 output expFlag_IDout,
	 output [4:0] ExcCode_IDout,
	 input expFlag_IDin,
	 input [4:0] ExcCode_IDin,
	 output eretout,
	 output Branch_for_delay
    );
	 //p7
	 wire iop,mtc0;
	 assign expFlag_IDout = expFlag_IDin | ((iop)?1:0);
	 assign ExcCode_IDout = (expFlag_IDin)?ExcCode_IDin :10;
	 wire eret;
	 assign eretout = eret & ~stop;
	 assign Branch_for_delay = Branchpre;
	 //
	 
	 parameter one = 1'b1;
	 
	 wire ZeroExtend,RegWriteRd,RegWrite,Branchpre,compareResult;
	 wire [2:0] compareCtrl;
	 wire [4:0] rs, rd, rt;
	 wire [15:0] imm_un;
	 wire [25:0] jump_index;
	 wire [31:0] RD1_pre, RD2_pre;
	 wire [2:0] Tuse1, Tuse2;
	 wire [4:0] Ruse1, Ruse2;
	 //wire usehilo;
	 
	 assign rs = Ins_IDin[25:21];
	 assign rt = Ins_IDin[20:16];
	 assign rd = Ins_IDin[15:11];
	 assign imm_un = Ins_IDin[15:0];
	 assign jump_index = Ins_IDin[25:0];
	 assign ALUs_IDout = Ins_IDin[10:6];
	 assign imm_ID = (ZeroExtend)? {{16{1'b0}}, imm_un}: {{16{imm_un[15]}}, imm_un};
	 assign PCbranch = PC_IDin + 4 +{{14{imm_un[15]}}, imm_un, 2'b0};
	 assign PCjump = {PC_IDin[31:28], jump_index, 2'b0};
	 assign PC_IDout = PC_IDin;
							  
	 
	 assign PCjr = RD1;
	 
	 assign compareResult = (compareCtrl==1)? (RD1==RD2) : 
									(compareCtrl==2)? (RD1!=RD2) :
									(compareCtrl==3)? $signed($signed(RD1)<=$signed(0)) :
									(compareCtrl==4)? $signed($signed(RD1)>$signed(0)) :
									(compareCtrl==5)? $signed($signed(RD1)<$signed(0)) :
									(compareCtrl==6)? $signed($signed(RD1)>=$signed(0)) :
									0;
	 
	 assign Branch = compareResult & Branchpre;
	 
	 //AT法
	 assign ARegWrite = (jal)? 5'b11111:
							  (RegWriteRd)? rd:
							  (RegWrite)? rt:
							  5'b0;
	 assign datatrans = (MemWrite==8||MemWrite==9)? rd: PC_IDin+8;
	 assign Ruse1 = rs;
	 assign Ruse2 = rt;
	 assign Ruse1_IDout = Ruse1;
	 assign Ruse2_IDout = Ruse2;
	 //转发
	 assign RD1  = (Ruse1==0)? 0:
						(Ruse1==transDaddr)? transDdata:
						(Ruse1==transEaddr)? transEdata:
						(Ruse1==transWaddr)? transWdata:
						(Ruse1==RegWrite_WB)? RegWriteData_WB:
						RD1_pre;
	 assign RD2  = (Ruse2==0)? 0:
						(Ruse2==transDaddr)? transDdata:
						(Ruse2==transEaddr)? transEdata:
						(Ruse2==transWaddr)? transWdata:
						(Ruse2==RegWrite_WB)? RegWriteData_WB:
						RD2_pre;
						//p7
	 reg [2:0] waitEPC;
	 always @(posedge clk) begin
		if((mtc0)&&(rd==14)) waitEPC <= 2;
		else if(waitEPC>0) waitEPC<=waitEPC-1;
		else waitEPC<=0;
	 end 
	 //阻塞
	 reg stop1, stop2;
	 always @(*) begin
		if(Ruse1!=0) begin
			if(Ruse1==transDaddr) begin
				if(Tuse1<transDTnew) stop1<=1;
				else stop1<=0;
			end
			else if(Ruse1==transEaddr) begin
				if(Tuse1<transETnew) stop1<=1;
				else stop1<=0;
			end
			else if(Ruse1==transWaddr) begin
				if(Tuse1<transWTnew) stop1<=1;
				else stop1<=0;
			end
		end
		else stop1<=0;
	 end
	 always @(*) begin
		if(Ruse2!=0) begin
			if(Ruse2==transDaddr) begin
				if(Tuse2<transDTnew) stop2<=1;
				else stop2<=0;
			end
			else if(Ruse2==transEaddr) begin
				if(Tuse2<transETnew) stop2<=1;
				else stop2<=0;
			end
			else if(Ruse2==transWaddr) begin
				if(Tuse2<transWTnew) stop2<=1;
				else stop2<=0;
			end
		end
		else stop2<=0;
	 end
	 assign stop = stop1 | stop2 | (eret && (waitEPC!=0));
	 
	 Controller Controller(
    .opcode(Ins_IDin[31:26]),
    .funct(Ins_IDin[5:0]),
    .MemtoReg(MemtoReg),
    .MemWrite(MemWrite),
    .Branch(Branchpre),
    .ALUimm(ALUimm),
    .RegWriteRd(RegWriteRd),
    .RegWrite(RegWrite),
    .ZeroExtend(ZeroExtend),
    .jumpreg(jr),
    .isj(isj),
    .jal(jal),
    .ALUctrl(ALUctrl),
	 .compareCtrl(compareCtrl),
	 .Tuse1(Tuse1),
	 .Tuse2(Tuse2),
	 .Tnew(Tnew_IDout),
	 .Ins(Ins_IDin),
	 //.usehilo(usehilo),
	 .iop(iop),
	 .eret(eret),
	 .mtc0(mtc0)
    );
	 GRF GRF(
    .Address1(rs),
    .Address2(rt),
    .AdressWrite(RegWrite_WB),
    .clk(clk),
    .reset(reset),
    .WE(one),
    .WD(RegWriteData_WB),
	 .PC(PC_WB),
    .RD1(RD1_pre),
    .RD2(RD2_pre)
    );


endmodule
