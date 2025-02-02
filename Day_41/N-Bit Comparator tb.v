module nbit_comparator_tb;
parameter n = 8;
reg [n-1:0] a, b;
 wire greater, equal, lesser, not_equal;
n_bit_comparator #(n) comp1 (a, b, greater, equal, lesser, not_equal);
initial
begin
a = 8'b00000000; b = 8'b00000000; 
#10;
a = 8'b00000101; b = 8'b00000010; 
#10;
a = 8'b00000010; b = 8'b00000010; 
#10;
a = 8'b00000001; b = 8'b00000100; 
#10;
a = 8'b11111111; b = 8'b00000000;
#10;
a = 8'b00000000; b = 8'b11111111;
#10;
a = 8'b10101010; b = 8'b01010101;
#10;
$finish;
end
initial
begin
$monitor($time, " a = %b, b = %b, Greater = %b, Equal = %b, Lesser = %b, Not Equal = %b", a, b, greater, equal, lesser, not_equal);
end
endmodule
