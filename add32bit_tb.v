// Verilog test fixture created from schematic /home/shahid/Project3/Project3/Adder32bit.sch - Sat Jan 21 20:18:01 2023

`timescale 1ns / 1ps

module Adder32bit_Adder32bit_sch_tb();

// Inputs
   reg cin;
   reg [31:0] a;
   reg [31:0] b;

// Output
   wire cout;
   wire [31:0] sum;

// Bidirs

// Instantiate the UUT
   Adder32bit UUT (
		.cin(cin), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.sum(sum)
   );
// Initialize Inputs
  
       initial begin
		cin = 0;
		a = 0;
		b = 0;
  
		#5;
		a = 32'd1020;
		b = 32'd500;
		
		#5;
		a = 32'd600;
		b = 32'd1000;
		
		#5;
		a = 32'd50;
		b = 32'd150;
		
		#5;
		a = 32'd90;
		b = 32'd10;
		
		#5;
	end
endmodule
