transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Matched_Filter  -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Matched_Filter xil_defaultlib.glbl

do {Matched_Filter.udo}

run 1000ns

endsim

quit -force
