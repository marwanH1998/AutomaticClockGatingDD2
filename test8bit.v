module test8bit(input [7:0]D_IN, input CLK,EN, output reg [7:0]D_OUT);
integer i;
    always @(posedge CLK)
    begin
        for(i=0;i<8;i=i+1)
        begin
            if(EN)
                D_OUT[i]<= D_IN[i];
        end
    end
endmodule