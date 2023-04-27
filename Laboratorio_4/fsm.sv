module fsm(

    input   logic          clk,  

    input   logic          rst,  

    input   logic          btn_izquierda,  

    input   logic          btn_derecha,  

    input   logic          btn_abajo,  

    input   logic          btn_arriba,  
	 
	 input	logic				flag,

    output  logic  [2: 0]  movement); 

                                // 0         1          2        3      4
    typedef enum logic [ 2 : 0 ] {inicio, izquierda, derecha, arriba, abajo, perdioGano} statetype;

    statetype estado, estado_sig;

	
    always_ff @(posedge clk or posedge rst) begin

        if (rst)  estado <= inicio;

        else         estado <= estado_sig;

    end

    always_comb begin
	 

        case (estado)


            inicio: begin

                // movement <= 3'b000;
					 
					 if (flag)	estado_sig = perdioGano;

                else if (!btn_izquierda)    estado_sig = izquierda;

                else if(!btn_derecha)    estado_sig = derecha;

                else if(!btn_arriba)     estado_sig = arriba;
                
                else if(!btn_abajo)     estado_sig = abajo;
                
                else          estado_sig = inicio;

            end
       

            izquierda: begin

                // module moviemiento_izquierda (dentro se llama al VGA para generar figuras)

                // module puntaje (dentro se llama la logica de puntaje para mostrar el 7 segmentos)

                // module numero aleatorio (dentro se llama al VGA para generar figuras)

                // module gano (dentro se llama al VGA para generar el mensaje)

                // module perdio (dentro se llama al VGA para generar mensaje)

                // movement <= 3'b001;
					 
					 if (flag)	estado_sig = perdioGano;

                else if (!btn_izquierda)    estado_sig = izquierda;

                else if(!btn_derecha)    estado_sig = derecha;

                else if(!btn_arriba)     estado_sig = arriba;
                
                else if(!btn_abajo)     estado_sig = abajo;
                
                else          estado_sig = inicio;

            end
				
            derecha: begin

                // module moviemiento_derecha (dentro se llama al VGA para generar figuras)

                // module puntaje (dentro se llama la logica de puntaje para mostrar el 7 segmentos)

                // module numero aleatorio (dentro se llama al VGA para generar figuras)

                // module gano (dentro se llama al VGA para generar el mensaje)

                // module perdio (dentro se llama al VGA para generar mensaje)

                // movement <= 3'b010;
					 
					 if (flag)	estado_sig = perdioGano;

                else if (!btn_izquierda)    estado_sig = izquierda;

                else if(!btn_derecha)    estado_sig = derecha;

                else if(!btn_arriba)     estado_sig = arriba;
                
                else if(!btn_abajo)     estado_sig = abajo;
                
                else          estado_sig = inicio;

            end
				
            arriba: begin

                // module moviemiento_arriba (dentro se llama al VGA para generar figuras)

                // module puntaje (dentro se llama la logica de puntaje para mostrar el 7 segmentos)

                // module numero aleatorio (dentro se llama al VGA para generar figuras)

                // module gano (dentro se llama al VGA para generar el mensaje)

                // module perdio (dentro se llama al VGA para generar mensaje)

					 // movement <= 3'b011;					 
					 
					 if (flag)	estado_sig = perdioGano;

                else if (!btn_izquierda)    estado_sig = izquierda;

                else if(!btn_derecha)    estado_sig = derecha;

                else if(!btn_arriba)     estado_sig = arriba;
                
                else if(!btn_abajo)     estado_sig = abajo;
                
                else          estado_sig = inicio;

            end
				
            abajo: begin

                // module moviemiento_abajo (dentro se llama al VGA para generar figuras)

                // module puntaje (dentro se llama la logica de puntaje para mostrar el 7 segmentos)

                // module numero aleatorio (dentro se llama al VGA para generar figuras)

                // module gano (dentro se llama al VGA para generar el mensaje)

                // module perdio (dentro se llama al VGA para generar mensaje)
            
					 // movement <= 3'b100;
					 
					 if (flag)	estado_sig = perdioGano;

                else if (!btn_izquierda)    estado_sig = izquierda;

                else if(!btn_derecha)    estado_sig = derecha;

                else if(!btn_arriba)     estado_sig = arriba;
                
                else if(!btn_abajo)     estado_sig = abajo;
                
                else          estado_sig = inicio;

            end
				
            perdioGano: begin

                //movement <= 3'b101;
					 estado_sig = perdioGano;

            end
        endcase
    end
	
	assign movement = (estado == izquierda) ? 1'b001  : 
            (estado == derecha) ? 1'b010 : 
            (estado == arriba) ? 1'b0011 : 
            (estado == abajo) ? 1'b100 :
				(estado == perdioGano) ? 1'b101 : 
            1'b000; 
	 
	 endmodule