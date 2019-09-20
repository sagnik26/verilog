// Code your design here
module lvl_sensitve_d_latch(input D,input En,output f);
  
  assign f = En ? D : f;
  
  
  
endmodule