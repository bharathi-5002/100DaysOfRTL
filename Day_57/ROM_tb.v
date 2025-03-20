module rom_16_8_tb;
parameter addr_width = 4;
parameter data_width = 8;
parameter clk_period = 10;
reg clk;
reg [addr_width-1:0] addr;
wire [data_width-1:0] dout;
rom_16_8 #(addr_width,data_width) uut (clk,addr,dout);
always begin
clk = 1; # (clk_period / 2);
clk = 0; # (clk_period / 2);
end
initial begin
addr = 0;
repeat (16) begin
#clk_period;
$display($time,"Address = %h , Data = %h", addr, dout);
addr = addr + 1;
end
#clk_period;
$finish;
end
endmodule
