module n_bit_comparator #(parameter n = 8)(a, b, greater, equal, lesser, not_equal);
input [n-1:0] a, b;
output reg greater, equal, lesser, not_equal;
always @(*) 
begin
if (a > b)
begin
greater = 1;
equal = 0;
lesser = 0;
not_equal = 1;
end
else if (a == b)
begin
greater = 0;
equal=1;
lesser = 0;
not_equal = 0;
end
else
begin
greater = 0;
equal = 0;
lesser = 1;
not_equal = 1;
end
end
endmodule
