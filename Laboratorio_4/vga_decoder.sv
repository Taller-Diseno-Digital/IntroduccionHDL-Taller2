module vga_decoder(
    input  logic clk, reset,
    output logic hsync, vsync, enable, clk_out,
    output logic [9:0] x, y,
    output reg [7:0] r, g, b
);
	 assign r = 255;
	 assign g = 35;
	 assign b = 25;
    
    // Instantiate VGA sync module
    vga_sync vga_sync_mod (
        .clk(clk),
        .reset(reset),
        .hsync(hsync),
        .vsync(vsync),
        .enable(enable),
        .clk_out(clk_out),
        .x(x),
        .y(y)
    );
    
    // Instantiate color module
    //color_module color (
    //    .x(x),
    //    .y(y),
    //    .r(r),
    //    .g(g),
    //    .b(b)
    //);
    
endmodule
