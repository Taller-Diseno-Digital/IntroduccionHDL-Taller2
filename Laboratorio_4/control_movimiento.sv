module control_movimiento(input int matriz_entrada [4][4], input logic [2:0] selector, input logic[3:0] condicion_gane,
                          output int matriz_resultante [4][4], output logic gano, output logic perdio);
								  
	int matriz_izq[4][4];
	int matriz_der[4][4];
	int matriz_arr[4][4];
	int matriz_aba[4][4];
	int matriz_temp[4][4];
	int matriz_temp_result[4][4];
	
	int mov_izq, mov_der, mov_arr, mov_aba;
	 
	mov_izquierda mov_izquierda_inst(matriz_entrada, matriz_izq, mov_izq);
	mov_derecha mov_derecha_inst(matriz_entrada, matriz_der, mov_der);
	mov_arriba mov_arriba_inst(matriz_entrada, matriz_arr, mov_arr);
	mov_abajo mov_abajo_inst(matriz_entrada, matriz_aba, mov_aba);
	mux8_1 mux8_1_inst(matriz_entrada,matriz_izq,matriz_der,matriz_arr,matriz_aba,selector,matriz_temp);
	verificar_matriz verificar_matriz_inst(matriz_temp, mov_izq, mov_der, mov_arr, mov_aba, (2**condicion_gane), selector, gano, perdio);
	
	generar_aleatorio generador_ale_inst(matriz_temp, selector, matriz_temp_result);

	always_comb begin
		
		matriz_resultante = matriz_temp_result; 
		
	end
	
	
  
endmodule