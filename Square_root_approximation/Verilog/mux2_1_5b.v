module mux2_1_5b(D0,D1,S,Y);
input [4:0] D0,D1;
input S;
output [4:0] Y;

	assign Y = S? D0 : D1;
	
endmodule