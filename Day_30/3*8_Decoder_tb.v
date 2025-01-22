module decoder_tb;
reg [2:0]a;
wire [7:0]y;
decoder d1(a,y);
initial
begin
$monitor($time," The value of a=%b,y=%b",a,y);
a=3'b000;
#5 a=3'b111;
#5 a=3'b001;
#5 a=3'b110;
#5 a=3'b010;
#5 a=3'b101;
#5 a=3'b011;
#5 a=3'b100;
#10 $finish;
end
endmodule
