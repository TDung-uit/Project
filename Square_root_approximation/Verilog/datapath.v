module datapath(in1,in2,clk,WER1,WAR1,RER1,RAR1,WER2,WAR2,RER2,RAR2,WER3,WAR3,RER3,RAR3,WER4,RR4,WER5,RR5,AU1,AU2,OE,trictrl,O);
input [2:0] WAR1,RAR1,WAR2,RAR2,WAR3,RAR3;
input WER1,RER1,WER2,RER2,WER3,RER3,WER4,RR4,WER5,RR5,OE;
input [1:0] AU1,AU2;
input [9:0] trictrl;
input [4:0] in1,in2;
input clk;
output [4:0] O;

	wire [4:0] bus1,bus2,bus3,bus4,bus5,bus6,bus7,O1,O2,O3,O4,O5,O6,shift3,shift1;
	
	regfile r1(RER1,WER1,RAR1,WAR1,bus3,clk,bus1);
	regfile r2(RER2,WER2,RAR2,WAR2,bus4,clk,O1);
	
	assign bus2 = (trictrl[0]) ? bus1 : 
						(trictrl[1]) ? O1 : 5'bz;
						
	AU1 a1(bus1,bus2,AU1,O2);
	
	assign bus3 = (trictrl[2]) ? in1 : 
						(trictrl[3]) ? O2 : 5'bz;
	
	assign bus4 = (trictrl[4]) ? in2 : 
						(trictrl[5]) ? O2 : 5'bz; 
	
	assign shift3 = O2 >> 3;
	assign shift1 = O2 >> 1;
	
	regfile r3(RER3,WER3,RAR3,WAR3,bus7,clk,bus6);
	register r4(RR4,WER4,O2,clk,O3);
	register r5(RR5,WER5,shift1,clk,O4);
	
	assign bus5 = (trictrl[7]) ? O3 : 
						(trictrl[8]) ? O4 : 5'bz; 
	
	AU2 a2(bus5,bus6,AU2,O5);
	assign bus7 = (trictrl[6]) ? shift3 : 
						(trictrl[9]) ? O5 : 5'bz;
	
	assign O = (OE) ? bus6 : 5'bz;

endmodule