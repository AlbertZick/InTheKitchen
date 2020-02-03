//===========================================================================
// Author : 
// Module : PcieTop
//===========================================================================

module PcieTop  (
   input    sys_clk_p ,
   input    sys_clk_n ,
   input    sys_rst_n ,
   output  [3:0] pci_exp_txp ,
   output  [3:0] pci_exp_txn ,
   input   [3:0] pci_exp_rxp ,
   input   [3:0] pci_exp_rxn 
) ;

//=======START DECLARING WIRES ================================================//
wire  sys_clk ;
wire  sys_rst_n_c ;
wire  user_lnk_up ;
wire  axi_aclk ;
wire  axi_aresetn ;
wire [3:0] usr_irq_req ;
wire [3:0] usr_irq_ack ;
wire  msi_enable ;
wire [2:0] msi_vector_width ;
wire [18:0] cfg_mgmt_addr ;
wire  cfg_mgmt_write ;
wire [31:0] cfg_mgmt_write_data ;
wire [3:0] cfg_mgmt_byte_enable ;
wire  cfg_mgmt_read ;
wire [31:0] cfg_mgmt_read_data ;
wire  cfg_mgmt_read_write_done ;
wire  cfg_mgmt_type1_cfg_reg_access ;
wire [63:0] s_axis_c2h_tdata_0 ;
wire  s_axis_c2h_tlast_0 ;
wire  s_axis_c2h_tvalid_0 ;
wire  s_axis_c2h_tready_0 ;
wire [7:0] s_axis_c2h_tkeep_0 ;
wire [63:0] m_axis_h2c_tdata_0 ;
wire  m_axis_h2c_tlast_0 ;
wire  m_axis_h2c_tvalid_0 ;
wire  m_axis_h2c_tready_0 ;
wire [7:0] m_axis_h2c_tkeep_0 ;
wire [7:0] IbDataValid ;
wire [7:0] IbRamValid ;
wire [127:0] IbWrData ;
wire  IbWrEn ;
wire [11:0] IbWrAddr ;
wire [7:0] ObDataValid ;
wire [7:0] ObRamValid ;
wire [127:0] ObRdData ;
wire  ObRdEn ;
wire [11:0] ObRdAddr ;
wire [127:0] IbRdData ;
wire  IbRdEn ;
wire [11:0] IbRdAddr ;
wire [127:0] ObWrData ;
wire  ObWrEn ;
wire [11:0] ObWrAddr ;

//=======FINISH DECLARING WIRES ===============================================//

