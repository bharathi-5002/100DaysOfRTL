module fa_mux(a,b,cin,sum,cout);
input a,b,cin;
output  sum, cout;
wire [3:0] sum_inputs, carry_inputs;
assign sum_inputs[0] = cin;
assign sum_inputs[1] = ~cin;
assign sum_inputs[2] = ~cin;
assign sum_inputs[3] = cin;
assign carry_inputs[0] = 0;
assign carry_inputs[1] = cin;
assign carry_inputs[2] = cin;
assign carry_inputs[3] = 1;
assign sum  = sum_inputs[{a,b}];
assign cout = carry_inputs[{a,b}];
endmodule
