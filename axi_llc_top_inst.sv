`include "axi_intf.sv"
// Copyright 2022 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51
//
// Authors:
// - Wolfgang Roenninger <wroennin@iis.ee.ethz.ch>

/// Testbench for the module `axi_llc_top`.
module axi_llc_top_inst #(
  /// Set Associativity of the LLC
  parameter int unsigned SetAssociativity = 32'd8,
  /// Number of cache lines of the LLC
  parameter int unsigned NumLines         = 32'd4096,
  /// Number of Blocks per cache line
  parameter int unsigned NumBlocks        = 32'd8,
  /// ID width of the Full AXI slave port, master port has ID `AxiIdWidthFull + 32'd1`
  parameter int unsigned AxiIdWidthFull   = 32'd6,
  /// Address width of the full AXI bus
  parameter int unsigned AxiAddrWidthFull = 32'd64,
  /// Data width of the full AXI bus
  parameter int unsigned AxiDataWidthFull = 32'd64,
  /// Address width of the AXI configureation port
  parameter int unsigned AxiAddrWidthLite = 32'd32,
  /// Data width of the AXI configuration port
  parameter int unsigned AxiDataWidthLite = 32'd32,
  ///
  parameter int unsigned AxiUserWidthFull = 32'd1,
  /// Parameter for Number of Master's Configured through
  /// AXI4-Lite Port (Should be in powers of two and >=1)
  // Configure as 1 if not want to use, default reg -> 0 
  // Should be < 2*(AxiCfg.slvIDWidth), For compatibility 
  parameter int unsigned NumCfgRegcp      = 32'd8
) (
  // AXI4 and AXI-Lite Interface Signals 
  AXI_BUS_CPU.Slave axi_cpu_intf,
  AXI_BUS_MEM.Master axi_mem_intf,
  AXI_LITE.Slave axi_cfg_intf,
  // Input Clock, Reset_n (active low)
  input logic clk, rst_n, test
);
  
  /////////////////////////////
  // Axi channel definitions //
  /////////////////////////////
  `include "axi/typedef.svh"
  `include "axi/assign.svh"

  localparam int unsigned AxiStrbWidthFull = AxiDataWidthFull / 32'd8;
