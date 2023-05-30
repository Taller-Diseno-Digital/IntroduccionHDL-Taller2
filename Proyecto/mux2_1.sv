module mux2_1 (input logic data0,
					  input logic data1,
					  input logic select,
					  output logic result);

  always_comb begin
    if (select)
      result = data1;
    else
      result = data0;
  end

endmodule