`timescale 1ns / 1ps
module sr_latch(input s,r, output reg q,qbar);
always@(s,r) begin
if (r==1'b1)
begin
q<=1'b0;
qbar<=1'b1;
end else if(s==1'b1)
begin
q<=1'b1;
qbar=1'b0;
end
end
endmodule

