module excess_three_codes_tb;
reg [3:0]x;
wire [3:0]y;
excess_three_codes etc1(x,y);
initial
begin
$monitor($time," The value of x=%b,y=%b",x,y);
x=4'b0000;
#5 x=4'b0101;
#5 x=4'b1010;
#5 x=4'b1100;
#5 x=4'b1000;
#5 x=4'b0001;
#10 $finish;
end
endmodule
