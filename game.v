module game(clk, reset, n,	s,	e,	w, s0, s1,	s2, s3, s4,	die,	s5, win,	s6);


	
	input wire	reset;
	input wire	clk;
	input wire	n;
	input wire	s;
	input wire	e;
	input wire	w;
	
	output wire	s0;
	output wire	s1;
	output wire	s2;
	output wire	s3;
	output wire	s4;
	output wire	die;
	output wire	s5;
	output wire	win;
	output wire	s6;

	wire	n0;
	wire	n1;

	sword	A0(.clk(clk), .reset(reset), .sw(n0),	.k(n1));


	room A1(	.n(n), .s(s), .e(e),	.w(w), .k(n1),	.reset(reset),	.clk(clk), .s0(s0),	.s1(s1),	.s2(s2), .sw(n0), .s3(s3),	.s4(s4),	.die(die),	.s5(s5),	.win(win),	.s6(s6));


endmodule
