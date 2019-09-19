// Code your design here
module sr_latch(Q,Qbar,S,R);
  input S,R;
  output Q,Qbar;
  
  assign Q = ~(S & Qbar);
  assign Qbar = ~(R & Q);
  
endmodule