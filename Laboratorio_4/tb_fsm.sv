module tb_fsm();
    logic clk, rst, btn_izquierda, btn_derecha, btn_abajo, btn_arriba, flag;
    logic [2:0] movement;

	 always begin
		clk = 1; #50; clk = 0; #50;
	 end
	 
	 fsm dut1(clk, rst, btn_izquierda, btn_derecha, btn_abajo, btn_arriba, flag, movement);
	 
    initial begin
	     btn_izquierda = 1'b1;
        btn_derecha = 1'b1;
        btn_arriba = 1'b1;
        btn_abajo = 1'b1 ;	
        flag = 1'b0;		  
		  movement = 3'b000;
		  rst = 1'b1;
		  #50;
		  rst = 1'b0;
        btn_izquierda = 1'b0;
        btn_derecha = 1'b1;
        btn_arriba = 1'b1;
        btn_abajo = 1'b1 ;
        #100;

		  btn_izquierda = 1'b1;
        btn_derecha = 1'b1;
        btn_arriba = 1'b1;
        btn_abajo = 1'b1 ;
		  #100	
		  
        btn_izquierda = 1'b1;
        btn_derecha = 1'b0;
        btn_arriba = 1'b1;
        btn_abajo = 1'b1 ;
		  #100
		  
        btn_izquierda = 1'b1;
        btn_derecha = 1'b1;
        btn_arriba = 1'b0;
        btn_abajo = 1'b1 ;
        #100;

        rst = 1'b1; 
		  #100
		  
        rst = 1'b0;
        btn_izquierda = 1'b1;
		  btn_derecha = 1'b1;
        btn_arriba = 1'b1;
        btn_abajo = 1'b0 ;
        #100;

		  rst = 1'b0;
        btn_izquierda = 1'b1;
        btn_derecha = 1'b1;
        btn_arriba = 1'b1;
        btn_abajo = 1'b0 ;
		  flag = 1'b1;	
        #100;

		  
        btn_izquierda = 1'b1;
        btn_derecha = 1'b1;
        btn_arriba = 1'b1;
        btn_abajo = 1'b0;	
        #100;

		  rst = 1'b1;
        #100;

		  rst = 1'b0;
		  flag = 1'b0;
		  btn_izquierda = 1'b1;
        btn_derecha = 1'b1;
        btn_arriba = 1'b0;
        btn_abajo = 1'b1 ;

    end

endmodule