module squareroot(clk,start,in1,in2,O,done,state);
input start,clk;
input [4:0] in1,in2;
output [4:0] O;
output done;
output [3:0] state;


wire [2:0] WAR1,RAR1,WAR2,RAR2,WAR3,RAR3;
wire WER1,RER1,WER2,RER2,WER3,RER3,WER4,RR4,WER5,RR5,OE;
wire [1:0] AU1,AU2;
wire [9:0] trictrl;

	controller c(start,clk,WER1,WAR1,RER1,RAR1,WER2,WAR2,RER2,RAR2,WER3,WAR3,RER3,RAR3,WER4,RR4,WER5,RR5,AU1,AU2,OE,trictrl,done,state);
	datapath d(in1,in2,clk,WER1,WAR1,RER1,RAR1,WER2,WAR2,RER2,RAR2,WER3,WAR3,RER3,RAR3,WER4,RR4,WER5,RR5,AU1,AU2,OE,trictrl,O);
endmodule