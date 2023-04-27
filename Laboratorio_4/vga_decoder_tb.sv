module vga_decoder_tb();
	logic clk, rst;
	logic hsync, vsync, enable, clk_out;
   reg [7:0] r, g, b;

	vga_decoder dut1(clk, rst, hsync, vsync, enable, clk_out, r, g, b);
	
		always 
		begin 
			#1 clk = ~clk;
		end

    initial begin
      clk = 1'b0;
      rst = 1'b0;
		#10;
      rst = 1'b1;
		#10;
      rst = 1'b0;
		
	end
	
endmodule