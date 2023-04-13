module control_movimiento(
	input logic [2:0] movimiento,
	// output de matriz modificada
	output logic puntaje);
	
	
	 always_comb begin

        case (movimiento)


            3'b000: begin
					// se queda quieto
            end
       

            3'b001: begin
					// movimiento izquierda
					//puntaje

            end
				
            3'b010: begin
					// movimiento derecha
					// puntaje
            end
				
            3'b011: begin
					// movimiento arriba
					// puntaje

            end
				
            3'b100: begin
					// movimiento abajo
					// puntaje

            end
				
			default: //caso default
        endcase

    end