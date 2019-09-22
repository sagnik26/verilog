// Code your testbench here
// or browse Examples
module encoder_testbench;
  
  reg [7:0]din;
  wire [2:0]code;
  
  Priority_Encoder_8to3 DUT(.din(din),.code(code));
  
  initial begin
    $monitor("[%0t] din=%b code=%b",$time,din,code);
    
    #5 din=8'b10010011;
    #5 din=8'b01001000;
    #5 din=8'b00110100;
    #5 din=8'b00011000;
    #5 din=8'b00010000;
    #5 din=8'b10000000;
    #5 din=8'b01000000;
    #5 din=8'b00100000;
  end
  
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
  
endmodule