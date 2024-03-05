`timescale 1ns/1ns
`define CLK_PERIOD 20
module tb_lab_MS_SV3();

bit CLK, RST, ENA;
bit [7:0] mem_out;

lab_MS_SV3 DUT (.*);

always #(`CLK_PERIOD / 2) CLK = ~CLK;

initial begin
	RST = 1;
	#(`CLK_PERIOD / 2) RST = 0;
	ENA = 1;
	repeat (257 * 4) @(negedge CLK);
	$stop;
end

endmodule
