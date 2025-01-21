module ring_counter(clk,rst_n,q);
    input clk;
    input rst_n;
    output reg [3:0] q;
    always @(posedge clk)
    begin
        if (~rst_n)
        begin
            q <= 4'b0001;
        end 
        else
        begin
            q <= {q[2:0], q[3]};
        end
    end
endmodule
