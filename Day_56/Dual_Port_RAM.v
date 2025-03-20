module dual_port_ram #(parameter data_width = 8,parameter addr_width = 4)
(clk,w_a,w_b,addr_a,addr_b,data_a,data_b,q_a,q_b);
input clk,w_a,w_b;
input [addr_width-1:0] addr_a;
input [addr_width-1:0] addr_b;
input [data_width-1:0] data_a;
input [data_width-1:0] data_b;
output reg [data_width-1:0] q_a;
output reg [data_width-1:0] q_b;
reg [data_width-1:0] ram [2**addr_width-1:0];
always@(posedge clk) begin
if(w_a)
ram[addr_a] <= data_a;
else
q_a <= ram[addr_a];
end
always@(posedge clk) begin
if(w_b)
ram[addr_b] <= data_b;
else
q_b <= ram[addr_b];
end
endmodule
