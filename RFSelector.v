`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SYSU
// Engineer: Shuangquan Lyu
// 
// Create Date:    20:38:26 03/15/2016 
// Design Name: 
// Module Name:    RFSelector 
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
	RegisterFile selector
*/

module RFSelector(
	input RegOut,
	input [4:0] rt,
	input [4:0] rd,
	output wire [4:0] RfSelectorOut
    );
	 // �ڼĴ������Write Reg�˿��ϣ��������Կ��Ƶ�Ԫ���źŵĿ��ơ���RegOutΪ1����д��Write Reg��Ϊָ��洢�������ָ���е�rd������Ϊrt
	 assign RfSelectorOut = RegOut ? rd : rt;
endmodule
