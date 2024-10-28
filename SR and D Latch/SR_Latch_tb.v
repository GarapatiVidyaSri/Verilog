`timescale 1ns / 1ps
module SR_Latch_tb();
reg s,r;
wire q,qbar;
sr_latch dut(.s(s),.r(r),.q(q),.qbar(qbar));
initial begin
s=1'b0;r=1'b0;
$monitor("s=%b,r=%b,q=%b,qbar=%b",s,r,q,qbar);
#10 s=1'b1;r=1'b1;
end
endmodule