module ring_counter_tb;
    reg clk;
    reg rst_n;
    wire [3:0] q;
    ring_counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );
    always
    begin
        #5 clk = ~clk;
    end
    initial
    begin
        clk = 0;
        rst_n = 0;
        #10 rst_n = 1;
        #100;
        $finish;
    end
    initial
    begin
        $monitor($time," Reset = %b, q = %b", rst_n, q);
    end
endmodule
