`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 07:28:33 PM
// Design Name: 
// Module Name: flipflop2
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


module flipflop(clk,T,Q,Q_n);
input clk,T;
output Q,Q_n;
reg Q,Q_n;
initial
begin
Q=1'b0;
Q_n=1'b1;
end
    always@(T,posedge(clk))
    begin
    //r1=~(T & Q_n & clk );
    //Q =~(r1 & Q_n);
    //r2=~(T & Q & clk );
    //Q_n=~(r2 & Q);
   if(T==0) begin Q=Q;Q_n=Q_n; end
   else if (T==1) begin Q=~Q; Q_n=~Q_n; end
      end
endmodule
