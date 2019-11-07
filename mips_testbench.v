`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 04:28:21 AM
// Design Name: 
// Module Name: mips_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mips_testbench ();

	reg clock;
	wire result;
	mips_core test(clock);

	initial clock = 0;

	initial begin 
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
	end


endmodule