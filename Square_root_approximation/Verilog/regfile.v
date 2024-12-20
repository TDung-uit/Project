module regfile(RE,WE,RA,WA,I,clk,O);
input [2:0] RA,WA;
input [4:0] I;
input clk,RE,WE;
output [4:0] O;
	
	wire [7:0] O1,O2;
	Decoder2_8 d1(RA,RE,O1);
	Decoder2_8 d2(WA,WE,O2);
	RFC8x r(O1,O2,I,clk,O);
	
endmodule 