//  localparam int unsigned AxiUserWidthFull = 32'd1; // Defined as a Parameter

  typedef logic [AxiIdWidthFull-1:0]     axi_slv_id_t;
  typedef logic [AxiIdWidthFull:0]       axi_mst_id_t;
  typedef logic [AxiAddrWidthFull-1:0]   axi_addr_t;
  typedef logic [AxiDataWidthFull-1:0]   axi_data_t;
  typedef logic [AxiStrbWidthFull-1:0]   axi_strb_t;
  typedef logic [AxiUserWidthFull-1:0]   axi_user_t;

  `AXI_TYPEDEF_AW_CHAN_T(axi_slv_aw_t, axi_addr_t, axi_slv_id_t, axi_user_t)
  `AXI_TYPEDEF_AW_CHAN_T(axi_mst_aw_t, axi_addr_t, axi_mst_id_t, axi_user_t)
  `AXI_TYPEDEF_W_CHAN_T(axi_w_t, axi_data_t, axi_strb_t, axi_user_t)
  `AXI_TYPEDEF_B_CHAN_T(axi_slv_b_t, axi_slv_id_t, axi_user_t)
  `AXI_TYPEDEF_B_CHAN_T(axi_mst_b_t, axi_mst_id_t, axi_user_t)
  `AXI_TYPEDEF_AR_CHAN_T(axi_slv_ar_t, axi_addr_t, axi_slv_id_t, axi_user_t)
  `AXI_TYPEDEF_AR_CHAN_T(axi_mst_ar_t, axi_addr_t, axi_mst_id_t, axi_user_t)
  `AXI_TYPEDEF_R_CHAN_T(axi_slv_r_t, axi_data_t, axi_slv_id_t, axi_user_t)
  `AXI_TYPEDEF_R_CHAN_T(axi_mst_r_t, axi_data_t, axi_mst_id_t, axi_user_t)

  `AXI_TYPEDEF_REQ_T(axi_slv_req_t, axi_slv_aw_t, axi_w_t, axi_slv_ar_t)
  `AXI_TYPEDEF_RESP_T(axi_slv_resp_t, axi_slv_b_t, axi_slv_r_t)
  `AXI_TYPEDEF_REQ_T(axi_mst_req_t, axi_mst_aw_t, axi_w_t, axi_mst_ar_t)
  `AXI_TYPEDEF_RESP_T(axi_mst_resp_t, axi_mst_b_t, axi_mst_r_t)

  localparam int unsigned AxiStrbWidthLite = AxiDataWidthLite / 32'd8;

  typedef logic [AxiAddrWidthLite-1:0] axi_lite_addr_t;
  typedef logic [AxiDataWidthLite-1:0] axi_lite_data_t;
  typedef logic [AxiStrbWidthLite-1:0] axi_lite_strb_t;

  `AXI_LITE_TYPEDEF_AW_CHAN_T(aw_lite_t, axi_lite_addr_t)
  `AXI_LITE_TYPEDEF_W_CHAN_T(w_lite_t, axi_lite_data_t, axi_lite_strb_t)
  `AXI_LITE_TYPEDEF_B_CHAN_T(b_lite_t)
  `AXI_LITE_TYPEDEF_AR_CHAN_T(ar_lite_t, axi_lite_addr_t)
  `AXI_LITE_TYPEDEF_R_CHAN_T(r_lite_t, axi_lite_data_t)

  `AXI_LITE_TYPEDEF_REQ_T(req_lite_t, aw_lite_t, w_lite_t, ar_lite_t)
  `AXI_LITE_TYPEDEF_RESP_T(resp_lite_t, b_lite_t, r_lite_t)

  // rule definitions
  typedef struct packed {
    int unsigned idx;
    axi_addr_t   start_addr;
    axi_addr_t   end_addr;
  } rule_full_t;

  ////////////////////
  // Address Ranges //
  ////////////////////
  localparam axi_addr_t SpmRegionStart     = axi_addr_t'(0);
  localparam axi_addr_t SpmRegionLength    =
      axi_addr_t'(SetAssociativity * NumLines * NumBlocks * AxiDataWidthFull / 32'd8);
  localparam axi_addr_t CachedRegionStart  = axi_addr_t'(32'h8000_0000);
  localparam axi_addr_t CachedRegionLength = axi_addr_t'(2*SpmRegionLength);

  /////////////////
  // Dut signals //
  /////////////////

  axi_llc_pkg::events_t llc_events;
  // AXI channels
  axi_slv_req_t  axi_cpu_req;
  axi_slv_resp_t axi_cpu_res;
  axi_mst_req_t  axi_mem_req;
  axi_mst_resp_t axi_mem_res;
  req_lite_t     axi_cfg_req;
  resp_lite_t    axi_cfg_res;

  `AXI_ASSIGN_TO_REQ(axi_cpu_req, axi_cpu_intf)
  `AXI_ASSIGN_FROM_RESP(axi_cpu_intf, axi_cpu_res)

  `AXI_ASSIGN_FROM_REQ(axi_mem_intf, axi_mem_req)
  `AXI_ASSIGN_TO_RESP(axi_mem_res, axi_mem_intf)

  `AXI_LITE_ASSIGN_TO_REQ(axi_cfg_req, axi_cfg_intf)
  `AXI_LITE_ASSIGN_FROM_RESP(axi_cfg_intf, axi_cfg_res)

  ///////////////////////
  // Design under test //
  ///////////////////////
  axi_llc_top #(
    .SetAssociativity ( SetAssociativity ),
    .NumLines         ( NumLines         ),
    .NumBlocks        ( NumBlocks        ),
    .AxiIdWidth       ( AxiIdWidthFull   ),
    .AxiAddrWidth     ( AxiAddrWidthFull ),
    .AxiDataWidth     ( AxiDataWidthFull ),
    .AxiUserWidth     ( AxiUserWidthFull ),
    .AxiLiteAddrWidth ( AxiAddrWidthLite ),
    .AxiLiteDataWidth ( AxiDataWidthLite ),
    .NumCfgRegcp      ( NumCfgRegcp      ),
    .slv_req_t        ( axi_slv_req_t      ),
    .slv_resp_t       ( axi_slv_resp_t     ),
    .mst_req_t        ( axi_mst_req_t      ),
    .mst_resp_t       ( axi_mst_resp_t     ),
    .lite_req_t       ( req_lite_t         ),
    .lite_resp_t      ( resp_lite_t        ),
    .rule_full_t      ( rule_full_t        )
  ) i_axi_llc_dut (
    .clk_i               ( clk                                    ),
    .rst_ni              ( rst_n                                  ),
    .test_i              ( test                                   ),
    .slv_req_i           ( axi_cpu_req                            ),
    .slv_resp_o          ( axi_cpu_res                            ),
    .mst_req_o           ( axi_mem_req                            ),
    .mst_resp_i          ( axi_mem_res                            ),
    .conf_req_i          ( axi_cfg_req                            ),
    .conf_resp_o         ( axi_cfg_res                            ),
    .cached_start_addr_i ( CachedRegionStart                      ),
    .cached_end_addr_i   ( CachedRegionStart + CachedRegionLength ),
    .spm_start_addr_i    ( SpmRegionStart                         ),
    .axi_llc_events_o    ( llc_events                             )
  );

endmodule
