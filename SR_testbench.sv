// Code your testbench here
// or browse Examples
module sr_testbench;
  reg S,R;
  wire Q,Qbar;
  
  sr_latch LAT(.Q(Q),.Qbar(Qbar),.S(S),.R(R));
   initial
     begin
       $monitor($time ,"S=%b R=%b Q=%b Qbar=%b",S,R,Q,Qbar);
       #5  S=1'b0; R=1'b1;
       #5  S=1'b1; R=1'b1;
       #5  S=1'b1; R=1'b0;
       #5  S=1'b1; R=1'b1;
       #5  S=1'b0; R=1'b1;
       #5  S=1'b0; R=1'b0; //indeterminate state
       
     end
endmodule