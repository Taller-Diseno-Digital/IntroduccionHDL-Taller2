module tb_mod_not();
    logic [3:0] a,y;

    mod_not #(.width(4)) dut(a,y);

    initial begin
        a = 0011;
		  y = 0;
		  #50;
        assert (y === 1100) 
        else   $error("Failed case a = 0 & b = 0");
        #50;
        a = 1010;
        assert (y === 0101) 
        else   $error("Failed case a = 0 & b = 1");
        #50;
        a = 1111;
        assert (y === 0000) 
        else   $error("Failed case a = 1 & b = 0");
        #50;
        a = 1011;
        assert (y === 0100) 
        else   $error("Failed case a = 1 & b = 1");
        #50;
    end

endmodule