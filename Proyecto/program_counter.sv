module program_counter(input logic clk, input logic rst, input logic [31:0] PC, output logic [31:0] PC_out);

	logic [31:0] PC_out_temp;

	always_ff@(posedge clk or posedge rst) begin
	
		if(rst) begin
		
			PC_out_temp = 32'b0;
		
		end
		
		PC_out_temp = PC + 32'b1;
	
	end
	
	assign PC_out = PC_out_temp;

endmodule