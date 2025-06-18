`include "environment.sv"

module test(tff_if vif);
environment env;
	initial begin
		env = new(vif);
        env.gen.count = 20;
		env.run();
      
	end
endmodule


