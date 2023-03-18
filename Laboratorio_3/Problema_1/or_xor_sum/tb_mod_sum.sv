module tb_mod_sum();
	logic [3:0] a, b, sum;
	logic cout,cin,negative;

	mod_sum #(.width(4)) dut(a, b,cin, cout, negative, sum);

	    initial begin
        a = 0;
        b = 0;
		  cin = 0;
        cout = 0;
        sum = 0;
        #50;
        assert (sum === 0) 
        else   $error("Failed case a = 0 & b = 0");
        #50;
        a = 2;
        b = 3;
        assert (sum === 5) 
        else   $error("Failed case a = 0 & b = 1");
        #50;
        a = 14;
        b = 5;
        assert (sum === 19) 
        else   $error("Failed case a = 1 & b = 0");
        #50;
        a = 15;
        b = 3;
        assert (sum === 18) 
        else   $error("Failed case a = 1 & b = 1");
        #50;
    end

endmodule