module game_2048(

    input   logic          clk,  

    input   logic          rst,  

    input   logic          btn_izquierda,  

    input   logic          btn_derecha,  

    input   logic          btn_abajo,  

    input   logic          btn_arriba,
	 
	 input	logic	[3:0] 	condicion_gane,
	 
	 output  logic  [2: 0]  movement,
	 
	 output logic hsync, vsync, nsync, nblanc, clk_out,
	 
	 output logic [7:0] r, g, b);
	 
	 logic [2:0] selector;
	 int matriz_resultante[4][4];
	 int matriz_modificada[4][4];
	 logic gano;
	 logic perdio;
	 logic flag;
	 
		fsm fsm_inst(clk, rst, btn_izquierda, btn_derecha, btn_abajo, btn_arriba, flag, selector);
		
		control_movimiento control_movimiento_inst(matriz_resultante, selector, condicion_gane,matriz_modificada, gano, perdio);
		
		vga_decoder vga(clk, rst, gano, perdio, matriz_resultante, hsync, vsync, nsync, nblanc, clk_out, r, g, b);

	 assign movement = selector;

endmodule