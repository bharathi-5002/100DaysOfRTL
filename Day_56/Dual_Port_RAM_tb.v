module dual_port_ram_tb;
parameter data_width = 8;
parameter addr_width = 4;
reg clk,w_a,w_b;
reg [addr_width-1:0] addr_a,addr_b;
reg [data_width-1:0] data_a,data_b;
wire [data_width-1:0] q_a,q_b;
dual_port_ram #(data_width, addr_width) dpr(clk,w_a,w_b,addr_a,addr_b,data_a,data_b,q_a,q_b);
initial clk=0;
always #5 clk = ~clk;
initial begin
$monitor($time,"w_a=%d,addr_a=%d,data_a=%d,q_a=%d",w_a,addr_a,data_a,q_a);
$monitor($time,"w_b=%d,addr_b=%d,data_b=%d,q_b=%d",w_b,addr_b,data_b,q_b);
w_a = 0;w_b = 0;
addr_a = 0; addr_b = 0;
data_a = 0; data_b = 0;
// port A
#10 w_a = 1; addr_a = 4'b0111; data_a = 8'hEA;
#10 w_a = 0;
// port B
#10 w_a = 1; addr_a = 4'b0110; data_b = 8'hBF;
#10 w_b = 0;
// port A
#10 addr_a = 4'b0111;
//port B
#10 addr_b = 4'b0110;

#10 w_a = 1;w_b = 1;
addr_a =  4'b1111;  data_a = 8'hAC;
addr_b = 4'b0101; data_b = 8'hDA;
#10 w_a = 0;w_b = 0;
//Read from both ports
#10 addr_a = 4'b1111;
addr_b = 4'b0101;
#20 $stop;
end
endmodule
