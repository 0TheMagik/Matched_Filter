# Matched Filter

This repository contains an implementation of the matched filter algorithm using HDL VHDL and Verilog. Matched Filter algorithm is used to find a known reference signal in an unknown signal. Matched filter worked by maximizing the output signal SNR to find the known reference signal in the unknown signal. Matched filter algotithm is usually used in radar signal processing to find a reference signal on objects that reflect that reference signal, this is used because their reflections also carry a noise signal that make it harder to find the reference signal.

- Matched Filter Algorithm:
$$
y[n] = \sum_{k = -\infin}^{\infin} h[n-k]x[k]
$$

## Dependency
- Microphase Z7Lite (Xilinx Zynq-7010) board files for hardware target.  
Download  board file [Here](https://github.com/leecurrent04/MicroPhase-Z7-Lite-Board)

## File Component
There are 2 version of the implementation:
- VHDL : [matchedfilter.vhd](SRC/VHDL/matchedfilter.vhd)
- Verilog : [matchedfilter_verilog.v](SRC/Verilog/matchedfilter_verilog.v)

both are the same algorithm with 3 customizeable parameter. Costumizeable parameter:
- DATA_SIZE  
    bit size of the signal ie. 16 bit"ffff", 8 bit "ff", etc
- REF_LENGTH  
    Reference/Known signal length .
- RET_LENGTH  
    Return signal/unknown signal that will be detected (can be the same amount as REF_LENGTH or different depending on the usage).

## Implementation
The implementation used a shift register to do calculation. every received signal is shifted through the `RET_LENGTH` amount of register. After shift operation each of the register then multiplied and summed up with the reference signal. The signal then is output in 64-bit signed decimal format.

## Test Bench
Testing done using a matlab generated signal. Matlab signal is then exported to `.coe` and `.hex` files. `.coe` files is used for BRAM initialization. `.hex` is used in the test bench by feeding it to the input of the matched filter.


***Test bench is only available in the verilog version.**