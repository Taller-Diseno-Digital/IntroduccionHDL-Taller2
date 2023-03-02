module contador_regresivo_parametrizable #(parameter width = 4)(input logic clk, 
																					input logic reset, 
																					output logic [width -1:0] y);			
				
		
	always_ff @(posedge clk, posedge reset) begin
		if (reset) begin
			y <= 2**width - 1;
		end
		else if(y === 0) begin 
			y <= 2**width - 1;
		end
		else begin       
			y <= y - 1;
		end
		end
endmodule 
																			
