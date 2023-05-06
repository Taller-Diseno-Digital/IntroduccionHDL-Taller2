module gano(input int matriz_entrada [4][4], input int condicion_gane,
				output int gano);

	int gano_temp;
	
	always_comb begin
	int i,j;
		
		for (i=0; i < 4; i++) begin //recorriendo filas
			
			for (j=0; j < 4; j++) begin // recorriendo columnas
			
				if (matriz_entrada[i][j] == condicion_gane) begin
				
					gano = 1;
				
				end
			
			end
			
		end
	
	end

endmodule