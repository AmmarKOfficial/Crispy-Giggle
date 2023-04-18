`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:45:58 01/20/2023 
// Design Name: 
// Module Name:    CPU 
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
module CPU( //The CPU
input clk,reset,
output rd_mem,wr_mem,
output [4:0] im_abus, input [7:0] im_dbus,
output [4:0] dm_abus, output [7:0] dm_in_dbus,
input [7:0] dm_out_dbus,
output [7:0] ac_out,alu_out,
output [2:0] opcode);
//wire [2:0] opcode;
wire ac_src,ld_ac, pc_src,jmp_uncond;
DataPath dpu
(.reset(reset),.ld_ac(ld_ac),.ac_src(ac_src),.pc_src(pc_src),.clk(clk),.opcode(opcode)
,.im_abus(im_abus),.im_dbus(im_dbus),.dm_abus(dm_abus),.dm_in_dbus(dm_in_dbus),.dm_out_dbus(dm_out_dbus),.ac_out(ac_out),.alu_out(alu_out));//dj
Controller cu
(.opcode(opcode),.rd_mem(rd_mem),.wr_mem(wr_mem),.ac_src(ac_src),.ld_ac(ld_ac),
.pc_src(pc_src),.jmp_uncond(jmp_uncond));
endmodule
