module tb_mod_alu();
    logic [3:0] a,b,result;
    logic [3:0] sel;
    logic cout, negative, zero;

    mod_alu #(.width(4)) dut1(a,b,sel,cout, negative,zero, result);

    initial begin
        a = 0000;
        b = 0000;
        result = 0000;
		  sel=0;
        cout = 0;
        zero=0;
        negative = 0;
		  #100;
		  assert (result == 4'b0000) 
        else   $error("Failed case #1");
		  
		  //---suma---
        a = 4'b1110;
        b = 4'b0101;
        sel = 0; 
        #100;
		  assert (result == 3) 
        else   $error("Failed case 14 + 5");
		  
		  a = 4'b0010;
        b = 4'b0101;
        sel = 0; 
        #50;
		  assert (result === 4'b0111) 
        else   $error("Failed case 2 + 5");

		  //---resta---
        a = 4'b0100;
        b = 4'b0011;
        sel = 1; 
        #50;
		  assert (result === 4'b0001 & cout === 0) 
        else   $error("Failed case 4 - 3");

        a = 4'b0110;
        b = 4'b1010;
        sel = 1;
        #50;
		  assert (result === 4'b0100 & cout === 0 & negative === 1) 
        else   $error("Failed case 6 - 10");
		  
        a = 4'b0110;
        b = 4'b0110;
        sel = 1;
        #50;
		  assert (result === 4'b0000 & cout === 0 & zero === 1) 
        else   $error("Failed case 6 - 6");

		  // ---not a---
        a = 4'b1011;
        sel = 2; 
        #50;
		  assert (result === 4'b0100 & cout === 0) 
        else   $error("Failed case not 1011");
		  
		  a = 4'b0111;
        sel = 2; 
        #50;
		  assert (result === 4'b1000 & cout === 0) 
        else   $error("Failed case not 0111");

		  //---and---
        a = 4'b1010;
        b = 4'b0110;
		  sel = 3;
        #50;
		  assert (result === 4'b0010 & cout === 0) 
        else   $error("Failed case 1010 and 0110");
		  
        a = 4'b1110;
        b = 4'b0110;
		  sel = 3;
        #50;
		  assert (result === 4'b0110 & cout === 0) 
        else   $error("Failed case 1110 and 0110");

		  //---or---
        a = 4'b1010;
        b = 4'b0110;
        sel = 4; 
        #50;
		  assert (result === 4'b1110 & cout === 0) 
        else   $error("Failed case 1010 or 0110");
		  
		  a = 4'b1110;
        b = 4'b0110;
        sel = 4; 
        #50;
		  assert (result === 4'b1110 & cout === 0) 
        else   $error("Failed case 1110 or 0110");

		  //---xor---
        a = 4'b1010;
        b = 4'b0110;
        sel = 5; 
        #50;
		  assert (result === 4'b1100 & cout === 0) 
        else   $error("Failed case 1010 xor 0110");
		  
		  a = 4'b1110;
        b = 4'b0110;
        sel = 5; 
        #50;
		  assert (result === 4'b1000 & cout === 0) 
        else   $error("Failed case 1110 xor 0110");

		  //---Shift left art
        a = 4'b1010;
        sel = 6;
        #50;
		  assert (result === 4'b0100 & cout === 0) 
        else   $error("Failed case shift left art 1010");

		  a = 4'b1110;
        sel = 6; 
        #50;
		  assert (result === 4'b1100 & cout === 0) 
        else   $error("Failed case shift left art 1110");
		  
		  //---shift left---
        a = 4'b1010;
        sel = 7; 
        #50;
		  assert (result === 4'b0100 & cout === 0) 
        else   $error("Failed case shift left 1010");

		  a = 4'b1110;
        sel = 7; 
        #50;
		  assert (result === 4'b1100 & cout === 0) 
        else   $error("Failed case shift left 1110");
		  
		  //---shift right arit---
        a = 4'b1010;
        sel = 8; 
        #50;
		  assert (result === 4'b1101 & cout === 0) 
        else   $error("Failed case shift right art 1010");
		  
		  a = 4'b1110;
        sel = 8; 
        #50;
		  assert (result === 4'b1111 & cout === 0) 
        else   $error("Failed case shift right art 1110");

		  //---shift right---
        a = 4'b1010;
        sel = 9; 
        #50;
		  assert (result === 4'b0101 & cout === 0) 
        else   $error("Failed case shift right 1010");
		  
		  a = 4'b1110;
        sel = 9; 
        #50;
		  assert (result === 4'b0111 & cout === 0) 
        else   $error("Failed case shift right 1110");
    
    
    
    end

endmodule