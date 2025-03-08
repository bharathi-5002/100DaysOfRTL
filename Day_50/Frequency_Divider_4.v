module fre_div_four(clk_in,rst,clk_out);
input  clk_in, rst;
output reg clk_out;
reg [1:0] count;
always @(posedge clk_in or posedge rst) 
begin
if (rst) begin
count <= 0;
clk_out <= 0;
end else begin
count <= count + 1;
if (count == 2'b11)
clk_out <= ~clk_out;
end
end
endmodule
