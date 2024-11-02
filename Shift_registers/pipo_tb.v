`timescale 1ns / 1ps
module pipo_tb;
reg clk;
reg [3:0] din;
wire [3:0] dout;
pipo dut (.clk(clk), .din(din), .dout(dout));
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
  $monitor("Input=%b, output=%b",din,dout);
  din = 4'b0000; #10;
  din = 4'b0110;  #10;
  din = 4'b0011; #10;
  din = 4'b1100;  #10;
  din = 4'b1010; #10;
  din = 4'b0101;  #10;
  #50
  $stop;
end
endmodule