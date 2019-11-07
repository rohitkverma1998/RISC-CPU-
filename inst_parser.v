`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 04:25:34 AM
// Design Name: 
// Module Name: inst_parser
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


module inst_parser(
	output wire [5:0] opcode,
	output reg [4:0] rs, rt, rd, shamt, 
	output reg [5:0] funct,
	output reg[15:0] immediate,
	output reg [25:0] address,
	input [31:0] instruction, p_count
);

	assign opcode = instruction[31:26];
	
	always @(instruction) begin
		// R-type
		if(opcode == 6'h0) begin
			shamt = instruction[10:6];
			rd = instruction[15:11];
			rt = instruction[20:16];
			rs = instruction[25:21];
			funct = instruction[5:0];
		end
		// J type
		else if(opcode == 6'h2 | opcode == 6'h3) begin
			address = instruction[26:0];
		end
		// I type
		else begin
			rt = instruction[20:16];
			rs = instruction[25:21];
			immediate = instruction[15:0];
		end
	end
	
endmodule