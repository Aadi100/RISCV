module Control(
      input [6:0] opcode,
      output wire [1:0] ALUOp,
      output reg Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite    
    );

reg [1:0] opp;
always @(*)
  begin
   case(opcode) 
     7'b0000011:  
       begin
        ALUSrc = 1'b1;
        MemtoReg = 1'b1;
        RegWrite = 1'b1;
        MemRead = 1'b1;
        MemWrite = 1'b0;
        Branch = 1'b0;
        opp = 2'b00;
       end
     
     7'b0100011:  
       begin
        ALUSrc = 1'b1;
        MemtoReg = 1'bx;
        RegWrite = 1'b0;
        MemRead = 1'b0;
        MemWrite = 1'b1;
        Branch = 1'b0;
        opp = 2'b00;
       end
     
     7'b1100011:  
       begin
        ALUSrc = 1'b0;
        MemtoReg = 1'bx;
        RegWrite = 1'b0;
        MemRead = 1'b0;
        MemWrite = 1'b0;
        Branch = 1'b1;
        opp = 2'b01;
       end
      
      7'b0110011:  
       begin
        ALUSrc =   1'b0;
        MemtoReg = 1'b0;
        RegWrite = 1'b1;
        MemRead =  1'b0;
        MemWrite = 1'b0;
        Branch =   1'b0;
        opp = 2'b10;
       end    
       
   endcase
  end
  assign ALUOp=opp;
endmodule