`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2026 12:30:20 PM
// Design Name: 
// Module Name: 1_bit_comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module one_bit_comparator
    (
     input wire i0, i1,
     output wire eq
    );
    
    wire p0, p1;
    
    assign eq = p0 | p1;
    assign p0 = ~i0 & ~i1;
    assign p1 = i0 & i1; 
endmodule
