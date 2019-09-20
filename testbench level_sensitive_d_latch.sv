// Code your testbench here
// or browse Examples
module d_testbench;
  reg D,En;
  wire f;
  
  lvl_sensitve_d_latch DUT(.D(D),.En(En),.f(f));
   
  initial
     begin
       $monitor("[%0t] En=%b D=%b f=%b",$time,En,D,f);
       
       #5  En=1'b1; D=1'b0;
       #5  En=1'b1; D=1'b1;
       #5  En=1'b0; D=1'b0;
       #5  En=1'b0; D=1'b1;
       #5  En=1'b1; D=1'b0;
       
     end
  
  	initial begin
      $dumpvars;
      $dumpfile("dump.vcd");
    end
  
endmodule