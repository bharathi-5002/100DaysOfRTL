module alu_tb;
reg [3:0] a, b;
reg [3:0] s;
wire [3:0] y;
alu a1 (a,b,s,y);
initial
begin
$monitor($time,"a=%d,b=%d,s=%d,y=%d", a, b, s, y);
a = 4'b0101;b = 4'b0011;
s = 4'b0001; //add
#10;
s = 4'b0010; //sub
#10;
s = 4'b0011; //mul
#10;
s = 4'b0100; //div
#10;
s = 4'b0101; //and
#10;
s = 4'b0110; //or
#10;
s = 4'b0111; //not a
#10;
s = 4'b1000; //not b
#10;
s = 4'b1001; //nand
#10;
s = 4'b1010; //nor
#10;
s = 4'b1011; //exnor
#10;
s = 4'b1100; //exor
#10;
s = 4'b1111;
#10;
$finish;
end
endmodule
