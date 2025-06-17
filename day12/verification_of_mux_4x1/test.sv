`include "environment.sv"
module test(mux_intf inf);
environment env;  // declare the class handle
	initial begin
		env = new(inf);
		env.run();
	end
endmodule

