// Verilog test fixture created from schematic /home/shahid/Project3/Project3/alu.sch - Sun Jan 22 23:25:25 2023

`timescale 1ns / 1ps

module alu_alu_sch_tb();

// Inputs
   reg [31:0] rs1;
   reg [31:0] I;
   reg [31:0] rs2;

// Output
   wire [31:0] o;

// Bidirs

// Instantiate the UUT
   alu UUT (
		.rs1(rs1), 
		.I(I), 
		.o(o), 
		.rs2(rs2)
   );
// Initialize Inputs
   initial begin
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
