module carry_select_adder(
input  [7:0] a, b,
input cin,
output [7:0] sum,
output       cout
);
wire [4:0] carry;
assign carry[0] = cin;
wire [3:0] sum0;
wire C0;
ripple_carry_adder4 rca1 (a[3:0], b[3:0], carry[0], sum0, c0);
wire [3:0] sum1_0, sum1_1;
wire c1_0, c1_1;
ripple_carry_adder4 rca2_0 (a[7:4], b[7:4], 1'b0, sum1_0, c1_0);
ripple_carry_adder4 rca2_1 (a[7:4], b[7:4], 1'b1, sum1_1, c1_1);
assign sum[3:0] = sum0;
assign sum[7:4] = (c0) ? sum1_1 : sum1_0;
assign cout = (c0) ? c1_1 : c1_0;
endmodule
module ripple_carry_adder4 (
input  [3:0] a, b,
input cin,
output [3:0] sum,
output cout
);
wire [3:0] carry;
assign carry[0] = cin;
fulladder fa0 (a[0], b[0], carry[0], sum[0], carry[1]);
fulladder fa1 (a[1], b[1], carry[1], sum[1], carry[2]);
fulladder fa2 (a[2], b[2], carry[2], sum[2], carry[3]);
fulladder fa3 (a[3], b[3], carry[3], sum[3], cout);
endmodule
module fulladder (
input  a, b, cin,
output sum, cout
);
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (cin & (a ^ b));
endmodule
