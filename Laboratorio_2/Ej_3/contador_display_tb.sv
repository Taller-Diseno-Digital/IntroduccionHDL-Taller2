module contador_display_tb();
	logic clk;
	logic reset; 
	logic [6:0] BCD_digit_1;
	logic [6:0] BCD_digit_2;

	contador_display dut(clk, reset, BCD_digit_1, BCD_digit_2);

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
		BCD_digit_1 = 7'b000_0000;
		BCD_digit_2 = 7'b000_0000;
		#50;
		reset = 1;
		#100;
		assert ((BCD_digit_1 === 7'b010_0000) & (BCD_digit_2 === 7'b001_0010)) else $error("Failed case one");
		#100;
		assert ((BCD_digit_1 === 7'b010_0000) & (BCD_digit_2 === 7'b100_1111)) else $error("Failed case two");
		#300
		reset = 0;
		#100;
		assert ((BCD_digit_1 === 7'b010_0000) & (BCD_digit_2 === 7'b000_0110)) else $error("Failed case three");
	end
	
endmodule