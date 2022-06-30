install_dir=/home/matt/work/asic-workshop/shuttle6
caravel_dir_name=tapeout_100

export OPENLANE_IMAGE_NAME=efabless/openlane:2022.02.23_02.50.41
export PDK=sky130A

export PDK_ROOT=/home/matt/work/asic-workshop/shuttle6/pdk
export OPENLANE_ROOT=/home/matt/work/asic-workshop/shuttle6/openlane

export MGMT_AREA_ROOT=$install_dir/zero_to_asic_mpw6/mgmt_core_wrapper
export DESIGNS=$install_dir/$caravel_dir_name
export TARGET_PATH=$DESIGNS
export CARAVEL_ROOT=$DESIGNS/caravel 
export MCW_ROOT=$DESIGNS/mgmt_core_wrapper 
export CORE_VERILOG_PATH=$MCW_ROOT/verilog

export GCC_PATH=/opt/riscv64-unknown-elf-gcc-8.3.0-2020.04.1-x86_64-linux-ubuntu14/bin/ 
export GCC_PREFIX=riscv64-unknown-elf 
