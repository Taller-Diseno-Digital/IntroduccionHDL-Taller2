module modificar_matiz(
input logic [2:0] selector, 
input logic[3:0] condicion_gane,
output int matriz_resultante [4][4], 
output logic gano, 
output logic perdio
);


	
	  int matriz_modificada[4][4]; 
	  
	  control_movimiento control_movimiento_inst(matriz_modificada, selector, condicion_gane,matriz_modificada, gano, perdio);
	  
	  assign matriz_resultante = matriz_modificada;
	   
	  assign flag = gano || perdio; 
	  
endmodule  