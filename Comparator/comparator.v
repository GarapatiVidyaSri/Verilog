`timescale 1ns / 1ps
module comparator(input [3:0] input_a,input_b,output reg equal,less_than,greater_than);
always@(input_a,input_b) begin
if (input_a==input_b)begin
    equal=1'b1;
    less_than=1'b0;
    greater_than=1'b0;
end
else if (input_a>input_b) begin
     equal=1'b0;
     greater_than=1'b1;
     less_than=1'b0;
end
else begin
   equal=1'b0;
   less_than=1'b1;
   greater_than=1'b0;
   end
end
endmodule