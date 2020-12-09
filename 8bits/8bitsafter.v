

module test8bit
(
  D_IN,
  CLK,
  EN,
  D_OUT
);

  wire __clockgate_output_gclk_;
  wire [7:0] _00_;
  input CLK;
  input [7:0] D_IN;
  output [7:0] D_OUT;
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
  _09_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[5]),
    .Q(D_OUT[5])
  );


  sky130_fd_sc_hd__dfxtp_1
  _10_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[4]),
    .Q(D_OUT[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _11_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[0]),
    .Q(D_OUT[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _12_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[2]),
    .Q(D_OUT[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _13_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[1]),
    .Q(D_OUT[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _14_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[7]),
    .Q(D_OUT[7])
  );


  sky130_fd_sc_hd__dfxtp_1
  _15_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[3]),
    .Q(D_OUT[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _16_
  (
    .CLK(__clockgate_output_gclk_),
    .D(D_IN[6]),
    .Q(D_OUT[6])
  );


endmodule

