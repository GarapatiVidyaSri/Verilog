`timescale 1ns / 1ps
module d_latch(input d,en ,output reg q,output qbar);
assign qbar=~q;
always@(d,en) begin;
if (en)
   q<=d;
   end
endmodule