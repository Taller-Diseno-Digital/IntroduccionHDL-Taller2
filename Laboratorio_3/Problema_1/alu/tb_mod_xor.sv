module tb_mod_xor();
    logic [3:0] a,b,y;

    mod_xor #(.width(4)) dut(a,b,y);

    initial begin
        a = 0;
        b = 0;
		  y = 0;
		  #50;
        assert (y === 0) 
        else   $error("Failed case a = 0 & b = 0");
        #50;
        a = 0;
        b = 1;
        assert (y === 1) 
        else   $error("Failed case a = 0 & b = 1");
        #50;
        a = 1;
        b = 0;
        assert (y === 1) 
        else   $error("Failed case a = 1 & b = 0");
        #50;
        a = 1;
        b = 1;
        assert (y === 0) 
        else   $error("Failed case a = 1 & b = 1");
        #50;
    end

endmodule