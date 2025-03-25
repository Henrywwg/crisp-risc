module stage_decode(
    input clk,
    input rst_n,
    input 

);

    input logic [31:0]  instruction;
    logic [3:0] alu_op;

    assign rd       = instruction[11:7];
    assign rs1      = instruction[19:15];
    assign rs2      = instruction[24:20];
    assign funct3   = instruction[14:12];
    assign funct7   = instruction[31:25];
    assign opcode   = instruction[6:0];

    //Instantiate our register
    reg_file iREG(
        .clk(clk), 
        .rst_n(rst_n), 
        .write_en(write_wb), 
        .data_in(data_wb), 
        .rd_select(rd_select_wb), 
        .rs1_select(rs1), 
        .rs2_select(rs2), 
        .rs1_out(), 
        .rs2_out() 
    )


    /////////////////////
    // CONTROL SIGNALS //
    /////////////////////
    always_comb begin
        case(opcode)
            ALU_R:  begin

            end
            ALU_I:  begin

            end
            LD:     begin

            end
            ST:     begin

            end
            BR:     begin

            end
            JAL:    begin 

            end
            JALR:   begin

            end
            LUI:    begin

            end
            AUIPC   begin

            end
            ENV:    begin

            end

        endcase


    end



    alu_op = 






endmodule