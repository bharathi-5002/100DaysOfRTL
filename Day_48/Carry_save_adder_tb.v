module carry_save_adder_tb;
parameter WIDTH = 4;
reg  [WIDTH-1:0] a, b, c, d;
wire [WIDTH-1:0] sum, carry_out;
carry_save_adder #(WIDTH) uut (.a(a),.b(b),.c(c),.d(d),.sum(sum),.carry_out(carry_out));
initial begin
$monitor("A=%b B=%b C=%b D=%b | Sum=%b Carry=%b", a, b, c, d, sum, carry_out);
a = 4'b0001; b = 4'b0010; c = 4'b0100; d = 4'b1000;
#10;
a = 4'b1010; b = 4'b0101; c = 4'b0011; d = 4'b1100;
#10;
a = 4'b1111; b = 4'b1111; c = 4'b1111; d = 4'b1111; 
#10;
#10; $stop;
end
endmodule
