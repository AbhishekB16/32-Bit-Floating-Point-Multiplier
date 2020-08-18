`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 02:47:17
// Design Name: 
// Module Name: lshift
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lshift8(
    input [47:0] a,
    output [47:0] out
    );
    
    assign out[0]=1'b0;
    assign out[1]=1'b0;
    assign out[2]=1'b0;
    assign out[3]=1'b0;
    assign out[4]=1'b0;
    assign out[5]=1'b0;
    assign out[6]=1'b0;
    assign out[7]=1'b0;
 
    generate
     genvar i;
     
     for(i=0;i<40;i=i+1)
      begin
         assign out[i+8] = a[i];
      end
      
      endgenerate   
    
endmodule

module lshift16(
   
    input [47:0] a,
    output [47:0] out
    );
    
     generate
     genvar i;
     
     for(i=0;i<16;i=i+1)
      begin
         assign out[i] =1'b0;
      end   
 
   
     for(i=0;i<32;i=i+1)
      begin
         assign out[i+16] = a[i];
      end
     
     endgenerate   
    
endmodule

module lshift24(
   
    input [47:0] a,
    output [47:0] out
    );
    
     generate
     genvar i;
     
     for(i=0;i<24;i=i+1)
      begin
         assign out[i] =1'b0;
      end   
 
   
     for(i=0;i<24;i=i+1)
      begin
         assign out[i+24] = a[i];
      end
     
     endgenerate   
    
endmodule


module lshift32(
    input [47:0] a,
    output [47:0] out
    );
    
     generate
     genvar i;
     
     for(i=0;i<32;i=i+1)
      begin
         assign out[i] = 1'b0;
      end   
 
   
     for(i=0;i<16;i=i+1)
      begin
         assign out[i+32] = a[i];
      end
     
     endgenerate   
    
endmodule
   
