##############################################################################
#  build_mlp_only.tcl — Rebuild MLP bitstream only (area-reduced IP)
##############################################################################

set SCRIPT_DIR  [file dirname [file normalize [info script]]]
set IP_REPO     [file normalize "$SCRIPT_DIR/../hls/ip_repo"]
set OUT_DIR     [file normalize "$SCRIPT_DIR/output"]
set PART        xc7z020clg400-1
set accel_name  mlp_accel

file mkdir $OUT_DIR

set proj_name  "${accel_name}_overlay"
set proj_dir   "$SCRIPT_DIR/$proj_name"
set bd_name    "design_1"

puts "============================================================"
puts " Building bitstream for: $accel_name (area-reduced)"
puts "============================================================"

create_project $proj_name $proj_dir -part $PART -force
set_property target_language Verilog [current_project]
set_property ip_repo_paths $IP_REPO [current_project]
update_ip_catalog

create_bd_design $bd_name

set ps [create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0]
set_property -dict [list \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
    CONFIG.PCW_USE_M_AXI_GP0            {1} \
    CONFIG.PCW_USE_S_AXI_HP0            {1} \
    CONFIG.PCW_PRESET_BANK0_VOLTAGE     {LVCMOS 3.3V} \
    CONFIG.PCW_PRESET_BANK1_VOLTAGE     {LVCMOS 1.8V} \
    CONFIG.PCW_UIPARAM_DDR_PARTNO       {MT41K256M16 RE-125} \
    CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ     {525} \
    CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {50} \
    CONFIG.PCW_QSPI_PERIPHERAL_ENABLE   {1} \
    CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
    CONFIG.PCW_SD0_PERIPHERAL_ENABLE     {1} \
    CONFIG.PCW_SD0_GRP_CD_ENABLE         {1} \
    CONFIG.PCW_SD0_GRP_CD_IO             {MIO 47} \
    CONFIG.PCW_UART1_PERIPHERAL_ENABLE   {1} \
    CONFIG.PCW_USB0_PERIPHERAL_ENABLE    {1} \
    CONFIG.PCW_ENET0_PERIPHERAL_ENABLE   {1} \
    CONFIG.PCW_ENET0_ENET0_IO            {MIO 16 .. 27} \
    CONFIG.PCW_ENET0_GRP_MDIO_ENABLE     {1} \
    CONFIG.PCW_GPIO_MIO_GPIO_ENABLE      {1} \
    CONFIG.PCW_TTC0_PERIPHERAL_ENABLE    {1} \
] $ps

apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
    -config {make_external "FIXED_IO, DDR" Master "Disable" Slave "Disable"} $ps

set hls_ip [create_bd_cell -type ip -vlnv xilinx.com:hls:${accel_name}:1.0 ${accel_name}_0]

set dma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0]
set_property -dict [list \
    CONFIG.c_include_sg              {0} \
    CONFIG.c_sg_include_stmm_pktr    {0} \
    CONFIG.c_sg_length_width         {23} \
    CONFIG.c_m_axi_mm2s_data_width   {32} \
    CONFIG.c_m_axis_mm2s_tdata_width {32} \
    CONFIG.c_m_axi_s2mm_data_width   {32} \
    CONFIG.c_s_axis_s2mm_tdata_width {32} \
] $dma

connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] \
                    [get_bd_intf_pins ${accel_name}_0/in_stream]
connect_bd_intf_net [get_bd_intf_pins ${accel_name}_0/out_stream] \
                    [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 \
    -config {Master "/processing_system7_0/M_AXI_GP0" \
             intc_ip "New AXI Interconnect" \
             Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto"} \
    [get_bd_intf_pins ${accel_name}_0/s_axi_control]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 \
    -config {Master "/processing_system7_0/M_AXI_GP0" \
             intc_ip "/ps7_0_axi_periph" \
             Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto"} \
    [get_bd_intf_pins axi_dma_0/S_AXI_LITE]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 \
    -config {Master "/axi_dma_0/M_AXI_MM2S" \
             intc_ip "New AXI Interconnect" \
             Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto"} \
    [get_bd_intf_pins processing_system7_0/S_AXI_HP0]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 \
    -config {Master "/axi_dma_0/M_AXI_S2MM" \
             intc_ip "/axi_mem_intercon" \
             Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto"} \
    [get_bd_intf_pins processing_system7_0/S_AXI_HP0]

validate_bd_design
save_bd_design

set bd_file "$proj_dir/$proj_name.srcs/sources_1/bd/$bd_name/$bd_name.bd"
generate_target all [get_files $bd_file]

make_wrapper -files [get_files $bd_file] -top
add_files -norecurse "$proj_dir/$proj_name.gen/sources_1/bd/$bd_name/hdl/${bd_name}_wrapper.v"
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 4
wait_on_run synth_1
set synth_status [get_property STATUS [get_runs synth_1]]
puts "  Synth status: $synth_status"
if {$synth_status ne "synth_design Complete!"} {
    puts "ERROR: Synthesis failed — $synth_status"
    close_project
    exit 1
}

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
set impl_status [get_property STATUS [get_runs impl_1]]
puts "  Impl status: $impl_status"
if {$impl_status ne "write_bitstream Complete!"} {
    puts "ERROR: Implementation failed — $impl_status"
    close_project
    exit 1
}

set bit_file "$proj_dir/$proj_name.runs/impl_1/${bd_name}_wrapper.bit"
set hwh_files [glob -nocomplain "$proj_dir/$proj_name.gen/sources_1/bd/$bd_name/hw_handoff/*.hwh"]

if {[file exists $bit_file]} {
    file copy -force $bit_file "$OUT_DIR/${accel_name}.bit"
    puts "  -> Bitstream: $OUT_DIR/${accel_name}.bit"
}
if {[llength $hwh_files] > 0} {
    file copy -force [lindex $hwh_files 0] "$OUT_DIR/${accel_name}.hwh"
    puts "  -> HW handoff: $OUT_DIR/${accel_name}.hwh"
}

close_project
puts " DONE: $accel_name (area-reduced)"
