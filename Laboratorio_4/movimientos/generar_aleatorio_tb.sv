module generar_aleatorio_tb();

	int matriz_entrada [4][4];
	int matriz_resultante [4][4];
	logic [2:0] selector;

	generar_aleatorio generar_aleatorio_inst(matriz_entrada, selector, matriz_resultante);

	initial begin
	  // Matriz de entrada
	  matriz_entrada = '{'{0,0,0,0}, {0,0,0,0}, {0,0,0,0}, {0,0,0,0}};
	  selector = 3'b001;

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

	  // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", matriz_resultante[i][j]);
            $display("");
        end
	  
	end
	

endmodule