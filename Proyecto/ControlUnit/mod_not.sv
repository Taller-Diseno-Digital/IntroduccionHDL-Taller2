module mod_not #(parameter width = 4) (input logic [width-1:0] a, 
										output logic [width-1:0] y);
	genvar i;
	generate
		for (i = 0; i < width; i++) begin: forloop
			not dut(y[i], a[i]);
		end
	endgenerate

endmodule