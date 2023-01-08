`timescale 1ns / 1ps

module inv(
    input A,
    input B,
    input C,
    input D,
    
    output E,
    output F,
    output G
    );
    
    assign E = A||B;
    assign F = E||C;
    assign G = F||D;
    
endmodule