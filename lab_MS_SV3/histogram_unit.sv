`timescale 1ns/1ns
module histogram_unit(
input bit CLK, RST, ENA,
input bit [7:0] d_in,
output bit [7:0] mem_out);

bit [7:0] mem_arr [0:255];

bit [7:0] mem_in, adr_in, adr_clear;

initial begin : initial_val
	for (int i = 0; i < 256; i++) mem_arr [i] = 0;
end : initial_val

assign mem_in = (RST)? '0 : ((ENA)? (mem_out + 8'd1): mem_out);
assign adr_in = (RST)? adr_clear : d_in;

always @(posedge CLK) begin : building_histogram
	mem_arr [adr_in] <= mem_in;
	mem_out <= mem_arr [adr_in];
end : building_histogram

always_ff @(posedge CLK, negedge RST) begin : clearing_array
	if (~RST) adr_clear <= '0;
	else adr_clear <= adr_clear + 1'b1;
end : clearing_array

endmodule
