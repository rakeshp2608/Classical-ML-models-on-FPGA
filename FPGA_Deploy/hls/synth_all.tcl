##############################################################################
#  synth_all.tcl — Vitis HLS synthesis for all 5 ML accelerator IPs
#
#  Usage:  cd FPGA_Deploy/hls
#          vitis_hls -f synth_all.tcl
#
#  Target: PYNQ Z2 (xc7z020clg400-1), 100 MHz (10 ns period)
##############################################################################

set HLS_ROOT [pwd]
set PART     xc7z020clg400-1
set PERIOD   10.0

set MODELS {knn_accel dt_accel rf_accel svm_accel mlp_accel}

foreach model $MODELS {
    puts "============================================================"
    puts " Synthesizing: $model"
    puts "============================================================"

    open_project ${model}_proj
    set_top $model

    # Add source — include common/ for headers and exp_lut_data.inc
    add_files ${HLS_ROOT}/${model}/src/${model}.cpp \
        -cflags "-I${HLS_ROOT}/common -I${HLS_ROOT}/${model}/src"

    open_solution "sol1" -flow_target vivado
    set_part $PART
    create_clock -period $PERIOD -name default

    # Synthesis
    csynth_design

    # Export as Vivado IP
    export_design -format ip_catalog -output ${HLS_ROOT}/ip_repo/${model}

    close_project
    puts " Done: $model"
    puts ""
}

puts "============================================================"
puts " All 5 IPs synthesized. IP catalog at: ip_repo/"
puts "============================================================"
