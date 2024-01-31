`timescale 1 ns / 1ns
module ALUControlUnitTestBench;
reg [6:0] opcode;
reg [3:0] Funct;
wire [3:0] Operation;
wire [1:0] ALUOp;
wire Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite;

ControlUnit Cntrl(opcode,ALUOp,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite);
ALUControl ALUCNtrl(ALUOp, Funct,Operation);

initial 
  begin
    
    opcode=7'b0000011;
    Funct=4'bxxxx;
    #200
    opcode=7'b0100011;
    Funct=4'bxxxx;
    #200
    opcode=7'b1100011;
    Funct=4'bxxxx;
    #200
    opcode=7'b0110011;
    Funct=4'b0000;
    #200
    opcode=7'b0110011;
    Funct=4'b1000;
    #200
    opcode=7'b0110011;
    Funct=4'b0111;
    #200
    opcode=7'b0110011;
    Funct=4'b0110;
    #200
    
    $stop; 
  end
endmodule