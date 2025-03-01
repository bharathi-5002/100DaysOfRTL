module carry_skip_adder #(parameter WIDTH = 4) (
    input  [WIDTH-1:0] a, b,
    output [WIDTH-1:0] sum,
    output carry_out
);
wire [WIDTH-1:0] p, g;
wire carry;
assign p = a ^ b;
assign g = a & b;
assign sum = p ^ {carry, p[WIDTH-2:0]};
assign carry = g[0] | (p[0] & carry);
assign carry_out = g[WIDTH-1] | (p[WIDTH-1] & carry);
endmodule
