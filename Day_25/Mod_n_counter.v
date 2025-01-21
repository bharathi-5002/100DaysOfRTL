module mod_counter(clk,rst,y);
input clk,rst;
output reg [2:0] y;
always@(posedge clk)
begin
if(rst | y==3'b110)
y=3'b000;
else
y=y+1;
end
endmodule
