module lab1 (
	input bit clk,
	input bit sw,
	input bit pbb,
	output bit [7:0] led
);

	labn_1 u0 (
		.clk_clk       (clk),
		.reset_reset_n (pbb),
		.led_export    (led),
		.sw_export     (sw)
	);

endmodule 
