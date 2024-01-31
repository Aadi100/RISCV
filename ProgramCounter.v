module PC_Count (clk, reset, In, Out);
	input clk, reset;
	input [63:0] In;
	output [63:0] Out;
	reg [63:0] Out;
	always @ (posedge clk or posedge reset)
	begin
		if(reset==1'b1)
			Out<=0;
		else
			Out<=In;
	end
endmodule