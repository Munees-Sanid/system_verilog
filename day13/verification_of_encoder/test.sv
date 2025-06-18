`include "environment.sv"

module test(enc_intf inf);
environment env;
event done;  
	initial begin
		env = new(inf);
		env.run();
	end
endmodule

