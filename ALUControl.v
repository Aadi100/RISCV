module ALUControl
(
 input wire [3:0] Funct,
 input wire [1:0] ALUOp,
 reg [3:0] Operation
);
wire [5:0] Ins;
reg[3:0] temp;
assign Ins={ALUOp,Funct};
 always @(Ins)
  casex (Ins)
    6'b00xxxx: temp=4'b0010;         
    6'b01xxxx: temp=4'b0110;         
    6'b100000: temp=4'b0010;         
    6'b101000: temp=4'b0110;         
    6'b100111: temp=4'b0000;         
    6'b100110: temp=4'b0001;         
    default: temp=4'bxxxx;
  endcase
  assign Operation=temp;
endmodule

 module ALUInstruction            
 (  
      input  [31:0] Instr,  
      output [3:0] Ins  
 );  
      reg[3:0] Ins1;
 
            
      always@(Instr)
      begin  
        
         Ins1 = {Instr[30],Instr[14:12]};        
      end 
      
      assign Ins=Ins1;   

 endmodule