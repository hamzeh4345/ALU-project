module FourBitAdderSubtractor (A0,A1,A2,A3,B0,B1,B2,B3,S,S0,S1,S2,S3,Cout);
input A0,A1,A2,A3,B0,B1,B2,B3,S;
output S0,S1,S2,S3,Cout;
wire W1,W2,W3,X0,X1,X2,X3,Su0,Su1,Su2,Su3,x0,x1,x2,x3,su0,su1,su2,su3,w1,w2,w3,aCout;
//xorgate(in1,in2,out);
xorgate (B0,S,X0);
xorgate (B1,S,X1);
xorgate (B2,S,X2);
xorgate (B3,S,X3);

FA (A0,X0,S,Su0,W1);
FA (A1,X1,W1,Su1,W2);
FA (A2,X2,W2,Su2,W3);
FA (A3,X3,W3,Su3,Cout);

xorgate (0,0,x0);
xorgate (0,0,x1);
xorgate (0,0,x2);
xorgate (0,0,x3);

FA (~Su0,x0,S,su0,w1);
FA (~Su1,x1,w1,su1,w2);
FA (~Su2,x2,w2,su2,w3);
FA (~Su3,x3,w3,su3,aCout);
//fourMux(s0,s1,i0,i1,i2,i3,o);
fourMux(S,Cout,Su0,su0,Su0,Su0,S0);
fourMux(S,Cout,Su1,su1,Su1,Su1,S1);
fourMux(S,Cout,Su2,su2,Su2,Su2,S2);
fourMux(S,Cout,Su3,su3,Su3,Su3,S3);



//FA (B0,x0,S,su0,w1);
//FA (B1,x1,w1,su1,w2);
//FA (B2,x2,w2,su2,w3);
//FA (B3,x3,w3,su3,cout);

//xorgate(in1,in2,out);
//xorgate (A0,S,x0);
//xorgate (A1,S,x1);
//xorgate (A2,S,x2);
//xorgate (A3,S,x3);

//twoMux(sign,Su0,su0,S0);
//twoMux(sign,Su1,su1,S1);
//twoMux(sign,Su2,su2,S2);
//twoMux(sign,Su3,su3,S3);
//comparator(A3,A2,A1,A0,B3,B2,B1,B0,sign,S3,S2,S1,S0);

endmodule
