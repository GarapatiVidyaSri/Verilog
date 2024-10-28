`timescale 1ns / 1ps
module encoder_tb;
reg [3:0] in;
wire [1:0]y;
encoder dut( .in(in),.y(y));
initial begin

 $monitor ("in=%b,out=%b",in,y);
  in=4'b0001;
 #10 in=4'b0010;
 #10 in=4'b0100;
 #10 in=4'b1000;
end
endmodule