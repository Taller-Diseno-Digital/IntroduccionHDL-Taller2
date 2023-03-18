module mod_compl #(parameter width = 4 )(input logic[width-1:0] add_or_sub, output logic [width-1:0] result );

   logic[width-1:0] complement;
	logic cout;
   mod_not #(.width(width)) not_b_mod(add_or_sub, complement);
	mod_sum #(.width(width)) dut_sum_complement(complement, 0001, 0, cout, result);

endmodule