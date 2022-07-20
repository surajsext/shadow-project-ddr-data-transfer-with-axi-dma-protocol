# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\shadow_project_dma\shadow_dma_1\shadow_dma_vitis\shadow_dma_app_system\_ide\scripts\debugger_shadow_dma_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\shadow_project_dma\shadow_dma_1\shadow_dma_vitis\shadow_dma_app_system\_ide\scripts\debugger_shadow_dma_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT1 210203345868A" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT1-210203345868A-03727093-0"}
fpga -file D:/shadow_project_dma/shadow_dma_1/shadow_dma_vitis/shadow_dma_app/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/shadow_project_dma/shadow_dma_1/shadow_dma_vitis/shawdo_dma_platform/export/shawdo_dma_platform/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/shadow_project_dma/shadow_dma_1/shadow_dma_vitis/shadow_dma_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/shadow_project_dma/shadow_dma_1/shadow_dma_vitis/shadow_dma_app/Debug/shadow_dma_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
