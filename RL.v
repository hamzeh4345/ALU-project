module RL(q3,q2,q1,q0,s3,s2,s1,s0,r3,r2,r1,r0,clk,Reset);
input q3,q2,q1,q0,s3,s2,s1,s0,clk,Reset;
output r3,r2,r1,r0;
wire w0,w1,w2,w3;

//sixteenMux(s0,s1,s2,s3,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,out);
sixteenMux(s0,s1,s2,s3,0,0,0,0,q3,0,0,0,q3,0,0,0,0,0,0,0,w3);
sixteenMux(s0,s1,s2,s3,0,0,0,0,q0,0,0,0,q0,0,0,0,0,0,0,0,w0);
sixteenMux(s0,s1,s2,s3,0,0,0,0,q1,0,0,0,q1,0,0,0,0,0,0,0,w1);
sixteenMux(s0,s1,s2,s3,0,0,0,0,q2,0,0,0,q2,0,0,0,0,0,0,0,w2);

//dff1(D,Reset,clk,Q);
dff1(w3,Reset,clk,r0);
dff1(w0,Reset,clk,r1);
dff1(w1,Reset,clk,r2);
dff1(w2,Reset,clk,r3);
endmodule 
