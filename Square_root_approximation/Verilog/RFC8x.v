module RFC8x(RA,WA,I,clk,O);
input [7:0] RA,WA;
input [4:0] I;
input clk;
output [4:0] O;

	register r [7:0] (RA,WA,I,clk,O);
	
endmodule 