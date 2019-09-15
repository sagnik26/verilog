// Code your testbench here
// or browse Examples
module test_4_bit;
  
     reg [3:0] A;
     reg [3:0] B;
     reg C0;
     wire [3:0] S;
     wire C4;
  four_bit_adder dut(.A(A),.B(B),.C0(C0),.S(S),.C4(C4));    
     initial begin
      #10 A = 4'b0011;B=4'b0011;C0 = 1'b0; 
      #10 A = 4'b1011;B=4'b0111;C0 = 1'b1; 
     end
	 initial begin
       $monitor("$time A=%b,B=%b,C0=%b,S=%b,C4=%b \n",A,B,C0,S,C4);
		 end
endmodule