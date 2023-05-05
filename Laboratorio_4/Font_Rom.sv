module Font_Rom (
input   clk,
input   [31:0] addr,
output   [FONT_WIDTH - 1:0] fontRow );

localparam ADDR_WIDTH = 11; 
localparam DATA_WIDTH = 8; 
localparam FONT_WIDTH = 8; 
localparam FONT_HEIGHT = 16;

logic     [FONT_WIDTH - 1:0] fontRow; 

initial begin
	$readmemb("charrom.txt", charrom);
end


always @(posedge clk)
   begin
		fontRow <= charrom[addr];   
	end
endmodule

