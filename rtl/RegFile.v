module RegFile (

    // input declarations
    input  wire        CLK,
    input  wire        RST,
    input  wire        Wr_En,
    input  wire [4:0]  Rd_Addr1,         // Read Address 1
    input  wire [4:0]  Rd_Addr2,         // Read Address 2
    input  wire [4:0]  Wr_Addr,          // Write Address
    input  wire [31:0] Wr_Data,          // Write Data

    // output declarations
    output wire [31:0] Rd_Data1,
    output wire [31:0] Rd_Data2
    
);

integer i;
reg [31:0] register_file [0:31];

always@(posedge CLK or negedge RST) begin
    if(~RST) begin
        for(i=0;i<32;i=i+1)
            register_file[i] <= 0;
    end
    else if(Wr_En) begin
        register_file[Wr_Addr] = Wr_Data;
    end
end

assign Rd_Data1 = (Rd_Addr1 != 0) ? register_file[Rd_Addr1] : 0;
assign Rd_Data2 = (Rd_Addr2 != 0) ? register_file[Rd_Addr2] : 0;

endmodule