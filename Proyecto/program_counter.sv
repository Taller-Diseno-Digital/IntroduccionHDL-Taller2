module program_counter(input logic clk, input logic rst, input logic [7:0] PC, output logic [7:0] PC_out);

	logic [7:0] PC_out_temp;

	always_ff@(posedge clk or posedge rst) begin
	
		if(rst) begin
		
			PC_out_temp = 7'b0;
		
		end
		
		PC_out_temp = PC + 7'b0;
	
	end
	
	assign PC_out = PC_out_temp;

endmodule