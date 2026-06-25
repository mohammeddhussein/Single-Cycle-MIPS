module PC_REG (

    // input declaration
    input wire         CLK,
    input wire         RST,
    input wire  [31:0] PC_next,

    // output declaration
    output reg  [31:0] PC
    
);

always@(posedge CLK or negedge RST) begin
    if(!RST) begin
        PC <= 0;
    end
    else begin
        PC <= PC_next;
    end
end

endmodule
