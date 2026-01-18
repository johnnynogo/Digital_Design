`timescale 1ns / 1ps

module tb_two_bit_comparator;
    reg [1:0] a, b;
    wire aeqb;
    
    two_bit_comparator uut (.a(a), .b(b), .aeqb(aeqb));
    
    initial begin
        $display("Time\ta[1:0]\tb[1:0]\taeqb");
        $display("---------------------------");
        $monitor("%0t\t%b\t%b\t%b", $time, a, b, aeqb);
        
        a = 2'b00; b=2'b0; #10;     // true
        a = 2'b00; b=2'b01; #10;    // false
        a = 2'b00; b=2'b10; #10;    // false
        a = 2'b00; b=2'b11; #10;    // false
        
        a = 2'b01; b=2'b00; #10;    // false
        a = 2'b01; b=2'b01; #10;    // true
        a = 2'b01; b=2'b10; #10;    // false
        a = 2'b01; b=2'b11; #10;    // false
        
        a = 2'b10; b=2'b00; #10;    // false
        a = 2'b10; b=2'b01; #10;    // false
        a = 2'b10; b=2'b10; #10;    // true
        a = 2'b10; b=2'b11; #10;    // false
        
        a = 2'b11; b=2'b00; #10;    // false
        a = 2'b11; b=2'b01; #10;    // false
        a = 2'b11; b=2'b10; #10;    // false
        a = 2'b11; b=2'b11; #10;    // true
        
        #10;
        $display("\nSimulation complete");
        $finish;
    end
endmodule
