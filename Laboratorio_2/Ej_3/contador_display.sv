module contador_display (input logic clk, 
								input logic reset, 
								output logic [6:0] BCD_digit_1,
								output logic [6:0] BCD_digit_2);
		logic [5:0] y;													
		contador_regresivo #(.width(6)) dut(clk, reset, y);
		display_6bit(y, BCD_digit_1, BCD_digit_2);
		
endmodule