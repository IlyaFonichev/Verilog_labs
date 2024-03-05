`timescale 1ns/1ns
`define CLK_PERIOD 20
module tb_histogram_unit();

bit CLK, RST, ENA;
bit [7:0] d_in, mem_out;

histogram_unit histogram (.*);

always #(`CLK_PERIOD / 2) CLK = ~CLK;

initial begin
	ENA = 1;
	for (int i = 0; i < 258 * 4; i++) begin
		@(negedge CLK)
		d_in = d_in + 10'd10;
	end
	$stop;
end

endmodule
