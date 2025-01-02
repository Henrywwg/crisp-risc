import enumerations::*;

module stage_fetch(
    input clk,
    input rst_n,
    /* More to come */

);

logic [31:0]    instruction;
logic [4:0]     rd, rs1, rs2;
logic [2:0]     funct3;
logic [6:0]     funct7;

//Parse fields for instructions
assign rd       = instruction[11:7];
assign rs1      = instruction[19:15];
assign rs2      = instruction[24:20];
assign funct3   = instruction[14:12];
assign funct7   = instruction[31:25];
assign opcode   = instruction[6:0];

endmodule