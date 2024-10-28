`timescale 1ns / 1ps
module demux_1_2_tb;
    reg a, s;
    wire [1:0] y; 

   
    demux_1_2 dut(.a(a), .s(s), .y(y));

    initial begin
        a = 1; s = 0;
        $monitor("a=%b, s=%b, y[0]=%b, y[1]=%b", a, s, y[0], y[1]);

       
        #10 a = 0; s = 1;
        $monitor("a=%b, s=%b, y[0]=%b, y[1]=%b", a, s, y[0], y[1]);

       
        #10 $finish;
    end
endmodule
