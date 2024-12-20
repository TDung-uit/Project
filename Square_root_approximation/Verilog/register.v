module register(OE,WS,I,clk,O);
input clk,WS,OE;
input [4:0] I;
output [4:0] O;

	RFC r [4:0] (OE,WS,I,clk,O);
	
endmodule