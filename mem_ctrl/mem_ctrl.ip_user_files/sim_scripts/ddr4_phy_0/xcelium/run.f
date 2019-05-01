-makelib xcelium_lib/xil_defaultlib -sv \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_0 \
  "../../../ipstatic/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_0/sim/bd_c5bc_microblaze_I_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_1/sim/bd_c5bc_rst_0_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_9 \
  "../../../ipstatic/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_2/sim/bd_c5bc_ilmb_0.vhd" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_3/sim/bd_c5bc_dlmb_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../ipstatic/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_4/sim/bd_c5bc_dlmb_cntlr_0.vhd" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_5/sim/bd_c5bc_ilmb_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_6/sim/bd_c5bc_lmb_bram_I_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_7/sim/bd_c5bc_second_dlmb_cntlr_0.vhd" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_8/sim/bd_c5bc_second_ilmb_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_9/sim/bd_c5bc_second_lmb_bram_I_0.v" \
-endlib
-makelib xcelium_lib/iomodule_v3_1_4 \
  "../../../ipstatic/hdl/iomodule_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_10/sim/bd_c5bc_iomodule_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/bd_0/sim/bd_c5bc.v" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_0/sim/ddr4_phy_0_microblaze_mcs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy_behav.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob_byte.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/clocking/ddr4_phy_v2_2_pll.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_tristate_wrapper.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_riuor_wrapper.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_control_wrapper.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_byte_wrapper.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_bitslice_wrapper.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/phy/ddr4_phy_0_phy_ddr4.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/ip_top/ddr4_phy_0_phy.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/clocking/ddr4_v2_2_infrastructure.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_xsdb_bram.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_write.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_wr_byte.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_wr_bit.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_sync.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_read.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_rd_en.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_pi.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_mc_odt.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_debug_microblaze.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_cplx_data.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_cplx.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_config_rom.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_addr_decode.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_top.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_xsdb_arbiter.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_chipscope_xsdb_slave.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_dp_AB9.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top/ddr4_phy_0.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_phy_0_ddr4_cal_riu.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top/ddr4_phy_0_ddr4.sv" \
  "../../../../mem_ctrl.srcs/sources_1/ip/ddr4_phy_0/tb/microblaze_mcs_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

