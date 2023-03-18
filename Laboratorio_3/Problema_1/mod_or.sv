module mod_or #(parameter width)
					(input logic signed[width-1:0] a, input logic signed[width-1:0] b, output logic signed[width-1:0] y);

	
	always_comb begin
		for (int i = 0; i < width; i++) begin
			or or_1(y[i], a[i], b[i]);
		end
	end

endmodule