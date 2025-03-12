module clock_divider #(
    parameter N = 4 
)(
input clk_in,
input rst,
output reg clk_out
);
reg [31:0] counter = 0;
always @(posedge clk_in or posedge rst) begin
if (rst) begin
counter <= 0;
clk_out <= 0;
end else if (counter == (N/2 - 1)) begin
counter <= 0;
clk_out <= ~clk_out;
end else begin
counter <= counter + 1;
end
end
endmodule
