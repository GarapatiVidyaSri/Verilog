`timescale 1ns / 1ps
module demux_1_2(input a, s, output reg [1:0] y);
    always @(*) begin
        y[0] = (a & ~s);
        y[1] = (a & s);
    end
endmodule
