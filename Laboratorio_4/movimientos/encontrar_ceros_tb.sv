module encontrar_ceros_tb();

	int matriz_entrada [4][4];
	int lista[16];
	int contador;

	encontrar_ceros encontrar_ceros_inst(matriz_entrada, lista, contador);

	initial begin
	  // Matriz de entrada
	  matriz_entrada = '{'{0, 2, 2, 0}, {0, 4, 2, 2}, {2, 2, 4, 0}, {4, 2, 2, 4}};

	  // Imprimiendo matriz entrada
	  $display("Input matrix:");
	  for (int i=0; i<4; i++) begin
			$write("| ");
			for (int j=0; j<4; j++)
				 $write("%d | ", matriz_entrada[i][j]);
			$display("");
	  end

	  // Simulando
	  #1;

	  // Imprimiendo lista salida
	  $display("\nOutput matrix:");
	  for (int i=0; i<16; i++) begin
			$write("%d | ", lista[i]);
	  end
	  
	end

endmodule