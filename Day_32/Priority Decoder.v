module priority_decoder(i,y,valid);
input [2:0] i;
output reg [7:0] y;
output reg valid;
always @ (*) 
begin
casez(i)
3'b111:begin y=8'b10000000;valid = 1;end
3'b110:begin y=8'b01000000;valid = 1;end
3'b101:begin y=8'b00100000;valid = 1;end
3'b100:begin y=8'b00010000;valid = 1;end
3'b011:begin y=8'b00001000;valid = 1;end
3'b010:begin y=8'b00000100;valid = 1;end
3'b001:begin y=8'b00000010;valid = 1;end
3'b000:begin y=8'b00000001;valid = 1;end
default: begin y=8'b00000000;valid=0;end
endcase
end
endmodule
