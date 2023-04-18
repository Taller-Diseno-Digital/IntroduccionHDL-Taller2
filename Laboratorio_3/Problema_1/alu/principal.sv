module principal #(parameter width = 4) (	 input logic [width - 1 : 0] a,b,
						 input logic[3:0] sel,
						 output logic cout,negative,zero,overflow,
						 output logic [6 : 0] result);
						 
logic [width - 1 : 0] result_alu;

mod_alu #(.width(width)) alu(a, b, sel, cout, negative, zero, result_alu);

display_hexadecimal display(result_alu, result);

assign overflow = 0;

endmodule