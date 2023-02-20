// Verilog test fixture created from schematic /home/shahid/Project3/Project3/and_32bitw.sch - Sun Jan 22 13:30:29 2023

`timescale 1ns / 1ps

module and_32bitw_and_32bitw_sch_tb();

// Inputs
   reg [31:0] a;
   reg [31:0] b;

// Output
   wire [31:0] o;

// Bidirs

// Instantiate the UUT
   and_32bitw UUT (
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
