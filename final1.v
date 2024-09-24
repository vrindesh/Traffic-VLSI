






`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 11:46:41 PM
// Design Name: 
// Module Name: final1
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
module final(input M, clk,output r1,r2,r3,r4,g1,g2,g3,g4,y1,y2,y3,y4 );
wire Q1,Q2,Q3,Q4,Q0,M;
wire Qn0,Qn1,Qn2,Qn3,Qn4;
wire s0, s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12
   ,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31;
counter c1 (M,clk,Qn0,Qn1,Qn2,Qn3,Qn4, Q0,Q1,Q2,Q3,Q4);
demux32_1 d1( Q4,Q3,Q2,Q1,Q0,s0, s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12
   ,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31);
assign g1= s0|s1|s2|s3|s4|s5|s6; 
assign g2= s8|s9|s10|s11|s12|s13|s14; 
assign g3=s16|s17|s18|s19|s20|s21|s22;
assign g4=s24|s25|s26|s27|s28|s29|s30;
assign y1=s7|s31;
assign  y2=s7|s15;
assign y3=s15|s23;
assign y4=s23|s31;
assign r1= ~y1&~g1;
assign r2= ~y2&~g2;
assign r3= ~y3&~g3;
assign r4= ~y4 &~g4;
endmodule

module flipflop(clk,T,Q_,Q_n);
input clk,T;
output Q_,Q_n;
reg Q_,Q_n;
wire clk,T;
initial
begin
Q_=1'b0;
Q_n=1'b1;
end
    always@(posedge(clk))
    begin
       if(T==0) begin Q_=Q_;Q_n=Q_n; end
   else if (T==1) begin Q_=~Q_; Q_n=~Q_n; end
      end
endmodule
   module demux32_1(A,B,C,D,E,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12
   ,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31);
input A,B,C,D,E;
output s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12
   ,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31;



assign s0=( ~A & ~B & ~C & ~D & ~E);
assign s1=( ~A & ~B & ~C & ~D & E);
assign s2=( ~A & ~B & ~C & D & ~E);
assign s3=( ~A & ~B & ~C & D & E);
assign s4=( ~A & ~B & C & ~D & ~E);
assign s5=( ~A & ~B & C & ~D & E);
assign s6=( ~A & ~B & C & D & ~E);
assign s7=( ~A & ~B & C & D & E);
assign s8=( ~A & B & ~C & ~D & ~E);
assign s9=( ~A & B & ~C & ~D & E);
assign s10=( ~A & B & ~C & D & ~E);
assign s11=( ~A & B & ~C & D & E);
assign s12=( ~A & B & C & ~D & ~E);
assign s13=( ~A & B & C & ~D & E);
assign s14=( ~A & B & C & D & ~E);
assign s15=( ~A & B & C & D & E);
assign s16=( A & ~B & ~C & ~D &~ E);
assign s17=( A & ~B & ~C & ~D & E);
assign s18=( A & ~B & ~C & D & ~E);
assign s19=( A & ~B & ~C & D & E);
assign s20=( A & ~B & C & ~D & ~E);
assign s21=( A & ~B & C & ~D & E);
assign s22=( A & ~B & C & D & ~E);
assign s23=( A & ~B & C & D & E);
assign s24=( A & B & ~C & ~D & ~E);
assign s25=( A & B & ~C & ~D & E);
assign s26=( A & B & ~C & D & ~E);
assign s27=( A & B & ~C & D & E);
assign s28=( A & B & C & ~D & ~E);
assign s29=( A & B & C & ~D & E);
assign s30=( A & B & C & D & ~E);
assign s31=( A & B & C & D & E);

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


