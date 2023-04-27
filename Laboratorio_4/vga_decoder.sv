module vga_decoder(
   input  logic clk, reset,
   output logic hsync, vsync, nsync, nblanc, clk_out,
   output logic [7:0] r, g, b
);

	int matriz_entrada [4][4];
	logic [9:0] x, y;
	logic [11:0] number;
	logic clk_out_copy;
	logic res;
	
	initial begin
		matriz_entrada = '{'{0, 16, 4, 0}, '{8, 32, 256, 1024}, '{2048, 4, 16, 0}, '{32, 8, 256, 4}};
	
	end
	
    // Instantiate VGA sync module
   vga_sync vga_sync_mod (
      .clk(clk),
      .reset(reset),
      .hsync(hsync),
      .vsync(vsync),
      .nsync(nsync),
		.nblanc(nblanc),
      .clk_out(clk_out),
      .x(x),
      .y(y)
	);
	
	Pixel_On_Text2 #(.displayText("Bienvenido al juego!")) t1(
      clk_out_copy,
      240, // text position.x (top left)
      60, // text position.y (top left)
      x, // current position.x
      y, // current position.y
      res  // result, 1 if current pixel is on text, 0 otherwise
    );
    
    // Instantiate color module
   color_module color (
		.matriz_entrada(matriz_entrada),
		.x(x),
      .y(y),
		.res(res),
      .number(number)
   );
	
	color_selector color2 (
      .number(number),
      .r(r),
      .g(g),
      .b(b)
	);
				
	always_comb begin
		clk_out_copy = clk_out;
	end
	  
endmodule
