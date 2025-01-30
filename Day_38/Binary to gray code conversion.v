module Binary_Gray(x,y);
input [3:0]x;
output [3:0]y;
assign y[3]=x[3];
assign y[2]=(x[3]^x[2]);
assign y[1]=(x[2]^x[1]);
assign y[0]=(x[1]^x[0]);
endmodule
