`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:08 12/02/2021 
// Design Name: 
// Module Name:    Bridge 
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
module Bridge(
    input [31:0] PrAddr,
    output [31:0] PrRD,
    input [31:0] PrWD,
	 input [3:0] byteen, //CPU
	 output [31:0] Addr, //Addr for all
	 output [3:0] byteen_DM,
	 output [31:0] WD, //WD for all
	 input [31:0] databack_DM, //DM
	 input IRQ_TC,
	 input [31:0] data_tube,
	 input [31:0] data_IO,
	 input [31:0] data_TC,
	 input [31:0] data_UART,
	 output WE_TC,
	 output WE_UART,
	 output [3:0] byteen_tube,
	 output [3:0] byteen_IO,
	 output [5:0] HWInt,
	 output STB_I,
	 input interrupt
    );
	 wire useDM, useTC, useUART, usetube, useIO;
	 assign WEC = &byteen;
	 assign WD = PrWD;
	 assign Addr = PrAddr;
	 assign useTC = (PrAddr>=32'h7f00)&&(PrAddr<=32'h7f0b);
	 assign useDM = PrAddr<=32'h2fff;
	 assign useUART = (PrAddr>=32'h7f20)&&(PrAddr<=32'h7f3b);
	 assign usetube = (PrAddr>=32'h7f40)&&(PrAddr<=32'h7f47);
	 assign useIO = (PrAddr>=32'h7f50)&&(PrAddr<=32'h7f63);
	 assign PrRD = (useDM)?databack_DM: (useTC)?data_TC: (useUART)?data_UART: (usetube)?data_tube: (useIO)?data_IO :0;
	 assign WE_TC = useTC & WEC;
	 assign WE_UART = useUART & WEC;
	 assign STB_I = useUART;
	 assign byteen_tube = (usetube)? byteen :4'b0;
	 assign byteen_DM = (useDM)?byteen :4'b0;
	 assign byteen_IO = (useIO)?byteen :4'b0;
	 assign HWInt = {3'b0, interrupt, 1'b0, IRQ_TC};

	 
	 


endmodule
