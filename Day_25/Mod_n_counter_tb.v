module mod_n_counter_tb;
reg clk,rst;
wire [2:0] y;
mod_counter mnc(clk,rst,y);
always #5 clk=~clk;
initial 
begin
$monitor($time," The value of rst=%b, y=%b",rst,y);
clk=0;
rst=1'b1;
#10 rst=1'b0;
#180 rst=1'b1;
end
endmodule
