`timescale 1ns / 1ps
module ring_counter(input clk, reset, output reg[3:0]q);
always @(posedge clk or posedge reset) begin
if (reset)
    q<=4'b1000;
else 
q<= {q[2:0],q[3]};
end
endmodule