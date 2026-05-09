// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Apr 19 19:04:06 2026
// Host        : vlsilabserver running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/STUDENTS/varun/Desktop/Major_Project/BTP_ML_ACCEL/FPGA_Deploy/vivado/dt_accel_overlay/dt_accel_overlay.gen/sources_1/bd/design_1/ip/design_1_dt_accel_0_0/design_1_dt_accel_0_0_sim_netlist.v
// Design      : design_1_dt_accel_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dt_accel_0_0,dt_accel,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "dt_accel,Vivado 2022.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_dt_accel_0_0
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    in_stream_TVALID,
    in_stream_TREADY,
    in_stream_TDATA,
    in_stream_TLAST,
    in_stream_TKEEP,
    in_stream_TSTRB,
    out_stream_TVALID,
    out_stream_TREADY,
    out_stream_TDATA,
    out_stream_TLAST,
    out_stream_TKEEP,
    out_stream_TSTRB);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [5:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [5:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:in_stream:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TVALID" *) input in_stream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TREADY" *) output in_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TDATA" *) input [31:0]in_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TLAST" *) input [0:0]in_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TKEEP" *) input [3:0]in_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_stream, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [3:0]in_stream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TVALID" *) output out_stream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TREADY" *) input out_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TDATA" *) output [31:0]out_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TLAST" *) output [0:0]out_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TKEEP" *) output [3:0]out_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TSTRB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_stream, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output [3:0]out_stream_TSTRB;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]in_stream_TDATA;
  wire in_stream_TREADY;
  wire in_stream_TVALID;
  wire interrupt;
  wire [7:0]\^out_stream_TDATA ;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire out_stream_TVALID;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [31:8]NLW_inst_out_stream_TDATA_UNCONNECTED;
  wire [3:0]NLW_inst_out_stream_TKEEP_UNCONNECTED;
  wire [3:0]NLW_inst_out_stream_TSTRB_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign out_stream_TDATA[31] = \<const0> ;
  assign out_stream_TDATA[30] = \<const0> ;
  assign out_stream_TDATA[29] = \<const0> ;
  assign out_stream_TDATA[28] = \<const0> ;
  assign out_stream_TDATA[27] = \<const0> ;
  assign out_stream_TDATA[26] = \<const0> ;
  assign out_stream_TDATA[25] = \<const0> ;
  assign out_stream_TDATA[24] = \<const0> ;
  assign out_stream_TDATA[23] = \<const0> ;
  assign out_stream_TDATA[22] = \<const0> ;
  assign out_stream_TDATA[21] = \<const0> ;
  assign out_stream_TDATA[20] = \<const0> ;
  assign out_stream_TDATA[19] = \<const0> ;
  assign out_stream_TDATA[18] = \<const0> ;
  assign out_stream_TDATA[17] = \<const0> ;
  assign out_stream_TDATA[16] = \<const0> ;
  assign out_stream_TDATA[15] = \<const0> ;
  assign out_stream_TDATA[14] = \<const0> ;
  assign out_stream_TDATA[13] = \<const0> ;
  assign out_stream_TDATA[12] = \<const0> ;
  assign out_stream_TDATA[11] = \<const0> ;
  assign out_stream_TDATA[10] = \<const0> ;
  assign out_stream_TDATA[9] = \<const0> ;
  assign out_stream_TDATA[8] = \<const0> ;
  assign out_stream_TDATA[7:0] = \^out_stream_TDATA [7:0];
  assign out_stream_TKEEP[3] = \<const1> ;
  assign out_stream_TKEEP[2] = \<const1> ;
  assign out_stream_TKEEP[1] = \<const1> ;
  assign out_stream_TKEEP[0] = \<const1> ;
  assign out_stream_TSTRB[3] = \<const1> ;
  assign out_stream_TSTRB[2] = \<const1> ;
  assign out_stream_TSTRB[1] = \<const1> ;
  assign out_stream_TSTRB[0] = \<const1> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "11'b00000000001" *) 
  (* ap_ST_fsm_state10 = "11'b01000000000" *) 
  (* ap_ST_fsm_state11 = "11'b10000000000" *) 
  (* ap_ST_fsm_state2 = "11'b00000000010" *) 
  (* ap_ST_fsm_state3 = "11'b00000000100" *) 
  (* ap_ST_fsm_state4 = "11'b00000001000" *) 
  (* ap_ST_fsm_state5 = "11'b00000010000" *) 
  (* ap_ST_fsm_state6 = "11'b00000100000" *) 
  (* ap_ST_fsm_state7 = "11'b00001000000" *) 
  (* ap_ST_fsm_state8 = "11'b00010000000" *) 
  (* ap_ST_fsm_state9 = "11'b00100000000" *) 
  design_1_dt_accel_0_0_dt_accel inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in_stream_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_stream_TDATA[15:0]}),
        .in_stream_TKEEP({1'b0,1'b0,1'b0,1'b0}),
        .in_stream_TLAST(1'b0),
        .in_stream_TREADY(in_stream_TREADY),
        .in_stream_TSTRB({1'b0,1'b0,1'b0,1'b0}),
        .in_stream_TVALID(in_stream_TVALID),
        .interrupt(interrupt),
        .out_stream_TDATA({NLW_inst_out_stream_TDATA_UNCONNECTED[31:8],\^out_stream_TDATA }),
        .out_stream_TKEEP(NLW_inst_out_stream_TKEEP_UNCONNECTED[3:0]),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TSTRB(NLW_inst_out_stream_TSTRB_UNCONNECTED[3:0]),
        .out_stream_TVALID(out_stream_TVALID),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "dt_accel" *) 
(* ap_ST_fsm_state1 = "11'b00000000001" *) (* ap_ST_fsm_state10 = "11'b01000000000" *) (* ap_ST_fsm_state11 = "11'b10000000000" *) 
(* ap_ST_fsm_state2 = "11'b00000000010" *) (* ap_ST_fsm_state3 = "11'b00000000100" *) (* ap_ST_fsm_state4 = "11'b00000001000" *) 
(* ap_ST_fsm_state5 = "11'b00000010000" *) (* ap_ST_fsm_state6 = "11'b00000100000" *) (* ap_ST_fsm_state7 = "11'b00001000000" *) 
(* ap_ST_fsm_state8 = "11'b00010000000" *) (* ap_ST_fsm_state9 = "11'b00100000000" *) (* hls_module = "yes" *) 
module design_1_dt_accel_0_0_dt_accel
   (ap_clk,
    ap_rst_n,
    in_stream_TDATA,
    in_stream_TVALID,
    in_stream_TREADY,
    in_stream_TKEEP,
    in_stream_TSTRB,
    in_stream_TLAST,
    out_stream_TDATA,
    out_stream_TVALID,
    out_stream_TREADY,
    out_stream_TKEEP,
    out_stream_TSTRB,
    out_stream_TLAST,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in_stream_TDATA;
  input in_stream_TVALID;
  output in_stream_TREADY;
  input [3:0]in_stream_TKEEP;
  input [3:0]in_stream_TSTRB;
  input [0:0]in_stream_TLAST;
  output [31:0]out_stream_TDATA;
  output out_stream_TVALID;
  input out_stream_TREADY;
  output [3:0]out_stream_TKEEP;
  output [3:0]out_stream_TSTRB;
  output [0:0]out_stream_TLAST;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [5:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire \ap_CS_fsm[10]_i_10_n_0 ;
  wire \ap_CS_fsm[10]_i_11_n_0 ;
  wire \ap_CS_fsm[10]_i_12_n_0 ;
  wire \ap_CS_fsm[10]_i_14_n_0 ;
  wire \ap_CS_fsm[10]_i_15_n_0 ;
  wire \ap_CS_fsm[10]_i_16_n_0 ;
  wire \ap_CS_fsm[10]_i_17_n_0 ;
  wire \ap_CS_fsm[10]_i_18_n_0 ;
  wire \ap_CS_fsm[10]_i_19_n_0 ;
  wire \ap_CS_fsm[10]_i_20_n_0 ;
  wire \ap_CS_fsm[10]_i_21_n_0 ;
  wire \ap_CS_fsm[10]_i_23_n_0 ;
  wire \ap_CS_fsm[10]_i_24_n_0 ;
  wire \ap_CS_fsm[10]_i_25_n_0 ;
  wire \ap_CS_fsm[10]_i_26_n_0 ;
  wire \ap_CS_fsm[10]_i_27_n_0 ;
  wire \ap_CS_fsm[10]_i_28_n_0 ;
  wire \ap_CS_fsm[10]_i_29_n_0 ;
  wire \ap_CS_fsm[10]_i_30_n_0 ;
  wire \ap_CS_fsm[10]_i_31_n_0 ;
  wire \ap_CS_fsm[10]_i_32_n_0 ;
  wire \ap_CS_fsm[10]_i_33_n_0 ;
  wire \ap_CS_fsm[10]_i_34_n_0 ;
  wire \ap_CS_fsm[10]_i_35_n_0 ;
  wire \ap_CS_fsm[10]_i_36_n_0 ;
  wire \ap_CS_fsm[10]_i_37_n_0 ;
  wire \ap_CS_fsm[10]_i_38_n_0 ;
  wire \ap_CS_fsm[10]_i_5_n_0 ;
  wire \ap_CS_fsm[10]_i_6_n_0 ;
  wire \ap_CS_fsm[10]_i_7_n_0 ;
  wire \ap_CS_fsm[10]_i_8_n_0 ;
  wire \ap_CS_fsm[10]_i_9_n_0 ;
  wire \ap_CS_fsm_reg[10]_i_13_n_0 ;
  wire \ap_CS_fsm_reg[10]_i_13_n_1 ;
  wire \ap_CS_fsm_reg[10]_i_13_n_2 ;
  wire \ap_CS_fsm_reg[10]_i_13_n_3 ;
  wire \ap_CS_fsm_reg[10]_i_22_n_0 ;
  wire \ap_CS_fsm_reg[10]_i_22_n_1 ;
  wire \ap_CS_fsm_reg[10]_i_22_n_2 ;
  wire \ap_CS_fsm_reg[10]_i_22_n_3 ;
  wire \ap_CS_fsm_reg[10]_i_2_n_1 ;
  wire \ap_CS_fsm_reg[10]_i_2_n_2 ;
  wire \ap_CS_fsm_reg[10]_i_2_n_3 ;
  wire \ap_CS_fsm_reg[10]_i_4_n_0 ;
  wire \ap_CS_fsm_reg[10]_i_4_n_1 ;
  wire \ap_CS_fsm_reg[10]_i_4_n_2 ;
  wire \ap_CS_fsm_reg[10]_i_4_n_3 ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state2_0;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state3_1;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state4_2;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state5_3;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [10:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm12_out;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [8:0]current_loc_fu_120;
  wire current_loc_fu_1200;
  wire [31:0]cycles_3_reg_1390;
  wire [31:0]cycles_fu_384;
  wire f_fu_308;
  wire [15:0]feat_val_V_fu_697_p66;
  wire [13:0]feat_val_V_reg_1182;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_n_39;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0;
  wire grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg;
  wire grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0;
  wire grp_dt_accel_Pipeline_READ_FEAT_fu_462_n_3;
  wire grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg;
  wire [8:0]grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out;
  wire [31:0]grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out;
  wire grp_dt_accel_Pipeline_TRAVERSE_fu_539_n_32;
  wire grp_dt_accel_Pipeline_TRAVERSE_fu_539_n_72;
  wire [8:0]grp_dt_accel_Pipeline_TRAVERSE_fu_539_node_feature_V_address0;
  wire [8:0]grp_dt_accel_Pipeline_TRAVERSE_fu_539_node_left_V_address0;
  wire icmp_ln58_fu_673_p2;
  wire icmp_ln65_fu_1046_p2;
  wire [31:0]in_stream_TDATA;
  wire [15:0]in_stream_TDATA_int_regslice;
  wire in_stream_TREADY;
  wire in_stream_TREADY_int_regslice;
  wire in_stream_TVALID;
  wire in_stream_TVALID_int_regslice;
  wire interrupt;
  wire is_last_fu_684_p2;
  wire is_last_reg_1399;
  wire \is_last_reg_1399[0]_i_10_n_0 ;
  wire \is_last_reg_1399[0]_i_11_n_0 ;
  wire \is_last_reg_1399[0]_i_12_n_0 ;
  wire \is_last_reg_1399[0]_i_13_n_0 ;
  wire \is_last_reg_1399[0]_i_14_n_0 ;
  wire \is_last_reg_1399[0]_i_15_n_0 ;
  wire \is_last_reg_1399[0]_i_1_n_0 ;
  wire \is_last_reg_1399[0]_i_4_n_0 ;
  wire \is_last_reg_1399[0]_i_5_n_0 ;
  wire \is_last_reg_1399[0]_i_6_n_0 ;
  wire \is_last_reg_1399[0]_i_8_n_0 ;
  wire \is_last_reg_1399[0]_i_9_n_0 ;
  wire \is_last_reg_1399_reg[0]_i_2_n_2 ;
  wire \is_last_reg_1399_reg[0]_i_2_n_3 ;
  wire \is_last_reg_1399_reg[0]_i_3_n_0 ;
  wire \is_last_reg_1399_reg[0]_i_3_n_1 ;
  wire \is_last_reg_1399_reg[0]_i_3_n_2 ;
  wire \is_last_reg_1399_reg[0]_i_3_n_3 ;
  wire \is_last_reg_1399_reg[0]_i_7_n_0 ;
  wire \is_last_reg_1399_reg[0]_i_7_n_1 ;
  wire \is_last_reg_1399_reg[0]_i_7_n_2 ;
  wire \is_last_reg_1399_reg[0]_i_7_n_3 ;
  wire [8:0]node_class_V_address0;
  wire node_class_V_ce0;
  wire [7:0]node_class_V_q0;
  wire node_class_V_we0;
  wire [8:0]node_feature_V_address0;
  wire node_feature_V_ce0;
  wire [7:0]node_feature_V_q0;
  wire node_feature_V_we0;
  wire node_left_V_ce0;
  wire [8:0]node_left_V_q0;
  wire node_left_V_we0;
  wire node_right_V_ce0;
  wire [8:0]node_right_V_q0;
  wire node_right_V_we0;
  wire node_threshold_V_U_n_16;
  wire node_threshold_V_U_n_17;
  wire node_threshold_V_U_n_18;
  wire node_threshold_V_U_n_19;
  wire node_threshold_V_U_n_20;
  wire node_threshold_V_U_n_21;
  wire node_threshold_V_U_n_22;
  wire [8:0]node_threshold_V_address0;
  wire node_threshold_V_ce0;
  wire [15:0]node_threshold_V_q0;
  wire node_threshold_V_we0;
  wire [31:0]num_features;
  wire [31:0]num_features_read_reg_973;
  wire [31:0]num_nodes;
  wire [31:0]num_nodes_read_reg_968;
  wire [31:0]num_test;
  wire [31:0]num_test_read_reg_963;
  wire [7:0]\^out_stream_TDATA ;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire out_stream_TVALID;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire storemerge_reg_450;
  wire \storemerge_reg_450_reg_n_0_[0] ;
  wire \storemerge_reg_450_reg_n_0_[10] ;
  wire \storemerge_reg_450_reg_n_0_[11] ;
  wire \storemerge_reg_450_reg_n_0_[12] ;
  wire \storemerge_reg_450_reg_n_0_[13] ;
  wire \storemerge_reg_450_reg_n_0_[14] ;
  wire \storemerge_reg_450_reg_n_0_[15] ;
  wire \storemerge_reg_450_reg_n_0_[16] ;
  wire \storemerge_reg_450_reg_n_0_[17] ;
  wire \storemerge_reg_450_reg_n_0_[18] ;
  wire \storemerge_reg_450_reg_n_0_[19] ;
  wire \storemerge_reg_450_reg_n_0_[1] ;
  wire \storemerge_reg_450_reg_n_0_[20] ;
  wire \storemerge_reg_450_reg_n_0_[21] ;
  wire \storemerge_reg_450_reg_n_0_[22] ;
  wire \storemerge_reg_450_reg_n_0_[23] ;
  wire \storemerge_reg_450_reg_n_0_[24] ;
  wire \storemerge_reg_450_reg_n_0_[25] ;
  wire \storemerge_reg_450_reg_n_0_[26] ;
  wire \storemerge_reg_450_reg_n_0_[27] ;
  wire \storemerge_reg_450_reg_n_0_[28] ;
  wire \storemerge_reg_450_reg_n_0_[29] ;
  wire \storemerge_reg_450_reg_n_0_[2] ;
  wire \storemerge_reg_450_reg_n_0_[30] ;
  wire \storemerge_reg_450_reg_n_0_[31] ;
  wire \storemerge_reg_450_reg_n_0_[3] ;
  wire \storemerge_reg_450_reg_n_0_[4] ;
  wire \storemerge_reg_450_reg_n_0_[5] ;
  wire \storemerge_reg_450_reg_n_0_[6] ;
  wire \storemerge_reg_450_reg_n_0_[7] ;
  wire \storemerge_reg_450_reg_n_0_[8] ;
  wire \storemerge_reg_450_reg_n_0_[9] ;
  wire [31:0]sub_fu_647_p2;
  wire [31:0]sub_reg_1385;
  wire sub_reg_13850;
  wire \t_fu_380[0]_i_3_n_0 ;
  wire [30:0]t_fu_380_reg;
  wire \t_fu_380_reg[0]_i_2_n_0 ;
  wire \t_fu_380_reg[0]_i_2_n_1 ;
  wire \t_fu_380_reg[0]_i_2_n_2 ;
  wire \t_fu_380_reg[0]_i_2_n_3 ;
  wire \t_fu_380_reg[0]_i_2_n_4 ;
  wire \t_fu_380_reg[0]_i_2_n_5 ;
  wire \t_fu_380_reg[0]_i_2_n_6 ;
  wire \t_fu_380_reg[0]_i_2_n_7 ;
  wire \t_fu_380_reg[12]_i_1_n_0 ;
  wire \t_fu_380_reg[12]_i_1_n_1 ;
  wire \t_fu_380_reg[12]_i_1_n_2 ;
  wire \t_fu_380_reg[12]_i_1_n_3 ;
  wire \t_fu_380_reg[12]_i_1_n_4 ;
  wire \t_fu_380_reg[12]_i_1_n_5 ;
  wire \t_fu_380_reg[12]_i_1_n_6 ;
  wire \t_fu_380_reg[12]_i_1_n_7 ;
  wire \t_fu_380_reg[16]_i_1_n_0 ;
  wire \t_fu_380_reg[16]_i_1_n_1 ;
  wire \t_fu_380_reg[16]_i_1_n_2 ;
  wire \t_fu_380_reg[16]_i_1_n_3 ;
  wire \t_fu_380_reg[16]_i_1_n_4 ;
  wire \t_fu_380_reg[16]_i_1_n_5 ;
  wire \t_fu_380_reg[16]_i_1_n_6 ;
  wire \t_fu_380_reg[16]_i_1_n_7 ;
  wire \t_fu_380_reg[20]_i_1_n_0 ;
  wire \t_fu_380_reg[20]_i_1_n_1 ;
  wire \t_fu_380_reg[20]_i_1_n_2 ;
  wire \t_fu_380_reg[20]_i_1_n_3 ;
  wire \t_fu_380_reg[20]_i_1_n_4 ;
  wire \t_fu_380_reg[20]_i_1_n_5 ;
  wire \t_fu_380_reg[20]_i_1_n_6 ;
  wire \t_fu_380_reg[20]_i_1_n_7 ;
  wire \t_fu_380_reg[24]_i_1_n_0 ;
  wire \t_fu_380_reg[24]_i_1_n_1 ;
  wire \t_fu_380_reg[24]_i_1_n_2 ;
  wire \t_fu_380_reg[24]_i_1_n_3 ;
  wire \t_fu_380_reg[24]_i_1_n_4 ;
  wire \t_fu_380_reg[24]_i_1_n_5 ;
  wire \t_fu_380_reg[24]_i_1_n_6 ;
  wire \t_fu_380_reg[24]_i_1_n_7 ;
  wire \t_fu_380_reg[28]_i_1_n_2 ;
  wire \t_fu_380_reg[28]_i_1_n_3 ;
  wire \t_fu_380_reg[28]_i_1_n_5 ;
  wire \t_fu_380_reg[28]_i_1_n_6 ;
  wire \t_fu_380_reg[28]_i_1_n_7 ;
  wire \t_fu_380_reg[4]_i_1_n_0 ;
  wire \t_fu_380_reg[4]_i_1_n_1 ;
  wire \t_fu_380_reg[4]_i_1_n_2 ;
  wire \t_fu_380_reg[4]_i_1_n_3 ;
  wire \t_fu_380_reg[4]_i_1_n_4 ;
  wire \t_fu_380_reg[4]_i_1_n_5 ;
  wire \t_fu_380_reg[4]_i_1_n_6 ;
  wire \t_fu_380_reg[4]_i_1_n_7 ;
  wire \t_fu_380_reg[8]_i_1_n_0 ;
  wire \t_fu_380_reg[8]_i_1_n_1 ;
  wire \t_fu_380_reg[8]_i_1_n_2 ;
  wire \t_fu_380_reg[8]_i_1_n_3 ;
  wire \t_fu_380_reg[8]_i_1_n_4 ;
  wire \t_fu_380_reg[8]_i_1_n_5 ;
  wire \t_fu_380_reg[8]_i_1_n_6 ;
  wire \t_fu_380_reg[8]_i_1_n_7 ;
  wire [3:0]\NLW_ap_CS_fsm_reg[10]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[10]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_CS_fsm_reg[10]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_is_last_reg_1399_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_is_last_reg_1399_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_is_last_reg_1399_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_is_last_reg_1399_reg[0]_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_t_fu_380_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_t_fu_380_reg[28]_i_1_O_UNCONNECTED ;

  assign out_stream_TDATA[31] = \<const0> ;
  assign out_stream_TDATA[30] = \<const0> ;
  assign out_stream_TDATA[29] = \<const0> ;
  assign out_stream_TDATA[28] = \<const0> ;
  assign out_stream_TDATA[27] = \<const0> ;
  assign out_stream_TDATA[26] = \<const0> ;
  assign out_stream_TDATA[25] = \<const0> ;
  assign out_stream_TDATA[24] = \<const0> ;
  assign out_stream_TDATA[23] = \<const0> ;
  assign out_stream_TDATA[22] = \<const0> ;
  assign out_stream_TDATA[21] = \<const0> ;
  assign out_stream_TDATA[20] = \<const0> ;
  assign out_stream_TDATA[19] = \<const0> ;
  assign out_stream_TDATA[18] = \<const0> ;
  assign out_stream_TDATA[17] = \<const0> ;
  assign out_stream_TDATA[16] = \<const0> ;
  assign out_stream_TDATA[15] = \<const0> ;
  assign out_stream_TDATA[14] = \<const0> ;
  assign out_stream_TDATA[13] = \<const0> ;
  assign out_stream_TDATA[12] = \<const0> ;
  assign out_stream_TDATA[11] = \<const0> ;
  assign out_stream_TDATA[10] = \<const0> ;
  assign out_stream_TDATA[9] = \<const0> ;
  assign out_stream_TDATA[8] = \<const0> ;
  assign out_stream_TDATA[7:0] = \^out_stream_TDATA [7:0];
  assign out_stream_TKEEP[3] = \<const0> ;
  assign out_stream_TKEEP[2] = \<const0> ;
  assign out_stream_TKEEP[1] = \<const0> ;
  assign out_stream_TKEEP[0] = \<const0> ;
  assign out_stream_TSTRB[3] = \<const0> ;
  assign out_stream_TSTRB[2] = \<const0> ;
  assign out_stream_TSTRB[1] = \<const0> ;
  assign out_stream_TSTRB[0] = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_10 
       (.I0(t_fu_380_reg[29]),
        .I1(num_test_read_reg_963[29]),
        .I2(num_test_read_reg_963[28]),
        .I3(t_fu_380_reg[28]),
        .O(\ap_CS_fsm[10]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_11 
       (.I0(t_fu_380_reg[27]),
        .I1(num_test_read_reg_963[27]),
        .I2(num_test_read_reg_963[26]),
        .I3(t_fu_380_reg[26]),
        .O(\ap_CS_fsm[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_12 
       (.I0(t_fu_380_reg[25]),
        .I1(num_test_read_reg_963[25]),
        .I2(num_test_read_reg_963[24]),
        .I3(t_fu_380_reg[24]),
        .O(\ap_CS_fsm[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_14 
       (.I0(num_test_read_reg_963[22]),
        .I1(t_fu_380_reg[22]),
        .I2(t_fu_380_reg[23]),
        .I3(num_test_read_reg_963[23]),
        .O(\ap_CS_fsm[10]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_15 
       (.I0(num_test_read_reg_963[20]),
        .I1(t_fu_380_reg[20]),
        .I2(t_fu_380_reg[21]),
        .I3(num_test_read_reg_963[21]),
        .O(\ap_CS_fsm[10]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_16 
       (.I0(num_test_read_reg_963[18]),
        .I1(t_fu_380_reg[18]),
        .I2(t_fu_380_reg[19]),
        .I3(num_test_read_reg_963[19]),
        .O(\ap_CS_fsm[10]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_17 
       (.I0(num_test_read_reg_963[16]),
        .I1(t_fu_380_reg[16]),
        .I2(t_fu_380_reg[17]),
        .I3(num_test_read_reg_963[17]),
        .O(\ap_CS_fsm[10]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_18 
       (.I0(t_fu_380_reg[23]),
        .I1(num_test_read_reg_963[23]),
        .I2(num_test_read_reg_963[22]),
        .I3(t_fu_380_reg[22]),
        .O(\ap_CS_fsm[10]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_19 
       (.I0(t_fu_380_reg[21]),
        .I1(num_test_read_reg_963[21]),
        .I2(num_test_read_reg_963[20]),
        .I3(t_fu_380_reg[20]),
        .O(\ap_CS_fsm[10]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_20 
       (.I0(t_fu_380_reg[19]),
        .I1(num_test_read_reg_963[19]),
        .I2(num_test_read_reg_963[18]),
        .I3(t_fu_380_reg[18]),
        .O(\ap_CS_fsm[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_21 
       (.I0(t_fu_380_reg[17]),
        .I1(num_test_read_reg_963[17]),
        .I2(num_test_read_reg_963[16]),
        .I3(t_fu_380_reg[16]),
        .O(\ap_CS_fsm[10]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_23 
       (.I0(num_test_read_reg_963[14]),
        .I1(t_fu_380_reg[14]),
        .I2(t_fu_380_reg[15]),
        .I3(num_test_read_reg_963[15]),
        .O(\ap_CS_fsm[10]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_24 
       (.I0(num_test_read_reg_963[12]),
        .I1(t_fu_380_reg[12]),
        .I2(t_fu_380_reg[13]),
        .I3(num_test_read_reg_963[13]),
        .O(\ap_CS_fsm[10]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_25 
       (.I0(num_test_read_reg_963[10]),
        .I1(t_fu_380_reg[10]),
        .I2(t_fu_380_reg[11]),
        .I3(num_test_read_reg_963[11]),
        .O(\ap_CS_fsm[10]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_26 
       (.I0(num_test_read_reg_963[8]),
        .I1(t_fu_380_reg[8]),
        .I2(t_fu_380_reg[9]),
        .I3(num_test_read_reg_963[9]),
        .O(\ap_CS_fsm[10]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_27 
       (.I0(t_fu_380_reg[15]),
        .I1(num_test_read_reg_963[15]),
        .I2(num_test_read_reg_963[14]),
        .I3(t_fu_380_reg[14]),
        .O(\ap_CS_fsm[10]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_28 
       (.I0(t_fu_380_reg[13]),
        .I1(num_test_read_reg_963[13]),
        .I2(num_test_read_reg_963[12]),
        .I3(t_fu_380_reg[12]),
        .O(\ap_CS_fsm[10]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_29 
       (.I0(t_fu_380_reg[11]),
        .I1(num_test_read_reg_963[11]),
        .I2(num_test_read_reg_963[10]),
        .I3(t_fu_380_reg[10]),
        .O(\ap_CS_fsm[10]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_30 
       (.I0(t_fu_380_reg[9]),
        .I1(num_test_read_reg_963[9]),
        .I2(num_test_read_reg_963[8]),
        .I3(t_fu_380_reg[8]),
        .O(\ap_CS_fsm[10]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_31 
       (.I0(num_test_read_reg_963[6]),
        .I1(t_fu_380_reg[6]),
        .I2(t_fu_380_reg[7]),
        .I3(num_test_read_reg_963[7]),
        .O(\ap_CS_fsm[10]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_32 
       (.I0(num_test_read_reg_963[4]),
        .I1(t_fu_380_reg[4]),
        .I2(t_fu_380_reg[5]),
        .I3(num_test_read_reg_963[5]),
        .O(\ap_CS_fsm[10]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_33 
       (.I0(num_test_read_reg_963[2]),
        .I1(t_fu_380_reg[2]),
        .I2(t_fu_380_reg[3]),
        .I3(num_test_read_reg_963[3]),
        .O(\ap_CS_fsm[10]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_34 
       (.I0(num_test_read_reg_963[0]),
        .I1(t_fu_380_reg[0]),
        .I2(t_fu_380_reg[1]),
        .I3(num_test_read_reg_963[1]),
        .O(\ap_CS_fsm[10]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_35 
       (.I0(t_fu_380_reg[7]),
        .I1(num_test_read_reg_963[7]),
        .I2(num_test_read_reg_963[6]),
        .I3(t_fu_380_reg[6]),
        .O(\ap_CS_fsm[10]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_36 
       (.I0(t_fu_380_reg[5]),
        .I1(num_test_read_reg_963[5]),
        .I2(num_test_read_reg_963[4]),
        .I3(t_fu_380_reg[4]),
        .O(\ap_CS_fsm[10]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_37 
       (.I0(t_fu_380_reg[3]),
        .I1(num_test_read_reg_963[3]),
        .I2(num_test_read_reg_963[2]),
        .I3(t_fu_380_reg[2]),
        .O(\ap_CS_fsm[10]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[10]_i_38 
       (.I0(t_fu_380_reg[1]),
        .I1(num_test_read_reg_963[1]),
        .I2(num_test_read_reg_963[0]),
        .I3(t_fu_380_reg[0]),
        .O(\ap_CS_fsm[10]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \ap_CS_fsm[10]_i_5 
       (.I0(t_fu_380_reg[30]),
        .I1(num_test_read_reg_963[31]),
        .I2(num_test_read_reg_963[30]),
        .O(\ap_CS_fsm[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_6 
       (.I0(num_test_read_reg_963[28]),
        .I1(t_fu_380_reg[28]),
        .I2(t_fu_380_reg[29]),
        .I3(num_test_read_reg_963[29]),
        .O(\ap_CS_fsm[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_7 
       (.I0(num_test_read_reg_963[26]),
        .I1(t_fu_380_reg[26]),
        .I2(t_fu_380_reg[27]),
        .I3(num_test_read_reg_963[27]),
        .O(\ap_CS_fsm[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ap_CS_fsm[10]_i_8 
       (.I0(num_test_read_reg_963[24]),
        .I1(t_fu_380_reg[24]),
        .I2(t_fu_380_reg[25]),
        .I3(num_test_read_reg_963[25]),
        .O(\ap_CS_fsm[10]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \ap_CS_fsm[10]_i_9 
       (.I0(num_test_read_reg_963[30]),
        .I1(num_test_read_reg_963[31]),
        .I2(t_fu_380_reg[30]),
        .O(\ap_CS_fsm[10]_i_9_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst_n_inv));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \ap_CS_fsm_reg[10]_i_13 
       (.CI(\ap_CS_fsm_reg[10]_i_22_n_0 ),
        .CO({\ap_CS_fsm_reg[10]_i_13_n_0 ,\ap_CS_fsm_reg[10]_i_13_n_1 ,\ap_CS_fsm_reg[10]_i_13_n_2 ,\ap_CS_fsm_reg[10]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_CS_fsm[10]_i_23_n_0 ,\ap_CS_fsm[10]_i_24_n_0 ,\ap_CS_fsm[10]_i_25_n_0 ,\ap_CS_fsm[10]_i_26_n_0 }),
        .O(\NLW_ap_CS_fsm_reg[10]_i_13_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[10]_i_27_n_0 ,\ap_CS_fsm[10]_i_28_n_0 ,\ap_CS_fsm[10]_i_29_n_0 ,\ap_CS_fsm[10]_i_30_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \ap_CS_fsm_reg[10]_i_2 
       (.CI(\ap_CS_fsm_reg[10]_i_4_n_0 ),
        .CO({icmp_ln58_fu_673_p2,\ap_CS_fsm_reg[10]_i_2_n_1 ,\ap_CS_fsm_reg[10]_i_2_n_2 ,\ap_CS_fsm_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_CS_fsm[10]_i_5_n_0 ,\ap_CS_fsm[10]_i_6_n_0 ,\ap_CS_fsm[10]_i_7_n_0 ,\ap_CS_fsm[10]_i_8_n_0 }),
        .O(\NLW_ap_CS_fsm_reg[10]_i_2_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[10]_i_9_n_0 ,\ap_CS_fsm[10]_i_10_n_0 ,\ap_CS_fsm[10]_i_11_n_0 ,\ap_CS_fsm[10]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \ap_CS_fsm_reg[10]_i_22 
       (.CI(1'b0),
        .CO({\ap_CS_fsm_reg[10]_i_22_n_0 ,\ap_CS_fsm_reg[10]_i_22_n_1 ,\ap_CS_fsm_reg[10]_i_22_n_2 ,\ap_CS_fsm_reg[10]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_CS_fsm[10]_i_31_n_0 ,\ap_CS_fsm[10]_i_32_n_0 ,\ap_CS_fsm[10]_i_33_n_0 ,\ap_CS_fsm[10]_i_34_n_0 }),
        .O(\NLW_ap_CS_fsm_reg[10]_i_22_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[10]_i_35_n_0 ,\ap_CS_fsm[10]_i_36_n_0 ,\ap_CS_fsm[10]_i_37_n_0 ,\ap_CS_fsm[10]_i_38_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \ap_CS_fsm_reg[10]_i_4 
       (.CI(\ap_CS_fsm_reg[10]_i_13_n_0 ),
        .CO({\ap_CS_fsm_reg[10]_i_4_n_0 ,\ap_CS_fsm_reg[10]_i_4_n_1 ,\ap_CS_fsm_reg[10]_i_4_n_2 ,\ap_CS_fsm_reg[10]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_CS_fsm[10]_i_14_n_0 ,\ap_CS_fsm[10]_i_15_n_0 ,\ap_CS_fsm[10]_i_16_n_0 ,\ap_CS_fsm[10]_i_17_n_0 }),
        .O(\NLW_ap_CS_fsm_reg[10]_i_4_O_UNCONNECTED [3:0]),
        .S({\ap_CS_fsm[10]_i_18_n_0 ,\ap_CS_fsm[10]_i_19_n_0 ,\ap_CS_fsm[10]_i_20_n_0 ,\ap_CS_fsm[10]_i_21_n_0 }));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  design_1_dt_accel_0_0_dt_accel_control_s_axi control_s_axi_U
       (.D(sub_fu_647_p2),
        .E(sub_reg_13850),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q(num_test),
        .\ap_CS_fsm_reg[0] ({ap_CS_fsm_state11,ap_CS_fsm_state8,ap_CS_fsm_state1}),
        .ap_NS_fsm18_out(ap_NS_fsm18_out),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .int_ap_start_reg_0({ap_NS_fsm[8],ap_NS_fsm[1:0]}),
        .\int_latency_out_reg[31]_0 ({\storemerge_reg_450_reg_n_0_[31] ,\storemerge_reg_450_reg_n_0_[30] ,\storemerge_reg_450_reg_n_0_[29] ,\storemerge_reg_450_reg_n_0_[28] ,\storemerge_reg_450_reg_n_0_[27] ,\storemerge_reg_450_reg_n_0_[26] ,\storemerge_reg_450_reg_n_0_[25] ,\storemerge_reg_450_reg_n_0_[24] ,\storemerge_reg_450_reg_n_0_[23] ,\storemerge_reg_450_reg_n_0_[22] ,\storemerge_reg_450_reg_n_0_[21] ,\storemerge_reg_450_reg_n_0_[20] ,\storemerge_reg_450_reg_n_0_[19] ,\storemerge_reg_450_reg_n_0_[18] ,\storemerge_reg_450_reg_n_0_[17] ,\storemerge_reg_450_reg_n_0_[16] ,\storemerge_reg_450_reg_n_0_[15] ,\storemerge_reg_450_reg_n_0_[14] ,\storemerge_reg_450_reg_n_0_[13] ,\storemerge_reg_450_reg_n_0_[12] ,\storemerge_reg_450_reg_n_0_[11] ,\storemerge_reg_450_reg_n_0_[10] ,\storemerge_reg_450_reg_n_0_[9] ,\storemerge_reg_450_reg_n_0_[8] ,\storemerge_reg_450_reg_n_0_[7] ,\storemerge_reg_450_reg_n_0_[6] ,\storemerge_reg_450_reg_n_0_[5] ,\storemerge_reg_450_reg_n_0_[4] ,\storemerge_reg_450_reg_n_0_[3] ,\storemerge_reg_450_reg_n_0_[2] ,\storemerge_reg_450_reg_n_0_[1] ,\storemerge_reg_450_reg_n_0_[0] }),
        .\int_num_features_reg[31]_0 (num_features),
        .\int_num_nodes_reg[31]_0 (num_nodes),
        .interrupt(interrupt),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  FDRE \current_loc_fu_120_reg[0] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out[0]),
        .Q(current_loc_fu_120[0]),
        .R(1'b0));
  FDRE \current_loc_fu_120_reg[1] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out[1]),
        .Q(current_loc_fu_120[1]),
        .R(1'b0));
  FDRE \current_loc_fu_120_reg[2] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out[2]),
        .Q(current_loc_fu_120[2]),
        .R(1'b0));
  FDRE \current_loc_fu_120_reg[3] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out[3]),
        .Q(current_loc_fu_120[3]),
        .R(1'b0));
  FDRE \current_loc_fu_120_reg[4] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out[4]),
        .Q(current_loc_fu_120[4]),
        .R(1'b0));
  FDRE \current_loc_fu_120_reg[5] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out[5]),
        .Q(current_loc_fu_120[5]),
        .R(1'b0));
  FDRE \current_loc_fu_120_reg[6] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out[6]),
        .Q(current_loc_fu_120[6]),
        .R(1'b0));
  FDRE \current_loc_fu_120_reg[7] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out[7]),
        .Q(current_loc_fu_120[7]),
        .R(1'b0));
  FDRE \current_loc_fu_120_reg[8] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out[8]),
        .Q(current_loc_fu_120[8]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[0]),
        .Q(cycles_3_reg_1390[0]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[10]),
        .Q(cycles_3_reg_1390[10]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[11]),
        .Q(cycles_3_reg_1390[11]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[12]),
        .Q(cycles_3_reg_1390[12]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[13]),
        .Q(cycles_3_reg_1390[13]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[14]),
        .Q(cycles_3_reg_1390[14]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[15]),
        .Q(cycles_3_reg_1390[15]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[16]),
        .Q(cycles_3_reg_1390[16]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[17]),
        .Q(cycles_3_reg_1390[17]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[18]),
        .Q(cycles_3_reg_1390[18]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[19]),
        .Q(cycles_3_reg_1390[19]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[1]),
        .Q(cycles_3_reg_1390[1]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[20]),
        .Q(cycles_3_reg_1390[20]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[21]),
        .Q(cycles_3_reg_1390[21]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[22]),
        .Q(cycles_3_reg_1390[22]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[23]),
        .Q(cycles_3_reg_1390[23]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[24]),
        .Q(cycles_3_reg_1390[24]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[25]),
        .Q(cycles_3_reg_1390[25]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[26]),
        .Q(cycles_3_reg_1390[26]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[27]),
        .Q(cycles_3_reg_1390[27]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[28]),
        .Q(cycles_3_reg_1390[28]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[29]),
        .Q(cycles_3_reg_1390[29]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[2]),
        .Q(cycles_3_reg_1390[2]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[30]),
        .Q(cycles_3_reg_1390[30]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[31]),
        .Q(cycles_3_reg_1390[31]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[3]),
        .Q(cycles_3_reg_1390[3]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[4]),
        .Q(cycles_3_reg_1390[4]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[5]),
        .Q(cycles_3_reg_1390[5]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[6]),
        .Q(cycles_3_reg_1390[6]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[7]),
        .Q(cycles_3_reg_1390[7]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[8]),
        .Q(cycles_3_reg_1390[8]),
        .R(1'b0));
  FDRE \cycles_3_reg_1390_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(cycles_fu_384[9]),
        .Q(cycles_3_reg_1390[9]),
        .R(1'b0));
  FDRE \cycles_fu_384_reg[0] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[0]),
        .Q(cycles_fu_384[0]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[10] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[10]),
        .Q(cycles_fu_384[10]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[11] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[11]),
        .Q(cycles_fu_384[11]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[12] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[12]),
        .Q(cycles_fu_384[12]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[13] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[13]),
        .Q(cycles_fu_384[13]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[14] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[14]),
        .Q(cycles_fu_384[14]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[15] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[15]),
        .Q(cycles_fu_384[15]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[16] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[16]),
        .Q(cycles_fu_384[16]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[17] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[17]),
        .Q(cycles_fu_384[17]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[18] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[18]),
        .Q(cycles_fu_384[18]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[19] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[19]),
        .Q(cycles_fu_384[19]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[1] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[1]),
        .Q(cycles_fu_384[1]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[20] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[20]),
        .Q(cycles_fu_384[20]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[21] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[21]),
        .Q(cycles_fu_384[21]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[22] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[22]),
        .Q(cycles_fu_384[22]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[23] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[23]),
        .Q(cycles_fu_384[23]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[24] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[24]),
        .Q(cycles_fu_384[24]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[25] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[25]),
        .Q(cycles_fu_384[25]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[26] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[26]),
        .Q(cycles_fu_384[26]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[27] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[27]),
        .Q(cycles_fu_384[27]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[28] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[28]),
        .Q(cycles_fu_384[28]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[29] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[29]),
        .Q(cycles_fu_384[29]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[2] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[2]),
        .Q(cycles_fu_384[2]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[30] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[30]),
        .Q(cycles_fu_384[30]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[31] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[31]),
        .Q(cycles_fu_384[31]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[3] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[3]),
        .Q(cycles_fu_384[3]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[4] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[4]),
        .Q(cycles_fu_384[4]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[5] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[5]),
        .Q(cycles_fu_384[5]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[6] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[6]),
        .Q(cycles_fu_384[6]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[7] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[7]),
        .Q(cycles_fu_384[7]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[8] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[8]),
        .Q(cycles_fu_384[8]),
        .R(ap_NS_fsm18_out));
  FDRE \cycles_fu_384_reg[9] 
       (.C(ap_clk),
        .CE(current_loc_fu_1200),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out[9]),
        .Q(cycles_fu_384[9]),
        .R(ap_NS_fsm18_out));
  design_1_dt_accel_0_0_dt_accel_dt_accel_Pipeline_LOAD_NODES grp_dt_accel_Pipeline_LOAD_NODES_fu_618
       (.ADDRARDADDR(node_feature_V_address0),
        .D(ap_NS_fsm[9]),
        .E(ap_NS_fsm12_out),
        .Q({ap_CS_fsm_state10,ap_CS_fsm_state9,ap_CS_fsm_state6,ap_CS_fsm_state3}),
        .SR(storemerge_reg_450),
        .WEA(node_feature_V_we0),
        .\ap_CS_fsm_reg[4]_0 ({ap_CS_fsm_state5_3,ap_CS_fsm_state4_2,ap_CS_fsm_state3_1,ap_CS_fsm_state2_0}),
        .\ap_CS_fsm_reg[8] (grp_dt_accel_Pipeline_LOAD_NODES_fu_618_n_39),
        .\ap_CS_fsm_reg[9] (node_threshold_V_we0),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\current_loc_fu_120_reg[8] (node_class_V_address0),
        .f_fu_308(f_fu_308),
        .grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0),
        .grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0),
        .icmp_ln42_fu_169_p2_carry__2_0(num_nodes_read_reg_968),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .in_stream_TVALID_int_regslice(in_stream_TVALID_int_regslice),
        .node_class_V_ce0(node_class_V_ce0),
        .ram_reg(grp_dt_accel_Pipeline_TRAVERSE_fu_539_node_feature_V_address0),
        .ram_reg_0(grp_dt_accel_Pipeline_TRAVERSE_fu_539_node_left_V_address0),
        .ram_reg_1(current_loc_fu_120),
        .\zext_ln42_reg_226_reg[8]_0 (node_threshold_V_address0));
  FDRE #(
    .INIT(1'b0)) 
    grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_n_39),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_dt_accel_0_0_dt_accel_dt_accel_Pipeline_READ_FEAT grp_dt_accel_Pipeline_READ_FEAT_fu_462
       (.CO(icmp_ln65_fu_1046_p2),
        .D(ap_NS_fsm[3:2]),
        .DOADO(node_feature_V_q0[5:0]),
        .Q(num_features_read_reg_973),
        .\ap_CS_fsm_reg[1] (grp_dt_accel_Pipeline_READ_FEAT_fu_462_n_3),
        .\ap_CS_fsm_reg[2] ({ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[2]_0 (icmp_ln58_fu_673_p2),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .f_fu_308(f_fu_308),
        .grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .in_stream_TVALID_int_regslice(in_stream_TVALID_int_regslice),
        .ram_reg(feat_val_V_fu_697_p66),
        .\test_feat_V_fu_564_reg[15]_0 (in_stream_TDATA_int_regslice));
  FDRE #(
    .INIT(1'b0)) 
    grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_dt_accel_Pipeline_READ_FEAT_fu_462_n_3),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_dt_accel_0_0_dt_accel_dt_accel_Pipeline_TRAVERSE grp_dt_accel_Pipeline_TRAVERSE_fu_539
       (.D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_cycles_1_out),
        .DOADO(node_feature_V_q0[7]),
        .E(current_loc_fu_1200),
        .Q(cycles_3_reg_1390),
        .S({node_threshold_V_U_n_16,node_threshold_V_U_n_17,node_threshold_V_U_n_18,node_threshold_V_U_n_19}),
        .\ap_CS_fsm_reg[3]_0 (ap_NS_fsm[5:4]),
        .\ap_CS_fsm_reg[3]_1 (grp_dt_accel_Pipeline_TRAVERSE_fu_539_n_72),
        .\ap_CS_fsm_reg[4]_0 (grp_dt_accel_Pipeline_TRAVERSE_fu_539_node_feature_V_address0),
        .ap_clk(ap_clk),
        .ap_condition_pp0_exit_iter0_state3(ap_condition_pp0_exit_iter0_state3),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\current_fu_186_reg[8]_0 (grp_dt_accel_Pipeline_TRAVERSE_fu_539_current_out),
        .\current_fu_186_reg[8]_1 ({node_threshold_V_U_n_20,node_threshold_V_U_n_21,node_threshold_V_U_n_22}),
        .\current_load_1_reg_1162_reg[8]_0 (node_left_V_q0),
        .\current_load_1_reg_1162_reg[8]_1 (node_right_V_q0),
        .\feat_val_V_reg_1182_reg[13]_0 (feat_val_V_reg_1182),
        .\feat_val_V_reg_1182_reg[15]_0 (feat_val_V_fu_697_p66),
        .grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0),
        .grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .icmp_ln1652_fu_782_p2_carry__0_0(node_threshold_V_q0),
        .\icmp_ln74_reg_1153_reg[0]_0 (grp_dt_accel_Pipeline_TRAVERSE_fu_539_n_32),
        .in_stream_TVALID_int_regslice(in_stream_TVALID_int_regslice),
        .node_feature_V_ce0(node_feature_V_ce0),
        .node_left_V_ce0(node_left_V_ce0),
        .node_right_V_ce0(node_right_V_ce0),
        .node_threshold_V_ce0(node_threshold_V_ce0),
        .ram_reg({ap_CS_fsm_state10,ap_CS_fsm_state5,ap_CS_fsm_state4}),
        .ram_reg_0({ap_CS_fsm_state4_2,ap_CS_fsm_state3_1,ap_CS_fsm_state2_0}),
        .\zext_ln77_reg_1167_reg[8]_0 (grp_dt_accel_Pipeline_TRAVERSE_fu_539_node_left_V_address0));
  FDRE #(
    .INIT(1'b0)) 
    grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_dt_accel_Pipeline_TRAVERSE_fu_539_n_72),
        .Q(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hBF80)) 
    \is_last_reg_1399[0]_i_1 
       (.I0(is_last_fu_684_p2),
        .I1(ap_CS_fsm_state2),
        .I2(icmp_ln58_fu_673_p2),
        .I3(is_last_reg_1399),
        .O(\is_last_reg_1399[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_10 
       (.I0(t_fu_380_reg[15]),
        .I1(sub_reg_1385[15]),
        .I2(sub_reg_1385[16]),
        .I3(t_fu_380_reg[16]),
        .I4(sub_reg_1385[17]),
        .I5(t_fu_380_reg[17]),
        .O(\is_last_reg_1399[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_11 
       (.I0(t_fu_380_reg[12]),
        .I1(sub_reg_1385[12]),
        .I2(sub_reg_1385[13]),
        .I3(t_fu_380_reg[13]),
        .I4(sub_reg_1385[14]),
        .I5(t_fu_380_reg[14]),
        .O(\is_last_reg_1399[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_12 
       (.I0(t_fu_380_reg[9]),
        .I1(sub_reg_1385[9]),
        .I2(sub_reg_1385[10]),
        .I3(t_fu_380_reg[10]),
        .I4(sub_reg_1385[11]),
        .I5(t_fu_380_reg[11]),
        .O(\is_last_reg_1399[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_13 
       (.I0(t_fu_380_reg[6]),
        .I1(sub_reg_1385[6]),
        .I2(sub_reg_1385[7]),
        .I3(t_fu_380_reg[7]),
        .I4(sub_reg_1385[8]),
        .I5(t_fu_380_reg[8]),
        .O(\is_last_reg_1399[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_14 
       (.I0(t_fu_380_reg[3]),
        .I1(sub_reg_1385[3]),
        .I2(sub_reg_1385[4]),
        .I3(t_fu_380_reg[4]),
        .I4(sub_reg_1385[5]),
        .I5(t_fu_380_reg[5]),
        .O(\is_last_reg_1399[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_15 
       (.I0(t_fu_380_reg[0]),
        .I1(sub_reg_1385[0]),
        .I2(sub_reg_1385[1]),
        .I3(t_fu_380_reg[1]),
        .I4(sub_reg_1385[2]),
        .I5(t_fu_380_reg[2]),
        .O(\is_last_reg_1399[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \is_last_reg_1399[0]_i_4 
       (.I0(sub_reg_1385[30]),
        .I1(sub_reg_1385[31]),
        .I2(t_fu_380_reg[30]),
        .O(\is_last_reg_1399[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_5 
       (.I0(t_fu_380_reg[27]),
        .I1(sub_reg_1385[27]),
        .I2(sub_reg_1385[28]),
        .I3(t_fu_380_reg[28]),
        .I4(sub_reg_1385[29]),
        .I5(t_fu_380_reg[29]),
        .O(\is_last_reg_1399[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_6 
       (.I0(t_fu_380_reg[24]),
        .I1(sub_reg_1385[24]),
        .I2(sub_reg_1385[25]),
        .I3(t_fu_380_reg[25]),
        .I4(sub_reg_1385[26]),
        .I5(t_fu_380_reg[26]),
        .O(\is_last_reg_1399[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_8 
       (.I0(t_fu_380_reg[21]),
        .I1(sub_reg_1385[21]),
        .I2(sub_reg_1385[22]),
        .I3(t_fu_380_reg[22]),
        .I4(sub_reg_1385[23]),
        .I5(t_fu_380_reg[23]),
        .O(\is_last_reg_1399[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \is_last_reg_1399[0]_i_9 
       (.I0(t_fu_380_reg[18]),
        .I1(sub_reg_1385[18]),
        .I2(sub_reg_1385[19]),
        .I3(t_fu_380_reg[19]),
        .I4(sub_reg_1385[20]),
        .I5(t_fu_380_reg[20]),
        .O(\is_last_reg_1399[0]_i_9_n_0 ));
  FDRE \is_last_reg_1399_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\is_last_reg_1399[0]_i_1_n_0 ),
        .Q(is_last_reg_1399),
        .R(1'b0));
  CARRY4 \is_last_reg_1399_reg[0]_i_2 
       (.CI(\is_last_reg_1399_reg[0]_i_3_n_0 ),
        .CO({\NLW_is_last_reg_1399_reg[0]_i_2_CO_UNCONNECTED [3],is_last_fu_684_p2,\is_last_reg_1399_reg[0]_i_2_n_2 ,\is_last_reg_1399_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_is_last_reg_1399_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\is_last_reg_1399[0]_i_4_n_0 ,\is_last_reg_1399[0]_i_5_n_0 ,\is_last_reg_1399[0]_i_6_n_0 }));
  CARRY4 \is_last_reg_1399_reg[0]_i_3 
       (.CI(\is_last_reg_1399_reg[0]_i_7_n_0 ),
        .CO({\is_last_reg_1399_reg[0]_i_3_n_0 ,\is_last_reg_1399_reg[0]_i_3_n_1 ,\is_last_reg_1399_reg[0]_i_3_n_2 ,\is_last_reg_1399_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_is_last_reg_1399_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\is_last_reg_1399[0]_i_8_n_0 ,\is_last_reg_1399[0]_i_9_n_0 ,\is_last_reg_1399[0]_i_10_n_0 ,\is_last_reg_1399[0]_i_11_n_0 }));
  CARRY4 \is_last_reg_1399_reg[0]_i_7 
       (.CI(1'b0),
        .CO({\is_last_reg_1399_reg[0]_i_7_n_0 ,\is_last_reg_1399_reg[0]_i_7_n_1 ,\is_last_reg_1399_reg[0]_i_7_n_2 ,\is_last_reg_1399_reg[0]_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_is_last_reg_1399_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\is_last_reg_1399[0]_i_12_n_0 ,\is_last_reg_1399[0]_i_13_n_0 ,\is_last_reg_1399[0]_i_14_n_0 ,\is_last_reg_1399[0]_i_15_n_0 }));
  design_1_dt_accel_0_0_dt_accel_node_feature_V_RAM_AUTO_1R1W node_class_V_U
       (.D(node_class_V_q0),
        .WEA(node_class_V_we0),
        .ap_clk(ap_clk),
        .node_class_V_ce0(node_class_V_ce0),
        .ram_reg_0(node_class_V_address0),
        .ram_reg_1(in_stream_TDATA_int_regslice[7:0]));
  design_1_dt_accel_0_0_dt_accel_node_feature_V_RAM_AUTO_1R1W_0 node_feature_V_U
       (.ADDRARDADDR(node_feature_V_address0),
        .DOADO({node_feature_V_q0[7],node_feature_V_q0[5:0]}),
        .WEA(node_feature_V_we0),
        .ap_clk(ap_clk),
        .ap_condition_pp0_exit_iter0_state3(ap_condition_pp0_exit_iter0_state3),
        .ap_enable_reg_pp0_iter1_reg(grp_dt_accel_Pipeline_TRAVERSE_fu_539_n_32),
        .node_feature_V_ce0(node_feature_V_ce0),
        .ram_reg_0(in_stream_TDATA_int_regslice[7:0]));
  design_1_dt_accel_0_0_dt_accel_node_left_V_RAM_AUTO_1R1W node_left_V_U
       (.WEA(node_left_V_we0),
        .ap_clk(ap_clk),
        .node_left_V_ce0(node_left_V_ce0),
        .ram_reg_0(node_left_V_q0),
        .ram_reg_1(node_threshold_V_address0),
        .ram_reg_2(in_stream_TDATA_int_regslice[8:0]));
  design_1_dt_accel_0_0_dt_accel_node_left_V_RAM_AUTO_1R1W_1 node_right_V_U
       (.WEA(node_right_V_we0),
        .ap_clk(ap_clk),
        .node_right_V_ce0(node_right_V_ce0),
        .ram_reg_0(node_right_V_q0),
        .ram_reg_1(node_threshold_V_address0),
        .ram_reg_2(in_stream_TDATA_int_regslice[8:0]));
  design_1_dt_accel_0_0_dt_accel_node_threshold_V_RAM_AUTO_1R1W node_threshold_V_U
       (.S({node_threshold_V_U_n_16,node_threshold_V_U_n_17,node_threshold_V_U_n_18,node_threshold_V_U_n_19}),
        .ap_clk(ap_clk),
        .icmp_ln1652_fu_782_p2_carry__0(feat_val_V_reg_1182),
        .node_threshold_V_ce0(node_threshold_V_ce0),
        .ram_reg_0(node_threshold_V_q0),
        .ram_reg_1({node_threshold_V_U_n_20,node_threshold_V_U_n_21,node_threshold_V_U_n_22}),
        .ram_reg_2(node_threshold_V_address0),
        .ram_reg_3(in_stream_TDATA_int_regslice),
        .ram_reg_4(node_threshold_V_we0));
  FDRE \num_features_read_reg_973_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[0]),
        .Q(num_features_read_reg_973[0]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[10]),
        .Q(num_features_read_reg_973[10]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[11]),
        .Q(num_features_read_reg_973[11]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[12]),
        .Q(num_features_read_reg_973[12]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[13]),
        .Q(num_features_read_reg_973[13]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[14]),
        .Q(num_features_read_reg_973[14]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[15]),
        .Q(num_features_read_reg_973[15]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[16]),
        .Q(num_features_read_reg_973[16]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[17]),
        .Q(num_features_read_reg_973[17]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[18]),
        .Q(num_features_read_reg_973[18]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[19]),
        .Q(num_features_read_reg_973[19]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[1]),
        .Q(num_features_read_reg_973[1]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[20]),
        .Q(num_features_read_reg_973[20]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[21]),
        .Q(num_features_read_reg_973[21]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[22]),
        .Q(num_features_read_reg_973[22]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[23]),
        .Q(num_features_read_reg_973[23]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[24]),
        .Q(num_features_read_reg_973[24]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[25]),
        .Q(num_features_read_reg_973[25]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[26]),
        .Q(num_features_read_reg_973[26]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[27]),
        .Q(num_features_read_reg_973[27]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[28]),
        .Q(num_features_read_reg_973[28]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[29]),
        .Q(num_features_read_reg_973[29]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[2]),
        .Q(num_features_read_reg_973[2]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[30]),
        .Q(num_features_read_reg_973[30]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[31]),
        .Q(num_features_read_reg_973[31]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[3]),
        .Q(num_features_read_reg_973[3]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[4]),
        .Q(num_features_read_reg_973[4]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[5]),
        .Q(num_features_read_reg_973[5]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[6]),
        .Q(num_features_read_reg_973[6]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[7]),
        .Q(num_features_read_reg_973[7]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[8]),
        .Q(num_features_read_reg_973[8]),
        .R(1'b0));
  FDRE \num_features_read_reg_973_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_features[9]),
        .Q(num_features_read_reg_973[9]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[0]),
        .Q(num_nodes_read_reg_968[0]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[10]),
        .Q(num_nodes_read_reg_968[10]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[11]),
        .Q(num_nodes_read_reg_968[11]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[12]),
        .Q(num_nodes_read_reg_968[12]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[13]),
        .Q(num_nodes_read_reg_968[13]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[14]),
        .Q(num_nodes_read_reg_968[14]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[15]),
        .Q(num_nodes_read_reg_968[15]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[16]),
        .Q(num_nodes_read_reg_968[16]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[17]),
        .Q(num_nodes_read_reg_968[17]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[18]),
        .Q(num_nodes_read_reg_968[18]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[19]),
        .Q(num_nodes_read_reg_968[19]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[1]),
        .Q(num_nodes_read_reg_968[1]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[20]),
        .Q(num_nodes_read_reg_968[20]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[21]),
        .Q(num_nodes_read_reg_968[21]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[22]),
        .Q(num_nodes_read_reg_968[22]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[23]),
        .Q(num_nodes_read_reg_968[23]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[24]),
        .Q(num_nodes_read_reg_968[24]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[25]),
        .Q(num_nodes_read_reg_968[25]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[26]),
        .Q(num_nodes_read_reg_968[26]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[27]),
        .Q(num_nodes_read_reg_968[27]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[28]),
        .Q(num_nodes_read_reg_968[28]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[29]),
        .Q(num_nodes_read_reg_968[29]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[2]),
        .Q(num_nodes_read_reg_968[2]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[30]),
        .Q(num_nodes_read_reg_968[30]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[31]),
        .Q(num_nodes_read_reg_968[31]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[3]),
        .Q(num_nodes_read_reg_968[3]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[4]),
        .Q(num_nodes_read_reg_968[4]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[5]),
        .Q(num_nodes_read_reg_968[5]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[6]),
        .Q(num_nodes_read_reg_968[6]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[7]),
        .Q(num_nodes_read_reg_968[7]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[8]),
        .Q(num_nodes_read_reg_968[8]),
        .R(1'b0));
  FDRE \num_nodes_read_reg_968_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_nodes[9]),
        .Q(num_nodes_read_reg_968[9]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[0]),
        .Q(num_test_read_reg_963[0]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[10]),
        .Q(num_test_read_reg_963[10]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[11]),
        .Q(num_test_read_reg_963[11]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[12]),
        .Q(num_test_read_reg_963[12]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[13]),
        .Q(num_test_read_reg_963[13]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[14]),
        .Q(num_test_read_reg_963[14]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[15]),
        .Q(num_test_read_reg_963[15]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[16]),
        .Q(num_test_read_reg_963[16]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[17]),
        .Q(num_test_read_reg_963[17]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[18]),
        .Q(num_test_read_reg_963[18]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[19]),
        .Q(num_test_read_reg_963[19]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[1]),
        .Q(num_test_read_reg_963[1]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[20]),
        .Q(num_test_read_reg_963[20]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[21]),
        .Q(num_test_read_reg_963[21]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[22]),
        .Q(num_test_read_reg_963[22]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[23]),
        .Q(num_test_read_reg_963[23]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[24]),
        .Q(num_test_read_reg_963[24]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[25]),
        .Q(num_test_read_reg_963[25]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[26]),
        .Q(num_test_read_reg_963[26]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[27]),
        .Q(num_test_read_reg_963[27]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[28]),
        .Q(num_test_read_reg_963[28]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[29]),
        .Q(num_test_read_reg_963[29]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[2]),
        .Q(num_test_read_reg_963[2]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[30]),
        .Q(num_test_read_reg_963[30]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[31]),
        .Q(num_test_read_reg_963[31]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[3]),
        .Q(num_test_read_reg_963[3]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[4]),
        .Q(num_test_read_reg_963[4]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[5]),
        .Q(num_test_read_reg_963[5]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[6]),
        .Q(num_test_read_reg_963[6]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[7]),
        .Q(num_test_read_reg_963[7]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[8]),
        .Q(num_test_read_reg_963[8]),
        .R(1'b0));
  FDRE \num_test_read_reg_963_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(num_test[9]),
        .Q(num_test_read_reg_963[9]),
        .R(1'b0));
  design_1_dt_accel_0_0_dt_accel_regslice_both regslice_both_in_stream_V_data_V_U
       (.\B_V_data_1_payload_B_reg[15]_0 (in_stream_TDATA_int_regslice),
        .\B_V_data_1_state_reg[1]_0 (in_stream_TREADY),
        .CO(icmp_ln65_fu_1046_p2),
        .Q(ap_CS_fsm_state10),
        .WEA(node_class_V_we0),
        .\ap_CS_fsm_reg[9] (node_right_V_we0),
        .\ap_CS_fsm_reg[9]_0 (node_left_V_we0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .f_fu_308(f_fu_308),
        .grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0),
        .grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .in_stream_TDATA(in_stream_TDATA[15:0]),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .in_stream_TVALID(in_stream_TVALID),
        .in_stream_TVALID_int_regslice(in_stream_TVALID_int_regslice),
        .ram_reg({ap_CS_fsm_state5_3,ap_CS_fsm_state4_2,ap_CS_fsm_state3_1,ap_CS_fsm_state2_0}));
  design_1_dt_accel_0_0_dt_accel_regslice_both_2 regslice_both_out_stream_V_data_V_U
       (.\B_V_data_1_payload_A_reg[7]_0 (node_class_V_q0),
        .\B_V_data_1_state_reg[0]_0 (out_stream_TVALID),
        .D({ap_NS_fsm[10],ap_NS_fsm[7:6]}),
        .Q({ap_CS_fsm_state11,ap_CS_fsm_state10,ap_CS_fsm_state8,ap_CS_fsm_state7,ap_CS_fsm_state6,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[10] (icmp_ln58_fu_673_p2),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .out_stream_TDATA(\^out_stream_TDATA ),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice));
  design_1_dt_accel_0_0_dt_accel_regslice_both__parameterized1 regslice_both_out_stream_V_last_V_U
       (.Q(ap_CS_fsm_state7),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .is_last_reg_1399(is_last_reg_1399),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice));
  LUT2 #(
    .INIT(4'h2)) 
    \storemerge_reg_450[31]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(icmp_ln58_fu_673_p2),
        .O(ap_NS_fsm12_out));
  FDRE \storemerge_reg_450_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[0]),
        .Q(\storemerge_reg_450_reg_n_0_[0] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[10]),
        .Q(\storemerge_reg_450_reg_n_0_[10] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[11]),
        .Q(\storemerge_reg_450_reg_n_0_[11] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[12]),
        .Q(\storemerge_reg_450_reg_n_0_[12] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[13]),
        .Q(\storemerge_reg_450_reg_n_0_[13] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[14]),
        .Q(\storemerge_reg_450_reg_n_0_[14] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[15]),
        .Q(\storemerge_reg_450_reg_n_0_[15] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[16]),
        .Q(\storemerge_reg_450_reg_n_0_[16] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[17]),
        .Q(\storemerge_reg_450_reg_n_0_[17] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[18]),
        .Q(\storemerge_reg_450_reg_n_0_[18] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[19]),
        .Q(\storemerge_reg_450_reg_n_0_[19] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[1]),
        .Q(\storemerge_reg_450_reg_n_0_[1] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[20]),
        .Q(\storemerge_reg_450_reg_n_0_[20] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[21]),
        .Q(\storemerge_reg_450_reg_n_0_[21] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[22]),
        .Q(\storemerge_reg_450_reg_n_0_[22] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[23]),
        .Q(\storemerge_reg_450_reg_n_0_[23] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[24] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[24]),
        .Q(\storemerge_reg_450_reg_n_0_[24] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[25] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[25]),
        .Q(\storemerge_reg_450_reg_n_0_[25] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[26] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[26]),
        .Q(\storemerge_reg_450_reg_n_0_[26] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[27] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[27]),
        .Q(\storemerge_reg_450_reg_n_0_[27] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[28] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[28]),
        .Q(\storemerge_reg_450_reg_n_0_[28] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[29] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[29]),
        .Q(\storemerge_reg_450_reg_n_0_[29] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[2]),
        .Q(\storemerge_reg_450_reg_n_0_[2] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[30] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[30]),
        .Q(\storemerge_reg_450_reg_n_0_[30] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[31] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[31]),
        .Q(\storemerge_reg_450_reg_n_0_[31] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[3]),
        .Q(\storemerge_reg_450_reg_n_0_[3] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[4]),
        .Q(\storemerge_reg_450_reg_n_0_[4] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[5]),
        .Q(\storemerge_reg_450_reg_n_0_[5] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[6]),
        .Q(\storemerge_reg_450_reg_n_0_[6] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[7]),
        .Q(\storemerge_reg_450_reg_n_0_[7] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[8]),
        .Q(\storemerge_reg_450_reg_n_0_[8] ),
        .R(storemerge_reg_450));
  FDRE \storemerge_reg_450_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm12_out),
        .D(cycles_fu_384[9]),
        .Q(\storemerge_reg_450_reg_n_0_[9] ),
        .R(storemerge_reg_450));
  FDRE \sub_reg_1385_reg[0] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[0]),
        .Q(sub_reg_1385[0]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[10] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[10]),
        .Q(sub_reg_1385[10]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[11] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[11]),
        .Q(sub_reg_1385[11]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[12] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[12]),
        .Q(sub_reg_1385[12]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[13] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[13]),
        .Q(sub_reg_1385[13]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[14] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[14]),
        .Q(sub_reg_1385[14]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[15] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[15]),
        .Q(sub_reg_1385[15]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[16] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[16]),
        .Q(sub_reg_1385[16]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[17] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[17]),
        .Q(sub_reg_1385[17]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[18] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[18]),
        .Q(sub_reg_1385[18]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[19] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[19]),
        .Q(sub_reg_1385[19]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[1] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[1]),
        .Q(sub_reg_1385[1]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[20] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[20]),
        .Q(sub_reg_1385[20]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[21] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[21]),
        .Q(sub_reg_1385[21]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[22] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[22]),
        .Q(sub_reg_1385[22]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[23] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[23]),
        .Q(sub_reg_1385[23]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[24] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[24]),
        .Q(sub_reg_1385[24]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[25] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[25]),
        .Q(sub_reg_1385[25]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[26] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[26]),
        .Q(sub_reg_1385[26]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[27] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[27]),
        .Q(sub_reg_1385[27]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[28] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[28]),
        .Q(sub_reg_1385[28]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[29] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[29]),
        .Q(sub_reg_1385[29]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[2] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[2]),
        .Q(sub_reg_1385[2]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[30] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[30]),
        .Q(sub_reg_1385[30]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[31] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[31]),
        .Q(sub_reg_1385[31]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[3] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[3]),
        .Q(sub_reg_1385[3]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[4] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[4]),
        .Q(sub_reg_1385[4]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[5] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[5]),
        .Q(sub_reg_1385[5]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[6] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[6]),
        .Q(sub_reg_1385[6]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[7] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[7]),
        .Q(sub_reg_1385[7]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[8] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[8]),
        .Q(sub_reg_1385[8]),
        .R(1'b0));
  FDRE \sub_reg_1385_reg[9] 
       (.C(ap_clk),
        .CE(sub_reg_13850),
        .D(sub_fu_647_p2[9]),
        .Q(sub_reg_1385[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \t_fu_380[0]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(icmp_ln58_fu_673_p2),
        .O(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0));
  LUT1 #(
    .INIT(2'h1)) 
    \t_fu_380[0]_i_3 
       (.I0(t_fu_380_reg[0]),
        .O(\t_fu_380[0]_i_3_n_0 ));
  FDRE \t_fu_380_reg[0] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[0]_i_2_n_7 ),
        .Q(t_fu_380_reg[0]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_fu_380_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\t_fu_380_reg[0]_i_2_n_0 ,\t_fu_380_reg[0]_i_2_n_1 ,\t_fu_380_reg[0]_i_2_n_2 ,\t_fu_380_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\t_fu_380_reg[0]_i_2_n_4 ,\t_fu_380_reg[0]_i_2_n_5 ,\t_fu_380_reg[0]_i_2_n_6 ,\t_fu_380_reg[0]_i_2_n_7 }),
        .S({t_fu_380_reg[3:1],\t_fu_380[0]_i_3_n_0 }));
  FDRE \t_fu_380_reg[10] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[8]_i_1_n_5 ),
        .Q(t_fu_380_reg[10]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[11] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[8]_i_1_n_4 ),
        .Q(t_fu_380_reg[11]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[12] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[12]_i_1_n_7 ),
        .Q(t_fu_380_reg[12]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_fu_380_reg[12]_i_1 
       (.CI(\t_fu_380_reg[8]_i_1_n_0 ),
        .CO({\t_fu_380_reg[12]_i_1_n_0 ,\t_fu_380_reg[12]_i_1_n_1 ,\t_fu_380_reg[12]_i_1_n_2 ,\t_fu_380_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_fu_380_reg[12]_i_1_n_4 ,\t_fu_380_reg[12]_i_1_n_5 ,\t_fu_380_reg[12]_i_1_n_6 ,\t_fu_380_reg[12]_i_1_n_7 }),
        .S(t_fu_380_reg[15:12]));
  FDRE \t_fu_380_reg[13] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[12]_i_1_n_6 ),
        .Q(t_fu_380_reg[13]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[14] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[12]_i_1_n_5 ),
        .Q(t_fu_380_reg[14]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[15] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[12]_i_1_n_4 ),
        .Q(t_fu_380_reg[15]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[16] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[16]_i_1_n_7 ),
        .Q(t_fu_380_reg[16]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_fu_380_reg[16]_i_1 
       (.CI(\t_fu_380_reg[12]_i_1_n_0 ),
        .CO({\t_fu_380_reg[16]_i_1_n_0 ,\t_fu_380_reg[16]_i_1_n_1 ,\t_fu_380_reg[16]_i_1_n_2 ,\t_fu_380_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_fu_380_reg[16]_i_1_n_4 ,\t_fu_380_reg[16]_i_1_n_5 ,\t_fu_380_reg[16]_i_1_n_6 ,\t_fu_380_reg[16]_i_1_n_7 }),
        .S(t_fu_380_reg[19:16]));
  FDRE \t_fu_380_reg[17] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[16]_i_1_n_6 ),
        .Q(t_fu_380_reg[17]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[18] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[16]_i_1_n_5 ),
        .Q(t_fu_380_reg[18]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[19] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[16]_i_1_n_4 ),
        .Q(t_fu_380_reg[19]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[1] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[0]_i_2_n_6 ),
        .Q(t_fu_380_reg[1]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[20] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[20]_i_1_n_7 ),
        .Q(t_fu_380_reg[20]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_fu_380_reg[20]_i_1 
       (.CI(\t_fu_380_reg[16]_i_1_n_0 ),
        .CO({\t_fu_380_reg[20]_i_1_n_0 ,\t_fu_380_reg[20]_i_1_n_1 ,\t_fu_380_reg[20]_i_1_n_2 ,\t_fu_380_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_fu_380_reg[20]_i_1_n_4 ,\t_fu_380_reg[20]_i_1_n_5 ,\t_fu_380_reg[20]_i_1_n_6 ,\t_fu_380_reg[20]_i_1_n_7 }),
        .S(t_fu_380_reg[23:20]));
  FDRE \t_fu_380_reg[21] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[20]_i_1_n_6 ),
        .Q(t_fu_380_reg[21]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[22] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[20]_i_1_n_5 ),
        .Q(t_fu_380_reg[22]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[23] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[20]_i_1_n_4 ),
        .Q(t_fu_380_reg[23]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[24] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[24]_i_1_n_7 ),
        .Q(t_fu_380_reg[24]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_fu_380_reg[24]_i_1 
       (.CI(\t_fu_380_reg[20]_i_1_n_0 ),
        .CO({\t_fu_380_reg[24]_i_1_n_0 ,\t_fu_380_reg[24]_i_1_n_1 ,\t_fu_380_reg[24]_i_1_n_2 ,\t_fu_380_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_fu_380_reg[24]_i_1_n_4 ,\t_fu_380_reg[24]_i_1_n_5 ,\t_fu_380_reg[24]_i_1_n_6 ,\t_fu_380_reg[24]_i_1_n_7 }),
        .S(t_fu_380_reg[27:24]));
  FDRE \t_fu_380_reg[25] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[24]_i_1_n_6 ),
        .Q(t_fu_380_reg[25]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[26] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[24]_i_1_n_5 ),
        .Q(t_fu_380_reg[26]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[27] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[24]_i_1_n_4 ),
        .Q(t_fu_380_reg[27]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[28] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[28]_i_1_n_7 ),
        .Q(t_fu_380_reg[28]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_fu_380_reg[28]_i_1 
       (.CI(\t_fu_380_reg[24]_i_1_n_0 ),
        .CO({\NLW_t_fu_380_reg[28]_i_1_CO_UNCONNECTED [3:2],\t_fu_380_reg[28]_i_1_n_2 ,\t_fu_380_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_t_fu_380_reg[28]_i_1_O_UNCONNECTED [3],\t_fu_380_reg[28]_i_1_n_5 ,\t_fu_380_reg[28]_i_1_n_6 ,\t_fu_380_reg[28]_i_1_n_7 }),
        .S({1'b0,t_fu_380_reg[30:28]}));
  FDRE \t_fu_380_reg[29] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[28]_i_1_n_6 ),
        .Q(t_fu_380_reg[29]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[2] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[0]_i_2_n_5 ),
        .Q(t_fu_380_reg[2]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[30] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[28]_i_1_n_5 ),
        .Q(t_fu_380_reg[30]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[3] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[0]_i_2_n_4 ),
        .Q(t_fu_380_reg[3]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[4] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[4]_i_1_n_7 ),
        .Q(t_fu_380_reg[4]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_fu_380_reg[4]_i_1 
       (.CI(\t_fu_380_reg[0]_i_2_n_0 ),
        .CO({\t_fu_380_reg[4]_i_1_n_0 ,\t_fu_380_reg[4]_i_1_n_1 ,\t_fu_380_reg[4]_i_1_n_2 ,\t_fu_380_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_fu_380_reg[4]_i_1_n_4 ,\t_fu_380_reg[4]_i_1_n_5 ,\t_fu_380_reg[4]_i_1_n_6 ,\t_fu_380_reg[4]_i_1_n_7 }),
        .S(t_fu_380_reg[7:4]));
  FDRE \t_fu_380_reg[5] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[4]_i_1_n_6 ),
        .Q(t_fu_380_reg[5]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[6] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[4]_i_1_n_5 ),
        .Q(t_fu_380_reg[6]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[7] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[4]_i_1_n_4 ),
        .Q(t_fu_380_reg[7]),
        .R(ap_NS_fsm18_out));
  FDRE \t_fu_380_reg[8] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[8]_i_1_n_7 ),
        .Q(t_fu_380_reg[8]),
        .R(ap_NS_fsm18_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_fu_380_reg[8]_i_1 
       (.CI(\t_fu_380_reg[4]_i_1_n_0 ),
        .CO({\t_fu_380_reg[8]_i_1_n_0 ,\t_fu_380_reg[8]_i_1_n_1 ,\t_fu_380_reg[8]_i_1_n_2 ,\t_fu_380_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_fu_380_reg[8]_i_1_n_4 ,\t_fu_380_reg[8]_i_1_n_5 ,\t_fu_380_reg[8]_i_1_n_6 ,\t_fu_380_reg[8]_i_1_n_7 }),
        .S(t_fu_380_reg[11:8]));
  FDRE \t_fu_380_reg[9] 
       (.C(ap_clk),
        .CE(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg0),
        .D(\t_fu_380_reg[8]_i_1_n_6 ),
        .Q(t_fu_380_reg[9]),
        .R(ap_NS_fsm18_out));
endmodule

(* ORIG_REF_NAME = "dt_accel_control_s_axi" *) 
module design_1_dt_accel_0_0_dt_accel_control_s_axi
   (ap_rst_n_inv,
    interrupt,
    D,
    Q,
    \FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    \int_num_features_reg[31]_0 ,
    \int_num_nodes_reg[31]_0 ,
    E,
    ap_NS_fsm18_out,
    s_axi_control_BVALID,
    s_axi_control_RVALID,
    int_ap_start_reg_0,
    s_axi_control_RDATA,
    ap_clk,
    ap_rst_n,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_AWVALID,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    s_axi_control_WVALID,
    \ap_CS_fsm_reg[0] ,
    s_axi_control_BREADY,
    s_axi_control_RREADY,
    ap_done,
    out_stream_TREADY_int_regslice,
    s_axi_control_AWADDR,
    \int_latency_out_reg[31]_0 );
  output ap_rst_n_inv;
  output interrupt;
  output [31:0]D;
  output [31:0]Q;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output [31:0]\int_num_features_reg[31]_0 ;
  output [31:0]\int_num_nodes_reg[31]_0 ;
  output [0:0]E;
  output ap_NS_fsm18_out;
  output s_axi_control_BVALID;
  output s_axi_control_RVALID;
  output [2:0]int_ap_start_reg_0;
  output [31:0]s_axi_control_RDATA;
  input ap_clk;
  input ap_rst_n;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_AWVALID;
  input [3:0]s_axi_control_WSTRB;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_WVALID;
  input [2:0]\ap_CS_fsm_reg[0] ;
  input s_axi_control_BREADY;
  input s_axi_control_RREADY;
  input ap_done;
  input out_stream_TREADY_int_regslice;
  input [5:0]s_axi_control_AWADDR;
  input [31:0]\int_latency_out_reg[31]_0 ;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [31:0]Q;
  wire \ap_CS_fsm[8]_i_10_n_0 ;
  wire \ap_CS_fsm[8]_i_11_n_0 ;
  wire \ap_CS_fsm[8]_i_3_n_0 ;
  wire \ap_CS_fsm[8]_i_4_n_0 ;
  wire \ap_CS_fsm[8]_i_5_n_0 ;
  wire \ap_CS_fsm[8]_i_6_n_0 ;
  wire \ap_CS_fsm[8]_i_7_n_0 ;
  wire \ap_CS_fsm[8]_i_8_n_0 ;
  wire \ap_CS_fsm[8]_i_9_n_0 ;
  wire [2:0]\ap_CS_fsm_reg[0] ;
  wire ap_NS_fsm18_out;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire icmp_ln38_fu_641_p2;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire [2:0]int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_latency_out_ap_vld__0;
  wire int_latency_out_ap_vld_i_1_n_0;
  wire int_latency_out_ap_vld_i_2_n_0;
  wire int_latency_out_ap_vld_i_3_n_0;
  wire [31:0]\int_latency_out_reg[31]_0 ;
  wire \int_latency_out_reg_n_0_[0] ;
  wire \int_latency_out_reg_n_0_[10] ;
  wire \int_latency_out_reg_n_0_[11] ;
  wire \int_latency_out_reg_n_0_[12] ;
  wire \int_latency_out_reg_n_0_[13] ;
  wire \int_latency_out_reg_n_0_[14] ;
  wire \int_latency_out_reg_n_0_[15] ;
  wire \int_latency_out_reg_n_0_[16] ;
  wire \int_latency_out_reg_n_0_[17] ;
  wire \int_latency_out_reg_n_0_[18] ;
  wire \int_latency_out_reg_n_0_[19] ;
  wire \int_latency_out_reg_n_0_[1] ;
  wire \int_latency_out_reg_n_0_[20] ;
  wire \int_latency_out_reg_n_0_[21] ;
  wire \int_latency_out_reg_n_0_[22] ;
  wire \int_latency_out_reg_n_0_[23] ;
  wire \int_latency_out_reg_n_0_[24] ;
  wire \int_latency_out_reg_n_0_[25] ;
  wire \int_latency_out_reg_n_0_[26] ;
  wire \int_latency_out_reg_n_0_[27] ;
  wire \int_latency_out_reg_n_0_[28] ;
  wire \int_latency_out_reg_n_0_[29] ;
  wire \int_latency_out_reg_n_0_[2] ;
  wire \int_latency_out_reg_n_0_[30] ;
  wire \int_latency_out_reg_n_0_[31] ;
  wire \int_latency_out_reg_n_0_[3] ;
  wire \int_latency_out_reg_n_0_[4] ;
  wire \int_latency_out_reg_n_0_[5] ;
  wire \int_latency_out_reg_n_0_[6] ;
  wire \int_latency_out_reg_n_0_[7] ;
  wire \int_latency_out_reg_n_0_[8] ;
  wire \int_latency_out_reg_n_0_[9] ;
  wire [31:0]int_mode0;
  wire \int_mode[31]_i_1_n_0 ;
  wire [31:0]int_num_classes0;
  wire \int_num_classes[31]_i_1_n_0 ;
  wire \int_num_classes[31]_i_3_n_0 ;
  wire \int_num_classes_reg_n_0_[0] ;
  wire \int_num_classes_reg_n_0_[10] ;
  wire \int_num_classes_reg_n_0_[11] ;
  wire \int_num_classes_reg_n_0_[12] ;
  wire \int_num_classes_reg_n_0_[13] ;
  wire \int_num_classes_reg_n_0_[14] ;
  wire \int_num_classes_reg_n_0_[15] ;
  wire \int_num_classes_reg_n_0_[16] ;
  wire \int_num_classes_reg_n_0_[17] ;
  wire \int_num_classes_reg_n_0_[18] ;
  wire \int_num_classes_reg_n_0_[19] ;
  wire \int_num_classes_reg_n_0_[1] ;
  wire \int_num_classes_reg_n_0_[20] ;
  wire \int_num_classes_reg_n_0_[21] ;
  wire \int_num_classes_reg_n_0_[22] ;
  wire \int_num_classes_reg_n_0_[23] ;
  wire \int_num_classes_reg_n_0_[24] ;
  wire \int_num_classes_reg_n_0_[25] ;
  wire \int_num_classes_reg_n_0_[26] ;
  wire \int_num_classes_reg_n_0_[27] ;
  wire \int_num_classes_reg_n_0_[28] ;
  wire \int_num_classes_reg_n_0_[29] ;
  wire \int_num_classes_reg_n_0_[2] ;
  wire \int_num_classes_reg_n_0_[30] ;
  wire \int_num_classes_reg_n_0_[31] ;
  wire \int_num_classes_reg_n_0_[3] ;
  wire \int_num_classes_reg_n_0_[4] ;
  wire \int_num_classes_reg_n_0_[5] ;
  wire \int_num_classes_reg_n_0_[6] ;
  wire \int_num_classes_reg_n_0_[7] ;
  wire \int_num_classes_reg_n_0_[8] ;
  wire \int_num_classes_reg_n_0_[9] ;
  wire [31:0]int_num_features0;
  wire \int_num_features[31]_i_1_n_0 ;
  wire [31:0]\int_num_features_reg[31]_0 ;
  wire [31:0]int_num_nodes0;
  wire \int_num_nodes[31]_i_1_n_0 ;
  wire [31:0]\int_num_nodes_reg[31]_0 ;
  wire [31:0]int_num_test0;
  wire \int_num_test[31]_i_1_n_0 ;
  wire int_task_ap_done0__3;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_0;
  wire interrupt;
  wire [31:0]mode;
  wire out_stream_TREADY_int_regslice;
  wire [7:2]p_7_in;
  wire [31:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[10]_i_3_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[11]_i_3_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[12]_i_3_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[13]_i_3_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[14]_i_3_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[15]_i_3_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[16]_i_3_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[17]_i_3_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[18]_i_3_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[19]_i_3_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[1]_i_5_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[20]_i_3_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[21]_i_3_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[22]_i_3_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[23]_i_3_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[24]_i_3_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[25]_i_3_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[26]_i_3_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[27]_i_3_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[28]_i_3_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[29]_i_3_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[30]_i_3_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[4]_i_3_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[5]_i_3_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[6]_i_3_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[8]_i_3_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire \sub_reg_1385[12]_i_2_n_0 ;
  wire \sub_reg_1385[12]_i_3_n_0 ;
  wire \sub_reg_1385[12]_i_4_n_0 ;
  wire \sub_reg_1385[12]_i_5_n_0 ;
  wire \sub_reg_1385[16]_i_2_n_0 ;
  wire \sub_reg_1385[16]_i_3_n_0 ;
  wire \sub_reg_1385[16]_i_4_n_0 ;
  wire \sub_reg_1385[16]_i_5_n_0 ;
  wire \sub_reg_1385[20]_i_2_n_0 ;
  wire \sub_reg_1385[20]_i_3_n_0 ;
  wire \sub_reg_1385[20]_i_4_n_0 ;
  wire \sub_reg_1385[20]_i_5_n_0 ;
  wire \sub_reg_1385[24]_i_2_n_0 ;
  wire \sub_reg_1385[24]_i_3_n_0 ;
  wire \sub_reg_1385[24]_i_4_n_0 ;
  wire \sub_reg_1385[24]_i_5_n_0 ;
  wire \sub_reg_1385[28]_i_2_n_0 ;
  wire \sub_reg_1385[28]_i_3_n_0 ;
  wire \sub_reg_1385[28]_i_4_n_0 ;
  wire \sub_reg_1385[28]_i_5_n_0 ;
  wire \sub_reg_1385[31]_i_3_n_0 ;
  wire \sub_reg_1385[31]_i_4_n_0 ;
  wire \sub_reg_1385[31]_i_5_n_0 ;
  wire \sub_reg_1385[4]_i_2_n_0 ;
  wire \sub_reg_1385[4]_i_3_n_0 ;
  wire \sub_reg_1385[4]_i_4_n_0 ;
  wire \sub_reg_1385[4]_i_5_n_0 ;
  wire \sub_reg_1385[8]_i_2_n_0 ;
  wire \sub_reg_1385[8]_i_3_n_0 ;
  wire \sub_reg_1385[8]_i_4_n_0 ;
  wire \sub_reg_1385[8]_i_5_n_0 ;
  wire \sub_reg_1385_reg[12]_i_1_n_0 ;
  wire \sub_reg_1385_reg[12]_i_1_n_1 ;
  wire \sub_reg_1385_reg[12]_i_1_n_2 ;
  wire \sub_reg_1385_reg[12]_i_1_n_3 ;
  wire \sub_reg_1385_reg[16]_i_1_n_0 ;
  wire \sub_reg_1385_reg[16]_i_1_n_1 ;
  wire \sub_reg_1385_reg[16]_i_1_n_2 ;
  wire \sub_reg_1385_reg[16]_i_1_n_3 ;
  wire \sub_reg_1385_reg[20]_i_1_n_0 ;
  wire \sub_reg_1385_reg[20]_i_1_n_1 ;
  wire \sub_reg_1385_reg[20]_i_1_n_2 ;
  wire \sub_reg_1385_reg[20]_i_1_n_3 ;
  wire \sub_reg_1385_reg[24]_i_1_n_0 ;
  wire \sub_reg_1385_reg[24]_i_1_n_1 ;
  wire \sub_reg_1385_reg[24]_i_1_n_2 ;
  wire \sub_reg_1385_reg[24]_i_1_n_3 ;
  wire \sub_reg_1385_reg[28]_i_1_n_0 ;
  wire \sub_reg_1385_reg[28]_i_1_n_1 ;
  wire \sub_reg_1385_reg[28]_i_1_n_2 ;
  wire \sub_reg_1385_reg[28]_i_1_n_3 ;
  wire \sub_reg_1385_reg[31]_i_2_n_2 ;
  wire \sub_reg_1385_reg[31]_i_2_n_3 ;
  wire \sub_reg_1385_reg[4]_i_1_n_0 ;
  wire \sub_reg_1385_reg[4]_i_1_n_1 ;
  wire \sub_reg_1385_reg[4]_i_1_n_2 ;
  wire \sub_reg_1385_reg[4]_i_1_n_3 ;
  wire \sub_reg_1385_reg[8]_i_1_n_0 ;
  wire \sub_reg_1385_reg[8]_i_1_n_1 ;
  wire \sub_reg_1385_reg[8]_i_1_n_2 ;
  wire \sub_reg_1385_reg[8]_i_1_n_3 ;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire [3:2]\NLW_sub_reg_1385_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sub_reg_1385_reg[31]_i_2_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF277)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hC0FFD1D1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_BVALID),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_AWVALID),
        .I4(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg[0] [0]),
        .I2(ap_done),
        .I3(\ap_CS_fsm_reg[0] [2]),
        .O(int_ap_start_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF080808)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg[0] [0]),
        .I2(icmp_ln38_fu_641_p2),
        .I3(\ap_CS_fsm_reg[0] [1]),
        .I4(out_stream_TREADY_int_regslice),
        .O(int_ap_start_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ap_CS_fsm[8]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg[0] [0]),
        .I2(icmp_ln38_fu_641_p2),
        .O(int_ap_start_reg_0[2]));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \ap_CS_fsm[8]_i_10 
       (.I0(mode[5]),
        .I1(mode[4]),
        .I2(mode[3]),
        .I3(mode[8]),
        .I4(mode[6]),
        .I5(mode[7]),
        .O(\ap_CS_fsm[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[8]_i_11 
       (.I0(mode[25]),
        .I1(mode[26]),
        .I2(mode[28]),
        .I3(mode[29]),
        .I4(mode[31]),
        .I5(mode[30]),
        .O(\ap_CS_fsm[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \ap_CS_fsm[8]_i_2 
       (.I0(\ap_CS_fsm[8]_i_3_n_0 ),
        .I1(\ap_CS_fsm[8]_i_4_n_0 ),
        .I2(\ap_CS_fsm[8]_i_5_n_0 ),
        .I3(\ap_CS_fsm[8]_i_6_n_0 ),
        .I4(\ap_CS_fsm[8]_i_7_n_0 ),
        .O(icmp_ln38_fu_641_p2));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \ap_CS_fsm[8]_i_3 
       (.I0(\ap_CS_fsm[8]_i_8_n_0 ),
        .I1(\ap_CS_fsm[8]_i_9_n_0 ),
        .I2(mode[0]),
        .I3(mode[1]),
        .I4(mode[2]),
        .I5(\ap_CS_fsm[8]_i_10_n_0 ),
        .O(\ap_CS_fsm[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \ap_CS_fsm[8]_i_4 
       (.I0(mode[11]),
        .I1(mode[10]),
        .I2(mode[9]),
        .I3(mode[14]),
        .I4(mode[12]),
        .I5(mode[13]),
        .O(\ap_CS_fsm[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \ap_CS_fsm[8]_i_5 
       (.I0(mode[17]),
        .I1(mode[16]),
        .I2(mode[15]),
        .I3(mode[20]),
        .I4(mode[18]),
        .I5(mode[19]),
        .O(\ap_CS_fsm[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \ap_CS_fsm[8]_i_6 
       (.I0(mode[26]),
        .I1(mode[25]),
        .I2(mode[24]),
        .I3(mode[29]),
        .I4(mode[27]),
        .I5(mode[28]),
        .O(\ap_CS_fsm[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ap_CS_fsm[8]_i_7 
       (.I0(mode[20]),
        .I1(mode[19]),
        .I2(mode[23]),
        .I3(mode[22]),
        .I4(mode[21]),
        .I5(\ap_CS_fsm[8]_i_11_n_0 ),
        .O(\ap_CS_fsm[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[8]_i_8 
       (.I0(mode[13]),
        .I1(mode[14]),
        .I2(mode[10]),
        .I3(mode[11]),
        .I4(mode[17]),
        .I5(mode[16]),
        .O(\ap_CS_fsm[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ap_CS_fsm[8]_i_9 
       (.I0(mode[8]),
        .I1(mode[7]),
        .I2(mode[5]),
        .I3(mode[4]),
        .O(\ap_CS_fsm[8]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_7_in[7]),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg[0] [0]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycles_fu_384[31]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg[0] [0]),
        .I2(icmp_ln38_fu_641_p2),
        .O(ap_NS_fsm18_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(\ap_CS_fsm_reg[0] [0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_7_in[2]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h4F44)) 
    int_ap_ready_i_1
       (.I0(p_7_in[7]),
        .I1(ap_done),
        .I2(int_task_ap_done0__3),
        .I3(int_ap_ready__0),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready__0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(p_7_in[7]),
        .I1(ap_done),
        .I2(int_ap_start5_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(s_axi_control_WSTRB[0]),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(p_7_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_7_in[7]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\int_num_classes[31]_i_3_n_0 ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_gie_i_2_n_0),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .O(int_gie_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(\int_ier_reg_n_0_[1] ),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_0_[1] ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \int_isr[0]_i_2 
       (.I0(\int_num_classes[31]_i_3_n_0 ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[1] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFF0000)) 
    int_latency_out_ap_vld_i_1
       (.I0(int_latency_out_ap_vld_i_2_n_0),
        .I1(int_latency_out_ap_vld_i_3_n_0),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(ap_done),
        .I5(int_latency_out_ap_vld__0),
        .O(int_latency_out_ap_vld_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    int_latency_out_ap_vld_i_2
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(int_latency_out_ap_vld_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    int_latency_out_ap_vld_i_3
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .O(int_latency_out_ap_vld_i_3_n_0));
  FDRE int_latency_out_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_latency_out_ap_vld_i_1_n_0),
        .Q(int_latency_out_ap_vld__0),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[0] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [0]),
        .Q(\int_latency_out_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[10] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [10]),
        .Q(\int_latency_out_reg_n_0_[10] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[11] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [11]),
        .Q(\int_latency_out_reg_n_0_[11] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[12] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [12]),
        .Q(\int_latency_out_reg_n_0_[12] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[13] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [13]),
        .Q(\int_latency_out_reg_n_0_[13] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[14] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [14]),
        .Q(\int_latency_out_reg_n_0_[14] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[15] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [15]),
        .Q(\int_latency_out_reg_n_0_[15] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[16] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [16]),
        .Q(\int_latency_out_reg_n_0_[16] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[17] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [17]),
        .Q(\int_latency_out_reg_n_0_[17] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[18] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [18]),
        .Q(\int_latency_out_reg_n_0_[18] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[19] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [19]),
        .Q(\int_latency_out_reg_n_0_[19] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[1] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [1]),
        .Q(\int_latency_out_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[20] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [20]),
        .Q(\int_latency_out_reg_n_0_[20] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[21] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [21]),
        .Q(\int_latency_out_reg_n_0_[21] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[22] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [22]),
        .Q(\int_latency_out_reg_n_0_[22] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[23] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [23]),
        .Q(\int_latency_out_reg_n_0_[23] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[24] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [24]),
        .Q(\int_latency_out_reg_n_0_[24] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[25] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [25]),
        .Q(\int_latency_out_reg_n_0_[25] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[26] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [26]),
        .Q(\int_latency_out_reg_n_0_[26] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[27] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [27]),
        .Q(\int_latency_out_reg_n_0_[27] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[28] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [28]),
        .Q(\int_latency_out_reg_n_0_[28] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[29] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [29]),
        .Q(\int_latency_out_reg_n_0_[29] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[2] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [2]),
        .Q(\int_latency_out_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[30] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [30]),
        .Q(\int_latency_out_reg_n_0_[30] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[31] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [31]),
        .Q(\int_latency_out_reg_n_0_[31] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[3] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [3]),
        .Q(\int_latency_out_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[4] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [4]),
        .Q(\int_latency_out_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[5] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [5]),
        .Q(\int_latency_out_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[6] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [6]),
        .Q(\int_latency_out_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[7] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [7]),
        .Q(\int_latency_out_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[8] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [8]),
        .Q(\int_latency_out_reg_n_0_[8] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_latency_out_reg[9] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(\int_latency_out_reg[31]_0 [9]),
        .Q(\int_latency_out_reg_n_0_[9] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[0]_i_1 
       (.I0(mode[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_mode0[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[10]_i_1 
       (.I0(mode[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_mode0[10]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[11]_i_1 
       (.I0(mode[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_mode0[11]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[12]_i_1 
       (.I0(mode[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_mode0[12]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[13]_i_1 
       (.I0(mode[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_mode0[13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[14]_i_1 
       (.I0(mode[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_mode0[14]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[15]_i_1 
       (.I0(mode[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_mode0[15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[16]_i_1 
       (.I0(mode[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_mode0[16]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[17]_i_1 
       (.I0(mode[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_mode0[17]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[18]_i_1 
       (.I0(mode[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_mode0[18]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[19]_i_1 
       (.I0(mode[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_mode0[19]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[1]_i_1 
       (.I0(mode[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_mode0[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[20]_i_1 
       (.I0(mode[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_mode0[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[21]_i_1 
       (.I0(mode[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_mode0[21]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[22]_i_1 
       (.I0(mode[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_mode0[22]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[23]_i_1 
       (.I0(mode[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_mode0[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[24]_i_1 
       (.I0(mode[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_mode0[24]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[25]_i_1 
       (.I0(mode[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_mode0[25]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[26]_i_1 
       (.I0(mode[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_mode0[26]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[27]_i_1 
       (.I0(mode[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_mode0[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[28]_i_1 
       (.I0(mode[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_mode0[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[29]_i_1 
       (.I0(mode[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_mode0[29]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[2]_i_1 
       (.I0(mode[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_mode0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[30]_i_1 
       (.I0(mode[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_mode0[30]));
  LUT3 #(
    .INIT(8'h04)) 
    \int_mode[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .O(\int_mode[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[31]_i_2 
       (.I0(mode[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_mode0[31]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[3]_i_1 
       (.I0(mode[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_mode0[3]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[4]_i_1 
       (.I0(mode[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_mode0[4]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[5]_i_1 
       (.I0(mode[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_mode0[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[6]_i_1 
       (.I0(mode[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_mode0[6]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[7]_i_1 
       (.I0(mode[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_mode0[7]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[8]_i_1 
       (.I0(mode[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_mode0[8]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_mode[9]_i_1 
       (.I0(mode[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_mode0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[0] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[0]),
        .Q(mode[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[10] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[10]),
        .Q(mode[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[11] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[11]),
        .Q(mode[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[12] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[12]),
        .Q(mode[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[13] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[13]),
        .Q(mode[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[14] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[14]),
        .Q(mode[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[15] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[15]),
        .Q(mode[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[16] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[16]),
        .Q(mode[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[17] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[17]),
        .Q(mode[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[18] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[18]),
        .Q(mode[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[19] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[19]),
        .Q(mode[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[1] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[1]),
        .Q(mode[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[20] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[20]),
        .Q(mode[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[21] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[21]),
        .Q(mode[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[22] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[22]),
        .Q(mode[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[23] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[23]),
        .Q(mode[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[24] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[24]),
        .Q(mode[24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[25] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[25]),
        .Q(mode[25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[26] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[26]),
        .Q(mode[26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[27] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[27]),
        .Q(mode[27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[28] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[28]),
        .Q(mode[28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[29] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[29]),
        .Q(mode[29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[2] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[2]),
        .Q(mode[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[30] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[30]),
        .Q(mode[30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[31] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[31]),
        .Q(mode[31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[3] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[3]),
        .Q(mode[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[4] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[4]),
        .Q(mode[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[5] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[5]),
        .Q(mode[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[6] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[6]),
        .Q(mode[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[7] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[7]),
        .Q(mode[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[8] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[8]),
        .Q(mode[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_mode_reg[9] 
       (.C(ap_clk),
        .CE(\int_mode[31]_i_1_n_0 ),
        .D(int_mode0[9]),
        .Q(mode[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[0]_i_1 
       (.I0(\int_num_classes_reg_n_0_[0] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_num_classes0[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[10]_i_1 
       (.I0(\int_num_classes_reg_n_0_[10] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_num_classes0[10]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[11]_i_1 
       (.I0(\int_num_classes_reg_n_0_[11] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_num_classes0[11]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[12]_i_1 
       (.I0(\int_num_classes_reg_n_0_[12] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_num_classes0[12]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[13]_i_1 
       (.I0(\int_num_classes_reg_n_0_[13] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_num_classes0[13]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[14]_i_1 
       (.I0(\int_num_classes_reg_n_0_[14] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_num_classes0[14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[15]_i_1 
       (.I0(\int_num_classes_reg_n_0_[15] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_num_classes0[15]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[16]_i_1 
       (.I0(\int_num_classes_reg_n_0_[16] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_num_classes0[16]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[17]_i_1 
       (.I0(\int_num_classes_reg_n_0_[17] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_num_classes0[17]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[18]_i_1 
       (.I0(\int_num_classes_reg_n_0_[18] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_num_classes0[18]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[19]_i_1 
       (.I0(\int_num_classes_reg_n_0_[19] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_num_classes0[19]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[1]_i_1 
       (.I0(\int_num_classes_reg_n_0_[1] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_num_classes0[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[20]_i_1 
       (.I0(\int_num_classes_reg_n_0_[20] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_num_classes0[20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[21]_i_1 
       (.I0(\int_num_classes_reg_n_0_[21] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_num_classes0[21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[22]_i_1 
       (.I0(\int_num_classes_reg_n_0_[22] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_num_classes0[22]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[23]_i_1 
       (.I0(\int_num_classes_reg_n_0_[23] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_num_classes0[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[24]_i_1 
       (.I0(\int_num_classes_reg_n_0_[24] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_num_classes0[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[25]_i_1 
       (.I0(\int_num_classes_reg_n_0_[25] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_num_classes0[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[26]_i_1 
       (.I0(\int_num_classes_reg_n_0_[26] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_num_classes0[26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[27]_i_1 
       (.I0(\int_num_classes_reg_n_0_[27] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_num_classes0[27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[28]_i_1 
       (.I0(\int_num_classes_reg_n_0_[28] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_num_classes0[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[29]_i_1 
       (.I0(\int_num_classes_reg_n_0_[29] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_num_classes0[29]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[2]_i_1 
       (.I0(\int_num_classes_reg_n_0_[2] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_num_classes0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[30]_i_1 
       (.I0(\int_num_classes_reg_n_0_[30] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_num_classes0[30]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \int_num_classes[31]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_num_classes[31]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[2] ),
        .O(\int_num_classes[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[31]_i_2 
       (.I0(\int_num_classes_reg_n_0_[31] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_num_classes0[31]));
  LUT4 #(
    .INIT(16'h1000)) 
    \int_num_classes[31]_i_3 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .O(\int_num_classes[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[3]_i_1 
       (.I0(\int_num_classes_reg_n_0_[3] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_num_classes0[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[4]_i_1 
       (.I0(\int_num_classes_reg_n_0_[4] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_num_classes0[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[5]_i_1 
       (.I0(\int_num_classes_reg_n_0_[5] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_num_classes0[5]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[6]_i_1 
       (.I0(\int_num_classes_reg_n_0_[6] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_num_classes0[6]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[7]_i_1 
       (.I0(\int_num_classes_reg_n_0_[7] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_num_classes0[7]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[8]_i_1 
       (.I0(\int_num_classes_reg_n_0_[8] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_num_classes0[8]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_classes[9]_i_1 
       (.I0(\int_num_classes_reg_n_0_[9] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_num_classes0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[0] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[0]),
        .Q(\int_num_classes_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[10] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[10]),
        .Q(\int_num_classes_reg_n_0_[10] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[11] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[11]),
        .Q(\int_num_classes_reg_n_0_[11] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[12] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[12]),
        .Q(\int_num_classes_reg_n_0_[12] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[13] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[13]),
        .Q(\int_num_classes_reg_n_0_[13] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[14] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[14]),
        .Q(\int_num_classes_reg_n_0_[14] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[15] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[15]),
        .Q(\int_num_classes_reg_n_0_[15] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[16] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[16]),
        .Q(\int_num_classes_reg_n_0_[16] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[17] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[17]),
        .Q(\int_num_classes_reg_n_0_[17] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[18] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[18]),
        .Q(\int_num_classes_reg_n_0_[18] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[19] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[19]),
        .Q(\int_num_classes_reg_n_0_[19] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[1] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[1]),
        .Q(\int_num_classes_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[20] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[20]),
        .Q(\int_num_classes_reg_n_0_[20] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[21] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[21]),
        .Q(\int_num_classes_reg_n_0_[21] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[22] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[22]),
        .Q(\int_num_classes_reg_n_0_[22] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[23] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[23]),
        .Q(\int_num_classes_reg_n_0_[23] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[24] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[24]),
        .Q(\int_num_classes_reg_n_0_[24] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[25] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[25]),
        .Q(\int_num_classes_reg_n_0_[25] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[26] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[26]),
        .Q(\int_num_classes_reg_n_0_[26] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[27] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[27]),
        .Q(\int_num_classes_reg_n_0_[27] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[28] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[28]),
        .Q(\int_num_classes_reg_n_0_[28] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[29] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[29]),
        .Q(\int_num_classes_reg_n_0_[29] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[2] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[2]),
        .Q(\int_num_classes_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[30] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[30]),
        .Q(\int_num_classes_reg_n_0_[30] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[31] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[31]),
        .Q(\int_num_classes_reg_n_0_[31] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[3] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[3]),
        .Q(\int_num_classes_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[4] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[4]),
        .Q(\int_num_classes_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[5] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[5]),
        .Q(\int_num_classes_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[6] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[6]),
        .Q(\int_num_classes_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[7] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[7]),
        .Q(\int_num_classes_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[8] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[8]),
        .Q(\int_num_classes_reg_n_0_[8] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_classes_reg[9] 
       (.C(ap_clk),
        .CE(\int_num_classes[31]_i_1_n_0 ),
        .D(int_num_classes0[9]),
        .Q(\int_num_classes_reg_n_0_[9] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[0]_i_1 
       (.I0(\int_num_features_reg[31]_0 [0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_num_features0[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[10]_i_1 
       (.I0(\int_num_features_reg[31]_0 [10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_num_features0[10]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[11]_i_1 
       (.I0(\int_num_features_reg[31]_0 [11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_num_features0[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[12]_i_1 
       (.I0(\int_num_features_reg[31]_0 [12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_num_features0[12]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[13]_i_1 
       (.I0(\int_num_features_reg[31]_0 [13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_num_features0[13]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[14]_i_1 
       (.I0(\int_num_features_reg[31]_0 [14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_num_features0[14]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[15]_i_1 
       (.I0(\int_num_features_reg[31]_0 [15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_num_features0[15]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[16]_i_1 
       (.I0(\int_num_features_reg[31]_0 [16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_num_features0[16]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[17]_i_1 
       (.I0(\int_num_features_reg[31]_0 [17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_num_features0[17]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[18]_i_1 
       (.I0(\int_num_features_reg[31]_0 [18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_num_features0[18]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[19]_i_1 
       (.I0(\int_num_features_reg[31]_0 [19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_num_features0[19]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[1]_i_1 
       (.I0(\int_num_features_reg[31]_0 [1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_num_features0[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[20]_i_1 
       (.I0(\int_num_features_reg[31]_0 [20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_num_features0[20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[21]_i_1 
       (.I0(\int_num_features_reg[31]_0 [21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_num_features0[21]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[22]_i_1 
       (.I0(\int_num_features_reg[31]_0 [22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_num_features0[22]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[23]_i_1 
       (.I0(\int_num_features_reg[31]_0 [23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_num_features0[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[24]_i_1 
       (.I0(\int_num_features_reg[31]_0 [24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_num_features0[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[25]_i_1 
       (.I0(\int_num_features_reg[31]_0 [25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_num_features0[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[26]_i_1 
       (.I0(\int_num_features_reg[31]_0 [26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_num_features0[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[27]_i_1 
       (.I0(\int_num_features_reg[31]_0 [27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_num_features0[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[28]_i_1 
       (.I0(\int_num_features_reg[31]_0 [28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_num_features0[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[29]_i_1 
       (.I0(\int_num_features_reg[31]_0 [29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_num_features0[29]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[2]_i_1 
       (.I0(\int_num_features_reg[31]_0 [2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_num_features0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[30]_i_1 
       (.I0(\int_num_features_reg[31]_0 [30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_num_features0[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \int_num_features[31]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .O(\int_num_features[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[31]_i_2 
       (.I0(\int_num_features_reg[31]_0 [31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_num_features0[31]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[3]_i_1 
       (.I0(\int_num_features_reg[31]_0 [3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_num_features0[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[4]_i_1 
       (.I0(\int_num_features_reg[31]_0 [4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_num_features0[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[5]_i_1 
       (.I0(\int_num_features_reg[31]_0 [5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_num_features0[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[6]_i_1 
       (.I0(\int_num_features_reg[31]_0 [6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_num_features0[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[7]_i_1 
       (.I0(\int_num_features_reg[31]_0 [7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_num_features0[7]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[8]_i_1 
       (.I0(\int_num_features_reg[31]_0 [8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_num_features0[8]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_features[9]_i_1 
       (.I0(\int_num_features_reg[31]_0 [9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_num_features0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[0] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[0]),
        .Q(\int_num_features_reg[31]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[10] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[10]),
        .Q(\int_num_features_reg[31]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[11] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[11]),
        .Q(\int_num_features_reg[31]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[12] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[12]),
        .Q(\int_num_features_reg[31]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[13] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[13]),
        .Q(\int_num_features_reg[31]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[14] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[14]),
        .Q(\int_num_features_reg[31]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[15] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[15]),
        .Q(\int_num_features_reg[31]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[16] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[16]),
        .Q(\int_num_features_reg[31]_0 [16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[17] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[17]),
        .Q(\int_num_features_reg[31]_0 [17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[18] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[18]),
        .Q(\int_num_features_reg[31]_0 [18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[19] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[19]),
        .Q(\int_num_features_reg[31]_0 [19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[1] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[1]),
        .Q(\int_num_features_reg[31]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[20] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[20]),
        .Q(\int_num_features_reg[31]_0 [20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[21] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[21]),
        .Q(\int_num_features_reg[31]_0 [21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[22] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[22]),
        .Q(\int_num_features_reg[31]_0 [22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[23] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[23]),
        .Q(\int_num_features_reg[31]_0 [23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[24] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[24]),
        .Q(\int_num_features_reg[31]_0 [24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[25] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[25]),
        .Q(\int_num_features_reg[31]_0 [25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[26] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[26]),
        .Q(\int_num_features_reg[31]_0 [26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[27] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[27]),
        .Q(\int_num_features_reg[31]_0 [27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[28] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[28]),
        .Q(\int_num_features_reg[31]_0 [28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[29] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[29]),
        .Q(\int_num_features_reg[31]_0 [29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[2] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[2]),
        .Q(\int_num_features_reg[31]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[30] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[30]),
        .Q(\int_num_features_reg[31]_0 [30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[31] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[31]),
        .Q(\int_num_features_reg[31]_0 [31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[3] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[3]),
        .Q(\int_num_features_reg[31]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[4] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[4]),
        .Q(\int_num_features_reg[31]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[5] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[5]),
        .Q(\int_num_features_reg[31]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[6] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[6]),
        .Q(\int_num_features_reg[31]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[7] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[7]),
        .Q(\int_num_features_reg[31]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[8] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[8]),
        .Q(\int_num_features_reg[31]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_features_reg[9] 
       (.C(ap_clk),
        .CE(\int_num_features[31]_i_1_n_0 ),
        .D(int_num_features0[9]),
        .Q(\int_num_features_reg[31]_0 [9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[0]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_num_nodes0[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[10]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_num_nodes0[10]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[11]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_num_nodes0[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[12]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_num_nodes0[12]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[13]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_num_nodes0[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[14]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_num_nodes0[14]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[15]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_num_nodes0[15]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[16]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_num_nodes0[16]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[17]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_num_nodes0[17]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[18]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_num_nodes0[18]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[19]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_num_nodes0[19]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[1]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_num_nodes0[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[20]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_num_nodes0[20]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[21]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_num_nodes0[21]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[22]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_num_nodes0[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[23]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_num_nodes0[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[24]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_num_nodes0[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[25]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_num_nodes0[25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[26]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_num_nodes0[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[27]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_num_nodes0[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[28]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_num_nodes0[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[29]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_num_nodes0[29]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[2]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_num_nodes0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[30]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_num_nodes0[30]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \int_num_nodes[31]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_num_classes[31]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[2] ),
        .O(\int_num_nodes[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[31]_i_2 
       (.I0(\int_num_nodes_reg[31]_0 [31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_num_nodes0[31]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[3]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_num_nodes0[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[4]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_num_nodes0[4]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[5]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_num_nodes0[5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[6]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_num_nodes0[6]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[7]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_num_nodes0[7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[8]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_num_nodes0[8]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_nodes[9]_i_1 
       (.I0(\int_num_nodes_reg[31]_0 [9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_num_nodes0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[0] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[0]),
        .Q(\int_num_nodes_reg[31]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[10] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[10]),
        .Q(\int_num_nodes_reg[31]_0 [10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[11] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[11]),
        .Q(\int_num_nodes_reg[31]_0 [11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[12] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[12]),
        .Q(\int_num_nodes_reg[31]_0 [12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[13] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[13]),
        .Q(\int_num_nodes_reg[31]_0 [13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[14] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[14]),
        .Q(\int_num_nodes_reg[31]_0 [14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[15] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[15]),
        .Q(\int_num_nodes_reg[31]_0 [15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[16] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[16]),
        .Q(\int_num_nodes_reg[31]_0 [16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[17] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[17]),
        .Q(\int_num_nodes_reg[31]_0 [17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[18] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[18]),
        .Q(\int_num_nodes_reg[31]_0 [18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[19] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[19]),
        .Q(\int_num_nodes_reg[31]_0 [19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[1] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[1]),
        .Q(\int_num_nodes_reg[31]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[20] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[20]),
        .Q(\int_num_nodes_reg[31]_0 [20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[21] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[21]),
        .Q(\int_num_nodes_reg[31]_0 [21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[22] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[22]),
        .Q(\int_num_nodes_reg[31]_0 [22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[23] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[23]),
        .Q(\int_num_nodes_reg[31]_0 [23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[24] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[24]),
        .Q(\int_num_nodes_reg[31]_0 [24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[25] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[25]),
        .Q(\int_num_nodes_reg[31]_0 [25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[26] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[26]),
        .Q(\int_num_nodes_reg[31]_0 [26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[27] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[27]),
        .Q(\int_num_nodes_reg[31]_0 [27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[28] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[28]),
        .Q(\int_num_nodes_reg[31]_0 [28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[29] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[29]),
        .Q(\int_num_nodes_reg[31]_0 [29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[2] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[2]),
        .Q(\int_num_nodes_reg[31]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[30] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[30]),
        .Q(\int_num_nodes_reg[31]_0 [30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[31] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[31]),
        .Q(\int_num_nodes_reg[31]_0 [31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[3] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[3]),
        .Q(\int_num_nodes_reg[31]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[4] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[4]),
        .Q(\int_num_nodes_reg[31]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[5] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[5]),
        .Q(\int_num_nodes_reg[31]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[6] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[6]),
        .Q(\int_num_nodes_reg[31]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[7] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[7]),
        .Q(\int_num_nodes_reg[31]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[8] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[8]),
        .Q(\int_num_nodes_reg[31]_0 [8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_nodes_reg[9] 
       (.C(ap_clk),
        .CE(\int_num_nodes[31]_i_1_n_0 ),
        .D(int_num_nodes0[9]),
        .Q(\int_num_nodes_reg[31]_0 [9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[0]_i_1 
       (.I0(Q[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_num_test0[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[10]_i_1 
       (.I0(Q[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_num_test0[10]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[11]_i_1 
       (.I0(Q[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_num_test0[11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[12]_i_1 
       (.I0(Q[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_num_test0[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[13]_i_1 
       (.I0(Q[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_num_test0[13]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[14]_i_1 
       (.I0(Q[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_num_test0[14]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[15]_i_1 
       (.I0(Q[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_num_test0[15]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[16]_i_1 
       (.I0(Q[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_num_test0[16]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[17]_i_1 
       (.I0(Q[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_num_test0[17]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[18]_i_1 
       (.I0(Q[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_num_test0[18]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[19]_i_1 
       (.I0(Q[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_num_test0[19]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[1]_i_1 
       (.I0(Q[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_num_test0[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[20]_i_1 
       (.I0(Q[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_num_test0[20]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[21]_i_1 
       (.I0(Q[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_num_test0[21]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[22]_i_1 
       (.I0(Q[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_num_test0[22]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[23]_i_1 
       (.I0(Q[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_num_test0[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[24]_i_1 
       (.I0(Q[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_num_test0[24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[25]_i_1 
       (.I0(Q[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_num_test0[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[26]_i_1 
       (.I0(Q[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_num_test0[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[27]_i_1 
       (.I0(Q[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_num_test0[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[28]_i_1 
       (.I0(Q[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_num_test0[28]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[29]_i_1 
       (.I0(Q[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_num_test0[29]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[2]_i_1 
       (.I0(Q[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_num_test0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[30]_i_1 
       (.I0(Q[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_num_test0[30]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \int_num_test[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_num_classes[31]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[2] ),
        .O(\int_num_test[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[31]_i_2 
       (.I0(Q[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_num_test0[31]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[3]_i_1 
       (.I0(Q[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_num_test0[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[4]_i_1 
       (.I0(Q[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_num_test0[4]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[5]_i_1 
       (.I0(Q[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_num_test0[5]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[6]_i_1 
       (.I0(Q[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_num_test0[6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[7]_i_1 
       (.I0(Q[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_num_test0[7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[8]_i_1 
       (.I0(Q[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_num_test0[8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_num_test[9]_i_1 
       (.I0(Q[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_num_test0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[0] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[0]),
        .Q(Q[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[10] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[10]),
        .Q(Q[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[11] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[11]),
        .Q(Q[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[12] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[12]),
        .Q(Q[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[13] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[13]),
        .Q(Q[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[14] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[14]),
        .Q(Q[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[15] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[15]),
        .Q(Q[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[16] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[16]),
        .Q(Q[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[17] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[17]),
        .Q(Q[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[18] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[18]),
        .Q(Q[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[19] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[19]),
        .Q(Q[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[1] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[20] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[20]),
        .Q(Q[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[21] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[21]),
        .Q(Q[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[22] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[22]),
        .Q(Q[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[23] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[23]),
        .Q(Q[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[24] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[24]),
        .Q(Q[24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[25] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[25]),
        .Q(Q[25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[26] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[26]),
        .Q(Q[26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[27] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[27]),
        .Q(Q[27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[28] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[28]),
        .Q(Q[28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[29] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[29]),
        .Q(Q[29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[2] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[2]),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[30] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[30]),
        .Q(Q[30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[31] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[31]),
        .Q(Q[31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[3] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[3]),
        .Q(Q[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[4] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[4]),
        .Q(Q[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[5] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[5]),
        .Q(Q[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[6] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[6]),
        .Q(Q[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[7] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[7]),
        .Q(Q[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[8] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[8]),
        .Q(Q[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_num_test_reg[9] 
       (.C(ap_clk),
        .CE(\int_num_test[31]_i_1_n_0 ),
        .D(int_num_test0[9]),
        .Q(Q[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2E22FFFF2E222E22)) 
    int_task_ap_done_i_1
       (.I0(ap_done),
        .I1(auto_restart_status_reg_n_0),
        .I2(p_7_in[2]),
        .I3(ap_idle),
        .I4(int_task_ap_done0__3),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    int_task_ap_done_i_2
       (.I0(\rdata[1]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(ar_hs),
        .O(int_task_ap_done0__3));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done__0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\rdata[0]_i_3_n_0 ),
        .I3(\rdata[0]_i_4_n_0 ),
        .I4(s_axi_control_ARADDR[3]),
        .I5(\rdata[0]_i_5_n_0 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hF00C000A000C000A)) 
    \rdata[0]_i_2 
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(int_latency_out_ap_vld__0),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \rdata[0]_i_3 
       (.I0(mode[0]),
        .I1(ap_start),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(Q[0]),
        .I5(\int_num_classes_reg_n_0_[0] ),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \rdata[0]_i_4 
       (.I0(\int_num_features_reg[31]_0 [0]),
        .I1(\int_ier_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(\int_latency_out_reg_n_0_[0] ),
        .I5(\int_num_nodes_reg[31]_0 [0]),
        .O(\rdata[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[0]_i_5 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .O(\rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[10]_i_1 
       (.I0(\rdata[10]_i_2_n_0 ),
        .I1(\rdata[10]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[10]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[10]_i_2 
       (.I0(\int_num_classes_reg_n_0_[10] ),
        .I1(mode[10]),
        .I2(Q[10]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[10]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [10]),
        .I1(\int_num_features_reg[31]_0 [10]),
        .I2(\int_latency_out_reg_n_0_[10] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[11]_i_1 
       (.I0(\rdata[11]_i_2_n_0 ),
        .I1(\rdata[11]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[11]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[11]_i_2 
       (.I0(\int_num_classes_reg_n_0_[11] ),
        .I1(mode[11]),
        .I2(Q[11]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[11]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [11]),
        .I1(\int_num_features_reg[31]_0 [11]),
        .I2(\int_latency_out_reg_n_0_[11] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[12]_i_1 
       (.I0(\rdata[12]_i_2_n_0 ),
        .I1(\rdata[12]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[12]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[12]_i_2 
       (.I0(\int_num_classes_reg_n_0_[12] ),
        .I1(mode[12]),
        .I2(Q[12]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[12]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [12]),
        .I1(\int_num_features_reg[31]_0 [12]),
        .I2(\int_latency_out_reg_n_0_[12] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[13]_i_1 
       (.I0(\rdata[13]_i_2_n_0 ),
        .I1(\rdata[13]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[13]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[13]_i_2 
       (.I0(\int_num_classes_reg_n_0_[13] ),
        .I1(mode[13]),
        .I2(Q[13]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[13]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [13]),
        .I1(\int_num_features_reg[31]_0 [13]),
        .I2(\int_latency_out_reg_n_0_[13] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[14]_i_1 
       (.I0(\rdata[14]_i_2_n_0 ),
        .I1(\rdata[14]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[14]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[14]_i_2 
       (.I0(\int_num_classes_reg_n_0_[14] ),
        .I1(mode[14]),
        .I2(Q[14]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[14]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [14]),
        .I1(\int_num_features_reg[31]_0 [14]),
        .I2(\int_latency_out_reg_n_0_[14] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[15]_i_1 
       (.I0(\rdata[15]_i_2_n_0 ),
        .I1(\rdata[15]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[15]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[15]_i_2 
       (.I0(\int_num_classes_reg_n_0_[15] ),
        .I1(mode[15]),
        .I2(Q[15]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[15]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [15]),
        .I1(\int_num_features_reg[31]_0 [15]),
        .I2(\int_latency_out_reg_n_0_[15] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[16]_i_1 
       (.I0(\rdata[16]_i_2_n_0 ),
        .I1(\rdata[16]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[16]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[16]_i_2 
       (.I0(\int_num_classes_reg_n_0_[16] ),
        .I1(mode[16]),
        .I2(Q[16]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[16]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [16]),
        .I1(\int_num_features_reg[31]_0 [16]),
        .I2(\int_latency_out_reg_n_0_[16] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[17]_i_1 
       (.I0(\rdata[17]_i_2_n_0 ),
        .I1(\rdata[17]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[17]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[17]_i_2 
       (.I0(\int_num_classes_reg_n_0_[17] ),
        .I1(mode[17]),
        .I2(Q[17]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[17]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [17]),
        .I1(\int_num_features_reg[31]_0 [17]),
        .I2(\int_latency_out_reg_n_0_[17] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[18]_i_1 
       (.I0(\rdata[18]_i_2_n_0 ),
        .I1(\rdata[18]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[18]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[18]_i_2 
       (.I0(\int_num_classes_reg_n_0_[18] ),
        .I1(mode[18]),
        .I2(Q[18]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[18]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [18]),
        .I1(\int_num_features_reg[31]_0 [18]),
        .I2(\int_latency_out_reg_n_0_[18] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[19]_i_1 
       (.I0(\rdata[19]_i_2_n_0 ),
        .I1(\rdata[19]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[19]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[19]_i_2 
       (.I0(\int_num_classes_reg_n_0_[19] ),
        .I1(mode[19]),
        .I2(Q[19]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[19]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [19]),
        .I1(\int_num_features_reg[31]_0 [19]),
        .I2(\int_latency_out_reg_n_0_[19] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[1]),
        .O(rdata[1]));
  LUT6 #(
    .INIT(64'hF0000000AAAACCCC)) 
    \rdata[1]_i_2 
       (.I0(\rdata[1]_i_3_n_0 ),
        .I1(\rdata[1]_i_4_n_0 ),
        .I2(\rdata[1]_i_5_n_0 ),
        .I3(\int_isr_reg_n_0_[1] ),
        .I4(s_axi_control_ARADDR[3]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \rdata[1]_i_3 
       (.I0(\int_num_features_reg[31]_0 [1]),
        .I1(\int_ier_reg_n_0_[1] ),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(\int_latency_out_reg_n_0_[1] ),
        .I5(\int_num_nodes_reg[31]_0 [1]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \rdata[1]_i_4 
       (.I0(mode[1]),
        .I1(int_task_ap_done__0),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(Q[1]),
        .I5(\int_num_classes_reg_n_0_[1] ),
        .O(\rdata[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[1]_i_5 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .O(\rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[20]_i_1 
       (.I0(\rdata[20]_i_2_n_0 ),
        .I1(\rdata[20]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[20]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[20]_i_2 
       (.I0(\int_num_classes_reg_n_0_[20] ),
        .I1(mode[20]),
        .I2(Q[20]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[20]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [20]),
        .I1(\int_num_features_reg[31]_0 [20]),
        .I2(\int_latency_out_reg_n_0_[20] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[21]_i_1 
       (.I0(\rdata[21]_i_2_n_0 ),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[21]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[21]_i_2 
       (.I0(\int_num_classes_reg_n_0_[21] ),
        .I1(mode[21]),
        .I2(Q[21]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[21]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [21]),
        .I1(\int_num_features_reg[31]_0 [21]),
        .I2(\int_latency_out_reg_n_0_[21] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[22]_i_1 
       (.I0(\rdata[22]_i_2_n_0 ),
        .I1(\rdata[22]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[22]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[22]_i_2 
       (.I0(\int_num_classes_reg_n_0_[22] ),
        .I1(mode[22]),
        .I2(Q[22]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[22]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [22]),
        .I1(\int_num_features_reg[31]_0 [22]),
        .I2(\int_latency_out_reg_n_0_[22] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[23]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[23]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[23]_i_2 
       (.I0(\int_num_classes_reg_n_0_[23] ),
        .I1(mode[23]),
        .I2(Q[23]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[23]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [23]),
        .I1(\int_num_features_reg[31]_0 [23]),
        .I2(\int_latency_out_reg_n_0_[23] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[24]_i_1 
       (.I0(\rdata[24]_i_2_n_0 ),
        .I1(\rdata[24]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[24]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[24]_i_2 
       (.I0(\int_num_classes_reg_n_0_[24] ),
        .I1(mode[24]),
        .I2(Q[24]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[24]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [24]),
        .I1(\int_num_features_reg[31]_0 [24]),
        .I2(\int_latency_out_reg_n_0_[24] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[25]_i_1 
       (.I0(\rdata[25]_i_2_n_0 ),
        .I1(\rdata[25]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[25]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[25]_i_2 
       (.I0(\int_num_classes_reg_n_0_[25] ),
        .I1(mode[25]),
        .I2(Q[25]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[25]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [25]),
        .I1(\int_num_features_reg[31]_0 [25]),
        .I2(\int_latency_out_reg_n_0_[25] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[26]_i_1 
       (.I0(\rdata[26]_i_2_n_0 ),
        .I1(\rdata[26]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[26]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[26]_i_2 
       (.I0(\int_num_classes_reg_n_0_[26] ),
        .I1(mode[26]),
        .I2(Q[26]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[26]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [26]),
        .I1(\int_num_features_reg[31]_0 [26]),
        .I2(\int_latency_out_reg_n_0_[26] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[27]_i_1 
       (.I0(\rdata[27]_i_2_n_0 ),
        .I1(\rdata[27]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[27]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[27]_i_2 
       (.I0(\int_num_classes_reg_n_0_[27] ),
        .I1(mode[27]),
        .I2(Q[27]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[27]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [27]),
        .I1(\int_num_features_reg[31]_0 [27]),
        .I2(\int_latency_out_reg_n_0_[27] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[28]_i_1 
       (.I0(\rdata[28]_i_2_n_0 ),
        .I1(\rdata[28]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[28]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[28]_i_2 
       (.I0(\int_num_classes_reg_n_0_[28] ),
        .I1(mode[28]),
        .I2(Q[28]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[28]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [28]),
        .I1(\int_num_features_reg[31]_0 [28]),
        .I2(\int_latency_out_reg_n_0_[28] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[29]_i_1 
       (.I0(\rdata[29]_i_2_n_0 ),
        .I1(\rdata[29]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[29]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[29]_i_2 
       (.I0(\int_num_classes_reg_n_0_[29] ),
        .I1(mode[29]),
        .I2(Q[29]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[29]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [29]),
        .I1(\int_num_features_reg[31]_0 [29]),
        .I2(\int_latency_out_reg_n_0_[29] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[2]_i_1 
       (.I0(\rdata[2]_i_2_n_0 ),
        .I1(\rdata[2]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[2]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \rdata[2]_i_2 
       (.I0(mode[2]),
        .I1(p_7_in[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(Q[2]),
        .I5(\int_num_classes_reg_n_0_[2] ),
        .O(\rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[2]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [2]),
        .I1(\int_num_features_reg[31]_0 [2]),
        .I2(\int_latency_out_reg_n_0_[2] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[30]_i_1 
       (.I0(\rdata[30]_i_2_n_0 ),
        .I1(\rdata[30]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[30]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[30]_i_2 
       (.I0(\int_num_classes_reg_n_0_[30] ),
        .I1(mode[30]),
        .I2(Q[30]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[30]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [30]),
        .I1(\int_num_features_reg[31]_0 [30]),
        .I2(\int_latency_out_reg_n_0_[30] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[30]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[31]_i_2 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[31]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[31]_i_3 
       (.I0(\int_num_classes_reg_n_0_[31] ),
        .I1(mode[31]),
        .I2(Q[31]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[31]_i_4 
       (.I0(\int_num_nodes_reg[31]_0 [31]),
        .I1(\int_num_features_reg[31]_0 [31]),
        .I2(\int_latency_out_reg_n_0_[31] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[3]_i_1 
       (.I0(\rdata[3]_i_2_n_0 ),
        .I1(\rdata[3]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[3]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \rdata[3]_i_2 
       (.I0(mode[3]),
        .I1(int_ap_ready__0),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(Q[3]),
        .I5(\int_num_classes_reg_n_0_[3] ),
        .O(\rdata[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[3]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [3]),
        .I1(\int_num_features_reg[31]_0 [3]),
        .I2(\int_latency_out_reg_n_0_[3] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[4]_i_1 
       (.I0(\rdata[4]_i_2_n_0 ),
        .I1(\rdata[4]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[4]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[4]_i_2 
       (.I0(\int_num_classes_reg_n_0_[4] ),
        .I1(mode[4]),
        .I2(Q[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[4]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [4]),
        .I1(\int_num_features_reg[31]_0 [4]),
        .I2(\int_latency_out_reg_n_0_[4] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[5]_i_1 
       (.I0(\rdata[5]_i_2_n_0 ),
        .I1(\rdata[5]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[5]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[5]_i_2 
       (.I0(\int_num_classes_reg_n_0_[5] ),
        .I1(mode[5]),
        .I2(Q[5]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[5]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [5]),
        .I1(\int_num_features_reg[31]_0 [5]),
        .I2(\int_latency_out_reg_n_0_[5] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[6]_i_1 
       (.I0(\rdata[6]_i_2_n_0 ),
        .I1(\rdata[6]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[6]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[6]_i_2 
       (.I0(\int_num_classes_reg_n_0_[6] ),
        .I1(mode[6]),
        .I2(Q[6]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[6]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [6]),
        .I1(\int_num_features_reg[31]_0 [6]),
        .I2(\int_latency_out_reg_n_0_[6] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[7]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[7]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \rdata[7]_i_2 
       (.I0(mode[7]),
        .I1(p_7_in[7]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(Q[7]),
        .I5(\int_num_classes_reg_n_0_[7] ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[7]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [7]),
        .I1(\int_num_features_reg[31]_0 [7]),
        .I2(\int_latency_out_reg_n_0_[7] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[8]_i_1 
       (.I0(\rdata[8]_i_2_n_0 ),
        .I1(\rdata[8]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[8]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[8]_i_2 
       (.I0(\int_num_classes_reg_n_0_[8] ),
        .I1(mode[8]),
        .I2(Q[8]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[8]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [8]),
        .I1(\int_num_features_reg[31]_0 [8]),
        .I2(\int_latency_out_reg_n_0_[8] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \rdata[9]_i_1 
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(\rdata[9]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[9]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \rdata[9]_i_2 
       (.I0(mode[9]),
        .I1(interrupt),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(Q[9]),
        .I5(\int_num_classes_reg_n_0_[9] ),
        .O(\rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \rdata[9]_i_3 
       (.I0(\int_num_nodes_reg[31]_0 [9]),
        .I1(\int_num_features_reg[31]_0 [9]),
        .I2(\int_latency_out_reg_n_0_[9] ),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[9]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[24]),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[25]),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[26]),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[27]),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[28]),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[29]),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[30]),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[31]),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[0]_i_1 
       (.I0(Q[0]),
        .O(D[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[12]_i_2 
       (.I0(Q[12]),
        .O(\sub_reg_1385[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[12]_i_3 
       (.I0(Q[11]),
        .O(\sub_reg_1385[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[12]_i_4 
       (.I0(Q[10]),
        .O(\sub_reg_1385[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[12]_i_5 
       (.I0(Q[9]),
        .O(\sub_reg_1385[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[16]_i_2 
       (.I0(Q[16]),
        .O(\sub_reg_1385[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[16]_i_3 
       (.I0(Q[15]),
        .O(\sub_reg_1385[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[16]_i_4 
       (.I0(Q[14]),
        .O(\sub_reg_1385[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[16]_i_5 
       (.I0(Q[13]),
        .O(\sub_reg_1385[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[20]_i_2 
       (.I0(Q[20]),
        .O(\sub_reg_1385[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[20]_i_3 
       (.I0(Q[19]),
        .O(\sub_reg_1385[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[20]_i_4 
       (.I0(Q[18]),
        .O(\sub_reg_1385[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[20]_i_5 
       (.I0(Q[17]),
        .O(\sub_reg_1385[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[24]_i_2 
       (.I0(Q[24]),
        .O(\sub_reg_1385[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[24]_i_3 
       (.I0(Q[23]),
        .O(\sub_reg_1385[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[24]_i_4 
       (.I0(Q[22]),
        .O(\sub_reg_1385[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[24]_i_5 
       (.I0(Q[21]),
        .O(\sub_reg_1385[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[28]_i_2 
       (.I0(Q[28]),
        .O(\sub_reg_1385[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[28]_i_3 
       (.I0(Q[27]),
        .O(\sub_reg_1385[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[28]_i_4 
       (.I0(Q[26]),
        .O(\sub_reg_1385[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[28]_i_5 
       (.I0(Q[25]),
        .O(\sub_reg_1385[28]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sub_reg_1385[31]_i_1 
       (.I0(\ap_CS_fsm_reg[0] [0]),
        .I1(icmp_ln38_fu_641_p2),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[31]_i_3 
       (.I0(Q[31]),
        .O(\sub_reg_1385[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[31]_i_4 
       (.I0(Q[30]),
        .O(\sub_reg_1385[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[31]_i_5 
       (.I0(Q[29]),
        .O(\sub_reg_1385[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[4]_i_2 
       (.I0(Q[4]),
        .O(\sub_reg_1385[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[4]_i_3 
       (.I0(Q[3]),
        .O(\sub_reg_1385[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[4]_i_4 
       (.I0(Q[2]),
        .O(\sub_reg_1385[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[4]_i_5 
       (.I0(Q[1]),
        .O(\sub_reg_1385[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[8]_i_2 
       (.I0(Q[8]),
        .O(\sub_reg_1385[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[8]_i_3 
       (.I0(Q[7]),
        .O(\sub_reg_1385[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[8]_i_4 
       (.I0(Q[6]),
        .O(\sub_reg_1385[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_reg_1385[8]_i_5 
       (.I0(Q[5]),
        .O(\sub_reg_1385[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_1385_reg[12]_i_1 
       (.CI(\sub_reg_1385_reg[8]_i_1_n_0 ),
        .CO({\sub_reg_1385_reg[12]_i_1_n_0 ,\sub_reg_1385_reg[12]_i_1_n_1 ,\sub_reg_1385_reg[12]_i_1_n_2 ,\sub_reg_1385_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(D[12:9]),
        .S({\sub_reg_1385[12]_i_2_n_0 ,\sub_reg_1385[12]_i_3_n_0 ,\sub_reg_1385[12]_i_4_n_0 ,\sub_reg_1385[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_1385_reg[16]_i_1 
       (.CI(\sub_reg_1385_reg[12]_i_1_n_0 ),
        .CO({\sub_reg_1385_reg[16]_i_1_n_0 ,\sub_reg_1385_reg[16]_i_1_n_1 ,\sub_reg_1385_reg[16]_i_1_n_2 ,\sub_reg_1385_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(D[16:13]),
        .S({\sub_reg_1385[16]_i_2_n_0 ,\sub_reg_1385[16]_i_3_n_0 ,\sub_reg_1385[16]_i_4_n_0 ,\sub_reg_1385[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_1385_reg[20]_i_1 
       (.CI(\sub_reg_1385_reg[16]_i_1_n_0 ),
        .CO({\sub_reg_1385_reg[20]_i_1_n_0 ,\sub_reg_1385_reg[20]_i_1_n_1 ,\sub_reg_1385_reg[20]_i_1_n_2 ,\sub_reg_1385_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(D[20:17]),
        .S({\sub_reg_1385[20]_i_2_n_0 ,\sub_reg_1385[20]_i_3_n_0 ,\sub_reg_1385[20]_i_4_n_0 ,\sub_reg_1385[20]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_1385_reg[24]_i_1 
       (.CI(\sub_reg_1385_reg[20]_i_1_n_0 ),
        .CO({\sub_reg_1385_reg[24]_i_1_n_0 ,\sub_reg_1385_reg[24]_i_1_n_1 ,\sub_reg_1385_reg[24]_i_1_n_2 ,\sub_reg_1385_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(D[24:21]),
        .S({\sub_reg_1385[24]_i_2_n_0 ,\sub_reg_1385[24]_i_3_n_0 ,\sub_reg_1385[24]_i_4_n_0 ,\sub_reg_1385[24]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_1385_reg[28]_i_1 
       (.CI(\sub_reg_1385_reg[24]_i_1_n_0 ),
        .CO({\sub_reg_1385_reg[28]_i_1_n_0 ,\sub_reg_1385_reg[28]_i_1_n_1 ,\sub_reg_1385_reg[28]_i_1_n_2 ,\sub_reg_1385_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(D[28:25]),
        .S({\sub_reg_1385[28]_i_2_n_0 ,\sub_reg_1385[28]_i_3_n_0 ,\sub_reg_1385[28]_i_4_n_0 ,\sub_reg_1385[28]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_1385_reg[31]_i_2 
       (.CI(\sub_reg_1385_reg[28]_i_1_n_0 ),
        .CO({\NLW_sub_reg_1385_reg[31]_i_2_CO_UNCONNECTED [3:2],\sub_reg_1385_reg[31]_i_2_n_2 ,\sub_reg_1385_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[30:29]}),
        .O({\NLW_sub_reg_1385_reg[31]_i_2_O_UNCONNECTED [3],D[31:29]}),
        .S({1'b0,\sub_reg_1385[31]_i_3_n_0 ,\sub_reg_1385[31]_i_4_n_0 ,\sub_reg_1385[31]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_1385_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\sub_reg_1385_reg[4]_i_1_n_0 ,\sub_reg_1385_reg[4]_i_1_n_1 ,\sub_reg_1385_reg[4]_i_1_n_2 ,\sub_reg_1385_reg[4]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(D[4:1]),
        .S({\sub_reg_1385[4]_i_2_n_0 ,\sub_reg_1385[4]_i_3_n_0 ,\sub_reg_1385[4]_i_4_n_0 ,\sub_reg_1385[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_reg_1385_reg[8]_i_1 
       (.CI(\sub_reg_1385_reg[4]_i_1_n_0 ),
        .CO({\sub_reg_1385_reg[8]_i_1_n_0 ,\sub_reg_1385_reg[8]_i_1_n_1 ,\sub_reg_1385_reg[8]_i_1_n_2 ,\sub_reg_1385_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(D[8:5]),
        .S({\sub_reg_1385[8]_i_2_n_0 ,\sub_reg_1385[8]_i_3_n_0 ,\sub_reg_1385[8]_i_4_n_0 ,\sub_reg_1385[8]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[5]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dt_accel_dt_accel_Pipeline_LOAD_NODES" *) 
module design_1_dt_accel_0_0_dt_accel_dt_accel_Pipeline_LOAD_NODES
   (in_stream_TREADY_int_regslice,
    \ap_CS_fsm_reg[4]_0 ,
    WEA,
    grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0,
    D,
    SR,
    node_class_V_ce0,
    ADDRARDADDR,
    \ap_CS_fsm_reg[9] ,
    \zext_ln42_reg_226_reg[8]_0 ,
    \current_loc_fu_120_reg[8] ,
    ap_NS_fsm1,
    \ap_CS_fsm_reg[8] ,
    ap_rst_n_inv,
    ap_clk,
    grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0,
    f_fu_308,
    Q,
    grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg,
    in_stream_TVALID_int_regslice,
    ap_rst_n,
    E,
    icmp_ln42_fu_169_p2_carry__2_0,
    ram_reg,
    ram_reg_0,
    ram_reg_1);
  output in_stream_TREADY_int_regslice;
  output [3:0]\ap_CS_fsm_reg[4]_0 ;
  output [0:0]WEA;
  output grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0;
  output [0:0]D;
  output [0:0]SR;
  output node_class_V_ce0;
  output [8:0]ADDRARDADDR;
  output [0:0]\ap_CS_fsm_reg[9] ;
  output [8:0]\zext_ln42_reg_226_reg[8]_0 ;
  output [8:0]\current_loc_fu_120_reg[8] ;
  output ap_NS_fsm1;
  output \ap_CS_fsm_reg[8] ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0;
  input f_fu_308;
  input [3:0]Q;
  input grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg;
  input in_stream_TVALID_int_regslice;
  input ap_rst_n;
  input [0:0]E;
  input [31:0]icmp_ln42_fu_169_p2_carry__2_0;
  input [8:0]ram_reg;
  input [8:0]ram_reg_0;
  input [8:0]ram_reg_1;

  wire [8:0]ADDRARDADDR;
  wire \B_V_data_1_state[1]_i_4_n_0 ;
  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [8:0]add_ln42_fu_175_p2;
  wire [3:0]\ap_CS_fsm_reg[4]_0 ;
  wire \ap_CS_fsm_reg[8] ;
  wire [0:0]\ap_CS_fsm_reg[9] ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [4:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [8:0]\current_loc_fu_120_reg[8] ;
  wire f_fu_308;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_34;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_49;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg;
  wire [8:0]grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0;
  wire [8:0]grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_right_V_we0;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0;
  wire icmp_ln42_fu_169_p2;
  wire icmp_ln42_fu_169_p2_carry__0_i_1_n_0;
  wire icmp_ln42_fu_169_p2_carry__0_i_2_n_0;
  wire icmp_ln42_fu_169_p2_carry__0_i_3_n_0;
  wire icmp_ln42_fu_169_p2_carry__0_i_5_n_0;
  wire icmp_ln42_fu_169_p2_carry__0_i_6_n_0;
  wire icmp_ln42_fu_169_p2_carry__0_i_7_n_0;
  wire icmp_ln42_fu_169_p2_carry__0_n_0;
  wire icmp_ln42_fu_169_p2_carry__0_n_1;
  wire icmp_ln42_fu_169_p2_carry__0_n_2;
  wire icmp_ln42_fu_169_p2_carry__0_n_3;
  wire icmp_ln42_fu_169_p2_carry__1_i_1_n_0;
  wire icmp_ln42_fu_169_p2_carry__1_i_2_n_0;
  wire icmp_ln42_fu_169_p2_carry__1_i_3_n_0;
  wire icmp_ln42_fu_169_p2_carry__1_i_4_n_0;
  wire icmp_ln42_fu_169_p2_carry__1_i_5_n_0;
  wire icmp_ln42_fu_169_p2_carry__1_i_6_n_0;
  wire icmp_ln42_fu_169_p2_carry__1_i_7_n_0;
  wire icmp_ln42_fu_169_p2_carry__1_i_8_n_0;
  wire icmp_ln42_fu_169_p2_carry__1_n_0;
  wire icmp_ln42_fu_169_p2_carry__1_n_1;
  wire icmp_ln42_fu_169_p2_carry__1_n_2;
  wire icmp_ln42_fu_169_p2_carry__1_n_3;
  wire [31:0]icmp_ln42_fu_169_p2_carry__2_0;
  wire icmp_ln42_fu_169_p2_carry__2_n_1;
  wire icmp_ln42_fu_169_p2_carry__2_n_2;
  wire icmp_ln42_fu_169_p2_carry__2_n_3;
  wire icmp_ln42_fu_169_p2_carry_n_0;
  wire icmp_ln42_fu_169_p2_carry_n_1;
  wire icmp_ln42_fu_169_p2_carry_n_2;
  wire icmp_ln42_fu_169_p2_carry_n_3;
  wire in_stream_TREADY_int_regslice;
  wire in_stream_TVALID_int_regslice;
  wire n_fu_66;
  wire \n_fu_66_reg_n_0_[0] ;
  wire \n_fu_66_reg_n_0_[1] ;
  wire \n_fu_66_reg_n_0_[2] ;
  wire \n_fu_66_reg_n_0_[3] ;
  wire \n_fu_66_reg_n_0_[4] ;
  wire \n_fu_66_reg_n_0_[5] ;
  wire \n_fu_66_reg_n_0_[6] ;
  wire \n_fu_66_reg_n_0_[7] ;
  wire \n_fu_66_reg_n_0_[8] ;
  wire node_class_V_ce0;
  wire [8:0]ram_reg;
  wire [8:0]ram_reg_0;
  wire [8:0]ram_reg_1;
  wire [8:0]\zext_ln42_reg_226_reg[8]_0 ;
  wire [3:0]NLW_icmp_ln42_fu_169_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln42_fu_169_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln42_fu_169_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln42_fu_169_p2_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFEFEFEFEFF000000)) 
    \B_V_data_1_state[1]_i_3 
       (.I0(\B_V_data_1_state[1]_i_4_n_0 ),
        .I1(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_right_V_we0),
        .I3(f_fu_308),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(in_stream_TREADY_int_regslice));
  LUT6 #(
    .INIT(64'hFEEEEEEE00000000)) 
    \B_V_data_1_state[1]_i_4 
       (.I0(\ap_CS_fsm_reg[4]_0 [1]),
        .I1(\ap_CS_fsm_reg[4]_0 [3]),
        .I2(icmp_ln42_fu_169_p2),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I5(in_stream_TVALID_int_regslice),
        .O(\B_V_data_1_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B_V_data_1_state[1]_i_6 
       (.I0(\ap_CS_fsm_reg[4]_0 [2]),
        .I1(in_stream_TVALID_int_regslice),
        .O(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_right_V_we0));
  LUT5 #(
    .INIT(32'hFF2AAAAA)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(icmp_ln42_fu_169_p2),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I3(\ap_CS_fsm_reg[4]_0 [3]),
        .I4(in_stream_TVALID_int_regslice),
        .O(ap_NS_fsm[0]));
  LUT5 #(
    .INIT(32'hE2222222)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\ap_CS_fsm_reg[4]_0 [0]),
        .I1(in_stream_TVALID_int_regslice),
        .I2(icmp_ln42_fu_169_p2),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[4]_0 [0]),
        .I1(\ap_CS_fsm_reg[4]_0 [1]),
        .I2(in_stream_TVALID_int_regslice),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg[4]_0 [1]),
        .I1(\ap_CS_fsm_reg[4]_0 [2]),
        .I2(in_stream_TVALID_int_regslice),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(\ap_CS_fsm_reg[4]_0 [2]),
        .I1(\ap_CS_fsm_reg[4]_0 [3]),
        .I2(in_stream_TVALID_int_regslice),
        .O(ap_NS_fsm[4]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(\ap_CS_fsm_reg[4]_0 [0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(\ap_CS_fsm_reg[4]_0 [1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(\ap_CS_fsm_reg[4]_0 [2]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(\ap_CS_fsm_reg[4]_0 [3]),
        .R(ap_rst_n_inv));
  design_1_dt_accel_0_0_dt_accel_flow_control_loop_pipe_sequential_init_3 flow_control_loop_pipe_sequential_init_U
       (.ADDRARDADDR(ADDRARDADDR),
        .CO(icmp_ln42_fu_169_p2),
        .D(D),
        .DI({flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15}),
        .E(E),
        .Q({\ap_CS_fsm_reg[4]_0 [3],\ap_CS_fsm_reg_n_0_[0] }),
        .S({flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19}),
        .SR(SR),
        .\ap_CS_fsm_reg[0] (grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_49),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .icmp_ln42_fu_169_p2_carry__2({icmp_ln42_fu_169_p2_carry__2_0[31:24],icmp_ln42_fu_169_p2_carry__2_0[9:0]}),
        .in_stream_TVALID_int_regslice(in_stream_TVALID_int_regslice),
        .\n_fu_66_reg[6] (add_ln42_fu_175_p2),
        .\n_fu_66_reg[8] (flow_control_loop_pipe_sequential_init_U_n_29),
        .\n_fu_66_reg[8]_0 (flow_control_loop_pipe_sequential_init_U_n_30),
        .\n_fu_66_reg[8]_1 (grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0),
        .\n_fu_66_reg[8]_2 ({\n_fu_66_reg_n_0_[8] ,\n_fu_66_reg_n_0_[7] ,\n_fu_66_reg_n_0_[6] ,\n_fu_66_reg_n_0_[5] ,\n_fu_66_reg_n_0_[4] ,\n_fu_66_reg_n_0_[3] ,\n_fu_66_reg_n_0_[2] ,\n_fu_66_reg_n_0_[1] ,\n_fu_66_reg_n_0_[0] }),
        .\num_nodes_read_reg_968_reg[30] ({flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36,flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38}),
        .\num_nodes_read_reg_968_reg[31] ({flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34}),
        .ram_reg(Q[3:2]),
        .ram_reg_0(ram_reg));
  LUT4 #(
    .INIT(16'hEFAA)) 
    grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg_i_1
       (.I0(Q[2]),
        .I1(icmp_ln42_fu_169_p2),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .O(\ap_CS_fsm_reg[8] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln42_fu_169_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln42_fu_169_p2_carry_n_0,icmp_ln42_fu_169_p2_carry_n_1,icmp_ln42_fu_169_p2_carry_n_2,icmp_ln42_fu_169_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15}),
        .O(NLW_icmp_ln42_fu_169_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln42_fu_169_p2_carry__0
       (.CI(icmp_ln42_fu_169_p2_carry_n_0),
        .CO({icmp_ln42_fu_169_p2_carry__0_n_0,icmp_ln42_fu_169_p2_carry__0_n_1,icmp_ln42_fu_169_p2_carry__0_n_2,icmp_ln42_fu_169_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln42_fu_169_p2_carry__0_i_1_n_0,icmp_ln42_fu_169_p2_carry__0_i_2_n_0,icmp_ln42_fu_169_p2_carry__0_i_3_n_0,flow_control_loop_pipe_sequential_init_U_n_29}),
        .O(NLW_icmp_ln42_fu_169_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln42_fu_169_p2_carry__0_i_5_n_0,icmp_ln42_fu_169_p2_carry__0_i_6_n_0,icmp_ln42_fu_169_p2_carry__0_i_7_n_0,flow_control_loop_pipe_sequential_init_U_n_30}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__0_i_1
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[15]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[14]),
        .O(icmp_ln42_fu_169_p2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__0_i_2
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[13]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[12]),
        .O(icmp_ln42_fu_169_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__0_i_3
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[11]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[10]),
        .O(icmp_ln42_fu_169_p2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__0_i_5
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[14]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[15]),
        .O(icmp_ln42_fu_169_p2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__0_i_6
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[12]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[13]),
        .O(icmp_ln42_fu_169_p2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__0_i_7
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[10]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[11]),
        .O(icmp_ln42_fu_169_p2_carry__0_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln42_fu_169_p2_carry__1
       (.CI(icmp_ln42_fu_169_p2_carry__0_n_0),
        .CO({icmp_ln42_fu_169_p2_carry__1_n_0,icmp_ln42_fu_169_p2_carry__1_n_1,icmp_ln42_fu_169_p2_carry__1_n_2,icmp_ln42_fu_169_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln42_fu_169_p2_carry__1_i_1_n_0,icmp_ln42_fu_169_p2_carry__1_i_2_n_0,icmp_ln42_fu_169_p2_carry__1_i_3_n_0,icmp_ln42_fu_169_p2_carry__1_i_4_n_0}),
        .O(NLW_icmp_ln42_fu_169_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln42_fu_169_p2_carry__1_i_5_n_0,icmp_ln42_fu_169_p2_carry__1_i_6_n_0,icmp_ln42_fu_169_p2_carry__1_i_7_n_0,icmp_ln42_fu_169_p2_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__1_i_1
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[23]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[22]),
        .O(icmp_ln42_fu_169_p2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__1_i_2
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[21]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[20]),
        .O(icmp_ln42_fu_169_p2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__1_i_3
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[19]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[18]),
        .O(icmp_ln42_fu_169_p2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__1_i_4
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[17]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[16]),
        .O(icmp_ln42_fu_169_p2_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__1_i_5
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[22]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[23]),
        .O(icmp_ln42_fu_169_p2_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__1_i_6
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[20]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[21]),
        .O(icmp_ln42_fu_169_p2_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__1_i_7
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[18]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[19]),
        .O(icmp_ln42_fu_169_p2_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__1_i_8
       (.I0(icmp_ln42_fu_169_p2_carry__2_0[16]),
        .I1(icmp_ln42_fu_169_p2_carry__2_0[17]),
        .O(icmp_ln42_fu_169_p2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln42_fu_169_p2_carry__2
       (.CI(icmp_ln42_fu_169_p2_carry__1_n_0),
        .CO({icmp_ln42_fu_169_p2,icmp_ln42_fu_169_p2_carry__2_n_1,icmp_ln42_fu_169_p2_carry__2_n_2,icmp_ln42_fu_169_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36,flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38}),
        .O(NLW_icmp_ln42_fu_169_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34}));
  LUT4 #(
    .INIT(16'h8000)) 
    \n_fu_66[8]_i_2 
       (.I0(in_stream_TVALID_int_regslice),
        .I1(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(icmp_ln42_fu_169_p2),
        .O(n_fu_66));
  FDRE \n_fu_66_reg[0] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(add_ln42_fu_175_p2[0]),
        .Q(\n_fu_66_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_49));
  FDRE \n_fu_66_reg[1] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(add_ln42_fu_175_p2[1]),
        .Q(\n_fu_66_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_49));
  FDRE \n_fu_66_reg[2] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(add_ln42_fu_175_p2[2]),
        .Q(\n_fu_66_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_49));
  FDRE \n_fu_66_reg[3] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(add_ln42_fu_175_p2[3]),
        .Q(\n_fu_66_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_49));
  FDRE \n_fu_66_reg[4] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(add_ln42_fu_175_p2[4]),
        .Q(\n_fu_66_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_49));
  FDRE \n_fu_66_reg[5] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(add_ln42_fu_175_p2[5]),
        .Q(\n_fu_66_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_49));
  FDRE \n_fu_66_reg[6] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(add_ln42_fu_175_p2[6]),
        .Q(\n_fu_66_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_49));
  FDRE \n_fu_66_reg[7] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(add_ln42_fu_175_p2[7]),
        .Q(\n_fu_66_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_49));
  FDRE \n_fu_66_reg[8] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(add_ln42_fu_175_p2[8]),
        .Q(\n_fu_66_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_49));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10__0
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[0]),
        .I1(Q[3]),
        .I2(ram_reg_0[0]),
        .O(\zext_ln42_reg_226_reg[8]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10__1
       (.I0(ram_reg_1[0]),
        .I1(Q[1]),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[0]),
        .O(\current_loc_fu_120_reg[8] [0]));
  LUT5 #(
    .INIT(32'h80000000)) 
    ram_reg_i_19
       (.I0(Q[3]),
        .I1(icmp_ln42_fu_169_p2),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(in_stream_TVALID_int_regslice),
        .O(WEA));
  LUT3 #(
    .INIT(8'h80)) 
    ram_reg_i_19__0
       (.I0(Q[3]),
        .I1(\ap_CS_fsm_reg[4]_0 [0]),
        .I2(in_stream_TVALID_int_regslice),
        .O(\ap_CS_fsm_reg[9] ));
  LUT4 #(
    .INIT(16'hFF80)) 
    ram_reg_i_1__0
       (.I0(\ap_CS_fsm_reg[4]_0 [3]),
        .I1(in_stream_TVALID_int_regslice),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(node_class_V_ce0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2__2
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[8]),
        .I1(Q[3]),
        .I2(ram_reg_0[8]),
        .O(\zext_ln42_reg_226_reg[8]_0 [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2__3
       (.I0(ram_reg_1[8]),
        .I1(Q[1]),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[8]),
        .O(\current_loc_fu_120_reg[8] [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3__0
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[7]),
        .I1(Q[3]),
        .I2(ram_reg_0[7]),
        .O(\zext_ln42_reg_226_reg[8]_0 [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3__1
       (.I0(ram_reg_1[7]),
        .I1(Q[1]),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[7]),
        .O(\current_loc_fu_120_reg[8] [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4__0
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[6]),
        .I1(Q[3]),
        .I2(ram_reg_0[6]),
        .O(\zext_ln42_reg_226_reg[8]_0 [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4__1
       (.I0(ram_reg_1[6]),
        .I1(Q[1]),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[6]),
        .O(\current_loc_fu_120_reg[8] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5__0
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[5]),
        .I1(Q[3]),
        .I2(ram_reg_0[5]),
        .O(\zext_ln42_reg_226_reg[8]_0 [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5__1
       (.I0(ram_reg_1[5]),
        .I1(Q[1]),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[5]),
        .O(\current_loc_fu_120_reg[8] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6__0
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[4]),
        .I1(Q[3]),
        .I2(ram_reg_0[4]),
        .O(\zext_ln42_reg_226_reg[8]_0 [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6__1
       (.I0(ram_reg_1[4]),
        .I1(Q[1]),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[4]),
        .O(\current_loc_fu_120_reg[8] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7__0
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[3]),
        .I1(Q[3]),
        .I2(ram_reg_0[3]),
        .O(\zext_ln42_reg_226_reg[8]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7__1
       (.I0(ram_reg_1[3]),
        .I1(Q[1]),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[3]),
        .O(\current_loc_fu_120_reg[8] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8__0
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[2]),
        .I1(Q[3]),
        .I2(ram_reg_0[2]),
        .O(\zext_ln42_reg_226_reg[8]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8__1
       (.I0(ram_reg_1[2]),
        .I1(Q[1]),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[2]),
        .O(\current_loc_fu_120_reg[8] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9__0
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[1]),
        .I1(Q[3]),
        .I2(ram_reg_0[1]),
        .O(\zext_ln42_reg_226_reg[8]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9__1
       (.I0(ram_reg_1[1]),
        .I1(Q[1]),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[1]),
        .O(\current_loc_fu_120_reg[8] [1]));
  FDRE \zext_ln42_reg_226_reg[0] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0[0]),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[0]),
        .R(1'b0));
  FDRE \zext_ln42_reg_226_reg[1] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0[1]),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[1]),
        .R(1'b0));
  FDRE \zext_ln42_reg_226_reg[2] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0[2]),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[2]),
        .R(1'b0));
  FDRE \zext_ln42_reg_226_reg[3] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0[3]),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[3]),
        .R(1'b0));
  FDRE \zext_ln42_reg_226_reg[4] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0[4]),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[4]),
        .R(1'b0));
  FDRE \zext_ln42_reg_226_reg[5] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0[5]),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[5]),
        .R(1'b0));
  FDRE \zext_ln42_reg_226_reg[6] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0[6]),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[6]),
        .R(1'b0));
  FDRE \zext_ln42_reg_226_reg[7] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0[7]),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[7]),
        .R(1'b0));
  FDRE \zext_ln42_reg_226_reg[8] 
       (.C(ap_clk),
        .CE(n_fu_66),
        .D(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_address0[8]),
        .Q(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_class_V_address0[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dt_accel_dt_accel_Pipeline_READ_FEAT" *) 
module design_1_dt_accel_0_0_dt_accel_dt_accel_Pipeline_READ_FEAT
   (CO,
    D,
    \ap_CS_fsm_reg[1] ,
    ram_reg,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    in_stream_TVALID_int_regslice,
    grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg,
    f_fu_308,
    Q,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 ,
    \test_feat_V_fu_564_reg[15]_0 ,
    DOADO);
  output [0:0]CO;
  output [1:0]D;
  output \ap_CS_fsm_reg[1] ;
  output [15:0]ram_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input in_stream_TVALID_int_regslice;
  input grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg;
  input f_fu_308;
  input [31:0]Q;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input [0:0]\ap_CS_fsm_reg[2]_0 ;
  input [15:0]\test_feat_V_fu_564_reg[15]_0 ;
  input [5:0]DOADO;

  wire [0:0]CO;
  wire [1:0]D;
  wire [5:0]DOADO;
  wire [31:0]Q;
  wire [30:0]add_ln65_fu_1052_p2;
  wire \ap_CS_fsm_reg[1] ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire [0:0]\ap_CS_fsm_reg[2]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire f_fu_308;
  wire \f_fu_308_reg_n_0_[0] ;
  wire \f_fu_308_reg_n_0_[10] ;
  wire \f_fu_308_reg_n_0_[11] ;
  wire \f_fu_308_reg_n_0_[12] ;
  wire \f_fu_308_reg_n_0_[13] ;
  wire \f_fu_308_reg_n_0_[14] ;
  wire \f_fu_308_reg_n_0_[15] ;
  wire \f_fu_308_reg_n_0_[16] ;
  wire \f_fu_308_reg_n_0_[17] ;
  wire \f_fu_308_reg_n_0_[18] ;
  wire \f_fu_308_reg_n_0_[19] ;
  wire \f_fu_308_reg_n_0_[1] ;
  wire \f_fu_308_reg_n_0_[20] ;
  wire \f_fu_308_reg_n_0_[21] ;
  wire \f_fu_308_reg_n_0_[22] ;
  wire \f_fu_308_reg_n_0_[23] ;
  wire \f_fu_308_reg_n_0_[24] ;
  wire \f_fu_308_reg_n_0_[25] ;
  wire \f_fu_308_reg_n_0_[26] ;
  wire \f_fu_308_reg_n_0_[27] ;
  wire \f_fu_308_reg_n_0_[28] ;
  wire \f_fu_308_reg_n_0_[29] ;
  wire \f_fu_308_reg_n_0_[2] ;
  wire \f_fu_308_reg_n_0_[30] ;
  wire \f_fu_308_reg_n_0_[3] ;
  wire \f_fu_308_reg_n_0_[4] ;
  wire \f_fu_308_reg_n_0_[5] ;
  wire \f_fu_308_reg_n_0_[6] ;
  wire \f_fu_308_reg_n_0_[7] ;
  wire \f_fu_308_reg_n_0_[8] ;
  wire \f_fu_308_reg_n_0_[9] ;
  wire flow_control_loop_pipe_sequential_init_U_n_100;
  wire flow_control_loop_pipe_sequential_init_U_n_101;
  wire flow_control_loop_pipe_sequential_init_U_n_102;
  wire flow_control_loop_pipe_sequential_init_U_n_103;
  wire flow_control_loop_pipe_sequential_init_U_n_104;
  wire flow_control_loop_pipe_sequential_init_U_n_105;
  wire flow_control_loop_pipe_sequential_init_U_n_106;
  wire flow_control_loop_pipe_sequential_init_U_n_107;
  wire flow_control_loop_pipe_sequential_init_U_n_108;
  wire flow_control_loop_pipe_sequential_init_U_n_109;
  wire flow_control_loop_pipe_sequential_init_U_n_110;
  wire flow_control_loop_pipe_sequential_init_U_n_111;
  wire flow_control_loop_pipe_sequential_init_U_n_112;
  wire flow_control_loop_pipe_sequential_init_U_n_113;
  wire flow_control_loop_pipe_sequential_init_U_n_114;
  wire flow_control_loop_pipe_sequential_init_U_n_115;
  wire flow_control_loop_pipe_sequential_init_U_n_116;
  wire flow_control_loop_pipe_sequential_init_U_n_117;
  wire flow_control_loop_pipe_sequential_init_U_n_118;
  wire flow_control_loop_pipe_sequential_init_U_n_119;
  wire flow_control_loop_pipe_sequential_init_U_n_120;
  wire flow_control_loop_pipe_sequential_init_U_n_121;
  wire flow_control_loop_pipe_sequential_init_U_n_122;
  wire flow_control_loop_pipe_sequential_init_U_n_123;
  wire flow_control_loop_pipe_sequential_init_U_n_124;
  wire flow_control_loop_pipe_sequential_init_U_n_125;
  wire flow_control_loop_pipe_sequential_init_U_n_126;
  wire flow_control_loop_pipe_sequential_init_U_n_127;
  wire flow_control_loop_pipe_sequential_init_U_n_95;
  wire flow_control_loop_pipe_sequential_init_U_n_96;
  wire flow_control_loop_pipe_sequential_init_U_n_97;
  wire flow_control_loop_pipe_sequential_init_U_n_98;
  wire flow_control_loop_pipe_sequential_init_U_n_99;
  wire grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out;
  wire [15:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out;
  wire [15:0]\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 ;
  wire [15:0]\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 ;
  wire icmp_ln65_fu_1046_p2_carry__0_n_0;
  wire icmp_ln65_fu_1046_p2_carry__0_n_1;
  wire icmp_ln65_fu_1046_p2_carry__0_n_2;
  wire icmp_ln65_fu_1046_p2_carry__0_n_3;
  wire icmp_ln65_fu_1046_p2_carry__1_n_0;
  wire icmp_ln65_fu_1046_p2_carry__1_n_1;
  wire icmp_ln65_fu_1046_p2_carry__1_n_2;
  wire icmp_ln65_fu_1046_p2_carry__1_n_3;
  wire icmp_ln65_fu_1046_p2_carry__2_n_1;
  wire icmp_ln65_fu_1046_p2_carry__2_n_2;
  wire icmp_ln65_fu_1046_p2_carry__2_n_3;
  wire icmp_ln65_fu_1046_p2_carry_n_0;
  wire icmp_ln65_fu_1046_p2_carry_n_1;
  wire icmp_ln65_fu_1046_p2_carry_n_2;
  wire icmp_ln65_fu_1046_p2_carry_n_3;
  wire in_stream_TVALID_int_regslice;
  wire [15:0]mux_2_0;
  wire [15:0]mux_2_1;
  wire [15:0]mux_2_10;
  wire [15:0]mux_2_12;
  wire [15:0]mux_2_13;
  wire [15:0]mux_2_14;
  wire [15:0]mux_2_15;
  wire [15:0]mux_2_2;
  wire [15:0]mux_2_3;
  wire [15:0]mux_2_4;
  wire [15:0]mux_2_5;
  wire [15:0]mux_2_6;
  wire [15:0]mux_2_7;
  wire [15:0]mux_2_8;
  wire [15:0]mux_2_9;
  wire [15:0]mux_3_0;
  wire [15:0]mux_3_1;
  wire [15:0]mux_3_2;
  wire [15:0]mux_3_3;
  wire [15:0]mux_3_4;
  wire [15:0]mux_3_5;
  wire [15:0]mux_3_6;
  wire [15:0]mux_3_7;
  wire [15:0]mux_4_0;
  wire [15:0]mux_4_1;
  wire [15:0]mux_4_2;
  wire [15:0]ram_reg;
  wire test_feat_V_10_fu_5240;
  wire test_feat_V_11_fu_5200;
  wire test_feat_V_12_fu_5160;
  wire test_feat_V_13_fu_5120;
  wire test_feat_V_14_fu_5080;
  wire test_feat_V_15_fu_5040;
  wire test_feat_V_16_fu_5000;
  wire test_feat_V_17_fu_4960;
  wire test_feat_V_18_fu_4920;
  wire test_feat_V_19_fu_4880;
  wire test_feat_V_1_fu_5600;
  wire test_feat_V_20_fu_4840;
  wire test_feat_V_21_fu_4800;
  wire test_feat_V_22_fu_4760;
  wire test_feat_V_23_fu_4720;
  wire test_feat_V_24_fu_4680;
  wire test_feat_V_25_fu_4640;
  wire test_feat_V_26_fu_4600;
  wire test_feat_V_27_fu_4560;
  wire test_feat_V_28_fu_4520;
  wire test_feat_V_29_fu_4480;
  wire test_feat_V_2_fu_5560;
  wire test_feat_V_30_fu_4440;
  wire test_feat_V_31_fu_4400;
  wire test_feat_V_32_fu_4360;
  wire test_feat_V_33_fu_4320;
  wire test_feat_V_34_fu_4280;
  wire test_feat_V_35_fu_4240;
  wire test_feat_V_36_fu_4200;
  wire test_feat_V_37_fu_4160;
  wire test_feat_V_38_fu_4120;
  wire test_feat_V_39_fu_4080;
  wire test_feat_V_3_fu_5520;
  wire test_feat_V_40_fu_4040;
  wire test_feat_V_41_fu_4000;
  wire test_feat_V_42_fu_3960;
  wire test_feat_V_43_fu_3920;
  wire test_feat_V_44_fu_3880;
  wire test_feat_V_45_fu_3840;
  wire test_feat_V_46_fu_3800;
  wire test_feat_V_47_fu_3760;
  wire test_feat_V_48_fu_3720;
  wire test_feat_V_49_fu_3680;
  wire test_feat_V_4_fu_5480;
  wire test_feat_V_50_fu_3640;
  wire test_feat_V_51_fu_3600;
  wire test_feat_V_52_fu_3560;
  wire test_feat_V_53_fu_3520;
  wire test_feat_V_54_fu_3480;
  wire test_feat_V_55_fu_3440;
  wire test_feat_V_56_fu_3400;
  wire test_feat_V_57_fu_3360;
  wire test_feat_V_58_fu_3320;
  wire test_feat_V_59_fu_3280;
  wire test_feat_V_5_fu_5440;
  wire test_feat_V_60_fu_3240;
  wire test_feat_V_61_fu_3200;
  wire test_feat_V_62_fu_3160;
  wire test_feat_V_63_fu_3120;
  wire test_feat_V_6_fu_5400;
  wire test_feat_V_7_fu_5360;
  wire test_feat_V_8_fu_5320;
  wire test_feat_V_9_fu_5280;
  wire test_feat_V_fu_5640;
  wire [15:0]\test_feat_V_fu_564_reg[15]_0 ;
  wire [3:0]NLW_icmp_ln65_fu_1046_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln65_fu_1046_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln65_fu_1046_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln65_fu_1046_p2_carry__2_O_UNCONNECTED;

  FDRE \f_fu_308_reg[0] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[0]),
        .Q(\f_fu_308_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[10] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[10]),
        .Q(\f_fu_308_reg_n_0_[10] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[11] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[11]),
        .Q(\f_fu_308_reg_n_0_[11] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[12] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[12]),
        .Q(\f_fu_308_reg_n_0_[12] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[13] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[13]),
        .Q(\f_fu_308_reg_n_0_[13] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[14] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[14]),
        .Q(\f_fu_308_reg_n_0_[14] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[15] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[15]),
        .Q(\f_fu_308_reg_n_0_[15] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[16] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[16]),
        .Q(\f_fu_308_reg_n_0_[16] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[17] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[17]),
        .Q(\f_fu_308_reg_n_0_[17] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[18] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[18]),
        .Q(\f_fu_308_reg_n_0_[18] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[19] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[19]),
        .Q(\f_fu_308_reg_n_0_[19] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[1] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[1]),
        .Q(\f_fu_308_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[20] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[20]),
        .Q(\f_fu_308_reg_n_0_[20] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[21] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[21]),
        .Q(\f_fu_308_reg_n_0_[21] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[22] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[22]),
        .Q(\f_fu_308_reg_n_0_[22] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[23] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[23]),
        .Q(\f_fu_308_reg_n_0_[23] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[24] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[24]),
        .Q(\f_fu_308_reg_n_0_[24] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[25] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[25]),
        .Q(\f_fu_308_reg_n_0_[25] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[26] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[26]),
        .Q(\f_fu_308_reg_n_0_[26] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[27] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[27]),
        .Q(\f_fu_308_reg_n_0_[27] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[28] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[28]),
        .Q(\f_fu_308_reg_n_0_[28] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[29] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[29]),
        .Q(\f_fu_308_reg_n_0_[29] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[2] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[2]),
        .Q(\f_fu_308_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[30] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[30]),
        .Q(\f_fu_308_reg_n_0_[30] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[3] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[3]),
        .Q(\f_fu_308_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[4] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[4]),
        .Q(\f_fu_308_reg_n_0_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[5] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[5]),
        .Q(\f_fu_308_reg_n_0_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[6] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[6]),
        .Q(\f_fu_308_reg_n_0_[6] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[7] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[7]),
        .Q(\f_fu_308_reg_n_0_[7] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[8] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[8]),
        .Q(\f_fu_308_reg_n_0_[8] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  FDRE \f_fu_308_reg[9] 
       (.C(ap_clk),
        .CE(f_fu_308),
        .D(add_ln65_fu_1052_p2[9]),
        .Q(\f_fu_308_reg_n_0_[9] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_127));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [0]),
        .I1(mux_4_2[0]),
        .I2(DOADO[5]),
        .I3(mux_4_1[0]),
        .I4(DOADO[4]),
        .I5(mux_4_0[0]),
        .O(ram_reg[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[0]),
        .O(mux_2_12[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[0]),
        .O(mux_2_13[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[0]),
        .O(mux_2_14[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[0]),
        .O(mux_2_15[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[0]),
        .O(mux_2_8[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[0]),
        .O(mux_2_9[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[0]),
        .O(mux_2_10[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[0]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[0]),
        .O(mux_2_4[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[0]),
        .O(mux_2_5[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[0]),
        .O(mux_2_6[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[0]),
        .O(mux_2_7[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[0]),
        .O(mux_2_0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[0]),
        .O(mux_2_1[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[0]),
        .O(mux_2_2[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[0]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[0]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[0]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[0]),
        .O(mux_2_3[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [10]),
        .I1(mux_4_2[10]),
        .I2(DOADO[5]),
        .I3(mux_4_1[10]),
        .I4(DOADO[4]),
        .I5(mux_4_0[10]),
        .O(ram_reg[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[10]),
        .O(mux_2_12[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[10]),
        .O(mux_2_13[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[10]),
        .O(mux_2_14[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[10]),
        .O(mux_2_15[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[10]),
        .O(mux_2_8[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[10]),
        .O(mux_2_9[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[10]),
        .O(mux_2_10[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[10]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[10]),
        .O(mux_2_4[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[10]),
        .O(mux_2_5[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[10]),
        .O(mux_2_6[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[10]),
        .O(mux_2_7[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[10]),
        .O(mux_2_0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[10]),
        .O(mux_2_1[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[10]),
        .O(mux_2_2[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[10]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[10]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[10]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[10]),
        .O(mux_2_3[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [11]),
        .I1(mux_4_2[11]),
        .I2(DOADO[5]),
        .I3(mux_4_1[11]),
        .I4(DOADO[4]),
        .I5(mux_4_0[11]),
        .O(ram_reg[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[11]),
        .O(mux_2_12[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[11]),
        .O(mux_2_13[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[11]),
        .O(mux_2_14[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[11]),
        .O(mux_2_15[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[11]),
        .O(mux_2_8[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[11]),
        .O(mux_2_9[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[11]),
        .O(mux_2_10[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[11]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[11]),
        .O(mux_2_4[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[11]),
        .O(mux_2_5[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[11]),
        .O(mux_2_6[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[11]),
        .O(mux_2_7[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[11]),
        .O(mux_2_0[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[11]),
        .O(mux_2_1[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[11]),
        .O(mux_2_2[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[11]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[11]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[11]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[11]),
        .O(mux_2_3[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [12]),
        .I1(mux_4_2[12]),
        .I2(DOADO[5]),
        .I3(mux_4_1[12]),
        .I4(DOADO[4]),
        .I5(mux_4_0[12]),
        .O(ram_reg[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[12]),
        .O(mux_2_12[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[12]),
        .O(mux_2_13[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[12]),
        .O(mux_2_14[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[12]),
        .O(mux_2_15[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[12]),
        .O(mux_2_8[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[12]),
        .O(mux_2_9[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[12]),
        .O(mux_2_10[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[12]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[12]),
        .O(mux_2_4[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[12]),
        .O(mux_2_5[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[12]),
        .O(mux_2_6[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[12]),
        .O(mux_2_7[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[12]),
        .O(mux_2_0[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[12]),
        .O(mux_2_1[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[12]),
        .O(mux_2_2[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[12]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[12]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[12]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[12]),
        .O(mux_2_3[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [13]),
        .I1(mux_4_2[13]),
        .I2(DOADO[5]),
        .I3(mux_4_1[13]),
        .I4(DOADO[4]),
        .I5(mux_4_0[13]),
        .O(ram_reg[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[13]),
        .O(mux_2_12[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[13]),
        .O(mux_2_13[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[13]),
        .O(mux_2_14[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[13]),
        .O(mux_2_15[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[13]),
        .O(mux_2_8[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[13]),
        .O(mux_2_9[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[13]),
        .O(mux_2_10[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[13]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[13]),
        .O(mux_2_4[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[13]),
        .O(mux_2_5[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[13]),
        .O(mux_2_6[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[13]),
        .O(mux_2_7[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[13]),
        .O(mux_2_0[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[13]),
        .O(mux_2_1[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[13]),
        .O(mux_2_2[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[13]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[13]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[13]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[13]),
        .O(mux_2_3[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [14]),
        .I1(mux_4_2[14]),
        .I2(DOADO[5]),
        .I3(mux_4_1[14]),
        .I4(DOADO[4]),
        .I5(mux_4_0[14]),
        .O(ram_reg[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[14]),
        .O(mux_2_12[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[14]),
        .O(mux_2_13[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[14]),
        .O(mux_2_14[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[14]),
        .O(mux_2_15[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[14]),
        .O(mux_2_8[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[14]),
        .O(mux_2_9[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[14]),
        .O(mux_2_10[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[14]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[14]),
        .O(mux_2_4[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[14]),
        .O(mux_2_5[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[14]),
        .O(mux_2_6[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[14]),
        .O(mux_2_7[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[14]),
        .O(mux_2_0[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[14]),
        .O(mux_2_1[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[14]),
        .O(mux_2_2[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[14]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[14]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[14]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[14]),
        .O(mux_2_3[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[15]),
        .O(mux_2_12[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[15]),
        .O(mux_2_13[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[15]),
        .O(mux_2_14[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[15]),
        .O(mux_2_15[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[15]),
        .O(mux_2_8[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_2 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [15]),
        .I1(mux_4_2[15]),
        .I2(DOADO[5]),
        .I3(mux_4_1[15]),
        .I4(DOADO[4]),
        .I5(mux_4_0[15]),
        .O(ram_reg[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[15]),
        .O(mux_2_9[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[15]),
        .O(mux_2_10[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[15]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[15]),
        .O(mux_2_4[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[15]),
        .O(mux_2_5[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[15]),
        .O(mux_2_6[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[15]),
        .O(mux_2_7[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[15]),
        .O(mux_2_0[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[15]),
        .O(mux_2_1[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[15]),
        .O(mux_2_2[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[15]_i_30 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[15]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[15]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[15]),
        .O(mux_2_3[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [1]),
        .I1(mux_4_2[1]),
        .I2(DOADO[5]),
        .I3(mux_4_1[1]),
        .I4(DOADO[4]),
        .I5(mux_4_0[1]),
        .O(ram_reg[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[1]),
        .O(mux_2_12[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[1]),
        .O(mux_2_13[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[1]),
        .O(mux_2_14[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[1]),
        .O(mux_2_15[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[1]),
        .O(mux_2_8[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[1]),
        .O(mux_2_9[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[1]),
        .O(mux_2_10[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[1]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[1]),
        .O(mux_2_4[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[1]),
        .O(mux_2_5[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[1]),
        .O(mux_2_6[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[1]),
        .O(mux_2_7[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[1]),
        .O(mux_2_0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[1]),
        .O(mux_2_1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[1]),
        .O(mux_2_2[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[1]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[1]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[1]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[1]),
        .O(mux_2_3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [2]),
        .I1(mux_4_2[2]),
        .I2(DOADO[5]),
        .I3(mux_4_1[2]),
        .I4(DOADO[4]),
        .I5(mux_4_0[2]),
        .O(ram_reg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[2]),
        .O(mux_2_12[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[2]),
        .O(mux_2_13[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[2]),
        .O(mux_2_14[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[2]),
        .O(mux_2_15[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[2]),
        .O(mux_2_8[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[2]),
        .O(mux_2_9[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[2]),
        .O(mux_2_10[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[2]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[2]),
        .O(mux_2_4[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[2]),
        .O(mux_2_5[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[2]),
        .O(mux_2_6[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[2]),
        .O(mux_2_7[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[2]),
        .O(mux_2_0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[2]),
        .O(mux_2_1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[2]),
        .O(mux_2_2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[2]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[2]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[2]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[2]),
        .O(mux_2_3[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [3]),
        .I1(mux_4_2[3]),
        .I2(DOADO[5]),
        .I3(mux_4_1[3]),
        .I4(DOADO[4]),
        .I5(mux_4_0[3]),
        .O(ram_reg[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[3]),
        .O(mux_2_12[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[3]),
        .O(mux_2_13[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[3]),
        .O(mux_2_14[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[3]),
        .O(mux_2_15[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[3]),
        .O(mux_2_8[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[3]),
        .O(mux_2_9[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[3]),
        .O(mux_2_10[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[3]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[3]),
        .O(mux_2_4[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[3]),
        .O(mux_2_5[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[3]),
        .O(mux_2_6[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[3]),
        .O(mux_2_7[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[3]),
        .O(mux_2_0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[3]),
        .O(mux_2_1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[3]),
        .O(mux_2_2[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[3]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[3]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[3]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[3]),
        .O(mux_2_3[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [4]),
        .I1(mux_4_2[4]),
        .I2(DOADO[5]),
        .I3(mux_4_1[4]),
        .I4(DOADO[4]),
        .I5(mux_4_0[4]),
        .O(ram_reg[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[4]),
        .O(mux_2_12[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[4]),
        .O(mux_2_13[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[4]),
        .O(mux_2_14[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[4]),
        .O(mux_2_15[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[4]),
        .O(mux_2_8[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[4]),
        .O(mux_2_9[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[4]),
        .O(mux_2_10[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[4]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[4]),
        .O(mux_2_4[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[4]),
        .O(mux_2_5[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[4]),
        .O(mux_2_6[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[4]),
        .O(mux_2_7[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[4]),
        .O(mux_2_0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[4]),
        .O(mux_2_1[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[4]),
        .O(mux_2_2[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[4]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[4]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[4]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[4]),
        .O(mux_2_3[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [5]),
        .I1(mux_4_2[5]),
        .I2(DOADO[5]),
        .I3(mux_4_1[5]),
        .I4(DOADO[4]),
        .I5(mux_4_0[5]),
        .O(ram_reg[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[5]),
        .O(mux_2_12[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[5]),
        .O(mux_2_13[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[5]),
        .O(mux_2_14[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[5]),
        .O(mux_2_15[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[5]),
        .O(mux_2_8[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[5]),
        .O(mux_2_9[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[5]),
        .O(mux_2_10[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[5]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[5]),
        .O(mux_2_4[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[5]),
        .O(mux_2_5[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[5]),
        .O(mux_2_6[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[5]),
        .O(mux_2_7[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[5]),
        .O(mux_2_0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[5]),
        .O(mux_2_1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[5]),
        .O(mux_2_2[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[5]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[5]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[5]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[5]),
        .O(mux_2_3[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [6]),
        .I1(mux_4_2[6]),
        .I2(DOADO[5]),
        .I3(mux_4_1[6]),
        .I4(DOADO[4]),
        .I5(mux_4_0[6]),
        .O(ram_reg[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[6]),
        .O(mux_2_12[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[6]),
        .O(mux_2_13[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[6]),
        .O(mux_2_14[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[6]),
        .O(mux_2_15[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[6]),
        .O(mux_2_8[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[6]),
        .O(mux_2_9[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[6]),
        .O(mux_2_10[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[6]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[6]),
        .O(mux_2_4[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[6]),
        .O(mux_2_5[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[6]),
        .O(mux_2_6[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[6]),
        .O(mux_2_7[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[6]),
        .O(mux_2_0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[6]),
        .O(mux_2_1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[6]),
        .O(mux_2_2[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[6]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[6]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[6]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[6]),
        .O(mux_2_3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [7]),
        .I1(mux_4_2[7]),
        .I2(DOADO[5]),
        .I3(mux_4_1[7]),
        .I4(DOADO[4]),
        .I5(mux_4_0[7]),
        .O(ram_reg[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[7]),
        .O(mux_2_12[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[7]),
        .O(mux_2_13[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[7]),
        .O(mux_2_14[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[7]),
        .O(mux_2_15[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[7]),
        .O(mux_2_8[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[7]),
        .O(mux_2_9[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[7]),
        .O(mux_2_10[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[7]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[7]),
        .O(mux_2_4[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[7]),
        .O(mux_2_5[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[7]),
        .O(mux_2_6[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[7]),
        .O(mux_2_7[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[7]),
        .O(mux_2_0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[7]),
        .O(mux_2_1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[7]),
        .O(mux_2_2[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[7]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[7]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[7]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[7]),
        .O(mux_2_3[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [8]),
        .I1(mux_4_2[8]),
        .I2(DOADO[5]),
        .I3(mux_4_1[8]),
        .I4(DOADO[4]),
        .I5(mux_4_0[8]),
        .O(ram_reg[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[8]),
        .O(mux_2_12[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[8]),
        .O(mux_2_13[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[8]),
        .O(mux_2_14[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[8]),
        .O(mux_2_15[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[8]),
        .O(mux_2_8[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[8]),
        .O(mux_2_9[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[8]),
        .O(mux_2_10[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[8]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[8]),
        .O(mux_2_4[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[8]),
        .O(mux_2_5[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[8]),
        .O(mux_2_6[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[8]),
        .O(mux_2_7[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[8]),
        .O(mux_2_0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[8]),
        .O(mux_2_1[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[8]),
        .O(mux_2_2[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[8]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[8]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[8]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[8]),
        .O(mux_2_3[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_1 
       (.I0(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [9]),
        .I1(mux_4_2[9]),
        .I2(DOADO[5]),
        .I3(mux_4_1[9]),
        .I4(DOADO[4]),
        .I5(mux_4_0[9]),
        .O(ram_reg[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_14 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[9]),
        .O(mux_2_12[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_15 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[9]),
        .O(mux_2_13[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_16 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[9]),
        .O(mux_2_14[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_17 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[9]),
        .O(mux_2_15[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_18 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[9]),
        .O(mux_2_8[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_19 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[9]),
        .O(mux_2_9[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_20 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[9]),
        .O(mux_2_10[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_21 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[9]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_22 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[9]),
        .O(mux_2_4[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_23 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[9]),
        .O(mux_2_5[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_24 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[9]),
        .O(mux_2_6[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_25 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[9]),
        .O(mux_2_7[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_26 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[9]),
        .O(mux_2_0[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_27 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[9]),
        .O(mux_2_1[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_28 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[9]),
        .O(mux_2_2[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \feat_val_V_reg_1182[9]_i_29 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[9]),
        .I2(DOADO[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[9]),
        .I4(DOADO[0]),
        .I5(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[9]),
        .O(mux_2_3[9]));
  MUXF7 \feat_val_V_reg_1182_reg[0]_i_10 
       (.I0(mux_2_4[0]),
        .I1(mux_2_5[0]),
        .O(mux_3_2[0]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[0]_i_11 
       (.I0(mux_2_6[0]),
        .I1(mux_2_7[0]),
        .O(mux_3_3[0]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[0]_i_12 
       (.I0(mux_2_0[0]),
        .I1(mux_2_1[0]),
        .O(mux_3_0[0]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[0]_i_13 
       (.I0(mux_2_2[0]),
        .I1(mux_2_3[0]),
        .O(mux_3_1[0]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[0]_i_2 
       (.I0(mux_3_6[0]),
        .I1(mux_3_7[0]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [0]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[0]_i_3 
       (.I0(mux_3_4[0]),
        .I1(mux_3_5[0]),
        .O(mux_4_2[0]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[0]_i_4 
       (.I0(mux_3_2[0]),
        .I1(mux_3_3[0]),
        .O(mux_4_1[0]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[0]_i_5 
       (.I0(mux_3_0[0]),
        .I1(mux_3_1[0]),
        .O(mux_4_0[0]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[0]_i_6 
       (.I0(mux_2_12[0]),
        .I1(mux_2_13[0]),
        .O(mux_3_6[0]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[0]_i_7 
       (.I0(mux_2_14[0]),
        .I1(mux_2_15[0]),
        .O(mux_3_7[0]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[0]_i_8 
       (.I0(mux_2_8[0]),
        .I1(mux_2_9[0]),
        .O(mux_3_4[0]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[0]_i_9 
       (.I0(mux_2_10[0]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [0]),
        .O(mux_3_5[0]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[10]_i_10 
       (.I0(mux_2_4[10]),
        .I1(mux_2_5[10]),
        .O(mux_3_2[10]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[10]_i_11 
       (.I0(mux_2_6[10]),
        .I1(mux_2_7[10]),
        .O(mux_3_3[10]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[10]_i_12 
       (.I0(mux_2_0[10]),
        .I1(mux_2_1[10]),
        .O(mux_3_0[10]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[10]_i_13 
       (.I0(mux_2_2[10]),
        .I1(mux_2_3[10]),
        .O(mux_3_1[10]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[10]_i_2 
       (.I0(mux_3_6[10]),
        .I1(mux_3_7[10]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [10]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[10]_i_3 
       (.I0(mux_3_4[10]),
        .I1(mux_3_5[10]),
        .O(mux_4_2[10]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[10]_i_4 
       (.I0(mux_3_2[10]),
        .I1(mux_3_3[10]),
        .O(mux_4_1[10]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[10]_i_5 
       (.I0(mux_3_0[10]),
        .I1(mux_3_1[10]),
        .O(mux_4_0[10]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[10]_i_6 
       (.I0(mux_2_12[10]),
        .I1(mux_2_13[10]),
        .O(mux_3_6[10]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[10]_i_7 
       (.I0(mux_2_14[10]),
        .I1(mux_2_15[10]),
        .O(mux_3_7[10]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[10]_i_8 
       (.I0(mux_2_8[10]),
        .I1(mux_2_9[10]),
        .O(mux_3_4[10]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[10]_i_9 
       (.I0(mux_2_10[10]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [10]),
        .O(mux_3_5[10]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[11]_i_10 
       (.I0(mux_2_4[11]),
        .I1(mux_2_5[11]),
        .O(mux_3_2[11]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[11]_i_11 
       (.I0(mux_2_6[11]),
        .I1(mux_2_7[11]),
        .O(mux_3_3[11]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[11]_i_12 
       (.I0(mux_2_0[11]),
        .I1(mux_2_1[11]),
        .O(mux_3_0[11]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[11]_i_13 
       (.I0(mux_2_2[11]),
        .I1(mux_2_3[11]),
        .O(mux_3_1[11]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[11]_i_2 
       (.I0(mux_3_6[11]),
        .I1(mux_3_7[11]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [11]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[11]_i_3 
       (.I0(mux_3_4[11]),
        .I1(mux_3_5[11]),
        .O(mux_4_2[11]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[11]_i_4 
       (.I0(mux_3_2[11]),
        .I1(mux_3_3[11]),
        .O(mux_4_1[11]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[11]_i_5 
       (.I0(mux_3_0[11]),
        .I1(mux_3_1[11]),
        .O(mux_4_0[11]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[11]_i_6 
       (.I0(mux_2_12[11]),
        .I1(mux_2_13[11]),
        .O(mux_3_6[11]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[11]_i_7 
       (.I0(mux_2_14[11]),
        .I1(mux_2_15[11]),
        .O(mux_3_7[11]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[11]_i_8 
       (.I0(mux_2_8[11]),
        .I1(mux_2_9[11]),
        .O(mux_3_4[11]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[11]_i_9 
       (.I0(mux_2_10[11]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [11]),
        .O(mux_3_5[11]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[12]_i_10 
       (.I0(mux_2_4[12]),
        .I1(mux_2_5[12]),
        .O(mux_3_2[12]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[12]_i_11 
       (.I0(mux_2_6[12]),
        .I1(mux_2_7[12]),
        .O(mux_3_3[12]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[12]_i_12 
       (.I0(mux_2_0[12]),
        .I1(mux_2_1[12]),
        .O(mux_3_0[12]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[12]_i_13 
       (.I0(mux_2_2[12]),
        .I1(mux_2_3[12]),
        .O(mux_3_1[12]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[12]_i_2 
       (.I0(mux_3_6[12]),
        .I1(mux_3_7[12]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [12]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[12]_i_3 
       (.I0(mux_3_4[12]),
        .I1(mux_3_5[12]),
        .O(mux_4_2[12]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[12]_i_4 
       (.I0(mux_3_2[12]),
        .I1(mux_3_3[12]),
        .O(mux_4_1[12]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[12]_i_5 
       (.I0(mux_3_0[12]),
        .I1(mux_3_1[12]),
        .O(mux_4_0[12]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[12]_i_6 
       (.I0(mux_2_12[12]),
        .I1(mux_2_13[12]),
        .O(mux_3_6[12]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[12]_i_7 
       (.I0(mux_2_14[12]),
        .I1(mux_2_15[12]),
        .O(mux_3_7[12]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[12]_i_8 
       (.I0(mux_2_8[12]),
        .I1(mux_2_9[12]),
        .O(mux_3_4[12]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[12]_i_9 
       (.I0(mux_2_10[12]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [12]),
        .O(mux_3_5[12]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[13]_i_10 
       (.I0(mux_2_4[13]),
        .I1(mux_2_5[13]),
        .O(mux_3_2[13]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[13]_i_11 
       (.I0(mux_2_6[13]),
        .I1(mux_2_7[13]),
        .O(mux_3_3[13]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[13]_i_12 
       (.I0(mux_2_0[13]),
        .I1(mux_2_1[13]),
        .O(mux_3_0[13]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[13]_i_13 
       (.I0(mux_2_2[13]),
        .I1(mux_2_3[13]),
        .O(mux_3_1[13]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[13]_i_2 
       (.I0(mux_3_6[13]),
        .I1(mux_3_7[13]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [13]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[13]_i_3 
       (.I0(mux_3_4[13]),
        .I1(mux_3_5[13]),
        .O(mux_4_2[13]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[13]_i_4 
       (.I0(mux_3_2[13]),
        .I1(mux_3_3[13]),
        .O(mux_4_1[13]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[13]_i_5 
       (.I0(mux_3_0[13]),
        .I1(mux_3_1[13]),
        .O(mux_4_0[13]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[13]_i_6 
       (.I0(mux_2_12[13]),
        .I1(mux_2_13[13]),
        .O(mux_3_6[13]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[13]_i_7 
       (.I0(mux_2_14[13]),
        .I1(mux_2_15[13]),
        .O(mux_3_7[13]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[13]_i_8 
       (.I0(mux_2_8[13]),
        .I1(mux_2_9[13]),
        .O(mux_3_4[13]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[13]_i_9 
       (.I0(mux_2_10[13]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [13]),
        .O(mux_3_5[13]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[14]_i_10 
       (.I0(mux_2_4[14]),
        .I1(mux_2_5[14]),
        .O(mux_3_2[14]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[14]_i_11 
       (.I0(mux_2_6[14]),
        .I1(mux_2_7[14]),
        .O(mux_3_3[14]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[14]_i_12 
       (.I0(mux_2_0[14]),
        .I1(mux_2_1[14]),
        .O(mux_3_0[14]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[14]_i_13 
       (.I0(mux_2_2[14]),
        .I1(mux_2_3[14]),
        .O(mux_3_1[14]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[14]_i_2 
       (.I0(mux_3_6[14]),
        .I1(mux_3_7[14]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [14]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[14]_i_3 
       (.I0(mux_3_4[14]),
        .I1(mux_3_5[14]),
        .O(mux_4_2[14]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[14]_i_4 
       (.I0(mux_3_2[14]),
        .I1(mux_3_3[14]),
        .O(mux_4_1[14]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[14]_i_5 
       (.I0(mux_3_0[14]),
        .I1(mux_3_1[14]),
        .O(mux_4_0[14]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[14]_i_6 
       (.I0(mux_2_12[14]),
        .I1(mux_2_13[14]),
        .O(mux_3_6[14]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[14]_i_7 
       (.I0(mux_2_14[14]),
        .I1(mux_2_15[14]),
        .O(mux_3_7[14]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[14]_i_8 
       (.I0(mux_2_8[14]),
        .I1(mux_2_9[14]),
        .O(mux_3_4[14]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[14]_i_9 
       (.I0(mux_2_10[14]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [14]),
        .O(mux_3_5[14]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[15]_i_10 
       (.I0(mux_2_10[15]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [15]),
        .O(mux_3_5[15]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[15]_i_11 
       (.I0(mux_2_4[15]),
        .I1(mux_2_5[15]),
        .O(mux_3_2[15]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[15]_i_12 
       (.I0(mux_2_6[15]),
        .I1(mux_2_7[15]),
        .O(mux_3_3[15]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[15]_i_13 
       (.I0(mux_2_0[15]),
        .I1(mux_2_1[15]),
        .O(mux_3_0[15]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[15]_i_14 
       (.I0(mux_2_2[15]),
        .I1(mux_2_3[15]),
        .O(mux_3_1[15]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[15]_i_3 
       (.I0(mux_3_6[15]),
        .I1(mux_3_7[15]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [15]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[15]_i_4 
       (.I0(mux_3_4[15]),
        .I1(mux_3_5[15]),
        .O(mux_4_2[15]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[15]_i_5 
       (.I0(mux_3_2[15]),
        .I1(mux_3_3[15]),
        .O(mux_4_1[15]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[15]_i_6 
       (.I0(mux_3_0[15]),
        .I1(mux_3_1[15]),
        .O(mux_4_0[15]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[15]_i_7 
       (.I0(mux_2_12[15]),
        .I1(mux_2_13[15]),
        .O(mux_3_6[15]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[15]_i_8 
       (.I0(mux_2_14[15]),
        .I1(mux_2_15[15]),
        .O(mux_3_7[15]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[15]_i_9 
       (.I0(mux_2_8[15]),
        .I1(mux_2_9[15]),
        .O(mux_3_4[15]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[1]_i_10 
       (.I0(mux_2_4[1]),
        .I1(mux_2_5[1]),
        .O(mux_3_2[1]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[1]_i_11 
       (.I0(mux_2_6[1]),
        .I1(mux_2_7[1]),
        .O(mux_3_3[1]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[1]_i_12 
       (.I0(mux_2_0[1]),
        .I1(mux_2_1[1]),
        .O(mux_3_0[1]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[1]_i_13 
       (.I0(mux_2_2[1]),
        .I1(mux_2_3[1]),
        .O(mux_3_1[1]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[1]_i_2 
       (.I0(mux_3_6[1]),
        .I1(mux_3_7[1]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [1]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[1]_i_3 
       (.I0(mux_3_4[1]),
        .I1(mux_3_5[1]),
        .O(mux_4_2[1]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[1]_i_4 
       (.I0(mux_3_2[1]),
        .I1(mux_3_3[1]),
        .O(mux_4_1[1]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[1]_i_5 
       (.I0(mux_3_0[1]),
        .I1(mux_3_1[1]),
        .O(mux_4_0[1]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[1]_i_6 
       (.I0(mux_2_12[1]),
        .I1(mux_2_13[1]),
        .O(mux_3_6[1]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[1]_i_7 
       (.I0(mux_2_14[1]),
        .I1(mux_2_15[1]),
        .O(mux_3_7[1]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[1]_i_8 
       (.I0(mux_2_8[1]),
        .I1(mux_2_9[1]),
        .O(mux_3_4[1]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[1]_i_9 
       (.I0(mux_2_10[1]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [1]),
        .O(mux_3_5[1]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[2]_i_10 
       (.I0(mux_2_4[2]),
        .I1(mux_2_5[2]),
        .O(mux_3_2[2]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[2]_i_11 
       (.I0(mux_2_6[2]),
        .I1(mux_2_7[2]),
        .O(mux_3_3[2]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[2]_i_12 
       (.I0(mux_2_0[2]),
        .I1(mux_2_1[2]),
        .O(mux_3_0[2]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[2]_i_13 
       (.I0(mux_2_2[2]),
        .I1(mux_2_3[2]),
        .O(mux_3_1[2]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[2]_i_2 
       (.I0(mux_3_6[2]),
        .I1(mux_3_7[2]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [2]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[2]_i_3 
       (.I0(mux_3_4[2]),
        .I1(mux_3_5[2]),
        .O(mux_4_2[2]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[2]_i_4 
       (.I0(mux_3_2[2]),
        .I1(mux_3_3[2]),
        .O(mux_4_1[2]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[2]_i_5 
       (.I0(mux_3_0[2]),
        .I1(mux_3_1[2]),
        .O(mux_4_0[2]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[2]_i_6 
       (.I0(mux_2_12[2]),
        .I1(mux_2_13[2]),
        .O(mux_3_6[2]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[2]_i_7 
       (.I0(mux_2_14[2]),
        .I1(mux_2_15[2]),
        .O(mux_3_7[2]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[2]_i_8 
       (.I0(mux_2_8[2]),
        .I1(mux_2_9[2]),
        .O(mux_3_4[2]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[2]_i_9 
       (.I0(mux_2_10[2]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [2]),
        .O(mux_3_5[2]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[3]_i_10 
       (.I0(mux_2_4[3]),
        .I1(mux_2_5[3]),
        .O(mux_3_2[3]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[3]_i_11 
       (.I0(mux_2_6[3]),
        .I1(mux_2_7[3]),
        .O(mux_3_3[3]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[3]_i_12 
       (.I0(mux_2_0[3]),
        .I1(mux_2_1[3]),
        .O(mux_3_0[3]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[3]_i_13 
       (.I0(mux_2_2[3]),
        .I1(mux_2_3[3]),
        .O(mux_3_1[3]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[3]_i_2 
       (.I0(mux_3_6[3]),
        .I1(mux_3_7[3]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [3]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[3]_i_3 
       (.I0(mux_3_4[3]),
        .I1(mux_3_5[3]),
        .O(mux_4_2[3]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[3]_i_4 
       (.I0(mux_3_2[3]),
        .I1(mux_3_3[3]),
        .O(mux_4_1[3]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[3]_i_5 
       (.I0(mux_3_0[3]),
        .I1(mux_3_1[3]),
        .O(mux_4_0[3]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[3]_i_6 
       (.I0(mux_2_12[3]),
        .I1(mux_2_13[3]),
        .O(mux_3_6[3]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[3]_i_7 
       (.I0(mux_2_14[3]),
        .I1(mux_2_15[3]),
        .O(mux_3_7[3]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[3]_i_8 
       (.I0(mux_2_8[3]),
        .I1(mux_2_9[3]),
        .O(mux_3_4[3]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[3]_i_9 
       (.I0(mux_2_10[3]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [3]),
        .O(mux_3_5[3]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[4]_i_10 
       (.I0(mux_2_4[4]),
        .I1(mux_2_5[4]),
        .O(mux_3_2[4]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[4]_i_11 
       (.I0(mux_2_6[4]),
        .I1(mux_2_7[4]),
        .O(mux_3_3[4]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[4]_i_12 
       (.I0(mux_2_0[4]),
        .I1(mux_2_1[4]),
        .O(mux_3_0[4]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[4]_i_13 
       (.I0(mux_2_2[4]),
        .I1(mux_2_3[4]),
        .O(mux_3_1[4]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[4]_i_2 
       (.I0(mux_3_6[4]),
        .I1(mux_3_7[4]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [4]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[4]_i_3 
       (.I0(mux_3_4[4]),
        .I1(mux_3_5[4]),
        .O(mux_4_2[4]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[4]_i_4 
       (.I0(mux_3_2[4]),
        .I1(mux_3_3[4]),
        .O(mux_4_1[4]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[4]_i_5 
       (.I0(mux_3_0[4]),
        .I1(mux_3_1[4]),
        .O(mux_4_0[4]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[4]_i_6 
       (.I0(mux_2_12[4]),
        .I1(mux_2_13[4]),
        .O(mux_3_6[4]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[4]_i_7 
       (.I0(mux_2_14[4]),
        .I1(mux_2_15[4]),
        .O(mux_3_7[4]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[4]_i_8 
       (.I0(mux_2_8[4]),
        .I1(mux_2_9[4]),
        .O(mux_3_4[4]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[4]_i_9 
       (.I0(mux_2_10[4]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [4]),
        .O(mux_3_5[4]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[5]_i_10 
       (.I0(mux_2_4[5]),
        .I1(mux_2_5[5]),
        .O(mux_3_2[5]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[5]_i_11 
       (.I0(mux_2_6[5]),
        .I1(mux_2_7[5]),
        .O(mux_3_3[5]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[5]_i_12 
       (.I0(mux_2_0[5]),
        .I1(mux_2_1[5]),
        .O(mux_3_0[5]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[5]_i_13 
       (.I0(mux_2_2[5]),
        .I1(mux_2_3[5]),
        .O(mux_3_1[5]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[5]_i_2 
       (.I0(mux_3_6[5]),
        .I1(mux_3_7[5]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [5]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[5]_i_3 
       (.I0(mux_3_4[5]),
        .I1(mux_3_5[5]),
        .O(mux_4_2[5]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[5]_i_4 
       (.I0(mux_3_2[5]),
        .I1(mux_3_3[5]),
        .O(mux_4_1[5]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[5]_i_5 
       (.I0(mux_3_0[5]),
        .I1(mux_3_1[5]),
        .O(mux_4_0[5]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[5]_i_6 
       (.I0(mux_2_12[5]),
        .I1(mux_2_13[5]),
        .O(mux_3_6[5]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[5]_i_7 
       (.I0(mux_2_14[5]),
        .I1(mux_2_15[5]),
        .O(mux_3_7[5]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[5]_i_8 
       (.I0(mux_2_8[5]),
        .I1(mux_2_9[5]),
        .O(mux_3_4[5]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[5]_i_9 
       (.I0(mux_2_10[5]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [5]),
        .O(mux_3_5[5]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[6]_i_10 
       (.I0(mux_2_4[6]),
        .I1(mux_2_5[6]),
        .O(mux_3_2[6]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[6]_i_11 
       (.I0(mux_2_6[6]),
        .I1(mux_2_7[6]),
        .O(mux_3_3[6]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[6]_i_12 
       (.I0(mux_2_0[6]),
        .I1(mux_2_1[6]),
        .O(mux_3_0[6]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[6]_i_13 
       (.I0(mux_2_2[6]),
        .I1(mux_2_3[6]),
        .O(mux_3_1[6]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[6]_i_2 
       (.I0(mux_3_6[6]),
        .I1(mux_3_7[6]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [6]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[6]_i_3 
       (.I0(mux_3_4[6]),
        .I1(mux_3_5[6]),
        .O(mux_4_2[6]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[6]_i_4 
       (.I0(mux_3_2[6]),
        .I1(mux_3_3[6]),
        .O(mux_4_1[6]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[6]_i_5 
       (.I0(mux_3_0[6]),
        .I1(mux_3_1[6]),
        .O(mux_4_0[6]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[6]_i_6 
       (.I0(mux_2_12[6]),
        .I1(mux_2_13[6]),
        .O(mux_3_6[6]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[6]_i_7 
       (.I0(mux_2_14[6]),
        .I1(mux_2_15[6]),
        .O(mux_3_7[6]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[6]_i_8 
       (.I0(mux_2_8[6]),
        .I1(mux_2_9[6]),
        .O(mux_3_4[6]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[6]_i_9 
       (.I0(mux_2_10[6]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [6]),
        .O(mux_3_5[6]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[7]_i_10 
       (.I0(mux_2_4[7]),
        .I1(mux_2_5[7]),
        .O(mux_3_2[7]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[7]_i_11 
       (.I0(mux_2_6[7]),
        .I1(mux_2_7[7]),
        .O(mux_3_3[7]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[7]_i_12 
       (.I0(mux_2_0[7]),
        .I1(mux_2_1[7]),
        .O(mux_3_0[7]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[7]_i_13 
       (.I0(mux_2_2[7]),
        .I1(mux_2_3[7]),
        .O(mux_3_1[7]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[7]_i_2 
       (.I0(mux_3_6[7]),
        .I1(mux_3_7[7]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [7]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[7]_i_3 
       (.I0(mux_3_4[7]),
        .I1(mux_3_5[7]),
        .O(mux_4_2[7]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[7]_i_4 
       (.I0(mux_3_2[7]),
        .I1(mux_3_3[7]),
        .O(mux_4_1[7]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[7]_i_5 
       (.I0(mux_3_0[7]),
        .I1(mux_3_1[7]),
        .O(mux_4_0[7]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[7]_i_6 
       (.I0(mux_2_12[7]),
        .I1(mux_2_13[7]),
        .O(mux_3_6[7]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[7]_i_7 
       (.I0(mux_2_14[7]),
        .I1(mux_2_15[7]),
        .O(mux_3_7[7]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[7]_i_8 
       (.I0(mux_2_8[7]),
        .I1(mux_2_9[7]),
        .O(mux_3_4[7]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[7]_i_9 
       (.I0(mux_2_10[7]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [7]),
        .O(mux_3_5[7]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[8]_i_10 
       (.I0(mux_2_4[8]),
        .I1(mux_2_5[8]),
        .O(mux_3_2[8]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[8]_i_11 
       (.I0(mux_2_6[8]),
        .I1(mux_2_7[8]),
        .O(mux_3_3[8]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[8]_i_12 
       (.I0(mux_2_0[8]),
        .I1(mux_2_1[8]),
        .O(mux_3_0[8]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[8]_i_13 
       (.I0(mux_2_2[8]),
        .I1(mux_2_3[8]),
        .O(mux_3_1[8]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[8]_i_2 
       (.I0(mux_3_6[8]),
        .I1(mux_3_7[8]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [8]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[8]_i_3 
       (.I0(mux_3_4[8]),
        .I1(mux_3_5[8]),
        .O(mux_4_2[8]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[8]_i_4 
       (.I0(mux_3_2[8]),
        .I1(mux_3_3[8]),
        .O(mux_4_1[8]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[8]_i_5 
       (.I0(mux_3_0[8]),
        .I1(mux_3_1[8]),
        .O(mux_4_0[8]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[8]_i_6 
       (.I0(mux_2_12[8]),
        .I1(mux_2_13[8]),
        .O(mux_3_6[8]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[8]_i_7 
       (.I0(mux_2_14[8]),
        .I1(mux_2_15[8]),
        .O(mux_3_7[8]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[8]_i_8 
       (.I0(mux_2_8[8]),
        .I1(mux_2_9[8]),
        .O(mux_3_4[8]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[8]_i_9 
       (.I0(mux_2_10[8]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [8]),
        .O(mux_3_5[8]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[9]_i_10 
       (.I0(mux_2_4[9]),
        .I1(mux_2_5[9]),
        .O(mux_3_2[9]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[9]_i_11 
       (.I0(mux_2_6[9]),
        .I1(mux_2_7[9]),
        .O(mux_3_3[9]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[9]_i_12 
       (.I0(mux_2_0[9]),
        .I1(mux_2_1[9]),
        .O(mux_3_0[9]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[9]_i_13 
       (.I0(mux_2_2[9]),
        .I1(mux_2_3[9]),
        .O(mux_3_1[9]),
        .S(DOADO[2]));
  MUXF8 \feat_val_V_reg_1182_reg[9]_i_2 
       (.I0(mux_3_6[9]),
        .I1(mux_3_7[9]),
        .O(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_4_3 [9]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[9]_i_3 
       (.I0(mux_3_4[9]),
        .I1(mux_3_5[9]),
        .O(mux_4_2[9]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[9]_i_4 
       (.I0(mux_3_2[9]),
        .I1(mux_3_3[9]),
        .O(mux_4_1[9]),
        .S(DOADO[3]));
  MUXF8 \feat_val_V_reg_1182_reg[9]_i_5 
       (.I0(mux_3_0[9]),
        .I1(mux_3_1[9]),
        .O(mux_4_0[9]),
        .S(DOADO[3]));
  MUXF7 \feat_val_V_reg_1182_reg[9]_i_6 
       (.I0(mux_2_12[9]),
        .I1(mux_2_13[9]),
        .O(mux_3_6[9]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[9]_i_7 
       (.I0(mux_2_14[9]),
        .I1(mux_2_15[9]),
        .O(mux_3_7[9]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[9]_i_8 
       (.I0(mux_2_8[9]),
        .I1(mux_2_9[9]),
        .O(mux_3_4[9]),
        .S(DOADO[2]));
  MUXF7 \feat_val_V_reg_1182_reg[9]_i_9 
       (.I0(mux_2_10[9]),
        .I1(\grp_dt_accel_Pipeline_TRAVERSE_fu_539/mux_2_11 [9]),
        .O(mux_3_5[9]),
        .S(DOADO[2]));
  design_1_dt_accel_0_0_dt_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.CO(CO),
        .D(add_ln65_fu_1052_p2),
        .DI({flow_control_loop_pipe_sequential_init_U_n_95,flow_control_loop_pipe_sequential_init_U_n_96,flow_control_loop_pipe_sequential_init_U_n_97,flow_control_loop_pipe_sequential_init_U_n_98}),
        .E(test_feat_V_62_fu_3160),
        .Q({\f_fu_308_reg_n_0_[30] ,\f_fu_308_reg_n_0_[29] ,\f_fu_308_reg_n_0_[28] ,\f_fu_308_reg_n_0_[27] ,\f_fu_308_reg_n_0_[26] ,\f_fu_308_reg_n_0_[25] ,\f_fu_308_reg_n_0_[24] ,\f_fu_308_reg_n_0_[23] ,\f_fu_308_reg_n_0_[22] ,\f_fu_308_reg_n_0_[21] ,\f_fu_308_reg_n_0_[20] ,\f_fu_308_reg_n_0_[19] ,\f_fu_308_reg_n_0_[18] ,\f_fu_308_reg_n_0_[17] ,\f_fu_308_reg_n_0_[16] ,\f_fu_308_reg_n_0_[15] ,\f_fu_308_reg_n_0_[14] ,\f_fu_308_reg_n_0_[13] ,\f_fu_308_reg_n_0_[12] ,\f_fu_308_reg_n_0_[11] ,\f_fu_308_reg_n_0_[10] ,\f_fu_308_reg_n_0_[9] ,\f_fu_308_reg_n_0_[8] ,\f_fu_308_reg_n_0_[7] ,\f_fu_308_reg_n_0_[6] ,\f_fu_308_reg_n_0_[5] ,\f_fu_308_reg_n_0_[4] ,\f_fu_308_reg_n_0_[3] ,\f_fu_308_reg_n_0_[2] ,\f_fu_308_reg_n_0_[1] ,\f_fu_308_reg_n_0_[0] }),
        .S({flow_control_loop_pipe_sequential_init_U_n_99,flow_control_loop_pipe_sequential_init_U_n_100,flow_control_loop_pipe_sequential_init_U_n_101,flow_control_loop_pipe_sequential_init_U_n_102}),
        .SR(flow_control_loop_pipe_sequential_init_U_n_127),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2]_0 ),
        .ap_clk(ap_clk),
        .ap_loop_init_int_reg_0({flow_control_loop_pipe_sequential_init_U_n_107,flow_control_loop_pipe_sequential_init_U_n_108,flow_control_loop_pipe_sequential_init_U_n_109,flow_control_loop_pipe_sequential_init_U_n_110}),
        .ap_loop_init_int_reg_1({flow_control_loop_pipe_sequential_init_U_n_115,flow_control_loop_pipe_sequential_init_U_n_116,flow_control_loop_pipe_sequential_init_U_n_117,flow_control_loop_pipe_sequential_init_U_n_118}),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .f_fu_308(f_fu_308),
        .\f_fu_308_reg[2] (test_feat_V_46_fu_3800),
        .\f_fu_308_reg[2]_0 (test_feat_V_30_fu_4440),
        .\f_fu_308_reg[2]_1 (test_feat_V_14_fu_5080),
        .\f_fu_308_reg[2]_10 (test_feat_V_24_fu_4680),
        .\f_fu_308_reg[2]_11 (test_feat_V_8_fu_5320),
        .\f_fu_308_reg[2]_12 (test_feat_V_fu_5640),
        .\f_fu_308_reg[2]_13 (test_feat_V_63_fu_3120),
        .\f_fu_308_reg[2]_14 (test_feat_V_47_fu_3760),
        .\f_fu_308_reg[2]_15 (test_feat_V_31_fu_4400),
        .\f_fu_308_reg[2]_16 (test_feat_V_15_fu_5040),
        .\f_fu_308_reg[2]_17 (test_feat_V_7_fu_5360),
        .\f_fu_308_reg[2]_18 (test_feat_V_61_fu_3200),
        .\f_fu_308_reg[2]_19 (test_feat_V_45_fu_3840),
        .\f_fu_308_reg[2]_2 (test_feat_V_6_fu_5400),
        .\f_fu_308_reg[2]_20 (test_feat_V_29_fu_4480),
        .\f_fu_308_reg[2]_21 (test_feat_V_13_fu_5120),
        .\f_fu_308_reg[2]_22 (test_feat_V_5_fu_5440),
        .\f_fu_308_reg[2]_3 (test_feat_V_60_fu_3240),
        .\f_fu_308_reg[2]_4 (test_feat_V_44_fu_3880),
        .\f_fu_308_reg[2]_5 (test_feat_V_28_fu_4520),
        .\f_fu_308_reg[2]_6 (test_feat_V_12_fu_5160),
        .\f_fu_308_reg[2]_7 (test_feat_V_4_fu_5480),
        .\f_fu_308_reg[2]_8 (test_feat_V_56_fu_3400),
        .\f_fu_308_reg[2]_9 (test_feat_V_40_fu_4040),
        .\f_fu_308_reg[30] ({flow_control_loop_pipe_sequential_init_U_n_123,flow_control_loop_pipe_sequential_init_U_n_124,flow_control_loop_pipe_sequential_init_U_n_125,flow_control_loop_pipe_sequential_init_U_n_126}),
        .\f_fu_308_reg[3] (test_feat_V_58_fu_3320),
        .\f_fu_308_reg[3]_0 (test_feat_V_42_fu_3960),
        .\f_fu_308_reg[3]_1 (test_feat_V_26_fu_4600),
        .\f_fu_308_reg[3]_10 (test_feat_V_49_fu_3680),
        .\f_fu_308_reg[3]_11 (test_feat_V_41_fu_4000),
        .\f_fu_308_reg[3]_12 (test_feat_V_33_fu_4320),
        .\f_fu_308_reg[3]_13 (test_feat_V_25_fu_4640),
        .\f_fu_308_reg[3]_14 (test_feat_V_17_fu_4960),
        .\f_fu_308_reg[3]_15 (test_feat_V_9_fu_5280),
        .\f_fu_308_reg[3]_16 (test_feat_V_1_fu_5600),
        .\f_fu_308_reg[3]_2 (test_feat_V_10_fu_5240),
        .\f_fu_308_reg[3]_3 (test_feat_V_2_fu_5560),
        .\f_fu_308_reg[3]_4 (test_feat_V_59_fu_3280),
        .\f_fu_308_reg[3]_5 (test_feat_V_43_fu_3920),
        .\f_fu_308_reg[3]_6 (test_feat_V_27_fu_4560),
        .\f_fu_308_reg[3]_7 (test_feat_V_11_fu_5200),
        .\f_fu_308_reg[3]_8 (test_feat_V_3_fu_5520),
        .\f_fu_308_reg[3]_9 (test_feat_V_57_fu_3360),
        .\f_fu_308_reg[4] (test_feat_V_38_fu_4120),
        .\f_fu_308_reg[4]_0 (test_feat_V_34_fu_4280),
        .\f_fu_308_reg[4]_1 (test_feat_V_36_fu_4200),
        .\f_fu_308_reg[4]_2 (test_feat_V_32_fu_4360),
        .\f_fu_308_reg[4]_3 (test_feat_V_39_fu_4080),
        .\f_fu_308_reg[4]_4 (test_feat_V_35_fu_4240),
        .\f_fu_308_reg[4]_5 (test_feat_V_37_fu_4160),
        .\f_fu_308_reg[5] (test_feat_V_54_fu_3480),
        .\f_fu_308_reg[5]_0 (test_feat_V_50_fu_3640),
        .\f_fu_308_reg[5]_1 (test_feat_V_22_fu_4760),
        .\f_fu_308_reg[5]_10 (test_feat_V_19_fu_4880),
        .\f_fu_308_reg[5]_11 (test_feat_V_53_fu_3520),
        .\f_fu_308_reg[5]_12 (test_feat_V_21_fu_4800),
        .\f_fu_308_reg[5]_2 (test_feat_V_18_fu_4920),
        .\f_fu_308_reg[5]_3 (test_feat_V_52_fu_3560),
        .\f_fu_308_reg[5]_4 (test_feat_V_48_fu_3720),
        .\f_fu_308_reg[5]_5 (test_feat_V_20_fu_4840),
        .\f_fu_308_reg[5]_6 (test_feat_V_16_fu_5000),
        .\f_fu_308_reg[5]_7 (test_feat_V_55_fu_3440),
        .\f_fu_308_reg[5]_8 (test_feat_V_51_fu_3600),
        .\f_fu_308_reg[5]_9 (test_feat_V_23_fu_4720),
        .grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg_reg(D),
        .icmp_ln65_fu_1046_p2_carry__2(Q),
        .in_stream_TVALID_int_regslice(in_stream_TVALID_int_regslice),
        .\num_features_read_reg_973_reg[14] ({flow_control_loop_pipe_sequential_init_U_n_103,flow_control_loop_pipe_sequential_init_U_n_104,flow_control_loop_pipe_sequential_init_U_n_105,flow_control_loop_pipe_sequential_init_U_n_106}),
        .\num_features_read_reg_973_reg[22] ({flow_control_loop_pipe_sequential_init_U_n_111,flow_control_loop_pipe_sequential_init_U_n_112,flow_control_loop_pipe_sequential_init_U_n_113,flow_control_loop_pipe_sequential_init_U_n_114}),
        .\num_features_read_reg_973_reg[31] ({flow_control_loop_pipe_sequential_init_U_n_119,flow_control_loop_pipe_sequential_init_U_n_120,flow_control_loop_pipe_sequential_init_U_n_121,flow_control_loop_pipe_sequential_init_U_n_122}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln65_fu_1046_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln65_fu_1046_p2_carry_n_0,icmp_ln65_fu_1046_p2_carry_n_1,icmp_ln65_fu_1046_p2_carry_n_2,icmp_ln65_fu_1046_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_95,flow_control_loop_pipe_sequential_init_U_n_96,flow_control_loop_pipe_sequential_init_U_n_97,flow_control_loop_pipe_sequential_init_U_n_98}),
        .O(NLW_icmp_ln65_fu_1046_p2_carry_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_99,flow_control_loop_pipe_sequential_init_U_n_100,flow_control_loop_pipe_sequential_init_U_n_101,flow_control_loop_pipe_sequential_init_U_n_102}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln65_fu_1046_p2_carry__0
       (.CI(icmp_ln65_fu_1046_p2_carry_n_0),
        .CO({icmp_ln65_fu_1046_p2_carry__0_n_0,icmp_ln65_fu_1046_p2_carry__0_n_1,icmp_ln65_fu_1046_p2_carry__0_n_2,icmp_ln65_fu_1046_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_103,flow_control_loop_pipe_sequential_init_U_n_104,flow_control_loop_pipe_sequential_init_U_n_105,flow_control_loop_pipe_sequential_init_U_n_106}),
        .O(NLW_icmp_ln65_fu_1046_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_107,flow_control_loop_pipe_sequential_init_U_n_108,flow_control_loop_pipe_sequential_init_U_n_109,flow_control_loop_pipe_sequential_init_U_n_110}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln65_fu_1046_p2_carry__1
       (.CI(icmp_ln65_fu_1046_p2_carry__0_n_0),
        .CO({icmp_ln65_fu_1046_p2_carry__1_n_0,icmp_ln65_fu_1046_p2_carry__1_n_1,icmp_ln65_fu_1046_p2_carry__1_n_2,icmp_ln65_fu_1046_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_111,flow_control_loop_pipe_sequential_init_U_n_112,flow_control_loop_pipe_sequential_init_U_n_113,flow_control_loop_pipe_sequential_init_U_n_114}),
        .O(NLW_icmp_ln65_fu_1046_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_115,flow_control_loop_pipe_sequential_init_U_n_116,flow_control_loop_pipe_sequential_init_U_n_117,flow_control_loop_pipe_sequential_init_U_n_118}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln65_fu_1046_p2_carry__2
       (.CI(icmp_ln65_fu_1046_p2_carry__1_n_0),
        .CO({CO,icmp_ln65_fu_1046_p2_carry__2_n_1,icmp_ln65_fu_1046_p2_carry__2_n_2,icmp_ln65_fu_1046_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({flow_control_loop_pipe_sequential_init_U_n_119,flow_control_loop_pipe_sequential_init_U_n_120,flow_control_loop_pipe_sequential_init_U_n_121,flow_control_loop_pipe_sequential_init_U_n_122}),
        .O(NLW_icmp_ln65_fu_1046_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({flow_control_loop_pipe_sequential_init_U_n_123,flow_control_loop_pipe_sequential_init_U_n_124,flow_control_loop_pipe_sequential_init_U_n_125,flow_control_loop_pipe_sequential_init_U_n_126}));
  FDRE \test_feat_V_10_fu_524_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_10_fu_524_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_10_fu_5240),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_10_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_11_fu_520_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_11_fu_5200),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_11_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_12_fu_516_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_12_fu_5160),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_12_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_13_fu_512_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_13_fu_5120),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_13_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_14_fu_508_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_14_fu_5080),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_14_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_15_fu_504_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_15_fu_5040),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_15_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_16_fu_500_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_16_fu_5000),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_16_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_17_fu_496_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_17_fu_4960),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_17_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_18_fu_492_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_18_fu_4920),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_18_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_19_fu_488_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_19_fu_4880),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_19_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_1_fu_560_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_1_fu_5600),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_1_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_20_fu_484_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_20_fu_4840),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_20_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_21_fu_480_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_21_fu_4800),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_21_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_22_fu_476_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_22_fu_4760),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_22_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_23_fu_472_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_23_fu_4720),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_23_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_24_fu_468_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_24_fu_4680),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_24_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_25_fu_464_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_25_fu_4640),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_25_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_26_fu_460_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_26_fu_4600),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_26_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_27_fu_456_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_27_fu_4560),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_27_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_28_fu_452_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_28_fu_4520),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_28_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_29_fu_448_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_29_fu_4480),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_29_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_2_fu_556_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_2_fu_5560),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_2_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_30_fu_444_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_30_fu_4440),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_30_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_31_fu_440_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_31_fu_4400),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_31_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_32_fu_436_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_32_fu_4360),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_32_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_33_fu_432_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_33_fu_4320),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_33_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_34_fu_428_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_34_fu_4280),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_34_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_35_fu_424_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_35_fu_4240),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_35_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_36_fu_420_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_36_fu_4200),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_36_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_37_fu_416_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_37_fu_4160),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_37_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_38_fu_412_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_38_fu_4120),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_38_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_39_fu_408_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_39_fu_4080),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_39_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_3_fu_552_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_3_fu_5520),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_3_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_40_fu_404_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_40_fu_4040),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_40_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_41_fu_400_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_41_fu_4000),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_41_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_42_fu_396_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_42_fu_3960),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_42_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_43_fu_392_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_43_fu_3920),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_43_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_44_fu_388_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_44_fu_3880),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_44_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_45_fu_384_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_45_fu_3840),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_45_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_46_fu_380_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_46_fu_3800),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_46_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_47_fu_376_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_47_fu_3760),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_47_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_48_fu_372_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_48_fu_3720),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_48_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_49_fu_368_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_49_fu_3680),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_49_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_4_fu_548_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_4_fu_5480),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_4_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_50_fu_364_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_50_fu_3640),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_50_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_51_fu_360_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_51_fu_3600),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_51_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_52_fu_356_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_52_fu_3560),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_52_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_53_fu_352_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_53_fu_3520),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_53_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_54_fu_348_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_54_fu_3480),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_54_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_55_fu_344_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_55_fu_3440),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_55_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_56_fu_340_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_56_fu_3400),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_56_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_57_fu_336_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_57_fu_3360),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_57_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_58_fu_332_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_58_fu_3320),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_58_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_59_fu_328_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_59_fu_3280),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_59_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_5_fu_544_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_5_fu_5440),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_5_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_60_fu_324_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_60_fu_3240),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_60_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_61_fu_320_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_61_fu_3200),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_61_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_62_fu_316_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_62_fu_3160),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_62_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_63_fu_312_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_63_fu_3120),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_63_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_6_fu_540_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_6_fu_5400),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_6_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_7_fu_536_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_7_fu_5360),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_7_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_8_fu_532_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_8_fu_5320),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_8_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_9_fu_528_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_9_fu_5280),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_9_out[9]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[0] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [0]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[0]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[10] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [10]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[10]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[11] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [11]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[11]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[12] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [12]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[12]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[13] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [13]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[13]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[14] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [14]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[14]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[15] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [15]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[15]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[1] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [1]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[1]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[2] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [2]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[2]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[3] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [3]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[3]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[4] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [4]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[4]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[5] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [5]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[5]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[6] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [6]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[6]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[7] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [7]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[7]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[8] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [8]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[8]),
        .R(1'b0));
  FDRE \test_feat_V_fu_564_reg[9] 
       (.C(ap_clk),
        .CE(test_feat_V_fu_5640),
        .D(\test_feat_V_fu_564_reg[15]_0 [9]),
        .Q(grp_dt_accel_Pipeline_READ_FEAT_fu_462_test_feat_V_out[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dt_accel_dt_accel_Pipeline_TRAVERSE" *) 
module design_1_dt_accel_0_0_dt_accel_dt_accel_Pipeline_TRAVERSE
   (D,
    \icmp_ln74_reg_1153_reg[0]_0 ,
    node_feature_V_ce0,
    \feat_val_V_reg_1182_reg[13]_0 ,
    node_threshold_V_ce0,
    node_right_V_ce0,
    node_left_V_ce0,
    E,
    \ap_CS_fsm_reg[4]_0 ,
    \current_fu_186_reg[8]_0 ,
    \ap_CS_fsm_reg[3]_0 ,
    \ap_CS_fsm_reg[3]_1 ,
    \zext_ln77_reg_1167_reg[8]_0 ,
    ap_clk,
    S,
    \current_fu_186_reg[8]_1 ,
    ap_rst_n,
    ap_condition_pp0_exit_iter0_state3,
    DOADO,
    grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg,
    Q,
    grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0,
    ram_reg,
    icmp_ln1652_fu_782_p2_carry__0_0,
    in_stream_TVALID_int_regslice,
    ram_reg_0,
    \current_load_1_reg_1162_reg[8]_0 ,
    \current_load_1_reg_1162_reg[8]_1 ,
    ap_rst_n_inv,
    \feat_val_V_reg_1182_reg[15]_0 );
  output [31:0]D;
  output \icmp_ln74_reg_1153_reg[0]_0 ;
  output node_feature_V_ce0;
  output [13:0]\feat_val_V_reg_1182_reg[13]_0 ;
  output node_threshold_V_ce0;
  output node_right_V_ce0;
  output node_left_V_ce0;
  output [0:0]E;
  output [8:0]\ap_CS_fsm_reg[4]_0 ;
  output [8:0]\current_fu_186_reg[8]_0 ;
  output [1:0]\ap_CS_fsm_reg[3]_0 ;
  output \ap_CS_fsm_reg[3]_1 ;
  output [8:0]\zext_ln77_reg_1167_reg[8]_0 ;
  input ap_clk;
  input [3:0]S;
  input [2:0]\current_fu_186_reg[8]_1 ;
  input ap_rst_n;
  input ap_condition_pp0_exit_iter0_state3;
  input [0:0]DOADO;
  input grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg;
  input [31:0]Q;
  input grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0;
  input [2:0]ram_reg;
  input [15:0]icmp_ln1652_fu_782_p2_carry__0_0;
  input in_stream_TVALID_int_regslice;
  input [2:0]ram_reg_0;
  input [8:0]\current_load_1_reg_1162_reg[8]_0 ;
  input [8:0]\current_load_1_reg_1162_reg[8]_1 ;
  input ap_rst_n_inv;
  input [15:0]\feat_val_V_reg_1182_reg[15]_0 ;

  wire [31:0]D;
  wire [0:0]DOADO;
  wire [0:0]E;
  wire [31:0]Q;
  wire [3:0]S;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp0_stage1;
  wire [1:0]\ap_CS_fsm_reg[3]_0 ;
  wire \ap_CS_fsm_reg[3]_1 ;
  wire [8:0]\ap_CS_fsm_reg[4]_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state6;
  wire [4:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [8:0]ap_sig_allocacmp_current_load_1;
  wire [8:0]current_fu_186;
  wire current_fu_1861__0;
  wire [8:0]\current_fu_186_reg[8]_0 ;
  wire [2:0]\current_fu_186_reg[8]_1 ;
  wire [8:0]current_load_1_reg_1162;
  wire current_load_1_reg_11620;
  wire \current_load_1_reg_1162[8]_i_5_n_0 ;
  wire [8:0]\current_load_1_reg_1162_reg[8]_0 ;
  wire [8:0]\current_load_1_reg_1162_reg[8]_1 ;
  wire cycles_1_fu_1820;
  wire \cycles_1_fu_182[0]_i_1_n_0 ;
  wire \cycles_1_fu_182[0]_i_3_n_0 ;
  wire \cycles_1_fu_182[0]_i_4_n_0 ;
  wire \cycles_1_fu_182[0]_i_5_n_0 ;
  wire \cycles_1_fu_182[0]_i_6_n_0 ;
  wire \cycles_1_fu_182[0]_i_7_n_0 ;
  wire \cycles_1_fu_182[12]_i_2_n_0 ;
  wire \cycles_1_fu_182[12]_i_3_n_0 ;
  wire \cycles_1_fu_182[12]_i_4_n_0 ;
  wire \cycles_1_fu_182[12]_i_5_n_0 ;
  wire \cycles_1_fu_182[16]_i_2_n_0 ;
  wire \cycles_1_fu_182[16]_i_3_n_0 ;
  wire \cycles_1_fu_182[16]_i_4_n_0 ;
  wire \cycles_1_fu_182[16]_i_5_n_0 ;
  wire \cycles_1_fu_182[20]_i_2_n_0 ;
  wire \cycles_1_fu_182[20]_i_3_n_0 ;
  wire \cycles_1_fu_182[20]_i_4_n_0 ;
  wire \cycles_1_fu_182[20]_i_5_n_0 ;
  wire \cycles_1_fu_182[24]_i_2_n_0 ;
  wire \cycles_1_fu_182[24]_i_3_n_0 ;
  wire \cycles_1_fu_182[24]_i_4_n_0 ;
  wire \cycles_1_fu_182[24]_i_5_n_0 ;
  wire \cycles_1_fu_182[28]_i_2_n_0 ;
  wire \cycles_1_fu_182[28]_i_3_n_0 ;
  wire \cycles_1_fu_182[28]_i_4_n_0 ;
  wire \cycles_1_fu_182[28]_i_5_n_0 ;
  wire \cycles_1_fu_182[4]_i_2_n_0 ;
  wire \cycles_1_fu_182[4]_i_3_n_0 ;
  wire \cycles_1_fu_182[4]_i_4_n_0 ;
  wire \cycles_1_fu_182[4]_i_5_n_0 ;
  wire \cycles_1_fu_182[8]_i_2_n_0 ;
  wire \cycles_1_fu_182[8]_i_3_n_0 ;
  wire \cycles_1_fu_182[8]_i_4_n_0 ;
  wire \cycles_1_fu_182[8]_i_5_n_0 ;
  wire \cycles_1_fu_182_reg[0]_i_2_n_0 ;
  wire \cycles_1_fu_182_reg[0]_i_2_n_1 ;
  wire \cycles_1_fu_182_reg[0]_i_2_n_2 ;
  wire \cycles_1_fu_182_reg[0]_i_2_n_3 ;
  wire \cycles_1_fu_182_reg[0]_i_2_n_4 ;
  wire \cycles_1_fu_182_reg[0]_i_2_n_5 ;
  wire \cycles_1_fu_182_reg[0]_i_2_n_6 ;
  wire \cycles_1_fu_182_reg[0]_i_2_n_7 ;
  wire \cycles_1_fu_182_reg[12]_i_1_n_0 ;
  wire \cycles_1_fu_182_reg[12]_i_1_n_1 ;
  wire \cycles_1_fu_182_reg[12]_i_1_n_2 ;
  wire \cycles_1_fu_182_reg[12]_i_1_n_3 ;
  wire \cycles_1_fu_182_reg[12]_i_1_n_4 ;
  wire \cycles_1_fu_182_reg[12]_i_1_n_5 ;
  wire \cycles_1_fu_182_reg[12]_i_1_n_6 ;
  wire \cycles_1_fu_182_reg[12]_i_1_n_7 ;
  wire \cycles_1_fu_182_reg[16]_i_1_n_0 ;
  wire \cycles_1_fu_182_reg[16]_i_1_n_1 ;
  wire \cycles_1_fu_182_reg[16]_i_1_n_2 ;
  wire \cycles_1_fu_182_reg[16]_i_1_n_3 ;
  wire \cycles_1_fu_182_reg[16]_i_1_n_4 ;
  wire \cycles_1_fu_182_reg[16]_i_1_n_5 ;
  wire \cycles_1_fu_182_reg[16]_i_1_n_6 ;
  wire \cycles_1_fu_182_reg[16]_i_1_n_7 ;
  wire \cycles_1_fu_182_reg[20]_i_1_n_0 ;
  wire \cycles_1_fu_182_reg[20]_i_1_n_1 ;
  wire \cycles_1_fu_182_reg[20]_i_1_n_2 ;
  wire \cycles_1_fu_182_reg[20]_i_1_n_3 ;
  wire \cycles_1_fu_182_reg[20]_i_1_n_4 ;
  wire \cycles_1_fu_182_reg[20]_i_1_n_5 ;
  wire \cycles_1_fu_182_reg[20]_i_1_n_6 ;
  wire \cycles_1_fu_182_reg[20]_i_1_n_7 ;
  wire \cycles_1_fu_182_reg[24]_i_1_n_0 ;
  wire \cycles_1_fu_182_reg[24]_i_1_n_1 ;
  wire \cycles_1_fu_182_reg[24]_i_1_n_2 ;
  wire \cycles_1_fu_182_reg[24]_i_1_n_3 ;
  wire \cycles_1_fu_182_reg[24]_i_1_n_4 ;
  wire \cycles_1_fu_182_reg[24]_i_1_n_5 ;
  wire \cycles_1_fu_182_reg[24]_i_1_n_6 ;
  wire \cycles_1_fu_182_reg[24]_i_1_n_7 ;
  wire \cycles_1_fu_182_reg[28]_i_1_n_1 ;
  wire \cycles_1_fu_182_reg[28]_i_1_n_2 ;
  wire \cycles_1_fu_182_reg[28]_i_1_n_3 ;
  wire \cycles_1_fu_182_reg[28]_i_1_n_4 ;
  wire \cycles_1_fu_182_reg[28]_i_1_n_5 ;
  wire \cycles_1_fu_182_reg[28]_i_1_n_6 ;
  wire \cycles_1_fu_182_reg[28]_i_1_n_7 ;
  wire \cycles_1_fu_182_reg[4]_i_1_n_0 ;
  wire \cycles_1_fu_182_reg[4]_i_1_n_1 ;
  wire \cycles_1_fu_182_reg[4]_i_1_n_2 ;
  wire \cycles_1_fu_182_reg[4]_i_1_n_3 ;
  wire \cycles_1_fu_182_reg[4]_i_1_n_4 ;
  wire \cycles_1_fu_182_reg[4]_i_1_n_5 ;
  wire \cycles_1_fu_182_reg[4]_i_1_n_6 ;
  wire \cycles_1_fu_182_reg[4]_i_1_n_7 ;
  wire \cycles_1_fu_182_reg[8]_i_1_n_0 ;
  wire \cycles_1_fu_182_reg[8]_i_1_n_1 ;
  wire \cycles_1_fu_182_reg[8]_i_1_n_2 ;
  wire \cycles_1_fu_182_reg[8]_i_1_n_3 ;
  wire \cycles_1_fu_182_reg[8]_i_1_n_4 ;
  wire \cycles_1_fu_182_reg[8]_i_1_n_5 ;
  wire \cycles_1_fu_182_reg[8]_i_1_n_6 ;
  wire \cycles_1_fu_182_reg[8]_i_1_n_7 ;
  wire [8:0]depth_2_fu_674_p2;
  wire [8:0]depth_2_reg_1157;
  wire \depth_2_reg_1157[8]_i_2_n_0 ;
  wire [8:0]depth_fu_190;
  wire [15:14]feat_val_V_reg_1182;
  wire feat_val_V_reg_11820;
  wire [13:0]\feat_val_V_reg_1182_reg[13]_0 ;
  wire [15:0]\feat_val_V_reg_1182_reg[15]_0 ;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0;
  wire grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_ready;
  wire grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg;
  wire [15:0]icmp_ln1652_fu_782_p2_carry__0_0;
  wire icmp_ln1652_fu_782_p2_carry__0_i_1_n_0;
  wire icmp_ln1652_fu_782_p2_carry__0_i_2_n_0;
  wire icmp_ln1652_fu_782_p2_carry__0_i_3_n_0;
  wire icmp_ln1652_fu_782_p2_carry__0_i_4_n_0;
  wire icmp_ln1652_fu_782_p2_carry__0_i_5_n_0;
  wire icmp_ln1652_fu_782_p2_carry__0_n_1;
  wire icmp_ln1652_fu_782_p2_carry__0_n_2;
  wire icmp_ln1652_fu_782_p2_carry__0_n_3;
  wire icmp_ln1652_fu_782_p2_carry_i_1_n_0;
  wire icmp_ln1652_fu_782_p2_carry_i_2_n_0;
  wire icmp_ln1652_fu_782_p2_carry_i_3_n_0;
  wire icmp_ln1652_fu_782_p2_carry_i_4_n_0;
  wire icmp_ln1652_fu_782_p2_carry_n_0;
  wire icmp_ln1652_fu_782_p2_carry_n_1;
  wire icmp_ln1652_fu_782_p2_carry_n_2;
  wire icmp_ln1652_fu_782_p2_carry_n_3;
  wire icmp_ln74_fu_668_p2;
  wire \icmp_ln74_reg_1153[0]_i_1_n_0 ;
  wire \icmp_ln74_reg_1153_reg[0]_0 ;
  wire in_stream_TVALID_int_regslice;
  wire node_feature_V_ce0;
  wire node_left_V_ce0;
  wire node_right_V_ce0;
  wire node_threshold_V_ce0;
  wire p_0_in;
  wire [2:0]ram_reg;
  wire [2:0]ram_reg_0;
  wire zext_ln77_reg_1167_reg0;
  wire [8:0]\zext_ln77_reg_1167_reg[8]_0 ;
  wire [3:3]\NLW_cycles_1_fu_182_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_icmp_ln1652_fu_782_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln1652_fu_782_p2_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_ready),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA0F3F0000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I1(DOADO),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(\icmp_ln74_reg_1153_reg[0]_0 ),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(DOADO),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\icmp_ln74_reg_1153_reg[0]_0 ),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(ap_CS_fsm_state6),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hFFFF00D0)) 
    \ap_CS_fsm[4]_i_1__0 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I2(ram_reg[1]),
        .I3(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_ready),
        .I4(ram_reg[0]),
        .O(\ap_CS_fsm_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ap_CS_fsm[4]_i_1__1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(\icmp_ln74_reg_1153_reg[0]_0 ),
        .I2(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h8C88)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_ready),
        .I1(ram_reg[1]),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(\ap_CS_fsm_reg[3]_0 [1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage0),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_ready),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h000000A8A8A8A8A8)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_rst_n),
        .I1(ap_NS_fsm1),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(DOADO),
        .I4(\icmp_ln74_reg_1153_reg[0]_0 ),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000C0C000A000A0)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_rst_n),
        .I3(ap_NS_fsm1),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0CCCCCCAACCCCCC)) 
    \current_fu_186[0]_i_1 
       (.I0(\current_load_1_reg_1162_reg[8]_0 [0]),
        .I1(current_fu_186[0]),
        .I2(\current_load_1_reg_1162_reg[8]_1 [0]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(p_0_in),
        .O(ap_sig_allocacmp_current_load_1[0]));
  LUT6 #(
    .INIT(64'hF0CCCCCCAACCCCCC)) 
    \current_fu_186[1]_i_1 
       (.I0(\current_load_1_reg_1162_reg[8]_0 [1]),
        .I1(current_fu_186[1]),
        .I2(\current_load_1_reg_1162_reg[8]_1 [1]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(p_0_in),
        .O(ap_sig_allocacmp_current_load_1[1]));
  LUT6 #(
    .INIT(64'hF0CCCCCCAACCCCCC)) 
    \current_fu_186[2]_i_1 
       (.I0(\current_load_1_reg_1162_reg[8]_0 [2]),
        .I1(current_fu_186[2]),
        .I2(\current_load_1_reg_1162_reg[8]_1 [2]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(p_0_in),
        .O(ap_sig_allocacmp_current_load_1[2]));
  LUT6 #(
    .INIT(64'hF0CCCCCCAACCCCCC)) 
    \current_fu_186[3]_i_1 
       (.I0(\current_load_1_reg_1162_reg[8]_0 [3]),
        .I1(current_fu_186[3]),
        .I2(\current_load_1_reg_1162_reg[8]_1 [3]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(p_0_in),
        .O(ap_sig_allocacmp_current_load_1[3]));
  LUT6 #(
    .INIT(64'hF0CCCCCCAACCCCCC)) 
    \current_fu_186[4]_i_1 
       (.I0(\current_load_1_reg_1162_reg[8]_0 [4]),
        .I1(current_fu_186[4]),
        .I2(\current_load_1_reg_1162_reg[8]_1 [4]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(p_0_in),
        .O(ap_sig_allocacmp_current_load_1[4]));
  LUT6 #(
    .INIT(64'hF0CCCCCCAACCCCCC)) 
    \current_fu_186[5]_i_1 
       (.I0(\current_load_1_reg_1162_reg[8]_0 [5]),
        .I1(current_fu_186[5]),
        .I2(\current_load_1_reg_1162_reg[8]_1 [5]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(p_0_in),
        .O(ap_sig_allocacmp_current_load_1[5]));
  LUT6 #(
    .INIT(64'hF0CCCCCCAACCCCCC)) 
    \current_fu_186[6]_i_1 
       (.I0(\current_load_1_reg_1162_reg[8]_0 [6]),
        .I1(current_fu_186[6]),
        .I2(\current_load_1_reg_1162_reg[8]_1 [6]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(p_0_in),
        .O(ap_sig_allocacmp_current_load_1[6]));
  LUT6 #(
    .INIT(64'hF0CCCCCCAACCCCCC)) 
    \current_fu_186[7]_i_1 
       (.I0(\current_load_1_reg_1162_reg[8]_0 [7]),
        .I1(current_fu_186[7]),
        .I2(\current_load_1_reg_1162_reg[8]_1 [7]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(p_0_in),
        .O(ap_sig_allocacmp_current_load_1[7]));
  LUT6 #(
    .INIT(64'hF0CCCCCCAACCCCCC)) 
    \current_fu_186[8]_i_1 
       (.I0(\current_load_1_reg_1162_reg[8]_0 [8]),
        .I1(current_fu_186[8]),
        .I2(\current_load_1_reg_1162_reg[8]_1 [8]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(p_0_in),
        .O(ap_sig_allocacmp_current_load_1[8]));
  FDRE \current_fu_186_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_current_load_1[0]),
        .Q(current_fu_186[0]),
        .R(ap_NS_fsm1));
  FDRE \current_fu_186_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_current_load_1[1]),
        .Q(current_fu_186[1]),
        .R(ap_NS_fsm1));
  FDRE \current_fu_186_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_current_load_1[2]),
        .Q(current_fu_186[2]),
        .R(ap_NS_fsm1));
  FDRE \current_fu_186_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_current_load_1[3]),
        .Q(current_fu_186[3]),
        .R(ap_NS_fsm1));
  FDRE \current_fu_186_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_current_load_1[4]),
        .Q(current_fu_186[4]),
        .R(ap_NS_fsm1));
  FDRE \current_fu_186_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_current_load_1[5]),
        .Q(current_fu_186[5]),
        .R(ap_NS_fsm1));
  FDRE \current_fu_186_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_current_load_1[6]),
        .Q(current_fu_186[6]),
        .R(ap_NS_fsm1));
  FDRE \current_fu_186_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_current_load_1[7]),
        .Q(current_fu_186[7]),
        .R(ap_NS_fsm1));
  FDRE \current_fu_186_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_current_load_1[8]),
        .Q(current_fu_186[8]),
        .R(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'hF5A0F0F0E4E4F0F0)) 
    \current_load_1_reg_1162[0]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(\current_load_1_reg_1162_reg[8]_0 [0]),
        .I2(current_fu_186[0]),
        .I3(\current_load_1_reg_1162_reg[8]_1 [0]),
        .I4(current_fu_1861__0),
        .I5(p_0_in),
        .O(\ap_CS_fsm_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'hF5A0F0F0E4E4F0F0)) 
    \current_load_1_reg_1162[1]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(\current_load_1_reg_1162_reg[8]_0 [1]),
        .I2(current_fu_186[1]),
        .I3(\current_load_1_reg_1162_reg[8]_1 [1]),
        .I4(current_fu_1861__0),
        .I5(p_0_in),
        .O(\ap_CS_fsm_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'hF5A0F0F0E4E4F0F0)) 
    \current_load_1_reg_1162[2]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(\current_load_1_reg_1162_reg[8]_0 [2]),
        .I2(current_fu_186[2]),
        .I3(\current_load_1_reg_1162_reg[8]_1 [2]),
        .I4(current_fu_1861__0),
        .I5(p_0_in),
        .O(\ap_CS_fsm_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hF5A0F0F0E4E4F0F0)) 
    \current_load_1_reg_1162[3]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(\current_load_1_reg_1162_reg[8]_0 [3]),
        .I2(current_fu_186[3]),
        .I3(\current_load_1_reg_1162_reg[8]_1 [3]),
        .I4(current_fu_1861__0),
        .I5(p_0_in),
        .O(\ap_CS_fsm_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'hF5A0F0F0E4E4F0F0)) 
    \current_load_1_reg_1162[4]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(\current_load_1_reg_1162_reg[8]_0 [4]),
        .I2(current_fu_186[4]),
        .I3(\current_load_1_reg_1162_reg[8]_1 [4]),
        .I4(current_fu_1861__0),
        .I5(p_0_in),
        .O(\ap_CS_fsm_reg[4]_0 [4]));
  LUT6 #(
    .INIT(64'hF5A0F0F0E4E4F0F0)) 
    \current_load_1_reg_1162[5]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(\current_load_1_reg_1162_reg[8]_0 [5]),
        .I2(current_fu_186[5]),
        .I3(\current_load_1_reg_1162_reg[8]_1 [5]),
        .I4(current_fu_1861__0),
        .I5(p_0_in),
        .O(\ap_CS_fsm_reg[4]_0 [5]));
  LUT6 #(
    .INIT(64'hF5A0F0F0E4E4F0F0)) 
    \current_load_1_reg_1162[6]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(\current_load_1_reg_1162_reg[8]_0 [6]),
        .I2(current_fu_186[6]),
        .I3(\current_load_1_reg_1162_reg[8]_1 [6]),
        .I4(current_fu_1861__0),
        .I5(p_0_in),
        .O(\ap_CS_fsm_reg[4]_0 [6]));
  LUT6 #(
    .INIT(64'hF5A0F0F0E4E4F0F0)) 
    \current_load_1_reg_1162[7]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(\current_load_1_reg_1162_reg[8]_0 [7]),
        .I2(current_fu_186[7]),
        .I3(\current_load_1_reg_1162_reg[8]_1 [7]),
        .I4(current_fu_1861__0),
        .I5(p_0_in),
        .O(\ap_CS_fsm_reg[4]_0 [7]));
  LUT3 #(
    .INIT(8'h08)) 
    \current_load_1_reg_1162[8]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(icmp_ln74_fu_668_p2),
        .O(current_load_1_reg_11620));
  LUT6 #(
    .INIT(64'hF5A0F0F0E4E4F0F0)) 
    \current_load_1_reg_1162[8]_i_2 
       (.I0(ap_CS_fsm_state6),
        .I1(\current_load_1_reg_1162_reg[8]_0 [8]),
        .I2(current_fu_186[8]),
        .I3(\current_load_1_reg_1162_reg[8]_1 [8]),
        .I4(current_fu_1861__0),
        .I5(p_0_in),
        .O(\ap_CS_fsm_reg[4]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \current_load_1_reg_1162[8]_i_3 
       (.I0(\current_load_1_reg_1162[8]_i_5_n_0 ),
        .I1(depth_fu_190[0]),
        .I2(depth_fu_190[2]),
        .I3(depth_fu_190[1]),
        .O(icmp_ln74_fu_668_p2));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_load_1_reg_1162[8]_i_4 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_CS_fsm_pp0_stage0),
        .O(current_fu_1861__0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \current_load_1_reg_1162[8]_i_5 
       (.I0(depth_fu_190[3]),
        .I1(depth_fu_190[4]),
        .I2(depth_fu_190[5]),
        .I3(depth_fu_190[6]),
        .I4(depth_fu_190[7]),
        .I5(depth_fu_190[8]),
        .O(\current_load_1_reg_1162[8]_i_5_n_0 ));
  FDRE \current_load_1_reg_1162_reg[0] 
       (.C(ap_clk),
        .CE(current_load_1_reg_11620),
        .D(\ap_CS_fsm_reg[4]_0 [0]),
        .Q(current_load_1_reg_1162[0]),
        .R(1'b0));
  FDRE \current_load_1_reg_1162_reg[1] 
       (.C(ap_clk),
        .CE(current_load_1_reg_11620),
        .D(\ap_CS_fsm_reg[4]_0 [1]),
        .Q(current_load_1_reg_1162[1]),
        .R(1'b0));
  FDRE \current_load_1_reg_1162_reg[2] 
       (.C(ap_clk),
        .CE(current_load_1_reg_11620),
        .D(\ap_CS_fsm_reg[4]_0 [2]),
        .Q(current_load_1_reg_1162[2]),
        .R(1'b0));
  FDRE \current_load_1_reg_1162_reg[3] 
       (.C(ap_clk),
        .CE(current_load_1_reg_11620),
        .D(\ap_CS_fsm_reg[4]_0 [3]),
        .Q(current_load_1_reg_1162[3]),
        .R(1'b0));
  FDRE \current_load_1_reg_1162_reg[4] 
       (.C(ap_clk),
        .CE(current_load_1_reg_11620),
        .D(\ap_CS_fsm_reg[4]_0 [4]),
        .Q(current_load_1_reg_1162[4]),
        .R(1'b0));
  FDRE \current_load_1_reg_1162_reg[5] 
       (.C(ap_clk),
        .CE(current_load_1_reg_11620),
        .D(\ap_CS_fsm_reg[4]_0 [5]),
        .Q(current_load_1_reg_1162[5]),
        .R(1'b0));
  FDRE \current_load_1_reg_1162_reg[6] 
       (.C(ap_clk),
        .CE(current_load_1_reg_11620),
        .D(\ap_CS_fsm_reg[4]_0 [6]),
        .Q(current_load_1_reg_1162[6]),
        .R(1'b0));
  FDRE \current_load_1_reg_1162_reg[7] 
       (.C(ap_clk),
        .CE(current_load_1_reg_11620),
        .D(\ap_CS_fsm_reg[4]_0 [7]),
        .Q(current_load_1_reg_1162[7]),
        .R(1'b0));
  FDRE \current_load_1_reg_1162_reg[8] 
       (.C(ap_clk),
        .CE(current_load_1_reg_11620),
        .D(\ap_CS_fsm_reg[4]_0 [8]),
        .Q(current_load_1_reg_1162[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_loc_fu_120[0]_i_1 
       (.I0(current_fu_186[0]),
        .I1(ap_CS_fsm_state6),
        .I2(current_load_1_reg_1162[0]),
        .O(\current_fu_186_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_loc_fu_120[1]_i_1 
       (.I0(current_fu_186[1]),
        .I1(ap_CS_fsm_state6),
        .I2(current_load_1_reg_1162[1]),
        .O(\current_fu_186_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_loc_fu_120[2]_i_1 
       (.I0(current_fu_186[2]),
        .I1(ap_CS_fsm_state6),
        .I2(current_load_1_reg_1162[2]),
        .O(\current_fu_186_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_loc_fu_120[3]_i_1 
       (.I0(current_fu_186[3]),
        .I1(ap_CS_fsm_state6),
        .I2(current_load_1_reg_1162[3]),
        .O(\current_fu_186_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_loc_fu_120[4]_i_1 
       (.I0(current_fu_186[4]),
        .I1(ap_CS_fsm_state6),
        .I2(current_load_1_reg_1162[4]),
        .O(\current_fu_186_reg[8]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_loc_fu_120[5]_i_1 
       (.I0(current_fu_186[5]),
        .I1(ap_CS_fsm_state6),
        .I2(current_load_1_reg_1162[5]),
        .O(\current_fu_186_reg[8]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_loc_fu_120[6]_i_1 
       (.I0(current_fu_186[6]),
        .I1(ap_CS_fsm_state6),
        .I2(current_load_1_reg_1162[6]),
        .O(\current_fu_186_reg[8]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_loc_fu_120[7]_i_1 
       (.I0(current_fu_186[7]),
        .I1(ap_CS_fsm_state6),
        .I2(current_load_1_reg_1162[7]),
        .O(\current_fu_186_reg[8]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_loc_fu_120[8]_i_1 
       (.I0(current_fu_186[8]),
        .I1(ap_CS_fsm_state6),
        .I2(current_load_1_reg_1162[8]),
        .O(\current_fu_186_reg[8]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \cycles_1_fu_182[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\icmp_ln74_reg_1153_reg[0]_0 ),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(DOADO),
        .I4(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I5(\ap_CS_fsm_reg_n_0_[0] ),
        .O(\cycles_1_fu_182[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[0]_i_3 
       (.I0(Q[0]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[0]),
        .O(\cycles_1_fu_182[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[0]_i_4 
       (.I0(Q[3]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[3]),
        .O(\cycles_1_fu_182[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[0]_i_5 
       (.I0(Q[2]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[2]),
        .O(\cycles_1_fu_182[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[0]_i_6 
       (.I0(Q[1]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[1]),
        .O(\cycles_1_fu_182[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC555)) 
    \cycles_1_fu_182[0]_i_7 
       (.I0(D[0]),
        .I1(Q[0]),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(\cycles_1_fu_182[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[12]_i_2 
       (.I0(Q[15]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[15]),
        .O(\cycles_1_fu_182[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[12]_i_3 
       (.I0(Q[14]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[14]),
        .O(\cycles_1_fu_182[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[12]_i_4 
       (.I0(Q[13]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[13]),
        .O(\cycles_1_fu_182[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[12]_i_5 
       (.I0(Q[12]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[12]),
        .O(\cycles_1_fu_182[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[16]_i_2 
       (.I0(Q[19]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[19]),
        .O(\cycles_1_fu_182[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[16]_i_3 
       (.I0(Q[18]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[18]),
        .O(\cycles_1_fu_182[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[16]_i_4 
       (.I0(Q[17]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[17]),
        .O(\cycles_1_fu_182[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[16]_i_5 
       (.I0(Q[16]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[16]),
        .O(\cycles_1_fu_182[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[20]_i_2 
       (.I0(Q[23]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[23]),
        .O(\cycles_1_fu_182[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[20]_i_3 
       (.I0(Q[22]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[22]),
        .O(\cycles_1_fu_182[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[20]_i_4 
       (.I0(Q[21]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[21]),
        .O(\cycles_1_fu_182[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[20]_i_5 
       (.I0(Q[20]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[20]),
        .O(\cycles_1_fu_182[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[24]_i_2 
       (.I0(Q[27]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[27]),
        .O(\cycles_1_fu_182[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[24]_i_3 
       (.I0(Q[26]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[26]),
        .O(\cycles_1_fu_182[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[24]_i_4 
       (.I0(Q[25]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[25]),
        .O(\cycles_1_fu_182[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[24]_i_5 
       (.I0(Q[24]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[24]),
        .O(\cycles_1_fu_182[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[28]_i_2 
       (.I0(Q[31]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[31]),
        .O(\cycles_1_fu_182[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[28]_i_3 
       (.I0(Q[30]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[30]),
        .O(\cycles_1_fu_182[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[28]_i_4 
       (.I0(Q[29]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[29]),
        .O(\cycles_1_fu_182[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[28]_i_5 
       (.I0(Q[28]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[28]),
        .O(\cycles_1_fu_182[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[4]_i_2 
       (.I0(Q[7]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[7]),
        .O(\cycles_1_fu_182[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[4]_i_3 
       (.I0(Q[6]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[6]),
        .O(\cycles_1_fu_182[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[4]_i_4 
       (.I0(Q[5]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[5]),
        .O(\cycles_1_fu_182[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[4]_i_5 
       (.I0(Q[4]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[4]),
        .O(\cycles_1_fu_182[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[8]_i_2 
       (.I0(Q[11]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[11]),
        .O(\cycles_1_fu_182[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[8]_i_3 
       (.I0(Q[10]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[10]),
        .O(\cycles_1_fu_182[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[8]_i_4 
       (.I0(Q[9]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[9]),
        .O(\cycles_1_fu_182[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \cycles_1_fu_182[8]_i_5 
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .I3(D[8]),
        .O(\cycles_1_fu_182[8]_i_5_n_0 ));
  FDRE \cycles_1_fu_182_reg[0] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[0]_i_2_n_7 ),
        .Q(D[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_1_fu_182_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cycles_1_fu_182_reg[0]_i_2_n_0 ,\cycles_1_fu_182_reg[0]_i_2_n_1 ,\cycles_1_fu_182_reg[0]_i_2_n_2 ,\cycles_1_fu_182_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cycles_1_fu_182[0]_i_3_n_0 }),
        .O({\cycles_1_fu_182_reg[0]_i_2_n_4 ,\cycles_1_fu_182_reg[0]_i_2_n_5 ,\cycles_1_fu_182_reg[0]_i_2_n_6 ,\cycles_1_fu_182_reg[0]_i_2_n_7 }),
        .S({\cycles_1_fu_182[0]_i_4_n_0 ,\cycles_1_fu_182[0]_i_5_n_0 ,\cycles_1_fu_182[0]_i_6_n_0 ,\cycles_1_fu_182[0]_i_7_n_0 }));
  FDRE \cycles_1_fu_182_reg[10] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[8]_i_1_n_5 ),
        .Q(D[10]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[11] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[8]_i_1_n_4 ),
        .Q(D[11]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[12] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[12]_i_1_n_7 ),
        .Q(D[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_1_fu_182_reg[12]_i_1 
       (.CI(\cycles_1_fu_182_reg[8]_i_1_n_0 ),
        .CO({\cycles_1_fu_182_reg[12]_i_1_n_0 ,\cycles_1_fu_182_reg[12]_i_1_n_1 ,\cycles_1_fu_182_reg[12]_i_1_n_2 ,\cycles_1_fu_182_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_1_fu_182_reg[12]_i_1_n_4 ,\cycles_1_fu_182_reg[12]_i_1_n_5 ,\cycles_1_fu_182_reg[12]_i_1_n_6 ,\cycles_1_fu_182_reg[12]_i_1_n_7 }),
        .S({\cycles_1_fu_182[12]_i_2_n_0 ,\cycles_1_fu_182[12]_i_3_n_0 ,\cycles_1_fu_182[12]_i_4_n_0 ,\cycles_1_fu_182[12]_i_5_n_0 }));
  FDRE \cycles_1_fu_182_reg[13] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[12]_i_1_n_6 ),
        .Q(D[13]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[14] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[12]_i_1_n_5 ),
        .Q(D[14]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[15] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[12]_i_1_n_4 ),
        .Q(D[15]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[16] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[16]_i_1_n_7 ),
        .Q(D[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_1_fu_182_reg[16]_i_1 
       (.CI(\cycles_1_fu_182_reg[12]_i_1_n_0 ),
        .CO({\cycles_1_fu_182_reg[16]_i_1_n_0 ,\cycles_1_fu_182_reg[16]_i_1_n_1 ,\cycles_1_fu_182_reg[16]_i_1_n_2 ,\cycles_1_fu_182_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_1_fu_182_reg[16]_i_1_n_4 ,\cycles_1_fu_182_reg[16]_i_1_n_5 ,\cycles_1_fu_182_reg[16]_i_1_n_6 ,\cycles_1_fu_182_reg[16]_i_1_n_7 }),
        .S({\cycles_1_fu_182[16]_i_2_n_0 ,\cycles_1_fu_182[16]_i_3_n_0 ,\cycles_1_fu_182[16]_i_4_n_0 ,\cycles_1_fu_182[16]_i_5_n_0 }));
  FDRE \cycles_1_fu_182_reg[17] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[16]_i_1_n_6 ),
        .Q(D[17]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[18] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[16]_i_1_n_5 ),
        .Q(D[18]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[19] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[16]_i_1_n_4 ),
        .Q(D[19]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[1] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[0]_i_2_n_6 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[20] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[20]_i_1_n_7 ),
        .Q(D[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_1_fu_182_reg[20]_i_1 
       (.CI(\cycles_1_fu_182_reg[16]_i_1_n_0 ),
        .CO({\cycles_1_fu_182_reg[20]_i_1_n_0 ,\cycles_1_fu_182_reg[20]_i_1_n_1 ,\cycles_1_fu_182_reg[20]_i_1_n_2 ,\cycles_1_fu_182_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_1_fu_182_reg[20]_i_1_n_4 ,\cycles_1_fu_182_reg[20]_i_1_n_5 ,\cycles_1_fu_182_reg[20]_i_1_n_6 ,\cycles_1_fu_182_reg[20]_i_1_n_7 }),
        .S({\cycles_1_fu_182[20]_i_2_n_0 ,\cycles_1_fu_182[20]_i_3_n_0 ,\cycles_1_fu_182[20]_i_4_n_0 ,\cycles_1_fu_182[20]_i_5_n_0 }));
  FDRE \cycles_1_fu_182_reg[21] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[20]_i_1_n_6 ),
        .Q(D[21]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[22] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[20]_i_1_n_5 ),
        .Q(D[22]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[23] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[20]_i_1_n_4 ),
        .Q(D[23]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[24] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[24]_i_1_n_7 ),
        .Q(D[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_1_fu_182_reg[24]_i_1 
       (.CI(\cycles_1_fu_182_reg[20]_i_1_n_0 ),
        .CO({\cycles_1_fu_182_reg[24]_i_1_n_0 ,\cycles_1_fu_182_reg[24]_i_1_n_1 ,\cycles_1_fu_182_reg[24]_i_1_n_2 ,\cycles_1_fu_182_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_1_fu_182_reg[24]_i_1_n_4 ,\cycles_1_fu_182_reg[24]_i_1_n_5 ,\cycles_1_fu_182_reg[24]_i_1_n_6 ,\cycles_1_fu_182_reg[24]_i_1_n_7 }),
        .S({\cycles_1_fu_182[24]_i_2_n_0 ,\cycles_1_fu_182[24]_i_3_n_0 ,\cycles_1_fu_182[24]_i_4_n_0 ,\cycles_1_fu_182[24]_i_5_n_0 }));
  FDRE \cycles_1_fu_182_reg[25] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[24]_i_1_n_6 ),
        .Q(D[25]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[26] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[24]_i_1_n_5 ),
        .Q(D[26]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[27] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[24]_i_1_n_4 ),
        .Q(D[27]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[28] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[28]_i_1_n_7 ),
        .Q(D[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_1_fu_182_reg[28]_i_1 
       (.CI(\cycles_1_fu_182_reg[24]_i_1_n_0 ),
        .CO({\NLW_cycles_1_fu_182_reg[28]_i_1_CO_UNCONNECTED [3],\cycles_1_fu_182_reg[28]_i_1_n_1 ,\cycles_1_fu_182_reg[28]_i_1_n_2 ,\cycles_1_fu_182_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_1_fu_182_reg[28]_i_1_n_4 ,\cycles_1_fu_182_reg[28]_i_1_n_5 ,\cycles_1_fu_182_reg[28]_i_1_n_6 ,\cycles_1_fu_182_reg[28]_i_1_n_7 }),
        .S({\cycles_1_fu_182[28]_i_2_n_0 ,\cycles_1_fu_182[28]_i_3_n_0 ,\cycles_1_fu_182[28]_i_4_n_0 ,\cycles_1_fu_182[28]_i_5_n_0 }));
  FDRE \cycles_1_fu_182_reg[29] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[28]_i_1_n_6 ),
        .Q(D[29]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[2] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[0]_i_2_n_5 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[30] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[28]_i_1_n_5 ),
        .Q(D[30]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[31] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[28]_i_1_n_4 ),
        .Q(D[31]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[3] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[0]_i_2_n_4 ),
        .Q(D[3]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[4] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[4]_i_1_n_7 ),
        .Q(D[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_1_fu_182_reg[4]_i_1 
       (.CI(\cycles_1_fu_182_reg[0]_i_2_n_0 ),
        .CO({\cycles_1_fu_182_reg[4]_i_1_n_0 ,\cycles_1_fu_182_reg[4]_i_1_n_1 ,\cycles_1_fu_182_reg[4]_i_1_n_2 ,\cycles_1_fu_182_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_1_fu_182_reg[4]_i_1_n_4 ,\cycles_1_fu_182_reg[4]_i_1_n_5 ,\cycles_1_fu_182_reg[4]_i_1_n_6 ,\cycles_1_fu_182_reg[4]_i_1_n_7 }),
        .S({\cycles_1_fu_182[4]_i_2_n_0 ,\cycles_1_fu_182[4]_i_3_n_0 ,\cycles_1_fu_182[4]_i_4_n_0 ,\cycles_1_fu_182[4]_i_5_n_0 }));
  FDRE \cycles_1_fu_182_reg[5] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[4]_i_1_n_6 ),
        .Q(D[5]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[6] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[4]_i_1_n_5 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[7] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[4]_i_1_n_4 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE \cycles_1_fu_182_reg[8] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[8]_i_1_n_7 ),
        .Q(D[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_1_fu_182_reg[8]_i_1 
       (.CI(\cycles_1_fu_182_reg[4]_i_1_n_0 ),
        .CO({\cycles_1_fu_182_reg[8]_i_1_n_0 ,\cycles_1_fu_182_reg[8]_i_1_n_1 ,\cycles_1_fu_182_reg[8]_i_1_n_2 ,\cycles_1_fu_182_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_1_fu_182_reg[8]_i_1_n_4 ,\cycles_1_fu_182_reg[8]_i_1_n_5 ,\cycles_1_fu_182_reg[8]_i_1_n_6 ,\cycles_1_fu_182_reg[8]_i_1_n_7 }),
        .S({\cycles_1_fu_182[8]_i_2_n_0 ,\cycles_1_fu_182[8]_i_3_n_0 ,\cycles_1_fu_182[8]_i_4_n_0 ,\cycles_1_fu_182[8]_i_5_n_0 }));
  FDRE \cycles_1_fu_182_reg[9] 
       (.C(ap_clk),
        .CE(\cycles_1_fu_182[0]_i_1_n_0 ),
        .D(\cycles_1_fu_182_reg[8]_i_1_n_6 ),
        .Q(D[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF020)) 
    \cycles_fu_384[31]_i_2 
       (.I0(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_ready),
        .I1(\icmp_ln74_reg_1153_reg[0]_0 ),
        .I2(ram_reg[1]),
        .I3(ap_CS_fsm_state6),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \depth_2_reg_1157[0]_i_1 
       (.I0(depth_fu_190[0]),
        .O(depth_2_fu_674_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \depth_2_reg_1157[1]_i_1 
       (.I0(depth_fu_190[0]),
        .I1(depth_fu_190[1]),
        .O(depth_2_fu_674_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \depth_2_reg_1157[2]_i_1 
       (.I0(depth_fu_190[0]),
        .I1(depth_fu_190[1]),
        .I2(depth_fu_190[2]),
        .O(depth_2_fu_674_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \depth_2_reg_1157[3]_i_1 
       (.I0(depth_fu_190[1]),
        .I1(depth_fu_190[0]),
        .I2(depth_fu_190[2]),
        .I3(depth_fu_190[3]),
        .O(depth_2_fu_674_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \depth_2_reg_1157[4]_i_1 
       (.I0(depth_fu_190[2]),
        .I1(depth_fu_190[0]),
        .I2(depth_fu_190[1]),
        .I3(depth_fu_190[3]),
        .I4(depth_fu_190[4]),
        .O(depth_2_fu_674_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \depth_2_reg_1157[5]_i_1 
       (.I0(depth_fu_190[3]),
        .I1(depth_fu_190[1]),
        .I2(depth_fu_190[0]),
        .I3(depth_fu_190[2]),
        .I4(depth_fu_190[4]),
        .I5(depth_fu_190[5]),
        .O(depth_2_fu_674_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \depth_2_reg_1157[6]_i_1 
       (.I0(\depth_2_reg_1157[8]_i_2_n_0 ),
        .I1(depth_fu_190[6]),
        .O(depth_2_fu_674_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \depth_2_reg_1157[7]_i_1 
       (.I0(\depth_2_reg_1157[8]_i_2_n_0 ),
        .I1(depth_fu_190[6]),
        .I2(depth_fu_190[7]),
        .O(depth_2_fu_674_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \depth_2_reg_1157[8]_i_1 
       (.I0(depth_fu_190[6]),
        .I1(\depth_2_reg_1157[8]_i_2_n_0 ),
        .I2(depth_fu_190[7]),
        .I3(depth_fu_190[8]),
        .O(depth_2_fu_674_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \depth_2_reg_1157[8]_i_2 
       (.I0(depth_fu_190[5]),
        .I1(depth_fu_190[3]),
        .I2(depth_fu_190[1]),
        .I3(depth_fu_190[0]),
        .I4(depth_fu_190[2]),
        .I5(depth_fu_190[4]),
        .O(\depth_2_reg_1157[8]_i_2_n_0 ));
  FDRE \depth_2_reg_1157_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(depth_2_fu_674_p2[0]),
        .Q(depth_2_reg_1157[0]),
        .R(1'b0));
  FDRE \depth_2_reg_1157_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(depth_2_fu_674_p2[1]),
        .Q(depth_2_reg_1157[1]),
        .R(1'b0));
  FDRE \depth_2_reg_1157_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(depth_2_fu_674_p2[2]),
        .Q(depth_2_reg_1157[2]),
        .R(1'b0));
  FDRE \depth_2_reg_1157_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(depth_2_fu_674_p2[3]),
        .Q(depth_2_reg_1157[3]),
        .R(1'b0));
  FDRE \depth_2_reg_1157_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(depth_2_fu_674_p2[4]),
        .Q(depth_2_reg_1157[4]),
        .R(1'b0));
  FDRE \depth_2_reg_1157_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(depth_2_fu_674_p2[5]),
        .Q(depth_2_reg_1157[5]),
        .R(1'b0));
  FDRE \depth_2_reg_1157_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(depth_2_fu_674_p2[6]),
        .Q(depth_2_reg_1157[6]),
        .R(1'b0));
  FDRE \depth_2_reg_1157_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(depth_2_fu_674_p2[7]),
        .Q(depth_2_reg_1157[7]),
        .R(1'b0));
  FDRE \depth_2_reg_1157_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(depth_2_fu_674_p2[8]),
        .Q(depth_2_reg_1157[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \depth_fu_190[8]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .O(ap_NS_fsm1));
  LUT4 #(
    .INIT(16'h0400)) 
    \depth_fu_190[8]_i_2 
       (.I0(DOADO),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(\icmp_ln74_reg_1153_reg[0]_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .O(cycles_1_fu_1820));
  FDRE \depth_fu_190_reg[0] 
       (.C(ap_clk),
        .CE(cycles_1_fu_1820),
        .D(depth_2_reg_1157[0]),
        .Q(depth_fu_190[0]),
        .R(ap_NS_fsm1));
  FDRE \depth_fu_190_reg[1] 
       (.C(ap_clk),
        .CE(cycles_1_fu_1820),
        .D(depth_2_reg_1157[1]),
        .Q(depth_fu_190[1]),
        .R(ap_NS_fsm1));
  FDRE \depth_fu_190_reg[2] 
       (.C(ap_clk),
        .CE(cycles_1_fu_1820),
        .D(depth_2_reg_1157[2]),
        .Q(depth_fu_190[2]),
        .R(ap_NS_fsm1));
  FDRE \depth_fu_190_reg[3] 
       (.C(ap_clk),
        .CE(cycles_1_fu_1820),
        .D(depth_2_reg_1157[3]),
        .Q(depth_fu_190[3]),
        .R(ap_NS_fsm1));
  FDRE \depth_fu_190_reg[4] 
       (.C(ap_clk),
        .CE(cycles_1_fu_1820),
        .D(depth_2_reg_1157[4]),
        .Q(depth_fu_190[4]),
        .R(ap_NS_fsm1));
  FDRE \depth_fu_190_reg[5] 
       (.C(ap_clk),
        .CE(cycles_1_fu_1820),
        .D(depth_2_reg_1157[5]),
        .Q(depth_fu_190[5]),
        .R(ap_NS_fsm1));
  FDRE \depth_fu_190_reg[6] 
       (.C(ap_clk),
        .CE(cycles_1_fu_1820),
        .D(depth_2_reg_1157[6]),
        .Q(depth_fu_190[6]),
        .R(ap_NS_fsm1));
  FDRE \depth_fu_190_reg[7] 
       (.C(ap_clk),
        .CE(cycles_1_fu_1820),
        .D(depth_2_reg_1157[7]),
        .Q(depth_fu_190[7]),
        .R(ap_NS_fsm1));
  FDRE \depth_fu_190_reg[8] 
       (.C(ap_clk),
        .CE(cycles_1_fu_1820),
        .D(depth_2_reg_1157[8]),
        .Q(depth_fu_190[8]),
        .R(ap_NS_fsm1));
  LUT3 #(
    .INIT(8'h04)) 
    \feat_val_V_reg_1182[15]_i_1 
       (.I0(\icmp_ln74_reg_1153_reg[0]_0 ),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(DOADO),
        .O(feat_val_V_reg_11820));
  FDRE \feat_val_V_reg_1182_reg[0] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [0]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [0]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[10] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [10]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [10]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[11] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [11]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [11]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[12] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [12]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [12]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[13] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [13]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [13]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[14] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [14]),
        .Q(feat_val_V_reg_1182[14]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[15] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [15]),
        .Q(feat_val_V_reg_1182[15]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[1] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [1]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [1]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[2] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [2]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [2]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[3] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [3]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [3]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[4] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [4]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [4]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[5] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [5]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [5]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[6] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [6]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [6]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[7] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [7]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [7]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[8] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [8]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [8]),
        .R(1'b0));
  FDRE \feat_val_V_reg_1182_reg[9] 
       (.C(ap_clk),
        .CE(feat_val_V_reg_11820),
        .D(\feat_val_V_reg_1182_reg[15]_0 [9]),
        .Q(\feat_val_V_reg_1182_reg[13]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg_i_1
       (.I0(ram_reg[0]),
        .I1(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_ready),
        .I2(grp_dt_accel_Pipeline_TRAVERSE_fu_539_ap_start_reg),
        .O(\ap_CS_fsm_reg[3]_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln1652_fu_782_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln1652_fu_782_p2_carry_n_0,icmp_ln1652_fu_782_p2_carry_n_1,icmp_ln1652_fu_782_p2_carry_n_2,icmp_ln1652_fu_782_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln1652_fu_782_p2_carry_i_1_n_0,icmp_ln1652_fu_782_p2_carry_i_2_n_0,icmp_ln1652_fu_782_p2_carry_i_3_n_0,icmp_ln1652_fu_782_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln1652_fu_782_p2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln1652_fu_782_p2_carry__0
       (.CI(icmp_ln1652_fu_782_p2_carry_n_0),
        .CO({p_0_in,icmp_ln1652_fu_782_p2_carry__0_n_1,icmp_ln1652_fu_782_p2_carry__0_n_2,icmp_ln1652_fu_782_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln1652_fu_782_p2_carry__0_i_1_n_0,icmp_ln1652_fu_782_p2_carry__0_i_2_n_0,icmp_ln1652_fu_782_p2_carry__0_i_3_n_0,icmp_ln1652_fu_782_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln1652_fu_782_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln1652_fu_782_p2_carry__0_i_5_n_0,\current_fu_186_reg[8]_1 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln1652_fu_782_p2_carry__0_i_1
       (.I0(feat_val_V_reg_1182[14]),
        .I1(icmp_ln1652_fu_782_p2_carry__0_0[14]),
        .I2(feat_val_V_reg_1182[15]),
        .I3(icmp_ln1652_fu_782_p2_carry__0_0[15]),
        .O(icmp_ln1652_fu_782_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln1652_fu_782_p2_carry__0_i_2
       (.I0(\feat_val_V_reg_1182_reg[13]_0 [12]),
        .I1(icmp_ln1652_fu_782_p2_carry__0_0[12]),
        .I2(icmp_ln1652_fu_782_p2_carry__0_0[13]),
        .I3(\feat_val_V_reg_1182_reg[13]_0 [13]),
        .O(icmp_ln1652_fu_782_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln1652_fu_782_p2_carry__0_i_3
       (.I0(\feat_val_V_reg_1182_reg[13]_0 [10]),
        .I1(icmp_ln1652_fu_782_p2_carry__0_0[10]),
        .I2(icmp_ln1652_fu_782_p2_carry__0_0[11]),
        .I3(\feat_val_V_reg_1182_reg[13]_0 [11]),
        .O(icmp_ln1652_fu_782_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln1652_fu_782_p2_carry__0_i_4
       (.I0(\feat_val_V_reg_1182_reg[13]_0 [8]),
        .I1(icmp_ln1652_fu_782_p2_carry__0_0[8]),
        .I2(icmp_ln1652_fu_782_p2_carry__0_0[9]),
        .I3(\feat_val_V_reg_1182_reg[13]_0 [9]),
        .O(icmp_ln1652_fu_782_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln1652_fu_782_p2_carry__0_i_5
       (.I0(feat_val_V_reg_1182[15]),
        .I1(icmp_ln1652_fu_782_p2_carry__0_0[15]),
        .I2(feat_val_V_reg_1182[14]),
        .I3(icmp_ln1652_fu_782_p2_carry__0_0[14]),
        .O(icmp_ln1652_fu_782_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln1652_fu_782_p2_carry_i_1
       (.I0(\feat_val_V_reg_1182_reg[13]_0 [6]),
        .I1(icmp_ln1652_fu_782_p2_carry__0_0[6]),
        .I2(icmp_ln1652_fu_782_p2_carry__0_0[7]),
        .I3(\feat_val_V_reg_1182_reg[13]_0 [7]),
        .O(icmp_ln1652_fu_782_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln1652_fu_782_p2_carry_i_2
       (.I0(\feat_val_V_reg_1182_reg[13]_0 [4]),
        .I1(icmp_ln1652_fu_782_p2_carry__0_0[4]),
        .I2(icmp_ln1652_fu_782_p2_carry__0_0[5]),
        .I3(\feat_val_V_reg_1182_reg[13]_0 [5]),
        .O(icmp_ln1652_fu_782_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln1652_fu_782_p2_carry_i_3
       (.I0(\feat_val_V_reg_1182_reg[13]_0 [2]),
        .I1(icmp_ln1652_fu_782_p2_carry__0_0[2]),
        .I2(icmp_ln1652_fu_782_p2_carry__0_0[3]),
        .I3(\feat_val_V_reg_1182_reg[13]_0 [3]),
        .O(icmp_ln1652_fu_782_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln1652_fu_782_p2_carry_i_4
       (.I0(\feat_val_V_reg_1182_reg[13]_0 [0]),
        .I1(icmp_ln1652_fu_782_p2_carry__0_0[0]),
        .I2(icmp_ln1652_fu_782_p2_carry__0_0[1]),
        .I3(\feat_val_V_reg_1182_reg[13]_0 [1]),
        .O(icmp_ln1652_fu_782_p2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln74_reg_1153[0]_i_1 
       (.I0(icmp_ln74_fu_668_p2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(\icmp_ln74_reg_1153_reg[0]_0 ),
        .O(\icmp_ln74_reg_1153[0]_i_1_n_0 ));
  FDRE \icmp_ln74_reg_1153_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln74_reg_1153[0]_i_1_n_0 ),
        .Q(\icmp_ln74_reg_1153_reg[0]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    ram_reg_i_1
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_feature_V_ce0),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ram_reg[1]),
        .I4(ram_reg[2]),
        .O(node_feature_V_ce0));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    ram_reg_i_1__1
       (.I0(in_stream_TVALID_int_regslice),
        .I1(ram_reg_0[0]),
        .I2(ram_reg[2]),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ram_reg[1]),
        .O(node_threshold_V_ce0));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    ram_reg_i_1__2
       (.I0(ram_reg_0[2]),
        .I1(in_stream_TVALID_int_regslice),
        .I2(ram_reg[2]),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ram_reg[1]),
        .O(node_right_V_ce0));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    ram_reg_i_1__3
       (.I0(ram_reg_0[1]),
        .I1(in_stream_TVALID_int_regslice),
        .I2(ram_reg[2]),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ram_reg[1]),
        .O(node_left_V_ce0));
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln77_reg_1167[8]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(icmp_ln74_fu_668_p2),
        .O(zext_ln77_reg_1167_reg0));
  FDRE \zext_ln77_reg_1167_reg[0] 
       (.C(ap_clk),
        .CE(zext_ln77_reg_1167_reg0),
        .D(\ap_CS_fsm_reg[4]_0 [0]),
        .Q(\zext_ln77_reg_1167_reg[8]_0 [0]),
        .R(1'b0));
  FDRE \zext_ln77_reg_1167_reg[1] 
       (.C(ap_clk),
        .CE(zext_ln77_reg_1167_reg0),
        .D(\ap_CS_fsm_reg[4]_0 [1]),
        .Q(\zext_ln77_reg_1167_reg[8]_0 [1]),
        .R(1'b0));
  FDRE \zext_ln77_reg_1167_reg[2] 
       (.C(ap_clk),
        .CE(zext_ln77_reg_1167_reg0),
        .D(\ap_CS_fsm_reg[4]_0 [2]),
        .Q(\zext_ln77_reg_1167_reg[8]_0 [2]),
        .R(1'b0));
  FDRE \zext_ln77_reg_1167_reg[3] 
       (.C(ap_clk),
        .CE(zext_ln77_reg_1167_reg0),
        .D(\ap_CS_fsm_reg[4]_0 [3]),
        .Q(\zext_ln77_reg_1167_reg[8]_0 [3]),
        .R(1'b0));
  FDRE \zext_ln77_reg_1167_reg[4] 
       (.C(ap_clk),
        .CE(zext_ln77_reg_1167_reg0),
        .D(\ap_CS_fsm_reg[4]_0 [4]),
        .Q(\zext_ln77_reg_1167_reg[8]_0 [4]),
        .R(1'b0));
  FDRE \zext_ln77_reg_1167_reg[5] 
       (.C(ap_clk),
        .CE(zext_ln77_reg_1167_reg0),
        .D(\ap_CS_fsm_reg[4]_0 [5]),
        .Q(\zext_ln77_reg_1167_reg[8]_0 [5]),
        .R(1'b0));
  FDRE \zext_ln77_reg_1167_reg[6] 
       (.C(ap_clk),
        .CE(zext_ln77_reg_1167_reg0),
        .D(\ap_CS_fsm_reg[4]_0 [6]),
        .Q(\zext_ln77_reg_1167_reg[8]_0 [6]),
        .R(1'b0));
  FDRE \zext_ln77_reg_1167_reg[7] 
       (.C(ap_clk),
        .CE(zext_ln77_reg_1167_reg0),
        .D(\ap_CS_fsm_reg[4]_0 [7]),
        .Q(\zext_ln77_reg_1167_reg[8]_0 [7]),
        .R(1'b0));
  FDRE \zext_ln77_reg_1167_reg[8] 
       (.C(ap_clk),
        .CE(zext_ln77_reg_1167_reg0),
        .D(\ap_CS_fsm_reg[4]_0 [8]),
        .Q(\zext_ln77_reg_1167_reg[8]_0 [8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dt_accel_flow_control_loop_pipe_sequential_init" *) 
module design_1_dt_accel_0_0_dt_accel_flow_control_loop_pipe_sequential_init
   (D,
    E,
    \f_fu_308_reg[5] ,
    \f_fu_308_reg[5]_0 ,
    \f_fu_308_reg[2] ,
    \f_fu_308_reg[4] ,
    \f_fu_308_reg[4]_0 ,
    \f_fu_308_reg[2]_0 ,
    \f_fu_308_reg[5]_1 ,
    \f_fu_308_reg[5]_2 ,
    \f_fu_308_reg[2]_1 ,
    \f_fu_308_reg[2]_2 ,
    \f_fu_308_reg[3] ,
    \f_fu_308_reg[3]_0 ,
    \f_fu_308_reg[3]_1 ,
    \f_fu_308_reg[3]_2 ,
    \f_fu_308_reg[3]_3 ,
    \f_fu_308_reg[2]_3 ,
    \f_fu_308_reg[5]_3 ,
    \f_fu_308_reg[5]_4 ,
    \f_fu_308_reg[2]_4 ,
    \f_fu_308_reg[4]_1 ,
    \f_fu_308_reg[4]_2 ,
    \f_fu_308_reg[2]_5 ,
    \f_fu_308_reg[5]_5 ,
    \f_fu_308_reg[5]_6 ,
    \f_fu_308_reg[2]_6 ,
    \f_fu_308_reg[2]_7 ,
    \f_fu_308_reg[2]_8 ,
    \f_fu_308_reg[2]_9 ,
    \f_fu_308_reg[2]_10 ,
    \f_fu_308_reg[2]_11 ,
    \f_fu_308_reg[2]_12 ,
    \f_fu_308_reg[2]_13 ,
    \f_fu_308_reg[5]_7 ,
    \f_fu_308_reg[5]_8 ,
    \f_fu_308_reg[2]_14 ,
    \f_fu_308_reg[4]_3 ,
    \f_fu_308_reg[4]_4 ,
    \f_fu_308_reg[2]_15 ,
    \f_fu_308_reg[5]_9 ,
    \f_fu_308_reg[5]_10 ,
    \f_fu_308_reg[2]_16 ,
    \f_fu_308_reg[2]_17 ,
    \f_fu_308_reg[3]_4 ,
    \f_fu_308_reg[3]_5 ,
    \f_fu_308_reg[3]_6 ,
    \f_fu_308_reg[3]_7 ,
    \f_fu_308_reg[3]_8 ,
    \f_fu_308_reg[2]_18 ,
    \f_fu_308_reg[5]_11 ,
    \f_fu_308_reg[2]_19 ,
    \f_fu_308_reg[4]_5 ,
    \f_fu_308_reg[2]_20 ,
    \f_fu_308_reg[5]_12 ,
    \f_fu_308_reg[2]_21 ,
    \f_fu_308_reg[2]_22 ,
    \f_fu_308_reg[3]_9 ,
    \f_fu_308_reg[3]_10 ,
    \f_fu_308_reg[3]_11 ,
    \f_fu_308_reg[3]_12 ,
    \f_fu_308_reg[3]_13 ,
    \f_fu_308_reg[3]_14 ,
    \f_fu_308_reg[3]_15 ,
    \f_fu_308_reg[3]_16 ,
    DI,
    S,
    \num_features_read_reg_973_reg[14] ,
    ap_loop_init_int_reg_0,
    \num_features_read_reg_973_reg[22] ,
    ap_loop_init_int_reg_1,
    \num_features_read_reg_973_reg[31] ,
    \f_fu_308_reg[30] ,
    SR,
    grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg_reg,
    \ap_CS_fsm_reg[1] ,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    CO,
    in_stream_TVALID_int_regslice,
    grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg,
    Q,
    f_fu_308,
    icmp_ln65_fu_1046_p2_carry__2,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 );
  output [30:0]D;
  output [0:0]E;
  output [0:0]\f_fu_308_reg[5] ;
  output [0:0]\f_fu_308_reg[5]_0 ;
  output [0:0]\f_fu_308_reg[2] ;
  output [0:0]\f_fu_308_reg[4] ;
  output [0:0]\f_fu_308_reg[4]_0 ;
  output [0:0]\f_fu_308_reg[2]_0 ;
  output [0:0]\f_fu_308_reg[5]_1 ;
  output [0:0]\f_fu_308_reg[5]_2 ;
  output [0:0]\f_fu_308_reg[2]_1 ;
  output [0:0]\f_fu_308_reg[2]_2 ;
  output [0:0]\f_fu_308_reg[3] ;
  output [0:0]\f_fu_308_reg[3]_0 ;
  output [0:0]\f_fu_308_reg[3]_1 ;
  output [0:0]\f_fu_308_reg[3]_2 ;
  output [0:0]\f_fu_308_reg[3]_3 ;
  output [0:0]\f_fu_308_reg[2]_3 ;
  output [0:0]\f_fu_308_reg[5]_3 ;
  output [0:0]\f_fu_308_reg[5]_4 ;
  output [0:0]\f_fu_308_reg[2]_4 ;
  output [0:0]\f_fu_308_reg[4]_1 ;
  output [0:0]\f_fu_308_reg[4]_2 ;
  output [0:0]\f_fu_308_reg[2]_5 ;
  output [0:0]\f_fu_308_reg[5]_5 ;
  output [0:0]\f_fu_308_reg[5]_6 ;
  output [0:0]\f_fu_308_reg[2]_6 ;
  output [0:0]\f_fu_308_reg[2]_7 ;
  output [0:0]\f_fu_308_reg[2]_8 ;
  output [0:0]\f_fu_308_reg[2]_9 ;
  output [0:0]\f_fu_308_reg[2]_10 ;
  output [0:0]\f_fu_308_reg[2]_11 ;
  output [0:0]\f_fu_308_reg[2]_12 ;
  output [0:0]\f_fu_308_reg[2]_13 ;
  output [0:0]\f_fu_308_reg[5]_7 ;
  output [0:0]\f_fu_308_reg[5]_8 ;
  output [0:0]\f_fu_308_reg[2]_14 ;
  output [0:0]\f_fu_308_reg[4]_3 ;
  output [0:0]\f_fu_308_reg[4]_4 ;
  output [0:0]\f_fu_308_reg[2]_15 ;
  output [0:0]\f_fu_308_reg[5]_9 ;
  output [0:0]\f_fu_308_reg[5]_10 ;
  output [0:0]\f_fu_308_reg[2]_16 ;
  output [0:0]\f_fu_308_reg[2]_17 ;
  output [0:0]\f_fu_308_reg[3]_4 ;
  output [0:0]\f_fu_308_reg[3]_5 ;
  output [0:0]\f_fu_308_reg[3]_6 ;
  output [0:0]\f_fu_308_reg[3]_7 ;
  output [0:0]\f_fu_308_reg[3]_8 ;
  output [0:0]\f_fu_308_reg[2]_18 ;
  output [0:0]\f_fu_308_reg[5]_11 ;
  output [0:0]\f_fu_308_reg[2]_19 ;
  output [0:0]\f_fu_308_reg[4]_5 ;
  output [0:0]\f_fu_308_reg[2]_20 ;
  output [0:0]\f_fu_308_reg[5]_12 ;
  output [0:0]\f_fu_308_reg[2]_21 ;
  output [0:0]\f_fu_308_reg[2]_22 ;
  output [0:0]\f_fu_308_reg[3]_9 ;
  output [0:0]\f_fu_308_reg[3]_10 ;
  output [0:0]\f_fu_308_reg[3]_11 ;
  output [0:0]\f_fu_308_reg[3]_12 ;
  output [0:0]\f_fu_308_reg[3]_13 ;
  output [0:0]\f_fu_308_reg[3]_14 ;
  output [0:0]\f_fu_308_reg[3]_15 ;
  output [0:0]\f_fu_308_reg[3]_16 ;
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\num_features_read_reg_973_reg[14] ;
  output [3:0]ap_loop_init_int_reg_0;
  output [3:0]\num_features_read_reg_973_reg[22] ;
  output [3:0]ap_loop_init_int_reg_1;
  output [3:0]\num_features_read_reg_973_reg[31] ;
  output [3:0]\f_fu_308_reg[30] ;
  output [0:0]SR;
  output [1:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg_reg;
  output \ap_CS_fsm_reg[1] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input [0:0]CO;
  input in_stream_TVALID_int_regslice;
  input grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg;
  input [30:0]Q;
  input f_fu_308;
  input [31:0]icmp_ln65_fu_1046_p2_carry__2;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input [0:0]\ap_CS_fsm_reg[2]_0 ;

  wire [0:0]CO;
  wire [30:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [30:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[1] ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire [0:0]\ap_CS_fsm_reg[2]_0 ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire [3:0]ap_loop_init_int_reg_0;
  wire [3:0]ap_loop_init_int_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire f_fu_308;
  wire \f_fu_308_reg[12]_i_1_n_0 ;
  wire \f_fu_308_reg[12]_i_1_n_1 ;
  wire \f_fu_308_reg[12]_i_1_n_2 ;
  wire \f_fu_308_reg[12]_i_1_n_3 ;
  wire \f_fu_308_reg[16]_i_1_n_0 ;
  wire \f_fu_308_reg[16]_i_1_n_1 ;
  wire \f_fu_308_reg[16]_i_1_n_2 ;
  wire \f_fu_308_reg[16]_i_1_n_3 ;
  wire \f_fu_308_reg[20]_i_1_n_0 ;
  wire \f_fu_308_reg[20]_i_1_n_1 ;
  wire \f_fu_308_reg[20]_i_1_n_2 ;
  wire \f_fu_308_reg[20]_i_1_n_3 ;
  wire \f_fu_308_reg[24]_i_1_n_0 ;
  wire \f_fu_308_reg[24]_i_1_n_1 ;
  wire \f_fu_308_reg[24]_i_1_n_2 ;
  wire \f_fu_308_reg[24]_i_1_n_3 ;
  wire \f_fu_308_reg[28]_i_1_n_0 ;
  wire \f_fu_308_reg[28]_i_1_n_1 ;
  wire \f_fu_308_reg[28]_i_1_n_2 ;
  wire \f_fu_308_reg[28]_i_1_n_3 ;
  wire [0:0]\f_fu_308_reg[2] ;
  wire [0:0]\f_fu_308_reg[2]_0 ;
  wire [0:0]\f_fu_308_reg[2]_1 ;
  wire [0:0]\f_fu_308_reg[2]_10 ;
  wire [0:0]\f_fu_308_reg[2]_11 ;
  wire [0:0]\f_fu_308_reg[2]_12 ;
  wire [0:0]\f_fu_308_reg[2]_13 ;
  wire [0:0]\f_fu_308_reg[2]_14 ;
  wire [0:0]\f_fu_308_reg[2]_15 ;
  wire [0:0]\f_fu_308_reg[2]_16 ;
  wire [0:0]\f_fu_308_reg[2]_17 ;
  wire [0:0]\f_fu_308_reg[2]_18 ;
  wire [0:0]\f_fu_308_reg[2]_19 ;
  wire [0:0]\f_fu_308_reg[2]_2 ;
  wire [0:0]\f_fu_308_reg[2]_20 ;
  wire [0:0]\f_fu_308_reg[2]_21 ;
  wire [0:0]\f_fu_308_reg[2]_22 ;
  wire [0:0]\f_fu_308_reg[2]_3 ;
  wire [0:0]\f_fu_308_reg[2]_4 ;
  wire [0:0]\f_fu_308_reg[2]_5 ;
  wire [0:0]\f_fu_308_reg[2]_6 ;
  wire [0:0]\f_fu_308_reg[2]_7 ;
  wire [0:0]\f_fu_308_reg[2]_8 ;
  wire [0:0]\f_fu_308_reg[2]_9 ;
  wire [3:0]\f_fu_308_reg[30] ;
  wire \f_fu_308_reg[30]_i_3_n_3 ;
  wire [0:0]\f_fu_308_reg[3] ;
  wire [0:0]\f_fu_308_reg[3]_0 ;
  wire [0:0]\f_fu_308_reg[3]_1 ;
  wire [0:0]\f_fu_308_reg[3]_10 ;
  wire [0:0]\f_fu_308_reg[3]_11 ;
  wire [0:0]\f_fu_308_reg[3]_12 ;
  wire [0:0]\f_fu_308_reg[3]_13 ;
  wire [0:0]\f_fu_308_reg[3]_14 ;
  wire [0:0]\f_fu_308_reg[3]_15 ;
  wire [0:0]\f_fu_308_reg[3]_16 ;
  wire [0:0]\f_fu_308_reg[3]_2 ;
  wire [0:0]\f_fu_308_reg[3]_3 ;
  wire [0:0]\f_fu_308_reg[3]_4 ;
  wire [0:0]\f_fu_308_reg[3]_5 ;
  wire [0:0]\f_fu_308_reg[3]_6 ;
  wire [0:0]\f_fu_308_reg[3]_7 ;
  wire [0:0]\f_fu_308_reg[3]_8 ;
  wire [0:0]\f_fu_308_reg[3]_9 ;
  wire [0:0]\f_fu_308_reg[4] ;
  wire [0:0]\f_fu_308_reg[4]_0 ;
  wire [0:0]\f_fu_308_reg[4]_1 ;
  wire [0:0]\f_fu_308_reg[4]_2 ;
  wire [0:0]\f_fu_308_reg[4]_3 ;
  wire [0:0]\f_fu_308_reg[4]_4 ;
  wire [0:0]\f_fu_308_reg[4]_5 ;
  wire \f_fu_308_reg[4]_i_1_n_0 ;
  wire \f_fu_308_reg[4]_i_1_n_1 ;
  wire \f_fu_308_reg[4]_i_1_n_2 ;
  wire \f_fu_308_reg[4]_i_1_n_3 ;
  wire [0:0]\f_fu_308_reg[5] ;
  wire [0:0]\f_fu_308_reg[5]_0 ;
  wire [0:0]\f_fu_308_reg[5]_1 ;
  wire [0:0]\f_fu_308_reg[5]_10 ;
  wire [0:0]\f_fu_308_reg[5]_11 ;
  wire [0:0]\f_fu_308_reg[5]_12 ;
  wire [0:0]\f_fu_308_reg[5]_2 ;
  wire [0:0]\f_fu_308_reg[5]_3 ;
  wire [0:0]\f_fu_308_reg[5]_4 ;
  wire [0:0]\f_fu_308_reg[5]_5 ;
  wire [0:0]\f_fu_308_reg[5]_6 ;
  wire [0:0]\f_fu_308_reg[5]_7 ;
  wire [0:0]\f_fu_308_reg[5]_8 ;
  wire [0:0]\f_fu_308_reg[5]_9 ;
  wire \f_fu_308_reg[8]_i_1_n_0 ;
  wire \f_fu_308_reg[8]_i_1_n_1 ;
  wire \f_fu_308_reg[8]_i_1_n_2 ;
  wire \f_fu_308_reg[8]_i_1_n_3 ;
  wire grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg;
  wire [1:0]grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg_reg;
  wire [31:0]icmp_ln65_fu_1046_p2_carry__2;
  wire in_stream_TVALID_int_regslice;
  wire [3:0]\num_features_read_reg_973_reg[14] ;
  wire [3:0]\num_features_read_reg_973_reg[22] ;
  wire [3:0]\num_features_read_reg_973_reg[31] ;
  wire [30:0]p_0_in;
  wire \test_feat_V_1_fu_560[15]_i_2_n_0 ;
  wire \test_feat_V_2_fu_556[15]_i_2_n_0 ;
  wire \test_feat_V_3_fu_552[15]_i_2_n_0 ;
  wire \test_feat_V_5_fu_544[15]_i_2_n_0 ;
  wire \test_feat_V_6_fu_540[15]_i_2_n_0 ;
  wire \test_feat_V_7_fu_536[15]_i_2_n_0 ;
  wire \test_feat_V_fu_564[15]_i_2_n_0 ;
  wire [3:1]\NLW_f_fu_308_reg[30]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_f_fu_308_reg[30]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF888FDDDF000F000)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I1(CO),
        .I2(\ap_CS_fsm_reg[2] [0]),
        .I3(\ap_CS_fsm_reg[2]_0 ),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[2] [1]),
        .O(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h7040)) 
    \ap_CS_fsm[3]_i_1__1 
       (.I0(CO),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(\ap_CS_fsm_reg[2] [1]),
        .I3(ap_done_cache),
        .O(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h74)) 
    ap_done_cache_i_1
       (.I0(CO),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h5FDFDDDD)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(CO),
        .I3(in_stream_TVALID_int_regslice),
        .I4(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \f_fu_308[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(Q[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[12]_i_2 
       (.I0(Q[12]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[12]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[12]_i_3 
       (.I0(Q[11]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[11]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[12]_i_4 
       (.I0(Q[10]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[10]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[12]_i_5 
       (.I0(Q[9]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[9]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[16]_i_2 
       (.I0(Q[16]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[16]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[16]_i_3 
       (.I0(Q[15]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[15]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[16]_i_4 
       (.I0(Q[14]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[14]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[16]_i_5 
       (.I0(Q[13]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[13]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[20]_i_2 
       (.I0(Q[20]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[20]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[20]_i_3 
       (.I0(Q[19]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[19]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[20]_i_4 
       (.I0(Q[18]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[18]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[20]_i_5 
       (.I0(Q[17]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[17]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[24]_i_2 
       (.I0(Q[24]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[24]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[24]_i_3 
       (.I0(Q[23]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[23]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[24]_i_4 
       (.I0(Q[22]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[22]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[24]_i_5 
       (.I0(Q[21]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[21]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[28]_i_2 
       (.I0(Q[28]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[28]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[28]_i_3 
       (.I0(Q[27]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[27]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[28]_i_4 
       (.I0(Q[26]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[26]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[28]_i_5 
       (.I0(Q[25]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \f_fu_308[30]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(CO),
        .O(SR));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[30]_i_4 
       (.I0(Q[30]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[30]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[30]_i_5 
       (.I0(Q[29]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[29]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[4]_i_2 
       (.I0(Q[0]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[4]_i_3 
       (.I0(Q[4]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[4]_i_4 
       (.I0(Q[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[4]_i_5 
       (.I0(Q[2]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[4]_i_6 
       (.I0(Q[1]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[8]_i_2 
       (.I0(Q[8]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[8]_i_3 
       (.I0(Q[7]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[7]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[8]_i_4 
       (.I0(Q[6]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    \f_fu_308[8]_i_5 
       (.I0(Q[5]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(p_0_in[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \f_fu_308_reg[12]_i_1 
       (.CI(\f_fu_308_reg[8]_i_1_n_0 ),
        .CO({\f_fu_308_reg[12]_i_1_n_0 ,\f_fu_308_reg[12]_i_1_n_1 ,\f_fu_308_reg[12]_i_1_n_2 ,\f_fu_308_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[12:9]),
        .S(p_0_in[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \f_fu_308_reg[16]_i_1 
       (.CI(\f_fu_308_reg[12]_i_1_n_0 ),
        .CO({\f_fu_308_reg[16]_i_1_n_0 ,\f_fu_308_reg[16]_i_1_n_1 ,\f_fu_308_reg[16]_i_1_n_2 ,\f_fu_308_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[16:13]),
        .S(p_0_in[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \f_fu_308_reg[20]_i_1 
       (.CI(\f_fu_308_reg[16]_i_1_n_0 ),
        .CO({\f_fu_308_reg[20]_i_1_n_0 ,\f_fu_308_reg[20]_i_1_n_1 ,\f_fu_308_reg[20]_i_1_n_2 ,\f_fu_308_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[20:17]),
        .S(p_0_in[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \f_fu_308_reg[24]_i_1 
       (.CI(\f_fu_308_reg[20]_i_1_n_0 ),
        .CO({\f_fu_308_reg[24]_i_1_n_0 ,\f_fu_308_reg[24]_i_1_n_1 ,\f_fu_308_reg[24]_i_1_n_2 ,\f_fu_308_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[24:21]),
        .S(p_0_in[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \f_fu_308_reg[28]_i_1 
       (.CI(\f_fu_308_reg[24]_i_1_n_0 ),
        .CO({\f_fu_308_reg[28]_i_1_n_0 ,\f_fu_308_reg[28]_i_1_n_1 ,\f_fu_308_reg[28]_i_1_n_2 ,\f_fu_308_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[28:25]),
        .S(p_0_in[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \f_fu_308_reg[30]_i_3 
       (.CI(\f_fu_308_reg[28]_i_1_n_0 ),
        .CO({\NLW_f_fu_308_reg[30]_i_3_CO_UNCONNECTED [3:1],\f_fu_308_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_f_fu_308_reg[30]_i_3_O_UNCONNECTED [3:2],D[30:29]}),
        .S({1'b0,1'b0,p_0_in[30:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \f_fu_308_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\f_fu_308_reg[4]_i_1_n_0 ,\f_fu_308_reg[4]_i_1_n_1 ,\f_fu_308_reg[4]_i_1_n_2 ,\f_fu_308_reg[4]_i_1_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[4:1]),
        .S(p_0_in[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \f_fu_308_reg[8]_i_1 
       (.CI(\f_fu_308_reg[4]_i_1_n_0 ),
        .CO({\f_fu_308_reg[8]_i_1_n_0 ,\f_fu_308_reg[8]_i_1_n_1 ,\f_fu_308_reg[8]_i_1_n_2 ,\f_fu_308_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[8:5]),
        .S(p_0_in[8:5]));
  LUT4 #(
    .INIT(16'hF888)) 
    grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg_i_1
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(\ap_CS_fsm_reg[2] [0]),
        .I2(CO),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .O(\ap_CS_fsm_reg[1] ));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__0_i_1
       (.I0(icmp_ln65_fu_1046_p2_carry__2[14]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[15]),
        .O(\num_features_read_reg_973_reg[14] [3]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__0_i_2
       (.I0(icmp_ln65_fu_1046_p2_carry__2[12]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[13]),
        .O(\num_features_read_reg_973_reg[14] [2]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__0_i_3
       (.I0(icmp_ln65_fu_1046_p2_carry__2[10]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[11]),
        .O(\num_features_read_reg_973_reg[14] [1]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__0_i_4
       (.I0(icmp_ln65_fu_1046_p2_carry__2[8]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[9]),
        .O(\num_features_read_reg_973_reg[14] [0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__0_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[15]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[15]),
        .I4(Q[14]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[14]),
        .O(ap_loop_init_int_reg_0[3]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__0_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[13]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[13]),
        .I4(Q[12]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[12]),
        .O(ap_loop_init_int_reg_0[2]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__0_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[11]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[11]),
        .I4(Q[10]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[10]),
        .O(ap_loop_init_int_reg_0[1]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__0_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[9]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[9]),
        .I4(Q[8]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[8]),
        .O(ap_loop_init_int_reg_0[0]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__1_i_1
       (.I0(icmp_ln65_fu_1046_p2_carry__2[22]),
        .I1(Q[22]),
        .I2(Q[23]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[23]),
        .O(\num_features_read_reg_973_reg[22] [3]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__1_i_2
       (.I0(icmp_ln65_fu_1046_p2_carry__2[20]),
        .I1(Q[20]),
        .I2(Q[21]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[21]),
        .O(\num_features_read_reg_973_reg[22] [2]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__1_i_3
       (.I0(icmp_ln65_fu_1046_p2_carry__2[18]),
        .I1(Q[18]),
        .I2(Q[19]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[19]),
        .O(\num_features_read_reg_973_reg[22] [1]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__1_i_4
       (.I0(icmp_ln65_fu_1046_p2_carry__2[16]),
        .I1(Q[16]),
        .I2(Q[17]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[17]),
        .O(\num_features_read_reg_973_reg[22] [0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__1_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[23]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[23]),
        .I4(Q[22]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[22]),
        .O(ap_loop_init_int_reg_1[3]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__1_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[21]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[21]),
        .I4(Q[20]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[20]),
        .O(ap_loop_init_int_reg_1[2]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__1_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[19]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[19]),
        .I4(Q[18]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[18]),
        .O(ap_loop_init_int_reg_1[1]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__1_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[17]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[17]),
        .I4(Q[16]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[16]),
        .O(ap_loop_init_int_reg_1[0]));
  LUT5 #(
    .INIT(32'h40004444)) 
    icmp_ln65_fu_1046_p2_carry__2_i_1
       (.I0(icmp_ln65_fu_1046_p2_carry__2[31]),
        .I1(icmp_ln65_fu_1046_p2_carry__2[30]),
        .I2(ap_loop_init_int),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(Q[30]),
        .O(\num_features_read_reg_973_reg[31] [3]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__2_i_2
       (.I0(icmp_ln65_fu_1046_p2_carry__2[28]),
        .I1(Q[28]),
        .I2(Q[29]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[29]),
        .O(\num_features_read_reg_973_reg[31] [2]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__2_i_3
       (.I0(icmp_ln65_fu_1046_p2_carry__2[26]),
        .I1(Q[26]),
        .I2(Q[27]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[27]),
        .O(\num_features_read_reg_973_reg[31] [1]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry__2_i_4
       (.I0(icmp_ln65_fu_1046_p2_carry__2[24]),
        .I1(Q[24]),
        .I2(Q[25]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[25]),
        .O(\num_features_read_reg_973_reg[31] [0]));
  LUT5 #(
    .INIT(32'h00002AD5)) 
    icmp_ln65_fu_1046_p2_carry__2_i_5
       (.I0(Q[30]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(icmp_ln65_fu_1046_p2_carry__2[30]),
        .I4(icmp_ln65_fu_1046_p2_carry__2[31]),
        .O(\f_fu_308_reg[30] [3]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__2_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[29]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[29]),
        .I4(Q[28]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[28]),
        .O(\f_fu_308_reg[30] [2]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__2_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[27]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[27]),
        .I4(Q[26]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[26]),
        .O(\f_fu_308_reg[30] [1]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry__2_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[25]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[25]),
        .I4(Q[24]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[24]),
        .O(\f_fu_308_reg[30] [0]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry_i_1
       (.I0(icmp_ln65_fu_1046_p2_carry__2[6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[7]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry_i_2
       (.I0(icmp_ln65_fu_1046_p2_carry__2[4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[5]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry_i_3
       (.I0(icmp_ln65_fu_1046_p2_carry__2[2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[3]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hFF2F2F2FAA020202)) 
    icmp_ln65_fu_1046_p2_carry_i_4
       (.I0(icmp_ln65_fu_1046_p2_carry__2[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(icmp_ln65_fu_1046_p2_carry__2[1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry_i_5
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[7]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[7]),
        .I4(Q[6]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[6]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry_i_6
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[5]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[5]),
        .I4(Q[4]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[4]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry_i_7
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[3]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[3]),
        .I4(Q[2]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h700700000088708F)) 
    icmp_ln65_fu_1046_p2_carry_i_8
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(Q[1]),
        .I3(icmp_ln65_fu_1046_p2_carry__2[1]),
        .I4(Q[0]),
        .I5(icmp_ln65_fu_1046_p2_carry__2[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0222000000000000)) 
    \test_feat_V_10_fu_524[15]_i_1 
       (.I0(\test_feat_V_2_fu_556[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h0222000000000000)) 
    \test_feat_V_11_fu_520[15]_i_1 
       (.I0(\test_feat_V_3_fu_552[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_7 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \test_feat_V_12_fu_516[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_6 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \test_feat_V_13_fu_512[15]_i_1 
       (.I0(\test_feat_V_5_fu_544[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_21 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \test_feat_V_14_fu_508[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \test_feat_V_15_fu_504[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_16 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \test_feat_V_16_fu_500[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[5]_6 ));
  LUT6 #(
    .INIT(64'h00002A0000000000)) 
    \test_feat_V_17_fu_496[15]_i_1 
       (.I0(Q[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(\test_feat_V_1_fu_560[15]_i_2_n_0 ),
        .O(\f_fu_308_reg[3]_14 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \test_feat_V_18_fu_492[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[5]_2 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \test_feat_V_19_fu_488[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[5]_10 ));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \test_feat_V_1_fu_560[15]_i_1 
       (.I0(\test_feat_V_1_fu_560[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_16 ));
  LUT6 #(
    .INIT(64'h0008080800000000)) 
    \test_feat_V_1_fu_560[15]_i_2 
       (.I0(Q[1]),
        .I1(f_fu_308),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .I4(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I5(Q[2]),
        .O(\test_feat_V_1_fu_560[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_20_fu_484[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[5]_5 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_21_fu_480[15]_i_1 
       (.I0(\test_feat_V_5_fu_544[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[5]_12 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_22_fu_476[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[5]_1 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_23_fu_472[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[5]_9 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_24_fu_468[15]_i_1 
       (.I0(Q[2]),
        .I1(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(ap_loop_init),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[2]_10 ));
  LUT6 #(
    .INIT(64'h0000000002220000)) 
    \test_feat_V_25_fu_464[15]_i_1 
       (.I0(\test_feat_V_1_fu_560[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_13 ));
  LUT6 #(
    .INIT(64'h0000000002220000)) 
    \test_feat_V_26_fu_460[15]_i_1 
       (.I0(\test_feat_V_2_fu_556[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000002220000)) 
    \test_feat_V_27_fu_456[15]_i_1 
       (.I0(\test_feat_V_3_fu_552[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_6 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_28_fu_452[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_29_fu_448[15]_i_1 
       (.I0(\test_feat_V_5_fu_544[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_20 ));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \test_feat_V_2_fu_556[15]_i_1 
       (.I0(\test_feat_V_2_fu_556[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_3 ));
  LUT6 #(
    .INIT(64'h0000400040004000)) 
    \test_feat_V_2_fu_556[15]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(f_fu_308),
        .I3(Q[0]),
        .I4(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\test_feat_V_2_fu_556[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_30_fu_444[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_31_fu_440[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_15 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \test_feat_V_32_fu_436[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[4]_2 ));
  LUT6 #(
    .INIT(64'h00002A0000000000)) 
    \test_feat_V_33_fu_432[15]_i_1 
       (.I0(Q[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\test_feat_V_1_fu_560[15]_i_2_n_0 ),
        .O(\f_fu_308_reg[3]_12 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \test_feat_V_34_fu_428[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \test_feat_V_35_fu_424[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[4]_4 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_36_fu_420[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_37_fu_416[15]_i_1 
       (.I0(\test_feat_V_5_fu_544[15]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[4]_5 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_38_fu_412[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[4] ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_39_fu_408[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[4]_3 ));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \test_feat_V_3_fu_552[15]_i_1 
       (.I0(\test_feat_V_3_fu_552[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_8 ));
  LUT6 #(
    .INIT(64'h0004040400000000)) 
    \test_feat_V_3_fu_552[15]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(f_fu_308),
        .O(\test_feat_V_3_fu_552[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \test_feat_V_40_fu_404[15]_i_1 
       (.I0(Q[2]),
        .I1(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(ap_loop_init),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\f_fu_308_reg[2]_9 ));
  LUT6 #(
    .INIT(64'h0000000002220000)) 
    \test_feat_V_41_fu_400[15]_i_1 
       (.I0(\test_feat_V_1_fu_560[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\f_fu_308_reg[3]_11 ));
  LUT6 #(
    .INIT(64'h0000000002220000)) 
    \test_feat_V_42_fu_396[15]_i_1 
       (.I0(\test_feat_V_2_fu_556[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\f_fu_308_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000002220000)) 
    \test_feat_V_43_fu_392[15]_i_1 
       (.I0(\test_feat_V_3_fu_552[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\f_fu_308_reg[3]_5 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_44_fu_388[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_45_fu_384[15]_i_1 
       (.I0(\test_feat_V_5_fu_544[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_19 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_46_fu_380[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_47_fu_376[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_14 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \test_feat_V_48_fu_372[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[5]_4 ));
  LUT6 #(
    .INIT(64'h0000002A00000000)) 
    \test_feat_V_49_fu_368[15]_i_1 
       (.I0(Q[3]),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(\test_feat_V_1_fu_560[15]_i_2_n_0 ),
        .O(\f_fu_308_reg[3]_10 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \test_feat_V_4_fu_548[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_7 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \test_feat_V_50_fu_364[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \test_feat_V_51_fu_360[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[5]_8 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_52_fu_356[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[5]_3 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_53_fu_352[15]_i_1 
       (.I0(\test_feat_V_5_fu_544[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[5]_11 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_54_fu_348[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[5] ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \test_feat_V_55_fu_344[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\f_fu_308_reg[5]_7 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \test_feat_V_56_fu_340[15]_i_1 
       (.I0(Q[2]),
        .I1(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(ap_loop_init),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[2]_8 ));
  LUT6 #(
    .INIT(64'hA000A000A000A222)) 
    \test_feat_V_57_fu_336[15]_i_1 
       (.I0(\test_feat_V_1_fu_560[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_9 ));
  LUT6 #(
    .INIT(64'hA000A000A000A222)) 
    \test_feat_V_58_fu_332[15]_i_1 
       (.I0(\test_feat_V_2_fu_556[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3] ));
  LUT6 #(
    .INIT(64'hA000A000A000A222)) 
    \test_feat_V_59_fu_328[15]_i_1 
       (.I0(\test_feat_V_3_fu_552[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_4 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \test_feat_V_5_fu_544[15]_i_1 
       (.I0(\test_feat_V_5_fu_544[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_22 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \test_feat_V_5_fu_544[15]_i_2 
       (.I0(Q[0]),
        .I1(in_stream_TVALID_int_regslice),
        .I2(CO),
        .I3(ap_loop_init_int),
        .I4(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I5(Q[1]),
        .O(\test_feat_V_5_fu_544[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A0A2)) 
    \test_feat_V_60_fu_324[15]_i_1 
       (.I0(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A0A2)) 
    \test_feat_V_61_fu_320[15]_i_1 
       (.I0(\test_feat_V_5_fu_544[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_18 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A0A2)) 
    \test_feat_V_62_fu_316[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(E));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A0A2)) 
    \test_feat_V_63_fu_312[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_13 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \test_feat_V_6_fu_540[15]_i_1 
       (.I0(\test_feat_V_6_fu_540[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \test_feat_V_6_fu_540[15]_i_2 
       (.I0(in_stream_TVALID_int_regslice),
        .I1(CO),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .I4(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I5(Q[1]),
        .O(\test_feat_V_6_fu_540[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \test_feat_V_7_fu_536[15]_i_1 
       (.I0(\test_feat_V_7_fu_536[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(ap_loop_init),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\f_fu_308_reg[2]_17 ));
  LUT6 #(
    .INIT(64'hC0000000C0400000)) 
    \test_feat_V_7_fu_536[15]_i_2 
       (.I0(Q[0]),
        .I1(in_stream_TVALID_int_regslice),
        .I2(CO),
        .I3(ap_loop_init_int),
        .I4(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I5(Q[1]),
        .O(\test_feat_V_7_fu_536[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \test_feat_V_8_fu_532[15]_i_1 
       (.I0(Q[2]),
        .I1(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(ap_loop_init),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[2]_11 ));
  LUT6 #(
    .INIT(64'h0222000000000000)) 
    \test_feat_V_9_fu_528[15]_i_1 
       (.I0(\test_feat_V_1_fu_560[15]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[3]_15 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \test_feat_V_fu_564[15]_i_1 
       (.I0(Q[2]),
        .I1(\test_feat_V_fu_564[15]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(ap_loop_init),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\f_fu_308_reg[2]_12 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \test_feat_V_fu_564[15]_i_2 
       (.I0(in_stream_TVALID_int_regslice),
        .I1(CO),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .I4(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I5(Q[1]),
        .O(\test_feat_V_fu_564[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \test_feat_V_fu_564[15]_i_3 
       (.I0(ap_loop_init_int),
        .I1(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .O(ap_loop_init));
endmodule

(* ORIG_REF_NAME = "dt_accel_flow_control_loop_pipe_sequential_init" *) 
module design_1_dt_accel_0_0_dt_accel_flow_control_loop_pipe_sequential_init_3
   (\ap_CS_fsm_reg[0] ,
    D,
    SR,
    \n_fu_66_reg[6] ,
    DI,
    S,
    ADDRARDADDR,
    \n_fu_66_reg[8] ,
    \n_fu_66_reg[8]_0 ,
    \num_nodes_read_reg_968_reg[31] ,
    \num_nodes_read_reg_968_reg[30] ,
    \n_fu_66_reg[8]_1 ,
    ap_NS_fsm1,
    ap_loop_init_int_reg_0,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    in_stream_TVALID_int_regslice,
    Q,
    CO,
    grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg,
    ram_reg,
    E,
    \n_fu_66_reg[8]_2 ,
    icmp_ln42_fu_169_p2_carry__2,
    ram_reg_0);
  output \ap_CS_fsm_reg[0] ;
  output [0:0]D;
  output [0:0]SR;
  output [8:0]\n_fu_66_reg[6] ;
  output [3:0]DI;
  output [3:0]S;
  output [8:0]ADDRARDADDR;
  output [0:0]\n_fu_66_reg[8] ;
  output [0:0]\n_fu_66_reg[8]_0 ;
  output [3:0]\num_nodes_read_reg_968_reg[31] ;
  output [3:0]\num_nodes_read_reg_968_reg[30] ;
  output [8:0]\n_fu_66_reg[8]_1 ;
  output ap_NS_fsm1;
  output [0:0]ap_loop_init_int_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input in_stream_TVALID_int_regslice;
  input [1:0]Q;
  input [0:0]CO;
  input grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg;
  input [1:0]ram_reg;
  input [0:0]E;
  input [8:0]\n_fu_66_reg[8]_2 ;
  input [17:0]icmp_ln42_fu_169_p2_carry__2;
  input [8:0]ram_reg_0;

  wire [8:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_0;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_0;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_sig_allocacmp_n_11;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg;
  wire [17:0]icmp_ln42_fu_169_p2_carry__2;
  wire in_stream_TVALID_int_regslice;
  wire \n_fu_66[8]_i_4_n_0 ;
  wire [8:0]\n_fu_66_reg[6] ;
  wire [0:0]\n_fu_66_reg[8] ;
  wire [0:0]\n_fu_66_reg[8]_0 ;
  wire [8:0]\n_fu_66_reg[8]_1 ;
  wire [8:0]\n_fu_66_reg[8]_2 ;
  wire [3:0]\num_nodes_read_reg_968_reg[30] ;
  wire [3:0]\num_nodes_read_reg_968_reg[31] ;
  wire [1:0]ram_reg;
  wire [8:0]ram_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h0C008888)) 
    \ap_CS_fsm[10]_i_3 
       (.I0(ap_done_cache),
        .I1(ram_reg[1]),
        .I2(CO),
        .I3(Q[0]),
        .I4(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .O(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'hFFFFFFFFD000D0D0)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(ap_done_cache),
        .I1(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I2(ram_reg[1]),
        .I3(CO),
        .I4(\ap_CS_fsm_reg[0] ),
        .I5(ram_reg[0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    ap_done_cache_i_1__0
       (.I0(Q[0]),
        .I1(CO),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h5DDD5DDDFFFF5DDD)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(in_stream_TVALID_int_regslice),
        .I3(Q[1]),
        .I4(\ap_CS_fsm_reg[0] ),
        .I5(CO),
        .O(ap_loop_init_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5550000)) 
    icmp_ln42_fu_169_p2_carry__0_i_4
       (.I0(\n_fu_66_reg[8]_2 [8]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(icmp_ln42_fu_169_p2_carry__2[8]),
        .I5(icmp_ln42_fu_169_p2_carry__2[9]),
        .O(\n_fu_66_reg[8] ));
  LUT6 #(
    .INIT(64'h000000002AAAD555)) 
    icmp_ln42_fu_169_p2_carry__0_i_8
       (.I0(\n_fu_66_reg[8]_2 [8]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(icmp_ln42_fu_169_p2_carry__2[8]),
        .I5(icmp_ln42_fu_169_p2_carry__2[9]),
        .O(\n_fu_66_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln42_fu_169_p2_carry__2_i_1
       (.I0(icmp_ln42_fu_169_p2_carry__2[16]),
        .I1(icmp_ln42_fu_169_p2_carry__2[17]),
        .O(\num_nodes_read_reg_968_reg[30] [3]));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__2_i_2
       (.I0(icmp_ln42_fu_169_p2_carry__2[15]),
        .I1(icmp_ln42_fu_169_p2_carry__2[14]),
        .O(\num_nodes_read_reg_968_reg[30] [2]));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__2_i_3
       (.I0(icmp_ln42_fu_169_p2_carry__2[13]),
        .I1(icmp_ln42_fu_169_p2_carry__2[12]),
        .O(\num_nodes_read_reg_968_reg[30] [1]));
  LUT2 #(
    .INIT(4'hE)) 
    icmp_ln42_fu_169_p2_carry__2_i_4
       (.I0(icmp_ln42_fu_169_p2_carry__2[11]),
        .I1(icmp_ln42_fu_169_p2_carry__2[10]),
        .O(\num_nodes_read_reg_968_reg[30] [0]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__2_i_5
       (.I0(icmp_ln42_fu_169_p2_carry__2[17]),
        .I1(icmp_ln42_fu_169_p2_carry__2[16]),
        .O(\num_nodes_read_reg_968_reg[31] [3]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__2_i_6
       (.I0(icmp_ln42_fu_169_p2_carry__2[14]),
        .I1(icmp_ln42_fu_169_p2_carry__2[15]),
        .O(\num_nodes_read_reg_968_reg[31] [2]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__2_i_7
       (.I0(icmp_ln42_fu_169_p2_carry__2[12]),
        .I1(icmp_ln42_fu_169_p2_carry__2[13]),
        .O(\num_nodes_read_reg_968_reg[31] [1]));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln42_fu_169_p2_carry__2_i_8
       (.I0(icmp_ln42_fu_169_p2_carry__2[10]),
        .I1(icmp_ln42_fu_169_p2_carry__2[11]),
        .O(\num_nodes_read_reg_968_reg[31] [0]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    icmp_ln42_fu_169_p2_carry_i_1
       (.I0(icmp_ln42_fu_169_p2_carry__2[6]),
        .I1(\n_fu_66_reg[8]_2 [6]),
        .I2(\n_fu_66_reg[8]_2 [7]),
        .I3(ap_sig_allocacmp_n_11),
        .I4(icmp_ln42_fu_169_p2_carry__2[7]),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    icmp_ln42_fu_169_p2_carry_i_2
       (.I0(icmp_ln42_fu_169_p2_carry__2[4]),
        .I1(\n_fu_66_reg[8]_2 [4]),
        .I2(\n_fu_66_reg[8]_2 [5]),
        .I3(ap_sig_allocacmp_n_11),
        .I4(icmp_ln42_fu_169_p2_carry__2[5]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    icmp_ln42_fu_169_p2_carry_i_3
       (.I0(icmp_ln42_fu_169_p2_carry__2[2]),
        .I1(\n_fu_66_reg[8]_2 [2]),
        .I2(\n_fu_66_reg[8]_2 [3]),
        .I3(ap_sig_allocacmp_n_11),
        .I4(icmp_ln42_fu_169_p2_carry__2[3]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    icmp_ln42_fu_169_p2_carry_i_4
       (.I0(icmp_ln42_fu_169_p2_carry__2[0]),
        .I1(\n_fu_66_reg[8]_2 [0]),
        .I2(\n_fu_66_reg[8]_2 [1]),
        .I3(ap_sig_allocacmp_n_11),
        .I4(icmp_ln42_fu_169_p2_carry__2[1]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h41000A4B)) 
    icmp_ln42_fu_169_p2_carry_i_5
       (.I0(ap_sig_allocacmp_n_11),
        .I1(\n_fu_66_reg[8]_2 [7]),
        .I2(icmp_ln42_fu_169_p2_carry__2[7]),
        .I3(\n_fu_66_reg[8]_2 [6]),
        .I4(icmp_ln42_fu_169_p2_carry__2[6]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h41000A4B)) 
    icmp_ln42_fu_169_p2_carry_i_6
       (.I0(ap_sig_allocacmp_n_11),
        .I1(\n_fu_66_reg[8]_2 [5]),
        .I2(icmp_ln42_fu_169_p2_carry__2[5]),
        .I3(\n_fu_66_reg[8]_2 [4]),
        .I4(icmp_ln42_fu_169_p2_carry__2[4]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h41000A4B)) 
    icmp_ln42_fu_169_p2_carry_i_7
       (.I0(ap_sig_allocacmp_n_11),
        .I1(\n_fu_66_reg[8]_2 [3]),
        .I2(icmp_ln42_fu_169_p2_carry__2[3]),
        .I3(\n_fu_66_reg[8]_2 [2]),
        .I4(icmp_ln42_fu_169_p2_carry__2[2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h41000A4B)) 
    icmp_ln42_fu_169_p2_carry_i_8
       (.I0(ap_sig_allocacmp_n_11),
        .I1(\n_fu_66_reg[8]_2 [1]),
        .I2(icmp_ln42_fu_169_p2_carry__2[1]),
        .I3(\n_fu_66_reg[8]_2 [0]),
        .I4(icmp_ln42_fu_169_p2_carry__2[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \n_fu_66[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\n_fu_66_reg[8]_2 [0]),
        .O(\n_fu_66_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \n_fu_66[1]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [0]),
        .I1(ap_loop_init_int),
        .I2(\n_fu_66_reg[8]_2 [1]),
        .O(\n_fu_66_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \n_fu_66[2]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [0]),
        .I1(\n_fu_66_reg[8]_2 [1]),
        .I2(ap_loop_init_int),
        .I3(\n_fu_66_reg[8]_2 [2]),
        .O(\n_fu_66_reg[6] [2]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \n_fu_66[3]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [1]),
        .I1(\n_fu_66_reg[8]_2 [0]),
        .I2(\n_fu_66_reg[8]_2 [2]),
        .I3(ap_sig_allocacmp_n_11),
        .I4(\n_fu_66_reg[8]_2 [3]),
        .O(\n_fu_66_reg[6] [3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \n_fu_66[4]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [2]),
        .I1(\n_fu_66_reg[8]_2 [0]),
        .I2(\n_fu_66_reg[8]_2 [1]),
        .I3(\n_fu_66_reg[8]_2 [3]),
        .I4(ap_sig_allocacmp_n_11),
        .I5(\n_fu_66_reg[8]_2 [4]),
        .O(\n_fu_66_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \n_fu_66[5]_i_1 
       (.I0(\n_fu_66[8]_i_4_n_0 ),
        .I1(ap_loop_init_int),
        .I2(\n_fu_66_reg[8]_2 [5]),
        .O(\n_fu_66_reg[6] [5]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \n_fu_66[6]_i_1 
       (.I0(\n_fu_66[8]_i_4_n_0 ),
        .I1(\n_fu_66_reg[8]_2 [5]),
        .I2(ap_loop_init_int),
        .I3(\n_fu_66_reg[8]_2 [6]),
        .O(\n_fu_66_reg[6] [6]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \n_fu_66[7]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [5]),
        .I1(\n_fu_66[8]_i_4_n_0 ),
        .I2(\n_fu_66_reg[8]_2 [6]),
        .I3(ap_sig_allocacmp_n_11),
        .I4(\n_fu_66_reg[8]_2 [7]),
        .O(\n_fu_66_reg[6] [7]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \n_fu_66[8]_i_1 
       (.I0(ap_loop_init_int),
        .I1(CO),
        .I2(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I3(Q[0]),
        .O(ap_loop_init_int_reg_0));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \n_fu_66[8]_i_3 
       (.I0(\n_fu_66_reg[8]_2 [6]),
        .I1(\n_fu_66[8]_i_4_n_0 ),
        .I2(\n_fu_66_reg[8]_2 [5]),
        .I3(\n_fu_66_reg[8]_2 [7]),
        .I4(ap_sig_allocacmp_n_11),
        .I5(\n_fu_66_reg[8]_2 [8]),
        .O(\n_fu_66_reg[6] [8]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \n_fu_66[8]_i_4 
       (.I0(\n_fu_66_reg[8]_2 [4]),
        .I1(\n_fu_66_reg[8]_2 [2]),
        .I2(\n_fu_66_reg[8]_2 [0]),
        .I3(ap_sig_allocacmp_n_11),
        .I4(\n_fu_66_reg[8]_2 [1]),
        .I5(\n_fu_66_reg[8]_2 [3]),
        .O(\n_fu_66[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \n_fu_66[8]_i_5 
       (.I0(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_n_11));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    ram_reg_i_10
       (.I0(\n_fu_66_reg[8]_2 [0]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ram_reg[1]),
        .I5(ram_reg_0[0]),
        .O(ADDRARDADDR[0]));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    ram_reg_i_2
       (.I0(\n_fu_66_reg[8]_2 [8]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ram_reg[1]),
        .I5(ram_reg_0[8]),
        .O(ADDRARDADDR[8]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    ram_reg_i_20
       (.I0(Q[0]),
        .I1(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I2(CO),
        .I3(in_stream_TVALID_int_regslice),
        .O(\ap_CS_fsm_reg[0] ));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    ram_reg_i_3
       (.I0(\n_fu_66_reg[8]_2 [7]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ram_reg[1]),
        .I5(ram_reg_0[7]),
        .O(ADDRARDADDR[7]));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    ram_reg_i_4
       (.I0(\n_fu_66_reg[8]_2 [6]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ram_reg[1]),
        .I5(ram_reg_0[6]),
        .O(ADDRARDADDR[6]));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    ram_reg_i_5
       (.I0(\n_fu_66_reg[8]_2 [5]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ram_reg[1]),
        .I5(ram_reg_0[5]),
        .O(ADDRARDADDR[5]));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    ram_reg_i_6
       (.I0(\n_fu_66_reg[8]_2 [4]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ram_reg[1]),
        .I5(ram_reg_0[4]),
        .O(ADDRARDADDR[4]));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    ram_reg_i_7
       (.I0(\n_fu_66_reg[8]_2 [3]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ram_reg[1]),
        .I5(ram_reg_0[3]),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    ram_reg_i_8
       (.I0(\n_fu_66_reg[8]_2 [2]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ram_reg[1]),
        .I5(ram_reg_0[2]),
        .O(ADDRARDADDR[2]));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    ram_reg_i_9
       (.I0(\n_fu_66_reg[8]_2 [1]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ram_reg[1]),
        .I5(ram_reg_0[1]),
        .O(ADDRARDADDR[1]));
  LUT6 #(
    .INIT(64'h0000000020F02020)) 
    \storemerge_reg_450[31]_i_1 
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(CO),
        .I2(ram_reg[1]),
        .I3(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_ap_start_reg),
        .I4(ap_done_cache),
        .I5(E),
        .O(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln42_reg_226[0]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [0]),
        .I1(ap_loop_init_int),
        .O(\n_fu_66_reg[8]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln42_reg_226[1]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [1]),
        .I1(ap_loop_init_int),
        .O(\n_fu_66_reg[8]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln42_reg_226[2]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [2]),
        .I1(ap_loop_init_int),
        .O(\n_fu_66_reg[8]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln42_reg_226[3]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [3]),
        .I1(ap_loop_init_int),
        .O(\n_fu_66_reg[8]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln42_reg_226[4]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [4]),
        .I1(ap_loop_init_int),
        .O(\n_fu_66_reg[8]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln42_reg_226[5]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [5]),
        .I1(ap_loop_init_int),
        .O(\n_fu_66_reg[8]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln42_reg_226[6]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [6]),
        .I1(ap_loop_init_int),
        .O(\n_fu_66_reg[8]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln42_reg_226[7]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [7]),
        .I1(ap_loop_init_int),
        .O(\n_fu_66_reg[8]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln42_reg_226[8]_i_1 
       (.I0(\n_fu_66_reg[8]_2 [8]),
        .I1(ap_loop_init_int),
        .O(\n_fu_66_reg[8]_1 [8]));
endmodule

(* ORIG_REF_NAME = "dt_accel_node_feature_V_RAM_AUTO_1R1W" *) 
module design_1_dt_accel_0_0_dt_accel_node_feature_V_RAM_AUTO_1R1W
   (D,
    ap_clk,
    node_class_V_ce0,
    ram_reg_0,
    ram_reg_1,
    WEA);
  output [7:0]D;
  input ap_clk;
  input node_class_V_ce0;
  input [8:0]ram_reg_0;
  input [7:0]ram_reg_1;
  input [0:0]WEA;

  wire [7:0]D;
  wire [0:0]WEA;
  wire ap_clk;
  wire node_class_V_ce0;
  wire [8:0]ram_reg_0;
  wire [7:0]ram_reg_1;
  wire [15:8]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2400" *) 
  (* RTL_RAM_NAME = "inst/node_class_V_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b0,ram_reg_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_ram_reg_DOADO_UNCONNECTED[15:8],D}),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(node_class_V_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "dt_accel_node_feature_V_RAM_AUTO_1R1W" *) 
module design_1_dt_accel_0_0_dt_accel_node_feature_V_RAM_AUTO_1R1W_0
   (DOADO,
    ap_condition_pp0_exit_iter0_state3,
    ap_clk,
    node_feature_V_ce0,
    ADDRARDADDR,
    ram_reg_0,
    WEA,
    ap_enable_reg_pp0_iter1_reg);
  output [6:0]DOADO;
  output ap_condition_pp0_exit_iter0_state3;
  input ap_clk;
  input node_feature_V_ce0;
  input [8:0]ADDRARDADDR;
  input [7:0]ram_reg_0;
  input [0:0]WEA;
  input ap_enable_reg_pp0_iter1_reg;

  wire [8:0]ADDRARDADDR;
  wire [6:0]DOADO;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_enable_reg_pp0_iter1_reg;
  wire node_feature_V_ce0;
  wire [7:0]ram_reg_0;
  wire ram_reg_n_9;
  wire [15:8]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(DOADO[6]),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2400" *) 
  (* RTL_RAM_NAME = "inst/node_feature_V_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b0,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_0}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_ram_reg_DOADO_UNCONNECTED[15:8],DOADO[6],ram_reg_n_9,DOADO[5:0]}),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(node_feature_V_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "dt_accel_node_left_V_RAM_AUTO_1R1W" *) 
module design_1_dt_accel_0_0_dt_accel_node_left_V_RAM_AUTO_1R1W
   (ram_reg_0,
    ap_clk,
    node_left_V_ce0,
    ram_reg_1,
    ram_reg_2,
    WEA);
  output [8:0]ram_reg_0;
  input ap_clk;
  input node_left_V_ce0;
  input [8:0]ram_reg_1;
  input [8:0]ram_reg_2;
  input [0:0]WEA;

  wire [0:0]WEA;
  wire ap_clk;
  wire node_left_V_ce0;
  wire [8:0]ram_reg_0;
  wire [8:0]ram_reg_1;
  wire [8:0]ram_reg_2;
  wire [15:9]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2700" *) 
  (* RTL_RAM_NAME = "inst/node_left_V_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b0,ram_reg_1,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_2}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_ram_reg_DOADO_UNCONNECTED[15:9],ram_reg_0}),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(node_left_V_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "dt_accel_node_left_V_RAM_AUTO_1R1W" *) 
module design_1_dt_accel_0_0_dt_accel_node_left_V_RAM_AUTO_1R1W_1
   (ram_reg_0,
    ap_clk,
    node_right_V_ce0,
    ram_reg_1,
    ram_reg_2,
    WEA);
  output [8:0]ram_reg_0;
  input ap_clk;
  input node_right_V_ce0;
  input [8:0]ram_reg_1;
  input [8:0]ram_reg_2;
  input [0:0]WEA;

  wire [0:0]WEA;
  wire ap_clk;
  wire node_right_V_ce0;
  wire [8:0]ram_reg_0;
  wire [8:0]ram_reg_1;
  wire [8:0]ram_reg_2;
  wire [15:9]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2700" *) 
  (* RTL_RAM_NAME = "inst/node_right_V_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b0,ram_reg_1,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_2}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_ram_reg_DOADO_UNCONNECTED[15:9],ram_reg_0}),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(node_right_V_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "dt_accel_node_threshold_V_RAM_AUTO_1R1W" *) 
module design_1_dt_accel_0_0_dt_accel_node_threshold_V_RAM_AUTO_1R1W
   (ram_reg_0,
    S,
    ram_reg_1,
    ap_clk,
    node_threshold_V_ce0,
    ram_reg_2,
    ram_reg_3,
    ram_reg_4,
    icmp_ln1652_fu_782_p2_carry__0);
  output [15:0]ram_reg_0;
  output [3:0]S;
  output [2:0]ram_reg_1;
  input ap_clk;
  input node_threshold_V_ce0;
  input [8:0]ram_reg_2;
  input [15:0]ram_reg_3;
  input [0:0]ram_reg_4;
  input [13:0]icmp_ln1652_fu_782_p2_carry__0;

  wire [3:0]S;
  wire ap_clk;
  wire [13:0]icmp_ln1652_fu_782_p2_carry__0;
  wire node_threshold_V_ce0;
  wire [15:0]ram_reg_0;
  wire [2:0]ram_reg_1;
  wire [8:0]ram_reg_2;
  wire [15:0]ram_reg_3;
  wire [0:0]ram_reg_4;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln1652_fu_782_p2_carry__0_i_6
       (.I0(ram_reg_0[13]),
        .I1(icmp_ln1652_fu_782_p2_carry__0[13]),
        .I2(icmp_ln1652_fu_782_p2_carry__0[12]),
        .I3(ram_reg_0[12]),
        .O(ram_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln1652_fu_782_p2_carry__0_i_7
       (.I0(ram_reg_0[11]),
        .I1(icmp_ln1652_fu_782_p2_carry__0[11]),
        .I2(icmp_ln1652_fu_782_p2_carry__0[10]),
        .I3(ram_reg_0[10]),
        .O(ram_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln1652_fu_782_p2_carry__0_i_8
       (.I0(ram_reg_0[9]),
        .I1(icmp_ln1652_fu_782_p2_carry__0[9]),
        .I2(icmp_ln1652_fu_782_p2_carry__0[8]),
        .I3(ram_reg_0[8]),
        .O(ram_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln1652_fu_782_p2_carry_i_5
       (.I0(ram_reg_0[7]),
        .I1(icmp_ln1652_fu_782_p2_carry__0[7]),
        .I2(icmp_ln1652_fu_782_p2_carry__0[6]),
        .I3(ram_reg_0[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln1652_fu_782_p2_carry_i_6
       (.I0(ram_reg_0[5]),
        .I1(icmp_ln1652_fu_782_p2_carry__0[5]),
        .I2(icmp_ln1652_fu_782_p2_carry__0[4]),
        .I3(ram_reg_0[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln1652_fu_782_p2_carry_i_7
       (.I0(ram_reg_0[3]),
        .I1(icmp_ln1652_fu_782_p2_carry__0[3]),
        .I2(icmp_ln1652_fu_782_p2_carry__0[2]),
        .I3(ram_reg_0[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln1652_fu_782_p2_carry_i_8
       (.I0(ram_reg_0[1]),
        .I1(icmp_ln1652_fu_782_p2_carry__0[1]),
        .I2(icmp_ln1652_fu_782_p2_carry__0[0]),
        .I3(ram_reg_0[0]),
        .O(S[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4800" *) 
  (* RTL_RAM_NAME = "inst/node_threshold_V_U/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b0,ram_reg_2,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI(ram_reg_3),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(ram_reg_0),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(node_threshold_V_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({ram_reg_4,ram_reg_4}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "dt_accel_regslice_both" *) 
module design_1_dt_accel_0_0_dt_accel_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    in_stream_TVALID_int_regslice,
    f_fu_308,
    WEA,
    grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0,
    \ap_CS_fsm_reg[9] ,
    \ap_CS_fsm_reg[9]_0 ,
    \B_V_data_1_payload_B_reg[15]_0 ,
    ap_rst_n_inv,
    ap_clk,
    in_stream_TVALID,
    in_stream_TREADY_int_regslice,
    ap_rst_n,
    grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg,
    CO,
    Q,
    ram_reg,
    in_stream_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output in_stream_TVALID_int_regslice;
  output f_fu_308;
  output [0:0]WEA;
  output grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0;
  output [0:0]\ap_CS_fsm_reg[9] ;
  output [0:0]\ap_CS_fsm_reg[9]_0 ;
  output [15:0]\B_V_data_1_payload_B_reg[15]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input in_stream_TVALID;
  input in_stream_TREADY_int_regslice;
  input ap_rst_n;
  input grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg;
  input [0:0]CO;
  input [0:0]Q;
  input [3:0]ram_reg;
  input [15:0]in_stream_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [15:0]B_V_data_1_payload_A;
  wire [15:0]B_V_data_1_payload_B;
  wire [15:0]\B_V_data_1_payload_B_reg[15]_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [0:0]CO;
  wire [0:0]Q;
  wire [0:0]WEA;
  wire [0:0]\ap_CS_fsm_reg[9] ;
  wire [0:0]\ap_CS_fsm_reg[9]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire f_fu_308;
  wire grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0;
  wire grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg;
  wire [15:0]in_stream_TDATA;
  wire in_stream_TREADY_int_regslice;
  wire in_stream_TVALID;
  wire in_stream_TVALID_int_regslice;
  wire [3:0]ram_reg;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[15]_i_1 
       (.I0(in_stream_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[10]),
        .Q(B_V_data_1_payload_A[10]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[11]),
        .Q(B_V_data_1_payload_A[11]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[12]),
        .Q(B_V_data_1_payload_A[12]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[13]),
        .Q(B_V_data_1_payload_A[13]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[14]),
        .Q(B_V_data_1_payload_A[14]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[15]),
        .Q(B_V_data_1_payload_A[15]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[4]),
        .Q(B_V_data_1_payload_A[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[5]),
        .Q(B_V_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[6]),
        .Q(B_V_data_1_payload_A[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[7]),
        .Q(B_V_data_1_payload_A[7]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[8]),
        .Q(B_V_data_1_payload_A[8]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_stream_TDATA[9]),
        .Q(B_V_data_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \B_V_data_1_payload_B[15]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(in_stream_TVALID_int_regslice),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[10]),
        .Q(B_V_data_1_payload_B[10]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[11]),
        .Q(B_V_data_1_payload_B[11]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[12]),
        .Q(B_V_data_1_payload_B[12]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[13]),
        .Q(B_V_data_1_payload_B[13]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[14]),
        .Q(B_V_data_1_payload_B[14]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[15]),
        .Q(B_V_data_1_payload_B[15]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[4]),
        .Q(B_V_data_1_payload_B[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[5]),
        .Q(B_V_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[6]),
        .Q(B_V_data_1_payload_B[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[7]),
        .Q(B_V_data_1_payload_B[7]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[8]),
        .Q(B_V_data_1_payload_B[8]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_stream_TDATA[9]),
        .Q(B_V_data_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1
       (.I0(in_stream_TREADY_int_regslice),
        .I1(in_stream_TVALID_int_regslice),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(in_stream_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(in_stream_TVALID_int_regslice),
        .I3(in_stream_TVALID),
        .I4(in_stream_TREADY_int_regslice),
        .O(\B_V_data_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hFF3B)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(in_stream_TVALID_int_regslice),
        .I2(in_stream_TVALID),
        .I3(in_stream_TREADY_int_regslice),
        .O(B_V_data_1_state));
  LUT2 #(
    .INIT(4'h8)) 
    \B_V_data_1_state[1]_i_5 
       (.I0(in_stream_TVALID_int_regslice),
        .I1(ram_reg[0]),
        .O(grp_dt_accel_Pipeline_LOAD_NODES_fu_618_node_threshold_V_we0));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_0 ),
        .Q(in_stream_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \f_fu_308[30]_i_2 
       (.I0(grp_dt_accel_Pipeline_READ_FEAT_fu_462_ap_start_reg),
        .I1(in_stream_TVALID_int_regslice),
        .I2(CO),
        .O(f_fu_308));
  LUT3 #(
    .INIT(8'h80)) 
    ram_reg_i_11
       (.I0(Q),
        .I1(in_stream_TVALID_int_regslice),
        .I2(ram_reg[3]),
        .O(WEA));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_11__0
       (.I0(B_V_data_1_payload_B[7]),
        .I1(B_V_data_1_payload_A[7]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [7]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_11__0__0
       (.I0(B_V_data_1_payload_B[15]),
        .I1(B_V_data_1_payload_A[15]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [15]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_12
       (.I0(B_V_data_1_payload_B[6]),
        .I1(B_V_data_1_payload_A[6]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [6]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_12__0
       (.I0(B_V_data_1_payload_B[14]),
        .I1(B_V_data_1_payload_A[14]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [14]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_13
       (.I0(B_V_data_1_payload_B[5]),
        .I1(B_V_data_1_payload_A[5]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [5]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_13__0
       (.I0(B_V_data_1_payload_B[13]),
        .I1(B_V_data_1_payload_A[13]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [13]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_14
       (.I0(B_V_data_1_payload_B[4]),
        .I1(B_V_data_1_payload_A[4]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [4]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_14__0
       (.I0(B_V_data_1_payload_B[12]),
        .I1(B_V_data_1_payload_A[12]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [12]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_15
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_payload_A[3]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [3]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_15__0
       (.I0(B_V_data_1_payload_B[11]),
        .I1(B_V_data_1_payload_A[11]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [11]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_16
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_payload_A[2]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [2]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_16__0
       (.I0(B_V_data_1_payload_B[10]),
        .I1(B_V_data_1_payload_A[10]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [10]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_17
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_payload_A[1]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [1]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_17__0
       (.I0(B_V_data_1_payload_B[9]),
        .I1(B_V_data_1_payload_A[9]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [9]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_18
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_payload_A[0]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_reg_i_18__0
       (.I0(B_V_data_1_payload_B[8]),
        .I1(B_V_data_1_payload_A[8]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[15]_0 [8]));
  LUT3 #(
    .INIT(8'h80)) 
    ram_reg_i_2__0
       (.I0(Q),
        .I1(in_stream_TVALID_int_regslice),
        .I2(ram_reg[2]),
        .O(\ap_CS_fsm_reg[9] ));
  LUT3 #(
    .INIT(8'h80)) 
    ram_reg_i_2__1
       (.I0(Q),
        .I1(in_stream_TVALID_int_regslice),
        .I2(ram_reg[1]),
        .O(\ap_CS_fsm_reg[9]_0 ));
endmodule

(* ORIG_REF_NAME = "dt_accel_regslice_both" *) 
module design_1_dt_accel_0_0_dt_accel_regslice_both_2
   (out_stream_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    D,
    ap_done,
    out_stream_TDATA,
    ap_rst_n_inv,
    ap_clk,
    Q,
    \ap_CS_fsm_reg[10] ,
    ap_NS_fsm1,
    out_stream_TREADY,
    ap_rst_n,
    \B_V_data_1_payload_A_reg[7]_0 );
  output out_stream_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output [2:0]D;
  output ap_done;
  output [7:0]out_stream_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input [5:0]Q;
  input [0:0]\ap_CS_fsm_reg[10] ;
  input ap_NS_fsm1;
  input out_stream_TREADY;
  input ap_rst_n;
  input [7:0]\B_V_data_1_payload_A_reg[7]_0 ;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [7:0]B_V_data_1_payload_A;
  wire [7:0]\B_V_data_1_payload_A_reg[7]_0 ;
  wire [7:0]B_V_data_1_payload_B;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__0_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__1_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire [2:0]D;
  wire [5:0]Q;
  wire [0:0]\ap_CS_fsm_reg[10] ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]out_stream_TDATA;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;

  LUT3 #(
    .INIT(8'h45)) 
    \B_V_data_1_payload_A[7]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(out_stream_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[7]_0 [0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[7]_0 [1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[7]_0 [2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[7]_0 [3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[7]_0 [4]),
        .Q(B_V_data_1_payload_A[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[7]_0 [5]),
        .Q(B_V_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[7]_0 [6]),
        .Q(B_V_data_1_payload_A[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(\B_V_data_1_payload_A_reg[7]_0 [7]),
        .Q(B_V_data_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \B_V_data_1_payload_B[7]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(out_stream_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[7]_0 [0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[7]_0 [1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[7]_0 [2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[7]_0 [3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[7]_0 [4]),
        .Q(B_V_data_1_payload_B[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[7]_0 [5]),
        .Q(B_V_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[7]_0 [6]),
        .Q(B_V_data_1_payload_B[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[7]_0 [7]),
        .Q(B_V_data_1_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(out_stream_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__0_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__1
       (.I0(out_stream_TREADY_int_regslice),
        .I1(Q[2]),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__1_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h88A0A8A0)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(Q[2]),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(out_stream_TREADY_int_regslice),
        .I4(out_stream_TREADY),
        .O(\B_V_data_1_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hFF73)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(Q[2]),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(out_stream_TREADY_int_regslice),
        .I3(out_stream_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_0 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(out_stream_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF2F222F222F22)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(Q[5]),
        .I1(ap_done),
        .I2(\ap_CS_fsm_reg[10] ),
        .I3(Q[0]),
        .I4(ap_NS_fsm1),
        .I5(Q[4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(out_stream_TREADY_int_regslice),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(Q[2]),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hA222)) 
    \int_latency_out[31]_i_1 
       (.I0(Q[5]),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(out_stream_TREADY_int_regslice),
        .I3(out_stream_TREADY),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_TDATA[0]_INST_0 
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_payload_A[0]),
        .I2(B_V_data_1_sel),
        .O(out_stream_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_TDATA[1]_INST_0 
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_payload_A[1]),
        .I2(B_V_data_1_sel),
        .O(out_stream_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_TDATA[2]_INST_0 
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_payload_A[2]),
        .I2(B_V_data_1_sel),
        .O(out_stream_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_TDATA[3]_INST_0 
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_payload_A[3]),
        .I2(B_V_data_1_sel),
        .O(out_stream_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_TDATA[4]_INST_0 
       (.I0(B_V_data_1_payload_B[4]),
        .I1(B_V_data_1_payload_A[4]),
        .I2(B_V_data_1_sel),
        .O(out_stream_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_TDATA[5]_INST_0 
       (.I0(B_V_data_1_payload_B[5]),
        .I1(B_V_data_1_payload_A[5]),
        .I2(B_V_data_1_sel),
        .O(out_stream_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_TDATA[6]_INST_0 
       (.I0(B_V_data_1_payload_B[6]),
        .I1(B_V_data_1_payload_A[6]),
        .I2(B_V_data_1_sel),
        .O(out_stream_TDATA[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_TDATA[7]_INST_0 
       (.I0(B_V_data_1_payload_B[7]),
        .I1(B_V_data_1_payload_A[7]),
        .I2(B_V_data_1_sel),
        .O(out_stream_TDATA[7]));
endmodule

(* ORIG_REF_NAME = "dt_accel_regslice_both" *) 
module design_1_dt_accel_0_0_dt_accel_regslice_both__parameterized1
   (out_stream_TLAST,
    ap_rst_n_inv,
    ap_clk,
    out_stream_TREADY,
    out_stream_TREADY_int_regslice,
    Q,
    ap_rst_n,
    is_last_reg_1399);
  output [0:0]out_stream_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input out_stream_TREADY;
  input out_stream_TREADY_int_regslice;
  input [0:0]Q;
  input ap_rst_n;
  input is_last_reg_1399;

  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__1_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire is_last_reg_1399;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(is_last_reg_1399),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(is_last_reg_1399),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__1
       (.I0(out_stream_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__1_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h7F80)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(out_stream_TREADY_int_regslice),
        .I1(Q),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA222AAAAA0000000)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(ap_rst_n),
        .I1(out_stream_TREADY),
        .I2(out_stream_TREADY_int_regslice),
        .I3(Q),
        .I4(\B_V_data_1_state_reg_n_0_[1] ),
        .I5(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hBFAAFFFF)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(out_stream_TREADY),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .I4(\B_V_data_1_state_reg_n_0_[0] ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_stream_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(out_stream_TLAST));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
