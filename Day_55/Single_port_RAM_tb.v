module single_port_ram_tb;
parameter data_width = 8;
parameter addr_width = 4;
reg clk, wr;
reg [addr_width-1:0] addr;
reg [data_width-1:0] din;
wire [data_width-1:0] dout;
single_port_ram #(data_width, addr_width) spr(clk, wr, addr, din, dout);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
$monitor($time," wr=%d, addr=%d, din=%d, dout=%d", wr,addr,din,dout);
wr = 1; addr = 4'd3; din = 8'd12;  // Writing to valid addresses (0-15)
#10 wr = 1; addr = 4'd5; din = 8'd7;
#10 wr = 1; addr = 4'd7; din = 8'd22;
#10 wr = 1; addr = 4'd9; din = 8'd121;
#10 wr = 1; addr = 4'd11; din = 8'd141;
#10 wr = 1; addr = 4'd13; din = 8'd101;
#10 wr = 1; addr = 4'd15; din = 8'd110;

#10 wr = 0; addr = 4'd3;
#10 wr = 0; addr = 4'd5;
#10 wr = 0; addr = 4'd7;
#10 wr = 0; addr = 4'd9;
#10 wr = 0; addr = 4'd11;
#10 wr = 0; addr = 4'd13;
#10 wr = 0; addr = 4'd15;
#10 $finish;
end
endmodule
