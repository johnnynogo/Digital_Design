`timescale 1ns / 1ps

module tb_one_bit_comparator;
     reg i0, i1;
     wire eq;
     
     one_bit_comparator uut (
        .i0(i0),
        .i1(i1),
        .eq(eq)
     );
     
     initial begin 
         $display("Time\ti0\ti1\teq");
         $display("--------------------");
         
         $monitor("%0t\t%b\t%b\t%b", $time, i0, i1, eq);
         
         i0=0; i1=0; #10; //expect eq=1
         i0=0; i1=1; #10; //expect eq=0
         i0=1; i1=0; #10; //expect eq=0
         i0=1; i1=1; #10; //expect eq=1
         
         #10;
         $display("\nTestbench completed.");
         $finish;
      end
    
endmodule
