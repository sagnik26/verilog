// Code your design here
module MUX2to1(in,sel,out);
  
  input [1:0]in;
  input sel;
  output out;
  wire t1, t2, t3; 
  
  not G1 (t1,sel);  
  and G2 (t2,in[0],t1);  
  and G3 (t3,in[1],sel);  
  or  G4 (out,t2,t3);
  
endmodule


module MUX4to1(in,sel,out);
  
  input [3:0]in;
  input [1:0]sel;
  output out;
  wire [1:0]t;

  MUX2to1 M0 (in[1:0],sel[0],t[0]);
  MUX2to1 M1 (in[3:2],sel[0],t[1]);
  MUX2to1 M2 (t,sel[1],out);

endmodule

module MUX16to1(in,sel,out);
  
  input [15:0]in;
  input [3:0]sel;
  output out;
  wire [3:0]t;

  MUX4to1 M0 (in[3:0],sel[1:0],t[0]);
  MUX4to1 M1 (in[7:4],sel[1:0],t[1]);
  MUX4to1 M2 (in[11:8],sel[1:0],t[2]);
  MUX4to1 M3 (in[15:12],sel[1:0],t[3]);
  MUX4to1 M4 (t,sel[3:2],out);

endmodule






















