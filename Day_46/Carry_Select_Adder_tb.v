module carry_select_adder_tb;
reg [7:0] a, b;
reg cin;
wire [7:0] sum;
wire cout;
carry_select_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
$monitor("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", a, b, cin, sum, cout);
a = 8'b00001111; b = 8'b00000001; cin = 0;
 #10;
a = 8'b00001111; b = 8'b00000001; cin = 1;
#10;
a = 8'b10101010; b = 8'b01010101; cin = 0; 
#10;
a = 8'b11111111; b = 8'b11111111; cin = 1; 
#10;
$stop;
end
endmodule
