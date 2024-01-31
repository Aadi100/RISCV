module ImmGenerator            
 (  
      input [31:0] Instr,  
      output [63:0] data
 );  
      reg[6:0]  OP;
      reg[11:0] imm;
      reg[12:0] sb;
      reg[63:0] Data;
            
      always@(Instr)
      begin  
        
         OP=Instr[6:0];
            if((OP==7'b0000011)||(OP==7'b0001111)||(OP==7'b0010011)||
            (OP==7'b0011011)||(OP==7'b0100011)||(OP==7'b1110011)||(OP==7'b1100111))
            begin
              imm=Instr[31:20];    
              Data <= $signed(imm);   
            end
            
            if(OP==7'b0100011)
            begin
              imm[4:0] =Instr[11:7];  
              imm[11:5]=Instr[31:25];  
              Data <= $signed(imm);   
            end
            
            if(OP==7'b1100011)
            begin
              sb[0]=0;
              sb[11] =Instr[7];               
              sb[4:1] =Instr[11:8];  
              sb[10:5]=Instr[30:25]; 
              sb[12]=Instr[31];
              Data <= $signed(sb);   
            end
            
      end 
      
      assign data=Data;

 endmodule






