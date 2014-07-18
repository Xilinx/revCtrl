set xs_aclk       [get_clocks -of_objects [get_ports s_aclk]]
#Independent BRAM FIFO constraints in MASTER INDEPENDENT mode - for AW,AR,W 
#read to write
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_aw_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_aw_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $xs_aclk]
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_ar_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_ar_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $xs_aclk]
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_w_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_w_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $xs_aclk]
#write to read
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_aw_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_aw_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only 10.0
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_ar_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_ar_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only 10.0
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_w_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_w_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only 10.0
#BRAM FIFO constraints in MASTER mode for R-FIFO - always in asynch mode
#read to write
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_r_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_r_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only 10.0 
#write to read
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_r_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_r_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $xs_aclk]

#Independent DIST RAM FIFO constraints in MASTER mode b fifo - always in asynch mode
#read to write
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only 10.0 
#write to read
set_max_delay -from [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $xs_aclk]

# Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO
#set_false_path -from [filter [get_pins -hierarchical -filter {NAME=~*/bufg_inst/O}] {IS_LEAF}] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]]
#set_false_path -from [filter [all_fanout -from [get_ports axi_c2c_selio_rx_clk_in] -flat -endpoints_only] {IS_LEAF}] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]]
#set_false_path -from [filter [all_fanout -from [get_pins master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_b_fifo_inst/wr_clk] -flat -endpoints_only] {IS_LEAF}] -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]]
set_false_path -to [get_cells master_fpga_gen.axi_chip2chip_master_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm*/gpr1.dout_i_reg[*]]





