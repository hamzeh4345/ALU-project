module comparator(a3,a2,a1,a0,b3,b2,b1,b0,r,s3,s2,s1,s0);
input a3,a2,a1,a0,b3,b2,b1,b0,s3,s2,s1,s0;
output r;
wire w1,w2,w3,w4;

xorgate(a3,b3,w3);
xorgate(a2,b2,w2);
xorgate(a1,b1,w1);

assign w4=~a3&b3 | w3&~a2&b2 | w3&w2&~a1&b1 | w3&w2&w1&~a0&b0;

sixteenMux(s0,s1,s2,s3,0,0,0,0,0,0,0,0,0,0,0,0,w4,0,0,0,r);
endmodule 