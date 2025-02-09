module mod_sum #(parameter width = 4)(
    input logic [width - 1 : 0] a,b,
	 input logic cin,
    output logic cout,
    output logic [width - 1 : 0] sum
);
   genvar i;
	logic [width - 1:0] cin_cout;
	sum_1bit first(a[0], b[0], cin, cin_cout[0], sum[0]);
	generate
		for (i = 1; i < width; i++) begin: forloop
			sum_1bit result(a[i], b[i], cin_cout[i-1], cin_cout[i], sum[i]);   
		end
	endgenerate
	assign cout = cin_cout[width-1];
endmodule