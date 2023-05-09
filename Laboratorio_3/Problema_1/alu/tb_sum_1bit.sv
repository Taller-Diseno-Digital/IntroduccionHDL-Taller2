module tb_sum_1bit();
	logic a, b, cin, cout, sum;

	sum_1bit dut(a, b, cin, cout, sum);

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
        a = 0;
        b = 1;
        assert (sum === 1) 
        else   $error("Failed case a = 0 & b = 1");
        #50;
        a = 1;
        b = 0;
        assert (sum === 1) 
        else   $error("Failed case a = 1 & b = 0");
        #50;
        a = 1;
        b = 1;
        assert (sum === 1) 
        else   $error("Failed case a = 1 & b = 1");
        #50;
    end

endmodule
	