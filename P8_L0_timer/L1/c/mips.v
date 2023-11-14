`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:39 11/12/2021 
// Design Name: 
// Module Name:    mips 
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
/* Top Module for P8 */

module mips (
    // clock and reset
    //input clk,
	 //input clk_IMDM,
	 input clk_in,
    input sys_rstn,
    // dip switch
    input [7:0] dip_switch0,
    input [7:0] dip_switch1,
    input [7:0] dip_switch2,
    input [7:0] dip_switch3,
    input [7:0] dip_switch4,
    input [7:0] dip_switch5,
    input [7:0] dip_switch6,
    input [7:0] dip_switch7,
    // key
    input [7:0] user_key,
    // led
    output [31:0] led_light,
    // digital tube
    output [7:0] digital_tube2,
    output digital_tube_sel2,
    output [7:0] digital_tube1,
    output [3:0] digital_tube_sel1,
    output [7:0] digital_tube0,
    output [3:0] digital_tube_sel0,
    // uart
    input uart_rxd,
    output uart_txd
);
    // Default assignment for peripherals not in use. Comment corresponding line(s) if you use them.
    // UART: idle
    //assign uart_txd = 1'b1;
    // LED: off
    //assign led_light = 32'hFFFF_FFFF;
    // Digital tube: off
    //assign digital_tube_sel0 = 4'b1111;
    //assign digital_tube_sel1 = 4'b1111;
    //assign digital_tube_sel2 = 1'b1;
    //assign digital_tube0 = 8'hFF;
    //assign digital_tube1 = 8'hFF;
    //assign digital_tube2 = 8'hFF;
	 //
	 wire [31:0] i_inst_rdata, m_data_rdata, i_inst_addr, m_data_addr, m_data_wdata, m_inst_addr;
	 wire [3 :0] m_data_byteen;
	 //
	 wire [31:0] PrAddr, PrRD, PrWD, Addr, WD;
	 wire [3:0] byteen;
	 wire WE_C1, WE_C2,IRQ_C1, IRQ_C2, STB_I;
	 wire [31:0] data_C1, data_C2;
	 wire [31:2] addrToClk;
	 wire [5:0] HWInt;
	 assign addrToClk = Addr[31:2];
	 assign m_data_addr = Addr;
	 assign m_data_wdata = WD;
	 //p8
	 wire [3:0] byteen_tube, byteen_IO;
	 wire [31:0] data_tube, data_IO, data_UART;
	 wire WE_UART;
	 wire reset;
	 assign reset = ~sys_rstn;
	 wire [2:0] add_UART = Addr[4:2];
	 wire clk, clk_IMDM;
	 wire [31:0] read_IM = i_inst_addr-32'h3000;
	 clk_CPU instance_name
   (// Clock in ports
    .CLK_IN1(clk_in),      // IN
    // Clock out ports
    .CLK_others(clk),     // OUT
    .CLK_IMDM(clk_IMDM));    // OUT
	 
	 IM IM (
    .clka(clk_IMDM), // input clka
    .addra(read_IM), // input [31 : 0] addra
    .douta(i_inst_rdata) // output [31 : 0] douta
	 );
	 DM DM (
  .clka(clk_IMDM), // input clka
  .wea(m_data_byteen), // input [3 : 0] wea
  .addra(m_data_addr), // input [31 : 0] addra
  .dina(m_data_wdata), // input [31 : 0] dina
  .douta(m_data_rdata) // output [31 : 0] douta
);
	 
	 datapath datapath(
	 .clk(clk),
	 .reset(reset),
	 .i_inst_rdata(i_inst_rdata),
	 .i_inst_addr(i_inst_addr),
	 .m_data_rdata(PrRD),
	 .m_data_addr(PrAddr),
	 .m_data_wdata(PrWD),
	 .m_data_byteen(byteen),
	 .m_inst_addr(m_inst_addr),
	 .HWInt(HWInt)
	 );
	 
	 Bridge Bridge(
    .PrAddr(PrAddr),
    .PrRD(PrRD),
    .PrWD(PrWD),
	 .byteen(byteen), //CPU
	 .Addr(Addr), //Addr for all
	 .byteen_DM(m_data_byteen),
	 .WD(WD), //WD for all
	 .databack_DM(m_data_rdata), //DM
	 .data_TC(data_C1),
	 .IRQ_TC(IRQ_TC),
	 .data_tube(data_tube),
	 .data_IO(data_IO),
	 .data_UART(data_UART),
	 .WE_TC(WE_C1),
	 .WE_UART(WE_UART) ,
	 .byteen_tube(byteen_tube),
	 .byteen_IO(byteen_IO),
	 .HWInt(HWInt),
	 .interrupt(interrupt),
	 .STB_I(STB_I)
    );
	 TC1 tTC1(
    .clk(clk),
    .reset(reset),
    .Addr(addrToClk),
    .WE(WE_C1),
    .Din(WD),
    .Dout(data_C1),
    .IRQ(IRQ_TC)
    );
	 numerical_tube_driver numerical_tube_driver(
    .addr(Addr),
    .byteen(byteen_tube),
	 .data(WD),
	 .reset(reset),
	 .clk(clk),
    .data_num(data_tube),
	 .digital_tube_sel0(digital_tube_sel0),
	 .digital_tube_sel1(digital_tube_sel1),
	 .digital_tube_sel2(digital_tube_sel2),
	 .digital_tube0(digital_tube0),
	 .digital_tube1(digital_tube1),
	 .digital_tube2(digital_tube2)
    );
	 general_IO general_IO(
    .data_in(WD),
	 .addr_in(Addr),
	 .data_out(data_IO),
	 .byteen(byteen_IO),
	 .dip_switch0(dip_switch0),
	 .dip_switch1(dip_switch1),
	 .dip_switch2(dip_switch2),
	 .dip_switch3(dip_switch3),
	 .dip_switch4(dip_switch4),
	 .dip_switch5(dip_switch5),
	 .dip_switch6(dip_switch6),
	 .dip_switch7(dip_switch7),
	 .user_key(user_key),
	 .LED(led_light),
	 .reset(reset),
	 .clk(clk)
    );
	 MiniUART  MiniUART(
    // WISHBONE slave interface
    .CLK_I(clk) ,         // clock
    .DAT_I(WD) ,         // input data
    .DAT_O(data_UART) ,         // output data
    .RST_I(reset) ,      // reset
    .ADD_I(add_UART) ,         // address
    .STB_I(STB_I) ,         // strobe
    .WE_I(WE_UART) ,          // write enable
	 .give_interrupt(interrupt),
    // Serial interface
    .RxD(uart_rxd) ,
    .TxD(uart_txd) 
	 );
endmodule
