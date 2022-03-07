module fa(a,b,cin,sum,co);
input a,b,cin;
output sum,co;
ha ha1(a,b,s1,c1),
   ha2(cin,s1,sum,c2);
or(co,c1,c2);
endmodule
