module conditional_check(
input logic[3:0] cond,
input logic cout,
input logic negative,
input logic zero,
output logic condEx
);


logic condEx_out;
	always @(*) begin
	
		case (cond)

			4'b0000: condEx_out = zero;
			4'b0001: condEx_out = ~zero;
			4'b0010: condEx_out = cout;
			4'b0011: condEx_out = ~cout;
			4'b0100: condEx_out = negative;
			4'b0101: condEx_out = ~negative;
			4'b1110: condEx_out = 1'b1;
			default: condEx_out = 1'b0;
					
		endcase
	
	end
	
	assign condEx = condEx_out;
	
endmodule
 