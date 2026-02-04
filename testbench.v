module testbench_cla_64_bit();

  reg [63:0] A, B;
  reg Cin;
  wire [63:0] S;
  wire [63:0] Carry;
  wire Cout;

  // Instantiate the CLA 64-bit adder
  cla_64_bit uut(A,B,Cin,S,Carry,Cout);

  // Clock generation
  reg clk = 0;
   always
     begin
    	#700 clk = ~clk;
  	 end


  initial 
    begin
      A = 522;
      B = 65;
      Cin = 0;
      #200
      Cin = 1;
      #200
      A = 55;
      B = 554;
      Cin = 0;
      #200
      A = 452;

      #200;

    end

endmodule