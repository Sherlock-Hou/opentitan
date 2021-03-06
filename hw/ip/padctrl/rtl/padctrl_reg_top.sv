// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Top module auto-generated by `reggen`

`include "prim_assert.sv"

module padctrl_reg_top (
  input clk_i,
  input rst_ni,

  // Below Regster interface can be changed
  input  tlul_pkg::tl_h2d_t tl_i,
  output tlul_pkg::tl_d2h_t tl_o,
  // To HW
  output padctrl_reg_pkg::padctrl_reg2hw_t reg2hw, // Write
  input  padctrl_reg_pkg::padctrl_hw2reg_t hw2reg, // Read

  // Config
  input devmode_i // If 1, explicit error return for unmapped register access
);

  import padctrl_reg_pkg::* ;

  localparam int AW = 6;
  localparam int DW = 32;
  localparam int DBW = DW/8;                    // Byte Width

  // register signals
  logic           reg_we;
  logic           reg_re;
  logic [AW-1:0]  reg_addr;
  logic [DW-1:0]  reg_wdata;
  logic [DBW-1:0] reg_be;
  logic [DW-1:0]  reg_rdata;
  logic           reg_error;

  logic          addrmiss, wr_err;

  logic [DW-1:0] reg_rdata_next;

  tlul_pkg::tl_h2d_t tl_reg_h2d;
  tlul_pkg::tl_d2h_t tl_reg_d2h;

  assign tl_reg_h2d = tl_i;
  assign tl_o       = tl_reg_d2h;

  tlul_adapter_reg #(
    .RegAw(AW),
    .RegDw(DW)
  ) u_reg_if (
    .clk_i,
    .rst_ni,

    .tl_i (tl_reg_h2d),
    .tl_o (tl_reg_d2h),

    .we_o    (reg_we),
    .re_o    (reg_re),
    .addr_o  (reg_addr),
    .wdata_o (reg_wdata),
    .be_o    (reg_be),
    .rdata_i (reg_rdata),
    .error_i (reg_error)
  );

  assign reg_rdata = reg_rdata_next ;
  assign reg_error = (devmode_i & addrmiss) | wr_err ;

  // Define SW related signals
  // Format: <reg>_<field>_{wd|we|qs}
  //        or <reg>_{wd|we|qs} if field == 1 or 0
  logic regen_qs;
  logic regen_wd;
  logic regen_we;
  logic [9:0] dio_pads0_attr0_qs;
  logic [9:0] dio_pads0_attr0_wd;
  logic dio_pads0_attr0_we;
  logic dio_pads0_attr0_re;
  logic [9:0] dio_pads0_attr1_qs;
  logic [9:0] dio_pads0_attr1_wd;
  logic dio_pads0_attr1_we;
  logic dio_pads0_attr1_re;
  logic [9:0] dio_pads0_attr2_qs;
  logic [9:0] dio_pads0_attr2_wd;
  logic dio_pads0_attr2_we;
  logic dio_pads0_attr2_re;
  logic [9:0] dio_pads1_qs;
  logic [9:0] dio_pads1_wd;
  logic dio_pads1_we;
  logic dio_pads1_re;
  logic [9:0] mio_pads0_attr0_qs;
  logic [9:0] mio_pads0_attr0_wd;
  logic mio_pads0_attr0_we;
  logic mio_pads0_attr0_re;
  logic [9:0] mio_pads0_attr1_qs;
  logic [9:0] mio_pads0_attr1_wd;
  logic mio_pads0_attr1_we;
  logic mio_pads0_attr1_re;
  logic [9:0] mio_pads0_attr2_qs;
  logic [9:0] mio_pads0_attr2_wd;
  logic mio_pads0_attr2_we;
  logic mio_pads0_attr2_re;
  logic [9:0] mio_pads1_attr3_qs;
  logic [9:0] mio_pads1_attr3_wd;
  logic mio_pads1_attr3_we;
  logic mio_pads1_attr3_re;
  logic [9:0] mio_pads1_attr4_qs;
  logic [9:0] mio_pads1_attr4_wd;
  logic mio_pads1_attr4_we;
  logic mio_pads1_attr4_re;
  logic [9:0] mio_pads1_attr5_qs;
  logic [9:0] mio_pads1_attr5_wd;
  logic mio_pads1_attr5_we;
  logic mio_pads1_attr5_re;
  logic [9:0] mio_pads2_attr6_qs;
  logic [9:0] mio_pads2_attr6_wd;
  logic mio_pads2_attr6_we;
  logic mio_pads2_attr6_re;
  logic [9:0] mio_pads2_attr7_qs;
  logic [9:0] mio_pads2_attr7_wd;
  logic mio_pads2_attr7_we;
  logic mio_pads2_attr7_re;
  logic [9:0] mio_pads2_attr8_qs;
  logic [9:0] mio_pads2_attr8_wd;
  logic mio_pads2_attr8_we;
  logic mio_pads2_attr8_re;
  logic [9:0] mio_pads3_attr9_qs;
  logic [9:0] mio_pads3_attr9_wd;
  logic mio_pads3_attr9_we;
  logic mio_pads3_attr9_re;
  logic [9:0] mio_pads3_attr10_qs;
  logic [9:0] mio_pads3_attr10_wd;
  logic mio_pads3_attr10_we;
  logic mio_pads3_attr10_re;
  logic [9:0] mio_pads3_attr11_qs;
  logic [9:0] mio_pads3_attr11_wd;
  logic mio_pads3_attr11_we;
  logic mio_pads3_attr11_re;
  logic [9:0] mio_pads4_attr12_qs;
  logic [9:0] mio_pads4_attr12_wd;
  logic mio_pads4_attr12_we;
  logic mio_pads4_attr12_re;
  logic [9:0] mio_pads4_attr13_qs;
  logic [9:0] mio_pads4_attr13_wd;
  logic mio_pads4_attr13_we;
  logic mio_pads4_attr13_re;
  logic [9:0] mio_pads4_attr14_qs;
  logic [9:0] mio_pads4_attr14_wd;
  logic mio_pads4_attr14_we;
  logic mio_pads4_attr14_re;
  logic [9:0] mio_pads5_qs;
  logic [9:0] mio_pads5_wd;
  logic mio_pads5_we;
  logic mio_pads5_re;

  // Register instances
  // R[regen]: V(False)

  prim_subreg #(
    .DW      (1),
    .SWACCESS("W0C"),
    .RESVAL  (1'h1)
  ) u_regen (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (regen_we),
    .wd     (regen_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (regen_qs)
  );



  // Subregister 0 of Multireg dio_pads
  // R[dio_pads0]: V(True)

  // F[attr0]: 9:0
  prim_subreg_ext #(
    .DW    (10)
  ) u_dio_pads0_attr0 (
    .re     (dio_pads0_attr0_re),
    // qualified with register enable
    .we     (dio_pads0_attr0_we & regen_qs),
    .wd     (dio_pads0_attr0_wd),
    .d      (hw2reg.dio_pads[0].d),
    .qre    (),
    .qe     (reg2hw.dio_pads[0].qe),
    .q      (reg2hw.dio_pads[0].q ),
    .qs     (dio_pads0_attr0_qs)
  );


  // F[attr1]: 19:10
  prim_subreg_ext #(
    .DW    (10)
  ) u_dio_pads0_attr1 (
    .re     (dio_pads0_attr1_re),
    // qualified with register enable
    .we     (dio_pads0_attr1_we & regen_qs),
    .wd     (dio_pads0_attr1_wd),
    .d      (hw2reg.dio_pads[1].d),
    .qre    (),
    .qe     (reg2hw.dio_pads[1].qe),
    .q      (reg2hw.dio_pads[1].q ),
    .qs     (dio_pads0_attr1_qs)
  );


  // F[attr2]: 29:20
  prim_subreg_ext #(
    .DW    (10)
  ) u_dio_pads0_attr2 (
    .re     (dio_pads0_attr2_re),
    // qualified with register enable
    .we     (dio_pads0_attr2_we & regen_qs),
    .wd     (dio_pads0_attr2_wd),
    .d      (hw2reg.dio_pads[2].d),
    .qre    (),
    .qe     (reg2hw.dio_pads[2].qe),
    .q      (reg2hw.dio_pads[2].q ),
    .qs     (dio_pads0_attr2_qs)
  );


  // Subregister 3 of Multireg dio_pads
  // R[dio_pads1]: V(True)

  prim_subreg_ext #(
    .DW    (10)
  ) u_dio_pads1 (
    .re     (dio_pads1_re),
    // qualified with register enable
    .we     (dio_pads1_we & regen_qs),
    .wd     (dio_pads1_wd),
    .d      (hw2reg.dio_pads[3].d),
    .qre    (),
    .qe     (reg2hw.dio_pads[3].qe),
    .q      (reg2hw.dio_pads[3].q ),
    .qs     (dio_pads1_qs)
  );



  // Subregister 0 of Multireg mio_pads
  // R[mio_pads0]: V(True)

  // F[attr0]: 9:0
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads0_attr0 (
    .re     (mio_pads0_attr0_re),
    // qualified with register enable
    .we     (mio_pads0_attr0_we & regen_qs),
    .wd     (mio_pads0_attr0_wd),
    .d      (hw2reg.mio_pads[0].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[0].qe),
    .q      (reg2hw.mio_pads[0].q ),
    .qs     (mio_pads0_attr0_qs)
  );


  // F[attr1]: 19:10
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads0_attr1 (
    .re     (mio_pads0_attr1_re),
    // qualified with register enable
    .we     (mio_pads0_attr1_we & regen_qs),
    .wd     (mio_pads0_attr1_wd),
    .d      (hw2reg.mio_pads[1].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[1].qe),
    .q      (reg2hw.mio_pads[1].q ),
    .qs     (mio_pads0_attr1_qs)
  );


  // F[attr2]: 29:20
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads0_attr2 (
    .re     (mio_pads0_attr2_re),
    // qualified with register enable
    .we     (mio_pads0_attr2_we & regen_qs),
    .wd     (mio_pads0_attr2_wd),
    .d      (hw2reg.mio_pads[2].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[2].qe),
    .q      (reg2hw.mio_pads[2].q ),
    .qs     (mio_pads0_attr2_qs)
  );


  // Subregister 3 of Multireg mio_pads
  // R[mio_pads1]: V(True)

  // F[attr3]: 9:0
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads1_attr3 (
    .re     (mio_pads1_attr3_re),
    // qualified with register enable
    .we     (mio_pads1_attr3_we & regen_qs),
    .wd     (mio_pads1_attr3_wd),
    .d      (hw2reg.mio_pads[3].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[3].qe),
    .q      (reg2hw.mio_pads[3].q ),
    .qs     (mio_pads1_attr3_qs)
  );


  // F[attr4]: 19:10
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads1_attr4 (
    .re     (mio_pads1_attr4_re),
    // qualified with register enable
    .we     (mio_pads1_attr4_we & regen_qs),
    .wd     (mio_pads1_attr4_wd),
    .d      (hw2reg.mio_pads[4].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[4].qe),
    .q      (reg2hw.mio_pads[4].q ),
    .qs     (mio_pads1_attr4_qs)
  );


  // F[attr5]: 29:20
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads1_attr5 (
    .re     (mio_pads1_attr5_re),
    // qualified with register enable
    .we     (mio_pads1_attr5_we & regen_qs),
    .wd     (mio_pads1_attr5_wd),
    .d      (hw2reg.mio_pads[5].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[5].qe),
    .q      (reg2hw.mio_pads[5].q ),
    .qs     (mio_pads1_attr5_qs)
  );


  // Subregister 6 of Multireg mio_pads
  // R[mio_pads2]: V(True)

  // F[attr6]: 9:0
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads2_attr6 (
    .re     (mio_pads2_attr6_re),
    // qualified with register enable
    .we     (mio_pads2_attr6_we & regen_qs),
    .wd     (mio_pads2_attr6_wd),
    .d      (hw2reg.mio_pads[6].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[6].qe),
    .q      (reg2hw.mio_pads[6].q ),
    .qs     (mio_pads2_attr6_qs)
  );


  // F[attr7]: 19:10
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads2_attr7 (
    .re     (mio_pads2_attr7_re),
    // qualified with register enable
    .we     (mio_pads2_attr7_we & regen_qs),
    .wd     (mio_pads2_attr7_wd),
    .d      (hw2reg.mio_pads[7].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[7].qe),
    .q      (reg2hw.mio_pads[7].q ),
    .qs     (mio_pads2_attr7_qs)
  );


  // F[attr8]: 29:20
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads2_attr8 (
    .re     (mio_pads2_attr8_re),
    // qualified with register enable
    .we     (mio_pads2_attr8_we & regen_qs),
    .wd     (mio_pads2_attr8_wd),
    .d      (hw2reg.mio_pads[8].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[8].qe),
    .q      (reg2hw.mio_pads[8].q ),
    .qs     (mio_pads2_attr8_qs)
  );


  // Subregister 9 of Multireg mio_pads
  // R[mio_pads3]: V(True)

  // F[attr9]: 9:0
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads3_attr9 (
    .re     (mio_pads3_attr9_re),
    // qualified with register enable
    .we     (mio_pads3_attr9_we & regen_qs),
    .wd     (mio_pads3_attr9_wd),
    .d      (hw2reg.mio_pads[9].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[9].qe),
    .q      (reg2hw.mio_pads[9].q ),
    .qs     (mio_pads3_attr9_qs)
  );


  // F[attr10]: 19:10
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads3_attr10 (
    .re     (mio_pads3_attr10_re),
    // qualified with register enable
    .we     (mio_pads3_attr10_we & regen_qs),
    .wd     (mio_pads3_attr10_wd),
    .d      (hw2reg.mio_pads[10].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[10].qe),
    .q      (reg2hw.mio_pads[10].q ),
    .qs     (mio_pads3_attr10_qs)
  );


  // F[attr11]: 29:20
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads3_attr11 (
    .re     (mio_pads3_attr11_re),
    // qualified with register enable
    .we     (mio_pads3_attr11_we & regen_qs),
    .wd     (mio_pads3_attr11_wd),
    .d      (hw2reg.mio_pads[11].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[11].qe),
    .q      (reg2hw.mio_pads[11].q ),
    .qs     (mio_pads3_attr11_qs)
  );


  // Subregister 12 of Multireg mio_pads
  // R[mio_pads4]: V(True)

  // F[attr12]: 9:0
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads4_attr12 (
    .re     (mio_pads4_attr12_re),
    // qualified with register enable
    .we     (mio_pads4_attr12_we & regen_qs),
    .wd     (mio_pads4_attr12_wd),
    .d      (hw2reg.mio_pads[12].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[12].qe),
    .q      (reg2hw.mio_pads[12].q ),
    .qs     (mio_pads4_attr12_qs)
  );


  // F[attr13]: 19:10
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads4_attr13 (
    .re     (mio_pads4_attr13_re),
    // qualified with register enable
    .we     (mio_pads4_attr13_we & regen_qs),
    .wd     (mio_pads4_attr13_wd),
    .d      (hw2reg.mio_pads[13].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[13].qe),
    .q      (reg2hw.mio_pads[13].q ),
    .qs     (mio_pads4_attr13_qs)
  );


  // F[attr14]: 29:20
  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads4_attr14 (
    .re     (mio_pads4_attr14_re),
    // qualified with register enable
    .we     (mio_pads4_attr14_we & regen_qs),
    .wd     (mio_pads4_attr14_wd),
    .d      (hw2reg.mio_pads[14].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[14].qe),
    .q      (reg2hw.mio_pads[14].q ),
    .qs     (mio_pads4_attr14_qs)
  );


  // Subregister 15 of Multireg mio_pads
  // R[mio_pads5]: V(True)

  prim_subreg_ext #(
    .DW    (10)
  ) u_mio_pads5 (
    .re     (mio_pads5_re),
    // qualified with register enable
    .we     (mio_pads5_we & regen_qs),
    .wd     (mio_pads5_wd),
    .d      (hw2reg.mio_pads[15].d),
    .qre    (),
    .qe     (reg2hw.mio_pads[15].qe),
    .q      (reg2hw.mio_pads[15].q ),
    .qs     (mio_pads5_qs)
  );




  logic [8:0] addr_hit;
  always_comb begin
    addr_hit = '0;
    addr_hit[0] = (reg_addr == PADCTRL_REGEN_OFFSET);
    addr_hit[1] = (reg_addr == PADCTRL_DIO_PADS0_OFFSET);
    addr_hit[2] = (reg_addr == PADCTRL_DIO_PADS1_OFFSET);
    addr_hit[3] = (reg_addr == PADCTRL_MIO_PADS0_OFFSET);
    addr_hit[4] = (reg_addr == PADCTRL_MIO_PADS1_OFFSET);
    addr_hit[5] = (reg_addr == PADCTRL_MIO_PADS2_OFFSET);
    addr_hit[6] = (reg_addr == PADCTRL_MIO_PADS3_OFFSET);
    addr_hit[7] = (reg_addr == PADCTRL_MIO_PADS4_OFFSET);
    addr_hit[8] = (reg_addr == PADCTRL_MIO_PADS5_OFFSET);
  end

  assign addrmiss = (reg_re || reg_we) ? ~|addr_hit : 1'b0 ;

  // Check sub-word write is permitted
  always_comb begin
    wr_err = 1'b0;
    if (addr_hit[0] && reg_we && (PADCTRL_PERMIT[0] != (PADCTRL_PERMIT[0] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[1] && reg_we && (PADCTRL_PERMIT[1] != (PADCTRL_PERMIT[1] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[2] && reg_we && (PADCTRL_PERMIT[2] != (PADCTRL_PERMIT[2] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[3] && reg_we && (PADCTRL_PERMIT[3] != (PADCTRL_PERMIT[3] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[4] && reg_we && (PADCTRL_PERMIT[4] != (PADCTRL_PERMIT[4] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[5] && reg_we && (PADCTRL_PERMIT[5] != (PADCTRL_PERMIT[5] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[6] && reg_we && (PADCTRL_PERMIT[6] != (PADCTRL_PERMIT[6] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[7] && reg_we && (PADCTRL_PERMIT[7] != (PADCTRL_PERMIT[7] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[8] && reg_we && (PADCTRL_PERMIT[8] != (PADCTRL_PERMIT[8] & reg_be))) wr_err = 1'b1 ;
  end

  assign regen_we = addr_hit[0] & reg_we & ~wr_err;
  assign regen_wd = reg_wdata[0];

  assign dio_pads0_attr0_we = addr_hit[1] & reg_we & ~wr_err;
  assign dio_pads0_attr0_wd = reg_wdata[9:0];
  assign dio_pads0_attr0_re = addr_hit[1] && reg_re;

  assign dio_pads0_attr1_we = addr_hit[1] & reg_we & ~wr_err;
  assign dio_pads0_attr1_wd = reg_wdata[19:10];
  assign dio_pads0_attr1_re = addr_hit[1] && reg_re;

  assign dio_pads0_attr2_we = addr_hit[1] & reg_we & ~wr_err;
  assign dio_pads0_attr2_wd = reg_wdata[29:20];
  assign dio_pads0_attr2_re = addr_hit[1] && reg_re;

  assign dio_pads1_we = addr_hit[2] & reg_we & ~wr_err;
  assign dio_pads1_wd = reg_wdata[9:0];
  assign dio_pads1_re = addr_hit[2] && reg_re;

  assign mio_pads0_attr0_we = addr_hit[3] & reg_we & ~wr_err;
  assign mio_pads0_attr0_wd = reg_wdata[9:0];
  assign mio_pads0_attr0_re = addr_hit[3] && reg_re;

  assign mio_pads0_attr1_we = addr_hit[3] & reg_we & ~wr_err;
  assign mio_pads0_attr1_wd = reg_wdata[19:10];
  assign mio_pads0_attr1_re = addr_hit[3] && reg_re;

  assign mio_pads0_attr2_we = addr_hit[3] & reg_we & ~wr_err;
  assign mio_pads0_attr2_wd = reg_wdata[29:20];
  assign mio_pads0_attr2_re = addr_hit[3] && reg_re;

  assign mio_pads1_attr3_we = addr_hit[4] & reg_we & ~wr_err;
  assign mio_pads1_attr3_wd = reg_wdata[9:0];
  assign mio_pads1_attr3_re = addr_hit[4] && reg_re;

  assign mio_pads1_attr4_we = addr_hit[4] & reg_we & ~wr_err;
  assign mio_pads1_attr4_wd = reg_wdata[19:10];
  assign mio_pads1_attr4_re = addr_hit[4] && reg_re;

  assign mio_pads1_attr5_we = addr_hit[4] & reg_we & ~wr_err;
  assign mio_pads1_attr5_wd = reg_wdata[29:20];
  assign mio_pads1_attr5_re = addr_hit[4] && reg_re;

  assign mio_pads2_attr6_we = addr_hit[5] & reg_we & ~wr_err;
  assign mio_pads2_attr6_wd = reg_wdata[9:0];
  assign mio_pads2_attr6_re = addr_hit[5] && reg_re;

  assign mio_pads2_attr7_we = addr_hit[5] & reg_we & ~wr_err;
  assign mio_pads2_attr7_wd = reg_wdata[19:10];
  assign mio_pads2_attr7_re = addr_hit[5] && reg_re;

  assign mio_pads2_attr8_we = addr_hit[5] & reg_we & ~wr_err;
  assign mio_pads2_attr8_wd = reg_wdata[29:20];
  assign mio_pads2_attr8_re = addr_hit[5] && reg_re;

  assign mio_pads3_attr9_we = addr_hit[6] & reg_we & ~wr_err;
  assign mio_pads3_attr9_wd = reg_wdata[9:0];
  assign mio_pads3_attr9_re = addr_hit[6] && reg_re;

  assign mio_pads3_attr10_we = addr_hit[6] & reg_we & ~wr_err;
  assign mio_pads3_attr10_wd = reg_wdata[19:10];
  assign mio_pads3_attr10_re = addr_hit[6] && reg_re;

  assign mio_pads3_attr11_we = addr_hit[6] & reg_we & ~wr_err;
  assign mio_pads3_attr11_wd = reg_wdata[29:20];
  assign mio_pads3_attr11_re = addr_hit[6] && reg_re;

  assign mio_pads4_attr12_we = addr_hit[7] & reg_we & ~wr_err;
  assign mio_pads4_attr12_wd = reg_wdata[9:0];
  assign mio_pads4_attr12_re = addr_hit[7] && reg_re;

  assign mio_pads4_attr13_we = addr_hit[7] & reg_we & ~wr_err;
  assign mio_pads4_attr13_wd = reg_wdata[19:10];
  assign mio_pads4_attr13_re = addr_hit[7] && reg_re;

  assign mio_pads4_attr14_we = addr_hit[7] & reg_we & ~wr_err;
  assign mio_pads4_attr14_wd = reg_wdata[29:20];
  assign mio_pads4_attr14_re = addr_hit[7] && reg_re;

  assign mio_pads5_we = addr_hit[8] & reg_we & ~wr_err;
  assign mio_pads5_wd = reg_wdata[9:0];
  assign mio_pads5_re = addr_hit[8] && reg_re;

  // Read data return
  always_comb begin
    reg_rdata_next = '0;
    unique case (1'b1)
      addr_hit[0]: begin
        reg_rdata_next[0] = regen_qs;
      end

      addr_hit[1]: begin
        reg_rdata_next[9:0] = dio_pads0_attr0_qs;
        reg_rdata_next[19:10] = dio_pads0_attr1_qs;
        reg_rdata_next[29:20] = dio_pads0_attr2_qs;
      end

      addr_hit[2]: begin
        reg_rdata_next[9:0] = dio_pads1_qs;
      end

      addr_hit[3]: begin
        reg_rdata_next[9:0] = mio_pads0_attr0_qs;
        reg_rdata_next[19:10] = mio_pads0_attr1_qs;
        reg_rdata_next[29:20] = mio_pads0_attr2_qs;
      end

      addr_hit[4]: begin
        reg_rdata_next[9:0] = mio_pads1_attr3_qs;
        reg_rdata_next[19:10] = mio_pads1_attr4_qs;
        reg_rdata_next[29:20] = mio_pads1_attr5_qs;
      end

      addr_hit[5]: begin
        reg_rdata_next[9:0] = mio_pads2_attr6_qs;
        reg_rdata_next[19:10] = mio_pads2_attr7_qs;
        reg_rdata_next[29:20] = mio_pads2_attr8_qs;
      end

      addr_hit[6]: begin
        reg_rdata_next[9:0] = mio_pads3_attr9_qs;
        reg_rdata_next[19:10] = mio_pads3_attr10_qs;
        reg_rdata_next[29:20] = mio_pads3_attr11_qs;
      end

      addr_hit[7]: begin
        reg_rdata_next[9:0] = mio_pads4_attr12_qs;
        reg_rdata_next[19:10] = mio_pads4_attr13_qs;
        reg_rdata_next[29:20] = mio_pads4_attr14_qs;
      end

      addr_hit[8]: begin
        reg_rdata_next[9:0] = mio_pads5_qs;
      end

      default: begin
        reg_rdata_next = '1;
      end
    endcase
  end

  // Assertions for Register Interface
  `ASSERT_PULSE(wePulse, reg_we)
  `ASSERT_PULSE(rePulse, reg_re)

  `ASSERT(reAfterRv, $rose(reg_re || reg_we) |=> tl_o.d_valid)

  `ASSERT(en2addrHit, (reg_we || reg_re) |-> $onehot0(addr_hit))

  // this is formulated as an assumption such that the FPV testbenches do disprove this
  // property by mistake
  `ASSUME(reqParity, tl_reg_h2d.a_valid |-> tl_reg_h2d.a_user.parity_en == 1'b0)

endmodule
