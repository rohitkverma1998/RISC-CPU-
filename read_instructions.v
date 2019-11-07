`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 04:26:58 AM
// Design Name: 
// Module Name: read_instructions
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


module read_instructions(instruction, program_counter);

	input [31:0] program_counter;
	output reg [31:0] instruction;
	
	reg [31:0] instructions [255:0];
	
	initial begin 
		$readmemb("instruction.mem", instructions);
	end
	
	always @ (program_counter) begin
		instruction = instructions[program_counter];
	end

endmodule
