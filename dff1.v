module SR2(S,R,C,Reset,Q,Qnot);
input S,R,C,Reset;
output Q,Qnot;

invgate (Reset,notR);
nandgate (S,C,w1);
nandgate (R,C,w2);
nandgate (w1,Qnot,w3);
nandgate (w2,Q,Qnot);
andgate (notR,w3,Q);

endmodule

module dff1(D,Reset,clk,Q);
input D,Reset,clk;
output Q;

invgate (clk,w1);
invgate (D,w2);
SR2 (D,w2,w1,Reset,w4,w5);
SR2 (w4,w5,clk,Reset,Q,Qnot);

endmodule