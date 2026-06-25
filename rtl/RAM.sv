module RAM #(parameter WIDTH = 8, parameter DEPTH = 3*1024) (
    // input declarations
    input wire [$clog2(DEPTH)-1:0] Addr,
    input wire [(4*WIDTH)-1:0]     Wr_Data,
    input wire                     CLK,
    input wire                     Wr_En,

    // output declarations
    output wire [(4*WIDTH)-1:0]    Rd_Data
);

reg [WIDTH-1:0] mem [0:DEPTH-1];

initial begin
    for(integer i=0;i<DEPTH;i=i+1) begin
        mem[i] = 0;
    end
end

always@(posedge CLK) begin
    if(Wr_En) begin
        {mem[Addr+3],mem[Addr+2],mem[Addr+1],mem[Addr]} <= Wr_Data;
    end
end

assign Rd_Data = {mem[Addr+3],mem[Addr+2],mem[Addr+1],mem[Addr]};

endmodule
