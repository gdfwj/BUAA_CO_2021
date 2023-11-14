`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:30:45 12/20/2021
// Design Name:   mips
// Module Name:   D:/works/computer organization/p8/p8_final_CPU/mips_tb.v
// Project Name:  p8_final_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mips_tb;

	// Inputs
	reg clk_in;
	//reg clk_IMDM;
	reg sys_rstn;
	reg [7:0] dip_switch0;
	reg [7:0] dip_switch1;
	reg [7:0] dip_switch2;
	reg [7:0] dip_switch3;
	reg [7:0] dip_switch4;
	reg [7:0] dip_switch5;
	reg [7:0] dip_switch6;
	reg [7:0] dip_switch7;
	reg [7:0] user_key;
	reg uart_rxd;

	// Outputs
	wire [31:0] led_light;
	wire [7:0] digital_tube2;
	wire digital_tube_sel2;
	wire [7:0] digital_tube1;
	wire [3:0] digital_tube_sel1;
	wire [7:0] digital_tube0;
	wire [3:0] digital_tube_sel0;
	wire uart_txd;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		//.clk(clk), 
		//.clk_IMDM(clk_IMDM),
		.clk_in(clk_in),
		.sys_rstn(sys_rstn), 
		.dip_switch0(dip_switch0), 
		.dip_switch1(dip_switch1), 
		.dip_switch2(dip_switch2), 
		.dip_switch3(dip_switch3), 
		.dip_switch4(dip_switch4), 
		.dip_switch5(dip_switch5), 
		.dip_switch6(dip_switch6), 
		.dip_switch7(dip_switch7), 
		.user_key(user_key), 
		.led_light(led_light), 
		.digital_tube2(digital_tube2), 
		.digital_tube_sel2(digital_tube_sel2), 
		.digital_tube1(digital_tube1), 
		.digital_tube_sel1(digital_tube_sel1), 
		.digital_tube0(digital_tube0), 
		.digital_tube_sel0(digital_tube_sel0), 
		.uart_rxd(uart_rxd), 
		.uart_txd(uart_txd)
	);

	initial begin
		// Initialize Inputs
		clk_in=0;
		sys_rstn = 0;
		dip_switch0 = 0;
		dip_switch1 = 0;
		dip_switch2 = 0;
		dip_switch3 = 0;
		dip_switch4 = 0;
		dip_switch5 = 0;
		dip_switch6 = 0;
		dip_switch7 = 0;
		user_key = 0;
		uart_rxd = 0;
		sys_rstn = 0;

		// Wait 100 ns for global reset to finish
		#400;
		sys_rstn = 1;
		#75;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		
        
		// Add stimulus here

	end
	always #10 clk_in=~clk_in;
      
endmodule

