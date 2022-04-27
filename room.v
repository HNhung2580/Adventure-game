module room(clk, reset, n, s, e, w,	k, s6, s5, s4, s3, sw, s2, s1, s0, win, die);

	input wire	clk;
	input wire	reset;
	input wire	n;
	input wire	s;
	input wire	e;
	input wire	w;
	input wire	k;
	
	output wire	s6;
	output wire	s5;
	output wire	s4;
	output wire	s3;
	output wire	sw;
	output wire	s2;
	output wire	s1;
	output wire	s0;
	output wire	win;
	output wire	die;

	wire	not_reset;
	reg	S0_flop_out;
	wire	S1_and_to_flop;
	wire	S1_and_to_or_bottom;
	wire	S1_and_to_or_top;
	reg	S1_flop_out;
	wire	S1_or_to_and;
	reg	S2_flop_out;
	wire	S3_and_to_flop;
	reg	S3_flop_output;
	
	wire	n0;
	wire	n1;
	wire	n2;
	reg	n24;
	wire	n3;
	wire	n4;
	wire	n5;
	wire	n6;
	wire	n7;
	wire	n8;
	wire	n9;
	wire	n10;
	wire	n11;
	wire	n12;
	wire	n13;
	wire	n14;
	wire	n15;
	wire	n16;
	wire	n17;
	wire	n18;
	wire	n19;
	wire	n20;
	wire	n21;
	wire	n22;
	wire	n23;
	reg	DFF_inst22;
	reg	DFF_inst21;

	assign	s6 = win;
	assign	win = DFF_inst22;
	assign	s5 = die;
	assign	die = DFF_inst21;
	assign	s4 = n24;
	assign	n4 = 1;
	assign	n6 = 1;
	assign	n7 = 1;
	assign	n8 = 1;
	assign	n9 = 1;
	assign	n11 = 1;
	assign	n12 = 1;
	assign	n13 = 1;
	assign	n14 = 1;
	assign	n16 = 1;
	assign	n17 = 1;
	assign	n19 = 1;
	assign	n20 = 1;
	assign	n22 = 1;



	assign n23 = S1_flop_out & w;

	assign S3_and_to_flop = S2_flop_out & w & not_reset;

	assign not_reset =  ~reset;

	assign n3 =  ~k;

	assign n2 = n0 | n1;

	assign n10 = n2 & not_reset;

	assign n15 = S2_flop_out & e & not_reset;

	assign n18 = n24 & n3 & not_reset;

	assign n21 = n24 & k & not_reset;


	always@(posedge clk or negedge n4 or negedge n6)
	begin
	if (!n4)
		begin
		S0_flop_out <= 0;
		end
	else
	if (!n6)
		begin
		S0_flop_out <= 1;
		end
	else
		begin
		S0_flop_out <= n5;
		end
	end


	always@(posedge clk or negedge n7 or negedge n8)
	begin
	if (!n7)
		begin
		S1_flop_out <= 0;
		end
	else
	if (!n8)
		begin
		S1_flop_out <= 1;
		end
	else
		begin
		S1_flop_out <= S1_and_to_flop;
		end
	end


	always@(posedge clk or negedge n9 or negedge n11)
	begin
	if (!n9)
		begin
		S2_flop_out <= 0;
		end
	else
	if (!n11)
		begin
		S2_flop_out <= 1;
		end
	else
		begin
		S2_flop_out <= n10;
		end
	end


	always@(posedge clk or negedge n12 or negedge n13)
	begin
	if (!n12)
		begin
		S3_flop_output <= 0;
		end
	else
	if (!n13)
		begin
		S3_flop_output <= 1;
		end
	else
		begin
		S3_flop_output <= S3_and_to_flop;
		end
	end


	always@(posedge clk or negedge n14 or negedge n16)
	begin
	if (!n14)
		begin
		n24 <= 0;
		end
	else
	if (!n16)
		begin
		n24 <= 1;
		end
	else
		begin
		n24 <= n15;
		end
	end


	always@(posedge clk or negedge n17 or negedge n19)
	begin
	if (!n17)
		begin
		DFF_inst21 <= 0;
		end
	else
	if (!n19)
		begin
		DFF_inst21 <= 1;
		end
	else
		begin
		DFF_inst21 <= n18;
		end
	end


	always@(posedge clk or negedge n20 or negedge n22)
	begin
	if (!n20)
		begin
		DFF_inst22 <= 0;
		end
	else
	if (!n22)
		begin
		DFF_inst22 <= 1;
		end
	else
		begin
		DFF_inst22 <= n21;
		end
	end


	assign	n5 = reset | n23;


	assign	S1_and_to_or_top = S0_flop_out & e;

	assign	S1_and_to_or_bottom = S2_flop_out & n;

	assign	S1_or_to_and = S1_and_to_or_bottom | S1_and_to_or_top;

	assign	S1_and_to_flop = S1_or_to_and & not_reset;

	assign	n1 = S1_flop_out & s;

	assign	n0 = S3_flop_output & e;

	assign	s3 = S3_flop_output;
	assign	sw = S3_flop_output;
	assign	s2 = S2_flop_out;
	assign	s1 = S1_flop_out;
	assign	s0 = S0_flop_out;

endmodule
