`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:36:57 01/20/2023 
// Design Name: 
// Module Name:    Accumulator 
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
module Accumulator(
input [7:0] d_in,
input load, clk,
output reg [7:0] d_out
);
always @(posedge clk)
if (load)
 d_out <= d_in;
initial
 d_out=8'h00;
endmodule
