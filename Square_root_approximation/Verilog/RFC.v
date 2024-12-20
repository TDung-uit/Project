module RFC(RE,WS,I,clk,O);
input RE,WS,I,clk;
output O;

	wire D,Q;
	assign D = (Q & ~WS) | (I & WS);
	D_flipflop dff(.D(D),.clk(clk),.Q(Q));
	assign O = (RE == 1'b1) ? Q : 1'bz;
endmodule
