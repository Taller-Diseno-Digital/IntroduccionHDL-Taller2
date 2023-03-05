module bcd_deco_tb();

	logic [3:0] data;
	logic [6:0] segments;
	display_4bits deco(data, segments);
	
	initial begin
	$display("Iniciando simulación");
	
	data = 4'b0001;
	#10
	assert (segments == 7'b100_1111) else $error("01 Failed");
	#40
	data = 4'b0010;
	#10
	assert (segments == 7'b001_0010) else $error("02 Failed");
	#40
	data = 4'b0011;
	#10
	assert (segments == 7'b000_0110) else $error("03 Failed");
	#40
	data = 4'b1010;
	#10
	assert (segments == 7'b000_1000) else $error("10 Failed");
	#40
	data = 4'b1111;
	#10
	assert (segments == 7'b011_1000) else $error("15 Failed");

	end
	
endmodule
	