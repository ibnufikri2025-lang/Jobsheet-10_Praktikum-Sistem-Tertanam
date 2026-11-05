// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Mon Nov  2 19:04:39 2026
// Host        : IbnuFikriA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_lite_gpio_v1_0_0_0_sim_netlist.v
// Design      : design_1_axi_lite_gpio_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_gpio_v1_0
   (gpio_out,
    S_AXI_RDATA,
    axi_awready_reg_0,
    axi_bvalid_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    S_AXI_WDATA,
    S_AXI_ACLK,
    sw,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    S_AXI_WSTRB,
    S_AXI_AWADDR,
    S_AXI_ARADDR);
  output [15:0]gpio_out;
  output [31:0]S_AXI_RDATA;
  output axi_awready_reg_0;
  output axi_bvalid_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  input [31:0]S_AXI_WDATA;
  input S_AXI_ACLK;
  input [15:0]sw;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input [3:0]S_AXI_WSTRB;
  input [1:0]S_AXI_AWADDR;
  input [1:0]S_AXI_ARADDR;

  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire axi_arready0;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_reg_0;
  wire [31:31]axi_rdata;
  wire [31:0]axi_rdata0_in;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire [15:0]gpio_out;
  wire [31:7]p_1_in;
  wire \regs[0][15]_i_1_n_0 ;
  wire \regs[0][23]_i_1_n_0 ;
  wire \regs[0][31]_i_1_n_0 ;
  wire \regs[0][7]_i_1_n_0 ;
  wire \regs[2][15]_i_1_n_0 ;
  wire \regs[2][23]_i_1_n_0 ;
  wire \regs[2][31]_i_1_n_0 ;
  wire \regs[2][7]_i_1_n_0 ;
  wire [31:16]\regs_reg[0] ;
  wire [31:0]\regs_reg[2] ;
  wire [31:0]\regs_reg[3] ;
  wire [15:0]sw;
  wire [15:0]sw_s1;
  wire [15:0]sw_s2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    axi_arready_i_1
       (.I0(axi_arready_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(axi_rvalid_reg_0),
        .I3(S_AXI_ARESETN),
        .O(axi_arready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    axi_awready_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(axi_awready_reg_0),
        .I3(axi_bvalid_reg_0),
        .I4(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00004000FF004000)) 
    axi_bvalid_i_1
       (.I0(axi_awready_reg_0),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_ARESETN),
        .I4(axi_bvalid_reg_0),
        .I5(S_AXI_BREADY),
        .O(axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[0]_i_1 
       (.I0(\regs_reg[3] [0]),
        .I1(sw_s2[0]),
        .I2(\regs_reg[2] [0]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[0]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[0]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[10]_i_1 
       (.I0(\regs_reg[3] [10]),
        .I1(sw_s2[10]),
        .I2(\regs_reg[2] [10]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[10]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[10]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[11]_i_1 
       (.I0(\regs_reg[3] [11]),
        .I1(sw_s2[11]),
        .I2(\regs_reg[2] [11]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[11]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[11]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[12]_i_1 
       (.I0(\regs_reg[3] [12]),
        .I1(sw_s2[12]),
        .I2(\regs_reg[2] [12]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[12]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[12]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[13]_i_1 
       (.I0(\regs_reg[3] [13]),
        .I1(sw_s2[13]),
        .I2(\regs_reg[2] [13]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[13]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[13]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[14]_i_1 
       (.I0(\regs_reg[3] [14]),
        .I1(sw_s2[14]),
        .I2(\regs_reg[2] [14]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[14]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_rdata[15]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[15]_i_2 
       (.I0(\regs_reg[3] [15]),
        .I1(sw_s2[15]),
        .I2(\regs_reg[2] [15]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[15]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[15]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[16]_i_1 
       (.I0(\regs_reg[3] [16]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [16]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [16]),
        .O(axi_rdata0_in[16]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[17]_i_1 
       (.I0(\regs_reg[3] [17]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [17]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [17]),
        .O(axi_rdata0_in[17]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[18]_i_1 
       (.I0(\regs_reg[3] [18]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [18]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [18]),
        .O(axi_rdata0_in[18]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[19]_i_1 
       (.I0(\regs_reg[3] [19]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [19]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [19]),
        .O(axi_rdata0_in[19]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[1]_i_1 
       (.I0(\regs_reg[3] [1]),
        .I1(sw_s2[1]),
        .I2(\regs_reg[2] [1]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[1]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[20]_i_1 
       (.I0(\regs_reg[3] [20]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [20]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [20]),
        .O(axi_rdata0_in[20]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[21]_i_1 
       (.I0(\regs_reg[3] [21]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [21]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [21]),
        .O(axi_rdata0_in[21]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[22]_i_1 
       (.I0(\regs_reg[3] [22]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [22]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [22]),
        .O(axi_rdata0_in[22]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[23]_i_1 
       (.I0(\regs_reg[3] [23]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [23]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [23]),
        .O(axi_rdata0_in[23]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[24]_i_1 
       (.I0(\regs_reg[3] [24]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [24]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [24]),
        .O(axi_rdata0_in[24]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_1 
       (.I0(\regs_reg[3] [25]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [25]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [25]),
        .O(axi_rdata0_in[25]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_1 
       (.I0(\regs_reg[3] [26]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [26]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [26]),
        .O(axi_rdata0_in[26]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_1 
       (.I0(\regs_reg[3] [27]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [27]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [27]),
        .O(axi_rdata0_in[27]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_1 
       (.I0(\regs_reg[3] [28]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [28]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [28]),
        .O(axi_rdata0_in[28]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_1 
       (.I0(\regs_reg[3] [29]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [29]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [29]),
        .O(axi_rdata0_in[29]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[2]_i_1 
       (.I0(\regs_reg[3] [2]),
        .I1(sw_s2[2]),
        .I2(\regs_reg[2] [2]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[2]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_1 
       (.I0(\regs_reg[3] [30]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [30]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [30]),
        .O(axi_rdata0_in[30]));
  LUT6 #(
    .INIT(64'h5555555555755555)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_ARADDR[1]),
        .I2(S_AXI_ARADDR[0]),
        .I3(axi_arready_reg_0),
        .I4(S_AXI_ARVALID),
        .I5(axi_rvalid_reg_0),
        .O(axi_rdata));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_rdata[31]_i_2 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(axi_arready_reg_0),
        .O(axi_arready0));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[31]_i_3 
       (.I0(\regs_reg[3] [31]),
        .I1(S_AXI_ARADDR[0]),
        .I2(\regs_reg[2] [31]),
        .I3(S_AXI_ARADDR[1]),
        .I4(\regs_reg[0] [31]),
        .O(axi_rdata0_in[31]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[3]_i_1 
       (.I0(\regs_reg[3] [3]),
        .I1(sw_s2[3]),
        .I2(\regs_reg[2] [3]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[3]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[3]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[4]_i_1 
       (.I0(\regs_reg[3] [4]),
        .I1(sw_s2[4]),
        .I2(\regs_reg[2] [4]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[4]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[4]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[5]_i_1 
       (.I0(\regs_reg[3] [5]),
        .I1(sw_s2[5]),
        .I2(\regs_reg[2] [5]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[5]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[5]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[6]_i_1 
       (.I0(\regs_reg[3] [6]),
        .I1(sw_s2[6]),
        .I2(\regs_reg[2] [6]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[6]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[6]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[7]_i_1 
       (.I0(\regs_reg[3] [7]),
        .I1(sw_s2[7]),
        .I2(\regs_reg[2] [7]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[7]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[7]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[8]_i_1 
       (.I0(\regs_reg[3] [8]),
        .I1(sw_s2[8]),
        .I2(\regs_reg[2] [8]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[8]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[8]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[9]_i_1 
       (.I0(\regs_reg[3] [9]),
        .I1(sw_s2[9]),
        .I2(\regs_reg[2] [9]),
        .I3(S_AXI_ARADDR[1]),
        .I4(gpio_out[9]),
        .I5(S_AXI_ARADDR[0]),
        .O(axi_rdata0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[0]),
        .Q(S_AXI_RDATA[0]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[10]),
        .Q(S_AXI_RDATA[10]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[11]),
        .Q(S_AXI_RDATA[11]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[12]),
        .Q(S_AXI_RDATA[12]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[13]),
        .Q(S_AXI_RDATA[13]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[14]),
        .Q(S_AXI_RDATA[14]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[15]),
        .Q(S_AXI_RDATA[15]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[16]),
        .Q(S_AXI_RDATA[16]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[17]),
        .Q(S_AXI_RDATA[17]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[18]),
        .Q(S_AXI_RDATA[18]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[19]),
        .Q(S_AXI_RDATA[19]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[1]),
        .Q(S_AXI_RDATA[1]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[20]),
        .Q(S_AXI_RDATA[20]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[21]),
        .Q(S_AXI_RDATA[21]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[22]),
        .Q(S_AXI_RDATA[22]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[23]),
        .Q(S_AXI_RDATA[23]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[24]),
        .Q(S_AXI_RDATA[24]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[25]),
        .Q(S_AXI_RDATA[25]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[26]),
        .Q(S_AXI_RDATA[26]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[27]),
        .Q(S_AXI_RDATA[27]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[28]),
        .Q(S_AXI_RDATA[28]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[29]),
        .Q(S_AXI_RDATA[29]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[2]),
        .Q(S_AXI_RDATA[2]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[30]),
        .Q(S_AXI_RDATA[30]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[31]),
        .Q(S_AXI_RDATA[31]),
        .R(axi_rdata));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[3]),
        .Q(S_AXI_RDATA[3]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[4]),
        .Q(S_AXI_RDATA[4]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[5]),
        .Q(S_AXI_RDATA[5]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[6]),
        .Q(S_AXI_RDATA[6]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[7]),
        .Q(S_AXI_RDATA[7]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[8]),
        .Q(S_AXI_RDATA[8]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(axi_rdata0_in[9]),
        .Q(S_AXI_RDATA[9]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0020F020)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(axi_arready_reg_0),
        .I2(S_AXI_ARESETN),
        .I3(axi_rvalid_reg_0),
        .I4(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \regs[0][15]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[1]),
        .I2(S_AXI_AWADDR[1]),
        .I3(S_AXI_AWADDR[0]),
        .O(\regs[0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \regs[0][15]_i_2 
       (.I0(axi_bvalid_reg_0),
        .I1(axi_awready_reg_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_awready0));
  LUT4 #(
    .INIT(16'h0008)) 
    \regs[0][23]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[2]),
        .I2(S_AXI_AWADDR[1]),
        .I3(S_AXI_AWADDR[0]),
        .O(\regs[0][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \regs[0][31]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[3]),
        .I2(S_AXI_AWADDR[1]),
        .I3(S_AXI_AWADDR[0]),
        .O(\regs[0][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \regs[0][7]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[0]),
        .I2(S_AXI_AWADDR[1]),
        .I3(S_AXI_AWADDR[0]),
        .O(\regs[0][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \regs[2][15]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[1]),
        .I2(S_AXI_AWADDR[0]),
        .I3(S_AXI_AWADDR[1]),
        .O(\regs[2][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \regs[2][23]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[2]),
        .I2(S_AXI_AWADDR[0]),
        .I3(S_AXI_AWADDR[1]),
        .O(\regs[2][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \regs[2][31]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[3]),
        .I2(S_AXI_AWADDR[0]),
        .I3(S_AXI_AWADDR[1]),
        .O(\regs[2][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \regs[2][7]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[0]),
        .I2(S_AXI_AWADDR[0]),
        .I3(S_AXI_AWADDR[1]),
        .O(\regs[2][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \regs[3][15]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[1]),
        .I2(S_AXI_AWADDR[1]),
        .I3(S_AXI_AWADDR[0]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \regs[3][23]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[2]),
        .I2(S_AXI_AWADDR[1]),
        .I3(S_AXI_AWADDR[0]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \regs[3][31]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[3]),
        .I2(S_AXI_AWADDR[1]),
        .I3(S_AXI_AWADDR[0]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \regs[3][7]_i_1 
       (.I0(axi_awready0),
        .I1(S_AXI_WSTRB[0]),
        .I2(S_AXI_AWADDR[1]),
        .I3(S_AXI_AWADDR[0]),
        .O(p_1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(gpio_out[0]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(gpio_out[10]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(gpio_out[11]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(gpio_out[12]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(gpio_out[13]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(gpio_out[14]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(gpio_out[15]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][16] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\regs_reg[0] [16]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][17] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\regs_reg[0] [17]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][18] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\regs_reg[0] [18]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][19] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\regs_reg[0] [19]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(gpio_out[1]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][20] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\regs_reg[0] [20]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][21] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\regs_reg[0] [21]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][22] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\regs_reg[0] [22]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][23] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\regs_reg[0] [23]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][24] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\regs_reg[0] [24]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][25] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\regs_reg[0] [25]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][26] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\regs_reg[0] [26]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][27] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\regs_reg[0] [27]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][28] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\regs_reg[0] [28]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][29] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\regs_reg[0] [29]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(gpio_out[2]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][30] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\regs_reg[0] [30]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][31] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\regs_reg[0] [31]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(gpio_out[3]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(gpio_out[4]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(gpio_out[5]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(gpio_out[6]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(gpio_out[7]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(gpio_out[8]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(\regs[0][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(gpio_out[9]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\regs_reg[2] [0]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][10] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\regs_reg[2] [10]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][11] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\regs_reg[2] [11]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][12] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\regs_reg[2] [12]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][13] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\regs_reg[2] [13]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][14] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\regs_reg[2] [14]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][15] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\regs_reg[2] [15]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][16] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\regs_reg[2] [16]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][17] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\regs_reg[2] [17]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][18] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\regs_reg[2] [18]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][19] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\regs_reg[2] [19]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\regs_reg[2] [1]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][20] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\regs_reg[2] [20]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][21] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\regs_reg[2] [21]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][22] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\regs_reg[2] [22]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][23] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\regs_reg[2] [23]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][24] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\regs_reg[2] [24]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][25] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\regs_reg[2] [25]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][26] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\regs_reg[2] [26]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][27] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\regs_reg[2] [27]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][28] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\regs_reg[2] [28]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][29] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\regs_reg[2] [29]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\regs_reg[2] [2]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][30] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\regs_reg[2] [30]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][31] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\regs_reg[2] [31]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\regs_reg[2] [3]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][4] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\regs_reg[2] [4]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][5] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\regs_reg[2] [5]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][6] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\regs_reg[2] [6]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][7] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\regs_reg[2] [7]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][8] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\regs_reg[2] [8]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[2][9] 
       (.C(S_AXI_ACLK),
        .CE(\regs[2][15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\regs_reg[2] [9]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[0]),
        .Q(\regs_reg[3] [0]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][10] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[10]),
        .Q(\regs_reg[3] [10]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][11] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[11]),
        .Q(\regs_reg[3] [11]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][12] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[12]),
        .Q(\regs_reg[3] [12]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][13] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[13]),
        .Q(\regs_reg[3] [13]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][14] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[14]),
        .Q(\regs_reg[3] [14]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][15] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[15]),
        .Q(\regs_reg[3] [15]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][16] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[16]),
        .Q(\regs_reg[3] [16]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][17] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[17]),
        .Q(\regs_reg[3] [17]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][18] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[18]),
        .Q(\regs_reg[3] [18]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][19] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[19]),
        .Q(\regs_reg[3] [19]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[1]),
        .Q(\regs_reg[3] [1]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][20] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[20]),
        .Q(\regs_reg[3] [20]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][21] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[21]),
        .Q(\regs_reg[3] [21]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][22] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[22]),
        .Q(\regs_reg[3] [22]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][23] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[23]),
        .Q(\regs_reg[3] [23]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][24] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[24]),
        .Q(\regs_reg[3] [24]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][25] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[25]),
        .Q(\regs_reg[3] [25]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][26] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[26]),
        .Q(\regs_reg[3] [26]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][27] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[27]),
        .Q(\regs_reg[3] [27]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][28] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[28]),
        .Q(\regs_reg[3] [28]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][29] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[29]),
        .Q(\regs_reg[3] [29]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][2] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[2]),
        .Q(\regs_reg[3] [2]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][30] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[30]),
        .Q(\regs_reg[3] [30]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][31] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[31]),
        .Q(\regs_reg[3] [31]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][3] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[3]),
        .Q(\regs_reg[3] [3]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][4] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[4]),
        .Q(\regs_reg[3] [4]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][5] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[5]),
        .Q(\regs_reg[3] [5]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][6] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[6]),
        .Q(\regs_reg[3] [6]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][7] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[7]),
        .Q(\regs_reg[3] [7]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][8] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[8]),
        .Q(\regs_reg[3] [8]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_reg[3][9] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[9]),
        .Q(\regs_reg[3] [9]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[0]),
        .Q(sw_s1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[10]),
        .Q(sw_s1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[11]),
        .Q(sw_s1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[12]),
        .Q(sw_s1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[13]),
        .Q(sw_s1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[14]),
        .Q(sw_s1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[15]),
        .Q(sw_s1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[1]),
        .Q(sw_s1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[2]),
        .Q(sw_s1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[3]),
        .Q(sw_s1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[4]),
        .Q(sw_s1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[5]),
        .Q(sw_s1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[6]),
        .Q(sw_s1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[7]),
        .Q(sw_s1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[8]),
        .Q(sw_s1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw[9]),
        .Q(sw_s1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[0]),
        .Q(sw_s2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[10]),
        .Q(sw_s2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[11]),
        .Q(sw_s2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[12]),
        .Q(sw_s2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[13]),
        .Q(sw_s2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[14]),
        .Q(sw_s2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[15]),
        .Q(sw_s2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[1]),
        .Q(sw_s2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[2]),
        .Q(sw_s2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[3]),
        .Q(sw_s2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[4]),
        .Q(sw_s2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[5]),
        .Q(sw_s2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[6]),
        .Q(sw_s2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[7]),
        .Q(sw_s2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[8]),
        .Q(sw_s2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_s2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(sw_s1[9]),
        .Q(sw_s2[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_lite_gpio_v1_0_0_0,axi_lite_gpio_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axi_lite_gpio_v1_0,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    gpio_out,
    sw);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_mode = "slave S_AXI_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_Clk, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_mode = "slave S_AXI_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  output [15:0]gpio_out;
  input [15:0]sw;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [15:0]gpio_out;
  wire [15:0]sw;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_WREADY = S_AXI_AWREADY;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_gpio_v1_0 U0
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:2]),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_bvalid_reg_0(S_AXI_BVALID),
        .axi_rvalid_reg_0(S_AXI_RVALID),
        .gpio_out(gpio_out),
        .sw(sw));
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
