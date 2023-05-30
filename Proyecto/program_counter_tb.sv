module program_counter_tb();

	logic clk;
	logic rst;
	logic [7:0] PC;
	logic [7:0] PC_out;
	
	program_counter program_counter_inst(clk, rst, PC, PC_out);
	
	always begin
	
		clk = 1; #50; clk = 0; #50;
	
	end
	
	initial begin
		
		
		clk = 0;
		rst = 1;
		PC = 7'b0;
		
		#50
		
		rst = 0;
		PC = 7'b1;

		#50
		
		PC = 7'b10;
		
		#50
		
		PC = 7'b11;
		
		#50
		
		PC = 7'b100;
		
		#50
		
		PC = 7'b101;
		
	
	end
	

endmodule