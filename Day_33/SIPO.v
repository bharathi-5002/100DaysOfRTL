module sipo(clk,reset,serial_in,parallel_out);
    input clk,reset,serial_in;
    output reg [3:0] parallel_out;
    reg [3:0] shift_reg;
    always @(posedge clk)
    begin
        if (reset)
        begin
            shift_reg <= 4'b0000;
            parallel_out <= 4'b0000;
        end
        else
        begin
            shift_reg <= {shift_reg[2:0], serial_in};
            parallel_out <= shift_reg;
        end
    end
endmodule
