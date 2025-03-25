module reg_file(
    input logic     clk, 
    input logic     rst_n, 

    input logic     write_en,               //Write RD
    input logic     [31:0]data_in,          //Destinationi register data
    input logic     [4:0]rd_select,         //Destination register select line
    input logic     [4:0]rs1_select,        //R2 select line
    input logic     [4:0]rs2_select,        //R2 select line
    output logic    [31:0]rs1_out,          //R1 output
    output logic    [31:0]rs2_out           //R2 output
);

    reg [31:0]registers[0:31];

    always_ff @(posedge clk) begin
        if(write_en)
            registers[rd_select] = data_in;
    end    


    //0 register just contains 0 - writeable but not overwritable
    assign rs1_out = (rs1_select == 5'b00000) ? 32'h00000000 : 
                     ((rs1_select == rd_select) ?
                        data_in : 
                        registers[rs1_select]);

    assign rs2_out = (rs2_select == 5'b00000) ? 32'h00000000 : 
                     ((rs2_select == rd_select) ?
                        data_in : 
                        registers[rs2_select]);

    

endmodule