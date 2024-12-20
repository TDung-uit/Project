module AU1(A,B,S,O);
input [4:0] A,B;
input [1:0] S;
output [4:0] O;

	wire [4:0] D3,D2,D1,D0;
	max mx(A,B,D3);
	min mn(A,B,D2);
	Abs b(B,D1);
	Abs a(A,D0);
	assign O = (S==2'b00) ? D0 : 
				(S==2'b01) ? D1 :
				(S==2'b10) ? D2 : D3;
	
endmodule