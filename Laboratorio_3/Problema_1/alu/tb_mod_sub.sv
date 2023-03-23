module tb_mod_sub();
	logic [3:0] a, b, not_b, sum;
	logic cout;

	mod_sub #(.width(4)) dut(a, not_b,, cout, sum);

	    initial begin
        a = 1011;
        b = 0110;
        cout = 0;
        sum = 0;
        #50;
        assert (sum === 0100) 
        else   $error("Failed case a = 0 & b = 0");
        #50;
        b = 1011;
        a = 0110;
        assert (sum === 1011) 
        else   $error("Failed case a = 0 & b = 1");
        #50;
    end

endmodule