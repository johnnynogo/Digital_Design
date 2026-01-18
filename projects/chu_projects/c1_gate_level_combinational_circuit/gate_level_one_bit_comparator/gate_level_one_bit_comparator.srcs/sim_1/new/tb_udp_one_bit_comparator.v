`timescale 1ns / 1ps

module tb_udp_one_bit_comparator;
    reg i0, i1;
    wire eq;
    
    udp_one_bit_comparator uut (eq, i0, i1);
    
    initial begin
        $display("T\ti0\ti1\teq");
        $display("-------------------__");
        $monitor("%0t\t%b\t%b\t%b", $time, i0, i1, eq);
        
        i0=0; i1=0; #10;
        i0=0; i1=1; #10;
        i0=1; i1=0; #10;
        i0=1; i1=1; #10;
        
        #10;
        $display("\nSimulation complete!");
        $finish;
    end 
endmodule
