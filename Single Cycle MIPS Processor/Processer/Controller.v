`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:41:27 01/20/2023 
// Design Name: 
// Module Name:    Controller 
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
module Controller
(
input [2:0] opcode,
output reg rd_mem,wr_mem,ac_src,ld_ac,pc_src,jmp_uncond);
always @(opcode)
 begin
 rd_mem = 1'b0;
 wr_mem = 1'b0;
 ac_src = 1'b0;
 pc_src = 1'b0;
 ld_ac = 1'b0;
 jmp_uncond=1'b0;
 case (opcode)
 3'b000: //load accumulator from memory
  begin
   rd_mem = 1'b1;
   wr_mem = 1'b0;
   ld_ac = 1'b1;
   ac_src = 1'b0;
  end
 3'b001:
  begin
   rd_mem = 1'b1;
   wr_mem = 1'b0;
   ld_ac = 1'b1;
   ac_src = 1'b0;//SUBTRACT
  end
 3'b010:
  begin
   rd_mem = 1'b1;
   wr_mem = 1'b0;
   ld_ac = 1'b1;
   ac_src = 1'b0;//AND
  end
 3'b011:
  begin
   rd_mem = 1'b1;
   wr_mem = 1'b0;
   ld_ac = 1'b1;
   ac_src = 1'b0;//OR
  end
 3'b100:
  begin
   rd_mem = 1'b1;
   wr_mem = 1'b0;
   ld_ac = 1'b1;
   ac_src = 1'b0;//NOT
  end
 3'b101:
  begin
   rd_mem = 1'b1;
   wr_mem = 1'b0;
   ld_ac = 1'b1;
   ac_src = 1'b0;//XOR
  end
 3'b110:
  begin
   rd_mem = 1'b1;
   wr_mem = 1'b0;
   ld_ac = 1'b1;
   ac_src = 1'b0;//XNOR
  end
 3'b111:
  begin
   rd_mem = 1'b0;
   wr_mem = 1'b0;
   ld_ac = 1'b0;
   ac_src = 1'b0;
   pc_src=1'b1;
   jmp_uncond=1'b1;//JUMP
  end
 default:
  begin
   rd_mem = 1'b0;
   wr_mem = 1'b0;
   ac_src = 1'b0;
   pc_src = 1'b0;
   ld_ac = 1'b0;
  end
 endcase //end case
 end //end always
endmodule