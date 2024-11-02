
`timescale 1ns / 1ps
module johnson_counter_tb;
reg clk;
reg rst;
wire [3:0] q;
johnson_counter dut ( .clk(clk),  .rst(rst), .q(q) );
always #5 clk = ~clk; 
initial begin
  clk = 0;
  rst = 1;
  #15;
  rst = 0;
    
  #200;
  $finish;
end
always @(posedge clk) begin
  $display("At time %t, q = %b", $time, q);
end
endmodule