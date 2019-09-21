// Code your design here
module Mux(in,sel,out);
  
  input [1:0]in;
  input sel;
  output out;
  wire t1,t2,t3;
  
  not n1 (t1,sel);
  and a1 (t2,t1,in[0]);
  and a2 (t3,sel,in[1]);
  or o1 (out,t2,t3);
 
endmodule