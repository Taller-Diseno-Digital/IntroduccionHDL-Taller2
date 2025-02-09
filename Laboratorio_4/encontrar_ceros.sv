module encontrar_ceros(input int matriz_entrada[4][4],
							  output int lista[16], output int contador);
			
	int contador_temp;
	int matriz_temp[4][4];
	int lista_temp[16];
	
	always_comb begin
		int i, j;
		contador_temp = 0;
		matriz_temp = matriz_entrada;
		lista_temp = lista;
	
		for (i=0; i < 4; i++) begin
		
			for (j=0; j < 4; j++) begin
			
				if (matriz_temp[i][j] == 0) begin
				
					lista_temp[contador_temp] = 4*i + j;
					contador_temp++;
				
				end
			
			end
		
		end
	
	end
	
	assign lista = lista_temp;
	assign contador = contador_temp;
			
endmodule			
		