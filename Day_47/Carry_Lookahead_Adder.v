module carry_lookahead_adder(a, b, c, s, co);
input a, b, c;
output s, co;
wire p, g;
assign p = a ^ b;
assign g = a & b;
assign s = p ^ c;
assign co = g | (c & p);
endmodule

module carry_lookahead_adder_str(a, b, c, s, co);
input [3:0] a, b;
input c;
output [3:0] s;
output co;
wire [3:0] p, g, carry;
assign p = a ^ b;
assign g = a & b;
assign carry[0] = c;
assign carry[1] = g[0] | (p[0] & carry[0]);
assign carry[2] = g[1] | (p[1] & carry[1]);
assign carry[3] = g[2] | (p[2] & carry[2]);
assign co = g[3] | (p[3] & carry[3]);
assign s = p ^ carry;
endmodule
