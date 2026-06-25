`timescale 1us/1ns

module MIPS_TB;

parameter CLK_PERIOD = 10;
logic clk,rst;
logic [3:0] out_check;

/////////////// Bootloader (Loading instructions) /////////////////
initial begin
    #10 $readmemh("Test1.mem", DUT.instr_mem.mem);
end

initial begin

    initialize();

    reset();

    while(out_check==0)
        @(posedge clk);

    $stop;

    end

always #(CLK_PERIOD/2) clk = ~clk;

task initialize;
begin
    clk=0;
    rst=1;
end
endtask

task reset;
begin
    rst=0;
    #CLK_PERIOD;
    rst=1;
    #CLK_PERIOD;
end
endtask

MIPS_TOP DUT (.*);

endmodule
    