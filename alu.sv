module alu(
    input   logic [31:0]    a,
    input   logic [31:0]    b,
    input   logic [2:0]     funct3,
    input   logic [6:0]     funct7,
    input   logic [6:0]     opcode,
    output  logic [31:0]    c,
    output  logic           cout,
    output  logic           lt,
    output  logic           eq,
    output  logic           gt
);

logic [3:0]alu_op;
//  0 ADD
//  
//

    always_comb begin
        case(alu_op)
            4'h0: c = a + b;
            4'h1: c = a << b;
            4'h2: c = {32(a < b)};
            4'h3: c = {{31'h00000000}, (a < b)};
            4'h4: c = a ^ b;
            4'h5: c = a >> b;
            4'h6: c = a | b;
            4'h7: c = a & b;
            4'h8: c = a - b;
            4'h9: a >>> b ;
        endcase

    end

   assign lt = (a - b)[31];     //Look at MSB if 1 then A is smaller
   assign sq = a == b;
   assign gt = (a - b)[31];     //Look at MSB if 0 then A is larger

endmodule