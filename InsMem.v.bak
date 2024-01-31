 module InstructionMem            
 (  
      input [63:0] Addr,  
      output wire [31:0] Instr  
 );  
      integer i,j,k;
      reg[31:0] TempI;
      reg [7:0] mem[15:0];
        
      always@(Addr)
      begin  

             mem[0]  = 8'b00000000;
             mem[1]  = 8'b00000000;
             mem[2]  = 8'b00000000;
             mem[3]  = 8'b00110011;
             mem[4]  = 8'b00000010;
             mem[5]  = 8'b00110000;
             mem[6]  = 8'b00000001;
             mem[7]  = 8'b00010011;
             mem[8]  = 8'b00000000;
             mem[9]  = 8'b00110001;
             mem[10] = 8'b00000000;
             mem[11] = 8'b10110011;
             mem[12] = 8'b00100011;
             mem[13] = 8'b00111000;
             mem[14] = 8'b10010101;
             mem[15] = 8'b00001110;
              
          i=Addr;
          j=Addr+3;
          TempI = mem[i]; 
          for(k=i; k<=j;k=k+1)
            TempI= (TempI << 8) | mem[k]; 
        end 

      assign Instr=TempI;

 endmodule