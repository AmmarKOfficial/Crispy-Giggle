`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:44:10 01/20/2023 
// Design Name: 
// Module Name:    InstructionMemory 
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
module InstructionMemory
(input [4:0] abus, output reg [7:0] dbus);
reg [7:0] im_array [0:12];
always @(abus)
dbus = im_array [abus];
initial
begin
im_array[0]= 8'h00; // Initialize Accumulator with 0 and do addition with content of DataMemory at address 0.
im_array[1]= 8'h21; // Subtract content of accumulator with content of DataMemory at address 1.
im_array[2]= 8'h42; // Logical AND of accumulator with content of DataMemory at address 2.
im_array[3]= 8'h63; // Logical OR of accumulator with content of DataMemory at address 3.
im_array[4]= 8'h84; // Logical NOT of accumulator with content of DataMemory at address 4.
im_array[5]= 8'hA4; // Logical XOR of accumulator with content of DataMemory at address 4.
im_array[6]= 8'hC4; // Logical XNOR of accumulator with content of DataMemory at address 4.
im_array[7]= 8'hEA; // Unconditional Jump to 01010 address of Instruction memory.
im_array[10]= 8'h00; // Addition with content of DataMemory at address 0.
im_array[11]= 8'hE0; // Unconditional Jump to 00000 address of Instruction memory.
end
endmodule
