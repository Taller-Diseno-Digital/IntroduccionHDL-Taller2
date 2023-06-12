
`timescale 1 ps / 1 ps
module paint_image_tb();

  // Declare the signals used in the test bench
  logic clk;
  logic reset;
  logic [31:0] r;
  logic [31:0] g;
  logic [31:0] q;
  logic [31:0] b;
  logic hsync;
  logic vsync;
  logic nsync;
  logic nblanc;
  logic clk_out;
  logic [9:0] x;
  logic [9:0] y;   
  logic [15:0] address;
  
  // Instantiate the module under test
  

  paint_image dut (
    .clk(clk),
    .reset(reset),
    .q(q),
    .r(r),
    .g(g),
    .b(b),
    .hsync(hsync),
    .vsync(vsync),
    .nsync(nsync),
    .nblanc(nblanc),
    .clk_out(clk_out),
	 .x(x),
	 .y(y),
	 .address(address)
  );
  
	 always begin
		clk = 1; #50; clk = 0; #50;
	 end
  

  initial begin
	  clk = 0;
	  reset = 0;
    #10 reset = 1;
    #100 reset = 0;
    
  end
  
  always @(posedge clk) begin
  $display("x = %h, y = %h", x, y);
   $display("address = %h", address);
    $display("r = %h, g = %h, b = %h, q = %h", r, g, b, q);
  end


  
endmodule