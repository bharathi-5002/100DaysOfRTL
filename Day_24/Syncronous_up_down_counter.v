module up_down_counter_tb;
reg clk,rst,up_down;
wire [2:0] y;
up_down_counter uut(clk,rst,up_down,y);
always #5 clk=~clk;
initial
begin
$monitor($time," rst=%b,y=%b",rst,y);
clk=0;
rst=1;
#10 rst=0;
up_down=1;
#90 rst=1;
#95 rst=0;
up_down=0;
#100 rst=1;
end
endmodule
