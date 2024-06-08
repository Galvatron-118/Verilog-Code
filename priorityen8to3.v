module priorityen8to3
(
    input [7:0] A,
    output [2:0] Y
);

assign Y[2]=A[7]+A[6]+A[5]+A[4];
assign Y[1]=~A[5] & ~A[4] & (A[2] | A[3]) | A[6] | A[7];
assign Y[0]=A[7] | ~A[6]&~A[4]&A[3] | ~A[6]&~A[4]&~A[2] & A[1]|~A[6] &A[5];

endmodule