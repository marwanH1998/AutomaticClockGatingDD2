

module test
(
  D_IN,
  CLK,
  EN,
  D_OUT
);

  wire __clockgate_output_gclk_;
  wire _0_;
  input CLK;
  input D_IN;
  output D_OUT;
  input EN;

  sky130_fd_sc_hd__dlclkp
  __clockgate_cell__
  (
    .GCLK(__clockgate_output_gclk_),
    .GATE(EN),
    .CLK(CLK)
  );


  sky130_fd_sc_hd__dfxtp_1
  _2_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN),
    .Q(D_OUT)
  );


endmodule

