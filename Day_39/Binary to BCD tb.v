module binary_BCD_tb;
reg clk=1;
reg [8:0] bin;
wire [15:0]bcd;
wire [3:0] ones,tens,hundreds;
Binary_BCD bb(clk,bin,bcd,ones,tens,hundreds);
always #5 clk=~clk;
initial
begin
bin = 9'd0;
#10 bin = 9'd70;
#10 bin = 9'd10;
#10 bin = 9'd100;
#10 bin = 9'd250;
#10 bin = 9'd90;
$finish;
end
endmodule
