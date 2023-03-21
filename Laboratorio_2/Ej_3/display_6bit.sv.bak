module display_6bit(input  logic [5:0] initial_number,
						output logic [6:0] BCD_digit_1,
						output logic [6:0] BCD_digit_2);
						
		reg [7:0] added_number;
						
		initial begin
			added_number <= initial_number + 6*(initial_number/10);
		end
		
		display_4bits BCD_digit_1_disp( added_number[7:4], BCD_digit_1);
		display_4bits BCD_digit_2_disp( added_number[3:0], BCD_digit_2);
				
endmodule