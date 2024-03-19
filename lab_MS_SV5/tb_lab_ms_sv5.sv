`timescale 1ns/1ns
module tb_lab_ms_sv5 ();

bit CLK;
bit reset = '1;
bit [7:0] D_even, D_odd;

lab_ms_sv5 UUT (.*);
initial
	forever #5 CLK = ~CLK;
	
initial begin
	#7;
	reset = '0;
	repeat (32) @(negedge CLK);
	$stop;
end

endmodule 