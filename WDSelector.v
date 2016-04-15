`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SYSU
// Engineer: Shuangquan Lyu
// 
// Create Date:    20:42:43 03/15/2016 
// Design Name: 
// Module Name:    WDSelector 
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
/*
	�Ĵ�����WriteData�˿ڵ�ѡ��������Ӧͼ�����½ǵ�ѡ��������
*/
module WDSelector(
	input ALUM2Reg,
	input [31:0] result,
	input [31:0] DataOut,
	output wire [31:0] writeData
    );
	assign writeData = ALUM2Reg ? DataOut : result;
endmodule
