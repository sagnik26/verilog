// Code your testbench here
// or browse Examples
module muxtest;
  
  reg [15:0]din;
  reg [3:0]sel;
  wire f;
  
  Mux16to1 DUT(.din(din),.sel(sel),.f(f));

  initial begin
      
      $monitor("[%0t] din=%h sel=%b f=%b",$time,din,sel,f);
	  #5 din=16'h3f0a; sel=4'h0;
      #5 sel=4'h1;
      #5 sel=4'h6;
      #5 sel=4'hc;
      #5 $finish;

    
  end
  
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
    
  end
endmodule