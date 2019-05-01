module Root(
    //input reset,

    // Diff clock input
    //input c0_sys_clk_p,
    //input c0_sys_clk_n,
    
    // DDR4 signals
    output ddr4_act_n,
    output [16 : 0] ddr4_adr,
    output [1 : 0] ddr4_ba,
    output [1 : 0] ddr4_bg,
    output ddr4_par,
    output [0 : 0] ddr4_cke,
    output [0 : 0] ddr4_odt,
    output [0 : 0] ddr4_cs_n,
    output ddr4_ck_t,
    output ddr4_ck_c,
    output ddr4_reset_n,
    inout [7 : 0] ddr4_dm_dbi_n,
    inout [63 : 0] ddr4_dq,
    inout [7 : 0] ddr4_dqs_c,
    inout [7 : 0] ddr4_dqs_t
);

logic reset;
logic c0_sys_clk_p;
logic c0_sys_clk_n;

logic clock;
logic calibDone;
logic [7:0] activate;
logic [135:0] address;
logic [15:0] bankAddress;
logic [15:0] bankGroup;
logic [511:0] rdData;
logic rdDataEn;
logic [511:0] wrData;
logic [63:0] wrDataMask;
logic wrDataEn;
logic [7:0] cke;
logic [7:0] cs;
logic [7:0] odt;
logic [1:0] casSlot;
logic casSlot2;
logic rdCAS;
logic wrCAS;



initial begin
    reset = 1'b1;
    c0_sys_clk_p = 1'b0;
    c0_sys_clk_n = 1'b1;
    activate = 8'hFF;
    address = 136'h1;
    bankAddress = 16'b0;
    bankGroup = 16'b0;
    wrData = 512'b0;
    cke = 8'hFF;
    cs = 8'hFF;
    wrCAS = 1'b0;
    rdCAS = 1'b0;
    odt = 8'b0;
    casSlot = 2'b0;
    casSlot2 = 1'b0;

    #10
    reset = 1'b0;
    @(posedge clock);
    @(posedge clock);
    
    address[135:128] = 8'hFF;
    address[127:120] = 8'hFC;
    address[119:112] = 8'hFC;
    cs = 8'hFC;
    wrCAS = 1'b1;
    activate = 8'hF3;
    
    @(posedge clock);
    
    //@(posedge calibDone);
    $finish;
end

always #1 c0_sys_clk_p = ~c0_sys_clk_p;
always #1 c0_sys_clk_n = ~c0_sys_clk_n;

