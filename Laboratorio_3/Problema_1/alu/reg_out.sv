module reg_out #(parameter width = 4)(
  input logic clk,  
  input logic reset,
  input logic [width - 1 : 0] result_in,
  input logic cout_in,negative_in,zero_in,
  output logic [width - 1 : 0] result_out,
  output logic cout_out,negative_out,zero_out
);

// Registro de salida con clock negativo
always_ff @(negedge clk) begin
  if (reset) begin
     result_out <= '0;
	  cout_out <= '0;
	  negative_out <= '0;
	  zero_out <= '0;
	  
  end else begin
     result_out <= result_in;
	  cout_out <= cout_in;
	  negative_out <= negative_in;
	  zero_out <= zero_in;
  end
end

endmodule
