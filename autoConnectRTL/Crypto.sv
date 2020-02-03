//===========================================================================
// Author : 
// Module : Crypto
//===========================================================================

module Crypto  (
   input    clk ,
   input    rst_n ,
   input   [127:0] RdData ,
   output   RdEn ,
   output  [11:0] RdAddr ,
   output  [127:0] WrData ,
   output   WrEn ,
   output  [11:0] WrAddr 
) ;

//=======START DECLARING WIRES ================================================//

//=======FINISH DECLARING WIRES ===============================================//

`include "Crypto_lib.svh"


endmodule
