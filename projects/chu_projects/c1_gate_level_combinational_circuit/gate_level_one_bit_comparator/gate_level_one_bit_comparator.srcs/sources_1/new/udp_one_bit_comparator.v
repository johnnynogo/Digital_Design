`timescale 1ns / 1ps

primitive udp_one_bit_comparator(eq, i0, i1);
    output eq;
    input i0, i1;
    
    table 
        // i0 i1 : eq
        0 0 : 1;
        0 1 : 0;
        1 0 : 0;
        1 1 : 1;
    endtable
endprimitive
