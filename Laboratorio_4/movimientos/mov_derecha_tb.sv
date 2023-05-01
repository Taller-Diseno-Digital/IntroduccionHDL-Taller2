module mov_derecha_tb();
 
    int input_matrix [4][4];
	 int expected_matrix[4][4];
    int output_matrix [4][4];
	 int mov;

    mov_derecha mov_derecha_inst(input_matrix, output_matrix, mov);

    initial begin
        // Matriz de entrada
        input_matrix = '{'{0, 2, 2, 0}, {0, 4, 2, 2}, {2, 2, 4, 0}, {4, 2, 2, 4}};

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

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  $write("%d \nHubo movimiento: ", mov);

        // Verificando valores
		  expected_matrix = '{'{0, 0, 0, 4}, {0, 0, 4, 4}, {0, 0, 4, 4}, {0, 4, 4, 4}};
		  
			for (int i=0; i<4; i++) begin
				for (int j=0; j<4; j++) begin
					assert(output_matrix[i][j] == expected_matrix[i][j])
						else $error("Output matrix is incorrect!");
				end
			end
    end

endmodule