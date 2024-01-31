`timescale 1ns/1ns

module RiscV_Pipeline_Processor_Testbench;
  reg clk;
  reg reset;
  reg [31:0] Instr;
  wire [63:0] ReadData1, ReadData2;
  wire [4:0] ReadReg1, ReadReg2, WriteReg;
  wire [1:0] ALUOp;
  wire [6:0] Opcode, funct7;
  wire [2:0] funct3;
  wire Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
  wire Zero;
  wire [63:0] ALUResult;
  wire [63:0] MuxDataOut, Mux_AddSum, Mux_out, Mux_AluOut, Imm_GenOut, WriteData;

  RiscV_Pipeline_Processor dut (
    .clk(clk),
    .reset(reset),
    .Instr(Instr),
    .ReadData1(ReadData1),
    .ReadData2(ReadData2),
    .ReadReg1(ReadReg1),
    .ReadReg2(ReadReg2),
    .WriteReg(WriteReg),
    .ALUOp(ALUOp),
    .Opcode(Opcode),
    .funct7(funct7),
    .funct3(funct3),
    .Branch(Branch),
    .MemRead(MemRead),
    .MemtoReg(MemtoReg),
    .MemWrite(MemWrite),
    .ALUSrc(ALUSrc),
    .RegWrite(RegWrite),
    .Zero(Zero),
    .ALUResult(ALUResult),
    .MuxDataOut(MuxDataOut),
    .Mux_AddSum(Mux_AddSum),
    .Mux_out(Mux_out),
    .Mux_AluOut(Mux_AluOut),
    .Imm_GenOut(Imm_GenOut),
    .WriteData(WriteData)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Reset initialization
  initial begin
    reset = 1;
    #10 reset = 0;
  end

  // Test scenario
  initial begin
    // Wait for initial reset to complete
    #20;

    // Example test scenario

    // Instruction 1
    Instr = 32'h01234567;
    #10;

    // Instruction 2
    Instr = 32'h89ABCDEF;
    #10;

    // Instruction 3
    Instr = 32'hFEDCBA98;
    #10;

    // Instruction 4
    Instr = 32'h76543210;
    #10;

    // Instruction 5
    Instr = 32'hABCDEF01;
    #10;

    // Instruction 6
    Instr = 32'h98765432;
    #10;

    // Instruction 7
    Instr = 32'hFEDCBA98;
    #10;

    // Add more instructions as needed

    // End simulation
    #10 $finish;
  end
endmodule

