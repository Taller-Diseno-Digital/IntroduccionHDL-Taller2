module display_6bit(input  logic [5:0] initial_number,
						output reg [6:0] BCD_digit_1,
						output reg [6:0] BCD_digit_2);
						
		reg [7:0] added_number;
		
		assign added_number = initial_number + 6*(initial_number/10);
		
		display_4bits BCD_digit_1_disp( added_number[7:4], BCD_digit_1);
		display_4bits BCD_digit_2_disp( added_number[3:0], BCD_digit_2);
				
endmodule