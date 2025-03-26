module eprom(
    input wire clk,
    input wire [3:0] addr,
    input wire [7:0] din,
    input wire w_e,
    input wire erase,
    output reg [7:0] data
);
integer i;
reg [7:0] memory [0:15];
always @(posedge clk) begin
if (erase) begin
   for (i = 0; i < 16; i = i + 1)
       memory[i] <= 8'b11111111;
    end
 else if (w_e) begin
    memory[addr] <= din;
    end
end
always @(*) begin
    data = memory[addr]; // Read operation
    end
endmodule
