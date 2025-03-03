module carry_lookahead_adder_tb;
reg [3:0] a, b;
reg c;
wire [3:0] s;
wire co;
carry_lookahead_adder_str uut (.a(a),.b(b),.c(c),.s(s),.co(co));
initial begin
$monitor($time,"a=%b, b=%b, c=%b, s=%b, co=%b",a,b,c,s,co);
a = 4'b0000; b = 4'b0000; c = 0;
#10;
a = 4'b0001; b = 4'b0001; c = 0;
#10;
a = 4'b1111; b = 4'b0001; c = 0;
#10;
a = 4'b1010; b = 4'b0110; c = 1;
#10;
a = 4'b0111; b = 4'b0001; c = 1;
#10;
a = 4'b1111; b = 4'b1111; c = 1;
#10;
$finish;
end
endmodule
