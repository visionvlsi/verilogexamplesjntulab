module csa(a,b,sum,co);
input [3:0]a,b;
output [3:0]sum;
output co;
fa fa1(a[0],b[0],1'b0,sum[0],n1);
fa fa2(a[1],b[1],1'b0,m1,n2);
fa fa3(a[2],b[2],1'b0,m2,n3);
fa fa4(a[3],b[3],1'b0,m3,n4);
ha ha1(m1,n1,sum[1],c1);
fa fa5(m2,n2,c1,sum[2],c2);
fa fa6(m3,n3,c2,sum[3],c3);
fa fa7(1'b0,n4,c3,co,c4);
endmodule
