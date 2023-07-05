module sevensegmentQ (q3,q2,q1,q0,Read,a,b,c,d,e,f,g);
input q3,q2,q1,q0,Read;
output a,b,c,d,e,f,g;

assign a= ~Read | q2&~q1&~q0 | q3&q2&~q1 | ~q3&~q2&~q1&q0 | q3&~q2&q1&q0;
assign b= ~Read |(~q3 & q2 & ~q1 & q0) | (q2 & q1 & ~q0) | (q3 & q1 & q0) | (q3 & q2 & ~q0);
assign c= ~Read |(~q3 & ~q2 & q1 & q0) | (q3 & q2 & ~q0) | (q3 & q2 & q1);
assign d=  ~Read |(~q2 & ~q1 & q0) | (~q3 & q2 & ~q1 & ~q0) | (q2 & q1 & q0) | (q3 & ~q2 & q1 & ~q0);
assign e= ~Read |(~q3 & q0) | (~q3 & q2 & ~q1) | (~q2 & ~q1 & q0);
assign f= ~Read |(~q3 & ~q2 & q0) | (~q3 & ~q2 & q1) | (~q3 & q1 & q0) | (q3 & q2 & ~q1);
assign g=  ~Read |(~q3 & ~q2 & ~q1) | (~q3 & q2 & q1 & q0);

endmodule

module sevensegmentS (s3,s2,s1,s0,Read,a1,b1,c1,d1,e1,f1,g1);
input s3,s2,s1,s0,Read;
output a1,b1,c1,d1,e1,f1,g1;
assign a1= ~Read |(~s3&~s2&~s1&s0) | (s2&~s1&~s0)| (s3&~s2&s1&s0) | (s3&s2&~s1);
assign b1= ~Read |(~s3 & s2 & ~s1 & s0) | (s2 & s1 & ~s0) | (s3 & s1 & s0) | (s3 & s2 & ~s0);
assign c1= ~Read |(~s3 & ~s2 & s1 & s0) | (s3 & s2 & ~s0) | (s3 & s2 & s1);
assign d1=  ~Read |(~s2 & ~s1 & s0) | (~s3 & s2 & ~s1 & ~s0) | (s2 & s1 & s0) | (s3 & ~s2 & s1 & ~s0);
assign e1= ~Read |(~s3 & s0) | (~s3 & s2 & ~s1) | (~s2 & ~s1 & s0);
assign f1= ~Read |(~s3 & ~s2 & s0) | (~s3 & ~s2 & s1) | (~s3 & s1 & s0) | (s3 & s2 & ~s1);
assign g1=  ~Read |(~s3 & ~s2 & ~s1) | (~s3 & s2 & s1 & s0);
endmodule 

module sevensegmentT (t3,t2,t1,t0,Read,a2,b2,c2,d2,e2,f2,g2);
input t3,t2,t1,t0,Read;
output a2,b2,c2,d2,e2,f2,g2;
assign a2= ~Read |(~t3&~t2&~t1&t0) | (t2&~t1&~t0)| (t3&~t2&t1&t0) | (t3&t2&~t1);
assign b2= ~Read |(~t3 & t2 & ~t1 & t0) | (t2 & t1 & ~t0) | (t3 & t1 & t0) | (t3 & t2 & ~t0);
assign c2= ~Read |(~t3 & ~t2 & t1 & t0) | (t3 & t2 & ~t0) | (t3 & t2 & t1);
assign d2=  ~Read |(~t2 & ~t1 & t0) | (~t3 & t2 & ~t1 & ~t0) | (t2 & t1 & t0) | (t3 & ~t2 & t1 & ~t0);
assign e2= ~Read |(~t3 & t0) | (~t3 & t2 & ~t1) | (~t2 & ~t1 & t0);
assign f2= ~Read |(~t3 & ~t2 & t0) | (~t3 & ~t2 & t1) | (~t3 & t1 & t0) | (t3 & t2 & ~t1);
assign g2=  ~Read |(~t3 & ~t2 & ~t1) | (~t3 & t2 & t1 & t0);
endmodule 
