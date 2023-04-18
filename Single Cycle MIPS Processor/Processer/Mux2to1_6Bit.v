`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:40:01 01/20/2023 
// Design Name: 
// Module Name:    Mux2to1_6Bit 
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
module Mux2to1_6Bit
(
input [4:0] i0, i1,input sel,
output[4:0] mux_out
);
assign mux_out = sel ? i1 : i0;
endmodule
