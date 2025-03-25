import enumerations::*;

module stage_fetch(
    input clk,
    input rst_n,
    /* More to come */

    input pc_old,                                
    input stall,                                //Signal to stall execution to resolve a br/j/hazard
    input ld_pc,                                //Signal to load an extraneous PC value

    output logic instruction_out,
    output logic pc_out

);

    logic [31:0]    instruction;
    logic [4:0]     rd, rs1, rs2;
    logic [2:0]     funct3;
    logic [6:0]     funct7;
    logic [31:0]    pc;
    logic [31:0]    inst_in_pipe    [0:4];
    logic           inst_v          [0:4];


    
    //Parse fields for instructions

    // PC LOGIC
    always_ff @(posedge clk, negedge rst_n) begin
        if(!rst_n)
            pc <= '0;
        else if (stall)
            pc <= pc;
        else if (ld_pc)
            pc <= new_pc;
        else
            pc <= pc + 3'b100;
    end


    always_comb begin
        


    end


    always_ff

endmodule