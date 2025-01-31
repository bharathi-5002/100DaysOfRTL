module Binary_BCD(clk,bin,bcd,ones,tens,hundreds);
input clk;
input [8:0]bin;
output reg [15:0]bcd;
output reg [3:0]ones,tens,hundreds;
integer i;
always @(posedge clk)
begin
bcd=0;
for(i=0;i<9;i=i+1)
begin
if(bcd[3:0] >= 5)
bcd[3:0] = bcd[3:0] + 3;
if(bcd[7:4] >= 5)
bcd[7:4] = bcd[7:4] + 3;
if(bcd[11:8] >= 5)
bcd[11:8] = bcd[11:8] + 3;
if(bcd[15:12] >= 5)
bcd[15:12] = bcd[15:12] + 3;
bcd = {bcd[14:0],bin[8-i]};
ones = bcd[3:0];
tens = bcd[7:4];
hundreds = bcd[11:8];
end
end
endmodule
