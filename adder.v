`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:11:54
// Design Name: 
// Module Name: adder
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


module fulladder(X1 ,X2,Cin, S, Cout );
    input X1, X2, Cin;
  output S, Cout;  
    wire a1, a2, a3;    
    xor u1(a1,X1,X2);
 and u2(a2,X1,X2);
 and u3(a3,a1,Cin);
 or u4(Cout,a2,a3);
    xor u5(S,a1,Cin);
endmodule
    

module halfadder(a,b,sum, carry);
    input a;
    input b;
    output carry;
    output sum;
    
    xor(sum,a,b);
    and(carry,a,b);
    
endmodule

module adder(
 
  input [47:0] A,
  input [47:0] B,
  output [47:0] SUM
  
  
  );
  
  wire cin0,cin1,cin2,cin3,cin4,cin5,cin6,cin7,cin8,cin9,cin10,cin11,cin12,cin13,cin14,cin15;
  wire cin16,cin17,cin18,cin19,cin20,cin21,cin22,cin23,cin24,cin25,cin26,cin27,cin28,cin29,cin30;
  wire cin31,cin32,cin33,cin34,cin35,cin36,cin37,cin38,cin39,cin40,cin41,cin42,cin43,cin44,cin45,cin46,cin47,cin;
  
  assign cin0=1'b0;
  
  fulladder f1 (A[0], B[0], cin0, SUM[0], cin1);
  fulladder f2 (A[1], B[1], cin1, SUM[1], cin2);
  fulladder f3 (A[2], B[2], cin2, SUM[2], cin3); 
  fulladder f4 (A[3], B[3], cin3, SUM[3], cin4); 
  fulladder f5 (A[4], B[4], cin4, SUM[4], cin5); 
  fulladder f6 (A[5], B[5], cin5, SUM[5], cin6); 
  fulladder f7 (A[6], B[6], cin6, SUM[6], cin7);
  fulladder f8 (A[7], B[7], cin7, SUM[7], cin8); 
  fulladder f9 (A[8], B[8], cin8, SUM[8], cin9);
  fulladder f10 (A[9], B[9], cin9, SUM[9], cin10);
  fulladder f11 (A[10], B[10], cin10, SUM[10], cin11);
  fulladder f12 (A[11], B[11], cin11, SUM[11], cin12);
  fulladder f13 (A[12], B[12], cin12, SUM[12], cin13);
  fulladder f14 (A[13], B[13], cin13, SUM[13], cin14);
  fulladder f15 (A[14], B[14], cin14, SUM[14], cin15);
  fulladder f16 (A[15], B[15], cin15, SUM[15], cin16);
  fulladder f17 (A[16], B[16], cin16, SUM[16], cin17);
  fulladder f18 (A[17], B[17], cin17, SUM[17], cin18);
  fulladder f19 (A[18], B[18], cin18, SUM[18], cin19);
  fulladder f20 (A[19], B[19], cin19, SUM[19], cin20);
  fulladder f21 (A[20], B[20], cin20, SUM[20], cin21);
  fulladder f22 (A[21], B[21], cin21, SUM[21], cin22);
  fulladder f23 (A[22], B[22], cin22, SUM[22], cin23);
  fulladder f24 (A[23], B[23], cin23, SUM[23], cin24);
  fulladder f25 (A[24], B[24], cin24, SUM[24], cin25);
  fulladder f26 (A[25], B[25], cin25, SUM[25], cin26);
  fulladder f27 (A[26], B[26], cin26, SUM[26], cin27);
  fulladder f28 (A[27], B[27], cin27, SUM[27], cin28);
  fulladder f29 (A[28], B[28], cin28, SUM[28], cin29);
  fulladder f30 (A[29], B[29], cin29, SUM[29], cin30);
  fulladder f31 (A[30], B[30], cin30, SUM[30], cin31);
  fulladder f32 (A[31], B[31], cin31, SUM[31], cin32);
  fulladder f33 (A[32], B[32], cin32, SUM[32], cin33);
  fulladder f34 (A[33], B[33], cin33, SUM[33], cin34);
  fulladder f35 (A[34], B[34], cin34, SUM[34], cin35);
  fulladder f36 (A[35], B[35], cin35, SUM[35], cin36);
  fulladder f37 (A[36], B[36], cin36, SUM[36], cin37);
  fulladder f38 (A[37], B[37], cin37, SUM[37], cin38);
  fulladder f39 (A[38], B[38], cin38, SUM[38], cin39);
  fulladder f40 (A[39], B[39], cin39, SUM[39], cin40);
  fulladder f41 (A[40], B[40], cin40, SUM[40], cin41);
  fulladder f42 (A[41], B[41], cin41, SUM[41], cin42);
  fulladder f43 (A[42], B[42], cin42, SUM[42], cin43);
  fulladder f44 (A[43], B[43], cin43, SUM[43], cin44);
  fulladder f45 (A[44], B[44], cin44, SUM[44], cin45);
  fulladder f46 (A[45], B[45], cin45, SUM[45], cin46);
  fulladder f47 (A[46], B[46], cin46, SUM[46], cin47);
  fulladder f48 (A[47], B[47], cin47, SUM[47], cin);
  
  
  endmodule
  
  
 
