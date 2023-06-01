module hhclock (seconds,clk);

output reg seconds = 1'b0;
input clk; 
integer count = 1;


always @(posedge clk)
begin
    if(count == 50000000/6) begin 
	 //if(count == 8) begin 
        count   <= 1;
        seconds <= ~seconds;
    end else begin
        count   <= count + 1;
    end 
end

endmodule