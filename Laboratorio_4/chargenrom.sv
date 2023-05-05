module chargenrom(input logic [7:0] ch,
input logic [2:0] xoff, yoff,
output logic pixel);

logic [5:0] charrom[2047:0]; // character generator ROM
logic [7:0] line; // a line read from the ROM
// Initialize ROM with characters from text file

initial begin
	$readmemb("charrom.txt", charrom);
end

// Index into ROM to find line of character


assign line = charrom[yoff + {ch, 3'b000}];

assign pixel = line [3'd7-xoff];

endmodule