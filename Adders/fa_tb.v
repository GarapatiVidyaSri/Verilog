`timescale 1ns / 1ps
module full_adder_tb;
reg A_tb,B_tb,Cin_tb;
Full_Adder_DF dut (.A(A_tb), .B(B_tb), .Cin(Cin_tb), .Sum(Sum_tb), .Carry(Carry_tb) );
initial begin
A_tb = 1'b0; B_tb = 1'b0; Cin_tb = 1'b0;
#10 A_tb = 1'b0; B_tb = 1'b0; Cin_tb = 1'b1;
$monitor("a=%d,b=%b,c=%d,s=%d,car=%d", A_tb,B_tb,Cin_tb,Sum_tb,Carry_tb);
#10 A_tb = 1'b0; B_tb = 1'b1; Cin_tb = 1'b0;
#10 $stop;
end
endmodule