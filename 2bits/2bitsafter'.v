

module test2bit
(
  D_IN,
  CLK,
  EN,
  D_OUT
);

  wire __clockgate_output_gclk_;
  wire [1:0] _0_;
  input CLK;
  input [1:0] D_IN;
  output [1:0] D_OUT;
  input EN;

  sky130_fd_sc_hd__dlclkp
  __clockgate_cell__
  (
    .GCLK(__clockgate_output_gclk_),
    .GATE(EN),
    .CLK(CLK)
  );


  sky130_fd_sc_hd__dlclkp
  __clockgate_cell__
  (
    .GCLK(__clockgate_output_gclk_),
    .GATE(EN),
    .CLK(CLK)
  );


  sky130_fd_sc_hd__dfxtp_1
  _3_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[0]),
    .Q(D_OUT[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _4_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[1]),
    .Q(D_OUT[1])
  );


endmodule

