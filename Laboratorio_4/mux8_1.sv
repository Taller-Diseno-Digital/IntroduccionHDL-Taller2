module mux8_1(input int matriz_entrada [4][4], input int matriz_izquierda [4][4], input int matriz_derecha [4][4],
				  input int matriz_arriba [4][4], input int matriz_abajo [4][4], input logic [2:0] sel, output int matriz_resultante [4][4]);
				  
	int matriz_zeros [4][4];
	//int matriz_zeros = '{'{4, 0, 0, 0}, '{0, 0, 0, 0}, '{0, 0, 0, 0}, '{0, 0, 0, 0}};
	initial begin
		matriz_zeros = '{'{0, 0, 0, 0}, '{0, 0, 0, 0}, '{0, 0, 0, 0}, '{0, 0, 0, 0}};
	end
	
	always_comb begin
		case (sel)
		 3'b000: matriz_resultante = matriz_zeros;
		 3'b001: matriz_resultante = matriz_izquierda;
		 3'b010: matriz_resultante = matriz_derecha;
		 3'b011: matriz_resultante = matriz_arriba;
		 3'b100: matriz_resultante = matriz_abajo;
		 3'b111: matriz_resultante = matriz_entrada; 
		 default: matriz_resultante = matriz_entrada;
		endcase 
	end
	
				  
endmodule 