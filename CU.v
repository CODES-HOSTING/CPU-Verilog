`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SYSU
// Engineer: Shuangquan Lyu
// 
// Create Date:    17:38:46 03/15/2016 
// Design Name: 
// Module Name:    CU 
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
module CU(
	input [5:0]op, // ��ʾ��Ҫ������Ĳ���
	input zero,
	output wire RegOut,
	output wire InsMenRW,
	output wire ExtSel,
	output wire DataMenRW,
	output wire ALUM2Reg,
	output wire ALUSrcB,
	output wire PCSrc,
	output wire RegWre,
	output wire PCWre,
	output wire [2:0] ALUOp
    );
	// ָ����볤��Ϊ32�����6λΪ�����룬Ψһ��ʶһ�����ָ��
	reg [5:0] ADD;
	reg [5:0] SUB;
	reg [5:0] ORI;
	reg [5:0] AND;
	reg [5:0] OR;
	reg [5:0] MOVE;
	reg [5:0] SW;
	reg [5:0] LW;
	reg [5:0] BEQ;
	reg [5:0] HALT;
	
	reg i_add;
	reg i_sub;
	reg i_ori;
	reg i_and;
	reg i_or;
	reg i_move;
	reg i_sw;
	reg i_lw;
	reg i_beq;
	reg i_halt;
	
	initial begin
		i_add = 0;
		i_sub = 0;
		i_ori = 0;
		i_and = 0;
		i_or = 0;
		i_move = 0;
		i_sw = 0;
		i_lw = 0;
		i_beq = 0;
		i_halt = 0;
	end
	
	// ������1 �����źŵ����á������ݱ�������д�����ź��߼����ʽ���ó�����ֵ��䣨��ʱ��ӳ���źŵı仯��Ϊ��wire��ֵ
	assign ALUSrcB = i_ori || i_sw || i_lw;
	assign ALUM2Reg = i_lw;
	assign RegWre = i_add || i_sub || i_ori || i_and || i_or || i_move || i_lw;
	assign DataMenRW = i_sw;
	assign ExtSel = i_sw || i_lw || i_beq;
	assign PCSrc = i_beq && zero;
	assign RegOut = i_add || i_sub || i_and || i_or || i_move;
	assign PCWre = !i_halt;
	assign ALUOp[2] = i_and;
	assign ALUOp[1] = i_ori || i_or;
	assign ALUOp[0] = i_sub || i_ori || i_or || i_beq;
	assign InsMenRW = 0;
	
	// ÿ����Ҫ������Ĳ������͸ı䣬����zero�ź�Ϊ1ʱ���жϲ��ı��������ֵ
	always@(op or zero) begin
	   // ��ʼ����ָ��Ĳ�����
		ADD = 6'b000000;
		SUB = 6'b000001;
		ORI = 6'b010000;
		AND = 6'b010001;
		OR = 6'b010010;
		MOVE = 6'b100000;
		SW = 6'b100110;
		LW = 6'b100111;
		BEQ = 6'b110000;
		HALT = 6'b111111;
		
		i_add = 0;
		i_sub = 0;
		i_ori = 0;
		i_and = 0;
		i_or = 0;
		i_move = 0;
		i_sw = 0;
		i_lw = 0;
		i_beq = 0;
		i_halt = 0;
		
		// ���������
		case (op)
			ADD: begin
				i_add = 1;
			end
			SUB: begin
				i_sub = 1;
			end
			ORI: begin
				i_ori = 1;
			end
			AND: begin
				i_and = 1;
			end
			OR: begin
				i_or = 1;
			end
			MOVE: begin
				i_move = 1;
			end
			SW: begin
				i_sw = 1;
			end
			LW: begin
				i_lw = 1;
			end
			BEQ: begin
				i_beq = 1;
			end
			HALT: begin
				i_halt = 1;
			end
		endcase
	end

endmodule
