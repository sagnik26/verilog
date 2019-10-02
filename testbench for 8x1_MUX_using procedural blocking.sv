// Code your testbench here
// or browse Examples
module testbench_for_8x1MUX;
  
  reg [7:0]in;
  reg [2:0]sel;
  wire out;
  
  mux8to1 DUT(.in(in),.sel(sel),.out(out));
  
  initial
    begin
      $monitor("[%0t] in=%b sel=%b out=%b",$time,in,sel,out);
      
      #5 in=8'b10101010; sel=3'b000;
      #5 sel=3'b001;
      #5 sel=3'b010;
      #5 sel=3'b011;
      #5 sel=3'b110;
      #5 sel=3'b111;
      #5 sel=3'bxxx;
      
    end
  
  initial
    begin
      $dumpvars;
      $dumpfile("dump.vcd");
    end
  
  
endmodule