module ALU2(A,B,select,O);
input [4:0] A,B;
input [1:0] select;
output [4:0] O;
	
	wire [4:0] D0,D1,D2,D3;
	Abs a(B,D0);
	min m(A,B,D1);
	FA5b add(.A(A),.B(B),.S(D2));
	FS5b sub(.A(A),.B(B),.S(D3));
	assign O = (select == 2'b00) ? D0 :
	       (select == 2'b01) ? D1 :
	       (select == 2'b10) ? D2 :
	       (select == 2'b11) ? D3 :
		 	5'bx ;

endmodule