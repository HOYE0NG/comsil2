`timescale 1ns / 1ps

module inv_tb;

reg A;
reg B;
reg C;
reg D;

wire E;
wire F;
wire G;

inv u_inv(
    .A ( A ),
    .B ( B ),
    .C ( C ),
    .D ( D ),
    .E ( E ),
    .F ( F ),
    .G ( G ) 
    );

initial begin
A=1'b1;
B=1'b1;
C=1'b1;
D=1'b1;
end 

always begin
A=#20 ~A;
B=#30 ~B;
C=#40 ~C;
D=#50 ~D;
end

initial begin
    #1000
    $finish;
    end

endmodule

