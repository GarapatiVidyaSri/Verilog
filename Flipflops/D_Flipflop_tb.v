`timescale 1ns/1ps
module d_ff_tb();
reg clk,d;
wire q,qbar;
d_ff dut(.clk(clk),.d(d),.q(q),.qbar(qbar));
always #5 clk=~clk;
initial begin
clk=0;
d=0; #10;
d=1; #10;
d=0; #10;
d=1; #10;
$finish;
end
initial begin
  $monitor("At %t: d = %b, q = %b, qbar = %b", $time, d, q, qbar);
end