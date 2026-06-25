module ALU (

    // input declarations
    input wire signed [31:0] A,
    input wire signed [31:0] B,
    input wire        [2:0]  sel,

    // output delcarations
    output reg signed [31:0] ALU_OUT,
    output wire              zero

);

always@(*) begin
    case(sel)
        3'b000:  ALU_OUT = A & B;
        3'b001:  ALU_OUT = A | B;
        3'b010:  ALU_OUT = A + B;
        3'b110:  ALU_OUT = A - B;
        3'b111:  ALU_OUT = A < B;
        default: ALU_OUT = A;
    endcase
end

assign zero = (ALU_OUT == 0) ? 1 : 0;

endmodule