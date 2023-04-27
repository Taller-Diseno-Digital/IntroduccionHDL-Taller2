module control_movimiento(input int matriz_entrada [4][4], input logic [2:0] selector,
                          output int matriz_resultante [4][4]);
								  
	int matriz_izq[4][4];
	int matriz_der[4][4];
	int matriz_arr[4][4];
	int matriz_aba[4][4];
	
	mov_izquierda mov_izquierda_inst(matriz_entrada, matriz_izq);
	mov_derecha mov_derecha_inst(matriz_entrada, matriz_der);
	mov_arriba mov_arriba_inst(matriz_entrada, matriz_arr);
	mov_abajo mov_abajo_inst(matriz_entrada, matriz_aba);

	mux4_1 mux4_1_inst(matriz_entrada,matriz_izq,matriz_der,matriz_arr,matriz_aba,selector,matriz_resultante);
  
endmodule