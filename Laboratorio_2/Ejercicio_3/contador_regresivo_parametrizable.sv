module contador_regresivo_parametrizable #(parameter width = 4)(input logic clk, 
																					input logic reset,  
																					input logic [width - 1:0] a, 
																					output logic [width -1:0] y);

	always_ff @(posedge clk, posedge reset)
		if (reset)  y <= 2**width - 1;
		else        y <= a - 1;
endmodule 
																			
