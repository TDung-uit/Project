`timescale 1ns/100ps
module SRtest();
	reg clk;
	reg start;
	parameter N=10;
	parameter a=N*2;
	parameter b=N*16;
	
	reg [4:0] in1,in2;
	wire [4:0] O;
	wire done;
	wire [3:0] state;
	
	squareroot sr(clk,start,in1,in2,O,done,state);
	
	initial begin
	in1 = 5'b11010;
	in2 = 5'b01000;
	end
	initial begin
		clk<=0;
		forever #N clk=~clk;
	end

	initial begin
		start<=1;
		#a start<=0;
		#b $stop;
	end

endmodule