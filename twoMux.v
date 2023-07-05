module twoMux(S,I0,I1,out);
input S,I0,I1;
output out;

assign out=~S&I0|S&I1;
endmodule
