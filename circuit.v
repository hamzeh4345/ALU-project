module circuit(Read,Clk,Write,Reset,A0,A1,A2,A3,B0,B1,B2,B3,M0,M1,M2,M3,R0,R1,R2,R3,S,Z,O,a,b,c,d,e,f,g,a1,b1,c1,d1,e1,f1,g1,a2,b2,c2,d2,e2,f2,g2,a3,b3,c3,d3,e3,f3,g3,a4,b4,c4,d4,e4,f4,g4);
input Read,Clk,Write,Reset,A0,A1,A2,A3,B0,B1,B2,B3,M0,M1,M2,M3;
output R0,R1,R2,R3,S,Z,O,a,b,c,d,e,f,g,a1,b1,c1,d1,e1,f1,g1,a2,b2,c2,d2,e2,f2,g2,a3,b3,c3,d3,e3,f3,g3,a4,b4,c4,d4,e4,f4,g4;

wire z0,z1,z2,z3,y0,y1,y2,y3,m0,m1,m2,m3,and3,and2,and1,and0,or3,or2,or1,or0,xor3,xor2,xor1,xor0,xnor3,xnor2,xnor1,xnor0,not3,not2,not1,not0,ra3,ra2,ra1,ra0,rb3,rb2,rb1,rb0,S0,S1,S2,S3,Cout,mul0,mul1,mul2,mul3,mul4,mul5,mul6,mul7,sign,w1,r0,r1,r2,r3,z,w2,o,o1,w3,cout,invm;

FourBitReg (Read,Clk,A0,A1,A2,A3,Reset,z0,z1,z2,z3);
FourBitReg (Read,Clk,B0,B1,B2,B3,Reset,y0,y1,y2,y3);
FourBitReg (Read,Clk,M0,M1,M2,M3,Reset,m0,m1,m2,m3);

HexaDisplay (z3,z2,z1,z0,Read,a,b,c,d,e,f,g);
HexaDisplay (y3,y2,y1,y0,Read,a1,b1,c1,d1,e1,f1,g1);
HexaDisplay (m3,m2,m1,m0,Read,a2,b2,c2,d2,e2,f2,g2);

invgate(m0,invm);
AND1 (z3,z2,z1,z0,y3,y2,y1,y0,and3,and2,and1,and0);
OR1 (z3,z2,z1,z0,y3,y2,y1,y0,or3,or2,or1,or0);
xorgate1 (z3,z2,z1,z0,y3,y2,y1,y0,xor3,xor2,xor1,xor0);
xnorgate1 (z3,z2,z1,z0,y3,y2,y1,y0,xnor3,xnor2,xnor1,xnor0);
notA(z3,z2,z1,z0,not3,not2,not1,not0);
ShiftRotate(z3,z2,z1,z0,m1,m0,ra3,ra2,ra1,ra0);
ShiftRotate(y3,y2,y1,y0,m1,m0,rb3,rb2,rb1,rb0);

FourBitAdderSubtractor (z0,z1,z2,z3,y0,y1,y2,y3,invm,S0,S1,S2,S3,Cout);
multiplier(z0,z1,z2,z3,y0,y1,y2,y3,m0,mul0,mul1,mul2,mul3,mul4,mul5,mul6,mul7);

//comparator(z3,z2,z1,z0,y3,y2,y1,y0,sign,m3,m2,m1,m0);
sixteenMux(m0,m1,m2,m3,1,1,1,1,1,1,1,1,1,1,1,1,Cout,1,1,1,sign);
andgate(Write,Clk,w1);
dff1(~sign,Reset,w1,S);
SignDisplay(sign,Write,a3,b3,c3,d3,e3,f3,g3);

sixteenMux(m0,m1,m2,m3,and0,or0,xor0,xnor0,ra0,ra0,ra0,ra0,rb0,rb0,rb0,rb0,S0,S0,mul0,not0,r0);
sixteenMux(m0,m1,m2,m3,and1,or1,xor1,xnor1,ra1,ra1,ra1,ra1,rb1,rb1,rb1,rb1,S1,S1,mul1,not1,r1);
sixteenMux(m0,m1,m2,m3,and2,or2,xor2,xnor2,ra2,ra2,ra2,ra2,rb2,rb2,rb2,rb2,S2,S2,mul2,not2,r2);
sixteenMux(m0,m1,m2,m3,and3,or3,xor3,xnor3,ra3,ra3,ra3,ra3,rb3,rb3,rb3,rb3,S3,S3,mul3,not3,r3);
FourBitReg (Write,Clk,r0,r1,r2,r3,Reset,R0,R1,R2,R3);
HexaDisplay (R3,R2,R1,R0,Write,a4,b4,c4,d4,e4,f4,g4);

FourBitNor(r0,r1,r2,r3,z);
andgate(Write,Clk,w2);
dff1(z,Reset,w2,Z);


FourBitNor(mul4,mul5,mul6,mul7,o);
sixteenMux(m0,m1,m2,m3,0,0,0,0,0,0,0,0,0,0,0,0,0,Cout,~o,0,o1);
andgate(Write,Clk,w3);
dff1(o1,Reset,w3,O);
endmodule 
