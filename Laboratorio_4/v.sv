module v();
    logic clk, rst, btn_izquierda, btn_derecha, btn_abajo, btn_arriba, flag;
    logic [2:0] movement;
	 int output_matrix [4][4];
	 logic gano;
	 logic perdio;
	 logic[3:0] condicion_gane;

	 always begin
		clk = 1; #50; clk = 0; #50;
	 end
	 
	 fsm dut1(clk, rst, btn_izquierda, btn_derecha, btn_abajo, btn_arriba, flag, movement);
	 control_movimiento control_movimiento_inst(movement, condicion_gane, output_matrix, gano, perdio);
	 
    initial begin
	     btn_izquierda = 1'b1;
        btn_derecha = 1'b1;
        btn_arriba = 1'b1;
        btn_abajo = 1'b1 ;	
        flag = 1'b0;		 
		  movement = 3'b000;
		  // Imprimiendo matriz salida
        $display("\nOutput matrix inicial:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  
		  rst = 1'b1;
		  #50;
		  rst = 1'b0;
		  
        btn_izquierda = 1'b0;
        btn_derecha = 1'b1;
        btn_arriba = 1'b1;
        btn_abajo = 1'b1 ;
		  
		  // Imprimiendo matriz salida
        $display("\nOutput matrix izquierda:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
        #100;

		  btn_izquierda = 1'b1;
        btn_derecha = 1'b1;
        btn_arriba = 1'b1;
        btn_abajo = 1'b1 ;
		  
		  $display("\nOutput matrix contol:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end
		  #100;
		  
        btn_izquierda = 1'b1;
        btn_derecha = 1'b0;
        btn_arriba = 1'b1;
        btn_abajo = 1'b1 ;
		  
		  $display("\nOutput matrix derecha:");
        for (int i=0; i<4; i++) begin
            $write("| ");
            for (int j=0; j<4; j++)
                $write("%d | ", output_matrix[i][j]);
            $display("");
        end

    end

endmodule