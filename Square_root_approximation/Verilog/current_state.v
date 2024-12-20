module current_state(I,clk,Q);
input [3:0] I;
input clk;
output [3:0] Q;

	D_flipflop dff3(.D(I[3]),.clk(clk),.Q(Q[3]));
	D_flipflop dff2(.D(I[2]),.clk(clk),.Q(Q[2]));
	D_flipflop dff1(.D(I[1]),.clk(clk),.Q(Q[1]));
	D_flipflop dff0(.D(I[0]),.clk(clk),.Q(Q[0]));

endmodule