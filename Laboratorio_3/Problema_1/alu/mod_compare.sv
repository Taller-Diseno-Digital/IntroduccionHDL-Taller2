module mod_compare #(parameter width = 4)(
    input logic [width - 1 : 0] a,b,
	input logic sel,
    output logic negative,zero
);

	assign zero = sel ? (a == b) : 0;
	assign negative = sel ? (a < b):0;
endmodule