module test2registers(input D_IN, input CLK,EN,en2, output reg D_OUT);
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
                D_OUT<= D_IN;
        end

    end
            

endmodule