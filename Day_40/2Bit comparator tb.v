module twobit_comparator_tb;
reg [1:0] a,b;
wire greater,equal,lesser;
two_bit_comparator uut (a,b,greater,equal,lesser);
initial
begin
a = 2'b00;
b = 2'b00;
#10 a = 2'b01; b = 2'b00;
#10 a = 2'b01; b = 2'b01;
#10 a = 2'b00; b = 2'b01;
#10 a = 2'b10; b = 2'b01;
#10 a = 2'b11; b = 2'b10; 
#10 a = 2'b11; b = 2'b11;
#10 $finish;
end
initial
begin
$monitor($time," A = %b, B = %b, greater = %b, equal = %b, lesser = %b", a, b, greater, equal, lesser);
end
endmodule
