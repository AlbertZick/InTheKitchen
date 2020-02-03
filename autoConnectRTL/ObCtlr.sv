//===========================================================================
// Author : 
// Module : ObCtlr
//===========================================================================

module ObCtlr  (
   input    clk ,
   input    rst_n ,
   input   [7:0] DataValid ,
   output  [7:0] RamValid ,
   input   [127:0] RdData ,
   output   RdEn ,
   output  [11:0] RdAddr ,
   output  [3:0] usr_irq_req ,
   input   [3:0] usr_irq_ack ,
   input    msi_enable ,
   input   [2:0] msi_vector_width ,
   output  [63:0] s_axis_c2h_tdata_0 ,
   output   s_axis_c2h_tlast_0 ,
   output   s_axis_c2h_tvalid_0 ,
   input    s_axis_c2h_tready_0 ,
   output  [7:0] s_axis_c2h_tkeep_0 
) ;

//=======START DECLARING WIRES ================================================//

//=======FINISH DECLARING WIRES ===============================================//

`include "ObCtlr_lib.svh"


endmodule
