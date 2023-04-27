module control_movimiento_tb();
	
    int input_matrix [4][4];
	 int expected_matrix[4][4];
    int output_matrix [4][4];
	 logic [2:0] selector;

    control_movimiento control_movimiento_inst(input_matrix, selector, output_matrix);

    initial begin
        // Matriz de entrada
		  selector = 3'b010;
        input_matrix = '{'{0,0,2,4}, {2,4,2,0}, {2,2,4,4}, {0,2,0,4}};

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

        // Verificando valores
		  expected_matrix = '{'{2,4,0,0}, {2,4,2,0}, {4,8,0,0}, {2,4,0,0}};
		  
			for (int i=0; i<4; i++) begin
				for (int j=0; j<4; j++) begin
					assert(output_matrix[i][j] == expected_matrix[i][j])
						else $error("Output matrix is incorrect!");
				end
			end
    end

endmodule