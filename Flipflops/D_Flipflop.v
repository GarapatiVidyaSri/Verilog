
module d_ff(input clk,d,output reg q,output qbar);
always@(posedge clk)begin
q<=d;
end
assign qbar=~q;
endmodule