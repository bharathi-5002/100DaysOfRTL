module priority_decoder_tb;
reg [2:0] i;
wire [7:0] y;
wire valid;
priority_decoder uut (i,y,valid);
initial
begin
i = 3'b000;
#10;
i = 3'b001;
#10;
i = 3'b010;
#10;
i = 3'b011;
#10;
i = 3'b100;
#10;
i = 3'b101;
#10;
i = 3'b110;
#10;
i = 3'b111;
#10;        
i = 3'b110;
#10;
i = 3'b101;
#10;
i = 3'b100;
#10;
i = 3'b011;
#10;
i = 3'b010;
#10;
i = 3'b001;
#10;
i = 3'b000;
#10;
$finish;
end
initial
begin
$monitor($time," I = %b, Y = %b, VALID = %b",i,y,valid);
end
endmodule
