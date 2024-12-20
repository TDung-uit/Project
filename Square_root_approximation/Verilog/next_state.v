module next_state(Q,start,D);
input [3:0] Q;
input start;
output [3:0] D;

	assign D[3] = (Q[2] & Q[1] & Q[0]);
	assign D[2] = (Q[2] & ~Q[1]) | (Q[1] & ~Q[2] & Q[0]) | (Q[2] & ~Q[0]);
	assign D[1] = (Q[1] ^ Q[0]);
	assign D[0] = (start & ~Q[0]) | (Q[1] & ~Q[0]) | (Q[2] & ~Q[0]);
	
endmodule