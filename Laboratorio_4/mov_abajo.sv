module mov_abajo(input int matriz_entrada [4][4],
						  output int matriz_resultante [4][4], output int mov);
			
	int matriz_temp [4][4];
	int mezclas[4][4];
	int mov_temp;

	always_comb begin
		int n, i, j;
		mov_temp = 0;
	
		matriz_temp = matriz_entrada;
	
		for (j=0; j < 4; j++) begin //recorriendo columnas
			
			for (n=0; n < 3; n++) begin // realizando la lógica 3 veces por columna
			
				for (i=2; i >= 0; i--) begin // recorriendo filas de abajo hacia arriba
					
					if (matriz_temp[i][j] != 0 && matriz_temp[i+1][j] == 0) begin
					
						matriz_temp[i+1][j] = matriz_temp[i][j];
						matriz_temp[i][j] = 0;
						mov_temp = 1;
						
					end
						
					else if (matriz_temp[i][j] != 0 && matriz_temp[i+1][j] == matriz_temp[i][j] 
								&& mezclas[i+1][j] != 1 && mezclas[i][j] != 1) begin
						
						matriz_temp[i+1][j] = matriz_temp[i+1][j] * 2;
						matriz_temp[i][j] = 0;
						mezclas[i+1][j] = 1;
						mov_temp = 1;
					end
					
				end
			
			end
			
		end

	end
	
	assign matriz_resultante = matriz_temp;
	assign mov = mov_temp;
	
endmodule	