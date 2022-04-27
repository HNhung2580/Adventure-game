module die_tb();
	reg clk, reset, n, s, w, e;
	wire win, die, s6, s5, s4, s3, s2, s1, s0;
	
	game dut(.clk(clk), .reset(reset), .n(n), .e(e), .s(s), .w(w), .win(win), .die(die), .s6(s6), .s5(s5), .s4(s4), .s3(s3), .s2(s2), .s1(s1), .s0(s0));
	
	always
		begin 
			clk = 1; #50;
			clk = 0; #50;
		end
	initial begin 
		#10;
		//0. Reset to Cave of Cacophony
		reset = 1;
		n = 0; s = 0; e = 0; w = 0;
		#100;

		//1. East to Twisty Tunnel
		reset = 0;
		e = 1;
		#100;

		//2. South to Rapid River
		e = 0;
		s = 1;
		#100;

		//3. East to Dragon's Den
		s = 0;
		e = 1;
		#100;

		//4. Die
		s = 0;
		#100;
	end
endmodule
