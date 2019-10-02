// Code your testbench here
// or browse Examples
 
module tb_counter;
  reg clk;           
  reg rstn;                   
  wire [3:0] out;        
  
  counter   c0 ( .clk (clk),
                 .rstn (rstn),
                 .out (out));
 
  // A clock will be generated which will flip its value every 5ns -> time period = 10ns -> freq = 100 MHz
  always #5 clk = ~clk;
 
  // This initial block forms the stimulus of the testbench
  initial begin
    
    $monitor("[%0t] clk=%b rstn=%b out=%b",$time,clk,rstn,out);
    clk <= 0;
    rstn <= 0;
 
    // 2. Drive rest of the stimulus, reset is asserted in between
    #20   rstn <= 1;                   
    #110   rstn <= 0;
    #140   rstn <= 1;
    #180 $finish;
  end
  
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
endmodule