`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SYSU
// Engineer: Shuangquan Lyu
// 
// Create Date:    20:40:47 03/15/2016 
// Design Name: 
// Module Name:    ALUSelector 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALUSelector(
	input ALUSrcB,
	input [31:0] out2,
	input [31:0] extendOut,
	output wire [31:0]ALUSelectorOut
    );
	 
	// ALUSrcBΪ0ʱ��ʾALU��B�˿ڽ������ԼĴ�����data2�����Ϊ1ʱ��ʾ��������sign��zero��չ��������
	assign ALUSelectorOut = ALUSrcB ? extendOut : out2;
endmodule
