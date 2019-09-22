// Code your design here
module Mux2to1(in,sel,out);
  
  input [1:0]in;
  input sel;
  output out;
  wire t1,t2,t3;
  
  not n1 (t1,sel);
  and a1 (t2,t1,in[0]);
  and a2 (t3,sel,in[1]);
  or o1 (out,t2,t3);
 
endmodule


module Mux16to1(din,sel,f);
  
  input [15:0]din;
  input [3:0]sel;
  output f;
  wire [13:0]t;
  
  Mux2to1 m1 (din[1:0],sel[0],t[0]);  
  Mux2to1 m2 (din[3:2],sel[0],t[1]);
  Mux2to1 m3 (din[5:4],sel[0],t[2]);
  Mux2to1 m4 (din[7:6],sel[0],t[3]);
  Mux2to1 m5 (din[9:8],sel[0],t[4]);
  Mux2to1 m6 (din[11:10],sel[0],t[5]);
  Mux2to1 m7 (din[13:12],sel[0],t[6]);
  Mux2to1 m8 (din[15:14],sel[0],t[7]);
  
  Mux2to1 m9   (t[1:0],sel[1],t[8]);
  Mux2to1 m10  (t[3:2],sel[1],t[9]);
  Mux2to1 m11  (t[5:4],sel[1],t[10]);
  Mux2to1 m12  (t[7:6],sel[1],t[11]);

  Mux2to1 m13  (t[9:8],sel[2],t[12]);
  Mux2to1 m14  (t[11:10],sel[2],t[13]);
  
  Mux2to1 m15  (t[13:12],sel[3],f);
  
endmodule