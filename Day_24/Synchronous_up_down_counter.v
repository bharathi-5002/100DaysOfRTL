module up_down_counter(clk,rst,up_down,y);
input clk,rst,up_down;
output reg [2:0] y;
always@(posedge clk)
begin
if(rst)
y=4'b0000;
else
begin
if(up_down)
y=y+1;
else
y=y-1;
end
end
endmodule
