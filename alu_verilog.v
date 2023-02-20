`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:40:43 01/22/2023 
// Design Name: 
// Module Name:    alu_verilog 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu_verilog(
    input [31:0] rs1,
    input [31:0] rs2,
    input [31:0] I,
    output reg [31:0] o
    );

wire [2:0] func;
assign func = I[14:12];

always @(*)
begin
case (func)
3'b000:
	begin
	if(I[30])
	o = rs1 - rs2;
	else
	o = rs1 + rs2;
	end

3'b110: o = rs1 | rs2;

3'b111: o = rs1 & rs2;

default: o = rs2 << 1;
endcase
end
endmodule
