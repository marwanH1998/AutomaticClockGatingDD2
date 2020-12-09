

module test4bit
(
  D_IN,
  CLK,
  EN,
  D_OUT
);

  wire __clockgate_output_gclk_;
  wire [3:0] _0_;
  input CLK;
  input [3:0] D_IN;
  output [3:0] D_OUT;
  input EN;

  sky130_fd_sc_hd__dlclkp
  __clockgate_cell__
  (
    .GCLK(__clockgate_output_gclk_),
    .GATE(EN),
    .CLK(CLK)
  );


  sky130_fd_sc_hd__dfxtp_1
  _5_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[1]),
    .Q(D_OUT[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _6_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[2]),
    .Q(D_OUT[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _7_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[3]),
    .Q(D_OUT[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _8_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[0]),
    .Q(D_OUT[0])
  );


endmodule

