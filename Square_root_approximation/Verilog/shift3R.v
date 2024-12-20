module shift3R(I,O);
input [4:0] I;
output [4:0] O;
	assign O = I >> 3;

endmodule