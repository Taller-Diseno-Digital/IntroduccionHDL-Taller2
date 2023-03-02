module sevensegHexa(
	input logic [5:0] data,
	output logic [6:0] segments);
		
	
	always_comb begin
	  case(data)
		 6'h0: segments = 7'b1111110; // 0
		 6'h1: segments = 7'b0110000; // 1
		 6'h2: segments = 7'b1101101; // 2
		 6'h3: segments = 7'b1111001; // 3
		 6'h4: segments = 7'b0110011; // 4
		 6'h5: segments = 7'b1011011; // 5
		 6'h6: segments = 7'b1011111; // 6
		 6'h7: segments = 7'b1110000; // 7
		 6'h8: segments = 7'b1111111; // 8
		 6'h9: segments = 7'b1110011; // 9
		 6'ha: segments = 7'b1110111; // A
		 6'hb: segments = 7'b0011111; // b
		 6'hc: segments = 7'b1001110; // C
		 6'hd: segments = 7'b0111101; // d
		 6'he: segments = 7'b1001111; // E
		 6'hf: segments = 7'b1000111; // F
		 default: segments = 7'b0000000; // no display
	  endcase
	  // output_segments = ~output_segments; // invert for common anode display
	end
endmodule
