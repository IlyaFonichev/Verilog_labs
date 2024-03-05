`timescale 1ns/1ns
module LFSR_8_6_3_2
(input bit CLK, RST, ENA,
	output bit [8:1] LFSR_out);

always_ff @(posedge CLK, posedge RST)
if (RST) LFSR_out <= 8'd1;
else if (ENA) 
	if (LFSR_out == '0) 
		LFSR_out <= 8'd1;
	else
		LFSR_out <= {LFSR_out[7:1], LFSR_out[8]^LFSR_out[6]^LFSR_out[3]^LFSR_out[2]};
	
endmodule
	