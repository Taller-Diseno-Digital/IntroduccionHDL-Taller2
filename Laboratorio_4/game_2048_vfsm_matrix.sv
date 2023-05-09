module game_2048_vfsm_matrix(

    input   logic          clk,  

    input   logic          rst,  

    input   logic          btn_izquierda,  

    input   logic          btn_derecha,  

    input   logic          btn_abajo,  

    input   logic          btn_arriba,
	 
	 input	logic	[3:0] 	condicion_gane,
	 
	 output  logic  [2: 0]  movement,
	 
	 output logic hsync, vsync, nsync, nblanc, clk_out,
	 
	 output logic [7:0] r, g, b, output reg [6:0] digit_1, output reg [6:0] digit_2);
	 
	 logic [2:0] selector;
	 int matriz_resultante[4][4];
	 logic gano;
	 logic perdio;
	 logic flag;
	 logic puntaje_temp;
	 
		fsm fsm_inst(clk, rst, btn_izquierda, btn_derecha, btn_abajo, btn_arriba, flag, selector);
		
		//control_movimiento control_movimiento_inst(selector, condicion_gane,matriz_resultante, gano, perdio);
		
		always_comb begin
			if(!btn_izquierda) puntaje_temp = 5'b1011;
			else puntaje_temp = 0;
		end
		
		always_comb begin 
				if(!btn_izquierda) matriz_resultante = '{'{0, 16, 4, 0}, '{8, 32, 256, 1024}, '{2048, 4, 16, 0}, '{32, 8, 256, 4}};
				else matriz_resultante = '{'{0, 4, 4, 0}, 
													'{0, 0, 0, 0}, 
													'{0, 0, 0, 0}, 
													'{0, 0, 0, 0}};
		end
		
		assign puntaje = puntaje_temp;
		
		
		vga_decoder vga(clk, rst, gano, perdio, matriz_resultante, hsync, vsync, nsync, nblanc, clk_out, r, g, b);
		
		display_6bit puntaje_display(puntaje, digit_1, digit_2);

	 assign movement = selector;

endmodule