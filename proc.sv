module proc(
    input clk,
    input rst_n
);

stage_fetch iFetch(
    .clk(clk),
    .rst_n(rst_n),
    .pc_old(),
    .stall(),
    .ld_pc(),
    .instruction_out(),
    .pc_out()
);

stage_decode iDecode(
    .clk(),
    .rst_n()
    );

stage_executre iXcute();

stage_memory iMem();

stage_writeback iWb();



endmodule