module contador_display (input logic clk, 
								input logic reset, 
								output reg [6:0] BCD_digit_1,
								output reg [6:0] BCD_digit_2);
		reg [5:0] y;													
		contador_regresivo #(.width(6)) counter(clk, reset, y);
		display_6bit display(y, BCD_digit_1, BCD_digit_2);
		
endmodule