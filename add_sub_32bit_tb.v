// Verilog test fixture created from schematic /home/shahid/Project3/Project3/add_sub_32bit.sch - Sun Jan 22 11:59:19 2023

`timescale 1ns / 1ps

module add_sub_32bit_add_sub_32bit_sch_tb();

// Inputs
   reg sub_add_sel;
   reg [31:0] a;
   reg [31:0] b;

// Output
   wire cout;
   wire [31:0] out_add_sub;

// Bidirs

// Instantiate the UUT
   add_sub_32bit UUT (
		.sub_add_sel(sub_add_sel), 
		.a(a), 
		.cout(cout), 
		.out_add_sub(out_add_sub), 
		.b(b)
   );
// Initialize Inputs
   
       initial begin
		sub_add_sel = 0;
		a = 0;
		b = 0;
		#5;
		
		a = 32'd23456;
		b = 32'd12345;
		sub_add_sel = 0;
		#5;
		
		sub_add_sel = 1;
		#5;
		
		a = 32'd45728;
		b = 32'd12345;
		sub_add_sel = 1;
		#5;
		
		b = 32'd12345;
		sub_add_sel = 0;
		#5;
end 
endmodule
