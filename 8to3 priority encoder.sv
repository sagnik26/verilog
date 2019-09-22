// Code your design here
module  Priority_Encoder_8to3(din,code);
  
  input [7:0]din;
  output reg[2:0]code;

  always @(din)
    begin
      
      if(din[0]) code=3'b000;
      else if(din[1]) code=3'b001;
      else if(din[2]) code=3'b010;
      else if(din[3]) code=3'b011;
      else if(din[4]) code=3'b100;
      else if(din[5]) code=3'b101;
      else if(din[6]) code=3'b110;
      else if(din[7]) code=3'b111;
      else			  code=3'bxxx;
    end
endmodule