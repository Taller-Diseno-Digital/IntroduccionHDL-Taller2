module tb_mod_alu();
    logic [3:0] a,b,result;
    logic [1:0] sel;
    logic cout, negative, zero;

    mod_alu #(.width(4)) dut1(a,b,sel,cout, negative,zero, result);

    initial begin
        a = 0000;
        b = 0000;
        result = 0000;
        cout = 0;
        zero=0;
        negative = 0;
		  #50;
        a = 1110;
        b = 0101;
        sel = 00;
        #50;

        a = 0100;
        b = 0011;
        sel = 01;
        #50;

        a = 0110;
        b = 1010;
        sel = 01;
        #50;
		  
        a = 0110;
        b = 0110;
        sel = 01;
        #50;

        a = 1011;
        b = 0101;
        sel = 10;
        #50;

        a = 1010;
        b = 0110;
        sel = 11;
        #50;
    end
endmodule