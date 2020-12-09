module test32bit(input [31:0]D_IN, input CLK,EN, output reg [31:0]D_OUT);
integer i;
    always @(posedge CLK)
    begin
        for(i=0;i<32;i=i+1)
        begin
            if(EN)
                D_OUT[i]<= D_IN[i];
        end
    end
endmodule