module freq_div_four_tb;
reg clk_in;
reg rst;
wire clk_out;
fre_div_four uut (.clk_in(clk_in),.rst(rst),.clk_out(clk_out));
always #5 clk_in = ~clk_in;
initial begin
clk_in = 0;
rst = 1;
#10 rst = 0;
#100 
$stop;
end
initial begin
$monitor($time," clk_in = %b , clk_out = %b", clk_in, clk_out);
end
endmodule
