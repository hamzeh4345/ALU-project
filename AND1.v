module AND1 (q3,q2,q1,q0,s3,s2,s1,s0,r3,r2,r1,r0);
input q3,q2,q1,q0,s3,s2,s1,s0;
output r3,r2,r1,r0;

andgate(q3,s3,r3);
andgate(q2,s2,r2);
andgate(q1,s1,r1);
andgate(q0,s0,r0);
endmodule 

module OR1 (q3,q2,q1,q0,s3,s2,s1,s0,r3,r2,r1,r0);
input q3,q2,q1,q0,s3,s2,s1,s0;
output r3,r2,r1,r0;

orgate(q3,s3,r3);
orgate(q2,s2,r2);
orgate(q1,s1,r1);
orgate(q0,s0,r0);
endmodule 

module xorgate1 (q3,q2,q1,q0,s3,s2,s1,s0,r3,r2,r1,r0);
input q3,q2,q1,q0,s3,s2,s1,s0;
output r3,r2,r1,r0;

xorgate(q3,s3,r3);
xorgate(q2,s2,r2);
xorgate(q1,s1,r1);
xorgate(q0,s0,r0);
endmodule 

module xnorgate1 (q3,q2,q1,q0,s3,s2,s1,s0,r3,r2,r1,r0);
input q3,q2,q1,q0,s3,s2,s1,s0;
output r3,r2,r1,r0;

xnorgate(q3,s3,r3);
xnorgate(q2,s2,r2);
xnorgate(q1,s1,r1);
xnorgate(q0,s0,r0);
endmodule 

module notA(q3,q2,q1,q0,r3,r2,r1,r0);
input q3,q2,q1,q0;
output r3,r2,r1,r0;

invgate(q3,r3);
invgate(q2,r2);
invgate(q1,r1);
invgate(q0,r0);

endmodule


