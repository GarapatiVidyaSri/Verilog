
`timescale 1ns / 1ps
module mealy(input clk,rst,din,output reg dout);
reg [1:0] current_state,next_state;
parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;
always@ (posedge clk) begin
    if (rst==1) begin
    current_state <= s0;
    end else begin 
     current_state <= next_state;
    end 
    end
 always @(current_state or din) begin
    case (current_state)
     s0:begin
      if (din==1) begin
      next_state=s1;
      dout=1'b0;
      end else begin 
      next_state=s0;
      dout=1'b0;
      end
      end
     s1:begin
      if (din==0) begin
      next_state=s2;
      dout=1'b0;
      end else begin 
      next_state=s1;
      dout=1'b0;
      end
      end
    s2:begin
      if (din==1) begin
      next_state=s3;
      dout=1'b0;
      end else begin 
      next_state=s0;
      dout=1'b0;
      end
      end

    s3:begin
      if (din==0) begin
      next_state=s0;
      dout=1'b1;
      end else begin 
      next_state=s1;
      dout=1'b0;
      end
      end
    default:next_state=s0;
    endcase
    end
    endmodule