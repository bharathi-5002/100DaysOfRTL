module lfsr_tb;
reg clk;
reg rst;
wire [7:0] y;
lfsr uut (.clk(clk),.rst(rst),.y(y));
always #5 clk = ~clk;
initial begin
clk = 0;
rst = 1;  
#10;
rst = 0;
repeat (20) begin
#10;
$display($time," LFSR Output: %b",y);
end
$stop;
end
endmodule
