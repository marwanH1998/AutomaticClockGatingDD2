module test4bit(input [3:0]D_IN, input CLK,EN, output reg [3:0]D_OUT);
integer i;
    always @(posedge CLK)
    begin
        for(i=0;i<4;i=i+1)
        begin
            if(EN)
                D_OUT[i]<= D_IN[i];
        end
    end
endmodule