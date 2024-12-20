module Abs(I,O);
input [4:0] I;
output [4:0] O;

	wire [4:0] S,D0;
	wire select;
	FS5b fs(.A(5'b0),.B(I),.S(S));
	assign O = (I[4] == 1'b1) ? S : I[4:0];
	
endmodule