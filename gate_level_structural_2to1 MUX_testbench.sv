// Code your testbench here
// or browse Examples
module tb_mux;

    // Declaring Inputs
    reg [1:0]in;
    reg sel;

    // Declaring Outputs
    wire out;

    // Instantiate the Unit Under Test (UUT)
  Mux UUT(.in(in),.sel(sel),.out(out));

    initial begin
      $monitor("[%0t] in=%b sel=%b out=%b",$time,in,sel,out);
        in[0] = 0;
        in[1] = 0;
        sel = 0;
        // Wait 100 ns
        #100;
        
        //Similarly apply Inputs and wait for 100 ns
        in[0] = 0;      in[1] = 1;      sel = 1;      #100;
        in[0] = 1;      in[1] = 0;      sel = 0;        #100;

    end
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
      
endmodule