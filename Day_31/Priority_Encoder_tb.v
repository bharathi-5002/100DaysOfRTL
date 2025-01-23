module priority_encoder_tb;
reg [7:0] i;
wire [2:0] y;
wire valid;
priority_encoder uut (i,y,valid);
initial
begin
#10 i = 8'b00000000;
#10 i = 8'b10000001;
#10 i = 8'b01000010;
#10 i = 8'b00100011;
#10 i = 8'b00010100;
#10 i = 8'b00001101;
#10 i = 8'b00000110;
#10 i = 8'b00000011;
#10 i = 8'b00000001;
#10 i = 8'b00000010;
#10 i = 8'b00000101;
#10 i = 8'b00001111;
#10 i = 8'b00011100;
#10 i = 8'b00101101;
#10 i = 8'b01001110;
#10 i = 8'b10001111;
$finish;
end
initial
begin
$monitor($time," I = %b, Y = %b, Valid = %b", i, y, valid);
end
endmodule
