module carry_save_adder #(parameter WIDTH = 4) (
    input  [WIDTH-1:0] a, b, c, d,
    output [WIDTH-1:0] sum,
    output [WIDTH-1:0] carry_out
);
wire [WIDTH-1:0] sum1, carry1;
wire [WIDTH-1:0] carry2;
assign sum1   = a ^ b ^ c;
assign carry1 = (a & b) | (b & c) | (c & a);
assign sum   = sum1 ^ d;
assign carry2 = sum1 & d;
assign carry_out = carry1 | carry2;
endmodule
