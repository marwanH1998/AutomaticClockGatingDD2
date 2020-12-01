

module test
(
  D_IN,
  CLK,
  EN,
  D_OUT
);

  wire _0_;
  input CLK;
  input D_IN;
  output D_OUT;
  input EN;

  sky130_fd_sc_hd__mux2_1
  _1_
  (
    .A0(D_OUT),
    .A1(D_IN),
    .S(EN),
    .X(_0_)
  );


  sky130_fd_sc_hd__dfxtp_1
  _2_
  (
    .CLK(CLK),
    .D(_0_),
    .Q(D_OUT)
  );


  sky130_fd_sc_hd__dlclkp
  __clockgate_cell__
  (
    .GCLK(__clockgate_output_gclk_),
    .GATE(__clockgate_input_gate_),
    .CLK(__clockgate_input_clk_)
  );


endmodule

