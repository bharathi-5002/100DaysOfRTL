module clk_div_two_tb;
reg clk_in;
reg rst;
wire clk_out;
clk_div_two uut (.clk_in(clk_in),.rst(rst),.clk_out(clk_out));
always #5 clk_in = ~clk_in;
initial begin
clk_in = 0;
rst = 1;  
#20;
rst = 0;
#200;
$stop;
end
initial begin
$monitor($time," clk_in=%b , clk_out=%b", clk_in, clk_out);
end
endmodule
