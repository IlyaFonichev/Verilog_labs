`timescale 1ns/1ns
module lab_MS_SV3 (
	input bit CLK, RST, ENA,
	output bit [7:0] mem_out);

bit [7:0] LFSR_out, d_in;

assign d_in = LFSR_out;

LFSR_8_6_3_2 LFSR (.*);

histogram_unit histogram (.*);

endmodule 