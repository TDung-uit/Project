module controller(start,clk,WER1,WAR1,RER1,RAR1,WER2,WAR2,RER2,RAR2,WER3,WAR3,RER3,RAR3,WER4,RR4,WER5,RR5,AU1,AU2,OE,trictrl,done,state);
input start,clk;
output [2:0] WAR1,RAR1,WAR2,RAR2,WAR3,RAR3;
output WER1,RER1,WER2,RER2,WER3,RER3,WER4,RR4,WER5,RR5,OE,done;
output [1:0] AU1,AU2;
output [9:0] trictrl;
output [3:0] state;

	wire [3:0] D;
	next_state nx(state,start,D);
	current_state cr(D,clk,state);
	CtrlOut out(state,WER1,WAR1,RER1,RAR1,WER2,WAR2,RER2,RAR2,WER3,WAR3,RER3,RAR3,WER4,RR4,WER5,RR5,AU1,AU2,OE,trictrl,done);
	
endmodule 