// Verilog test fixture created from schematic /home/shahid/Project3/Project3/and_8bitw.sch - Sun Jan 22 13:16:52 2023

`timescale 1ns / 1ps

module and_8bitw_and_8bitw_sch_tb();

// Inputs
   reg [7:0] a;
   reg [7:0] b;

// Output
   wire [7:0] o;

// Bidirs

// Instantiate the UUT
   and_8bitw UUT (
		.a(a), 
		.b(b), 
		.o(o)
   );
// Initialize Inputs

       initial begin
		a = 0;
		b = 0;
		#2;
		
		a = 8'd34;
		b = 8'd50;
		#2;
		
		a = 8'd12;
		b = 8'd20;
		#2;
   end
endmodule
