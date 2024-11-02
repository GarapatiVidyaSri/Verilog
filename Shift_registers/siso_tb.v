`timescale 1ns / 1ps
module siso_tb();
reg clk ,serial_in;
wire serial_out;
siso dut(.clk(clk),.serial_in(serial_in),.serial_out(serial_out));
always begin
#5 clk=~clk;
end
initial begin
clk=0;
serial_in=0;
$display("Time\tSerial_In\tSerial_Out");
$monitor("%d\t%d\t%d",$time,serial_in,serial_out);
serial_in=1;
#10;
serial_in=0;
#10;
serial_in=1;
#10;
serial_in=0;
#10;
$finish;
end
endmodule