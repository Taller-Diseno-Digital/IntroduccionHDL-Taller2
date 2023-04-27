module color_module(
	input int matriz_entrada [4][4],
   input [9:0] x,
   input [9:0] y,
	input logic res,
	output logic [11:0] number
   /**output logic [7:0] r,
   output logic [7:0] g,
   output logic [7:0] b*/
);

	localparam	X_INICIO = 170;
	localparam	Y_INICIO = 160;
	localparam	BOX_SIZE = 70;
	localparam	PADDING = 10;
	
	//int number;
	
	
	
    
   always @(*) begin
       if (x >= X_INICIO && x <= X_INICIO + BOX_SIZE && y >= Y_INICIO && y <= Y_INICIO + BOX_SIZE)
		 begin
			number = matriz_entrada[0][0];
		 end
		 else if (x >= X_INICIO && x <= X_INICIO + BOX_SIZE && y >= Y_INICIO + (BOX_SIZE + PADDING) && y <= Y_INICIO + (BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[0][1];
		 end
		 else if (x >= X_INICIO && x <= X_INICIO + BOX_SIZE && y >= Y_INICIO + 2*(BOX_SIZE + PADDING) && y <= Y_INICIO + 2*(BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[0][2];
		 end
		 else if (x >= X_INICIO && x <= X_INICIO + BOX_SIZE && y >= Y_INICIO + 3*(BOX_SIZE + PADDING) && y <= Y_INICIO + 3*(BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[0][3];
		 end 
		 
		 //AUMENTA X
		 
		 else if (x >= X_INICIO + (BOX_SIZE + PADDING) && x <= X_INICIO + (BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO && y <= Y_INICIO + BOX_SIZE)
		 begin
			number = matriz_entrada[1][0];
		 end
		 else if (x >= X_INICIO + (BOX_SIZE + PADDING) && x <= X_INICIO + (BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO + (BOX_SIZE + PADDING) && y <= Y_INICIO + (BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[1][1];
		 end
		 else if (x >= X_INICIO + (BOX_SIZE + PADDING) && x <= X_INICIO + (BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO + 2*(BOX_SIZE + PADDING) && y <= Y_INICIO + 2*(BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[1][2];
		 end
		 else if (x >= X_INICIO + (BOX_SIZE + PADDING) && x <= X_INICIO + (BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO + 3*(BOX_SIZE + PADDING) && y <= Y_INICIO + 3*(BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[1][3];
		 end 
		 
		 //AUMENTA X
		 
		 else if (x >= X_INICIO + 2*(BOX_SIZE + PADDING) && x <= X_INICIO + 2*(BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO && y <= Y_INICIO + BOX_SIZE)
		 begin
			number = matriz_entrada[2][0];
		 end
		 else if (x >= X_INICIO + 2*(BOX_SIZE + PADDING) && x <= X_INICIO + 2*(BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO + (BOX_SIZE + PADDING) && y <= Y_INICIO + (BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[2][1];
		 end
		 else if (x >= X_INICIO + 2*(BOX_SIZE + PADDING) && x <= X_INICIO + 2*(BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO + 2*(BOX_SIZE + PADDING) && y <= Y_INICIO + 2*(BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[2][2];
		 end
		 else if (x >= X_INICIO + 2*(BOX_SIZE + PADDING) && x <= X_INICIO + 2*(BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO + 3*(BOX_SIZE + PADDING) && y <= Y_INICIO + 3*(BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[2][3];
		 end
		 
		 //AUMENTA X
		 
		 else if (x >= X_INICIO + 3*(BOX_SIZE + PADDING) && x <= X_INICIO + 3*(BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO && y <= Y_INICIO + BOX_SIZE)
		 begin
			number = matriz_entrada[3][0];
		 end
		 else if (x >= X_INICIO + 3*(BOX_SIZE + PADDING) && x <= X_INICIO + 3*(BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO + (BOX_SIZE + PADDING) && y <= Y_INICIO + (BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[3][1];
		 end
		 else if (x >= X_INICIO + 3*(BOX_SIZE + PADDING) && x <= X_INICIO + 3*(BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO + 2*(BOX_SIZE + PADDING) && y <= Y_INICIO + 2*(BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[3][2];
		 end
		 else if (x >= X_INICIO + 3*(BOX_SIZE + PADDING) && x <= X_INICIO + 3*(BOX_SIZE + PADDING) + BOX_SIZE && y >= Y_INICIO + 3*(BOX_SIZE + PADDING) && y <= Y_INICIO + 3*(BOX_SIZE + PADDING) + BOX_SIZE)
		 begin
			number = matriz_entrada[3][3];
		 end 
		 
		 //TEXTO NEGRO
		 
		 else if (res == 1)
		 begin
			number = 3;
		 end 
		 
		 // EL RESTO ES BLANCO
		 
		 else
		 begin
			number = 2;
		 end 
		 
		 
   end
    
endmodule
