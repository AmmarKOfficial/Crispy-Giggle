`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:47:53 01/20/2023
// Design Name:   CPU
// Module Name:   G:/verilog/verliog project/Processer/testBench.v
// Project Name:  Processer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testBench;
 reg clk;
 reg reset;
 wire [7:0] im_dbus;
 wire [7:0] dm_out_dbus;
 wire rd_mem;
 wire wr_mem;
 wire [4:0] im_abus;
 wire [4:0] dm_abus;
 wire [7:0] dm_in_dbus;
 wire [7:0] ac_out,alu_out;
 wire [2:0] opcode;

CPU uut (
.clk(clk),.reset(reset),.rd_mem(rd_mem),.wr_mem(wr_mem),
.im_abus(im_abus),.im_dbus(im_dbus),.dm_abus(dm_abus),
.dm_in_dbus(dm_in_dbus),.dm_out_dbus(dm_out_dbus),.ac_out(ac_out),.alu_out(alu_out),.opcode(opcode));
InstructionMemory IM (.abus(im_abus),.dbus(im_dbus));
DataMemory DM
(.rd(rd_mem),.wr(wr_mem),.abus(dm_abus),.in_dbus(dm_in_dbus),.out_dbus(dm_out_dbus)
);
initial
begin
 clk = 0;  reset = 1;//im_dbus =8'hxx;dm_out_dbus = 8'b00000000;
 #20 reset = 1'b0;
 #500 $finish;
end
always
 #10 clk = ~clk;
endmodule
