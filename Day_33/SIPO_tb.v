module sipo_tb;
    reg clk;
    reg reset;
    reg serial_in;
    wire [3:0] parallel_out;
    sipo uut (clk,reset,serial_in,parallel_out);
    always
    begin
        #5 clk = ~clk;
    end
    initial
    begin
        clk = 0;
        reset = 0;
        serial_in = 0;
        reset = 1;
        #10;
        reset = 0;
        #10 serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 0;
        #20;
        $finish;
    end
    initial begin
        $monitor("Time = %0t | Serial In = %b | Parallel Out = %b", $time, serial_in, parallel_out);
    end
endmodule
