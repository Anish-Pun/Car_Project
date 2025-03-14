# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Car\Car_Project\Ultrasoon\Vitis\xsaUltrasoon\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Car\Car_Project\Ultrasoon\Vitis\xsaUltrasoon\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {xsaUltrasoon}\
-hw {C:\Car\Car_Project\Ultrasoon\xsaUltrasoon.xsa}\
-out {C:/Car/Car_Project/Ultrasoon/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {xsaUltrasoon}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
bsp reload
bsp config stdin "ps7_uart_0"
bsp write
platform generate -domains 
platform generate -domains standalone_ps7_cortexa9_0 
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform clean
platform generate
platform clean
platform generate
platform generate
