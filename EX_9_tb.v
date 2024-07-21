`timescale 1 ns/1 ns

module testbench;

reg	[3:0]	a, b, c, d, e, f;
reg		sel1, sel2, sel3, sel4, sel5;
wire	[3:0]	g;

EX_9 EX9_instance(
	.a(a), .b(b), .c(c), .d(d), .e(e), .f(f),
	.sel1(sel1), .sel2(sel2), .sel3(sel3), .sel4(sel4), .sel5(sel5),
	.g(g) );
initial
begin
 a    = 4'b1010;	// Time = 0
 b    = 4'b1011;
 c    = 4'b1100;
 d    = 4'b1101;
 e    = 4'b1110;
 f    = 4'b1111;
 sel1 = 1'b1;
 sel2 = 1'b0;
 sel3 = 1'b0;
 sel4 = 1'b0;
 sel5 = 1'b0;
 #50;			// Time = 50
 sel1 = 1'b0;
 sel2 = 1'b1;
 sel3 = 1'b1;
 #50;			// Time = 100
 sel1 = 1'b0;
 sel2 = 1'b1;
 sel3 = 1'b0;
 #50;			// Time = 150
 sel1 = 1'b0;
 sel2 = 1'b0;
 sel4 = 1'b1;
 #50;			// Time = 200
 sel1 = 1'b0;
 sel2 = 1'b0;
 sel4 = 1'b0;
 sel5 = 1'b1;
 #50;			// Time = 250
 sel1 = 1'b0;
 sel2 = 1'b0;
 sel4 = 1'b0;
 sel5 = 1'b0;

 
 
end
endmodule
