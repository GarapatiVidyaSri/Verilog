`timescale 1ns / 1ps
module t_ff_tb();
reg clk,reset,t;
wire q;
t_ff dut(.clk(clk),.reset(reset),.t(t),.q(q));
always begin
clk=0;
#5;
clk=1;
#5;
end
initial begin
t=0;
reset=0;
reset=1;
#10;
reset=0;
$display("Time T clk rst Q");
    $monitor("%2t %b %b %b %b", $time, t, clk, reset, q);
    t = 1; #10; 
    t = 0; #10;
    reset = 1; #10;
    reset = 0;
    t = 1; #10;
    t = 0; #10;
    $finish;
  end
  endmodule