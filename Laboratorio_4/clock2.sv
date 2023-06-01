module clock2 (output reg out_clock, input logic clk);

assign out_clock = 1'b0;
integer count = 1;


always @(posedge clk)
begin 
	 if(count == 2) begin 
        count   <= 1;
        out_clock <= ~out_clock;
    end else begin
        count   <= count + 1;
    end 
end

endmodule