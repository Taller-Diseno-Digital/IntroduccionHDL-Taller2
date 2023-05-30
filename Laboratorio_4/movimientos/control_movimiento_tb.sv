module control_movimiento_tb();
	
    int input_matrix [4][4];
    int output_matrix [4][4];
	 logic gano;
	 logic perdio;
	 int condicion_gane;
	 logic [2:0] selector;

    control_movimiento control_movimiento_inst(input_matrix, selector, condicion_gane, output_matrix, gano, perdio);

    initial begin
        // Matriz de entrada
		  selector = 3'b001;
		  condicion_gane = 4'b1011;
		  
		  input_matrix = '{'{0,4,0,4}, {1024,1024,0,0}, {0,4,0,8}, {0,32,0,16}};

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
		  
		  $display("Gano: ");
		  $display(gano);
		  $display("Perdio: ");
		  $display(perdio);


    end

endmodule