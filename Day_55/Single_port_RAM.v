module single_port_ram #(parameter data_width = 8, parameter addr_width = 4)
(
    input clk,
    input wr,
    input [addr_width-1:0] addr,
    input [data_width-1:0] din,
    output reg [data_width-1:0] dout
);
    reg [data_width-1:0] ram [2**addr_width-1:0];

    always @(posedge clk) begin
        if (wr) 
            ram[addr] <= din;
        else 
          dout <= ram[addr];
    end
endmodule
