module register_file(input logic clk, input logic rst, input logic [3:0] A1, input logic [3:0] A2, 
							input logic [3:0] A3, input logic [31:0] WD3, input logic [31:0] R15, input logic WE3,
							output logic [31:0] RD1, output logic [31:0] RD2);
							
	logic [31:0] registers [15:0];
	logic [31:0] RD1_temp = 32'h0;
	logic [31:0] RD2_temp = 32'h0;
	
	// escritura
	always_ff @(posedge clk or posedge rst) begin
	
		if (rst) begin
			// Reset behavior
			registers[0] <= 32'h00000;
			registers[1] <= 32'h10000;
			registers[2] <= 32'h20000;
			registers[3] <= 32'h20100;
			registers[4] <= 32'h20200;
			
		end else begin
		
			if (WE3) begin
			
				registers[A3] = WD3;
			
			end
			
			registers[15] = R15;
			
		end
	
	end
	
	// lectura
	always_ff @(negedge clk or posedge rst) begin
	
		if (rst) begin
		 // Reset behavior
			RD1_temp <= 32'h0;
			RD2_temp <= 32'h0;
			
		end 
		
		else begin
			RD1_temp = registers[A1];
			RD2_temp = registers[A2];
		end
	
	end
	
	assign RD1 = RD1_temp;
	assign RD2 = RD2_temp;

endmodule