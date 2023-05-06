module fsm(

    input   logic          clk,  

    input   logic          rst,  

    input   logic          btn_izquierda,  

    input   logic          btn_derecha,  

    input   logic          btn_abajo,  

    input   logic          btn_arriba,  
	 
	 input	logic				flag,

    output  logic  [3: 0]  movement,
	 output logic [3:0] estado_s
	 ); 

                               //    0       1            2    3          4     5                 6                     7         8          9           10    11
    typedef enum logic [ 3 : 0 ] {inicio, izquierda, derecha, arriba, abajo, esperaIzquierda,  esperaDerecha,  esperaArriba, esperaAbajo, perdioGano, espera, control} statetype;

    statetype estado, estado_sig;
	 

	
    always_ff @(posedge clk or posedge rst) begin

        if (rst)  estado = inicio;

        else         estado = estado_sig;

    end

    always_comb begin
	 

        case (estado)


            inicio: begin

					 
					 if (!btn_izquierda)	estado_sig = izquierda;

                else     estado_sig = esperaDerecha;

            end
       

            izquierda: begin 
				
					 
					 if (flag)	estado_sig = perdioGano;

                else          estado_sig = espera;

            end
				
            derecha: begin
					 
					 if (flag)	estado_sig = perdioGano;
                
                else          estado_sig = espera;

            end
				
            arriba: begin		 
					 
					 if (flag)	estado_sig = perdioGano;
                
                else          estado_sig = espera;

            end
				
            abajo: begin

					 if (flag)	estado_sig = perdioGano;
                
                else          estado_sig = espera;

            end
					
				esperaIzquierda: begin

					 if (!btn_izquierda)	estado_sig = izquierda;
                
                else          estado_sig = esperaDerecha;

            end
				
				esperaDerecha: begin

					 if (!btn_derecha)	estado_sig = derecha;
                
                else          estado_sig = esperaArriba;

            end
				
				esperaArriba: begin

					 if (!btn_arriba)	estado_sig = arriba;
                
                else          estado_sig = esperaAbajo;

            end
				
				esperaAbajo: begin

					 if (!btn_abajo)	estado_sig = abajo;
                
                else          estado_sig = esperaIzquierda;

            end

            perdioGano: begin
					 estado_sig = perdioGano;

            end
				
            espera: begin	

                if (btn_izquierda & btn_derecha & btn_arriba & btn_abajo)    estado_sig = control;
                
                else          estado_sig = estado;

            end
				
				control: begin
					 
					 if (!btn_izquierda)	estado_sig = izquierda;

                else     estado_sig = esperaDerecha;
            end
				
        endcase
    end
	
	/*
	assign movement = (estado == izquierda) ? 3'b001  : 
            (estado == derecha) ? 3'b010 : 
            (estado == arriba) ? 3'b0011 : 
            (estado == abajo) ? 3'b100 : 
				(estado == perdioGano) ? 3'b101 : 
				(estado == inicio) ? 3'b000 :
				(estado == espera) ? 3'b110:
            3'b111; 
	*/
	assign movement = estado;
	assign estado_s = estado_sig;
	 endmodule