module rca(a,b,sum,co);
input [3:0]a,b;  //4-bit
output [3:0]sum;
output co;
fa fa1(a[0],b[0],1'b0,sum[0],c1);
fa fa2(a[1],b[1],c1,sum[1],c2);
fa fa3(a[2],b[2],c2,sum[2],c3);
fa fa4(a[3],b[3],c3,sum[3],co);
endmodule
