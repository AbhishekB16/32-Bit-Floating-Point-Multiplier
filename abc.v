`timescale 1ns / 1ps


module abc(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
    
     );
    
    wire [31:0] x,y;
    wire[7:0] S,d,e,q;
    xor s(x[31],a[31],b[31]);  // sign
    
    assign y[31] = x[31];
   
   
    wire cx,Co,cb,cs  ;
    wire w1, w2, w3,w4,w5,w6,w7,w8;
    wire ww1, ww2, ww3,ww4,ww5,ww6,ww7,ww8;
    // instantiating 4 1-bit full adders in Verilog
    
    
 
    fulladder u1(a[23], b[23], 1'b0, S[0], w1);
    fulladder u2(a[23+1], b[23+1], w1, S[1], w2);
    fulladder u3(a[23+2], b[23+2], w2, S[2], w3);
    fulladder u4(a[23+3], b[23+3], w3, S[3], w4);
    fulladder u5(a[23+4], b[23+4], w4, S[4], w5);
    fulladder u6(a[23+5], b[23+5], w5, S[5], w6);
    fulladder u7(a[23+6], b[23+6], w6, S[6], w7);
    fulladder u8(a[23+7], b[23+7], w7, S[7], Co);
  
   
   
 fulladder uu1(S[0], 1'b1, 1'b0, d[0], ww1);
 fulladder uu2(S[1], 1'b0, ww1, d[1], ww2);
 fulladder uu3(S[2], 1'b0, ww2, d[2], ww3);
 fulladder uu4(S[3], 1'b0, ww3, d[3], ww4);
 fulladder uu5(S[4], 1'b0, ww4, d[4], ww5);
 fulladder uu6(S[5], 1'b0, ww5, d[5], ww6);
 fulladder uu7(S[6], 1'b0, ww6, d[6], ww7);
 fulladder uu8(S[7], 1'b1, ww7, d[7], ww8);

   
    generate 
      genvar i;
      
      for(i=0;i<8;i=i+1)
       begin
          assign q[i]=d[i];
       
          assign y[i+23]=d[i];
       end
       endgenerate
       
      
        wire c1,cin2,cin3,cin4,cin5,cin6,cin7,cin8;
   
 
  fulladder ab0(q[0],1'b1,1'b0, e[0], c1);
  fulladder ab1(q[1],1'b0, c1, e[1], cin2);
  fulladder ab2(q[2], 1'b0, cin2, e[2], cin3);
  fulladder ab3(q[3], 1'b0, cin3, e[3], cin4);
  fulladder ab4(q[4], 1'b0, cin4, e[4], cin5);
  fulladder ab5(q[5], 1'b0, cin5, e[5], cin6);
  fulladder ab6(q[6], 1'b0, cin6, e[6], cin7);
  fulladder ab7(q[7], 1'b0, cin7, e[7], cin8);

   generate 
   
      for(i=0;i<8;i=i+1)
       begin
       assign x[i+23]=e[i];
       end
       endgenerate
         
    wire [7:0] a1,a2,a3,b1,b2,b3;
    
    wire [47:0] res1,res2,res3,res4,res5,res6,res7,res8,res9;
    wire [47:0] res12,res13,res14,res15,res16,res17,res18,res19;
    wire [47:0] sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum;
    
 
   generate
     
  for( i=0;i<8;i=i+1)
   begin
        assign a1[i]=a[i];
   end
   
    for( i=8;i<16;i=i+1)
   begin
        assign a2[i-8]=a[i];
   end
   
    for( i=16;i<23;i=i+1)
   begin
        assign a3[i-16]=a[i];
   end
   assign a3[7]=1;
   
    for( i=0;i<8;i=i+1)
   begin
        assign b1[i]=b[i];
   end
   
    for( i=8;i<16;i=i+1)
   begin
        assign b2[i-8]=b[i];
   end
   
    for( i=16;i<23;i=i+1)
   begin
        assign b3[i-16]=b[i];
   end
   assign b3[7]=1;
   
endgenerate
 
 wallacetree w11( a1,b1,res1);
 wallacetree w21( a1,b2,res2);
 wallacetree w31( a1,b3,res3);
 wallacetree w41( a2,b1,res4);
 wallacetree w51( a2,b2,res5);
 wallacetree w61( a2,b3,res6);
 wallacetree w71( a3,b1,res7);
 wallacetree w81( a3,b2,res8);
 wallacetree w91( a3,b3,res9);
 
 
  lshift8 l1( res2, res12);
  lshift8 l2( res4, res14);
  lshift16 l3( res3, res13);
  lshift16 l4( res5, res15);
  lshift16 l5( res7, res17);
  lshift24 l6( res8, res18);
  lshift24 l7( res6, res16);
  lshift32 l8( res9, res19);
  
  
  
  adder r1(res1,res12,sum1);
  adder r2(sum1,res13,sum2);
  adder r3(sum2,res14,sum3);
  adder r4(sum3,res15,sum4);
  adder r5(sum4,res16,sum5);
  adder r6(sum5,res17,sum6);
  adder r7(sum6,res18,sum7);
  adder r8(sum7,res19,sum);
  
   
  
  generate
   
  for(i=23;i<46;i=i+1)
    begin
      
      assign  y[i-23] = sum[i];
   
     end
     
   for(i=24;i<47;i=i+1)
    begin
      
      assign  x[i-24] = sum[i];
   
     end
  
   endgenerate
  

  
 generate
   genvar j;
  for(j=0;j<32;j=j+1)
    begin
      
     mux1 m(x[j],y[j],sum[46],c[j]);
   
     end
endgenerate     
  
  endmodule

   
   module mux1( 
     input x,y,
     input s,
    output c
     );
     
     wire m,n,o;
     not rr1(m,s);
     and rr2( n,m,x);
     and rr3(o,s,y);
     or rr4(c,n,o);
     
 endmodule
    
 


