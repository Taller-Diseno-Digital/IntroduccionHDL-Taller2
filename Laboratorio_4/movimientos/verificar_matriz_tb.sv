module verificar_matriz_tb();

	int input_matrix [4][4];
	int condicion_gane;
	int mov_izq, mov_der, mov_arr, mov_aba;
	int gano;
	int perdio;

	verificar_matriz verificar_matriz_inst(input_matrix, mov_izq, mov_der, mov_arr, mov_aba, condicion_gane, gano, perdio);

	initial begin
	  // Matriz de entrada
	  input_matrix = '{'{0,0,2,4}, {2,4,2,0}, {2,2,4,4}, {0,2,0,4}};
	  condicion_gane = 2048;
	  mov_izq = 0;
	  mov_der = 0;
	  mov_arr = 0;
	  mov_aba = 0;

	  // Imprimiendo matriz entrada
	  $display("Input matrix:");
	  for (int i=0; i<4; i++) begin
			$write("| ");
			for (int j=0; j<4; j++)
				 $write("%d | ", input_matrix[i][j]);
			$display("");
	  end

	  // Simulando
	  #1;

	  // Imprimiendo flags
	  $display("Flags:");
	  
	  $write("%d \nGano: ", gano, "%d \nPerdio: ", perdio);

	end

endmodule