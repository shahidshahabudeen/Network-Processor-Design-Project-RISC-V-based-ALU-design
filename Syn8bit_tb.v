// Verilog test fixture created from schematic /home/shahid/Project2/Syn8bit.sch - Sat Jan 21 18:36:57 2023

`timescale 1ns / 1ps

module Syn8bit_Syn8bit_sch_tb();

// Inputs
   reg [7:0] b;
   reg [7:0] a;
   reg cin;
   reg clk;

// Output
   wire [7:0] synSUM;
   wire cout;

// Bidirs

// Instantiate the UUT
   Syn8bit UUT (
		.b(b), 
		.a(a), 
		.cin(cin), 
		.synSUM(synSUM), 
		.cout(cout), 
		.clk(clk)
   );
// Initialize Inputs
initial begin
clk = 0;
a = 8'd10;
b = 8'd15;
cin = 0;
#10;

a = 8'd25;
cin = 0;
#10;

a = 8'd100;
b = 8'd35;
cin = 1;
#10;
 
b = 8'd15;
cin = 0;
#10;

a = 8'd60;
b = 8'd60;
cin = 0;
#10;

a = 8'd5;
b = 8'd100;
cin = 1;
#10;
end

always 
begin
#5  clk = ~clk;
end
endmodule