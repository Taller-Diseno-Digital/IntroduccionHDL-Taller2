`timescale 1 ps / 1 ps
module cpu_tb();

logic clk, rst;

	 always begin
		clk = 1; #50; clk = 0; #50;
	 end
	
	cpu dut(clk, rst);	
	
initial begin

	rst = 1'b0;
	clk = 1'b0;

	#1;
	
	rst = 1'b1;
	
	#1;
	
	rst = 1'b0;
	
	
	#50;
	
	#50;
	
	#50;
	
	#50;
	
	#50;
end

endmodule 
