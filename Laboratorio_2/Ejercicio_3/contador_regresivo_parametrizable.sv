module contador_regresivo_parametrizable #(parameter width = 4)(input logic clk, 
																					input logic reset, 
																					output reg [width -1:0] y);			
				
		
	always_ff @(negedge clk, negedge reset) begin
		if (!reset)   y<= 2**width - 1;
		else if(y == 0)  y<= 2**width - 1;
		else       y<= y - 1;
		end
endmodule 
																			
