module gray_binary_tb;
reg [3:0]x;
wire [3:0]y;
gray_binary uut(x,y);
initial
begin
$monitor($time," x=%b,y=%b",x,y);
#5 x = 4'b0000;
#5 x = 4'b0001;
#5 x = 4'b0010;
#5 x = 4'b0011;
#5 x = 4'b0100;
#5 x = 4'b0101;
#5 x = 4'b0110;
#5 x = 4'b0111;
#5 x = 4'b1000;
#5 x = 4'b1001;
#5 x = 4'b1010;
#5 x = 4'b1011;
#5 x = 4'b1100;
#5 x = 4'b1101;
#5 x = 4'b1110;
#5 x = 4'b1111;
#10 $finish;
end
endmodule
