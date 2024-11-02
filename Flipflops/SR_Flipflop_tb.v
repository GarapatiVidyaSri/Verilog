`timescale 1ns / 1ps
module SR_FF_tb();
reg clk,reset,s,r;
wire q;
SR_FF dut(.clk(clk),.reset(reset),.s(s),.r(r),.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin 
reset=1 ; s=0;r=0;
#15 reset=0;
#10 s=1;r=0;
#10 s=0;r=1;
#10 s=0;r=1;
#10 s=0;r=0;
#10 $finish;
end
initial begin
$monitor("At %t: s=%b,r=%b,reset=%b,q=%b",$time,s,r,reset,q);
end
endmodule