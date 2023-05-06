module verificar_matriz_tb();

	int input_matrix [4][4];
	logic[3:0] condicion_gane;
	int mov_izq, mov_der, mov_arr, mov_aba;
	logic [2:0] selector;
	logic gano;
	logic perdio;

	verificar_matriz verificar_matriz_inst(input_matrix, mov_izq, mov_der, mov_arr, mov_aba, condicion_gane,selector, gano, perdio);

	initial begin
	  // Matriz de entrada
	  selector = 3'b000;
	  input_matrix = '{'{0,0,0,0}, {0,2048,0,0}, {0,0,0,0}, {0,0,0,0}};
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
	  
	  $display(gano);
	  $display(perdio);

	end

endmodule