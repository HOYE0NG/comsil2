`timescale 1ns / 1ps

module bit(
    input x,
    input y,
    

    output E,
    output not_E,
    output G,
    output L
    );
    
    wire not_x, not_y;

    assign not_x = ~x;
    assign not_y = ~y;
    assign not_E = x^y;
    assign E = ~not_E;
    assign G = x&(~y);
    assign L = (~x)&y;
    
    
//    not (not_x, x);
//    not (not_y, y);
//    xor (not_E, x, y);
//    not (E, not_E);
//    and (G, x, not_y);
//    and (L, not_x, y);
    

endmodule