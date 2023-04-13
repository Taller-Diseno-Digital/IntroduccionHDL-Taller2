module reg_in #(parameter width = 4)(
  input logic clk,  
  input logic reset,
  input logic [width - 1 : 0] a_in,
  input logic [width - 1 : 0] b_in,
  input logic [3:0] sel_in,
  output logic [width - 1 : 0] a_out,
  output logic [width - 1 : 0] b_out,
  output logic [3:0] sel_out
);

// Registro de entrada con clock positivo
always_ff @(posedge clk) begin
  if (reset) begin
     a_out <= '0;
	  b_out <= '0;
	  sel_out <= '0; 
  end else begin
     a_out <= a_in;
	  b_out <= b_in;
	  sel_out <= sel_in;
  end
end


endmodule
