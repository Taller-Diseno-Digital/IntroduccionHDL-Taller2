module control_movimiento_tb();
	
    int output_matrix [4][4];
	 logic gano;
	 logic perdio;
	 logic[3:0] condicion_gane;
	 logic [2:0] selector;

    control_movimiento control_movimiento_inst(selector, condicion_gane, output_matrix, gano, perdio);

    initial begin
	     selector = 3'b000;
		  condicion_gane = 4'b1011;
        #100;
	     selector = 3'b001; 

		  #100;
		  selector = 3'b000;

		  #100;
		  
        // Matriz de entrada
		  selector = 3'b011; 
	
		  
		  //input_matrix = '{'{0,0,8,0}, '{0,8,0,0}, '{0,0,8,0}, '{0,0,0,0}};

        // Simulando
        #100;

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  #100;
		  selector = 3'b011; 
		  #100;
		  selector = 3'b011; 
		  #100;
		  selector = 3'b011; 
		  #100;
		  selector = 3'b111; 

        // Simulando
        #100;

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  #100;
		  
		  	// Matriz de entrada
		  selector = 3'b011; 


        // Simulando
        #100;

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  		  
		  #100;
		  
		  
		  // Matriz de entrada
		  selector = 3'b111; 

        // Simulando
        #100;

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  #100;
		  
		  
		  // Matriz de entrada
		  selector = 3'b111; 

        // Simulando
        #100;

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  
		  
		  #100;
		  		  	// Matriz de entrada
		  selector = 3'b100; 


        // Simulando
        #100;

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  #100;
		  
		  selector = 3'b111; 


        // Simulando
        #100;

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		   #100;
		  
		  selector = 3'b010; 


        // Simulando
        #100;

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  
		   #100;
		  
		  selector = 3'b111; 


        // Simulando
        #100;

        // Imprimiendo matriz salida
        $display("\nOutput matrix:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  #100;
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