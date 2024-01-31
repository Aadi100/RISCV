module DataMem (
input wire [63:0] Address,  
input wire [63:0] WData,    
input wire Mwrite, Mread,
input wire clk,                  
output reg [63:0] RData      
);

reg [63:0] Memory[0:255];          

integer i;

initial begin
  RData <= 0;
  for (i = 0; i < 256; i = i + 1) begin
    Memory[i] = i;
  end
end

always @(posedge clk) 
begin
  if (Mwrite == 1'b1) 
  begin
    Memory[Address] <= WData;
  end

  if (Mread == 1'b1) 
  begin
    RData <= Memory[Address];
  end
end

endmodule