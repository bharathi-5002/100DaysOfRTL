module rom_16_8 #(parameter addr_width = 4, parameter data_width = 8 )( clk,addr,dout);
input clk;
input [addr_width-1:0] addr;
output reg [data_width-1:0] dout;
reg [data_width-1:0] memory [0:(1<<addr_width)-1];
// Initialize ROM content
initial begin
memory[0]  = 8'hAA;
memory[1]  = 8'hBB;
memory[2]  = 8'hCC;
memory[3]  = 8'hDD;
memory[4]  = 8'hEE;
memory[5]  = 8'hFF;
memory[6]  = 8'h11;
memory[7]  = 8'h22;
memory[8]  = 8'h33;
memory[9]  = 8'h44;
memory[10] = 8'h55;
memory[11] = 8'h66;
memory[12] = 8'h77;
memory[13] = 8'h88;
memory[14] = 8'h99;
memory[15] = 8'h00;
end
always @(posedge clk) begin
dout <= memory[addr];
end
endmodule
