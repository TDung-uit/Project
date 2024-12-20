module max_abs(A,B,S,O);
input [4:0] A,B;
input S;
output [4:0] O;

	wire [4:0] D1,D0;
	max m(A,B,D1);
	Abs a(A,D0);
	assign O = S ? D1 : D0;
	
endmodule