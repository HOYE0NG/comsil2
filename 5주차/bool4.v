`timescale 1ns / 1ps

module inv(
    input A,
    input B,
    input C,
    output D
    );
    
    assign D = ~( ( (A)|(B) ) & C );
    
endmodule

