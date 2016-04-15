`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SYSU
// Engineer: Shuangquan Lyu
// 
// Create Date:    21:57:08 03/15/2016 
// Design Name: 
// Module Name:    PCCalculator 
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
 ����PC��һ�εĵ�ַ
*/
module PCCalculator(
	input PCSrc,
	input [31:0] prePC,
	input [31:0] extendOut,
	output wire [31:0] postPC
    );
	/*
	PCÿ��ָ����һ����ַ����32λ��4�ֽڣ�����ÿ��PC��Ҫ��4
	��PCSrcΪ1������չ��������4���PC��ӣ�����ΪPC+4
	*/ 
	assign postPC = PCSrc ? prePC + 4 + (extendOut << 2) : prePC + 4;
endmodule
