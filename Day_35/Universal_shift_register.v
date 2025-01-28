module universal_shift_register(clk,rst,load,in,out,rs,ls);
input clk,rst,load,rs,ls;
input [3:0]in;
output reg [3:0]out;
always@(posedge clk or posedge rst)
begin 
if(rst)
begin 
out <= 4'b0;
end 
else if(load)
begin 
out <= in;
end 
else if(ls)
begin 
out <= {out[2:0],1'b0};
end 
else if(rs)
begin 
out <= {1'b0,out[3:1]};
end
end
endmodule
