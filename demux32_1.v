`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 03:09:35 PM
// Design Name: 
// Module Name: demux32_1
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

