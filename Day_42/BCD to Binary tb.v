module bcd_binary_tb;
reg [7:0] bcd;
wire [4:0] binary;
bcd_binary b1(bcd,binary);
initial
begin
$monitor($time,"BCD=%b,Binary=%d",bcd,binary);
bcd=8'b000000000;
#10
bcd = 8'b00000010;
#10
bcd = 8'b00000100;
#10
bcd = 8'b00000110;
#10
bcd = 8'b00001000;
#10
bcd = 8'b00010001;
#10
bcd = 8'b00010011;
#10
bcd = 8'b00011000;
#10
$finish;
end
endmodule
