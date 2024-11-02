`timescale 1ns / 1ps
module sipo_tb();
reg clk,serial_in;
wire [3:0]parallel_out;
sipo dut(.clk(clk),.serial_in(serial_in),.parallel_out(parallel_out));
always begin 
#5 clk=~clk;
end
initial begin
clk=0;
serial_in=0;
$display("Time \tSerial_In  \tParallel_Out");
    $monitor("%d\t%d\t%d", $time, serial_in, parallel_out);
    serial_in = 1;
    #10;
    serial_in = 0;
    #10;
    serial_in = 1;
    #10;
    serial_in = 0;
    #10;
    $finish;
  end
endmodule
