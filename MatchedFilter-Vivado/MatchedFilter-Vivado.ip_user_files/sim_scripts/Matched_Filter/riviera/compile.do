transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/blk_mem_gen_v8_4_12
vlib riviera/xil_defaultlib

vmap blk_mem_gen_v8_4_12 riviera/blk_mem_gen_v8_4_12
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work blk_mem_gen_v8_4_12  -incr -v2k5 "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l blk_mem_gen_v8_4_12 -l xil_defaultlib \
"../../../../../Design/Matched_Filter/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l blk_mem_gen_v8_4_12 -l xil_defaultlib \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_blk_mem_gen_0_0/sim/Matched_Filter_blk_mem_gen_0_0.v" \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_blk_mem_gen_1_0/sim/Matched_Filter_blk_mem_gen_1_0.v" \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_mem_interface_0_0/sim/Matched_Filter_mem_interface_0_0.v" \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_mem_interface_1_0/sim/Matched_Filter_mem_interface_1_0.v" \
"../../../../../Design/Matched_Filter/ip/Matched_Filter_matchedfilter_0_0/sim/Matched_Filter_matchedfilter_0_0.v" \
"../../../../../Design/Matched_Filter/sim/Matched_Filter.v" \

vlog -work xil_defaultlib \
"glbl.v"

