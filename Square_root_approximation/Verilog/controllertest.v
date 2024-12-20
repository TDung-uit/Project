`timescale 1ns/100ps
module controllertest();
	reg clk;
	reg start;
	wire WER1,RER1,WER2,RER2,ALU1,WER3,RR3,OE,done;
	wire [2:0] state,WAR1,RAR1,WAR2,RAR2;
	wire [1:0] ALU2;
	wire [7:0] trictrl;
	controller  ctrl(.start(start),.clk(clk),.state(state),.WER1(WER1),.WAR1(WAR1),.RER1(RER1),.RAR1(RAR1),.WER2(WER2),.WAR2(WAR2),.RER2(RER2),.RAR2(RAR2),.ALU1(ALU1),.ALU2(ALU2),.WER3(WER3),.RR3(RR3),.OE(OE),.trictrl(trictrl),.done(done));
	initial begin
		clk<=0;
		forever #10 clk=~clk;
	end
	initial begin
		start<=1;
		#20 start<=0;
	end
	//#100 $stop;
endmodule