`timescale 1ns / 1ps
module mux_2_1(input a,b,s,output reg y);
always@(*) begin;
if (s)
y<=b;
else
y<= a;
end
endmodule