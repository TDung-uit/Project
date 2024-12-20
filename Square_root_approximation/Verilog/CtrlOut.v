module CtrlOut(Q,WER1,WAR1,RER1,RAR1,WER2,WAR2,RER2,RAR2,WER3,WAR3,RER3,RAR3,WER4,RR4,WER5,RR5,AU1,AU2,OE,trictrl,done);
input [3:0] Q;
output [2:0] WAR1,RAR1,WAR2,RAR2,WAR3,RAR3;
output WER1,RER1,WER2,RER2,WER3,RER3,WER4,RR4,WER5,RR5,OE,done;
output [1:0] AU1,AU2;
output [9:0] trictrl;
	
	assign WER1 = ~Q[3] & ~Q[2] & ~Q[1];
	
	assign WAR1[2] = 1'b0;
	assign WAR1[1] = 1'b0;
	assign WAR1[0] = ~Q[2] & ~Q[1] & Q[0];
	
	assign RER1 = (~Q[2] & Q[0]) | (Q[2] & ~Q[1] & ~Q[0]);
	
	assign RAR1[2] = 1'b0;
	assign RAR1[1] = 1'b0;
	assign RAR1[0] = (~Q[2] & Q[1] & Q[0]) | (Q[2] & ~Q[1] & ~Q[0]);
	
	assign WER2 = ~Q[3] & ~Q[2] & ~Q[0];
	assign RER2 = (~Q[2] & Q[1]) | (Q[2] & ~Q[1] & ~Q[0]);
	
	assign WAR2[2] = 1'b0;
	assign WAR2[1] = 1'b0;
	assign WAR2[0] = ~Q[2] & Q[1] & ~Q[0];
	
	assign RAR2[2] = 1'b0;
	assign RAR2[1] = 1'b0;
	assign RAR2[0] = (~Q[2] & Q[1] & Q[0]) | (Q[2] & ~Q[1] & ~Q[0]);
	
	assign WER3 = Q[2];
	assign RER3 = (Q[3]) | (Q[2] & Q[0]) | (Q[2] & Q[1]);
	
	assign WAR3[2] = 1'b0;
	assign WAR3[1] = Q[2] & Q[1];
	assign WAR3[0] = Q[2] & Q[0];
	
	assign RAR3[2] = 1'b0;
	assign RAR3[1] = Q[3] | (Q[2] & Q[1] & Q[0]);
	assign RAR3[0] = Q[3] | (Q[2] & Q[1] & ~Q[0]);
	
	assign AU1[1] = Q[2] & ~Q[1] & ~Q[0];
	assign AU1[0] = ~Q[2] & Q[1] & Q[0];
	assign AU2[1] = Q[2] & Q[1] & Q[0];
	assign AU2[0] = Q[2] & ~Q[1] & Q[0];
	
	assign WER4 = Q[2] & ~Q[1] & ~Q[0];
	assign RR4 = Q[2] & Q[0];
	
	assign WER5 = ~Q[2] & Q[1] & Q[0];
	assign RR5 = Q[2] & Q[1] & ~Q[0];
	
	
	assign OE = Q[3];
	assign done = OE;
	
	assign trictrl[9] = (Q[2] & Q[0])| (Q[2] & Q[1]);
	assign trictrl[8] = Q[2] & Q[1] & ~Q[0];
	assign trictrl[7] = Q[2] & Q[0];
	assign trictrl[6] = Q[2] & ~ Q[1] & ~Q[0];
	assign trictrl[5] = ~Q[3] & ~Q[2] & ~Q[1] & ~Q[0];
	assign trictrl[4] = ~Q[2] & Q[1] & ~Q[0];
	assign trictrl[3] = ~Q[2] & ~Q[1] & Q[0];
	assign trictrl[2] = ~Q[3] & ~Q[2] & ~Q[1] & ~Q[0];
	assign trictrl[1] = (~Q[2] & Q[1]) | (Q[2] & ~ Q[1] & ~Q[0]);
	assign trictrl[0] = (~Q[2] & ~Q[1] & Q[0]) | (~Q[2] & Q[1] & ~Q[0]);
	
endmodule