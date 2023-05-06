module game_2048(

    input   logic          clk,  

    input   logic          rst,  

    input   logic          btn_izquierda,  

    input   logic          btn_derecha,  

    input   logic          btn_abajo,  

    input   logic          btn_arriba,
	 
	 input	logic	[3:0] 	condicion_gane);
	 
	 logic [2:0] selector;
	 int matriz_entrada[4][4];
	 int matriz_resultante[4][4];
	 logic gano;
	 logic perdio;
	 logic flag;
	 
	 fsm fsm_inst(clk, rst, btn_izquierda, btn_derecha, btn_abajo, btn_arriba, flag, selector);
	 
	 control_movimiento control_movimiento_inst(matriz_entrada, selector, condicion_gane, matriz_resultante, gano, perdio);
	 
	 assign flag = gano || perdio;


endmodule