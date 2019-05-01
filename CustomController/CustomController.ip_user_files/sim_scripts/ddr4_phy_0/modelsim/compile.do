vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_0
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/iomodule_v3_1_4

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_0 modelsim_lib/msim/microblaze_v11_0_0
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap iomodule_v3_1_4 modelsim_lib/msim/iomodule_v3_1_4

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/map" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../ipstatic/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_0/sim/bd_c5bc_microblaze_I_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_1/sim/bd_c5bc_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../ipstatic/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_2/sim/bd_c5bc_ilmb_0.vhd" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_3/sim/bd_c5bc_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../ipstatic/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_4/sim/bd_c5bc_dlmb_cntlr_0.vhd" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_5/sim/bd_c5bc_ilmb_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/map" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal" \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/map" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_6/sim/bd_c5bc_lmb_bram_I_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_7/sim/bd_c5bc_second_dlmb_cntlr_0.vhd" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_8/sim/bd_c5bc_second_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/map" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_9/sim/bd_c5bc_second_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_4 -64 -93 \
"../../../ipstatic/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/ip/ip_10/sim/bd_c5bc_iomodule_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/map" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/bd_0/sim/bd_c5bc.v" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_0/sim/ddr4_phy_0_microblaze_mcs.v" \

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/map" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top" "+incdir+../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy_behav.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob_byte.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/clocking/ddr4_phy_v2_2_pll.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_tristate_wrapper.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_riuor_wrapper.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_control_wrapper.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_byte_wrapper.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_bitslice_wrapper.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/phy/ddr4_phy_0_phy_ddr4.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/ip_1/rtl/ip_top/ddr4_phy_0_phy.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/clocking/ddr4_v2_2_infrastructure.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_xsdb_bram.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_write.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_wr_byte.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_wr_bit.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_sync.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_read.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_rd_en.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_pi.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_mc_odt.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_debug_microblaze.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_cplx_data.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_cplx.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_config_rom.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_addr_decode.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_top.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal_xsdb_arbiter.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_cal.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_chipscope_xsdb_slave.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_v2_2_dp_AB9.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top/ddr4_phy_0.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/cal/ddr4_phy_0_ddr4_cal_riu.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/rtl/ip_top/ddr4_phy_0_ddr4.sv" \
"../../../../CustomController.srcs/sources_1/ip/ddr4_phy_0/tb/microblaze_mcs_0.sv" \

vlog -work xil_defaultlib \
"glbl.v"

