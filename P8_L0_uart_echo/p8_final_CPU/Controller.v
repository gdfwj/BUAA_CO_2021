`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:01:48 11/12/2021 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input [5:0] opcode,
    input [5:0] funct,
	 input [31:0] Ins,
    output MemtoReg,
    output [3:0] MemWrite,
    output Branch,
    output ALUimm,
    output RegWriteRd,
    output RegWrite,
    output ZeroExtend,
    output jumpreg,
    output isj,
    output jal,
    output [4:0] ALUctrl,
	 output [2:0] compareCtrl,
	 output [2:0] Tuse1,
	 output [2:0] Tuse2,
	 output [2:0] Tnew,
	 //output usehilo,
	 output iop,
	 output eret,
	 output mtc0
    );
	 wire [4:0] bcode;
	 wire [4:0] c0code;
	 assign bcode = Ins[20:16];
	 assign c0code = Ins[25:21];
	 wire mfc0;
	 //load
	 assign lb = opcode==6'b100000;
	 assign lbu = opcode==6'b100100;
	 assign lh = opcode==6'b100001;
	 assign lhu = opcode==6'b100101;
	 assign lw = opcode==6'b100011;
	 assign load = lb|lbu|lh|lhu|lw;
	 //save
	 assign sb = opcode==6'b101000;
	 assign sh = opcode==6'b101001;
	 assign sw = opcode==6'b101011;
	 assign save = sb|sh|sw;
	 assign MemWrite = (sb)?1 :(sh)?2 :(sw)?3 :(lb)?4 :(lbu)?5 :(lh)?6 :(lhu)?7 :(lw)?0 :(mfc0)?8 :(mtc0)?9 :(eret)?11 :10;
	 //branch
	 assign beq = opcode==6'b000100 ;
	 assign bne = opcode==6'b000101 ;
	 assign blez = opcode==6'b000110 && bcode==5'b0;
	 assign bgtz = opcode==6'b000111 && bcode==5'b0;
	 assign bltz = opcode==6'b000001 && bcode==5'b0;
	 assign bgez = opcode==6'b000001 && bcode==5'b1;
	 assign Branch = beq | bne | blez | bgtz | bltz | bgez ;
	 assign compareCtrl = (beq)?1 : (bne)?2 : (blez)?3:(bgtz)?4: (bltz)?5:(bgez)?6:0;
	 //R
	 assign add = opcode==6'b000000 && funct==6'b100000;
	 assign addu = opcode==6'b000000 && funct==6'b100001;
	 assign sub = opcode==6'b000000 && funct==6'b100010;
	 assign subu = opcode==6'b000000 && funct==6'b100011;
	 assign sllv = opcode==6'b000000 && funct==6'b000100;
	 assign srlv = opcode==6'b000000 && funct==6'b000110;
	 assign srav = opcode==6'b000000 && funct==6'b000111;
	 assign rand = opcode==6'b000000 && funct==6'b100100;
	 assign ror = opcode==6'b000000 && funct==6'b100101;
	 assign rnor = opcode==6'b000000 && funct==6'b100111;
	 assign rxor = opcode==6'b000000 && funct==6'b100110;
	 assign slt = opcode==6'b000000 && funct==6'b101010;
	 assign sltu = opcode==6'b000000 && funct==6'b101011;
	 assign sll = opcode==6'b000000 && funct==6'b000000;
	 assign srl = opcode==6'b000000 && funct==6'b000010;
	 assign sra = opcode==6'b000000 && funct==6'b000011;
	 assign R = add|addu|sub|subu|sllv|srlv|srav|rand|ror|rxor|slt|sltu|sll|srl|sra|rnor;
	 //i
	 assign addi = opcode==6'b001000;
	 assign addiu = opcode==6'b001001;
	 assign andi = opcode==6'b001100;
	 assign ori = opcode==6'b001101;
	 assign xori = opcode==6'b001110;
	 assign lui = opcode==6'b001111;
	 assign slti = opcode==6'b001010;
	 assign sltiu = opcode==6'b001011;
	 assign ZeroExtend = andi|ori|xori;
	 assign i = addi|addiu|andi|ori|xori|lui|slti|sltiu;
	 //md
	 //assign mult = opcode==6'b000000 && funct==6'b011000;
	 //assign multu = opcode==6'b000000 && funct==6'b011001;
	 //assign div = opcode==6'b000000 && funct==6'b011010;
	 //assign divu = opcode==6'b000000 && funct==6'b011011;
	 //mt
	 //assign mtlo = opcode==6'b000000 && funct==6'b010011;
	 //assign mthi = opcode==6'b000000 && funct==6'b010001;
	 //mf
	 //assign mflo = opcode==6'b000000 && funct==6'b010010;
	 //assign mfhi = opcode==6'b000000 && funct==6'b010000;
	 //assign usehilo = mult|multu|div|divu|mtlo|mthi|mflo|mfhi;
	 assign ALUctrl = (add|addi|save|load)?0 :(addu|addiu)?1 :(sub)?2 :(subu)?3 :(sllv)?4 :(srlv)?5 :(srav)?6 :(rand|andi)?7 :(ror|ori)?8 :
							(rxor|xori)?9 :(slt|slti)?10 :(sltu|sltiu)?11 :(sll)?12 :(srl)?13 :(sra)?14 :(lui)?15 :(rnor)?24 :25;
	 //jump
	 assign jalr = opcode==6'b000000 && funct==6'b001001;
	 assign jr = opcode==6'b000000 && funct==6'b001000;
	 assign j = opcode==6'b000010;
	 assign jal = opcode==6'b000011;
	 assign jumpreg = jr|jalr;
	 //Ö¸ï¿½ï¿½ï¿½ï¿½ï¿
	 assign nop = opcode==6'b000000 && funct==6'b000000;
	 
	 //p7
	 assign eret = opcode==6'b010000 && funct==6'b011000;
	 assign mfc0 = opcode==6'b010000 && c0code==5'b00000;
	 assign mtc0 = opcode==6'b010000 && c0code==5'b00100;
	 assign c0 = mfc0|mtc0|eret;
	 assign iop = ~(load|save|Branch|R|i|jalr|jr|j|jal|c0|nop);
	 
	 or or0(MemtoReg, load), 
		 or3(ALUimm, i, save, load), 
		 or4(RegWriteRd, R, jalr), 
		 or5(RegWrite, jal, load, i, R, jalr, mfc0),
		 or6(isj, j, jal);
	
		 
	 
	 
	 //AT
	 assign Tnew = (R|i)? 2:
						(load|mfc0)? 3:
						0;
	 assign Tuse1 = (R|i|load|save)? 1:
						 (Branch|jumpreg)? 0:
						 7;
	 assign Tuse2 = (R)? 1:
						 (save|mtc0)? 2:
						 (beq|bne)? 0:
						 7;
	 


endmodule
