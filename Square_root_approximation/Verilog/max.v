module max(A,B,O);
input [4:0] A,B;
output [4:0] O;

	wire [4:0] S;
	FS5b fs(.A(A),.B(B),.S(S));

	assign O = S[4] ? B : A;
	
endmodule