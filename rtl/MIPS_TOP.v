module MIPS_TOP (

    // input declaration
    input wire clk, rst,   
    
    // output declaration
    output wire [3:0] out_check

);

// Internal Signals
wire [31:0] instr;
wire [31:0] pc, pc_plus4, pc_branch;
wire [31:0] src_a, src_b, alu_result;

wire [31:0] sign_imm;
wire [31:0] mem_rd_data;
wire [31:0] rd_data2;
wire [31:0] wr_data3;
wire [4:0]  wr_addr3;

// Control Signals
wire        mem_write;
wire [2:0]  alu_control;
wire        jump;
wire        branch;
wire        mem_to_reg;
wire        alu_src;
wire        reg_dst;
wire        zero;
wire        reg_write;

wire [31:0] mux1_out;
wire [31:0] mux2_out;

assign pc_plus4 = pc + 4;
assign pc_branch = pc_plus4 + (sign_imm << 2);

assign out_check = register_file_inst.register_file[16][3:0];


////////////////////////// Instantiaion //////////////////////////////

PC_REG pc_reg_inst (

    .CLK(clk),
    .RST(rst),
    .PC_next(mux2_out),

    .PC(pc)

);

sign_extend sign_extend_inst (
    .instruction_imm(instr[15:0]),
    .sign_imm(sign_imm)
);

RAM #(.DEPTH (256), .WIDTH (8) ) instr_mem (

    .CLK(clk),
    .Wr_En(0),
    .Wr_Data(0),
    .Addr(pc),

    .Rd_Data(instr)
);

RAM #(.DEPTH (256), .WIDTH (8) ) data_mem (

    .CLK(clk),
    .Wr_En(mem_write),
    .Addr(alu_result),
    .Wr_Data(rd_data2),

    .Rd_Data(mem_rd_data)    
);

RegFile register_file_inst (

    .CLK(clk ),
    .RST(rst),
    .Wr_En(reg_write ),
    .Rd_Addr1(instr[25:21]),
    .Rd_Addr2(instr[20:16]),
    .Wr_Addr(wr_addr3),
    .Wr_Data(wr_data3),

    .Rd_Data1(src_a ),
    .Rd_Data2(rd_data2)
);

ALU alu_inst (

    .A(src_a ),
    .B(src_b ),
    .sel(alu_control),

    .zero(zero ),
    .ALU_OUT(alu_result)
);

CTRL_UNIT ctrl_unit_inst(

    .funct(instr[5:0] ),
    .opcode(instr[31:26] ),

    .mem_to_reg(mem_to_reg ),
    .mem_write(mem_write ),
    .branch(branch ),
    .alu_control(alu_control),
    .alu_src(alu_src ),
    .reg_dst(reg_dst ),
    .reg_write(reg_write ),
    .jump(jump )
);

// MUXES
MUX2X1 MUX1 (
    .IN0(pc_plus4),
    .IN1(pc_branch),
    .SEL(zero & branch),
    .OUT(mux1_out)
);
MUX2X1 MUX2 (
    .IN0(mux1_out),
    .IN1(({pc_plus4[31:28], instr[25:0], 2'b00})),
    .SEL(jump),
    .OUT(mux2_out)
);
MUX2X1 MUX3 (
    .IN0(instr[20:16]),
    .IN1(instr[15:11]),
    .SEL(reg_dst),
    .OUT(wr_addr3)
);
MUX2X1 MUX4 (
    .IN0(rd_data2),
    .IN1(sign_imm),
    .SEL(alu_src),
    .OUT(src_b)
);
MUX2X1 MUX5 (
    .IN0(alu_result),
    .IN1(mem_rd_data),
    .SEL(mem_to_reg),
    .OUT(wr_data3)
);

endmodule
