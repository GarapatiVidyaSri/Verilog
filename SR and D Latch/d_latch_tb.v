`timescale 1ns / 1ps
module d_latch_tb();
reg d,en;
wire q,qbar;
d_latch dut (.d(d),.en(en),.q(q),.qbar(qbar));
initial begin;
d=0;
en=0;
$monitor("time=%d,d=%b,en=%d,q=%b,qbar=%b",$time ,d,en,q,qbar);
 en=1;
d=1; #10;
d=0; #10;
 en=0;
 d=1;#10;
 d=0; #10;

end
endmodule