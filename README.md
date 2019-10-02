In this repository , I have uploaded Verilog codes for various combinational and sequential circuits along with their testbenches & I am using EDA Playground for editing the codes.EDA Playground is a online platform which allows users to edit,simulate(viewing waveforms) & synthesize their HDL code.So you can use EDA Playground to edit your Verilog code if you want or there are other softwares available in the market which you can use.Now, for those people who don't know about Verilog , here is a little description of the language and it's constructs -->

## What is Verilog ?

Verilog is a hardware description language which is used for describing various electronic circuits and systems . Applied to electronic design , Verilog is intended to be used for verification through simulation , for timing analysis , test analysis , and for synthesis.



* ##### What is a testbench?  

  A testbench is an environment or some piece of code which is used to verify the correctness of your    design .     

  A simple Verilog code and it's testbench -->

  ```verilog
  //design of a 4 bit binary adder
  
  module my_full_adder( input A,
         input B,
         input CIN,
         output S,
         output COUT
         );
         assign S = A^B^CIN;
         assign COUT = (A&B) | (CIN&(A^B));
  
  endmodule
  
  module four_bit_adder( 
      input [3:0] A,
      input [3:0] B,
      input C0,
      output [3:0] S,
      output C4
      );
      wire C1,C2,C3;
  
      my_full_adder fa0 (A[0],B[0],C0,S[0],C1);
      my_full_adder fa1 (A[1],B[1],C1,S[1],C2);
      my_full_adder fa2 (A[2],B[2],C2,S[2],C3);
      my_full_adder fa3 (A[3],B[3],C3,S[3],C4);
  
  
  endmodule
  
  //Testbench for 4 bit binary adder
  
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
  ```

    

So , If you want to learn about Verilog , go and check out the links below -->  

[Verilog Tutorial for beginners](http://www.referencedesigner.com/tutorials/verilog/verilog_01.php)

[Verilog Tutorial - ASIC World](http://www.asic-world.com/verilog/veritut.html)

