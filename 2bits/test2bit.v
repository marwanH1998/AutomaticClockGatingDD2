module test2bit(input [1:0]D_IN, input CLK,EN, output reg [1:0]D_OUT);
integer i;
    always @(posedge CLK)
    begin
        for(i=0;i<2;i=i+1)
        begin
            if(EN)
                D_OUT[i]<= D_IN[i];
        end
    end
endmodule