// Code your design here
module counter (  input clk,               
                  input rstn,             
                  output reg[3:0] out);
 
  // This always block will be triggered at the rising edge of clk (0->1) or at the falling edge of rstn(1->0)
  always @ (posedge clk or negedge rstn) begin
    if (! rstn)
      out <= 0;
    else 
      out <= out + 1;
  end
endmodule