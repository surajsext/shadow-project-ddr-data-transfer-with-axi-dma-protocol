# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\shadow_project_dma\shadow_dma_1\shadow_dma_vitis\shawdo_dma_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\shadow_project_dma\shadow_dma_1\shadow_dma_vitis\shawdo_dma_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {shawdo_dma_platform}\
-hw {D:\shadow_project_dma\shadow_dma_1\shadow_dma_vitis\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {D:/shadow_project_dma/shadow_dma_1/shadow_dma_vitis}

platform write
platform generate -domains 
platform active {shawdo_dma_platform}
platform generate
platform active {shawdo_dma_platform}
platform generate
