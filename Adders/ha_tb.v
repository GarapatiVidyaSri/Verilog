`timescale 1ns / 1ps
module ha_tb;
reg A_tb;
reg B_tb;
wire sum_tb;
wire carry_tb;
ha dut (.a(A_tb), .b(B_tb), .sum(sum_tb), .carry(carry_tb));
initial begin
A_tb=1'b0;B_tb=1'b1;
$monitor("a=%b,b=%b,sum=%b,carry=%d", A_tb,B_tb,sum_tb,carry_tb);
#10 A_tb=1'b1;B_tb=1'b0;
$monitor("a=%b,b=%b,sum=%b,carry=%d", A_tb,B_tb,sum_tb,carry_tb);
#10 A_tb=1'b0;B_tb=1'b0;
$monitor("a=%b,b=%b,sum=%b,carry=%d", A_tb,B_tb,sum_tb,carry_tb);
 #10 A_tb=1'b1;B_tb=1'b1;
$monitor("a=%b,b=%b,sum=%b,carry=%d", A_tb,B_tb,sum_tb,carry_tb);
#10 $stop;
end
endmodule
