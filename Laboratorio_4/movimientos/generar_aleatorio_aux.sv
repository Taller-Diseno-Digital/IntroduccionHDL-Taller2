module generar_aleatorio_aux(input int matriz_entrada[4][4], output int matriz_resultante[4][4]);

	int matriz_resultante_temp[4][4];
	int lista[16];
	int contador;
	int num_posicion;
	int rand_num;
	int i, j;
	
	encontrar_ceros encontrar_ceros_inst(matriz_entrada, lista, contador);
	
	assign rand_num = contador / 2;
	assign num_posicion = lista[rand_num];
	assign i = num_posicion / 4;
	assign j = num_posicion - 4*i;

	always_comb begin
		matriz_resultante_temp = matriz_entrada;
		matriz_resultante_temp[i][j] = 4;
	end

	assign matriz_resultante = matriz_resultante_temp;

endmodule