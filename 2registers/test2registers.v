module test2registers(input D_IN,D_IN_1,input CLK,EN,en2, output reg D_OUT,D_OUT_1);
    always @(posedge CLK)
    begin
        begin
            if(EN)
                D_OUT<= D_IN;
        end


    end
        always @(posedge CLK)
    begin

        begin
            if(en2)
                D_OUT_1<= D_IN_1;
        end

    end
            
endmodule