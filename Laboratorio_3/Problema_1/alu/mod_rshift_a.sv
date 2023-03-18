module mod_rshift_a #(parameter width = 4)
									(input logic signed [width-1:0] in_data,
									 output logic signed [width-1:0] out_data);


  always_comb begin
  
    for (int i = 0; i < width; i++) begin
	 
      if (i >= width - 1) //MSB
		
        out_data[i] = in_data[i];
		  
      else
        out_data[i] = in_data[i + 1];
    end
  end
	
endmodule