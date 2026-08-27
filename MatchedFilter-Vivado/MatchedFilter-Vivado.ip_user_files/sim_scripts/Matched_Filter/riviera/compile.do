transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_12
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_12 riviera/blk_mem_gen_v8_4_12
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_12 -l xil_defaultlib \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_12  -incr -v2k5 "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_12 -l xil_defaultlib \
"../../../../../Design/Matched_Filter/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_12 -l xil_defaultlib \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_blk_mem_gen_0_0/sim/Matched_Filter_blk_mem_gen_0_0.v" \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_blk_mem_gen_1_0/sim/Matched_Filter_blk_mem_gen_1_0.v" \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_mem_interface_0_0/sim/Matched_Filter_mem_interface_0_0.v" \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_mem_interface_1_0/sim/Matched_Filter_mem_interface_1_0.v" \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_matchedfilter_0_0/sim/Matched_Filter_matchedfilter_0_0.v" \
"../../../../../Design/Matched_Filter/sim/Matched_Filter.v" \

vlog -work xil_defaultlib \
"glbl.v"

