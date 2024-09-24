`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 06:52:00 PM
// Design Name: 
// Module Name: flipflip
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


module flipflop(
input clk,T,
output Q,Q_n

    );
    reg Q,Q_n,r1;
    always@(T, clk)
    begin
    r1=~(T & Q_n & clk );
    Q =~(r1 & Q_n);
    Q_n=~Q;
    
     end
endmodule
