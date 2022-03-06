`timescale 1ns/1ns
module alllogicgates(y,a,b); // you also can write alllogicgates(a,b,y);
  
  output y;
  input a,b;
  
  //logic gates are and, nand, or, nor, xor, xnor, not
  //the follwing is gate level modeling
  // in all of the follwing gates output variable must come first, then input variables follows
  and(y,a,b);
  nand(y,a,b);
  or(y,a,b);
  nor(y,a,b);
  xor(y,a,b);
  xnor(y,a,b);
  not(y,a)
endmodule


// Testbench

`timescale 1ns/1ns
module test_alllogicgates;
  wire y;
  reg a,b;
  
  initial begin
    a=0; b=0;
    #5 b=1;
    #5 a=1; b=0;
    #5 b=1;
  end
  
  initial
    $monitor("simtime=%0g, a=%b, b=%b, y=%b", $time, a,b,y); // %b and %g these are called format specifiers
  initial
    #35 $finish;
endmodule
