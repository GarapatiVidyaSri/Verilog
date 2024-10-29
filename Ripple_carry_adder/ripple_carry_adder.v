
`timescale 1ns / 1ps

module ripple_carry_adder_4bit(
    input[3:0] a,
    input[3:0] b,
    input cin,
    output[3:0] sum,
    output cout
    );
    wire[2:0] w;
    
    full_adder a1(.A(a[0]), .B(b[0]), .Cin(cin), .Carry(w0), .Sum(sum[0]));
    full_adder a2(.A(a[1]), .B(b[1]), .Cin(w0), .Carry(w1), .Sum(sum[1]));
    full_adder a3(.A(a[2]), .B(b[2]), .Cin(w1), .Carry(w2), .Sum(sum[2]));
    full_adder a4(.A(a[3]), .B(b[3]), .Cin(w2), .Carry(cout), .Sum(sum[3]));
   
endmodule

module full_adder(A,B,Cin,Carry,Sum);

input A,B,Cin;
output Carry,Sum;

assign Sum = A^B^Cin;
assign Carry = (A&B) | Cin & (A^B);

endmodule