module Decoder2_8(I,E,O);
input [2:0] I;
input E;
output [7:0] O;

	assign O[0] = E & ~I[2] & ~I[1] & ~I[0];
	assign O[1] = E & ~I[2] & ~I[1] & I[0];
	assign O[2] = E & ~I[2] & I[1] & ~I[0];
	assign O[3] = E & ~I[2] & I[1] & I[0];
	assign O[4] = E & I[2] & ~I[1] & ~I[0];
	assign O[5] = E & I[2] & ~I[1] & I[0];
	assign O[6] = E & I[2] & I[1] & ~I[0];
	assign O[7] = E & I[2] & I[1] & I[0];

endmodule