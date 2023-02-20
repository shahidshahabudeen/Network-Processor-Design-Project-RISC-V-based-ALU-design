// Verilog test fixture created from schematic /home/shahid/Project2/Add8bits.sch - Sat Jan 21 17:15:56 2023

`timescale 1ns / 1ps

module Add8bits_Add8bits_sch_tb();

// Inputs
   reg [7:0] a;
   reg [7:0] b;
   reg Cin;

// Output
   wire [7:0] sum;
   wire Cout;

// Bidirs

// Instantiate the UUT
   Add8bits UUT (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.Cout(Cout), 
		.Cin(Cin)
   );
// Initialize Inputs
 
       initial begin
		a = 0;
		b = 0;
		Cin = 0;
 
	#5;
	a = 8'd16;
	b = 8'd16;
	
	#5;
	a = 8'd20;
	b = 8'd4;
	
	#5;
	a = 8'd100;
	b = 8'd50;
	
	#5;
	a = 8'd25;
	b = 8'd50;
	
	#5;
	a = 8'd11;
	b = 8'd34;
	
	#5;
	end
	
endmodule
