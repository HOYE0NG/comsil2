`timescale 1ns / 1ps

module inv_tb;

reg A;
reg B;
reg C;
wire D;

inv u_inv(
    .A ( A ),
    .B ( B ),
    .C ( C ),
    .D ( D )
    );

initial begin
A=1'b1;
B=1'b1;
C=1'b1;

end 

always begin
A=#20 ~A;
B=#30 ~B;
C=#40 ~C;

end

initial begin
    #1000
    $finish;
    end

endmodule