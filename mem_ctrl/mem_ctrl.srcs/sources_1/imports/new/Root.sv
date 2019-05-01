`timescale 1ns / 1ps

module Root(
    input reset,

    // Diff clock input
    input c0_sys_clk_p,
    input c0_sys_clk_n,
    
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

//logic reset;
//logic c0_sys_clk_p;
//logic c0_sys_clk_n;

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
logic [4:0] dBufAdr;
logic [4:0] winBuf;
logic [1:0] winRank;
logic rdDataEnd;
logic c0_data_compare_error;
logic c0_wr_rd_complete;
logic gt_data_ready;
logic [4:0] rdDataAddr;
logic [4:0] wrDataAddr;


//initial begin
//    reset = 1'b1;
//    c0_sys_clk_p = 1'b0;
//    c0_sys_clk_n = 1'b1;
//    rdDataEnd = 1'b1;
//    activate = 8'hFF;
//    address = 136'h1;
//    bankAddress = 16'b0;
//    bankGroup = 16'b0;
//    wrData = 512'b0;
//    cke = 8'hFF;
//    cs = 8'hFF;
//    wrCAS = 1'b0;
//    rdCAS = 1'b0;
//    odt = 8'b0;
//    casSlot = 2'b0;
//    casSlot2 = 1'b0;
//
//    #10
//    reset = 1'b0;
//    @(posedge clock);
//    @(posedge clock);
//    
//    address[135:128] = 8'hFF;
//    address[127:120] = 8'hFC;
//    address[119:112] = 8'hFC;
//    cs = 8'hFC;
//    wrCAS = 1'b1;
//    activate = 8'hF3;
//    
//    @(posedge clock);
//    #30000 //set value to allow enough time for refresh interval (7.8us)
//    
//    //@(posedge calibDone);
//    $finish;
//end

//always #1 c0_sys_clk_p = ~c0_sys_clk_p;
//always #1 c0_sys_clk_n = ~c0_sys_clk_n;

ddr4_phy_0 phy (

    .sys_rst(reset),                                  // input wire sys_rst
    .c0_sys_clk_p(c0_sys_clk_p),                      // input wire c0_sys_clk_p
    .c0_sys_clk_n(c0_sys_clk_n),                      // input wire c0_sys_clk_n

    .c0_ddr4_ui_clk(clock),                    // output wire c0_ddr4_ui_clk
    .c0_ddr4_ui_clk_sync_rst (c0_ddr4_rst),
    .c0_init_calib_complete(calibDone),               // output wire c0_init_calib_complete
    .dbg_clk(dbg_clk),  
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
    .c0_ddr4_dqs_t(ddr4_dqs_t),                             // inout wire [7 : 0] ddr4_dqs_t
    
    .dBufAdr(5'b0),
    .wrData(wrData), 

    .rdData(rdData),                                  // output wire [511 : 0] rdData
    .rdDataAddr(rdDataAddr), 
    .rdDataEn(rdDataEn),                              // output wire [0 : 0] rdDataEn
    .rdDataEnd(rdDataEnd), 
    .per_rd_done(per_rd_done),
    .rmw_rd_done(rmw_rd_done),
    .wrDataAddr(wrDataAddr),  
    .wrDataEn(wrDataEn), 

    .mc_ACT_n(activate),                              // input wire [7 : 0] mc_ACT_n
    .mc_ADR(address),                                 // input wire [135 : 0] mc_ADR
    .mc_BA(bankAddress),                              // input wire [15 : 0] mc_BA
    .mc_BG(bankGroup),                                     // input wire [15 : 0] mc_BG
    .mc_CKE({8{1'b1}}),//cke
    .mc_CS_n(cs),
    .mc_ODT(odt),
    .mcCasSlot({1{2'b00}}),//casSlot),                              // input wire [1 : 0] mcCasSlot
    .mcCasSlot2({1{1'b0}}),//casSlot2),                            // input wire [0 : 0] mcCasSlot2
    .mcRdCAS(rdCAS),                                  // input wire [0 : 0] mcRdCAS
    .mcWrCAS(wrCAS),                                  // input wire [0 : 0] mcWrCAS
    .winInjTxn            ({1{1'b0}}),
    .winRmw               ({1{1'b0}}),
    
    .gt_data_ready(1'b0),//gt_data_ready),
    .winBuf(winBuf), 
    .winRank              (winRank),
    .tCWL(tCWL),                                      // output wire [5 : 0] tCWL
    .dbg_bus(dbg_bus)                                // output wire [511 : 0] dbg_bus
);

   localparam SIMULATION = "TRUE";
   localparam  integer ADDR_WIDTH           = 17;
   localparam  integer BANK_WIDTH           = 2;
   localparam  integer BANK_GROUP_WIDTH     = 2;
   localparam  integer CS_WIDTH             = 1;
   localparam  integer ODT_WIDTH            = 1;
   localparam  integer DQ_WIDTH             = 64;
   localparam  integer DM_WIDTH             = 8;
   localparam  integer NUM_RANK             = 1;
   localparam  integer NUM_SLOT                     = 1;
   localparam  integer DATA_BUF_ADDR_WIDTH  = 5;
    
   localparam          ODTWRDEL                = 5'd14;
   localparam          ODTWRDUR                = 4'd6;
   localparam          ODTWRODEL               = 5'd9;
   localparam          ODTWRODUR               = 4'd6;
   localparam          ODTRDDEL                = 5'd15;
   localparam          ODTRDDUR                = 4'd6;
   localparam          ODTRDODEL               = 5'd9;
   localparam          ODTRDODUR               = 4'd6;
   localparam          ODTNOP                  = 16'h0000;

    localparam        ODTWR                     = 16'h0001;
    localparam        ODTRD                     = 16'h0000;

  mem_ctrl # //example_tb_phy #
    (
     .SIMULATION     (SIMULATION),
     .ADDR_WIDTH     (ADDR_WIDTH),
     .BANK_WIDTH     (BANK_WIDTH),
     .BANK_GROUP_WIDTH     (BANK_GROUP_WIDTH),
     .ODTWR          (ODTWR),
     .ODTRD          (ODTRD),
     .ODTWRDEL       (ODTWRDEL ), 
     .ODTWRDUR       (ODTWRDUR ), 
     .ODTWRODEL      (ODTWRODEL), 
     .ODTWRODUR      (ODTWRODUR), 
     .ODTRDDEL       (ODTRDDEL ), 
     .ODTRDDUR       (ODTRDDUR ), 
     .ODTRDODEL      (ODTRDODEL), 
     .ODTRDODUR      (ODTRDODUR), 
     .ODTNOP         (ODTNOP   ), 
     .ODTBITS        (ODT_WIDTH),
     .CS_WIDTH       (CS_WIDTH),
     .ODT_WIDTH      (ODT_WIDTH),
     .DQ_WIDTH       (DQ_WIDTH),
     .DM_WIDTH       (DM_WIDTH),
     .CWL            (14),
     .DATA_BUF_ADDR_WIDTH   (DATA_BUF_ADDR_WIDTH)
     )
   mem_ctrl //u_example_tb_phy
      (
       .clk                                     (clock),
       .rst                                     (reset),
       .init_calib_complete                     (calibDone),
       .dBufAdr                                 (dBufAdr),
       .wrData 	                                (wrData),
       .wrDataMask                              (wrDataMask),
       .wrDataEn                                (wrDataEn),
       .mc_ACT_n 	                            (activate),
       .mc_ADR	                                (address),
       .mc_BA	                                (bankAddress),
       .mc_BG	                                (bankGroup),
       .mc_CS_n	                                (cs),
       .mc_ODT	                                (odt),
       .mcRdCAS 	                            (rdCAS),
       .mcWrCAS 	                            (wrCAS),
       .winBuf                                  (winBuf),
       .winRank                                 (winRank),
       .rdData	                                (rdData),
       .rdDataEn                                (rdDataEn),
       .rdDataEnd                               (rdDataEnd),
       .compare_error	                        (c0_data_compare_error),
       .wr_rd_complete                          (c0_wr_rd_complete)
       
  );


endmodule
