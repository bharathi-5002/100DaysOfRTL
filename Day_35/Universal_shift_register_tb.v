module universal_shift_register_tb;
reg clk,rst,rs,ls,load;
reg [3:0]in;
wire [3:0]out;
universal_shift_register uut(.clk(clk),.rst(rst),.load(load),.rs(rs),.ls(ls),.in(in),.out(out));
initial
begin 
$monitor($time,"clk=%b,reset=%b,load=%b,Input=%b,Output=%b,Left_shift=%b,Right_shift=%b",clk,rst,load,in,out,ls,rs);
end 
initial
begin 
clk=0;
forever #5 clk=~clk;
end 
initial
begin 
rst=1;load=0;ls=0;rs=0;in=4'b1001;
#5 rst=0;
#10 load=1;
#10 load=0;
#20 ls=1;
#10 ls=0;
#40 rs=1;
#10 rs=0;
#40 in=4'b1111;
#10 load=1;
#10 load=0;
#20 ls=1;
#10 ls=0;
#40 rs=1;
#10 rs=0;
#10;
$finish;
end
endmodule
