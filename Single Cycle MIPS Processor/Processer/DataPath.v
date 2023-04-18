`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:45:06 01/20/2023 
// Design Name: 
// Module Name:    DataPath 
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
module DataPath(
input reset,ld_ac, ac_src, pc_src, clk,
output [2:0] opcode,
output [4:0] im_abus,
input [7:0] im_dbus,
output [4:0] dm_abus,
output [7:0] dm_in_dbus,
input [7:0] dm_out_dbus,
output [7:0] ac_out,alu_out);
//wire [7:0] ac_out,alu_out,mux2_out;
wire [7:0]mux2_out;
wire [4:0] pc_out, adder_out,mux1_out;
ProgramCounter pc(.d_in(mux1_out),.reset(reset),.clk(clk),.d_out(pc_out)); //instantiationof all module
CounterIncrement adder(.a(pc_out),.b(5'b00001),.adder_out(adder_out));
Mux2to1_6Bit mux1(.i0(adder_out),.i1(im_dbus[4:0]),.sel(pc_src),.mux_out(mux1_out));
Accumulator ac(.d_in(mux2_out),.load(ld_ac),.clk(clk),.d_out(ac_out));
ALU alu(.a(ac_out),.b(dm_out_dbus),.opcode(opcode),.alu_out(alu_out));
Mux2to1_8Bit mux2(.i0(alu_out),.i1(dm_out_dbus),.sel(ac_src),.mux_out(mux2_out));
assign im_abus = pc_out;        //assign im_abus = 6'b000000;
assign opcode = im_dbus [7:5];
assign dm_abus = im_dbus [4:0]; //abus for DataMemory.
assign dm_in_dbus=ac_out;
endmodule
