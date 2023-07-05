module multiplier(a0,a1,a2,a3,b0,b1,b2,b3,s,c0,c1,c2,c3,c4,c5,c6,c7);
input a0,a1,a2,a3,b0,b1,b2,b3,s;
output c0,c1,c2,c3,c4,c5,c6,c7;
wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22;

andgate(a0,b0,c0);
andgate(a0,b1,w0);
andgate(a0,b2,w1);
andgate(a0,b3,w2);

andgate(a1,b0,w3);
andgate(a1,b1,w4);
andgate(a1,b2,w5);
andgate(a1,b3,w6);

FourBitAdderSubtractor (w0,w1,w2,s,w3,w4,w5,w6,s,c1,w7,w8,w9,w10);

andgate(a2,b0,w11);
andgate(a2,b1,w12);
andgate(a2,b2,w13);
andgate(a2,b3,w14);

FourBitAdderSubtractor (w7,w8,w9,w10,w11,w12,w13,w14,s,c2,w15,w16,w17,w18);

andgate(a3,b0,w19);
andgate(a3,b1,w20);
andgate(a3,b2,w21);
andgate(a3,b3,w22);

FourBitAdderSubtractor (w15,w16,w17,w18,w19,w20,w21,w22,S,c3,c4,c5,c6,c7);
endmodule
