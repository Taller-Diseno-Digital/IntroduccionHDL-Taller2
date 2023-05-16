module color_selector(
    input logic [11:0] number,
    output logic [7:0] r,
    output logic [7:0] g,
    output logic [7:0] b
);

	//logic [7:0] r_temp, g_temp, b_temp;
    
    // Select pastel color based on input number
	 always @(*) begin
    case(number)
		  0:	 	begin r = 8'hE6; g = 8'hE6; b = 8'hE6; end // Pastel gray
        4: 		begin r = 8'hFF; g = 8'hC4; b = 8'hC4; end // Pastel red
        8: 		begin r = 8'hFF; g = 8'hE8; b = 8'hC4; end // Pastel orange
        16: 	begin r = 8'hFF; g = 8'hF7; b = 8'hC4; end // Pastel yellow
        32: 	begin r = 8'hC4; g = 8'hFF; b = 8'hC4; end // Pastel green
        64: 	begin r = 8'hC4; g = 8'hFF; b = 8'hFF; end // Pastel cyan
        128: 	begin r = 8'hC4; g = 8'hC4; b = 8'hFF; end // Pastel blue
        256: 	begin r = 8'hFF; g = 8'hC4; b = 8'hFF; end // Pastel magenta
        512: 	begin r = 8'hFF; g = 8'hD1; b = 8'hDC; end // Pastel pink
		  1024: 	begin r = 8'hFF; g = 8'hDE; b = 8'hAD; end // Pastel peach
        2048: 	begin r = 8'hD5; g = 8'hB8; b = 8'hB8; end // Pastel brown
		  3:     begin r = 0; g = 0; b = 0; end // Black for Text
        default: begin r = 8'hFF; g = 8'hFF; b = 8'hFF; end // Default color (white)
    endcase
	 end

endmodule