
`timescale 1ns / 1ps
module Full_Adder_DF(
    input A,B,Cin,
    output Sum,Carry
    );
    assign Sum = A^B^Cin;
    assign Carry = (A&B) | Cin & (A^B);
endmodule