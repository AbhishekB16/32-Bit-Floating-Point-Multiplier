`timescale 1ns / 1ps
module tb();
 reg [31:0]a;
 reg [31:0]b;
 
 wire [31:0]c;
 
 abc utt(.a(a),.b(b),.c(c));
 initial
 begin
 
 a=32'b01000001100000000000000000000000;
 b=32'b01000010000010000000000000000000;
 
end
 
 
 endmodule
 
 