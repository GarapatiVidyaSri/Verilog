`timescale 1ns / 1ps
module ring_counter_tb();
reg clk;
reg reset;
wire [3:0] q;
  
ring_counter dut( .clk(clk),  .reset(reset), .q(q) );
  
initial begin
  clk = 0;
  forever #5 clk = ~clk;
end
initial begin
  reset = 1; 
  #10 reset = 0;
  #200 $finish;
end
      
initial begin
  $monitor("%d : q = %b", $time, q);
end
  
endmodule