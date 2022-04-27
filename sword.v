module sword(	clk,	reset,	sw,	k);


	input wire	clk;
	input wire	reset;
	input wire	sw;
	output wire	k;

	wire	sword_and_to_flipflop;
	wire	swordandbottom;
	wire	swordandtop;
	wire	Swordorbottom;
	reg	Swordortop;
	wire	n0;
	wire	n1;

	assign	n0 = 1;
	assign	n1 = 1;



	assign	swordandtop = Swordorbottom | Swordortop;


	always@(posedge clk or negedge n0 or negedge n1)
	begin
	if (!n0)
		begin
		Swordortop <= 0;
		end
	else
	if (!n1)
		begin
		Swordortop <= 1;
		end
	else
		begin
		Swordortop <= sword_and_to_flipflop;
		end
	end

	assign	swordandbottom =  ~reset;



	assign	sword_and_to_flipflop = swordandtop & swordandbottom;

	assign	k = Swordortop;
	assign	Swordorbottom = sw;

endmodule
