module eprom_tb;
reg clk, w_e, erase;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] data;


eprom uut (.clk(clk),.addr(addr),.din(din),.w_e(w_e),.erase(erase),.data(data));
always #5 clk = ~clk;
initial begin
clk = 0;
erase = 0;
w_e = 0;

addr = 4'b0001;
din = 8'b10101010;

w_e = 1;
#10 w_e = 0;
#10 $display("Address: %b, Read Data (before erase): %b", addr, data);
        // Perform erase
erase = 1;
#10 erase = 0;
        // Write after erasing
w_e = 1;
#10 w_e = 0;
#10 $display("Address: %b, Read Data (after write): %b", addr, data);
$stop;
end
endmodule
