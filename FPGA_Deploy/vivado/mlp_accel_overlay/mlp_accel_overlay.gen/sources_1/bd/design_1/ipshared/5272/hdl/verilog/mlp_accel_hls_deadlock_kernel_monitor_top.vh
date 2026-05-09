
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [7:0] axis_block_sigs;
wire [7:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~out_stream_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_mlp_accel_Pipeline_READ_FEAT_fu_1306.in_stream_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_mlp_accel_Pipeline_LOAD_W1_VITIS_LOOP_76_1_fu_1427.in_stream_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_mlp_accel_Pipeline_LOAD_B1_fu_1457.in_stream_TDATA_blk_n;
assign axis_block_sigs[4] = ~grp_mlp_accel_Pipeline_LOAD_W2_VITIS_LOOP_93_2_fu_1598.in_stream_TDATA_blk_n;
assign axis_block_sigs[5] = ~grp_mlp_accel_Pipeline_LOAD_B2_fu_1628.in_stream_TDATA_blk_n;
assign axis_block_sigs[6] = ~grp_mlp_accel_Pipeline_LOAD_WO_VITIS_LOOP_110_3_fu_1769.in_stream_TDATA_blk_n;
assign axis_block_sigs[7] = ~grp_mlp_accel_Pipeline_LOAD_BO_fu_1799.in_stream_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;
assign inst_idle_sigs[1] = grp_mlp_accel_Pipeline_READ_FEAT_fu_1306.ap_idle;
assign inst_idle_sigs[2] = grp_mlp_accel_Pipeline_LOAD_W1_VITIS_LOOP_76_1_fu_1427.ap_idle;
assign inst_idle_sigs[3] = grp_mlp_accel_Pipeline_LOAD_B1_fu_1457.ap_idle;
assign inst_idle_sigs[4] = grp_mlp_accel_Pipeline_LOAD_W2_VITIS_LOOP_93_2_fu_1598.ap_idle;
assign inst_idle_sigs[5] = grp_mlp_accel_Pipeline_LOAD_B2_fu_1628.ap_idle;
assign inst_idle_sigs[6] = grp_mlp_accel_Pipeline_LOAD_WO_VITIS_LOOP_110_3_fu_1769.ap_idle;
assign inst_idle_sigs[7] = grp_mlp_accel_Pipeline_LOAD_BO_fu_1799.ap_idle;

mlp_accel_hls_deadlock_idx0_monitor mlp_accel_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
