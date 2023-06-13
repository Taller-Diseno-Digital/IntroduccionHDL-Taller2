module tb_mod_alu();
    logic [31:0] a,b,result;
    logic [3:0] sel;
    logic cout, negative, zero;


    alu dut1(a,b, sel, result, zero, negative, cout);

    initial begin
        a = 32'd0;
        b = 32'd0;
        result = 32'd0;
		  sel=0;
        cout = 0;
        zero=0;
        negative = 0;
		  #100;
		  assert (result == 32'd0) 
        else   $error("Failed case #1");
		  
		  //---suma---
        a = 32'd14;
        b = 32'd5;
        sel = 0; 
        #100;
		  assert (result == 32'd19) 
        else   $error("Failed case 14 + 5");
		  
		  a = 32'd2;
        b = 32'd5;
        sel = 0; 
        #50;
		  assert (result === 32'd7) 
        else   $error("Failed case 2 + 5");

		  //---resta---
        a = 32'd4;
        b = 32'd3;
        sel = 1; 
        #50;
		  assert (result === 32'd1 & cout === 0) 
        else   $error("Failed case 4 - 3");

        a = 32'd6;
        b = 32'd10;
        sel = 1;
        #50;
		  assert (result === 32'd4 & cout === 0 & negative === 1) 
        else   $error("Failed case 6 - 10");
		  
        a = 32'd6;
        b = 32'd6;
        sel = 1;
        #50;
		  assert (result === 32'd0 & cout === 0 & zero === 1) 
        else   $error("Failed case 6 - 6");
    
    end

endmodule