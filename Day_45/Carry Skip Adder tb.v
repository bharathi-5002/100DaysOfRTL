module carry_skip_adder_tb;
parameter WIDTH = 4;
reg  [WIDTH-1:0] a, b;
wire [WIDTH-1:0] sum;
wire carry_out;
carry_skip_adder #(WIDTH) uut (.a(a), .b(b), .sum(sum), .carry_out(carry_out));
initial begin
a = 4'b0001; b = 4'b0010; #10;
$display("a=%b, b=%b, sum=%b carry=%b", a, b, sum, carry_out);
a = 4'b1010; b = 4'b0101; #10;
$display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry_out);
a = 4'b1111; b = 4'b1111; #10;
$display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry_out);
a = 4'b0101; b = 4'b0101; #10;
$display("a=%b b=%b, sum=%b, carry=%b", a, b, sum, carry_out);
a = 4'b1010; b = 4'b0101; #10;
$display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry_out);
a = 4'b1100; b = 4'b0011; #10;
$display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry_out);
a = 4'b1111; b = 4'b0000; #10;
$display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry_out);
a = 4'b1111; b = 4'b1111; #10;
$display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry_out);
$stop;
end
endmodule
