// Verilog test fixture created from schematic /home/shahid/Project3/Project3/or_32bitwise.sch - Sun Jan 22 14:05:12 2023

`timescale 1ns / 1ps

module or_32bitwise_or_32bitwise_sch_tb();

// Inputs
   reg [31:0] a;
   reg [31:0] b;

// Output
   wire [31:0] o;

// Bidirs

// Instantiate the UUT
   or_32bitwise UUT (
		.a(a), 
		.b(b), 
		.o(o)
   );
// Initialize Inputs
   
       initial begin
		
		a = 32'hffff0ff0;
		b = 32'h00ff0f0f;
		#5;
		
		a = 32'h00000f00;
		b = 32'hffff0f00;
		#5;
   end
endmodule
