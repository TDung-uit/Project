module FS5b(A,B,S,Cout);
input [4:0] A,B;

output Cout;
output [4:0] S;

	wire [4:0] Bn;
	assign Bn = ~B;
	FA5b fa(A,Bn,1'b1,S,Cout);
endmodule