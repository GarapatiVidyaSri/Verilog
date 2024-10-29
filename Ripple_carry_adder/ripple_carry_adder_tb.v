`timescale 1ns / 1ps

module tb_ripple_carry_adder_4bit();

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

ripple_carry_adder_4bit dut(
    .a(a), 
    .b(b),
    .cin(cin), 
    .sum(sum),
    .cout(cout)
);

initial begin
    cin = 0;
    a = 4'b0000; b = 4'b0000;
    #10;
    a = 4'b0001; b = 4'b0001; 
    #10;
    a = 4'b0010; b = 4'b0011;
    #10;
    a = 4'b0001; b = 4'b0110;
    #10;
    
    $display("SUM = %b, COUT = %b", sum, cout);
    $finish;
end
      
endmodule