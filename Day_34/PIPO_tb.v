module pipo_tb;
    reg clk=0,reset;
    reg [3:0]d;
    wire [3:0]q;
    pipo uut (.clk(clk),.reset(reset),.d(d),.q(q));
    always #5 clk = ~clk;
    initial 
    begin
        reset = 1;d=4'b0011;
        $monitor($time, "reset=%b,d=%b,q=%b",reset,d,q);
        #5 reset = 0;
        #5 d=4'b1100;
        #5 d=4'b1010;
        #5 d=4'b0101;
        #5 d=4'b1001;
        #30 $finish;
    end
endmodule
