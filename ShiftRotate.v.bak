module ShiftRotate(q3,q2,q1,q0,s1,s0,r3,r2,r1,r0);
input q3,q2,q1,q0,s1,s0;
output r3,r2,r1,r0;

//fourMux(s0,s1,i0,i1,i2,i3,o);
fourMux(s0,s1,q3,q1,0,q1,r0);
fourMux(s0,s1,q0,q2,q0,q2,r1);
fourMux(s0,s1,q1,q3,q1,q3,r2);
fourMux(s0,s1,q2,q0,q2,0,r3);

//wire w0,w1,w2,w3;

//sixteenMux(s0,s1,s2,s3,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,out);
//sixteenMux(s0,s1,s2,s3,0,0,0,0,q3,q1,0,q1,q3,q1,0,q1,0,0,0,0,r0);
//sixteenMux(s0,s1,s2,s3,0,0,0,0,q0,q2,q0,q2,q0,q2,q0,q2,0,0,0,0,r1);
//sixteenMux(s0,s1,s2,s3,0,0,0,0,q1,q3,q1,q3,q1,q3,q1,q3,0,0,0,0,r2);
//sixteenMux(s0,s1,s2,s3,0,0,0,0,q2,q0,q2,0,q2,q0,q2,0,0,0,0,0,r3);

//dff1(D,Reset,clk,Q);
//dff1(w3,Reset,clk,r0);
//dff1(w0,Reset,clk,r1);
//dff1(w1,Reset,clk,r2);
//dff1(w2,Reset,clk,r3);
endmodule 
