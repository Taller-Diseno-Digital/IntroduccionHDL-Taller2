module tb_contador_regresivo_parametrizable_2bits();
	logic clk;
	logic reset; 
	logic [1:0] y;

	contador_regresivo_parametrizable #(.width(2)) dut(clk, reset, y);

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
		assert (y === 2) else $error("failed case one");
		#100;
		assert (y === 1) else $error("failed case two");
		#300
		reset = 0;
		#100;
		assert (y === 3) else $error("failed case three");
	end
endmodule