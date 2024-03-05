`timescale 1ns/1ns
`define CLK_PERIOD 20
module tb_LFSR_8_6_3_2();

	bit CLK, RST, ENA, LFSR_CYCLE;
	bit [8:1] LFSR_out, LFSR_first;
	bit [8:1] CNT_int = 10'd1;
	
LFSR_8_6_3_2 LFSR (.*);

always #(`CLK_PERIOD / 2) CLK = ~CLK;

initial begin
	#(`CLK_PERIOD) RST = 1;
	#(`CLK_PERIOD) RST = 0;
	#(`CLK_PERIOD) ENA = 1;
	
	forever begin
		@(posedge CLK);
		if (CNT_int == 0)
			LFSR_first = LFSR_out;
		else
			if (LFSR_first == LFSR_out) begin
				LFSR_CYCLE = 1;
				break;
			end
		CNT_int++;
	end
	
	#(`CLK_PERIOD * 4) $stop;
end
endmodule 
