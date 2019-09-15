// Code your design here
module d_latch (  input d,         
                  input en,          
                  output reg q);     
 
   // This always block is "always" triggered whenever en/rstn/d changes
   // If reset is asserted then output will be zero
   // Else as long as enable is high, output q follows input d
  always @ (en or d)
    begin
       if (en)
            q <= d;
    end
endmodule