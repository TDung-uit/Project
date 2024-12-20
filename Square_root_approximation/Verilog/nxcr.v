module nxcr(start,clk,state);
input start,clk;
output [3:0] state;

	wire [3:0] D;
	next_state nx(state,start,D);
	current_state cr(D,clk,state);
	
endmodule