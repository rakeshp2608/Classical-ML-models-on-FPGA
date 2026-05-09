open_project mlp_accel_proj
set_top mlp_accel
add_files mlp_accel/src/mlp_accel.cpp -cflags "-Icommon -Imlp_accel/src"
add_files mlp_accel/src/mlp_accel.h   -cflags "-Icommon"
open_solution "sol1" -flow_target vivado -reset
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output ip_repo/mlp_accel.zip
csynth_design
export_design
close_project
exit