IBUFDS_GTE2  IBUFDS_GTE2 (
   .O ( sys_clk ) ,
   .ODIV2 (  ) ,
   .CEB ( 1'b0 ) ,
   .I ( sys_clk_p ) ,
   .IB ( sys_clk_n ) 
) ;

IBUF  IBUF (
   .O ( sys_rst_n_c ) ,
   .I ( sys_rst_n ) 
) ;

xdma_0  xdma_0 (
   .sys_clk ( sys_clk ) ,
   .sys_rst_n ( sys_rst_n_c ) ,
   .user_lnk_up ( user_lnk_up ) ,
   .pci_exp_txp ( pci_exp_txp ) ,
   .pci_exp_txn ( pci_exp_txn ) ,
   .pci_exp_rxp ( pci_exp_rxp ) ,
   .pci_exp_rxn ( pci_exp_rxn ) ,
   .axi_aclk ( axi_aclk ) ,
   .axi_aresetn ( axi_aresetn ) ,
   .usr_irq_req ( usr_irq_req ) ,
   .usr_irq_ack ( usr_irq_ack ) ,
   .msi_enable ( msi_enable ) ,
   .msi_vector_width ( msi_vector_width ) ,
   .cfg_mgmt_addr ( cfg_mgmt_addr ) ,
   .cfg_mgmt_write ( cfg_mgmt_write ) ,
   .cfg_mgmt_write_data ( cfg_mgmt_write_data ) ,
   .cfg_mgmt_byte_enable ( cfg_mgmt_byte_enable ) ,
   .cfg_mgmt_read ( cfg_mgmt_read ) ,
   .cfg_mgmt_read_data ( cfg_mgmt_read_data ) ,
   .cfg_mgmt_read_write_done ( cfg_mgmt_read_write_done ) ,
   .cfg_mgmt_type1_cfg_reg_access ( cfg_mgmt_type1_cfg_reg_access ) ,
   .s_axis_c2h_tdata_0 ( s_axis_c2h_tdata_0 ) ,
   .s_axis_c2h_tlast_0 ( s_axis_c2h_tlast_0 ) ,
   .s_axis_c2h_tvalid_0 ( s_axis_c2h_tvalid_0 ) ,
   .s_axis_c2h_tready_0 ( s_axis_c2h_tready_0 ) ,
   .s_axis_c2h_tkeep_0 ( s_axis_c2h_tkeep_0 ) ,
   .m_axis_h2c_tdata_0 ( m_axis_h2c_tdata_0 ) ,
   .m_axis_h2c_tlast_0 ( m_axis_h2c_tlast_0 ) ,
   .m_axis_h2c_tvalid_0 ( m_axis_h2c_tvalid_0 ) ,
   .m_axis_h2c_tready_0 ( m_axis_h2c_tready_0 ) ,
   .m_axis_h2c_tkeep_0 ( m_axis_h2c_tkeep_0 ) 
) ;

IbCtlr  IbCtlr (
   .clk ( axi_aclk ) ,
   .rst_n ( axi_aresetn ) ,
   .DataValid ( IbDataValid ) ,
   .RamValid ( IbRamValid ) ,
   .WrData ( IbWrData ) ,
   .WrEn ( IbWrEn ) ,
   .WrAddr ( IbWrAddr ) ,
   .cfg_mgmt_addr ( cfg_mgmt_addr ) ,
   .cfg_mgmt_write ( cfg_mgmt_write ) ,
   .cfg_mgmt_write_data ( cfg_mgmt_write_data ) ,
   .cfg_mgmt_byte_enable ( cfg_mgmt_byte_enable ) ,
   .cfg_mgmt_read ( cfg_mgmt_read ) ,
   .cfg_mgmt_read_data ( cfg_mgmt_read_data ) ,
   .cfg_mgmt_read_write_done ( cfg_mgmt_read_write_done ) ,
   .cfg_mgmt_type1_cfg_reg_access ( cfg_mgmt_type1_cfg_reg_access ) ,
   .m_axis_h2c_tdata_0 ( m_axis_h2c_tdata_0 ) ,
   .m_axis_h2c_tlast_0 ( m_axis_h2c_tlast_0 ) ,
   .m_axis_h2c_tvalid_0 ( m_axis_h2c_tvalid_0 ) ,
   .m_axis_h2c_tready_0 ( m_axis_h2c_tready_0 ) ,
   .m_axis_h2c_tkeep_0 ( m_axis_h2c_tkeep_0 ) 
) ;

ObCtlr  ObCtlr (
   .clk ( axi_aclk ) ,
   .rst_n ( axi_aresetn ) ,
   .DataValid ( ObDataValid ) ,
   .RamValid ( ObRamValid ) ,
   .RdData ( ObRdData ) ,
   .RdEn ( ObRdEn ) ,
   .RdAddr ( ObRdAddr ) ,
   .usr_irq_req ( usr_irq_req ) ,
   .usr_irq_ack ( usr_irq_ack ) ,
   .msi_enable ( msi_enable ) ,
   .msi_vector_width ( msi_vector_width ) ,
   .s_axis_c2h_tdata_0 ( s_axis_c2h_tdata_0 ) ,
   .s_axis_c2h_tlast_0 ( s_axis_c2h_tlast_0 ) ,
   .s_axis_c2h_tvalid_0 ( s_axis_c2h_tvalid_0 ) ,
   .s_axis_c2h_tready_0 ( s_axis_c2h_tready_0 ) ,
   .s_axis_c2h_tkeep_0 ( s_axis_c2h_tkeep_0 ) 
) ;

Mem  Mem (
   .clk ( axi_aclk ) ,
   .rst_n ( axi_aresetn ) ,
   .IbWrData ( IbWrData ) ,
   .IbWrEn ( IbWrEn ) ,
   .IbWrAddr ( IbWrAddr ) ,
   .IbRdData ( IbRdData ) ,
   .IbRdEn ( IbRdEn ) ,
   .IbRdAddr ( IbRdAddr ) ,
   .ObRdData ( ObRdData ) ,
   .ObRdEn ( ObRdEn ) ,
   .ObRdAddr ( ObRdAddr ) ,
   .ObWrData ( ObWrData ) ,
   .ObWrEn ( ObWrEn ) ,
   .ObWrAddr ( ObWrAddr ) 
) ;

Crypto  Crypto (
   .clk ( axi_aclk ) ,
   .rst_n ( axi_aresetn ) ,
   .RdData ( IbRdData ) ,
   .RdEn ( IbRdEn ) ,
   .RdAddr ( IbRdAddr ) ,
   .WrData ( ObWrData ) ,
   .WrEn ( ObWrEn ) ,
   .WrAddr ( ObWrAddr ) 
) ;

`include "PcieTop_lib.svh"


endmodule
