module ALU(A,B,ALUOp,ALUResult,Zero);
    output      [63:0] ALUResult;
    reg         [63:0] ALUResult1;
    output      Zero;
    reg         Zero;
    input       [3:0]   ALUOp;
    input       [63:0] A,B;

    always @(A or B or ALUOp)
    begin
        case (ALUOp)
           4'b0000: ALUResult1  =   A & B     ;       
           4'b0001: ALUResult1  =   A | B     ;       
           4'b0010: ALUResult1  =   A + B     ;       
           4'b0110: ALUResult1  =   A + (~B)  ;       
           4'b1100: ALUResult1  = ~(A | B)    ;       
        endcase
      assign Zero=(ALUResult1>0)?0:1;
     end

assign ALUResult=ALUResult1;
 
endmodule