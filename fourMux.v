module fourMux(s0,s1,i0,i1,i2,i3,o);
input s1,s0,i0,i1,i2,i3;
output o;

assign o=~s1&~s0&i0 | ~s1&s0&i1 |s1&~s0&i2 | s1&s0&i3 ; 

//wire w1,w2;

//twoMux(s0,i0,i1,w1);
//twoMux(s0,i2,i3,w2);
//twoMux(s1,w1,w2,o);

endmodule 