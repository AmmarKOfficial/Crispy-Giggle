`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:42:24 01/20/2023 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory
(
input rd, wr,
input [4:0] abus,
input [7:0] in_dbus,
output reg [7:0] out_dbus);
reg [7:0] dm_array [0:31];
always @(rd,abus)
 begin
 if (rd)
  out_dbus = dm_array [abus];
 end
 always @(wr,in_dbus) //always @(wr or abus or in_dbus)
 begin
 if (wr)
  dm_array [abus] = in_dbus;
 end
initial
begin
 dm_array[0] = 8'h01;
 dm_array[1] = 8'h02;
 dm_array[2] = 8'h03;
 dm_array[3] = 8'h04;
 dm_array[4] = 8'h05;
end
endmodule
