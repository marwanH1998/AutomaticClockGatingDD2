`define FUNCTIONAL
`define UNIT_DELAY #1
`include "primitives.v"
`include "sky130_fd_sc_hd.v"
module tb;
reg CLK,D_IN,EN;
wire D_OUT;

test x (D_IN,CLK,EN,D_OUT);

initial begin
$dumpfile("test_updated.vcd"); // vcd dump file
$dumpvars; // dump everything
end 

 initial begin 
	CLK = 0;
    forever begin
    #5
    CLK = ~CLK;
        end 
 end

initial begin
D_IN=1'b1;
EN=1'b1;
#10
if(D_OUT==1'b1)  
        $display("test correct");
else
         $display("test failed for input combination 11");
#10

D_IN=1'b0;
EN=1'b0;
#10
if(D_OUT==1'b1)  
        $display("test correct");
else
         $display("test failed for input combination 00");
#10

D_IN=1'b1;
EN=1'b0;
#10
if(D_OUT==1'b1)  
       $display("test correct");
else
        $display("test failed for input combination 10");
#10

D_IN=1'b0;
EN=1'b1;
#10
if(D_OUT==1'b0)  
       $display("test correct");
else
        $display("test failed for input combination 01");
$finish;
end

endmodule