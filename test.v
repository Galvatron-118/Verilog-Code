`timescale 1ns/1ps
module test;
reg [7:0] A;
wire [2:0] Y;
priorityen8to3 uut(.*);
initial
begin
    $dumpfile("test2.vcd");
    $dumpvars(0,test);

    A[7]=0; A[6]=0; A[5]=0; A[4]=0; A[3]=0; A[2]=0; A[1]=0; A[0]=0;

    #20 A[0] =1;
    #20 A[1] =1;
    #20 A[2] =1;
    #20 A[3] =1;
    #60;

end

initial
begin
    $monitor("A[7]=%d, A[6]=%d, A[5]=%d, A[4]=%d, A[3]=%d, A[2]=%d, A[1]=%d, A[0]=%d\t,Y[2]=%d, Y[1]=%d, Y[0]=%d\n",A[7],A[6],A[5],A[4],A[3],A[2],A[1],A[0],Y[2],Y[1],Y[0]);
end
endmodule





