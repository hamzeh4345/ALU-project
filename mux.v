module quadmux (q3,q2,q1,q0,s3,s2,s1,s0,t3,t2,t1,t0,r3,r2,r1,r0);
input q3,q2,q1,q0,s3,s2,s1,s0,t3,t2,t1,t0;
output r3,r2,r1,r0;

//Mux (i0,i1,out); 
Mux (q3,q2,q1,q0,s3,s2,s1,s0,t3,t2,t1,t0,r3,r2,r1,r0);
Mux (q3,q2,q1,q0,s3s2,t2,r2);
Mux (q1,s1,t1,r1);
Mux (q0,s0,t0,r0);
endmodule 

