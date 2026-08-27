vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_12
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_12 questa_lib/msim/blk_mem_gen_v8_4_12
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_12  -incr -mfcu  "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"../../../../../Design/design_2/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"../../../bd/design_2/ip/design_2_blk_mem_gen_0_0/sim/design_2_blk_mem_gen_0_0.v" \
"../../../bd/design_2/ip/design_2_blk_mem_gen_1_0/sim/design_2_blk_mem_gen_1_0.v" \
"../../../bd/design_2/ip/design_2_matchedfilter_0_0/sim/design_2_matchedfilter_0_0.v" \
"../../../bd/design_2/ip/design_2_mem_interface_0_0/sim/design_2_mem_interface_0_0.v" \
"../../../bd/design_2/ip/design_2_mem_interface_1_0/sim/design_2_mem_interface_1_0.v" \
"../../../bd/design_2/sim/design_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

