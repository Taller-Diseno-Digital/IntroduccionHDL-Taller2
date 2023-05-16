module mov_derecha (input int matriz_entrada [4][4],
						  output int matriz_resultante [4][4], output int mov);
						 
	int matriz_temp [4][4];
	int mezclas[4][4];
	int mov_temp;
	

	always_comb begin
		int n, i, j;
		mov_temp = 0;
	
		matriz_temp = matriz_entrada;
	
		for (i=0; i < 4; i++) begin //recorriendo filas
			
			for (n=0; n < 3; n++) begin // realizando la lógica 3 veces por fila
			
				for (j=2; j >= 0; j--) begin // recorriendo columnas de dercha a izquierda
					
					if (matriz_temp[i][j] != 0 && matriz_temp[i][j+1] == 0) begin
					
						matriz_temp[i][j+1] = matriz_temp[i][j];
						matriz_temp[i][j] = 0;
						mov_temp = 1;
						
					end
						
					else if (matriz_temp[i][j] != 0 && matriz_temp[i][j+1] == matriz_temp[i][j] 
								&& mezclas[i][j+1] != 1 && mezclas[i][j] != 1) begin
						
						matriz_temp[i][j+1] = matriz_temp[i][j+1] * 2;
						matriz_temp[i][j] = 0;
						mezclas[i][j+1] = 1;
						mov_temp = 1;
					end
					
				end
			
			end
			
		end

	end
	
	assign matriz_resultante = matriz_temp;
	assign mov = mov_temp;
	
endmodule