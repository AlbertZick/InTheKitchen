//===========================================================================
// Author : 
// Module : Mem
//===========================================================================

module Mem  (
   input    clk ,
   input    rst_n ,
   input   [127:0] IbWrData ,
   input    IbWrEn ,
   input   [11:0] IbWrAddr ,
   output  [127:0] IbRdData ,
   input    IbRdEn ,
   input   [11:0] IbRdAddr ,
   output  [127:0] ObRdData ,
   input    ObRdEn ,
   input   [11:0] ObRdAddr ,
   input   [127:0] ObWrData ,
   input    ObWrEn ,
   input   [11:0] ObWrAddr 
) ;

//=======START DECLARING WIRES ================================================//

//=======FINISH DECLARING WIRES ===============================================//

`include "Mem_lib.svh"


endmodule
