`include "environment.sv"

module test(dff_if vif);
environment env;
	initial begin
		env = new(vif);
        env.gen.count = 20;
		env.run();
      
	end
endmodule


