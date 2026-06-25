module CTRL_UNIT(

    // input declarations
    input wire [5:0] funct,
    input wire [5:0] opcode,

    // output declarations
    output reg mem_to_reg,
    output reg mem_write,
    output reg branch,
    output reg [2:0] alu_control,
    output reg alu_src,
    output reg reg_dst,
    output reg reg_write,
    output reg jump 

);

reg [1:0] alu_op;

always @(*) begin
    case (opcode)
        // R-type
        6'b000000 : begin 
            reg_write=1; reg_dst=1; alu_src=0; branch=0; mem_write=0; mem_to_reg=0; alu_op=2'b10; jump=0; 
            end 
        // lw
        6'b100011 : begin 
            reg_write=1; reg_dst=0; alu_src=1; branch=0; mem_write=0; mem_to_reg=1; alu_op=2'b00; jump=0; 
        end 
        // sw
        6'b101011 : begin 
            reg_write=0; reg_dst=0; alu_src=1; branch=0; mem_write=1; mem_to_reg=0; alu_op=2'b00; jump=0; 
            end 
        // beq
        6'b000100 : begin 
            reg_write=0; reg_dst=0; alu_src=0; branch=1; mem_write=0; mem_to_reg=0; alu_op=2'b01; jump=0; 
            end 
        // addi
        6'b001000 : begin 
            reg_write=1; reg_dst=0; alu_src=1; branch=0; mem_write=0; mem_to_reg=0; alu_op=2'b00; jump=0; 
            end 
        // j
        6'b000010 : begin 
            reg_write=0; reg_dst=0; alu_src=0; branch=0; mem_write=0; mem_to_reg=0; alu_op=2'b00; jump=1; 
            end 
        default  : begin 
            reg_write=1; reg_dst=1; alu_src=0; branch=0; mem_write=0; mem_to_reg=0; alu_op=2'b00; jump=1; 
            end
    endcase
end

always @(*) begin
    casex({alu_op, funct})
        8'b00_xxxxxx  : alu_control = 3'b010; // add (Used for load/store, addi)
        8'b01_xxxxxx  : alu_control = 3'b110; // subtract (Used for beq)
        8'b1x_100000  : alu_control = 3'b010; // add (R-type funct=32)
        8'b1x_100010  : alu_control = 3'b110; // subtract (R-type funct=34)
        8'b1x_100100  : alu_control = 3'b000; // and (R-type funct=36)
        8'b1x_100101  : alu_control = 3'b001; // or (R-type funct=37)
        8'b1x_101010  : alu_control = 3'b111; // set less than (R-type funct=42)
        default       : alu_control = 3'b010; // default (often add, as a safe default)
    endcase
end

endmodule
