`timescale 1ns/1ns
module test;
reg [3:0]a,b;
wire [3:0]sum;
wire co;

integer i;

csa csa1(a,b,sum,co);
initial 
begin
$monitor("a=%0d, b=%0d, co=%b, sum=%b", a, b, co, sum);
end
initial
for(i=0;i<=15;i=i+1) begin
a=i;
b=2*i;
#5;
end
endmodule
