module even_parity_generator(din,parity_bit);
input [3:0]din;
output parity_bit;
assign parity_bit = (^din);
endmodule
