module tb_mod_and();

    logic [3:0] a,b,y;

    mod_and #(.width(4)) dut(a,b,y);

    initial begin
        a = 0000;
        b = 0001;
		y = 0;
		#50;
        assert (y === 0000) 
        else   $error("Failed case a = 0 & b = 0");
        #50;
        a = 1000;
        b = 1001;
        assert (y === 1000) 
        else   $error("Failed case a = 0 & b = 1");
        #50;
        a = 0111;
        b = 0100;
        assert (y === 0100) 
        else   $error("Failed case a = 1 & b = 0");
        #50;
        a = 1010;
        b = 0101;
        assert (y === 0000) 
        else   $error("Failed case a = 1 & b = 1");
        #50;
    end

endmodule