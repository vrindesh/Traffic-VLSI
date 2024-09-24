`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/022024 08:19:48 PM
// Design Name: 
// Module Name: counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//   flipflop  f1(clk,T,Q[0],Q_n[0]);
 
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
wire clk,T;
initial
begin
Q=1'b0;
Q_n=1'b1;
end
    always@(posedge(clk))
    begin
       if(T==0) begin Q=Q;Q_n=Q_n; end
   else if (T==1) begin Q=~Q; Q_n=~Q_n; end
      end
endmodule
         
module counter(T, clk, Q0,Q1,Q2,Q3,Q4,Qb0,Qb1,Qb2,Qb3,Qb4);
input T,clk;
output Q0,Q1,Q2,Q3,Q4;
output Qb0,Qb1,Qb2,Qb3,Qb4; 
     
    flipflop  f1(clk,T,Q0,Qb0);
     flipflop  f2(Q0,T,Q1,Qb1);
     flipflop  f3(Q1,T,Q2,Qb2);
     flipflop  f4(Q2,T,Q3,Qb3);
     flipflop  f5(Q3,T,Q4,Qb4);  
endmodule

                                                                   