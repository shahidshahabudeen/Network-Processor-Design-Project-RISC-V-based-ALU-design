// Verilog test fixture created from schematic /home/shahid/Project3/Project3/or_8bitw.sch - Sun Jan 22 13:53:16 2023

`timescale 1ns / 1ps

module or_8bitw_or_8bitw_sch_tb();

// Inputs
   reg [7:0] a;
   reg [7:0] b;

// Output
   wire [7:0] o;

// Bidirs

// Instantiate the UUT
   or_8bitw UUT (
		.a(a), 
		.b(b), 
		.o(o)
   );
// Initialize Inputs
   `ifdef auto_init
       initial begin
		a = 0;
		b = 0;
   `endif
endmodule
