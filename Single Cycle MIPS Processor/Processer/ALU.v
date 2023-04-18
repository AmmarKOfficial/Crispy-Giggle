`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:37:47 01/20/2023 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
input [7:0]a, input [7:0]b,input [2:0]opcode,
output reg [7:0]alu_out
);
always @(opcode,a,b)
 case(opcode)
  3'b000:alu_out = a + b;
  3'b001:alu_out = a - b;
  3'b010:alu_out = a&b;
  3'b011:alu_out = a|b;
  3'b100:alu_out = ~b;
  3'b101:alu_out = a^b;
  3'b110:alu_out = a~^b;
  default:alu_out = 0;
 endcase
endmodule
