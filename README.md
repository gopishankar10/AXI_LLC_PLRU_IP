# axi_llc_plru_ip
Original axi_llc_plru files as a standalone IP (for trace tests)

# For Utilisation/Timing Analysis of IP on VIVADO
We have to force all SRAMs to BRAMs for Utilisation/Timing Analysis of IP. Follow the steps below to achieve this
- include the "tc_sram_xilinx.sv" file from the following repository (https://github.com/pulp-platform/tech_cells_generic.git) into the source folder
- change the file name to "tc_sram" (remove the old "tc_sram" file)

