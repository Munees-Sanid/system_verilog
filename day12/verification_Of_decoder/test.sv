`include "env.sv"

module test(dec_intf inf);
event done;
environment env;
	initial begin
		env = new(inf);
      env.gen.count=10;
		env.run();
      
	end
endmodule

