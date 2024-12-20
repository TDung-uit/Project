module FA5b(A,B,Cin,S,Cout);
input [4:0] A,B;
input Cin;
output Cout;
output [4:0] S;

	wire c0,c1,c2,c3;
	FA fa0(A[0],B[0],Cin,S[0],c0);
	FA fa1(A[1],B[1],c0,S[1],c1);
	FA fa2(A[2],B[2],c1,S[2],c2);
	FA fa3(A[3],B[3],c2,S[3],c3);
	FA fa4(A[4],B[4],c3,S[4],Cout);
	
	
endmodule