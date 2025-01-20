module johnson_counter(clk,rst_n,q);
    input clk;
    input rst_n;
    output [3:0] q;
    reg [3:0] q_reg;
    always @(posedge clk)
    begin
        if (~rst_n)
        begin
            q_reg <= 4'b0000;
        end
        else
        begin
            q_reg[0] <= ~q_reg[3];
            q_reg[3:1] <= q_reg[2:0];
        end
    end
    assign q = q_reg;
endmodule
