module generar_aleatorio(input int matriz_entrada[4][4],input logic [2:0] selector,
								 output int matriz_resultante[4][4]);

	int matriz_resultante_temp [4][4];
	generar_aleatorio_aux generar_aleatorio_aux_inst(matriz_entrada, matriz_resultante_temp);
	
	always_comb begin
		case (selector)
		 3'b000: matriz_resultante = matriz_resultante_temp; //matriz de ceros
		 3'b001: matriz_resultante = matriz_resultante_temp; // matriz_izq
		 3'b010: matriz_resultante = matriz_resultante_temp; // matriz_der
		 3'b011: matriz_resultante = matriz_resultante_temp; // matriz_arr
		 3'b100: matriz_resultante = matriz_resultante_temp; // matriz_aba
		 default: matriz_resultante = matriz_entrada;
		endcase
	end	
	
endmodule