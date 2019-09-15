// Code your testbench here
// or browse Examples

module test_6_bit;
  
     reg [5:0] A;
     reg [5:0] B;
     reg C0;
     wire [5:0] S;
     wire C4;
  six_bit_adder dut(.A(A),.B(B),.C0(C0),.S(S),.Cout(Cout));    
     initial begin
      #10 A = 6'b001101;B=6'b001111;C0 = 1'b0; 
      #10 A = 6'b101110;B=6'b011100;C0 = 1'b1; 
     end
	 initial begin
       $monitor("$time A=%b,B=%b,C0=%b,S=%b,C4=%b \n",A,B,C0,S,Cout);
		 end
  
  
  	 initial begin
       $dumpvars;
       $dumpfile("dump.vcd");
     end
  
endmodule