module even_parity_tb;
reg [3:0] din;
wire parity_bit;
even_parity_generator uut (.din(din),.parity_bit(parity_bit));
initial
begin
$monitor($time,"Input=%b , Parity_bit=%b , %s", din, parity_bit,
(parity_bit == 1'b0) ? "Even Parity" : "Odd Parity");
din = 4'b0000; 
#10;
din = 4'b0001; 
#10;
din = 4'b0011; 
#10;
din = 4'b0111;
#10;
din = 4'b1111;
#10;
din = 4'b1000; 
#10;
din = 4'b1001; 
#10;
din = 4'b1011; 
#10;
din = 4'b0101;
#10;
din = 4'b1010;
#10;
$stop;
end
endmodule
