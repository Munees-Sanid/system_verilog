`include "environment.sv"

module test(mux_intf inf);
environment env;
event done;  
	initial begin
		env = new(inf);
      env.gen.count=10;
		env.run();
        
      
	end
endmodule

