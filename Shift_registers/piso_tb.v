`timescale 1ns / 1ps
module piso_tb;
    reg clk;
    reg reset;
    reg parallel_in;
    wire serial_out;
    piso dut ( .clk(clk), .reset(reset), .parallel_in(parallel_in), 	.serial_out(serial_out) );
    always begin
        #5 clk = ~clk; 
    end
    initial begin
        clk = 0;
        reset = 0;
        parallel_in = 0;
        parallel_in = 1;
        #10 parallel_in = 0;
        #10 parallel_in = 1;
        #10 parallel_in = 0;
        #50 $finish;
    end
    always @(posedge clk) begin
        $display("Serial Out = %b", serial_out);
    end
endmodule