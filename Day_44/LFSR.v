module lfsr(clk,rst,y);
input clk, rst;
output reg [7:0] y;
always @(posedge clk or posedge rst) begin
if (rst)
y <= 8'b00000001;
else begin
y <= {y[6:0], y[7] ^ y[5] ^ y[4] ^ y[3]};
end
end
endmodule
