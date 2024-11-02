`timescale 1ns/1ps
module jk_flipflop_tb();
reg clk,j,k;
wire q;
jk_flipflop dut(.clk(clk),.j(j),.k(k),.q(q));
initial begin
forever #5 clk=~clk;
end
initial begin
clk=0;
j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#10;
$finish;
end
initial begin
$monitor("At %t:j=%b,k=%b,q=%b",$time,j,k);
end
endmodule
