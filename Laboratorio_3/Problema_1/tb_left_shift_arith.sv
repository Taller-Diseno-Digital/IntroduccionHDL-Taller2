module tb_left_shift_arith();
	
		parameter width = 4;
		
		logic [width-1 : 0] in_data, out_data;

		left_shift_arith #(.width(4)) left_shift(in_data, out_data);
		
		initial begin
			in_data = 4'b1010;
			#40
			assert (out_data === 4'b0100);
			$display("Arithmetical left shift passed");
		end
		
endmodule