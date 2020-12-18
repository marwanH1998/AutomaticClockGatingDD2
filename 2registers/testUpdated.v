

module test2registers
(
  D_IN,
  CLK,
  EN,
  en2,
  D_OUT
);

  wire __clockgate_output_gclk_;
  wire __clockgate_output_gclk_1;
  wire _0_;
  wire _1_;
  input CLK;
  input D_IN;
  output D_OUT;
  input EN;
  input en2;

  sky130_fd_sc_hd__dlclkp
  __clockgate_cell__
  (
    .GCLK(__clockgate_output_gclk_),
    .GATE(EN),
    .CLK(CLK)
  );


  sky130_fd_sc_hd__dlclkp
  __clockgate_cell__2
  (
    .GCLK(__clockgate_output_gclk_1),
    .GATE(en2),
    .CLK(CLK)
  );


  sky130_fd_sc_hd__dfxtp_1
  _4_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN),
    .Q(D_OUT)
  );


  sky130_fd_sc_hd__dfxtp_1
  _5_
  (
    .CLK(__clockgate_output_gclk_1),
    .D(D_IN),
    .Q(D_OUT)
  );


endmodule

