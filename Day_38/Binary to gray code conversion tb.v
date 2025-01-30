module Binary_Gray_tb;
reg [3:0]x;
wire [3:0]y;
Binary_Gray bg1(x,y);
initial
begin
$monitor($time," The value of x=%b,y=%b",x,y);
x=4'b0000;
#5 x=4'b0001;
#5 x=4'b0010;
#5 x=4'b0011;
#5 x=4'b0100;
#5 x=4'b0101;
#5 x=4'b0110;
#5 x=4'b0111;
#5 x=4'b1000;
#5 x=4'b1001;
#5 x=4'b1010;
#5 x=4'b1011;
#5 x=4'b1110;
#10 $finish;
end
endmodule
