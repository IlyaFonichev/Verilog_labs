interface bus_MM (input bit CLK, input bit reset);
	bit [7:0] address, writedata;
	bit write;
	
endinterface 