ddr4_phy_0 phy (

    // The sys_rst resets the entire memory design which includes general interconnect (fabric)
    // logic which is driven by the MMCM clock (clkout0) and RIU logic. MicroBlaze and
    // calibration logic are driven by the MMCM clock (clkout6).
    .sys_rst(reset),                                  // input wire sys_rst
    
    // The active-High c0_init_calib_complete signal indicates that the initialization and
    // calibration are complete and that the interface is now ready to accept commands for the interface.
    .c0_init_calib_complete(calibDone),               // output wire c0_init_calib_complete
    
    // Diff clock for the IP 
    .c0_sys_clk_p(c0_sys_clk_p),                      // input wire c0_sys_clk_p
    .c0_sys_clk_n(c0_sys_clk_n),                      // input wire c0_sys_clk_n
    
    // Single ended clock produced by the IP
    .c0_ddr4_ui_clk(clock),                    // output wire c0_ddr4_ui_clk
    
    // DRAM ACT_n command signal for four DRAM clock cycles.
    // Bits[1:0] correspond to the first DRAM clock cycle,
    // Bits[3:2] to the second, Bits[5:4] to the third, and Bits[8:7] to the fourth.
    .mc_ACT_n(activate),                              // input wire [7 : 0] mc_ACT_n
    
    // DRAM address. Eight bits in the PHY interface for each address bit on the DRAM bus.
    // Bits[7:0] corresponds to DRAM address Bit[0] on four DRAM clock cycles.
    // Bits[15:8] corresponds to DRAM address Bit[1] on four DRAM clock cycles, etc.
    .mc_ADR(address),                                 // input wire [135 : 0] mc_ADR
    
    // DRAM bank address. Eight bits for each DRAM bank address.
    .mc_BA(bankAddress),                              // input wire [15 : 0] mc_BA
    
    // DRAM bank group address. Eight bits for each DRAM pin
    .mc_BG(bankGroup),                                     // input wire [15 : 0] mc_BG
    
    // Single rank RAM only is supported now
    .winRank(2'b0),                                   // input wire [1 : 0] winRank
    
    // Used to do special reads that do not assert readDataEn
    // The feature is not used in this design
    .winInjTxn(1'b0),                                 // input wire [0 : 0] winInjTxn
    
    // Used to do special reads that do not assert readDataEn
    // The feature is not used in this design 
    .winRmw(1'b0),                                    // input wire [0 : 0] winRmw
    
    // Reserved. Should be tied Low.
    .dBufAdr(5'b0),                                   // input wire [4 : 0] dBufAdr
    
    .rdData(rdData),                                  // output wire [511 : 0] rdData
    .rdDataEn(rdDataEn),                              // output wire [0 : 0] rdDataEn
    
    .wrData(wrData),                                  // input wire [511 : 0] wrData
    .wrDataEn(wrDataEn),                              // output wire [0 : 0] wrDataEn
    
    // TODO
    .mc_CKE(cke),                                     // input wire [7 : 0] mc_CKE
    .mc_CS_n(cs),                                     // input wire [7 : 0] mc_CS_n
    .mc_ODT(odt),                                     // input wire [7 : 0] mc_ODT
    
    .mcCasSlot(casSlot),                              // input wire [1 : 0] mcCasSlot
    .mcCasSlot2(casSlot2),                            // input wire [0 : 0] mcCasSlot2
    .mcRdCAS(rdCAS),                                  // input wire [0 : 0] mcRdCAS
    .mcWrCAS(wrCAS),                                  // input wire [0 : 0] mcWrCAS

    // Signals to be connected to the SODIMM module
    .c0_ddr4_act_n(ddr4_act_n),                            // output wire ddr4_act_n
    .c0_ddr4_adr(ddr4_adr),                                // output wire [16 : 0] ddr4_adr
    .c0_ddr4_ba(ddr4_ba),                                  // output wire [1 : 0] ddr4_ba
    .c0_ddr4_bg(ddr4_bg),                                  // output wire [1 : 0] ddr4_bg
    .c0_ddr4_cke(ddr4_cke),                                // output wire [0 : 0] ddr4_cke
    .c0_ddr4_odt(ddr4_odt),                                // output wire [0 : 0] ddr4_odt
    .c0_ddr4_cs_n(ddr4_cs_n),                              // output wire [0 : 0] ddr4_cs_n
    .c0_ddr4_ck_t(ddr4_ck_t),                              // output wire ddr4_ck_t
    .c0_ddr4_ck_c(ddr4_ck_c),                              // output wire ddr4_ck_c
    .c0_ddr4_reset_n(ddr4_reset_n),                        // output wire ddr4_reset_n
    .c0_ddr4_dm_dbi_n(ddr4_dm_dbi_n),                      // inout wire [7 : 0] ddr4_dm_dbi_n
    .c0_ddr4_dq(ddr4_dq),                                  // inout wire [63 : 0] ddr4_dq
    .c0_ddr4_dqs_c(ddr4_dqs_c),                            // inout wire [7 : 0] ddr4_dqs_c
    .c0_ddr4_dqs_t(ddr4_dqs_t)                             // inout wire [7 : 0] ddr4_dqs_t

    // Optional signal that are not going to be used
    //.tCWL(tCWL),                                      // output wire [5 : 0] tCWL
    //.wrDataAddr(wrDataAddr),                          // output wire [4 : 0] wrDataAddr
    //.rdDataAddr(rdDataAddr),                          // output wire [4 : 0] rdDataAddr
    //.dbg_bus(dbg_bus),                                // output wire [511 : 0] dbg_bus
    //.dbg_clk(dbg_clk),                                // output wire dbg_clk
    //.winBuf(winBuf),                                  // input wire [4 : 0] winBuf
    //.rmw_rd_done(rmw_rd_done),                        // output wire [0 : 0] rmw_rd_done
    //.rdDataEnd(rdDataEnd),                            // output wire [0 : 0] rdDataEnd
    //.c0_ddr4_ui_clk(c0_ddr4_ui_clk),                    // output wire c0_ddr4_ui_clk
    //.c0_ddr4_ui_clk_sync_rst(c0_ddr4_ui_clk_sync_rst),  // output wire c0_ddr4_ui_clk_sync_rst
    
    // VT tracking
    //.per_rd_done(per_rd_done),                        // output wire [0 : 0] per_rd_done
    //.gt_data_ready(gt_data_ready),                    // input wire gt_data_ready
);


endmodule
