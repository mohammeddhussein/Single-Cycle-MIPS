module MUX2X1 #(parameter WIDTH = 32) (

    // input declaration
    input wire [WIDTH-1:0]  IN0,
    input wire [WIDTH-1:0]  IN1,
    input wire              SEL,

    // output declaration
    output wire [WIDTH-1:0] OUT

);

assign OUT = SEL ? IN1 : IN0;

endmodule
