module tb_frecuencia_4bits();

logic clk;  
logic reset;
logic [3 : 0] a,b;
logic [3:0] sel;
logic cout,negative,zero;
logic [3 : 0] result;

frecuencia #(.width(4)) freq(clk, reset, a, b, sel, cout, negative, zero, result);
	
always 
	begin 
		clk = 0; 
		#50;
		clk = 1;
		#50;
	end
		
		
	initial begin
	// Se debe inicializar los valores
		clk = 0;
		reset = 0;
		a = 4'b0000;
      b = 4'b0000;
      result = 4'b0000;
		sel=0;
      cout = 0;
      zero=0;
      negative = 0;
		#50;
		reset = 1;
		#100;
		
		//---suma---
      a = 4'b1110;
      b = 4'b0101;
      sel = 0; 
      #100;
		assert (result == 3) 
      else   $error("Failed case 14 + 5");
		
		end
endmodule
		
		