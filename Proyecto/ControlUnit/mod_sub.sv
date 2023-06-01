module mod_sub #(parameter width = 4)(
    input logic [width - 1 : 0] a,b,
    output logic cout,negative,
    output logic [width - 1 : 0] sub
);
   genvar i;
	logic [width - 1:0] not_b;
	logic [width - 1:0] cin_cout;
	
	mod_not #(.width(4)) not_dut(b,not_b);
	sum_1bit first(a[0], not_b[0], 1, cin_cout[0], sub[0]);
	
	generate
		for (i = 1; i < width; i++) begin: forloop
			sum_1bit result(a[i], b[i], cin_cout[i-1], cin_cout[i], sub[i]);   
		end
	endgenerate
	
	assign negative = sub[width - 1]
	assign cout = cin_cout[width -1];
endmodule