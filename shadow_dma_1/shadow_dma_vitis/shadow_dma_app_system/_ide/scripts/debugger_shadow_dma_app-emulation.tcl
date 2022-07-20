# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\shadow_project_dma\shadow_dma_1\shadow_dma_vitis\shadow_dma_app_system\_ide\scripts\debugger_shadow_dma_app-emulation.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\shadow_project_dma\shadow_dma_1\shadow_dma_vitis\shadow_dma_app_system\_ide\scripts\debugger_shadow_dma_app-emulation.tcl
# 
connect -url tcp:localhost:4359
targets 3
dow D:/shadow_project_dma/shadow_dma_1/shadow_dma_vitis/shadow_dma_app/Debug/shadow_dma_app.elf
targets 3
con
