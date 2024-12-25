package enumerations;

    //main RISC processor opcodes
    typedef enum logic [6:0]{
        ALU_R   = 7'b0110011,
        ALU_I   = 7'b0010011,
        LD      = 7'b0000011,
        ST      = 7'b0100011,
        BR      = 7'b1100011,
        JAL     = 7'b1101111;
        JALR    = 7'b1100111;
        LUI     = 7'b0110111;
        AUIPC   = 7'b0010111;       //Jump as far as I can tell (add upper immediate PC)
        ENV     = 7'b1110011;
    } risc_opcode;


    //funct3 base ALU codes
    typedef enum logic [2:0]{
        SUM     = 3'h0,
        XOR     = 3'h4,
        OR      = 3'h6,
        AND     = 3'h7,
        SLL     = 3'h1,
        SR      = 3'h5,
        SLT     = 3'h2,
        SLTU    = 3'h3
    } base_ALU_risc_funct3;

    
    //funct3 base load/store codes
    typedef enum logic [2:0]{
        BYTE_l  = 3'h0,
        HALF_l  = 3'h1,
        WORD    = 3'h2,
        BYTE_ul = 3'h4,
        HALF_ul = 3'h5
    } base_LDST_risc_funct3;


    //funct3 branch codes
    typedef enum logic [2:0]{
        EQ      = 3'h0,
        NE      = 3'h1,
        LT      = 3'h4,
        GE      = 3'h5,
        LTU     = 3'h6,
        GEU     = 3'h7;
    } base_LDST_risc_funct3;


    //funct3 multiply ALU codes
    typedef enum logic [2:0]{
        MUL     = 3'h0,
        MULH    = 3'h1,
        MULSU   = 3'h2,
        MULU    = 3'h3,
        DIV     = 3'h4,
        DIVU    = 3'h5,
        REM     = 3'h6,
        REMU   = 3'h7
    } mult_risc_funct3;

    //funct7 codes
    typedef enum logic [6:0]{
        STD = 7'h00;            //
        ALT = 7'h20;            //Used for shift right arith and subtract
        MUL = 7'h0;
    } risc_funct7;

endpackage