// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Aug 27 13:34:50 2026
// Host        : OCPCBench running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_blk_mem_gen_1_0_sim_netlist.v
// Design      : design_2_blk_mem_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_blk_mem_gen_1_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.6745 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "design_2_blk_mem_gen_1_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26848)
`pragma protect data_block
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
Dw==
`pragma protect end_protected
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
