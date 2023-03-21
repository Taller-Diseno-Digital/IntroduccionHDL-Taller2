module tb_principal();

logic [3 : 0] a,b;
logic [3:0] sel;
logic cout,negative,zero,overflow;
logic [6 : 0] result;

principal #(.width(4)) dut1(a,b,sel,cout,negative,zero,overflow,result);
initial begin
        a = 0000;
        b = 0000;
        result = 0000;
		  sel=0;
        cout = 0;
        zero=0;
        negative = 0;
		  overflow = 0;
		  #100;
		  assert (result == 7'b100_0000) 
        else   $error("Failed case #1");
		  
        a = 4'b1110;
        b = 4'b0101;
        sel = 0; 
        #100;
		  assert (result == 7'b011_0000 & cout == 1) 
        else   $error("Failed case 14 + 5");
		  
		  a = 4'b0010;
        b = 4'b0101;
        sel = 0; 
        #50;
		  assert (result === 7'b111_1000) 
        else   $error("Failed case 2 + 5");
		  
		end
endmodule
		