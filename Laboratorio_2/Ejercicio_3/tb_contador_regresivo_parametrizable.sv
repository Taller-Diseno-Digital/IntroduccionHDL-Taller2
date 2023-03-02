module tb_contador_regresivo_parametrizable();
	logic clk;
	logic reset; 
	logic [4 - 1:0] y;

	contador_regresivo_parametrizable #(.width(4)) dut(clk, reset, y);

// generate clock 
	always 
		begin 
			clk = 1; 
			#50;
			clk = 0;
			#50;
		end
		
		
	initial begin
		clk = 0;
		reset = 0;
		y = 4'b0000;
		#50;
		assert (y === 4'b1110) else $error("failed case one");
		#50;
		assert (y === 4'b1101) else $error("failed case two");
		#500;
		reset = 1;
		assert (y === 4'b1111) else $error("failed case three");
	end
endmodule