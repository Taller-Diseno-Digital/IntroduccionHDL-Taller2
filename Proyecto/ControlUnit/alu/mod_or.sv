module mod_or #(parameter width) (input logic signed[width-1:0] a, b, 
												 output logic signed[width-1:0] y);
	genvar i;
	generate
		for (i = 0; i < width; i++) begin: forloop
			or dut(y[i], a[i], b[i]);
		end
	endgenerate

endmodule