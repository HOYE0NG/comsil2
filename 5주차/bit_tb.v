`timescale 1ns / 1ps
module bit_tb;

reg x;
reg y;



wire E;
wire not_E;
wire G;
wire L;

bit u_bit(
    .x ( x ),
    .y ( y ),
    .E ( E ),
    .not_E ( not_E ),
    .G ( G ),
    .L ( L )
    );

initial begin
x=1'b1;
y=1'b1;
end 

always begin
x=#20 ~x;
y=#30 ~y;
end

initial begin
    #1000
    $finish;
    end

endmodule
