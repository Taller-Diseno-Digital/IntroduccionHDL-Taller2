module modificar_matriz_tb();

    int output_matrix [4][4];
	 logic gano;
	 logic perdio;
	 int condicion_gane;
	 logic [2:0] selector;

    modificar_matiz modificar_matiz_inst(selector, condicion_gane, output_matrix, gano, perdio);

    initial begin
	 	 selector = 3'b000;
		 condicion_gane = 4'b1011;
		 #1
		 $display("\nOutput matrix incial:");
       for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end

		  
		  
		  selector = 3'b001;

        // SimulandoS
		  
        // Imprimiendo matriz salida 
        $display("\nOutput matrix izquierda:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		   // Imprimiendo matriz salida
        $display("\nOutput matrix izquierda sin cambiar input:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  selector = 3'b111;

        // Simulando
        #1;

        // Imprimiendo matriz salida
        $display("\nOutput matrix control:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  
		  	selector = 3'b011;

        // Simulando
        #1;

        // Imprimiendo matriz salida
        $display("\nOutput matrix arriba:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  selector = 3'b111;

        // Simulando
        #1;

        // Imprimiendo matriz salida
        $display("\nOutput matrix control:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		   selector = 3'b011;

        // Simulando
        #1;

        // Imprimiendo matriz salida
        $display("\nOutput matrix arriba2:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  		  selector = 3'b111;

        // Simulando
        #1;

        // Imprimiendo matriz salida
        $display("\nOutput matrix control:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		   selector = 3'b010;

        // Simulando
        #1;

        // Imprimiendo matriz salida
        $display("\nOutput matrix derecha:");
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