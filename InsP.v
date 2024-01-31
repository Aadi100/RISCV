 module InsDecoder            
 (  
      input  [31:0] Instr,  
      output [6:0] Opcode,funct7,  
      output [4:0] rd,rs1,rs2,
      output [2:0] funct3
 );  
      reg[6:0] IOP,Ifn7;
      reg[4:0] Ird,Irs1,Irs2;
      reg[2:0] Ifn3;      
            
      always@(Instr)
      begin  
        
         IOP =Instr[6:0];
         Ird =Instr[11:7];      
         Ifn3=Instr[14:12];
         Irs1=Instr[19:15];
         Irs2=Instr[24:20];
         Ifn7=Instr[31:25];
        
      end 
      
      assign Opcode=IOP;
      assign rd=Ird;
      assign funct3=Ifn3;   
      assign rs1=Irs1;
      assign rs2=Irs2;
      assign funct7=Ifn7;         

 endmodule

