module two_bit_comparator(a,b,greater,equal,lesser);
input [1:0]a,b;
output reg greater,equal,lesser;
always @(*) begin
if (a > b)
begin
greater = 1;
equal = 0;
lesser = 0;
end
else if (a == b)
begin
greater = 0;
equal = 1;
lesser = 0;
end
else
begin
greater= 0;
equal = 0;
lesser = 1;
end
end
endmodule
