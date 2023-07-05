module HexaDisplay (q3,q2,q1,q0,Read,a,b,c,d,e,f,g);
input q3,q2,q1,q0,Read;
output a,b,c,d,e,f,g;

assign a= ~Read | q2&~q1&~q0 | q3&q2&~q1 | ~q3&~q2&~q1&q0 | q3&~q2&q1&q0;
assign b= ~Read |(~q3 & q2 & ~q1 & q0) | (q2 & q1 & ~q0) | (q3 & q1 & q0) | (q3 & q2 & ~q0);
assign c= ~Read |(~q3 & ~q2 & q1 & q0) | (q3 & q2 & ~q0) | (q3 & q2 & q1);
assign d=  ~Read |(~q2 & ~q1 & q0) | (~q3 & q2 & ~q1 & ~q0) | (q2 & q1 & q0) | (q3 & ~q2 & q1 & ~q0);
assign e= ~Read |(~q3 & q0) | (~q3 & q2 & ~q1) | (~q2 & ~q1 & q0);
assign f= ~Read |(~q3 & ~q2 & q0) | (~q3 & ~q2 & q1) | (~q3 & q1 & q0) | (q3 & q2 & ~q1);
assign g=  ~Read |(~q3 & ~q2 & ~q1) | (~q3 & q2 & q1 & q0)|(q3 & q2 & ~q1 & ~q0);

endmodule
