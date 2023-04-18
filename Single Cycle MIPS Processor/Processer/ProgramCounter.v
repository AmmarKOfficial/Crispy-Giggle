`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:35:02 01/20/2023 
// Design Name: 
// Module Name:    ProgramCounter 
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
module ProgramCounter
(
input [4:0]d_in,
input reset, clk,
output reg [4:0] d_out
);
always @(posedge clk)
if (reset)
 d_out <= 5'b00000;
else
d_out <= d_in;
endmodule
