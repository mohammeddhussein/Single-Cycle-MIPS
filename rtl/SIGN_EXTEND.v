module sign_extend (

    // input declarations
    input wire  [15:0] instruction_imm,

    // output declarations
    output wire [31:0] sign_imm
);

assign sign_imm = {{16{instruction_imm[15]}}, instruction_imm};

endmodule