module regA (Read,Clk,a0,a1,a2,a3,Reset,q0,q1,q2,q3);
input Read,Clk,a0,a1,a2,a3,Reset;
output q0,q1,q2,q3;
wire w;

andgate(Read,Clk,w);
dff1(a0,Reset,w,q0);
dff1(a1,Reset,w,q1);
dff1(a2,Reset,w,q2);
dff1(a3,Reset,w,q3);


endmodule

module regB (Read,Clk,b0,b1,b2,b3,Reset,s0,s1,s2,s3);
input Read,Clk,b0,b1,b2,b3,Reset;
output s0,s1,s2,s3;
wire w;

andgate(Read,Clk,w);
dff1(b0,Reset,w,s0);
dff1(b1,Reset,w,s1);
dff1(b2,Reset,w,s2);
dff1(b3,Reset,w,s3);


endmodule
module regM (Read,Clk,m0,m1,m2,m3,Reset,t0,t1,t2,t3);
input Read,Clk,m0,m1,m2,m3,Reset;
output t0,t1,t2,t3;
wire w;

andgate(Read,Clk,w);
dff1(m0,Reset,w,t0);
dff1(m1,Reset,w,t1);
dff1(m2,Reset,w,t2);
dff1(m3,Reset,w,t3);


endmodule
