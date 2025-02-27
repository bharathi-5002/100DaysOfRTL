module alu(a,b,s,y);
input [3:0]a,b;
input [3:0] s;
output reg [3:0]y;
always@(*)
begin
case(s)
4'b0001: y = a+b;
4'b0010: y = a-b;
4'b0011: y = a*b;
4'b0100: y = a/b;
4'b0101: y = a&b;
4'b0110: y = a|b;
4'b0111: y = ~a;
4'b1000: y = ~b;
4'b1001: y = ~(a&b);
4'b1010: y = ~(a|b);
4'b1011: y = ~(a^b);
4'b1100: y = a^b;
4'b1101: y = a>b ? a:b;
default: y = 4'b0000;
endcase
end
endmodule
