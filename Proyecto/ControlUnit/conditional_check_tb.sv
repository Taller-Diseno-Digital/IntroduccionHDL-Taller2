module conditional_check_tb();
logic[3:0] cond;
logic cout;
logic negative;
logic zero;
logic condEx;

conditional_check dut(cond, cout, negative, zero, condEx);

initial begin

	cond = 4'b0000;
	cout = 1'b0;
	negative = 1'b0;
	zero = 1'b0;
	condEx = 1'b0;

	#5;

	cout = 1'b1;
	cond = 4'b0000;

	#5;

	cond = 4'b0001;

	#5;

	cond = 4'b0010;

	#5;

	cond = 4'b0011;

	#5;

	cond = 4'b0100;

	#5;

	cond = 4'b0101;

	#5;
end


endmodule