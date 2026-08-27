// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Aug 27 13:34:50 2026
// Host        : OCPCBench running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_2_blk_mem_gen_0_0 -prefix
//               design_2_blk_mem_gen_0_0_ design_2_blk_mem_gen_1_0_sim_netlist.v
// Design      : design_2_blk_mem_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_blk_mem_gen_1_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_2_blk_mem_gen_0_0
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
  design_2_blk_mem_gen_0_0_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26672)
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
