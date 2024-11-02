`timescale 1ns / 1ps
module siso(input clk, input serial_in,output serial_out);
reg [3:0] shift_reg;
always@(posedge clk) begin
 shift_reg[0]<=serial_in;
 shift_reg[1]<=shift_reg[0];
 shift_reg[2]<=shift_reg[1];
 shift_reg[3]<=shift_reg[2];
 end
 assign serial_out=shift_reg[3];
 endmodule
