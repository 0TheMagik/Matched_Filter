// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Aug 27 13:34:51 2026
// Host        : OCPCBench running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/VsCode_Files/Matched_Filter/Design/design_2/ip/design_2_blk_mem_gen_1_0/design_2_blk_mem_gen_1_0_sim_netlist.v
// Design      : design_2_blk_mem_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_blk_mem_gen_1_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_2_blk_mem_gen_1_0
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
  design_2_blk_mem_gen_1_0_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26960)
`pragma protect data_block
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
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
