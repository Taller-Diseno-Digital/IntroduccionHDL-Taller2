module bcd_deco_6bit_tb();

	logic [5:0] data;
	logic [6:0] BCD_digit_1;
	logic [6:0] BCD_digit_2;
	
	display_6bit deco(data, BCD_digit_1,BCD_digit_2);
	
	initial begin
	$display("Iniciando simulación");
	
	data = 6'b010111;
	#10
	assert (BCD_digit_1 == 7'b001_0010 && BCD_digit_2 == 7'b000_0110) else $error("23 Failed");
	#40
	data = 6'b110111;
	#10
	assert (BCD_digit_1 == 7'b010_0100 && BCD_digit_2 == 7'b010_0100) else $error("55 Failed");
	#40
	data = 6'b011111;
	#10
	assert (BCD_digit_1 == 7'b000_0110 && BCD_digit_2 == 7'b100_1111) else $error("31 Failed");
	#40
	data = 6'b101110;
	#10
	assert (BCD_digit_1 == 7'b100_1100 && BCD_digit_2 == 7'b010_0000) else $error("46 Failed");
	#40
	data = 6'b001111;
	#10
	assert (BCD_digit_1 == 7'b100_1111 && BCD_digit_2 == 7'b010_0100) else $error("15 Failed");

	end
	
endmodule