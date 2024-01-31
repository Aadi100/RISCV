module RegisterFile(ReadA, ReadB, WriteReg, WriteData, RegWrite, ReadData1, ReadData2); 
input [4:0] ReadA, ReadB;             
input [4:0] WriteReg;                   
input RegWrite;                       
input [63:0] WriteData;               

output reg [63:0] ReadData1, ReadData2;       
reg [63:0] rf[31:0];                   
 
always@* 
  begin 
    if (RegWrite)                        
     rf[WriteReg] <= WriteData; 
    
    ReadData1 <= rf[ReadA];               
    
    ReadData2 <= rf[ReadB];               
  end 

endmodule 
