`timescale 1ns / 1ps

module inv_tb;

reg aa,bb; //input

wire y,z; //output

inv u_inv (
.a (aa ),
.y (y ), .b(bb), .z(z) );

initial begin
aa = 1'b0;
bb = 1'b1;
end

always begin
aa = #100 ~aa;
bb = #50 ~bb;
end

initial begin
            #1000
            $finish;
end

endmodule
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/01 16:28:56
// Design Name: 
// Module Name: inv_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

