module sixteenMux(s0,s1,s2,s3,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,out);
input s0,s1,s2,s3,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15;
output out;
//wire w1,w2,w3,w4;

//fourMux(s0,s1,i0,i1,i2,i3,w1);
//fourMux(s0,s1,i4,i5,i6,i7,w2);
//fourMux(s0,s1,i8,i9,i10,i11,w3);
//fourMux(s0,s1,i12,i13,i14,i15,w4);
//fourMux(s2,s3,i0,i1,i2,i3,out);

assign out=~s3&~s2&~s1&~s0&i0 | ~s3&~s2&~s1&s0&i1 | ~s3&~s2&s1&~s0&i2 | ~s3&~s2&s1&s0&i3 | ~s3&s2&~s1&~s0&i4 |~s3&s2&~s1&s0&i5 |~s3&s2&s1&~s0&i6 | ~s3&s2&s1&s0&i7 | s3&~s2&~s1&~s0&i8 | s3&~s2&~s1&s0&i9 |s3&~s2&s1&~s0&i10 |s3&~s2&s1&s0&i11 | s3&s2&~s1&~s0&i12 | s3&s2&~s1&s0&i13 | s3&s2&s1&~s0&i14 | s3&s2&s1&s0&i15 ;

endmodule

