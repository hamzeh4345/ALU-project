module FA (IN0,IN1,Cin,SUM,Cout);
input IN0,IN1,Cin;
output SUM,Cout;
assign SUM = IN0^IN1^Cin;
assign Cout = IN0&IN1 | IN1&Cin | IN0&Cin;
endmodule
