module verificar_matriz(input int matriz_entrada [4][4],
								input int mov_izq, input int mov_der, input int mov_arr, input int mov_aba,
								input int condicion_gane,
								input logic [2:0] selector,
								output logic gano, output logic perdio);

	logic gano_temp;
	logic perdio_temp;
	
	always_comb begin
	int i,j;
	gano_temp = 0;
	perdio_temp = 0;
		
		for (i=0; i < 4; i++) begin //recorriendo filas
			
			for (j=0; j < 4; j++) begin // recorriendo columnas
			
				if (matriz_entrada[i][j] == condicion_gane) begin
				
					gano_temp = 1;
				
				end
			
			end
			
		end
		
		if ( (mov_izq == 0) && (mov_der == 0) && (mov_arr == 0) && (mov_aba == 0)) begin
			perdio_temp = 1;
		end
		
		if (selector == 3'b000) begin
			
			perdio_temp = 0;
			gano_temp = 0;
		
		end
	
	end
	
	assign gano = gano_temp;
	assign perdio = perdio_temp;
endmodule