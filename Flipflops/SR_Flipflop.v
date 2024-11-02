`timescale 1ns / 1ps
module SR_FF(input clk,reset,s,r,output reg q);
always@(posedge clk) begin
if (reset)
   q<=1'b0;
else 
    case ({s,r})
    2'b01: q <=1'b0;
    2'b10: q<=1'b1;
    default: q<=q;
    endcase
end
endmodule
     