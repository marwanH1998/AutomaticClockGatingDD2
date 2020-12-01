module toy_ex(
    clk,
    s,
    x,
    y,
    z
);

input clk;
input s;
input x;
input y;
output z;

wire _wire_1_;
wire _wire_2_;


sky130_fd_sc_hd__dfxtp_1 __dff__cell__  (
    .CLK(clk),
    .D(_wire_2_),
    .Q(z)
);

sky130_fd_sc_hd__buf_2 __buf_cell__ (
    .A(x),
    .X(_wire_1_)
);

sky130_fd_sc_hd__mux2_1 __mux_cell__  (
    .A0(_wire_1_),
    .A1(y),
    .S(s),
    .X(_wire_2_)
);

endmodule