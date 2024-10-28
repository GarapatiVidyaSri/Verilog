`timescale 1ns / 1ps
module mux_2_1_tb;
reg a,b,s;
wire y;
mux_2_1 dut (.a(a),.b(b),.s(s),.y(y));
initial begin
a=0;b=1;s=0;
$monitor("a=%d,b=%b,s=%d,y=%d", a,b,s,y);
#10 a=0;b=1;s=1;
$monitor("a=%d,b=%b,s=%d,y=%d", a,b,s,y);
#10 a=1;b=1;s=1;
$monitor("a=%d,b=%b,s=%d,y=%d", a,b,s,y);
#10 a=1;b=1;s=0;
$monitor("a=%d,b=%b,s=%d,y=%d", a,b,s,y);
end
endmodule
