`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:38:56 01/20/2023 
// Design Name: 
// Module Name:    CounterIncrement 
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
module CounterIncrement
(
input [4:0]a, input [4:0]b,
output[4:0] adder_out
);
assign adder_out = a + b;
endmodule
