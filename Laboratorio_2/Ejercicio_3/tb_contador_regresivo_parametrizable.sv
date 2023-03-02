module tb_contador_regresivo_parametrizable();
	logic clk;
	logic reset; 
	logic [3:0] y;

	contador_regresivo_parametrizable #(.width(4)) dut(clk, reset, y);

// generate clock 
	always 
		begin 
			clk = 0; 
			#50;
			clk = 1;
			#50;
		end
		
		
	initial begin
	// Se debe inicializar los valores
		clk = 0;
		reset = 0;
		y = 0;
		#50;
		reset = 1;
		#100;
		assert (y === 14) else $error("failed case one");
		#100;
		assert (y === 13) else $error("failed case two");
		#300
		reset = 0;
		#100;
		assert (y === 15) else $error("failed case three");
	end
endmodule