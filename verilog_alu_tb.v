`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:01:43 01/23/2023
// Design Name:   alu_verilog
// Module Name:   /home/shahid/Project3/Project3/verilog_alu_tb.v
// Project Name:  Project3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_verilog
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module verilog_alu_tb;

	// Inputs
	reg [31:0] rs1;
	reg [31:0] rs2;
	reg [31:0] I;

	// Outputs
	wire [31:0] o;

	// Instantiate the Unit Under Test (UUT)
	alu_verilog uut (
		.rs1(rs1), 
		.rs2(rs2), 
		.I(I), 
		.o(o)
	);
	initial begin
		// Initialize Inputs
		rs1 = 0;
		rs2 = 0;
		I = 0;

		// Wait 100 ns for global reset to finish
		#100;    
		// Add stimulus here	
	rs2 = 32'd23456;
	rs1 = 32'd10000;
	
	I = 32'h003100b3;
	#15;
	
	I = 32'h003110b3;
	#15;
	
	I = 32'h003160b3;
	#15;
	
	I = 32'h403100b3;
	#15;
	
	I = 32'h003170b3;
	#15;

	end
      
endmodule

