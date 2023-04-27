module color_module(
    input [9:0] x,
    input [9:0] y,
    output reg [7:0] r,
    output reg [7:0] g,
    output reg [7:0] b
);

    reg [7:0] color_table [0:639][0:479];
    
    // Initialize color table
    initial begin
        // Create a pattern of alternating red and blue stripes
        for (int i = 0; i < 640; i++) begin
            for (int j = 0; j < 480; j++) begin
                if ((i / 80) % 2 == 0) begin
                    color_table[i][j] = 8'b11110000; // red
                end else begin
                    color_table[i][j] = 8'b00001111; // blue
                end
            end
        end
    end
    
    always @(*) begin
        r = color_table[x][y][7:4];
        g = color_table[x][y][3:0];
        b = color_table[x][y][7:4];
    end
    
endmodule
