module mov_izquierda(input int matriz_entrada [4][4],
						  output int matriz_resultante [4][4]);
			
	int matriz_temp [4][4];
	int mezclas[4][4];

	always_comb begin
		int n, i, j;
	
		matriz_temp = matriz_entrada;
	
		for (i=0; i < 4; i++) begin //recorriendo filas
			
			for (n=0; n < 3; n++) begin // realizando la lógica 3 veces por fila
			
				for (j=1; j < 4; j++) begin // recorriendo columnas de dercha a izquierda
					
					if (matriz_temp[i][j] != 0 && matriz_temp[i][j-1] == 0) begin
					
						matriz_temp[i][j-1] = matriz_temp[i][j];
						matriz_temp[i][j] = 0;
						
					end
						
					else if (matriz_temp[i][j] != 0 && matriz_temp[i][j-1] == matriz_temp[i][j] 
								&& mezclas[i][j-1] != 1 && mezclas[i][j] != 1) begin
						
						matriz_temp[i][j-1] = matriz_temp[i][j-1] * 2;
						matriz_temp[i][j] = 0;
						mezclas[i][j-1] = 1;
					end
					
				end
			
			end
			
		end

	end
	
	assign matriz_resultante = matriz_temp;
	
endmodule						  